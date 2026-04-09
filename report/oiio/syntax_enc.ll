inline.NumInlined: 35
inline.NumDeleted: 19
begin_hunk_0_@VP8EncWrite:bb.a
  %i.dx = load i32, ptr %i.z, align 8, !tbaa !34
  %i.dy = zext i32 %i.dx to i64
  %i.dz = add i64 %i.dw, %i.dy
  %1 = shl i64 %i.dz, 3
  %i.ea = load i32, ptr %i.v, align 4, !tbaa !32
  %i.eb = add nsw i32 %i.ea, 8
  %i.ec = sext i32 %i.eb to i64
end_hunk_0
begin_hunk_1_@VP8EncWrite:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dv, i64 36
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !3
  %reass.sub = sub i64 %i.ec, %i.ei
  %i.ep = add i64 %reass.sub, %1
  %2 = add i64 %i.ep, 7
  %3 = lshr i64 %2, 3
  %i.eq = trunc i64 %3 to i32
  %i.er = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !3
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 552
end_hunk_1
begin_hunk_2_@VP8EncWrite:bb.a

GeneratePartition0.exit.thread:                   ; preds = %bb.m, %GeneratePartition0.exit
  %.val91 = load i64, ptr %i.x, align 8, !tbaa !33 ; 4 uses
  %i.ey = load i32, ptr %i.l, align 4, !tbaa !7   ; 4 uses
  %i.ez = mul i32 %i.ey, 3
  %i.fa = add i32 %i.ez, -3
  %i.fb = sext i32 %i.fa to i64
  %4 = add i64 %.val91, %i.fb
  %i.fc = add i64 %4, 10                          ; 3 uses
  %i.fd = icmp sgt i32 %i.ey, 0
  br i1 %i.fd, label %.lr.ph.preheader, label %._crit_edge

end_hunk_2
begin_hunk_3_@VP8EncWrite:bb.a
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !55 ; 2 uses
  %i.fz = and i32 %i.fy, 1
  %i.ga = add i32 %i.fy, %i.fz
  %i.gb = add i32 %i.ga, 8
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add i64 %spec.select, %i.gc
  br label %bb.o
end_hunk_3
