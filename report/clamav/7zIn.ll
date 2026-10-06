Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/7zIn?download=true
inline.NumInlined: 85
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@SzReadNumber:bb.a

bb.c:                                             ; preds = %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  %i.j = phi i64 [ 0, %bb.b ], [ %i.s, %bb.e ], [ %i.ab, %bb.g ], [ %i.ak, %bb.i ], [ %i.at, %bb.k ], [ %i.bc, %bb.m ], [ %i.bl, %bb.o ], [ %i.bu, %bb.q ]
  %.02550.lcssa.wide = phi i64 [ 0, %bb.b ], [ 8, %bb.e ], [ 16, %bb.g ], [ 24, %bb.i ], [ 32, %bb.k ], [ 40, %bb.m ], [ 48, %bb.o ], [ 56, %bb.q ]
  %.lcssa = phi i32 [ 383, %bb.b ], [ 319, %bb.e ], [ 287, %bb.g ], [ 271, %bb.i ], [ 263, %bb.k ], [ 259, %bb.m ], [ 257, %bb.o ], [ 256, %bb.q ]
  %i.k = and i32 %.lcssa, %i.h
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, %.02550.lcssa.wide
  %i.n = add nuw nsw i64 %i.j, %i.m
  br label %SzReadByte.exit.sink.split

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %i.d, 0
  br i1 %i.o, label %SzReadByte.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i64 %i.b, -2                         ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !57
  %i.r = load i8, ptr %i.f, align 1, !tbaa !52
  %i.s = zext i8 %i.r to i64                      ; 3 uses
  store i64 %i.s, ptr %1, align 8, !tbaa !31
  %i.t = and i32 %i.h, 64
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i64 %i.p, 0
  br i1 %i.v, label %SzReadByte.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add i64 %i.b, -3                         ; 2 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !57
  %i.y = load i8, ptr %i.q, align 1, !tbaa !52
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 8
  %i.ab = or disjoint i64 %i.aa, %i.s             ; 3 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !31
  %i.ac = and i32 %i.h, 32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %SzReadByte.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add i64 %i.b, -4                        ; 2 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !57
  %i.ah = load i8, ptr %i.x, align 1, !tbaa !52
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 16
  %i.ak = or disjoint i64 %i.aj, %i.ab            ; 3 uses
  store i64 %i.ak, ptr %1, align 8, !tbaa !31
  %i.al = and i32 %i.h, 16
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = icmp eq i64 %i.af, 0
  br i1 %i.an, label %SzReadByte.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = add i64 %i.b, -5                        ; 2 uses
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !57
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !52
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 24
  %i.at = or disjoint i64 %i.as, %i.ak            ; 3 uses
  store i64 %i.at, ptr %1, align 8, !tbaa !31
  %i.au = and i32 %i.h, 8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp eq i64 %i.ao, 0
  br i1 %i.aw, label %SzReadByte.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add i64 %i.b, -6                        ; 2 uses
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !58
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  store ptr %i.ay, ptr %0, align 8, !tbaa !57
  %i.az = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 32
  %i.bc = or disjoint i64 %i.bb, %i.at            ; 3 uses
  store i64 %i.bc, ptr %1, align 8, !tbaa !31
  %i.bd = and i32 %i.h, 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.c, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i64 %i.ax, 0
  br i1 %i.bf, label %SzReadByte.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = add i64 %i.b, -7                        ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 7 ; 2 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !57
  %i.bi = load i8, ptr %i.ay, align 1, !tbaa !52
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 40
  %i.bl = or i64 %i.bk, %i.bc                     ; 3 uses
  store i64 %i.bl, ptr %1, align 8, !tbaa !31
  %i.bm = and i32 %i.h, 2
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.c, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp eq i64 %i.bg, 0
  br i1 %i.bo, label %SzReadByte.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add i64 %i.b, -8                        ; 2 uses
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bq, ptr %0, align 8, !tbaa !57
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !52
  %i.bs = zext i8 %i.br to i64
  %i.bt = shl nuw nsw i64 %i.bs, 48
  %i.bu = or i64 %i.bt, %i.bl                     ; 3 uses
  store i64 %i.bu, ptr %1, align 8, !tbaa !31
  %i.bv = and i32 %i.h, 1
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = icmp eq i64 %i.bp, 0
  br i1 %i.bx, label %SzReadByte.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = add i64 %i.b, -9
  store i64 %i.by, ptr %i.a, align 8, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store ptr %i.bz, ptr %0, align 8, !tbaa !57
  %i.ca = load i8, ptr %i.bq, align 1, !tbaa !52
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw i64 %i.cb, 56
  %i.cd = or i64 %i.cc, %i.bu
  br label %SzReadByte.exit.sink.split

SzReadByte.exit.sink.split:                       ; preds = %bb.c, %bb.s
  %.sink = phi i64 [ %i.cd, %bb.s ], [ %i.n, %bb.c ]
  store i64 %.sink, ptr %1, align 8, !tbaa !31
  br label %SzReadByte.exit

SzReadByte.exit:                                  ; preds = %SzReadByte.exit.sink.split, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.a
  %.4 = phi i32 [ 16, %bb.a ], [ 16, %bb.p ], [ 16, %bb.l ], [ 16, %bb.d ], [ 16, %bb.f ], [ 16, %bb.r ], [ 16, %bb.h ], [ 16, %bb.n ], [ 16, %bb.j ], [ 0, %SzReadByte.exit.sink.split ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 17) i32 @SzReadStreamsInfo(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5, ptr nofree noundef nonnull captures(none) %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca [15 x i8], align 1                ; 14 uses
  %i.p = alloca i64, align 8                      ; 7 uses
  %i.q = alloca i64, align 8                      ; 7 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i64, align 8                      ; 8 uses
  %i.u = alloca i64, align 8                      ; 8 uses
  %i.v = alloca ptr, align 8                      ; 7 uses
  %i.w = alloca ptr, align 8                      ; 7 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 8 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %i.ab = alloca i64, align 8                     ; 8 uses
  %i.ac = alloca i64, align 8                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #12
  %i.ad = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) ; 2 uses
  %.not212 = icmp eq i32 %i.ad, 0
  br i1 %.not212, label %.lr.ph, label %SzReadPackInfo.exit.thread

.lr.ph:                                           ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 21 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %SzReadPackInfo.exit
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.am = add i64 %i.al, 2147483648
  %.not46 = icmp ult i64 %i.am, 4294967296
  br i1 %.not46, label %bb.c, label %SzReadPackInfo.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.an = trunc nsw i64 %i.al to i32              ; 2 uses
  switch i32 %i.an, label %SzReadPackInfo.exit.thread [
    i32 0, label %SzReadPackInfo.exit.thread.loopexit674
    i32 6, label %bb.d
    i32 7, label %bb.z
    i32 8, label %bb.ch
  ]

bb.d:                                             ; preds = %bb.c
  %i.ao = tail call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.e, label %SzReadPackInfo.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #12
  %i.ap = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.aa) ; 2 uses
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %bb.f, label %SzReadNumber32.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 2147483647
  br i1 %i.ar, label %SzReadNumber32.exit.thread.i, label %bb.g

SzReadNumber32.exit.thread.i:                     ; preds = %bb.f, %bb.e
  %.1.i.ph.i = phi i32 [ 4, %bb.f ], [ %i.ap, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #12
  br label %SzReadPackInfo.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.as = trunc nuw nsw i64 %i.aq to i32
  store i32 %i.as, ptr %i.ai, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #12
  %i.at = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.z) ; 2 uses
  %.not24.i.i = icmp eq i32 %i.at, 0
  br i1 %.not24.i.i, label %.lr.ph.i.i, label %SzWaitAttribute.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.j
  %i.au = load i64, ptr %i.z, align 8, !tbaa !31
  switch i64 %i.au, label %bb.h [
    i64 9, label %bb.k
    i64 0, label %SzWaitAttribute.exit.thread.i
  ]

bb.h:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #12
  %i.av = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.y) ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %bb.i, label %SzSkeepData.exit.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !31  ; 3 uses
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %i.ay = icmp ugt i64 %i.aw, %i.ax
  br i1 %i.ay, label %SzSkeepData.exit.thread.i.i, label %bb.j

SzSkeepData.exit.thread.i.i:                      ; preds = %bb.i, %bb.h
  %.1.i.ph.i.i = phi i32 [ 16, %bb.i ], [ %i.av, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #12
  br label %SzWaitAttribute.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.az = sub nuw i64 %i.ax, %i.aw
  store i64 %i.az, ptr %i.ag, align 8, !tbaa !58
  %i.ba = load ptr, ptr %0, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.aw
  store ptr %i.bb, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #12
  %i.bc = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.z) ; 2 uses
  %.not.i106.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i106.i, label %.lr.ph.i.i, label %SzWaitAttribute.exit.thread.i

SzWaitAttribute.exit.thread.i:                    ; preds = %bb.g, %bb.j, %.lr.ph.i.i, %SzSkeepData.exit.thread.i.i
  %.3.ph.i.ph.i = phi i32 [ 16, %.lr.ph.i.i ], [ %.1.i.ph.i.i, %SzSkeepData.exit.thread.i.i ], [ %i.bc, %bb.j ], [ %i.at, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #12
  br label %SzReadPackInfo.exit.thread

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #12
  %i.bd = load ptr, ptr %2, align 8, !tbaa !70
  %.not97.i = icmp eq ptr %i.bd, null
  br i1 %.not97.i, label %bb.l, label %SzReadPackInfo.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.ai, align 8, !tbaa !46 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.preheader.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = zext i32 %i.be to i64
  %i.bh = load ptr, ptr %7, align 8, !tbaa !63
  %i.bi = shl nuw nsw i64 %i.bg, 3
  %i.bj = tail call ptr %i.bh(ptr noundef nonnull %7, i64 noundef %i.bi) #12, !inline_history !109 ; 2 uses
  store ptr %i.bj, ptr %2, align 8, !tbaa !70
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %SzReadPackInfo.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !46
  %i.bl = icmp eq i32 %.pre.i, 0
  br i1 %i.bl, label %.preheader.i, label %.lr.ph.i

bb.o:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bm = load i32, ptr %i.ai, align 8, !tbaa !46
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %indvars.iv.next.i, %i.bn
  br i1 %i.bo, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #12
  %i.bp = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.ab) ; 2 uses
  %.not98127.i = icmp eq i32 %i.bp, 0
  br i1 %.not98127.i, label %.lr.ph128.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %i.bq = load ptr, ptr %2, align 8, !tbaa !70
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.i
  %i.bs = tail call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef %i.br) ; 2 uses
  %.not102.i = icmp eq i32 %i.bs, 0
  br i1 %.not102.i, label %bb.o, label %SzReadPackInfo.exit.thread

.lr.ph128.i:                                      ; preds = %.preheader.i, %select.unfold.i
  %i.bt = load i64, ptr %i.ab, align 8, !tbaa !31
  switch i64 %i.bt, label %bb.q [
    i64 0, label %bb.s
    i64 10, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph128.i
  %i.bu = load i32, ptr %i.ai, align 8, !tbaa !46
  %i.bv = zext i32 %i.bu to i64
  %i.bw = tail call fastcc i32 @SzReadHashDigests(ptr noundef nonnull %0, i64 noundef %i.bv, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef %7) ; 2 uses
  %.not100.i = icmp eq i32 %i.bw, 0
  br i1 %.not100.i, label %select.unfold.i, label %.thread.i

bb.q:                                             ; preds = %.lr.ph128.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #12
  %i.bx = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.x) ; 2 uses
  %.not.i107.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i107.i, label %bb.r, label %SzSkeepData.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.by = load i64, ptr %i.x, align 8, !tbaa !31  ; 3 uses
  %i.bz = load i64, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %SzSkeepData.exit.thread.i, label %select.unfold115.i

SzSkeepData.exit.thread.i:                        ; preds = %bb.r, %bb.q
  %.1.i108.ph.i = phi i32 [ 16, %bb.r ], [ %i.bx, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #12
  br label %.thread.i

select.unfold115.i:                               ; preds = %bb.r
  %i.cb = sub nuw i64 %i.bz, %i.by
  store i64 %i.cb, ptr %i.ag, align 8, !tbaa !58
  %i.cc = load ptr, ptr %0, align 8, !tbaa !57
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.by
  store ptr %i.cd, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #12
  br label %select.unfold.i

.thread.i:                                        ; preds = %.preheader.i, %select.unfold.i, %bb.p, %SzSkeepData.exit.thread.i
  %.9.ph.i = phi i32 [ %.1.i108.ph.i, %SzSkeepData.exit.thread.i ], [ %i.bw, %bb.p ], [ %i.ce, %select.unfold.i ], [ %i.bp, %.preheader.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #12
  br label %SzReadPackInfo.exit.thread

select.unfold.i:                                  ; preds = %select.unfold115.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #12
  %i.ce = call fastcc range(i32 0, 17) i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.ab) ; 2 uses
  %.not98.i = icmp eq i32 %i.ce, 0
  br i1 %.not98.i, label %.lr.ph128.i, label %.thread.i

bb.s:                                             ; preds = %.lr.ph128.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #12
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !60
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.t, label %SzReadPackInfo.exit

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !71
  %.not101.i = icmp eq ptr %i.ch, null
end_hunk_0
begin_hunk_1_@SzReadStreamsInfo:bb.a
  %i.fy = and i64 %i.fx, 4294967295
  %i.fz = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !52
  %i.gb = zext i8 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 8
  %i.gd = or disjoint i64 %i.gc, %i.fw            ; 2 uses
  %exitcond453.not.i.i.1 = icmp eq i8 %i.fh, 2
  br i1 %exitcond453.not.i.i.1, label %.thread503.i.i, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.ge = add nuw nsw i64 %i.fi, 4294967293
  %i.gf = and i64 %i.ge, 4294967295
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !52
  %i.gi = zext i8 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 16
  %i.gk = or disjoint i64 %i.gj, %i.gd            ; 2 uses
  %exitcond453.not.i.i.2 = icmp eq i8 %i.fh, 3
  br i1 %exitcond453.not.i.i.2, label %.thread503.i.i, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.gl = add nuw nsw i64 %i.fi, 4294967292
  %i.gm = and i64 %i.gl, 4294967295
  %i.gn = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !52
  %i.gp = zext i8 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 24
  %i.gr = or disjoint i64 %i.gq, %i.gk            ; 2 uses
  %exitcond453.not.i.i.3 = icmp eq i8 %i.fh, 4
  br i1 %exitcond453.not.i.i.3, label %.thread503.i.i, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.gs = add nuw nsw i64 %i.fi, 4294967291
  %i.gt = and i64 %i.gs, 4294967295
  %i.gu = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.gt
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !52
  %i.gw = zext i8 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 32
  %i.gy = or disjoint i64 %i.gx, %i.gr            ; 2 uses
  %exitcond453.not.i.i.4 = icmp eq i8 %i.fh, 5
  br i1 %exitcond453.not.i.i.4, label %.thread503.i.i, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.gz = add nuw nsw i64 %i.fi, 4294967290
  %i.ha = and i64 %i.gz, 4294967295
  %i.hb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !52
  %i.hd = zext i8 %i.hc to i64
  %i.he = shl nuw nsw i64 %i.hd, 40
  %i.hf = or i64 %i.he, %i.gy                     ; 2 uses
  %exitcond453.not.i.i.5 = icmp eq i8 %i.fh, 6
  br i1 %exitcond453.not.i.i.5, label %.thread503.i.i, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.hg = add nuw nsw i64 %i.fi, 4294967289
  %i.hh = and i64 %i.hg, 4294967295
  %i.hi = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !52
  %i.hk = zext i8 %i.hj to i64
  %i.hl = shl nuw nsw i64 %i.hk, 48
  %i.hm = or i64 %i.hl, %i.hf                     ; 2 uses
  %exitcond453.not.i.i.6 = icmp eq i8 %i.fh, 7
  br i1 %exitcond453.not.i.i.6, label %.thread503.i.i, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.hn = add nuw nsw i64 %i.fi, 4294967288
  %i.ho = and i64 %i.hn, 4294967295
  %i.hp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !52
  %i.hr = zext i8 %i.hq to i64
  %i.hs = shl nuw i64 %i.hr, 56
  %i.ht = or i64 %i.hs, %i.hm
  br label %.thread503.i.i

.thread503.i.i:                                   ; preds = %.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %bb.an
  %.lcssa467.sink = phi i64 [ 0, %bb.an ], [ %i.fw, %.preheader ], [ %i.gd, %.preheader.1 ], [ %i.gk, %.preheader.2 ], [ %i.gr, %.preheader.3 ], [ %i.gy, %.preheader.4 ], [ %i.hf, %.preheader.5 ], [ %i.hm, %.preheader.6 ], [ %i.ht, %.preheader.7 ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %.lcssa467.sink, ptr %i.hu, align 8, !tbaa !119
  %i.hv = and i8 %i.fg, 16
  %.not231.i.i = icmp eq i8 %i.hv, 0
  br i1 %.not231.i.i, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %.thread503.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.hw = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.m) ; 2 uses
  %.not.i248.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i248.i.i, label %bb.aq, label %SzReadNumber32.exit250.thread.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.hx = load i64, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %i.hy = icmp ugt i64 %i.hx, 2147483647
  br i1 %i.hy, label %SzReadNumber32.exit250.thread.i.i, label %bb.ar

SzReadNumber32.exit250.thread.i.i:                ; preds = %bb.aq, %bb.ap
  %.1.i249.ph.i.i = phi i32 [ 4, %bb.aq ], [ %i.hw, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br label %.thread.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.hz = trunc nuw nsw i64 %i.hx to i32
  store i32 %i.hz, ptr %i.fa, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.ib = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.l) ; 2 uses
  %.not.i251.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not.i251.i.i, label %bb.as, label %SzReadNumber32.exit253.thread.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ic = load i64, ptr %i.l, align 8, !tbaa !31  ; 3 uses
  %i.id = icmp ugt i64 %i.ic, 2147483647
  br i1 %i.id, label %SzReadNumber32.exit253.thread.i.i, label %bb.at

SzReadNumber32.exit253.thread.i.i:                ; preds = %bb.as, %bb.ar
  %.1.i252.ph.i.i = phi i32 [ 4, %bb.as ], [ %i.ib, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br label %.thread.i.i

bb.at:                                            ; preds = %bb.as
  %i.ie = trunc nuw nsw i64 %i.ic to i32
  store i32 %i.ie, ptr %i.ia, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  %i.if = load i32, ptr %i.fa, align 8, !tbaa !120
  %i.ig = icmp ugt i32 %i.if, 32
  %i.ih = icmp samesign ugt i64 %i.ic, 32
  %or.cond.i.i = select i1 %i.ig, i1 true, i1 %i.ih
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.av

bb.au:                                            ; preds = %.thread503.i.i
  store i32 1, ptr %i.fa, align 8, !tbaa !120
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 1, ptr %i.ii, align 4, !tbaa !24
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ij = and i8 %i.fg, 32
  %.not234.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not234.i.i, label %.preheader375.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  store i64 0, ptr %i.p, align 8, !tbaa !31
  %i.ik = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.p) ; 2 uses
  %.not235.i.i = icmp eq i32 %i.ik, 0
  br i1 %.not235.i.i, label %bb.ax, label %.split.thread.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.il = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.im = load i64, ptr %i.p, align 8, !tbaa !31  ; 3 uses
  %i.in = tail call i32 @Buf_Create(ptr noundef nonnull %i.il, i64 noundef %i.im, ptr noundef nonnull %7) #12
  %.not236.i.i = icmp eq i32 %i.in, 0
  br i1 %.not236.i.i, label %.split.thread.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.io = load ptr, ptr %i.il, align 8, !tbaa !121
  %.not.i254.i.i = icmp eq i64 %i.im, 0
  br i1 %.not.i254.i.i, label %.split.i.i, label %.lr.ph.i255.i.i

.lr.ph.i255.i.i:                                  ; preds = %bb.ay, %bb.az
  %.0916.i256.i.i = phi i64 [ %i.iw, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.ip = load i64, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %i.iq = icmp eq i64 %i.ip, 0
  br i1 %i.iq, label %.split.thread369.i.i, label %bb.az

.split.thread369.i.i:                             ; preds = %.lr.ph.i255.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %SzReadPackInfo.exit.thread

bb.az:                                            ; preds = %.lr.ph.i255.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 %.0916.i256.i.i
  %i.is = add i64 %i.ip, -1
  store i64 %i.is, ptr %i.ag, align 8, !tbaa !58
  %i.it = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 1
  store ptr %i.iu, ptr %0, align 8, !tbaa !57
  %i.iv = load i8, ptr %i.it, align 1, !tbaa !52
  store i8 %i.iv, ptr %i.ir, align 1, !tbaa !52
  %i.iw = add nuw i64 %.0916.i256.i.i, 1          ; 2 uses
  %exitcond.not.i257.i.i = icmp eq i64 %i.iw, %i.im
  br i1 %exitcond.not.i257.i.i, label %.split.i.i, label %.lr.ph.i255.i.i

.split.thread.i.i:                                ; preds = %bb.ax, %bb.aw
  %.9191.ph.i.i = phi i32 [ 2, %bb.ax ], [ %i.ik, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %SzReadPackInfo.exit.thread

.split.i.i:                                       ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  br label %.preheader375.i.i

.thread.i.i:                                      ; preds = %bb.at, %.loopexit.i.i, %.lr.ph418.i.i, %.lr.ph.i.i.i, %SzReadNumber32.exit253.thread.i.i, %SzReadNumber32.exit250.thread.i.i
  %.11193.ph.i.i = phi i32 [ %.1.i252.ph.i.i, %SzReadNumber32.exit253.thread.i.i ], [ 16, %.lr.ph.i.i.i ], [ %.1.i249.ph.i.i, %SzReadNumber32.exit250.thread.i.i ], [ 4, %.loopexit.i.i ], [ 4, %bb.at ], [ 16, %.lr.ph418.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %SzReadPackInfo.exit.thread

.preheader375.i.i:                                ; preds = %.split.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  %.not238411.i.i = icmp sgt i8 %i.fg, -1
  br i1 %.not238411.i.i, label %._crit_edge413.i.i, label %.lr.ph412.preheader.i.i

.lr.ph412.preheader.i.i:                          ; preds = %.preheader375.i.i
  %.pre472.i.i = load i64, ptr %i.ag, align 8, !tbaa !58
  br label %.lr.ph412.i.i

.lr.ph412.i.i:                                    ; preds = %bb.bl, %.lr.ph412.preheader.i.i
  %9 = phi i64 [ %.pre472.i.i, %.lr.ph412.preheader.i.i ], [ %11, %bb.bl ] ; 2 uses
  %i.ix = icmp eq i64 %9, 0
  br i1 %i.ix, label %SzReadPackInfo.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph412.i.i
  %i.iy = add i64 %9, -1                          ; 3 uses
  store i64 %i.iy, ptr %i.ag, align 8, !tbaa !58
  %i.iz = load ptr, ptr %0, align 8, !tbaa !57    ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1 ; 2 uses
  store ptr %i.ja, ptr %0, align 8, !tbaa !57
  %i.jb = load i8, ptr %i.iz, align 1, !tbaa !52  ; 4 uses
  %i.jc = and i8 %i.jb, 15
  %i.jd = zext nneg i8 %i.jc to i64               ; 3 uses
  %i.je = icmp ult i64 %i.iy, %i.jd
  br i1 %i.je, label %SzReadPackInfo.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jf = sub nuw i64 %i.iy, %i.jd                ; 2 uses
  store i64 %i.jf, ptr %i.ag, align 8, !tbaa !58
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jd
  store ptr %i.jg, ptr %0, align 8, !tbaa !57
  %i.jh = and i8 %i.jb, 16
  %.not241.i.i = icmp eq i8 %i.jh, 0
  br i1 %.not241.i.i, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.ji = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.k) ; 2 uses
  %.not.i263.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i263.i.i, label %bb.bd, label %.thread331.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jj = load i64, ptr %i.k, align 8, !tbaa !31
  %i.jk = icmp ugt i64 %i.jj, 2147483647
  br i1 %i.jk, label %.thread331.i.i, label %bb.be

.thread331.i.i:                                   ; preds = %bb.bd, %bb.bc
  %.1.i264.ph.i.i = phi i32 [ 4, %bb.bd ], [ %i.ji, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %SzReadPackInfo.exit.thread

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.jl = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.j) ; 2 uses
  %.not.i266.i.i = icmp eq i32 %i.jl, 0
  %.pre.i.i = load i64, ptr %i.ag, align 8, !tbaa !58
  br i1 %.not.i266.i.i, label %bb.bf, label %.thread335.i.i

bb.bf:                                            ; preds = %bb.be
  %i.jm = load i64, ptr %i.j, align 8, !tbaa !31
  %i.jn = icmp ugt i64 %i.jm, 2147483647
  br i1 %i.jn, label %.thread335.i.i, label %bb.bg

.thread335.i.i:                                   ; preds = %bb.bf, %bb.be
  %.1.i267.ph.i.i = phi i32 [ 4, %bb.bf ], [ %i.jl, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %SzReadPackInfo.exit.thread

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bb
  %10 = phi i64 [ %.pre.i.i, %bb.bg ], [ %i.jf, %bb.bb ]
  %i.jo = and i8 %i.jb, 32
  %.not244.i.i = icmp eq i8 %i.jo, 0
  br i1 %.not244.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #12
  store i64 0, ptr %i.q, align 8, !tbaa !31
  %i.jp = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.q) ; 2 uses
  %.not245.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not245.i.i, label %bb.bj, label %.thread339.i.i

.thread339.i.i:                                   ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  br label %SzReadPackInfo.exit.thread

bb.bj:                                            ; preds = %bb.bi
  %i.jq = load i64, ptr %i.q, align 8, !tbaa !31  ; 3 uses
  %i.jr = load i64, ptr %i.ag, align 8, !tbaa !58 ; 2 uses
  %i.js = icmp ugt i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.bk, label %.thread342.i.i

.thread342.i.i:                                   ; preds = %bb.bj
  %i.jt = sub nuw i64 %i.jr, %i.jq                ; 2 uses
  store i64 %i.jt, ptr %i.ag, align 8, !tbaa !58
  %i.ju = load ptr, ptr %0, align 8, !tbaa !57
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jq
  store ptr %i.jv, ptr %0, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  br label %SzReadPackInfo.exit.thread

bb.bl:                                            ; preds = %.thread342.i.i, %bb.bh
  %11 = phi i64 [ %i.jt, %.thread342.i.i ], [ %10, %bb.bh ]
  %.not238.i.i = icmp sgt i8 %i.jb, -1
  br i1 %.not238.i.i, label %._crit_edge413.i.i, label %.lr.ph412.i.i

._crit_edge413.i.i:                               ; preds = %bb.bl, %.preheader375.i.i
  %i.jw = load i32, ptr %i.fa, align 8, !tbaa !120
  %i.jx = add i32 %i.jw, %.0175416.i.i            ; 6 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !24
  %i.ka = add i32 %i.jz, %.0173417.i.i            ; 3 uses
  %indvars.iv.next455.i.i = add nuw nsw i64 %indvars.iv454.i.i, 1 ; 2 uses
  %exitcond459.not.i.i = icmp eq i64 %indvars.iv.next455.i.i, %i.em
  br i1 %exitcond459.not.i.i, label %._crit_edge419.i.i, label %.lr.ph418.i.i

._crit_edge419.i.i:                               ; preds = %._crit_edge413.i.i
  %i.kb = icmp eq i32 %i.ka, 0
  br i1 %i.kb, label %SzReadPackInfo.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge419.i.i
  %i.kc = add i32 %i.ka, -1                       ; 6 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ek, i64 36 ; 2 uses
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !27
  %i.ke = icmp eq i32 %i.kc, 0
  br i1 %i.ke, label %.thread506.i.i, label %bb.bn

.thread506.i.i:                                   ; preds = %bb.bm
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr null, ptr %i.kf, align 8, !tbaa !16
  br label %._crit_edge424.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.kg = zext i32 %i.kc to i64                   ; 2 uses
  %i.kh = load ptr, ptr %7, align 8, !tbaa !63
  %i.ki = shl nuw nsw i64 %i.kg, 3
  %i.kj = tail call ptr %i.kh(ptr noundef nonnull %7, i64 noundef %i.ki) #12, !inline_history !111 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !16
  %i.kl = icmp eq ptr %i.kj, null
  br i1 %i.kl, label %SzReadPackInfo.exit.thread, label %.lr.ph423.i.i

.lr.ph423.i.i:                                    ; preds = %bb.bn, %bb.br
  %indvars.iv460.i.i = phi i64 [ %indvars.iv.next461.i.i, %bb.br ], [ 0, %bb.bn ] ; 2 uses
  %i.km = load ptr, ptr %i.kk, align 8, !tbaa !16
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv460.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.ko = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.i) ; 2 uses
  %.not.i271.i.i = icmp eq i32 %i.ko, 0
  br i1 %.not.i271.i.i, label %bb.bo, label %.thread355.i.i

bb.bo:                                            ; preds = %.lr.ph423.i.i
  %i.kp = load i64, ptr %i.i, align 8, !tbaa !31  ; 2 uses
  %i.kq = icmp ugt i64 %i.kp, 2147483647
  br i1 %i.kq, label %.thread355.i.i, label %bb.bp

.thread355.i.i:                                   ; preds = %bb.bo, %.lr.ph423.i.i
  %.1.i272.ph.i.i = phi i32 [ 4, %bb.bo ], [ %i.ko, %.lr.ph423.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %SzReadPackInfo.exit.thread

bb.bp:                                            ; preds = %bb.bo
  %i.kr = trunc nuw nsw i64 %i.kp to i32
  store i32 %i.kr, ptr %i.kn, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.kt = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.h) ; 2 uses
  %.not.i274.i.i = icmp eq i32 %i.kt, 0
  br i1 %.not.i274.i.i, label %bb.bq, label %.thread359.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.ku = load i64, ptr %i.h, align 8, !tbaa !31  ; 2 uses
  %i.kv = icmp ugt i64 %i.ku, 2147483647
  br i1 %i.kv, label %.thread359.i.i, label %bb.br

.thread359.i.i:                                   ; preds = %bb.bq, %bb.bp
  %.1.i275.ph.i.i = phi i32 [ 4, %bb.bq ], [ %i.kt, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %SzReadPackInfo.exit.thread

bb.br:                                            ; preds = %bb.bq
  %i.kw = trunc nuw nsw i64 %i.ku to i32
  store i32 %i.kw, ptr %i.ks, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  %indvars.iv.next461.i.i = add nuw nsw i64 %indvars.iv460.i.i, 1 ; 2 uses
  %exitcond464.not.i.i = icmp eq i64 %indvars.iv.next461.i.i, %i.kg
  br i1 %exitcond464.not.i.i, label %._crit_edge424.i.i, label %.lr.ph423.i.i

._crit_edge424.i.i:                               ; preds = %bb.br, %.thread506.i.i
  %i.kx = icmp ult i32 %i.jx, %i.kc
  br i1 %i.kx, label %SzReadPackInfo.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge424.i.i
  %i.ky = sub nuw i32 %i.jx, %i.kc                ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i32 %i.ky, ptr %i.kz, align 8, !tbaa !48
  %i.la = icmp eq i32 %i.jx, %i.kc
  br i1 %i.la, label %.preheader374.thread.i.i, label %bb.bt

.preheader374.thread.i.i:                         ; preds = %bb.bs
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr null, ptr %i.lb, align 8, !tbaa !17
  br label %SzReadSwitch.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.lc = zext i32 %i.ky to i64                   ; 2 uses
  %i.ld = load ptr, ptr %7, align 8, !tbaa !63
  %i.le = shl nuw nsw i64 %i.lc, 2
  %i.lf = tail call ptr %i.ld(ptr noundef nonnull %7, i64 noundef %i.le) #12, !inline_history !111 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !17
  %i.lh = icmp eq ptr %i.lf, null
  br i1 %i.lh, label %SzReadPackInfo.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.li = icmp eq i32 %i.ky, 1
  br i1 %i.li, label %.lr.ph428.i.i, label %.lr.ph426.i.i

.lr.ph428.i.i:                                    ; preds = %bb.bu
  %i.lj = load i32, ptr %i.kd, align 4, !tbaa !27 ; 2 uses
  %.not.i277.i.i = icmp eq i32 %i.lj, 0
  %wide.trip.count.i.i.i = zext i32 %i.lj to i64
  br i1 %.not.i277.i.i, label %SzFolder_FindBindPairForInStream.exit.thread.i.i, label %.lr.ph428.split.i.i

.lr.ph428.split.i.i:                              ; preds = %.lr.ph428.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !16
  br label %.lr.ph.i278.i.i

.lr.ph.i278.i.i:                                  ; preds = %bb.bx, %.lr.ph428.split.i.i
  %.3180427.i.i = phi i32 [ 0, %.lr.ph428.split.i.i ], [ %i.lq, %bb.bx ] ; 4 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph.i278.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i278.i.i ], [ %indvars.iv.next.i.i.i, %bb.bw ] ; 3 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv.i.i.i
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !29
  %i.lo = icmp eq i32 %i.ln, %.3180427.i.i
  br i1 %i.lo, label %SzFolder_FindBindPairForInStream.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i279.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i279.i.i, label %SzFolder_FindBindPairForInStream.exit.thread.i.i, label %bb.bv

SzFolder_FindBindPairForInStream.exit.i.i:        ; preds = %bb.bv
  %i.lp = and i64 %indvars.iv.i.i.i, 2147483648
  %.not.i144.i = icmp eq i64 %i.lp, 0
  br i1 %.not.i144.i, label %bb.bx, label %SzFolder_FindBindPairForInStream.exit.thread.i.i

bb.bx:                                            ; preds = %SzFolder_FindBindPairForInStream.exit.i.i
  %i.lq = add nuw i32 %.3180427.i.i, 1            ; 2 uses
  %exitcond471.not.i.i = icmp eq i32 %i.lq, %i.jx
  br i1 %exitcond471.not.i.i, label %SzReadPackInfo.exit.thread, label %.lr.ph.i278.i.i

SzFolder_FindBindPairForInStream.exit.thread.i.i: ; preds = %SzFolder_FindBindPairForInStream.exit.i.i, %bb.bw, %.lr.ph428.i.i
  %.3180381.i.i = phi i32 [ 0, %.lr.ph428.i.i ], [ %.3180427.i.i, %bb.bw ], [ %.3180427.i.i, %SzFolder_FindBindPairForInStream.exit.i.i ] ; 2 uses
  %i.lr = icmp eq i32 %.3180381.i.i, %i.jx
  br i1 %i.lr, label %SzReadPackInfo.exit.thread, label %bb.by

bb.by:                                            ; preds = %SzFolder_FindBindPairForInStream.exit.thread.i.i
  store i32 %.3180381.i.i, ptr %i.lf, align 4, !tbaa !46
  br label %SzReadSwitch.exit.i

.lr.ph426.i.i:                                    ; preds = %bb.bu, %bb.ca
  %indvars.iv465.i.i = phi i64 [ %indvars.iv.next466.i.i, %bb.ca ], [ 0, %bb.bu ] ; 2 uses
  %i.ls = load ptr, ptr %i.lg, align 8, !tbaa !17
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv465.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.lu = call fastcc i32 @SzReadNumber(ptr noundef nonnull %0, ptr noundef nonnull %i.g) ; 2 uses
  %.not.i280.i.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i280.i.i, label %bb.bz, label %SzReadNumber32.exit282.thread.i.i

bb.bz:                                            ; preds = %.lr.ph426.i.i
  %i.lv = load i64, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %i.lw = icmp ugt i64 %i.lv, 2147483647
  br i1 %i.lw, label %SzReadNumber32.exit282.thread.i.i, label %bb.ca

SzReadNumber32.exit282.thread.i.i:                ; preds = %bb.bz, %.lr.ph426.i.i
  %.1.i281.ph.i.i = phi i32 [ 4, %bb.bz ], [ %i.lu, %.lr.ph426.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %SzReadPackInfo.exit.thread

bb.ca:                                            ; preds = %bb.bz
  %i.lx = trunc nuw nsw i64 %i.lv to i32
  store i32 %i.lx, ptr %i.lt, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  %indvars.iv.next466.i.i = add nuw nsw i64 %indvars.iv465.i.i, 1 ; 2 uses
  %exitcond470.not.i.i = icmp eq i64 %indvars.iv.next466.i.i, %i.lc
  br i1 %exitcond470.not.i.i, label %SzReadSwitch.exit.i, label %.lr.ph426.i.i

SzReadSwitch.exit.i:                              ; preds = %bb.ca, %bb.by, %.preheader374.thread.i.i
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 1 ; 2 uses
  %i.ly = load i32, ptr %i.ae, align 4, !tbaa !46
  %i.lz = zext i32 %i.ly to i64
  %i.ma = icmp samesign ult i64 %indvars.iv.next278.i, %i.lz
  br i1 %i.ma, label %.lr.ph217.i, label %SzReadSwitch.exit._crit_edge.i

SzReadSwitch.exit._crit_edge.i:                   ; preds = %SzReadSwitch.exit.i, %SzReadSwitch.exit.preheader.i
  %i.mb = tail call fastcc i32 @SzWaitAttribute(ptr noundef nonnull %0, i64 noundef 12) ; 2 uses
  %.not129.i = icmp eq i32 %i.mb, 0
  br i1 %.not129.i, label %.preheader179.i, label %SzReadPackInfo.exit.thread
end_hunk_1
