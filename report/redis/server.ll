inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@adjustOpenFilesLimit:bb.a
  br label %.thread43

bb.e:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !402    ; 7 uses
  %i.l = icmp ult i64 %i.k, %i.c
  br i1 %i.l, label %.preheader, label %.thread43

end_hunk_0
begin_hunk_1_@adjustOpenFilesLimit:bb.a
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.p = add nsw i64 %.04549, -16                 ; 5 uses
  %i.q = icmp ugt i64 %i.p, %i.k
  br i1 %i.q, label %bb.g, label %.thread

end_hunk_1
begin_hunk_2_@adjustOpenFilesLimit:bb.a
  store i64 %i.p, ptr %i.m, align 8, !tbaa !404
  %i.r = call i32 @setrlimit64(i32 noundef 7, ptr noundef nonnull %0) #41
  %.not = icmp eq i32 %i.r, -1
  br i1 %.not, label %.lr.ph, label %..thread_crit_edge51

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %.04549 = phi i64 [ %i.p, %bb.g ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
end_hunk_2
begin_hunk_3_@adjustOpenFilesLimit:bb.a
  %i.t = icmp ult i64 %.04549, 16
  br i1 %i.t, label %.thread, label %bb.f

..thread_crit_edge51:                             ; preds = %bb.g
  %1 = call i64 @llvm.umax.i64(i64 %i.p, i64 %i.k)
  br label %.thread

.thread:                                          ; preds = %bb.f, %.lr.ph, %..thread_crit_edge51, %.preheader
  %.232 = phi i32 [ 0, %.preheader ], [ %i.s, %..thread_crit_edge51 ], [ %i.s, %.lr.ph ], [ %i.s, %bb.f ]
  %.2 = phi i64 [ %i.c, %.preheader ], [ %1, %..thread_crit_edge51 ], [ %i.k, %.lr.ph ], [ %i.k, %bb.f ] ; 4 uses
  %i.u = icmp ult i64 %.2, %i.c
  br i1 %i.u, label %bb.h, label %bb.p

bb.h:                                             ; preds = %.thread
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  %i.w = trunc nuw i64 %.2 to i32
  %i.x = add i32 %i.w, -32
  store i32 %i.x, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  %i.y = icmp ult i64 %.2, 33
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.aa = icmp sgt i32 %i.z, 3                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.l
end_hunk_3
begin_hunk_4_@adjustOpenFilesLimit:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7744), align 8, !tbaa !396
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.143, i64 noundef %.2, i32 noundef %i.ae)
  br label %.thread43

bb.p:                                             ; preds = %.thread
end_hunk_4
