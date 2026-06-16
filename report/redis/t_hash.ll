inline.NumInlined: 167
inline.NumDeleted: 15
begin_hunk_0_@hashTypeDelete:bb.a

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds i8, ptr %1, i64 -9
  %i.n = load i32, ptr %i.m, align 1, !tbaa !9
  %i.o = zext i32 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds i8, ptr %1, i64 -17
  %i.q = load i64, ptr %i.p, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ 0, %bb.a ]
  %i.r = trunc i64 %.0.i to i32                   ; 2 uses
  %i.s = load i64, ptr %0, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = lshr i32 %i.t, 4
  %i.v = and i32 %i.u, 15
  switch i32 %i.v, label %bb.p [
    i32 11, label %bb.g
    i32 12, label %bb.k
    i32 2, label %bb.o
  ]

bb.g:                                             ; preds = %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 3 uses
  %i.y = tail call ptr @lpFirst(ptr noundef %i.x) #13 ; 2 uses
  %.not25 = icmp eq ptr %i.y, null
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @lpFind(ptr noundef %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %1, i32 noundef %i.r, i32 noundef 1) #13 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !95
  %.not26 = icmp eq ptr %i.z, null
  br i1 %.not26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = call ptr @lpDeleteRangeWithEntry(ptr noundef %i.x, ptr noundef nonnull %i.a, i64 noundef 2) #13
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.q

bb.k:                                             ; preds = %sdslen.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.af = tail call ptr @lpFirst(ptr noundef %i.ae) #13 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ah = tail call ptr @lpFind(ptr noundef %i.ag, ptr noundef nonnull %i.af, ptr noundef nonnull %1, i32 noundef %i.r, i32 noundef 2) #13 ; 2 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !95
  %.not24 = icmp eq ptr %i.ah, null
  br i1 %.not24, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.aj = call ptr @lpDeleteRangeWithEntry(ptr noundef %i.ai, ptr noundef nonnull %i.b, i64 noundef 3) #13
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.1 = phi i32 [ 1, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.q

bb.o:                                             ; preds = %sdslen.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = tail call i32 @dictDelete(ptr noundef %i.al, ptr noundef nonnull %1) #13
  %i.an = icmp eq i32 %i.am, 0
  %spec.select = zext i1 %i.an to i32
  br label %bb.q

bb.p:                                             ; preds = %sdslen.exit
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1296, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.j
  %.2 = phi i32 [ %.0, %bb.j ], [ %.1, %bb.n ], [ %spec.select, %bb.o ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hashTypeIsExpired(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !96
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 15                         ; 2 uses
  switch i32 %i.e, label %bb.e [
    i32 12, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, 281474976710656
  br i1 %i.g, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 562, ptr noundef nonnull @.str.5, i32 noundef %i.e) #13
  tail call void @abort() #14
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.h = tail call i64 @commandTimeSnapshot() #13
  %i.i = icmp slt i64 %1, %i.h
  %i.j = zext i1 %i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.f
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ %i.j, %bb.f ], [ 0, %bb.d ]
  ret i32 %.0
}

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

declare i64 @commandTimeSnapshot() local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local ptr @hashTypeListpackGetLp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15                         ; 2 uses
  switch i32 %i.d, label %bb.d [
    i32 11, label %bb.b
    i32 12, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.5, i32 noundef %i.d) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi ptr [ %i.e, %bb.b ], [ %i.h, %bb.c ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !97
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeTryConversion(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15                         ; 5 uses
  %.off = add nsw i32 %i.d, -11
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %hashTypeConvert.exit40

bb.b:                                             ; preds = %bb.a
  %reass.sub = sub i32 %4, %3
  %i.e = add i32 %reass.sub, 1
  %i.f = sdiv i32 %i.e, 2
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7936), align 8, !tbaa !98
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not3549 = icmp sgt i32 %3, %4
  br i1 %.not3549, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7944), align 8
  %i.k = sext i32 %3 to i64
  %5 = add i32 %4, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %i.d, 11
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @hashTypeConvertListpack(ptr noundef nonnull %1, i32 noundef 2)
  br label %hashTypeConvert.exit

bb.e:                                             ; preds = %bb.c
  tail call void @hashTypeConvertListpackEx(ptr noundef readonly %0, ptr noundef nonnull %1, i32 noundef 2)
  br label %hashTypeConvert.exit

hashTypeConvert.exit:                             ; preds = %bb.d, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = tail call i32 @dictExpand(ptr noundef %i.n, i64 noundef %i.g) #13 ; 0 uses
  br label %hashTypeConvert.exit40

bb.f:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.02850 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.r ] ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 4
  %i.u = and i32 %i.t, 15
  switch i32 %i.u, label %bb.r [
    i32 0, label %bb.g
    i32 8, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15   ; 5 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %.val.i = load i8, ptr %i.x, align 1, !tbaa !73 ; 2 uses
  %i.y = and i8 %.val.i, 7
  switch i8 %i.y, label %hashTypeConvert.exit38 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = lshr i8 %.val.i, 3
  %i.aa = zext nneg i8 %i.z to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !73
  %i.ad = zext i8 %i.ac to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.w, i64 -5
  %i.af = load i16, ptr %i.ae, align 1, !tbaa !74
  %i.ag = zext i16 %i.af to i64
  br label %sdslen.exit

bb.k:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds i8, ptr %i.w, i64 -9
  %i.ai = load i32, ptr %i.ah, align 1, !tbaa !9
  %i.aj = zext i32 %i.ai to i64
  br label %sdslen.exit

bb.l:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds i8, ptr %i.w, i64 -17
  %i.al = load i64, ptr %i.ak, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i64 [ %i.al, %bb.l ], [ %i.aa, %bb.h ], [ %i.ad, %bb.i ], [ %i.ag, %bb.j ], [ %i.aj, %bb.k ] ; 2 uses
  %.not37 = icmp ugt i64 %.0.i, %i.j
  br i1 %.not37, label %bb.m, label %hashTypeConvert.exit38

bb.m:                                             ; preds = %sdslen.exit
  switch i32 %i.d, label %bb.q [
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 2, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @hashTypeConvertListpack(ptr noundef nonnull %1, i32 noundef 2)
  br label %hashTypeConvert.exit40

bb.o:                                             ; preds = %bb.m
  tail call void @hashTypeConvertListpackEx(ptr noundef readonly %0, ptr noundef nonnull %1, i32 noundef 2)
  br label %hashTypeConvert.exit40

bb.p:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1728, ptr noundef nonnull @.str.29) #13
  tail call void @abort() #14
  unreachable

bb.q:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1730, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeConvert.exit38:                           ; preds = %bb.g, %sdslen.exit
  %.0.i43 = phi i64 [ %.0.i, %sdslen.exit ], [ 0, %bb.g ]
  %i.am = add i64 %.0.i43, %.02850
  br label %bb.r

bb.r:                                             ; preds = %hashTypeConvert.exit38, %bb.f
  %.2 = phi i64 [ %i.am, %hashTypeConvert.exit38 ], [ %.02850, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !99

._crit_edge:                                      ; preds = %bb.r, %.preheader
  %.028.lcssa = phi i64 [ 0, %.preheader ], [ %.2, %bb.r ]
  switch i32 %i.d, label %bb.u [
    i32 11, label %bb.s
    i32 12, label %bb.t
  ]

bb.s:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %hashTypeListpackGetLp.exit

bb.t:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  br label %hashTypeListpackGetLp.exit

bb.u:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 575, ptr noundef nonnull @.str.5, i32 noundef %i.d) #13
  tail call void @abort() #14
  unreachable

hashTypeListpackGetLp.exit:                       ; preds = %bb.s, %bb.t
  %.0.in.i = phi ptr [ %i.an, %bb.s ], [ %i.aq, %bb.t ]
  %.0.i39 = load ptr, ptr %.0.in.i, align 8, !tbaa !97
  %i.ar = tail call i32 @lpSafeToAdd(ptr noundef %.0.i39, i64 noundef %.028.lcssa) #13
  %.not36 = icmp eq i32 %i.ar, 0
  br i1 %.not36, label %bb.v, label %hashTypeConvert.exit40

bb.v:                                             ; preds = %hashTypeListpackGetLp.exit
  %i.as = load i64, ptr %1, align 8
  %i.at = trunc i64 %i.as to i32
  %i.au = lshr i32 %i.at, 4
  %i.av = and i32 %i.au, 15
  switch i32 %i.av, label %bb.z [
    i32 11, label %bb.w
    i32 12, label %bb.x
    i32 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  tail call void @hashTypeConvertListpack(ptr noundef nonnull %1, i32 noundef 2)
  br label %hashTypeConvert.exit40

bb.x:                                             ; preds = %bb.v
  tail call void @hashTypeConvertListpackEx(ptr noundef readonly %0, ptr noundef nonnull %1, i32 noundef 2)
  br label %hashTypeConvert.exit40

bb.y:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1728, ptr noundef nonnull @.str.29) #13
  tail call void @abort() #14
  unreachable

bb.z:                                             ; preds = %bb.v
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1730, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeConvert.exit40:                           ; preds = %bb.o, %bb.n, %bb.x, %bb.w, %bb.a, %hashTypeConvert.exit, %hashTypeListpackGetLp.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeConvert(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15
  switch i32 %i.d, label %bb.e [
    i32 11, label %bb.b
    i32 12, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @hashTypeConvertListpack(ptr noundef nonnull %1, i32 noundef %2)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @hashTypeConvertListpackEx(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1728, ptr noundef nonnull @.str.29) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1730, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @dictExpand(ptr noundef, i64 noundef) local_unnamed_addr #0

declare i32 @lpSafeToAdd(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hashTypeGetFromListpack(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 281474976710656, ptr %5, align 8, !tbaa !13
  %i.b = load i64, ptr %0, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = lshr i32 %i.c, 4
  %i.e = and i32 %i.d, 15                         ; 2 uses
  switch i32 %i.e, label %bb.x [
    i32 11, label %bb.b
    i32 12, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15   ; 3 uses
  %i.h = tail call ptr @lpFirst(ptr noundef %i.g) #13 ; 2 uses
  %.not50 = icmp eq ptr %i.h, null
  br i1 %.not50, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 -1
  %.val.i = load i8, ptr %i.i, align 1, !tbaa !73 ; 2 uses
  %i.j = and i8 %.val.i, 7
  switch i8 %i.j, label %sdslen.exit [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i8 %.val.i, 3
  %i.l = zext nneg i8 %i.k to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds i8, ptr %1, i64 -3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !73
  %i.o = zext i8 %i.n to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %1, i64 -5
  %i.q = load i16, ptr %i.p, align 1, !tbaa !74
  %i.r = zext i16 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %1, i64 -9
  %i.t = load i32, ptr %i.s, align 1, !tbaa !9
  %i.u = zext i32 %i.t to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %1, i64 -17
  %i.w = load i64, ptr %i.v, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %i.w, %bb.h ], [ %i.l, %bb.d ], [ %i.o, %bb.e ], [ %i.r, %bb.f ], [ %i.u, %bb.g ], [ 0, %bb.c ]
  %i.x = trunc i64 %.0.i to i32
  %i.y = tail call ptr @lpFind(ptr noundef %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %1, i32 noundef %i.x, i32 noundef 1) #13 ; 2 uses
  %.not51 = icmp eq ptr %i.y, null
  br i1 %.not51, label %.thread, label %bb.i

bb.i:                                             ; preds = %sdslen.exit
  %i.z = tail call ptr @lpNext(ptr noundef %i.g, ptr noundef nonnull %i.y) #13 ; 2 uses
  %.not52 = icmp eq ptr %i.z, null
  br i1 %.not52, label %bb.j, label %.thread59, !prof !26

bb.j:                                             ; preds = %bb.i
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 635) #13
  tail call void @abort() #14
  unreachable

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ae = tail call ptr @lpFirst(ptr noundef %i.ad) #13 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %.thread64, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.ag = getelementptr i8, ptr %1, i64 -1
  %.val.i54 = load i8, ptr %i.ag, align 1, !tbaa !73 ; 2 uses
  %i.ah = and i8 %.val.i54, 7
  switch i8 %i.ah, label %sdslen.exit56 [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.p
end_hunk_0
