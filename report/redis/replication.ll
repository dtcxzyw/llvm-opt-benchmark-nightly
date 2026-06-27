inline.NumInlined: 195
inline.NumDeleted: 32
begin_hunk_0_@replicationCreateMasterClient:bb.a
  store ptr %i.l, ptr %i.n, align 8, !tbaa !235
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  store i32 1, ptr %i.o, align 8, !tbaa !236
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7680), align 8, !tbaa !237 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  store i64 %i.p, ptr %i.q, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  store i64 %i.p, ptr %i.r, align 8, !tbaa !238
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  store ptr null, ptr %i.s, align 8, !tbaa !239
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.t, ptr noundef nonnull align 8 dereferenceable(41) getelementptr inbounds nuw (i8, ptr @server, i64 7632), i64 41, i1 false)
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7456), align 8, !tbaa !75 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  %i.aa = or i64 %i.z, 65536
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not3 = icmp eq i32 %1, -1
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call i32 @selectDb(ptr noundef nonnull %i.u, i32 noundef %1) #19 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare ptr @createClient(ptr noundef) local_unnamed_addr #1

declare void @readQueryFromClient(ptr noundef) #1

declare i32 @selectDb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @disklessLoadInitTempDb() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @initTempDb() #19
  ret ptr %i.a
}

declare ptr @initTempDb() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @disklessLoadDiscardTempDb(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @discardTempDb(ptr noundef %0) #19
  ret void
}

declare void @discardTempDb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @replicationAttachToNewMaster() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7456), align 8, !tbaa !75
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !70

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.1, i32 noundef 2190) #19
  tail call void @abort() #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8, !tbaa !182 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %replicationDiscardCachedMaster.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.f = icmp sgt i32 %i.e, 2
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.251) #19
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8, !tbaa !182
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi ptr [ %i.c, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = and i64 %i.i, -3
  store i64 %i.j, ptr %i.h, align 8, !tbaa !13
  tail call void @freeClient(ptr noundef %i.g) #19
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8, !tbaa !182
  br label %replicationDiscardCachedMaster.exit

replicationDiscardCachedMaster.exit:              ; preds = %bb.c, %bb.f
  tail call void @disconnectSlaves() #19
  tail call void @freeReplicationBacklog()
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @replicationDiscardCachedMaster() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8, !tbaa !182 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.d = icmp sgt i32 %i.c, 2
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.251) #19
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8, !tbaa !182
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %i.a, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, -3
  store i64 %i.h, ptr %i.f, align 8, !tbaa !13
  tail call void @freeClient(ptr noundef %i.e) #19
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7464), align 8, !tbaa !182
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @disconnectSlaves() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @readSyncBulkPayload(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.replDataBufToDbCtx, align 8 ; 9 uses
  %i.a = alloca [16384 x i8], align 16            ; 14 uses
  %2 = alloca %struct.rdbSaveInfo, align 8        ; 4 uses
  %3 = alloca %struct._rio, align 8               ; 15 uses
  %4 = alloca %struct.rdbLoadingCtx, align 8      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8, !tbaa !240 ; 3 uses
  %i.c = and i32 %i.b, -2
  %or.cond.i = icmp eq i32 %i.c, 2
  br i1 %or.cond.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 1
  br i1 %i.d, label %bb.c, label %useDisklessLoad.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @dbTotalServerKeyCount() #19
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %thread-pre-split.i, label %useDisklessLoad.exit

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8, !tbaa !240
  br label %.thread.i

.thread.i:                                        ; preds = %thread-pre-split.i, %bb.a
  %i.g = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.b, %bb.a ]
  %.not.i = icmp eq i32 %i.g, 3
  br i1 %.not.i, label %useDisklessLoad.exit, label %bb.d

bb.d:                                             ; preds = %.thread.i
  %i.h = tail call i32 @moduleAllDatatypesHandleErrors() #19
  %.not4.i = icmp eq i32 %i.h, 0
  br i1 %.not4.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.j = icmp sgt i32 %i.i, 2
  br i1 %i.j, label %useDisklessLoad.exit, label %.thread6.sink.split.i

bb.f:                                             ; preds = %bb.d
  %.pre.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8, !tbaa !240
  %i.k = icmp eq i32 %.pre.i, 2
  br i1 %i.k, label %bb.g, label %useDisklessLoad.exit

bb.g:                                             ; preds = %bb.f
  %i.l = tail call i32 @moduleAllModulesHandleReplAsyncLoad() #19
  %.not5.i = icmp eq i32 %i.l, 0
  br i1 %.not5.i, label %bb.h, label %useDisklessLoad.exit

bb.h:                                             ; preds = %bb.g
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.n = icmp sgt i32 %i.m, 2
  br i1 %i.n, label %useDisklessLoad.exit, label %.thread6.sink.split.i

.thread6.sink.split.i:                            ; preds = %bb.h, %bb.e
  %.str.292.sink.i = phi ptr [ @.str.291, %bb.e ], [ @.str.292, %bb.h ]
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull %.str.292.sink.i) #19
  br label %useDisklessLoad.exit

useDisklessLoad.exit:                             ; preds = %bb.b, %bb.c, %.thread.i, %bb.e, %bb.f, %bb.g, %bb.h, %.thread6.sink.split.i
  %i.o = phi i1 [ true, %bb.g ], [ false, %bb.b ], [ true, %bb.f ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.h ], [ true, %.thread.i ], [ false, %.thread6.sink.split.i ] ; 3 uses
  %i.p = phi i1 [ false, %bb.g ], [ true, %bb.b ], [ false, %bb.f ], [ true, %bb.c ], [ true, %bb.e ], [ true, %bb.h ], [ false, %.thread.i ], [ true, %.thread6.sink.split.i ] ; 3 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7536), align 8, !tbaa !241
  %i.r = icmp eq ptr %0, %i.q
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7688), align 8, !tbaa !242
  %.not = icmp ne i32 %i.s, 0
  %i.t = zext i1 %.not to i32                     ; 2 uses
  %i.u = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7504), align 8, !tbaa !243 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.i, label %bb.x

bb.i:                                             ; preds = %useDisklessLoad.exit
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7472), align 8, !tbaa !244
  %i.x = mul nsw i32 %i.w, 1000
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %0, align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 192
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !245
  %i.ac = call i64 %i.ab(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 1024, i64 noundef range(i64 -2147483648, 2147483648) %i.y) #19, !inline_history !246 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.af = icmp sgt i32 %i.ae, 3
  br i1 %i.af, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %0, align 8, !tbaa !86
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !201
  %i.aj = call ptr %i.ai(ptr noundef nonnull %0) #19, !inline_history !202
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.126, ptr noundef %i.aj) #19
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %i.ak = add nuw nsw i64 %i.ac, 1
  %i.al = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @server, i64 2960), i64 %i.ak monotonic, align 8 ; 0 uses
  %i.am = load i8, ptr %i.a, align 16, !tbaa !83
  switch i8 %i.am, label %bb.p [
    i8 45, label %bb.m
    i8 0, label %bb.o
    i8 36, label %bb.r
  ]

bb.m:                                             ; preds = %bb.l
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.127, ptr noundef nonnull %i.ap) #19
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.aq = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !126
  store i64 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7560), align 8, !tbaa !247
  br label %cancelReplicationHandshake.exit

bb.p:                                             ; preds = %bb.l
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.as = icmp sgt i32 %i.ar, 3
  br i1 %i.as, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.128, ptr noundef nonnull %i.a) #19
  br label %.thread

bb.r:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.au = load i32, ptr %i.at, align 1
  %i.av = icmp ne i32 %i.au, 977686341
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 5 ; 2 uses
  %i.az = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #22
  %i.ba = icmp ugt i64 %i.az, 39
  br i1 %i.ba, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  store i1 true, ptr @readSyncBulkPayload.usemark, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @readSyncBulkPayload.eofmark, ptr noundef nonnull align 1 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @readSyncBulkPayload.lastbytes, i8 0, i64 40, i1 false)
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7504), align 8, !tbaa !243
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.bc = icmp sgt i32 %i.bb, 2
  br i1 %i.bc, label %cancelReplicationHandshake.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = select i1 %i.p, ptr @.str.132, ptr @.str.131
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.130, ptr noundef nonnull %i.bd) #19
  br label %cancelReplicationHandshake.exit

bb.v:                                             ; preds = %bb.s, %bb.r
  store i1 false, ptr @readSyncBulkPayload.usemark, align 4
  %i.be = call i64 @__isoc23_strtol(ptr noundef nonnull %i.at, ptr noundef null, i32 noundef 10) #19 ; 2 uses
  store i64 %i.be, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7504), align 8, !tbaa !243
  %i.bf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.bg = icmp sgt i32 %i.bf, 2
  br i1 %i.bg, label %cancelReplicationHandshake.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bh = select i1 %i.p, ptr @.str.132, ptr @.str.131
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.133, i64 noundef %i.be, ptr noundef nonnull %i.bh) #19
  br label %cancelReplicationHandshake.exit

bb.x:                                             ; preds = %useDisklessLoad.exit
  br i1 %i.o, label %bb.bf, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.b89 = load i1, ptr @readSyncBulkPayload.usemark, align 4
  br i1 %.b89, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7512), align 8, !tbaa !248
  %i.bj = sub nsw i64 %i.u, %i.bi
  %i.bk = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 16384)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.071 = phi i64 [ %i.bk, %bb.z ], [ 16384, %bb.y ]
  %i.bl = load ptr, ptr %0, align 8, !tbaa !86
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !249
  %i.bo = call i32 %i.bn(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %.071) #19, !inline_history !250 ; 5 uses
  %i.bp = sext i32 %i.bo to i64                   ; 7 uses
  %i.bq = icmp slt i32 %i.bo, 1
  br i1 %i.bq, label %bb.ab, label %bb.ao

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.br, align 8, !tbaa !204
  %i.bs = icmp eq i32 %.val, 3
  br i1 %i.bs, label %cancelReplicationHandshake.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.bu = icmp sgt i32 %i.bt, 3
  br i1 %i.bu, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bv = icmp eq i32 %i.bo, -1
  br i1 %i.bv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bw = load ptr, ptr %0, align 8, !tbaa !86
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 168
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !201
  %i.bz = call ptr %i.by(ptr noundef nonnull %0) #19, !inline_history !202
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.ca = phi ptr [ %i.bz, %bb.ae ], [ @.str.135, %bb.ad ]
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.134, ptr noundef %i.ca) #19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af
  %i.cb = call fastcc i32 @rdbChannelAbort(), !inline_history !183
  %.not.i118 = icmp eq i32 %i.cb, 0
  br i1 %.not.i118, label %bb.ah, label %cancelReplicationHandshake.exit

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4, !tbaa !74 ; 2 uses
  switch i32 %i.cc, label %bb.aj [
    i32 12, label %bb.ai
    i32 2, label %bb.ak
  ]

bb.ai:                                            ; preds = %bb.ah
  call void @replicationAbortSyncTransfer(), !inline_history !183
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.cd = add i32 %i.cc, -12
  %i.ce = icmp ult i32 %i.cd, -9
  br i1 %i.ce, label %cancelReplicationHandshake.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7528), align 8, !tbaa !184 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !86
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !185
  call void %i.ci(ptr noundef nonnull %i.cf) #19, !inline_history !186
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7528), align 8, !tbaa !184
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4, !tbaa !74
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.ck = icmp sgt i32 %i.cj, 2
  br i1 %i.ck, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7440), align 8, !tbaa !73
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7448), align 8, !tbaa !251
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.219, ptr noundef %i.cl, i32 noundef %i.cm) #19, !inline_history !183
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cn = call i32 @connectWithMaster(), !inline_history !183 ; 0 uses
  br label %cancelReplicationHandshake.exit

bb.ao:                                            ; preds = %bb.aa
  %i.co = atomicrmw add ptr getelementptr inbounds nuw (i8, ptr @server, i64 2960), i64 %i.bp monotonic, align 8 ; 0 uses
  %.b88 = load i1, ptr @readSyncBulkPayload.usemark, align 4
  br i1 %.b88, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.cp = icmp samesign ugt i32 %i.bo, 39
  br i1 %i.cp, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bp
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @readSyncBulkPayload.lastbytes, ptr noundef nonnull align 1 dereferenceable(40) %i.cr, i64 40, i1 false)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cs = sub nuw nsw i32 40, %i.bo
  %i.ct = getelementptr inbounds nuw i8, ptr @readSyncBulkPayload.lastbytes, i64 %i.bp
  %i.cu = zext nneg i32 %i.cs to i64              ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 @readSyncBulkPayload.lastbytes, ptr nonnull align 1 %i.ct, i64 %i.cu, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr @readSyncBulkPayload.lastbytes, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 16 %i.a, i64 %i.bp, i1 false)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) @readSyncBulkPayload.lastbytes, ptr noundef nonnull dereferenceable(40) @readSyncBulkPayload.eofmark, i64 40)
  %i.cw = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.cx = xor i1 %i.cw, true
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %i.cy = phi i1 [ false, %bb.ao ], [ %i.cw, %bb.as ]
  %.073 = phi i1 [ true, %bb.ao ], [ %i.cx, %bb.as ]
  %i.cz = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !126
  store i64 %i.cz, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7560), align 8, !tbaa !247
  %i.da = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7544), align 8, !tbaa !252
  %i.db = call i64 @write(i32 noundef %i.da, ptr noundef nonnull %i.a, i64 noundef %i.bp) #19 ; 2 uses
  %.not90 = icmp eq i64 %i.db, %i.bp
  br i1 %.not90, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dc = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.dd = icmp sgt i32 %i.dc, 3
  br i1 %i.dd, label %.thread, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.de = icmp eq i64 %i.db, -1
  br i1 %i.de, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.df = tail call ptr @__errno_location() #21
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !9
  %i.dh = call ptr @strerror(i32 noundef %i.dg) #19
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.di = phi ptr [ %i.dh, %bb.aw ], [ @.str.137, %bb.av ]
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.136, ptr noundef %i.di) #19
  br label %.thread

bb.ay:                                            ; preds = %bb.at
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7512), align 8, !tbaa !248
  %i.dk = add nsw i64 %i.dj, %i.bp                ; 3 uses
  store i64 %i.dk, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7512), align 8, !tbaa !248
  %.b87 = load i1, ptr @readSyncBulkPayload.usemark, align 4
  %or.cond = and i1 %i.cy, %.b87
  br i1 %or.cond, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7544), align 8, !tbaa !252
  %i.dm = add nsw i64 %i.dk, -40
  %i.dn = call i32 @ftruncate64(i32 noundef %i.dl, i64 noundef %i.dm) #19
  %i.do = icmp eq i32 %i.dn, -1
  br i1 %i.do, label %bb.ba, label %._crit_edge

._crit_edge:                                      ; preds = %bb.az
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7512), align 8, !tbaa !248
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.dp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.dq = icmp sgt i32 %i.dp, 3
  br i1 %i.dq, label %.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dr = tail call ptr @__errno_location() #21
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !9
  %i.dt = call ptr @strerror(i32 noundef %i.ds) #19
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.138, ptr noundef %i.dt) #19
  br label %.thread

bb.bc:                                            ; preds = %._crit_edge, %bb.ay
  %i.du = phi i64 [ %.pre, %._crit_edge ], [ %i.dk, %bb.ay ] ; 3 uses
  %i.dv = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7520), align 8, !tbaa !253 ; 3 uses
  %i.dw = add nsw i64 %i.dv, 8388608
  %.not91 = icmp slt i64 %i.du, %i.dw
  br i1 %.not91, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dx = sub nsw i64 %i.du, %i.dv                ; 2 uses
  %i.dy = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7544), align 8, !tbaa !252
  %i.dz = call i32 @sync_file_range(i32 noundef %i.dy, i64 noundef %i.dv, i64 noundef %i.dx, i32 noundef 3) #19 ; 0 uses
  %i.ea = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7520), align 8, !tbaa !253
  %i.eb = add nsw i64 %i.ea, %i.dx
  store i64 %i.eb, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7520), align 8, !tbaa !253
  %.pre157 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7512), align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.ec = phi i64 [ %.pre157, %bb.bd ], [ %i.du, %bb.bc ]
  %.b86 = load i1, ptr @readSyncBulkPayload.usemark, align 4
  %i.ed = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7504), align 8
  %i.ee = icmp ne i64 %i.ec, %i.ed
  %i.ef = select i1 %.b86, i1 true, i1 %i.ee
  %.not92 = select i1 %i.ef, i1 %.073, i1 false
  br i1 %.not92, label %cancelReplicationHandshake.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.x
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !254
  %.not93 = icmp eq i32 %i.eg, 0
  br i1 %.not93, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @stopAppendOnly() #19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.eh = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 316), align 4, !tbaa !180
  %i.ei = icmp eq i32 %i.eh, 1
  br i1 %i.ei, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.ej = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8
  %i.ek = icmp sgt i32 %i.ej, 2
  %or.cond6 = select i1 %i.o, i1 true, i1 %i.ek
  br i1 %or.cond6, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 312), align 8, !tbaa !255
  %i.em = sext i32 %i.el to i64
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.139, i64 noundef %i.em) #19
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @killRDBChild() #19
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bh
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8
  %i.eo = icmp ne i32 %i.en, 2
  %or.cond4 = select i1 %i.p, i1 true, i1 %i.eo
  br i1 %or.cond4, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @replicationAttachToNewMaster()
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %i.ep = load ptr, ptr %0, align 8, !tbaa !86
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 160
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !233
  %i.es = call i32 %i.er(ptr noundef nonnull %0, ptr noundef null) #19, !inline_history !234 ; 0 uses
  %i.et = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.eu = icmp sgt i32 %i.et, 2
  br i1 %i.eu, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.140) #19
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) @__const.readSyncBulkPayload.rsi, i64 64, i1 false)
  br i1 %i.o, label %bb.bq, label %bb.cy

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8, !tbaa !240
  %i.ew = icmp eq i32 %i.ev, 2
  br i1 %i.ew, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @moduleFireServerEvent(i64 noundef 14, i32 noundef 0, ptr noundef null) #19
  %bcmp101 = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) getelementptr inbounds nuw (i8, ptr @server, i64 7148), ptr noundef nonnull dereferenceable(40) getelementptr inbounds nuw (i8, ptr @server, i64 7632), i64 40)
  %i.ex = icmp eq i32 %bcmp101, 0
  %spec.select117 = zext i1 %i.ex to i32
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.068 = phi i32 [ 0, %bb.bq ], [ %spec.select117, %bb.br ]
  %i.ey = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7504), align 8, !tbaa !243
  call void @rioInitWithConn(ptr noundef nonnull %3, ptr noundef nonnull %0, i64 noundef %i.ey) #19
  store ptr %3, ptr @disklessLoadingRio, align 8, !tbaa !256
  %i.ez = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7504), align 8, !tbaa !243
  call void @loadingSetFlags(ptr noundef null, i64 noundef %i.ez, i32 noundef %.068) #19
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8, !tbaa !240
  %.not102 = icmp eq i32 %i.fa, 2
  br i1 %.not102, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.fc = icmp sgt i32 %i.fb, 2
  br i1 %i.fc, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.141) #19
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.fd = call i64 @emptyData(i32 noundef -1, i32 noundef %i.t, ptr noundef nonnull @replicationEmptyDbCallback) #19 ; 0 uses
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bs
  call void @loadingFireEvent(i32 noundef 2) #19
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8, !tbaa !240
  %i.ff = icmp eq i32 %i.fe, 2
  br i1 %i.ff, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.fg = call ptr @initTempDb() #19
  %i.fh = call ptr @functionsLibCtxCreate() #19
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.fi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !258
  %i.fj = call ptr @functionsLibCtxGetCurrent() #19 ; 2 uses
  call void @functionsLibCtxClear(ptr noundef %i.fj) #19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.070 = phi ptr [ %i.fg, %bb.bx ], [ %i.fi, %bb.by ] ; 4 uses
  %.069 = phi ptr [ %i.fh, %bb.bx ], [ %i.fj, %bb.by ] ; 3 uses
  %i.fk = call i32 @connBlock(ptr noundef nonnull %0) #19 ; 0 uses
  %i.fl = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7452), align 4, !tbaa !77
  %i.fm = mul nsw i32 %i.fl, 1000
  %i.fn = sext i32 %i.fm to i64
  %i.fo = call i32 @connRecvTimeout(ptr noundef nonnull %0, i64 noundef %i.fn) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %.070, ptr %4, align 8, !tbaa !259
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.069, ptr %i.fp, align 8, !tbaa !262
  %i.fq = call i32 @rdbLoadRioWithLoadingCtx(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %4) #19
  %.not103 = icmp eq i32 %i.fq, 0
  br i1 %.not103, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fr = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.fs = icmp sgt i32 %i.fr, 3
  br i1 %i.fs, label %bb.ch, label %.sink.split

bb.cb:                                            ; preds = %bb.bz
  %.b85 = load i1, ptr @readSyncBulkPayload.usemark, align 4
  br i1 %.b85, label %bb.cc, label %bb.ct

bb.cc:                                            ; preds = %bb.cb
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !263
  %i.fv = and i64 %i.fu, 1
  %.not.i119 = icmp eq i64 %i.fv, 0
  br i1 %.not.i119, label %.preheader.i, label %rioRead.exit.thread

.preheader.i:                                     ; preds = %bb.cc
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %.preheader.i
  %.02537.i = phi i64 [ 40, %.preheader.i ], [ %i.gj, %bb.cg ] ; 3 uses
  %.02736.i = phi ptr [ %i.a, %.preheader.i ], [ %i.gi, %bb.cg ] ; 3 uses
  %i.fz = load i64, ptr %i.fw, align 8, !tbaa !265 ; 2 uses
  %.not32.not.i = icmp eq i64 %i.fz, 0
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fz, i64 %.02537.i)
  %i.gb = select i1 %.not32.not.i, i64 %.02537.i, i64 %i.ga ; 5 uses
  %i.gc = load ptr, ptr %3, align 8, !tbaa !266
  %i.gd = call i64 %i.gc(ptr noundef nonnull %3, ptr noundef %.02736.i, i64 noundef %i.gb) #19, !inline_history !267
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.thread.i120, label %bb.ce

.thread.i120:                                     ; preds = %bb.cd
  %i.gf = load i64, ptr %i.ft, align 8, !tbaa !263
  %i.gg = or i64 %i.gf, 1
  store i64 %i.gg, ptr %i.ft, align 8, !tbaa !263
  br label %rioRead.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.gh = load ptr, ptr %i.fx, align 8, !tbaa !268 ; 2 uses
  %.not33.i = icmp eq ptr %i.gh, null
  br i1 %.not33.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void %i.gh(ptr noundef nonnull %3, ptr noundef %.02736.i, i64 noundef %i.gb) #19, !inline_history !267
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.gi = getelementptr inbounds nuw i8, ptr %.02736.i, i64 %i.gb
  %i.gj = sub i64 %.02537.i, %i.gb                ; 2 uses
  %i.gk = load i64, ptr %i.fy, align 8, !tbaa !269
  %i.gl = add i64 %i.gk, %i.gb
  store i64 %i.gl, ptr %i.fy, align 8, !tbaa !269
  %.not31.i = icmp eq i64 %i.gj, 0
  br i1 %.not31.i, label %rioRead.exit, label %bb.cd

rioRead.exit:                                     ; preds = %bb.cg
  %bcmp105 = call i32 @bcmp(ptr noundef nonnull dereferenceable(40) %i.a, ptr noundef nonnull dereferenceable(40) @readSyncBulkPayload.eofmark, i64 40)
  %.not106 = icmp eq i32 %bcmp105, 0
  br i1 %.not106, label %bb.ct, label %rioRead.exit.thread

rioRead.exit.thread:                              ; preds = %.thread.i120, %bb.cc, %rioRead.exit
  %i.gm = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.gn = icmp sgt i32 %i.gm, 3
  br i1 %i.gn, label %bb.ch, label %.sink.split

.sink.split:                                      ; preds = %rioRead.exit.thread, %bb.ca
  %.str.142.sink = phi ptr [ @.str.142, %bb.ca ], [ @.str.143, %rioRead.exit.thread ]
  call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull %.str.142.sink) #19
  br label %bb.ch

bb.ch:                                            ; preds = %.sink.split, %bb.ca, %rioRead.exit.thread
  store ptr null, ptr @disklessLoadingRio, align 8, !tbaa !256
  call void @rioFreeConn(ptr noundef nonnull %3, ptr noundef null) #19
  %i.go = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7376), align 8, !tbaa !240
  %i.gp = icmp eq i32 %i.go, 2
  br i1 %i.gp, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  call void @moduleFireServerEvent(i64 noundef 14, i32 noundef 1, ptr noundef null) #19
  call void @discardTempDb(ptr noundef %.070) #19
  call void @functionsLibCtxFree(ptr noundef %.069) #19
  %i.gq = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !78
  %i.gr = icmp sgt i32 %i.gq, 2
  br i1 %i.gr, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void (i32, ptr, ...) @_serverLog(i32 noundef 2, ptr noundef nonnull @.str.144) #19
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ch
  %i.gs = call i64 @emptyData(i32 noundef -1, i32 noundef %i.t, ptr noundef nonnull @replicationEmptyDbCallback) #19 ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ck
  call void @stopLoading(i32 noundef 0) #19
  %i.gt = call fastcc i32 @rdbChannelAbort(), !inline_history !183
  %.not.i121 = icmp eq i32 %i.gt, 0
  br i1 %.not.i121, label %bb.cm, label %cancelReplicationHandshake.exit123.thread

bb.cm:                                            ; preds = %bb.cl
  %i.gu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4, !tbaa !74 ; 2 uses
  switch i32 %i.gu, label %bb.co [
    i32 12, label %bb.cn
    i32 2, label %bb.cp
  ]

bb.cn:                                            ; preds = %bb.cm
  call void @replicationAbortSyncTransfer(), !inline_history !183
  br label %bb.cq

bb.co:                                            ; preds = %bb.cm
  %i.gv = add i32 %i.gu, -12
  %i.gw = icmp ult i32 %i.gv, -9
  br i1 %i.gw, label %cancelReplicationHandshake.exit123.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7528), align 8, !tbaa !184 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !86
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 96
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !185
  call void %i.ha(ptr noundef nonnull %i.gx) #19, !inline_history !186
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7528), align 8, !tbaa !184
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7476), align 4, !tbaa !74
end_hunk_0
