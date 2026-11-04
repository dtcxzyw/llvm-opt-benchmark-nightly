Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/gistbuild?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@gistProcessItup:bb.a
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.peel.next
  %i.au = load i32, ptr %i.l, align 8
  %.not73 = icmp eq i32 %.066103, %i.au
  br i1 %.not73, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.peel.next, %bb.k
  %i.av = call i32 @ReadBuffer(ptr noundef %i.i, i32 noundef %.068102) #7 ; 6 uses
  call void @LockBufferInternal(i32 noundef %i.av, i32 noundef 3) #7
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ay = xor i32 %i.av, -1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8
  br label %BufferGetPage.exit

bb.n:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr @BufferBlocks, align 8
  %i.bd = add nsw i32 %i.av, -1
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bf
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.m, %bb.n
  %.0.i.i = phi ptr [ %i.bb, %bb.m ], [ %i.bg, %bb.n ] ; 3 uses
  %i.bh = call zeroext i16 @gistchoose(ptr noundef %i.i, ptr noundef %.0.i.i, ptr noundef %1, ptr noundef %i.f) #7 ; 4 uses
  %i.bi = zext i16 %i.bh to i64
  %i.bj = getelementptr i8, ptr %.0.i.i, i64 20
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %i.bi
  %.val = load i32, ptr %i.bk, align 4
  %i.bl = and i32 %.val, 32767
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bm ; 3 uses
  %.val78 = load i16, ptr %i.bn, align 2
  %i.bo = getelementptr i8, ptr %i.bn, i64 2
  %.val79 = load i16, ptr %i.bo, align 2
  %i.bp = zext i16 %.val78 to i32
  %i.bq = shl nuw i32 %i.bp, 16
  %i.br = zext i16 %.val79 to i32
  %i.bs = or disjoint i32 %i.bq, %i.br            ; 3 uses
  %i.bt = icmp sgt i32 %.066103, 1
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %BufferGetPage.exit
  %.val80 = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bs, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bu = call ptr @hash_search(ptr noundef %.val80, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b) #7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i32 %.068102, ptr %i.bv, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %BufferGetPage.exit
  %i.bw = call ptr @gistgetadjusted(ptr noundef %i.i, ptr noundef nonnull %i.bn, ptr noundef %1, ptr noundef %i.f) #7 ; 2 uses
  store ptr %i.bw, ptr %i.d, align 8
  %.not75 = icmp eq ptr %i.bw, null
  br i1 %.not75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = call fastcc i32 @gistbufferinginserttuples(ptr noundef nonnull %0, i32 noundef %i.av, i32 noundef %.066103, ptr noundef nonnull %i.d, i32 noundef 1, i16 noundef zeroext %i.bh, i32 noundef -1, i16 noundef zeroext 0)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @UnlockReleaseBuffer(i32 noundef %i.av) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.169 = phi i32 [ %i.bx, %bb.q ], [ %.068102, %bb.r ] ; 2 uses
  %i.by = add i32 %.066103, -1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %cond = icmp eq i32 %i.by, 0
  br i1 %cond, label %.thread90, label %.peel.next, !llvm.loop !23

.loopexit:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.bz = srem i32 %.066103, %i.ar
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit
  %i.cb = call ptr @gistGetNodeBuffer(ptr noundef nonnull %i.h, ptr noundef %i.f, i32 noundef %.068102, i32 noundef %.066103) #7 ; 2 uses
  call void @gistPushItupToNodeBuffer(ptr noundef nonnull %i.h, ptr noundef %i.cb, ptr noundef %1) #7
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = icmp sgt i32 %i.cd, %i.cf
  br label %bb.v

bb.u:                                             ; preds = %.thread90, %.loopexit
  %.068100 = phi i32 [ %.068.lcssa, %.thread90 ], [ %.068102, %.loopexit ]
  %.06497 = phi i16 [ %.064.lcssa, %.thread90 ], [ %.064104, %.loopexit ]
  %.06395 = phi i32 [ %.063.lcssa, %.thread90 ], [ %.063105, %.loopexit ]
  %.167.ph93 = phi i32 [ 0, %.thread90 ], [ %.066103, %.loopexit ]
  %i.ch = call i32 @ReadBuffer(ptr noundef %i.i, i32 noundef %.068100) #7 ; 2 uses
  call void @LockBufferInternal(i32 noundef %i.ch, i32 noundef 3) #7
  %i.ci = call fastcc i32 @gistbufferinginserttuples(ptr noundef nonnull %0, i32 noundef %i.ch, i32 noundef %.167.ph93, ptr noundef nonnull %i.c, i32 noundef 1, i16 noundef zeroext 0, i32 noundef %.06395, i16 noundef zeroext %.06497) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.171 = phi i1 [ %i.cg, %bb.t ], [ false, %bb.u ]
  ret i1 %.171
}

declare i32 @ReadBuffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i16 @gistchoose(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gistgetadjusted(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gistbufferinginserttuples(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5, i32 noundef %6, i16 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i8, align 1                       ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 3 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  store i32 -1, ptr %i.l, align 4
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call zeroext i1 @gistplacetopage(ptr noundef %i.o, i64 noundef %i.q, ptr noundef %i.s, i32 noundef %1, ptr noundef %3, i32 noundef %4, i16 noundef zeroext %5, ptr noundef nonnull %i.l, i32 noundef 0, ptr noundef nonnull %i.k, i1 noundef zeroext false, ptr noundef %i.u, i1 noundef zeroext true) #7
  br i1 %i.v, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.w = call i32 @BufferGetBlockNumber(i32 noundef %1) #7
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.y = icmp slt i32 %1, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.aa = xor i32 %1, -1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %BufferGetPage.exit

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr @BufferBlocks, align 8
  %i.af = add nsw i32 %1, -1
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = call zeroext i1 @errstart(i32 noundef 13, ptr noundef null) #7
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %BufferGetPage.exit
  %i.an = load i32, ptr %i.aj, align 8
  %i.ao = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.an) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1090, ptr noundef nonnull @__func__.gistbufferinginserttuples) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %BufferGetPage.exit
  %i.ap = load i32, ptr %i.aj, align 8
  %i.aq = icmp sgt i32 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr i8, ptr %.0.i.i, i64 12
  %.val72 = load i16, ptr %i.ar, align 4          ; 2 uses
  %i.as = icmp ult i16 %.val72, 25
  %i.at = zext i16 %.val72 to i32
  %i.au = add nuw nsw i32 %i.at, 262120           ; 2 uses
  %8 = and i32 %i.au, 262140
  %.not102113 = icmp eq i32 %8, 0
  %.not102 = select i1 %i.as, i1 true, i1 %.not102113
  br i1 %.not102, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %9 = lshr i32 %i.au, 2
  %i.av = getelementptr i8, ptr %.0.i.i, i64 20
  %i.aw = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %10 = and i32 %9, 65535
  %11 = add nuw nsw i32 %10, 1
  %wide.trip.count = zext nneg i32 %11 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %gistMemorizeAllDownlinks.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %gistMemorizeAllDownlinks.exit ] ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv
  %.val = load i32, ptr %i.ax, align 4
  %i.ay = and i32 %.val, 32767
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.az ; 2 uses
  %.val68 = load i16, ptr %i.ba, align 2
  %i.bb = getelementptr i8, ptr %i.ba, i64 2
  %.val69 = load i16, ptr %i.bb, align 2
  %i.bc = zext i16 %.val68 to i32
  %i.bd = shl nuw i32 %i.bc, 16
  %i.be = zext i16 %.val69 to i32
  %i.bf = or disjoint i32 %i.bd, %i.be            ; 2 uses
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = call i32 @ReadBuffer(ptr noundef %i.bg, i32 noundef %i.bf) #7 ; 6 uses
  call void @LockBufferInternal(i32 noundef %i.bh, i32 noundef 1) #7
  %i.bi = call i32 @BufferGetBlockNumber(i32 noundef %i.bh) #7
  %i.bj = icmp slt i32 %i.bh, 0
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bl = xor i32 %i.bh, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %BufferGetPage.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr @BufferBlocks, align 8
  %i.bq = add nsw i32 %i.bh, -1
  %i.br = sext i32 %i.bq to i64
  %i.bs = shl nsw i64 %i.br, 13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bs
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.k, %bb.j
  %.0.i.i.i = phi ptr [ %i.bo, %bb.j ], [ %i.bt, %bb.k ] ; 3 uses
  %i.bu = getelementptr i8, ptr %.0.i.i.i, i64 12
  %.val16.i = load i16, ptr %i.bu, align 4        ; 2 uses
  %i.bv = icmp ult i16 %.val16.i, 25
  %i.bw = zext i16 %.val16.i to i32
  %i.bx = add nuw nsw i32 %i.bw, 262120           ; 2 uses
  %12 = and i32 %i.bx, 262140
  %.not1719.i = icmp eq i32 %12, 0
  %.not17.i = select i1 %i.bv, i1 true, i1 %.not1719.i
  br i1 %.not17.i, label %gistMemorizeAllDownlinks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %BufferGetPage.exit.i
  %13 = lshr i32 %i.bx, 2
  %i.by = getelementptr i8, ptr %.0.i.i.i, i64 20
  %14 = and i32 %13, 65535
  %15 = add nuw nsw i32 %14, 1
  %wide.trip.count.i = zext nneg i32 %15 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 2 uses
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.i
  %.val.i = load i32, ptr %i.bz, align 4
  %i.ca = and i32 %.val.i, 32767
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.cb ; 2 uses
  %.val13.i = load i16, ptr %i.cc, align 2
  %i.cd = getelementptr i8, ptr %i.cc, i64 2
  %.val14.i = load i16, ptr %i.cd, align 2
  %i.ce = zext i16 %.val13.i to i32
  %i.cf = shl nuw i32 %i.ce, 16
  %i.cg = zext i16 %.val14.i to i32
  %i.ch = or disjoint i32 %i.cf, %i.cg
  %.val15.i = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.ch, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  %i.ci = call ptr @hash_search(ptr noundef %.val15.i, ptr noundef nonnull %i.i, i32 noundef 1, ptr noundef nonnull %i.j) #7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %i.bi, ptr %i.cj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %gistMemorizeAllDownlinks.exit, label %bb.l, !llvm.loop !25

gistMemorizeAllDownlinks.exit:                    ; preds = %bb.l, %BufferGetPage.exit.i
  call void @UnlockReleaseBuffer(i32 noundef %i.bh) #7
  %.val71 = load ptr, ptr %i.aw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.bf, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.ck = call ptr @hash_search(ptr noundef %.val71, ptr noundef nonnull %i.g, i32 noundef 1, ptr noundef nonnull %i.h) #7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 0, ptr %i.cl, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %.loopexit, label %bb.i, !llvm.loop !26

.loopexit:                                        ; preds = %gistMemorizeAllDownlinks.exit, %bb.h, %bb.g, %bb.b, %bb.a
  %i.cm = load ptr, ptr %i.k, align 8
  %.not65 = icmp eq ptr %i.cm, null
  br i1 %.not65, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.cn = call i32 @BufferGetBlockNumber(i32 noundef %1) #7 ; 5 uses
  %i.co = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.co, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr i8, ptr %0, i64 64
  %.val62.i = load ptr, ptr %i.cp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.cn, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.cq = call ptr @hash_search(ptr noundef %.val62.i, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef nonnull %i.f) #7
  %i.cr = load i8, ptr %i.f, align 1, !range !6, !noundef !7
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %gistGetParent.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.cu = load i32, ptr %i.e, align 4
  %i.cv = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.cu) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1578, ptr noundef nonnull @__func__.gistGetParent) #7
  unreachable

gistGetParent.exit.i:                             ; preds = %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cx = load i32, ptr %i.cw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.cy = icmp eq i32 %6, -1
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.da = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %i.cn) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1245, ptr noundef nonnull @__func__.gistBufferingFindCorrectParent) #7
  unreachable

bb.r:                                             ; preds = %bb.p, %gistGetParent.exit.i
  %.043.i = phi i32 [ %i.cx, %gistGetParent.exit.i ], [ %6, %bb.p ] ; 2 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = call i32 @ReadBuffer(ptr noundef %i.db, i32 noundef %.043.i) #7 ; 7 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.df = xor i32 %i.dc, -1
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8
  br label %BufferGetPage.exit.i74

bb.t:                                             ; preds = %bb.r
  %i.dj = load ptr, ptr @BufferBlocks, align 8
  %i.dk = add nsw i32 %i.dc, -1
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 13
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dm
  br label %BufferGetPage.exit.i74

BufferGetPage.exit.i74:                           ; preds = %bb.t, %bb.s
  %.0.i.i.i75 = phi ptr [ %i.di, %bb.s ], [ %i.dn, %bb.t ] ; 5 uses
  call void @LockBufferInternal(i32 noundef %i.dc, i32 noundef 3) #7
  %i.do = load ptr, ptr %0, align 8
  call void @gistcheckpage(ptr noundef %i.do, i32 noundef %i.dc) #7
  %i.dp = getelementptr i8, ptr %.0.i.i.i75, i64 12
  %.val61.i = load i16, ptr %i.dp, align 4        ; 2 uses
  %i.dq = icmp ult i16 %.val61.i, 25
  %i.dr = zext i16 %.val61.i to i32
  %i.ds = add nuw nsw i32 %i.dr, 262120
  %i.dt = lshr i32 %i.ds, 2
  %i.du = trunc i32 %i.dt to i16
  %.0.i.i76 = select i1 %i.dq, i16 0, i16 %i.du
  %i.dv = freeze i16 %.0.i.i76                    ; 3 uses
  %i.dw = icmp eq i32 %.043.i, %6
  %.not.i = icmp ne i32 %6, -1
  %or.cond.i.not99 = and i1 %.not.i, %i.dw
  %i.dx = add i16 %7, -1
  %or.cond55.not.i = icmp ult i16 %i.dx, %i.dv
  %or.cond = and i1 %or.cond.i.not99, %or.cond55.not.i
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %BufferGetPage.exit.i74
  %i.dy = zext i16 %7 to i64
  %i.dz = getelementptr i8, ptr %.0.i.i.i75, i64 20
  %i.ea = getelementptr [4 x i8], ptr %i.dz, i64 %i.dy
  %.val56.i = load i32, ptr %i.ea, align 4
  %i.eb = and i32 %.val56.i, 32767
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i.i75, i64 %i.ec ; 2 uses
  %.val59.i = load i16, ptr %i.ed, align 2
  %i.ee = getelementptr i8, ptr %i.ed, i64 2
  %.val60.i = load i16, ptr %i.ee, align 2
  %i.ef = zext i16 %.val59.i to i32
  %i.eg = shl nuw i32 %i.ef, 16
  %i.eh = zext i16 %.val60.i to i32
  %i.ei = or disjoint i32 %i.eg, %i.eh
  %.not52.i = icmp eq i32 %i.ei, %i.cn
  br i1 %.not52.i, label %gistBufferingFindCorrectParent.exit, label %.lr.ph.i77

bb.v:                                             ; preds = %BufferGetPage.exit.i74
  %.not532.i = icmp eq i16 %i.dv, 0
  br i1 %.not532.i, label %._crit_edge.i, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.v, %bb.u
  %i.ej = getelementptr i8, ptr %.0.i.i.i75, i64 20
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i, %.lr.ph.i77
  %.0423.i = phi i16 [ 1, %.lr.ph.i77 ], [ %i.eu, %.critedge.i ] ; 3 uses
  %i.ek = zext i16 %.0423.i to i64
  %i.el = getelementptr [4 x i8], ptr %i.ej, i64 %i.ek
  %.val.i78 = load i32, ptr %i.el, align 4
  %i.em = and i32 %.val.i78, 32767
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i.i75, i64 %i.en ; 2 uses
  %.val57.i = load i16, ptr %i.eo, align 2
  %i.ep = getelementptr i8, ptr %i.eo, i64 2
  %.val58.i = load i16, ptr %i.ep, align 2
  %i.eq = zext i16 %.val57.i to i32
  %i.er = shl nuw i32 %i.eq, 16
  %i.es = zext i16 %.val58.i to i32
  %i.et = or disjoint i32 %i.er, %i.es
  %.not54.i = icmp eq i32 %i.et, %i.cn
  br i1 %.not54.i, label %gistBufferingFindCorrectParent.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.w
  %i.eu = add i16 %.0423.i, 1                     ; 2 uses
  %.not53.i = icmp ugt i16 %i.eu, %i.dv
  br i1 %.not53.i, label %._crit_edge.i, label %bb.w, !llvm.loop !27

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.v
  %i.ev = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ew = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6, i32 noundef %i.cn) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1289, ptr noundef nonnull @__func__.gistBufferingFindCorrectParent) #7
  unreachable

gistBufferingFindCorrectParent.exit:              ; preds = %bb.w, %bb.u
  %.0 = phi i16 [ %7, %bb.u ], [ %.0423.i, %bb.w ]
  %i.ex = load ptr, ptr %i.r, align 8
  %i.ey = load ptr, ptr %0, align 8
  %i.ez = load ptr, ptr %i.k, align 8
  call void @gistRelocateBuildBuffersOnSplit(ptr noundef %i.n, ptr noundef %i.ex, ptr noundef %i.ey, i32 noundef %2, i32 noundef %1, ptr noundef %i.ez) #7
  %i.fa = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not.i79 = icmp eq ptr %i.fa, null
  br i1 %.not.i79, label %list_length.exit, label %bb.x

bb.x:                                             ; preds = %gistBufferingFindCorrectParent.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %gistBufferingFindCorrectParent.exit, %bb.x
  %i.fd = phi i32 [ %i.fc, %bb.x ], [ 0, %gistBufferingFindCorrectParent.exit ] ; 2 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.fe) #7 ; 3 uses
  %i.fg = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 3 uses
  %.not66 = icmp eq ptr %i.fg, null
  br i1 %.not66, label %.critedge, label %.lr.ph106

.lr.ph106:                                        ; preds = %list_length.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fj = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %.not100 = icmp eq i32 %2, 1
  %i.fk = load i32, ptr %i.fh, align 4
  %i.fl = icmp sgt i32 %i.fk, 0                   ; 2 uses
  br i1 %i.co, label %.lr.ph106.split.us.preheader, label %.lr.ph106.split.split

.lr.ph106.split.us.preheader:                     ; preds = %.lr.ph106
  br i1 %i.fl, label %.lr.ph144, label %.critedge

.lr.ph144:                                        ; preds = %.lr.ph106.split.us.preheader, %gistMemorizeAllDownlinks.exit95.us
  %indvars.iv122143 = phi i64 [ %indvars.iv.next123, %gistMemorizeAllDownlinks.exit95.us ], [ 0, %.lr.ph106.split.us.preheader ] ; 3 uses
  %i.fm = load ptr, ptr %i.fi, align 8
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv122143
  %i.fo = load ptr, ptr %i.fn, align 8            ; 4 uses
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = call i32 @BufferGetBlockNumber(i32 noundef %i.fp) #7
  %i.fr = call i32 @BufferGetBlockNumber(i32 noundef %i.dc) #7
  %.val70.us = load ptr, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.fq, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.fs = call ptr @hash_search(ptr noundef %.val70.us, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.d) #7
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %i.fr, ptr %i.ft, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not100, label %gistMemorizeAllDownlinks.exit95.us, label %bb.y

bb.y:                                             ; preds = %.lr.ph144
  %i.fu = load i32, ptr %i.fo, align 8            ; 4 uses
  %i.fv = call i32 @BufferGetBlockNumber(i32 noundef %i.fu) #7
  %i.fw = icmp slt i32 %i.fu, 0
  br i1 %i.fw, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fx = load ptr, ptr @BufferBlocks, align 8
  %i.fy = add nsw i32 %i.fu, -1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = shl nsw i64 %i.fz, 13
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ga
  br label %BufferGetPage.exit.i80.us

bb.aa:                                            ; preds = %bb.y
  %i.gc = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.gd = xor i32 %i.fu, -1
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8
  br label %BufferGetPage.exit.i80.us

BufferGetPage.exit.i80.us:                        ; preds = %bb.aa, %bb.z
  %.0.i.i.i81.us = phi ptr [ %i.gg, %bb.aa ], [ %i.gb, %bb.z ] ; 3 uses
  %i.gh = getelementptr i8, ptr %.0.i.i.i81.us, i64 12
  %.val16.i82.us = load i16, ptr %i.gh, align 4   ; 2 uses
  %i.gi = icmp ult i16 %.val16.i82.us, 25
  %i.gj = zext i16 %.val16.i82.us to i32
  %i.gk = add nuw nsw i32 %i.gj, 262120           ; 2 uses
  %16 = and i32 %i.gk, 262140
  %.not1719.i83.us = icmp eq i32 %16, 0
  %.not17.i84.us = select i1 %i.gi, i1 true, i1 %.not1719.i83.us
  br i1 %.not17.i84.us, label %gistMemorizeAllDownlinks.exit95.us, label %.lr.ph.i85.us

.lr.ph.i85.us:                                    ; preds = %BufferGetPage.exit.i80.us
  %17 = lshr i32 %i.gk, 2
  %i.gl = getelementptr i8, ptr %.0.i.i.i81.us, i64 20
  %18 = and i32 %17, 65535
  %19 = add nuw nsw i32 %18, 1
  %wide.trip.count.i86.us = zext nneg i32 %19 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i85.us
  %indvars.iv.i87.us = phi i64 [ 1, %.lr.ph.i85.us ], [ %indvars.iv.next.i92.us, %bb.ab ] ; 2 uses
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %indvars.iv.i87.us
  %.val.i88.us = load i32, ptr %i.gm, align 4
  %i.gn = and i32 %.val.i88.us, 32767
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i.i81.us, i64 %i.go ; 2 uses
  %.val13.i89.us = load i16, ptr %i.gp, align 2
  %i.gq = getelementptr i8, ptr %i.gp, i64 2
  %.val14.i90.us = load i16, ptr %i.gq, align 2
  %i.gr = zext i16 %.val13.i89.us to i32
  %i.gs = shl nuw i32 %i.gr, 16
  %i.gt = zext i16 %.val14.i90.us to i32
  %i.gu = or disjoint i32 %i.gs, %i.gt
  %.val15.i91.us = load ptr, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.gu, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.gv = call ptr @hash_search(ptr noundef %.val15.i91.us, ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull %i.b) #7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i32 %i.fv, ptr %i.gw, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next.i92.us = add nuw nsw i64 %indvars.iv.i87.us, 1 ; 2 uses
  %exitcond.i93.us = icmp eq i64 %indvars.iv.next.i92.us, %wide.trip.count.i86.us
  br i1 %exitcond.i93.us, label %gistMemorizeAllDownlinks.exit95.us, label %bb.ab, !llvm.loop !25

gistMemorizeAllDownlinks.exit95.us:               ; preds = %bb.ab, %BufferGetPage.exit.i80.us, %.lr.ph144
  %i.gx = load i32, ptr %i.fo, align 8
  call void @UnlockReleaseBuffer(i32 noundef %i.gx) #7
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122143, 1 ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv122143
  store ptr %i.gz, ptr %i.ha, align 8
  %i.hb = load i32, ptr %i.fh, align 4
  %i.hc = sext i32 %i.hb to i64
  %i.hd = icmp slt i64 %indvars.iv.next123, %i.hc
  br i1 %i.hd, label %.lr.ph144, label %.critedge

.lr.ph106.split.split:                            ; preds = %.lr.ph106
  br i1 %i.fl, label %gistMemorizeAllDownlinks.exit95, label %.critedge

gistMemorizeAllDownlinks.exit95:                  ; preds = %.lr.ph106.split.split, %gistMemorizeAllDownlinks.exit95
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %gistMemorizeAllDownlinks.exit95 ], [ 0, %.lr.ph106.split.split ] ; 3 uses
  %i.he = load ptr, ptr %i.fi, align 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %indvars.iv117
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 8
  call void @UnlockReleaseBuffer(i32 noundef %i.hh) #7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv117
  store ptr %i.hj, ptr %i.hk, align 8
  %i.hl = load i32, ptr %i.fh, align 4
  %i.hm = sext i32 %i.hl to i64
  %i.hn = icmp slt i64 %indvars.iv.next118, %i.hm
  br i1 %i.hn, label %gistMemorizeAllDownlinks.exit95, label %.critedge

.critedge:                                        ; preds = %gistMemorizeAllDownlinks.exit95, %gistMemorizeAllDownlinks.exit95.us, %.lr.ph106.split.us.preheader, %.lr.ph106.split.split, %list_length.exit
  %i.ho = add i32 %2, 1
  %i.hp = call fastcc i32 @gistbufferinginserttuples(ptr noundef nonnull %0, i32 noundef %i.dc, i32 noundef %i.ho, ptr noundef %i.ff, i32 noundef %i.fd, i16 noundef zeroext %.0, i32 noundef -1, i16 noundef zeroext 0) ; 0 uses
  %i.hq = load ptr, ptr %i.k, align 8
  call void @list_free_deep(ptr noundef %i.hq) #7
  br label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  call void @UnlockReleaseBuffer(i32 noundef %1) #7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.critedge
  %i.hr = load i32, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  ret i32 %i.hr
}

declare ptr @gistGetNodeBuffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gistPushItupToNodeBuffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hash_search(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gistplacetopage(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #2

declare void @gistRelocateBuildBuffersOnSplit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @list_free_deep(ptr noundef) local_unnamed_addr #2

declare void @gistcheckpage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @list_delete_first(ptr noundef) local_unnamed_addr #2

declare void @gistUnloadNodeBuffers(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @gistPopItupFromNodeBuffer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #5

declare ptr @smgropen(i64, i32, i32 noundef) local_unnamed_addr #2

declare void @smgrpin(ptr noundef) local_unnamed_addr #2

declare ptr @gistInitBuildBuffers(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hash_create(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lcons(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = distinct !{!9, !5}
!10 = distinct !{null}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5, !18, !19}
!16 = distinct !{!16, !5, !19, !18}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.peeled.count", i32 1}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
end_hunk_0
