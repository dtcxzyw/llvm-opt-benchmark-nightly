begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partmECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !137, !noundef !12
  switch i8 %i.a, label %thread-pre-split.i.i [
    i8 43, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.b
  %.sroa.0.272.i.i.ph = phi ptr [ %0, %bb.b ], [ %.sroa.0.0.i.i, %bb.c ]
  %.sroa.15.271.i.i.ph = phi i64 [ 1, %bb.b ], [ %.sroa.15.0.i.i, %bb.c ]
  br label %.lr.ph.i.i.6

bb.c:                                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !137
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
  br i1 %i.r, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader60.i.i, !prof !20

.lr.ph.i.i.6:                                     ; preds = %thread-pre-split.i.i, %.lr.ph.i.i.7
  %.sroa.0.272.i.i = phi ptr [ %4, %.lr.ph.i.i.7 ], [ %.sroa.0.272.i.i.ph, %thread-pre-split.i.i ] ; 2 uses
  %.sroa.15.271.i.i = phi i64 [ %3, %.lr.ph.i.i.7 ], [ %.sroa.15.271.i.i.ph, %thread-pre-split.i.i ]
  %.sroa.045.270.i.i = phi i32 [ %i.w, %.lr.ph.i.i.7 ], [ 0, %thread-pre-split.i.i ]
  %i.s = load i8, ptr %.sroa.0.272.i.i, align 1, !alias.scope !137, !noundef !12
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
define internal fastcc { i64, i64 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partyECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  switch i64 %1, label %bb.c [
    i64 0, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !142, !noalias !147, !noundef !12
  switch i8 %i.a, label %thread-pre-split.i.i [
    i8 43, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.c, %bb.b
  %.sroa.0.270.i.i.ph = phi ptr [ %0, %bb.b ], [ %.sroa.0.0.i.i, %bb.c ]
  %.sroa.15.269.i.i.ph = phi i64 [ 1, %bb.b ], [ %.sroa.15.0.i.i, %bb.c ]
  br label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !142, !noalias !147
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
  %or.cond = select i1 %i.l, i1 true, i1 %i.o, !prof !150
  br i1 %or.cond, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader56.i.i, !prof !150

.lr.ph.i.i:                                       ; preds = %thread-pre-split.i.i, %bb.e
  %.sroa.0.269.i.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.0.270.i.i.ph, %thread-pre-split.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.u, %bb.e ], [ %.sroa.15.269.i.i.ph, %thread-pre-split.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %thread-pre-split.i.i ]
  %i.p = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !142, !noalias !147, !noundef !12
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
  %i.be = invoke { ptr, i64 } @_RINvMNtCsbvkFyIu7lgC_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.4.1.i)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit156:                                     ; preds = %.preheader57.i.preheader, %bb.ab, %.lr.ph.preheader.i, %.preheader.i, %.lr.ph.i, %bb.y, %bb.y, %bb.x
  %i.bf = invoke fastcc noundef nonnull align 8 ptr @_RNCINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bg = extractvalue { ptr, i64 } %i.be, 0      ; 3 uses
  %i.bh = extractvalue { ptr, i64 } %i.be, 1      ; 2 uses
  switch i64 %i.bh, label %bb.z [
    i64 0, label %.loopexit156
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.bi = load i8, ptr %i.bg, align 1, !alias.scope !163, !noundef !12 ; 2 uses
  switch i8 %i.bi, label %.lr.ph.preheader.i [
    i8 43, label %.loopexit156
    i8 45, label %.loopexit156
  ]

bb.z:                                             ; preds = %bb.x
  %.pr.i = load i8, ptr %i.bg, align 1, !alias.scope !163
  %cond.i = icmp eq i8 %.pr.i, 43                 ; 2 uses
  %i.bj = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bh, %i.bj        ; 3 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i66 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.bk = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.bk, label %.preheader.i, label %.preheader57.i.preheader

.preheader.i:                                     ; preds = %bb.z
  %.pre = load i8, ptr %.sroa.0.0.i66, align 1, !alias.scope !163
  %2 = zext i8 %.pre to i32
  %3 = add nsw i32 %2, -48                        ; 2 uses
  %4 = icmp ugt i32 %3, 9
  br i1 %4, label %.loopexit156, label %bb.aa

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.bl = zext i8 %i.bi to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, 9
  br i1 %i.bn, label %.loopexit156, label %.thread

.thread:                                          ; preds = %.lr.ph.preheader.i
  %5 = trunc nuw nsw i32 %i.bm to i8
  br label %.loopexit157

bb.aa:                                            ; preds = %.preheader.i
  %i.bo = icmp eq i64 %.sroa.15.0.i, 1
  %i.bp = trunc nuw nsw i32 %3 to i8              ; 2 uses
  br i1 %i.bo, label %.loopexit157, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.ab
end_hunk_7
begin_hunk_8
  %i.ci = add nuw nsw i8 %i.cg, %i.ch
  br label %.loopexit157

.loopexit157:                                     ; preds = %.preheader57.i, %bb.aa, %.loopexit157.loopexit.loopexit, %.thread
  %.sroa.8.0.i = phi i8 [ %5, %.thread ], [ %i.bp, %bb.aa ], [ %i.ci, %.loopexit157.loopexit.loopexit ], [ %i.ca, %.preheader57.i ]
  br i1 %i.bd, label %.thread143, label %bb.ac

bb.ac:                                            ; preds = %.loopexit157
end_hunk_8
begin_hunk_9
  %i.de = invoke { ptr, i64 } @_RINvMNtCsbvkFyIu7lgC_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i88.ph, i64 noundef %.sroa.4.1.i87.ph)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.thread143:                                       ; preds = %.preheader57.i110.preheader, %bb.am, %.lr.ph.preheader.i118, %.preheader.i116, %.lr.ph.i119, %.loopexit157, %bb.ai, %bb.aj, %bb.aj
  %i.df = invoke fastcc noundef nonnull align 8 ptr @_RNCINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEs1_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93
  %i.dg = extractvalue { ptr, i64 } %i.de, 0      ; 3 uses
  %i.dh = extractvalue { ptr, i64 } %i.de, 1      ; 2 uses
  switch i64 %i.dh, label %bb.ak [
    i64 0, label %.thread143
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i8, ptr %i.dg, align 1, !alias.scope !175, !noundef !12 ; 2 uses
  switch i8 %i.di, label %.lr.ph.preheader.i118 [
    i8 43, label %.thread143
    i8 45, label %.thread143
  ]

bb.ak:                                            ; preds = %bb.ai
  %.pr.i114 = load i8, ptr %i.dg, align 1, !alias.scope !175
  %cond.i106 = icmp eq i8 %.pr.i114, 43           ; 2 uses
  %i.dj = sext i1 %cond.i106 to i64
  %.sroa.15.0.i107 = add nsw i64 %i.dh, %i.dj     ; 3 uses
  %.sroa.0.0.idx.i108 = zext i1 %cond.i106 to i64
  %.sroa.0.0.i109 = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.0.0.idx.i108 ; 3 uses
  %i.dk = icmp samesign ult i64 %.sroa.15.0.i107, 3
  br i1 %i.dk, label %.preheader.i116, label %.preheader57.i110.preheader

.preheader.i116:                                  ; preds = %bb.ak
  %.pre206 = load i8, ptr %.sroa.0.0.i109, align 1, !alias.scope !175
  %6 = zext i8 %.pre206 to i32
  %7 = add nsw i32 %6, -48                        ; 2 uses
  %8 = icmp ugt i32 %7, 9
  br i1 %8, label %.thread143, label %bb.al

.lr.ph.preheader.i118:                            ; preds = %bb.aj
  %i.dl = zext i8 %i.di to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, 9
  br i1 %i.dn, label %.thread143, label %.thread239

.thread239:                                       ; preds = %.lr.ph.preheader.i118
  %9 = trunc nuw nsw i32 %i.dm to i8
  br label %.loopexit

bb.al:                                            ; preds = %.preheader.i116
  %i.do = icmp eq i64 %.sroa.15.0.i107, 1
  %i.dp = trunc nuw nsw i32 %7 to i8              ; 2 uses
  br i1 %i.do, label %.loopexit, label %.lr.ph.i119

.preheader57.i110:                                ; preds = %bb.am
end_hunk_9
begin_hunk_10
  %i.ei = add nuw nsw i8 %i.eg, %i.eh
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader57.i110, %bb.al, %.loopexit.loopexit.loopexit, %.thread239
  %.sroa.8.0.i104 = phi i8 [ %9, %.thread239 ], [ %i.dp, %bb.al ], [ %i.ei, %.loopexit.loopexit.loopexit ], [ %i.ea, %.preheader57.i110 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsv_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_11DecimalType7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, i8 noundef %.sroa.8.0.i, i8 noundef %.sroa.8.0.i104)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp
end_hunk_10
begin_hunk_11
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

.lr.ph.split.preheader.i.i:                       ; preds = %bb.o
  %i.aj = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 7 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.w, %.lr.ph.split.preheader.i.i
end_hunk_11
begin_hunk_12
  %.sroa.17.0 = phi i8 [ 0, %bb.x ], [ 1, %bb.w ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.az, %bb.x ], [ 0, %bb.w ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.bb, %bb.x ], [ %i.ae, %bb.w ], [ %i.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %bb.z [
    i64 0, label %.loopexit
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.be = load i8, ptr %i.aj, align 1, !alias.scope !3955, !noalias !3958, !noundef !12
  switch i8 %i.be, label %thread-pre-split.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.z, %bb.y
  %.sroa.0.270.i.ph = phi ptr [ %i.aj, %bb.y ], [ %.sroa.0.0.i, %bb.z ]
  %.sroa.15.269.i.ph = phi i64 [ 1, %bb.y ], [ %.sroa.15.0.i, %bb.z ]
  br label %.lr.ph.i

bb.z:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.pr.i = load i8, ptr %i.aj, align 1, !alias.scope !3955, !noalias !3958
  %cond.i = icmp eq i8 %.pr.i, 43                 ; 2 uses
  %i.bf = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i, %i.bf ; 3 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bg = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.bg, label %thread-pre-split.i, label %.preheader56.i.preheader

.preheader56.i:                                   ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i153246, i64 1
end_hunk_12
begin_hunk_13
  %or.cond190 = select i1 %i.bp, i1 true, i1 %i.bs, !prof !150
  br i1 %or.cond190, label %.loopexit, label %.preheader56.i, !prof !150

.lr.ph.i:                                         ; preds = %thread-pre-split.i, %bb.ab
  %.sroa.0.269.i = phi ptr [ %i.bz, %bb.ab ], [ %.sroa.0.270.i.ph, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.by, %bb.ab ], [ %.sroa.15.269.i.ph, %thread-pre-split.i ]
  %.sroa.042.267.i = phi i64 [ %i.cb, %bb.ab ], [ 0, %thread-pre-split.i ]
  %i.bt = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !3955, !noalias !3958, !noundef !12
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
end_hunk_13
begin_hunk_14
  %.not53.i = icmp eq i64 %i.by, 0
  br i1 %.not53.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.ab
  %.sroa.11163.0 = phi i64 [ %i.cb, %bb.ab ], [ %i.br, %.preheader56.i ]
  %i.cc = icmp eq i64 %.sroa.4.1.i, 20
  br i1 %i.cc, label %bb.ac, label %.loopexit

end_hunk_14
begin_hunk_15

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !8317, !nonnull !12, !noundef !12 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noalias !8317, !noundef !12 ; 6 uses
  br label %.lr.ph.split.i.i.i.i
end_hunk_15
begin_hunk_16

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.split.loop.exit.i
  %.sroa.4.1.i.i.i = phi i64 [ %spec.select, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.split.loop.exit.i ], [ %i.dc, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.ae ] ; 2 uses
  switch i64 %.sroa.4.1.i.i.i, label %bb.ah [
    i64 0, label %.critedge441.i
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %i.dw = load i8, ptr %i.da, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  switch i8 %i.dw, label %thread-pre-split.i.i.i [
    i8 43, label %.critedge441.i
    i8 45, label %.critedge441.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.ah, %bb.ag
  %.sroa.0.272.i.i.i.ph = phi ptr [ %i.da, %bb.ag ], [ %.sroa.0.0.i.i.i, %bb.ah ]
  %.sroa.15.271.i.i.i.ph = phi i64 [ 1, %bb.ag ], [ %.sroa.15.0.i.i.i, %bb.ah ]
  br label %.lr.ph.i.i.i.6

bb.ah:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.pr.i.i.i = load i8, ptr %i.da, align 1, !alias.scope !8334, !noalias !8317
  %cond.i.i.i = icmp eq i8 %.pr.i.i.i, 43         ; 2 uses
  %i.dx = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %.sroa.4.1.i.i.i, %i.dx ; 3 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.dy = icmp samesign ult i64 %.sroa.15.0.i.i.i, 9
  br i1 %i.dy, label %thread-pre-split.i.i.i, label %.preheader60.i.i.i.preheader

.preheader60.i.i.i:                               ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i15.i.i74, i64 1
end_hunk_16
begin_hunk_17
  %.not55.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not55.i.i.i, label %.loopexit.i.i.i, label %.preheader60.i.i.i.preheader

.loopexit.i.i.i:                                  ; preds = %.preheader60.i.i.i, %.lr.ph.i.i.i.7
  %.sroa.045.1.i.i.i = phi i32 [ %i.ep, %.lr.ph.i.i.i.7 ], [ %i.ej, %.preheader60.i.i.i ]
  %i.eb = icmp eq i32 %.sroa.045.1.i.i.i, 52
  br i1 %i.eb, label %bb.ak, label %.critedge441.i

end_hunk_17
begin_hunk_18
  %or.cond.i = select i1 %i.ei, i1 true, i1 %i.ek, !prof !150
  br i1 %or.cond.i, label %.critedge441.i, label %.preheader60.i.i.i, !prof !150

.lr.ph.i.i.i.6:                                   ; preds = %thread-pre-split.i.i.i, %.lr.ph.i.i.i.7
  %.sroa.0.272.i.i.i = phi ptr [ %7, %.lr.ph.i.i.i.7 ], [ %.sroa.0.272.i.i.i.ph, %thread-pre-split.i.i.i ] ; 2 uses
  %.sroa.15.271.i.i.i = phi i64 [ %6, %.lr.ph.i.i.i.7 ], [ %.sroa.15.271.i.i.i.ph, %thread-pre-split.i.i.i ]
  %.sroa.045.270.i.i.i = phi i32 [ %i.ep, %.lr.ph.i.i.i.7 ], [ 0, %thread-pre-split.i.i.i ]
  %i.el = load i8, ptr %.sroa.0.272.i.i.i, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, -48                  ; 2 uses
  %i.eo = icmp ult i32 %i.en, 10
  br i1 %i.eo, label %.lr.ph.i.i.i.7, label %.critedge441.i

.lr.ph.i.i.i.7:                                   ; preds = %.lr.ph.i.i.i.6
  %5 = mul i32 %.sroa.045.270.i.i.i, 10
  %6 = add nsw i64 %.sroa.15.271.i.i.i, -1        ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.272.i.i.i, i64 1
  %i.ep = add i32 %i.en, %5                       ; 2 uses
  %.not56.i.i.i = icmp eq i64 %6, 0
  br i1 %.not56.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.6

.thread347.loopexit.i:                            ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
end_hunk_18
begin_hunk_19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !8317
  br label %bb.gc

.critedge441.i:                                   ; preds = %bb.ai, %.preheader60.i.i.i.preheader, %.lr.ph.i.i.i.6, %.loopexit.i.i.i, %bb.ag, %bb.ag, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.03.0.copyload.pr.i = load i64, ptr %i.bm, align 8, !noalias !8317 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !8317
  %.not145.i = icmp eq i64 %.sroa.03.0.copyload.pr.i, -9223372036854775808
end_hunk_19
