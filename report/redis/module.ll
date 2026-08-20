inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@RM_Yield:bb.a
bb.g:                                             ; preds = %bb.f
  tail call void @protectClient(ptr noundef nonnull %i.i) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.j = and i32 %1, 2
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8, !tbaa !100
  %i.l = or i32 %i.k, 2
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8, !tbaa !100
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8), align 8, !tbaa !275
  %i.n = tail call i64 @pthread_self() #36
  %.not17 = icmp eq i64 %i.m, %i.n
  br i1 %.not17, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 320) monotonic, align 8
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 308), align 4, !tbaa !9
  %i.q = tail call i64 @write(i32 noundef %i.p, ptr noundef nonnull @.str.35, i64 noundef 1) #31 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.r = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @moduleGIL) #31 ; 0 uses
  %i.s = tail call i32 @usleep(i32 noundef 0) #31 ; 0 uses
  %i.t = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @moduleGIL) #31 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  tail call void @processEventsWhileBlocked() #31
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @server, i64 232), align 8, !tbaa !274
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8, !tbaa !100
  %i.v = and i32 %i.u, -3
  store i32 %i.v, ptr getelementptr inbounds nuw (i8, ptr @server, i64 224), align 8, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 52), align 4, !tbaa !130
  %i.x = sdiv i32 1000000, %i.w
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.c, %i.y
  store i64 %i.z, ptr %i.d, align 8, !tbaa !132
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.b
  %i.aa = load i32, ptr @RM_Yield.yield_nesting, align 4, !tbaa !9
  %i.ab = add nsw i32 %i.aa, -1
  store i32 %i.ab, ptr @RM_Yield.yield_nesting, align 4, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.q
  ret void
}

declare void @processEventsWhileBlocked() local_unnamed_addr #1

declare void @blockingOperationStarts() local_unnamed_addr #1

declare void @protectClient(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #11

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @moduleReleaseGIL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @moduleGIL) #31 ; 0 uses
  ret void
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleAcquireGIL() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @moduleGIL) #31 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @RM_SetModuleOptions(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %1, ptr %i.c, align 4, !tbaa !276
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @RM_SignalModifiedKey(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133
  %i.e = tail call ptr @lookupKeyReadWithFlags(ptr noundef %i.d, ptr noundef %1, i32 noundef 1) #31
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !110  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  tail call void @keyModified(ptr noundef %i.f, ptr noundef %i.h, ptr noundef %1, ptr noundef %i.e, i32 noundef 1) #31
  ret i32 0
}

declare ptr @lookupKeyReadWithFlags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @keyModified(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @RM_AutoMemory(ptr nofree noundef captures(none) %0) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = or i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @autoMemoryAdd(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !277
  %i.h = icmp eq i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !112
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 8)
  %spec.select = shl nuw i32 %i.i, 1              ; 2 uses
  store i32 %spec.select, ptr %i.f, align 8, !tbaa !277
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.l = sext i32 %spec.select to i64
  %i.m = shl nsw i64 %i.l, 4
  %i.n = tail call ptr @zrealloc(ptr noundef %i.k, i64 noundef %i.m) #33 ; 2 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !112
  %.pre15 = load i32, ptr %i.d, align 4, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.o = phi i32 [ %i.e, %._crit_edge ], [ %.pre15, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %bb.c ]
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %1, ptr %i.s, align 8, !tbaa !115
  store ptr %2, ptr %i.r, align 8, !tbaa !113
  %i.t = add nsw i32 %i.o, 1
  store i32 %i.t, ptr %i.d, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @autoMemoryFreed(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 4 uses
  %.not3848 = icmp sgt i32 %i.e, 0
  br i1 %.not3848, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.f = add nuw nsw i32 %i.e, 1
  %3 = lshr i32 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.lr.ph, %.critedge40
  %.03249 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ac, %.critedge40 ] ; 4 uses
  %i.i = xor i32 %.03249, -1
  %i.j = add nsw i32 %i.e, %i.i                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !115
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !113
  %i.q = icmp eq ptr %i.p, %2
  br i1 %i.q, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.h, %bb.d
  %.lcssa53 = phi i32 [ %i.j, %bb.d ], [ %.03249, %bb.h ]
  %.lcssa = phi ptr [ %i.l, %bb.d ], [ %i.w, %bb.h ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store i32 3, ptr %i.r, align 8, !tbaa !115
  %i.s = add nsw i32 %i.e, -1                     ; 3 uses
  %.not37 = icmp eq i32 %.lcssa53, %i.s
  br i1 %.not37, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !278
  %.pre = load i32, ptr %i.d, align 4, !tbaa !111
  %.pre55 = add nsw i32 %.pre, -1
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e
  %.pre-phi = phi i32 [ %.pre55, %bb.f ], [ %i.s, %bb.e ]
  store i32 %.pre-phi, ptr %i.d, align 4, !tbaa !111
  br label %.loopexit

bb.g:                                             ; preds = %bb.c, %bb.d
  %i.v = zext nneg i32 %.03249 to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !115
  %i.z = icmp eq i32 %i.y, %1
  br i1 %i.z, label %bb.h, label %.critedge40

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !113
  %i.ab = icmp eq ptr %i.aa, %2
  br i1 %i.ab, label %bb.e, label %.critedge40

.critedge40:                                      ; preds = %bb.h, %bb.g
  %i.ac = add nuw nsw i32 %.03249, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ac, %3
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !279

.loopexit:                                        ; preds = %.critedge40, %.critedge, %bb.b, %bb.a
  %.6 = phi i32 [ 0, %bb.a ], [ 1, %.critedge ], [ 0, %bb.b ], [ 0, %.critedge40 ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @decrRefCount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RM_FreeCallReply(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @callReplyType(ptr noundef %0) #31
  %i.b = icmp eq i32 %i.a, 12
  %i.c = tail call ptr @callReplyGetPrivateData(ptr noundef %0) #31 ; 6 uses
  br i1 %i.b, label %bb.b, label %freeRedisModuleAsyncRMCallPromise.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !280  ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !tbaa !66
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.c, align 8, !tbaa !66
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.c, label %freeRedisModuleAsyncRMCallPromise.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %.not3.i = icmp eq ptr %i.i, null
  br i1 %.not3.i, label %bb.e, label %bb.d, !prof !60

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.576, ptr noundef nonnull @.str.1, i32 noundef 658) #31
  tail call void @abort() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @zfree(ptr noundef nonnull %i.c) #31
  br label %freeRedisModuleAsyncRMCallPromise.exit

freeRedisModuleAsyncRMCallPromise.exit:           ; preds = %bb.a, %bb.e, %bb.b
  %.0 = phi ptr [ %i.e, %bb.e ], [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 4 uses
  tail call void @freeCallReply(ptr noundef %0) #31
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %autoMemoryFreed.exit, label %bb.f

bb.f:                                             ; preds = %freeRedisModuleAsyncRMCallPromise.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !102
  %i.l = and i32 %i.k, 1
  %.not.i9 = icmp eq i32 %i.l, 0
  br i1 %.not.i9, label %autoMemoryFreed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 44 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.n, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.o = add nuw nsw i32 %i.n, 1
  %1 = lshr i32 %i.o, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112  ; 3 uses
  %i.r = zext nneg i32 %i.n to i64
  %i.s = zext nneg i32 %1 to i64
  %i.t = getelementptr [16 x i8], ptr %i.q, i64 %i.r
  br label %bb.h

bb.h:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.u = xor i64 %indvars.iv, -1
  %i.v = getelementptr [16 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !115
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !113
  %i.aa = icmp eq ptr %i.z, %0
  br i1 %i.aa, label %.split.loop.exit13, label %bb.l

.split.loop.exit:                                 ; preds = %bb.m
  %indvars10.le16 = trunc i64 %indvars.iv to i32
  br label %bb.j

.split.loop.exit13:                               ; preds = %bb.i
  %indvars10.le = trunc i64 %indvars.iv to i32
  %i.ab = xor i32 %indvars10.le, -1
  %i.ac = add nsw i32 %i.n, %i.ab
  br label %bb.j

bb.j:                                             ; preds = %.split.loop.exit13, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars10.le16, %.split.loop.exit ], [ %i.ac, %.split.loop.exit13 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.ah, %.split.loop.exit ], [ %i.v, %.split.loop.exit13 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.ad, align 8, !tbaa !115
  %i.ae = add nsw i32 %i.n, -1                    ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.ae
  br i1 %.not37.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.af
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %bb.j
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.k ], [ %.lcssa53.i, %bb.j ]
  store i32 %.pre-phi.i, ptr %i.m, align 4, !tbaa !111
  br label %autoMemoryFreed.exit

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !115
  %i.ak = icmp eq i32 %i.aj, 2
  br i1 %i.ak, label %bb.m, label %.critedge40.i

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !113
  %i.am = icmp eq ptr %i.al, %0
  br i1 %i.am, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit, label %bb.h, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %.critedge40.i, %.critedge.i, %bb.g, %bb.f, %freeRedisModuleAsyncRMCallPromise.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_CloseKey(ptr noundef %0) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @moduleCloseKey(ptr noundef %0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !281    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !102
  %i.e = and i32 %i.d, 1
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %autoMemoryFreed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.g, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.h = add nuw nsw i32 %i.g, 1
  %1 = lshr i32 %i.h, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 3 uses
  %i.k = zext nneg i32 %i.g to i64
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr [16 x i8], ptr %i.j, i64 %i.k
  br label %bb.d

bb.d:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.n = xor i64 %indvars.iv, -1
  %i.o = getelementptr [16 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !115
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !113
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %.split.loop.exit8, label %bb.h

.split.loop.exit:                                 ; preds = %bb.i
  %indvars5.le11 = trunc i64 %indvars.iv to i32
  br label %bb.f

.split.loop.exit8:                                ; preds = %bb.e
  %indvars5.le = trunc i64 %indvars.iv to i32
  %i.u = xor i32 %indvars5.le, -1
  %i.v = add nsw i32 %i.g, %i.u
  br label %bb.f

bb.f:                                             ; preds = %.split.loop.exit8, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars5.le11, %.split.loop.exit ], [ %i.v, %.split.loop.exit8 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.aa, %.split.loop.exit ], [ %i.o, %.split.loop.exit8 ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !115
  %i.x = add nsw i32 %i.g, -1                     ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.x
  br i1 %.not37.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.g ], [ %.lcssa53.i, %bb.f ]
  store i32 %.pre-phi.i, ptr %i.f, align 4, !tbaa !111
  br label %autoMemoryFreed.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !115
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.i, label %.critedge40.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !113
  %i.af = icmp eq ptr %i.ae, %0
  br i1 %i.af, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit, label %bb.d, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %.critedge40.i, %bb.b, %bb.c, %.critedge.i
  tail call void @zfree(ptr noundef nonnull %0) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %autoMemoryFreed.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_FreeDict(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryFreed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %autoMemoryFreed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.e, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.f = add nuw nsw i32 %i.e, 1
  %2 = lshr i32 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 3 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.l = xor i64 %indvars.iv, -1
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !115
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %.split.loop.exit8, label %bb.h

.split.loop.exit:                                 ; preds = %bb.i
  %indvars5.le11 = trunc i64 %indvars.iv to i32
  br label %bb.f

.split.loop.exit8:                                ; preds = %bb.e
  %indvars5.le = trunc i64 %indvars.iv to i32
  %i.s = xor i32 %indvars5.le, -1
  %i.t = add nsw i32 %i.e, %i.s
  br label %bb.f

bb.f:                                             ; preds = %.split.loop.exit8, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars5.le11, %.split.loop.exit ], [ %i.t, %.split.loop.exit8 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.y, %.split.loop.exit ], [ %i.m, %.split.loop.exit8 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !115
  %i.v = add nsw i32 %i.e, -1                     ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.v
  br i1 %.not37.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.g ], [ %.lcssa53.i, %bb.f ]
  store i32 %.pre-phi.i, ptr %i.d, align 4, !tbaa !111
  br label %autoMemoryFreed.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !115
  %i.ab = icmp eq i32 %i.aa, 4
  br i1 %i.ab, label %bb.i, label %.critedge40.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit, label %bb.d, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %.critedge40.i, %.critedge.i, %bb.c, %bb.b, %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !116
  tail call void @raxFree(ptr noundef %i.ae) #31
  tail call void @zfree(ptr noundef nonnull %1) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_FreeServerInfo(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryFreed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %autoMemoryFreed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.e, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.f = add nuw nsw i32 %i.e, 1
  %2 = lshr i32 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 3 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.l = xor i64 %indvars.iv, -1
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !115
  %i.p = icmp eq i32 %i.o, 5
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %.split.loop.exit8, label %bb.h

.split.loop.exit:                                 ; preds = %bb.i
  %indvars5.le11 = trunc i64 %indvars.iv to i32
  br label %bb.f

.split.loop.exit8:                                ; preds = %bb.e
  %indvars5.le = trunc i64 %indvars.iv to i32
  %i.s = xor i32 %indvars5.le, -1
  %i.t = add nsw i32 %i.e, %i.s
  br label %bb.f

bb.f:                                             ; preds = %.split.loop.exit8, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars5.le11, %.split.loop.exit ], [ %i.t, %.split.loop.exit8 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.y, %.split.loop.exit ], [ %i.m, %.split.loop.exit8 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !115
  %i.v = add nsw i32 %i.e, -1                     ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.v
  br i1 %.not37.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.g ], [ %.lcssa53.i, %bb.f ]
  store i32 %.pre-phi.i, ptr %i.d, align 4, !tbaa !111
  br label %autoMemoryFreed.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !115
  %i.ab = icmp eq i32 %i.aa, 5
  br i1 %i.ab, label %bb.i, label %.critedge40.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit, label %bb.d, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %.critedge40.i, %.critedge.i, %bb.c, %bb.b, %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !118
  tail call void @raxFreeWithCallback(ptr noundef %i.ae, ptr noundef nonnull @sdsfreegeneric) #31
  tail call void @zfree(ptr noundef nonnull %1) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_ConfigIteratorRelease(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryFreed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %autoMemoryFreed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.e, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.f = add nuw nsw i32 %i.e, 1
  %2 = lshr i32 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 3 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.l = xor i64 %indvars.iv, -1
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !115
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %.split.loop.exit13, label %bb.h

.split.loop.exit:                                 ; preds = %bb.i
  %indvars9.le16 = trunc i64 %indvars.iv to i32
  br label %bb.f

.split.loop.exit13:                               ; preds = %bb.e
  %indvars9.le = trunc i64 %indvars.iv to i32
  %i.s = xor i32 %indvars9.le, -1
  %i.t = add nsw i32 %i.e, %i.s
  br label %bb.f

bb.f:                                             ; preds = %.split.loop.exit13, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars9.le16, %.split.loop.exit ], [ %i.t, %.split.loop.exit13 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.y, %.split.loop.exit ], [ %i.m, %.split.loop.exit13 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !115
  %i.v = add nsw i32 %i.e, -1                     ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.v
  br i1 %.not37.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.g ], [ %.lcssa53.i, %bb.f ]
  store i32 %.pre-phi.i, ptr %i.d, align 4, !tbaa !111
  br label %autoMemoryFreed.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !115
  %i.ab = icmp eq i32 %i.aa, 6
  br i1 %i.ab, label %bb.i, label %.critedge40.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit, label %bb.d, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %.critedge40.i, %.critedge.i, %bb.c, %bb.b, %bb.a
  %i.ae = load ptr, ptr %1, align 8, !tbaa !120   ; 2 uses
  %.not8 = icmp eq ptr %i.ae, null
  br i1 %.not8, label %bb.k, label %bb.j

bb.j:                                             ; preds = %autoMemoryFreed.exit
  tail call void @dictReleaseIterator(ptr noundef nonnull %i.ae) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %autoMemoryFreed.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !123
  tail call void @sdsfree(ptr noundef %i.ag) #31
  tail call void @zfree(ptr noundef nonnull %1) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_ClusterFreeSlotRanges(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryFreed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %autoMemoryFreed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.e, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.f = add nuw nsw i32 %i.e, 1
  %2 = lshr i32 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 3 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.l = xor i64 %indvars.iv, -1
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !115
  %i.p = icmp eq i32 %i.o, 7
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %.split.loop.exit7, label %bb.h

.split.loop.exit:                                 ; preds = %bb.i
  %indvars4.le10 = trunc i64 %indvars.iv to i32
  br label %bb.f

.split.loop.exit7:                                ; preds = %bb.e
  %indvars4.le = trunc i64 %indvars.iv to i32
  %i.s = xor i32 %indvars4.le, -1
  %i.t = add nsw i32 %i.e, %i.s
  br label %bb.f

bb.f:                                             ; preds = %.split.loop.exit7, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars4.le10, %.split.loop.exit ], [ %i.t, %.split.loop.exit7 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.y, %.split.loop.exit ], [ %i.m, %.split.loop.exit7 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !115
  %i.v = add nsw i32 %i.e, -1                     ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.v
  br i1 %.not37.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.g ], [ %.lcssa53.i, %bb.f ]
  store i32 %.pre-phi.i, ptr %i.d, align 4, !tbaa !111
  br label %autoMemoryFreed.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !115
  %i.ab = icmp eq i32 %i.aa, 7
  br i1 %i.ab, label %bb.i, label %.critedge40.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit, label %bb.d, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %.critedge40.i, %.critedge.i, %bb.c, %bb.b, %bb.a
  tail call void @slotRangeArrayFree(ptr noundef %1) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_CreateString(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @createStringObject(ptr noundef %1, i64 noundef %2) #31 ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryAdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %autoMemoryAdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !277
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !112
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.f, i32 8)
  %spec.select.i = shl nuw i32 %i.j, 1            ; 2 uses
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !277
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112
  %i.m = sext i32 %spec.select.i to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = tail call ptr @zrealloc(ptr noundef %i.l, i64 noundef %i.n) #33 ; 2 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !112
  %.pre15.i = load i32, ptr %i.e, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.p = phi i32 [ %i.f, %._crit_edge.i ], [ %.pre15.i, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.d ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !115
  store ptr %i.a, ptr %i.s, align 8, !tbaa !113
  %i.u = add nsw i32 %i.p, 1
  store i32 %i.u, ptr %i.e, align 4, !tbaa !111
  br label %autoMemoryAdd.exit

autoMemoryAdd.exit:                               ; preds = %bb.e, %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @createStringObject(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_CreateStringPrintf(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ...) #0 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = tail call ptr @sdsempty() #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.b = call ptr @sdscatvprintf(ptr noundef %i.a, ptr noundef %1, ptr noundef nonnull %2) #31
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.c = call ptr @createObject(i32 noundef 0, ptr noundef %i.b) #31 ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryAdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !102
  %i.f = and i32 %i.e, 1
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %autoMemoryAdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !111  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !277
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !112
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = call i32 @llvm.smax.i32(i32 %i.h, i32 8)
  %spec.select.i = shl nuw i32 %i.l, 1            ; 2 uses
  store i32 %spec.select.i, ptr %i.i, align 8, !tbaa !277
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112
  %i.o = sext i32 %spec.select.i to i64
  %i.p = shl nsw i64 %i.o, 4
  %i.q = call ptr @zrealloc(ptr noundef %i.n, i64 noundef %i.p) #33 ; 2 uses
  store ptr %i.q, ptr %i.m, align 8, !tbaa !112
  %.pre15.i = load i32, ptr %i.g, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.r = phi i32 [ %i.h, %._crit_edge.i ], [ %.pre15.i, %bb.d ] ; 2 uses
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.q, %bb.d ]
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !115
  store ptr %i.c, ptr %i.u, align 8, !tbaa !113
  %i.w = add nsw i32 %i.r, 1
  store i32 %i.w, ptr %i.g, align 4, !tbaa !111
  br label %autoMemoryAdd.exit

autoMemoryAdd.exit:                               ; preds = %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %i.c
}

declare ptr @sdsempty() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @sdscatvprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
end_hunk_0
begin_hunk_1_@RM_CreateStringFromLongDouble:bb.a
  %i.c = call i32 @ld2string(ptr noundef nonnull %i.a, i64 noundef 5120, x86_fp80 noundef %1, i32 noundef %i.b) #31
  %i.d = sext i32 %i.c to i64
  %i.e = call ptr @createStringObject(ptr noundef nonnull %i.a, i64 noundef %i.d) #31 ; 2 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %RM_CreateString.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !102
  %i.h = and i32 %i.g, 1
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %RM_CreateString.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !111  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !277
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !112
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @llvm.smax.i32(i32 %i.j, i32 8)
  %spec.select.i.i = shl nuw i32 %i.n, 1          ; 2 uses
  store i32 %spec.select.i.i, ptr %i.k, align 8, !tbaa !277
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112
  %i.q = sext i32 %spec.select.i.i to i64
  %i.r = shl nsw i64 %i.q, 4
  %i.s = call ptr @zrealloc(ptr noundef %i.p, i64 noundef %i.r) #33 ; 2 uses
  store ptr %i.s, ptr %i.o, align 8, !tbaa !112
  %.pre15.i.i = load i32, ptr %i.i, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.t = phi i32 [ %i.j, %._crit_edge.i.i ], [ %.pre15.i.i, %bb.d ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.s, %bb.d ]
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 1, ptr %i.x, align 8, !tbaa !115
  store ptr %i.e, ptr %i.w, align 8, !tbaa !113
  %i.y = add nsw i32 %i.t, 1
  store i32 %i.y, ptr %i.i, align 4, !tbaa !111
  br label %RM_CreateString.exit

RM_CreateString.exit:                             ; preds = %bb.a, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret ptr %i.e
}

declare i32 @ld2string(ptr noundef, i64 noundef, x86_fp80 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_CreateStringFromString(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @dupStringObject(ptr noundef %1) #31 ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryAdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %autoMemoryAdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !277
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !112
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.f, i32 8)
  %spec.select.i = shl nuw i32 %i.j, 1            ; 2 uses
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !277
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112
  %i.m = sext i32 %spec.select.i to i64
  %i.n = shl nsw i64 %i.m, 4
  %i.o = tail call ptr @zrealloc(ptr noundef %i.l, i64 noundef %i.n) #33 ; 2 uses
  store ptr %i.o, ptr %i.k, align 8, !tbaa !112
  %.pre15.i = load i32, ptr %i.e, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.p = phi i32 [ %i.f, %._crit_edge.i ], [ %.pre15.i, %bb.d ] ; 2 uses
  %i.q = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.o, %bb.d ]
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !115
  store ptr %i.a, ptr %i.s, align 8, !tbaa !113
  %i.u = add nsw i32 %i.p, 1
  store i32 %i.u, ptr %i.e, align 4, !tbaa !111
  br label %autoMemoryAdd.exit

autoMemoryAdd.exit:                               ; preds = %bb.e, %bb.b, %bb.a
  ret ptr %i.a
}

declare ptr @dupStringObject(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_CreateStringFromStreamID(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.streamID, align 16          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = load <2 x i64>, ptr %1, align 8, !tbaa !29
  store <2 x i64> %i.a, ptr %2, align 16, !tbaa !29
  %i.b = call ptr @createObjectFromStreamID(ptr noundef nonnull %2) #31 ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryAdd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !102
  %i.e = and i32 %i.d, 1
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %autoMemoryAdd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !111  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !277
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !112
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call i32 @llvm.smax.i32(i32 %i.g, i32 8)
  %spec.select.i = shl nuw i32 %i.k, 1            ; 2 uses
  store i32 %spec.select.i, ptr %i.h, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112
  %i.n = sext i32 %spec.select.i to i64
  %i.o = shl nsw i64 %i.n, 4
  %i.p = call ptr @zrealloc(ptr noundef %i.m, i64 noundef %i.o) #33 ; 2 uses
  store ptr %i.p, ptr %i.l, align 8, !tbaa !112
  %.pre15.i = load i32, ptr %i.f, align 4, !tbaa !111
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.q = phi i32 [ %i.g, %._crit_edge.i ], [ %.pre15.i, %bb.d ] ; 2 uses
  %i.r = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.p, %bb.d ]
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !115
  store ptr %i.b, ptr %i.t, align 8, !tbaa !113
  %i.v = add nsw i32 %i.q, 1
  store i32 %i.v, ptr %i.f, align 4, !tbaa !111
  br label %autoMemoryAdd.exit

autoMemoryAdd.exit:                               ; preds = %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %i.b
}

declare ptr @createObjectFromStreamID(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @RM_FreeString(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @decrRefCount(ptr noundef %1) #31
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %autoMemoryFreed.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !102
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %autoMemoryFreed.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.e, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.f = add nuw nsw i32 %i.e, 1
  %2 = lshr i32 %i.f, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112  ; 3 uses
  %i.i = zext nneg i32 %i.e to i64
  %i.j = zext nneg i32 %2 to i64
  %i.k = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.l = xor i64 %indvars.iv, -1
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !115
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !113
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %.split.loop.exit7, label %bb.h

.split.loop.exit:                                 ; preds = %bb.i
  %indvars4.le10 = trunc i64 %indvars.iv to i32
  br label %bb.f

.split.loop.exit7:                                ; preds = %bb.e
  %indvars4.le = trunc i64 %indvars.iv to i32
  %i.s = xor i32 %indvars4.le, -1
  %i.t = add nsw i32 %i.e, %i.s
  br label %bb.f

bb.f:                                             ; preds = %.split.loop.exit7, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars4.le10, %.split.loop.exit ], [ %i.t, %.split.loop.exit7 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.y, %.split.loop.exit ], [ %i.m, %.split.loop.exit7 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.u, align 8, !tbaa !115
  %i.v = add nsw i32 %i.e, -1                     ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.v
  br i1 %.not37.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.g ], [ %.lcssa53.i, %bb.f ]
  store i32 %.pre-phi.i, ptr %i.d, align 4, !tbaa !111
  br label %autoMemoryFreed.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !115
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.i, label %.critedge40.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !113
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit, label %bb.d, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %.critedge40.i, %.critedge.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @RM_RetainString(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %autoMemoryFreed.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102
  %i.d = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %autoMemoryFreed.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !111  ; 5 uses
  %.not3848.i = icmp sgt i32 %i.f, 0
  br i1 %.not3848.i, label %.preheader.lr.ph.i, label %autoMemoryFreed.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.c
  %i.g = add nuw nsw i32 %i.f, 1
  %2 = lshr i32 %i.g, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 3 uses
  %i.j = zext nneg i32 %i.f to i64
  %i.k = zext nneg i32 %2 to i64
  %i.l = getelementptr [16 x i8], ptr %i.i, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge40.i ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  %i.m = xor i64 %indvars.iv, -1
  %i.n = getelementptr [16 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !115
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !113
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %.split.loop.exit9, label %bb.h

.split.loop.exit:                                 ; preds = %bb.i
  %indvars6.le12 = trunc i64 %indvars.iv to i32
  br label %bb.f

.split.loop.exit9:                                ; preds = %bb.e
  %indvars6.le = trunc i64 %indvars.iv to i32
  %i.t = xor i32 %indvars6.le, -1
  %i.u = add nsw i32 %i.f, %i.t
  br label %bb.f

bb.f:                                             ; preds = %.split.loop.exit9, %.split.loop.exit
  %.lcssa53.i = phi i32 [ %indvars6.le12, %.split.loop.exit ], [ %i.u, %.split.loop.exit9 ] ; 2 uses
  %.lcssa.i = phi ptr [ %i.z, %.split.loop.exit ], [ %i.n, %.split.loop.exit9 ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.lcssa.i, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !115
  %i.w = add nsw i32 %i.f, -1                     ; 2 uses
  %.not37.i = icmp eq i32 %.lcssa53.i, %i.w
  br i1 %.not37.i, label %autoMemoryFreed.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !278
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !111
  %.pre55.i = add nsw i32 %.pre.i, -1
  br label %autoMemoryFreed.exit

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !115
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.critedge40.i

bb.i:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !113
  %i.ae = icmp eq ptr %i.ad, %1
  br i1 %i.ae, label %.split.loop.exit, label %.critedge40.i

.critedge40.i:                                    ; preds = %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not.i, label %autoMemoryFreed.exit.thread, label %bb.d, !llvm.loop !279

autoMemoryFreed.exit:                             ; preds = %bb.f, %bb.g
  %.pre-phi.i = phi i32 [ %.pre55.i, %bb.g ], [ %.lcssa53.i, %bb.f ]
  store i32 %.pre-phi.i, ptr %i.e, align 4, !tbaa !111
  br label %bb.j

autoMemoryFreed.exit.thread:                      ; preds = %.critedge40.i, %bb.c, %bb.b, %bb.a
  tail call void @incrRefCount(ptr noundef %1) #31
  br label %bb.j

bb.j:                                             ; preds = %autoMemoryFreed.exit, %autoMemoryFreed.exit.thread
  ret void
}

declare void @incrRefCount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @RM_HoldString(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = and i64 %i.a, 2147483392
  %i.c = icmp eq i64 %i.b, 2147483136
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @dupStringObject(ptr noundef nonnull %1) #31 ; 4 uses
  br i1 %.not.i, label %RM_CreateStringFromString.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !102
  %i.g = and i32 %i.f, 1
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %RM_CreateStringFromString.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !111  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !277
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !112
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i32 @llvm.smax.i32(i32 %i.i, i32 8)
  %spec.select.i.i = shl nuw i32 %i.m, 1          ; 2 uses
  store i32 %spec.select.i.i, ptr %i.j, align 8, !tbaa !277
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !112
  %i.p = sext i32 %spec.select.i.i to i64
  %i.q = shl nsw i64 %i.p, 4
  %i.r = tail call ptr @zrealloc(ptr noundef %i.o, i64 noundef %i.q) #33 ; 2 uses
  store ptr %i.r, ptr %i.n, align 8, !tbaa !112
  %.pre15.i.i = load i32, ptr %i.h, align 4, !tbaa !111
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i32 [ %i.i, %._crit_edge.i.i ], [ %.pre15.i.i, %bb.e ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.e ]
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 1, ptr %i.w, align 8, !tbaa !115
  store ptr %i.d, ptr %i.v, align 8, !tbaa !113
  %i.x = add nsw i32 %i.s, 1
  store i32 %i.x, ptr %i.h, align 4, !tbaa !111
  br label %RM_CreateStringFromString.exit

bb.g:                                             ; preds = %bb.a
  tail call void @incrRefCount(ptr noundef nonnull %1) #31
  br i1 %.not.i, label %RM_CreateStringFromString.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !102
  %i.aa = and i32 %i.z, 1
  %.not.i10 = icmp eq i32 %i.aa, 0
  br i1 %.not.i10, label %RM_CreateStringFromString.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !111 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !277
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !112
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call i32 @llvm.smax.i32(i32 %i.ac, i32 8)
  %spec.select.i = shl nuw i32 %i.ag, 1           ; 2 uses
  store i32 %spec.select.i, ptr %i.ad, align 8, !tbaa !277
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !112
  %i.aj = sext i32 %spec.select.i to i64
  %i.ak = shl nsw i64 %i.aj, 4
  %i.al = tail call ptr @zrealloc(ptr noundef %i.ai, i64 noundef %i.ak) #33 ; 2 uses
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !112
  %.pre15.i = load i32, ptr %i.ab, align 4, !tbaa !111
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %i.am = phi i32 [ %i.ac, %._crit_edge.i ], [ %.pre15.i, %bb.j ] ; 2 uses
  %i.an = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.al, %bb.j ]
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 1, ptr %i.aq, align 8, !tbaa !115
  store ptr %1, ptr %i.ap, align 8, !tbaa !113
  %i.ar = add nsw i32 %i.am, 1
  store i32 %i.ar, ptr %i.ab, align 4, !tbaa !111
  br label %RM_CreateStringFromString.exit

RM_CreateStringFromString.exit:                   ; preds = %bb.k, %bb.h, %bb.f, %bb.c, %bb.b, %bb.g
  %.0 = phi ptr [ %1, %bb.g ], [ %i.d, %bb.f ], [ %i.d, %bb.b ], [ %i.d, %bb.c ], [ %1, %bb.h ], [ %1, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @RM_StringPtrLen(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %.not12 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not12, label %._crit_edge, label %._crit_edge.sink.split

bb.c:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
