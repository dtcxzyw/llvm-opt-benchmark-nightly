begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partmECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !29, !noundef !9
  switch i8 %i.a, label %thread-pre-split.i.i [
    i8 43, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.b
  %.sroa.0.272.i.i.ph = phi ptr [ %0, %bb.b ], [ %.sroa.0.0.i.i, %bb.c ]
  %.sroa.15.271.i.i.ph = phi i64 [ 1, %bb.b ], [ %.sroa.15.0.i.i, %bb.c ]
  br label %.lr.ph.i.i.6

bb.c:                                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !29
  %cond.i.i = icmp eq i8 %.pr.i.i, 43             ; 2 uses
  %i.b = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %1, %i.b          ; 3 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.c = icmp samesign ult i64 %.sroa.15.0.i.i, 9
  br i1 %i.c, label %thread-pre-split.i.i, label %.preheader60.i.i.preheader

.preheader60.i.i:                                 ; preds = %.lr.ph.i.i.5
  %.not55.i.i = icmp eq i64 %i.g, 0
  br i1 %.not55.i.i, label %.loopexit.i.i, label %.preheader60.i.i.preheader

.loopexit.i.i:                                    ; preds = %.preheader60.i.i, %.lr.ph.i.i.7
  %.sroa.045.1.i.i = phi i32 [ %i.w, %.lr.ph.i.i.7 ], [ %i.q, %.preheader60.i.i ]
  %i.d = zext i32 %.sroa.045.1.i.i to i64
  %i.e = shl nuw i64 %i.d, 32
  br label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
end_hunk_0
begin_hunk_1
.preheader60.i.i.preheader:                       ; preds = %bb.c, %.preheader60.i.i
  %.sroa.0.1.i.i9 = phi ptr [ %i.f, %.preheader60.i.i ], [ %.sroa.0.0.i.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i.i8 = phi i64 [ %i.g, %.preheader60.i.i ], [ %.sroa.15.0.i.i, %bb.c ]
  %.sroa.045.0.i.i7 = phi i32 [ %i.q, %.preheader60.i.i ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i9, i64 1
  %i.g = add nsw i64 %.sroa.15.1.i.i8, -1         ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i7, i32 10) ; 2 uses
end_hunk_1
begin_hunk_2
  %i.l = zext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -48                    ; 2 uses
  %i.n = icmp ult i32 %i.m, 10
  br i1 %i.n, label %.lr.ph.i.i.5, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.e:                                             ; preds = %.preheader60.i.i.preheader
  %i.o = add i8 %i.k, -48
end_hunk_2
begin_hunk_3
  %spec.select.i.i = select i1 %i.p, i64 513, i64 257
  br label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

.lr.ph.i.i.5:                                     ; preds = %bb.d
  %i.q = add i32 %i.m, %i.i                       ; 3 uses
  %i.r = icmp ult i32 %i.q, %i.i
  br i1 %i.r, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader60.i.i, !prof !26

.lr.ph.i.i.6:                                     ; preds = %thread-pre-split.i.i, %.lr.ph.i.i.7
  %.sroa.0.272.i.i = phi ptr [ %4, %.lr.ph.i.i.7 ], [ %.sroa.0.272.i.i.ph, %thread-pre-split.i.i ] ; 2 uses
  %.sroa.15.271.i.i = phi i64 [ %3, %.lr.ph.i.i.7 ], [ %.sroa.15.271.i.i.ph, %thread-pre-split.i.i ]
  %.sroa.045.270.i.i = phi i32 [ %i.w, %.lr.ph.i.i.7 ], [ 0, %thread-pre-split.i.i ]
  %i.s = load i8, ptr %.sroa.0.272.i.i, align 1, !alias.scope !29, !noundef !9
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %.lr.ph.i.i.7, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

.lr.ph.i.i.7:                                     ; preds = %.lr.ph.i.i.6
  %2 = mul i32 %.sroa.045.270.i.i, 10
  %3 = add nsw i64 %.sroa.15.271.i.i, -1          ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.272.i.i, i64 1
  %i.w = add i32 %i.u, %2                         ; 2 uses
  %.not56.i.i = icmp eq i64 %3, 0
  br i1 %.not56.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.6

_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %bb.d, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %bb.a, %bb.b, %bb.b, %.loopexit.i.i, %bb.e
  %.sroa.8.0.insert.insert.i.i = phi i64 [ 257, %.lr.ph.i.i.6 ], [ %i.e, %.loopexit.i.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i.i, %bb.e ], [ 257, %bb.d ], [ 513, %.lr.ph.i.i.5 ] ; 2 uses
  %i.x = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  %i.y = icmp ne i64 %1, 10
  %or.cond.not = or i1 %i.y, %i.x
end_hunk_3
begin_hunk_4
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !34, !noalias !39, !noundef !9
  switch i8 %i.a, label %thread-pre-split.i.i [
    i8 43, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.b
  %.sroa.0.270.i.i.ph = phi ptr [ %0, %bb.b ], [ %.sroa.0.0.i.i, %bb.c ]
  %.sroa.15.269.i.i.ph = phi i64 [ 1, %bb.b ], [ %.sroa.15.0.i.i, %bb.c ]
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !34, !noalias !39
  %cond.i.i = icmp eq i8 %.pr.i.i, 43             ; 2 uses
  %i.b = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %1, %i.b          ; 3 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.c = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.c, label %thread-pre-split.i.i, label %.preheader56.i.i.preheader

.preheader56.i.i:                                 ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i6, i64 1
end_hunk_4
begin_hunk_5
  %or.cond = select i1 %i.l, i1 true, i1 %i.o, !prof !42
  br i1 %or.cond, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader56.i.i, !prof !42

.lr.ph.i.i:                                       ; preds = %thread-pre-split.i.i, %bb.e
  %.sroa.0.269.i.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.0.270.i.i.ph, %thread-pre-split.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.u, %bb.e ], [ %.sroa.15.269.i.i.ph, %thread-pre-split.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %thread-pre-split.i.i ]
  %i.p = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !34, !noalias !39, !noundef !9
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
end_hunk_5
begin_hunk_6
  %.not53.i.i = icmp eq i64 %i.u, 0
  br i1 %.not53.i.i, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.lr.ph.i.i

_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %.preheader56.i.i.preheader, %bb.d, %.preheader56.i.i, %.lr.ph.i.i, %bb.e, %bb.b, %bb.b, %bb.a
  %.sroa.103.0 = phi i64 [ undef, %bb.b ], [ undef, %bb.b ], [ undef, %.lr.ph.i.i ], [ undef, %bb.a ], [ %i.x, %bb.e ], [ undef, %bb.d ], [ %i.n, %.preheader56.i.i ], [ undef, %.preheader56.i.i.preheader ]
  %.sink.i.i.not = phi i1 [ false, %bb.b ], [ false, %bb.b ], [ %i.s, %.lr.ph.i.i ], [ false, %bb.a ], [ %i.s, %bb.e ], [ false, %bb.d ], [ true, %.preheader56.i.i ], [ false, %.preheader56.i.i.preheader ]
  %i.y = icmp eq i64 %1, 20
  %or.cond.not.not = and i1 %i.y, %.sink.i.i.not  ; 2 uses
  %.sroa.3.0 = select i1 %or.cond.not.not, i64 %.sroa.103.0, i64 undef
end_hunk_6
begin_hunk_7
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

.lr.ph.split.preheader.i.i:                       ; preds = %bb.o
  %i.ak = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !9, !noundef !9 ; 7 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.u, %.lr.ph.split.preheader.i.i
end_hunk_7
begin_hunk_8
  %.sroa.17.0 = phi i8 [ 0, %bb.v ], [ 1, %bb.u ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.ba, %bb.v ], [ 0, %bb.u ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.bc, %bb.v ], [ %i.ah, %bb.u ], [ %i.ah, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %bb.x [
    i64 0, label %.loopexit
    i64 1, label %bb.w
  ]

bb.w:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bf = load i8, ptr %i.ak, align 1, !alias.scope !1903, !noalias !1906, !noundef !9
  switch i8 %i.bf, label %thread-pre-split.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.x, %bb.w
  %.sroa.0.270.i.ph = phi ptr [ %i.ak, %bb.w ], [ %.sroa.0.0.i, %bb.x ]
  %.sroa.15.269.i.ph = phi i64 [ 1, %bb.w ], [ %.sroa.15.0.i, %bb.x ]
  br label %.lr.ph.i

bb.x:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.pr.i = load i8, ptr %i.ak, align 1, !alias.scope !1903, !noalias !1906
  %cond.i = icmp eq i8 %.pr.i, 43                 ; 2 uses
  %i.bg = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i, %i.bg ; 3 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bh = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.bh, label %thread-pre-split.i, label %.preheader56.i.preheader

.preheader56.i:                                   ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i153311, i64 1
end_hunk_8
begin_hunk_9
  %or.cond201 = select i1 %i.bq, i1 true, i1 %i.bt, !prof !42
  br i1 %or.cond201, label %.loopexit, label %.preheader56.i, !prof !42

.lr.ph.i:                                         ; preds = %thread-pre-split.i, %bb.z
  %.sroa.0.269.i = phi ptr [ %i.ca, %bb.z ], [ %.sroa.0.270.i.ph, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.bz, %bb.z ], [ %.sroa.15.269.i.ph, %thread-pre-split.i ]
  %.sroa.042.267.i = phi i64 [ %i.cc, %bb.z ], [ 0, %thread-pre-split.i ]
  %i.bu = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !1903, !noalias !1906, !noundef !9
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48                  ; 2 uses
end_hunk_9
begin_hunk_10
  %.not53.i = icmp eq i64 %i.bz, 0
  br i1 %.not53.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.z
  %.sroa.11177.0 = phi i64 [ %i.cc, %bb.z ], [ %i.bs, %.preheader56.i ]
  %i.cd = icmp eq i64 %.sroa.4.1.i, 20
  br i1 %i.cd, label %bb.aa, label %.loopexit

end_hunk_10
