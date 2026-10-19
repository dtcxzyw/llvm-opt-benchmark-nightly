Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.11?download=true
inline.NumInlined: 216
inline.NumDeleted: 141
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [8 x i8] c"RUST_LOG", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRyNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@_RNvNCNKNvCskzEliSS7R8U_14slog_envlogger6TL_BUF0023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [4 x i64] } }, i8, [7 x i8] }
@_RNvNvMs0_NtCsfG1pxJcRFT5_4raft8raw_nodeINtB7_7RawNodepE3new2RS = local_unnamed_addr constant <{ ptr, ptr, [9 x i8], [7 x i8] }> <{ ptr @_RNvNvNvMs0_NtCsfG1pxJcRFT5_4raft8raw_nodeINtB9_7RawNodepE3new2RS3LOC, ptr inttoptr (i64 1 to ptr), [9 x i8] c"\00\00\00\00\00\00\00\00\03", [7 x i8] undef }>, align 8
@2 = private unnamed_addr constant [15 x i8] c"src/raw_node.rs", align 1
@3 = private unnamed_addr constant [14 x i8] c"raft::raw_node", align 1
@_RNvNvNvMs0_NtCsfG1pxJcRFT5_4raft8raw_nodeINtB9_7RawNodepE3new2RS3LOC = constant <{ ptr, [8 x i8], ptr, [8 x i8], ptr, [16 x i8] }> <{ ptr @2, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr @3, [16 x i8] c"\0E\00\00\00\00\00\00\00A\01\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@5 = private unnamed_addr constant ptr @_RNvYNCNKNvCskzEliSS7R8U_14slog_envlogger6TL_BUF00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtBS_6option6OptionQIB1x_INtNtBS_4cell7RefCellNtNtCsexYYUdYSQU6_5alloc6string6StringEEEEE9call_onceCsfG1pxJcRFT5_4raft, align 8
@6 = private unnamed_addr constant [13 x i8] c"UnexpectedEof", align 1
@7 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCslpwiOMB70Kp_8protobuf11wire_format8WireTypeNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@8 = private unnamed_addr constant [18 x i8] c"UnexpectedWireType", align 1
@9 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@10 = private unnamed_addr constant [12 x i8] c"IncorrectTag", align 1
@11 = private unnamed_addr constant [13 x i8] c"IncompleteMap", align 1
@12 = private unnamed_addr constant [15 x i8] c"IncorrectVarint", align 1
@13 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRlNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@15 = private unnamed_addr constant [16 x i8] c"InvalidEnumValue", align 1
@16 = private unnamed_addr constant [18 x i8] c"OverRecursionLimit", align 1
@17 = private unnamed_addr constant [16 x i8] c"TruncatedMessage", align 1
@18 = private unnamed_addr constant [5 x i8] c"Other", align 1
@19 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@20 = private unnamed_addr constant [7 x i8] c"IoError", align 1
@21 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCslpwiOMB70Kp_8protobuf5error9WireErrorNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@22 = private unnamed_addr constant [9 x i8] c"WireError", align 1
@23 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@24 = private unnamed_addr constant [4 x i8] c"Utf8", align 1
@25 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRReNtB6_5Debug3fmtCsfG1pxJcRFT5_4raft }>, align 8
@26 = private unnamed_addr constant [21 x i8] c"MessageNotInitialized", align 1
@27 = private unnamed_addr constant [7 x i8] c"message", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvCskzEliSS7R8U_14slog_envlogger3newINtCseia3OTXDmOe_9slog_term13CompactFormatNtBD_13TermDecoratorEECsfG1pxJcRFT5_4raft(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [160 x i8], align 8               ; 12 uses
  %i.j = alloca [160 x i8], align 8               ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [160 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  store i64 0, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr null, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvNvNtCsG258MDvU3F_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 8)
          to label %_RINvNtCsG258MDvU3F_3std3env3varReECsfG1pxJcRFT5_4raft.exit unwind label %.body11.thread

bb.b:                                             ; preds = %bb.t, %.body8
  br i1 %.sroa.0.3, label %bb.ah, label %.body11

.body11.thread:                                   ; preds = %.thread, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_RINvNtCsG258MDvU3F_3std3env3varReECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.a
  %i.q = load i64, ptr %i.l, align 8, !range !4, !noundef !5
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %.thread, label %bb.d

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.pre = load i64, ptr %i.l, align 8, !range !4
  %i.s = trunc nuw i64 %.pre to i1
  br i1 %i.s, label %.thread, label %bb.u

bb.d:                                             ; preds = %_RINvNtCsG258MDvU3F_3std3env3varReECsfG1pxJcRFT5_4raft.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.j, ptr noundef nonnull align 8 dereferenceable(160) %i.m, i64 160, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !34
  invoke void @_RNvCskzEliSS7R8U_14slog_envlogger18parse_logging_spec(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x)
          to label %bb.e unwind label %bb.k, !noalias !35

.thread.i:                                        ; preds = %bb.n, %bb.k, %.body.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.ak, %.body.i ], [ %i.an, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCskzEliSS7R8U_14slog_envlogger10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1n_13TermDecoratorEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.j) #12
          to label %.body unwind label %bb.m, !noalias !36

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskzEliSS7R8U_14slog_envlogger6filter6FilterEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %i.z)
          to label %bb.f unwind label %bb.n, !noalias !36

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !37
  %.sroa.01.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !34 ; 2 uses
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.42.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !34, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.53.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !34 ; 3 uses
  %i.aa = icmp ult i64 %.sroa.53.0.copyload.i, 288230376151711744
  call void @llvm.assume(i1 %i.aa)
  %.idx.i = shl nuw nsw i64 %.sroa.53.0.copyload.i, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload.i, i64 %.idx.i ; 3 uses
  %i.ac = icmp sgt i64 %.sroa.01.0.copyload.i, -1
  call void @llvm.assume(i1 %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !34
  store ptr %.sroa.42.0.copyload.i, ptr %i.e, align 8, !noalias !34
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.01.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !34
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.ab, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !34
  %i.ad = icmp eq i64 %.sroa.53.0.copyload.i, 0
  br i1 %i.ad, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.lr.ph.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.lr.ph.i: ; preds = %bb.f
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.i

.body.i:                                          ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e) #12
          to label %.thread.i unwind label %bb.m, !noalias !36

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.l, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.lr.ph.i
  %.sroa.42.0.copyload916.i = phi ptr [ %.sroa.42.0.copyload.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.lr.ph.i ], [ %i.ag, %bb.l ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload916.i, i64 32 ; 4 uses
  %.sroa.0.0.copyload10.i = load i64, ptr %.sroa.42.0.copyload916.i, align 8, !noalias !38 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload10.i, -2
  br i1 %.not.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.i
  %.sroa.7.0..sroa.42.0.copyload9.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload916.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !34
  store i64 %.sroa.0.0.copyload10.i, ptr %i.d, align 8, !noalias !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa.42.0.copyload9.sroa_idx.i, i64 24, i1 false), !noalias !36
  %i.ah = load i64, ptr %i.ae, align 8, !alias.scope !39, !noundef !5 ; 3 uses
  %i.ai = load i64, ptr %i.j, align 8, !range !6, !alias.scope !39, !noundef !5
  %i.aj = icmp eq i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.j)
          to label %bb.l unwind label %bb.i, !noalias !40

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !34
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #12
          to label %.body.i unwind label %bb.j, !noalias !36

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !36
  unreachable

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.thread.i: ; preds = %bb.l, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.i, %bb.f
  %i.am = phi ptr [ %.sroa.42.0.copyload.i, %bb.f ], [ %i.ab, %bb.l ], [ %i.ag, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.i ]
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !34
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
          to label %bb.o unwind label %bb.k, !noalias !36

bb.k:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.thread.i, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.ao = load ptr, ptr %i.af, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !36
  %i.aq = add i64 %i.ah, 1
  store i64 %i.aq, ptr %i.ae, align 8, !alias.scope !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !34
  %i.ar = icmp eq ptr %i.ag, %i.ab
  br i1 %i.ar, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.thread.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.i

bb.m:                                             ; preds = %bb.n, %.body.i, %.thread.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !36
  unreachable

bb.n:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !37
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #12
          to label %.thread.i unwind label %bb.m, !noalias !36

.body:                                            ; preds = %.thread.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #12
          to label %.body8 unwind label %bb.s

bb.o:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(160) %i.j, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body8 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.c unwind label %bb.r

.body8:                                           ; preds = %bb.r, %bb.p, %.body
  %.pn = phi { ptr, i32 } [ %.pn.pn.i, %.body ], [ %i.ay, %bb.r ], [ %i.au, %bb.p ] ; 2 uses
  %.sroa.0.3 = phi i1 [ false, %.body ], [ true, %bb.r ], [ true, %bb.p ]
  %i.aw = load i64, ptr %i.l, align 8, !range !4, !noundef !5
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.b, label %bb.t

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsfG1pxJcRFT5_4raft.exit.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body8

bb.s:                                             ; preds = %bb.ah, %bb.t, %.body
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.t:                                             ; preds = %.body8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #12
          to label %bb.b unwind label %bb.s

.thread:                                          ; preds = %_RINvNtCsG258MDvU3F_3std3env3varReECsfG1pxJcRFT5_4raft.exit, %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %bb.u unwind label %.body11.thread

bb.u:                                             ; preds = %.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %i.m, i64 160, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !42, !noundef !5 ; 6 uses
  %i.bc = icmp ult i64 %i.bb, 288230376151711744
  call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !42, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43
  store ptr %i.a, ptr %i.b, align 8, !noalias !44
  %i.bg = icmp eq i64 %i.bb, 1
  br i1 %i.bg, label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtCskzEliSS7R8U_14slog_envlogger12LogDirective7sort_byNCNvMBy_INtBy_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1R_13TermDecoratorEE5build0ECsfG1pxJcRFT5_4raft.exit.i, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.bh = icmp samesign ult i64 %i.bb, 21
  br i1 %i.bh, label %bb.y, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_7sort_byNCNvMB11_INtB11_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB2Y_13TermDecoratorEE5build0E0INtNtB1R_3vec3VecBZ_EEB11_(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 1, 288230376151711744) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #14
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtCskzEliSS7R8U_14slog_envlogger12LogDirective7sort_byNCNvMBy_INtBy_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1R_13TermDecoratorEE5build0ECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.ad, !noalias !45

bb.y:                                             ; preds = %bb.w
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB1m_7sort_byNCNvMB1o_INtB1o_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB3m_13TermDecoratorEE5build0E0ECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 %i.bf, i64 noundef range(i64 1, 288230376151711744) %i.bb, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtCskzEliSS7R8U_14slog_envlogger12LogDirective7sort_byNCNvMBy_INtBy_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1R_13TermDecoratorEE5build0ECsfG1pxJcRFT5_4raft.exit.i unwind label %bb.ad, !noalias !45

_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtCskzEliSS7R8U_14slog_envlogger12LogDirective7sort_byNCNvMBy_INtBy_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1R_13TermDecoratorEE5build0ECsfG1pxJcRFT5_4raft.exit.i: ; preds = %bb.y, %bb.x, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43
  br label %bb.ag

bb.z:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45
  store i64 -1, ptr %i.c, align 8, !noalias !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 2, ptr %i.bi, align 8, !noalias !45
  %i.bj = load i64, ptr %i.i, align 8, !range !6, !alias.scope !46, !noundef !5
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.i)
          to label %bb.ae unwind label %bb.ab, !noalias !47

bb.ab:                                            ; preds = %bb.aa
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCskzEliSS7R8U_14slog_envlogger12LogDirectiveECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #12
          to label %.body.i10 unwind label %bb.ac, !noalias !41

bb.ac:                                            ; preds = %bb.ab
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !41
  unreachable

bb.ad:                                            ; preds = %bb.y, %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i10

.body.i10:                                        ; preds = %bb.ad, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bn, %bb.ad ], [ %i.bl, %bb.ab ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCskzEliSS7R8U_14slog_envlogger10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1n_13TermDecoratorEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.i) #12
          to label %.body11 unwind label %bb.af, !noalias !41

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !46, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !41
  store i64 1, ptr %i.ba, align 8, !alias.scope !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45
  br label %bb.ag

bb.af:                                            ; preds = %.body.i10
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #13, !noalias !41
  unreachable

bb.ag:                                            ; preds = %bb.ae, %_RINvMNtCsexYYUdYSQU6_5alloc5sliceSNtCskzEliSS7R8U_14slog_envlogger12LogDirective7sort_byNCNvMBy_INtBy_10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1R_13TermDecoratorEE5build0ECsfG1pxJcRFT5_4raft.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.bs, ptr noundef nonnull align 8 dereferenceable(104) %i.br, i64 104, i1 false), !alias.scope !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.i, i64 24, i1 false), !alias.scope !45
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, i64 32, i1 false), !alias.scope !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

.body11:                                          ; preds = %.body.i10, %bb.ah, %bb.b
  %.pn613 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn614, %bb.ah ], [ %eh.lpad-body.i, %.body.i10 ]
  resume { ptr, i32 } %.pn613

bb.ah:                                            ; preds = %.body11.thread, %bb.b
  %.pn614 = phi { ptr, i32 } [ %i.p, %.body11.thread ], [ %.pn, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCskzEliSS7R8U_14slog_envlogger10LogBuilderINtCseia3OTXDmOe_9slog_term13CompactFormatNtB1n_13TermDecoratorEEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef align 8 dereferenceable(160) %i.m) #12
          to label %.body11 unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IteryEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef returned align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.c = call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IteryuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %.not2 = icmp eq ptr %i.d, null
end_hunk_0
