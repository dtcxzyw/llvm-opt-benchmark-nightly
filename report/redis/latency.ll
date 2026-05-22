inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@strcmp

; Function Attrs: nounwind uwtable
define dso_local i64 @dictStringHash(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %i.b = tail call i64 @dictGenHashFunction(ptr noundef nonnull %0, i64 noundef %i.a) #14
  ret i64 %i.b
}

declare i64 @dictGenHashFunction(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare void @dictVanillaFree(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @THPGetAnonHugePagesSize() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @zmalloc_get_smap_bytes_by_field(ptr noundef nonnull @.str, i64 noundef -1) #14
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

declare i64 @zmalloc_get_smap_bytes_by_field(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @latencyMonitorInit() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @dictCreate(ptr noundef nonnull @latencyTimeSeriesDictType) #14
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  ret void
}

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @latencyAddSample(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  %i.b = tail call ptr @dictFetchValue(ptr noundef %i.a, ptr noundef %0) #14 ; 2 uses
  %i.c = tail call i64 @time(ptr noundef null) #14 ; 2 uses
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(1288) ptr @zmalloc(i64 noundef 1288) #15 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1288) %i.e, i8 0, i64 1288, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  %i.g = tail call noalias ptr @zstrdup(ptr noundef %0) #14
  %i.h = tail call i32 @dictAdd(ptr noundef %i.f, ptr noundef %i.g, ptr noundef nonnull %i.e) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.b, %bb.a ]  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47
  %i.k = zext i32 %i.j to i64
  %i.l = icmp sgt i64 %1, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %1 to i32
  store i32 %i.m, ptr %i.i, align 4, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load i32, ptr %.0, align 4, !tbaa !49    ; 3 uses
  %i.o = add nsw i32 %i.n, 159
  %i.p = srem i32 %i.o, 160
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !50
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i64 %i.c, %i.u
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = zext i32 %i.x to i64
  %i.z = icmp sgt i64 %1, %i.y
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = trunc i64 %1 to i32
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !52
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ab = trunc i64 %i.c to i32
  %i.ac = sext i32 %i.n to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ac ; 2 uses
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !50
  %i.ae = trunc i64 %1 to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !52
  %i.ag = add nsw i32 %i.n, 1                     ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 160
  %spec.select = select i1 %i.ah, i32 0, i32 %i.ag
  store i32 %spec.select, ptr %.0, align 4, !tbaa !49
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare ptr @dictFetchValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #5

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @zstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @latencyResetEvent(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.a) #14
  %i.b = call ptr @dictNext(ptr noundef nonnull %1) #14 ; 3 uses
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.d = phi ptr [ %i.i, %.lr.ph.split.us ], [ %i.b, %.lr.ph ]
  %.09.us = phi i32 [ %i.h, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %i.e = call ptr @dictGetKey(ptr noundef nonnull %i.d) #14
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  %i.g = call i32 @dictDelete(ptr noundef %i.f, ptr noundef %i.e) #14 ; 0 uses
  %i.h = add nuw nsw i32 %.09.us, 1               ; 2 uses
  %i.i = call ptr @dictNext(ptr noundef nonnull %1) #14 ; 2 uses
  %.not.us = icmp eq ptr %i.i, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !53

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.j = phi ptr [ %i.q, %bb.c ], [ %i.b, %.lr.ph ]
  %.09 = phi i32 [ %.1, %bb.c ], [ 0, %.lr.ph ]   ; 2 uses
  %i.k = call ptr @dictGetKey(ptr noundef nonnull %i.j) #14 ; 2 uses
  %i.l = call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull %0) #13
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  %i.o = call i32 @dictDelete(ptr noundef %i.n, ptr noundef %i.k) #14 ; 0 uses
  %i.p = add nsw i32 %.09, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split
  %.1 = phi i32 [ %i.p, %bb.b ], [ %.09, %.lr.ph.split ] ; 2 uses
  %i.q = call ptr @dictNext(ptr noundef nonnull %1) #14 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.c, %.lr.ph.split.us, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.h, %.lr.ph.split.us ], [ %.1, %bb.c ]
  call void @dictResetIterator(ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret i32 %.0.lcssa
}

declare void @dictInitSafeIterator(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dictNext(ptr noundef) local_unnamed_addr #3

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @analyzeLatencyForEvent(ptr noundef %0, ptr noundef captures(none) initializes((0, 32)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13
  %i.b = tail call ptr @dictFetchValue(ptr noundef %i.a, ptr noundef %0) #14 ; 3 uses
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %2

2:                                                ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %4 = load i32, ptr %3, align 4, !tbaa !47
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %2
  %5 = phi i32 [ %4, %2 ], [ 0, %bb.a ]
  store i32 %5, ptr %1, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, i8 0, i64 28, i1 false)
  br i1 %.not, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.l
  %i.i = phi i64 [ 0, %.preheader ], [ %i.ad, %bb.l ] ; 4 uses
  %i.j = phi i32 [ 0, %.preheader ], [ %i.ae, %bb.l ] ; 3 uses
  %i.k = phi i32 [ 0, %.preheader ], [ %i.af, %bb.l ] ; 3 uses
  %i.l = phi i32 [ 0, %.preheader ], [ %i.ag, %bb.l ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.06581 = phi i64 [ 0, %.preheader ], [ %.1, %bb.l ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i32 %i.l, 1                          ; 3 uses
  store i32 %i.p, ptr %i.g, align 4, !tbaa !57
  %i.q = icmp eq i32 %i.l, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !52   ; 11 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.s, ptr %i.e, align 4, !tbaa !58
  store i32 %i.s, ptr %i.d, align 8, !tbaa !59
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ugt i32 %i.k, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.s, ptr %i.d, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi i32 [ %i.s, %bb.g ], [ %i.k, %bb.f ] ; 2 uses
  %i.v = icmp ult i32 %i.j, %i.s
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.s, ptr %i.e, align 4, !tbaa !58
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  %i.w = phi i32 [ %i.j, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.x = phi i32 [ %i.u, %bb.h ], [ %i.u, %bb.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.y = zext i32 %i.s to i64
  %i.z = add i64 %.06581, %i.y                    ; 2 uses
  %i.aa = icmp eq i64 %i.i, 0
  %i.ab = sext i32 %i.n to i64                    ; 3 uses
  %i.ac = icmp sgt i64 %i.i, %i.ab
  %or.cond = or i1 %i.aa, %i.ac
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.ab, ptr %i.h, align 8, !tbaa !60
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.c
  %i.ad = phi i64 [ %i.i, %bb.c ], [ %i.ab, %bb.k ], [ %i.i, %bb.j ]
  %i.ae = phi i32 [ %i.j, %bb.c ], [ %i.w, %bb.k ], [ %i.w, %bb.j ]
  %i.af = phi i32 [ %i.k, %bb.c ], [ %i.x, %bb.k ], [ %i.x, %bb.j ]
  %i.ag = phi i32 [ %i.l, %bb.c ], [ %i.p, %bb.k ], [ %i.p, %bb.j ] ; 3 uses
  %.1 = phi i64 [ %.06581, %bb.c ], [ %i.z, %bb.k ], [ %i.z, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 160
  br i1 %exitcond.not, label %bb.m, label %bb.c, !llvm.loop !61

bb.m:                                             ; preds = %bb.l
  %.not77 = icmp eq i32 %i.ag, 0
  br i1 %.not77, label %.preheader98, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = zext i32 %i.ag to i64
  %i.ai = udiv i64 %.1, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !62
  %i.ak = tail call i64 @time(ptr noundef null) #14 ; 2 uses
  %i.al = load i64, ptr %i.h, align 8, !tbaa !60  ; 2 uses
  %i.am = sub nsw i64 %i.ak, %i.al
  %i.an = icmp eq i64 %i.ak, %i.al
  %spec.store.select = select i1 %i.an, i64 1, i64 %i.am
  store i64 %spec.store.select, ptr %i.h, align 8
  br label %.preheader98

.preheader98:                                     ; preds = %bb.n, %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.preheader98
  %indvars.iv85 = phi i64 [ 0, %.preheader98 ], [ %indvars.iv.next86.1, %bb.s ] ; 3 uses
  %.283 = phi i64 [ 0, %.preheader98 ], [ %.3.1, %bb.s ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv85 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !62
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !52
  %i.av = zext i32 %i.au to i64
  %i.aw = sub nsw i64 %i.as, %i.av
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.aw, i1 true)
  %i.ax = add i64 %spec.select, %.283
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.3 = phi i64 [ %i.ax, %bb.p ], [ %.283, %bb.o ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv85 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !50
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !62
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !52
  %i.bg = zext i32 %i.bf to i64
  %i.bh = sub nsw i64 %i.bd, %i.bg
  %spec.select.1 = tail call i64 @llvm.abs.i64(i64 %i.bh, i1 true)
  %i.bi = add i64 %spec.select.1, %.3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.3.1 = phi i64 [ %i.bi, %bb.r ], [ %.3, %bb.q ] ; 2 uses
  %indvars.iv.next86.1 = add nuw nsw i64 %indvars.iv85, 2 ; 2 uses
  %exitcond88.not.1 = icmp eq i64 %indvars.iv.next86.1, 160
  br i1 %exitcond88.not.1, label %bb.t, label %bb.o, !llvm.loop !63

bb.t:                                             ; preds = %bb.s
  %i.bj = load i32, ptr %i.g, align 4, !tbaa !57  ; 2 uses
  %.not78 = icmp eq i32 %i.bj, 0
  br i1 %.not78, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = zext i32 %i.bj to i64
  %i.bl = udiv i64 %.3.1, %i.bk
  %i.bm = trunc i64 %i.bl to i32
  store i32 %i.bm, ptr %i.f, align 8, !tbaa !64
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @createLatencyReport() local_unnamed_addr #2 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %1 = alloca %struct.latencyStats, align 8       ; 7 uses
  %i.a = tail call ptr @sdsempty() #14            ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8392), align 8, !tbaa !13 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65
  %i.g = sub i64 0, %i.f
  %i.h = icmp eq i64 %i.d, %i.g
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @sdscat(ptr noundef %i.a, ptr noundef nonnull @.str.1) #14
  br label %bb.bp

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #14
  call void @dictInitSafeIterator(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #14
  %i.l = call ptr @dictNext(ptr noundef nonnull %0) #14 ; 2 uses
  %.not217 = icmp eq ptr %i.l, null
  br i1 %.not217, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.ae
  %i.q = phi ptr [ %i.l, %.lr.ph ], [ %i.ca, %bb.ae ] ; 2 uses
  %.098235 = phi ptr [ %i.a, %.lr.ph ], [ %.3, %bb.ae ] ; 3 uses
  %.099234 = phi i32 [ 0, %.lr.ph ], [ %.1100, %bb.ae ] ; 3 uses
  %.0101233 = phi i32 [ 0, %.lr.ph ], [ %.3104, %bb.ae ] ; 3 uses
  %.0105232 = phi i32 [ 0, %.lr.ph ], [ %.15120, %bb.ae ] ; 5 uses
  %.0123231 = phi i32 [ 0, %.lr.ph ], [ %.2125, %bb.ae ] ; 2 uses
  %.0126230 = phi i32 [ 0, %.lr.ph ], [ %.2128, %bb.ae ] ; 2 uses
  %.0129229 = phi i32 [ 0, %.lr.ph ], [ %.4133, %bb.ae ] ; 2 uses
  %.0134228 = phi i32 [ 0, %.lr.ph ], [ %.2136, %bb.ae ] ; 2 uses
  %.0137227 = phi i32 [ 0, %.lr.ph ], [ %.2139, %bb.ae ] ; 2 uses
  %.0140226 = phi i32 [ 0, %.lr.ph ], [ %.5145, %bb.ae ] ; 2 uses
  %.0146225 = phi i32 [ 0, %.lr.ph ], [ %.5151, %bb.ae ] ; 2 uses
  %.0152224 = phi i32 [ 0, %.lr.ph ], [ %.2154, %bb.ae ] ; 2 uses
  %.0155223 = phi i32 [ 0, %.lr.ph ], [ %.5160, %bb.ae ] ; 2 uses
  %.0161222 = phi i32 [ 0, %.lr.ph ], [ %.2163, %bb.ae ] ; 2 uses
  %.0164221 = phi i32 [ 0, %.lr.ph ], [ %.3167, %bb.ae ] ; 2 uses
  %.0168220 = phi i32 [ 0, %.lr.ph ], [ %.2170, %bb.ae ] ; 2 uses
  %.0171219 = phi i32 [ 0, %.lr.ph ], [ %.3174, %bb.ae ] ; 4 uses
  %.0175218 = phi i32 [ 0, %.lr.ph ], [ %.3178, %bb.ae ] ; 3 uses
  %i.r = call ptr @dictGetKey(ptr noundef nonnull %i.q) #14 ; 16 uses
  %i.s = call ptr @dictGetVal(ptr noundef nonnull %i.q) #14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.ae, label %bb.e, !llvm.loop !66

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %.099234, 1                  ; 2 uses
  %i.v = icmp eq i32 %.099234, 0
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @sdscat(ptr noundef %.098235, ptr noundef nonnull @.str.2) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi ptr [ %i.w, %bb.f ], [ %.098235, %bb.e ]
  call void @analyzeLatencyForEvent(ptr noundef %i.r, ptr noundef nonnull %1)
  %i.x = load i32, ptr %i.m, align 4, !tbaa !57   ; 2 uses
  %i.y = load i32, ptr %i.n, align 4, !tbaa !62
  %i.z = zext i32 %i.y to i64
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !64
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !60
  %i.ad = sitofp i64 %i.ac to double
  %i.ae = uitofp i32 %i.x to double
  %i.af = fdiv double %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ai = zext i32 %i.ah to i64
  %i.aj = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.1, ptr noundef nonnull @.str.3, i32 noundef %i.u, ptr noundef %i.r, i32 noundef %i.x, i64 noundef %i.z, i64 noundef %i.ab, double noundef %i.af, i64 noundef %i.ai) #14 ; 2 uses
  %i.ak = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.4) #13
  %.not197 = icmp eq i32 %i.ak, 0
  br i1 %.not197, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.al = load double, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2776), align 8, !tbaa !67 ; 4 uses
  %i.am = fcmp olt double %i.al, 1.000000e+01
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.an = add nsw i32 %.0105232, 1
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ao = fcmp olt double %i.al, 2.500000e+01
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %.0105232, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.aq = fcmp olt double %i.al, 1.000000e+02
  %.str.7..str.8 = select i1 %i.aq, ptr @.str.7, ptr @.str.8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.1106 = phi i32 [ %i.an, %bb.i ], [ %i.ap, %bb.k ], [ %.0105232, %bb.l ]
  %.1102 = phi i32 [ 1, %bb.i ], [ 1, %bb.k ], [ %.0101233, %bb.l ]
  %.0 = phi ptr [ @.str.5, %bb.i ], [ @.str.6, %bb.k ], [ %.str.7..str.8, %bb.l ]
  %i.ar = call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.aj, ptr noundef nonnull @.str.9, double noundef %i.al, ptr noundef nonnull %.0) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %.2107 = phi i32 [ %.0105232, %bb.g ], [ %.1106, %bb.m ] ; 2 uses
  %.2103 = phi i32 [ %.0101233, %bb.g ], [ %.1102, %bb.m ]
  %.2 = phi ptr [ %i.aj, %bb.g ], [ %i.ar, %bb.m ]
  %i.as = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.10) #13
  %.not198 = icmp eq i32 %i.as, 0
  br i1 %.not198, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.at = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2840), align 8, !tbaa !68 ; 2 uses
  %i.au = icmp slt i64 %i.at, 0
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2848), align 8
  %i.aw = icmp eq i64 %i.av, 0
  %or.cond3 = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = udiv i64 %i.at, 1000
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8384), align 8, !tbaa !69
  %i.az = icmp sgt i64 %i.ax, %i.ay               ; 2 uses
  %spec.select = select i1 %i.az, i32 1, i32 %.0171219
  %i.ba = zext i1 %i.az to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sink = phi i32 [ %i.ba, %bb.p ], [ 1, %bb.o ]
  %.1176 = phi i32 [ %.0175218, %bb.p ], [ 1, %bb.o ]
  %.1172 = phi i32 [ %spec.select, %bb.p ], [ %.0171219, %bb.o ]
  %spec.select211 = add nsw i32 %.2107, %.sink
  %i.bb = add nsw i32 %spec.select211, 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.2177 = phi i32 [ %.0175218, %bb.n ], [ %.1176, %bb.q ]
  %.2173 = phi i32 [ %.0171219, %bb.n ], [ %.1172, %bb.q ]
  %.1169 = phi i32 [ %.0168220, %bb.n ], [ 1, %bb.q ]
  %.1130 = phi i32 [ %.0129229, %bb.n ], [ 1, %bb.q ]
  %.4109 = phi i32 [ %.2107, %bb.n ], [ %i.bb, %bb.q ]
  %i.bc = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.11) #13
  %.not199 = icmp eq i32 %i.bc, 0                 ; 2 uses
  %spec.select212 = select i1 %.not199, i32 1, i32 %.0161222
  %i.bd = zext i1 %.not199 to i32
  %spec.select213 = add nsw i32 %.4109, %i.bd     ; 2 uses
  %i.be = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.12) #13
  %.not200 = icmp eq i32 %i.be, 0
  br i1 %.not200, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bf = add nsw i32 %spec.select213, 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1165 = phi i32 [ %.0164221, %bb.r ], [ 1, %bb.s ]
  %.1156 = phi i32 [ %.0155223, %bb.r ], [ 1, %bb.s ]
  %.1147 = phi i32 [ %.0146225, %bb.r ], [ 1, %bb.s ]
  %.1141 = phi i32 [ %.0140226, %bb.r ], [ 1, %bb.s ]
  %.6111 = phi i32 [ %spec.select213, %bb.r ], [ %i.bf, %bb.s ] ; 2 uses
  %i.bg = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.13) #13
  %.not201 = icmp eq i32 %i.bg, 0
  br i1 %.not201, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = add nsw i32 %.6111, 3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2157 = phi i32 [ %.1156, %bb.t ], [ 1, %bb.u ]
  %.1153 = phi i32 [ %.0152224, %bb.t ], [ 1, %bb.u ]
  %.2142 = phi i32 [ %.1141, %bb.t ], [ 1, %bb.u ]
  %.7112 = phi i32 [ %.6111, %bb.t ], [ %i.bh, %bb.u ] ; 2 uses
  %i.bi = call i32 @strcasecmp(ptr noundef %i.r, ptr noundef nonnull @.str.14) #13
  %.not202 = icmp eq i32 %i.bi, 0
  br i1 %.not202, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bj = add nsw i32 %.7112, 3
  br label %bb.x
end_hunk_0
