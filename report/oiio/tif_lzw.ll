inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0_@LZWDecode:bb.a
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !52
  %i.dq = zext i8 %i.dp to i64
  %i.dr = icmp eq i64 %.0320, %i.dq
  %4 = select i1 %i.dr, i8 %i.dn, i8 0
  %i.ds = getelementptr inbounds nuw i8, ptr %.0364, i64 12
  store i8 %4, ptr %i.ds, align 4, !tbaa !53
  %i.dt = getelementptr inbounds nuw i8, ptr %.0364, i64 16 ; 4 uses
  %i.du = icmp ugt ptr %i.dt, %.0359
  br i1 %i.du, label %bb.aa, label %bb.ab
end_hunk_0
begin_hunk_1_@LZWDecode:bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %.0356, i64 11
  %i.en = load i8, ptr %i.em, align 1, !tbaa !52
  %i.eo = icmp eq i8 %i.en, %i.ej
  %5 = select i1 %i.eo, i8 %i.el, i8 0
  %i.ep = getelementptr inbounds nuw i8, ptr %.0364, i64 12
  store i8 %5, ptr %i.ep, align 4, !tbaa !53
  store ptr %.0356, ptr %.0364, align 8, !tbaa !55
  %i.eq = getelementptr inbounds nuw i8, ptr %.0364, i64 10
  store i8 %i.ei, ptr %i.eq, align 2, !tbaa !49
end_hunk_1
