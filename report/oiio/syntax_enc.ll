begin_hunk_0_@VP8EncWrite:bb.a
  store i32 %i.gm, ptr %i.gl, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 96 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !64
  %i.gp = call i32 %i.go(ptr noundef nonnull %i.h, i64 noundef 12, ptr noundef %i.gk) #5
  %.not.i.not.i = icmp eq i32 %i.gp, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br i1 %.not.i.not.i, label %PutWebPHeaders.exit, label %bb.r
end_hunk_0
begin_hunk_1_@VP8EncWrite:bb.a
  store i32 16, ptr %i.gr, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.gt = getelementptr inbounds nuw i8, ptr %.val32.i, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !65
  %i.gv = add nsw i32 %i.gu, -1                   ; 2 uses
  %i.gw = trunc i32 %i.gv to i16
  store i16 %i.gw, ptr %i.gs, align 4
end_hunk_1
begin_hunk_2_@VP8EncWrite:bb.a
  store i8 %i.gy, ptr %i.gz, align 2, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.hb = getelementptr inbounds nuw i8, ptr %.val32.i, i64 12
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !66
  %i.hd = add nsw i32 %i.hc, -1                   ; 2 uses
  %i.he = trunc i32 %i.hd to i16
  store i16 %i.he, ptr %i.ha, align 1
end_hunk_2
begin_hunk_3_@VP8EncWrite:bb.a
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !41
  %i.hi = getelementptr inbounds nuw i8, ptr %.val32.i, i64 96
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !64
  %i.hk = call i32 %i.hj(ptr noundef nonnull %i.g, i64 noundef 18, ptr noundef %.val32.i) #5
  %.not9.i.not.i = icmp eq i32 %i.hk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br i1 %.not9.i.not.i, label %PutWebPHeaders.exit, label %thread-pre-split.i
end_hunk_3
begin_hunk_4_@VP8EncWrite:bb.a
  store i32 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 96 ; 3 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !64
  %i.hs = call i32 %i.hr(ptr noundef nonnull %i.f, i64 noundef 8, ptr noundef %i.hm) #5
  %.not.i35.i = icmp eq i32 %i.hs, 0
  br i1 %.not.i35.i, label %PutAlphaChunk.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ht = load ptr, ptr %i.hq, align 8, !tbaa !64
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !67
  %i.hw = load i32, ptr %i.ho, align 8, !tbaa !55
  %i.hx = zext i32 %i.hw to i64
  %i.hy = call i32 %i.ht(ptr noundef %i.hv, i64 noundef %i.hx, ptr noundef nonnull %i.hm) #5
  %.not10.i.i = icmp eq i32 %i.hy, 0
  br i1 %.not10.i.i, label %PutAlphaChunk.exit.thread.i, label %bb.v

end_hunk_4
begin_hunk_5_@VP8EncWrite:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store i8 0, ptr %i.e, align 1
  %i.ib = load ptr, ptr %i.hq, align 8, !tbaa !64
  %i.ic = call i32 %i.ib(ptr noundef nonnull %i.e, i64 noundef 1, ptr noundef nonnull %i.hm) #5
  %.not13.i.i = icmp eq i32 %i.ic, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br i1 %.not13.i.i, label %PutAlphaChunk.exit.thread.i, label %PutAlphaChunk.exit.i
end_hunk_5
begin_hunk_6_@VP8EncWrite:bb.a
  %i.ie = trunc i64 %i.fy to i32
  store i32 %i.ie, ptr %i.id, align 4
  %i.if = load ptr, ptr %i.gn, align 8, !tbaa !64
  %i.ig = call i32 %i.if(ptr noundef nonnull %i.d, i64 noundef 8, ptr noundef nonnull %i.gk) #5
  %.not.i36.not.i = icmp eq i32 %i.ig, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br i1 %.not.i36.not.i, label %PutWebPHeaders.exit, label %bb.x

bb.x:                                             ; preds = %.critedge.i
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.ij = icmp ugt i64 %.val91, 524287
  br i1 %i.ij, label %PutVP8FrameHeader.exit.thread.i, label %bb.y
end_hunk_6
begin_hunk_7_@VP8EncWrite:bb.a
  %i.iz = trunc <2 x i32> %i.iy to <2 x i16>
  store <2 x i16> %i.iz, ptr %i.ix, align 1
  %i.ja = load ptr, ptr %i.gn, align 8, !tbaa !64
  %i.jb = call i32 %i.ja(ptr noundef nonnull %i.c, i64 noundef 10, ptr noundef nonnull %i.gk) #5
  %.not.i38.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i38.i, label %PutVP8FrameHeader.exit.thread.i, label %PutWebPHeaders.exit.thread

end_hunk_7
begin_hunk_8_@VP8EncWrite:bb.a
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !41
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !69

._crit_edge.i:                                    ; preds = %bb.ab
  %i.jv = load ptr, ptr %i.jd, align 8, !tbaa !64
  %i.jw = mul nuw nsw i32 %i.jh, 3
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = call i32 %i.jv(ptr noundef nonnull %i.b, i64 noundef %i.jx, ptr noundef %i.j) #5
  %.not22.i = icmp eq i32 %i.jy, 0
  br i1 %.not22.i, label %EmitPartitionsSize.exit.sink.split, label %EmitPartitionsSize.exit

end_hunk_8
begin_hunk_9_@VP8EncWrite:bb.a
  %i.ku = load i32, ptr %i.l, align 4, !tbaa !7
  %i.kv = sext i32 %i.ku to i64
  %i.kw = icmp slt i64 %indvars.iv.next121, %i.kv
  br i1 %i.kw, label %bb.ad, label %._crit_edge115, !llvm.loop !70

._crit_edge115:                                   ; preds = %bb.ai, %bb.ac
  %.074.lcssa = phi i32 [ %i.kc, %bb.ac ], [ %i.kt, %bb.ai ] ; 2 uses
end_hunk_9
begin_hunk_10_@VP8EncWrite:bb.a
  store i8 0, ptr %i.a, align 1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !64
  %i.lb = call i32 %i.la(ptr noundef nonnull %i.a, i64 noundef 1, ptr noundef %i.j) #5
  %i.lc = icmp ne i32 %i.lb, 0
  %i.ld = zext i1 %i.lc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
end_hunk_10
begin_hunk_11_@VP8EncWrite:bb.a
  %.2 = phi i32 [ %i.ld, %bb.aj ], [ %.074.lcssa, %._crit_edge115 ]
  %i.le = add i32 %i.gm, 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 23552
  store i32 %i.le, ptr %i.lf, align 8, !tbaa !71
  %.not85 = icmp eq i32 %.2, 0
  br i1 %.not85, label %.thread105, label %bb.al

end_hunk_11
begin_hunk_12_@llvm.assume
!62 = !{!8, !4, i64 540}
!63 = !{!14, !15, i64 16}
!64 = !{!53, !10, i64 96}
!65 = !{!53, !4, i64 8}
!66 = !{!53, !4, i64 12}
!67 = !{!8, !15, i64 544}
!68 = !{!8, !4, i64 44}
!69 = distinct !{!69, !27}
!70 = distinct !{!70, !27}
!71 = !{!8, !4, i64 23552}
end_hunk_12
