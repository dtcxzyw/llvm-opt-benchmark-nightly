inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@LZWDecode:bb.a
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !52
  %i.dq = zext i8 %i.dp to i64
  %i.dr = icmp eq i64 %.0320, %i.dq
  %4 = icmp ne i8 %i.dn, 0
  %5 = and i1 %4, %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %.0364, i64 12
  %6 = zext i1 %5 to i8
  store i8 %6, ptr %i.ds, align 4, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %.0364, i64 16 ; 4 uses
  %i.du = icmp ugt ptr %i.dt, %.0359
  br i1 %i.du, label %bb.aa, label %bb.ab
end_hunk_0
begin_hunk_1_@LZWDecode:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %.0356, i64 11
  %i.en = load i8, ptr %i.em, align 1, !tbaa !52
  %i.eo = icmp eq i8 %i.en, %i.ej
  %7 = icmp ne i8 %i.el, 0
  %8 = and i1 %7, %i.eo
  %i.ep = getelementptr inbounds nuw i8, ptr %.0364, i64 12
  %9 = zext i1 %8 to i8
  store i8 %9, ptr %i.ep, align 4, !tbaa !53
  store ptr %.0356, ptr %.0364, align 8, !tbaa !55
  %i.eq = getelementptr inbounds nuw i8, ptr %.0364, i64 10
  store i8 %i.ei, ptr %i.eq, align 2, !tbaa !49
end_hunk_1
