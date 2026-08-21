Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/config?download=true
inline.NumInlined: 113
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@applyTLSPort:bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.413, ptr noundef nonnull @.str.58, i32 noundef 2721) #25
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr getelementptr inbounds nuw (i8, ptr @server, i64 336), ptr %i.f, align 8, !tbaa !220
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 464), align 8, !tbaa !186
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i32 %i.g, ptr %i.h, align 8, !tbaa !221
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8, !tbaa !235
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store i32 %i.i, ptr %i.j, align 4, !tbaa !223
  %i.k = tail call ptr @connectionByType(ptr noundef nonnull @.str.419) #25
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.k, ptr %i.l, align 8, !tbaa !224
  tail call void @clusterUpdateMyselfAnnouncedPorts() #25
  %i.m = tail call i32 @changeListener(ptr noundef nonnull %i.e) #25
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.a
  %.str.414.sink = phi ptr [ @.str.418, %bb.a ], [ @.str.414, %bb.d ]
  store ptr %.str.414.sink, ptr %0, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ 0, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @applyTlsCfg(ptr nofree noundef writeonly captures(none) %0) #3 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8, !tbaa !235
  %i.b = icmp ne i32 %i.a, 0
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8492), align 4
  %i.d = icmp ne i32 %i.c, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8488), align 8
  %i.f = icmp ne i32 %i.e, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.f
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @connectionTypeTls() #25
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %.val = load ptr, ptr %i.h, align 8, !tbaa !233
  %i.i = tail call i32 %.val(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 8504), i32 noundef 1) #25, !inline_history !234
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @.str.418, ptr %0, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.a ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @setConfigDirOption(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #3 {
bb.a:
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !19
  %i.b = tail call i32 @chdir(ptr noundef %i.a) #25
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__errno_location() #29
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #25
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.c
  %.sink = phi ptr [ %i.f, %bb.c ], [ @.str.67, %bb.a ]
  store ptr %.sink, ptr %3, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @getConfigDirOption(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = call ptr @getcwd(ptr noundef nonnull %i.a, i64 noundef 1024) #25
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 16, !tbaa !65
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = call ptr @sdsnew(ptr noundef nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @setConfigSaveOption(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !19
  %i.d = tail call i32 @strcasecmp(ptr noundef %i.c, ptr noundef nonnull @.str.197) #24
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader.thread, label %.thread

.preheader.thread:                                ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6928), align 8, !tbaa !55
  tail call void @zfree(ptr noundef %i.e) #25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6928), align 8, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %2, 1
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.c
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.thread:                                          ; preds = %bb.b, %bb.c
  store ptr @.str.420, ptr %3, align 8, !tbaa !19
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = call i64 @__isoc23_strtoll(ptr noundef %i.i, ptr noundef nonnull %i.a, i32 noundef 10) #25 ; 2 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.l = load i8, ptr %i.k, align 1, !tbaa !65
  %.not35 = icmp eq i8 %i.l, 0
  br i1 %.not35, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.m = and i64 %indvars.iv, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = icmp slt i64 %i.j, 1
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  %i.p = trunc i64 %indvars.iv to i1
  %i.q = icmp slt i64 %i.j, 0
  %or.cond3 = select i1 %i.p, i1 %i.q, i1 false
  %or.cond37 = select i1 %or.cond, i1 true, i1 %or.cond3
  br i1 %or.cond37, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d, %.lr.ph
  store ptr @.str.420, ptr %3, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !236

._crit_edge:                                      ; preds = %bb.e, %.preheader.thread, %.preheader
  %i.r = phi i1 [ false, %.preheader.thread ], [ false, %.preheader ], [ true, %bb.e ]
  %.0275153 = phi i32 [ 0, %.preheader.thread ], [ %2, %.preheader ], [ %2, %bb.e ]
  %.b = load i1, ptr @reading_config_file, align 4
  br i1 %.b, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %._crit_edge
  %.b33 = load i1, ptr @setConfigSaveOption.save_loaded, align 4
  br i1 %.b33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @setConfigSaveOption.save_loaded, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.g
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6928), align 8, !tbaa !55
  call void @zfree(ptr noundef %i.s) #25
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6928), align 8, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  br i1 %i.r, label %.lr.ph43.preheader, label %.loopexit

.lr.ph43.preheader:                               ; preds = %bb.h
  %sext = zext nneg i32 %.0275153 to i64
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %.lr.ph43
  %indvars.iv45 = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next46, %.lr.ph43 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv45 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = call i64 @__isoc23_strtoll(ptr noundef %i.u, ptr noundef null, i32 noundef 10) #25
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = call i64 @__isoc23_strtoll(ptr noundef %i.x, ptr noundef null, i32 noundef 10) #25
  %i.z = trunc i64 %i.y to i32
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6928), align 8, !tbaa !55
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64
  %i.ae = shl nsw i64 %i.ad, 4
  %i.af = call ptr @zrealloc(ptr noundef %i.aa, i64 noundef %i.ae) #27 ; 2 uses
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6928), align 8, !tbaa !55
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.ah ; 2 uses
  store i64 %i.v, ptr %i.ai, align 8, !tbaa !57
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.z, ptr %i.aj, align 8, !tbaa !59
  %i.ak = add nsw i32 %i.ag, 1
  store i32 %i.ak, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %4 = icmp samesign ult i64 %indvars.iv.next46, %sext
  br i1 %4, label %.lr.ph43, label %.loopexit, !llvm.loop !237

.loopexit:                                        ; preds = %.lr.ph43, %bb.h, %.critedge, %.thread
  %.2 = phi i32 [ 0, %.thread ], [ 0, %.critedge ], [ 1, %bb.h ], [ 1, %.lr.ph43 ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @getConfigSaveOption(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  %i.a = tail call ptr @sdsempty() #25            ; 2 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.078 = phi ptr [ %.1, %bb.c ], [ %i.a, %bb.a ]
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6928), align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !59
  %i.i = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.078, ptr noundef nonnull @.str.421, i64 noundef %i.f, i32 noundef %i.h) #25 ; 2 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56 ; 2 uses
  %i.k = add nsw i32 %i.j, -1
  %i.l = zext i32 %i.k to i64
  %.not = icmp eq i64 %indvars.iv, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @sdscatlen(ptr noundef %i.i, ptr noundef nonnull @.str.111, i64 noundef 1) #25
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6936), align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi i32 [ %.pre, %bb.b ], [ %i.j, %.lr.ph ]
  %.1 = phi ptr [ %i.m, %bb.b ], [ %i.i, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !238

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.07.lcssa = phi ptr [ %i.a, %bb.a ], [ %.1, %bb.c ]
  ret ptr %.07.lcssa
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @setConfigClientOutputBufferLimitOption(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca [3 x %struct.clientBufferLimitsConfig], align 16 ; 6 uses
  %i.d = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  %i.e = and i32 %2, 3
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.preheader48.i, label %bb.b

.preheader48.i:                                   ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.lr.ph.i, label %.preheader.thread.i

bb.b:                                             ; preds = %bb.a
  %.not47.i = icmp eq ptr %3, null
  br i1 %.not47.i, label %updateClientOutputBufferLimit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.422, ptr %3, align 8, !tbaa !19
  br label %updateClientOutputBufferLimit.exit

.preheader.i:                                     ; preds = %bb.j
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !9
  %i.g = icmp eq i32 %.pre.i, 0
  br i1 %i.g, label %.preheader.thread.i, label %bb.k

.lr.ph.i:                                         ; preds = %.preheader48.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %.preheader48.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = call i32 @getClientTypeByName(ptr noundef %i.i) #25 ; 2 uses
  switch i32 %i.j, label %bb.f [
    i32 -1, label %bb.d
    i32 3, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %.not46.i = icmp eq ptr %3, null
  br i1 %.not46.i, label %updateClientOutputBufferLimit.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @.str.423, ptr %3, align 8, !tbaa !19
  br label %updateClientOutputBufferLimit.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = call i64 @memtoull(ptr noundef %i.l, ptr noundef nonnull %i.a) #25
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.p = call i64 @memtoull(ptr noundef %i.o, ptr noundef nonnull %i.b) #25
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  %i.s = call i64 @__isoc23_strtoll(ptr noundef %i.r, ptr noundef nonnull %i.c, i32 noundef 10) #25 ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !9
  %i.u = icmp ne i32 %i.t, 0
  %i.v = load i32, ptr %i.b, align 4
  %i.w = icmp ne i32 %i.v, 0
  %or.cond3.i = select i1 %i.u, i1 true, i1 %i.w
  %i.x = and i64 %i.s, 2147483648
  %i.y = icmp ne i64 %i.x, 0
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.y
  br i1 %or.cond5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !65
  %.not44.i = icmp eq i8 %i.aa, 0
  br i1 %.not44.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not45.i = icmp eq ptr %3, null
  br i1 %.not45.i, label %updateClientOutputBufferLimit.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @.str.424, ptr %3, align 8, !tbaa !19
  br label %updateClientOutputBufferLimit.exit

bb.j:                                             ; preds = %bb.g
  %i.ab = sext i32 %i.j to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ab ; 3 uses
  store i64 %i.m, ptr %i.ac, align 8, !tbaa !181
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.p, ptr %i.ad, align 8, !tbaa !183
  %i.ae = and i64 %i.s, 2147483647
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ab
  store i32 1, ptr %i.ag, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ai = icmp sgt i32 %2, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %.preheader.i, !llvm.loop !239

bb.k:                                             ; preds = %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @server, i64 6544), ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !240
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %bb.k, %.preheader.i, %.preheader48.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9
  %.not43.1.i = icmp eq i32 %i.ak, 0
  br i1 %.not43.1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @server, i64 6568), ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !240
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !9
  %.not43.2.i = icmp eq i32 %i.an, 0
  br i1 %.not43.2.i, label %updateClientOutputBufferLimit.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @server, i64 6592), ptr noundef nonnull align 16 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !240
  br label %updateClientOutputBufferLimit.exit

updateClientOutputBufferLimit.exit:               ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.h, %bb.i, %bb.m, %bb.n
  %.038.i = phi i32 [ 0, %bb.h ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.i ], [ 1, %bb.n ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %.038.i
}

; Function Attrs: nounwind uwtable
define internal ptr @getConfigClientOutputBufferLimitOption(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  %i.a = tail call ptr @sdsempty() #25
  %i.b = tail call ptr @getClientTypeName(i32 noundef 0) #25
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6544), align 8, !tbaa !181
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6552), align 8, !tbaa !183
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6560), align 8, !tbaa !184
  %i.f = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.425, ptr noundef %i.b, i64 noundef %i.c, i64 noundef %i.d, i64 noundef %i.e) #25
  %i.g = tail call ptr @sdscatlen(ptr noundef %i.f, ptr noundef nonnull @.str.111, i64 noundef 1) #25
  %i.h = tail call ptr @getClientTypeName(i32 noundef 1) #25
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6568), align 8, !tbaa !181
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6576), align 8, !tbaa !183
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6584), align 8, !tbaa !184
end_hunk_0
