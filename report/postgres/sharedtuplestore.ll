Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/sharedtuplestore?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0_@sts_puttuple:bb.a
  %i.r = getelementptr [28 x i8], ptr %i.o, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 104
  store i8 1, ptr %i.s, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load i32, ptr %2, align 4
  %i.y = zext i32 %i.x to i64
  %i.z = add i64 %i.w, %i.y                       ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 12 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp ugt ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 10 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call ptr @MemoryContextAllocZero(ptr noundef %i.al, i64 noundef 32768) #12 ; 2 uses
  store ptr %i.am, ptr %i.ah, align 8
  store i32 0, ptr %i.am, align 4
  %i.an = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.ao, ptr %i.aa, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32768 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.b, align 8
  call void @BufFileWrite(ptr noundef %i.ar, ptr noundef nonnull %i.ai, i64 noundef 32768) #12
  %i.as = load ptr, ptr %i.ah, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.as, i8 0, i64 32768, i1 false)
  %i.at = load ptr, ptr %i.ah, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.aa, align 8
  %i.av = load ptr, ptr %i.t, align 8
  %i.aw = load i32, ptr %0, align 8
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr [28 x i8], ptr %i.av, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 100    ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add i32 %i.ba, 4
  store i32 %i.bb, ptr %i.az, align 4
  %.pre = load ptr, ptr %i.aa, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre89 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = phi ptr [ %.pre89, %bb.g ], [ %i.ap, %bb.f ]
  %i.bd = phi ptr [ %.pre, %bb.g ], [ %i.ao, %bb.f ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.z
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bg = icmp ugt ptr %i.be, %i.bc
  %.pre90 = load ptr, ptr %i.t, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre90, i64 8
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  br i1 %i.bg, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %.not79 = icmp eq i64 %i.bi, 0
  br i1 %.not79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %1, i64 %i.bi, i1 false)
  %.pre97 = load ptr, ptr %i.aa, align 8
  %.pre98 = load ptr, ptr %i.t, align 8
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %.pre98, i64 8
  %.pre100 = load i64, ptr %.phi.trans.insert99, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = phi i64 [ %.pre100, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.bk = phi ptr [ %.pre97, %bb.j ], [ %i.bd, %bb.i ] ; 2 uses
  %i.bl = load ptr, ptr %i.bf, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = add i64 %i.bj, %i.bn
  %i.bp = sub i64 %i.bm, %i.bo                    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr nonnull align 4 %2, i64 %i.bp, i1 false)
  %i.br = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = load ptr, ptr %i.t, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = add i64 %i.bp, %i.bw
  %i.by = sub i64 %i.z, %i.bx                     ; 2 uses
  %.not8086 = icmp eq i64 %i.by, 0
  br i1 %.not8086, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.088 = phi i64 [ %i.cz, %.lr.ph ], [ %i.bp, %bb.k ] ; 2 uses
  %.07487 = phi i64 [ %i.cy, %.lr.ph ], [ %i.by, %bb.k ] ; 3 uses
  %i.bz = load ptr, ptr %i.b, align 8
  %i.ca = load ptr, ptr %i.ah, align 8
  call void @BufFileWrite(ptr noundef %i.bz, ptr noundef %i.ca, i64 noundef 32768) #12
  %i.cb = load ptr, ptr %i.ah, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.cb, i8 0, i64 32768, i1 false)
  %i.cc = load ptr, ptr %i.ah, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cd, ptr %i.aa, align 8
  %i.ce = load ptr, ptr %i.t, align 8
  %i.cf = load i32, ptr %0, align 8
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr [28 x i8], ptr %i.ce, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 100    ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = add i32 %i.cj, 4
  store i32 %i.ck, ptr %i.ci, align 4
  %i.cl = add i64 %.07487, 32759
  %i.cm = udiv i64 %i.cl, 32760
  %i.cn = trunc i64 %i.cm to i32
  %i.co = load ptr, ptr %i.ah, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %i.cn, ptr %i.cp, align 4
  %i.cq = load ptr, ptr %i.bf, align 8
  %i.cr = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %..074 = call i64 @llvm.umin.i64(i64 %i.cu, i64 %.07487) ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %.088
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %i.cv, i64 %..074, i1 false)
  %i.cw = load ptr, ptr %i.aa, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %..074
  store ptr %i.cx, ptr %i.aa, align 8
  %i.cy = sub i64 %.07487, %..074                 ; 2 uses
  %i.cz = add i64 %..074, %.088
  %.not80 = icmp eq i64 %i.cy, 0
  br i1 %.not80, label %.loopexit, label %.lr.ph, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %i.da = phi ptr [ %i.ab, %bb.d ], [ %i.bd, %bb.h ] ; 2 uses
  %i.db = phi i64 [ %i.w, %bb.d ], [ %i.bi, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.da, ptr align 1 %1, i64 %i.db, i1 false)
  %.pre93 = load ptr, ptr %i.aa, align 8
  %.pre94 = load ptr, ptr %i.t, align 8
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %.pre94, i64 8
  %.pre96 = load i64, ptr %.phi.trans.insert95, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.dc = phi i64 [ %.pre96, %bb.l ], [ 0, %._crit_edge ]
  %i.dd = phi ptr [ %.pre93, %bb.l ], [ %i.da, %._crit_edge ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  %i.df = load i32, ptr %2, align 4
  %i.dg = zext i32 %i.df to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr nonnull align 4 %2, i64 %i.dg, i1 false)
  %i.dh = load ptr, ptr %i.aa, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.z
  store ptr %i.di, ptr %i.aa, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.m
  ret void
}

declare ptr @BufFileCreateFileSet(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @MemoryContextAllocZero(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sts_parallel_scan_next(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct.SharedTuplestoreChunk, align 4 ; 5 uses
  %3 = alloca %struct.SharedTuplestoreChunk, align 4 ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.e = load i32, ptr %i.c, align 4
  %i.f = load i32, ptr %i.d, align 8
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.j

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  call void @BufFileReadExact(ptr noundef %i.u, ptr noundef %1, i64 noundef %i.s) #12
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  call void @BufFileReadExact(ptr noundef %i.ac, ptr noundef nonnull %i.a, i64 noundef 4) #12
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 4                        ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8
  %i.ag = load i32, ptr %i.a, align 4
  %i.ah = zext i32 %i.ag to i64                   ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  br i1 %i.ak, label %bb.d, label %._crit_edge68.i

bb.d:                                             ; preds = %bb.c
  %.not59.i = icmp eq ptr %i.am, null
  br i1 %.not59.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @pfree(ptr noundef nonnull %i.am) #12
  %.pre.i = load i32, ptr %i.a, align 4
  %.pre65.i = load i64, ptr %i.ai, align 8
  %.pre70.i = zext i32 %.pre.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi.i = phi i64 [ %.pre70.i, %bb.e ], [ %i.ah, %bb.d ]
  %i.an = phi i64 [ %.pre65.i, %bb.e ], [ %i.aj, %bb.d ]
  %i.ao = shl i64 %i.an, 1
  %..i = call i64 @llvm.umax.i64(i64 %i.ao, i64 %.pre-phi.i) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call ptr @MemoryContextAlloc(ptr noundef %i.aq, i64 noundef %..i) #12 ; 2 uses
  store ptr %i.ar, ptr %i.al, align 8
  store i64 %..i, ptr %i.ai, align 8
  %.pre66.i = load i32, ptr %i.a, align 4
  %.pre67.i = load i64, ptr %i.ad, align 8
  %.pre71.i = zext i32 %.pre66.i to i64
  br label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %bb.f, %bb.c
  %.pre-phi72.i = phi i64 [ %.pre71.i, %bb.f ], [ %i.ah, %bb.c ]
  %i.as = phi ptr [ %i.ar, %bb.f ], [ %i.am, %bb.c ]
  %i.at = phi i64 [ %.pre67.i, %bb.f ], [ %i.af, %bb.c ]
  %i.au = add nsw i64 %.pre-phi72.i, -4           ; 2 uses
  %i.av = sub i64 32768, %i.at
  %.61.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.av) ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.ax = load ptr, ptr %i.ab, align 8
  call void @BufFileReadExact(ptr noundef %i.ax, ptr noundef nonnull %i.aw, i64 noundef %.61.i) #12
  %i.ay = load i64, ptr %i.ad, align 8
  %i.az = add i64 %i.ay, %.61.i
  store i64 %i.az, ptr %i.ad, align 8
  %i.ba = sub nuw i64 %i.au, %.61.i               ; 2 uses
  %i.bb = load i32, ptr %i.c, align 4
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.c, align 4
  %.not6062.i = icmp eq i64 %i.ba, 0
  br i1 %.not6062.i, label %sts_read_tuple.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge68.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.61.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i
  %.064.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.bu, %bb.i ] ; 2 uses
  %.05263.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %i.bt, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.bg = load ptr, ptr %i.ab, align 8
  call void @BufFileReadExact(ptr noundef %i.bg, ptr noundef nonnull %2, i64 noundef 8) #12
  store i64 8, ptr %i.ad, align 8
  %i.bh = load i32, ptr %i.be, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.bk = call i32 @errcode_for_file_access() #12 ; 0 uses
  %i.bl = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4) #12 ; 0 uses
  %i.bm = call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.5) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 467, ptr noundef nonnull @__func__.sts_read_tuple) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.bf, align 8
  %i.bo = add i32 %i.bn, 4
  store i32 %i.bo, ptr %i.bf, align 8
  %i.bp = call i64 @llvm.umin.i64(i64 %.05263.i, i64 32760) ; 4 uses
  %i.bq = load ptr, ptr %i.ab, align 8
  call void @BufFileReadExact(ptr noundef %i.bq, ptr noundef %.064.i, i64 noundef %i.bp) #12
  %i.br = load i64, ptr %i.ad, align 8
  %i.bs = add i64 %i.br, %i.bp
  store i64 %i.bs, ptr %i.ad, align 8
  %i.bt = sub nuw i64 %.05263.i, %i.bp            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.064.i, i64 %i.bp
  store i32 0, ptr %i.c, align 4
  %i.bv = load i32, ptr %2, align 4
  store i32 %i.bv, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %.not60.i = icmp eq i64 %i.bt, 0
  br i1 %.not60.i, label %sts_read_tuple.exit, label %bb.g, !llvm.loop !8

sts_read_tuple.exit:                              ; preds = %bb.i, %._crit_edge68.i
  %i.bw = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.bx = load i32, ptr %i.a, align 4
  store i32 %i.bx, ptr %i.bw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph, %.backedge
  %i.by = load ptr, ptr %i.h, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 80
  %i.ca = load i32, ptr %i.i, align 8
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [28 x i8], ptr %i.bz, i64 %i.cb ; 5 uses
  %i.cd = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.cc, i32 noundef 0) #12 ; 0 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 2 uses
  %i.cg = load i32, ptr %i.j, align 8             ; 3 uses
  %i.ch = icmp ult i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.cg, ptr %i.ce, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ci = phi i32 [ %i.cg, %bb.k ], [ %i.cf, %bb.j ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.ck = load i32, ptr %i.cj, align 4
  %.not = icmp ult i32 %i.ci, %i.ck
  br i1 %.not, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.cl = add i32 %i.ci, 4                        ; 2 uses
  store i32 %i.cl, ptr %i.ce, align 4
  store i32 %i.cl, ptr %i.j, align 8
  call void @LWLockRelease(ptr noundef nonnull %i.cc) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.cm = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.co = load i32, ptr %i.i, align 8
  %.val = load ptr, ptr %i.h, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.cq = call i32 (ptr, i64, ptr, ...) @pg_snprintf(ptr noundef nonnull %i.b, i64 noundef 1024, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.cp, i32 noundef %i.co) #12 ; 0 uses
  %i.cr = load ptr, ptr %i.l, align 8
  %i.cs = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.cr, ptr @CurrentMemoryContext, align 8
  %i.ct = load ptr, ptr %i.m, align 8
  %i.cu = call ptr @BufFileOpenFileSet(ptr noundef %i.ct, ptr noundef nonnull %i.b, i32 noundef 0, i1 noundef zeroext false) #12 ; 2 uses
  store ptr %i.cu, ptr %i.k, align 8
  store ptr %i.cs, ptr @CurrentMemoryContext, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cv = phi ptr [ %i.cu, %bb.n ], [ %i.cm, %bb.m ]
  %i.cw = zext i32 %i.ci to i64
  %i.cx = call i32 @BufFileSeekBlock(ptr noundef %i.cv, i64 noundef %i.cw) #12
  %.not52 = icmp eq i32 %i.cx, 0
  br i1 %.not52, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.cz = call i32 @errcode_for_file_access() #12 ; 0 uses
  %i.da = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, i32 noundef %i.ci) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 549, ptr noundef nonnull @__func__.sts_parallel_scan_next) #12
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.db = load ptr, ptr %i.k, align 8
  call void @BufFileReadExact(ptr noundef %i.db, ptr noundef nonnull %3, i64 noundef 8) #12
  %i.dc = load i32, ptr %i.n, align 4             ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %bb.r, label %.thread57

.thread57:                                        ; preds = %bb.q
  store i32 0, ptr %i.c, align 4
  %i.de = load i32, ptr %3, align 4
  store i32 %i.de, ptr %i.d, align 8
  store i64 8, ptr %i.o, align 8
  br label %.backedge.sink.split

bb.r:                                             ; preds = %bb.q
  %i.df = shl i32 %i.dc, 2
  %i.dg = add i32 %i.df, %i.ci
  store i32 %i.dg, ptr %i.j, align 8
  br label %.backedge.sink.split

bb.s:                                             ; preds = %bb.l
  call void @LWLockRelease(ptr noundef nonnull %i.cc) #12
  %i.dh = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not53 = icmp eq ptr %i.dh, null
  br i1 %.not53, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @BufFileClose(ptr noundef nonnull %i.dh) #12
  store ptr null, ptr %i.k, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.di = load i32, ptr %i.i, align 8
  %i.dj = add i32 %i.di, 1
  %i.dk = load ptr, ptr %i.h, align 8
  %i.dl = load i32, ptr %i.dk, align 8
  %i.dm = srem i32 %i.dj, %i.dl                   ; 2 uses
  store i32 %i.dm, ptr %i.i, align 8
  %i.dn = load i32, ptr %0, align 8
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.j, align 8
  br label %.backedge

.backedge.sink.split:                             ; preds = %.thread57, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.v
  %i.dp = load i32, ptr %i.c, align 4
  %i.dq = load i32, ptr %i.d, align 8
  %i.dr = icmp slt i32 %i.dp, %i.dq
  br i1 %i.dr, label %._crit_edge, label %bb.j

.loopexit:                                        ; preds = %bb.u, %sts_read_tuple.exit
  %.0 = phi ptr [ %i.bw, %sts_read_tuple.exit ], [ null, %bb.u ]
  ret ptr %.0
}

declare zeroext i1 @LWLockAcquire(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @LWLockRelease(ptr noundef) local_unnamed_addr #5

declare ptr @BufFileOpenFileSet(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare i32 @BufFileSeekBlock(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @errcode_for_file_access() local_unnamed_addr #5

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #5

declare void @BufFileReadExact(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @BufFileWrite(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare ptr @MemoryContextAlloc(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @errdetail_internal(ptr noundef, ...) local_unnamed_addr #5

declare i32 @pg_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !4}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !4}
end_hunk_0
