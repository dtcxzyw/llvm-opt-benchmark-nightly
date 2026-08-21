Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/module?download=true
inline.NumInlined: 700
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@moduleFreeCommand:bb.a
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not68 = icmp eq ptr %i.ac, null
  br i1 %.not68, label %.critedge, label %bb.h

.critedge:                                        ; preds = %.lr.ph81, %bb.h, %._crit_edge
  %.lcssa76 = phi ptr [ null, %._crit_edge ], [ null, %bb.h ], [ %i.aa, %.lr.ph81 ]
  tail call void @zfree(ptr noundef %.lcssa76) #31
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !216 ; 2 uses
  %.not6984 = icmp eq ptr %i.ae, null
  br i1 %.not6984, label %.critedge2, label %.lr.ph86

bb.h:                                             ; preds = %.lr.ph81
  tail call void @zfree(ptr noundef nonnull %i.ac) #31
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !217 ; 2 uses
  %.not67 = icmp eq ptr %i.af, null
  br i1 %.not67, label %.critedge, label %.lr.ph81, !llvm.loop !669

.lr.ph86:                                         ; preds = %.critedge, %bb.i
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.i ], [ 0, %.critedge ] ; 3 uses
  %i.ag = phi ptr [ %i.ax, %bb.i ], [ %i.ae, %.critedge ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv98
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !204 ; 2 uses
  %.not70 = icmp eq ptr %i.ai, null
  br i1 %.not70, label %.critedge2, label %bb.i

.critedge2:                                       ; preds = %.lr.ph86, %bb.i, %.critedge
  %.lcssa = phi ptr [ null, %.critedge ], [ null, %bb.i ], [ %i.ag, %.lr.ph86 ]
  tail call void @zfree(ptr noundef %.lcssa) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !213
  tail call void @zfree(ptr noundef %i.ak) #31
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !215
  tail call void @zfree(ptr noundef %i.am) #31
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !670
  tail call void @zfree(ptr noundef %i.ao) #31
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !214
  tail call void @zfree(ptr noundef %i.aq) #31
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !671 ; 2 uses
  %.not71 = icmp eq ptr %i.as, null
  br i1 %.not71, label %bb.k, label %bb.j

bb.i:                                             ; preds = %.lr.ph86
  tail call void @zfree(ptr noundef nonnull %i.ai) #31
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !216
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %indvars.iv98
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !206
  tail call void @zfree(ptr noundef %i.aw) #31
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !216 ; 2 uses
  %.not69 = icmp eq ptr %i.ax, null
  br i1 %.not69, label %.critedge2, label %.lr.ph86, !llvm.loop !672

bb.j:                                             ; preds = %.critedge2
  tail call void @hdr_close(ptr noundef nonnull %i.as) #31
  store ptr null, ptr %i.ar, align 8, !tbaa !671
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge2
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !218
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !232
  tail call void @moduleFreeArgs(ptr noundef %i.az, i32 noundef %i.bb)
  tail call void @zfree(ptr noundef nonnull %i.d) #31
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !186 ; 2 uses
  %.not72 = icmp eq ptr %i.bd, null
  br i1 %.not72, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @dictInitSafeIterator(ptr noundef nonnull %2, ptr noundef nonnull %i.bd) #31
  %i.be = call ptr @dictNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not7390 = icmp eq ptr %i.be, null
  br i1 %.not7390, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.l, %bb.p
  %i.bf = phi ptr [ %i.bp, %bb.p ], [ %i.be, %bb.l ]
  %i.bg = call ptr @dictGetVal(ptr noundef nonnull %i.bf) #31 ; 5 uses
  %i.bh = call i32 @moduleFreeCommand(ptr noundef %0, ptr noundef %i.bg)
  %.not74 = icmp eq i32 %i.bh, 0
  br i1 %.not74, label %bb.m, label %bb.p, !llvm.loop !673

bb.m:                                             ; preds = %.lr.ph92
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !186
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !172
  %i.bk = call i32 @dictDelete(ptr noundef %i.bi, ptr noundef %i.bj) #31
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.n, !prof !60

bb.n:                                             ; preds = %bb.m
  call void @_serverAssert(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.1, i32 noundef 13061) #31
  call void @abort() #34
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !172
  call void @sdsfree(ptr noundef %i.bm) #31
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 216
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !173
  call void @sdsfree(ptr noundef %i.bo) #31
  call void @zfree(ptr noundef nonnull %i.bg) #31
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph92, %bb.o
  %i.bp = call ptr @dictNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not73 = icmp eq ptr %i.bp, null
  br i1 %.not73, label %._crit_edge93, label %.lr.ph92

._crit_edge93:                                    ; preds = %bb.p, %bb.l
  call void @dictResetIterator(ptr noundef nonnull %2) #31
  %i.bq = load ptr, ptr %i.bc, align 8, !tbaa !186
  call void @dictRelease(ptr noundef %i.bq) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %._crit_edge93, %bb.k, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %._crit_edge93 ], [ 0, %bb.k ]
  ret i32 %.1
}

declare void @hdr_close(ptr noundef) local_unnamed_addr #1

declare void @dictRelease(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleUnregisterCommands(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.dictIterator, align 8       ; 6 uses
  tail call void @pauseAllIOThreads() #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 72), align 8, !tbaa !182
  call void @dictInitSafeIterator(ptr noundef nonnull %1, ptr noundef %i.a) #31
  %i.b = call ptr @dictNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not9 = icmp eq ptr %i.b, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %i.c = phi ptr [ %i.q, %bb.g ], [ %i.b, %bb.a ]
  %i.d = call ptr @dictGetVal(ptr noundef nonnull %i.c) #31 ; 4 uses
  %i.e = call i32 @moduleFreeCommand(ptr noundef %0, ptr noundef %i.d)
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %bb.b, label %bb.g, !llvm.loop !674

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 72), align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 216 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.i = call i32 @dictDelete(ptr noundef %i.f, ptr noundef %i.h) #31
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c, !prof !60

bb.c:                                             ; preds = %bb.b
  call void @_serverAssert(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.1, i32 noundef 13083) #31
  call void @abort() #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 80), align 8, !tbaa !183
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.m = call i32 @dictDelete(ptr noundef %i.k, ptr noundef %i.l) #31
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %bb.e, !prof !60

bb.e:                                             ; preds = %bb.d
  call void @_serverAssert(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.1, i32 noundef 13084) #31
  call void @abort() #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !172
  call void @sdsfree(ptr noundef %i.o) #31
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !173
  call void @sdsfree(ptr noundef %i.p) #31
  call void @zfree(ptr noundef nonnull %i.d) #31
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.q = call ptr @dictNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  call void @dictResetIterator(ptr noundef nonnull %1) #31
  call void @resumeAllIOThreads() #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @parseLoadexArguments(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !368    ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !9      ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %sext = zext nneg i32 %i.b to i64               ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !282  ; 4 uses
  %i.h = tail call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.115) #35
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nuw nsw i64 %indvars.iv, 2           ; 2 uses
  %2 = icmp samesign ult i64 %i.i, %sext
  br i1 %2, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.k = icmp sgt i32 %i.j, 2
  br i1 %i.k, label %.thread62, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.116) #31
  br label %.thread62

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.d, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !282
  %i.p = tail call ptr @sdsdup(ptr noundef %i.o) #31 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !282
  %i.u = tail call ptr @sdsdup(ptr noundef %i.t) #31
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 288), align 8, !tbaa !648
  %i.w = tail call i32 @dictReplace(ptr noundef %i.v, ptr noundef %i.p, ptr noundef %i.u) #31
  %.not48 = icmp eq i32 %i.w, 0
  br i1 %.not48, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  tail call void @sdsfree(ptr noundef %i.p) #31
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph
  %i.x = tail call i32 @strcasecmp(ptr noundef %i.g, ptr noundef nonnull @.str.117) #35
  %.not49 = icmp eq i32 %i.x, 0
  br i1 %.not49, label %.thread66, label %bb.h

.thread66:                                        ; preds = %bb.g
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = add nuw nsw i32 %i.y, 1                  ; 3 uses
  %.not50 = icmp slt i32 %i.z, %i.b               ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aa
  %i.ac = sub nsw i32 %i.b, %i.z
  %.sink = select i1 %.not50, ptr %i.ab, ptr null
  %storemerge = select i1 %.not50, i32 %i.ac, i32 0
  store ptr %.sink, ptr %0, align 8, !tbaa !368
  store i32 %storemerge, ptr %1, align 4, !tbaa !9
  br label %.thread62

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !105
  %i.ae = icmp sgt i32 %i.ad, 2
  br i1 %i.ae, label %.thread62, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6420), align 4, !tbaa !662
  %.not.i = icmp eq i32 %i.af, 0
  %.not2.i = icmp eq ptr %i.g, null
  %i.ag = select i1 %.not2.i, ptr @.str.61, ptr %i.g
  %i.ah = select i1 %.not.i, ptr %i.ag, ptr @.str.597
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.118, ptr noundef nonnull %i.ah) #31
  br label %.thread62

bb.j:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %3 = icmp samesign ult i64 %indvars.iv.next, %sext
  br i1 %3, label %.lr.ph, label %._crit_edge, !llvm.loop !675

._crit_edge:                                      ; preds = %bb.j, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !368
  store i32 0, ptr %1, align 4, !tbaa !9
  br label %.thread62

.thread62:                                        ; preds = %bb.d, %bb.c, %bb.h, %bb.i, %.thread66, %._crit_edge
  %.3 = phi i32 [ 0, %.thread66 ], [ 0, %._crit_edge ], [ 1, %bb.d ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.c ]
  ret i32 %.3
}

declare i32 @dictReplace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @moduleUnregisterCleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.listIter, align 8           ; 5 uses
  %2 = alloca %struct.listIter, align 8           ; 5 uses
  %3 = alloca %struct.listIter, align 8           ; 5 uses
  %4 = alloca %struct.listIter, align 8           ; 5 uses
  %5 = alloca %struct.listIter, align 8           ; 5 uses
  %6 = alloca %struct.listIter, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !676
  call void @listRewind(ptr noundef %i.a, ptr noundef nonnull %6) #31
  %i.b = call ptr @listNext(ptr noundef nonnull %6) #31 ; 2 uses
  %.not8.i = icmp eq ptr %i.b, null
  br i1 %.not8.i, label %moduleFreeAuthenticatedClients.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %i.c = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 776
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !560  ; 2 uses
  %.not7.i = icmp ne ptr %i.g, null
  %i.h = icmp eq ptr %i.g, %0
  %or.cond.i = and i1 %.not7.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.d, !llvm.loop !677

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 760 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !552  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %revokeClientAuthentication.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.e, align 8, !tbaa !298
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !553
  call void %i.j(i64 noundef %i.k, ptr noundef %i.m) #31, !inline_history !678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  br label %revokeClientAuthentication.exit.i

revokeClientAuthentication.exit.i:                ; preds = %bb.c, %bb.b
  call void @deauthenticateAndCloseClient(ptr noundef nonnull %i.e) #31
  br label %bb.d

bb.d:                                             ; preds = %revokeClientAuthentication.exit.i, %.lr.ph.i
  %i.n = call ptr @listNext(ptr noundef nonnull %6) #31 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %moduleFreeAuthenticatedClients.exit, label %.lr.ph.i

moduleFreeAuthenticatedClients.exit:              ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @moduleUnregisterCommands(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.o = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  call void @listRewind(ptr noundef %i.o, ptr noundef nonnull %5) #31
  %i.p = call ptr @listNext(ptr noundef nonnull %5) #31 ; 2 uses
  %.not5.i = icmp eq ptr %i.p, null
  br i1 %.not5.i, label %moduleUnsubscribeNotifications.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %moduleFreeAuthenticatedClients.exit, %bb.f
  %i.q = phi ptr [ %i.w, %bb.f ], [ %i.p, %moduleFreeAuthenticatedClients.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !141  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !498
  %i.u = icmp eq ptr %i.t, %0
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i9
  %i.v = load ptr, ptr @moduleKeyspaceSubscribers, align 8, !tbaa !392
  call void @listDelNode(ptr noundef %i.v, ptr noundef nonnull %i.q) #31
  call void @zfree(ptr noundef nonnull %i.s) #31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i9
  %i.w = call ptr @listNext(ptr noundef nonnull %5) #31 ; 2 uses
  %.not.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i10, label %moduleUnsubscribeNotifications.exit, label %.lr.ph.i9, !llvm.loop !514

moduleUnsubscribeNotifications.exit:              ; preds = %bb.f, %moduleFreeAuthenticatedClients.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.x = call i32 @moduleUnregisterSharedAPI(ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !263
  call void @listRewind(ptr noundef %i.z, ptr noundef nonnull %4) #31
  %i.aa = call ptr @listNext(ptr noundef nonnull %4) #31 ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %moduleUnregisterUsedAPI.exit, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %moduleUnsubscribeNotifications.exit, %bb.h
  %i.ab = phi ptr [ %i.ai, %bb.h ], [ %i.aa, %moduleUnsubscribeNotifications.exit ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !141
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !262
  %i.ag = call ptr @listSearchKey(ptr noundef %i.af, ptr noundef %0) #31 ; 2 uses
  %.not10.i = icmp eq ptr %i.ag, null
  br i1 %.not10.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i11
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !262
  call void @listDelNode(ptr noundef %i.ah, ptr noundef nonnull %i.ag) #31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i11
  %i.ai = call ptr @listNext(ptr noundef nonnull %4) #31 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ai, null
  br i1 %.not.i12, label %moduleUnregisterUsedAPI.exit, label %.lr.ph.i11, !llvm.loop !585

moduleUnregisterUsedAPI.exit:                     ; preds = %bb.h, %moduleUnsubscribeNotifications.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.aj = call i32 @moduleUnregisterFilters(ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.ak = load ptr, ptr @RedisModule_EventListeners, align 8, !tbaa !392
  call void @listRewind(ptr noundef %i.ak, ptr noundef nonnull %3) #31
  %i.al = call ptr @listNext(ptr noundef nonnull %3) #31 ; 2 uses
  %.not5.i13 = icmp eq ptr %i.al, null
  br i1 %.not5.i13, label %moduleUnsubscribeAllServerEvents.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %moduleUnregisterUsedAPI.exit, %bb.j
  %i.am = phi ptr [ %i.as, %bb.j ], [ %i.al, %moduleUnregisterUsedAPI.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !141 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !613
  %i.aq = icmp eq ptr %i.ap, %0
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i14
  %i.ar = load ptr, ptr @RedisModule_EventListeners, align 8, !tbaa !392
  call void @listDelNode(ptr noundef %i.ar, ptr noundef nonnull %i.am) #31
  call void @zfree(ptr noundef nonnull %i.ao) #31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i14
  %i.as = call ptr @listNext(ptr noundef nonnull %3) #31 ; 2 uses
  %.not.i15 = icmp eq ptr %i.as, null
  br i1 %.not.i15, label %moduleUnsubscribeAllServerEvents.exit, label %.lr.ph.i14, !llvm.loop !635

moduleUnsubscribeAllServerEvents.exit:            ; preds = %bb.j, %moduleUnregisterUsedAPI.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !265
  call void @listRewind(ptr noundef %i.au, ptr noundef nonnull %2) #31
  %i.av = call ptr @listNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not7.i16 = icmp eq ptr %i.av, null
  br i1 %.not7.i16, label %moduleRemoveConfigs.exit, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %moduleUnsubscribeAllServerEvents.exit, %bb.l
  %i.aw = phi ptr [ %i.bc, %bb.l ], [ %i.av, %moduleUnsubscribeAllServerEvents.exit ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !141 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !256
  call void @removeConfig(ptr noundef %i.az) #31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !258 ; 2 uses
  %.not6.i = icmp eq ptr %i.bb, null
  br i1 %.not6.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i17
  call void @removeConfig(ptr noundef nonnull %i.bb) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i17
  %i.bc = call ptr @listNext(ptr noundef nonnull %2) #31 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bc, null
  br i1 %.not.i18, label %moduleRemoveConfigs.exit, label %.lr.ph.i17, !llvm.loop !656

moduleRemoveConfigs.exit:                         ; preds = %bb.l, %moduleUnsubscribeAllServerEvents.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.bd = load ptr, ptr @moduleAuthCallbacks, align 8, !tbaa !392
  call void @listRewind(ptr noundef %i.bd, ptr noundef nonnull %1) #31
  %i.be = call ptr @listNext(ptr noundef nonnull %1) #31 ; 2 uses
  %.not5.i19 = icmp eq ptr %i.be, null
  br i1 %.not5.i19, label %moduleUnregisterAuthCBs.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %moduleRemoveConfigs.exit, %bb.n
  %i.bf = phi ptr [ %i.bl, %bb.n ], [ %i.be, %moduleRemoveConfigs.exit ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !141 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !481
  %i.bj = icmp eq ptr %i.bi, %0
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i20
end_hunk_0
