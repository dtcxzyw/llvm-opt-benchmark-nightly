inline.NumInlined: 245
inline.NumDeleted: 29
begin_hunk_0_@initListeners:bb.a
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i.6, 1 ; 2 uses
  %i.gu = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1184), align 8, !tbaa !406 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = icmp slt i64 %indvars.iv.next.i.6, %i.gv
  br i1 %i.gw, label %.lr.ph.i.6, label %.loopexit.6, !llvm.loop !409

.loopexit.6:                                      ; preds = %bb.be, %connAcceptHandler.exit.6
  %i.gx = phi i32 [ %i.gn, %connAcceptHandler.exit.6 ], [ %i.gu, %bb.be ]
  %i.gy = add nsw i32 %i.gx, %.1.5
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.6, %bb.ba
  %.1.6 = phi i32 [ %.1.5, %bb.ba ], [ %i.gy, %.loopexit.6 ] ; 2 uses
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1312), align 8, !tbaa !483 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !490
  %i.hd = tail call i32 %i.hc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1224)) #39, !inline_history !491
  %i.he = icmp eq i32 %i.hd, -1
  br i1 %i.he, label %bb.w, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1312), align 8, !tbaa !483 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.hf, null
  br i1 %.not.i.7, label %connAcceptHandler.exit.7, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !493
  br label %connAcceptHandler.exit.7

connAcceptHandler.exit.7:                         ; preds = %bb.bi, %bb.bh
  %.0.i.7 = phi ptr [ %i.hh, %bb.bi ], [ null, %bb.bh ]
  %i.hi = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1288), align 8, !tbaa !406 ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i.7, label %.loopexit.7

.lr.ph.i.7:                                       ; preds = %connAcceptHandler.exit.7, %bb.bj
  %indvars.iv.i.7 = phi i64 [ %indvars.iv.next.i.7, %bb.bj ], [ 0, %connAcceptHandler.exit.7 ] ; 3 uses
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 88), align 8, !tbaa !239
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @server, i64 1224), i64 %indvars.iv.i.7
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !9
  %i.hn = tail call i32 @aeCreateFileEvent(ptr noundef %i.hk, i32 noundef %i.hm, i32 noundef 1, ptr noundef %.0.i.7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @server, i64 1224)) #39
  %i.ho = icmp eq i32 %i.hn, -1
  br i1 %i.ho, label %.preheader.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.7
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i.7, 1 ; 2 uses
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1288), align 8, !tbaa !406 ; 2 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next.i.7, %i.hq
  br i1 %i.hr, label %.lr.ph.i.7, label %.loopexit.7, !llvm.loop !409

.loopexit.7:                                      ; preds = %bb.bj, %connAcceptHandler.exit.7
  %i.hs = phi i32 [ %i.hi, %connAcceptHandler.exit.7 ], [ %i.hp, %bb.bj ]
  %i.ht = add nsw i32 %i.hs, %.1.6
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit.7, %bb.bf
  %.1.7 = phi i32 [ %.1.6, %bb.bf ], [ %i.ht, %.loopexit.7 ]
  %i.hu = icmp eq i32 %.1.7, 0
  br i1 %i.hu, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.hv = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6416), align 8, !tbaa !48
  %i.hw = icmp sgt i32 %i.hv, 3
  br i1 %i.hw, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  tail call void (i32, ptr, ...) @_serverLog(i32 noundef 3, ptr noundef nonnull @.str.164)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  tail call void @exit(i32 noundef 1) #44
  unreachable

bb.bo:                                            ; preds = %bb.bk
  ret void
}

declare i32 @connectionIndexByType(ptr noundef) local_unnamed_addr #4

declare ptr @connectionByType(ptr noundef) local_unnamed_addr #4

declare ptr @connectionTypeTls() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @InitServerLast() local_unnamed_addr #0 {
bb.a:
  tail call void @bioInit() #39
  tail call void @initThreadedIO() #39
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6460), align 4, !tbaa !494
  tail call void @set_jemalloc_bg_thread(i32 noundef %i.a) #39
  %i.b = tail call i64 @zmalloc_used_memory() #39
  store i64 %i.b, ptr getelementptr inbounds nuw (i8, ptr @server, i64 208), align 8, !tbaa !495
  ret void
}

declare void @bioInit() local_unnamed_addr #4

declare void @initThreadedIO() local_unnamed_addr #4

declare void @set_jemalloc_bg_thread(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @populateCommandLegacyRangeSpec(ptr noundef captures(none) initializes((232, 288)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i8 0, i64 56, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !496  ; 3 uses
  %i.d = and i64 %i.c, 2097152
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = or i64 %i.c, 33554432                    ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !tbaa !496
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %i.e, %bb.b ], [ %i.c, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !497  ; 3 uses
  switch i32 %i.h, label %bb.h [
    i32 0, label %bb.x
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !498  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !499
  %i.m = icmp eq i32 %i.l, 2
  br i1 %i.m, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !500
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.f, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !tbaa.struct !501
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !502
  %i.s = and i64 %i.r, 512
  %.not78 = icmp eq i64 %i.s, 0
  br i1 %.not78, label %bb.x, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = or i64 %i.f, 33554432
  store i64 %i.t, ptr %i.b, align 8, !tbaa !496
  br label %bb.x

bb.h:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.d, %bb.e, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !498
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.i

._crit_edge:                                      ; preds = %bb.s
  switch i32 %.165, label %bb.u [
    i32 2147483647, label %._crit_edge.thread
    i32 0, label %bb.t
  ], !prof !503

bb.i:                                             ; preds = %.lr.ph, %bb.s
  %i.x = phi i64 [ %i.f, %.lr.ph ], [ %i.aw, %bb.s ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.06181 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.s ] ; 4 uses
  %.06280 = phi i32 [ 0, %.lr.ph ], [ %.163, %bb.s ] ; 3 uses
  %.06479 = phi i32 [ 2147483647, %.lr.ph ], [ %.165, %bb.s ] ; 3 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %indvars.iv ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !499
  %.not72 = icmp eq i32 %i.aa, 2
  br i1 %.not72, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !500
  %.not73 = icmp eq i32 %i.ac, 2
  br i1 %.not73, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = or i64 %i.x, 33554432                   ; 2 uses
  store i64 %i.ad, ptr %i.b, align 8, !tbaa !496
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !47
  %.not74 = icmp eq i32 %i.af, 1
  br i1 %.not74, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not75 = icmp eq i32 %.06181, 0
  br i1 %.not75, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !47
  %i.ai = add nsw i32 %i.ah, -1
  %.not76 = icmp eq i32 %.06181, %i.ai
  br i1 %.not76, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.aj = or i64 %i.x, 33554432                   ; 2 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !496
  br label %bb.s

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !502
  %i.am = and i64 %i.al, 512
  %.not77 = icmp eq i64 %i.am, 0
  br i1 %.not77, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = or i64 %i.x, 33554432                   ; 2 uses
  store i64 %i.an, ptr %i.b, align 8, !tbaa !496
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = phi i64 [ %i.an, %bb.q ], [ %i.x, %bb.p ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !47 ; 2 uses
  %.064. = tail call i32 @llvm.smin.i32(i32 %.06479, i32 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !47 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  %i.au = select i1 %i.at, i32 0, i32 %i.aq
  %spec.select = add nsw i32 %i.au, %i.as
  %i.av = tail call i32 @llvm.umax.i32(i32 %.06280, i32 %spec.select) ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o, %bb.k
  %i.aw = phi i64 [ %i.ad, %bb.k ], [ %i.aj, %bb.o ], [ %i.ao, %bb.r ] ; 2 uses
  %.165 = phi i32 [ %.06479, %bb.k ], [ %.06479, %bb.o ], [ %.064., %bb.r ] ; 4 uses
  %.163 = phi i32 [ %.06280, %bb.k ], [ %.06280, %bb.o ], [ %i.av, %bb.r ] ; 4 uses
  %.1 = phi i32 [ %.06181, %bb.k ], [ %.06181, %bb.o ], [ %i.av, %bb.r ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !504

._crit_edge.thread:                               ; preds = %bb.h, %._crit_edge
  %i.ax = phi i64 [ %i.aw, %._crit_edge ], [ %i.f, %bb.h ]
  %i.ay = or i64 %i.ax, 33554432
  store i64 %i.ay, ptr %i.b, align 8, !tbaa !496
  br label %bb.x

bb.t:                                             ; preds = %._crit_edge
  tail call void @_serverAssert(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.9, i32 noundef 3280) #39
  tail call void @abort() #41
  unreachable

bb.u:                                             ; preds = %._crit_edge
  %.not71 = icmp eq i32 %.163, 0
  br i1 %.not71, label %bb.v, label %bb.w, !prof !121

bb.v:                                             ; preds = %bb.u
  tail call void @_serverAssert(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.9, i32 noundef 3281) #39
  tail call void @abort() #41
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 2, ptr %i.az, align 8, !tbaa !505
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %.165, ptr %i.ba, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 2, ptr %i.bb, align 8, !tbaa !506
  %i.bc = icmp slt i32 %.163, 0
  %i.bd = select i1 %i.bc, i32 0, i32 %.165
  %i.be = sub nsw i32 %.163, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 1, ptr %i.bg, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.bh, align 4, !tbaa !47
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread, %bb.w, %bb.c, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @catSubCommandFullname(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsempty() #39
  %i.b = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef %i.a, ptr noundef nonnull @.str.167, ptr noundef %0, ptr noundef %1) #39
  ret ptr %i.b
}

declare ptr @sdscatfmt(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @commandAddSubcommand(ptr noundef %0, ptr noundef initializes((208, 212), (296, 304)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !507
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dictCreate(ptr noundef nonnull @commandTableDictType) #39
  store ptr %i.c, ptr %i.a, align 8, !tbaa !507
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %0, ptr %i.d, align 8, !tbaa !508
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !394
  %i.g = tail call i64 @ACLGetCommandID(ptr noundef %i.f) #39
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i32 %i.h, ptr %i.i, align 8, !tbaa !509
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !507
  %i.k = tail call ptr @sdsnew(ptr noundef %2) #39
  %i.l = tail call i32 @dictAdd(ptr noundef %i.j, ptr noundef %i.k, ptr noundef %1) #39
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d, !prof !138

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.9, i32 noundef 3302) #39
  tail call void @abort() #41
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

declare i64 @ACLGetCommandID(ptr noundef) local_unnamed_addr #4

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @setImplicitACLCategories(ptr noundef captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !496  ; 6 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !510
  %i.f = or i64 %i.e, 4
  store i64 %i.f, ptr %i.d, align 8, !tbaa !510
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = and i64 %i.b, 2
  %.not15 = icmp eq i64 %i.g, 0
  br i1 %.not15, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !510  ; 2 uses
  %i.j = and i64 %i.i, 1048576
  %.not16 = icmp eq i64 %i.j, 0
  br i1 %.not16, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = or i64 %i.i, 2
  store i64 %i.k, ptr %i.h, align 8, !tbaa !510
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.l = and i64 %i.b, 16
  %.not17 = icmp eq i64 %i.l, 0
  br i1 %.not17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !510
  %i.o = or i64 %i.n, 139264
  store i64 %i.o, ptr %i.m, align 8, !tbaa !510
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = and i64 %i.b, 32
  %.not18 = icmp eq i64 %i.p, 0
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !510
  %i.s = or i64 %i.r, 4096
end_hunk_0
