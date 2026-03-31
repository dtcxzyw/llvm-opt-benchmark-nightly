begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partmECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  switch i64 %1, label %thread-pre-split.i.i [
    i64 0, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !137, !noundef !12 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !137
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i, %bb.b
  %2 = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.a, %bb.b ]
  %cond.i.i = icmp eq i8 %2, 43                   ; 2 uses
  %i.b = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %1, %i.b          ; 10 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i.i ; 9 uses
  %i.c = icmp samesign ult i64 %.sroa.15.0.i.i, 9
  br i1 %i.c, label %.preheader.i.i, label %.preheader60.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.c
  %.not5668.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5668.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.preheader60.i.i:                                 ; preds = %3
  %.not55.i.i = icmp eq i64 %i.g, 0
  br i1 %.not55.i.i, label %.loopexit.i.i, label %.preheader60.i.i.preheader

.loopexit.i.i:                                    ; preds = %.preheader60.i.i, %10, %16, %24, %32, %40, %46, %50, %57, %.preheader.i.i
  %.sroa.045.1.i.i = phi i32 [ %59, %57 ], [ 0, %.preheader.i.i ], [ %8, %10 ], [ %18, %16 ], [ %26, %24 ], [ %34, %32 ], [ %42, %40 ], [ %48, %46 ], [ %52, %50 ], [ %4, %.preheader60.i.i ]
  %i.d = zext i32 %.sroa.045.1.i.i to i64
  %i.e = shl nuw i64 %i.d, 32
  br label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
end_hunk_0
begin_hunk_1
.preheader60.i.i.preheader:                       ; preds = %bb.c, %.preheader60.i.i
  %.sroa.0.1.i.i9 = phi ptr [ %i.f, %.preheader60.i.i ], [ %.sroa.0.0.i.i, %bb.c ] ; 2 uses
  %.sroa.15.1.i.i8 = phi i64 [ %i.g, %.preheader60.i.i ], [ %.sroa.15.0.i.i, %bb.c ]
  %.sroa.045.0.i.i7 = phi i32 [ %4, %.preheader60.i.i ], [ 0, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i9, i64 1
  %i.g = add nsw i64 %.sroa.15.1.i.i8, -1         ; 2 uses
  %i.h = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i7, i32 10) ; 2 uses
end_hunk_1
begin_hunk_2
  %i.l = zext i8 %i.k to i32
  %i.m = add nsw i32 %i.l, -48                    ; 2 uses
  %i.n = icmp ult i32 %i.m, 10
  br i1 %i.n, label %3, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

bb.e:                                             ; preds = %.preheader60.i.i.preheader
  %i.o = add i8 %i.k, -48
end_hunk_2
begin_hunk_3
  %spec.select.i.i = select i1 %i.p, i64 513, i64 257
  br label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

3:                                                ; preds = %bb.d
  %4 = add i32 %i.m, %i.i                         ; 3 uses
  %5 = icmp ult i32 %4, %i.i
  br i1 %5, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader60.i.i, !prof !20

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %6 = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !137, !noundef !12
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -48                        ; 3 uses
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %10, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

10:                                               ; preds = %.lr.ph.i.i
  %.not56.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not56.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %12 = load i8, ptr %11, align 1, !alias.scope !137, !noundef !12
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, -48                      ; 2 uses
  %15 = icmp ult i32 %14, 10
  br i1 %15, label %16, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

16:                                               ; preds = %.lr.ph.i.i.1
  %17 = mul nuw nsw i32 %8, 10
  %18 = add nuw nsw i32 %14, %17                  ; 2 uses
  %.not56.i.i.1 = icmp eq i64 %.sroa.15.0.i.i, 2
  br i1 %.not56.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  %20 = load i8, ptr %19, align 1, !alias.scope !137, !noundef !12
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, -48                      ; 2 uses
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %24, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

24:                                               ; preds = %.lr.ph.i.i.2
  %25 = mul nuw nsw i32 %18, 10
  %26 = add nuw nsw i32 %22, %25                  ; 2 uses
  %.not56.i.i.2 = icmp eq i64 %.sroa.15.0.i.i, 3
  br i1 %.not56.i.i.2, label %.loopexit.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3
  %28 = load i8, ptr %27, align 1, !alias.scope !137, !noundef !12
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, -48                      ; 2 uses
  %31 = icmp ult i32 %30, 10
  br i1 %31, label %32, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

32:                                               ; preds = %.lr.ph.i.i.3
  %33 = mul nuw nsw i32 %26, 10
  %34 = add nuw nsw i32 %30, %33                  ; 2 uses
  %.not56.i.i.3 = icmp eq i64 %.sroa.15.0.i.i, 4
  br i1 %.not56.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  %36 = load i8, ptr %35, align 1, !alias.scope !137, !noundef !12
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, -48                      ; 2 uses
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

40:                                               ; preds = %.lr.ph.i.i.4
  %41 = mul i32 %34, 10
  %42 = add i32 %38, %41                          ; 2 uses
  %.not56.i.i.4 = icmp eq i64 %.sroa.15.0.i.i, 5
  br i1 %.not56.i.i.4, label %.loopexit.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %40
  %43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 5
  %44 = load i8, ptr %43, align 1, !alias.scope !137, !noundef !12
  %45 = zext i8 %44 to i32
  %i.q = add nsw i32 %45, -48                     ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %46, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

46:                                               ; preds = %.lr.ph.i.i.5
  %47 = mul i32 %42, 10
  %48 = add i32 %i.q, %47                         ; 2 uses
  %.not56.i.i.5 = icmp eq i64 %.sroa.15.0.i.i, 6
  br i1 %.not56.i.i.5, label %.loopexit.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %46
  %49 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 6
  %i.s = load i8, ptr %49, align 1, !alias.scope !137, !noundef !12
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %50, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

50:                                               ; preds = %.lr.ph.i.i.6
  %51 = mul i32 %48, 10
  %52 = add i32 %i.u, %51                         ; 2 uses
  %.not56.i.i.6 = icmp eq i64 %.sroa.15.0.i.i, 7
  br i1 %.not56.i.i.6, label %.loopexit.i.i, label %.lr.ph.i.i.7

.lr.ph.i.i.7:                                     ; preds = %50
  %53 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 7
  %54 = load i8, ptr %53, align 1, !alias.scope !137, !noundef !12
  %55 = zext i8 %54 to i32
  %i.w = add nsw i32 %55, -48                     ; 2 uses
  %56 = icmp ult i32 %i.w, 10
  br i1 %56, label %57, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

57:                                               ; preds = %.lr.ph.i.i.7
  %58 = mul i32 %52, 10
  %59 = add i32 %i.w, %58
  br label %.loopexit.i.i

_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %bb.d, %3, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %.lr.ph.i.i.3, %.lr.ph.i.i.4, %.lr.ph.i.i.5, %.lr.ph.i.i.6, %.lr.ph.i.i.7, %bb.a, %bb.b, %bb.b, %.loopexit.i.i, %bb.e
  %.sroa.8.0.insert.insert.i.i = phi i64 [ 257, %.lr.ph.i.i ], [ %i.e, %.loopexit.i.i ], [ 257, %bb.b ], [ 1, %bb.a ], [ 257, %bb.b ], [ %spec.select.i.i, %bb.e ], [ 257, %.lr.ph.i.i.7 ], [ 257, %.lr.ph.i.i.6 ], [ 257, %.lr.ph.i.i.5 ], [ 257, %.lr.ph.i.i.4 ], [ 257, %.lr.ph.i.i.3 ], [ 257, %.lr.ph.i.i.2 ], [ 257, %.lr.ph.i.i.1 ], [ 257, %bb.d ], [ 513, %3 ] ; 2 uses
  %i.x = trunc i64 %.sroa.8.0.insert.insert.i.i to i1
  %i.y = icmp ne i64 %1, 10
  %or.cond.not = or i1 %i.y, %i.x
end_hunk_3
begin_hunk_4
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partyECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  switch i64 %1, label %thread-pre-split.i.i [
    i64 0, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !142, !noalias !147, !noundef !12 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !142, !noalias !147
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i.i, %bb.b
  %2 = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.a, %bb.b ]
  %cond.i.i = icmp eq i8 %2, 43                   ; 2 uses
  %i.b = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %1, %i.b          ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.c = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.c, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.c
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i6, i64 1
end_hunk_4
begin_hunk_5
  %or.cond = select i1 %i.l, i1 true, i1 %i.o, !prof !150
  br i1 %or.cond, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader56.i.i, !prof !150

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.sroa.0.269.i.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.u, %bb.e ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %.preheader.i.i ]
  %i.p = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !142, !noalias !147, !noundef !12
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
end_hunk_5
begin_hunk_6
  %.not53.i.i = icmp eq i64 %i.u, 0
  br i1 %.not53.i.i, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.lr.ph.i.i

_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit: ; preds = %.preheader56.i.i.preheader, %bb.d, %.preheader56.i.i, %.lr.ph.i.i, %bb.e, %.preheader.i.i, %bb.b, %bb.b, %bb.a
  %.sroa.103.0 = phi i64 [ undef, %bb.b ], [ 0, %.preheader.i.i ], [ undef, %bb.a ], [ undef, %bb.b ], [ undef, %.lr.ph.i.i ], [ %i.x, %bb.e ], [ undef, %bb.d ], [ %i.n, %.preheader56.i.i ], [ undef, %.preheader56.i.i.preheader ]
  %.sink.i.i.not = phi i1 [ false, %bb.b ], [ true, %.preheader.i.i ], [ false, %bb.a ], [ false, %bb.b ], [ %i.s, %.lr.ph.i.i ], [ %i.s, %bb.e ], [ false, %bb.d ], [ true, %.preheader56.i.i ], [ false, %.preheader56.i.i.preheader ]
  %i.y = icmp eq i64 %1, 20
  %or.cond.not.not = and i1 %i.y, %.sink.i.i.not  ; 2 uses
  %.sroa.3.0 = select i1 %or.cond.not.not, i64 %.sroa.103.0, i64 undef
end_hunk_6
begin_hunk_7
  %i.be = invoke { ptr, i64 } @_RINvMNtCsbvkFyIu7lgC_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %.sroa.4.1.i)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit156:                                     ; preds = %.preheader57.i.preheader, %bb.ab, %.lr.ph.preheader.i, %.lr.ph.i, %bb.y, %bb.y, %bb.x
  %i.bf = invoke fastcc noundef nonnull align 8 ptr @_RNCINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.bg = extractvalue { ptr, i64 } %i.be, 0      ; 3 uses
  %i.bh = extractvalue { ptr, i64 } %i.be, 1      ; 2 uses
  switch i64 %i.bh, label %thread-pre-split.i [
    i64 0, label %.loopexit156
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.bi = load i8, ptr %i.bg, align 1, !alias.scope !163, !noundef !12 ; 2 uses
  switch i8 %i.bi, label %bb.z [
    i8 43, label %.loopexit156
    i8 45, label %.loopexit156
  ]

thread-pre-split.i:                               ; preds = %bb.x
  %.pr.i = load i8, ptr %i.bg, align 1, !alias.scope !163
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split.i, %bb.y
  %2 = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.bi, %bb.y ]
  %cond.i = icmp eq i8 %2, 43                     ; 2 uses
  %i.bj = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.bh, %i.bj        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i66 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.bk = icmp samesign ult i64 %.sroa.15.0.i, 3
  br i1 %i.bk, label %.preheader.i, label %.preheader57.i.preheader

.preheader.i:                                     ; preds = %bb.z
  %.not5462.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5462.i, label %.loopexit157, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %3 = load i8, ptr %.sroa.0.0.i66, align 1, !alias.scope !163, !noundef !12
  %i.bl = zext i8 %3 to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ugt i32 %i.bm, 9
  br i1 %i.bn, label %.loopexit156, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.preheader.i
  %i.bo = icmp eq i64 %.sroa.15.0.i, 1
  %i.bp = trunc nuw nsw i32 %i.bm to i8           ; 2 uses
  br i1 %i.bo, label %.loopexit157, label %.lr.ph.i

.preheader57.i:                                   ; preds = %bb.ab
end_hunk_7
begin_hunk_8
  %i.ci = add nuw nsw i8 %i.cg, %i.ch
  br label %.loopexit157

.loopexit157:                                     ; preds = %.preheader57.i, %bb.aa, %.loopexit157.loopexit.loopexit, %.preheader.i
  %.sroa.8.0.i = phi i8 [ 0, %.preheader.i ], [ %i.ci, %.loopexit157.loopexit.loopexit ], [ %i.bp, %bb.aa ], [ %i.ca, %.preheader57.i ]
  br i1 %i.bd, label %.thread143, label %bb.ac

bb.ac:                                            ; preds = %.loopexit157
end_hunk_8
begin_hunk_9
  %i.de = invoke { ptr, i64 } @_RINvMNtCsbvkFyIu7lgC_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i88.ph, i64 noundef %.sroa.4.1.i87.ph)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.thread143:                                       ; preds = %.preheader57.i110.preheader, %bb.am, %.lr.ph.preheader.i118, %.lr.ph.i119, %.loopexit157, %bb.ai, %bb.aj, %bb.aj
  %i.df = invoke fastcc noundef nonnull align 8 ptr @_RNCINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEs1_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i93
  %i.dg = extractvalue { ptr, i64 } %i.de, 0      ; 3 uses
  %i.dh = extractvalue { ptr, i64 } %i.de, 1      ; 2 uses
  switch i64 %i.dh, label %thread-pre-split.i123 [
    i64 0, label %.thread143
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.di = load i8, ptr %i.dg, align 1, !alias.scope !175, !noundef !12 ; 2 uses
  switch i8 %i.di, label %bb.ak [
    i8 43, label %.thread143
    i8 45, label %.thread143
  ]

thread-pre-split.i123:                            ; preds = %bb.ai
  %.pr.i124 = load i8, ptr %i.dg, align 1, !alias.scope !175
  br label %bb.ak

bb.ak:                                            ; preds = %thread-pre-split.i123, %bb.aj
  %4 = phi i8 [ %.pr.i124, %thread-pre-split.i123 ], [ %i.di, %bb.aj ]
  %cond.i106 = icmp eq i8 %4, 43                  ; 2 uses
  %i.dj = sext i1 %cond.i106 to i64
  %.sroa.15.0.i107 = add nsw i64 %i.dh, %i.dj     ; 4 uses
  %.sroa.0.0.idx.i108 = zext i1 %cond.i106 to i64
  %.sroa.0.0.i109 = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.0.0.idx.i108 ; 3 uses
  %i.dk = icmp samesign ult i64 %.sroa.15.0.i107, 3
  br i1 %i.dk, label %.preheader.i116, label %.preheader57.i110.preheader

.preheader.i116:                                  ; preds = %bb.ak
  %.not5462.i117 = icmp eq i64 %.sroa.15.0.i107, 0
  br i1 %.not5462.i117, label %.loopexit, label %.lr.ph.preheader.i118

.lr.ph.preheader.i118:                            ; preds = %.preheader.i116
  %5 = load i8, ptr %.sroa.0.0.i109, align 1, !alias.scope !175, !noundef !12
  %i.dl = zext i8 %5 to i32
  %i.dm = add nsw i32 %i.dl, -48                  ; 2 uses
  %i.dn = icmp ugt i32 %i.dm, 9
  br i1 %i.dn, label %.thread143, label %bb.al

bb.al:                                            ; preds = %.lr.ph.preheader.i118
  %i.do = icmp eq i64 %.sroa.15.0.i107, 1
  %i.dp = trunc nuw nsw i32 %i.dm to i8           ; 2 uses
  br i1 %i.do, label %.loopexit, label %.lr.ph.i119

.preheader57.i110:                                ; preds = %bb.am
end_hunk_9
begin_hunk_10
  %i.ei = add nuw nsw i8 %i.eg, %i.eh
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader57.i110, %bb.al, %.loopexit.loopexit.loopexit, %.preheader.i116
  %.sroa.8.0.i104 = phi i8 [ 0, %.preheader.i116 ], [ %i.ei, %.loopexit.loopexit.loopexit ], [ %i.dp, %bb.al ], [ %i.ea, %.preheader57.i110 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsv_NtCs8ulvy0Wg6Ot_12delta_kernel6schemaNtB5_11DecimalType7try_new(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.c, i8 noundef %.sroa.8.0.i, i8 noundef %.sroa.8.0.i104)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp
end_hunk_10
begin_hunk_11
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b

.lr.ph.split.preheader.i.i:                       ; preds = %bb.o
  %i.aj = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 6 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.w, %.lr.ph.split.preheader.i.i
end_hunk_11
begin_hunk_12
  %.sroa.17.0 = phi i8 [ 0, %bb.x ], [ 1, %bb.w ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.az, %bb.x ], [ 0, %bb.w ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.bb, %bb.x ], [ %i.ae, %bb.w ], [ %i.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.be = load i8, ptr %i.aj, align 1, !alias.scope !3955, !noalias !3958, !noundef !12 ; 2 uses
  switch i8 %i.be, label %bb.z [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.pr.i = load i8, ptr %i.aj, align 1, !alias.scope !3955, !noalias !3958
  br label %bb.z

bb.z:                                             ; preds = %thread-pre-split.i, %bb.y
  %2 = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.be, %bb.y ]
  %cond.i = icmp eq i8 %2, 43                     ; 2 uses
  %i.bf = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.4.1.i, %i.bf ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.bg = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.bg, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.z
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i153246, i64 1
end_hunk_12
begin_hunk_13
  %or.cond190 = select i1 %i.bp, i1 true, i1 %i.bs, !prof !150
  br i1 %or.cond190, label %.loopexit, label %.preheader56.i, !prof !150

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ab
  %.sroa.0.269.i = phi ptr [ %i.bz, %bb.ab ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.by, %bb.ab ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.cb, %bb.ab ], [ 0, %.preheader.i ]
  %i.bt = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !3955, !noalias !3958, !noundef !12
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
end_hunk_13
begin_hunk_14
  %.not53.i = icmp eq i64 %i.by, 0
  br i1 %.not53.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.ab, %.preheader.i
  %.sroa.11163.0 = phi i64 [ %i.cb, %bb.ab ], [ 0, %.preheader.i ], [ %i.br, %.preheader56.i ]
  %i.cc = icmp eq i64 %.sroa.4.1.i, 20
  br i1 %i.cc, label %bb.ac, label %.loopexit

end_hunk_14
begin_hunk_15

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !8317, !nonnull !12, !noundef !12 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noalias !8317, !noundef !12 ; 6 uses
  br label %.lr.ph.split.i.i.i.i
end_hunk_15
begin_hunk_16

_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.split.loop.exit.i
  %.sroa.4.1.i.i.i = phi i64 [ %spec.select, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.split.loop.exit.i ], [ %i.dc, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i.i.i ], [ %i.dc, %bb.ae ] ; 2 uses
  switch i64 %.sroa.4.1.i.i.i, label %thread-pre-split.i.i.i [
    i64 0, label %.critedge441.i
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %i.dw = load i8, ptr %i.da, align 1, !alias.scope !8334, !noalias !8317, !noundef !12 ; 2 uses
  switch i8 %i.dw, label %bb.ah [
    i8 43, label %.critedge441.i
    i8 45, label %.critedge441.i
  ]

thread-pre-split.i.i.i:                           ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.pr.i.i.i = load i8, ptr %i.da, align 1, !alias.scope !8334, !noalias !8317
  br label %bb.ah

bb.ah:                                            ; preds = %thread-pre-split.i.i.i, %bb.ag
  %5 = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.dw, %bb.ag ]
  %cond.i.i.i = icmp eq i8 %5, 43                 ; 2 uses
  %i.dx = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %.sroa.4.1.i.i.i, %i.dx ; 10 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.0.0.idx.i.i.i ; 9 uses
  %i.dy = icmp samesign ult i64 %.sroa.15.0.i.i.i, 9
  br i1 %i.dy, label %.preheader.i.i.i, label %.preheader60.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.ah
  %.not5668.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5668.i.i.i, label %.critedge441.i, label %.lr.ph.i.i.i

.preheader60.i.i.i:                               ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i15.i.i74, i64 1
end_hunk_16
begin_hunk_17
  %.not55.i.i.i = icmp eq i64 %i.ea, 0
  br i1 %.not55.i.i.i, label %.loopexit.i.i.i, label %.preheader60.i.i.i.preheader

.loopexit.i.i.i:                                  ; preds = %.preheader60.i.i.i, %10, %16, %24, %32, %40, %48, %52, %59
  %.sroa.045.1.i.i.i = phi i32 [ %61, %59 ], [ %8, %10 ], [ %18, %16 ], [ %26, %24 ], [ %34, %32 ], [ %42, %40 ], [ %50, %48 ], [ %54, %52 ], [ %i.ej, %.preheader60.i.i.i ]
  %i.eb = icmp eq i32 %.sroa.045.1.i.i.i, 52
  br i1 %i.eb, label %bb.ak, label %.critedge441.i

end_hunk_17
begin_hunk_18
  %or.cond.i = select i1 %i.ei, i1 true, i1 %i.ek, !prof !150
  br i1 %or.cond.i, label %.critedge441.i, label %.preheader60.i.i.i, !prof !150

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %6 = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -48                        ; 3 uses
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %10, label %.critedge441.i

10:                                               ; preds = %.lr.ph.i.i.i
  %.not56.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 1
  br i1 %.not56.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %12 = load i8, ptr %11, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %13, -48                      ; 2 uses
  %15 = icmp ult i32 %14, 10
  br i1 %15, label %16, label %.critedge441.i

16:                                               ; preds = %.lr.ph.i.i.i.1
  %17 = mul nuw nsw i32 %8, 10
  %18 = add nuw nsw i32 %14, %17                  ; 2 uses
  %.not56.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i, 2
  br i1 %.not56.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %16
  %19 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %20 = load i8, ptr %19, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, -48                      ; 2 uses
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %24, label %.critedge441.i

24:                                               ; preds = %.lr.ph.i.i.i.2
  %25 = mul nuw nsw i32 %18, 10
  %26 = add nuw nsw i32 %22, %25                  ; 2 uses
  %.not56.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i, 3
  br i1 %.not56.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %24
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %28 = load i8, ptr %27, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %29, -48                      ; 2 uses
  %31 = icmp ult i32 %30, 10
  br i1 %31, label %32, label %.critedge441.i

32:                                               ; preds = %.lr.ph.i.i.i.3
  %33 = mul nuw nsw i32 %26, 10
  %34 = add nuw nsw i32 %30, %33                  ; 2 uses
  %.not56.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i, 4
  br i1 %.not56.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %36 = load i8, ptr %35, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %37, -48                      ; 2 uses
  %39 = icmp ult i32 %38, 10
  br i1 %39, label %40, label %.critedge441.i

40:                                               ; preds = %.lr.ph.i.i.i.4
  %41 = mul i32 %34, 10
  %42 = add i32 %38, %41                          ; 2 uses
  %.not56.i.i.i.4 = icmp eq i64 %.sroa.15.0.i.i.i, 5
  br i1 %.not56.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %40
  %43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %44 = load i8, ptr %43, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, -48                      ; 2 uses
  %47 = icmp ult i32 %46, 10
  br i1 %47, label %48, label %.critedge441.i

48:                                               ; preds = %.lr.ph.i.i.i.5
  %49 = mul i32 %42, 10
  %50 = add i32 %46, %49                          ; 2 uses
  %.not56.i.i.i.5 = icmp eq i64 %.sroa.15.0.i.i.i, 6
  br i1 %.not56.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.6

.lr.ph.i.i.i.6:                                   ; preds = %48
  %51 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.el = load i8, ptr %51, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.em, -48                  ; 2 uses
  %i.eo = icmp ult i32 %i.en, 10
  br i1 %i.eo, label %52, label %.critedge441.i

52:                                               ; preds = %.lr.ph.i.i.i.6
  %53 = mul i32 %50, 10
  %54 = add i32 %i.en, %53                        ; 2 uses
  %.not56.i.i.i.6 = icmp eq i64 %.sroa.15.0.i.i.i, 7
  br i1 %.not56.i.i.i.6, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.7

.lr.ph.i.i.i.7:                                   ; preds = %52
  %55 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 7
  %56 = load i8, ptr %55, align 1, !alias.scope !8334, !noalias !8317, !noundef !12
  %57 = zext i8 %56 to i32
  %i.ep = add nsw i32 %57, -48                    ; 2 uses
  %58 = icmp ult i32 %i.ep, 10
  br i1 %58, label %59, label %.critedge441.i

59:                                               ; preds = %.lr.ph.i.i.i.7
  %60 = mul i32 %54, 10
  %61 = add i32 %i.ep, %60
  br label %.loopexit.i.i.i

.thread347.loopexit.i:                            ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
end_hunk_18
begin_hunk_19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !8317
  br label %bb.gc

.critedge441.i:                                   ; preds = %bb.ai, %.preheader60.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.lr.ph.i.i.i.3, %.lr.ph.i.i.i.4, %.lr.ph.i.i.i.5, %.lr.ph.i.i.i.6, %.lr.ph.i.i.i.7, %.loopexit.i.i.i, %.preheader.i.i.i, %bb.ag, %bb.ag, %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %.sroa.03.0.copyload.pr.i = load i64, ptr %i.bm, align 8, !noalias !8317 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !8317
  %.not145.i = icmp eq i64 %.sroa.03.0.copyload.pr.i, -9223372036854775808
end_hunk_19
