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
  %1 = icmp eq i64 %i.a, 0, !dbg !10992
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEECskigd7sy4fqX_10quinn_perf.exit, label %bb.b, !dbg !10992

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
  %i.f = atomicrmw add ptr %i.d, i64 -1 release, align 8, !dbg !10995, !noalias !10988
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
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !11000, !noalias !10991
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
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !13832, !noalias !13824
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
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !14234, !noalias !14143
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
  %i.j = atomicrmw add ptr %i.i, i64 -1 release, align 8, !dbg !14240, !noalias !14147
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
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !14249, !noalias !14179
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
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !dbg !14256, !noalias !14183
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
  %1 = icmp eq i64 %i.w, 0, !dbg !14260
  br i1 %1, label %.body6.i, label %bb.n, !dbg !14260

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
  %2 = icmp eq i64 %i.ad, 0, !dbg !14263
  br i1 %2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4time5sleep5SleepECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.q, !dbg !14263

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
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !dbg !14268, !noalias !14210
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
  %i.ar = atomicrmw add ptr %i.aq, i64 -1 release, align 8, !dbg !14274, !noalias !14213
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
  %i.ax = atomicrmw add ptr %i.aw, i64 -1 release, align 8, !dbg !14282, !noalias !14216
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
  %i.bb = atomicrmw add ptr %i.ba, i64 -1 release, align 8, !dbg !14288, !noalias !14219
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
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 release, align 8, !dbg !14296, !noalias !14223
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
    #dbg_value(ptr poison, !17541, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 384), !17071)
    #dbg_value(ptr poison, !17543, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 408), !17072)
    #dbg_value(ptr poison, !17544, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 392), !17073)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 792, !dbg !17770
  %i.g = load i8, ptr %i.f, align 8, !dbg !17770, !range !9478, !noundef !2579
  switch i8 %i.g, label %common.ret [
    i8 0, label %bb.g
    i8 3, label %bb.k
    i8 4, label %bb.ap
  ], !dbg !17770

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.e, !17530, !DIExpression(), !17075)
  invoke void @_RNvXs_NtCsB8MOEg02Qk_5quinn8incomingNtB4_8IncomingNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e)
          to label %bb.i unwind label %bb.h, !dbg !17771

bb.h:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e) #13
          to label %.body.i unwind label %bb.j, !dbg !17771

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn8incoming5StateEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming8IncomingECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bp, !dbg !17771

bb.j:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17771
  unreachable, !dbg !17771

bb.k:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !17772
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17614), !dbg !17772
    #dbg_value(ptr %i.j, !17616, !DIExpression(), !17080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17622), !dbg !17773
    #dbg_value(ptr %i.j, !17624, !DIExpression(), !17085)
  %i.k = load i64, ptr %i.j, align 8, !dbg !17774, !range !17630, !alias.scope !17631, !noundef !2579 ; 4 uses
  %i.l = icmp eq i64 %i.k, -1, !dbg !17774
  br i1 %i.l, label %bb.l, label %bb.ak, !dbg !17774

bb.l:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 816, !dbg !17774 ; 2 uses
    #dbg_value(ptr %i.m, !17633, !DIExpression(), !17088)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !17775 ; 6 uses
    #dbg_value(ptr %i.n, !17639, !DIExpression(), !17091)
  %i.o = load ptr, ptr %i.n, align 8, !dbg !17776, !alias.scope !17645, !noundef !2579
  %i.p = icmp eq ptr %i.o, null, !dbg !17776
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, label %bb.m, !dbg !17776

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.n, !9299, !DIExpression(), !17097)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.p unwind label %bb.n, !dbg !17777

bb.n:                                             ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17646), !dbg !17777
    #dbg_value(ptr %i.n, !9304, !DIExpression(), !17101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17647), !dbg !17778
    #dbg_value(ptr %i.n, !9310, !DIExpression(), !17105)
    #dbg_value(ptr %i.n, !9312, !DIExpression(), !17107)
    #dbg_value(i64 1, !9319, !DIExpression(), !17109)
    #dbg_value(i8 1, !9321, !DIExpression(), !17109)
    #dbg_value(i64 1, !9323, !DIExpression(), !17111)
    #dbg_value(i8 1, !9325, !DIExpression(), !17111)
  %i.r = load ptr, ptr %i.n, align 8, !dbg !17779, !alias.scope !17648, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.r, !9320, !DIExpression(), !17115)
    #dbg_value(ptr %i.r, !9324, !DIExpression(), !17111)
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !dbg !17780, !noalias !17649
  %i.t = icmp eq i64 %i.s, 1, !dbg !17781
  br i1 %i.t, label %bb.o, label %.body.i.i.i.i, !dbg !17781

bb.o:                                             ; preds = %bb.n
    #dbg_value(i8 2, !2813, !DIExpression(), !17117)
  fence acquire, !dbg !17782
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #12
          to label %.body.i.i.i.i unwind label %bb.r, !dbg !17783

bb.p:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17650), !dbg !17777
    #dbg_value(ptr %i.n, !9304, !DIExpression(), !17121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17651), !dbg !17784
    #dbg_value(ptr %i.n, !9310, !DIExpression(), !17125)
    #dbg_value(ptr %i.n, !9312, !DIExpression(), !17127)
    #dbg_value(i64 1, !9319, !DIExpression(), !17129)
    #dbg_value(i8 1, !9321, !DIExpression(), !17129)
    #dbg_value(i64 1, !9323, !DIExpression(), !17131)
    #dbg_value(i8 1, !9325, !DIExpression(), !17131)
  %i.u = load ptr, ptr %i.n, align 8, !dbg !17785, !alias.scope !17652, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.u, !9320, !DIExpression(), !17133)
    #dbg_value(ptr %i.u, !9324, !DIExpression(), !17131)
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !dbg !17786, !noalias !17653
  %i.w = icmp eq i64 %i.v, 1, !dbg !17787
  br i1 %i.w, label %bb.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, !dbg !17787

bb.q:                                             ; preds = %bb.p
    #dbg_value(i8 2, !2813, !DIExpression(), !17135)
  fence acquire, !dbg !17788
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i unwind label %bb.s, !dbg !17789

bb.r:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17777
  unreachable, !dbg !17777

bb.s:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i, !dbg !17775

.body.i.i.i.i:                                    ; preds = %bb.s, %bb.o, %bb.n
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.y, %bb.s ], [ %i.q, %bb.o ], [ %i.q, %bb.n ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !17775
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(8) %i.z) #13
          to label %.body4.i.i.i.i unwind label %bb.aj, !dbg !17775

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i: ; preds = %bb.q, %bb.p, %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 840, !dbg !17775 ; 5 uses
    #dbg_value(ptr %i.aa, !9178, !DIExpression(), !17137)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiverbENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.w unwind label %bb.t, !dbg !17790

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17654), !dbg !17790
    #dbg_value(ptr %i.aa, !9183, !DIExpression(), !17141)
  %i.ac = load ptr, ptr %i.aa, align 8, !dbg !17791, !alias.scope !17655, !noundef !2579 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null, !dbg !17791
  br i1 %i.ad, label %.body4.i.i.i.i, label %bb.u, !dbg !17791

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.aa, !9190, !DIExpression(), !17145)
    #dbg_value(ptr %i.aa, !9194, !DIExpression(), !17147)
    #dbg_value(i64 1, !9196, !DIExpression(), !17149)
    #dbg_value(i8 1, !9198, !DIExpression(), !17149)
    #dbg_value(i64 1, !9200, !DIExpression(), !17151)
    #dbg_value(i8 1, !9202, !DIExpression(), !17151)
    #dbg_value(ptr %i.ac, !9197, !DIExpression(), !17152)
    #dbg_value(ptr %i.ac, !9201, !DIExpression(), !17151)
  %i.ae = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !dbg !17792, !noalias !17656
  %i.af = icmp eq i64 %i.ae, 1, !dbg !17793
  br i1 %i.af, label %bb.v, label %.body4.i.i.i.i, !dbg !17793

bb.v:                                             ; preds = %bb.u
    #dbg_value(i8 2, !2813, !DIExpression(), !17158)
  fence acquire, !dbg !17794
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #12
          to label %.body4.i.i.i.i unwind label %bb.z, !dbg !17795

bb.w:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsB8MOEg02Qk_5quinn10connection13ConnectionRefEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17657), !dbg !17790
    #dbg_value(ptr %i.aa, !9183, !DIExpression(), !17162)
  %i.ag = load ptr, ptr %i.aa, align 8, !dbg !17796, !alias.scope !17658, !noundef !2579 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null, !dbg !17796
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, label %bb.x, !dbg !17796

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.aa, !9190, !DIExpression(), !17164)
    #dbg_value(ptr %i.aa, !9194, !DIExpression(), !17166)
    #dbg_value(i64 1, !9196, !DIExpression(), !17168)
    #dbg_value(i8 1, !9198, !DIExpression(), !17168)
    #dbg_value(i64 1, !9200, !DIExpression(), !17170)
    #dbg_value(i8 1, !9202, !DIExpression(), !17170)
    #dbg_value(ptr %i.ag, !9197, !DIExpression(), !17171)
    #dbg_value(ptr %i.ag, !9201, !DIExpression(), !17170)
  %i.ai = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !dbg !17797, !noalias !17659
  %i.aj = icmp eq i64 %i.ai, 1, !dbg !17798
  br i1 %i.aj, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i, !dbg !17798

bb.y:                                             ; preds = %bb.x
    #dbg_value(i8 2, !2813, !DIExpression(), !17177)
  fence acquire, !dbg !17799
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InnerbEE9drop_slowCsB8MOEg02Qk_5quinn(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i unwind label %bb.aa, !dbg !17800

bb.z:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17790
  unreachable, !dbg !17790

.body4.i.i.i.i:                                   ; preds = %bb.aa, %bb.v, %bb.u, %bb.t, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ], [ %i.al, %bb.aa ], [ %i.ab, %bb.v ], [ %i.ab, %bb.u ], [ %i.ab, %bb.t ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiveruEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #13
          to label %.body7.i unwind label %bb.aj, !dbg !17775

bb.aa:                                            ; preds = %bb.y
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i: ; preds = %bb.y, %bb.x, %bb.w
    #dbg_value(ptr %i.m, !2769, !DIExpression(), !17179)
  %i.am = load i64, ptr %i.m, align 8, !dbg !17801, !range !2773, !alias.scope !17660, !noundef !2579
  %1 = icmp eq i64 %i.am, 0, !dbg !17801
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.ab, !dbg !17801

bb.ab:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot8ReceiverbEECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 824, !dbg !17801 ; 5 uses
    #dbg_value(ptr %i.an, !2775, !DIExpression(), !17183)
  invoke void @_RNvXs2_NtNtCsar2VadbF9t7_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.af unwind label %bb.ac, !dbg !17802

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17661), !dbg !17802
    #dbg_value(ptr %i.an, !2780, !DIExpression(), !17187)
  %i.ap = load ptr, ptr %i.an, align 8, !dbg !17803, !alias.scope !17662, !noundef !2579 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null, !dbg !17803
  br i1 %i.aq, label %.body7.i, label %bb.ad, !dbg !17803

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.an, !2787, !DIExpression(), !17191)
    #dbg_value(ptr %i.an, !2792, !DIExpression(), !17193)
    #dbg_value(i64 1, !2796, !DIExpression(), !17195)
    #dbg_value(i8 1, !2802, !DIExpression(), !17195)
    #dbg_value(i64 1, !2804, !DIExpression(), !17197)
    #dbg_value(i8 1, !2809, !DIExpression(), !17197)
    #dbg_value(ptr %i.ap, !2801, !DIExpression(), !17198)
    #dbg_value(ptr %i.ap, !2808, !DIExpression(), !17197)
  %i.ar = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !dbg !17804, !noalias !17663
  %i.as = icmp eq i64 %i.ar, 1, !dbg !17805
  br i1 %i.as, label %bb.ae, label %.body7.i, !dbg !17805

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i8 2, !2813, !DIExpression(), !17204)
  fence acquire, !dbg !17806
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #12
          to label %.body7.i unwind label %bb.ai, !dbg !17807

bb.af:                                            ; preds = %bb.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17664), !dbg !17802
    #dbg_value(ptr %i.an, !2780, !DIExpression(), !17208)
  %i.at = load ptr, ptr %i.an, align 8, !dbg !17808, !alias.scope !17665, !noundef !2579 ; 2 uses
  %i.au = icmp eq ptr %i.at, null, !dbg !17808
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i, label %bb.ag, !dbg !17808

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.an, !2787, !DIExpression(), !17210)
    #dbg_value(ptr %i.an, !2792, !DIExpression(), !17212)
    #dbg_value(i64 1, !2796, !DIExpression(), !17214)
    #dbg_value(i8 1, !2802, !DIExpression(), !17214)
    #dbg_value(i64 1, !2804, !DIExpression(), !17216)
    #dbg_value(i8 1, !2809, !DIExpression(), !17216)
    #dbg_value(ptr %i.at, !2801, !DIExpression(), !17217)
    #dbg_value(ptr %i.at, !2808, !DIExpression(), !17216)
  %i.av = atomicrmw add ptr %i.at, i64 -1 release, align 8, !dbg !17809, !noalias !17666
  %i.aw = icmp eq i64 %i.av, 1, !dbg !17810
  br i1 %i.aw, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i, !dbg !17810

bb.ah:                                            ; preds = %bb.ag
    #dbg_value(i8 2, !2813, !DIExpression(), !17223)
  fence acquire, !dbg !17811
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsar2VadbF9t7_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.an) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bt, !dbg !17812

bb.ai:                                            ; preds = %bb.ae
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17802
  unreachable, !dbg !17802

bb.aj:                                            ; preds = %.body4.i.i.i.i, %.body.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17775
  unreachable, !dbg !17775

bb.ak:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17667), !dbg !17774
    #dbg_value(ptr %i.j, !17669, !DIExpression(), !17228)
  %i.az = icmp ne i64 %i.k, 4, !dbg !17813
  tail call void @llvm.assume(i1 %i.az), !dbg !17813
  %i.ba = add nsw i64 %i.k, -2, !dbg !17813
  %.inv.i.i.i.i = icmp samesign ult i64 %i.k, 2, !dbg !17813
  %i.bb = select i1 %.inv.i.i.i.i, i64 2, i64 %i.ba, !dbg !17813
  switch i64 %i.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i [
    i64 1, label %bb.al
    i64 2, label %.invoke.i
    i64 3, label %bb.ao
  ], !dbg !17813

bb.al:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.j, !17675, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !17231)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 832, !dbg !17814 ; 3 uses
    #dbg_value(ptr %i.bc, !17682, !DIExpression(), !17234)
    #dbg_value(ptr %i.bc, !17687, !DIExpression(), !17237)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i unwind label %bb.am, !dbg !17815

bb.am:                                            ; preds = %bb.al
  %i.bd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.bc, !17692, !DIExpression(), !17240)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body7.i unwind label %bb.an, !dbg !17816

bb.an:                                            ; preds = %bb.am
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !17815
  unreachable, !dbg !17815

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCshovLROGBtMy_11quinn_proto15transport_error5ErrorECskigd7sy4fqX_10quinn_perf.exit.i.i.i.i: ; preds = %bb.al
    #dbg_value(ptr %i.bc, !17692, !DIExpression(), !17242)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bt, !dbg !17817

bb.ao:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.bf, !17699, !DIExpression(), !17245)
    #dbg_value(ptr %i.bf, !2644, !DIExpression(), !17247)
    #dbg_value(ptr %i.bf, !2651, !DIExpression(), !17249)
  br label %.invoke.i, !dbg !17818

.invoke.i:                                        ; preds = %bb.ak, %bb.ao
  %.sink = phi i64 [ 816, %bb.ao ], [ 824, %bb.ak ]
  %.sink.i = phi i64 [ 448, %bb.ao ], [ 456, %bb.ak ]
  %.sink28.i = phi i64 [ 432, %bb.ao ], [ 440, %bb.ak ]
  %.sink27.i = phi i64 [ 440, %bb.ao ], [ 448, %bb.ak ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %.sink, !dbg !17813
  %.sink30.i = load ptr, ptr %i.bf, align 8, !dbg !17813, !alias.scope !17705, !nonnull !2579, !align !2654, !noundef !2579
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink30.i, i64 32, !dbg !17813
  %i.bh = load ptr, ptr %i.bg, align 8, !dbg !17813, !noalias !17705, !nonnull !2579, !noundef !2579
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink.i, !dbg !17813
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink28.i, !dbg !17813
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !17813, !alias.scope !17705, !noundef !2579
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink27.i, !dbg !17813
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !17813, !alias.scope !17705, !noundef !2579
  invoke void %i.bh(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bk, i64 noundef %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsB8MOEg02Qk_5quinn8incoming14IncomingFutureECskigd7sy4fqX_10quinn_perf.exit.i unwind label %bb.bt, !dbg !17813, !inline_history !17250

bb.ap:                                            ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 800, !dbg !17819
    #dbg_value(ptr %i.bn, !17706, !DIExpression(), !17253)
    #dbg_value(ptr %i.bn, !17713, !DIExpression(), !17256)
  %i.bo = load i32, ptr %i.bn, align 8, !dbg !17820, !range !8851, !noundef !2579
  switch i32 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EECskigd7sy4fqX_10quinn_perf.exit.i.i [
    i32 0, label %bb.aq
    i32 1, label %bb.bi
  ], !dbg !17820

bb.aq:                                            ; preds = %bb.ap
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !17820 ; 5 uses
    #dbg_value(ptr %i.bp, !17719, !DIExpression(DW_OP_deref), !17264)
    #dbg_value(ptr poison, !17724, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !17265)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 896, !dbg !17821
  %i.br = load i8, ptr %i.bq, align 8, !dbg !17821, !range !9290, !noundef !2579
  switch i8 %i.br, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EECskigd7sy4fqX_10quinn_perf.exit.i.i [
    i8 0, label %bb.ar
    i8 3, label %bb.aw
  ], !dbg !17821

common.ret.sink.split.i.i.i.i:                    ; preds = %bb.bf, %bb.au
  %.sink.i.i.i.i = phi ptr [ %i.bp, %bb.au ], [ %i.cp, %bb.bf ]
  fence acquire, !dbg !17822
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sink.i.i.i.i) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsar2VadbF9t7_5tokio6future10maybe_done9MaybeDoneNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni0EECskigd7sy4fqX_10quinn_perf.exit.i.i unwind label %bb.bk, !dbg !17823

bb.ar:                                            ; preds = %bb.aq
    #dbg_value(ptr %i.bp, !9292, !DIExpression(), !17272)
    #dbg_value(ptr %i.bp, !9299, !DIExpression(), !17274)
  invoke void @_RNvXsb_NtCsB8MOEg02Qk_5quinn10connectionNtB5_13ConnectionRefNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.au unwind label %bb.as, !dbg !17824

bb.as:                                            ; preds = %bb.ar
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17732), !dbg !17824
    #dbg_value(ptr %i.bp, !9304, !DIExpression(), !17278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17733), !dbg !17825
    #dbg_value(ptr %i.bp, !9310, !DIExpression(), !17282)
    #dbg_value(ptr %i.bp, !9312, !DIExpression(), !17284)
    #dbg_value(i64 1, !9319, !DIExpression(), !17286)
    #dbg_value(i8 1, !9321, !DIExpression(), !17286)
    #dbg_value(i64 1, !9323, !DIExpression(), !17288)
    #dbg_value(i8 1, !9325, !DIExpression(), !17288)
  %i.bt = load ptr, ptr %i.bp, align 8, !dbg !17826, !alias.scope !17734, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.bt, !9320, !DIExpression(), !17294)
    #dbg_value(ptr %i.bt, !9324, !DIExpression(), !17288)
  %i.bu = atomicrmw add ptr %i.bt, i64 -1 release, align 8, !dbg !17827, !noalias !17735
  %i.bv = icmp eq i64 %i.bu, 1, !dbg !17828
  br i1 %i.bv, label %bb.at, label %.body.i.i, !dbg !17828

bb.at:                                            ; preds = %bb.as
    #dbg_value(i8 2, !2813, !DIExpression(), !17296)
  fence acquire, !dbg !17829
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsB8MOEg02Qk_5quinn10connection15ConnectionInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bp) #12
          to label %.body.i.i unwind label %bb.av, !dbg !17830

bb.au:                                            ; preds = %bb.ar
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17736), !dbg !17824
    #dbg_value(ptr %i.bp, !9304, !DIExpression(), !17300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17737), !dbg !17831
    #dbg_value(ptr %i.bp, !9310, !DIExpression(), !17304)
    #dbg_value(ptr %i.bp, !9312, !DIExpression(), !17306)
end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore20OwnedSemaphorePermitECskigd7sy4fqX_10quinn_perf:bb.a
  %i.e = load ptr, ptr %0, align 8, !dbg !19954, !alias.scope !19945, !nonnull !2579, !noundef !2579
    #dbg_value(ptr %i.e, !9523, !DIExpression(), !19936)
    #dbg_value(ptr %i.e, !9527, !DIExpression(), !19934)
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !dbg !19955, !noalias !19945
  %i.g = icmp eq i64 %i.f, 1, !dbg !19956
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !19956

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !2813, !DIExpression(), !19938)
  fence acquire, !dbg !19957
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #12, !dbg !19958
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2, !dbg !19958

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit2: ; preds = %bb.d, %bb.e
  ret void, !dbg !19946

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !19946
  unreachable, !dbg !19946

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsar2VadbF9t7_5tokio4sync9semaphore9SemaphoreEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a, !dbg !19946
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core7TrailerECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1457 {
bb.a:
    #dbg_value(ptr %0, !7705, !DIExpression(), !20015)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20024
  %.val = load ptr, ptr %i.a, align 8, !dbg !20024, !align !2654, !noundef !2579 ; 2 uses
    #dbg_value(ptr poison, !7712, !DIExpression(), !19960)
    #dbg_value(ptr poison, !7719, !DIExpression(), !19962)
    #dbg_value(ptr poison, !7726, !DIExpression(), !19964)
  %i.b = icmp eq ptr %.val, null, !dbg !20025
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.b, !dbg !20025

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24, !dbg !20024
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !20024
    #dbg_value(ptr poison, !7731, !DIExpression(), !19966)
    #dbg_value(ptr poison, !7736, !DIExpression(), !19968)
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24, !dbg !20026
  %i.e = load ptr, ptr %i.d, align 8, !dbg !20026, !nonnull !2579, !noundef !2579
  invoke void %i.e(ptr noundef %.val2)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.c, !dbg !20026, !inline_history !1463

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20024 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20016), !dbg !20024
    #dbg_value(ptr %i.g, !7740, !DIExpression(), !19972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20017), !dbg !20027
    #dbg_value(ptr %i.g, !7747, !DIExpression(), !19976)
  %i.h = load ptr, ptr %i.g, align 8, !dbg !20028, !alias.scope !20018, !noundef !2579 ; 2 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !20028
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit, label %bb.d, !dbg !20028

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.g, !7754, !DIExpression(), !19978)
    #dbg_value(ptr %i.g, !7758, !DIExpression(), !19980)
    #dbg_value(i64 1, !7760, !DIExpression(), !19982)
    #dbg_value(i8 1, !7762, !DIExpression(), !19982)
    #dbg_value(i64 1, !7764, !DIExpression(), !19984)
    #dbg_value(i8 1, !7766, !DIExpression(), !19984)
    #dbg_value(ptr %i.h, !7761, !DIExpression(), !19985)
    #dbg_value(ptr %i.h, !7765, !DIExpression(), !19984)
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !dbg !20029, !noalias !20019
  %i.k = icmp eq i64 %i.j, 1, !dbg !20030
  br i1 %i.k, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit, !dbg !20030

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !2813, !DIExpression(), !19991)
  fence acquire, !dbg !20031
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #12
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit unwind label %bb.h, !dbg !20032

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20024 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20020), !dbg !20024
    #dbg_value(ptr %i.l, !7740, !DIExpression(), !19995)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20021), !dbg !20033
    #dbg_value(ptr %i.l, !7747, !DIExpression(), !19999)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !20034, !alias.scope !20022, !noundef !2579 ; 2 uses
  %i.n = icmp eq ptr %i.m, null, !dbg !20034
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, label %bb.f, !dbg !20034

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %i.l, !7754, !DIExpression(), !20001)
    #dbg_value(ptr %i.l, !7758, !DIExpression(), !20003)
    #dbg_value(i64 1, !7760, !DIExpression(), !20005)
    #dbg_value(i8 1, !7762, !DIExpression(), !20005)
    #dbg_value(i64 1, !7764, !DIExpression(), !20007)
    #dbg_value(i8 1, !7766, !DIExpression(), !20007)
    #dbg_value(ptr %i.m, !7761, !DIExpression(), !20008)
    #dbg_value(ptr %i.m, !7765, !DIExpression(), !20007)
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !dbg !20035, !noalias !20023
  %i.p = icmp eq i64 %i.o, 1, !dbg !20036
  br i1 %i.p, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, !dbg !20036

bb.g:                                             ; preds = %bb.f
    #dbg_value(i8 2, !2813, !DIExpression(), !20014)
  fence acquire, !dbg !20037
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsar2VadbF9t7_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #12, !dbg !20038
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4, !dbg !20038

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECskigd7sy4fqX_10quinn_perf.exit, %bb.f, %bb.g
  ret void, !dbg !20024

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !20024
  unreachable, !dbg !20024

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsar2VadbF9t7_5tokio7runtime4task24TaskHarnessScheduleHooksECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f, !dbg !20024
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2027 {
bb.a:
    #dbg_value(ptr %0, !9741, !DIExpression(), !20039)
    #dbg_value(ptr %0, !9743, !DIExpression(), !20041)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !20044
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !20045

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9746, !DIExpression(), !20043)
    #dbg_value(ptr undef, !9746, !DIExpression(DW_OP_deref), !20043)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20046
  br label %bb.c, !dbg !20047

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !20048
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20049 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !20124, !DIExpression(), !20128)
    #dbg_value(ptr %1, !20125, !DIExpression(), !20128)
    #dbg_value(ptr %2, !20126, !DIExpression(), !20128)
    #dbg_declare(ptr poison, !20129, !DIExpression(), !20140)
    #dbg_value(ptr poison, !20146, !DIExpression(), !20149)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !20176
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !20177
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !20177

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !20178
    #dbg_value(ptr %0, !20144, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !20150)
    #dbg_value(ptr %0, !20136, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20151)
    #dbg_value(ptr %0, !20153, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !20160)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !20179 ; 2 uses
    #dbg_declare(ptr poison, !20161, !DIExpression(), !20058)
    #dbg_value(ptr %i.d, !20164, !DIExpression(), !20059)
    #dbg_value(ptr %i.d, !20167, !DIExpression(), !20062)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20180, !noalias !20172
    #dbg_value(i32 2, !20170, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !20062)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !20181, !noalias !20172
  store i32 2, ptr %i.d, align 8, !dbg !20182, !noalias !20172
  %i.e = load i32, ptr %i.a, align 8, !dbg !20180, !range !8851, !noalias !20172, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !20183
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !20183, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !20184, !noalias !20172

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !20128

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !20185, !noalias !20172

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !20186, !noalias !20172
  unreachable, !dbg !20186

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !20187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !20187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20185, !noalias !20172
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20173), !dbg !20188
    #dbg_value(ptr %1, !9775, !DIExpression(), !20068)
  %i.j = load i64, ptr %1, align 8, !dbg !20189, !range !2773, !alias.scope !20173, !noundef !2579
  %3 = icmp eq i64 %i.j, 0, !dbg !20189
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20189

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20189 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20174), !dbg !20189
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !20072)
  %i.l = load i64, ptr %i.k, align 8, !dbg !20190, !alias.scope !20175, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !20190
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !20190

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20190
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !20190, !alias.scope !20175, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !20190
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !20190, !alias.scope !20175 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !20074)
    #dbg_value(ptr poison, !8867, !DIExpression(), !20076)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !20191
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !20191

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !20078)
    #dbg_value(ptr poison, !8881, !DIExpression(), !20080)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !20192, !invariant.load !2579, !noalias !20175 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !20192
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !20192

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !20192, !noalias !20175

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !20082)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20083)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20083)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20085)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20087)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20089)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20091)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20085)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20087)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20089)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20091)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !20193
  %i.s = load i64, ptr %i.r, align 8, !dbg !20193, !range !4479, !invariant.load !2579, !noalias !20175 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20092)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20092)
  %i.t = icmp eq i64 %i.s, 0, !dbg !20194
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !20194

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !20193
  %i.v = load i64, ptr %i.u, align 8, !dbg !20195, !range !4480, !invariant.load !2579, !noalias !20175
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20092)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20085)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20087)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20089)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20091)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20083)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20094)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20096)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !20094)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !20096)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !20098)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !20100)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20094)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20096)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20098)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20100)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20094)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20096)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20098)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20100)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !20196, !noalias !20175
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20197

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !20102)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20103)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20103)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20105)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20107)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20109)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20111)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20105)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20107)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20109)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20111)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !20198
  %i.y = load i64, ptr %i.x, align 8, !dbg !20198, !range !4479, !invariant.load !2579, !noalias !20175 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20112)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20112)
  %i.z = icmp eq i64 %i.y, 0, !dbg !20199
  br i1 %i.z, label %.body, label %bb.n, !dbg !20199

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !20198
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !20200, !range !4480, !invariant.load !2579, !noalias !20175
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20112)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20105)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20107)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20109)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20111)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20103)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20114)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20116)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !20114)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !20116)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !20118)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !20120)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20114)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20116)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20118)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20120)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20114)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20116)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20118)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20120)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !20201, !noalias !20175
  br label %.body, !dbg !20202

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !20203

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !20188
  br label %common.resume, !dbg !20204

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !20188
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !20188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !20205
  br label %bb.o, !dbg !20206
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !20208 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !20301, !DIExpression(), !20220)
    #dbg_value(ptr poison, !20336, !DIExpression(), !20224)
    #dbg_value(ptr poison, !20324, !DIExpression(), !20225)
    #dbg_value(ptr poison, !20329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20342)
    #dbg_value(ptr poison, !20328, !DIExpression(), !20343)
    #dbg_value(ptr poison, !20334, !DIExpression(), !20344)
    #dbg_value(ptr poison, !20345, !DIExpression(), !20348)
    #dbg_value(ptr %0, !20297, !DIExpression(), !20349)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !20376 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !20376
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !20376
    #dbg_value(i1 %i.c, !20298, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !20350)
    #dbg_value(i1 %i.d, !20298, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !20350)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20377

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !20378

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !20334, !DIExpression(), !20344)
    #dbg_value(ptr undef, !20328, !DIExpression(), !20343)
    #dbg_value(ptr undef, !20329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20342)
    #dbg_value(ptr undef, !20301, !DIExpression(), !20220)
    #dbg_value(ptr undef, !20324, !DIExpression(), !20225)
    #dbg_value(ptr poison, !20351, !DIExpression(), !20229)
    #dbg_declare(ptr poison, !20355, !DIExpression(), !20230)
    #dbg_declare(ptr poison, !20354, !DIExpression(), !20230)
    #dbg_value(ptr poison, !20359, !DIExpression(), !20233)
    #dbg_declare(ptr poison, !20362, !DIExpression(), !20234)
    #dbg_value(ptr poison, !20366, !DIExpression(DW_OP_deref, DW_OP_deref), !20237)
    #dbg_value(ptr poison, !20371, !DIExpression(), !20240)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !20379
    #dbg_value(ptr %i.e, !20373, !DIExpression(), !20243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20380, !noalias !20375
  store i32 2, ptr %i.a, align 8, !dbg !20380, !noalias !20375
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !20381

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !20382
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !20382
    #dbg_value(ptr undef, !20336, !DIExpression(), !20224)
    #dbg_value(ptr %i.g, !20339, !DIExpression(), !20224)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !20383 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !20384
  unreachable, !dbg !20384

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20385, !noalias !20375
    #dbg_value(ptr undef, !20329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20342)
    #dbg_value(ptr undef, !20329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20342)
    #dbg_value(ptr poison, !9821, !DIExpression(), !20247)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20386

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !20383 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !20383 ; 6 uses
    #dbg_value(ptr %i.j, !20329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20342)
    #dbg_value(ptr %i.k, !20329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20342)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !20247)
  %i.l = icmp eq ptr %i.j, null, !dbg !20386
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !20386

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !20249)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !20387, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !20387
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !20387

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !20387

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !20251)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20252)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20252)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20254)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20256)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20258)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20260)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20254)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20256)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20258)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20260)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !20388
  %i.o = load i64, ptr %i.n, align 8, !dbg !20388, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20261)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20261)
  %i.p = icmp eq i64 %i.o, 0, !dbg !20389
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !20389

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !20388
  %i.r = load i64, ptr %i.q, align 8, !dbg !20390, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20261)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20254)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20256)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20258)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20260)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20252)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20263)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20265)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !20263)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !20265)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !20267)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !20269)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20263)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20265)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20267)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20269)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20263)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20265)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20267)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20269)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !20391
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !20392

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !20271)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20272)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20272)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20274)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20278)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20280)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20274)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20276)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20278)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20280)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !20393
  %i.u = load i64, ptr %i.t, align 8, !dbg !20393, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20281)
  %i.v = icmp eq i64 %i.u, 0, !dbg !20394
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !20394

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !20393
  %i.x = load i64, ptr %i.w, align 8, !dbg !20395, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20281)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20274)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20276)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20278)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20280)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20272)
    #dbg_value(ptr poison, !4483, !DIExpression(), !20283)
    #dbg_value(ptr poison, !4490, !DIExpression(), !20285)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !20283)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !20285)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !20287)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !20289)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20283)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20285)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20287)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20289)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20283)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20285)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20287)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20289)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !20396
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !20397

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !20387

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !9741, !DIExpression(), !20291)
    #dbg_value(ptr %0, !9743, !DIExpression(), !20293)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !20398
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20399

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !9746, !DIExpression(DW_OP_deref), !20295)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !20400
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !20401
end_hunk_3
begin_hunk_4_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21200
    #dbg_value(i64 %..i, !21062, !DIExpression(), !21159)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !21201
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !21202

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !21160, !DIExpression(DW_OP_deref), !21163)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21203
  br label %bb.p, !dbg !21204

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !21205
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21206 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !21242, !DIExpression(), !21244)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !21249
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !21250

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9741, !DIExpression(), !21208)
    #dbg_value(ptr %0, !9743, !DIExpression(), !21210)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21251
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21252

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !9746, !DIExpression(DW_OP_deref), !21212)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21253
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21254

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !21245, !DIExpression(), !21248)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21255 ; 2 uses
    #dbg_value(ptr poison, !9905, !DIExpression(), !21218)
    #dbg_value(ptr %i.e, !9940, !DIExpression(), !21219)
    #dbg_value(ptr %i.e, !9943, !DIExpression(), !21221)
    #dbg_value(ptr %i.e, !9938, !DIExpression(), !21222)
    #dbg_value(ptr %i.e, !9934, !DIExpression(), !21223)
    #dbg_value(ptr %i.e, !9935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21224)
    #dbg_value(ptr undef, !9946, !DIExpression(), !21226)
    #dbg_value(ptr %i.e, !9949, !DIExpression(), !21227)
    #dbg_value(ptr %i.e, !9951, !DIExpression(), !21229)
    #dbg_declare(ptr poison, !9955, !DIExpression(), !21230)
    #dbg_declare(ptr poison, !9954, !DIExpression(), !21230)
    #dbg_value(ptr %i.e, !9959, !DIExpression(), !21232)
    #dbg_declare(ptr poison, !9962, !DIExpression(), !21233)
    #dbg_value(ptr poison, !9967, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21235)
    #dbg_value(ptr %i.e, !9972, !DIExpression(), !21237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21256
  store i32 2, ptr %i.a, align 8, !dbg !21256
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !21257

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !21258
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !21258
    #dbg_value(ptr undef, !9905, !DIExpression(), !21218)
    #dbg_value(ptr %i.g, !9929, !DIExpression(), !21218)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !21259 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !21260
  unreachable, !dbg !21260

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21261
    #dbg_value(ptr %i.e, !9935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21224)
    #dbg_value(ptr undef, !9935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21224)
    #dbg_value(ptr poison, !9941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21238)
    #dbg_value(ptr poison, !9974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21240)
    #dbg_value(ptr poison, !9941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21238)
    #dbg_value(ptr poison, !9974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21240)
    #dbg_value(i64 poison, !9977, !DIExpression(), !21240)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21262

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !21259
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !21259 ; 2 uses
    #dbg_value(ptr %i.j, !9935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21224)
    #dbg_value(ptr %i.k, !9935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21224)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !9941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21238)
    #dbg_value(ptr %i.j, !9974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21240)
    #dbg_value(ptr %i.k, !9941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21238)
    #dbg_value(ptr %i.k, !9974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21240)
    #dbg_value(i64 poison, !9977, !DIExpression(), !21240)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21263

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !21264
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !21264
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !21265
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !21265, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !9944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21221)
    #dbg_value(ptr %.sroa.6.0.i, !9944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21221)
    #dbg_value(ptr %.sroa.8.0.i, !9944, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21266
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21266
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !21266
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !21266
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !21266
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !21266
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !21266
  store i32 1, ptr %i.b, align 8, !dbg !21266
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !21267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21268
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !21269
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21269

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !21270
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2083 {
bb.a:
    #dbg_value(ptr %0, !10007, !DIExpression(), !21271)
    #dbg_value(ptr %0, !10009, !DIExpression(), !21273)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21276
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !21277

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10012, !DIExpression(), !21275)
    #dbg_value(ptr undef, !10012, !DIExpression(DW_OP_deref), !21275)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21278
  br label %bb.c, !dbg !21279

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !21280
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21281 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !21356, !DIExpression(), !21360)
    #dbg_value(ptr %1, !21357, !DIExpression(), !21360)
    #dbg_value(ptr %2, !21358, !DIExpression(), !21360)
    #dbg_declare(ptr poison, !21361, !DIExpression(), !21372)
    #dbg_value(ptr poison, !21378, !DIExpression(), !21381)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !21408
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !21409
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !21409

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !21410
    #dbg_value(ptr %0, !21376, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !21382)
    #dbg_value(ptr %0, !21368, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21383)
    #dbg_value(ptr %0, !21385, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !21392)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !21411 ; 2 uses
    #dbg_declare(ptr poison, !21393, !DIExpression(), !21290)
    #dbg_value(ptr %i.d, !21396, !DIExpression(), !21291)
    #dbg_value(ptr %i.d, !21399, !DIExpression(), !21294)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21412, !noalias !21404
    #dbg_value(i32 2, !21402, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !21294)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !21413, !noalias !21404
  store i32 2, ptr %i.d, align 8, !dbg !21414, !noalias !21404
  %i.e = load i32, ptr %i.a, align 8, !dbg !21412, !range !8851, !noalias !21404, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !21415
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !21415, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !21416, !noalias !21404

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !21360

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !21417, !noalias !21404

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !21418, !noalias !21404
  unreachable, !dbg !21418

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !21419
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !21419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21417, !noalias !21404
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21405), !dbg !21420
    #dbg_value(ptr %1, !9775, !DIExpression(), !21300)
  %i.j = load i64, ptr %1, align 8, !dbg !21421, !range !2773, !alias.scope !21405, !noundef !2579
  %3 = icmp eq i64 %i.j, 0, !dbg !21421
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21421

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21421 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21406), !dbg !21421
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !21304)
  %i.l = load i64, ptr %i.k, align 8, !dbg !21422, !alias.scope !21407, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !21422
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !21422

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21422
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !21422, !alias.scope !21407, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !21422
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !21422, !alias.scope !21407 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !21306)
    #dbg_value(ptr poison, !8867, !DIExpression(), !21308)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !21423
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !21423

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !21310)
    #dbg_value(ptr poison, !8881, !DIExpression(), !21312)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !21424, !invariant.load !2579, !noalias !21407 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !21424
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !21424

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !21424, !noalias !21407

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !21314)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21315)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21315)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21317)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21319)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21321)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21323)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21317)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21319)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21321)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21323)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !21425
  %i.s = load i64, ptr %i.r, align 8, !dbg !21425, !range !4479, !invariant.load !2579, !noalias !21407 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21324)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21324)
  %i.t = icmp eq i64 %i.s, 0, !dbg !21426
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !21426

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !21425
  %i.v = load i64, ptr %i.u, align 8, !dbg !21427, !range !4480, !invariant.load !2579, !noalias !21407
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21324)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21317)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21319)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21321)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21323)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21315)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21326)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21328)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !21326)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !21328)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !21330)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !21332)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21326)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21328)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21330)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21332)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21326)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21328)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21330)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21332)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !21428, !noalias !21407
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21429

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !21334)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21335)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21335)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21337)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21339)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21341)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21343)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21337)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21339)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21341)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21343)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !21430
  %i.y = load i64, ptr %i.x, align 8, !dbg !21430, !range !4479, !invariant.load !2579, !noalias !21407 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21344)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21344)
  %i.z = icmp eq i64 %i.y, 0, !dbg !21431
  br i1 %i.z, label %.body, label %bb.n, !dbg !21431

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !21430
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !21432, !range !4480, !invariant.load !2579, !noalias !21407
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21344)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21337)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21339)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21341)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21343)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21335)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21346)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21348)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !21346)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !21348)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !21350)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !21352)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21346)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21348)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21350)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21352)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21346)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21348)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21350)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21352)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !21433, !noalias !21407
  br label %.body, !dbg !21434

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !21435

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !21420
  br label %common.resume, !dbg !21436

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !21420
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !21420
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !21437
  br label %bb.o, !dbg !21438
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21440 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !21533, !DIExpression(), !21452)
    #dbg_value(ptr poison, !21568, !DIExpression(), !21456)
    #dbg_value(ptr poison, !21556, !DIExpression(), !21457)
    #dbg_value(ptr poison, !21561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21574)
    #dbg_value(ptr poison, !21560, !DIExpression(), !21575)
    #dbg_value(ptr poison, !21566, !DIExpression(), !21576)
    #dbg_value(ptr poison, !21577, !DIExpression(), !21580)
    #dbg_value(ptr %0, !21529, !DIExpression(), !21581)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !21608 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !21608
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !21608
    #dbg_value(i1 %i.c, !21530, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !21582)
    #dbg_value(i1 %i.d, !21530, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !21582)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21609

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !21610

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !21566, !DIExpression(), !21576)
    #dbg_value(ptr undef, !21560, !DIExpression(), !21575)
    #dbg_value(ptr undef, !21561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21574)
    #dbg_value(ptr undef, !21533, !DIExpression(), !21452)
    #dbg_value(ptr undef, !21556, !DIExpression(), !21457)
    #dbg_value(ptr poison, !21583, !DIExpression(), !21461)
    #dbg_declare(ptr poison, !21587, !DIExpression(), !21462)
    #dbg_declare(ptr poison, !21586, !DIExpression(), !21462)
    #dbg_value(ptr poison, !21591, !DIExpression(), !21465)
    #dbg_declare(ptr poison, !21594, !DIExpression(), !21466)
    #dbg_value(ptr poison, !21598, !DIExpression(DW_OP_deref, DW_OP_deref), !21469)
    #dbg_value(ptr poison, !21603, !DIExpression(), !21472)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21611
    #dbg_value(ptr %i.e, !21605, !DIExpression(), !21475)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21612, !noalias !21607
  store i32 2, ptr %i.a, align 8, !dbg !21612, !noalias !21607
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !21613

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !21614
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !21614
    #dbg_value(ptr undef, !21568, !DIExpression(), !21456)
    #dbg_value(ptr %i.g, !21571, !DIExpression(), !21456)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !21615 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !21616
  unreachable, !dbg !21616

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21617, !noalias !21607
    #dbg_value(ptr undef, !21561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21574)
    #dbg_value(ptr undef, !21561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21574)
    #dbg_value(ptr poison, !9821, !DIExpression(), !21479)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21618

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !21615 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !21615 ; 6 uses
    #dbg_value(ptr %i.j, !21561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21574)
    #dbg_value(ptr %i.k, !21561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21574)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !21479)
  %i.l = icmp eq ptr %i.j, null, !dbg !21618
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !21618

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !21481)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !21619, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !21619
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !21619

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !21619

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !21483)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21484)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21484)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21486)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21488)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21490)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21492)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21486)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21488)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21490)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21492)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !21620
  %i.o = load i64, ptr %i.n, align 8, !dbg !21620, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21493)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21493)
  %i.p = icmp eq i64 %i.o, 0, !dbg !21621
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !21621

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !21620
  %i.r = load i64, ptr %i.q, align 8, !dbg !21622, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21493)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21486)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21488)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21490)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21492)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21484)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21495)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21497)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !21495)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !21497)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !21499)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !21501)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21495)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21497)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21499)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21501)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21495)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21497)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21499)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21501)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !21623
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !21624

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !21503)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21504)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21504)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21506)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21508)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21510)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21512)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21506)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21508)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21510)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21512)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !21625
  %i.u = load i64, ptr %i.t, align 8, !dbg !21625, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21513)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21513)
  %i.v = icmp eq i64 %i.u, 0, !dbg !21626
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !21626

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !21625
  %i.x = load i64, ptr %i.w, align 8, !dbg !21627, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21513)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21506)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21508)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21510)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21512)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21504)
    #dbg_value(ptr poison, !4483, !DIExpression(), !21515)
    #dbg_value(ptr poison, !4490, !DIExpression(), !21517)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !21515)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !21517)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !21519)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !21521)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21515)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21517)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21519)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21521)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21515)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21517)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21519)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21521)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !21628
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !21629

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !21619

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10007, !DIExpression(), !21523)
    #dbg_value(ptr %0, !10009, !DIExpression(), !21525)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !21630
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21631

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10012, !DIExpression(DW_OP_deref), !21527)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !21632
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !21633
end_hunk_4
begin_hunk_5_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22432
    #dbg_value(i64 %..i, !22294, !DIExpression(), !22391)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !22433
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !22434

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !22392, !DIExpression(DW_OP_deref), !22395)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22435
  br label %bb.p, !dbg !22436

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !22437
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22438 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !22474, !DIExpression(), !22476)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !22481
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !22482

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10007, !DIExpression(), !22440)
    #dbg_value(ptr %0, !10009, !DIExpression(), !22442)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22483
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22484

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10012, !DIExpression(DW_OP_deref), !22444)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22485
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22486

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !22477, !DIExpression(), !22480)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22487 ; 2 uses
    #dbg_value(ptr poison, !10031, !DIExpression(), !22450)
    #dbg_value(ptr %i.e, !10065, !DIExpression(), !22451)
    #dbg_value(ptr %i.e, !10068, !DIExpression(), !22453)
    #dbg_value(ptr %i.e, !10063, !DIExpression(), !22454)
    #dbg_value(ptr %i.e, !10059, !DIExpression(), !22455)
    #dbg_value(ptr %i.e, !10060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22456)
    #dbg_value(ptr undef, !10071, !DIExpression(), !22458)
    #dbg_value(ptr %i.e, !10074, !DIExpression(), !22459)
    #dbg_value(ptr %i.e, !10076, !DIExpression(), !22461)
    #dbg_declare(ptr poison, !10080, !DIExpression(), !22462)
    #dbg_declare(ptr poison, !10079, !DIExpression(), !22462)
    #dbg_value(ptr %i.e, !10084, !DIExpression(), !22464)
    #dbg_declare(ptr poison, !10087, !DIExpression(), !22465)
    #dbg_value(ptr poison, !10091, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22467)
    #dbg_value(ptr %i.e, !10096, !DIExpression(), !22469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22488
  store i32 2, ptr %i.a, align 8, !dbg !22488
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !22489

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !22490
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !22490
    #dbg_value(ptr undef, !10031, !DIExpression(), !22450)
    #dbg_value(ptr %i.g, !10054, !DIExpression(), !22450)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !22491 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !22492
  unreachable, !dbg !22492

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22493
    #dbg_value(ptr %i.e, !10060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22456)
    #dbg_value(ptr undef, !10060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22456)
    #dbg_value(ptr poison, !10066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22470)
    #dbg_value(ptr poison, !10098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22472)
    #dbg_value(ptr poison, !10066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22470)
    #dbg_value(ptr poison, !10098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22472)
    #dbg_value(i64 poison, !10099, !DIExpression(), !22472)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22494

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !22491
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !22491 ; 2 uses
    #dbg_value(ptr %i.j, !10060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22456)
    #dbg_value(ptr %i.k, !10060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22456)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10066, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22470)
    #dbg_value(ptr %i.j, !10098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22472)
    #dbg_value(ptr %i.k, !10066, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22470)
    #dbg_value(ptr %i.k, !10098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22472)
    #dbg_value(i64 poison, !10099, !DIExpression(), !22472)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22495

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !22496
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !22496
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !22497
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !22497, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22453)
    #dbg_value(ptr %.sroa.6.0.i, !10069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22453)
    #dbg_value(ptr %.sroa.8.0.i, !10069, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22498
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22498
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !22498
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22498
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !22498
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !22498
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !22498
  store i32 1, ptr %i.b, align 8, !dbg !22498
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !22499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22500
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !22501
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22501

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !22502
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2108 {
bb.a:
    #dbg_value(ptr %0, !10107, !DIExpression(), !22503)
    #dbg_value(ptr %0, !10109, !DIExpression(), !22505)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22508
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !22509

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10112, !DIExpression(), !22507)
    #dbg_value(ptr undef, !10112, !DIExpression(DW_OP_deref), !22507)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22510
  br label %bb.c, !dbg !22511

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !22512
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22513 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !22588, !DIExpression(), !22592)
    #dbg_value(ptr %1, !22589, !DIExpression(), !22592)
    #dbg_value(ptr %2, !22590, !DIExpression(), !22592)
    #dbg_declare(ptr poison, !22593, !DIExpression(), !22604)
    #dbg_value(ptr poison, !22610, !DIExpression(), !22613)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !22640
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !22641
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !22641

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !22642
    #dbg_value(ptr %0, !22608, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !22614)
    #dbg_value(ptr %0, !22600, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !22615)
    #dbg_value(ptr %0, !22617, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !22624)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !22643 ; 2 uses
    #dbg_declare(ptr poison, !22625, !DIExpression(), !22522)
    #dbg_value(ptr %i.d, !22628, !DIExpression(), !22523)
    #dbg_value(ptr %i.d, !22631, !DIExpression(), !22526)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22644, !noalias !22636
    #dbg_value(i32 2, !22634, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !22526)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !22645, !noalias !22636
  store i32 2, ptr %i.d, align 8, !dbg !22646, !noalias !22636
  %i.e = load i32, ptr %i.a, align 8, !dbg !22644, !range !8851, !noalias !22636, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !22647
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !22647, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !22648, !noalias !22636

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !22592

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !22649, !noalias !22636

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !22650, !noalias !22636
  unreachable, !dbg !22650

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !22651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22649, !noalias !22636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22637), !dbg !22652
    #dbg_value(ptr %1, !9775, !DIExpression(), !22532)
  %i.j = load i64, ptr %1, align 8, !dbg !22653, !range !2773, !alias.scope !22637, !noundef !2579
  %3 = icmp eq i64 %i.j, 0, !dbg !22653
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22653

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22653 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22638), !dbg !22653
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !22536)
  %i.l = load i64, ptr %i.k, align 8, !dbg !22654, !alias.scope !22639, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !22654
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !22654

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22654
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !22654, !alias.scope !22639, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !22654
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !22654, !alias.scope !22639 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !22538)
    #dbg_value(ptr poison, !8867, !DIExpression(), !22540)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !22655
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !22655

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !22542)
    #dbg_value(ptr poison, !8881, !DIExpression(), !22544)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !22656, !invariant.load !2579, !noalias !22639 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !22656
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !22656

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !22656, !noalias !22639

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !22546)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22547)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22547)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22549)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22551)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22553)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22555)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22549)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22551)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22553)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22555)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22657
  %i.s = load i64, ptr %i.r, align 8, !dbg !22657, !range !4479, !invariant.load !2579, !noalias !22639 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22556)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22556)
  %i.t = icmp eq i64 %i.s, 0, !dbg !22658
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !22658

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22657
  %i.v = load i64, ptr %i.u, align 8, !dbg !22659, !range !4480, !invariant.load !2579, !noalias !22639
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22556)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22549)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22551)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22553)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22555)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22547)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22558)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22560)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !22558)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !22560)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !22562)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !22564)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22558)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22560)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22562)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22564)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22558)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22560)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22562)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22564)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !22660, !noalias !22639
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22661

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !22566)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22567)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22567)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22569)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22571)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22573)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22575)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22569)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22571)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22573)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22575)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !22662
  %i.y = load i64, ptr %i.x, align 8, !dbg !22662, !range !4479, !invariant.load !2579, !noalias !22639 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22576)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22576)
  %i.z = icmp eq i64 %i.y, 0, !dbg !22663
  br i1 %i.z, label %.body, label %bb.n, !dbg !22663

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !22662
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !22664, !range !4480, !invariant.load !2579, !noalias !22639
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22576)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22569)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22571)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22573)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22575)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22567)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22578)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22580)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !22578)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !22580)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !22582)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !22584)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22578)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22580)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22582)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22584)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22578)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22580)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22582)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22584)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !22665, !noalias !22639
  br label %.body, !dbg !22666

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !22667

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !22652
  br label %common.resume, !dbg !22668

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !22652
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !22652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !22669
  br label %bb.o, !dbg !22670
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22672 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !22765, !DIExpression(), !22684)
    #dbg_value(ptr poison, !22800, !DIExpression(), !22688)
    #dbg_value(ptr poison, !22788, !DIExpression(), !22689)
    #dbg_value(ptr poison, !22793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22806)
    #dbg_value(ptr poison, !22792, !DIExpression(), !22807)
    #dbg_value(ptr poison, !22798, !DIExpression(), !22808)
    #dbg_value(ptr poison, !22809, !DIExpression(), !22812)
    #dbg_value(ptr %0, !22761, !DIExpression(), !22813)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !22840 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !22840
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !22840
    #dbg_value(i1 %i.c, !22762, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !22814)
    #dbg_value(i1 %i.d, !22762, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !22814)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22841

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !22842

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !22798, !DIExpression(), !22808)
    #dbg_value(ptr undef, !22792, !DIExpression(), !22807)
    #dbg_value(ptr undef, !22793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22806)
    #dbg_value(ptr undef, !22765, !DIExpression(), !22684)
    #dbg_value(ptr undef, !22788, !DIExpression(), !22689)
    #dbg_value(ptr poison, !22815, !DIExpression(), !22693)
    #dbg_declare(ptr poison, !22819, !DIExpression(), !22694)
    #dbg_declare(ptr poison, !22818, !DIExpression(), !22694)
    #dbg_value(ptr poison, !22823, !DIExpression(), !22697)
    #dbg_declare(ptr poison, !22826, !DIExpression(), !22698)
    #dbg_value(ptr poison, !22830, !DIExpression(DW_OP_deref, DW_OP_deref), !22701)
    #dbg_value(ptr poison, !22835, !DIExpression(), !22704)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22843
    #dbg_value(ptr %i.e, !22837, !DIExpression(), !22707)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22844, !noalias !22839
  store i32 2, ptr %i.a, align 8, !dbg !22844, !noalias !22839
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !22845

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !22846
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !22846
    #dbg_value(ptr undef, !22800, !DIExpression(), !22688)
    #dbg_value(ptr %i.g, !22803, !DIExpression(), !22688)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !22847 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !22848
  unreachable, !dbg !22848

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22849, !noalias !22839
    #dbg_value(ptr undef, !22793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22806)
    #dbg_value(ptr undef, !22793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22806)
    #dbg_value(ptr poison, !9821, !DIExpression(), !22711)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22850

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !22847 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !22847 ; 6 uses
    #dbg_value(ptr %i.j, !22793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22806)
    #dbg_value(ptr %i.k, !22793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22806)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !22711)
  %i.l = icmp eq ptr %i.j, null, !dbg !22850
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !22850

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !22713)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !22851, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !22851
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !22851

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !22851

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !22715)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22716)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22716)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22718)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22720)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22722)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22724)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22718)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22720)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22722)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22724)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !22852
  %i.o = load i64, ptr %i.n, align 8, !dbg !22852, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22725)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22725)
  %i.p = icmp eq i64 %i.o, 0, !dbg !22853
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !22853

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !22852
  %i.r = load i64, ptr %i.q, align 8, !dbg !22854, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22725)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22718)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22720)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22722)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22724)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22716)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22727)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22729)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !22727)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !22729)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !22731)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !22733)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22727)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22729)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22731)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22733)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22727)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22729)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22731)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22733)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !22855
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !22856

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !22735)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22736)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22736)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22738)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22740)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22742)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22744)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22738)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22740)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22742)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22744)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !22857
  %i.u = load i64, ptr %i.t, align 8, !dbg !22857, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22745)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22745)
  %i.v = icmp eq i64 %i.u, 0, !dbg !22858
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !22858

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !22857
  %i.x = load i64, ptr %i.w, align 8, !dbg !22859, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22745)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22738)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22740)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22742)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22744)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22736)
    #dbg_value(ptr poison, !4483, !DIExpression(), !22747)
    #dbg_value(ptr poison, !4490, !DIExpression(), !22749)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !22747)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !22749)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !22751)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !22753)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22747)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22749)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22751)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22753)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22747)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22749)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22751)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22753)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !22860
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !22861

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !22851

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10107, !DIExpression(), !22755)
    #dbg_value(ptr %0, !10109, !DIExpression(), !22757)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !22862
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22863

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10112, !DIExpression(DW_OP_deref), !22759)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !22864
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !22865
end_hunk_5
begin_hunk_6_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23664
    #dbg_value(i64 %..i, !23526, !DIExpression(), !23623)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !23665
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !23666

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !23624, !DIExpression(DW_OP_deref), !23627)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !23667
  br label %bb.p, !dbg !23668

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !23669
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23670 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !23706, !DIExpression(), !23708)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !23713
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !23714

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10107, !DIExpression(), !23672)
    #dbg_value(ptr %0, !10109, !DIExpression(), !23674)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !23715
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23716

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10112, !DIExpression(DW_OP_deref), !23676)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !23717
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23718

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !23709, !DIExpression(), !23712)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23719 ; 2 uses
    #dbg_value(ptr poison, !10131, !DIExpression(), !23682)
    #dbg_value(ptr %i.e, !10165, !DIExpression(), !23683)
    #dbg_value(ptr %i.e, !10168, !DIExpression(), !23685)
    #dbg_value(ptr %i.e, !10163, !DIExpression(), !23686)
    #dbg_value(ptr %i.e, !10159, !DIExpression(), !23687)
    #dbg_value(ptr %i.e, !10160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23688)
    #dbg_value(ptr undef, !10171, !DIExpression(), !23690)
    #dbg_value(ptr %i.e, !10174, !DIExpression(), !23691)
    #dbg_value(ptr %i.e, !10176, !DIExpression(), !23693)
    #dbg_declare(ptr poison, !10180, !DIExpression(), !23694)
    #dbg_declare(ptr poison, !10179, !DIExpression(), !23694)
    #dbg_value(ptr %i.e, !10184, !DIExpression(), !23696)
    #dbg_declare(ptr poison, !10187, !DIExpression(), !23697)
    #dbg_value(ptr poison, !10191, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23699)
    #dbg_value(ptr %i.e, !10196, !DIExpression(), !23701)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23720
  store i32 2, ptr %i.a, align 8, !dbg !23720
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !23721

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !23722
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !23722
    #dbg_value(ptr undef, !10131, !DIExpression(), !23682)
    #dbg_value(ptr %i.g, !10154, !DIExpression(), !23682)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !23723 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !23724
  unreachable, !dbg !23724

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23725
    #dbg_value(ptr %i.e, !10160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23688)
    #dbg_value(ptr undef, !10160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23688)
    #dbg_value(ptr poison, !10166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23702)
    #dbg_value(ptr poison, !10198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23704)
    #dbg_value(ptr poison, !10166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23702)
    #dbg_value(ptr poison, !10198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23704)
    #dbg_value(i64 poison, !10199, !DIExpression(), !23704)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23726

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !23723
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !23723 ; 2 uses
    #dbg_value(ptr %i.j, !10160, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23688)
    #dbg_value(ptr %i.k, !10160, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23688)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23702)
    #dbg_value(ptr %i.j, !10198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23704)
    #dbg_value(ptr %i.k, !10166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23702)
    #dbg_value(ptr %i.k, !10198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23704)
    #dbg_value(i64 poison, !10199, !DIExpression(), !23704)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23727

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !23728
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !23728
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23729
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !23729, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23685)
    #dbg_value(ptr %.sroa.6.0.i, !10169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23685)
    #dbg_value(ptr %.sroa.8.0.i, !10169, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23685)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23730
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !23730
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !23730
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23730
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !23730
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !23730
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !23730
  store i32 1, ptr %i.b, align 8, !dbg !23730
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !23731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23732
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !23733
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !23733

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !23734
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2133 {
bb.a:
    #dbg_value(ptr %0, !10207, !DIExpression(), !23735)
    #dbg_value(ptr %0, !10209, !DIExpression(), !23737)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !23740
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !23741

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10212, !DIExpression(), !23739)
    #dbg_value(ptr undef, !10212, !DIExpression(DW_OP_deref), !23739)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !23742
  br label %bb.c, !dbg !23743

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !23744
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23745 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !23820, !DIExpression(), !23824)
    #dbg_value(ptr %1, !23821, !DIExpression(), !23824)
    #dbg_value(ptr %2, !23822, !DIExpression(), !23824)
    #dbg_declare(ptr poison, !23825, !DIExpression(), !23836)
    #dbg_value(ptr poison, !23842, !DIExpression(), !23845)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !23872
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !23873
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !23873

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !23874
    #dbg_value(ptr %0, !23840, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !23846)
    #dbg_value(ptr %0, !23832, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !23847)
    #dbg_value(ptr %0, !23849, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !23856)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !23875 ; 2 uses
    #dbg_declare(ptr poison, !23857, !DIExpression(), !23754)
    #dbg_value(ptr %i.d, !23860, !DIExpression(), !23755)
    #dbg_value(ptr %i.d, !23863, !DIExpression(), !23758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23876, !noalias !23868
    #dbg_value(i32 2, !23866, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !23758)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !23877, !noalias !23868
  store i32 2, ptr %i.d, align 8, !dbg !23878, !noalias !23868
  %i.e = load i32, ptr %i.a, align 8, !dbg !23876, !range !8851, !noalias !23868, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !23879
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !23879, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !23880, !noalias !23868

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !23824

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !23881, !noalias !23868

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !23882, !noalias !23868
  unreachable, !dbg !23882

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !23883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !23883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23881, !noalias !23868
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23869), !dbg !23884
    #dbg_value(ptr %1, !9775, !DIExpression(), !23764)
  %i.j = load i64, ptr %1, align 8, !dbg !23885, !range !2773, !alias.scope !23869, !noundef !2579
  %3 = icmp eq i64 %i.j, 0, !dbg !23885
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23885

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23885 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23870), !dbg !23885
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !23768)
  %i.l = load i64, ptr %i.k, align 8, !dbg !23886, !alias.scope !23871, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !23886
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !23886

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !23886
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !23886, !alias.scope !23871, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !23886
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !23886, !alias.scope !23871 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !23770)
    #dbg_value(ptr poison, !8867, !DIExpression(), !23772)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !23887
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !23887

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !23774)
    #dbg_value(ptr poison, !8881, !DIExpression(), !23776)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !23888, !invariant.load !2579, !noalias !23871 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !23888
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !23888

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !23888, !noalias !23871

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !23778)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23779)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23779)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23781)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23783)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23785)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23787)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23781)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23783)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23785)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23787)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !23889
  %i.s = load i64, ptr %i.r, align 8, !dbg !23889, !range !4479, !invariant.load !2579, !noalias !23871 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23788)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23788)
  %i.t = icmp eq i64 %i.s, 0, !dbg !23890
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !23890

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !23889
  %i.v = load i64, ptr %i.u, align 8, !dbg !23891, !range !4480, !invariant.load !2579, !noalias !23871
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23788)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23781)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23783)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23785)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23787)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23779)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23790)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23792)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !23790)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !23792)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !23794)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !23796)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23790)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23792)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23794)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23796)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23790)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23792)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23794)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23796)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !23892, !noalias !23871
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !23893

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !23798)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23799)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23799)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23801)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23803)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23805)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23807)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23801)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23803)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23805)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23807)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !23894
  %i.y = load i64, ptr %i.x, align 8, !dbg !23894, !range !4479, !invariant.load !2579, !noalias !23871 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23808)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23808)
  %i.z = icmp eq i64 %i.y, 0, !dbg !23895
  br i1 %i.z, label %.body, label %bb.n, !dbg !23895

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !23894
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !23896, !range !4480, !invariant.load !2579, !noalias !23871
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23808)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23801)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23803)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23805)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23807)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23799)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23810)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23812)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !23810)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !23812)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !23814)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !23816)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23810)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23812)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23814)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23816)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23810)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23812)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23814)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23816)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !23897, !noalias !23871
  br label %.body, !dbg !23898

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !23899

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !23884
  br label %common.resume, !dbg !23900

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !23884
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !23884
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !23901
  br label %bb.o, !dbg !23902
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !23904 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !23997, !DIExpression(), !23916)
    #dbg_value(ptr poison, !24032, !DIExpression(), !23920)
    #dbg_value(ptr poison, !24020, !DIExpression(), !23921)
    #dbg_value(ptr poison, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24038)
    #dbg_value(ptr poison, !24024, !DIExpression(), !24039)
    #dbg_value(ptr poison, !24030, !DIExpression(), !24040)
    #dbg_value(ptr poison, !24041, !DIExpression(), !24044)
    #dbg_value(ptr %0, !23993, !DIExpression(), !24045)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !24072 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !24072
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !24072
    #dbg_value(i1 %i.c, !23994, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !24046)
    #dbg_value(i1 %i.d, !23994, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !24046)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24073

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !24074

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !24030, !DIExpression(), !24040)
    #dbg_value(ptr undef, !24024, !DIExpression(), !24039)
    #dbg_value(ptr undef, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24038)
    #dbg_value(ptr undef, !23997, !DIExpression(), !23916)
    #dbg_value(ptr undef, !24020, !DIExpression(), !23921)
    #dbg_value(ptr poison, !24047, !DIExpression(), !23925)
    #dbg_declare(ptr poison, !24051, !DIExpression(), !23926)
    #dbg_declare(ptr poison, !24050, !DIExpression(), !23926)
    #dbg_value(ptr poison, !24055, !DIExpression(), !23929)
    #dbg_declare(ptr poison, !24058, !DIExpression(), !23930)
    #dbg_value(ptr poison, !24062, !DIExpression(DW_OP_deref, DW_OP_deref), !23933)
    #dbg_value(ptr poison, !24067, !DIExpression(), !23936)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24075
    #dbg_value(ptr %i.e, !24069, !DIExpression(), !23939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24076, !noalias !24071
  store i32 2, ptr %i.a, align 8, !dbg !24076, !noalias !24071
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !24077

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !24078
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !24078
    #dbg_value(ptr undef, !24032, !DIExpression(), !23920)
    #dbg_value(ptr %i.g, !24035, !DIExpression(), !23920)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !24079 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !24080
  unreachable, !dbg !24080

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24081, !noalias !24071
    #dbg_value(ptr undef, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24038)
    #dbg_value(ptr undef, !24025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24038)
    #dbg_value(ptr poison, !9821, !DIExpression(), !23943)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24082

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !24079 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !24079 ; 6 uses
    #dbg_value(ptr %i.j, !24025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24038)
    #dbg_value(ptr %i.k, !24025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24038)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !23943)
  %i.l = icmp eq ptr %i.j, null, !dbg !24082
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !24082

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !23945)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !24083, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !24083
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !24083

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !24083

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !23947)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23948)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23948)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23950)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23952)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23954)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23956)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23950)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23952)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23954)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23956)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !24084
  %i.o = load i64, ptr %i.n, align 8, !dbg !24084, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23957)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23957)
  %i.p = icmp eq i64 %i.o, 0, !dbg !24085
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !24085

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !24084
  %i.r = load i64, ptr %i.q, align 8, !dbg !24086, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23957)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23950)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23952)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23954)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23956)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23948)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23959)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23961)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !23959)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !23961)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !23963)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !23965)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23959)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23961)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23963)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23965)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23959)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23961)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23963)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23965)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !24087
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24088

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !23967)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23968)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23968)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23970)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23972)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23974)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23976)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23970)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23972)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23974)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23976)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !24089
  %i.u = load i64, ptr %i.t, align 8, !dbg !24089, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23977)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23977)
  %i.v = icmp eq i64 %i.u, 0, !dbg !24090
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !24090

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !24089
  %i.x = load i64, ptr %i.w, align 8, !dbg !24091, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23977)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23970)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23972)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23974)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23976)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23968)
    #dbg_value(ptr poison, !4483, !DIExpression(), !23979)
    #dbg_value(ptr poison, !4490, !DIExpression(), !23981)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !23979)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !23981)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !23983)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !23985)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23979)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23981)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23983)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23985)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23979)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23981)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23983)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23985)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !24092
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !24093

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !24083

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10207, !DIExpression(), !23987)
    #dbg_value(ptr %0, !10209, !DIExpression(), !23989)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24094
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24095

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10212, !DIExpression(DW_OP_deref), !23991)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24096
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24097
end_hunk_6
begin_hunk_7_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24896
    #dbg_value(i64 %..i, !24758, !DIExpression(), !24855)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i), !dbg !24897
  br i1 %i.ae, label %bb.o, label %bb.p, !dbg !24898

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !24856, !DIExpression(DW_OP_deref), !24859)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24899
  br label %bb.p, !dbg !24900

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !24901
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24902 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !24938, !DIExpression(), !24940)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !24945
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !24946

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10207, !DIExpression(), !24904)
    #dbg_value(ptr %0, !10209, !DIExpression(), !24906)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24947
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24948

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10212, !DIExpression(DW_OP_deref), !24908)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24949
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24950

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !24941, !DIExpression(), !24944)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24951 ; 2 uses
    #dbg_value(ptr poison, !10231, !DIExpression(), !24914)
    #dbg_value(ptr %i.e, !10265, !DIExpression(), !24915)
    #dbg_value(ptr %i.e, !10268, !DIExpression(), !24917)
    #dbg_value(ptr %i.e, !10263, !DIExpression(), !24918)
    #dbg_value(ptr %i.e, !10259, !DIExpression(), !24919)
    #dbg_value(ptr %i.e, !10260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24920)
    #dbg_value(ptr undef, !10271, !DIExpression(), !24922)
    #dbg_value(ptr %i.e, !10274, !DIExpression(), !24923)
    #dbg_value(ptr %i.e, !10276, !DIExpression(), !24925)
    #dbg_declare(ptr poison, !10280, !DIExpression(), !24926)
    #dbg_declare(ptr poison, !10279, !DIExpression(), !24926)
    #dbg_value(ptr %i.e, !10284, !DIExpression(), !24928)
    #dbg_declare(ptr poison, !10287, !DIExpression(), !24929)
    #dbg_value(ptr poison, !10291, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24931)
    #dbg_value(ptr %i.e, !10296, !DIExpression(), !24933)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24952
  store i32 2, ptr %i.a, align 8, !dbg !24952
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !24953

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !24954
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !24954
    #dbg_value(ptr undef, !10231, !DIExpression(), !24914)
    #dbg_value(ptr %i.g, !10254, !DIExpression(), !24914)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !24955 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !24956
  unreachable, !dbg !24956

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24957
    #dbg_value(ptr %i.e, !10260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24920)
    #dbg_value(ptr undef, !10260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24920)
    #dbg_value(ptr poison, !10266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24934)
    #dbg_value(ptr poison, !10298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24936)
    #dbg_value(ptr poison, !10266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24934)
    #dbg_value(ptr poison, !10298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24936)
    #dbg_value(i64 poison, !10299, !DIExpression(), !24936)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24958

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !24955
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !24955 ; 2 uses
    #dbg_value(ptr %i.j, !10260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24920)
    #dbg_value(ptr %i.k, !10260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24920)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24934)
    #dbg_value(ptr %i.j, !10298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24936)
    #dbg_value(ptr %i.k, !10266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24934)
    #dbg_value(ptr %i.k, !10298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24936)
    #dbg_value(i64 poison, !10299, !DIExpression(), !24936)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !24959

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !24960
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !24960
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !24961
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !24961, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24917)
    #dbg_value(ptr %.sroa.6.0.i, !10269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24917)
    #dbg_value(ptr %.sroa.8.0.i, !10269, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24962
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24962
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !24962
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !24962
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !24962
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !24962
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !24962
  store i32 1, ptr %i.b, align 8, !dbg !24962
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !24963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24964
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !24965
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !24965

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !24966
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2158 {
bb.a:
    #dbg_value(ptr %0, !10307, !DIExpression(), !24967)
    #dbg_value(ptr %0, !10309, !DIExpression(), !24969)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !24972
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !24973

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10312, !DIExpression(), !24971)
    #dbg_value(ptr undef, !10312, !DIExpression(DW_OP_deref), !24971)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !24974
  br label %bb.c, !dbg !24975

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !24976
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24977 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !25052, !DIExpression(), !25056)
    #dbg_value(ptr %1, !25053, !DIExpression(), !25056)
    #dbg_value(ptr %2, !25054, !DIExpression(), !25056)
    #dbg_declare(ptr poison, !25057, !DIExpression(), !25068)
    #dbg_value(ptr poison, !25074, !DIExpression(), !25077)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !25104
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !25105
  br i1 %i.c, label %bb.b, label %bb.o, !dbg !25105

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !25106
    #dbg_value(ptr %0, !25072, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !25078)
    #dbg_value(ptr %0, !25064, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !25079)
    #dbg_value(ptr %0, !25081, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !25088)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !25107 ; 2 uses
    #dbg_declare(ptr poison, !25089, !DIExpression(), !24986)
    #dbg_value(ptr %i.d, !25092, !DIExpression(), !24987)
    #dbg_value(ptr %i.d, !25095, !DIExpression(), !24990)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25108, !noalias !25100
    #dbg_value(i32 2, !25098, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !24990)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !25109, !noalias !25100
  store i32 2, ptr %i.d, align 8, !dbg !25110, !noalias !25100
  %i.e = load i32, ptr %i.a, align 8, !dbg !25108, !range !8851, !noalias !25100, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !25111
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !25111, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.d unwind label %bb.e, !dbg !25112, !noalias !25100

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op, !dbg !25056

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEEECskigd7sy4fqX_10quinn_perf(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #13
          to label %common.resume unwind label %bb.f, !dbg !25113, !noalias !25100

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !25114, !noalias !25100
  unreachable, !dbg !25114

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !25115
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !25115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25113, !noalias !25100
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25101), !dbg !25116
    #dbg_value(ptr %1, !9775, !DIExpression(), !24996)
  %i.j = load i64, ptr %1, align 8, !dbg !25117, !range !2773, !alias.scope !25101, !noundef !2579
  %3 = icmp eq i64 %i.j, 0, !dbg !25117
  br i1 %3, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25117

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25117 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25102), !dbg !25117
    #dbg_value(ptr %i.k, !8853, !DIExpression(), !25000)
  %i.l = load i64, ptr %i.k, align 8, !dbg !25118, !alias.scope !25103, !noundef !2579
  %i.m = icmp eq i64 %i.l, 0, !dbg !25118
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.h, !dbg !25118

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !25118
  %.val.i.i = load ptr, ptr %i.n, align 8, !dbg !25118, !alias.scope !25103, !noundef !2579 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !25118
  %.val1.i.i = load ptr, ptr %i.o, align 8, !dbg !25118, !alias.scope !25103 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !25002)
    #dbg_value(ptr poison, !8867, !DIExpression(), !25004)
  %i.p = icmp eq ptr %.val.i.i, null, !dbg !25119
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !25119

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !8874, !DIExpression(), !25006)
    #dbg_value(ptr poison, !8881, !DIExpression(), !25008)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !dbg !25120, !invariant.load !2579, !noalias !25103 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null, !dbg !25120
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j, !dbg !25120

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !dbg !25120, !noalias !25103

bb.k:                                             ; preds = %bb.j, %bb.i
    #dbg_value(ptr poison, !8885, !DIExpression(), !25010)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25011)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25011)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25013)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25015)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25017)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25019)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25013)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25015)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25017)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25019)
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !25121
  %i.s = load i64, ptr %i.r, align 8, !dbg !25121, !range !4479, !invariant.load !2579, !noalias !25103 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25020)
    #dbg_value(i64 %i.s, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25020)
  %i.t = icmp eq i64 %i.s, 0, !dbg !25122
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.l, !dbg !25122

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !25121
  %i.v = load i64, ptr %i.u, align 8, !dbg !25123, !range !4480, !invariant.load !2579, !noalias !25103
    #dbg_value(i64 %i.v, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25020)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25013)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25015)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25017)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25019)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25011)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25022)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25024)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !25022)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !25024)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !25026)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !25028)
    #dbg_value(i64 %i.v, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25022)
    #dbg_value(i64 %i.v, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25024)
    #dbg_value(i64 %i.v, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25026)
    #dbg_value(i64 %i.v, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25028)
    #dbg_value(i64 %i.s, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25022)
    #dbg_value(i64 %i.s, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25024)
    #dbg_value(i64 %i.s, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25026)
    #dbg_value(i64 %i.s, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25028)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #14, !dbg !25124, !noalias !25103
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25125

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !25030)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25031)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25031)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25033)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25035)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25037)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25039)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25033)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25035)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25037)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25039)
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !25126
  %i.y = load i64, ptr %i.x, align 8, !dbg !25126, !range !4479, !invariant.load !2579, !noalias !25103 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25040)
    #dbg_value(i64 %i.y, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25040)
  %i.z = icmp eq i64 %i.y, 0, !dbg !25127
  br i1 %i.z, label %.body, label %bb.n, !dbg !25127

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !25126
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !25128, !range !4480, !invariant.load !2579, !noalias !25103
    #dbg_value(i64 %i.ab, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25040)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25033)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25035)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25037)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25039)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25031)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25042)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25044)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !25042)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !25044)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !25046)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !25048)
    #dbg_value(i64 %i.ab, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25042)
    #dbg_value(i64 %i.ab, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25044)
    #dbg_value(i64 %i.ab, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25046)
    #dbg_value(i64 %i.ab, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25048)
    #dbg_value(i64 %i.y, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25042)
    #dbg_value(i64 %i.y, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25044)
    #dbg_value(i64 %i.y, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25046)
    #dbg_value(i64 %i.y, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25048)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #14, !dbg !25129, !noalias !25103
  br label %.body, !dbg !25130

bb.o:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !25131

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !25116
  br label %common.resume, !dbg !25132

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !25116
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !25116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !25116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !25133
  br label %bb.o, !dbg !25134
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !25136 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !25229, !DIExpression(), !25148)
    #dbg_value(ptr poison, !25264, !DIExpression(), !25152)
    #dbg_value(ptr poison, !25252, !DIExpression(), !25153)
    #dbg_value(ptr poison, !25257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25270)
    #dbg_value(ptr poison, !25256, !DIExpression(), !25271)
    #dbg_value(ptr poison, !25262, !DIExpression(), !25272)
    #dbg_value(ptr poison, !25273, !DIExpression(), !25276)
    #dbg_value(ptr %0, !25225, !DIExpression(), !25277)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !25304 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !25304
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !25304
    #dbg_value(i1 %i.c, !25226, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !25278)
    #dbg_value(i1 %i.d, !25226, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !25278)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25305

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !25306

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !25262, !DIExpression(), !25272)
    #dbg_value(ptr undef, !25256, !DIExpression(), !25271)
    #dbg_value(ptr undef, !25257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25270)
    #dbg_value(ptr undef, !25229, !DIExpression(), !25148)
    #dbg_value(ptr undef, !25252, !DIExpression(), !25153)
    #dbg_value(ptr poison, !25279, !DIExpression(), !25157)
    #dbg_declare(ptr poison, !25283, !DIExpression(), !25158)
    #dbg_declare(ptr poison, !25282, !DIExpression(), !25158)
    #dbg_value(ptr poison, !25287, !DIExpression(), !25161)
    #dbg_declare(ptr poison, !25290, !DIExpression(), !25162)
    #dbg_value(ptr poison, !25294, !DIExpression(DW_OP_deref, DW_OP_deref), !25165)
    #dbg_value(ptr poison, !25299, !DIExpression(), !25168)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !25307
    #dbg_value(ptr %i.e, !25301, !DIExpression(), !25171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !25308, !noalias !25303
  store i32 2, ptr %i.a, align 8, !dbg !25308, !noalias !25303
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c, !dbg !25309

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !25310
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !25310
    #dbg_value(ptr undef, !25264, !DIExpression(), !25152)
    #dbg_value(ptr %i.g, !25267, !DIExpression(), !25152)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !25311 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !25312
  unreachable, !dbg !25312

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !25313, !noalias !25303
    #dbg_value(ptr undef, !25257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25270)
    #dbg_value(ptr undef, !25257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25270)
    #dbg_value(ptr poison, !9821, !DIExpression(), !25175)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25314

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !25311 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !25311 ; 6 uses
    #dbg_value(ptr %i.j, !25257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25270)
    #dbg_value(ptr %i.k, !25257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25270)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !25175)
  %i.l = icmp eq ptr %i.j, null, !dbg !25314
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !25314

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !25177)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !25315, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !25315
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !25315

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !25315

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !25179)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25180)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25180)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25182)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25184)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25186)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25188)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25182)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25184)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25186)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25188)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !25316
  %i.o = load i64, ptr %i.n, align 8, !dbg !25316, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25189)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25189)
  %i.p = icmp eq i64 %i.o, 0, !dbg !25317
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !25317

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !25316
  %i.r = load i64, ptr %i.q, align 8, !dbg !25318, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25189)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25182)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25184)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25186)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25188)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25180)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25191)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25193)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !25191)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !25193)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !25195)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !25197)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25191)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25193)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25195)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25197)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25191)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25193)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25195)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25197)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !25319
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !25320

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !25199)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25200)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25200)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25202)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25204)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25206)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25208)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25202)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25204)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25206)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25208)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !25321
  %i.u = load i64, ptr %i.t, align 8, !dbg !25321, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25209)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25209)
  %i.v = icmp eq i64 %i.u, 0, !dbg !25322
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !25322

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !25321
  %i.x = load i64, ptr %i.w, align 8, !dbg !25323, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25209)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25202)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25204)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25206)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25208)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25200)
    #dbg_value(ptr poison, !4483, !DIExpression(), !25211)
    #dbg_value(ptr poison, !4490, !DIExpression(), !25213)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !25211)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !25213)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !25215)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !25217)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25211)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25213)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25215)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !25217)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25211)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25213)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25215)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !25217)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !25324
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !25325

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !25315

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10307, !DIExpression(), !25219)
    #dbg_value(ptr %0, !10309, !DIExpression(), !25221)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !25326
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25327

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10312, !DIExpression(DW_OP_deref), !25223)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !25328
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !25329
end_hunk_7
begin_hunk_8_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !26088, !DIExpression(DW_OP_deref), !26091)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26131
  br label %bb.p, !dbg !26132

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !26133
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26134 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !26170, !DIExpression(), !26172)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !26177
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !26178

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10307, !DIExpression(), !26136)
    #dbg_value(ptr %0, !10309, !DIExpression(), !26138)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26179
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26180

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10312, !DIExpression(DW_OP_deref), !26140)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_NCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26181
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26182

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !26173, !DIExpression(), !26176)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26183 ; 2 uses
    #dbg_value(ptr poison, !10331, !DIExpression(), !26146)
    #dbg_value(ptr %i.e, !10365, !DIExpression(), !26147)
    #dbg_value(ptr %i.e, !10368, !DIExpression(), !26149)
    #dbg_value(ptr %i.e, !10363, !DIExpression(), !26150)
    #dbg_value(ptr %i.e, !10359, !DIExpression(), !26151)
    #dbg_value(ptr %i.e, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26152)
    #dbg_value(ptr undef, !10371, !DIExpression(), !26154)
    #dbg_value(ptr %i.e, !10374, !DIExpression(), !26155)
    #dbg_value(ptr %i.e, !10376, !DIExpression(), !26157)
    #dbg_declare(ptr poison, !10380, !DIExpression(), !26158)
    #dbg_declare(ptr poison, !10379, !DIExpression(), !26158)
    #dbg_value(ptr %i.e, !10384, !DIExpression(), !26160)
    #dbg_declare(ptr poison, !10387, !DIExpression(), !26161)
    #dbg_value(ptr poison, !10391, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !26163)
    #dbg_value(ptr %i.e, !10396, !DIExpression(), !26165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26184
  store i32 2, ptr %i.a, align 8, !dbg !26184
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !26185

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !26186
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !26186
    #dbg_value(ptr undef, !10331, !DIExpression(), !26146)
    #dbg_value(ptr %i.g, !10354, !DIExpression(), !26146)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !26187 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !26188
  unreachable, !dbg !26188

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26189
    #dbg_value(ptr %i.e, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26152)
    #dbg_value(ptr undef, !10360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26152)
    #dbg_value(ptr poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26166)
    #dbg_value(ptr poison, !10398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26168)
    #dbg_value(ptr poison, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26166)
    #dbg_value(ptr poison, !10398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26168)
    #dbg_value(i64 poison, !10399, !DIExpression(), !26168)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26190

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !26187
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !26187 ; 2 uses
    #dbg_value(ptr %i.j, !10360, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26152)
    #dbg_value(ptr %i.k, !10360, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26152)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10366, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26166)
    #dbg_value(ptr %i.j, !10398, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26168)
    #dbg_value(ptr %i.k, !10366, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26166)
    #dbg_value(ptr %i.k, !10398, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26168)
    #dbg_value(i64 poison, !10399, !DIExpression(), !26168)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26191

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !26192
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !26192
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !26193
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !26193, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26149)
    #dbg_value(ptr %.sroa.6.0.i, !10369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26149)
    #dbg_value(ptr %.sroa.8.0.i, !10369, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !26149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !26194
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !26194
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !26194
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !26194
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !26194
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !26194
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !26194
  store i32 1, ptr %i.b, align 8, !dbg !26194
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !dbg !26195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !26196
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !26197
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26197

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !26198
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2183 {
bb.a:
    #dbg_value(ptr %0, !10407, !DIExpression(), !26199)
    #dbg_value(ptr %0, !10409, !DIExpression(), !26201)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26204
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !26205

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10412, !DIExpression(), !26203)
    #dbg_value(ptr undef, !10412, !DIExpression(DW_OP_deref), !26203)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26206
  br label %bb.c, !dbg !26207

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !26208
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26209 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !26284, !DIExpression(), !26288)
    #dbg_value(ptr %1, !26285, !DIExpression(), !26288)
    #dbg_value(ptr %2, !26286, !DIExpression(), !26288)
    #dbg_declare(ptr poison, !26289, !DIExpression(), !26300)
    #dbg_value(ptr poison, !26306, !DIExpression(), !26309)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !26336
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !26337
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !26337

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !26338
    #dbg_value(ptr %0, !26304, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !26310)
    #dbg_value(ptr %0, !26296, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !26311)
    #dbg_value(ptr %0, !26313, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !26320)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !26339 ; 2 uses
    #dbg_declare(ptr poison, !26321, !DIExpression(), !26218)
    #dbg_value(ptr %i.d, !26324, !DIExpression(), !26219)
    #dbg_value(ptr %i.d, !26327, !DIExpression(), !26222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26340, !noalias !26332
    #dbg_value(i32 2, !26330, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !26222)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.a, ptr noundef nonnull align 8 dereferenceable(1448) %i.d, i64 1448, i1 false), !dbg !26341, !noalias !26332
  store i32 2, ptr %i.d, align 8, !dbg !26342, !noalias !26332
  %i.e = load i32, ptr %i.a, align 8, !dbg !26340, !range !8851, !noalias !26332, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !26343
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !26343, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !26344, !noalias !26332

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !26345, !range !8851, !noalias !26332, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !26345
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !26345

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !26288

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !26345, !noalias !26332

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !26346, !noalias !26332
  unreachable, !dbg !26346

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !26347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !26347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26345, !noalias !26332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26333), !dbg !26348
    #dbg_value(ptr %1, !9775, !DIExpression(), !26228)
  %i.l = load i64, ptr %1, align 8, !dbg !26349, !range !2773, !alias.scope !26333, !noundef !2579
  %3 = icmp eq i64 %i.l, 0, !dbg !26349
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26349

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26349 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26334), !dbg !26349
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !26232)
  %i.n = load i64, ptr %i.m, align 8, !dbg !26350, !alias.scope !26335, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !26350
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !26350

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !26350
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !26350, !alias.scope !26335, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !26350
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !26350, !alias.scope !26335 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !26234)
    #dbg_value(ptr poison, !8867, !DIExpression(), !26236)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !26351
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !26351

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !26238)
    #dbg_value(ptr poison, !8881, !DIExpression(), !26240)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !26352, !invariant.load !2579, !noalias !26335 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !26352
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !26352

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !26352, !noalias !26335

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !26242)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26243)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26243)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26245)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26247)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26249)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26251)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26245)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26247)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26249)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26251)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !26353
  %i.u = load i64, ptr %i.t, align 8, !dbg !26353, !range !4479, !invariant.load !2579, !noalias !26335 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26252)
  %i.v = icmp eq i64 %i.u, 0, !dbg !26354
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !26354

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !26353
  %i.x = load i64, ptr %i.w, align 8, !dbg !26355, !range !4480, !invariant.load !2579, !noalias !26335
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26252)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26245)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26247)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26249)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26251)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26243)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26254)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26256)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !26254)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !26256)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !26258)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !26260)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26254)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26256)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26258)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26260)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26254)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26256)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26258)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26260)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !26356, !noalias !26335
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26357

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !26262)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26263)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26263)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26265)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26267)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26269)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26271)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26265)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26267)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26269)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26271)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !26358
  %i.aa = load i64, ptr %i.z, align 8, !dbg !26358, !range !4479, !invariant.load !2579, !noalias !26335 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26272)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26272)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !26359
  br i1 %i.ab, label %.body, label %bb.o, !dbg !26359

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !26358
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !26360, !range !4480, !invariant.load !2579, !noalias !26335
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26272)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26265)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26267)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26269)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26271)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26263)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26274)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26276)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !26274)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !26276)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !26278)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !26280)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26274)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26276)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26278)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26280)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26274)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26276)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26278)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26280)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !26361, !noalias !26335
  br label %.body, !dbg !26362

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !26363

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !26348
  br label %common.resume, !dbg !26364

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !26348
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !26348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !26348
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !26365
  br label %bb.p, !dbg !26366
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !26368 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !26461, !DIExpression(), !26380)
    #dbg_value(ptr poison, !26496, !DIExpression(), !26384)
    #dbg_value(ptr poison, !26484, !DIExpression(), !26385)
    #dbg_value(ptr poison, !26489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26502)
    #dbg_value(ptr poison, !26488, !DIExpression(), !26503)
    #dbg_value(ptr poison, !26494, !DIExpression(), !26504)
    #dbg_value(ptr poison, !26505, !DIExpression(), !26508)
    #dbg_value(ptr %0, !26457, !DIExpression(), !26509)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !26536 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !26536
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !26536
    #dbg_value(i1 %i.c, !26458, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !26510)
    #dbg_value(i1 %i.d, !26458, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !26510)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26537

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !26538

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !26494, !DIExpression(), !26504)
    #dbg_value(ptr undef, !26488, !DIExpression(), !26503)
    #dbg_value(ptr undef, !26489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26502)
    #dbg_value(ptr undef, !26461, !DIExpression(), !26380)
    #dbg_value(ptr undef, !26484, !DIExpression(), !26385)
    #dbg_value(ptr poison, !26511, !DIExpression(), !26389)
    #dbg_declare(ptr poison, !26515, !DIExpression(), !26390)
    #dbg_declare(ptr poison, !26514, !DIExpression(), !26390)
    #dbg_value(ptr poison, !26519, !DIExpression(), !26393)
    #dbg_declare(ptr poison, !26522, !DIExpression(), !26394)
    #dbg_value(ptr poison, !26526, !DIExpression(DW_OP_deref, DW_OP_deref), !26397)
    #dbg_value(ptr poison, !26531, !DIExpression(), !26400)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !26539
    #dbg_value(ptr %i.e, !26533, !DIExpression(), !26403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !26540, !noalias !26535
  store i32 2, ptr %i.a, align 8, !dbg !26540, !noalias !26535
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %.thread unwind label %bb.c, !dbg !26541

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !26542
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !26542
    #dbg_value(ptr undef, !26496, !DIExpression(), !26384)
    #dbg_value(ptr %i.g, !26499, !DIExpression(), !26384)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !26543 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !26544
  unreachable, !dbg !26544

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !26545, !noalias !26535
    #dbg_value(ptr undef, !26489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26502)
    #dbg_value(ptr undef, !26489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26502)
    #dbg_value(ptr poison, !9821, !DIExpression(), !26407)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26546

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !26543 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !26543 ; 6 uses
    #dbg_value(ptr %i.j, !26489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26502)
    #dbg_value(ptr %i.k, !26489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26502)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !26407)
  %i.l = icmp eq ptr %i.j, null, !dbg !26546
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !26546

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !26409)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !26547, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !26547
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !26547

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !26547

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !26411)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26412)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26412)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26414)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26416)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26418)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26420)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26414)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26416)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26418)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26420)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26548
  %i.o = load i64, ptr %i.n, align 8, !dbg !26548, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26421)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26421)
  %i.p = icmp eq i64 %i.o, 0, !dbg !26549
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !26549

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26548
  %i.r = load i64, ptr %i.q, align 8, !dbg !26550, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26421)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26414)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26416)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26418)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26420)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26412)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26423)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26425)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !26423)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !26425)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !26427)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !26429)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26423)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26425)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26427)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26429)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26423)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26425)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26427)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26429)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !26551
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !26552

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !26431)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26432)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26432)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26434)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26436)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26438)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26440)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26434)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26436)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26438)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26440)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !26553
  %i.u = load i64, ptr %i.t, align 8, !dbg !26553, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26441)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26441)
  %i.v = icmp eq i64 %i.u, 0, !dbg !26554
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !26554

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26553
  %i.x = load i64, ptr %i.w, align 8, !dbg !26555, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26441)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26434)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26436)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26438)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26440)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26432)
    #dbg_value(ptr poison, !4483, !DIExpression(), !26443)
    #dbg_value(ptr poison, !4490, !DIExpression(), !26445)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !26443)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !26445)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !26447)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !26449)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26443)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26445)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26447)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26449)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26443)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26445)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26447)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26449)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !26556
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !26557

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !26547

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10407, !DIExpression(), !26451)
    #dbg_value(ptr %0, !10409, !DIExpression(), !26453)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !26558
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26559

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10412, !DIExpression(DW_OP_deref), !26455)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !26560
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !26561
end_hunk_8
begin_hunk_9_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !27320, !DIExpression(DW_OP_deref), !27323)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27363
  br label %bb.p, !dbg !27364

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !27365
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27366 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !27402, !DIExpression(), !27404)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !27409
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !27410

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10407, !DIExpression(), !27368)
    #dbg_value(ptr %0, !10409, !DIExpression(), !27370)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !27411
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27412

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10412, !DIExpression(DW_OP_deref), !27372)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27413
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27414

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !27405, !DIExpression(), !27408)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27415 ; 2 uses
    #dbg_value(ptr poison, !10431, !DIExpression(), !27378)
    #dbg_value(ptr %i.e, !10465, !DIExpression(), !27379)
    #dbg_value(ptr %i.e, !10468, !DIExpression(), !27381)
    #dbg_value(ptr %i.e, !10463, !DIExpression(), !27382)
    #dbg_value(ptr %i.e, !10459, !DIExpression(), !27383)
    #dbg_value(ptr %i.e, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27384)
    #dbg_value(ptr undef, !10471, !DIExpression(), !27386)
    #dbg_value(ptr %i.e, !10474, !DIExpression(), !27387)
    #dbg_value(ptr %i.e, !10476, !DIExpression(), !27389)
    #dbg_declare(ptr poison, !10480, !DIExpression(), !27390)
    #dbg_declare(ptr poison, !10479, !DIExpression(), !27390)
    #dbg_value(ptr %i.e, !10484, !DIExpression(), !27392)
    #dbg_declare(ptr poison, !10487, !DIExpression(), !27393)
    #dbg_value(ptr poison, !10491, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !27395)
    #dbg_value(ptr %i.e, !10496, !DIExpression(), !27397)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27416
  store i32 2, ptr %i.a, align 8, !dbg !27416
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !27417

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !27418
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !27418
    #dbg_value(ptr undef, !10431, !DIExpression(), !27378)
    #dbg_value(ptr %i.g, !10454, !DIExpression(), !27378)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !27419 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !27420
  unreachable, !dbg !27420

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27421
    #dbg_value(ptr %i.e, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27384)
    #dbg_value(ptr undef, !10460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27384)
    #dbg_value(ptr poison, !10466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27398)
    #dbg_value(ptr poison, !10498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27400)
    #dbg_value(ptr poison, !10466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27398)
    #dbg_value(ptr poison, !10498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27400)
    #dbg_value(i64 poison, !10499, !DIExpression(), !27400)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27422

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !27419
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !27419 ; 2 uses
    #dbg_value(ptr %i.j, !10460, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27384)
    #dbg_value(ptr %i.k, !10460, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27384)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27398)
    #dbg_value(ptr %i.j, !10498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27400)
    #dbg_value(ptr %i.k, !10466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27398)
    #dbg_value(ptr %i.k, !10498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27400)
    #dbg_value(i64 poison, !10499, !DIExpression(), !27400)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27423

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !27424
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !27424
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !27425
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !27425, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27381)
    #dbg_value(ptr %.sroa.6.0.i, !10469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27381)
    #dbg_value(ptr %.sroa.8.0.i, !10469, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27381)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27426
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !27426
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !27426
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !27426
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !27426
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !27426
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !27426
  store i32 1, ptr %i.b, align 8, !dbg !27426
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.b), !dbg !27427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !27428
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !27429
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27429

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !27430
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2208 {
bb.a:
    #dbg_value(ptr %0, !10507, !DIExpression(), !27431)
    #dbg_value(ptr %0, !10509, !DIExpression(), !27433)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !27436
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !27437

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10512, !DIExpression(), !27435)
    #dbg_value(ptr undef, !10512, !DIExpression(DW_OP_deref), !27435)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27438
  br label %bb.c, !dbg !27439

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !27440
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27441 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !27516, !DIExpression(), !27520)
    #dbg_value(ptr %1, !27517, !DIExpression(), !27520)
    #dbg_value(ptr %2, !27518, !DIExpression(), !27520)
    #dbg_declare(ptr poison, !27521, !DIExpression(), !27532)
    #dbg_value(ptr poison, !27538, !DIExpression(), !27541)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440, !dbg !27568
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !27569
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !27569

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !27570
    #dbg_value(ptr %0, !27536, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !27542)
    #dbg_value(ptr %0, !27528, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !27543)
    #dbg_value(ptr %0, !27545, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !27552)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !27571 ; 2 uses
    #dbg_declare(ptr poison, !27553, !DIExpression(), !27450)
    #dbg_value(ptr %i.d, !27556, !DIExpression(), !27451)
    #dbg_value(ptr %i.d, !27559, !DIExpression(), !27454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27572, !noalias !27564
    #dbg_value(i32 2, !27562, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !27454)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1392) %i.a, ptr noundef nonnull align 8 dereferenceable(1392) %i.d, i64 1392, i1 false), !dbg !27573, !noalias !27564
  store i32 2, ptr %i.d, align 8, !dbg !27574, !noalias !27564
  %i.e = load i32, ptr %i.a, align 8, !dbg !27572, !range !8851, !noalias !27564, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !27575
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !27575, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !27576, !noalias !27564

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !27577, !range !8851, !noalias !27564, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !27577
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !27577

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !27520

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !27577, !noalias !27564

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !27578, !noalias !27564
  unreachable, !dbg !27578

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !27579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !27579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27577, !noalias !27564
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27565), !dbg !27580
    #dbg_value(ptr %1, !9775, !DIExpression(), !27460)
  %i.l = load i64, ptr %1, align 8, !dbg !27581, !range !2773, !alias.scope !27565, !noundef !2579
  %3 = icmp eq i64 %i.l, 0, !dbg !27581
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27581

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27581 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27566), !dbg !27581
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !27464)
  %i.n = load i64, ptr %i.m, align 8, !dbg !27582, !alias.scope !27567, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !27582
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !27582

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !27582
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !27582, !alias.scope !27567, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !27582
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !27582, !alias.scope !27567 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !27466)
    #dbg_value(ptr poison, !8867, !DIExpression(), !27468)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !27583
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !27583

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !27470)
    #dbg_value(ptr poison, !8881, !DIExpression(), !27472)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !27584, !invariant.load !2579, !noalias !27567 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !27584
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !27584

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !27584, !noalias !27567

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !27474)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27475)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27475)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27477)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27479)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27481)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27483)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27477)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27479)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27481)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27483)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !27585
  %i.u = load i64, ptr %i.t, align 8, !dbg !27585, !range !4479, !invariant.load !2579, !noalias !27567 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27484)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27484)
  %i.v = icmp eq i64 %i.u, 0, !dbg !27586
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !27586

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !27585
  %i.x = load i64, ptr %i.w, align 8, !dbg !27587, !range !4480, !invariant.load !2579, !noalias !27567
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27484)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27477)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27479)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27481)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27483)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27475)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27486)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27488)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !27486)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !27488)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !27490)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !27492)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27486)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27488)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27490)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27492)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27486)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27488)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27490)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27492)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !27588, !noalias !27567
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27589

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !27494)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27495)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27495)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27497)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27499)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27501)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27503)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27497)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27499)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27501)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27503)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !27590
  %i.aa = load i64, ptr %i.z, align 8, !dbg !27590, !range !4479, !invariant.load !2579, !noalias !27567 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27504)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27504)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !27591
  br i1 %i.ab, label %.body, label %bb.o, !dbg !27591

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !27590
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !27592, !range !4480, !invariant.load !2579, !noalias !27567
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27504)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27497)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27499)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27501)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27503)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27495)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27506)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27508)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !27506)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !27508)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !27510)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !27512)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27506)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27508)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27510)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27512)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27506)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27508)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27510)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27512)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !27593, !noalias !27567
  br label %.body, !dbg !27594

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !27595

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !27580
  br label %common.resume, !dbg !27596

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !27580
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !27580
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !27580
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !27597
  br label %bb.p, !dbg !27598
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !27600 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !27693, !DIExpression(), !27612)
    #dbg_value(ptr poison, !27728, !DIExpression(), !27616)
    #dbg_value(ptr poison, !27716, !DIExpression(), !27617)
    #dbg_value(ptr poison, !27721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27734)
    #dbg_value(ptr poison, !27720, !DIExpression(), !27735)
    #dbg_value(ptr poison, !27726, !DIExpression(), !27736)
    #dbg_value(ptr poison, !27737, !DIExpression(), !27740)
    #dbg_value(ptr %0, !27689, !DIExpression(), !27741)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !27768 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !27768
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !27768
    #dbg_value(i1 %i.c, !27690, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !27742)
    #dbg_value(i1 %i.d, !27690, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !27742)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27769

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !27770

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !27726, !DIExpression(), !27736)
    #dbg_value(ptr undef, !27720, !DIExpression(), !27735)
    #dbg_value(ptr undef, !27721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27734)
    #dbg_value(ptr undef, !27693, !DIExpression(), !27612)
    #dbg_value(ptr undef, !27716, !DIExpression(), !27617)
    #dbg_value(ptr poison, !27743, !DIExpression(), !27621)
    #dbg_declare(ptr poison, !27747, !DIExpression(), !27622)
    #dbg_declare(ptr poison, !27746, !DIExpression(), !27622)
    #dbg_value(ptr poison, !27751, !DIExpression(), !27625)
    #dbg_declare(ptr poison, !27754, !DIExpression(), !27626)
    #dbg_value(ptr poison, !27758, !DIExpression(DW_OP_deref, DW_OP_deref), !27629)
    #dbg_value(ptr poison, !27763, !DIExpression(), !27632)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !27771
    #dbg_value(ptr %i.e, !27765, !DIExpression(), !27635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27772, !noalias !27767
  store i32 2, ptr %i.a, align 8, !dbg !27772, !noalias !27767
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.a)
          to label %.thread unwind label %bb.c, !dbg !27773

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !27774
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !27774
    #dbg_value(ptr undef, !27728, !DIExpression(), !27616)
    #dbg_value(ptr %i.g, !27731, !DIExpression(), !27616)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !27775 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !27776
  unreachable, !dbg !27776

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27777, !noalias !27767
    #dbg_value(ptr undef, !27721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27734)
    #dbg_value(ptr undef, !27721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27734)
    #dbg_value(ptr poison, !9821, !DIExpression(), !27639)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27778

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !27775 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !27775 ; 6 uses
    #dbg_value(ptr %i.j, !27721, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27734)
    #dbg_value(ptr %i.k, !27721, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27734)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !27639)
  %i.l = icmp eq ptr %i.j, null, !dbg !27778
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !27778

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !27641)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !27779, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !27779
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !27779

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !27779

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !27643)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27644)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27644)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27646)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27648)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27650)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27652)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27646)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27648)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27650)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27652)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !27780
  %i.o = load i64, ptr %i.n, align 8, !dbg !27780, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27653)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27653)
  %i.p = icmp eq i64 %i.o, 0, !dbg !27781
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !27781

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27780
  %i.r = load i64, ptr %i.q, align 8, !dbg !27782, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27653)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27646)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27648)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27650)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27652)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27644)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27655)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27657)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !27655)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !27657)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !27659)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !27661)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27655)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27657)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27659)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27661)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27655)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27657)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27659)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27661)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !27783
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !27784

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !27663)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27664)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27664)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27666)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27668)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27670)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27672)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27666)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27668)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27670)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27672)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !27785
  %i.u = load i64, ptr %i.t, align 8, !dbg !27785, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27673)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27673)
  %i.v = icmp eq i64 %i.u, 0, !dbg !27786
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !27786

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27785
  %i.x = load i64, ptr %i.w, align 8, !dbg !27787, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27673)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27666)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27668)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27670)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27672)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27664)
    #dbg_value(ptr poison, !4483, !DIExpression(), !27675)
    #dbg_value(ptr poison, !4490, !DIExpression(), !27677)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !27675)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !27677)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !27679)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !27681)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27675)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27677)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27679)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27681)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27675)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27677)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27679)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27681)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !27788
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !27789

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !27779

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10507, !DIExpression(), !27683)
    #dbg_value(ptr %0, !10509, !DIExpression(), !27685)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !27790
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27791

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10512, !DIExpression(DW_OP_deref), !27687)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !27792
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !27793
end_hunk_9
begin_hunk_10_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !28552, !DIExpression(DW_OP_deref), !28555)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28595
  br label %bb.p, !dbg !28596

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !28597
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28598 {
bb.a:
  %i.a = alloca [1392 x i8], align 8              ; 4 uses
  %i.b = alloca [1392 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !28634, !DIExpression(), !28636)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !28641
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !28642

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10507, !DIExpression(), !28600)
    #dbg_value(ptr %0, !10509, !DIExpression(), !28602)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !28643
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28644

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10512, !DIExpression(DW_OP_deref), !28604)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28645
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28646

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !28637, !DIExpression(), !28640)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !28647 ; 2 uses
    #dbg_value(ptr poison, !10531, !DIExpression(), !28610)
    #dbg_value(ptr %i.e, !10565, !DIExpression(), !28611)
    #dbg_value(ptr %i.e, !10568, !DIExpression(), !28613)
    #dbg_value(ptr %i.e, !10563, !DIExpression(), !28614)
    #dbg_value(ptr %i.e, !10559, !DIExpression(), !28615)
    #dbg_value(ptr %i.e, !10560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28616)
    #dbg_value(ptr undef, !10571, !DIExpression(), !28618)
    #dbg_value(ptr %i.e, !10574, !DIExpression(), !28619)
    #dbg_value(ptr %i.e, !10576, !DIExpression(), !28621)
    #dbg_declare(ptr poison, !10580, !DIExpression(), !28622)
    #dbg_declare(ptr poison, !10579, !DIExpression(), !28622)
    #dbg_value(ptr %i.e, !10584, !DIExpression(), !28624)
    #dbg_declare(ptr poison, !10587, !DIExpression(), !28625)
    #dbg_value(ptr poison, !10591, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !28627)
    #dbg_value(ptr %i.e, !10596, !DIExpression(), !28629)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28648
  store i32 2, ptr %i.a, align 8, !dbg !28648
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !28649

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !28650
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !28650
    #dbg_value(ptr undef, !10531, !DIExpression(), !28610)
    #dbg_value(ptr %i.g, !10554, !DIExpression(), !28610)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !28651 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !28652
  unreachable, !dbg !28652

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28653
    #dbg_value(ptr %i.e, !10560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28616)
    #dbg_value(ptr undef, !10560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28616)
    #dbg_value(ptr poison, !10566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28630)
    #dbg_value(ptr poison, !10598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28632)
    #dbg_value(ptr poison, !10566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28630)
    #dbg_value(ptr poison, !10598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28632)
    #dbg_value(i64 poison, !10599, !DIExpression(), !28632)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28654

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !28651
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !28651 ; 2 uses
    #dbg_value(ptr %i.j, !10560, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28616)
    #dbg_value(ptr %i.k, !10560, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28616)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10566, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28630)
    #dbg_value(ptr %i.j, !10598, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28632)
    #dbg_value(ptr %i.k, !10566, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28630)
    #dbg_value(ptr %i.k, !10598, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28632)
    #dbg_value(i64 poison, !10599, !DIExpression(), !28632)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28655

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !28656
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !28656
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !28657
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !28657, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28613)
    #dbg_value(ptr %.sroa.6.0.i, !10569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28613)
    #dbg_value(ptr %.sroa.8.0.i, !10569, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !28613)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !28658
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !28658
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !28658
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !28658
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !28658
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !28658
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !28658
  store i32 1, ptr %i.b, align 8, !dbg !28658
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1392) %i.b), !dbg !28659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !28660
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !28661
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !28661

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6client9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !28662
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2233 {
bb.a:
    #dbg_value(ptr %0, !10607, !DIExpression(), !28663)
    #dbg_value(ptr %0, !10609, !DIExpression(), !28665)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !28668
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !28669

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10612, !DIExpression(), !28667)
    #dbg_value(ptr undef, !10612, !DIExpression(DW_OP_deref), !28667)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !28670
  br label %bb.c, !dbg !28671

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !28672
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28673 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !28748, !DIExpression(), !28752)
    #dbg_value(ptr %1, !28749, !DIExpression(), !28752)
    #dbg_value(ptr %2, !28750, !DIExpression(), !28752)
    #dbg_declare(ptr poison, !28753, !DIExpression(), !28764)
    #dbg_value(ptr poison, !28770, !DIExpression(), !28773)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1240, !dbg !28800
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !28801
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !28801

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !28802
    #dbg_value(ptr %0, !28768, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !28774)
    #dbg_value(ptr %0, !28760, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !28775)
    #dbg_value(ptr %0, !28777, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !28784)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !28803 ; 2 uses
    #dbg_declare(ptr poison, !28785, !DIExpression(), !28682)
    #dbg_value(ptr %i.d, !28788, !DIExpression(), !28683)
    #dbg_value(ptr %i.d, !28791, !DIExpression(), !28686)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !28804, !noalias !28796
    #dbg_value(i32 2, !28794, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !28686)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1192) %i.a, ptr noundef nonnull align 8 dereferenceable(1192) %i.d, i64 1192, i1 false), !dbg !28805, !noalias !28796
  store i32 2, ptr %i.d, align 8, !dbg !28806, !noalias !28796
  %i.e = load i32, ptr %i.a, align 8, !dbg !28804, !range !8851, !noalias !28796, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !28807
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !28807, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !28808, !noalias !28796

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !28809, !range !8851, !noalias !28796, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !28809
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !28809

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !28752

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server3run00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !28809, !noalias !28796

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !28810, !noalias !28796
  unreachable, !dbg !28810

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !28811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !28811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !28809, !noalias !28796
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28797), !dbg !28812
    #dbg_value(ptr %1, !9775, !DIExpression(), !28692)
  %i.l = load i64, ptr %1, align 8, !dbg !28813, !range !2773, !alias.scope !28797, !noundef !2579
  %3 = icmp eq i64 %i.l, 0, !dbg !28813
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28813

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28813 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28798), !dbg !28813
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !28696)
  %i.n = load i64, ptr %i.m, align 8, !dbg !28814, !alias.scope !28799, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !28814
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !28814

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !28814
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !28814, !alias.scope !28799, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !28814
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !28814, !alias.scope !28799 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !28698)
    #dbg_value(ptr poison, !8867, !DIExpression(), !28700)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !28815
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !28815

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !28702)
    #dbg_value(ptr poison, !8881, !DIExpression(), !28704)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !28816, !invariant.load !2579, !noalias !28799 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !28816
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !28816

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !28816, !noalias !28799

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !28706)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28707)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28707)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28709)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28711)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28713)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28715)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28709)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28711)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28713)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28715)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !28817
  %i.u = load i64, ptr %i.t, align 8, !dbg !28817, !range !4479, !invariant.load !2579, !noalias !28799 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28716)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28716)
  %i.v = icmp eq i64 %i.u, 0, !dbg !28818
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !28818

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !28817
  %i.x = load i64, ptr %i.w, align 8, !dbg !28819, !range !4480, !invariant.load !2579, !noalias !28799
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28716)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28709)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28711)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28713)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28715)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28707)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28718)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28720)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !28718)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !28720)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !28722)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !28724)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28718)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28720)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28722)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28724)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28718)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28720)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28722)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28724)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !28820, !noalias !28799
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !28821

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !28726)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28727)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28727)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28729)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28731)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28733)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28735)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28729)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28731)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28733)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28735)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !28822
  %i.aa = load i64, ptr %i.z, align 8, !dbg !28822, !range !4479, !invariant.load !2579, !noalias !28799 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28736)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28736)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !28823
  br i1 %i.ab, label %.body, label %bb.o, !dbg !28823

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !28822
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !28824, !range !4480, !invariant.load !2579, !noalias !28799
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28736)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28729)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28731)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28733)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28735)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28727)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28738)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28740)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !28738)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !28740)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !28742)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !28744)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28738)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28740)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28742)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28744)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28738)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28740)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28742)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28744)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !28825, !noalias !28799
  br label %.body, !dbg !28826

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !28827

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !28812
  br label %common.resume, !dbg !28828

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !28812
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !28812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !28812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !28829
  br label %bb.p, !dbg !28830
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !28832 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !28925, !DIExpression(), !28844)
    #dbg_value(ptr poison, !28960, !DIExpression(), !28848)
    #dbg_value(ptr poison, !28948, !DIExpression(), !28849)
    #dbg_value(ptr poison, !28953, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28966)
    #dbg_value(ptr poison, !28952, !DIExpression(), !28967)
    #dbg_value(ptr poison, !28958, !DIExpression(), !28968)
    #dbg_value(ptr poison, !28969, !DIExpression(), !28972)
    #dbg_value(ptr %0, !28921, !DIExpression(), !28973)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !29000 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !29000
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !29000
    #dbg_value(i1 %i.c, !28922, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !28974)
    #dbg_value(i1 %i.d, !28922, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !28974)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29001

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !29002

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !28958, !DIExpression(), !28968)
    #dbg_value(ptr undef, !28952, !DIExpression(), !28967)
    #dbg_value(ptr undef, !28953, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28966)
    #dbg_value(ptr undef, !28925, !DIExpression(), !28844)
    #dbg_value(ptr undef, !28948, !DIExpression(), !28849)
    #dbg_value(ptr poison, !28975, !DIExpression(), !28853)
    #dbg_declare(ptr poison, !28979, !DIExpression(), !28854)
    #dbg_declare(ptr poison, !28978, !DIExpression(), !28854)
    #dbg_value(ptr poison, !28983, !DIExpression(), !28857)
    #dbg_declare(ptr poison, !28986, !DIExpression(), !28858)
    #dbg_value(ptr poison, !28990, !DIExpression(DW_OP_deref, DW_OP_deref), !28861)
    #dbg_value(ptr poison, !28995, !DIExpression(), !28864)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29003
    #dbg_value(ptr %i.e, !28997, !DIExpression(), !28867)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29004, !noalias !28999
  store i32 2, ptr %i.a, align 8, !dbg !29004, !noalias !28999
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.a)
          to label %.thread unwind label %bb.c, !dbg !29005

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !29006
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !29006
    #dbg_value(ptr undef, !28960, !DIExpression(), !28848)
    #dbg_value(ptr %i.g, !28963, !DIExpression(), !28848)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !29007 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !29008
  unreachable, !dbg !29008

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29009, !noalias !28999
    #dbg_value(ptr undef, !28953, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28966)
    #dbg_value(ptr undef, !28953, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28966)
    #dbg_value(ptr poison, !9821, !DIExpression(), !28871)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29010

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !29007 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !29007 ; 6 uses
    #dbg_value(ptr %i.j, !28953, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28966)
    #dbg_value(ptr %i.k, !28953, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28966)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !28871)
  %i.l = icmp eq ptr %i.j, null, !dbg !29010
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !29010

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !28873)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !29011, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !29011
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !29011

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !29011

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !28875)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28876)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28876)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28878)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28880)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28882)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28884)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28878)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28880)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28882)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28884)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !29012
  %i.o = load i64, ptr %i.n, align 8, !dbg !29012, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28885)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28885)
  %i.p = icmp eq i64 %i.o, 0, !dbg !29013
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !29013

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !29012
  %i.r = load i64, ptr %i.q, align 8, !dbg !29014, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28885)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28878)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28880)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28882)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28884)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28876)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28887)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28889)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !28887)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !28889)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !28891)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !28893)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28887)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28889)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28891)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28893)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28887)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28889)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28891)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28893)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !29015
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29016

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !28895)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28896)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28896)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28898)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28900)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28902)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28904)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28898)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28900)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28902)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28904)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !29017
  %i.u = load i64, ptr %i.t, align 8, !dbg !29017, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28905)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28905)
  %i.v = icmp eq i64 %i.u, 0, !dbg !29018
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !29018

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !29017
  %i.x = load i64, ptr %i.w, align 8, !dbg !29019, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28905)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28898)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28900)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28902)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28904)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28896)
    #dbg_value(ptr poison, !4483, !DIExpression(), !28907)
    #dbg_value(ptr poison, !4490, !DIExpression(), !28909)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !28907)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !28909)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !28911)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !28913)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28907)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28909)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28911)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !28913)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28907)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28909)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28911)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !28913)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !29020
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !29021

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !29011

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10607, !DIExpression(), !28915)
    #dbg_value(ptr %0, !10609, !DIExpression(), !28917)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29022
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29023

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10612, !DIExpression(DW_OP_deref), !28919)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29024
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29025
end_hunk_10
begin_hunk_11_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !29784, !DIExpression(DW_OP_deref), !29787)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29827
  br label %bb.p, !dbg !29828

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !29829
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !29830 {
bb.a:
  %i.a = alloca [1192 x i8], align 8              ; 4 uses
  %i.b = alloca [1192 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !29866, !DIExpression(), !29868)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !29873
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !29874

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10607, !DIExpression(), !29832)
    #dbg_value(ptr %0, !10609, !DIExpression(), !29834)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29875
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29876

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10612, !DIExpression(DW_OP_deref), !29836)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29877
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29878

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !29869, !DIExpression(), !29872)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !29879 ; 2 uses
    #dbg_value(ptr poison, !10631, !DIExpression(), !29842)
    #dbg_value(ptr %i.e, !10665, !DIExpression(), !29843)
    #dbg_value(ptr %i.e, !10668, !DIExpression(), !29845)
    #dbg_value(ptr %i.e, !10663, !DIExpression(), !29846)
    #dbg_value(ptr %i.e, !10659, !DIExpression(), !29847)
    #dbg_value(ptr %i.e, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29848)
    #dbg_value(ptr undef, !10671, !DIExpression(), !29850)
    #dbg_value(ptr %i.e, !10674, !DIExpression(), !29851)
    #dbg_value(ptr %i.e, !10676, !DIExpression(), !29853)
    #dbg_declare(ptr poison, !10680, !DIExpression(), !29854)
    #dbg_declare(ptr poison, !10679, !DIExpression(), !29854)
    #dbg_value(ptr %i.e, !10684, !DIExpression(), !29856)
    #dbg_declare(ptr poison, !10687, !DIExpression(), !29857)
    #dbg_value(ptr poison, !10691, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !29859)
    #dbg_value(ptr %i.e, !10696, !DIExpression(), !29861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !29880
  store i32 2, ptr %i.a, align 8, !dbg !29880
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !29881

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !29882
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !29882
    #dbg_value(ptr undef, !10631, !DIExpression(), !29842)
    #dbg_value(ptr %i.g, !10654, !DIExpression(), !29842)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !29883 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !29884
  unreachable, !dbg !29884

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !29885
    #dbg_value(ptr %i.e, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29848)
    #dbg_value(ptr undef, !10660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29848)
    #dbg_value(ptr poison, !10666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29862)
    #dbg_value(ptr poison, !10698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29864)
    #dbg_value(ptr poison, !10666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29862)
    #dbg_value(ptr poison, !10698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29864)
    #dbg_value(i64 poison, !10699, !DIExpression(), !29864)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29886

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !29883
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !29883 ; 2 uses
    #dbg_value(ptr %i.j, !10660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29848)
    #dbg_value(ptr %i.k, !10660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29848)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29862)
    #dbg_value(ptr %i.j, !10698, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29864)
    #dbg_value(ptr %i.k, !10666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29862)
    #dbg_value(ptr %i.k, !10698, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29864)
    #dbg_value(i64 poison, !10699, !DIExpression(), !29864)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !29887

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !29888
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !29888
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !29889
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !29889, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29845)
    #dbg_value(ptr %.sroa.6.0.i, !10669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29845)
    #dbg_value(ptr %.sroa.8.0.i, !10669, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !29845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !29890
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !29890
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !29890
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !29890
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !29890
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !29890
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !29890
  store i32 1, ptr %i.b, align 8, !dbg !29890
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1192) %i.b), !dbg !29891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !29892
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !29893
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !29893

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server3run00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !29894
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2258 {
bb.a:
    #dbg_value(ptr %0, !10707, !DIExpression(), !29895)
    #dbg_value(ptr %0, !10709, !DIExpression(), !29897)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !29900
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !29901

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10712, !DIExpression(), !29899)
    #dbg_value(ptr undef, !10712, !DIExpression(DW_OP_deref), !29899)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !29902
  br label %bb.c, !dbg !29903

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !29904
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !29905 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !29980, !DIExpression(), !29984)
    #dbg_value(ptr %1, !29981, !DIExpression(), !29984)
    #dbg_value(ptr %2, !29982, !DIExpression(), !29984)
    #dbg_declare(ptr poison, !29985, !DIExpression(), !29996)
    #dbg_value(ptr poison, !30002, !DIExpression(), !30005)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1496, !dbg !30032
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !30033
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !30033

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !30034
    #dbg_value(ptr %0, !30000, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !30006)
    #dbg_value(ptr %0, !29992, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !30007)
    #dbg_value(ptr %0, !30009, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !30016)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !30035 ; 2 uses
    #dbg_declare(ptr poison, !30017, !DIExpression(), !29914)
    #dbg_value(ptr %i.d, !30020, !DIExpression(), !29915)
    #dbg_value(ptr %i.d, !30023, !DIExpression(), !29918)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30036, !noalias !30028
    #dbg_value(i32 2, !30026, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !29918)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1448) %i.a, ptr noundef nonnull align 8 dereferenceable(1448) %i.d, i64 1448, i1 false), !dbg !30037, !noalias !30028
  store i32 2, ptr %i.d, align 8, !dbg !30038, !noalias !30028
  %i.e = load i32, ptr %i.a, align 8, !dbg !30036, !range !8851, !noalias !30028, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !30039
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !30039, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !30040, !noalias !30028

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !30041, !range !8851, !noalias !30028, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !30041
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !30041

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !29984

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !30041, !noalias !30028

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !30042, !noalias !30028
  unreachable, !dbg !30042

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !30043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !30043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30041, !noalias !30028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30029), !dbg !30044
    #dbg_value(ptr %1, !9775, !DIExpression(), !29924)
  %i.l = load i64, ptr %1, align 8, !dbg !30045, !range !2773, !alias.scope !30029, !noundef !2579
  %3 = icmp eq i64 %i.l, 0, !dbg !30045
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30045

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30045 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30030), !dbg !30045
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !29928)
  %i.n = load i64, ptr %i.m, align 8, !dbg !30046, !alias.scope !30031, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !30046
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !30046

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !30046
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !30046, !alias.scope !30031, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !30046
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !30046, !alias.scope !30031 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !29930)
    #dbg_value(ptr poison, !8867, !DIExpression(), !29932)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !30047
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !30047

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !29934)
    #dbg_value(ptr poison, !8881, !DIExpression(), !29936)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !30048, !invariant.load !2579, !noalias !30031 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !30048
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !30048

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !30048, !noalias !30031

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !29938)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29939)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29939)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29941)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29943)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29945)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29947)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29941)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29943)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29945)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29947)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !30049
  %i.u = load i64, ptr %i.t, align 8, !dbg !30049, !range !4479, !invariant.load !2579, !noalias !30031 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29948)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29948)
  %i.v = icmp eq i64 %i.u, 0, !dbg !30050
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !30050

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !30049
  %i.x = load i64, ptr %i.w, align 8, !dbg !30051, !range !4480, !invariant.load !2579, !noalias !30031
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29948)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29941)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29943)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29945)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29947)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29939)
    #dbg_value(ptr poison, !4483, !DIExpression(), !29950)
    #dbg_value(ptr poison, !4490, !DIExpression(), !29952)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !29950)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !29952)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !29954)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !29956)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29950)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29952)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29954)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29956)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29950)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29952)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29954)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29956)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !30052, !noalias !30031
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30053

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !29958)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29959)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29959)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29961)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29963)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29965)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29967)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29961)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29963)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29965)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29967)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !30054
  %i.aa = load i64, ptr %i.z, align 8, !dbg !30054, !range !4479, !invariant.load !2579, !noalias !30031 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29968)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29968)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !30055
  br i1 %i.ab, label %.body, label %bb.o, !dbg !30055

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !30054
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !30056, !range !4480, !invariant.load !2579, !noalias !30031
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29968)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29961)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29963)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29965)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29967)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29959)
    #dbg_value(ptr poison, !4483, !DIExpression(), !29970)
    #dbg_value(ptr poison, !4490, !DIExpression(), !29972)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !29970)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !29972)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !29974)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !29976)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29970)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29972)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29974)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !29976)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29970)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29972)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29974)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !29976)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !30057, !noalias !30031
  br label %.body, !dbg !30058

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !30059

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !30044
  br label %common.resume, !dbg !30060

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !30044
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !30044
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !30044
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !30061
  br label %bb.p, !dbg !30062
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !30064 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !30157, !DIExpression(), !30076)
    #dbg_value(ptr poison, !30192, !DIExpression(), !30080)
    #dbg_value(ptr poison, !30180, !DIExpression(), !30081)
    #dbg_value(ptr poison, !30185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30198)
    #dbg_value(ptr poison, !30184, !DIExpression(), !30199)
    #dbg_value(ptr poison, !30190, !DIExpression(), !30200)
    #dbg_value(ptr poison, !30201, !DIExpression(), !30204)
    #dbg_value(ptr %0, !30153, !DIExpression(), !30205)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !30232 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !30232
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !30232
    #dbg_value(i1 %i.c, !30154, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !30206)
    #dbg_value(i1 %i.d, !30154, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !30206)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30233

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !30234

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !30190, !DIExpression(), !30200)
    #dbg_value(ptr undef, !30184, !DIExpression(), !30199)
    #dbg_value(ptr undef, !30185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30198)
    #dbg_value(ptr undef, !30157, !DIExpression(), !30076)
    #dbg_value(ptr undef, !30180, !DIExpression(), !30081)
    #dbg_value(ptr poison, !30207, !DIExpression(), !30085)
    #dbg_declare(ptr poison, !30211, !DIExpression(), !30086)
    #dbg_declare(ptr poison, !30210, !DIExpression(), !30086)
    #dbg_value(ptr poison, !30215, !DIExpression(), !30089)
    #dbg_declare(ptr poison, !30218, !DIExpression(), !30090)
    #dbg_value(ptr poison, !30222, !DIExpression(DW_OP_deref, DW_OP_deref), !30093)
    #dbg_value(ptr poison, !30227, !DIExpression(), !30096)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !30235
    #dbg_value(ptr %i.e, !30229, !DIExpression(), !30099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !30236, !noalias !30231
  store i32 2, ptr %i.a, align 8, !dbg !30236, !noalias !30231
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %.thread unwind label %bb.c, !dbg !30237

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !30238
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !30238
    #dbg_value(ptr undef, !30192, !DIExpression(), !30080)
    #dbg_value(ptr %i.g, !30195, !DIExpression(), !30080)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !30239 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !30240
  unreachable, !dbg !30240

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !30241, !noalias !30231
    #dbg_value(ptr undef, !30185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30198)
    #dbg_value(ptr undef, !30185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30198)
    #dbg_value(ptr poison, !9821, !DIExpression(), !30103)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30242

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !30239 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !30239 ; 6 uses
    #dbg_value(ptr %i.j, !30185, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30198)
    #dbg_value(ptr %i.k, !30185, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30198)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !30103)
  %i.l = icmp eq ptr %i.j, null, !dbg !30242
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !30242

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !30105)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !30243, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !30243
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !30243

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !30243

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !30107)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30108)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30108)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30110)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30112)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30114)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30116)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30110)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30112)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30114)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30116)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !30244
  %i.o = load i64, ptr %i.n, align 8, !dbg !30244, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30117)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30117)
  %i.p = icmp eq i64 %i.o, 0, !dbg !30245
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !30245

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !30244
  %i.r = load i64, ptr %i.q, align 8, !dbg !30246, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30117)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30110)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30112)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30114)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30116)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30108)
    #dbg_value(ptr poison, !4483, !DIExpression(), !30119)
    #dbg_value(ptr poison, !4490, !DIExpression(), !30121)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !30119)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !30121)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !30123)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !30125)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30119)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30121)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30123)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30125)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30119)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30121)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30123)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30125)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !30247
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !30248

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !30127)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30128)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30128)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30130)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30132)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30134)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30136)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30130)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30132)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30134)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30136)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !30249
  %i.u = load i64, ptr %i.t, align 8, !dbg !30249, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30137)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30137)
  %i.v = icmp eq i64 %i.u, 0, !dbg !30250
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !30250

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !30249
  %i.x = load i64, ptr %i.w, align 8, !dbg !30251, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30137)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30130)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30132)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30134)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30136)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30128)
    #dbg_value(ptr poison, !4483, !DIExpression(), !30139)
    #dbg_value(ptr poison, !4490, !DIExpression(), !30141)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !30139)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !30141)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !30143)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !30145)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30139)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30141)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30143)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !30145)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30139)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30141)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30143)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !30145)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !30252
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !30253

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !30243

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10707, !DIExpression(), !30147)
    #dbg_value(ptr %0, !10709, !DIExpression(), !30149)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !30254
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !30255

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10712, !DIExpression(DW_OP_deref), !30151)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !30256
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !30257
end_hunk_11
begin_hunk_12_@_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf:bb.a
bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr undef, !31016, !DIExpression(DW_OP_deref), !31019)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31059
  br label %bb.p, !dbg !31060

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, %bb.o
  ret void, !dbg !31061
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31062 {
bb.a:
  %i.a = alloca [1448 x i8], align 8              ; 4 uses
  %i.b = alloca [1448 x i8], align 8              ; 7 uses
    #dbg_value(ptr %0, !31098, !DIExpression(), !31100)
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0), !dbg !31105
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !31106

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10707, !DIExpression(), !31064)
    #dbg_value(ptr %0, !10709, !DIExpression(), !31066)
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !31107
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31108

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr undef, !10712, !DIExpression(DW_OP_deref), !31068)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31109
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31110

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !31101, !DIExpression(), !31104)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31111 ; 2 uses
    #dbg_value(ptr poison, !10731, !DIExpression(), !31074)
    #dbg_value(ptr %i.e, !10765, !DIExpression(), !31075)
    #dbg_value(ptr %i.e, !10768, !DIExpression(), !31077)
    #dbg_value(ptr %i.e, !10763, !DIExpression(), !31078)
    #dbg_value(ptr %i.e, !10759, !DIExpression(), !31079)
    #dbg_value(ptr %i.e, !10760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31080)
    #dbg_value(ptr undef, !10771, !DIExpression(), !31082)
    #dbg_value(ptr %i.e, !10774, !DIExpression(), !31083)
    #dbg_value(ptr %i.e, !10776, !DIExpression(), !31085)
    #dbg_declare(ptr poison, !10780, !DIExpression(), !31086)
    #dbg_declare(ptr poison, !10779, !DIExpression(), !31086)
    #dbg_value(ptr %i.e, !10784, !DIExpression(), !31088)
    #dbg_declare(ptr poison, !10787, !DIExpression(), !31089)
    #dbg_value(ptr poison, !10791, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !31091)
    #dbg_value(ptr %i.e, !10796, !DIExpression(), !31093)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31112
  store i32 2, ptr %i.a, align 8, !dbg !31112
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !31113

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !31114
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !31114
    #dbg_value(ptr undef, !10731, !DIExpression(), !31074)
    #dbg_value(ptr %i.g, !10754, !DIExpression(), !31074)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f, !dbg !31115 ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !31116
  unreachable, !dbg !31116

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31117
    #dbg_value(ptr %i.e, !10760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31080)
    #dbg_value(ptr undef, !10760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31080)
    #dbg_value(ptr poison, !10766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31094)
    #dbg_value(ptr poison, !10798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31096)
    #dbg_value(ptr poison, !10766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31094)
    #dbg_value(ptr poison, !10798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31096)
    #dbg_value(i64 poison, !10799, !DIExpression(), !31096)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31118

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !31115
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !31115 ; 2 uses
    #dbg_value(ptr %i.j, !10760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31080)
    #dbg_value(ptr %i.k, !10760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31080)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr %i.j, !10766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31094)
    #dbg_value(ptr %i.j, !10798, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31096)
    #dbg_value(ptr %i.k, !10766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31094)
    #dbg_value(ptr %i.k, !10798, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31096)
    #dbg_value(i64 poison, !10799, !DIExpression(), !31096)
  br label %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31119

_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ], !dbg !31120
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ], !dbg !31120
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !31121
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !dbg !31121, !range !9898, !noundef !2579
    #dbg_value(i64 %.sroa.01.0.i, !10769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31077)
    #dbg_value(ptr %.sroa.6.0.i, !10769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31077)
    #dbg_value(ptr %.sroa.8.0.i, !10769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !31077)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !31122
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !31122
  store i64 %.sroa.01.0.i, ptr %i.l, align 8, !dbg !31122
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !31122
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !31122
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !31122
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8, !dbg !31122
  store i32 1, ptr %i.b, align 8, !dbg !31122
  call void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1448) %i.b), !dbg !31123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !31124
  call fastcc void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0), !dbg !31125
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31125

_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness11cancel_taskNCNCNvNtCs7OITKvp9Irj_4perf6server8drive_bi00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !31126
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 !dbg !2283 {
bb.a:
    #dbg_value(ptr %0, !10807, !DIExpression(), !31127)
    #dbg_value(ptr %0, !10809, !DIExpression(), !31129)
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !31132
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !31133

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !10812, !DIExpression(), !31131)
    #dbg_value(ptr undef, !10812, !DIExpression(DW_OP_deref), !31131)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31134
  br label %bb.c, !dbg !31135

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void, !dbg !31136
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31137 {
bb.a:
  %i.a = alloca [1408 x i8], align 8              ; 6 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
    #dbg_value(ptr %0, !31212, !DIExpression(), !31216)
    #dbg_value(ptr %1, !31213, !DIExpression(), !31216)
    #dbg_value(ptr %2, !31214, !DIExpression(), !31216)
    #dbg_declare(ptr poison, !31217, !DIExpression(), !31228)
    #dbg_value(ptr poison, !31234, !DIExpression(), !31237)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1456, !dbg !31264
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCsar2VadbF9t7_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !dbg !31265
  br i1 %i.c, label %bb.b, label %bb.p, !dbg !31265

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5), !dbg !31266
    #dbg_value(ptr %0, !31232, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !31238)
    #dbg_value(ptr %0, !31224, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !31239)
    #dbg_value(ptr %0, !31241, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !31248)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !31267 ; 2 uses
    #dbg_declare(ptr poison, !31249, !DIExpression(), !31146)
    #dbg_value(ptr %i.d, !31252, !DIExpression(), !31147)
    #dbg_value(ptr %i.d, !31255, !DIExpression(), !31150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31268, !noalias !31260
    #dbg_value(i32 2, !31258, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !31150)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1408) %i.a, ptr noundef nonnull align 8 dereferenceable(1408) %i.d, i64 1408, i1 false), !dbg !31269, !noalias !31260
  store i32 2, ptr %i.d, align 8, !dbg !31270, !noalias !31260
  %i.e = load i32, ptr %i.a, align 8, !dbg !31268, !range !8851, !noalias !31260, !noundef !2579
  %i.f = icmp eq i32 %i.e, 1, !dbg !31271
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit, label %bb.c, !dbg !31271, !prof !9774

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15
          to label %bb.e unwind label %bb.d, !dbg !31272, !noalias !31260

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !dbg !31273, !range !8851, !noalias !31260, !noundef !2579
  %i.i = icmp eq i32 %i.h, 1, !dbg !31273
  br i1 %i.i, label %common.resume, label %bb.f, !dbg !31273

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.y, %.body ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op, !dbg !31216

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core5StageNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00EECskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.a) #13
          to label %common.resume unwind label %bb.g, !dbg !31273, !noalias !31260

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #11, !dbg !31274, !noalias !31260
  unreachable, !dbg !31274

_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !31275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !31275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31273, !noalias !31260
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31261), !dbg !31276
    #dbg_value(ptr %1, !9775, !DIExpression(), !31156)
  %i.l = load i64, ptr %1, align 8, !dbg !31277, !range !2773, !alias.scope !31261, !noundef !2579
  %3 = icmp eq i64 %i.l, 0, !dbg !31277
  br i1 %3, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31277

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31277 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31262), !dbg !31277
    #dbg_value(ptr %i.m, !8853, !DIExpression(), !31160)
  %i.n = load i64, ptr %i.m, align 8, !dbg !31278, !alias.scope !31263, !noundef !2579
  %i.o = icmp eq i64 %i.n, 0, !dbg !31278
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !31278

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !31278
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !31278, !alias.scope !31263, !noundef !2579 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !31278
  %.val1.i.i = load ptr, ptr %i.q, align 8, !dbg !31278, !alias.scope !31263 ; 6 uses
    #dbg_value(ptr poison, !8860, !DIExpression(), !31162)
    #dbg_value(ptr poison, !8867, !DIExpression(), !31164)
  %i.r = icmp eq ptr %.val.i.i, null, !dbg !31279
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.j, !dbg !31279

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr poison, !8874, !DIExpression(), !31166)
    #dbg_value(ptr poison, !8881, !DIExpression(), !31168)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i, align 8, !dbg !31280, !invariant.load !2579, !noalias !31263 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null, !dbg !31280
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k, !dbg !31280

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !dbg !31280, !noalias !31263

bb.l:                                             ; preds = %bb.k, %bb.j
    #dbg_value(ptr poison, !8885, !DIExpression(), !31170)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31171)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31171)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31173)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31175)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31177)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31179)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31173)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31175)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31177)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31179)
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !31281
  %i.u = load i64, ptr %i.t, align 8, !dbg !31281, !range !4479, !invariant.load !2579, !noalias !31263 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31180)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31180)
  %i.v = icmp eq i64 %i.u, 0, !dbg !31282
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, label %bb.m, !dbg !31282

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !31281
  %i.x = load i64, ptr %i.w, align 8, !dbg !31283, !range !4480, !invariant.load !2579, !noalias !31263
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31180)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31173)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31175)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31177)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31179)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31171)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31182)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31184)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !31182)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !31184)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !31186)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !31188)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31182)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31184)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31186)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31188)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31182)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31184)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31186)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31188)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !31284, !noalias !31263
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31285

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !31190)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31191)
    #dbg_value(ptr %.val1.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31191)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31193)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31195)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31197)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31199)
    #dbg_value(ptr %.val1.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31193)
    #dbg_value(ptr %.val1.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31195)
    #dbg_value(ptr %.val1.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31197)
    #dbg_value(ptr %.val1.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31199)
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8, !dbg !31286
  %i.aa = load i64, ptr %i.z, align 8, !dbg !31286, !range !4479, !invariant.load !2579, !noalias !31263 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31200)
    #dbg_value(i64 %i.aa, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31200)
  %i.ab = icmp eq i64 %i.aa, 0, !dbg !31287
  br i1 %i.ab, label %.body, label %bb.o, !dbg !31287

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16, !dbg !31286
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !31288, !range !4480, !invariant.load !2579, !noalias !31263
    #dbg_value(i64 %i.ad, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31200)
    #dbg_value(ptr %.val.i.i, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31193)
    #dbg_value(ptr %.val.i.i, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31195)
    #dbg_value(ptr %.val.i.i, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31197)
    #dbg_value(ptr %.val.i.i, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31199)
    #dbg_value(ptr %.val.i.i, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31191)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31202)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31204)
    #dbg_value(ptr %.val.i.i, !4487, !DIExpression(), !31202)
    #dbg_value(ptr %.val.i.i, !4493, !DIExpression(), !31204)
    #dbg_value(ptr %.val.i.i, !4496, !DIExpression(), !31206)
    #dbg_value(ptr %.val.i.i, !4502, !DIExpression(), !31208)
    #dbg_value(i64 %i.ad, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31202)
    #dbg_value(i64 %i.ad, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31204)
    #dbg_value(i64 %i.ad, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31206)
    #dbg_value(i64 %i.ad, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31208)
    #dbg_value(i64 %i.aa, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31202)
    #dbg_value(i64 %i.aa, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31204)
    #dbg_value(i64 %i.aa, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31206)
    #dbg_value(i64 %i.aa, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31208)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #14, !dbg !31289, !noalias !31263
  br label %.body, !dbg !31290

bb.p:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit
  ret void, !dbg !31291

.body:                                            ; preds = %bb.n, %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !31276
  br label %common.resume, !dbg !31292

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCsar2VadbF9t7_5tokio7runtime4task5error9JoinErrorEEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB7_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cskigd7sy4fqX_10quinn_perf.exit
  store i64 0, ptr %1, align 8, !dbg !31276
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !31276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !dbg !31276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5), !dbg !31293
  br label %bb.p, !dbg !31294
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !31296 {
bb.a:
  %i.a = alloca [1408 x i8], align 8              ; 4 uses
    #dbg_value(ptr poison, !31389, !DIExpression(), !31308)
    #dbg_value(ptr poison, !31424, !DIExpression(), !31312)
    #dbg_value(ptr poison, !31412, !DIExpression(), !31313)
    #dbg_value(ptr poison, !31417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31430)
    #dbg_value(ptr poison, !31416, !DIExpression(), !31431)
    #dbg_value(ptr poison, !31422, !DIExpression(), !31432)
    #dbg_value(ptr poison, !31433, !DIExpression(), !31436)
    #dbg_value(ptr %0, !31385, !DIExpression(), !31437)
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0), !dbg !31464 ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0, !dbg !31464
  %i.d = extractvalue { i1, i1 } %i.b, 1, !dbg !31464
    #dbg_value(i1 %i.c, !31386, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !31438)
    #dbg_value(i1 %i.d, !31386, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !31438)
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31465

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l, !dbg !31466

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr undef, !31422, !DIExpression(), !31432)
    #dbg_value(ptr undef, !31416, !DIExpression(), !31431)
    #dbg_value(ptr undef, !31417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31430)
    #dbg_value(ptr undef, !31389, !DIExpression(), !31308)
    #dbg_value(ptr undef, !31412, !DIExpression(), !31313)
    #dbg_value(ptr poison, !31439, !DIExpression(), !31317)
    #dbg_declare(ptr poison, !31443, !DIExpression(), !31318)
    #dbg_declare(ptr poison, !31442, !DIExpression(), !31318)
    #dbg_value(ptr poison, !31447, !DIExpression(), !31321)
    #dbg_declare(ptr poison, !31450, !DIExpression(), !31322)
    #dbg_value(ptr poison, !31454, !DIExpression(DW_OP_deref, DW_OP_deref), !31325)
    #dbg_value(ptr poison, !31459, !DIExpression(), !31328)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !31467
    #dbg_value(ptr %i.e, !31461, !DIExpression(), !31331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !31468, !noalias !31463
  store i32 2, ptr %i.a, align 8, !dbg !31468, !noalias !31463
  invoke void @_RNvMs4_NtNtNtCsar2VadbF9t7_5tokio7runtime4task4coreINtB5_4CoreNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCskigd7sy4fqX_10quinn_perf(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1408) %i.a)
          to label %.thread unwind label %bb.c, !dbg !31469

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null, !dbg !31470
  %i.g = extractvalue { ptr, i32 } %i.f, 0, !dbg !31470
    #dbg_value(ptr undef, !31424, !DIExpression(), !31312)
    #dbg_value(ptr %i.g, !31427, !DIExpression(), !31312)
  %i.h = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d, !dbg !31471 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #11, !dbg !31472
  unreachable, !dbg !31472

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !31473, !noalias !31463
    #dbg_value(ptr undef, !31417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31430)
    #dbg_value(ptr undef, !31417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31430)
    #dbg_value(ptr poison, !9821, !DIExpression(), !31335)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31474

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0, !dbg !31471 ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1, !dbg !31471 ; 6 uses
    #dbg_value(ptr %i.j, !31417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31430)
    #dbg_value(ptr %i.k, !31417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31430)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
    #dbg_value(ptr poison, !9821, !DIExpression(), !31335)
  %i.l = icmp eq ptr %i.j, null, !dbg !31474
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.f, !dbg !31474

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !8881, !DIExpression(), !31337)
  %i.m = load ptr, ptr %i.k, align 8, !dbg !31475, !invariant.load !2579 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null, !dbg !31475
  br i1 %.not.i.i, label %bb.h, label %bb.g, !dbg !31475

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j, !dbg !31475

bb.h:                                             ; preds = %bb.g, %bb.f
    #dbg_value(ptr poison, !8885, !DIExpression(), !31339)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31340)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31340)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31342)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31344)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31346)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31348)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31342)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31344)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31346)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31348)
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !31476
  %i.o = load i64, ptr %i.n, align 8, !dbg !31476, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31349)
    #dbg_value(i64 %i.o, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31349)
  %i.p = icmp eq i64 %i.o, 0, !dbg !31477
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, label %bb.i, !dbg !31477

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !31476
  %i.r = load i64, ptr %i.q, align 8, !dbg !31478, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.r, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31349)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31342)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31344)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31346)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31348)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31340)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31351)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31353)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !31351)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !31353)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !31355)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !31357)
    #dbg_value(i64 %i.r, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31351)
    #dbg_value(i64 %i.r, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31353)
    #dbg_value(i64 %i.r, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31355)
    #dbg_value(i64 %i.r, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31357)
    #dbg_value(i64 %i.o, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31351)
    #dbg_value(i64 %i.o, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31353)
    #dbg_value(i64 %i.o, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31355)
    #dbg_value(i64 %i.o, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31357)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #14, !dbg !31479
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit, !dbg !31480

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !8885, !DIExpression(), !31359)
    #dbg_value(ptr poison, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31360)
    #dbg_value(ptr %i.k, !8886, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31360)
    #dbg_value(ptr poison, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31362)
    #dbg_value(ptr poison, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31364)
    #dbg_value(ptr poison, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31366)
    #dbg_value(ptr poison, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31368)
    #dbg_value(ptr %i.k, !8900, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31362)
    #dbg_value(ptr %i.k, !8907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31364)
    #dbg_value(ptr %i.k, !8911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31366)
    #dbg_value(ptr %i.k, !8917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31368)
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !31481
  %i.u = load i64, ptr %i.t, align 8, !dbg !31481, !range !4479, !invariant.load !2579 ; 2 uses
    #dbg_value(i64 poison, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31369)
    #dbg_value(i64 %i.u, !8887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31369)
  %i.v = icmp eq i64 %i.u, 0, !dbg !31482
  br i1 %i.v, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, label %bb.k, !dbg !31482

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !31481
  %i.x = load i64, ptr %i.w, align 8, !dbg !31483, !range !4480, !invariant.load !2579
    #dbg_value(i64 %i.x, !8887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31369)
    #dbg_value(ptr %i.j, !8900, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31362)
    #dbg_value(ptr %i.j, !8907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31364)
    #dbg_value(ptr %i.j, !8911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31366)
    #dbg_value(ptr %i.j, !8917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31368)
    #dbg_value(ptr %i.j, !8886, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31360)
    #dbg_value(ptr poison, !4483, !DIExpression(), !31371)
    #dbg_value(ptr poison, !4490, !DIExpression(), !31373)
    #dbg_value(ptr %i.j, !4487, !DIExpression(), !31371)
    #dbg_value(ptr %i.j, !4493, !DIExpression(), !31373)
    #dbg_value(ptr %i.j, !4496, !DIExpression(), !31375)
    #dbg_value(ptr %i.j, !4502, !DIExpression(), !31377)
    #dbg_value(i64 %i.x, !4488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31371)
    #dbg_value(i64 %i.x, !4494, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31373)
    #dbg_value(i64 %i.x, !4500, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31375)
    #dbg_value(i64 %i.x, !4503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !31377)
    #dbg_value(i64 %i.u, !4488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31371)
    #dbg_value(i64 %i.u, !4494, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31373)
    #dbg_value(i64 %i.u, !4500, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31375)
    #dbg_value(i64 %i.u, !4503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !31377)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #14, !dbg !31484
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i, !dbg !31485

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskigd7sy4fqX_10quinn_perf.exit5.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s, !dbg !31475

bb.l:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskigd7sy4fqX_10quinn_perf.exit
    #dbg_value(ptr %0, !10807, !DIExpression(), !31379)
    #dbg_value(ptr %0, !10809, !DIExpression(), !31381)
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCsar2VadbF9t7_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0), !dbg !31486
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31487

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr undef, !10812, !DIExpression(DW_OP_deref), !31383)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsar2VadbF9t7_5tokio7runtime4task4core4CellNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECskigd7sy4fqX_10quinn_perf(ptr nonnull %0), !dbg !31488
  br label %_RNvMs0_NtNtNtCsar2VadbF9t7_5tokio7runtime4task7harnessINtB5_7HarnessNCNCNvNtCs7OITKvp9Irj_4perf6server9drive_uni00INtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCskigd7sy4fqX_10quinn_perf.exit, !dbg !31489
end_hunk_12
