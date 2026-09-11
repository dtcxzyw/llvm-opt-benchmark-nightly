Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/config?download=true
inline.NumInlined: 113
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@setConfigClientOutputBufferLimitOption:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.s = call i64 @__isoc23_strtoll(ptr noundef %i.r, ptr noundef nonnull %i.c, i32 noundef 10) #25 ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !21
  %i.u = icmp ne i32 %i.t, 0
  %i.v = load i32, ptr %i.b, align 4
  %i.w = icmp ne i32 %i.v, 0
  %or.cond3.i = select i1 %i.u, i1 true, i1 %i.w
  %i.x = and i64 %i.s, 2147483648
  %i.y = icmp ne i64 %i.x, 0
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.y
  br i1 %or.cond5.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !70
  %.not44.i = icmp eq i8 %i.aa, 0
  br i1 %.not44.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not45.i = icmp eq ptr %3, null
  br i1 %.not45.i, label %updateClientOutputBufferLimit.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @.str.424, ptr %3, align 8, !tbaa !27
  br label %updateClientOutputBufferLimit.exit

bb.j:                                             ; preds = %bb.g
  %i.ab = sext i32 %i.j to i64                    ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr %4, i64 %i.ab ; 3 uses
  store i64 %i.m, ptr %i.ac, align 8, !tbaa !137
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.p, ptr %i.ad, align 8, !tbaa !138
  %i.ae = and i64 %i.s, 2147483647
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !139
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ab
  store i32 1, ptr %i.ag, align 4, !tbaa !21
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ah = trunc nuw i64 %indvars.iv.next.i to i32
  %i.ai = icmp sgt i32 %2, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %.preheader.i, !llvm.loop !240

bb.k:                                             ; preds = %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @server, i64 6544), ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !241
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %bb.k, %.preheader.i, %.preheader48.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !21
  %.not43.1.i = icmp eq i32 %i.ak, 0
  br i1 %.not43.1.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @server, i64 6568), ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !tbaa.struct !241
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.preheader.thread.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %.not43.2.i = icmp eq i32 %i.an, 0
  br i1 %.not43.2.i, label %updateClientOutputBufferLimit.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @server, i64 6592), ptr noundef nonnull align 16 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !241
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
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6544), align 8, !tbaa !137
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6552), align 8, !tbaa !138
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6560), align 8, !tbaa !139
  %i.f = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.425, ptr noundef %i.b, i64 noundef %i.c, i64 noundef %i.d, i64 noundef %i.e) #25
  %i.g = tail call ptr @sdscatlen(ptr noundef %i.f, ptr noundef nonnull @.str.111, i64 noundef 1) #25
  %i.h = tail call ptr @getClientTypeName(i32 noundef 1) #25
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6568), align 8, !tbaa !137
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6576), align 8, !tbaa !138
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6584), align 8, !tbaa !139
  %i.l = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.g, ptr noundef nonnull @.str.425, ptr noundef %i.h, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k) #25
  %i.m = tail call ptr @sdscatlen(ptr noundef %i.l, ptr noundef nonnull @.str.111, i64 noundef 1) #25
  %i.n = tail call ptr @getClientTypeName(i32 noundef 2) #25
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6592), align 8, !tbaa !137
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6600), align 8, !tbaa !138
  %i.q = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6608), align 8, !tbaa !139
  %i.r = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.m, ptr noundef nonnull @.str.425, ptr noundef %i.n, i64 noundef %i.o, i64 noundef %i.p, i64 noundef %i.q) #25
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @setConfigOOMScoreAdjValuesOption(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  %.not = icmp eq i32 %2, 3
  br i1 %.not, label %.preheader.preheader, label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = load ptr, ptr %1, align 8, !tbaa !27
  %i.c = call i64 @__isoc23_strtoll(ptr noundef %i.b, ptr noundef nonnull %i.a, i32 noundef 10) #25 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.e = load i8, ptr %i.d, align 1, !tbaa !70
  %i.f = icmp eq i8 %i.e, 0
  %i.g = add i64 %i.c, 2000
  %i.h = icmp ult i64 %i.g, 4001
  %or.cond3.not = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond3.not, label %.preheader.1, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.67, ptr %3, align 8, !tbaa !27
  br label %bb.o

bb.c:                                             ; preds = %.preheader.2, %.preheader.1, %.preheader.preheader
  %.not36 = icmp eq ptr %3, null
  br i1 %.not36, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.426, ptr %3, align 8, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.o

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.i = trunc nsw i64 %i.c to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = call i64 @__isoc23_strtoll(ptr noundef %i.k, ptr noundef nonnull %i.a, i32 noundef 10) #25 ; 4 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.n = load i8, ptr %i.m, align 1, !tbaa !70
  %i.o = icmp eq i8 %i.n, 0
  %i.p = add i64 %i.l, 2000
  %i.q = icmp ult i64 %i.p, 4001
  %or.cond3.not.1 = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond3.not.1, label %.preheader.2, label %bb.c

.preheader.2:                                     ; preds = %.preheader.1
  %i.r = trunc nsw i64 %i.l to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = call i64 @__isoc23_strtoll(ptr noundef %i.t, ptr noundef nonnull %i.a, i32 noundef 10) #25 ; 3 uses
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.w = load i8, ptr %i.v, align 1, !tbaa !70
  %i.x = icmp eq i8 %i.w, 0
  %i.y = add i64 %i.u, 2000
  %i.z = icmp ult i64 %i.y, 4001
  %or.cond3.not.2 = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond3.not.2, label %bb.e, label %bb.c

bb.e:                                             ; preds = %.preheader.2
  %i.aa = trunc nsw i64 %i.u to i32               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ab = icmp slt i64 %i.l, %i.c
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp sge i64 %i.u, %i.l
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.ae = icmp sgt i32 %i.ad, 3
  %or.cond5 = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond5, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !85
  %.old4 = icmp sgt i32 %.old, 3
  br i1 %.old4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.427) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7800), align 8, !tbaa !21
  %.not35 = icmp eq i32 %i.af, %i.i
  br i1 %.not35, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.i, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7800), align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.1 = phi i32 [ -1, %bb.j ], [ 0, %bb.i ]
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7804), align 4, !tbaa !21
  %.not35.1 = icmp eq i32 %i.ag, %i.r
  br i1 %.not35.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.r, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7804), align 4, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.1 = phi i32 [ -1, %bb.l ], [ %.1, %bb.k ]
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7808), align 8, !tbaa !21
  %.not35.2 = icmp eq i32 %i.ah, %i.aa
  br i1 %.not35.2, label %bb.n, label %.thread51

.thread51:                                        ; preds = %bb.m
  store i32 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7808), align 8, !tbaa !21
  br label %bb.n

bb.n:                                             ; preds = %.thread51, %bb.m
  %.1.2.neg = phi i32 [ -1, %.thread51 ], [ %.1.1, %bb.m ]
  %4 = add nsw i32 %.1.2.neg, 2
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n, %bb.b
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %.thread ], [ %4, %bb.n ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal ptr @getConfigOOMScoreAdjValuesOption(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  %i.a = tail call ptr @sdsempty() #25
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7800), align 8, !tbaa !21
  %i.c = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.a, ptr noundef nonnull @.str.122, i32 noundef %i.b) #25
  %i.d = tail call ptr @sdscatlen(ptr noundef %i.c, ptr noundef nonnull @.str.111, i64 noundef 1) #25
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7804), align 4, !tbaa !21
  %i.f = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.d, ptr noundef nonnull @.str.122, i32 noundef %i.e) #25
  %i.g = tail call ptr @sdscatlen(ptr noundef %i.f, ptr noundef nonnull @.str.111, i64 noundef 1) #25
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7808), align 8, !tbaa !21
  %i.i = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %i.g, ptr noundef nonnull @.str.122, i32 noundef %i.h) #25
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @setConfigNotifyKeyspaceEventsOption(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #3 {
bb.a:
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.67, ptr %3, align 8, !tbaa !27
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = tail call i32 @keyspaceEventsStringToFlags(ptr noundef %i.a) #25 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @.str.428, ptr %3, align 8, !tbaa !27
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.b, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8136), align 8, !tbaa !135
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal ptr @getConfigNotifyKeyspaceEventsOption(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8136), align 8, !tbaa !135
  %i.b = tail call ptr @keyspaceEventsFlagsToString(i32 noundef %i.a) #25
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @setConfigBindOption(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr @.str.429, ptr %3, align 8, !tbaa !27
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !27     ; 5 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !70 ; 2 uses
  %i.e = and i8 %.val.i, 7
  switch i8 %i.e, label %sdslen.exit.thread [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !70
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !72
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !21
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !73
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.r, %bb.i ], [ %i.g, %bb.e ], [ %i.j, %bb.f ], [ %i.m, %bb.g ], [ %i.p, %bb.h ]
  %.0.i.fr = freeze i64 %.0.i
  %i.s = icmp eq i64 %.0.i.fr, 0
  br i1 %i.s, label %sdslen.exit.thread, label %bb.j

sdslen.exit.thread:                               ; preds = %bb.d, %sdslen.exit
  br label %bb.j

bb.j:                                             ; preds = %sdslen.exit.thread, %sdslen.exit, %bb.c
  %.015 = phi i32 [ %2, %bb.c ], [ 0, %sdslen.exit.thread ], [ 1, %sdslen.exit ] ; 3 uses
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 464), align 8, !tbaa !140
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.j
  %i.v = icmp sgt i32 %.015, 0
  br i1 %i.v, label %.lr.ph21.preheader, label %._crit_edge

.lr.ph21.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %.015 to i64
  br label %.lr.ph21

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.j ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 336), i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  tail call void @zfree(ptr noundef %i.x) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 464), align 8, !tbaa !140
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph, label %.preheader, !llvm.loop !242

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %.lr.ph21
  %indvars.iv23 = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next24, %.lr.ph21 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv23
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = tail call noalias ptr @zstrdup(ptr noundef %i.ac) #25
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 336), i64 %indvars.iv23
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !27
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph21, !llvm.loop !243

._crit_edge:                                      ; preds = %.lr.ph21, %.preheader
  store i32 %.015, ptr getelementptr inbounds nuw (i8, ptr @server, i64 464), align 8, !tbaa !140
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.b
  %.014 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @applyBind(ptr nofree noundef writeonly captures(none) %0) #3 {
bb.a:
  %i.a = tail call ptr @listenerByType(ptr noundef nonnull @.str.412) #25 ; 7 uses
  %i.b = tail call ptr @listenerByType(ptr noundef nonnull @.str.419) #25 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !147

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.430, ptr noundef nonnull @.str.58, i32 noundef 2643) #25
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr getelementptr inbounds nuw (i8, ptr @server, i64 336), ptr %i.c, align 8, !tbaa !148
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 464), align 8, !tbaa !140
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 %i.d, ptr %i.e, align 8, !tbaa !149
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 324), align 4, !tbaa !150
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i32 %i.f, ptr %i.g, align 4, !tbaa !151
  %i.h = tail call ptr @connectionByType(ptr noundef nonnull @.str.412) #25
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.h, ptr %i.i, align 8, !tbaa !152
  %i.j = tail call i32 @changeListener(ptr noundef nonnull %i.a) #25
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @.str.431, ptr %0, align 8, !tbaa !27
  %.not21 = icmp eq ptr %i.b, null
  br i1 %.not21, label %bb.j, label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 328), align 8, !tbaa !154 ; 2 uses
end_hunk_0
