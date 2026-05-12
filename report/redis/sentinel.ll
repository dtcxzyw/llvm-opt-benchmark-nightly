inline.NumInlined: 166
inline.NumDeleted: 2
begin_hunk_0_@sentinelResetMasterAndChangeAddress:bb.a

bb.f:                                             ; preds = %.lr.ph58, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !184 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !94
  %i.cc = load i32, ptr %i.bw, align 8, !tbaa !89
  %i.cd = call ptr @createSentinelRedisInstance(ptr noundef null, i32 noundef 2, ptr noundef %i.bz, i32 noundef %i.cb, i32 noundef %i.cc, ptr noundef nonnull %0) ; 2 uses
  %4 = load ptr, ptr %i.bx, align 8, !tbaa !184   ; 3 uses
  %i.ce = load ptr, ptr %4, align 8, !tbaa !35
  call void @sdsfree(ptr noundef %i.ce) #26
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !37
  call void @sdsfree(ptr noundef %i.cg) #26
  call void @zfree(ptr noundef nonnull %4) #26
  %.not44 = icmp eq ptr %i.cd, null
  br i1 %.not44, label %bb.h, label %bb.g

end_hunk_0
begin_hunk_1_@queueSentinelConfig:bb.a
  %i.r = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #29 ; 5 uses
  %i.s = sext i32 %1 to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = tail call noalias ptr @zmalloc(i64 noundef %i.t) #29
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !196
  store i32 %1, ptr %i.r, align 8, !tbaa !198
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
end_hunk_1
begin_hunk_2_@queueSentinelConfig:bb.a
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !95
  %i.ac = tail call ptr @sdsdup(ptr noundef %i.ab) #26
  %4 = load ptr, ptr %i.v, align 8, !tbaa !196
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
end_hunk_2
begin_hunk_3_@sentinelProcessHelloMessage:bb.a
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !95
  call void (i32, ptr, ptr, ptr, ...) @sentinelEvent(i32 noundef 3, ptr noundef nonnull @.str.199, ptr noundef nonnull %i.m, ptr noundef nonnull @.str.200, ptr noundef %i.db, ptr noundef %i.de, i32 noundef %i.dg, ptr noundef %i.di, i32 noundef %i.u)
  %i.dj = load ptr, ptr %i.cl, align 8, !tbaa !34 ; 3 uses
  %i.dk = call noalias dereferenceable_or_null(24) ptr @zmalloc(i64 noundef 24) #29 ; 6 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !35
  %i.dm = call ptr @sdsnew(ptr noundef %i.dl) #26
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !37
  %i.dp = call ptr @sdsnew(ptr noundef %i.do) #26
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !37
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !94
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !94
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !95
  %i.dv = call i32 @sentinelResetMasterAndChangeAddress(ptr noundef nonnull %i.m, ptr noundef %i.du, i32 noundef %i.u) ; 0 uses
end_hunk_3
begin_hunk_4_@sentinelProcessHelloMessage:bb.a
  br i1 %i.dz, label %sentinelCallClientReconfScript.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %3 = load i32, ptr %i.dt, align 8, !tbaa !94
  %i.ea = sext i32 %3 to i64
  %i.eb = call i32 @ll2string(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.ea) #26 ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !94
end_hunk_4
begin_hunk_5_@sentinelProcessHelloMessage:bb.a
sentinelCallClientReconfScript.exit:              ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %4 = load ptr, ptr %i.dk, align 8, !tbaa !35
  call void @sdsfree(ptr noundef %4) #26
  %5 = load ptr, ptr %i.dq, align 8, !tbaa !37
  call void @sdsfree(ptr noundef %5) #26
  call void @zfree(ptr noundef nonnull %i.dk) #26
  br label %bb.aa

end_hunk_5
