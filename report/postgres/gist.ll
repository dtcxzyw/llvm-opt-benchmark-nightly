Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gist?download=true
inline.NumInlined: 150
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@initGISTstate:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.p, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.y = load i16, ptr %i.x, align 2
  %i.z = icmp sgt i16 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 1576
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 3112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 4648
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 6184
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 7720
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 9256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 10792
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 12328
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 13864
  br label %bb.d

.preheader.loopexit:                              ; preds = %bb.p
  %i.al = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.c
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %i.al, %.preheader.loopexit ] ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp slt i32 %.0.lcssa, %i.an
  br i1 %i.ao, label %.lr.ph115, label %._crit_edge

.lr.ph115:                                        ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 13864
  %i.aq = zext nneg i32 %.0.lcssa to i64
  br label %bb.q

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 16 uses
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %indvars.iv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i16 ; 13 uses
  %i.at = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 1) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.ar, ptr noundef %i.at, ptr noundef %i.j) #8
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.ab, i64 %indvars.iv
  %i.av = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 2) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.au, ptr noundef %i.av, ptr noundef %i.j) #8
  %i.aw = tail call i32 @index_getprocid(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 3) #8
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ay = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 3) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.ax, ptr noundef %i.ay, ptr noundef %i.j) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3120
  store i32 0, ptr %i.ba, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bb = tail call i32 @index_getprocid(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 4) #8
  %.not109 = icmp eq i32 %i.bb, 0
  br i1 %.not109, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv
  %i.bd = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 4) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.bc, ptr noundef %i.bd, ptr noundef %i.j) #8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4656
  store i32 0, ptr %i.bf, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bh = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 5) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.bg, ptr noundef %i.bh, ptr noundef %i.j) #8
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %indvars.iv
  %i.bj = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 6) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.bi, ptr noundef %i.bj, ptr noundef %i.j) #8
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bl = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 7) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.bk, ptr noundef %i.bl, ptr noundef %i.j) #8
  %i.bm = tail call i32 @index_getprocid(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 8) #8
  %.not110 = icmp eq i32 %i.bm, 0
  br i1 %.not110, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bo = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 8) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.bn, ptr noundef %i.bo, ptr noundef %i.j) #8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 10800
  store i32 0, ptr %i.bq, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.br = tail call i32 @index_getprocid(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 9) #8
  %.not111 = icmp eq i32 %i.br, 0
  br i1 %.not111, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %indvars.iv
  %i.bt = tail call ptr @index_getprocinfo(ptr noundef nonnull %0, i16 noundef signext %i.as, i16 noundef zeroext 9) #8
  tail call void @fmgr_info_copy(ptr noundef nonnull %i.bs, ptr noundef %i.bt, ptr noundef %i.j) #8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 12336
  store i32 0, ptr %i.bv, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bw = load ptr, ptr %i.aj, align 8
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4            ; 2 uses
  %.not112 = icmp eq i32 %i.by, 0
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %. = select i1 %.not112, i32 100, i32 %i.by
  store i32 %., ptr %i.bz, align 4
  %i.ca = load ptr, ptr %i.p, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = sext i16 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next, %i.cd
  br i1 %i.ce, label %bb.d, label %.preheader.loopexit, !llvm.loop !8

bb.q:                                             ; preds = %.lr.ph115, %bb.q
  %indvars.iv117 = phi i64 [ %i.aq, %.lr.ph115 ], [ %indvars.iv.next118, %bb.q ] ; 3 uses
  %i.cf = getelementptr [48 x i8], ptr %i.l, i64 %indvars.iv117 ; 9 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 48
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 1584
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr i8, ptr %i.cf, i64 3120
  store i32 0, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.cf, i64 4656
  store i32 0, ptr %i.cj, align 8
  %i.ck = getelementptr i8, ptr %i.cf, i64 6192
  store i32 0, ptr %i.ck, align 8
  %i.cl = getelementptr i8, ptr %i.cf, i64 7728
  store i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr i8, ptr %i.cf, i64 9264
  store i32 0, ptr %i.cm, align 8
  %i.cn = getelementptr i8, ptr %i.cf, i64 10800
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr i8, ptr %i.cf, i64 12336
  store i32 0, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv117
  store i32 0, ptr %i.cp, align 4
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.cq = load ptr, ptr %i.a, align 8
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next118, %i.cs
  br i1 %i.ct, label %bb.q, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.q, %.preheader
  store ptr %i.k, ptr @CurrentMemoryContext, align 8
  ret ptr %i.l
}

declare ptr @gistFormTuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @gistdoinsert(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %struct.GISTInsertStack, align 8    ; 9 uses
  %7 = alloca %struct.GISTInsertState, align 8    ; 12 uses
  %i.g = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %i.i, align 8
  store ptr %0, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 %i.g, ptr %i.k, align 8
  store i32 0, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 26
  store i16 0, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 8 uses
  store ptr %6, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.s = phi i8 [ 0, %bb.a ], [ %.pre, %.backedge ]
  %.0112 = phi ptr [ %6, %bb.a ], [ %.0112.be, %.backedge ] ; 4 uses
  %.0 = phi i1 [ false, %bb.a ], [ %.0.be, %.backedge ] ; 2 uses
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.0112, i64 4
  %i.v = load i32, ptr %i.u, align 4
  call void @UnlockBuffer(i32 noundef %i.v) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %.0112, i64 4
  %i.x = load i32, ptr %i.w, align 4
  call void @ReleaseBuffer(i32 noundef %i.x) #8
  %i.y = getelementptr inbounds nuw i8, ptr %.0112, i64 32
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  store ptr %i.z, ptr %i.p, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i8, ptr %i.aa, align 8, !range !6, !noundef !7
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.lr.ph.peel.next, label %._crit_edge

.lr.ph.peel.next:                                 ; preds = %bb.d, %.lr.ph.peel.next
  %.1113148 = phi ptr [ %i.ae, %.lr.ph.peel.next ], [ %i.z, %bb.d ] ; 2 uses
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %.1113148, i64 4
  %.pre158 = load i32, ptr %.phi.trans.insert157, align 4
  call void @ReleaseBuffer(i32 noundef %.pre158) #8
  %i.ad = getelementptr inbounds nuw i8, ptr %.1113148, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !range !6, !noundef !7
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.peel.next, label %._crit_edge.loopexit, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %.lr.ph.peel.next
  store ptr %i.ae, ptr %i.p, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d, %bb.b
  %.1113.lcssa = phi ptr [ %.0112, %bb.b ], [ %i.z, %bb.d ], [ %i.ae, %._crit_edge.loopexit ] ; 29 uses
  %.1.lcssa = phi i1 [ %.0, %bb.b ], [ false, %bb.d ], [ false, %._crit_edge.loopexit ] ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 16 ; 5 uses
  %i.aj = load i64, ptr %i.ai, align 8
  %.not = icmp eq i64 %i.aj, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.ak = load i32, ptr %.1113.lcssa, align 8
  %i.al = call i32 @ReadBuffer(ptr noundef %0, i32 noundef %i.ak) #8
  %i.am = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 4
  store i32 %i.al, ptr %i.am, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  br i1 %.1.lcssa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  call void @LockBufferInternal(i32 noundef %i.ao, i32 noundef 1) #8
  %i.ap = load i32, ptr %i.an, align 4
  call void @gistcheckpage(ptr noundef %0, i32 noundef %i.ap) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 4 ; 19 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 4 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.au = xor i32 %i.ar, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %BufferGetPage.exit

bb.j:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr @BufferBlocks, align 8
  %i.az = add nsw i32 %i.ar, -1
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.i, %bb.j
  %i.bd = phi ptr [ %i.ax, %bb.i ], [ %i.bc, %bb.j ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 8 ; 6 uses
  store ptr %i.bd, ptr %i.be, align 8
  br i1 %.1.lcssa, label %bb.k, label %.thread

bb.k:                                             ; preds = %BufferGetPage.exit
  %i.bf = load volatile i64, ptr %i.bd, align 8   ; 2 uses
  %i.bg = call i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 32)
  store i64 %i.bg, ptr %i.ai, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.bm = load i16, ptr %i.bl, align 4            ; 2 uses
  %i.bn = and i16 %i.bm, 8
  %.not118 = icmp eq i16 %i.bn, 0
  br i1 %.not118, label %bb.ac, label %bb.l

.thread:                                          ; preds = %BufferGetPage.exit
  %i.bo = call i64 @BufferGetLSNAtomic(i32 noundef %i.ar) #8
  store i64 %i.bo, ptr %i.ai, align 8
  %i.bp = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i16, ptr %i.bu, align 4            ; 2 uses
  %i.bw = and i16 %i.bv, 8
  %.not118141 = icmp eq i16 %i.bw, 0
  br i1 %.not118141, label %bb.ac, label %.thread142

.thread142:                                       ; preds = %.thread
  %i.bx = load i32, ptr %i.aq, align 4
  call void @UnlockBuffer(i32 noundef %i.bx) #8
  %i.by = load i32, ptr %i.aq, align 4
  call void @LockBufferInternal(i32 noundef %i.by, i32 noundef 3) #8
  %i.bz = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i16, ptr %i.ca, align 8
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i16, ptr %i.ce, align 4
  %i.cg = and i16 %i.cf, 8
  %.not129 = icmp eq i16 %i.cg, 0
  br i1 %.not129, label %.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread142
  %i.ch = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %i.q, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %.1113.lcssa, align 8
  %i.cl = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.cj, i32 noundef %i.ck) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1209, ptr noundef nonnull @__func__.gistfixsplit) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cm = load i32, ptr %i.aq, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 26 ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.v, %bb.n
  %.029.i = phi i32 [ %i.cm, %bb.n ], [ %i.ez, %bb.v ] ; 5 uses
  %.028.i = phi ptr [ null, %bb.n ], [ %i.ep, %bb.v ]
  %i.cp = call ptr @palloc(i64 noundef 16) #8     ; 3 uses
  %i.cq = icmp slt i32 %.029.i, 0
  br i1 %i.cq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.cs = xor i32 %.029.i, -1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8
  br label %BufferGetPage.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.cw = load ptr, ptr @BufferBlocks, align 8
  %i.cx = add nsw i32 %.029.i, -1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = shl nsw i64 %i.cy, 13
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.q, %bb.p
  %.0.i.i31.i = phi ptr [ %i.cv, %bb.p ], [ %i.da, %bb.q ] ; 5 uses
  %i.db = getelementptr i8, ptr %.0.i.i31.i, i64 12
  %.val.i.i = load i16, ptr %i.db, align 4        ; 2 uses
  %i.dc = icmp ult i16 %.val.i.i, 25
  %i.dd = zext i16 %.val.i.i to i32
  %i.de = add nuw nsw i32 %i.dd, 262120           ; 2 uses
  %i.df = and i32 %i.de, 262140
  %.not3740.i.i = icmp eq i32 %i.df, 0
  %.not37.i.i = select i1 %i.dc, i1 true, i1 %.not3740.i.i
  br i1 %.not37.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BufferGetPage.exit.i.i
  %i.dg = lshr i32 %i.de, 2
  %i.dh = getelementptr i8, ptr %.0.i.i31.i, i64 20
  %i.di = and i32 %i.dg, 65535
  %i.dj = add nuw nsw i32 %i.di, 1
  %wide.trip.count.i.i = zext nneg i32 %i.dj to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 2 uses
  %.039.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.2.i.i, %bb.u ] ; 3 uses
  %i.dk = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i
  %.val36.i.i = load i32, ptr %i.dk, align 4
  %i.dl = and i32 %.val36.i.i, 32767
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 %i.dm ; 2 uses
  %i.do = icmp eq ptr %.039.i.i, null
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dp = call ptr @CopyIndexTuple(ptr noundef nonnull %i.dn) #8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dq = call ptr @gistgetadjusted(ptr noundef %0, ptr noundef nonnull %.039.i.i, ptr noundef nonnull %i.dn, ptr noundef %3) #8 ; 2 uses
  %.not34.i.i = icmp eq ptr %i.dq, null
  %spec.select.i.i = select i1 %.not34.i.i, ptr %.039.i.i, ptr %i.dq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i.i = phi ptr [ %i.dp, %bb.s ], [ %spec.select.i.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.i.i, label %._crit_edge.i.i, label %bb.r, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %bb.u
  %.not33.i.i = icmp eq ptr %.2.i.i, null
  br i1 %.not33.i.i, label %._crit_edge.thread.i.i, label %gistformdownlink.exit.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %BufferGetPage.exit.i.i
  %i.dr = load ptr, ptr %i.cn, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = load i32, ptr %i.ds, align 4
  call void @LockBufferInternal(i32 noundef %i.dt, i32 noundef 3) #8
  call fastcc void @gistFindCorrectParent(ptr noundef %0, ptr noundef %.1113.lcssa)
  %i.du = load ptr, ptr %i.cn, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = load i16, ptr %i.co, align 2
  %i.dy = zext i16 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.dw, i64 20
  %i.ea = getelementptr [4 x i8], ptr %i.dz, i64 %i.dy
  %.val35.i.i = load i32, ptr %i.ea, align 4
  %i.eb = and i32 %.val35.i.i, 32767
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ec
  %i.ee = call ptr @CopyIndexTuple(ptr noundef %i.ed) #8
  %i.ef = load ptr, ptr %i.cn, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4
  call void @UnlockBuffer(i32 noundef %i.eh) #8
  br label %gistformdownlink.exit.i

gistformdownlink.exit.i:                          ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %.3.i.i = phi ptr [ %.2.i.i, %._crit_edge.i.i ], [ %i.ee, %._crit_edge.thread.i.i ] ; 4 uses
  %i.ei = call i32 @BufferGetBlockNumber(i32 noundef %.029.i) #8 ; 2 uses
  %i.ej = lshr i32 %i.ei, 16
  %i.ek = trunc nuw i32 %i.ej to i16
  store i16 %i.ek, ptr %.3.i.i, align 2
  %i.el = trunc i32 %i.ei to i16
  %i.em = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 2
  store i16 %i.el, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  store i16 -1, ptr %i.en, align 2
  store i32 %.029.i, ptr %i.cp, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.3.i.i, ptr %i.eo, align 8
  %i.ep = call ptr @lappend(ptr noundef %.028.i, ptr noundef nonnull %i.cp) #8 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 16
  %i.er = load i16, ptr %i.eq, align 8
  %i.es = zext i16 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %.0.i.i31.i, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ev = load i16, ptr %i.eu, align 4
  %i.ew = and i16 %i.ev, 8
  %.not.i = icmp eq i16 %i.ew, 0
  br i1 %.not.i, label %gistfixsplit.exit, label %bb.v

bb.v:                                             ; preds = %gistformdownlink.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = call i32 @ReadBuffer(ptr noundef %0, i32 noundef %i.ey) #8 ; 2 uses
  call void @LockBufferInternal(i32 noundef %i.ez, i32 noundef 3) #8
  br label %bb.o

gistfixsplit.exit:                                ; preds = %gistformdownlink.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.fa = load ptr, ptr %i.cn, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4
  call void @LockBufferInternal(i32 noundef %i.fc, i32 noundef 3) #8, !inline_history !14
  %.not.i.i139 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i139, label %gistfinishsplit.exit, label %list_length.exit.i

list_length.exit.i:                               ; preds = %gistfixsplit.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.fe = load i32, ptr %i.fd, align 4            ; 2 uses
  %.036.i = add i32 %i.fe, -1                     ; 2 uses
  %i.ff = icmp sgt i32 %.036.i, 1
  br i1 %i.ff, label %.lr.ph.i, label %gistfinishsplit.exit

.lr.ph.i:                                         ; preds = %list_length.exit.i
  %i.fg = getelementptr i8, ptr %i.ep, i64 16
  %i.fh = zext nneg i32 %.036.i to i64
  %i.fi = zext i32 %i.fe to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph.i
  %indvars.iv39.i = phi i64 [ %i.fi, %.lr.ph.i ], [ %indvars.iv.next40.i, %bb.ab ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.fh, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ab ] ; 3 uses
  %.val35.i = load ptr, ptr %i.fg, align 8        ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.val35.i, i64 %indvars.iv.i
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = add nsw i64 %indvars.iv39.i, 4294967294
  %i.fm = and i64 %i.fl, 4294967295
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.val35.i, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  call fastcc void @gistFindCorrectParent(ptr noundef %0, ptr noundef nonnull %.1113.lcssa)
  %i.fp = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fr = load i32, ptr %i.fo, align 8
  %i.fs = load i32, ptr %i.fk, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 4 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = call i32 @BufferGetBlockNumber(i32 noundef %i.fu) #8, !inline_history !15
  call void @CheckForSerializableConflictIn(ptr noundef %0, ptr noundef null, i32 noundef %i.fv) #8, !inline_history !15
  %i.fw = load i32, ptr %i.ft, align 4
  %i.fx = call zeroext i1 @gistplacetopage(ptr noundef %0, i64 noundef %2, ptr noundef %3, i32 noundef %i.fw, ptr noundef nonnull %i.fq, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef %i.fr, ptr noundef nonnull %i.a, i1 noundef zeroext true, ptr noundef %4, i1 noundef zeroext %5), !inline_history !15
  %.not24.i = icmp eq i32 %i.fs, 0
  br i1 %.not24.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @UnlockReleaseBuffer(i32 noundef %i.fs) #8, !inline_history !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fy = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i140 = icmp eq ptr %i.fy, null
  br i1 %.not.i140, label %gistinserttuples.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call fastcc void @gistfinishsplit(ptr noundef nonnull readonly %7, ptr noundef nonnull %i.fp, ptr noundef %3, ptr noundef nonnull %i.fy, i1 noundef zeroext false) #10, !inline_history !15
  br label %gistinserttuples.exit

gistinserttuples.exit:                            ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %i.fx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %gistinserttuples.exit
  store i16 0, ptr %i.co, align 2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %gistinserttuples.exit
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.fz = icmp sgt i64 %indvars.iv.i, 2
  %indvars.iv.next40.i = add nsw i64 %indvars.iv39.i, -1
  br i1 %i.fz, label %bb.w, label %gistfinishsplit.exit, !llvm.loop !0

gistfinishsplit.exit:                             ; preds = %bb.ab, %gistfixsplit.exit, %list_length.exit.i
  %i.ga = getelementptr i8, ptr %i.ep, i64 16
  %.val33.i = load ptr, ptr %i.ga, align 8        ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val33.i, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = load ptr, ptr %.val33.i, align 8        ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  store ptr %i.gf, ptr %i.b, align 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  store ptr %i.gh, ptr %i.r, align 8
  call fastcc void @gistFindCorrectParent(ptr noundef %0, ptr noundef nonnull %.1113.lcssa)
  %i.gi = load ptr, ptr %i.cn, align 8
  %i.gj = load i16, ptr %i.co, align 2
  %i.gk = load i32, ptr %i.gd, align 8
  %i.gl = load i32, ptr %i.gc, align 8
  %i.gm = call fastcc zeroext i1 @gistinserttuples(ptr noundef nonnull readonly %7, ptr noundef %i.gi, ptr noundef %3, ptr noundef nonnull %i.b, i32 noundef 2, i16 noundef zeroext %i.gj, i32 noundef %i.gk, i32 noundef %i.gl, i1 noundef zeroext true, i1 noundef zeroext false) #11, !inline_history !14 ; 0 uses
  store i16 0, ptr %i.co, align 2
  store i8 1, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.gn = load i32, ptr %i.aq, align 4
  call void @UnlockReleaseBuffer(i32 noundef %i.gn) #8
  %i.go = load ptr, ptr %i.cn, align 8            ; 2 uses
  store ptr %i.go, ptr %i.p, align 8
  br label %.backedge

.backedge:                                        ; preds = %bb.as, %BufferGetPage.exit134, %bb.ar, %bb.aq, %gistfinishsplit.exit, %bb.af, %bb.ay, %bb.bb, %.thread142
  %.0112.be = phi ptr [ %i.go, %gistfinishsplit.exit ], [ %.1113.lcssa, %.thread142 ], [ %i.hd, %bb.af ], [ %.1113.lcssa, %bb.ay ], [ %i.ko, %bb.bb ], [ %.1113.lcssa, %BufferGetPage.exit134 ], [ %i.jc, %bb.as ], [ %i.ja, %bb.ar ], [ %.1113.lcssa, %bb.aq ] ; 2 uses
  %.0.be = phi i1 [ false, %gistfinishsplit.exit ], [ true, %.thread142 ], [ false, %bb.af ], [ false, %bb.ay ], [ false, %bb.bb ], [ true, %BufferGetPage.exit134 ], [ false, %bb.as ], [ false, %bb.ar ], [ true, %bb.aq ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0112.be, i64 24
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !6
  br label %bb.b

bb.ac:                                            ; preds = %.thread, %bb.k
  %i.gp = phi i16 [ %i.bv, %.thread ], [ %i.bm, %bb.k ] ; 3 uses
  %i.gq = phi ptr [ %i.bt, %.thread ], [ %i.bk, %bb.k ]
  %i.gr = phi ptr [ %i.bp, %.thread ], [ %i.bd, %bb.k ]
  %i.gs = load i32, ptr %.1113.lcssa, align 8
  %.not119 = icmp eq i32 %i.gs, 0
  br i1 %.not119, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gt = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.gw = load i64, ptr %i.gv, align 8
  %i.gx = load volatile i64, ptr %i.gq, align 8   ; 2 uses
  %i.gy = call i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 32)
  %i.gz = icmp uge i64 %i.gw, %i.gy
  %i.ha = and i16 %i.gp, 2
  %.not120 = icmp eq i16 %i.ha, 0
  %or.cond = and i1 %.not120, %i.gz
  br i1 %or.cond, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %.old = and i16 %i.gp, 2
  %.not120.old = icmp eq i16 %.old, 0
  br i1 %.not120.old, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hb = load i32, ptr %i.aq, align 4
  call void @UnlockReleaseBuffer(i32 noundef %i.hb) #8
  %i.hc = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  store ptr %i.hd, ptr %i.p, align 8
  br label %.backedge

bb.ag:                                            ; preds = %bb.ad, %bb.ae
  %i.he = and i16 %i.gp, 1
  %.not121 = icmp eq i16 %i.he, 0
  br i1 %.not121, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.hf = call zeroext i16 @gistchoose(ptr noundef %0, ptr noundef nonnull %i.gr, ptr noundef %1, ptr noundef %3) #8 ; 3 uses
  %i.hg = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.hh = zext i16 %i.hf to i64
  %i.hi = getelementptr i8, ptr %i.hg, i64 20
  %i.hj = getelementptr [4 x i8], ptr %i.hi, i64 %i.hh
  %.val = load i32, ptr %i.hj, align 4
  %i.hk = and i32 %.val, 32767
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hl ; 4 uses
  %.val130 = load i16, ptr %i.hm, align 2
  %i.hn = getelementptr i8, ptr %i.hm, i64 2
  %.val131 = load i16, ptr %i.hn, align 2
  %i.ho = zext i16 %.val130 to i32
  %i.hp = shl nuw i32 %i.ho, 16
  %i.hq = zext i16 %.val131 to i32
  %i.hr = or disjoint i32 %i.hp, %i.hq
  %i.hs = getelementptr i8, ptr %i.hm, i64 4
  %.val132 = load i16, ptr %i.hs, align 2
  %i.ht = icmp eq i16 %.val132, -2
  br i1 %i.ht, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hu = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.hv = load ptr, ptr %i.q, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.hw) #8 ; 0 uses
  %i.hy = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.6) #8 ; 0 uses
  %i.hz = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.7) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 768, ptr noundef nonnull @__func__.gistdoinsert) #8
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.ia = call ptr @gistgetadjusted(ptr noundef %0, ptr noundef nonnull %i.hm, ptr noundef %1, ptr noundef %3) #8 ; 2 uses
  %.not122 = icmp eq ptr %i.ia, null
  br i1 %.not122, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.1.lcssa, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ib = load i32, ptr %i.aq, align 4
  call void @UnlockBuffer(i32 noundef %i.ib) #8
  %i.ic = load i32, ptr %i.aq, align 4
  call void @LockBufferInternal(i32 noundef %i.ic, i32 noundef 3) #8
  %i.id = load i32, ptr %i.aq, align 4            ; 3 uses
  %i.ie = icmp slt i32 %i.id, 0
  br i1 %i.ie, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.if = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ig = xor i32 %i.id, -1
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.ih
  %i.ij = load ptr, ptr %i.ii, align 8
  br label %BufferGetPage.exit134

bb.an:                                            ; preds = %bb.al
  %i.ik = load ptr, ptr @BufferBlocks, align 8
  %i.il = add nsw i32 %i.id, -1
  %i.im = sext i32 %i.il to i64
  %i.in = shl nsw i64 %i.im, 13
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.in
  br label %BufferGetPage.exit134

BufferGetPage.exit134:                            ; preds = %bb.am, %bb.an
  %.0.i.i133 = phi ptr [ %i.ij, %bb.am ], [ %i.io, %bb.an ] ; 2 uses
  store ptr %.0.i.i133, ptr %i.be, align 8
  %i.ip = load volatile i64, ptr %.0.i.i133, align 8 ; 2 uses
  %i.iq = call i64 @llvm.fshl.i64(i64 %i.ip, i64 %i.ip, i64 32)
  %i.ir = load i64, ptr %i.ai, align 8
  %.not123 = icmp eq i64 %i.iq, %i.ir
  br i1 %.not123, label %bb.ao, label %.backedge

bb.ao:                                            ; preds = %BufferGetPage.exit134, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.ia, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.is = load i32, ptr %i.aq, align 4
  %i.it = call i32 @BufferGetBlockNumber(i32 noundef %i.is) #8, !inline_history !16
  call void @CheckForSerializableConflictIn(ptr noundef %0, ptr noundef null, i32 noundef %i.it) #8, !inline_history !16
  %i.iu = load i32, ptr %i.aq, align 4
  %i.iv = call zeroext i1 @gistplacetopage(ptr noundef %0, i64 noundef %2, ptr noundef %3, i32 noundef %i.iu, ptr noundef nonnull %i.f, i32 noundef 1, i16 noundef zeroext %i.hf, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.e, i1 noundef zeroext true, ptr noundef %4, i1 noundef zeroext %5), !inline_history !16
  %i.iw = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i, label %gistinserttuple.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @gistfinishsplit(ptr noundef nonnull readonly %7, ptr noundef nonnull %.1113.lcssa, ptr noundef %3, ptr noundef nonnull %i.iw, i1 noundef zeroext false) #11, !inline_history !16
  br label %gistinserttuple.exit

gistinserttuple.exit:                             ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.iv, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %gistinserttuple.exit
  %i.ix = load i32, ptr %.1113.lcssa, align 8
  %.not124 = icmp eq i32 %i.ix, 0
  br i1 %.not124, label %.backedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iy = load i32, ptr %i.aq, align 4
  call void @UnlockReleaseBuffer(i32 noundef %i.iy) #8
  %i.iz = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8            ; 2 uses
  store ptr %i.ja, ptr %i.p, align 8
  br label %.backedge

bb.as:                                            ; preds = %gistinserttuple.exit, %bb.aj
  %i.jb = load i32, ptr %i.aq, align 4
  call void @UnlockBuffer(i32 noundef %i.jb) #8
  %i.jc = call ptr @palloc0(i64 noundef 40) #8    ; 5 uses
  store i32 %i.hr, ptr %i.jc, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  store ptr %.1113.lcssa, ptr %i.jd, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 26
  store i16 %i.hf, ptr %i.je, align 2
  store ptr %i.jc, ptr %i.p, align 8
  br label %.backedge

bb.at:                                            ; preds = %bb.ag
  br i1 %.1.lcssa, label %bb.bc, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jf = load i32, ptr %i.aq, align 4
  call void @UnlockBuffer(i32 noundef %i.jf) #8
  %i.jg = load i32, ptr %i.aq, align 4
  call void @LockBufferInternal(i32 noundef %i.jg, i32 noundef 3) #8
  %i.jh = load i32, ptr %i.aq, align 4            ; 5 uses
  %i.ji = icmp slt i32 %i.jh, 0
  br i1 %i.ji, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jj = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.jk = xor i32 %i.jh, -1
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jl
  %i.jn = load ptr, ptr %i.jm, align 8
  br label %BufferGetPage.exit136

bb.aw:                                            ; preds = %bb.au
  %i.jo = load ptr, ptr @BufferBlocks, align 8
  %i.jp = add nsw i32 %i.jh, -1
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 13
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  br label %BufferGetPage.exit136

BufferGetPage.exit136:                            ; preds = %bb.av, %bb.aw
  %.0.i.i135 = phi ptr [ %i.jn, %bb.av ], [ %i.js, %bb.aw ] ; 4 uses
  store ptr %.0.i.i135, ptr %i.be, align 8
  %i.jt = load volatile i64, ptr %.0.i.i135, align 8 ; 2 uses
  %i.ju = call i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 32)
  store i64 %i.ju, ptr %i.ai, align 8
  %i.jv = load i32, ptr %.1113.lcssa, align 8
  %i.jw = icmp eq i32 %i.jv, 0
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.i.i135, i64 16
  %i.jy = load i16, ptr %i.jx, align 8
  %i.jz = zext i16 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i.i135, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 12
  %i.kc = load i16, ptr %i.kb, align 4            ; 3 uses
  br i1 %i.jw, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %BufferGetPage.exit136
  %i.kd = and i16 %i.kc, 1
  %.not127 = icmp eq i16 %i.kd, 0
  br i1 %.not127, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  call void @UnlockBuffer(i32 noundef %i.jh) #8
  br label %.backedge

bb.az:                                            ; preds = %BufferGetPage.exit136
  %i.ke = and i16 %i.kc, 8
  %.not125 = icmp eq i16 %i.ke, 0
  br i1 %.not125, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.kf = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load i64, ptr %i.kh, align 8
  %i.kj = load volatile i64, ptr %i.ka, align 8   ; 2 uses
  %i.kk = call i64 @llvm.fshl.i64(i64 %i.kj, i64 %i.kj, i64 32)
  %i.kl = icmp uge i64 %i.ki, %i.kk
  %i.km = and i16 %i.kc, 2
  %.not126 = icmp eq i16 %i.km, 0
  %or.cond144 = and i1 %.not126, %i.kl
  br i1 %or.cond144, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @UnlockReleaseBuffer(i32 noundef %i.jh) #8
  %i.kn = getelementptr inbounds nuw i8, ptr %.1113.lcssa, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8            ; 2 uses
  store ptr %i.ko, ptr %i.p, align 8
  br label %.backedge

bb.bc:                                            ; preds = %bb.ba, %bb.ax, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.kp = load i32, ptr %i.aq, align 4
  %i.kq = call i32 @BufferGetBlockNumber(i32 noundef %i.kp) #8, !inline_history !16
  call void @CheckForSerializableConflictIn(ptr noundef %0, ptr noundef null, i32 noundef %i.kq) #8, !inline_history !16
  %i.kr = load i32, ptr %i.aq, align 4
  %i.ks = call zeroext i1 @gistplacetopage(ptr noundef %0, i64 noundef %2, ptr noundef %3, i32 noundef %i.kr, ptr noundef nonnull %i.d, i32 noundef 1, i16 noundef zeroext 0, ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.c, i1 noundef zeroext true, ptr noundef %4, i1 noundef zeroext %5), !inline_history !16 ; 0 uses
  %i.kt = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i137, label %gistinserttuple.exit138, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @gistfinishsplit(ptr noundef nonnull readonly %7, ptr noundef nonnull %.1113.lcssa, ptr noundef %3, ptr noundef nonnull %i.kt, i1 noundef zeroext false) #11, !inline_history !16
  br label %gistinserttuple.exit138

gistinserttuple.exit138:                          ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ku = load i32, ptr %i.aq, align 4
  call void @UnlockBuffer(i32 noundef %i.ku) #8
  br label %bb.be

bb.be:                                            ; preds = %gistinserttuple.exit138, %bb.be
  %.4116151 = phi ptr [ %.1113.lcssa, %gistinserttuple.exit138 ], [ %i.ky, %bb.be ] ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.4116151, i64 4
  %i.kw = load i32, ptr %i.kv, align 4
  call void @ReleaseBuffer(i32 noundef %i.kw) #8
  %i.kx = getelementptr inbounds nuw i8, ptr %.4116151, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8            ; 2 uses
  %.not128 = icmp eq ptr %i.ky, null
  br i1 %.not128, label %bb.bf, label %bb.be, !llvm.loop !12

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  ret void
}

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @gistplacetopage(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i16 noundef zeroext %6, ptr nofree noundef writeonly captures(address_is_null) %7, i32 noundef %8, ptr nofree noundef captures(none) %9, i1 noundef zeroext %10, ptr noundef %11, i1 noundef zeroext %12) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [408 x i16], align 16             ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %13 = alloca %struct.SplitPageLayout, align 8   ; 11 uses
  %i.c = alloca [1 x i16], align 2                ; 4 uses
  %i.d = tail call i32 @BufferGetBlockNumber(i32 noundef %3) #8 ; 2 uses
  %i.e = icmp slt i32 %3, 0                       ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.g = xor i32 %3, -1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @BufferBlocks, align 8
  %i.l = add nsw i32 %3, -1
  %i.m = sext i32 %i.l to i64
  %i.n = shl nsw i64 %i.m, 13
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ] ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 4 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = zext i16 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i16, ptr %i.t, align 4              ; 3 uses
  %i.v = trunc i16 %i.u to i1
  %.mask = and i16 %i.u, 1                        ; 2 uses
  %i.w = zext nneg i16 %.mask to i32
  %i.x = and i16 %i.u, 8
  %.not = icmp eq i16 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.y = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.z = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 257, ptr noundef nonnull @__func__.gistplacetopage) #8
  unreachable

bb.e:                                             ; preds = %BufferGetPage.exit
  store ptr null, ptr %9, align 8
  %i.aa = tail call zeroext i1 @gistnospace(ptr noundef nonnull %.0.i.i, ptr noundef %4, i32 noundef %5, i16 noundef zeroext %6, i64 noundef %1) #8
  br i1 %i.aa, label %bb.f, label %.thread311

bb.f:                                             ; preds = %bb.e
  %i.ab = load i16, ptr %i.p, align 8
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i16, ptr %i.ae, align 4
  %i.ag = and i16 %i.af, 17
  %or.cond.not = icmp eq i16 %i.ag, 17
  br i1 %or.cond.not, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ah = getelementptr i8, ptr %.0.i.i, i64 12
  %.val.i = load i16, ptr %i.ah, align 4          ; 2 uses
  %i.ai = icmp ult i16 %.val.i, 25
  %i.aj = zext i16 %.val.i to i32
  %i.ak = add nuw nsw i32 %i.aj, 262120
  %i.al = lshr i32 %i.ak, 2
  %i.am = trunc i32 %i.al to i16                  ; 2 uses
  %.not3639.i = icmp eq i16 %i.am, 0
  %.not36.i = select i1 %i.ai, i1 true, i1 %.not3639.i
  br i1 %.not36.i, label %bb.x, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.an = getelementptr i8, ptr %.0.i.i, i64 20   ; 3 uses
  %i.ao = add nsw i16 %i.am, 1                    ; 2 uses
  %umax.i = tail call i16 @llvm.umax.i16(i16 %i.ao, i16 2)
  %wide.trip.count.i = zext i16 %umax.i to i64
  %i.ap = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.aq = icmp ult i16 %i.ao, 3
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ap, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 4 uses
  %.038.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.ar = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = and i32 %i.as, 98304
  %i.au = icmp eq i32 %i.at, 98304
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = add i32 %.038.i, 1
  %i.aw = sext i32 %.038.i to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.aw
  %i.ay = trunc nuw i64 %indvars.iv.i to i16
  store i16 %i.ay, ptr %i.ax, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi i32 [ %i.av, %bb.i ], [ %.038.i, %bb.h ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.next.i
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = and i32 %i.ba, 98304
  %i.bc = icmp eq i32 %i.bb, 98304
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = add i32 %.1.i, 1
  %i.be = sext i32 %.1.i to i64
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.be
  %i.bg = trunc nuw i64 %indvars.iv.next.i to i16
  store i16 %i.bg, ptr %i.bf, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i.1 = phi i32 [ %i.bd, %bb.k ], [ %.1.i, %bb.j ] ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.h, !llvm.loop !17

._crit_edge.i.unr-lcssa:                          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.038.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ] ; 3 uses
  %lcmp.mod425 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod425)
  %i.bh = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv.i.epil.init
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = and i32 %i.bi, 98304
  %i.bk = icmp eq i32 %i.bj, 98304
  br i1 %i.bk, label %bb.m, label %._crit_edge.i

bb.m:                                             ; preds = %.epil.preheader
  %i.bl = add i32 %.038.i.epil.init, 1
  %i.bm = sext i32 %.038.i.epil.init to i64
  %i.bn = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.bm
  %i.bo = trunc nuw i64 %indvars.iv.i.epil.init to i16
  store i16 %i.bo, ptr %i.bn, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.m, %._crit_edge.i.unr-lcssa
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %i.bl, %bb.m ], [ %.038.i.epil.init, %.epil.preheader ] ; 4 uses
  %i.bp = icmp sgt i32 %.1.i.lcssa, 0
  br i1 %i.bp, label %bb.n, label %bb.x

bb.n:                                             ; preds = %._crit_edge.i
  %i.bq = load i32, ptr @wal_level, align 4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
