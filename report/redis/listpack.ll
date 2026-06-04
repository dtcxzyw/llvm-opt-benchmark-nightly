inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpLength:bb.a
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i16, ptr %i.b, align 1              ; 2 uses
  %i.d = zext i16 %i.c to i32
  %.not = icmp eq i16 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %._crit_edge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %0, align 1
  %i.i = zext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !tbaa !19
  %i.j = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.i)
  %.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i, label %bb.d, label %.lr.ph.preheader, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.021 = phi ptr [ %i.l, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %.01520 = phi i32 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.k = add i32 %.01520, 1                       ; 4 uses
  %i.l = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021) ; 2 uses
  %.not18 = icmp eq ptr %i.l, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = icmp ult i32 %i.k, 65535
  br i1 %i.m, label %._crit_edge.thread, label %bb.e

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %.015.lcssa25 = phi i32 [ %i.k, %._crit_edge ], [ 0, %bb.b ] ; 2 uses
  %i.n = trunc nuw i32 %.015.lcssa25 to i16
  store i16 %i.n, ptr %i.b, align 1
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %._crit_edge.thread, %bb.a
  %.016.in = phi i32 [ %i.d, %bb.a ], [ %.015.lcssa25, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %.016 = zext i32 %.016.in to i64
  ret i64 %.016
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpGet(ptr noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr noundef writeonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 715) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 6 uses
  %i.c = and i32 %i.b, 192
  %i.d = icmp eq i32 %i.c, 128
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %i.b, 63
  %i.f = zext nneg i32 %i.e to i64
  store i64 %i.f, ptr %1, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %lpGetWithBuf.exit

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %i.b, 240
  %i.i = icmp eq i32 %i.h, 224
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = shl nuw nsw i32 %i.b, 8
  %i.k = and i32 %i.j, 3840
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i32
  %i.o = or disjoint i32 %i.k, %i.n
  %i.p = zext nneg i32 %i.o to i64
  store i64 %i.p, ptr %1, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %lpGetWithBuf.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp eq i8 %i.a, -16
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i32, ptr %i.s, align 1
  %i.u = zext i32 %i.t to i64
  store i64 %i.u, ptr %1, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5
  br label %lpGetWithBuf.exit

bb.i:                                             ; preds = %bb.g
  %i.w = icmp sgt i8 %i.a, -1
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = zext nneg i8 %i.a to i64
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.y = and i32 %i.b, 224
  %i.z = icmp eq i32 %i.y, 192
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = shl nuw nsw i32 %i.b, 8
  %i.ab = and i32 %i.aa, 7936
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae
  %i.ag = zext nneg i32 %i.af to i64
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  switch i8 %i.a, label %bb.r [
    i8 -15, label %bb.n
    i8 -14, label %bb.o
    i8 -13, label %bb.p
    i8 -12, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ai = load i16, ptr %i.ah, align 1
  %i.aj = zext i16 %i.ai to i64
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 16
  %i.ar = or disjoint i64 %i.aq, %i.am
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.at = load i32, ptr %i.as, align 1
  %i.au = zext i32 %i.at to i64
  br label %bb.s

bb.q:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aw = load i64, ptr %i.av, align 1
  br label %bb.s

bb.r:                                             ; preds = %bb.m
  %i.ax = zext i8 %i.a to i64
  %i.ay = or disjoint i64 %i.ax, 12345678900000000
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %.061.i = phi i64 [ %i.x, %bb.j ], [ %i.ag, %bb.l ], [ %i.aj, %bb.n ], [ %i.ar, %bb.o ], [ %i.au, %bb.p ], [ %i.aw, %bb.q ], [ %i.ay, %bb.r ] ; 3 uses
  %.060.i = phi i64 [ -1, %bb.j ], [ 4096, %bb.l ], [ 32768, %bb.n ], [ 8388608, %bb.o ], [ 2147483648, %bb.p ], [ -9223372036854775808, %bb.q ], [ -1, %bb.r ]
  %.059.neg.i = phi i64 [ 0, %bb.j ], [ -8191, %bb.l ], [ -65535, %bb.n ], [ -16777215, %bb.o ], [ -4294967295, %bb.p ], [ 1, %bb.q ], [ 0, %bb.r ]
  %.not66.i = icmp ult i64 %.061.i, %.060.i
  %.neg.i = add i64 %.061.i, -1
  %i.az = add i64 %.neg.i, %.059.neg.i
  %.062.i = select i1 %.not66.i, i64 %.061.i, i64 %i.az ; 2 uses
  %.not67.i = icmp eq ptr %2, null
  br i1 %.not67.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = tail call i32 @ll2string(ptr noundef nonnull %2, i64 noundef 21, i64 noundef %.062.i) #21
  %i.bb = sext i32 %i.ba to i64
  store i64 %i.bb, ptr %1, align 8, !tbaa !16
  br label %lpGetWithBuf.exit

bb.u:                                             ; preds = %bb.s
  store i64 %.062.i, ptr %1, align 8, !tbaa !16
  br label %lpGetWithBuf.exit

lpGetWithBuf.exit:                                ; preds = %bb.d, %bb.f, %bb.h, %bb.t, %bb.u
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.q, %bb.f ], [ %i.v, %bb.h ], [ %2, %bb.t ], [ null, %bb.u ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpGetValue(ptr noundef captures(address, ret: address, provenance) %0, ptr noundef writeonly captures(none) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call ptr @lpGet(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.c to i32
  store i32 %i.d, ptr %1, align 4, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 %i.c, ptr %2, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lpGetIntegerValue(ptr noundef captures(address) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call ptr @lpGet(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null)
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !16
  store i64 %i.c, ptr %1, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lpFindCb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call fastcc ptr @lpFindCbInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @lpFindCbInternal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load i32, ptr %0, align 1
  %i.d = zext i32 %i.c to i64                     ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %lpFirst.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %lpFirst.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8, !tbaa !19
  %i.h = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.d)
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.d, label %lpAssertValidEntry.exit.i, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpAssertValidEntry.exit.i:                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %lpFirst.exit

lpFirst.exit:                                     ; preds = %lpAssertValidEntry.exit.i, %bb.a
  %.035 = phi ptr [ %1, %bb.a ], [ %i.e, %lpAssertValidEntry.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.d ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %lpFirst.exit, %bb.ar
  %.048 = phi i64 [ 123456789, %lpFirst.exit ], [ %.149, %bb.ar ] ; 2 uses
  %.036 = phi i32 [ 0, %lpFirst.exit ], [ %.137, %bb.ar ] ; 2 uses
  %.1 = phi ptr [ %.035, %lpFirst.exit ], [ %.2, %bb.ar ] ; 19 uses
  %i.k = icmp eq i32 %.036, 0
  br i1 %i.k, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %.1, align 1, !tbaa !13     ; 6 uses
  %i.m = zext i8 %i.l to i32                      ; 6 uses
  %i.n = icmp sgt i8 %i.l, -1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i8 %i.l to i64
  br label %lpGetWithSize.exit

bb.h:                                             ; preds = %bb.f
  %i.p = and i32 %i.m, 192
  %i.q = icmp eq i32 %i.p, 128
  br i1 %i.q, label %lpEncodeBacklenBytes.exit.i, label %bb.i

lpEncodeBacklenBytes.exit.i:                      ; preds = %bb.h
  %i.r = and i32 %i.m, 63
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 2
  br label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.u = and i32 %i.m, 224
  %i.v = icmp eq i32 %i.u, 192
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = shl nuw nsw i32 %i.m, 8
  %i.x = and i32 %i.w, 7936
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !13
  %i.aa = zext i8 %i.z to i32
  %i.ab = or disjoint i32 %i.x, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  br label %lpGetWithSize.exit

bb.k:                                             ; preds = %bb.i
  switch i8 %i.l, label %bb.p [
    i8 -15, label %bb.l
    i8 -14, label %bb.m
    i8 -13, label %bb.n
    i8 -12, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %i.ae to i64
  br label %lpGetWithSize.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.1, i64 1
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 16
  %i.an = or disjoint i64 %i.am, %i.ai
  br label %lpGetWithSize.exit

bb.n:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.1, i64 1
  %i.ap = load i32, ptr %i.ao, align 1
  %i.aq = zext i32 %i.ap to i64
  br label %lpGetWithSize.exit

bb.o:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %.1, i64 1
  %i.as = load i64, ptr %i.ar, align 1
  br label %lpGetWithSize.exit

bb.p:                                             ; preds = %bb.k
  %i.at = and i32 %i.m, 240
  %i.au = icmp eq i32 %i.at, 224
  br i1 %i.au, label %lpEncodeBacklenBytes.exit93.i, label %bb.q

lpEncodeBacklenBytes.exit93.i:                    ; preds = %bb.p
  %i.av = shl nuw nsw i32 %i.m, 8
  %i.aw = and i32 %i.av, 3840
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = zext i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.aw, %i.az            ; 2 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 2
  %i.bd = icmp samesign ult i32 %i.ba, 126
  %spec.select.i = select i1 %i.bd, i64 1, i64 2
  %i.be = add nuw nsw i64 %i.bc, %spec.select.i
  br label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bf = icmp eq i8 %i.l, -16
  br i1 %i.bf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.bh = load i32, ptr %i.bg, align 1            ; 5 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 5
  %i.bk = icmp ult i32 %i.bh, 123
  br i1 %i.bk, label %lpEncodeBacklenBytes.exit96.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp ult i32 %i.bh, 16378
  br i1 %i.bl, label %lpEncodeBacklenBytes.exit96.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = icmp ult i32 %i.bh, 2097146
  br i1 %i.bm, label %lpEncodeBacklenBytes.exit96.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = icmp ult i32 %i.bh, 268435450
  %..i94.i = select i1 %i.bn, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit96.i

lpEncodeBacklenBytes.exit96.i:                    ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.0.i95.i = phi i64 [ 3, %bb.t ], [ 1, %bb.r ], [ 2, %bb.s ], [ %..i94.i, %bb.u ]
  %i.bo = add nuw nsw i64 %i.bj, %.0.i95.i
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bp = zext i8 %i.l to i64
  %i.bq = or disjoint i64 %i.bp, 12345678900000000
  br label %lpGetWithSize.exit

lpGetWithSize.exit:                               ; preds = %bb.g, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.v
  %.250 = phi i64 [ 2, %bb.g ], [ 3, %bb.j ], [ %.048, %bb.v ], [ 4, %bb.l ], [ 5, %bb.m ], [ 6, %bb.n ], [ 10, %bb.o ]
  %.083.i = phi i64 [ %i.o, %bb.g ], [ %i.ac, %bb.j ], [ %i.bq, %bb.v ], [ %i.af, %bb.l ], [ %i.an, %bb.m ], [ %i.aq, %bb.n ], [ %i.as, %bb.o ] ; 3 uses
  %.082.i = phi i64 [ -1, %bb.g ], [ 4096, %bb.j ], [ -1, %bb.v ], [ 32768, %bb.l ], [ 8388608, %bb.m ], [ 2147483648, %bb.n ], [ -9223372036854775808, %bb.o ]
end_hunk_0
begin_hunk_1_@lpRandomEntries:bb.a
  %i.bw = icmp eq i32 %i.bv, 128                  ; 2 uses
  %i.bx = and i32 %i.bt, 224
  %i.by = icmp eq i32 %i.bx, 192                  ; 2 uses
  %.off.i.i = add i8 %i.bl, 15
  %switch.i.i = icmp ult i8 %.off.i.i, 4
  %i.bz = or i1 %switch.i.i, %i.bw
  %i.ca = or i1 %i.bu, %i.bz
  %or.cond15.i.i = or i1 %i.by, %i.ca
  br i1 %or.cond15.i.i, label %select.unfold.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = and i32 %i.bt, 240
  %i.cc = icmp eq i32 %i.cb, 224
  br i1 %i.cc, label %select.unfold.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %switch.selectcmp16.i.i = icmp eq i8 %i.bl, -16
  br i1 %switch.selectcmp16.i.i, label %select.unfold.i, label %lpDecodeBacklen.exit.thread

select.unfold.i:                                  ; preds = %bb.y, %bb.x, %bb.w
  %.0.i.ph.i = phi i64 [ 1, %bb.w ], [ 2, %bb.x ], [ 5, %bb.y ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.i.ph.i ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %i.t
  %i.cf = icmp ugt ptr %i.cd, %i.br
  %or.cond.i = or i1 %i.ce, %i.cf
  br i1 %or.cond.i, label %lpDecodeBacklen.exit.thread, label %bb.z

bb.z:                                             ; preds = %select.unfold.i
  br i1 %i.bu, label %lpEncodeBacklenBytes.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.bw, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.ab

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.aa
  %i.cg = and i32 %i.bt, 63
  %i.ch = add nuw nsw i32 %i.cg, 1
  br label %lpEncodeBacklenBytes.exit.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.by, label %lpEncodeBacklenBytes.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %switch.tableidx102 = add nsw i8 %i.bl, 15      ; 2 uses
  %i.ci = icmp ult i8 %switch.tableidx102, 4
  br i1 %i.ci, label %switch.lookup103, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = and i32 %i.bt, 240
  %i.ck = icmp eq i32 %i.cj, 224
  br i1 %i.ck, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cl = shl nuw nsw i32 %i.bt, 8
  %i.cm = and i32 %i.cl, 3840
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = zext i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cm, 2
  %i.cr = add nuw nsw i32 %i.cq, %i.cp
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.af:                                            ; preds = %bb.ad
  %cond.i = icmp eq i8 %i.bl, -16
  br i1 %cond.i, label %bb.ag, label %lpEncodeBacklenBytes.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = add i32 %i.ct, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.ag, %bb.ae
  %.0.i46.i = phi i32 [ %i.cr, %bb.ae ], [ %i.cu, %bb.ag ] ; 8 uses
  %i.cv = icmp ult i32 %.0.i46.i, 128
  br i1 %i.cv, label %lpEncodeBacklenBytes.exit.i, label %bb.ah

bb.ah:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.cw = icmp ult i32 %.0.i46.i, 16383
  br i1 %i.cw, label %lpEncodeBacklenBytes.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = icmp ult i32 %.0.i46.i, 2097151
  br i1 %i.cx, label %lpEncodeBacklenBytes.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cy = icmp ult i32 %.0.i46.i, 268435455
  %..i.i = select i1 %i.cy, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit.i

switch.lookup103:                                 ; preds = %bb.ac
  %i.cz = zext nneg i8 %switch.tableidx102 to i64
  %switch.gep104 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.cz
  %switch.load105 = load i32, ptr %switch.gep104, align 4
  br label %lpEncodeBacklenBytes.exit.i

lpEncodeBacklenBytes.exit.i:                      ; preds = %switch.lookup103, %bb.aj, %bb.ai, %bb.ah, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.af, %bb.ab, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.z
  %.shrunk.i = phi i32 [ %.0.i46.i, %bb.ai ], [ %.0.i46.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i46.i, %bb.ah ], [ %.0.i46.i, %bb.aj ], [ 1, %bb.z ], [ %switch.load105, %switch.lookup103 ], [ 2, %bb.ab ], [ 0, %bb.af ], [ %i.ch, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %.0.i47.i = phi i64 [ 3, %bb.ai ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.ah ], [ %..i.i, %bb.aj ], [ 1, %bb.z ], [ 1, %switch.lookup103 ], [ 1, %bb.ab ], [ 1, %bb.af ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %i.da = zext i32 %.shrunk.i to i64              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.0.i47.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da ; 7 uses
  %i.dd = icmp ult ptr %i.dc, %i.t
  %i.de = icmp ugt ptr %i.dc, %i.br
  %or.cond45.i = or i1 %i.dd, %i.de
  br i1 %or.cond45.i, label %lpDecodeBacklen.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %lpEncodeBacklenBytes.exit.i
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 -1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !13  ; 3 uses
  %.not.i42 = icmp sgt i8 %i.dg, -1
  br i1 %.not.i42, label %bb.al, label %bb.am, !prof !22

bb.al:                                            ; preds = %bb.ak
  %i.dh = zext nneg i8 %i.dg to i64
  br label %lpDecodeBacklen.exit

bb.am:                                            ; preds = %bb.ak
  %i.di = and i8 %i.dg, 127
  %i.dj = zext nneg i8 %i.di to i64               ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 -2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !13  ; 3 uses
  %.not21.i = icmp sgt i8 %i.dl, -1
  br i1 %.not21.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 7
  %i.do = or disjoint i64 %i.dn, %i.dj
  br label %lpDecodeBacklen.exit

bb.ao:                                            ; preds = %bb.am
  %i.dp = and i8 %i.dl, 127
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 7
  %i.ds = or disjoint i64 %i.dr, %i.dj            ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dc, i64 -3
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13  ; 3 uses
  %.not22.i = icmp sgt i8 %i.du, -1
  br i1 %.not22.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dv = zext nneg i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.dv, 14
  %i.dx = or disjoint i64 %i.dw, %i.ds
  br label %lpDecodeBacklen.exit

bb.aq:                                            ; preds = %bb.ao
  %i.dy = and i8 %i.du, 127
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 14
  %i.eb = or disjoint i64 %i.ea, %i.ds            ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %i.dc, i64 -4
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.ed, -1
  br i1 %.not23.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 21
  %i.eg = or disjoint i64 %i.ef, %i.eb
  br label %lpDecodeBacklen.exit

bb.as:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds i8, ptr %i.dc, i64 -5
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.ei, -1
  br i1 %.not24.i, label %bb.at, label %lpDecodeBacklen.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.ej = and i8 %i.ed, 127
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 21
  %i.em = zext nneg i8 %i.ei to i64
  %i.en = shl nuw nsw i64 %i.em, 28
  %i.eo = or disjoint i64 %i.en, %i.el
  %i.ep = or disjoint i64 %i.eo, %i.eb
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.al, %bb.an, %bb.ap, %bb.ar, %bb.at
  %.0.i43 = phi i64 [ %i.dh, %bb.al ], [ %i.do, %bb.an ], [ %i.ep, %bb.at ], [ %i.eg, %bb.ar ], [ %i.dx, %bb.ap ]
  %.not44.i = icmp eq i64 %.0.i43, %i.da
  br i1 %.not44.i, label %lpNext.exit, label %lpDecodeBacklen.exit.thread

lpDecodeBacklen.exit.thread:                      ; preds = %bb.as, %bb.y, %bb.u, %bb.v, %lpDecodeBacklen.exit, %select.unfold.i, %lpEncodeBacklenBytes.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i39 = phi ptr [ null, %lpSkip.exit.i ], [ %i.bk, %lpDecodeBacklen.exit ] ; 2 uses
  %i.eq = add nuw i32 %.13362, 1                  ; 2 uses
  %exitcond76.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond76.not, label %lpGetValue.exit, label %.lr.ph65, !llvm.loop !53

lpGetValue.exit:                                  ; preds = %lpNext.exit, %.preheader
  %.133.lcssa = phi i32 [ %.03268, %.preheader ], [ %i.af, %lpNext.exit ]
  %.1.lcssa = phi ptr [ %.03070, %.preheader ], [ %.0.i39, %lpNext.exit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.et = call ptr @lpGet(ptr noundef %.1.lcssa, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not.i40 = icmp eq ptr %i.et, null             ; 2 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %spec.select = select i1 %.not.i40, i32 0, i32 %i.ev
  %spec.select51 = select i1 %.not.i40, i64 %i.eu, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ew = sext i32 %i.es to i64
  %i.ex = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ew ; 3 uses
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %spec.select, ptr %i.ey, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %spec.select51, ptr %i.ez, align 8, !tbaa !37
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.d
  br i1 %exitcond81.not, label %._crit_edge71, label %.preheader, !llvm.loop !54
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @uintCompare(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9
  %i.b = load i32, ptr %1, align 4, !tbaa !9
  %i.c = sub i32 %i.a, %i.b
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local void @lpRandomPairs(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %4, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1867) #21
  tail call void @abort() #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @zmalloc_usable(i64 noundef %i.d, ptr noundef null) #21 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1              ; 2 uses
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp eq i16 %i.g, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %0, align 1
  %i.m = zext i32 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8, !tbaa !19
  %i.n = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.m)
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #21
  tail call void @abort() #22
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.p, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.o, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.o = add i32 %.01520.i, 1                     ; 4 uses
  %i.p = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.p, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.q = icmp ult i32 %i.o, 65535
  br i1 %i.q, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.o, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.r = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.r, ptr %i.f, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.h, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.o, %._crit_edge.i ] ; 2 uses
  %i.s = udiv i32 %.016.in.i, %4
  %.not = icmp ult i32 %.016.in.i, %4
  br i1 %.not, label %bb.g, label %.preheader, !prof !18

.preheader:                                       ; preds = %lpLength.exit
  %.not134 = icmp eq i32 %1, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %lpLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1878) #21
  tail call void @abort() #22
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @uintCompare) #21
  %i.t = load i32, ptr %i.e, align 4, !tbaa !55   ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = tail call ptr @lpSeek(ptr noundef nonnull %0, i64 noundef %i.u) ; 2 uses
  %i.w = icmp ne ptr %i.v, null
  %i.x = icmp ne i32 %1, 0
  %i.y = and i1 %i.x, %i.w
  br i1 %i.y, label %.lr.ph132, label %._crit_edge133

.lr.ph132:                                        ; preds = %._crit_edge
  %.not60 = icmp eq ptr %3, null
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.aa = add nsw i32 %4, -2
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ab = tail call i32 @rand() #21
  %i.ac = urem i32 %i.ab, %i.s
  %i.ad = mul i32 %i.ac, %4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %lpNext.exit
  %i.ah = icmp ne ptr %.0.i, null
  %i.ai = icmp ult i32 %.151.lcssa, %1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %._crit_edge133, !llvm.loop !59

bb.h:                                             ; preds = %.lr.ph132, %.loopexit
  %.049129 = phi ptr [ %i.v, %.lr.ph132 ], [ %.0.i, %.loopexit ] ; 13 uses
  %.050128 = phi i32 [ 0, %.lr.ph132 ], [ %.151.lcssa, %.loopexit ] ; 3 uses
  %.052126 = phi i32 [ %i.t, %.lr.ph132 ], [ %i.fe, %.loopexit ] ; 3 uses
  %.083125 = phi i64 [ 0, %.lr.ph132 ], [ %.184, %.loopexit ] ; 3 uses
  %.085124 = phi i64 [ 0, %.lr.ph132 ], [ %.186, %.loopexit ] ; 3 uses
  %.087123 = phi i32 [ 0, %.lr.ph132 ], [ %.188, %.loopexit ]
  %.089122 = phi i32 [ 0, %.lr.ph132 ], [ %.190, %.loopexit ]
  %i.ak = load i8, ptr %.049129, align 1, !tbaa !13 ; 6 uses
  %i.al = zext i8 %i.ak to i32                    ; 6 uses
  %i.am = and i32 %i.al, 192
  %i.an = icmp eq i32 %i.am, 128
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = and i32 %i.al, 63
  %i.ap = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  br label %lpGetValue.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = and i32 %i.al, 240
  %i.ar = icmp eq i32 %i.aq, 224
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = shl nuw nsw i32 %i.al, 8
  %i.at = and i32 %i.as, 3840
  %i.au = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !13
  %i.aw = zext i8 %i.av to i32
  %i.ax = or disjoint i32 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.049129, i64 2
  br label %lpGetValue.exit

bb.l:                                             ; preds = %bb.j
  %i.az = icmp eq i8 %i.ak, -16
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.049129, i64 5
  br label %lpGetValue.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = icmp sgt i8 %i.ak, -1
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = zext nneg i8 %i.ak to i64
  br label %bb.x

bb.p:                                             ; preds = %bb.n
  %i.bf = and i32 %i.al, 224
  %i.bg = icmp eq i32 %i.bf, 192
end_hunk_1
