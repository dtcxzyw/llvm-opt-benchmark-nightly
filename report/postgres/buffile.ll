Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/buffile?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@BufFileDumpBuffer:bb.a
  br i1 %i.cb, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.cc = load i8, ptr @timing_tsc_enabled, align 1, !range !5, !noundef !6
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.l, label %bb.m, !prof !4

bb.l:                                             ; preds = %bb.k
  %i.ce = call { i64, i32 } @llvm.x86.rdtscp()
  %i.cf = extractvalue { i64, i32 } %i.ce, 0
  br label %pg_get_ticks.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  %i.cg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #5 ; 0 uses
  %i.ch = load i64, ptr %1, align 8
  %i.ci = mul i64 %i.ch, 1000000000
  %i.cj = load i64, ptr %i.o, align 8
  %i.ck = add i64 %i.ci, %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  br label %pg_get_ticks.exit

pg_get_ticks.exit:                                ; preds = %bb.l, %bb.m
  %.sroa.0.0.i = phi i64 [ %i.cf, %bb.l ], [ %i.ck, %bb.m ]
  %i.cl = sub i64 %.sroa.0.0.i, %.sroa.03.0
  %i.cm = load i64, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 120), align 8
  %i.cn = add i64 %i.cl, %i.cm
  store i64 %i.cn, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 120), align 8
  br label %bb.n

bb.n:                                             ; preds = %pg_get_ticks.exit, %bb.j
  %i.co = load i64, ptr %i.e, align 8
  %i.cp = add i64 %i.co, %i.bu
  store i64 %i.cp, ptr %i.e, align 8
  %i.cq = add i64 %i.bu, %.052                    ; 2 uses
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 72), align 8
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @pgBufferUsage, i64 72), align 8
  %i.ct = load i64, ptr %i.b, align 8             ; 3 uses
  %i.cu = icmp slt i64 %i.cq, %i.ct
  br i1 %i.cu, label %bb.b, label %._crit_edge55, !llvm.loop !12

._crit_edge55:                                    ; preds = %bb.n, %bb.a
  %.lcssa46 = phi i64 [ %i.c, %bb.a ], [ %i.ct, %bb.n ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.cv, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %.neg = sub i64 %i.cx, %.lcssa46
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = add i64 %.neg, %i.cz                    ; 3 uses
  store i64 %i.da, ptr %i.cy, align 8
  %i.db = icmp slt i64 %i.da, 0
  br i1 %i.db, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge55
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr %i.dc, align 8
  %i.df = add nsw i64 %i.da, 1073741824
  store i64 %i.df, ptr %i.cy, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @BufFileSeek(ptr noundef %0, i32 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  switch i32 %3, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %.loopexit, label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.e, %2
  %i.i = add i64 %i.h, %i.g
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = tail call i64 @FileSize(i32 noundef %i.p) #5 ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.t = tail call i32 @errcode_for_file_access() #5 ; 0 uses
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = load i32, ptr %0, align 8
  %i.w = add i32 %i.v, -1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call ptr @FilePathName(i32 noundef %i.z) #5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, ptr noundef %i.aa, ptr noundef %i.ac) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 776, ptr noundef nonnull @__func__.BufFileSeek) #5
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.ae = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.af = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %3) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 779, ptr noundef nonnull @__func__.BufFileSeek) #5
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.c
  %.047 = phi i32 [ %1, %bb.b ], [ %i.c, %bb.c ]  ; 2 uses
  %.0 = phi i64 [ %2, %bb.b ], [ %i.i, %bb.c ]    ; 5 uses
  %i.ag = icmp slt i64 %.0, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ah = add i32 %.047, -1                       ; 3 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ah, i32 -1)
  %i.ai = sub i32 %i.ah, %smin
  %i.aj = tail call i64 @llvm.umax.i64(i64 %.0, i64 -1073741824)
  %i.ak = add nsw i64 %i.aj, 1073741823
  %i.al = sub i64 %i.ak, %.0                      ; 2 uses
  %i.am = lshr i64 %i.al, 30                      ; 2 uses
  %i.an = zext i32 %i.ai to i64
  %.not86 = icmp samesign ult i64 %i.am, %i.an
  br i1 %.not86, label %.lr.ph.preheader.split, label %.loopexit

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.ao = and i64 %i.al, -1073741824
  %i.ap = add i64 %.0, %i.ao
  %i.aq = add i64 %i.ap, 1073741824
  %i.ar = trunc nuw i64 %i.am to i32
  %i.as = sub i32 %i.ah, %i.ar
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %.lr.ph.preheader.split, %bb.g
  %.148.lcssa = phi i32 [ %.047, %bb.g ], [ %i.as, %.lr.ph.preheader.split ], [ %i.k, %bb.d ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0, %bb.g ], [ %i.aq, %.lr.ph.preheader.split ], [ %i.q, %bb.d ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = icmp eq i32 %.148.lcssa, %i.au
  br i1 %i.av, label %bb.h, label %bb.k

bb.h:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  %.not = icmp slt i64 %.1.lcssa, %i.ax
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = add i64 %i.az, %i.ax
  %.not57 = icmp sgt i64 %.1.lcssa, %i.ba
  br i1 %.not57, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = sub i64 %.1.lcssa, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.bb, ptr %i.bc, align 8
  br label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.h, %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.be = load i8, ptr %i.bd, align 1, !range !5, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.l, label %BufFileFlush.exit

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @BufFileDumpBuffer(ptr noundef nonnull %0)
  br label %BufFileFlush.exit

BufFileFlush.exit:                                ; preds = %bb.k, %bb.l
  %i.bg = load i32, ptr %0, align 8               ; 3 uses
  %i.bh = icmp eq i32 %.148.lcssa, %i.bg
  %i.bi = icmp eq i64 %.1.lcssa, 0
  %or.cond = and i1 %i.bi, %i.bh                  ; 2 uses
  %i.bj = sext i1 %or.cond to i32                 ; 2 uses
  %spec.select = add i32 %.148.lcssa, %i.bj       ; 2 uses
  %spec.select61 = select i1 %or.cond, i64 1073741824, i64 %.1.lcssa ; 4 uses
  %i.bk = icmp sgt i64 %spec.select61, 1073741824
  br i1 %i.bk, label %.lr.ph72.preheader, label %select.unfold._crit_edge

.lr.ph72.preheader:                               ; preds = %BufFileFlush.exit
  %i.bl = add i32 %spec.select, 1                 ; 2 uses
  %smax80 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bl)
  %i.bm = xor i32 %.148.lcssa, -1
  %i.bn = add i32 %smax80, %i.bm
  %i.bo = sub i32 %i.bn, %i.bj
  %i.bp = tail call i64 @llvm.usub.sat.i64(i64 %spec.select61, i64 2147483648)
  %i.bq = add nuw i64 %i.bp, 1073741823           ; 2 uses
  %i.br = lshr i64 %i.bq, 30                      ; 2 uses
  %i.bs = zext i32 %i.bo to i64
  %.not87.not = icmp samesign ult i64 %i.br, %i.bs
  br i1 %.not87.not, label %.lr.ph72.preheader.split, label %.loopexit

.lr.ph72.preheader.split:                         ; preds = %.lr.ph72.preheader
  %i.bt = add nsw i64 %spec.select61, -1073741824
  %i.bu = and i64 %i.bq, -1073741824
  %i.bv = sub nsw i64 %i.bt, %i.bu
  %i.bw = trunc nuw i64 %i.br to i32
  %i.bx = add i32 %i.bl, %i.bw
  br label %select.unfold._crit_edge

select.unfold._crit_edge:                         ; preds = %.lr.ph72.preheader.split, %BufFileFlush.exit
  %.350.lcssa = phi i32 [ %spec.select, %BufFileFlush.exit ], [ %i.bx, %.lr.ph72.preheader.split ] ; 2 uses
  %.3.lcssa = phi i64 [ %spec.select61, %BufFileFlush.exit ], [ %i.bv, %.lr.ph72.preheader.split ]
  %.not58 = icmp slt i32 %.350.lcssa, %i.bg
  br i1 %.not58, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %select.unfold._crit_edge
  store i32 %.350.lcssa, ptr %i.at, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.3.lcssa, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph72.preheader, %select.unfold._crit_edge, %bb.b, %bb.m, %bb.j
  %.051 = phi i32 [ 0, %bb.m ], [ -1, %bb.b ], [ 0, %bb.j ], [ -1, %.lr.ph72.preheader ], [ -1, %select.unfold._crit_edge ], [ -1, %.lr.ph.preheader ]
  ret i32 %.051
}

declare i64 @FileSize(i32 noundef) local_unnamed_addr #2

declare ptr @FilePathName(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BufFileTell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  store i32 %i.b, ptr %1, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, %i.d
  store i64 %i.g, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @BufFileSeekBlock(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sdiv i64 %1, 131072
  %i.b = trunc i64 %i.a to i32
  %i.c = srem i64 %1, 131072
  %i.d = shl nsw i64 %i.c, 13
  %i.e = tail call i32 @BufFileSeek(ptr noundef %0, i32 noundef %i.b, i64 noundef %i.d, i32 noundef 0)
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2305843009213693952, -6917529028714823680) i64 @BufFileSize(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr %0, align 8
  %i.d = add i32 %i.c, -1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call i64 @FileSize(i32 noundef %i.g) #5 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.k = tail call i32 @errcode_for_file_access() #5 ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8
  %i.m = load i32, ptr %0, align 8
  %i.n = add i32 %i.m, -1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = tail call ptr @FilePathName(i32 noundef %i.q) #5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, ptr noundef %i.r, ptr noundef %i.t) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 877, ptr noundef nonnull @__func__.BufFileSize) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = load i32, ptr %0, align 8
  %i.w = add i32 %i.v, -1
  %i.x = sext i32 %i.w to i64
  %i.y = shl nsw i64 %i.x, 30
  %i.z = add i64 %i.y, %i.h
  ret i64 %i.z
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -281474976710656, 281474976579585) i64 @BufFileAppend(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = load i32, ptr %1, align 8
  %i.c = add i32 %i.b, %i.a                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.e, %i.g
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.i = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #5 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 912, ptr noundef nonnull @__func__.BufFileAppend) #5
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = sext i32 %i.c to i64                     ; 4 uses
  %i.m = shl nsw i64 %i.l, 2
  %i.n = tail call ptr @repalloc(ptr noundef %i.k, i64 noundef %i.m) #5
  store ptr %i.n, ptr %i.j, align 8
  %i.o = load i32, ptr %0, align 8                ; 3 uses
  %i.p = icmp slt i32 %i.o, %i.c
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = sext i32 %i.o to i64                     ; 5 uses
  %i.s = sub nsw i64 %i.l, %i.r
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = load i32, ptr %0, align 8
  %i.v = sub i32 %i.o, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4
  %i.z = load ptr, ptr %i.j, align 8
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.r
  store i32 %i.y, ptr %i.aa, align 4
  %indvars.iv.next.prol = add nsw i64 %i.r, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.r, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.ab = add nsw i64 %i.l, -1
  %i.ac = icmp eq i64 %i.ab, %i.r
  br i1 %i.ac, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ad = load ptr, ptr %i.q, align 8
  %i.ae = load i32, ptr %0, align 8
  %i.af = trunc nsw i64 %indvars.iv to i32
  %i.ag = sub i32 %i.af, %i.ae
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = load ptr, ptr %i.j, align 8
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %indvars.iv
  store i32 %i.aj, ptr %i.al, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.am = load ptr, ptr %i.q, align 8
  %i.an = load i32, ptr %0, align 8
  %i.ao = trunc nsw i64 %indvars.iv.next to i32
  %i.ap = sub i32 %i.ao, %i.an
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = load ptr, ptr %i.j, align 8
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv.next
  store i32 %i.as, ptr %i.au, align 4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.l
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !13

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.c
  %i.av = sext i32 %i.a to i64
  %i.aw = shl nsw i64 %i.av, 17
  store i32 %i.c, ptr %0, align 8
  ret i64 %i.aw
}

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BufFileTruncateFileSet(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = load i32, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %.079 = add i32 %i.b, -1                        ; 2 uses
  %.not80 = icmp slt i32 %.079, %1
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
