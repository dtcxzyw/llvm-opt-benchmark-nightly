inline.NumInlined: 146
inline.NumDeleted: 13
begin_hunk_0_@flushdbCommand:bb.a
bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @shared, align 8, !tbaa !147
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.p) #20
  br label %bb.g

bb.g:                                             ; preds = %getFlushCommandFlags.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @delGenericCommand(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.d
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %bb.d ], [ 1, %.lr.ph ] ; 5 uses
  %.026.us = phi i32 [ %.2.us, %bb.d ], [ 0, %.lr.ph ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv29
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.j = tail call fastcc i32 @expireIfNeeded(ptr noundef %i.f, ptr noundef %i.i, ptr noundef null, i32 noundef 0)
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv29
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.p = tail call range(i32 0, 2) i32 @dbGenericDelete(ptr noundef %i.l, ptr noundef %i.o, i32 noundef 0, i32 noundef 1)
  %.not24.us = icmp eq i32 %i.p, 0
  br i1 %.not24.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv29
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103  ; 2 uses
  tail call void @touchWatchedKey(ptr noundef %i.q, ptr noundef %i.t) #20
  tail call void @trackingInvalidateKey(ptr noundef nonnull %0, ptr noundef %i.t, i32 noundef 1) #20
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv29
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load i32, ptr %i.y, align 8, !tbaa !92
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef %i.w, i32 noundef %i.z) #20
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.ab = add nsw i64 %i.aa, 1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.ac = add nsw i32 %.026.us, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.split.us
  %.2.us = phi i32 [ %.026.us, %.lr.ph.split.us ], [ %i.ac, %bb.c ], [ %.026.us, %bb.b ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 8, !tbaa !136
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next30, %i.ae
  br i1 %i.af, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !151

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 1, %.lr.ph ] ; 5 uses
  %.026 = phi i32 [ %.2, %bb.g ], [ 0, %.lr.ph ]  ; 3 uses
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.ak = tail call fastcc i32 @expireIfNeeded(ptr noundef %i.ag, ptr noundef %i.aj, ptr noundef null, i32 noundef 0)
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103
  %i.aq = tail call range(i32 0, 2) i32 @dbGenericDelete(ptr noundef %i.am, ptr noundef %i.ap, i32 noundef 1, i32 noundef 1)
  %.not24 = icmp eq i32 %i.aq, 0
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !103 ; 2 uses
  tail call void @touchWatchedKey(ptr noundef %i.ar, ptr noundef %i.au) #20
  tail call void @trackingInvalidateKey(ptr noundef nonnull %0, ptr noundef %i.au, i32 noundef 1) #20
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !103
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !92
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef %i.ax, i32 noundef %i.ba) #20
  %i.bb = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.bc = add nsw i64 %i.bb, 1
  store i64 %i.bc, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.bd = add nsw i32 %.026, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph.split
  %.2 = phi i32 [ %.026, %.lr.ph.split ], [ %i.bd, %bb.f ], [ %.026, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !136
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %bb.g, %bb.d, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2.us, %bb.d ], [ %.2, %bb.g ]
  %i.bh = sext i32 %.0.lcssa to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bh) #20
  ret void
}

declare void @addReplyLongLong(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @delCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8372), align 4, !tbaa !152
  tail call void @delGenericCommand(ptr noundef %0, i32 noundef %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @delexCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136
  switch i32 %i.b, label %bb.c [
    i32 2, label %bb.b
    i32 4, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !122
  tail call void @delGenericCommand(ptr noundef nonnull %0, i32 noundef %i.c)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  tail call void @addReplyErrorArity(ptr noundef nonnull %0) #20
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !103  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.j = tail call ptr @lookupKey(ptr noundef %i.i, ptr noundef %i.g, i32 noundef 0, ptr noundef null) ; 6 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef 0) #20
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8
  %i.m = and i64 %i.l, 15
  %.not56 = icmp eq i64 %i.m, 0
  br i1 %.not56, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #20
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !137  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !103
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = tail call i32 @strcasecmp(ptr noundef nonnull @.str.17, ptr noundef %i.r) #24
  %.not57 = icmp eq i32 %i.s, 0
  br i1 %.not57, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call ptr @getDecodedObject(ptr noundef nonnull %i.j) #20 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = tail call i32 @sdscmp(ptr noundef %i.aa, ptr noundef %i.y) #20
  %i.ac = icmp eq i32 %i.ab, 0
  tail call void @decrRefCount(ptr noundef %i.t) #20
  br i1 %i.ac, label %select.unfold71, label %.thread76

bb.j:                                             ; preds = %bb.h
  %i.ad = tail call i32 @strcasecmp(ptr noundef nonnull @.str.18, ptr noundef %i.r) #24
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = tail call ptr @getDecodedObject(ptr noundef nonnull %i.j) #20 ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !103
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = tail call i32 @sdscmp(ptr noundef %i.al, ptr noundef %i.aj) #20
  %.not59 = icmp eq i32 %i.am, 0
  tail call void @decrRefCount(ptr noundef %i.ae) #20
  br i1 %.not59, label %.thread76, label %select.unfold71

bb.l:                                             ; preds = %bb.j
  %i.an = tail call i32 @strcasecmp(ptr noundef nonnull @.str.19, ptr noundef %i.r) #24
  %.not60 = icmp eq i32 %i.an, 0
  br i1 %.not60, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !103
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !64
  %i.as = tail call i32 @validateHexDigest(ptr noundef nonnull %0, ptr noundef %i.ar) #20
  %.not61 = icmp eq i32 %i.as, 0
  br i1 %.not61, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.at = tail call ptr @stringDigest(ptr noundef nonnull %i.j) #20 ; 2 uses
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !103
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  %i.az = tail call i32 @strcasecmp(ptr noundef %i.at, ptr noundef %i.ay) #24
  %i.ba = icmp eq i32 %i.az, 0
  tail call void @sdsfree(ptr noundef %i.at) #20
  br i1 %i.ba, label %select.unfold71, label %.thread76

bb.o:                                             ; preds = %bb.l
  %i.bb = tail call i32 @strcasecmp(ptr noundef nonnull @.str.20, ptr noundef %i.r) #24
  %.not62 = icmp eq i32 %i.bb, 0
  br i1 %.not62, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !103
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !64
  %i.bg = tail call i32 @validateHexDigest(ptr noundef nonnull %0, ptr noundef %i.bf) #20
  %.not63 = icmp eq i32 %i.bg, 0
  br i1 %.not63, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bh = tail call ptr @stringDigest(ptr noundef nonnull %i.j) #20 ; 2 uses
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !137
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !103
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !64
  %i.bn = tail call i32 @strcasecmp(ptr noundef %i.bh, ptr noundef %i.bm) #24
  %.not64 = icmp eq i32 %i.bn, 0
  tail call void @sdsfree(ptr noundef %i.bh) #20
  br i1 %.not64, label %.thread76, label %select.unfold71

bb.r:                                             ; preds = %bb.o
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #20
  br label %bb.t

select.unfold71:                                  ; preds = %bb.i, %bb.n, %bb.q, %bb.k
  %i.bo = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8368), align 8, !tbaa !122
  %.not66 = icmp ne i32 %i.bo, 0
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !102
  %. = zext i1 %.not66 to i32
  %i.bq = tail call range(i32 0, 2) i32 @dbGenericDelete(ptr noundef %i.bp, ptr noundef %i.g, i32 noundef %., i32 noundef 1)
  %.not67 = icmp eq i32 %i.bq, 0
  br i1 %.not67, label %.thread76, label %bb.s

bb.s:                                             ; preds = %select.unfold71
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 400), align 8, !tbaa !153
  tail call void (ptr, i32, ...) @rewriteClientCommandVector(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.br, ptr noundef %i.g) #20
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !102
  tail call void @touchWatchedKey(ptr noundef %i.bs, ptr noundef %i.g) #20
  tail call void @trackingInvalidateKey(ptr noundef nonnull %0, ptr noundef %i.g, i32 noundef 1) #20
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !102
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !92
  tail call void @notifyKeyspaceEvent(i32 noundef 4, ptr noundef nonnull @.str.15, ptr noundef %i.g, i32 noundef %i.bv) #20
  %i.bw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  %i.bx = add nsw i64 %i.bw, 1
  store i64 %i.bx, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !141
  br label %.thread76

.thread76:                                        ; preds = %bb.n, %bb.i, %bb.q, %bb.k, %bb.s, %select.unfold71
  %.079 = phi i64 [ 0, %select.unfold71 ], [ 1, %bb.s ], [ 0, %bb.k ], [ 0, %bb.q ], [ 0, %bb.i ], [ 0, %bb.n ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.079) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %bb.g, %bb.p, %bb.m, %.thread76, %bb.r, %bb.c, %bb.b
  ret void
}

declare void @addReplyErrorArity(ptr noundef) local_unnamed_addr #2

declare void @addReplyError(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sdscmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @validateHexDigest(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @stringDigest(ptr noundef) local_unnamed_addr #2

declare void @sdsfree(ptr noundef) local_unnamed_addr #2

declare void @rewriteClientCommandVector(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @unlinkCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @delGenericCommand(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @existsCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.089 = phi i64 [ 0, %.lr.ph ], [ %spec.select, %bb.b ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !102
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103
  %i.j = tail call ptr @lookupKey(ptr noundef %i.f, ptr noundef %i.i, i32 noundef 1, ptr noundef null)
  %.not = icmp ne ptr %i.j, null
  %i.k = zext i1 %.not to i64
  %spec.select = add nuw nsw i64 %.089, %i.k      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !136
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.08.lcssa = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.08.lcssa) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @selectCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = call i32 @getIntFromObjectOrReply(ptr noundef %0, ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null) #20
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8160), align 8, !tbaa !108
  %i.h = icmp ne i32 %i.g, 0
  %i.i = load i32, ptr %i.a, align 4              ; 4 uses
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.22) #20
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !155
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @server, i64 5176), align 8, !tbaa !155
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = icmp sgt i32 %i.i, -1
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4
  %.not.i = icmp slt i32 %i.i, %i.n
  %or.cond.i = select i1 %i.m, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #20
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !128
  %i.p = zext nneg i32 %i.i to i64
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.r, align 8, !tbaa !102
  %i.s = load ptr, ptr @shared, align 8, !tbaa !147
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.s) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare i32 @getIntFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @randomkeyCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %i.c = tail call ptr @dbRandomKey(ptr noundef %i.b) ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @addReplyNull(ptr noundef nonnull %0) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #20
  tail call void @decrRefCount(ptr noundef nonnull %i.c) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @addReplyNull(ptr noundef) local_unnamed_addr #2

declare void @addReplyBulk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @keysCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %union.anon.5, align 8              ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 8 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !110 ; 2 uses
  %i.h = and i8 %.val.i, 7
  switch i8 %i.h, label %sdslen.exit [
    i8 0, label %bb.b
end_hunk_0
begin_hunk_1_@getAllKeySpecsFlags:bb.a
  %bin.rdx = or <2 x i64> %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.split.preheader25

.lr.ph.split.preheader25:                         ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  %.011.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv15 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next16.3, %.lr.ph.split.us ] ; 5 uses
  %.011.us = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %i.at, %.lr.ph.split.us ]
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv15
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !217
  %i.ah = or i64 %i.ag, %.011.us
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !217
  %i.al = or i64 %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv15
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !217
  %i.ap = or i64 %i.ao, %i.al
  %i.aq = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 176
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !217
  %i.at = or i64 %i.as, %i.ap                     ; 3 uses
  %indvars.iv.next16.3 = add nuw nsw i64 %indvars.iv15, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !221

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv15.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next16.3, %._crit_edge.loopexit.unr-lcssa ]
  %.011.us.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv15.epil = phi i64 [ %indvars.iv.next16.epil, %.lr.ph.split.us.epil ], [ %indvars.iv15.epil.init, %.lr.ph.split.us.epil.preheader ] ; 2 uses
  %.011.us.epil = phi i64 [ %i.ax, %.lr.ph.split.us.epil ], [ %.011.us.epil.init, %.lr.ph.split.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv15.epil
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !217
  %i.ax = or i64 %i.aw, %.011.us.epil             ; 2 uses
  %indvars.iv.next16.epil = add nuw nsw i64 %indvars.iv15.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !222

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.ax, %.lr.ph.split.us.epil ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.split ]
  ret i64 %.0.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader25, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader25 ] ; 2 uses
  %.011 = phi i64 [ %i.bc, %.lr.ph.split ], [ %.011.ph, %.lr.ph.split.preheader25 ]
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !217
  %i.bb = xor i64 %i.ba, -1
  %i.bc = or i64 %.011, %i.bb                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count18
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !224
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getKeysUsingKeySpecs(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = load i32, ptr %4, align 8, !tbaa !213
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.b, !prof !101

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !215
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph171, label %._crit_edge172

.lr.ph171:                                        ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = and i32 %3, 1
  %.not127 = icmp eq i32 %i.h, 0
  %i.i = add nsw i32 %2, -1
  %i.j = sext i32 %2 to i64                       ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = and i32 %3, 2
  %.not140 = icmp eq i32 %i.p, 0                  ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef 3080) #20
  tail call void @abort() #21
  unreachable

bb.c:                                             ; preds = %.lr.ph171, %.thread
  %.0100170 = phi i64 [ 0, %.lr.ph171 ], [ %i.ei, %.thread ] ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !216
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %.0100170 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !225  ; 2 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.e, !prof !47

bb.d:                                             ; preds = %bb.c
  call void @_serverAssert(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.2, i32 noundef 3084) #20
  call void @abort() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !217
  %i.w = and i64 %i.v, 256
  %.not126 = icmp ne i64 %i.w, 0
  %or.cond141 = and i1 %.not127, %.not126
  br i1 %or.cond141, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.t, label %bb.as [
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !110
  %i.z = sext i32 %i.y to i64
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !110 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = select i1 %i.ad, i32 0, i32 %2
  %i.af = add nsw i32 %i.ae, %i.ac                ; 3 uses
  %.inv = icmp slt i32 %i.ac, 1
  %i.ag = select i1 %.inv, i32 1, i32 %i.i        ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %.not128164 = icmp eq i32 %i.af, %i.ag
  br i1 %.not128164, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ai = sext i32 %i.af to i64
  %.not130 = icmp sgt i32 %i.af, %i.ag
  %.v = select i1 %.not130, i64 -1, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %.0101165 = phi i64 [ %i.ai, %.lr.ph ], [ %i.ar, %bb.k ] ; 5 uses
  %i.aj = icmp sge i64 %.0101165, %i.j
  %i.ak = icmp slt i64 %.0101165, 1
  %or.cond = or i1 %i.aj, %i.ak
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.0101165
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !103
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !110
  %i.aq = call i32 @strcasecmp(ptr noundef %i.ao, ptr noundef %i.ap) #24
  %.not129 = icmp eq i32 %i.aq, 0
  br i1 %.not129, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i64 %.0101165, %.v              ; 2 uses
  %.not128 = icmp eq i64 %i.ar, %i.ah
  br i1 %.not128, label %.thread, label %bb.i, !llvm.loop !226

bb.l:                                             ; preds = %bb.j
  %i.as = add nuw nsw i64 %.0101165, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.1111 = phi i64 [ %i.z, %bb.g ], [ %i.as, %bb.l ] ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.au = load i32, ptr %i.at, align 8, !tbaa !227
  switch i32 %i.au, label %bb.as [
    i32 2, label %bb.n
    i32 3, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !110
  %i.ay = sext i32 %i.ax to i64                   ; 3 uses
  %i.az = load i32, ptr %i.av, align 4, !tbaa !110 ; 4 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = zext nneg i32 %i.az to i64
  %i.bc = add nsw i64 %.1111, %i.bb
  br label %bb.ac

bb.p:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !110 ; 2 uses
  %.not133 = icmp eq i32 %i.be, 0
  br i1 %.not133, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = add nsw i32 %i.az, %2
  %i.bg = sext i32 %i.bf to i64
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.bh = icmp eq i32 %i.az, -1
  br i1 %i.bh, label %bb.t, label %bb.s, !prof !101

bb.s:                                             ; preds = %bb.r
  call void @_serverAssert(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.2, i32 noundef 3121) #20
  call void @abort() #21
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bi = sub nsw i64 %i.j, %.1111
  %i.bj = sext i32 %i.be to i64
  %i.bk = sdiv i64 %i.bi, %i.bj
  %i.bl = add nsw i64 %.1111, -1
  %i.bm = add nsw i64 %i.bl, %i.bk
  br label %bb.ac

bb.u:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !110
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !110 ; 2 uses
  %.not132 = icmp slt i32 %i.br, %2
  br i1 %.not132, label %bb.v, label %.thread150

bb.v:                                             ; preds = %bb.u
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %1, i64 %.1111
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !103
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !64 ; 6 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %.val.i = load i8, ptr %i.by, align 1, !tbaa !110 ; 2 uses
  %i.bz = and i8 %.val.i, 7
  switch i8 %i.bz, label %sdslen.exit [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
  ]

bb.w:                                             ; preds = %bb.v
  %i.ca = lshr i8 %.val.i, 3
  %i.cb = zext nneg i8 %i.ca to i64
  br label %sdslen.exit

bb.x:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds i8, ptr %i.bx, i64 -3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !110
  %i.ce = zext i8 %i.cd to i64
  br label %sdslen.exit

bb.y:                                             ; preds = %bb.v
  %i.cf = getelementptr inbounds i8, ptr %i.bx, i64 -5
  %i.cg = load i16, ptr %i.cf, align 1, !tbaa !111
  %i.ch = zext i16 %i.cg to i64
  br label %sdslen.exit

bb.z:                                             ; preds = %bb.v
  %i.ci = getelementptr inbounds i8, ptr %i.bx, i64 -9
  %i.cj = load i32, ptr %i.ci, align 1, !tbaa !9
  %i.ck = zext i32 %i.cj to i64
  br label %sdslen.exit

bb.aa:                                            ; preds = %bb.v
  %i.cl = getelementptr inbounds i8, ptr %i.bx, i64 -17
  %i.cm = load i64, ptr %i.cl, align 1, !tbaa !48
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %.0.i = phi i64 [ %i.cm, %bb.aa ], [ %i.cb, %bb.w ], [ %i.ce, %bb.x ], [ %i.ch, %bb.y ], [ %i.ck, %bb.z ], [ 0, %bb.v ]
  %i.cn = call i32 @string2ll(ptr noundef nonnull %i.bx, i64 noundef %.0.i, ptr noundef nonnull %i.a) #20
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cq = icmp slt i64 %i.cp, 0
  %or.cond4 = select i1 %i.co, i1 true, i1 %i.cq
  br i1 %or.cond4, label %.thread150, label %bb.ab

.thread150:                                       ; preds = %bb.u, %sdslen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.as

bb.ab:                                            ; preds = %sdslen.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !110
  %i.ct = sext i32 %i.cs to i64
  %i.cu = add nsw i64 %.1111, %i.ct               ; 2 uses
  %i.cv = add nsw i64 %i.cp, -1
  %i.cw = mul nsw i64 %i.cv, %i.bq
  %i.cx = add nsw i64 %i.cu, %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.o, %bb.t, %bb.q
  %.0115 = phi i64 [ %i.ay, %bb.o ], [ %i.ay, %bb.t ], [ %i.ay, %bb.q ], [ %i.bq, %bb.ab ]
  %.4114 = phi i64 [ %.1111, %bb.o ], [ %.1111, %bb.t ], [ %.1111, %bb.q ], [ %i.cu, %bb.ab ] ; 5 uses
  %.3 = phi i64 [ %i.bc, %bb.o ], [ %i.bm, %bb.t ], [ %i.bg, %bb.q ], [ %i.cx, %bb.ab ] ; 4 uses
  %.not134 = icmp slt i64 %.3, %i.j
  %i.cy = icmp sge i64 %.3, %.4114
  %.not135 = icmp slt i64 %.4114, %i.j
  %i.cz = and i1 %.not135, %i.cy
  %or.cond144 = select i1 %.not134, i1 %i.cz, i1 false
  br i1 %or.cond144, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.da = sub nsw i64 %.3, %.4114
  %i.db = trunc i64 %i.da to i32
  %i.dc = add i32 %i.db, 1
  %i.dd = load i32, ptr %4, align 8, !tbaa !213   ; 2 uses
  %i.de = add nsw i32 %i.dc, %i.dd                ; 3 uses
  %i.df = load ptr, ptr %i.k, align 8, !tbaa !118 ; 2 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %.not22.i = icmp eq i32 %i.dd, 0
  br i1 %.not22.i, label %bb.ag, label %bb.af, !prof !101

bb.af:                                            ; preds = %bb.ae
  call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  call void @abort() #21
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.l, ptr %i.k, align 8, !tbaa !118
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.dg = phi ptr [ %i.l, %bb.ag ], [ %i.df, %bb.ad ] ; 3 uses
  %i.dh = load i32, ptr %i.m, align 4, !tbaa !214
  %i.di = icmp sgt i32 %i.de, %i.dh
  br i1 %i.di, label %bb.ai, label %.lr.ph169.preheader

bb.ai:                                            ; preds = %bb.ah
  %.not23.i = icmp eq ptr %i.dg, %i.l
  %i.dj = sext i32 %i.de to i64
  %i.dk = shl nsw i64 %i.dj, 3                    ; 2 uses
  br i1 %.not23.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = call ptr @zrealloc(ptr noundef nonnull %i.dg, i64 noundef %i.dk) #25 ; 2 uses
  store ptr %i.dl, ptr %i.k, align 8, !tbaa !118
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.dm = call noalias ptr @zmalloc(i64 noundef %i.dk) #23 ; 4 uses
  store ptr %i.dm, ptr %i.k, align 8, !tbaa !118
  %i.dn = load i32, ptr %4, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.dn, 0
  br i1 %.not24.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = sext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dm, ptr nonnull align 8 %i.l, i64 %i.dp, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dq = phi ptr [ %i.dm, %bb.ak ], [ %i.dm, %bb.al ], [ %i.dl, %bb.aj ]
  store i32 %i.de, ptr %i.m, align 4, !tbaa !214
  br label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %bb.am, %bb.ah
  %i.dr = phi ptr [ %i.dq, %bb.am ], [ %i.dg, %bb.ah ]
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169.preheader, %bb.ar
  %.1102168 = phi i64 [ %i.ef, %bb.ar ], [ %.4114, %.lr.ph169.preheader ] ; 3 uses
  %i.ds = icmp slt i64 %.1102168, %.4114
  br i1 %i.ds, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.lr.ph169
  %i.dt = load i64, ptr %i.n, align 8, !tbaa !100
  %i.du = and i64 %i.dt, 8
  %.not139 = icmp eq i64 %i.du, 0
  br i1 %.not139, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dv = load i32, ptr %i.o, align 8, !tbaa !228
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.2, i32 noundef 3163, ptr noundef nonnull @.str.72) #20
  call void @abort() #21
  unreachable

bb.aq:                                            ; preds = %.lr.ph169
  %i.dx = trunc i64 %.1102168 to i32
  %i.dy = load i32, ptr %4, align 8, !tbaa !213   ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dz ; 2 uses
  store i32 %i.dx, ptr %i.ea, align 4, !tbaa !229
  %i.eb = load i64, ptr %i.u, align 8, !tbaa !217
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !231
  %i.ee = add nsw i32 %i.dy, 1
  store i32 %i.ee, ptr %4, align 8, !tbaa !213
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.ao, %bb.aq
  %i.ef = add nsw i64 %.1102168, %.0115           ; 2 uses
  %.not136 = icmp sgt i64 %i.ef, %.3
  br i1 %.not136, label %._crit_edge, label %.lr.ph169, !llvm.loop !232

._crit_edge:                                      ; preds = %bb.ar
  %i.eg = load i64, ptr %i.u, align 8, !tbaa !217
  %i.eh = and i64 %i.eg, 512
  %.not137 = icmp ne i64 %i.eh, 0
  %or.cond162 = and i1 %.not140, %.not137
  br i1 %or.cond162, label %bb.at, label %.thread

bb.as:                                            ; preds = %.thread150, %bb.m, %bb.f, %bb.ac
  br i1 %.not140, label %bb.at, label %.thread

bb.at:                                            ; preds = %._crit_edge, %bb.as
  store i32 0, ptr %4, align 8, !tbaa !213
  br label %._crit_edge172

.thread:                                          ; preds = %bb.i, %bb.k, %bb.h, %._crit_edge, %bb.e, %bb.as
  %i.ei = add nuw nsw i64 %.0100170, 1            ; 2 uses
  %i.ej = load i32, ptr %i.d, align 8, !tbaa !215
  %i.ek = sext i32 %i.ej to i64
  %i.el = icmp slt i64 %i.ei, %i.ek
  br i1 %i.el, label %bb.c, label %._crit_edge172.loopexit, !llvm.loop !233

._crit_edge172.loopexit:                          ; preds = %.thread
  %.pre = load i32, ptr %4, align 8, !tbaa !213
  br label %._crit_edge172

._crit_edge172:                                   ; preds = %.preheader, %._crit_edge172.loopexit, %bb.at
  %.2 = phi i32 [ -1, %bb.at ], [ %.pre, %._crit_edge172.loopexit ], [ 0, %.preheader ]
  ret i32 %.2
}

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @getKeysFromCommandWithSpecs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i32, ptr %i.a, align 8, !tbaa !215  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %getAllKeySpecsFlags.exit30.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !216  ; 10 uses
  %wide.trip.count18.i = zext nneg i32 %i.b to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 5
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.mod.vf = and i64 %wide.trip.count18.i, 3     ; 2 uses
  %i.f = icmp eq i64 %n.mod.vf, 0
  %i.g = select i1 %i.f, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count18.i, %i.g ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %index
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %index
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %index
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.e, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.p = load i64, ptr %i.l, align 8, !tbaa !217
  %i.q = load i64, ptr %i.m, align 8, !tbaa !217
  %i.r = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.s = insertelement <2 x i64> %i.r, i64 %i.q, i64 1
  %i.t = load i64, ptr %i.n, align 8, !tbaa !217
  %i.u = load i64, ptr %i.o, align 8, !tbaa !217
  %i.v = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %i.w = insertelement <2 x i64> %i.v, i64 %i.u, i64 1
  %i.x = xor <2 x i64> %i.s, splat (i64 -1)
  %i.y = xor <2 x i64> %i.w, splat (i64 -1)
  %i.z = or <2 x i64> %vec.phi, %i.x              ; 2 uses
  %i.aa = or <2 x i64> %vec.phi43, %i.y           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_1
begin_hunk_2_@migrateGetKeys:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = trunc <2 x i64> %i.bf to <2 x i32>
  %i.bk = trunc <2 x i64> %.reass to <2 x i32>
  %interleaved.vec = shufflevector <2 x i32> %i.bj, <2 x i32> splat (i32 146), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bg, align 4, !tbaa !9
  %interleaved.vec58 = shufflevector <2 x i32> %i.bk, <2 x i32> splat (i32 146), <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec58, ptr %i.bi, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader59

.lr.ph.preheader59:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader59, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader59 ] ; 3 uses
  %i.bm = add nuw i64 %indvars.iv, %.030
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bo = trunc i64 %i.bm to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !229
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 146, ptr %i.bp, align 4, !tbaa !231
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !262

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %getKeysPrepareResult.exit
  store i32 %.031, ptr %3, align 8, !tbaa !213
  ret i32 %.031
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 1, 3) i32 @georadiusGetKeys(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 5
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.029 = phi i32 [ %i.k, %bb.d ], [ 5, %bb.a ]   ; 4 uses
  %.02228 = phi i32 [ %.123, %bb.d ], [ -1, %bb.a ] ; 2 uses
  %i.b = sext i32 %.029 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 2 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.76) #24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.81) #24
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = add nsw i32 %.029, 1                     ; 3 uses
  %i.j = icmp slt i32 %i.i, %2                    ; 2 uses
  %spec.select = select i1 %i.j, i32 %i.i, i32 %.02228
  %spec.select27 = select i1 %i.j, i32 %i.i, i32 %.029
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123 = phi i32 [ %.02228, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.029, %bb.b ], [ %spec.select27, %bb.c ]
  %i.k = add nsw i32 %.1, 1                       ; 2 uses
  %i.l = icmp slt i32 %i.k, %2
  br i1 %i.l, label %.lr.ph, label %._crit_edge, !llvm.loop !263

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.022.lcssa = phi i32 [ -1, %bb.a ], [ %.123, %bb.d ] ; 2 uses
  %.not.not = icmp eq i32 %.022.lcssa, -1         ; 2 uses
  %i.m = select i1 %.not.not, i32 1, i32 2        ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.p = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.p, 0
  br i1 %.not22.i, label %bb.g, label %bb.f, !prof !101

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !118
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.r = phi ptr [ %i.q, %bb.g ], [ %i.o, %._crit_edge ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !214
  %i.u = icmp sgt i32 %i.m, %i.t
  br i1 %i.u, label %bb.i, label %getKeysPrepareResult.exit

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.r, %i.v
  %i.w = shl nuw nsw i32 %i.m, 3
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  br i1 %.not23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @zrealloc(ptr noundef nonnull %i.r, i64 noundef %i.x) #25 ; 2 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !118
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.z = tail call noalias ptr @zmalloc(i64 noundef %i.x) #23 ; 4 uses
  store ptr %i.z, ptr %i.n, align 8, !tbaa !118
  %i.aa = load i32, ptr %3, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr nonnull align 8 %i.v, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = phi ptr [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %i.y, %bb.j ]
  store i32 %i.m, ptr %i.s, align 4, !tbaa !214
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.h, %bb.m
  %i.ae = phi ptr [ %i.ad, %bb.m ], [ %i.r, %bb.h ] ; 4 uses
  store i32 1, ptr %i.ae, align 4, !tbaa !229
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !231
  br i1 %.not.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %getKeysPrepareResult.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %.022.lcssa, ptr %i.ag, align 4, !tbaa !229
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !231
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %getKeysPrepareResult.exit
  store i32 %i.m, ptr %3, align 8, !tbaa !213
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1073741824, 1073741824) i32 @xreadGetKeys(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 1
  br i1 %i.a, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %.04361 = phi i32 [ %i.o, %bb.i ], [ 1, %bb.a ] ; 12 uses
  %i.b = sext i32 %.04361 to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 5 uses
  %i.g = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.82) #24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = add i32 %.04361, 1
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.36) #24
  %.not47 = icmp eq i32 %i.i, 0
  br i1 %.not47, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %.04361, 1
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.83) #24
  %.not48 = icmp eq i32 %i.k, 0
  br i1 %.not48, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = add i32 %.04361, 2
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.m = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.84) #24
  %.not49 = icmp eq i32 %i.m, 0
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.85) #24
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %.loopexit59, label %.loopexit

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.245.ph = phi i32 [ %i.h, %bb.b ], [ %i.j, %bb.d ], [ %i.l, %bb.f ], [ %.04361, %bb.g ]
  %i.o = add i32 %.245.ph, 1                      ; 2 uses
  %i.p = icmp slt i32 %i.o, %2
  br i1 %i.p, label %.lr.ph, label %.loopexit, !llvm.loop !264

.loopexit59:                                      ; preds = %bb.h
  %.not51 = icmp eq i32 %.04361, -1
  %i.q = xor i32 %.04361, -1
  %i.r = add i32 %2, %i.q                         ; 3 uses
  br i1 %.not51, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.loopexit59
  %i.s = icmp ne i32 %i.r, 0
  %i.t = and i32 %i.r, 1
  %.not52 = icmp eq i32 %i.t, 0
  %or.cond53 = and i1 %i.s, %.not52
  br i1 %or.cond53, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.u = ashr exact i32 %i.r, 1                   ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.x = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.x, 0
  br i1 %.not22.i, label %bb.n, label %bb.m, !prof !101

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.y, ptr %i.v, align 8, !tbaa !118
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %i.z = phi ptr [ %i.y, %bb.n ], [ %i.w, %bb.k ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !214
  %i.ac = icmp sgt i32 %i.u, %i.ab
  br i1 %i.ac, label %bb.p, label %getKeysPrepareResult.exit

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.z, %i.ad
  %i.ae = sext i32 %i.u to i64
  %i.af = shl nsw i64 %i.ae, 3                    ; 2 uses
  br i1 %.not23.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call ptr @zrealloc(ptr noundef nonnull %i.z, i64 noundef %i.af) #25 ; 2 uses
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !118
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ah = tail call noalias ptr @zmalloc(i64 noundef %i.af) #23 ; 4 uses
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !118
  %i.ai = load i32, ptr %3, align 8, !tbaa !213   ; 2 uses
  %.not24.i = icmp eq i32 %i.ai, 0
  br i1 %.not24.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = sext i32 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr nonnull align 8 %i.ad, i64 %i.ak, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.al = phi ptr [ %i.ah, %bb.r ], [ %i.ah, %bb.s ], [ %i.ag, %bb.q ]
  store i32 %i.u, ptr %i.aa, align 4, !tbaa !214
  br label %getKeysPrepareResult.exit

getKeysPrepareResult.exit:                        ; preds = %bb.o, %bb.t
  %i.am = phi ptr [ %i.al, %bb.t ], [ %i.z, %bb.o ] ; 3 uses
  %i.an = sub nsw i32 %2, %i.u                    ; 2 uses
  %.362 = add nsw i32 %.04361, 1                  ; 3 uses
  %i.ao = icmp slt i32 %.362, %i.an
  br i1 %i.ao, label %.lr.ph65.preheader, label %.loopexit

.lr.ph65.preheader:                               ; preds = %getKeysPrepareResult.exit
  %i.ap = sext i32 %.362 to i64                   ; 7 uses
  %i.aq = sext i32 %i.an to i64                   ; 3 uses
  %i.ar = add nsw i64 %i.ap, 1
  %smax90 = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.as = sub i64 %smax90, %i.ap                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 12
  br i1 %min.iters.check, label %.lr.ph65.preheader94, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph65.preheader
  %i.at = add nsw i64 %i.ap, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.at)
  %i.au = sub i64 %i.ap, %smax
  %.not93 = icmp ugt i64 %i.au, -2147483649
  br i1 %.not93, label %vector.ph, label %.lr.ph65.preheader94

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.as, -4                      ; 4 uses
  %i.av = add i64 %n.vec, %i.ap
  %i.aw = trunc i64 %n.vec to i32
  %i.ax = add i32 %.04361, %i.aw
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.362, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add <2 x i32> %broadcast.splat, <i32 0, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ay = trunc i64 %index to i32
  %.reass101 = add i32 %i.ay, 2
  %sext = shl i64 %index, 32
  %i.az = sext i32 %.reass101 to i64
  %i.ba = ashr exact i64 %sext, 29
  %i.bb = getelementptr inbounds i8, ptr %i.am, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.az
  %interleaved.vec = shufflevector <2 x i32> %vec.ind, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.bb, align 4, !tbaa !9
  %interleaved.vec91 = shufflevector <2 x i32> %step.add, <2 x i32> zeroinitializer, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec91, ptr %i.bc, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph65.preheader94

.lr.ph65.preheader94:                             ; preds = %vector.scevcheck, %.lr.ph65.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ap, %vector.scevcheck ], [ %i.ap, %.lr.ph65.preheader ], [ %i.av, %middle.block ]
  %.3.in63.ph = phi i32 [ %.04361, %vector.scevcheck ], [ %.04361, %.lr.ph65.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader94, %.lr.ph65
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph65 ], [ %indvars.iv.ph, %.lr.ph65.preheader94 ] ; 2 uses
  %.3.in63 = phi i32 [ %i.bh, %.lr.ph65 ], [ %.3.in63.ph, %.lr.ph65.preheader94 ]
  %i.be = sub i32 %.3.in63, %.04361
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bf ; 2 uses
  %i.bh = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !229
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 0, ptr %i.bi, align 4, !tbaa !231
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bj = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.bj, label %.lr.ph65, label %.loopexit, !llvm.loop !266

.loopexit:                                        ; preds = %bb.i, %.lr.ph65, %middle.block, %.loopexit59, %bb.a, %bb.h, %getKeysPrepareResult.exit, %bb.j
  %storemerge = phi i32 [ 0, %bb.j ], [ %i.u, %getKeysPrepareResult.exit ], [ 0, %.loopexit59 ], [ 0, %bb.h ], [ 0, %bb.a ], [ %i.u, %middle.block ], [ %i.u, %.lr.ph65 ], [ 0, %bb.i ] ; 2 uses
  store i32 %storemerge, ptr %3, align 8, !tbaa !213
  ret i32 %storemerge
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setGetKeys(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %3, align 8, !tbaa !213
  %.not22.i = icmp eq i32 %i.c, 0
  br i1 %.not22.i, label %bb.d, label %bb.c, !prof !101

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.2, i32 noundef 3038) #20
  tail call void @abort() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.e = phi ptr [ %i.d, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !214
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %getKeysPrepareResult.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.e, %i.i
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call dereferenceable_or_null(8) ptr @zrealloc(ptr noundef nonnull %i.e, i64 noundef 8) #25 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !118
end_hunk_2
