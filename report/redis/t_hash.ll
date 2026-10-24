Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/t_hash?download=true
inline.NumInlined: 167
inline.NumDeleted: 15
begin_hunk_0_@hashTypeSetExInit:bb.a
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !143
  store i32 %4, ptr %5, align 8, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 281474976710656, ptr %i.d, align 8, !tbaa !116
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %2, ptr %i.e, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.f, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.g, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %1, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 281474976710656, ptr %i.i, align 8, !tbaa !89
  %i.j = load i64, ptr %1, align 8
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 4
  %i.m = and i32 %i.l, 15
  switch i32 %i.m, label %bb.d [
    i32 11, label %hashTypeConvert.exit
    i32 2, label %bb.b
  ]

hashTypeConvert.exit:                             ; preds = %bb.a
  tail call void @hashTypeConvertListpack(ptr noundef nonnull %1, i32 noundef 12)
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.c, align 8, !tbaa !63
  %.not = icmp eq ptr %.val, @entryHashDictTypeWithHFE
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @dictTypeAddMeta(ptr noundef nonnull %i.a, ptr noundef nonnull @entryHashDictTypeWithHFE) #13
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !143  ; 3 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr null, ptr %i.o, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 70 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = or i16 %i.q, 256
  store i16 %i.r, ptr %i.p, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b, %hashTypeConvert.exit
  %i.s = load i64, ptr %1, align 8
  %i.t = trunc i64 %i.s to i32
  %i.u = lshr i32 %i.t, 4
  %i.v = and i32 %i.u, 15
  switch i32 %i.v, label %bb.f [
    i32 11, label %hashTypeGetMinExpire.exit
    i32 12, label %bb.e
    i32 2, label %bb.g
  ], !prof !61

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !17
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1990) #13
  call void @abort() #14
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %.val27.i = load ptr, ptr %i.x, align 8, !tbaa !63
  %.not30.i = icmp eq ptr %.val27.i, @entryHashDictTypeWithHFE
  br i1 %.not30.i, label %bb.h, label %hashTypeGetMinExpire.exit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.121.i = phi ptr [ %i.w, %bb.e ], [ %i.y, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.121.i, i64 6
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = and i16 %i.aa, 256
  %.not25.i = icmp eq i16 %i.ab, 0
  br i1 %.not25.i, label %bb.j, label %hashTypeGetMinExpire.exit

bb.j:                                             ; preds = %bb.i
  %.121.val.i = load i32, ptr %.121.i, align 8, !tbaa !76
  %i.ac = getelementptr i8, ptr %.121.i, i64 4
  %.121.val28.i = load i16, ptr %i.ac, align 4, !tbaa !77
  %i.ad = zext i16 %.121.val28.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 32
  %i.af = zext i32 %.121.val.i to i64
  %i.ag = or disjoint i64 %i.ae, %i.af
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %bb.d, %bb.g, %bb.i, %bb.j
  %.2.i = phi i64 [ 281474976710656, %bb.i ], [ 281474976710656, %bb.d ], [ %i.ag, %bb.j ], [ 281474976710656, %bb.g ]
  store i64 %.2.i, ptr %i.d, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 0
}

declare void @dictTypeAddMeta(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeSetExDone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 4 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.e [
    i32 11, label %bb.b
    i32 12, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call i64 @lpLength(ptr noundef %i.h) #13
  %i.j = lshr i64 %i.i, 1
  br label %hashTypeLength.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call i64 @lpLength(ptr noundef %i.n) #13
  %i.p = udiv i64 %i.o, 3
  br label %hashTypeLength.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = add i64 %i.v, %i.t
  br label %hashTypeLength.exit

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

hashTypeLength.exit:                              ; preds = %bb.b, %bb.d, %bb.c
  %.120.i = phi i64 [ %i.j, %bb.b ], [ %i.w, %bb.d ], [ %i.p, %bb.c ]
  %i.x = icmp eq i64 %.120.i, 0
  br i1 %i.x, label %bb.r, label %bb.f

bb.f:                                             ; preds = %hashTypeLength.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !89
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !87  ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = trunc i64 %i.ae to i32
  %i.ag = lshr i32 %i.af, 4
  %i.ah = and i32 %i.ag, 15
  switch i32 %i.ah, label %bb.i [
    i32 11, label %hashTypeGetMinExpire.exit
    i32 12, label %bb.h
    i32 2, label %bb.j
  ], !prof !61

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call fastcc i64 @listpackExGetMinExpire(ptr noundef nonnull readonly %i.ad)
  br label %hashTypeGetMinExpire.exit

bb.i:                                             ; preds = %bb.g
  tail call void @_serverAssert(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 2013) #13
  tail call void @abort() #14
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %.val.i = load ptr, ptr %i.ak, align 8, !tbaa !63
  %.not29.i = icmp eq ptr %.val.i, @entryHashDictTypeWithHFE
  br i1 %.not29.i, label %bb.k, label %hashTypeGetMinExpire.exit

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.an = tail call i64 @ebGetNextTimeToExpire(ptr noundef %i.am, ptr noundef nonnull @hashFieldExpireBucketsType) #13
  br label %hashTypeGetMinExpire.exit

hashTypeGetMinExpire.exit:                        ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.2.i = phi i64 [ 281474976710656, %bb.j ], [ %i.ai, %bb.h ], [ 281474976710656, %bb.g ], [ %i.an, %bb.k ] ; 4 uses
  %i.ao = load i64, ptr %i.y, align 8, !tbaa !116
  %i.ap = sub i64 %i.ao, %.2.i
  %1 = add i64 %i.ap, 3999
  %i.aq = icmp ult i64 %1, 7999
  br i1 %i.aq, label %bb.r, label %bb.l

bb.l:                                             ; preds = %hashTypeGetMinExpire.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17
  %i.av = tail call i32 @getKeySlot(ptr noundef %i.au) #13 ; 3 uses
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !116
  %.not = icmp eq i64 %i.aw, 281474976710656
  %.not27 = icmp eq i64 %.2.i, 281474976710656    ; 2 uses
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !117 ; 2 uses
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !87  ; 2 uses
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @estoreUpdate(ptr noundef %i.ba, i32 noundef %i.av, ptr noundef %i.bb, i64 noundef %.2.i) #13
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bc = tail call i64 @estoreRemove(ptr noundef %i.ba, i32 noundef %i.av, ptr noundef %i.bb) #13 ; 0 uses
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  br i1 %.not27, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !90
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !117
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !87
  tail call void @estoreAdd(ptr noundef %i.bg, i32 noundef %i.av, ptr noundef %i.bh, i64 noundef %.2.i) #13
  br label %bb.r

bb.r:                                             ; preds = %hashTypeGetMinExpire.exit, %bb.p, %bb.q, %bb.n, %bb.o, %bb.f, %hashTypeLength.exit
  ret void
}

declare void @estoreUpdate(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare i64 @estoreRemove(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare void @estoreAdd(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare ptr @lpDeleteRangeWithEntry(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i64 @ebExpireDryRun(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local i64 @hashTypeAllocSize(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 15
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssertWithInfo(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 1338) #13
  tail call void @abort() #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.a to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 15
  switch i32 %i.f, label %bb.g [
    i32 11, label %bb.d
    i32 12, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call i64 @lpBytes(ptr noundef %i.h) #13
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = tail call i64 @lpBytes(ptr noundef %i.m) #13
  %i.o = add i64 %i.n, 24
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %i.r = tail call i64 @dictMemUsage(ptr noundef %i.q) #13
  %i.s = add i64 %i.r, 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = add i64 %i.s, %i.u
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1349, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.0 = phi i64 [ %i.i, %bb.d ], [ %i.o, %bb.e ], [ %i.v, %bb.f ]
  ret i64 %.0
}

declare void @_serverAssertWithInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i64 @lpBytes(ptr noundef) local_unnamed_addr #0

declare i64 @dictMemUsage(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeInitIterator(ptr noundef initializes((0, 12)) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !120
  %i.a = load i64, ptr %1, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = lshr i32 %i.b, 4
  %i.d = and i32 %i.c, 15                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8, !tbaa !121
  switch i32 %i.d, label %bb.d [
    i32 11, label %bb.b
    i32 12, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store i64 281474976710656, ptr %i.g, align 8, !tbaa !122
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  tail call void @dictInitIterator(ptr noundef nonnull %i.h, ptr noundef %i.j) #13
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1368, ptr noundef nonnull @.str.10) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @dictInitIterator(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local void @hashTypeResetIterator(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !121
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @dictResetIterator(ptr noundef nonnull %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @hashTypeNext(ptr noundef initializes((40, 48)) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6440), align 8, !tbaa !93
  %.fr = freeze i32 %i.b
  %.not = icmp eq i32 %.fr, 0
  %spec.store.select = select i1 %.not, i32 %1, i32 0 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i64 281474976710656, ptr %i.c, align 8, !tbaa !122
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !121
  switch i32 %i.e, label %bb.ai [
    i32 11, label %bb.c
    i32 12, label %bb.m
    i32 2, label %.preheader105
  ]

.preheader105:                                    ; preds = %bb.a
end_hunk_0
