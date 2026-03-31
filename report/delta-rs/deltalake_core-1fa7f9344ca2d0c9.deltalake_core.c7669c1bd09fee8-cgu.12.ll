begin_hunk_0
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc { i32, i32 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partmECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  switch i64 %1, label %thread-pre-split.i.i [
    i64 0, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !1122, !noundef !10 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !1122
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
  br i1 %5, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader60.i.i, !prof !49

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %6 = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !1122, !noundef !10
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -48                        ; 3 uses
  %9 = icmp ult i32 %8, 10
  br i1 %9, label %10, label %_RNvXsA_NtCsbvkFyIu7lgC_4core3nummNtNtNtB7_3str6traits7FromStr8from_str.exit

10:                                               ; preds = %.lr.ph.i.i
  %.not56.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not56.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %12 = load i8, ptr %11, align 1, !alias.scope !1122, !noundef !10
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
  %20 = load i8, ptr %19, align 1, !alias.scope !1122, !noundef !10
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
  %28 = load i8, ptr %27, align 1, !alias.scope !1122, !noundef !10
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
  %36 = load i8, ptr %35, align 1, !alias.scope !1122, !noundef !10
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
  %44 = load i8, ptr %43, align 1, !alias.scope !1122, !noundef !10
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
  %i.s = load i8, ptr %49, align 1, !alias.scope !1122, !noundef !10
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
  %54 = load i8, ptr %53, align 1, !alias.scope !1122, !noundef !10
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
define internal fastcc { i64, i64 } @_RINvNtCs8ulvy0Wg6Ot_12delta_kernel4path15parse_path_partyECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  switch i64 %1, label %thread-pre-split.i.i [
    i64 0, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !1127, !noalias !1132, !noundef !10 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
    i8 45, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit
  ]

thread-pre-split.i.i:                             ; preds = %bb.a
  %.pr.i.i = load i8, ptr %0, align 1, !alias.scope !1127, !noalias !1132
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
  %or.cond = select i1 %i.l, i1 true, i1 %i.o, !prof !1135
  br i1 %or.cond, label %_RNvXsC_NtCsbvkFyIu7lgC_4core3numyNtNtNtB7_3str6traits7FromStr8from_str.exit, label %.preheader56.i.i, !prof !1135

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.sroa.0.269.i.i = phi ptr [ %i.v, %bb.e ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.u, %bb.e ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %.preheader.i.i ]
  %i.p = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !1127, !noalias !1132, !noundef !10
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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

.lr.ph.split.preheader.i.i:                       ; preds = %bb.o
  %i.aj = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 6 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.w, %.lr.ph.split.preheader.i.i
end_hunk_7
begin_hunk_8
  %.sroa.17.0 = phi i8 [ 0, %bb.x ], [ 1, %bb.w ], [ 1, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %i.az, %bb.x ], [ 0, %bb.w ], [ 0, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ]
  %.sroa.4.1.i = phi i64 [ %i.bb, %bb.x ], [ %i.ae, %bb.w ], [ %i.ae, %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i ] ; 3 uses
  switch i64 %.sroa.4.1.i, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %i.be = load i8, ptr %i.aj, align 1, !alias.scope !18272, !noalias !18275, !noundef !10 ; 2 uses
  switch i8 %i.be, label %bb.z [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.pr.i = load i8, ptr %i.aj, align 1, !alias.scope !18272, !noalias !18275
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
end_hunk_8
begin_hunk_9
  %or.cond190 = select i1 %i.bp, i1 true, i1 %i.bs, !prof !1135
  br i1 %or.cond190, label %.loopexit, label %.preheader56.i, !prof !1135

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ab
  %.sroa.0.269.i = phi ptr [ %i.bz, %bb.ab ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.by, %bb.ab ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.cb, %bb.ab ], [ 0, %.preheader.i ]
  %i.bt = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !18272, !noalias !18275, !noundef !10
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
end_hunk_9
begin_hunk_10
  %.not53.i = icmp eq i64 %i.by, 0
  br i1 %.not53.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.ab, %.preheader.i
  %.sroa.11163.0 = phi i64 [ %i.cb, %bb.ab ], [ 0, %.preheader.i ], [ %i.br, %.preheader56.i ]
  %i.cc = icmp eq i64 %.sroa.4.1.i, 20
  br i1 %i.cc, label %bb.ac, label %.loopexit

end_hunk_10
begin_hunk_11
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

.lr.ph.split.preheader.i.i:                       ; preds = %bb.o
  %i.aj = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 6 uses
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
  %i.be = load i8, ptr %i.aj, align 1, !alias.scope !18286, !noalias !18289, !noundef !10 ; 2 uses
  switch i8 %i.be, label %bb.z [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %_RNvXs_NtNtCsbvkFyIu7lgC_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i
  %.pr.i = load i8, ptr %i.aj, align 1, !alias.scope !18286, !noalias !18289
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
  %or.cond190 = select i1 %i.bp, i1 true, i1 %i.bs, !prof !1135
  br i1 %or.cond190, label %.loopexit, label %.preheader56.i, !prof !1135

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.ab
  %.sroa.0.269.i = phi ptr [ %i.bz, %bb.ab ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.by, %bb.ab ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.cb, %bb.ab ], [ 0, %.preheader.i ]
  %i.bt = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !18286, !noalias !18289, !noundef !10
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
