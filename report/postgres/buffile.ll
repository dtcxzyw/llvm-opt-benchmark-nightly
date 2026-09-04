Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/buffile?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BufFileOpenFileSet:bb.a
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.e
  br label %bb.b

bb.g:                                             ; preds = %bb.d
  %i.n = icmp eq i32 %.0, 0
  br i1 %i.n, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @pfree(ptr noundef nonnull %.1) #5
  br i1 %3, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.p = call i32 @errcode_for_file_access() #5   ; 0 uses
  %i.q = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, ptr noundef %1) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 340, ptr noundef nonnull @__func__.BufFileOpenFileSet) #5
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.r = call ptr @palloc(i64 noundef 8272) #5    ; 11 uses
  store i32 %.0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 17
  store i8 0, ptr %i.t, align 1
  %i.u = load ptr, ptr @CurrentResourceOwner, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.1, ptr %i.y, align 8
  %i.z = icmp eq i32 %2, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.ab = zext i1 %i.z to i8
  store i8 %i.ab, ptr %i.aa, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %0, ptr %i.ac, align 8
  %i.ad = call ptr @pstrdup(ptr noundef %1) #5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ad, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %.032 = phi ptr [ %i.r, %bb.j ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.032
}

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @repalloc_mul(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @FileSetOpen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ProcessInterrupts() local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errcode_for_file_access() local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BufFileDeleteFileSet(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef %1, i32 noundef 0) #5 ; 0 uses
  %i.c = call zeroext i1 @FileSetDelete(ptr noundef %0, ptr noundef nonnull %i.a, i1 noundef zeroext true) #5
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.078 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.a ]
  %i.d = add i32 %.078, 1                         ; 2 uses
  %i.e = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %.lr.ph
  call void @ProcessInterrupts() #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef %1, i32 noundef %i.d) #5 ; 0 uses
  %i.g = call zeroext i1 @FileSetDelete(ptr noundef %0, ptr noundef nonnull %i.a, i1 noundef zeroext true) #5
  br i1 %i.g, label %.lr.ph, label %.critedge

._crit_edge:                                      ; preds = %bb.a
  br i1 %2, label %.critedge, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.h = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.i = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, ptr noundef %1) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 388, ptr noundef nonnull @__func__.BufFileDeleteFileSet) #5
  unreachable

.critedge:                                        ; preds = %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

declare zeroext i1 @FileSetDelete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BufFileExportFileSet(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %BufFileFlush.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @BufFileDumpBuffer(ptr noundef nonnull %0)
  br label %BufFileFlush.exit

BufFileFlush.exit:                                ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.d, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BufFileClose(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %BufFileFlush.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @BufFileDumpBuffer(ptr noundef nonnull %0)
  br label %BufFileFlush.exit

BufFileFlush.exit:                                ; preds = %bb.a, %bb.b
  %i.d = load i32, ptr %0, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %BufFileFlush.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4
  tail call void @FileClose(i32 noundef %i.i) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %0, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %bb.c, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.c, %BufFileFlush.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @pfree(ptr noundef %i.n) #5
  tail call void @pfree(ptr noundef nonnull %0) #5
  ret void
}

declare void @FileClose(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @BufFileRead(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @BufFileReadCommon(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @BufFileReadCommon(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.iovec, align 8              ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %BufFileFlush.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @BufFileDumpBuffer(ptr noundef nonnull %0)
  br label %BufFileFlush.exit

BufFileFlush.exit:                                ; preds = %bb.a, %bb.b
  %.not55 = icmp eq i64 %2, 0
  br i1 %.not55, label %BufFileLoadBuffer.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %BufFileFlush.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %i.m = phi i64 [ %.pre, %.lr.ph ], [ %i.bp, %bb.p ] ; 3 uses
  %.04058 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %bb.p ] ; 2 uses
  %.04157 = phi ptr [ %1, %.lr.ph ], [ %i.bq, %bb.p ] ; 2 uses
  %.04256 = phi i64 [ %2, %.lr.ph ], [ %i.br, %bb.p ] ; 2 uses
  %i.n = load i64, ptr %i.e, align 8              ; 2 uses
  %.not47 = icmp slt i64 %i.m, %i.n
  br i1 %.not47, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.f, align 8
  %i.p = add i64 %i.o, %i.m                       ; 2 uses
  store i64 %i.p, ptr %i.f, align 8
  %i.q = icmp sgt i64 %i.p, 1073741823
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.r = load i32, ptr %i.g, align 8              ; 3 uses
  br i1 %i.q, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.s = add i32 %i.r, 1                          ; 3 uses
  %i.t = load i32, ptr %0, align 8
  %i.u = icmp slt i32 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %i.g, align 8
  store i64 0, ptr %i.f, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %i.v = phi i32 [ %i.r, %bb.e ], [ %i.s, %bb.f ], [ %i.r, %bb.d ]
  %i.w = load ptr, ptr %i.h, align 8
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = load i8, ptr @track_io_timing, align 1, !range !5, !noundef !6
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %pg_get_ticks.exit18.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.ac = load i8, ptr @timing_tsc_enabled, align 1, !range !5, !noundef !6
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !4

bb.h:                                             ; preds = %bb.g
  %i.ae = call { i64, i32 } @llvm.x86.rdtscp()
  %i.af = extractvalue { i64, i32 } %i.ae, 0
  br label %pg_get_ticks.exit18.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.ag = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #5 ; 0 uses
  %i.ah = load i64, ptr %7, align 8
  %i.ai = mul i64 %i.ah, 1000000000
  %i.aj = load i64, ptr %i.i, align 8
  %i.ak = add i64 %i.ai, %i.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %pg_get_ticks.exit18.i

pg_get_ticks.exit18.i:                            ; preds = %bb.i, %bb.h, %._crit_edge.i
  %.sroa.03.0.i = phi i64 [ 0, %._crit_edge.i ], [ %i.af, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = load i64, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  store ptr %i.j, ptr %6, align 8
  store i64 8192, ptr %i.k, align 8
  %i.am = call i64 @FileReadV(i32 noundef %i.z, ptr noundef nonnull %6, i32 noundef 1, i64 noundef %i.al, i32 noundef 167772166) #5 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  store i64 %i.am, ptr %i.e, align 8
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %pg_get_ticks.exit18.i
  store i64 0, ptr %i.e, align 8
  %i.ao = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ap = call i32 @errcode_for_file_access() #5  ; 0 uses
  %i.aq = call ptr @FilePathName(i32 noundef %i.z) #5
  %i.ar = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, ptr noundef %i.aq) #5 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 472, ptr noundef nonnull @__func__.BufFileLoadBuffer) #5
  unreachable

bb.k:                                             ; preds = %pg_get_ticks.exit18.i
  %i.as = load i8, ptr @track_io_timing, align 1, !range !5, !noundef !6
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.au = load i8, ptr @timing_tsc_enabled, align 1, !range !5, !noundef !6
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.m, label %bb.n, !prof !4

bb.m:                                             ; preds = %bb.l
  %i.aw = call { i64, i32 } @llvm.x86.rdtscp()
  %i.ax = extractvalue { i64, i32 } %i.aw, 0
  br label %pg_get_ticks.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.ay = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #5 ; 0 uses
  %i.az = load i64, ptr %5, align 8
  %i.ba = mul i64 %i.az, 1000000000
  %i.bb = load i64, ptr %i.l, align 8
  %i.bc = add i64 %i.ba, %i.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %pg_get_ticks.exit.i

pg_get_ticks.exit.i:                              ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i = phi i64 [ %i.ax, %bb.m ], [ %i.bc, %bb.n ]
  %i.bd = sub i64 %.sroa.0.0.i.i, %.sroa.03.0.i
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 112), align 8
  %i.bf = add i64 %i.bd, %i.be
  store i64 %i.bf, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 112), align 8
  %.pr.i = load i64, ptr %i.e, align 8
  br label %bb.o

bb.o:                                             ; preds = %pg_get_ticks.exit.i, %bb.k
  %i.bg = phi i64 [ %.pr.i, %pg_get_ticks.exit.i ], [ %i.am, %bb.k ] ; 2 uses
  %i.bh = icmp sgt i64 %i.bg, 0
  br i1 %i.bh, label %BufFileLoadBuffer.exit._crit_edge60, label %BufFileLoadBuffer.exit._crit_edge

BufFileLoadBuffer.exit._crit_edge60:              ; preds = %bb.o
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 64), align 8
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 64), align 8
  %.pre61 = load i64, ptr %i.d, align 8
  br label %bb.p

bb.p:                                             ; preds = %BufFileLoadBuffer.exit._crit_edge60, %bb.c
  %i.bk = phi i64 [ %.pre61, %BufFileLoadBuffer.exit._crit_edge60 ], [ %i.m, %bb.c ] ; 2 uses
  %i.bl = phi i64 [ %i.bg, %BufFileLoadBuffer.exit._crit_edge60 ], [ %i.n, %bb.c ]
  %i.bm = sub i64 %i.bl, %i.bk
  %spec.select = call i64 @llvm.umin.i64(i64 %i.bm, i64 %.04256) ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.j, i64 %i.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04157, ptr nonnull align 1 %i.bn, i64 %spec.select, i1 false)
  %i.bo = load i64, ptr %i.d, align 8
  %i.bp = add i64 %i.bo, %spec.select             ; 2 uses
  store i64 %i.bp, ptr %i.d, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.04157, i64 %spec.select
  %i.br = sub i64 %.04256, %spec.select           ; 2 uses
  %i.bs = add i64 %spec.select, %.04058           ; 2 uses
  %.not = icmp eq i64 %i.br, 0
  br i1 %.not, label %BufFileLoadBuffer.exit._crit_edge, label %bb.c, !llvm.loop !9

BufFileLoadBuffer.exit._crit_edge:                ; preds = %bb.o, %bb.p, %BufFileFlush.exit
  %.040.lcssa = phi i64 [ 0, %BufFileFlush.exit ], [ %.04058, %bb.o ], [ %i.bs, %bb.p ] ; 5 uses
  %.not50 = xor i1 %3, true
  %.not48 = icmp eq i64 %.040.lcssa, %2
  %i.bt = icmp eq i64 %.040.lcssa, 0
  %or.cond = and i1 %4, %i.bt
  %i.bu = or i1 %.not48, %or.cond
  %or.cond52 = select i1 %.not50, i1 true, i1 %i.bu
  br i1 %or.cond52, label %bb.u, label %bb.q

bb.q:                                             ; preds = %BufFileLoadBuffer.exit._crit_edge
  %i.bv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.bw = call i32 @errcode_for_file_access() #5  ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not49 = icmp eq ptr %i.by, null
  br i1 %.not49, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, ptr noundef nonnull %i.by, i64 noundef %.040.lcssa, i64 noundef %2) #5 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ca = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10, i64 noundef %.040.lcssa, i64 noundef %2) #5 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 636, ptr noundef nonnull @__func__.BufFileReadCommon) #5
  unreachable

bb.u:                                             ; preds = %BufFileLoadBuffer.exit._crit_edge
  ret i64 %.040.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local void @BufFileReadExact(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @BufFileReadCommon(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext false) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @BufFileReadMaybeEOF(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @BufFileReadCommon(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext true, i1 noundef zeroext %3)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local void @BufFileWrite(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not31 = icmp eq i64 %2, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre = load i64, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.f = phi i64 [ %.pre, %.lr.ph ], [ %i.p, %bb.h ] ; 3 uses
  %.02633 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.h ] ; 2 uses
  %.02732 = phi ptr [ %1, %.lr.ph ], [ %i.s, %bb.h ] ; 2 uses
  %i.g = icmp sgt i64 %i.f, 8191
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.b, align 1, !range !5, !noundef !6
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @BufFileDumpBuffer(ptr noundef nonnull %0)
  %.pre34 = load i64, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.c, align 8
  %i.k = add i64 %i.j, %i.f
  store i64 %i.k, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.l = phi i64 [ %.pre34, %bb.d ], [ 0, %bb.e ], [ %i.f, %bb.b ] ; 2 uses
  %i.m = sub i64 8192, %i.l
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %.02633) ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %.02732, i64 %spec.select, i1 false)
  store i8 1, ptr %i.b, align 1
  %i.o = load i64, ptr %i.a, align 8
  %i.p = add i64 %i.o, %spec.select               ; 4 uses
  store i64 %i.p, ptr %i.a, align 8
  %i.q = load i64, ptr %i.d, align 8
  %i.r = icmp slt i64 %i.q, %i.p
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.p, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.02732, i64 %spec.select
  %i.t = sub nuw i64 %.02633, %spec.select        ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @BufFileDumpBuffer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.iovec, align 8              ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph54, label %._crit_edge55

.lr.ph54:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph54, %bb.n
  %i.p = phi i64 [ %i.c, %.lr.ph54 ], [ %i.ct, %bb.n ] ; 2 uses
  %.052 = phi i64 [ 0, %.lr.ph54 ], [ %i.cq, %bb.n ] ; 3 uses
  %i.q = load i64, ptr %i.e, align 8              ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1073741823
  %.pre62 = load i32, ptr %i.f, align 8           ; 2 uses
  br i1 %i.r, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b
  %i.s = add i32 %.pre62, 1                       ; 2 uses
  %i.t = load i32, ptr %0, align 8
  %.not51 = icmp slt i32 %i.s, %i.t
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %extendBufFile.exit
  %i.u = load ptr, ptr @CurrentResourceOwner, align 8
  %i.v = load ptr, ptr %i.g, align 8
  store ptr %i.v, ptr @CurrentResourceOwner, align 8
  %i.w = load ptr, ptr %i.h, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.y = load i8, ptr %i.j, align 8, !range !5, !noundef !6
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = call i32 @OpenTemporaryFile(i1 noundef zeroext %i.z) #5
  br label %extendBufFile.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ab = load i32, ptr %0, align 8               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ac = load ptr, ptr %i.i, align 8
  %i.ad = add i32 %i.ab, 1
  %i.ae = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef %i.ac, i32 noundef %i.ad) #5 ; 0 uses
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = call zeroext i1 @FileSetDelete(ptr noundef %i.af, ptr noundef nonnull %i.a, i1 noundef zeroext true) #5 ; 0 uses
  %i.ah = load ptr, ptr %i.i, align 8
  %i.ai = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef %i.ah, i32 noundef %i.ab) #5 ; 0 uses
  %i.aj = load ptr, ptr %i.h, align 8
  %i.ak = call i32 @FileSetCreate(ptr noundef %i.aj, ptr noundef nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %extendBufFile.exit

extendBufFile.exit:                               ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.aa, %bb.c ], [ %i.ak, %bb.d ]
  store ptr %i.u, ptr @CurrentResourceOwner, align 8
  %i.al = load ptr, ptr %i.k, align 8
  %i.am = load i32, ptr %0, align 8
  %i.an = add i32 %i.am, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = shl nsw i64 %i.ao, 2
  %i.aq = call ptr @repalloc(ptr noundef %i.al, i64 noundef %i.ap) #5 ; 2 uses
  store ptr %i.aq, ptr %i.k, align 8
  %i.ar = load i32, ptr %0, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  store i32 %.0.i, ptr %i.at, align 4
  %i.au = load i32, ptr %0, align 8
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %0, align 8
  %i.aw = load i32, ptr %i.f, align 8
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  %.not = icmp slt i32 %i.ax, %i.av
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %extendBufFile.exit
  %.pre.pre = load i64, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre = phi i64 [ %i.p, %.preheader ], [ %.pre.pre, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.s, %.preheader ], [ %i.ax, %._crit_edge.loopexit ] ; 2 uses
  store i32 %.lcssa, ptr %i.f, align 8
  store i64 0, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.ay = phi i32 [ %.lcssa, %._crit_edge ], [ %.pre62, %bb.b ]
  %i.az = phi i64 [ 0, %._crit_edge ], [ %i.q, %bb.b ]
  %i.ba = phi i64 [ %.pre, %._crit_edge ], [ %i.p, %bb.b ]
  %i.bb = sub i64 %i.ba, %.052
  %i.bc = sub i64 1073741824, %i.az
  %spec.select = call i64 @llvm.smin.i64(i64 %i.bb, i64 %i.bc)
  %i.bd = load ptr, ptr %i.k, align 8
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = load i8, ptr @track_io_timing, align 1, !range !5, !noundef !6
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.f, label %pg_get_ticks.exit44

end_hunk_0
