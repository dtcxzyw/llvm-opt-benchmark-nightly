inline.NumInlined: 9
inline.NumDeleted: 9
begin_hunk_0_@aeCreateEventLoop:bb.a
  br i1 %cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @llvm.smin.i32(i32 %0, i32 1024) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.c, ptr %i.d, align 8, !tbaa !13
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = shl nsw i64 %i.e, 5
  %i.g = tail call noalias ptr @zmalloc(i64 noundef %i.f) #18 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  %i.i = shl nsw i64 %i.e, 3
  %i.j = tail call noalias ptr @zmalloc(i64 noundef %i.i) #18 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !21
  %i.l = icmp eq ptr %i.g, null
  %i.m = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %aeApiCreate.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %0, ptr %i.n, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@aeCreateEventLoop:bb.a
  br i1 %.not.i, label %aeApiCreate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sext i32 %0 to i64
  %i.v = mul nsw i64 %i.u, 12
  %i.w = tail call noalias ptr @zmalloc(i64 noundef %i.v) #18 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@aeCreateEventLoop:bb.a
  %i.ab = tail call i32 @anetCloexec(i32 noundef %i.y) #17 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !31
  %i.ad = icmp sgt i32 %0, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %aeApiCreate.exit
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %1 = icmp slt i32 %0, 4
  br i1 %1, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2044
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 0, ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i32 0, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i32 0, ptr %i.ak, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
end_hunk_2
begin_hunk_3_@aeCreateEventLoop:bb.a
  br label %aeApiCreate.exit.thread

aeApiCreate.exit.thread:                          ; preds = %aeApiCreate.exit.thread.sink.split, %bb.c, %bb.b
  tail call void @zfree(ptr noundef %i.g) #17
  tail call void @zfree(ptr noundef %i.j) #17
  tail call void @zfree(ptr noundef nonnull %i.b) #17
  br label %.loopexit

end_hunk_3
begin_hunk_4_@aeCreateEventLoop:bb.a
bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv.epil
  store i32 0, ptr %i.al, align 8, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
end_hunk_4
