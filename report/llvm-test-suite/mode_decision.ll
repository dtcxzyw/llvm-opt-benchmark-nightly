inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@init_enc_mb_params:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 70 ; 4 uses
  store i16 %i.u, ptr %i.w, align 2, !tbaa !14
  %i.x = icmp ne i32 %i.t, 2
  %i.y = zext i1 %i.x to i16                      ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 62 ; 3 uses
  store i16 %i.y, ptr %i.z, align 2, !tbaa !14
end_hunk_0
begin_hunk_1_@init_enc_mb_params:bb.a
  store <4 x i16> %i.ak, ptr %i.ah, align 2, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 4036
  %i.am = load i32, ptr %i.al, align 4, !tbaa !72
  %.not137 = icmp eq i32 %i.am, 0
  %spec.select = select i1 %.not137, i16 0, i16 %i.y ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  store i16 %spec.select, ptr %i.an, align 2, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 4040
end_hunk_1
begin_hunk_2_@init_enc_mb_params:bb.a
  %i.at = select i1 %.not139, i16 0, i16 %i.y     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 58 ; 3 uses
  store i16 %i.at, ptr %i.au, align 2, !tbaa !14
  %.not141 = trunc nuw i16 %spec.select to i1
  %i.av = extractelement <4 x i1> %i.aj, i64 3
  %or.cond180.not = select i1 %i.av, i1 true, i1 %.not141
  br i1 %or.cond180.not, label %bb.f, label %bb.e
end_hunk_2
