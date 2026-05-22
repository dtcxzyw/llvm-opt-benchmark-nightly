inline.NumInlined: 103
inline.NumDeleted: 11
begin_hunk_0_@lpEstimateBytesRepeatedInteger:bb.a
  br label %lpEntrySizeInteger.exit

lpEntrySizeInteger.exit:                          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sink.i.i = phi i64 [ 5, %bb.d ], [ %i.e, %bb.e ], [ 3, %bb.b ], [ 4, %bb.c ], [ 2, %bb.a ]
  %i.f = mul i64 %.sink.i.i, %1
  %i.g = add i64 %i.f, 7
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @lpValidateFirst(ptr noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, -1
  %. = select i1 %i.c, ptr null, ptr %i.a
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @lpValidateNext(ptr noundef readnone captures(address) %0, ptr noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !19     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %lpCurrentEncodedSizeBytes.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.c = icmp ult ptr %i.a, %i.b
  br i1 %i.c, label %lpCurrentEncodedSizeBytes.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 3 uses
  %i.f = icmp ugt ptr %i.a, %i.e
  br i1 %i.f, label %lpCurrentEncodedSizeBytes.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.a, align 1, !tbaa !13    ; 7 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %lpCurrentEncodedSizeBytes.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = zext i8 %i.g to i32                      ; 6 uses
  %i.j = icmp sgt i8 %i.g, -1                     ; 2 uses
  %i.k = and i32 %i.i, 192
  %i.l = icmp eq i32 %i.k, 128                    ; 2 uses
  %i.m = and i32 %i.i, 224
  %i.n = icmp eq i32 %i.m, 192                    ; 2 uses
  %.off.i = add i8 %i.g, 15
  %switch.i = icmp ult i8 %.off.i, 4
  %i.o = or i1 %switch.i, %i.l
  %i.p = or i1 %i.j, %i.o
  %or.cond15.i = or i1 %i.n, %i.p
  br i1 %or.cond15.i, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = and i32 %i.i, 240
  %i.r = icmp eq i32 %i.q, 224
  br i1 %i.r, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %bb.f
  %switch.selectcmp16.i = icmp eq i8 %i.g, -16
  br i1 %switch.selectcmp16.i, label %select.unfold, label %lpCurrentEncodedSizeBytes.exit

select.unfold:                                    ; preds = %bb.g, %bb.e, %bb.f
  %.0.i.ph = phi i64 [ 1, %bb.e ], [ 2, %bb.f ], [ 5, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.ph ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.b
  %i.u = icmp ugt ptr %i.s, %i.e
  %or.cond = or i1 %i.t, %i.u
  br i1 %or.cond, label %lpCurrentEncodedSizeBytes.exit, label %bb.h

bb.h:                                             ; preds = %select.unfold
  br i1 %i.j, label %lpEncodeBacklenBytes.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %i.l, label %lpCurrentEncodedSizeUnsafe.exit.thread, label %bb.j

lpCurrentEncodedSizeUnsafe.exit.thread:           ; preds = %bb.i
  %i.v = and i32 %i.i, 63
  %i.w = add nuw nsw i32 %i.v, 1
  br label %lpEncodeBacklenBytes.exit

bb.j:                                             ; preds = %bb.i
  br i1 %i.n, label %lpEncodeBacklenBytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %switch.tableidx = add nsw i8 %i.g, 15          ; 2 uses
  %i.x = icmp ult i8 %switch.tableidx, 4
  br i1 %i.x, label %switch.lookup, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = and i32 %i.i, 240
  %i.z = icmp eq i32 %i.y, 224
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = shl nuw nsw i32 %i.i, 8
  %i.ab = and i32 %i.aa, 3840
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, 2
  %i.ag = add nuw nsw i32 %i.af, %i.ae
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.n:                                             ; preds = %bb.l
  %cond = icmp eq i8 %i.g, -16
  br i1 %cond, label %bb.o, label %lpEncodeBacklenBytes.exit

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ai = load i32, ptr %i.ah, align 1
  %i.aj = add i32 %i.ai, 5
  br label %lpCurrentEncodedSizeUnsafe.exit

lpCurrentEncodedSizeUnsafe.exit:                  ; preds = %bb.m, %bb.o
  %.0.i46 = phi i32 [ %i.ag, %bb.m ], [ %i.aj, %bb.o ] ; 8 uses
  %i.ak = icmp ult i32 %.0.i46, 128
  br i1 %i.ak, label %lpEncodeBacklenBytes.exit, label %bb.p

bb.p:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit
  %i.al = icmp ult i32 %.0.i46, 16383
  br i1 %i.al, label %lpEncodeBacklenBytes.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = icmp ult i32 %.0.i46, 2097151
  br i1 %i.am, label %lpEncodeBacklenBytes.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = icmp ult i32 %.0.i46, 268435455
  %..i = select i1 %i.an, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit

switch.lookup:                                    ; preds = %bb.k
  %i.ao = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.ao
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %switch.lookup, %lpCurrentEncodedSizeUnsafe.exit.thread, %bb.j, %bb.h, %bb.n, %lpCurrentEncodedSizeUnsafe.exit, %bb.p, %bb.q, %bb.r
  %.shrunk = phi i32 [ %.0.i46, %bb.q ], [ %.0.i46, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i46, %bb.p ], [ %.0.i46, %bb.r ], [ 1, %bb.h ], [ %switch.load, %switch.lookup ], [ 2, %bb.j ], [ 0, %bb.n ], [ %i.w, %lpCurrentEncodedSizeUnsafe.exit.thread ]
  %.0.i47 = phi i64 [ 3, %bb.q ], [ 1, %lpCurrentEncodedSizeUnsafe.exit ], [ 2, %bb.p ], [ %..i, %bb.r ], [ 1, %bb.h ], [ 1, %switch.lookup ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread ]
  %i.ap = zext i32 %.shrunk to i64                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap ; 4 uses
  %i.as = icmp ult ptr %i.ar, %i.b
  %i.at = icmp ugt ptr %i.ar, %i.e
  %or.cond45 = or i1 %i.as, %i.at
  br i1 %or.cond45, label %lpCurrentEncodedSizeBytes.exit, label %bb.s

bb.s:                                             ; preds = %lpEncodeBacklenBytes.exit
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -1
  %i.av = tail call fastcc i64 @lpDecodeBacklen(ptr noundef %i.au)
  %.not44 = icmp eq i64 %i.av, %i.ap
  br i1 %.not44, label %lpCurrentEncodedSizeBytes.exit.sink.split, label %lpCurrentEncodedSizeBytes.exit

lpCurrentEncodedSizeBytes.exit.sink.split:        ; preds = %bb.s, %bb.d
  %.sink = phi ptr [ null, %bb.d ], [ %i.ar, %bb.s ]
  store ptr %.sink, ptr %1, align 8, !tbaa !19
  br label %lpCurrentEncodedSizeBytes.exit

lpCurrentEncodedSizeBytes.exit:                   ; preds = %lpCurrentEncodedSizeBytes.exit.sink.split, %bb.g, %select.unfold, %bb.s, %lpEncodeBacklenBytes.exit, %bb.b, %bb.c, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.g ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.s ], [ 0, %select.unfold ], [ 0, %lpEncodeBacklenBytes.exit ], [ 1, %lpCurrentEncodedSizeBytes.exit.sink.split ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @lpValidateIntegrity(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = icmp ult i64 %1, 7
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 1
  %i.d = zext i32 %i.c to i64
  %.not = icmp eq i64 %1, %i.d
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -1       ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not35 = icmp eq i8 %i.g, -1
  br i1 %.not35, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %.not36 = icmp eq i32 %2, 0
  br i1 %.not36, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i16, ptr %i.h, align 1              ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !19
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %thread-pre-split.us
  %.02849.us = phi i32 [ %i.o, %thread-pre-split.us ], [ 0, %bb.e ] ; 2 uses
  %i.l = phi ptr [ %.pr.us, %thread-pre-split.us ], [ %i.k, %bb.e ] ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %.not38.us = icmp eq i8 %i.m, -1
  br i1 %.not38.us, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.split.us
  %i.n = call i32 @lpValidateNext(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  %.not42.us = icmp eq i32 %i.n, 0
  br i1 %.not42.us, label %.thread, label %thread-pre-split.us

thread-pre-split.us:                              ; preds = %bb.f
  %i.o = add i32 %.02849.us, 1                    ; 2 uses
  %.pr.us = load ptr, ptr %i.a, align 8, !tbaa !19 ; 2 uses
  %.not37.us = icmp eq ptr %.pr.us, null
  br i1 %.not37.us, label %.critedge, label %.split.us

thread-pre-split:                                 ; preds = %bb.h
  %5 = add i32 %.02849, 1                         ; 2 uses
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %.not37.a = icmp eq ptr %.pr, null
  br i1 %.not37.a, label %.critedge, label %.split

.split:                                           ; preds = %bb.e, %thread-pre-split
  %.02849 = phi i32 [ %5, %thread-pre-split ], [ 0, %bb.e ] ; 2 uses
  %6 = phi ptr [ %.pr, %thread-pre-split ], [ %i.k, %bb.e ] ; 3 uses
  %7 = load i8, ptr %6, align 1, !tbaa !13
  %.not38 = icmp eq i8 %7, -1
  br i1 %.not38, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.split
  %8 = call i32 @lpValidateNext(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1)
  %.not42 = icmp eq i32 %8, 0
  br i1 %.not42, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %9 = tail call i32 %3(ptr noundef nonnull %6, i32 noundef %i.j, ptr noundef %4) #22
  %.not44 = icmp eq i32 %9, 0
  br i1 %.not44, label %.thread, label %thread-pre-split

.critedge:                                        ; preds = %.split, %thread-pre-split, %.split.us, %thread-pre-split.us
  %.us-phi = phi ptr [ %i.l, %.split.us ], [ null, %thread-pre-split.us ], [ null, %thread-pre-split ], [ %6, %.split ]
  %.us-phi50 = phi i32 [ %.02849.us, %.split.us ], [ %i.o, %thread-pre-split.us ], [ %5, %thread-pre-split ], [ %.02849, %.split ]
  %.not39 = icmp eq ptr %.us-phi, %i.f
  br i1 %.not39, label %bb.i, label %.thread

bb.i:                                             ; preds = %.critedge
  %.not40 = icmp eq i16 %i.i, -1
  %.not41 = icmp eq i32 %.us-phi50, %i.j
  %or.cond = select i1 %.not40, i1 true, i1 %.not41
  %spec.select = zext i1 %or.cond to i32
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.f, %bb.i, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %spec.select, %bb.i ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.b, %bb.c, %bb.d, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ %.2, %.thread ], [ 1, %bb.d ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @lpCompare(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef captures(address_is_null) %3, ptr noundef captures(address_is_null) %4) local_unnamed_addr #14 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13      ; 7 uses
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %.thread73, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.a to i32                      ; 6 uses
  %i.d = and i32 %i.c, 192
  %i.e = icmp eq i32 %i.d, 128
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = and i32 %i.c, 63
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.g = and i32 %i.c, 240
  %i.h = icmp eq i32 %i.g, 224
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = shl nuw nsw i32 %i.c, 8
  %i.j = and i32 %i.i, 3840
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = zext i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.a, -16
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i32, ptr %i.p, align 1
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.r = icmp sgt i8 %i.a, -1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = zext nneg i8 %i.a to i64
  br label %bb.t

bb.j:                                             ; preds = %bb.h
  %i.t = and i32 %i.c, 224
  %i.u = icmp eq i32 %i.t, 192
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i32 %i.c, 8
  %i.w = and i32 %i.v, 7936
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !13
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.w, %i.z
  %i.ab = zext nneg i32 %i.aa to i64
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  switch i8 %i.a, label %bb.q [
    i8 -15, label %bb.m
    i8 -14, label %bb.n
    i8 -13, label %bb.o
    i8 -12, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ad = load i16, ptr %i.ac, align 1
  %i.ae = zext i16 %i.ad to i64
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ag = load i16, ptr %i.af, align 1
  %i.ah = zext i16 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 16
  %i.am = or disjoint i64 %i.al, %i.ah
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ao = load i32, ptr %i.an, align 1
  %i.ap = zext i32 %i.ao to i64
  br label %bb.t

bb.p:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ar = load i64, ptr %i.aq, align 1
  br label %bb.t

bb.q:                                             ; preds = %bb.l
  %i.as = zext i8 %i.a to i64
  %i.at = or disjoint i64 %i.as, 12345678900000000
  br label %bb.t

bb.r:                                             ; preds = %bb.c, %bb.e, %bb.g
  %.sink = phi i64 [ 1, %bb.c ], [ 2, %bb.e ], [ 5, %bb.g ]
  %.061.ph.in = phi i32 [ %i.f, %bb.c ], [ %i.n, %bb.e ], [ %i.q, %bb.g ]
  %i.au = icmp eq i32 %.061.ph.in, %2
  br i1 %i.au, label %bb.s, label %.thread73

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.aw = zext i32 %2 to i64
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.av, ptr %1, i64 %i.aw)
  %i.ax = icmp eq i32 %bcmp, 0
  br label %.thread73

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.i
  %.061.i.i = phi i64 [ %i.s, %bb.i ], [ %i.ab, %bb.k ], [ %i.ae, %bb.m ], [ %i.am, %bb.n ], [ %i.ap, %bb.o ], [ %i.ar, %bb.p ], [ %i.at, %bb.q ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.i ], [ 4096, %bb.k ], [ 32768, %bb.m ], [ 8388608, %bb.n ], [ 2147483648, %bb.o ], [ -9223372036854775808, %bb.p ], [ -1, %bb.q ]
  %.059.neg.i.i = phi i64 [ 0, %bb.i ], [ -8191, %bb.k ], [ -65535, %bb.m ], [ -16777215, %bb.n ], [ -4294967295, %bb.o ], [ 1, %bb.p ], [ 0, %bb.q ]
  %.not66.i.i = icmp ult i64 %.061.i.i, %.060.i.i
  %.neg.i.i = add i64 %.061.i.i, -1
  %i.ay = add i64 %.neg.i.i, %.059.neg.i.i
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.ay ; 2 uses
  %.not23 = icmp eq ptr %4, null
  br i1 %.not23, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load i32, ptr %4, align 4, !tbaa !9
  switch i32 %i.az, label %.thread73 [
    i32 0, label %bb.v
    i32 1, label %bb.ai
  ]

bb.v:                                             ; preds = %bb.u
  %i.ba = zext i32 %2 to i64                      ; 2 uses
  %i.bb = add i32 %2, -21
  %or.cond.i = icmp ult i32 %i.bb, -20
  br i1 %or.cond.i, label %.thread69, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = icmp eq i32 %2, 1
  %i.bd = load i8, ptr %1, align 1, !tbaa !13     ; 5 uses
  br i1 %i.bc, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  switch i8 %i.bd, label %.thread73.i [
    i8 48, label %bb.y
    i8 45, label %.thread69
  ]

bb.y:                                             ; preds = %bb.x
  %.not55.i = icmp eq ptr %3, null
  br i1 %.not55.i, label %.thread, label %.critedge.sink.split.i

.thread.i:                                        ; preds = %bb.w
  %.not59.i = icmp eq i8 %i.bd, 45                ; 2 uses
  br i1 %.not59.i, label %.thread62.i, label %bb.z

.thread62.i:                                      ; preds = %.thread.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.be, align 1, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %.thread62.i, %.thread.i
  %i.bf = phi i8 [ %.pre.i, %.thread62.i ], [ %i.bd, %.thread.i ] ; 2 uses
  %.043.i = phi ptr [ %i.be, %.thread62.i ], [ %1, %.thread.i ]
  %.042.i = phi i64 [ 2, %.thread62.i ], [ 1, %.thread.i ] ; 2 uses
  %i.bg = add i8 %i.bf, -49
  %or.cond56.i = icmp ult i8 %i.bg, 9
  br i1 %or.cond56.i, label %bb.aa, label %.thread69

.thread73.i:                                      ; preds = %bb.x
  %i.bh = add i8 %i.bd, -49
  %or.cond5677.i = icmp ult i8 %i.bh, 9
  br i1 %or.cond5677.i, label %.thread90.i, label %.thread69

.thread90.i:                                      ; preds = %.thread73.i
  %narrow85.i = add nsw i8 %i.bd, -48
  %i.bi = zext nneg i8 %narrow85.i to i64
  br label %bb.ah

bb.aa:                                            ; preds = %bb.z
  %narrow.i = add nsw i8 %i.bf, -48
  %i.bj = zext nneg i8 %narrow.i to i64           ; 2 uses
  %i.bk = icmp samesign ult i64 %.042.i, %i.ba
  br i1 %i.bk, label %.lr.ph.i, label %.critedge58.i

.lr.ph.i:                                         ; preds = %bb.aa, %bb.ac
  %.14469.pn.i = phi ptr [ %.14469.i, %bb.ac ], [ %.043.i, %bb.aa ]
  %.068.i = phi i64 [ %i.bs, %bb.ac ], [ %i.bj, %bb.aa ] ; 2 uses
end_hunk_0
begin_hunk_1_@lpRandomPair:bb.a
bb.y:                                             ; preds = %lpGetValue.exit
  %i.bf = tail call ptr @lpNext(ptr noundef %0, ptr noundef nonnull %i.h) ; 11 uses
  %.not22 = icmp eq ptr %i.bf, null
  br i1 %.not22, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %bb.y
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1815) #22
  tail call void @abort() #23
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load i8, ptr %i.bf, align 1, !tbaa !13  ; 6 uses
  %i.bj = zext i8 %i.bi to i32                    ; 6 uses
  %i.bk = and i32 %i.bj, 192
  %i.bl = icmp eq i32 %i.bk, 128
  br i1 %i.bl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bm = and i32 %i.bj, 63
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %i.bn = and i32 %i.bj, 240
  %i.bo = icmp eq i32 %i.bn, 224
  br i1 %i.bo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bp = shl nuw nsw i32 %i.bj, 8
  %i.bq = and i32 %i.bp, 3840
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !13
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  %i.bv = icmp eq i8 %i.bi, -16
  br i1 %i.bv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bx = load i32, ptr %i.bw, align 1
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ae
  %i.by = icmp sgt i8 %i.bi, -1
  br i1 %i.by, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.bz = zext nneg i8 %i.bi to i64
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.ca = and i32 %i.bj, 224
  %i.cb = icmp eq i32 %i.ca, 192
  br i1 %i.cb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cc = shl nuw nsw i32 %i.bj, 8
  %i.cd = and i32 %i.cc, 7936
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !13
  %i.cg = zext i8 %i.cf to i32
  %i.ch = or disjoint i32 %i.cd, %i.cg
  %i.ci = zext nneg i32 %i.ch to i64
  br label %bb.ar

bb.ak:                                            ; preds = %bb.ai
  switch i8 %i.bi, label %bb.ap [
    i8 -15, label %bb.al
    i8 -14, label %bb.am
    i8 -13, label %bb.an
    i8 -12, label %bb.ao
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.ck = load i16, ptr %i.cj, align 1
  %i.cl = zext i16 %i.ck to i64
  br label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cn = load i16, ptr %i.cm, align 1
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bf, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 16
  %i.ct = or disjoint i64 %i.cs, %i.co
  br label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = zext i32 %i.cv to i64
  br label %bb.ar

bb.ao:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.cy = load i64, ptr %i.cx, align 1
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ak
  %i.cz = zext i8 %i.bi to i64
  %i.da = or disjoint i64 %i.cz, 12345678900000000
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ab, %bb.ad, %bb.af
  %.sink54 = phi i64 [ 1, %bb.ab ], [ 2, %bb.ad ], [ 5, %bb.af ]
  %.035.ph.in = phi i32 [ %i.bm, %bb.ab ], [ %i.bu, %bb.ad ], [ %i.bx, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.sink54
  store i32 %.035.ph.in, ptr %i.bg, align 4, !tbaa !9
  br label %lpGetValue.exit24

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.aj, %bb.ah
  %.061.i.i26 = phi i64 [ %i.bz, %bb.ah ], [ %i.ci, %bb.aj ], [ %i.cl, %bb.al ], [ %i.ct, %bb.am ], [ %i.cw, %bb.an ], [ %i.cy, %bb.ao ], [ %i.da, %bb.ap ] ; 3 uses
  %.060.i.i27 = phi i64 [ -1, %bb.ah ], [ 4096, %bb.aj ], [ 32768, %bb.al ], [ 8388608, %bb.am ], [ 2147483648, %bb.an ], [ -9223372036854775808, %bb.ao ], [ -1, %bb.ap ]
  %.059.neg.i.i28 = phi i64 [ 0, %bb.ah ], [ -8191, %bb.aj ], [ -65535, %bb.al ], [ -16777215, %bb.am ], [ -4294967295, %bb.an ], [ 1, %bb.ao ], [ 0, %bb.ap ]
  %.not66.i.i29 = icmp ult i64 %.061.i.i26, %.060.i.i27
  %.neg.i.i30 = add i64 %.061.i.i26, -1
  %i.dc = add i64 %.neg.i.i30, %.059.neg.i.i28
  %.062.i.i31 = select i1 %.not66.i.i29, i64 %.061.i.i26, i64 %i.dc
  store i64 %.062.i.i31, ptr %i.bh, align 8, !tbaa !24
  br label %lpGetValue.exit24

lpGetValue.exit24:                                ; preds = %bb.aq, %bb.ar
  %.0.i.i3246 = phi ptr [ %i.db, %bb.aq ], [ null, %bb.ar ]
  store ptr %.0.i.i3246, ptr %3, align 8, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %lpGetValue.exit, %lpGetValue.exit24
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @lpRandomEntries(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = zext i32 %1 to i64                       ; 4 uses
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = tail call ptr @zmalloc_usable(i64 noundef %i.e, ptr noundef null) #22 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i16, ptr %i.g, align 1              ; 2 uses
  %i.i = zext i16 %i.h to i32
  %.not.i = icmp eq i16 %i.h, -1
  br i1 %.not.i, label %bb.b, label %lpLength.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = icmp eq i8 %i.k, -1
  br i1 %i.l, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %0, align 1
  %i.n = zext i32 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %i.c, align 8, !tbaa !19
  %i.o = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.c, i64 noundef %i.n)
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %.lr.ph.preheader.i, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.p = add i32 %.01520.i, 1                     ; 4 uses
  %i.q = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.q, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.r = icmp ult i32 %i.p, 65535
  br i1 %i.r, label %._crit_edge.thread.i, label %.preheader52

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.015.lcssa25.i = phi i32 [ %i.p, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.s = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.s, ptr %i.g, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.a, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.i, %bb.a ], [ %.015.lcssa25.i, %._crit_edge.thread.i ] ; 2 uses
  %.not = icmp eq i32 %.016.in.i, 0
  br i1 %.not, label %bb.e, label %.preheader52, !prof !47

.preheader52:                                     ; preds = %._crit_edge.i, %lpLength.exit
  %.016.in.i101 = phi i32 [ %.016.in.i, %lpLength.exit ], [ %i.p, %._crit_edge.i ]
  %.not72 = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not72, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %lpLength.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1828) #22
  tail call void @abort() #23
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader52
  tail call void @qsort(ptr noundef %i.f, i64 noundef %i.d, i64 noundef 8, ptr noundef nonnull @uintCompare) #22
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 6 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = icmp eq i8 %i.u, -1
  br i1 %i.v, label %lpFirst.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = load i32, ptr %0, align 1
  %i.x = zext i32 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8, !tbaa !19
  %i.y = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.x)
  %.not.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i, label %bb.g, label %lpAssertValidEntry.exit.i, !prof !18

bb.g:                                             ; preds = %bb.f
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

lpAssertValidEntry.exit.i:                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %lpFirst.exit

lpFirst.exit:                                     ; preds = %._crit_edge, %lpAssertValidEntry.exit.i
  %.0.i = phi ptr [ %i.t, %lpAssertValidEntry.exit.i ], [ null, %._crit_edge ]
  br i1 %.not72, label %._crit_edge71, label %.preheader

.lr.ph:                                           ; preds = %.preheader52, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader52 ] ; 3 uses
  %i.z = tail call i32 @rand() #22
  %i.aa = urem i32 %i.z, %.016.in.i101
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

.preheader:                                       ; preds = %lpFirst.exit, %lpGetValue.exit
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 2 uses
  %.03070 = phi ptr [ %.1.lcssa, %lpGetValue.exit ], [ %.0.i, %lpFirst.exit ] ; 2 uses
  %.03268 = phi i32 [ %.133.lcssa, %lpGetValue.exit ], [ 0, %lpFirst.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv77 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48 ; 3 uses
  %i.ag = icmp ult i32 %.03268, %i.af
  br i1 %i.ag, label %.lr.ph65, label %lpGetValue.exit

._crit_edge71:                                    ; preds = %lpGetValue.exit, %lpFirst.exit
  tail call void @zfree(ptr noundef %i.f) #22
  ret void

.lr.ph65:                                         ; preds = %.preheader, %lpNext.exit
  %.163 = phi ptr [ %.0.i39, %lpNext.exit ], [ %.03070, %.preheader ] ; 5 uses
  %.13362 = phi i32 [ %i.eq, %lpNext.exit ], [ %.03268, %.preheader ]
  %.not.i36 = icmp eq ptr %.163, null
  br i1 %.not.i36, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %.lr.ph65
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 521) #22
  tail call void @abort() #23
  unreachable

bb.i:                                             ; preds = %.lr.ph65
  %i.ah = load i8, ptr %.163, align 1, !tbaa !13  ; 4 uses
  %i.ai = zext i8 %i.ah to i32                    ; 5 uses
  %i.aj = icmp sgt i8 %i.ah, -1
  br i1 %i.aj, label %lpSkip.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = and i32 %i.ai, 192
  %i.al = icmp eq i32 %i.ak, 128
  br i1 %i.al, label %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, label %bb.k

lpCurrentEncodedSizeUnsafe.exit.thread.i.i:       ; preds = %bb.j
  %i.am = and i32 %i.ai, 63
  %i.an = add nuw nsw i32 %i.am, 1
  br label %lpSkip.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ao = and i32 %i.ai, 224
  %i.ap = icmp eq i32 %i.ao, 192
  br i1 %i.ap, label %lpSkip.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %switch.tableidx = add nsw i8 %i.ah, 15         ; 2 uses
  %i.aq = icmp ult i8 %switch.tableidx, 4
  br i1 %i.aq, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = and i32 %i.ai, 240
  %i.as = icmp eq i32 %i.ar, 224
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = shl nuw nsw i32 %i.ai, 8
  %i.au = and i32 %i.at, 3840
  %i.av = getelementptr inbounds nuw i8, ptr %.163, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, 2
  %i.az = add nuw nsw i32 %i.ay, %i.ax
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.o:                                             ; preds = %bb.m
  switch i8 %i.ah, label %bb.q [
    i8 -16, label %bb.p
    i8 -1, label %lpSkip.exit.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.163, i64 1
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = add i32 %i.bb, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.q:                                             ; preds = %bb.o
  br label %lpSkip.exit.i

lpCurrentEncodedSizeUnsafe.exit.i.i:              ; preds = %bb.p, %bb.n
  %.0.i.i.i = phi i32 [ %i.az, %bb.n ], [ %i.bc, %bb.p ] ; 8 uses
  %i.bd = icmp ult i32 %.0.i.i.i, 128
  br i1 %i.bd, label %lpSkip.exit.i, label %bb.r

bb.r:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit.i.i
  %i.be = icmp ult i32 %.0.i.i.i, 16383
  br i1 %i.be, label %lpSkip.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = icmp ult i32 %.0.i.i.i, 2097151
  br i1 %i.bf, label %lpSkip.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = icmp ult i32 %.0.i.i.i, 268435455
  %..i.i.i = select i1 %i.bg, i64 4, i64 5
  br label %lpSkip.exit.i

switch.lookup:                                    ; preds = %bb.l
  %i.bh = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.bh
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit.i

lpSkip.exit.i:                                    ; preds = %switch.lookup, %bb.t, %bb.s, %bb.r, %lpCurrentEncodedSizeUnsafe.exit.i.i, %bb.q, %bb.o, %bb.k, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, %bb.i
  %.shrunk.i.i = phi i32 [ %.0.i.i.i, %bb.s ], [ %.0.i.i.i, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ %.0.i.i.i, %bb.r ], [ %.0.i.i.i, %bb.t ], [ 1, %bb.o ], [ %switch.load, %switch.lookup ], [ 1, %bb.i ], [ 0, %bb.q ], [ %i.an, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 2, %bb.k ]
  %.0.i5.i.i = phi i64 [ 3, %bb.s ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ 2, %bb.r ], [ %..i.i.i, %bb.t ], [ 1, %bb.o ], [ 1, %switch.lookup ], [ 1, %bb.i ], [ 1, %bb.q ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 1, %bb.k ]
  %i.bi = zext i32 %.shrunk.i.i to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.163, i64 %.0.i5.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi ; 8 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13  ; 7 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %lpNext.exit, label %bb.u

bb.u:                                             ; preds = %lpSkip.exit.i
  %i.bn = icmp ult ptr %i.bk, %i.t
  br i1 %i.bn, label %lpDecodeBacklen.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = load i32, ptr %0, align 1
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 3 uses
  %i.bs = icmp ugt ptr %i.bk, %i.br
  br i1 %i.bs, label %lpDecodeBacklen.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = zext i8 %i.bl to i32                    ; 6 uses
  %i.bu = icmp sgt i8 %i.bl, -1                   ; 2 uses
  %i.bv = and i32 %i.bt, 192
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
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i39 = phi ptr [ null, %lpSkip.exit.i ], [ %i.bk, %lpDecodeBacklen.exit ] ; 2 uses
  %i.eq = add nuw i32 %.13362, 1                  ; 2 uses
  %exitcond76.not = icmp eq i32 %i.eq, %i.af
  br i1 %exitcond76.not, label %lpGetValue.exit, label %.lr.ph65, !llvm.loop !52

lpGetValue.exit:                                  ; preds = %lpNext.exit, %.preheader
  %.133.lcssa = phi i32 [ %.03268, %.preheader ], [ %i.af, %lpNext.exit ]
  %.1.lcssa = phi ptr [ %.03070, %.preheader ], [ %.0.i39, %lpNext.exit ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.et = call ptr @lpGet(ptr noundef %.1.lcssa, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  %.not.i40 = icmp eq ptr %i.et, null             ; 2 uses
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %spec.select = select i1 %.not.i40, i32 0, i32 %i.ev
  %spec.select51 = select i1 %.not.i40, i64 %i.eu, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ew = sext i32 %i.es to i64
  %i.ex = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ew ; 3 uses
  store ptr %i.et, ptr %i.ex, align 8, !tbaa !33
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 %spec.select, ptr %i.ey, align 8, !tbaa !38
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %spec.select51, ptr %i.ez, align 8, !tbaa !37
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %i.d
  br i1 %exitcond81.not, label %._crit_edge71, label %.preheader, !llvm.loop !53
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

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
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1867) #22
  tail call void @abort() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i32 %1 to i64                       ; 5 uses
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @zmalloc_usable(i64 noundef %i.d, ptr noundef null) #22 ; 6 uses
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
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
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
  tail call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1878) #22
  tail call void @abort() #23
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @qsort(ptr noundef %i.e, i64 noundef %i.c, i64 noundef 8, ptr noundef nonnull @uintCompare) #22
  %i.t = load i32, ptr %i.e, align 4, !tbaa !54   ; 2 uses
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
  %i.ab = tail call i32 @rand() #22
  %i.ac = urem i32 %i.ab, %i.s
  %i.ad = mul i32 %i.ac, %4
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = trunc nuw i64 %indvars.iv to i32
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !57

.loopexit:                                        ; preds = %lpNext.exit
  %i.ah = icmp ne ptr %.0.i, null
  %i.ai = icmp ult i32 %.151.lcssa, %1
  %i.aj = and i1 %i.ai, %i.ah
  br i1 %i.aj, label %bb.h, label %._crit_edge133, !llvm.loop !58

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
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = shl nuw nsw i32 %i.al, 8
  %i.bi = and i32 %i.bh, 7936
  %i.bj = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl
  %i.bn = zext nneg i32 %i.bm to i64
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  switch i8 %i.ak, label %bb.w [
    i8 -15, label %bb.s
    i8 -14, label %bb.t
    i8 -13, label %bb.u
    i8 -12, label %bb.v
  ]

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bp = load i16, ptr %i.bo, align 1
  %i.bq = zext i16 %i.bp to i64
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.br = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.bs = load i16, ptr %i.br, align 1
  %i.bt = zext i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.049129, i64 3
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 16
  %i.by = or disjoint i64 %i.bx, %i.bt
  br label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %.049129, i64 1
  %i.cd = load i64, ptr %i.cc, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.ce = zext i8 %i.ak to i64
  %i.cf = or disjoint i64 %i.ce, 12345678900000000
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.o
  %.061.i.i = phi i64 [ %i.be, %bb.o ], [ %i.bn, %bb.q ], [ %i.bq, %bb.s ], [ %i.by, %bb.t ], [ %i.cb, %bb.u ], [ %i.cd, %bb.v ], [ %i.cf, %bb.w ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.o ], [ 4096, %bb.q ], [ 32768, %bb.s ], [ 8388608, %bb.t ], [ 2147483648, %bb.u ], [ -9223372036854775808, %bb.v ], [ -1, %bb.w ]
  %.059.neg.i.i = phi i64 [ 0, %bb.o ], [ -8191, %bb.q ], [ -65535, %bb.s ], [ -16777215, %bb.t ], [ -4294967295, %bb.u ], [ 1, %bb.v ], [ 0, %bb.w ]
  %.not66.i.i = icmp ult i64 %.061.i.i, %.060.i.i
  %.neg.i.i = add i64 %.061.i.i, -1
  %i.cg = add i64 %.neg.i.i, %.059.neg.i.i
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.cg
  br label %lpGetValue.exit

lpGetValue.exit:                                  ; preds = %bb.m, %bb.k, %bb.i, %bb.x
  %.0.i.i97 = phi ptr [ null, %bb.x ], [ %i.bc, %bb.m ], [ %i.ay, %bb.k ], [ %i.ap, %bb.i ] ; 2 uses
  %.190 = phi i32 [ %.089122, %bb.x ], [ %i.bb, %bb.m ], [ %i.ax, %bb.k ], [ %i.ao, %bb.i ] ; 3 uses
  %.186 = phi i64 [ %.062.i.i, %bb.x ], [ %.085124, %bb.m ], [ %.085124, %bb.k ], [ %.085124, %bb.i ] ; 3 uses
  %i.ch = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.049129) ; 14 uses
  %.not59 = icmp eq ptr %i.ch, null
  br i1 %.not59, label %bb.y, label %bb.z, !prof !18

bb.y:                                             ; preds = %lpGetValue.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1896) #22
  tail call void @abort() #23
  unreachable

bb.z:                                             ; preds = %lpGetValue.exit
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13  ; 6 uses
  %i.cj = zext i8 %i.ci to i32                    ; 6 uses
  %i.ck = and i32 %i.cj, 192
  %i.cl = icmp eq i32 %i.ck, 128
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = and i32 %i.cj, 63
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  br label %lpGetValue.exit63

bb.ab:                                            ; preds = %bb.z
  %i.co = and i32 %i.cj, 240
  %i.cp = icmp eq i32 %i.co, 224
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = shl nuw nsw i32 %i.cj, 8
  %i.cr = and i32 %i.cq, 3840
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cu = zext i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cr, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  br label %lpGetValue.exit63

bb.ad:                                            ; preds = %bb.ab
  %i.cx = icmp eq i8 %i.ci, -16
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cz = load i32, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ch, i64 5
  br label %lpGetValue.exit63

bb.af:                                            ; preds = %bb.ad
  %i.db = icmp sgt i8 %i.ci, -1
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = zext nneg i8 %i.ci to i64
  br label %bb.ap

bb.ah:                                            ; preds = %bb.af
  %i.dd = and i32 %i.cj, 224
  %i.de = icmp eq i32 %i.dd, 192
  br i1 %i.de, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.df = shl nuw nsw i32 %i.cj, 8
  %i.dg = and i32 %i.df, 7936
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i32
  %i.dk = or disjoint i32 %i.dg, %i.dj
  %i.dl = zext nneg i32 %i.dk to i64
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  switch i8 %i.ci, label %bb.ao [
    i8 -15, label %bb.ak
    i8 -14, label %bb.al
    i8 -13, label %bb.am
    i8 -12, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.dn = load i16, ptr %i.dm, align 1
  %i.do = zext i16 %i.dn to i64
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.dq = load i16, ptr %i.dp, align 1
  %i.dr = zext i16 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ch, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !13
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 16
  %i.dw = or disjoint i64 %i.dv, %i.dr
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.dy = load i32, ptr %i.dx, align 1
  %i.dz = zext i32 %i.dy to i64
  br label %bb.ap

bb.an:                                            ; preds = %bb.aj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.eb = load i64, ptr %i.ea, align 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.ec = zext i8 %i.ci to i64
  %i.ed = or disjoint i64 %i.ec, 12345678900000000
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.ai, %bb.ag
  %.061.i.i67 = phi i64 [ %i.dc, %bb.ag ], [ %i.dl, %bb.ai ], [ %i.do, %bb.ak ], [ %i.dw, %bb.al ], [ %i.dz, %bb.am ], [ %i.eb, %bb.an ], [ %i.ed, %bb.ao ] ; 3 uses
  %.060.i.i68 = phi i64 [ -1, %bb.ag ], [ 4096, %bb.ai ], [ 32768, %bb.ak ], [ 8388608, %bb.al ], [ 2147483648, %bb.am ], [ -9223372036854775808, %bb.an ], [ -1, %bb.ao ]
  %.059.neg.i.i69 = phi i64 [ 0, %bb.ag ], [ -8191, %bb.ai ], [ -65535, %bb.ak ], [ -16777215, %bb.al ], [ -4294967295, %bb.am ], [ 1, %bb.an ], [ 0, %bb.ao ]
  %.not66.i.i70 = icmp ult i64 %.061.i.i67, %.060.i.i68
  %.neg.i.i71 = add i64 %.061.i.i67, -1
  %i.ee = add i64 %.neg.i.i71, %.059.neg.i.i69
  %.062.i.i72 = select i1 %.not66.i.i70, i64 %.061.i.i67, i64 %i.ee
  br label %lpGetValue.exit63

lpGetValue.exit63:                                ; preds = %bb.ae, %bb.ac, %bb.aa, %bb.ap
  %.0.i.i73103 = phi ptr [ null, %bb.ap ], [ %i.da, %bb.ae ], [ %i.cw, %bb.ac ], [ %i.cn, %bb.aa ]
  %.188 = phi i32 [ %.087123, %bb.ap ], [ %i.cz, %bb.ae ], [ %i.cv, %bb.ac ], [ %i.cm, %bb.aa ] ; 2 uses
  %.184 = phi i64 [ %.062.i.i72, %bb.ap ], [ %.083125, %bb.ae ], [ %.083125, %bb.ac ], [ %.083125, %bb.aa ] ; 2 uses
  %i.ef = icmp ult i32 %.050128, %1
  br i1 %i.ef, label %.lr.ph113, label %.lr.ph120.preheader

.lr.ph113:                                        ; preds = %lpGetValue.exit63
  %i.eg = zext i32 %.050128 to i64                ; 2 uses
  br i1 %.not60, label %.lr.ph113.split.us, label %.lr.ph113.split

.lr.ph113.split.us:                               ; preds = %.lr.ph113, %bb.aq
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %bb.aq ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv142 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !54
  %i.ej = icmp eq i32 %.052126, %i.ei
  br i1 %i.ej, label %bb.aq, label %.lr.ph120.preheader.loopexit.split.loop.exit

bb.aq:                                            ; preds = %.lr.ph113.split.us
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !56
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [24 x i8], ptr %2, i64 %i.em ; 3 uses
  store ptr %.0.i.i97, ptr %i.en, align 8, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %.190, ptr %i.eo, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %.186, ptr %i.ep, align 8, !tbaa !37
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next143, %i.c
  br i1 %exitcond145.not, label %.lr.ph120.preheader, label %.lr.ph113.split.us, !llvm.loop !59

.lr.ph113.split:                                  ; preds = %.lr.ph113, %bb.ar
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.ar ], [ %i.eg, %.lr.ph113 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv138 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !54
  %i.es = icmp eq i32 %.052126, %i.er
  br i1 %i.es, label %bb.ar, label %.lr.ph120.preheader.loopexit170.split.loop.exit

bb.ar:                                            ; preds = %.lr.ph113.split
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !56
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = getelementptr inbounds [24 x i8], ptr %2, i64 %i.ev ; 3 uses
  store ptr %.0.i.i97, ptr %i.ew, align 8, !tbaa !33
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i32 %.190, ptr %i.ex, align 8, !tbaa !38
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i64 %.186, ptr %i.ey, align 8, !tbaa !37
  %i.ez = getelementptr inbounds [24 x i8], ptr %3, i64 %i.ev ; 3 uses
  store ptr %.0.i.i73103, ptr %i.ez, align 8, !tbaa !33
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %.188, ptr %i.fa, align 8, !tbaa !38
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 %.184, ptr %i.fb, align 8, !tbaa !37
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, %i.c
  br i1 %exitcond141.not, label %.lr.ph120.preheader, label %.lr.ph113.split, !llvm.loop !59

.lr.ph120.preheader.loopexit.split.loop.exit:     ; preds = %.lr.ph113.split.us
  %i.fc = trunc nuw i64 %indvars.iv142 to i32
  br label %.lr.ph120.preheader

.lr.ph120.preheader.loopexit170.split.loop.exit:  ; preds = %.lr.ph113.split
  %i.fd = trunc nuw i64 %indvars.iv138 to i32
  br label %.lr.ph120.preheader

.lr.ph120.preheader:                              ; preds = %bb.ar, %bb.aq, %.lr.ph120.preheader.loopexit170.split.loop.exit, %.lr.ph120.preheader.loopexit.split.loop.exit, %lpGetValue.exit63
  %.151.lcssa = phi i32 [ %.050128, %lpGetValue.exit63 ], [ %1, %bb.aq ], [ %i.fc, %.lr.ph120.preheader.loopexit.split.loop.exit ], [ %i.fd, %.lr.ph120.preheader.loopexit170.split.loop.exit ], [ %1, %bb.ar ] ; 2 uses
  %i.fe = add i32 %.052126, %4
  br label %.lr.ph120

.lr.ph120:                                        ; preds = %.lr.ph120.preheader, %lpNext.exit
  %.0119 = phi i32 [ %i.jo, %lpNext.exit ], [ 0, %.lr.ph120.preheader ] ; 2 uses
  %.1117 = phi ptr [ %.0.i, %lpNext.exit ], [ %i.ch, %.lr.ph120.preheader ] ; 5 uses
  %.not.i64 = icmp eq ptr %.1117, null
  br i1 %.not.i64, label %bb.as, label %bb.at, !prof !18

bb.as:                                            ; preds = %.lr.ph120
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 521) #22
  tail call void @abort() #23
  unreachable

bb.at:                                            ; preds = %.lr.ph120
  %i.ff = load i8, ptr %.1117, align 1, !tbaa !13 ; 4 uses
  %i.fg = zext i8 %i.ff to i32                    ; 5 uses
  %i.fh = icmp sgt i8 %i.ff, -1
  br i1 %i.fh, label %lpSkip.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = and i32 %i.fg, 192
  %i.fj = icmp eq i32 %i.fi, 128
  br i1 %i.fj, label %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, label %bb.av

lpCurrentEncodedSizeUnsafe.exit.thread.i.i:       ; preds = %bb.au
  %i.fk = and i32 %i.fg, 63
  %i.fl = add nuw nsw i32 %i.fk, 1
  br label %lpSkip.exit.i

bb.av:                                            ; preds = %bb.au
  %i.fm = and i32 %i.fg, 224
  %i.fn = icmp eq i32 %i.fm, 192
  br i1 %i.fn, label %lpSkip.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %switch.tableidx = add nsw i8 %i.ff, 15         ; 2 uses
  %i.fo = icmp ult i8 %switch.tableidx, 4
  br i1 %i.fo, label %switch.lookup, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fp = and i32 %i.fg, 240
  %i.fq = icmp eq i32 %i.fp, 224
  br i1 %i.fq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fr = shl nuw nsw i32 %i.fg, 8
  %i.fs = and i32 %i.fr, 3840
  %i.ft = getelementptr inbounds nuw i8, ptr %.1117, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !13
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.fs, 2
  %i.fx = add nuw nsw i32 %i.fw, %i.fv
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.az:                                            ; preds = %bb.ax
  switch i8 %i.ff, label %bb.bb [
    i8 -16, label %bb.ba
    i8 -1, label %lpSkip.exit.i
  ]

bb.ba:                                            ; preds = %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %.1117, i64 1
  %i.fz = load i32, ptr %i.fy, align 1
  %i.ga = add i32 %i.fz, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i.i

bb.bb:                                            ; preds = %bb.az
  br label %lpSkip.exit.i

lpCurrentEncodedSizeUnsafe.exit.i.i:              ; preds = %bb.ba, %bb.ay
  %.0.i.i.i = phi i32 [ %i.fx, %bb.ay ], [ %i.ga, %bb.ba ] ; 8 uses
  %i.gb = icmp ult i32 %.0.i.i.i, 128
  br i1 %i.gb, label %lpSkip.exit.i, label %bb.bc

bb.bc:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i.i
  %i.gc = icmp ult i32 %.0.i.i.i, 16383
  br i1 %i.gc, label %lpSkip.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = icmp ult i32 %.0.i.i.i, 2097151
  br i1 %i.gd, label %lpSkip.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ge = icmp ult i32 %.0.i.i.i, 268435455
  %..i.i.i = select i1 %i.ge, i64 4, i64 5
  br label %lpSkip.exit.i

switch.lookup:                                    ; preds = %bb.aw
  %i.gf = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.gf
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lpSkip.exit.i

lpSkip.exit.i:                                    ; preds = %switch.lookup, %bb.be, %bb.bd, %bb.bc, %lpCurrentEncodedSizeUnsafe.exit.i.i, %bb.bb, %bb.az, %bb.av, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i, %bb.at
  %.shrunk.i.i = phi i32 [ %.0.i.i.i, %bb.bd ], [ %.0.i.i.i, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ %.0.i.i.i, %bb.bc ], [ %.0.i.i.i, %bb.be ], [ 1, %bb.az ], [ %switch.load, %switch.lookup ], [ 1, %bb.at ], [ 0, %bb.bb ], [ %i.fl, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 2, %bb.av ]
  %.0.i5.i.i = phi i64 [ 3, %bb.bd ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i.i ], [ 2, %bb.bc ], [ %..i.i.i, %bb.be ], [ 1, %bb.az ], [ 1, %switch.lookup ], [ 1, %bb.at ], [ 1, %bb.bb ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i.i ], [ 1, %bb.av ]
  %i.gg = zext i32 %.shrunk.i.i to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %.1117, i64 %.0.i5.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gg ; 8 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !13  ; 7 uses
  %i.gk = icmp eq i8 %i.gj, -1
  br i1 %i.gk, label %lpNext.exit, label %bb.bf

bb.bf:                                            ; preds = %lpSkip.exit.i
  %i.gl = icmp ult ptr %i.gi, %i.z
  br i1 %i.gl, label %lpDecodeBacklen.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gm = load i32, ptr %0, align 1
  %i.gn = zext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -1 ; 3 uses
  %i.gq = icmp ugt ptr %i.gi, %i.gp
  br i1 %i.gq, label %lpDecodeBacklen.exit.thread, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gr = zext i8 %i.gj to i32                    ; 6 uses
  %i.gs = icmp sgt i8 %i.gj, -1                   ; 2 uses
  %i.gt = and i32 %i.gr, 192
  %i.gu = icmp eq i32 %i.gt, 128                  ; 2 uses
  %i.gv = and i32 %i.gr, 224
  %i.gw = icmp eq i32 %i.gv, 192                  ; 2 uses
  %.off.i.i = add i8 %i.gj, 15
  %switch.i.i = icmp ult i8 %.off.i.i, 4
  %i.gx = or i1 %switch.i.i, %i.gu
  %i.gy = or i1 %i.gs, %i.gx
  %or.cond15.i.i = or i1 %i.gw, %i.gy
  br i1 %or.cond15.i.i, label %select.unfold.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gz = and i32 %i.gr, 240
  %i.ha = icmp eq i32 %i.gz, 224
  br i1 %i.ha, label %select.unfold.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %switch.selectcmp16.i.i = icmp eq i8 %i.gj, -16
  br i1 %switch.selectcmp16.i.i, label %select.unfold.i, label %lpDecodeBacklen.exit.thread

select.unfold.i:                                  ; preds = %bb.bj, %bb.bi, %bb.bh
  %.0.i.ph.i = phi i64 [ 1, %bb.bh ], [ 2, %bb.bi ], [ 5, %bb.bj ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0.i.ph.i ; 2 uses
  %i.hc = icmp ult ptr %i.hb, %i.z
  %i.hd = icmp ugt ptr %i.hb, %i.gp
  %or.cond.i = or i1 %i.hc, %i.hd
  br i1 %or.cond.i, label %lpDecodeBacklen.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %select.unfold.i
  br i1 %i.gs, label %lpEncodeBacklenBytes.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.gu, label %lpCurrentEncodedSizeUnsafe.exit.thread.i, label %bb.bm

lpCurrentEncodedSizeUnsafe.exit.thread.i:         ; preds = %bb.bl
  %i.he = and i32 %i.gr, 63
  %i.hf = add nuw nsw i32 %i.he, 1
  br label %lpEncodeBacklenBytes.exit.i

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.gw, label %lpEncodeBacklenBytes.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %switch.tableidx179 = add nsw i8 %i.gj, 15      ; 2 uses
  %i.hg = icmp ult i8 %switch.tableidx179, 4
  br i1 %i.hg, label %switch.lookup180, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hh = and i32 %i.gr, 240
  %i.hi = icmp eq i32 %i.hh, 224
  br i1 %i.hi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hj = shl nuw nsw i32 %i.gr, 8
  %i.hk = and i32 %i.hj, 3840
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !13
  %i.hn = zext i8 %i.hm to i32
  %i.ho = or disjoint i32 %i.hk, 2
  %i.hp = add nuw nsw i32 %i.ho, %i.hn
  br label %lpCurrentEncodedSizeUnsafe.exit.i

bb.bq:                                            ; preds = %bb.bo
  %cond.i = icmp eq i8 %i.gj, -16
  br i1 %cond.i, label %bb.br, label %lpEncodeBacklenBytes.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.hr = load i32, ptr %i.hq, align 1
  %i.hs = add i32 %i.hr, 5
  br label %lpCurrentEncodedSizeUnsafe.exit.i

lpCurrentEncodedSizeUnsafe.exit.i:                ; preds = %bb.br, %bb.bp
  %.0.i46.i = phi i32 [ %i.hp, %bb.bp ], [ %i.hs, %bb.br ] ; 8 uses
  %i.ht = icmp ult i32 %.0.i46.i, 128
  br i1 %i.ht, label %lpEncodeBacklenBytes.exit.i, label %bb.bs

bb.bs:                                            ; preds = %lpCurrentEncodedSizeUnsafe.exit.i
  %i.hu = icmp ult i32 %.0.i46.i, 16383
  br i1 %i.hu, label %lpEncodeBacklenBytes.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hv = icmp ult i32 %.0.i46.i, 2097151
  br i1 %i.hv, label %lpEncodeBacklenBytes.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hw = icmp ult i32 %.0.i46.i, 268435455
  %..i.i = select i1 %i.hw, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit.i

switch.lookup180:                                 ; preds = %bb.bn
  %i.hx = zext nneg i8 %switch.tableidx179 to i64
  %switch.gep181 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.lpRandomPairs.5, i64 %i.hx
  %switch.load182 = load i32, ptr %switch.gep181, align 4
  br label %lpEncodeBacklenBytes.exit.i

lpEncodeBacklenBytes.exit.i:                      ; preds = %switch.lookup180, %bb.bu, %bb.bt, %bb.bs, %lpCurrentEncodedSizeUnsafe.exit.i, %bb.bq, %bb.bm, %lpCurrentEncodedSizeUnsafe.exit.thread.i, %bb.bk
  %.shrunk.i = phi i32 [ %.0.i46.i, %bb.bt ], [ %.0.i46.i, %lpCurrentEncodedSizeUnsafe.exit.i ], [ %.0.i46.i, %bb.bs ], [ %.0.i46.i, %bb.bu ], [ 1, %bb.bk ], [ %switch.load182, %switch.lookup180 ], [ 2, %bb.bm ], [ 0, %bb.bq ], [ %i.hf, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %.0.i47.i = phi i64 [ 3, %bb.bt ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.i ], [ 2, %bb.bs ], [ %..i.i, %bb.bu ], [ 1, %bb.bk ], [ 1, %switch.lookup180 ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread.i ]
  %i.hy = zext i32 %.shrunk.i to i64              ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gi, i64 %.0.i47.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hy ; 7 uses
  %i.ib = icmp ult ptr %i.ia, %i.z
  %i.ic = icmp ugt ptr %i.ia, %i.gp
  %or.cond45.i = or i1 %i.ib, %i.ic
  br i1 %or.cond45.i, label %lpDecodeBacklen.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %lpEncodeBacklenBytes.exit.i
  %i.id = getelementptr inbounds i8, ptr %i.ia, i64 -1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !13  ; 3 uses
  %.not.i76 = icmp sgt i8 %i.ie, -1
  br i1 %.not.i76, label %bb.bw, label %bb.bx, !prof !22

bb.bw:                                            ; preds = %bb.bv
  %i.if = zext nneg i8 %i.ie to i64
  br label %lpDecodeBacklen.exit

bb.bx:                                            ; preds = %bb.bv
  %i.ig = and i8 %i.ie, 127
  %i.ih = zext nneg i8 %i.ig to i64               ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.ia, i64 -2
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !13  ; 3 uses
  %.not21.i = icmp sgt i8 %i.ij, -1
  br i1 %.not21.i, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ik = zext nneg i8 %i.ij to i64
  %i.il = shl nuw nsw i64 %i.ik, 7
  %i.im = or disjoint i64 %i.il, %i.ih
  br label %lpDecodeBacklen.exit

bb.bz:                                            ; preds = %bb.bx
  %i.in = and i8 %i.ij, 127
  %i.io = zext nneg i8 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 7
  %i.iq = or disjoint i64 %i.ip, %i.ih            ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.ia, i64 -3
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !13  ; 3 uses
  %.not22.i = icmp sgt i8 %i.is, -1
  br i1 %.not22.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.it = zext nneg i8 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 14
  %i.iv = or disjoint i64 %i.iu, %i.iq
  br label %lpDecodeBacklen.exit

bb.cb:                                            ; preds = %bb.bz
  %i.iw = and i8 %i.is, 127
  %i.ix = zext nneg i8 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 14
  %i.iz = or disjoint i64 %i.iy, %i.iq            ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %i.ia, i64 -4
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !13  ; 3 uses
  %.not23.i = icmp sgt i8 %i.jb, -1
  br i1 %.not23.i, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.jc = zext nneg i8 %i.jb to i64
  %i.jd = shl nuw nsw i64 %i.jc, 21
  %i.je = or disjoint i64 %i.jd, %i.iz
  br label %lpDecodeBacklen.exit

bb.cd:                                            ; preds = %bb.cb
  %i.jf = getelementptr inbounds i8, ptr %i.ia, i64 -5
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !13  ; 2 uses
  %.not24.i = icmp sgt i8 %i.jg, -1
  br i1 %.not24.i, label %bb.ce, label %lpDecodeBacklen.exit.thread

bb.ce:                                            ; preds = %bb.cd
  %i.jh = and i8 %i.jb, 127
  %i.ji = zext nneg i8 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 21
  %i.jk = zext nneg i8 %i.jg to i64
  %i.jl = shl nuw nsw i64 %i.jk, 28
  %i.jm = or disjoint i64 %i.jl, %i.jj
  %i.jn = or disjoint i64 %i.jm, %i.iz
  br label %lpDecodeBacklen.exit

lpDecodeBacklen.exit:                             ; preds = %bb.bw, %bb.by, %bb.ca, %bb.cc, %bb.ce
  %.0.i77 = phi i64 [ %i.if, %bb.bw ], [ %i.im, %bb.by ], [ %i.jn, %bb.ce ], [ %i.je, %bb.cc ], [ %i.iv, %bb.ca ]
  %.not44.i = icmp eq i64 %.0.i77, %i.hy
  br i1 %.not44.i, label %lpNext.exit, label %lpDecodeBacklen.exit.thread

lpDecodeBacklen.exit.thread:                      ; preds = %bb.cd, %bb.bj, %bb.bf, %bb.bg, %lpDecodeBacklen.exit, %select.unfold.i, %lpEncodeBacklenBytes.exit.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

lpNext.exit:                                      ; preds = %lpDecodeBacklen.exit, %lpSkip.exit.i
  %.0.i = phi ptr [ null, %lpSkip.exit.i ], [ %i.gi, %lpDecodeBacklen.exit ] ; 3 uses
  %i.jo = add nuw nsw i32 %.0119, 1
  %exitcond146.not = icmp eq i32 %.0119, %i.aa
  br i1 %exitcond146.not, label %.loopexit, label %.lr.ph120, !llvm.loop !60

._crit_edge133:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @zfree(ptr noundef nonnull %i.e) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lpRandomPairsUnique(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = icmp sgt i32 %4, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1927) #22
  tail call void @abort() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 1              ; 2 uses
  %i.g = zext i16 %i.f to i32
  %.not.i = icmp eq i16 %i.f, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %0, align 1
  %i.l = zext i32 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8, !tbaa !19
  %i.m = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.l)
  %.not.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.o, %.lr.ph.i ], [ %i.h, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.n, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.n = add i32 %.01520.i, 1                     ; 4 uses
  %i.o = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.o, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.p = icmp ult i32 %i.n, 65535
  br i1 %i.p, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.n, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.q = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.q, ptr %i.e, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.g, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.n, %._crit_edge.i ]
  %i.r = udiv i32 %.016.in.i, %4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.r) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = icmp eq i8 %i.t, -1
  br i1 %i.u, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %lpLength.exit
  %i.v = load i32, ptr %0, align 1
  %i.w = zext i32 %i.v to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.s, ptr %i.a, align 8, !tbaa !19
  %i.x = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.w)
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %bb.h, label %lpFirst.exit, !prof !18

bb.h:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

lpFirst.exit:                                     ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not96 = icmp eq i32 %spec.select, 0
  br i1 %.not96, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %lpFirst.exit
  %.not40 = icmp eq ptr %3, null
  %i.y = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.au
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.au ] ; 3 uses
  %.084 = phi i32 [ %spec.select, %.lr.ph ], [ %i.ed, %bb.au ] ; 2 uses
  %.03282 = phi ptr [ %i.s, %.lr.ph ], [ %i.ec, %bb.au ]
  %.05981 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.au ] ; 3 uses
  %.06080 = phi i32 [ 0, %.lr.ph ], [ %.161, %bb.au ]
  %i.z = call ptr @lpNextRandom(ptr noundef nonnull %0, ptr noundef nonnull %.03282, ptr noundef nonnull %i.c, i32 noundef %.084, i32 noundef %4) ; 14 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.j, label %bb.k, !prof !18

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 1940) #22
  tail call void @abort() #23
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13   ; 6 uses
  %i.ab = zext i8 %i.aa to i32                    ; 6 uses
  %i.ac = and i32 %i.ab, 192
  %i.ad = icmp eq i32 %i.ac, 128
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = and i32 %i.ab, 63
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  br label %lpGetValue.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = and i32 %i.ab, 240
  %i.ah = icmp eq i32 %i.ag, 224
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = shl nuw nsw i32 %i.ab, 8
  %i.aj = and i32 %i.ai, 3840
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  br label %lpGetValue.exit

bb.o:                                             ; preds = %bb.m
  %i.ap = icmp eq i8 %i.aa, -16
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 5
  br label %lpGetValue.exit

bb.q:                                             ; preds = %bb.o
  %i.at = icmp sgt i8 %i.aa, -1
  br i1 %i.at, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.au = zext nneg i8 %i.aa to i64
  br label %bb.aa

bb.s:                                             ; preds = %bb.q
  %i.av = and i32 %i.ab, 224
  %i.aw = icmp eq i32 %i.av, 192
  br i1 %i.aw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = shl nuw nsw i32 %i.ab, 8
  %i.ay = and i32 %i.ax, 7936
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.ay, %i.bb
  %i.bd = zext nneg i32 %i.bc to i64
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  switch i8 %i.aa, label %bb.z [
    i8 -15, label %bb.v
    i8 -14, label %bb.w
    i8 -13, label %bb.x
    i8 -12, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bf = load i16, ptr %i.be, align 1
  %i.bg = zext i16 %i.bf to i64
  br label %bb.aa

bb.w:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = zext i16 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.z, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = zext i8 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 16
  %i.bo = or disjoint i64 %i.bn, %i.bj
  br label %bb.aa

bb.x:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = zext i32 %i.bq to i64
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.bt = load i64, ptr %i.bs, align 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.bu = zext i8 %i.aa to i64
  %i.bv = or disjoint i64 %i.bu, 12345678900000000
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.r
  %.061.i.i = phi i64 [ %i.au, %bb.r ], [ %i.bd, %bb.t ], [ %i.bg, %bb.v ], [ %i.bo, %bb.w ], [ %i.br, %bb.x ], [ %i.bt, %bb.y ], [ %i.bv, %bb.z ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.r ], [ 4096, %bb.t ], [ 32768, %bb.v ], [ 8388608, %bb.w ], [ 2147483648, %bb.x ], [ -9223372036854775808, %bb.y ], [ -1, %bb.z ]
  %.059.neg.i.i = phi i64 [ 0, %bb.r ], [ -8191, %bb.t ], [ -65535, %bb.v ], [ -16777215, %bb.w ], [ -4294967295, %bb.x ], [ 1, %bb.y ], [ 0, %bb.z ]
  %.not66.i.i = icmp ult i64 %.061.i.i, %.060.i.i
  %.neg.i.i = add i64 %.061.i.i, -1
  %i.bw = add i64 %.neg.i.i, %.059.neg.i.i
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.bw
  br label %lpGetValue.exit

lpGetValue.exit:                                  ; preds = %bb.p, %bb.n, %bb.l, %bb.aa
  %.0.i.i70 = phi ptr [ null, %bb.aa ], [ %i.as, %bb.p ], [ %i.ao, %bb.n ], [ %i.af, %bb.l ]
  %.262 = phi i32 [ %.06080, %bb.aa ], [ %i.ar, %bb.p ], [ %i.an, %bb.n ], [ %i.ae, %bb.l ] ; 3 uses
  %.2 = phi i64 [ %.062.i.i, %bb.aa ], [ %.05981, %bb.p ], [ %.05981, %bb.n ], [ %.05981, %bb.l ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  store ptr %.0.i.i70, ptr %i.bx, align 8, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %.262, ptr %i.by, align 8, !tbaa !38
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %.2, ptr %i.bz, align 8, !tbaa !37
  %i.ca = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %i.z) ; 14 uses
  %.not39 = icmp eq ptr %i.ca, null
  br i1 %.not39, label %bb.ab, label %bb.ac, !prof !18

bb.ab:                                            ; preds = %lpGetValue.exit
  tail call void @_serverAssert(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 1943) #22
  tail call void @abort() #23
  unreachable

bb.ac:                                            ; preds = %lpGetValue.exit
  %i.cb = load i32, ptr %i.c, align 4, !tbaa !9
  br i1 %.not40, label %bb.au, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !13  ; 6 uses
  %i.cd = zext i8 %i.cc to i32                    ; 6 uses
  %i.ce = and i32 %i.cd, 192
  %i.cf = icmp eq i32 %i.ce, 128
  br i1 %i.cf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cg = and i32 %i.cd, 63
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  br label %lpGetValue.exit43

bb.af:                                            ; preds = %bb.ad
  %i.ci = and i32 %i.cd, 240
  %i.cj = icmp eq i32 %i.ci, 224
  br i1 %i.cj, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ck = shl nuw nsw i32 %i.cd, 8
  %i.cl = and i32 %i.ck, 3840
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  br label %lpGetValue.exit43

bb.ah:                                            ; preds = %bb.af
  %i.cr = icmp eq i8 %i.cc, -16
  br i1 %i.cr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ct = load i32, ptr %i.cs, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 5
  br label %lpGetValue.exit43

bb.aj:                                            ; preds = %bb.ah
  %i.cv = icmp sgt i8 %i.cc, -1
  br i1 %i.cv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cw = zext nneg i8 %i.cc to i64
  br label %bb.at

bb.al:                                            ; preds = %bb.aj
  %i.cx = and i32 %i.cd, 224
  %i.cy = icmp eq i32 %i.cx, 192
  br i1 %i.cy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cz = shl nuw nsw i32 %i.cd, 8
  %i.da = and i32 %i.cz, 7936
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd
  %i.df = zext nneg i32 %i.de to i64
  br label %bb.at

bb.an:                                            ; preds = %bb.al
  switch i8 %i.cc, label %bb.as [
    i8 -15, label %bb.ao
    i8 -14, label %bb.ap
    i8 -13, label %bb.aq
    i8 -12, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.an
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dh = load i16, ptr %i.dg, align 1
  %i.di = zext i16 %i.dh to i64
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 16
  %i.dq = or disjoint i64 %i.dp, %i.dl
  br label %bb.at

bb.aq:                                            ; preds = %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.ds = load i32, ptr %i.dr, align 1
  %i.dt = zext i32 %i.ds to i64
  br label %bb.at

bb.ar:                                            ; preds = %bb.an
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.dv = load i64, ptr %i.du, align 1
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.dw = zext i8 %i.cc to i64
  %i.dx = or disjoint i64 %i.dw, 12345678900000000
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.061.i.i46 = phi i64 [ %i.cw, %bb.ak ], [ %i.df, %bb.am ], [ %i.di, %bb.ao ], [ %i.dq, %bb.ap ], [ %i.dt, %bb.aq ], [ %i.dv, %bb.ar ], [ %i.dx, %bb.as ] ; 3 uses
  %.060.i.i47 = phi i64 [ -1, %bb.ak ], [ 4096, %bb.am ], [ 32768, %bb.ao ], [ 8388608, %bb.ap ], [ 2147483648, %bb.aq ], [ -9223372036854775808, %bb.ar ], [ -1, %bb.as ]
  %.059.neg.i.i48 = phi i64 [ 0, %bb.ak ], [ -8191, %bb.am ], [ -65535, %bb.ao ], [ -16777215, %bb.ap ], [ -4294967295, %bb.aq ], [ 1, %bb.ar ], [ 0, %bb.as ]
  %.not66.i.i49 = icmp ult i64 %.061.i.i46, %.060.i.i47
  %.neg.i.i50 = add i64 %.061.i.i46, -1
  %i.dy = add i64 %.neg.i.i50, %.059.neg.i.i48
  %.062.i.i51 = select i1 %.not66.i.i49, i64 %.061.i.i46, i64 %i.dy
  br label %lpGetValue.exit43

lpGetValue.exit43:                                ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.at
  %.0.i.i5276 = phi ptr [ null, %bb.at ], [ %i.cu, %bb.ai ], [ %i.cq, %bb.ag ], [ %i.ch, %bb.ae ]
  %.363 = phi i32 [ %.262, %bb.at ], [ %i.ct, %bb.ai ], [ %i.cp, %bb.ag ], [ %i.cg, %bb.ae ] ; 2 uses
  %.3 = phi i64 [ %.062.i.i51, %bb.at ], [ %.2, %bb.ai ], [ %.2, %bb.ag ], [ %.2, %bb.ae ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv ; 3 uses
  store ptr %.0.i.i5276, ptr %i.dz, align 8, !tbaa !33
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store i32 %.363, ptr %i.ea, align 8, !tbaa !38
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %.3, ptr %i.eb, align 8, !tbaa !37
  br label %bb.au

bb.au:                                            ; preds = %lpGetValue.exit43, %bb.ac
  %.161 = phi i32 [ %.262, %bb.ac ], [ %.363, %lpGetValue.exit43 ]
  %.1 = phi i64 [ %.2, %bb.ac ], [ %.3, %lpGetValue.exit43 ]
  %i.ec = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %i.ca) ; 2 uses
  %i.ed = add i32 %.084, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ee = add i32 %i.cb, 2
  store i32 %i.ee, ptr %i.c, align 4, !tbaa !9
  %i.ef = icmp samesign ult i64 %indvars.iv.next, %i.y
  %i.eg = icmp ne ptr %i.ec, null
  %i.eh = and i1 %i.eg, %i.ef
  br i1 %i.eh, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !61

._crit_edge.loopexit:                             ; preds = %bb.au
  %i.ei = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %lpLength.exit, %._crit_edge.loopexit, %lpFirst.exit
  %.030.lcssa = phi i32 [ 0, %lpFirst.exit ], [ %i.ei, %._crit_edge.loopexit ], [ 0, %lpLength.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret i32 %.030.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @lpNextRandom(ptr noundef %0, ptr noundef %1, ptr noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 1985) #22
  tail call void @abort() #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i16, ptr %i.d, align 1              ; 2 uses
  %i.f = zext i16 %i.e to i32
  %.not.i = icmp eq i16 %i.e, -1
  br i1 %.not.i, label %bb.d, label %lpLength.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = icmp eq i8 %i.h, -1
  br i1 %i.i, label %._crit_edge.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %0, align 1
  %i.k = zext i32 %i.j to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !19
  %i.l = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.k)
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %.lr.ph.preheader.i, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.g, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.m = add i32 %.01520.i, 1                     ; 4 uses
  %i.n = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.n, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.o = icmp ult i32 %i.m, 65535
  br i1 %i.o, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.015.lcssa25.i = phi i32 [ %i.m, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %i.p = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.p, ptr %i.d, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.c, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.f, %bb.c ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.m, %._crit_edge.i ] ; 3 uses
  %i.q = icmp ult i32 %i.c, %.016.in.i
  %i.r = icmp ne ptr %1, null
  %i.s = and i1 %i.q, %i.r
  br i1 %i.s, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %lpLength.exit
  %i.t = uitofp i32 %3 to double
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.backedge
  %.02638 = phi ptr [ %1, %.lr.ph ], [ %i.v, %.backedge ] ; 2 uses
  %.02837 = phi i32 [ %i.c, %.lr.ph ], [ %.028.be, %.backedge ] ; 4 uses
  %i.u = urem i32 %.02837, %4
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.h, label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.h
  %i.v = tail call ptr @lpNext(ptr noundef %0, ptr noundef nonnull %.02638) ; 2 uses
  %.028.be = add nuw i32 %.02837, 1               ; 2 uses
  %i.w = icmp ult i32 %.028.be, %.016.in.i
  %i.x = icmp ne ptr %i.v, null
  %i.y = and i1 %i.w, %i.x
  br i1 %i.y, label %bb.g, label %.loopexit, !llvm.loop !62

bb.h:                                             ; preds = %bb.g
  %i.z = sub i32 %.016.in.i, %.02837
  %i.aa = udiv i32 %i.z, %4
  %i.ab = tail call i32 @rand() #22
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, f0x41DFFFFFFFC00000
  %i.ae = uitofp i32 %i.aa to double
  %i.af = fdiv double %i.t, %i.ae
  %i.ag = fcmp ugt double %i.ad, %i.af
  br i1 %i.ag, label %.backedge, label %.thread

.thread:                                          ; preds = %bb.h
  store i32 %.02837, ptr %2, align 4, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge, %lpLength.exit, %.thread
  %.2 = phi ptr [ %.02638, %.thread ], [ null, %lpLength.exit ], [ null, %.backedge ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @lpRepr(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca [21 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.d = load i32, ptr %0, align 1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = load i16, ptr %i.f, align 1              ; 2 uses
  %i.h = zext i16 %i.g to i32
  %.not.i = icmp eq i16 %i.g, -1
  br i1 %.not.i, label %bb.b, label %lpLength.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %i.k = icmp eq i8 %i.j, -1
  br i1 %i.k, label %._crit_edge.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8, !tbaa !19
  %i.l = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.b, i64 noundef %i.e)
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %bb.d, label %.lr.ph.preheader.i, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.021.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ]
  %.01520.i = phi i32 [ %i.m, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %i.m = add i32 %.01520.i, 1                     ; 4 uses
  %i.n = tail call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.021.i) ; 2 uses
  %.not18.i = icmp eq ptr %i.n, null
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.o = icmp ult i32 %i.m, 65535
  br i1 %i.o, label %._crit_edge.thread.i, label %lpLength.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.b
  %.015.lcssa25.i = phi i32 [ %i.m, %._crit_edge.i ], [ 0, %bb.b ] ; 2 uses
  %i.p = trunc nuw i32 %.015.lcssa25.i to i16
  store i16 %i.p, ptr %i.f, align 1
  br label %lpLength.exit

lpLength.exit:                                    ; preds = %bb.a, %._crit_edge.i, %._crit_edge.thread.i
  %.016.in.i = phi i32 [ %i.h, %bb.a ], [ %.015.lcssa25.i, %._crit_edge.thread.i ], [ %i.m, %._crit_edge.i ]
  %.016.i = zext i32 %.016.in.i to i64
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %i.e, i64 noundef %.016.i) ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !13
  %i.t = icmp eq i8 %i.s, -1
  br i1 %i.t, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %lpLength.exit
  %i.u = load i32, ptr %0, align 1
  %i.v = zext i32 %i.u to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.r, ptr %i.a, align 8, !tbaa !19
  %i.w = call i32 @lpValidateNext(ptr noundef nonnull readnone %0, ptr noundef nonnull %i.a, i64 noundef %i.v)
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.f, label %.lr.ph, !prof !18

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1, i32 noundef 1691) #22
  tail call void @abort() #23
  unreachable

.lr.ph:                                           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = ptrtoint ptr %0 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.at
  %.02848 = phi ptr [ %i.r, %.lr.ph ], [ %i.eb, %bb.at ] ; 18 uses
  %.02947 = phi i32 [ 0, %.lr.ph ], [ %i.ea, %bb.at ] ; 2 uses
  %i.y = load i8, ptr %.02848, align 1, !tbaa !13 ; 7 uses
  %i.z = zext i8 %i.y to i32                      ; 6 uses
  %i.aa = icmp sgt i8 %i.y, -1                    ; 2 uses
  %i.ab = and i32 %i.z, 192
  %i.ac = icmp eq i32 %i.ab, 128                  ; 2 uses
  %i.ad = and i32 %i.z, 224
  %i.ae = icmp eq i32 %i.ad, 192                  ; 2 uses
  %.off.i = add i8 %i.y, 15
  %switch.i = icmp ult i8 %.off.i, 4
  %i.af = or i1 %switch.i, %i.ac
  %i.ag = or i1 %i.aa, %i.af
  %or.cond15.i = or i1 %i.ae, %i.ag
  br i1 %or.cond15.i, label %lpCurrentEncodedSizeBytes.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = and i32 %i.z, 240
  %i.ai = icmp eq i32 %i.ah, 224
  br i1 %i.ai, label %lpCurrentEncodedSizeBytes.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %switch.selectcmp.i = icmp eq i8 %i.y, -1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.selectcmp16.i = icmp eq i8 %i.y, -16
  %switch.select17.i = select i1 %switch.selectcmp16.i, i32 5, i32 %switch.select.i
  br label %lpCurrentEncodedSizeBytes.exit.thread

lpCurrentEncodedSizeBytes.exit:                   ; preds = %bb.g
  br i1 %i.aa, label %lpEncodeBacklenBytes.exit, label %lpCurrentEncodedSizeBytes.exit.thread

lpCurrentEncodedSizeBytes.exit.thread:            ; preds = %bb.i, %bb.h, %lpCurrentEncodedSizeBytes.exit
  %.0.i3339 = phi i32 [ 1, %lpCurrentEncodedSizeBytes.exit ], [ 2, %bb.h ], [ %switch.select17.i, %bb.i ] ; 12 uses
  br i1 %i.ac, label %lpCurrentEncodedSizeUnsafe.exit.thread, label %bb.j

lpCurrentEncodedSizeUnsafe.exit.thread:           ; preds = %lpCurrentEncodedSizeBytes.exit.thread
  %i.aj = and i32 %i.z, 63
  %i.ak = add nuw nsw i32 %i.aj, 1
  br label %lpEncodeBacklenBytes.exit

bb.j:                                             ; preds = %lpCurrentEncodedSizeBytes.exit.thread
  br i1 %i.ae, label %lpEncodeBacklenBytes.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  switch i8 %i.y, label %bb.o [
    i8 -15, label %lpEncodeBacklenBytes.exit
    i8 -14, label %bb.l
    i8 -13, label %bb.m
    i8 -12, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  br label %lpEncodeBacklenBytes.exit

bb.m:                                             ; preds = %bb.k
  br label %lpEncodeBacklenBytes.exit

bb.n:                                             ; preds = %bb.k
  br label %lpEncodeBacklenBytes.exit

bb.o:                                             ; preds = %bb.k
  %i.al = and i32 %i.z, 240
  %i.am = icmp eq i32 %i.al, 224
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = shl nuw nsw i32 %i.z, 8
  %i.ao = and i32 %i.an, 3840
  %i.ap = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, 2
  %i.at = add nuw nsw i32 %i.as, %i.ar
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.q:                                             ; preds = %bb.o
  switch i8 %i.y, label %bb.s [
    i8 -16, label %bb.r
    i8 -1, label %lpEncodeBacklenBytes.exit
  ]

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = add i32 %i.av, 5
  br label %lpCurrentEncodedSizeUnsafe.exit

bb.s:                                             ; preds = %bb.q
  br label %lpEncodeBacklenBytes.exit

lpCurrentEncodedSizeUnsafe.exit:                  ; preds = %bb.p, %bb.r
  %.0.i34 = phi i32 [ %i.at, %bb.p ], [ %i.aw, %bb.r ] ; 8 uses
  %i.ax = icmp ult i32 %.0.i34, 128
  br i1 %i.ax, label %lpEncodeBacklenBytes.exit, label %bb.t

bb.t:                                             ; preds = %lpCurrentEncodedSizeUnsafe.exit
  %i.ay = icmp ult i32 %.0.i34, 16383
  br i1 %i.ay, label %lpEncodeBacklenBytes.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = icmp ult i32 %.0.i34, 2097151
  br i1 %i.az, label %lpEncodeBacklenBytes.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = icmp ult i32 %.0.i34, 268435455
  %..i = select i1 %i.ba, i64 4, i64 5
  br label %lpEncodeBacklenBytes.exit

lpEncodeBacklenBytes.exit:                        ; preds = %lpCurrentEncodedSizeUnsafe.exit.thread, %bb.q, %bb.k, %bb.n, %bb.m, %bb.l, %bb.j, %lpCurrentEncodedSizeBytes.exit, %bb.s, %lpCurrentEncodedSizeUnsafe.exit, %bb.t, %bb.u, %bb.v
  %.0.i3444 = phi i32 [ %.0.i34, %bb.u ], [ %.0.i34, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i34, %bb.t ], [ %.0.i34, %bb.v ], [ 1, %bb.q ], [ 3, %bb.k ], [ 9, %bb.n ], [ 5, %bb.m ], [ 4, %bb.l ], [ 2, %bb.j ], [ 1, %lpCurrentEncodedSizeBytes.exit ], [ 0, %bb.s ], [ %i.ak, %lpCurrentEncodedSizeUnsafe.exit.thread ] ; 2 uses
  %.0.i334043 = phi i32 [ %.0.i3339, %bb.u ], [ %.0.i3339, %lpCurrentEncodedSizeUnsafe.exit ], [ %.0.i3339, %bb.t ], [ %.0.i3339, %bb.v ], [ %.0.i3339, %bb.q ], [ %.0.i3339, %bb.k ], [ %.0.i3339, %bb.n ], [ %.0.i3339, %bb.m ], [ %.0.i3339, %bb.l ], [ %.0.i3339, %bb.j ], [ 1, %lpCurrentEncodedSizeBytes.exit ], [ %.0.i3339, %bb.s ], [ %.0.i3339, %lpCurrentEncodedSizeUnsafe.exit.thread ] ; 2 uses
  %.0.i35 = phi i64 [ 3, %bb.u ], [ 1, %lpCurrentEncodedSizeUnsafe.exit ], [ 2, %bb.t ], [ %..i, %bb.v ], [ 1, %bb.q ], [ 1, %bb.k ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.j ], [ 1, %lpCurrentEncodedSizeBytes.exit ], [ 1, %bb.s ], [ 1, %lpCurrentEncodedSizeUnsafe.exit.thread ] ; 2 uses
  %i.bb = zext i32 %.0.i3444 to i64
  %i.bc = ptrtoint ptr %.02848 to i64             ; 2 uses
  %i.bd = sub i64 %i.bc, %i.x
  %i.be = add nuw nsw i64 %.0.i35, %i.bb          ; 2 uses
  %i.bf = sub i32 %.0.i3444, %.0.i334043
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i64 noundef %i.bc, i32 noundef %.02947, i64 noundef %i.bd, i64 noundef %i.be, i32 noundef %.0.i334043, i64 noundef %.0.i35, i32 noundef %i.bf) ; 0 uses
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20) ; 0 uses
  br label %bb.an

bb.w:                                             ; preds = %bb.an
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.bi = load i8, ptr %.02848, align 1, !tbaa !13 ; 6 uses
  %i.bj = zext i8 %i.bi to i32                    ; 6 uses
  %i.bk = and i32 %i.bj, 192
  %i.bl = icmp eq i32 %i.bk, 128
  br i1 %i.bl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bm = and i32 %i.bj, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  br label %lpGet.exit

bb.y:                                             ; preds = %bb.w
  %i.bp = and i32 %i.bj, 240
  %i.bq = icmp eq i32 %i.bp, 224
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = shl nuw nsw i32 %i.bj, 8
  %i.bs = and i32 %i.br, 3840
  %i.bt = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = zext i8 %i.bu to i32
  %i.bw = or disjoint i32 %i.bs, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %.02848, i64 2
  br label %lpGet.exit

bb.aa:                                            ; preds = %bb.y
  %i.bz = icmp eq i8 %i.bi, -16
  br i1 %i.bz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.02848, i64 5
  br label %lpGet.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ce = icmp sgt i8 %i.bi, -1
  br i1 %i.ce, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cf = zext nneg i8 %i.bi to i64
  br label %bb.am

bb.ae:                                            ; preds = %bb.ac
  %i.cg = and i32 %i.bj, 224
  %i.ch = icmp eq i32 %i.cg, 192
  br i1 %i.ch, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ci = shl nuw nsw i32 %i.bj, 8
  %i.cj = and i32 %i.ci, 7936
  %i.ck = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i32
  %i.cn = or disjoint i32 %i.cj, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  switch i8 %i.bi, label %bb.al [
    i8 -15, label %bb.ah
    i8 -14, label %bb.ai
    i8 -13, label %bb.aj
    i8 -12, label %bb.ak
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cp = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.cq = load i16, ptr %i.cp, align 1
  %i.cr = zext i16 %i.cq to i64
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.ct = load i16, ptr %i.cs, align 1
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %.02848, i64 3
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 16
  %i.cz = or disjoint i64 %i.cy, %i.cu
  br label %bb.am

bb.aj:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = zext i32 %i.db to i64
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %.02848, i64 1
  %i.de = load i64, ptr %i.dd, align 1
  br label %bb.am

bb.al:                                            ; preds = %bb.ag
  %i.df = zext i8 %i.bi to i64
  %i.dg = or disjoint i64 %i.df, 12345678900000000
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.061.i.i = phi i64 [ %i.cf, %bb.ad ], [ %i.co, %bb.af ], [ %i.cr, %bb.ah ], [ %i.cz, %bb.ai ], [ %i.dc, %bb.aj ], [ %i.de, %bb.ak ], [ %i.dg, %bb.al ] ; 3 uses
  %.060.i.i = phi i64 [ -1, %bb.ad ], [ 4096, %bb.af ], [ 32768, %bb.ah ], [ 8388608, %bb.ai ], [ 2147483648, %bb.aj ], [ -9223372036854775808, %bb.ak ], [ -1, %bb.al ]
  %.059.neg.i.i = phi i64 [ 0, %bb.ad ], [ -8191, %bb.af ], [ -65535, %bb.ah ], [ -16777215, %bb.ai ], [ -4294967295, %bb.aj ], [ 1, %bb.ak ], [ 0, %bb.al ]
  %.not66.i.i = icmp ult i64 %.061.i.i, %.060.i.i
  %.neg.i.i = add i64 %.061.i.i, -1
  %i.dh = add i64 %.neg.i.i, %.059.neg.i.i
  %.062.i.i = select i1 %.not66.i.i, i64 %.061.i.i, i64 %i.dh
  %i.di = call i32 @ll2string(ptr noundef nonnull %i.c, i64 noundef 21, i64 noundef %.062.i.i) #22
  %i.dj = sext i32 %i.di to i64
  br label %lpGet.exit

lpGet.exit:                                       ; preds = %bb.x, %bb.z, %bb.ab, %bb.am
  %.037 = phi i64 [ %i.bn, %bb.x ], [ %i.bx, %bb.z ], [ %i.cc, %bb.ab ], [ %i.dj, %bb.am ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bo, %bb.x ], [ %i.by, %bb.z ], [ %i.cd, %bb.ab ], [ %i.c, %bb.am ] ; 2 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) ; 0 uses
  %i.dl = icmp sgt i64 %.037, 40
  %i.dm = load ptr, ptr @stdout, align 8, !tbaa !63 ; 2 uses
  br i1 %i.dl, label %bb.ao, label %bb.ar

bb.an:                                            ; preds = %lpEncodeBacklenBytes.exit, %bb.an
  %i.dn = phi i64 [ 0, %lpEncodeBacklenBytes.exit ], [ %i.dt, %bb.an ]
  %.045 = phi i32 [ 0, %lpEncodeBacklenBytes.exit ], [ %i.ds, %bb.an ]
  %i.do = getelementptr inbounds nuw i8, ptr %.02848, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i8 %i.dp to i32
  %i.dr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.dq) ; 0 uses
  %i.ds = add i32 %.045, 1                        ; 2 uses
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = icmp samesign ugt i64 %i.be, %i.dt
  br i1 %i.du, label %bb.an, label %bb.w, !llvm.loop !65

bb.ao:                                            ; preds = %lpGet.exit
  %i.dv = call i64 @fwrite(ptr noundef nonnull %.0.i.i, i64 noundef 40, i64 noundef 1, ptr noundef %i.dm)
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @perror(ptr noundef nonnull @.str.24) #25
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) ; 0 uses
  br label %bb.at

bb.ar:                                            ; preds = %lpGet.exit
  %i.dy = call i64 @fwrite(ptr noundef nonnull %.0.i.i, i64 noundef %.037, i64 noundef 1, ptr noundef %i.dm)
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @perror(ptr noundef nonnull @.str.24) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %puts32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.ea = add nuw nsw i32 %.02947, 1
  %i.eb = call ptr @lpNext(ptr noundef nonnull %0, ptr noundef nonnull %.02848) ; 2 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %._crit_edge, label %bb.g, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.at, %lpLength.exit
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #17

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !11, i64 0}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = distinct !{!23, !15}
!24 = !{!25, !25, i64 0}
!25 = !{!"long long", !11, i64 0}
!26 = distinct !{!26, !15}
!27 = !{!28, !20, i64 0}
!28 = !{!"lpFindArg", !20, i64 0, !10, i64 8, !10, i64 12, !17, i64 16}
!29 = !{!28, !10, i64 8}
!30 = !{!28, !10, i64 12}
!31 = !{!28, !17, i64 16}
!32 = !{!"branch_weights", i32 4000000, i32 4001}
!33 = !{!34, !20, i64 0}
!34 = !{!"", !20, i64 0, !10, i64 8, !25, i64 16}
!35 = !{!36, !10, i64 0}
!36 = !{!"listpackInsertEntry", !10, i64 0, !17, i64 8, !11, i64 16, !11, i64 25, !17, i64 32}
!37 = !{!34, !25, i64 16}
!38 = !{!34, !10, i64 8}
!39 = !{!36, !17, i64 8}
!40 = !{!36, !17, i64 32}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = !{!"branch_weights", !"expected", i32 1215604, i32 2146268044}
!48 = !{!49, !10, i64 0}
!49 = !{!"pick", !10, i64 0, !10, i64 4}
!50 = !{!49, !10, i64 4}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = !{!55, !10, i64 0}
!55 = !{!"", !10, i64 0, !10, i64 4}
!56 = !{!55, !10, i64 4}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = distinct !{!61, !15}
!62 = distinct !{!62, !15}
!63 = !{!64, !64, i64 0}
!64 = !{!"p1 _ZTS8_IO_FILE", !21, i64 0}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
end_hunk_1
