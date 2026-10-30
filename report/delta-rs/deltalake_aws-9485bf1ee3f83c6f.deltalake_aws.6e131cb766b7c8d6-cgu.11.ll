Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.11?download=true
inline.NumInlined: 1116
inline.NumDeleted: 605
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXNtCskW4GF8MLwaI_6backon5retryNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtBF_18DynamoDbLockClient19update_commit_entry00INtB2_9RetryableNtNtNtB4_7backoff11exponential18ExponentialBuilderuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item15UpdateItemErrorNtNtNtB36_4http8response8ResponseENCNCBx_00Bv_E5retryBF_:bb.a
  store i8 %i.b, ptr %.sroa.17.0..sroa_idx, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7816
  store ptr @_RNvYNCNvMs_NtCskW4GF8MLwaI_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item15UpdateItemErrorNtNtNtB1K_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB4I_18DynamoDbLockClient19update_commit_entry000NCB4A_0NtNtBb_5sleep12TokioSleeperFG_RL0_B1D_EbFG_RL0_B1D_NtNtCsbvkFyIu7lgC_4core4time8DurationEuFG_RL0_B1D_INtNtB6Z_6option6OptionB6V_EEB7J_E3new0INtNtNtB6Z_3ops8function6FnOnceTRB1D_EE9call_onceB4I_, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7824
  store ptr @_RNvYNCNvMs_NtCskW4GF8MLwaI_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item15UpdateItemErrorNtNtNtB1K_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB4I_18DynamoDbLockClient19update_commit_entry000NCB4A_0NtNtBb_5sleep12TokioSleeperFG_RL0_B1D_EbFG_RL0_B1D_NtNtCsbvkFyIu7lgC_4core4time8DurationEuFG_RL0_B1D_INtNtB6Z_6option6OptionB6V_EEB7J_E3news_0INtNtNtB6Z_3ops8function6FnOnceTRB1D_B6V_EE9call_onceB4I_, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7832
  store ptr @_RNvYNCNvMs_NtCskW4GF8MLwaI_6backon5retryINtB9_5RetryNtNtNtBb_7backoff11exponential18ExponentialBackoffuINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6result8SdkErrorNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb9operation11update_item15UpdateItemErrorNtNtNtB1K_4http8response8ResponseENCNCNCNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB4I_18DynamoDbLockClient19update_commit_entry000NCB4A_0NtNtBb_5sleep12TokioSleeperFG_RL0_B1D_EbFG_RL0_B1D_NtNtCsbvkFyIu7lgC_4core4time8DurationEuFG_RL0_B1D_INtNtB6Z_6option6OptionB6V_EEB7J_E3news0_0INtNtNtB6Z_3ops8function6FnOnceTRB1D_B7J_EE9call_onceB4I_, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.aa, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCsbvkFyIu7lgC_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClientNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(488) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsE_Cs9rVkZwOUgsI_13deltalake_awsNtB5_14DynamoDbConfigNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !10, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCsbvkFyIu7lgC_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @82, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs17_NtNtCsbvkFyIu7lgC_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !15, !alias.scope !1366, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE4nextCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1366, !nonnull !4, !noundef !4 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !1366, !noundef !4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.g = load i64, ptr %0, align 8, !range !3, !alias.scope !1369, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !15, !alias.scope !1370, !noundef !4
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !1369 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i.i = load i8, ptr %i.m, align 8, !alias.scope !1370 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  %i.n = trunc nuw i8 %.promoted26.i.i to i1      ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %.val1.i
  br i1 %.not.i.i.i.peel.i, label %bb.d, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.p, label %bb.e, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1372, !noalias !1373, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.u, label %.loopexit19.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !1374, !noundef !4 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !1374, !noundef !4
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !1374, !noundef !4
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i, label %bb.h

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !1374, !noundef !4
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.peel.i ], [ %i.bd, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.peel.i ], [ %i.ag, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.peel.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1369, !noundef !4
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1369, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1369, !noundef !4 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !1375
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1376)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp ult i64 %i.bq, %.val1.i
  br i1 %.not.i.i.i.i, label %bb.o, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1372, !noalias !1377, !noundef !4
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !1378, !noundef !4 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.o, %.split.i.i.i.i, %bb.d, %.split.i.i.i.peel.i
  %.lcssa15.i = phi i8 [ %.promoted26.i.i, %.split.i.i.i.peel.i ], [ %.promoted26.i.i, %bb.d ], [ 1, %.split.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !1370
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %.lcssa12.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #35, !noalias !1377
  unreachable

.loopexit19.i:                                    ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !1370
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i
  store i8 1, ptr %i.j, align 2, !alias.scope !1370
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

.sink.split.i:                                    ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i, %bb.q, %bb.h
  %.lcssa14.i = phi i64 [ %.promoted.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit16.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit14.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9rVkZwOUgsI_13deltalake_aws.exit12.i.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !1370
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %.loopexit19.i, %bb.p
  %1 = phi i64 [ %.lcssa14.i, %.sink.split.i ], [ %.val1.i, %.loopexit19.i ], [ %.val1.i, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !1367, !noalias !1366
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !1367, !noalias !1366
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i: ; preds = %bb.s, %bb.r, %.preheader.i.i
  %storemerge.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i ]
  store i64 %storemerge.i.i, ptr %i.a, align 8, !alias.scope !1367, !noalias !1366
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true) #37
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCsbvkFyIu7lgC_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false) #37
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %bb.u, %bb.t, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i
  %i.cm = load i64, ptr %i.a, align 8, !range !3, !noalias !1366, !noundef !4
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1366, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !1366, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !1366, !noundef !4 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !1366
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.w:                                             ; preds = %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i
  %i.cw = load i8, ptr %i.b, align 1, !range !15, !alias.scope !1379, !noundef !4
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !1379
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !15, !alias.scope !1379, !noundef !4
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !1379
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !1379
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1379, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1379, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1379, !nonnull !4, !noundef !4
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dg
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1366
  br label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE4nextCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE4nextCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ undef, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalReE7get_endCs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesjjNCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB2d_7BufListB1u_ENtNtNtB1y_3buf8buf_impl3Buf9remaining0NCINvXsK_NtNtBX_6traits5accumjNtB3T_3Sum3sumINtBT_3MapINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterB1u_EB26_EE0E0INtB7_5FnMutTjB1t_EE8call_mutCs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = add i64 %.val, %1
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6result6ResultNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7context6OutputINtNtBY_12orchestrator17OrchestratorErrorNtBU_5ErrorEENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.d = load i16, ptr %i.c, align 8, !range !1384, !alias.scope !1383, !noundef !4
  %.not.i = icmp eq i16 %i.d, 11
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1385
  store ptr %i.c, ptr %i.a, align 8, !noalias !1385
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @170)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1385
  br label %_RNvXst_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7context6OutputINtNtBQ_12orchestrator17OrchestratorErrorNtBM_5ErrorEENtNtB7_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1385
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !noalias !1385
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @169)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1385
  br label %_RNvXst_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7context6OutputINtNtBQ_12orchestrator17OrchestratorErrorNtBM_5ErrorEENtNtB7_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvXst_NtCsbvkFyIu7lgC_4core6resultINtB5_6ResultNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7context6OutputINtNtBQ_12orchestrator17OrchestratorErrorNtBM_5ErrorEENtNtB7_3fmt5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtB1w_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1393
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1393
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1396, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1396, !noundef !4
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEINtNtBZ_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1396
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1396, !noundef !4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1394, !noalias !1393
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweERINtNtB18_4sync3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_EINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B1G_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1393
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !1392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1393
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1404
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1404
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1407, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1407, !noundef !4
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweENtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1407
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1407, !noundef !4
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1405, !noalias !1404
  %i.j = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweERNtNtCs2DiVQAxFeQE_16aws_smithy_types8document8DocumentINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterB13_B1G_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1404
  %i.k = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j), !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1404
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB8_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxENtB6_5Debug3fmtCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1415
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1414
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1415
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1418, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1418, !noundef !4
  %i.g = add i64 %i.f, 1
  call void @_RNvMsi_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEE3newCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %i.g), !noalias !1418
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1418, !noundef !4
end_hunk_0
