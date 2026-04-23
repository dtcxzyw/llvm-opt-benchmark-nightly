inline.NumInlined: 91
inline.NumDeleted: 45
begin_hunk_0_@je_large_ralloc_no_move:bb.a
  %i.cy = add i64 %i.cx, -1
  %i.cz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.cy, i1 true) ; 2 uses
  %i.da = trunc nuw nsw i64 %i.cz to i32
  %i.db = sub nuw nsw i64 60, %i.cz               ; 2 uses
  %i.dc = shl nsw i64 -1, %i.db
  %i.dd = add nsw i64 %3, -1
end_hunk_0
begin_hunk_1_@je_large_ralloc_no_move:bb.a
  %i.df = lshr i64 %i.de, %i.db
  %i.dg = trunc i64 %i.df to i32
  %i.dh = and i32 %i.dg, 3
  %5 = shl nuw nsw i32 %i.da, 2
  %reass.sub = sub nsw i32 %i.dh, %5
  %6 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i = phi i32 [ %i.cv, %bb.r ], [ %6, %bb.t ], [ 235, %bb.s ]
  %i.di = call zeroext i1 @je_pa_shrink(ptr noundef %0, ptr noundef nonnull %i.cn, ptr noundef nonnull %1, i64 noundef %i.cd, i64 noundef %i.cp, i32 noundef %.0.i.i, ptr noundef nonnull %i.a) #11
  br i1 %i.di, label %large_ralloc_no_move_shrink.exit.thread49, label %bb.u

end_hunk_1
begin_hunk_2_@large_ralloc_no_move_expand:bb.a
  %i.u = add i64 %i.t, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.u, i1 true) ; 2 uses
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = sub nuw nsw i64 60, %i.v                 ; 2 uses
  %i.y = shl nsw i64 -1, %i.x
  %i.z = add nsw i64 %2, -1
end_hunk_2
begin_hunk_3_@large_ralloc_no_move_expand:bb.a
  %i.ab = lshr i64 %i.aa, %i.x
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 3
  %4 = shl nuw nsw i32 %i.w, 2
  %reass.sub = sub nsw i32 %i.ad, %4
  %5 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi i32 [ %i.r, %bb.b ], [ %5, %bb.d ], [ 235, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i8 0, ptr %i.a, align 1, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 10648
end_hunk_3
begin_hunk_4_@je_large_ralloc:bb.a
  %i.ai = add i64 %i.ah, -1
  %i.aj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ai, i1 true) ; 2 uses
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = sub nuw nsw i64 60, %i.aj               ; 2 uses
  %i.am = shl nsw i64 -1, %i.al
  %i.an = add nsw i64 %i.h, -1
end_hunk_4
begin_hunk_5_@je_large_ralloc:bb.a
  %i.ap = lshr i64 %i.ao, %i.al
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = and i32 %i.aq, 3
  %12 = shl nuw nsw i32 %i.ak, 2
  %reass.sub = sub nsw i32 %i.ar, %12
  %13 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.j, %bb.h
  %.0.i.i = phi i32 [ %i.af, %bb.h ], [ %13, %bb.j ] ; 4 uses
  %i.as = icmp samesign ult i32 %.0.i.i, 39
  br i1 %i.as, label %bb.k, label %sz_size2index.exit.i.thread, !prof !104

end_hunk_5
begin_hunk_6_@arena_sdalloc_no_tcache:bb.a
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j                 ; 2 uses
  %i.m = shl nsw i64 -1, %i.l
  %i.n = add nsw i64 %2, -1
end_hunk_6
begin_hunk_7_@arena_sdalloc_no_tcache:bb.a
  %i.p = lshr i64 %i.o, %i.l
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 3
  %3 = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.r, %3
  %4 = add nsw i32 %reass.sub, 232
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %4, %bb.d ]
  %i.s = icmp samesign ult i32 %.0.i, 39
  br i1 %i.s, label %bb.e, label %sz_size2index.exit.thread, !prof !134

end_hunk_7
