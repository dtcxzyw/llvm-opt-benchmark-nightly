inline.NumInlined: 75
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SpGistUpdateMetaPage:bb.a

bb.g:                                             ; preds = %BufferGetPage.exit, %bb.f, %bb.a
  ret void
}

declare void @MarkBufferDirty(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @SpGistGetBuffer(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @spgGetCache(ptr noundef %0)
  %i.b = icmp ugt i32 %2, 8160
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #11 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @__func__.SpGistGetBuffer) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = shl i32 %i.h, 13
  %i.j = sub i32 819200, %i.i
  %i.k = sdiv i32 %i.j, 100
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %i.k, %bb.d ], [ 1638, %bb.c ]
  %i.m = add nsw i32 %i.l, %2
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 8160) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = and i32 %1, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %3, align 1
  %i.u = tail call fastcc i32 @allocNewBuffer(ptr noundef nonnull %0, i32 noundef %1)
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4
  %.not75 = icmp slt i32 %i.w, %i.n
  br i1 %.not75, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 @ReadBuffer(ptr noundef nonnull %0, i32 noundef %i.s) #10 ; 10 uses
  %i.y = tail call zeroext i1 @ConditionalLockBuffer(i32 noundef %i.x) #10
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @ReleaseBuffer(i32 noundef %i.x) #10
  store i8 1, ptr %3, align 1
  %i.z = tail call fastcc i32 @allocNewBuffer(ptr noundef nonnull %0, i32 noundef %1)
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp slt i32 %i.x, 0                    ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ac = xor i32 %i.x, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  br label %BufferGetPage.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr @BufferBlocks, align 8
  %i.ah = add nsw i32 %i.x, -1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.af, %bb.k ], [ %i.ak, %bb.l ] ; 6 uses
  %i.al = getelementptr i8, ptr %.0.i.i, i64 14
  %.val = load i16, ptr %i.al, align 2
  %i.am = icmp eq i16 %.val, 0
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %BufferGetPage.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = zext i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2            ; 3 uses
  %i.as = and i16 %i.ar, 2
  %.not76 = icmp eq i16 %i.as, 0
  br i1 %.not76, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr i8, ptr %.0.i.i, i64 12
  %.val84 = load i16, ptr %i.at, align 4
  %i.au = icmp ult i16 %.val84, 25
  br i1 %i.au, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n, %bb.m, %BufferGetPage.exit
  %i.av = and i32 %1, 3
  %i.aw = icmp eq i32 %i.av, 3
  %spec.select = select i1 %i.aw, i16 4, i16 0
  %i.ax = trunc i32 %1 to i16
  %i.ay = shl i16 %i.ax, 1
  %i.az = and i16 %i.ay, 8
  %.169 = or disjoint i16 %spec.select, %i.az
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bb = xor i32 %i.x, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8
  br label %SpGistInitBuffer.exit

bb.q:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr @BufferBlocks, align 8
  %i.bg = add nsw i32 %i.x, -1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = shl nsw i64 %i.bh, 13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bi
  br label %SpGistInitBuffer.exit

SpGistInitBuffer.exit:                            ; preds = %bb.p, %bb.q
  %.0.i.i.i = phi ptr [ %i.be, %bb.p ], [ %i.bj, %bb.q ] ; 3 uses
  tail call void @PageInit(ptr noundef %.0.i.i.i, i64 noundef 8192, i64 noundef 8) #10
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bm ; 2 uses
  store i16 %.169, ptr %i.bn, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 -126, ptr %i.bo, align 2
  %i.bp = tail call i64 @PageGetExactFreeSpace(ptr noundef nonnull %.0.i.i) #10
  %i.bq = trunc i64 %i.bp to i32
  %i.br = sub i32 %i.bq, %i.n
  store i32 %i.br, ptr %i.v, align 4
  store i8 1, ptr %3, align 1
  br label %.thread

bb.r:                                             ; preds = %bb.n
  %i.bs = and i32 %1, 3
  %i.bt = icmp eq i32 %i.bs, 3
  %i.bu = and i16 %i.ar, 4
  %.not78 = icmp eq i16 %i.bu, 0
  %i.bv = xor i1 %i.bt, %.not78
  br i1 %i.bv, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bw = and i32 %1, 4
  %.not79 = icmp eq i32 %i.bw, 0
  %i.bx = and i16 %i.ar, 8
  %.not80 = icmp eq i16 %i.bx, 0
  %i.by = xor i1 %.not79, %.not80
  br i1 %i.by, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = tail call i64 @PageGetExactFreeSpace(ptr noundef nonnull %.0.i.i) #10
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %.not82 = icmp sgt i32 %i.n, %i.ca
  br i1 %.not82, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = sub nsw i32 %i.ca, %i.n
  store i32 %i.cb, ptr %i.v, align 4
  store i8 0, ptr %3, align 1
  br label %.thread

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.t
  tail call void @UnlockReleaseBuffer(i32 noundef %i.x) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.g
  store i8 1, ptr %3, align 1
  %i.cc = tail call fastcc i32 @allocNewBuffer(ptr noundef nonnull %0, i32 noundef %1)
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.u, %SpGistInitBuffer.exit, %bb.w, %bb.f
  %.3 = phi i32 [ %i.u, %bb.f ], [ %i.cc, %bb.w ], [ %i.z, %bb.i ], [ %i.x, %bb.u ], [ %i.x, %SpGistInitBuffer.exit ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @allocNewBuffer(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @spgGetCache(ptr noundef %0)
  %i.b = and i32 %1, 3                            ; 2 uses
  %.not39 = icmp eq i32 %i.b, 3                   ; 2 uses
  %spec.select = select i1 %.not39, i16 4, i16 0
  %i.c = trunc i32 %1 to i16
  %i.d = shl i16 %i.c, 1
  %i.e = and i16 %i.d, 8
  %.131 = or disjoint i16 %spec.select, %i.e      ; 3 uses
  %.not34 = icmp eq i16 %.131, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br i1 %.not39, label %.split.us, label %.split.split

.split.us:                                        ; preds = %bb.a
  %i.g = tail call i32 @SpGistNewBuffer(ptr noundef %0) ; 4 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.split.us
  %i.i = load ptr, ptr @BufferBlocks, align 8
  %i.j = add nsw i32 %i.g, -1
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 13
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  br label %SpGistInitBuffer.exit.us

bb.c:                                             ; preds = %.split.us
  %i.n = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.o = xor i32 %i.g, -1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %SpGistInitBuffer.exit.us

SpGistInitBuffer.exit.us:                         ; preds = %bb.c, %bb.b
  %.0.i.i.i.us = phi ptr [ %i.r, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  tail call void @PageInit(ptr noundef %.0.i.i.i.us, i64 noundef 8192, i64 noundef 8) #10
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.us, i64 16
  %i.t = load i16, ptr %i.s, align 8
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i.us, i64 %i.u ; 2 uses
  store i16 %.131, ptr %i.v, align 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  store i16 -126, ptr %i.w, align 2
  br label %.split41

.split.split:                                     ; preds = %bb.a, %bb.i
  %i.x = tail call i32 @SpGistNewBuffer(ptr noundef %0) ; 8 uses
  %i.y = icmp slt i32 %i.x, 0                     ; 2 uses
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.split.split
  %i.z = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.aa = xor i32 %i.x, -1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8
  br label %SpGistInitBuffer.exit

bb.e:                                             ; preds = %.split.split
  %i.ae = load ptr, ptr @BufferBlocks, align 8
  %i.af = add nsw i32 %i.x, -1
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  br label %SpGistInitBuffer.exit

SpGistInitBuffer.exit:                            ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.ai, %bb.e ] ; 3 uses
  tail call void @PageInit(ptr noundef %.0.i.i.i, i64 noundef 8192, i64 noundef 8) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ak = load i16, ptr %i.aj, align 8
  %i.al = zext i16 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.al ; 2 uses
  store i16 %.131, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 6
  store i16 -126, ptr %i.an, align 2
  %i.ao = tail call i32 @BufferGetBlockNumber(i32 noundef %i.x) #10 ; 2 uses
  %i.ap = urem i32 %i.ao, 3                       ; 3 uses
  %.not = icmp eq i32 %i.b, %i.ap
  br i1 %.not, label %.split41, label %bb.f

bb.f:                                             ; preds = %SpGistInitBuffer.exit
  %2 = or disjoint i32 %i.ap, 4
  %spec.select35 = select i1 %.not34, i32 %i.ap, i32 %2
  %3 = zext nneg i32 %spec.select35 to i64
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %3 ; 2 uses
  store i32 %i.ao, ptr %4, align 4
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ar = xor i32 %i.x, -1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.av = load ptr, ptr @BufferBlocks, align 8
  %i.aw = add nsw i32 %i.x, -1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 13
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.au, %bb.g ], [ %i.az, %bb.h ]
  %i.ba = tail call i64 @PageGetExactFreeSpace(ptr noundef %.0.i.i) #10
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.bb, ptr %i.bc, align 4
  tail call void @UnlockReleaseBuffer(i32 noundef %i.x) #10
  br label %.split.split

.split41:                                         ; preds = %SpGistInitBuffer.exit, %SpGistInitBuffer.exit.us
  %.us-phi = phi i32 [ %i.g, %SpGistInitBuffer.exit.us ], [ %i.x, %SpGistInitBuffer.exit ]
  ret i32 %.us-phi
}

; Function Attrs: nounwind uwtable
define dso_local void @SpGistInitBuffer(i32 noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.c = xor i32 %0, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @BufferBlocks, align 8
  %i.h = add nsw i32 %0, -1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 13
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  tail call void @PageInit(ptr noundef %.0.i.i, i64 noundef 8192, i64 noundef 8) #10
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.m = load i16, ptr %i.l, align 8
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.n ; 2 uses
  store i16 %1, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  store i16 -126, ptr %i.p, align 2
  ret void
}

declare i64 @PageGetExactFreeSpace(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @SpGistSetLastUsedPage(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @spgGetCache(ptr noundef %0)
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.d = xor i32 %1, -1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @BufferBlocks, align 8
  %i.i = add nsw i32 %1, -1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 13
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 3 uses
  %i.m = tail call i32 @BufferGetBlockNumber(i32 noundef %1) #10 ; 4 uses
  %i.n = icmp ult i32 %i.m, 3
  br i1 %i.n, label %bb.g, label %bb.d

bb.d:                                             ; preds = %BufferGetPage.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.p = load i16, ptr %i.o, align 8
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  %i.t = and i16 %i.s, 4
  %.not = icmp eq i16 %i.t, 0
  %i.u = urem i32 %i.m, 3
  %.0 = select i1 %.not, i32 %i.u, i32 3
  %i.v = lshr i16 %i.s, 1
  %i.w = and i16 %i.v, 4
  %i.x = zext nneg i16 %i.w to i32
  %.1 = or disjoint i32 %.0, %i.x
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.z = zext nneg i32 %.1 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z ; 4 uses
  %i.ab = tail call i64 @PageGetExactFreeSpace(ptr noundef %.0.i.i) #10
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  %i.af = icmp eq i32 %i.ad, %i.m
  %or.cond = or i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp slt i32 %i.ah, %i.ac
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 %i.m, ptr %i.aa, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.ac, ptr %i.aj, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %BufferGetPage.exit
  ret void
}

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @SpGistInitPage(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 {
bb.a:
  tail call void @PageInit(ptr noundef %0, i64 noundef 8192, i64 noundef 8) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  store i16 %1, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i16 -126, ptr %i.e, align 2
  ret void
}

declare void @PageInit(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @SpGistInitMetapage(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  tail call void @PageInit(ptr noundef %0, i64 noundef 8192, i64 noundef 8) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  store i16 1, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  store i16 -126, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %i.g, i8 0, i64 60, i1 false)
  store i32 -1173640210, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 -1, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 -1, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 -1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 -1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 -1, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 -1, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 92, ptr %i.p, align 4
  ret void
}

declare ptr @build_reloptions(i64 noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 1073741831) i32 @SpGistGetInnerTypeSize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 2, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %VARSIZE_ANY.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i16, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i16 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i16 %i.e to i32
  br label %VARSIZE_ANY.exit

bb.d:                                             ; preds = %bb.b
  %i.h = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = icmp eq i8 %i.i, 1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %i.h, i64 1
  %.val.i = load i8, ptr %i.l, align 1            ; 2 uses
  %i.m = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.m, 3
  %i.n = icmp eq i8 %.val.i, 18
  %i.o = select i1 %i.n, i32 18, i32 2
  %i.p = select i1 %or.cond.i.i.i, i32 10, i32 %i.o
  br label %VARSIZE_ANY.exit
end_hunk_0
