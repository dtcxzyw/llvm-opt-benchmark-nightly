Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/entry?download=true
inline.NumInlined: 70
inline.NumDeleted: 15
begin_hunk_0_@entryWriteNew:bb.a
  %i.c = tail call noalias ptr @zmalloc(i64 noundef %i.b) #8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.g = load i16, ptr %i.f, align 2
  %i.h = or i16 %i.g, 256
  store i16 %i.h, ptr %i.f, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.a ]  ; 5 uses
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %0, align 8, !tbaa !60
  %.not35 = icmp eq i32 %i.j, 0
  br i1 %.not35, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %2, i64 -1
  %.val.i = load i8, ptr %i.p, align 1, !tbaa !13 ; 2 uses
  %i.q = and i8 %.val.i, 7
  switch i8 %i.q, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = lshr i8 %.val.i, 3
  %i.s = zext nneg i8 %i.r to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds i8, ptr %2, i64 -3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds i8, ptr %2, i64 -5
  %i.x = load i16, ptr %i.w, align 1, !tbaa !17
  %i.y = zext i16 %i.x to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %2, i64 -9
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i32 %i.aa to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %2, i64 -17
  %i.ad = load i64, ptr %i.ac, align 1, !tbaa !19
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %bb.j ], [ %i.s, %bb.f ], [ %i.v, %bb.g ], [ %i.y, %bb.h ], [ %i.ab, %bb.i ], [ 0, %bb.e ]
  %i.ae = tail call ptr @sdsnewplacement(ptr noundef %i.m, i64 noundef %i.o, i8 noundef signext 1, ptr noundef nonnull %2, i64 noundef %.0.i) #7 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.ah = and i32 %i.ag, 2
  %.not37 = icmp eq i32 %i.ah, 0
  br i1 %.not37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sdslen.exit
  tail call void @sdsfree(ptr noundef nonnull %2) #7
  %.pre = load i32, ptr %i.af, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %sdslen.exit
  %i.ai = phi i32 [ %.pre, %bb.k ], [ %i.ag, %sdslen.exit ]
  %i.aj = and i32 %i.ai, -3
  store i32 %i.aj, ptr %i.af, align 8, !tbaa !55
  br label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !55 ; 2 uses
  %i.am = and i32 %i.al, 2
  %.not36 = icmp eq i32 %i.am, 0
  br i1 %.not36, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = tail call ptr @sdsdup(ptr noundef nonnull %2) #7
  %.pre50 = load i32, ptr %i.ak, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ao = phi i32 [ %.pre50, %bb.n ], [ %i.al, %bb.m ]
  %i.ap = phi ptr [ %i.an, %bb.n ], [ %2, %bb.m ]
  store ptr %i.ap, ptr %.0, align 8, !tbaa !14
  %i.aq = and i32 %i.ao, -3
  store i32 %i.aq, ptr %i.ak, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 8
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.c
  %.1 = phi ptr [ %.0, %bb.l ], [ %i.ar, %bb.o ], [ %.0, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = trunc i32 %i.av to i8
  %i.ax = getelementptr i8, ptr %1, i64 -1
  %.val.i39 = load i8, ptr %i.ax, align 1, !tbaa !13 ; 2 uses
  %i.ay = and i8 %.val.i39, 7
  switch i8 %i.ay, label %sdslen.exit41 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.az = lshr i8 %.val.i39, 3
  %i.ba = zext nneg i8 %i.az to i64
  br label %sdslen.exit41

bb.r:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds i8, ptr %1, i64 -3
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i64
  br label %sdslen.exit41

bb.s:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds i8, ptr %1, i64 -5
  %i.bf = load i16, ptr %i.be, align 1, !tbaa !17
  %i.bg = zext i16 %i.bf to i64
  br label %sdslen.exit41

bb.t:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds i8, ptr %1, i64 -9
  %i.bi = load i32, ptr %i.bh, align 1, !tbaa !9
  %i.bj = zext i32 %i.bi to i64
  br label %sdslen.exit41

bb.u:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds i8, ptr %1, i64 -17
  %i.bl = load i64, ptr %i.bk, align 1, !tbaa !19
  br label %sdslen.exit41

sdslen.exit41:                                    ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i40 = phi i64 [ %i.bl, %bb.u ], [ %i.ba, %bb.q ], [ %i.bd, %bb.r ], [ %i.bg, %bb.s ], [ %i.bj, %bb.t ], [ 0, %bb.p ]
  %i.bm = tail call ptr @sdsnewplacement(ptr noundef %.1, i64 noundef %i.at, i8 noundef signext %i.aw, ptr noundef nonnull %1, i64 noundef %.0.i40) #7 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1     ; 3 uses
  %.val.i42 = load i8, ptr %i.bn, align 1, !tbaa !13 ; 3 uses
  %i.bo = and i8 %.val.i42, 7
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %sdsSetAuxBit.exit47, label %sdsSetAuxBit.exit

sdsSetAuxBit.exit:                                ; preds = %sdslen.exit41
  %i.bq = load i32, ptr %0, align 8, !tbaa !60
  %.not38.not = icmp eq i32 %i.bq, 0
  %i.br = and i8 %.val.i42, -17
  %masksel = select i1 %.not38.not, i8 16, i8 0
  %.0.i43 = or disjoint i8 %masksel, %i.br        ; 2 uses
  store i8 %.0.i43, ptr %i.bn, align 1, !tbaa !13
  %.pre52 = and i8 %.val.i42, 7
  %i.bs = icmp eq i8 %.pre52, 0
  br i1 %i.bs, label %sdsSetAuxBit.exit47, label %bb.v

bb.v:                                             ; preds = %sdsSetAuxBit.exit
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !57
  %.not48 = icmp eq i64 %i.bt, 0
  %i.bu = and i8 %.0.i43, -9
  %masksel49 = select i1 %.not48, i8 0, i8 8
  %.0.i46 = or disjoint i8 %masksel49, %i.bu
  store i8 %.0.i46, ptr %i.bn, align 1, !tbaa !13
  br label %sdsSetAuxBit.exit47

sdsSetAuxBit.exit47:                              ; preds = %sdslen.exit41, %sdsSetAuxBit.exit, %bb.v
  ret ptr %i.bm
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @entryUpdate(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.EntryWriteInfo, align 8     ; 11 uses
  %i.a = getelementptr i8, ptr %0, i64 -1         ; 8 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !13 ; 2 uses
  %i.b = and i8 %.val.i, 7
  %i.c = icmp eq i8 %i.b, 0
  %i.d = lshr i8 %.val.i, 3
  %.lobit.i = and i8 %i.d, 1
  %narrow.i = select i1 %i.c, i8 0, i8 %.lobit.i
  %.0.i.i = zext nneg i8 %narrow.i to i32
  %i.e = lshr i32 %2, 2
  %.lobit = and i32 %i.e, 1
  %i.f = icmp ne i32 %.lobit, %.0.i.i             ; 3 uses
  %i.g = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = select i1 %i.g, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %3, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = and i32 %2, 2
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.be, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @sdsfree(ptr noundef null) #7
  br label %bb.be

bb.f:                                             ; preds = %bb.a
  %i.i = tail call i64 @entryMemUsage(ptr noundef nonnull %0)
  br i1 %i.g, label %entryGetValue.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i53 = load i8, ptr %i.a, align 1, !tbaa !13 ; 3 uses
  %i.j = and i8 %.val.i53, 7                      ; 2 uses
  %i.k = icmp eq i8 %i.j, 0
  %i.l = and i8 %.val.i53, 16
  %.not7.i = icmp eq i8 %i.l, 0
  %.not.i = or i1 %i.k, %.not7.i
  br i1 %.not.i, label %bb.h, label %entryGetValueRef.exit.i

entryGetValueRef.exit.i:                          ; preds = %bb.g
  %i.m = tail call ptr @sdsAllocPtr(ptr noundef nonnull %0) #7
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  br label %entryGetValue.exit

bb.h:                                             ; preds = %bb.g
  switch i8 %i.j, label %sdslen.exit.i [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.p = lshr i8 %.val.i53, 3
  %i.q = zext nneg i8 %i.p to i64
  br label %sdslen.exit.i

bb.j:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds i8, ptr %0, i64 -3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = zext i8 %i.s to i64
  br label %sdslen.exit.i

bb.k:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds i8, ptr %0, i64 -5
  %i.v = load i16, ptr %i.u, align 1, !tbaa !17
  %i.w = zext i16 %i.v to i64
  br label %sdslen.exit.i

bb.l:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds i8, ptr %0, i64 -9
  %i.y = load i32, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i32 %i.y to i64
  br label %sdslen.exit.i

bb.m:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds i8, ptr %0, i64 -17
  %i.ab = load i64, ptr %i.aa, align 1, !tbaa !19
  br label %sdslen.exit.i

sdslen.exit.i:                                    ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.i.i54 = phi i64 [ %i.ab, %bb.m ], [ %i.q, %bb.i ], [ %i.t, %bb.j ], [ %i.w, %bb.k ], [ %i.z, %bb.l ], [ 0, %bb.h ]
  %i.ac = getelementptr i8, ptr %0, i64 %.0.i.i54
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  br label %entryGetValue.exit

entryGetValue.exit:                               ; preds = %sdslen.exit.i, %entryGetValueRef.exit.i
  %.043 = phi ptr [ %i.ad, %sdslen.exit.i ], [ %i.o, %entryGetValueRef.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call fastcc void @setEntryWriteInfo(ptr noundef %4, ptr noundef nonnull %0, ptr noundef %.043, i32 noundef %2)
  br i1 %i.f, label %needsNewAlloc.exit.thread, label %needsNewAlloc.exit.thread94

entryGetValue.exit.thread:                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call fastcc void @setEntryWriteInfo(ptr noundef %4, ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2)
  br i1 %i.f, label %needsNewAlloc.exit.thread.thread, label %.thread

.thread:                                          ; preds = %entryGetValue.exit.thread
  %i.ae = load i32, ptr %4, align 8, !tbaa !60    ; 2 uses
  %.val.i57 = load i8, ptr %i.a, align 1, !tbaa !13 ; 4 uses
  %i.af = and i8 %.val.i57, 7                     ; 2 uses
  %i.ag = icmp eq i8 %i.af, 0                     ; 2 uses
  %i.ah = lshr i8 %.val.i57, 4
  %.lobit.i.i.i = and i8 %i.ah, 1
  %i.ai = xor i8 %.lobit.i.i.i, 1
  %i.aj = select i1 %i.ag, i8 1, i8 %i.ai
  %i.ak = zext nneg i8 %i.aj to i32
  %.not14.i = icmp eq i32 %i.ae, %i.ak
  br i1 %.not14.i, label %bb.n, label %needsNewAlloc.exit.thread.thread

bb.n:                                             ; preds = %.thread
  %.not15.i = icmp eq i32 %i.ae, 0
  br i1 %.not15.i, label %needsNewAlloc.exit.thread94, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = and i8 %.val.i57, 16
  %.not7.i.i = icmp eq i8 %i.al, 0
  %.not.i.i = or i1 %i.ag, %.not7.i.i
  br i1 %.not.i.i, label %bb.p, label %entryGetValueRef.exit.i.i

entryGetValueRef.exit.i.i:                        ; preds = %bb.o
  %i.am = tail call ptr @sdsAllocPtr(ptr noundef nonnull %0) #7
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14
  br label %entryGetValue.exit.i

bb.p:                                             ; preds = %bb.o
  switch i8 %i.af, label %sdslen.exit.i.i [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
    i8 4, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  %i.ap = lshr i8 %.val.i57, 3
  %i.aq = zext nneg i8 %i.ap to i64
  br label %sdslen.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds i8, ptr %0, i64 -3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64
  br label %sdslen.exit.i.i

bb.s:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds i8, ptr %0, i64 -5
  %i.av = load i16, ptr %i.au, align 1, !tbaa !17
  %i.aw = zext i16 %i.av to i64
  br label %sdslen.exit.i.i

bb.t:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds i8, ptr %0, i64 -9
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !9
  %i.az = zext i32 %i.ay to i64
  br label %sdslen.exit.i.i

bb.u:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds i8, ptr %0, i64 -17
  %i.bb = load i64, ptr %i.ba, align 1, !tbaa !19
  br label %sdslen.exit.i.i

sdslen.exit.i.i:                                  ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.0.i.i.i = phi i64 [ %i.bb, %bb.u ], [ %i.aq, %bb.q ], [ %i.at, %bb.r ], [ %i.aw, %bb.s ], [ %i.az, %bb.t ], [ 0, %bb.p ]
  %i.bc = getelementptr i8, ptr %0, i64 %.0.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  br label %entryGetValue.exit.i

entryGetValue.exit.i:                             ; preds = %sdslen.exit.i.i, %entryGetValueRef.exit.i.i
  %.0.i.i58 = phi ptr [ %i.ao, %entryGetValueRef.exit.i.i ], [ %i.bd, %sdslen.exit.i.i ] ; 5 uses
  %i.be = getelementptr i8, ptr %.0.i.i58, i64 -1
  %.val.i17.i = load i8, ptr %i.be, align 1, !tbaa !13 ; 2 uses
  %i.bf = and i8 %.val.i17.i, 7
  switch i8 %i.bf, label %sdsAllocSize.exit.i [
    i8 0, label %bb.v
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
  ]

bb.v:                                             ; preds = %entryGetValue.exit.i
  %i.bg = lshr i8 %.val.i17.i, 3
  %narrow.i.i = add nuw nsw i8 %i.bg, 2
  %i.bh = zext nneg i8 %narrow.i.i to i64
  br label %sdsAllocSize.exit.i

bb.w:                                             ; preds = %entryGetValue.exit.i
  %i.bi = getelementptr inbounds i8, ptr %.0.i.i58, i64 -2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = zext i8 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 4
  br label %sdsAllocSize.exit.i

bb.x:                                             ; preds = %entryGetValue.exit.i
  %i.bm = getelementptr inbounds i8, ptr %.0.i.i58, i64 -3
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !17
  %i.bo = zext i16 %i.bn to i64
  %i.bp = add nuw nsw i64 %i.bo, 6
  br label %sdsAllocSize.exit.i

bb.y:                                             ; preds = %entryGetValue.exit.i
  %i.bq = getelementptr inbounds i8, ptr %.0.i.i58, i64 -5
  %i.br = load i32, ptr %i.bq, align 1, !tbaa !9
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 10
  br label %sdsAllocSize.exit.i

bb.z:                                             ; preds = %entryGetValue.exit.i
  %i.bu = getelementptr inbounds i8, ptr %.0.i.i58, i64 -9
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !19
  %i.bw = add i64 %i.bv, 18
  br label %sdsAllocSize.exit.i

sdsAllocSize.exit.i:                              ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %entryGetValue.exit.i
  %.0.i18.i = phi i64 [ %i.bw, %bb.z ], [ %i.bh, %bb.v ], [ %i.bl, %bb.w ], [ %i.bp, %bb.x ], [ %i.bt, %bb.y ], [ 0, %entryGetValue.exit.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !61 ; 2 uses
  %.not16.i = icmp ugt i64 %i.by, %.0.i18.i
  br i1 %.not16.i, label %needsNewAlloc.exit.thread.thread, label %needsNewAlloc.exit

needsNewAlloc.exit:                               ; preds = %sdsAllocSize.exit.i
  %i.bz = mul i64 %.0.i18.i, 3
  %i.ca = lshr i64 %i.bz, 2
  %.not100 = icmp ult i64 %i.by, %i.ca
  br i1 %.not100, label %needsNewAlloc.exit.thread.thread, label %needsNewAlloc.exit.thread94

needsNewAlloc.exit.thread:                        ; preds = %entryGetValue.exit
  %i.cb = icmp eq ptr %.043, null
  br i1 %i.cb, label %bb.aa, label %needsNewAlloc.exit.thread.thread

bb.aa:                                            ; preds = %needsNewAlloc.exit.thread
  %.val.i59 = load i8, ptr %i.a, align 1, !tbaa !13 ; 3 uses
  %i.cc = and i8 %.val.i59, 7                     ; 3 uses
  %i.cd = icmp eq i8 %i.cc, 0
  %i.ce = and i8 %.val.i59, 16                    ; 2 uses
  %.not7.i60 = icmp eq i8 %i.ce, 0
  %.not.i61 = or i1 %i.cd, %.not7.i60
  br i1 %.not.i61, label %bb.ab, label %entryGetValueRef.exit.i62

entryGetValueRef.exit.i62:                        ; preds = %bb.aa
  %i.cf = tail call ptr @sdsAllocPtr(ptr noundef nonnull %0) #7
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !14
  %.val.pre = load i8, ptr %i.a, align 1, !tbaa !13 ; 2 uses
  %.pre = and i8 %.val.pre, 7
  %.pre103 = and i8 %.val.pre, 16
  br label %entryGetValue.exit66

bb.ab:                                            ; preds = %bb.aa
  switch i8 %i.cc, label %sdslen.exit.i64 [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %bb.ae
    i8 3, label %bb.af
    i8 4, label %bb.ag
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ci = lshr i8 %.val.i59, 3
  %i.cj = zext nneg i8 %i.ci to i64
  br label %sdslen.exit.i64

bb.ad:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds i8, ptr %0, i64 -3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i64
  br label %sdslen.exit.i64

bb.ae:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds i8, ptr %0, i64 -5
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !17
  %i.cp = zext i16 %i.co to i64
  br label %sdslen.exit.i64

bb.af:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds i8, ptr %0, i64 -9
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !9
  %i.cs = zext i32 %i.cr to i64
  br label %sdslen.exit.i64

bb.ag:                                            ; preds = %bb.ab
  %i.ct = getelementptr inbounds i8, ptr %0, i64 -17
  %i.cu = load i64, ptr %i.ct, align 1, !tbaa !19
  br label %sdslen.exit.i64

sdslen.exit.i64:                                  ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.0.i.i65 = phi i64 [ %i.cu, %bb.ag ], [ %i.cj, %bb.ac ], [ %i.cm, %bb.ad ], [ %i.cp, %bb.ae ], [ %i.cs, %bb.af ], [ 0, %bb.ab ]
  %i.cv = getelementptr i8, ptr %0, i64 %.0.i.i65
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  br label %entryGetValue.exit66

entryGetValue.exit66:                             ; preds = %entryGetValueRef.exit.i62, %sdslen.exit.i64
  %.pre-phi104 = phi i8 [ %.pre103, %entryGetValueRef.exit.i62 ], [ %i.ce, %sdslen.exit.i64 ]
  %.pre-phi = phi i8 [ %.pre, %entryGetValueRef.exit.i62 ], [ %i.cc, %sdslen.exit.i64 ]
end_hunk_0
