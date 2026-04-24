inline.NumInlined: 81
inline.NumDeleted: 23
begin_hunk_0_@cff_face_init:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !113
  %i.u = tail call i32 %i.t(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #21
  %.not379.not = icmp eq i32 %i.u, 0              ; 3 uses
  br i1 %.not379.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@cff_face_init:bb.a
  %.sink584 = phi ptr [ %i.jx, %cff_index_get_sid_string.exit434.thread ], [ %i.jd, %bb.bm ]
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %.sink584, ptr %i.jy, align 8, !tbaa !168
  %spec.select = select i1 %.not379.not, i64 2077, i64 2069
  %spec.select428 = select i1 %.not379.not, i64 2073, i64 2065
  %i.jz = getelementptr inbounds nuw i8, ptr %i.as, i64 1664
  %i.ka = load i8, ptr %i.jz, align 8, !tbaa !169
  %.not408 = icmp eq i8 %i.ka, 0
  %.1342 = select i1 %.not408, i64 %spec.select428, i64 %spec.select
  %i.kb = load i64, ptr %i.bp, align 8, !tbaa !127
  %i.kc = or i64 %.1342, %i.kb
  store i64 %i.kc, ptr %i.bp, align 8, !tbaa !127
  %i.kd = getelementptr inbounds nuw i8, ptr %i.as, i64 1672
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !170
end_hunk_1
