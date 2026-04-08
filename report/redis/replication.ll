inline.NumInlined: 195
inline.NumDeleted: 32
begin_hunk_0_@feedReplicationBuffer:bb.a
  %i.t = add i64 %i.q, %i.n
  store i64 %i.t, ptr %i.m, align 8, !tbaa !105
  %i.u = getelementptr inbounds nuw i8, ptr %.0115, i64 %i.q ; 2 uses
  %i.v = sub nuw i64 %.070114, %i.q               ; 2 uses
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !97
  %i.x = add i64 %i.w, %i.q
  store i64 %i.x, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !97
end_hunk_0
begin_hunk_1_@feedReplicationBuffer:bb.a
  %.177 = phi ptr [ %i.be, %bb.f ], [ %.076104, %.thread98 ]
  %.174 = phi i64 [ 0, %bb.f ], [ %.073105, %.thread98 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.1107, i64 %i.am
  %i.bg = sub nuw i64 %.171106, %i.am
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !97
  %i.bi = add i64 %i.bh, %i.am
  store i64 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7232), align 8, !tbaa !97
end_hunk_1
begin_hunk_2_@showLatestBacklog:bb.a
  %i.aa = tail call ptr @sdscatrepr(ptr noundef %i.u, ptr noundef nonnull %i.z, i64 noundef %..1) #20
  %i.ab = tail call ptr @sdscatsds(ptr noundef %i.aa, ptr noundef %.02129) #20 ; 2 uses
  tail call void @sdsfree(ptr noundef %.02129) #20
  %i.ac = sub nuw i64 %.130, %..1                 ; 2 uses
  %.022 = load ptr, ptr %.02231, align 8, !tbaa !131 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = icmp eq ptr %.022, null
end_hunk_2
