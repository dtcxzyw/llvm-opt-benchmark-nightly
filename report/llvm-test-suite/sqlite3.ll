inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@zeroPage:bb.a
  store i8 %i.o, ptr %i.i, align 1, !tbaa !37
  %i.p = lshr i32 %1, 1
  %i.q = and i32 %i.p, 4
  %reass.sub = sub nsw i32 %i.g, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i32 0, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 7
end_hunk_0
begin_hunk_1_@zeroPage:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  store i8 %i.y, ptr %i.z, align 1, !tbaa !37
  %i.aa = load i16, ptr %i.j, align 2, !tbaa !831
  %i.ab = trunc nsw i32 %reass.sub to i16
  %2 = add nsw i16 %i.ab, 12                      ; 2 uses
  %i.ac = sub i16 %i.aa, %2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !834
  %i.ae = and i32 %1, 5
end_hunk_1
begin_hunk_2_@zeroPage:bb.a
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !813
  store i8 %i.f, ptr %i.e, align 8, !tbaa !803
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %2, ptr %i.ba, align 2, !tbaa !809
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %i.bb, align 2, !tbaa !830
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_2
begin_hunk_3_@balance_nonroot:bb.a
  %i.uq = phi i1 [ false, %._crit_edge658.thread ], [ %i.to, %._crit_edge658 ]
  %i.ur = lshr i32 %i.uo, 1
  %i.us = and i32 %i.ur, 4
  %i.ut = and i32 %i.uo, 5
  %i.uu = icmp ne i32 %i.ut, 0
  %i.uv = zext i1 %i.uu to i8
end_hunk_3
begin_hunk_4_@balance_nonroot:bb.a
  %i.wp = sext i32 %i.wo to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.wk, i8 0, i64 %i.wp, i1 false)
  store i8 %i.up, ptr %i.wk, align 1, !tbaa !37
  %reass.sub.i = sub nsw i32 %i.wi, %i.us
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store i32 0, ptr %i.wq, align 1
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wk, i64 7
end_hunk_4
begin_hunk_5_@balance_nonroot:bb.a
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wk, i64 6
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !37
  %i.wz = load i16, ptr %i.wl, align 2, !tbaa !831
  %i.xa = trunc nsw i32 %reass.sub.i to i16
  %5 = add nsw i16 %i.xa, 12                      ; 2 uses
  %i.xb = sub i16 %i.wz, %5
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wb, i64 18
  store i16 %i.xb, ptr %i.xc, align 2, !tbaa !834
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wb, i64 3
end_hunk_5
begin_hunk_6_@balance_nonroot:bb.a
  store i8 %i.vd, ptr %i.xn, align 1, !tbaa !813
  store i8 %i.wh, ptr %i.wg, align 8, !tbaa !803
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wb, i64 14
  store i16 %5, ptr %i.xo, align 2, !tbaa !809
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wb, i64 2
  store i8 0, ptr %i.xp, align 2, !tbaa !830
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wb, i64 1
end_hunk_6
begin_hunk_7_@balance_quick:bb.a
  store i8 %i.r, ptr %i.ab, align 1, !tbaa !37
  %i.ah = lshr i32 %i.s, 1
  %i.ai = and i32 %i.ah, 4
  %reass.sub.i = sub nsw i32 %i.z, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i32 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
end_hunk_7
begin_hunk_8_@balance_quick:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !37
  %i.as = load i16, ptr %i.ac, align 2, !tbaa !831
  %i.at = trunc nsw i32 %reass.sub.i to i16
  %4 = add nsw i16 %i.at, 12                      ; 3 uses
  %i.au = sub i16 %i.as, %4
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 18 ; 3 uses
  store i16 %i.au, ptr %i.av, align 2, !tbaa !834
  %i.aw = and i32 %i.s, 5
end_hunk_8
begin_hunk_9_@balance_quick:bb.a
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !813
  store i8 %i.y, ptr %i.x, align 8, !tbaa !803
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  store i16 %4, ptr %i.bs, align 2, !tbaa !809
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i8 0, ptr %i.bt, align 2, !tbaa !830
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 1
end_hunk_9
begin_hunk_10_@balance_quick:bb.a
  %i.cc = load i16, ptr %i.av, align 2, !tbaa !834
  %i.cd = add i16 %i.cc, -2
  store i16 %i.cd, ptr %i.av, align 2, !tbaa !834
  %i.ce = zext nneg i16 %4 to i64
  %i.cf = zext i16 %i.n to i64
  %i.cg = sext i32 %i.cb to i64
  %i.ch = lshr i32 %i.cb, 8
end_hunk_10
