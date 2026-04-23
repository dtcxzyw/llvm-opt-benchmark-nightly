inline.NumInlined: 2
begin_hunk_0_@solve:bb.a
  store i64 1, ptr @msecs, align 8, !tbaa !8
  %i.a = load i32, ptr @plycnt, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1                          ; 2 uses
  %0 = xor i32 %i.b, 1
  %1 = shl nuw nsw i32 1, %0                      ; 14 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @height, i64 4), align 4, !tbaa !4 ; 2 uses
  %i.d = icmp slt i32 %i.c, 7
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef 1, i32 noundef %i.c, i32 noundef %1) #6
  %.not23 = icmp eq i32 %i.e, 0
  br i1 %.not23, label %bb.c, label %bb.d

end_hunk_0
begin_hunk_1_@solve:bb.a
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [4 x i8], ptr @colthr, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = icmp eq i32 %i.i, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.c, %bb.b
end_hunk_1
begin_hunk_2_@solve:bb.a
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef 2, i32 noundef %i.l, i32 noundef %1) #6
  %.not23.1 = icmp eq i32 %i.n, 0
  br i1 %.not23.1, label %bb.g, label %bb.d

end_hunk_2
begin_hunk_3_@solve:bb.a
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr @colthr, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = icmp eq i32 %i.r, %1
  br i1 %i.s, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
end_hunk_3
begin_hunk_4_@solve:bb.a
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef 3, i32 noundef %i.t, i32 noundef %1) #6
  %.not23.2 = icmp eq i32 %i.v, 0
  br i1 %.not23.2, label %bb.j, label %bb.d

end_hunk_4
begin_hunk_5_@solve:bb.a
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr @colthr, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = icmp eq i32 %i.z, %1
  br i1 %i.aa, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
end_hunk_5
begin_hunk_6_@solve:bb.a
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef 4, i32 noundef %i.ab, i32 noundef %1) #6
  %.not23.3 = icmp eq i32 %i.ad, 0
  br i1 %.not23.3, label %bb.m, label %bb.d

end_hunk_6
begin_hunk_7_@solve:bb.a
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr @colthr, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = icmp eq i32 %i.ah, %1
  br i1 %i.ai, label %bb.d, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
end_hunk_7
begin_hunk_8_@solve:bb.a
  br i1 %i.ak, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.al = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef 5, i32 noundef %i.aj, i32 noundef %1) #6
  %.not23.4 = icmp eq i32 %i.al, 0
  br i1 %.not23.4, label %bb.p, label %bb.d

end_hunk_8
begin_hunk_9_@solve:bb.a
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @colthr, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = icmp eq i32 %i.ap, %1
  br i1 %i.aq, label %bb.d, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
end_hunk_9
begin_hunk_10_@solve:bb.a
  br i1 %i.as, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.at = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef 6, i32 noundef %i.ar, i32 noundef %1) #6
  %.not23.5 = icmp eq i32 %i.at, 0
  br i1 %.not23.5, label %bb.s, label %bb.d

end_hunk_10
begin_hunk_11_@solve:bb.a
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @colthr, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp eq i32 %i.ax, %1
  br i1 %i.ay, label %bb.d, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
end_hunk_11
begin_hunk_12_@solve:bb.a
  br i1 %i.ba, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef 7, i32 noundef %i.az, i32 noundef %1) #6
  %.not23.6 = icmp eq i32 %i.bb, 0
  br i1 %.not23.6, label %bb.v, label %bb.d

end_hunk_12
begin_hunk_13_@solve:bb.a
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr @colthr, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = icmp eq i32 %i.bf, %1
  br i1 %i.bg, label %bb.d, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
end_hunk_13
