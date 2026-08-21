inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0_@extractPageMap:bb.a
  switch i8 %i.ag, label %.thread.i [
    i8 0, label %bb.r
    i8 3, label %bb.r
    i8 2, label %bb.r
    i8 4, label %bb.r
  ]

bb.n:                                             ; preds = %bb.l
  %i.ah = and i32 %i.w, 1
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.r, label %bb.o

.thread.i:                                        ; preds = %bb.m
  %i.ai = and i32 %i.w, 1
  %.not49.i = icmp eq i32 %i.ai, 0
  br i1 %.not49.i, label %bb.r, label %.thread50.i

.thread50.i:                                      ; preds = %.thread.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ak = load i64, ptr %i.aj, align 8
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp ult i8 %i.t, 23
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %.thread50.i
  %i.ao = phi i64 [ %i.ak, %.thread50.i ], [ %i.am, %bb.o ]
  %i.ap = zext nneg i8 %i.t to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @RmgrNames, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = phi i64 [ %i.ao, %bb.p ], [ %i.am, %bb.o ] ; 2 uses
  %i.at = phi ptr [ %i.ar, %bb.p ], [ @.str.15, %bb.o ]
  %i.au = zext i8 %i.t to i32
  %i.av = trunc i64 %i.as to i32
  %i.aw = lshr i64 %i.as, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.14, i32 noundef %i.ax, i32 noundef %i.av, i32 noundef %i.au, ptr noundef %i.at, i32 noundef %i.w) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.r:                                             ; preds = %.thread.i, %bb.n, %bb.m, %bb.m, %bb.m, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  %i.az = load i32, ptr %i.ay, align 4
  %.not4551.i = icmp slt i32 %i.az, 0
  br i1 %.not4551.i, label %extractPageInfo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %.052.i = phi i32 [ %i.be, %bb.t ], [ 0, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ba = trunc i32 %.052.i to i8
  %i.bb = call zeroext i1 @XLogRecGetBlockTagExtended(ptr noundef nonnull %i.g, i8 noundef zeroext %i.ba, ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #7
  %i.bc = load i32, ptr %i.a, align 4
  %.not46.i = icmp eq i32 %i.bc, 0
  %or.cond48.i = select i1 %i.bb, i1 %.not46.i, i1 false
  br i1 %or.cond48.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.bd = load i32, ptr %i.b, align 4
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8
  call void @process_target_wal_block_change(i32 noundef 0, i64 %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i, i32 noundef %i.bd) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.be = add i32 %.052.i, 1                      ; 2 uses
  %i.bf = load ptr, ptr %i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 84
  %i.bh = load i32, ptr %i.bg, align 4
  %.not45.i = icmp sgt i32 %i.be, %i.bh
  br i1 %.not45.i, label %extractPageInfo.exit, label %.lr.ph.i, !llvm.loop !4

extractPageInfo.exit:                             ; preds = %bb.t, %bb.r
  %i.bi = load i64, ptr %i.j, align 8             ; 4 uses
  %i.bj = icmp ult i64 %i.bi, %3
  br i1 %i.bj, label %bb.d, label %bb.u, !llvm.loop !6

bb.u:                                             ; preds = %extractPageInfo.exit
  %.not = icmp eq i64 %i.bi, %3
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = lshr i64 %3, 32
  %i.bl = trunc nuw i64 %i.bk to i32
  %i.bm = trunc i64 %3 to i32
  %i.bn = lshr i64 %i.bi, 32
  %i.bo = trunc nuw i64 %i.bn to i32
  %i.bp = trunc i64 %i.bi to i32
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.bo, i32 noundef %i.bp) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.w:                                             ; preds = %bb.u
  call void @XLogReaderFree(ptr noundef nonnull %i.g) #7
  %i.bq = load i32, ptr @xlogreadfd, align 4      ; 2 uses
  %.not26 = icmp eq i32 %i.bq, -1
  br i1 %.not26, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = call i32 @close(i32 noundef %i.bq) #7   ; 0 uses
  store i32 -1, ptr @xlogreadfd, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @XLogReaderAllocate(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 8193) i32 @SimpleXLogPageRead(ptr noundef %0, i64 noundef %1, i32 %2, i64 %3, ptr nofree noundef captures(none) %4) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load i32, ptr @WalSegSz, align 4         ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 3 uses
  %i.f = udiv i64 %1, %i.e                        ; 4 uses
  %i.g = add i64 %i.f, 1
  %i.h = mul i64 %i.g, %i.e                       ; 3 uses
  %i.i = add i32 %i.d, -1
  %i.j = trunc i64 %1 to i32
  %i.k = and i32 %i.i, %i.j
  %i.l = load i32, ptr @xlogreadfd, align 4       ; 3 uses
  %i.m = icmp slt i32 %i.l, 0                     ; 2 uses
  %i.n = load i64, ptr @xlogreadsegno, align 8
  %i.o = icmp eq i64 %i.f, %i.n
  %or.cond = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.p = tail call i32 @close(i32 noundef %i.l) #7 ; 0 uses
  store i32 -1, ptr @xlogreadfd, align 4
  %i.q = load i32, ptr @WalSegSz, align 4
  %i.r = sext i32 %i.q to i64                     ; 2 uses
  %i.s = udiv i64 %1, %i.r                        ; 2 uses
  store i64 %i.s, ptr @xlogreadsegno, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.f, ptr @xlogreadsegno, align 8
  br i1 %i.m, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.thread, %bb.b
  %i.t = phi i64 [ %i.s, %.thread ], [ %i.f, %bb.b ] ; 2 uses
  %i.u = phi i64 [ %i.r, %.thread ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.w = load i32, ptr @targetNentries, align 4
  %i.x = add i32 %i.w, -1                         ; 2 uses
  %.promoted = load i32, ptr %i.v, align 8        ; 4 uses
  %i.y = icmp slt i32 %.promoted, %i.x
  %.pre50.pre = load ptr, ptr @targetHistory, align 8 ; 4 uses
  br i1 %i.y, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.z = sext i32 %.promoted to i64               ; 2 uses
  %wide.trip.count = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds [24 x i8], ptr %.pre50.pre, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ult i64 %i.ac, %i.h
  br i1 %i.ad, label %.lr.ph59, label %.critedge

bb.d:                                             ; preds = %.lr.ph59
  %i.ae = getelementptr inbounds [24 x i8], ptr %.pre50.pre, i64 %indvars.iv.next
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp ult i64 %i.ag, %i.h
  br i1 %i.ah, label %.lr.ph59, label %.critedge, !llvm.loop !7

.lr.ph59:                                         ; preds = %.lr.ph, %bb.d
  %indvars.iv58 = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.z, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv58, 1 ; 4 uses
  %i.ai = trunc nsw i64 %indvars.iv.next to i32   ; 3 uses
  store i32 %i.ai, ptr %i.v, align 8
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge.loopexit_crit_edge, label %bb.d, !llvm.loop !7

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph59
  br label %.critedge, !llvm.loop !7

.critedge:                                        ; preds = %bb.d, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.c
  %.pr = phi i32 [ %.promoted, %bb.c ], [ %i.ai, %..critedge.loopexit_crit_edge ], [ %.promoted, %.lr.ph ], [ %i.ai, %bb.d ] ; 3 uses
  %i.aj = icmp sgt i32 %.pr, 0
  br i1 %i.aj, label %.lr.ph42, label %.critedge2

.lr.ph42:                                         ; preds = %.critedge, %bb.e
  %5 = phi i32 [ %7, %bb.e ], [ %.pr, %.critedge ] ; 4 uses
  %6 = zext nneg i32 %5 to i64
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %.pre50.pre, i64 %6
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %.not = icmp ult i64 %i.am, %i.h
  br i1 %.not, label %.critedge2, label %bb.e

bb.e:                                             ; preds = %.lr.ph42
  %7 = add nsw i32 %5, -1                         ; 2 uses
  store i32 %7, ptr %i.v, align 8
  %i.an = icmp sgt i32 %5, 1
  br i1 %i.an, label %.lr.ph42, label %.critedge2, !llvm.loop !8

.critedge2:                                       ; preds = %.lr.ph42, %bb.e, %.critedge
  %.lcssa = phi i32 [ %.pr, %.critedge ], [ 0, %bb.e ], [ %5, %.lr.ph42 ]
  %i.ao = sext i32 %.lcssa to i64
  %i.ap = getelementptr inbounds [24 x i8], ptr %.pre50.pre, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = udiv i64 4294967296, %i.u               ; 2 uses
  %i.as = udiv i64 %i.t, %i.ar
  %i.at = trunc i64 %i.as to i32
  %i.au = urem i64 %i.t, %i.ar
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.7, i32 noundef %i.aq, i32 noundef %i.at, i32 noundef %i.av) #7 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.ay = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull @xlogfpath, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.a) #7 ; 0 uses
  %i.az = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @xlogfpath, i32 noundef 0, i32 noundef 0) #7 ; 3 uses
  store i32 %i.az, ptr @xlogreadfd, align 4
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.critedge2
  %i.bb = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @xlogfpath) #7
  br label %.critedge38

bb.h:                                             ; preds = %bb.f
  %i.bd = load i32, ptr @WalSegSz, align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = call i32 @RestoreArchivedFile(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.a, i64 noundef %i.be, ptr noundef nonnull %i.bb) #7 ; 3 uses
  store i32 %i.bf, ptr @xlogreadfd, align 4
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.critedge38, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = load i32, ptr @__pg_log_level, align 4
  %i.bi = icmp ult i32 %i.bh, 2
  br i1 %i.bi, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 1, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @xlogfpath) #7
  %.pre.pre = load i32, ptr @xlogreadfd, align 4
  br label %bb.k

bb.k:                                             ; preds = %.critedge2, %bb.i, %bb.j
  %.pre = phi i32 [ %i.az, %.critedge2 ], [ %i.bf, %bb.i ], [ %.pre.pre, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %i.bj = phi i32 [ %.pre, %bb.k ], [ %i.l, %bb.b ]
  %i.bk = zext i32 %i.k to i64
  %i.bl = call i64 @lseek(i32 noundef %i.bj, i64 noundef %i.bk, i32 noundef 0) #7
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef nonnull @xlogfpath) #7
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bn = load i32, ptr @xlogreadfd, align 4
  %i.bo = call i64 @read(i32 noundef %i.bn, ptr noundef %4, i64 noundef 8192) #7
  %i.bp = trunc i64 %i.bo to i32                  ; 3 uses
  %.not35 = icmp eq i32 %i.bp, 8192
  br i1 %.not35, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @xlogfpath) #7
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @xlogfpath, i32 noundef %i.bp, i64 noundef 8192) #7
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.br = load ptr, ptr @targetHistory, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [24 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store i32 %i.bw, ptr %i.bx, align 8
  br label %bb.s

.critedge38:                                      ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %.critedge38, %bb.r, %bb.m
  %.1 = phi i32 [ -1, %bb.m ], [ -1, %.critedge38 ], [ 8192, %bb.r ], [ -1, %bb.q ], [ -1, %bb.p ]
  ret i32 %.1
}

declare void @pg_log_generic(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare void @XLogBeginRead(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @XLogReadRecord(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @XLogReaderFree(ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @readOneRecord(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.XLogPageReadPrivate, align 8 ; 5 uses
  %5 = alloca %struct.XLogReaderRoutine, align 8  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %i.b, align 8
  store ptr %3, ptr %4, align 8
  %i.c = load i32, ptr @WalSegSz, align 4
  store ptr @SimpleXLogPageRead, ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = call ptr @XLogReaderAllocate(i32 noundef %i.c, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #7 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @XLogBeginRead(ptr noundef nonnull %i.e, i64 noundef %1) #7
  %i.g = call ptr @XLogReadRecord(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #7
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16 = icmp eq ptr %i.i, null
  %i.j = lshr i64 %1, 32
  %i.k = trunc nuw i64 %i.j to i32                ; 2 uses
  %i.l = trunc i64 %1 to i32                      ; 2 uses
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.1, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %i.i) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef %i.k, i32 noundef %i.l) #7
  call void @exit(i32 noundef 1) #8
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.n = load i64, ptr %i.m, align 8
  call void @XLogReaderFree(ptr noundef nonnull %i.e) #7
  %i.o = load i32, ptr @xlogreadfd, align 4       ; 2 uses
  %.not = icmp eq i32 %i.o, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i32 @close(i32 noundef %i.o) #7     ; 0 uses
  store i32 -1, ptr @xlogreadfd, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %i.n
}

; Function Attrs: nounwind uwtable
define dso_local void @findLastCheckpoint(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.XLogPageReadPrivate, align 8 ; 5 uses
  %8 = alloca %struct.XLogReaderRoutine, align 8  ; 3 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #7
  %i.c = and i64 %1, 8191
  %i.d = icmp eq i64 %i.c, 0
  %.pre = load i32, ptr @WalSegSz, align 4        ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %.pre, -1
  %i.f = sext i32 %i.e to i64
  %i.g = and i64 %1, %i.f
  %i.h = icmp eq i64 %i.g, 0
end_hunk_0
