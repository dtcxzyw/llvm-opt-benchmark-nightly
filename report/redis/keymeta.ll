Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/keymeta?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@keyMetaOnMove:bb.a
  %.not35 = icmp eq i32 %i.aw, 0
  br i1 %.not35, label %bb.p, label %bb.g, !llvm.loop !90

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.p
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnUnlink(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.RedisModuleKeyOptCtx, align 8 ; 7 uses
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.b, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %2, i64 %spec.select.v
  %sum.shift = lshr i64 %i.a, 33
  %i.c = trunc nuw nsw i64 %sum.shift to i32
  %i.d = and i32 %i.c, 127                        ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr %1, ptr %3, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.not24 = icmp eq ptr %0, null
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ -1, %bb.b ]
  store i32 %i.j, ptr %i.g, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.k, align 4, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ 1, %bb.d ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.l ], [ %spec.select, %bb.d ] ; 4 uses
  %.018 = phi i32 [ %i.w, %bb.l ], [ %i.d, %bb.d ] ; 2 uses
  %i.l = and i32 %.018, 1
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.h, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 308) #16
  call void @abort() #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.q = load i64, ptr %.1, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %.not26 = icmp eq i64 %i.q, %i.s
  br i1 %.not26, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93   ; 2 uses
  %.not27 = icmp eq ptr %i.u, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void %i.u(ptr noundef nonnull %3, ptr noundef nonnull %.1) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.v = getelementptr inbounds i8, ptr %.1, i64 -8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e
  %.2 = phi ptr [ %i.v, %bb.k ], [ %.1, %bb.e ]
  %i.w = lshr i32 %.018, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not28 = icmp eq i32 %i.w, 0
  br i1 %.not28, label %bb.m, label %bb.e, !llvm.loop !92

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaOnFree(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %sum.shift = lshr i64 %i.a, 33
  %i.b = trunc nuw nsw i64 %sum.shift to i32
  %i.c = and i32 %i.b, 127                        ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.a, 4294967296
  %.not = icmp eq i64 %i.e, 0
  %spec.select.v = select i1 %.not, i64 -8, i64 -16
  %spec.select = getelementptr inbounds i8, ptr %0, i64 %spec.select.v
  %i.f = tail call ptr @kvobjGetKey(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 1, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.2, %bb.i ], [ %spec.select, %bb.b ] ; 3 uses
  %.017 = phi i32 [ %i.r, %bb.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.g = and i32 %.017, 1
  %.not23 = icmp eq i32 %i.g, 0
  br i1 %.not23, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %indvars.iv ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load i32, ptr %i.i, align 8, !tbaa !21
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.f, label %bb.e, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 347) #16
  tail call void @abort() #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %.1, i64 -8 ; 3 uses
  %i.m = load i64, ptr %.1, align 8, !tbaa !22    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !34
  %.not24 = icmp eq i64 %i.m, %i.o
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %.not25 = icmp eq ptr %i.q, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %i.q(ptr noundef %i.f, i64 noundef %i.m) #16
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.c
  %.2 = phi ptr [ %.1, %bb.c ], [ %i.l, %bb.h ], [ %i.l, %bb.g ], [ %i.l, %bb.f ]
  %i.r = lshr i32 %.017, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not26 = icmp eq i32 %i.r, 0
  br i1 %.not26, label %.loopexit, label %bb.c, !llvm.loop !94

.loopexit:                                        ; preds = %bb.i, %bb.a
  ret void
}

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @keyMetaSpecCleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.b = icmp eq i16 %i.a, 0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !tbaa !25   ; 2 uses
  %.not25 = icmp eq i16 %i.d, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = zext i16 %i.d to i32
  %i.f = zext i16 %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = sub nsw i64 8, %i.f
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g, %bb.b
  store i16 0, ptr %0, align 8, !tbaa !26
  store i16 0, ptr %i.c, align 2, !tbaa !25
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01926 = phi i32 [ %i.e, %.lr.ph ], [ %i.x, %bb.g ] ; 2 uses
  %i.i = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %.01926, i1 true) ; 2 uses
  %i.j = xor i32 %i.i, 31
  %i.k = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = zext nneg i32 %i.j to i64
  %i.n = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %.not23 = icmp eq i64 %i.l, %i.s
  br i1 %.not23, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42   ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.u(ptr noundef null, i64 noundef %i.l) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.v = lshr exact i32 -2147483648, %i.i
  %i.w = xor i32 %i.v, -1
  %i.x = and i32 %.01926, %i.w                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !0

bb.h:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadSkipMetaIfAllowed(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !95
  %.not = icmp eq ptr %i.a, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 10, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !13
  store ptr %0, ptr @rdbLoadSkipMetaIfAllowed.lastRdb, align 8, !tbaa !95
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %2, 1
  %.not13 = icmp eq i32 %i.b, 0
  br i1 %.not13, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i32, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !13 ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr @rdbLoadSkipMetaIfAllowed.countDownNotice, align 4, !tbaa !13
  %i.e = icmp slt i32 %i.c, 1
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.g = icmp sgt i32 %i.f, 2
  %or.cond = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %1) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call ptr @rdbLoadCheckModuleValue(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.k = icmp sgt i32 %i.j, 3
  br i1 %i.k, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.3, ptr noundef %1) #16
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  tail call void @decrRefCount(ptr noundef nonnull %i.h) #16
  br label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.m = icmp sgt i32 %i.l, 3
  br i1 %i.m, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %1) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.h
  %.1 = phi i32 [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.k ]
  ret i32 %.1
}

declare void @_serverLog(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

declare ptr @rdbLoadCheckModuleValue(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @decrRefCount(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbLoadKeyMetadata(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [5 x i8], align 1                 ; 15 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.RedisModuleIO, align 8      ; 12 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = icmp sgt i32 %2, 7
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph, label %keyMetaSpecCleanup.exit

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %keyMetaSpecCleanup.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.5, i32 noundef %2, i32 noundef 7) #16
  br label %keyMetaSpecCleanup.exit

bb.d:                                             ; preds = %.lr.ph, %.thread70
  %.03394 = phi i32 [ 0, %.lr.ph ], [ %i.ek, %.thread70 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.z = load i64, ptr %i.g, align 8, !tbaa !99
  %i.aa = and i64 %i.z, 1
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %bb.g
  %.02437.i = phi i64 [ %i.al, %bb.g ], [ 4, %bb.d ] ; 3 uses
  %.02536.i = phi ptr [ %i.ak, %bb.g ], [ %i.a, %bb.d ] ; 3 uses
  %i.ab = load i64, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %.not32.not.i = icmp eq i64 %i.ab, 0
  %i.ac = call i64 @llvm.umin.i64(i64 %i.ab, i64 %.02437.i)
  %i.ad = select i1 %.not32.not.i, i64 %.02437.i, i64 %i.ac ; 5 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !101
  %i.af = call i64 %i.ae(ptr noundef nonnull %0, ptr noundef %.02536.i, i64 noundef %i.ad) #16, !inline_history !96
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.preheader.i
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !99
  %i.ai = or i64 %i.ah, 1
  store i64 %i.ai, ptr %i.g, align 8, !tbaa !99
  br label %.thread

bb.e:                                             ; preds = %.preheader.i
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !102 ; 2 uses
  %.not33.i = icmp eq ptr %i.aj, null
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void %i.aj(ptr noundef nonnull %0, ptr noundef %.02536.i, i64 noundef %i.ad) #16, !inline_history !96
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.02536.i, i64 %i.ad
  %i.al = sub i64 %.02437.i, %i.ad                ; 2 uses
  %i.am = load i64, ptr %i.j, align 8, !tbaa !103
  %i.an = add i64 %i.am, %i.ad
  store i64 %i.an, ptr %i.j, align 8, !tbaa !103
  %.not31.i = icmp eq i64 %i.al, 0
  br i1 %.not31.i, label %rioRead.exit, label %.preheader.i

rioRead.exit:                                     ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
end_hunk_0
begin_hunk_1_@rdbLoadKeyMetadata:bb.a
  br i1 %.not41, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @moduleFreeContext(ptr noundef nonnull %i.ce) #16
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !82
  call void @zfree(ptr noundef %i.cf) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = load i32, ptr %i.q, align 8, !tbaa !79
  %.not42 = icmp eq i32 %i.cg, 0
  br i1 %.not42, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = icmp eq i32 %i.ca, 1
  br i1 %i.ch, label %bb.s, label %.thread73

bb.s:                                             ; preds = %bb.r
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !22
  %i.cj = load i16, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ck = zext i16 %i.cj to i32
  %i.cl = sub nsw i32 8, %i.ck                    ; 3 uses
  %i.cm = load i16, ptr %i.v, align 2, !tbaa !25  ; 3 uses
  %.not27.i = icmp eq i16 %i.cm, 0
  br i1 %.not27.i, label %keyMetaSpecAddUnordered.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.cn = sext i32 %i.cl to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cn, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.u ] ; 3 uses
  %.02029.i = phi i32 [ %i.cl, %.lr.ph.i ], [ %i.cz, %bb.u ]
  %.02128.i = phi i16 [ %i.cm, %.lr.ph.i ], [ %i.cy, %bb.u ] ; 2 uses
  %i.co = zext i16 %.02128.i to i32
  %i.cp = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.co, i1 true) ; 2 uses
  %i.cq = xor i32 %i.cp, 31
  %i.cr = icmp slt i32 %i.cq, %i.bk
  br i1 %i.cr, label %.thread.loopexit.split.loop.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cu = getelementptr i8, ptr %i.cs, i64 -8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !22
  %i.cv = lshr exact i32 -2147483648, %i.cp
  %i.cw = trunc nuw i32 %i.cv to i16
  %i.cx = xor i16 %i.cw, -1
  %i.cy = and i16 %.02128.i, %i.cx                ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %i.cz = add nsw i32 %.02029.i, 1                ; 2 uses
  %.not.i44 = icmp eq i16 %i.cy, 0
  br i1 %.not.i44, label %keyMetaSpecAddUnordered.exit, label %bb.t

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.t
  %i.da = trunc nsw i64 %indvars.iv.i to i32
  br label %keyMetaSpecAddUnordered.exit

keyMetaSpecAddUnordered.exit:                     ; preds = %bb.u, %bb.s, %.thread.loopexit.split.loop.exit.i
  %.020.lcssa.i = phi i32 [ %i.cl, %bb.s ], [ %i.da, %.thread.loopexit.split.loop.exit.i ], [ %i.cz, %bb.u ]
  %i.db = sext i32 %.020.lcssa.i to i64
  %i.dc = getelementptr [8 x i8], ptr %3, i64 %i.db
  store i64 %i.ci, ptr %i.dc, align 8, !tbaa !22
  %i.dd = shl nuw nsw i32 1, %i.bk
  %i.de = trunc nuw nsw i32 %i.dd to i16
  %i.df = or i16 %i.cm, %i.de
  store i16 %i.df, ptr %i.v, align 2, !tbaa !25
  %i.dg = add i16 %i.cj, 1
  store i16 %i.dg, ptr %3, align 8, !tbaa !26
  br label %.thread73

bb.v:                                             ; preds = %bb.q
  switch i32 %i.ca, label %bb.ab [
    i32 1, label %bb.w
    i32 0, label %bb.ad
    i32 -1, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !22
  %i.di = load i16, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = sub nsw i32 8, %i.dj                    ; 3 uses
  %i.dl = load i16, ptr %i.v, align 2, !tbaa !25  ; 3 uses
  %.not27.i46 = icmp eq i16 %i.dl, 0
  br i1 %.not27.i46, label %keyMetaSpecAddUnordered.exit57, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %bb.w
  %i.dm = sext i32 %i.dk to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i47
  %indvars.iv.i49 = phi i64 [ %i.dm, %.lr.ph.i47 ], [ %indvars.iv.next.i52, %bb.y ] ; 3 uses
  %.02029.i50 = phi i32 [ %i.dk, %.lr.ph.i47 ], [ %i.dy, %bb.y ]
  %.02128.i51 = phi i16 [ %i.dl, %.lr.ph.i47 ], [ %i.dx, %bb.y ] ; 2 uses
  %i.dn = zext i16 %.02128.i51 to i32
  %i.do = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.dn, i1 true) ; 2 uses
  %i.dp = xor i32 %i.do, 31
  %i.dq = icmp slt i32 %i.dp, %i.bk
  br i1 %i.dq, label %.thread.loopexit.split.loop.exit.i56, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i49 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !22
  %i.dt = getelementptr i8, ptr %i.dr, i64 -8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !22
  %i.du = lshr exact i32 -2147483648, %i.do
  %i.dv = trunc nuw i32 %i.du to i16
  %i.dw = xor i16 %i.dv, -1
  %i.dx = and i16 %.02128.i51, %i.dw              ; 2 uses
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i49, 1
  %i.dy = add nsw i32 %.02029.i50, 1              ; 2 uses
  %.not.i53 = icmp eq i16 %i.dx, 0
  br i1 %.not.i53, label %keyMetaSpecAddUnordered.exit57, label %bb.x

.thread.loopexit.split.loop.exit.i56:             ; preds = %bb.x
  %i.dz = trunc nsw i64 %indvars.iv.i49 to i32
  br label %keyMetaSpecAddUnordered.exit57

keyMetaSpecAddUnordered.exit57:                   ; preds = %bb.y, %bb.w, %.thread.loopexit.split.loop.exit.i56
  %.020.lcssa.i55 = phi i32 [ %i.dk, %bb.w ], [ %i.dz, %.thread.loopexit.split.loop.exit.i56 ], [ %i.dy, %bb.y ]
  %i.ea = sext i32 %.020.lcssa.i55 to i64
  %i.eb = getelementptr [8 x i8], ptr %3, i64 %i.ea
  store i64 %i.dh, ptr %i.eb, align 8, !tbaa !22
  %i.ec = shl nuw nsw i32 1, %i.bk
  %i.ed = trunc nuw nsw i32 %i.ec to i16
  %i.ee = or i16 %i.dl, %i.ed
  store i16 %i.ee, ptr %i.v, align 2, !tbaa !25
  %i.ef = add i16 %i.di, 1
  store i16 %i.ef, ptr %3, align 8, !tbaa !26
  br label %bb.ad

bb.z:                                             ; preds = %bb.v
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.eh = icmp sgt i32 %i.eg, 3
  br i1 %i.eh, label %.thread73, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b) #16
  br label %.thread73

bb.ab:                                            ; preds = %bb.v
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !72
  %i.ej = icmp sgt i32 %i.ei, 3
  br i1 %i.ej, label %.thread73, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.b, i32 noundef %i.ca) #16
  br label %.thread73

.thread67:                                        ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.thread

.thread73:                                        ; preds = %bb.aa, %bb.ac, %bb.r, %keyMetaSpecAddUnordered.exit, %bb.z, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %.thread

bb.ad:                                            ; preds = %bb.v, %keyMetaSpecAddUnordered.exit57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.thread70

.thread70:                                        ; preds = %bb.j, %bb.h, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ek = add nuw nsw i32 %.03394, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ek, %2
  br i1 %exitcond.not, label %keyMetaSpecCleanup.exit, label %bb.d, !llvm.loop !97

.thread:                                          ; preds = %bb.d, %.thread.i, %.thread73, %.thread67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.el = load i16, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.em = icmp eq i16 %i.el, 0
  br i1 %i.em, label %keyMetaSpecCleanup.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.en = load i16, ptr %i.v, align 2, !tbaa !25  ; 2 uses
  %.not25.i = icmp eq i16 %i.en, 0
  br i1 %.not25.i, label %._crit_edge.i, label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %bb.ae
  %i.eo = zext i16 %i.en to i32
  %i.ep = zext i16 %i.el to i64
  %i.eq = sub nsw i64 8, %i.ep
  br label %bb.af

._crit_edge.i:                                    ; preds = %bb.aj, %bb.ae
  store i16 0, ptr %3, align 8, !tbaa !26
  store i16 0, ptr %i.v, align 2, !tbaa !25
  br label %keyMetaSpecCleanup.exit

bb.af:                                            ; preds = %bb.aj, %.lr.ph.i58
  %indvars.iv.i59 = phi i64 [ %i.eq, %.lr.ph.i58 ], [ %indvars.iv.next.i60, %bb.aj ] ; 2 uses
  %.01926.i = phi i32 [ %i.eo, %.lr.ph.i58 ], [ %i.fg, %bb.aj ] ; 2 uses
  %i.er = call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %.01926.i, i1 true) ; 2 uses
  %i.es = xor i32 %i.er, 31
  %i.et = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.i59
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !22 ; 2 uses
  %i.ev = zext nneg i32 %i.es to i64
  %i.ew = getelementptr inbounds nuw [152 x i8], ptr @keyMetaClass, i64 %i.ev ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 144
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !21
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !34
  %.not23.i = icmp eq i64 %i.eu, %i.fb
  br i1 %.not23.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 88
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !42 ; 2 uses
  %.not24.i = icmp eq ptr %i.fd, null
  br i1 %.not24.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void %i.fd(ptr noundef null, i64 noundef %i.eu) #16, !inline_history !105
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.fe = lshr exact i32 -2147483648, %i.er
  %i.ff = xor i32 %i.fe, -1
  %i.fg = and i32 %.01926.i, %i.ff                ; 2 uses
  %indvars.iv.next.i60 = add nsw i64 %indvars.iv.i59, 1
  %.not.i61 = icmp eq i32 %i.fg, 0
  br i1 %.not.i61, label %._crit_edge.i, label %bb.af, !llvm.loop !0

keyMetaSpecCleanup.exit:                          ; preds = %.thread70, %.preheader, %._crit_edge.i, %.thread, %bb.c, %bb.b
  %.034 = phi i32 [ -1, %._crit_edge.i ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %.thread ], [ 0, %.preheader ], [ 0, %.thread70 ]
  ret i32 %.034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 8) i32 @keyMetaClassLookupByName(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1) unnamed_addr #9 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !13
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 296), align 8, !tbaa !21 ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.preheader.1, label %bb.b

bb.b:                                             ; preds = %.preheader.preheader
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 152), align 1
  %i.d = load i32, ptr %0, align 1
  %i.e = icmp ne i32 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %bb.c, label %.preheader.1

bb.c:                                             ; preds = %bb.b
  switch i32 %i.a, label %.preheader.1 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.c
  %.01320.lcssa21.wide = phi i32 [ 1, %bb.c ], [ %i.g, %bb.f ], [ 3, %bb.h ], [ 4, %bb.j ], [ 5, %bb.l ], [ 6, %bb.n ], [ 7, %bb.p ]
  store i32 1, ptr %1, align 4, !tbaa !13
  br label %.thread

.preheader.1:                                     ; preds = %bb.c, %bb.b, %.preheader.preheader
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 448), align 16, !tbaa !21 ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.preheader.2, label %bb.e

bb.e:                                             ; preds = %.preheader.1
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 304), align 1
  %i.j = load i32, ptr %0, align 1
  %i.k = icmp ne i32 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not17.1 = icmp eq i32 %i.l, 0
  br i1 %.not17.1, label %bb.f, label %.preheader.2

bb.f:                                             ; preds = %bb.e
  switch i32 %i.g, label %.preheader.2 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.2:                                     ; preds = %bb.f, %bb.e, %.preheader.1
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 600), align 8, !tbaa !21 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.preheader.3, label %bb.g

bb.g:                                             ; preds = %.preheader.2
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 456), align 1
  %i.p = load i32, ptr %0, align 1
  %i.q = icmp ne i32 %i.o, %i.p
  %i.r = zext i1 %i.q to i32
  %.not17.2 = icmp eq i32 %i.r, 0
  br i1 %.not17.2, label %bb.h, label %.preheader.3

bb.h:                                             ; preds = %bb.g
  switch i32 %i.m, label %.preheader.3 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.3:                                     ; preds = %bb.h, %bb.g, %.preheader.2
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 752), align 16, !tbaa !21 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.preheader.4, label %bb.i

bb.i:                                             ; preds = %.preheader.3
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 608), align 1
  %i.v = load i32, ptr %0, align 1
  %i.w = icmp ne i32 %i.u, %i.v
  %i.x = zext i1 %i.w to i32
  %.not17.3 = icmp eq i32 %i.x, 0
  br i1 %.not17.3, label %bb.j, label %.preheader.4

bb.j:                                             ; preds = %bb.i
  switch i32 %i.s, label %.preheader.4 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.4:                                     ; preds = %bb.j, %bb.i, %.preheader.3
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 904), align 8, !tbaa !21 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.preheader.5, label %bb.k

bb.k:                                             ; preds = %.preheader.4
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 760), align 1
  %i.ab = load i32, ptr %0, align 1
  %i.ac = icmp ne i32 %i.aa, %i.ab
  %i.ad = zext i1 %i.ac to i32
  %.not17.4 = icmp eq i32 %i.ad, 0
  br i1 %.not17.4, label %bb.l, label %.preheader.5

bb.l:                                             ; preds = %bb.k
  switch i32 %i.y, label %.preheader.5 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.5:                                     ; preds = %bb.l, %bb.k, %.preheader.4
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1056), align 16, !tbaa !21 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.preheader.6, label %bb.m

bb.m:                                             ; preds = %.preheader.5
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 912), align 1
  %i.ah = load i32, ptr %0, align 1
  %i.ai = icmp ne i32 %i.ag, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %.not17.5 = icmp eq i32 %i.aj, 0
  br i1 %.not17.5, label %bb.n, label %.preheader.6

bb.n:                                             ; preds = %bb.m
  switch i32 %i.ae, label %.preheader.6 [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

.preheader.6:                                     ; preds = %bb.n, %bb.m, %.preheader.5
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1208), align 8, !tbaa !21 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.6
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @keyMetaClass, i64 1064), align 1
  %i.an = load i32, ptr %0, align 1
  %i.ao = icmp ne i32 %i.am, %i.an
  %i.ap = zext i1 %i.ao to i32
  %.not17.6 = icmp eq i32 %i.ap, 0
  br i1 %.not17.6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  switch i32 %i.ak, label %bb.q [
    i32 1, label %.thread
    i32 2, label %bb.d
  ]

bb.q:                                             ; preds = %bb.p, %bb.o, %.preheader.6
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.q, %bb.d, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %.01320.lcssa21.wide, %bb.d ], [ -1, %bb.q ], [ %i.a, %bb.c ], [ 2, %bb.f ], [ 7, %bb.p ], [ 3, %bb.h ], [ 5, %bb.l ], [ 4, %bb.j ], [ 6, %bb.n ]
  ret i32 %.1
}

declare i64 @rdbLoadLen(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @moduleFreeContext(ptr noundef) local_unnamed_addr #6

declare void @zfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @rdbSaveKeyMetadata(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #4 {
end_hunk_1
