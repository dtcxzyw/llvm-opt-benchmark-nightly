Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.05?download=true
inline.NumInlined: 453
inline.NumDeleted: 331
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRhNtB6_5Debug3fmtCsjRvGck33osM_6diesel:bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXNtNtNtCscI6d9CVNmLh_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsg_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRjNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !603, !noalias !604, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXs6_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXs8_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit

_RNvXsZ_NtNtCscI6d9CVNmLh_4core3fmt3numjNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRlNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !608, !noalias !609, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsv_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCscI6d9CVNmLh_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsx_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit

_RNvXsQ_NtNtCscI6d9CVNmLh_4core3fmt3numlNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRtNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !613, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !614, !noalias !615, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsm_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXso_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsV_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_5Debug3fmt.exit

_RNvXsV_NtNtCscI6d9CVNmLh_4core3fmt3numtNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRuNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtRxNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !619, !noalias !620, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvXsD_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXse_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_RNvXsF_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsR_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_5Debug3fmt.exit

_RNvXsR_NtNtCscI6d9CVNmLh_4core3fmt3numxNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1j_NtCscI6d9CVNmLh_4core3fmtQReNtB6_7Display3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !624)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !624, !noalias !625, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !624, !noalias !625, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCscI6d9CVNmLh_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !624
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1o_NtCscI6d9CVNmLh_4core3fmtRhNtB6_8LowerHex3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCscI6d9CVNmLh_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1o_NtCscI6d9CVNmLh_4core3fmtRmNtB6_8LowerHex3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !6, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsu_NtNtCscI6d9CVNmLh_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row8RowIndexReE3idx(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !635, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult12column_count(ptr noundef nonnull align 8 %i.b), !noalias !635 ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB24_5PgRowINtNtB2a_3row8RowIndexReE3idx0E0INtNtB8_12control_flow11ControlFlowjEEB2a_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.backedge.i
  %i.e = phi i64 [ %i.f, %.backedge.i ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.f = add nuw i64 %i.e, 1                      ; 2 uses
  %i.g = tail call noundef nonnull align 8 ptr @_RINvMNtNtCscI6d9CVNmLh_4core4cell4onceINtB3_8OnceCellINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB7_6option6OptionPeEEE15get_or_try_initNCINvB2_11get_or_initNCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2u_8PgResult11column_name0E0zEB2A_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.b), !noalias !636 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noalias !636, !noundef !4
  %i.j = icmp ult i64 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %.backedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !636, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.e ; 3 uses
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.m, align 8, !noalias !636
  %i.n = trunc nuw i64 %.sroa.02.0.copyload.i.i.i.i to i1
  br i1 %i.n, label %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit.i.i.i, label %.backedge.i

_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit.i.i.i: ; preds = %bb.b
  %.sroa.5.0..sroa.01.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa.01.0..sroa_idx.i.i.i.i, align 8, !noalias !636
  %.sroa.43.0..sroa.01.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.43.0.copyload.i.i.i.i = load ptr, ptr %.sroa.43.0..sroa.01.0..sroa_idx.i.i.i.i, align 8, !noalias !636 ; 2 uses
  %.not.i.i.i = icmp ne ptr %.sroa.43.0.copyload.i.i.i.i, null
  %i.o = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i, %2
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.o, i1 false
  br i1 %or.cond.i.i.i, label %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB7_5PgRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i.i, label %.backedge.i

_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB7_5PgRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i.i: ; preds = %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit.i.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %.sroa.43.0.copyload.i.i.i.i, ptr nonnull %1, i64 %2), !noalias !636
  %bcmp.i.fr.i.i = freeze i32 %bcmp.i.i.i
  %i.p = icmp eq i32 %bcmp.i.fr.i.i, 0
  br i1 %i.p, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB24_5PgRowINtNtB2a_3row8RowIndexReE3idx0E0INtNtB8_12control_flow11ControlFlowjEEB2a_.exit, label %.backedge.i

.backedge.i:                                      ; preds = %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB7_5PgRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i.i, %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit.i.i.i, %bb.b, %.lr.ph.i
  %exitcond.not.i = icmp eq i64 %i.f, %i.c
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB24_5PgRowINtNtB2a_3row8RowIndexReE3idx0E0INtNtB8_12control_flow11ControlFlowjEEB2a_.exit, label %.lr.ph.i

_RINvYINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB24_5PgRowINtNtB2a_3row8RowIndexReE3idx0E0INtNtB8_12control_flow11ControlFlowjEEB2a_.exit: ; preds = %.backedge.i, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB7_5PgRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i.i, %bb.a
  %.sroa.0.0.i11 = phi i64 [ 0, %bb.a ], [ 0, %.backedge.i ], [ 1, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB7_5PgRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i.i ]
  %i.q = phi i64 [ undef, %bb.a ], [ %i.e, %_RNCNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB7_5PgRowINtNtBd_3row8RowIndexReE3idx0Bd_.exit.i.i ], [ %i.e, %.backedge.i ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i11, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %i.q, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup12pg_namespaceNtB5_5tableNtNtBb_13query_builder7AsQuery8as_query() unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs0_NtNtCsjRvGck33osM_6diesel13query_builder16select_statementINtB5_15SelectStatementINtNtB7_11from_clause10FromClauseNtNtNtNtB9_2pg15metadata_lookup12pg_namespace5tableEE6simpleB9_()
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_4IteryEEINtB5_7ZipImplBW_B1r_E3newCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7IterMutyENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.f = call noundef i64 @_RNvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IteryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsjRvGck33osM_6diesel(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_7PgFieldINtNtBb_3row5FieldNtNtB9_7backend2PgE10field_name(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMNtNtCscI6d9CVNmLh_4core4cell4onceINtB3_8OnceCellINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB7_6option6OptionPeEEE15get_or_try_initNCINvB2_11get_or_initNCNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2u_8PgResult11column_name0E0zEB2A_(ptr noundef nonnull align 8 %i.d, ptr noundef nonnull align 8 %i.a) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  %i.h = icmp ult i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.c ; 3 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.k, align 8
  %i.l = trunc nuw i64 %.sroa.02.0.copyload.i to i1
  br i1 %i.l, label %bb.c, label %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa.01.0..sroa_idx.i, align 8
  %.sroa.43.0..sroa.01.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.43.0.copyload.i = load ptr, ptr %.sroa.43.0..sroa.01.0..sroa_idx.i, align 8
  br label %_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit

_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_name.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.5.0.copyload.i, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %.sroa.43.0.copyload.i, %bb.c ], [ null, %bb.b ]
  %i.m = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %.sroa.4.0.i, 1
  ret { ptr, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_7PgFieldINtNtBb_3row5FieldNtNtB9_7backend2PgE5value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = tail call { ptr, i64 } @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult3get(ptr noundef nonnull align 8 %i.a, i64 noundef %i.c, i64 noundef %i.e) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @20, ptr %.sroa.66.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr %i.g, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel5mysql13query_builder20query_fragment_implsNtNtNtBb_13query_builder16insert_statement13DefaultValuesINtB1h_13QueryFragmentNtNtB9_7backend5MysqlNtB2w_28MysqlStyleDefaultValueClauseE8walk_ast(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !range !18, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store i64 -1, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !align !13, !noundef !4
  tail call void @_RNvXs_NtNtCsjRvGck33osM_6diesel5mysql13query_builderNtB4_17MysqlQueryBuilderINtNtB8_13query_builder12QueryBuilderNtNtB6_7backend5MysqlE8push_sql(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 12)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  store i8 0, ptr %i.e, align 1
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder11from_clauseINtB5_10FromClauseNtNtNtNtB9_2pg15metadata_lookup12pg_namespace5tableENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs4_NtNtCsjRvGck33osM_6diesel13query_builder11from_clauseINtB5_10FromClauseNtNtNtNtB9_2pg15metadata_lookup7pg_type5tableENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneB9_(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 0) i32 @_RNvXs4_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_7PgFieldNtNtB9_5value13TypeOidLookup6lookup(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef i32 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection6resultNtB2_8PgResult11column_type(ptr noundef nonnull align 8 %i.a, i64 noundef %i.c)
  ret i32 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtNtNtCsjRvGck33osM_6diesel2pg15metadata_lookup12pg_namespace7columnsNtB5_3oidINtNtBd_13query_builder13QueryFragmentNtNtBb_7backend2PgE8walk_astBd_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %2, align 8, !range !18, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !range !19, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = insertelement <2 x ptr> <ptr poison, ptr undef>, ptr %i.f, i64 0
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp eq i64 %i.c, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.b
  call void @_RNvMNtNtCsjRvGck33osM_6diesel13query_builder8ast_passINtB2_7AstPassNtNtNtB6_2pg7backend2PgE15push_identifierB6_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 3)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %.thread
  %i.m = phi <2 x ptr> [ %i.i, %.thread ], [ %i.l, %bb.e ], [ undef, %bb.c ]
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.8.0 = load ptr, ptr %.sroa.8.0.in, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  store i64 %i.c, ptr %i.a, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x ptr> %i.m, ptr %.sroa.13.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.o, ptr %i.p, align 8
end_hunk_0
