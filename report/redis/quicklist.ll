inline.NumInlined: 67
inline.NumDeleted: 3
begin_hunk_0_@quicklistNext:bb.a
  %i.dx = and i32 %i.dv, 196608
  %i.dy = icmp eq i32 %i.dx, 65536
  br i1 %i.dy, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dz = load ptr, ptr %0, align 8, !tbaa !47
  %i.ea = tail call i32 @__quicklistCompressNode(ptr noundef %i.dz, ptr noundef nonnull %i.dt) ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.eb = load ptr, ptr %0, align 8, !tbaa !47
  tail call void @__quicklistCompress(ptr noundef %i.eb, ptr noundef nonnull %i.dt)
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.x, %bb.y
  %i.ec = load i32, ptr %i.l, align 8, !tbaa !44
  %.pre104 = load ptr, ptr %i.h, align 8, !tbaa !45 ; 3 uses
  switch i32 %i.ec, label %tailrecurse [
    i32 0, label %bb.aa
    i32 1, label %tailrecurse.sink.split
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre104, i64 8
  br label %tailrecurse.sink.split

tailrecurse.sink.split:                           ; preds = %bb.z, %bb.aa
  %.sink108.in = phi ptr [ %i.ed, %bb.aa ], [ %.pre104, %bb.z ]
  %.sink = phi i64 [ 0, %bb.aa ], [ -1, %bb.z ]
  %.sink108 = load ptr, ptr %.sink108.in, align 8, !tbaa !21 ; 2 uses
  store ptr %.sink108, ptr %i.h, align 8, !tbaa !45
  store i64 %.sink, ptr %i.m, align 8, !tbaa !46
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.sink.split, %bb.z
  %i.ee = phi ptr [ %.pre104, %bb.z ], [ %.sink108, %tailrecurse.sink.split ] ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 -123456789, ptr %i.d, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store i32 123456789, ptr %i.f, align 8, !tbaa !48
  store i64 0, ptr %i.g, align 8, !tbaa !56
  %i.ef = load ptr, ptr %0, align 8, !tbaa !47    ; 2 uses
  store ptr %i.ef, ptr %1, align 8, !tbaa !41
  store ptr %i.ee, ptr %i.e, align 8, !tbaa !37
  %.not = icmp eq ptr %i.ee, null
  br i1 %.not, label %.loopexit, label %.lr.ph.peel.newph, !llvm.loop !60

.loopexit:                                        ; preds = %tailrecurse.peel, %tailrecurse, %bb.a, %.thread82, %.loopexit110
  %.1 = phi i32 [ 1, %.loopexit110 ], [ 1, %.thread82 ], [ 0, %bb.a ], [ 0, %tailrecurse ], [ 0, %tailrecurse.peel ]
  ret i32 %.1
}

declare ptr @lpNext(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lpPrev(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lpGetValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @quicklistSetDirection(ptr noundef writeonly captures(none) initializes((32, 36)) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %1, ptr %i.a, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quicklistDup(ptr noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = shl i64 %i.d, 48
  %i.f = ashr exact i64 %i.e, 48
  %i.g = trunc nsw i64 %i.f to i32
  %i.h = trunc i64 %i.d to i32
  %i.i = and i32 %i.h, -65536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.j = call ptr @zmalloc_usable(i64 noundef 48, ptr noundef nonnull %i.b) #22 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %i.k = load i64, ptr %i.b, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, -68719476736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %spec.store.select.i.i.i = call i32 @llvm.smax.i32(i32 %i.g, i32 -5)
  %i.p = and i32 %spec.store.select.i.i.i, 65535
  %i.q = or disjoint i32 %i.p, %i.i
  %i.r = zext i32 %i.q to i64
  %i.s = or disjoint i64 %i.o, %i.r
  store i64 %i.s, ptr %i.m, align 8
  %.038 = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %.not39 = icmp eq ptr %.038, null
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.040 = phi ptr [ %.038, %.lr.ph ], [ %.0, %bb.e ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.v = call ptr @zmalloc_usable(i64 noundef 40, ptr noundef nonnull %i.a) #22 ; 5 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !13
  %i.x = load i64, ptr %i.l, align 8, !tbaa !13
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr %i.l, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store ptr null, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store i64 0, ptr %i.ac, align 8, !tbaa !20
  %i.ad = and i32 %i.ab, -6291456
  %i.ae = or disjoint i32 %i.ad, 589824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i32 %i.ae, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.af = getelementptr inbounds nuw i8, ptr %.040, i64 32 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = and i32 %i.ah, 3
  switch i32 %i.ai, label %bb.e [
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.040, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = add i64 %i.al, 8                        ; 3 uses
  %i.an = call noalias ptr @zmalloc(i64 noundef %i.am) #24 ; 2 uses
  store ptr %i.an, ptr %i.z, align 8, !tbaa !15
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.ao, i64 %i.am, i1 false)
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %.040, i64 24 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.ar = call noalias ptr @zmalloc(i64 noundef %i.aq) #24 ; 2 uses
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = load i64, ptr %i.ap, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.at, i64 %i.au, i1 false)
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !20
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink42 = phi i64 [ %i.av, %bb.d ], [ %i.am, %bb.c ]
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !13
  %i.ax = add i64 %i.aw, %.sink42
  store i64 %i.ax, ptr %i.l, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.b
  %i.ay = load i32, ptr %i.af, align 8
  %i.az = and i32 %i.ay, 65535                    ; 2 uses
  %i.ba = load i32, ptr %i.aa, align 8
  %i.bb = and i32 %i.ba, -65536
  %i.bc = or disjoint i32 %i.bb, %i.az            ; 2 uses
  store i32 %i.bc, ptr %i.aa, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.040, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  store i64 %i.be, ptr %i.ac, align 8, !tbaa !20
  %i.bf = load i32, ptr %i.af, align 8
  %i.bg = and i32 %i.bf, 196608
  %i.bh = and i32 %i.bc, -196609
  %i.bi = or disjoint i32 %i.bg, %i.bh            ; 2 uses
  store i32 %i.bi, ptr %i.aa, align 8
  %i.bj = load i32, ptr %i.af, align 8
  %i.bk = and i32 %i.bj, 786432
  %i.bl = and i32 %i.bi, -786433
  %i.bm = or disjoint i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.aa, align 8
  %i.bn = zext nneg i32 %i.az to i64
  %i.bo = load i64, ptr %i.t, align 8, !tbaa !13
  %i.bp = add i64 %i.bo, %i.bn
  store i64 %i.bp, ptr %i.t, align 8, !tbaa !13
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !21
  call void @__quicklistInsertNode(ptr noundef nonnull %i.j, ptr noundef %i.bq, ptr noundef nonnull %i.v, i32 noundef 1)
  %i.br = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %.0 = load ptr, ptr %i.br, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !61
}

; Function Attrs: nounwind uwtable
define dso_local void @quicklistRotate(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = icmp ult i64 %i.f, 2
  br i1 %i.g, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %i.l = and i32 %i.k, 786432
  %i.m = icmp eq i32 %i.l, 262144
  br i1 %i.m, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !28   ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !21
  store ptr %i.i, ptr %i.o, align 8, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !22
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !22
  store ptr null, ptr %i.i, align 8, !tbaa !28
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  store ptr %i.n, ptr %i.h, align 8, !tbaa !21
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call ptr @lpSeek(ptr noundef %i.t, i64 noundef -1) #22 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.v = call ptr @lpGetValue(ptr noundef %i.u, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #22 ; 4 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.b, align 8, !tbaa !58
  %i.x = call i32 @ll2string(ptr noundef nonnull %i.d, i64 noundef 32, i64 noundef %i.w) #22 ; 2 uses
  store i32 %i.x, ptr %i.c, align 4, !tbaa !9
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13
  %i.aa = icmp eq i64 %i.z, 1
  %.pre = load i32, ptr %i.c, align 4, !tbaa !9   ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = zext i32 %.pre to i64
  %i.ac = call noalias ptr @zmalloc(i64 noundef %i.ab) #24 ; 2 uses
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !9   ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %i.v, i64 %i.ae, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.af = phi i32 [ %i.ad, %bb.g ], [ %i.x, %bb.e ], [ %.pre, %bb.f ]
  %.0 = phi ptr [ %i.ac, %bb.g ], [ %i.d, %bb.e ], [ %i.v, %bb.f ] ; 4 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = call i32 @quicklistPushHead(ptr noundef nonnull %0, ptr noundef %.0, i64 noundef %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = call ptr @lpSeek(ptr noundef %i.an, i64 noundef -1) #22
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !21  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 786432
  %i.at = icmp eq i32 %i.as, 262144
  br i1 %i.at, label %bb.k, label %bb.l, !prof !29

bb.k:                                             ; preds = %bb.j
  call void @__quicklistDelNode(ptr noundef nonnull %0, ptr noundef nonnull %i.ap)
  br label %quicklistDelIndex.exit

bb.l:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %1 = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ay = call ptr @lpDelete(ptr noundef %1, ptr noundef %i.ax, ptr noundef nonnull %i.a) #22 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !15
  %i.az = call i64 @lpBytes(ptr noundef %i.ay) #22 ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !13
  %i.bc = sub i64 %i.az, %i.av
  %i.bd = add i64 %i.bc, %i.bb
  store i64 %i.bd, ptr %i.ba, align 8, !tbaa !13
  %i.be = load i32, ptr %i.aq, align 8            ; 2 uses
  %i.bf = add i32 %i.be, 65535
  %i.bg = and i32 %i.bf, 65535                    ; 2 uses
  %i.bh = and i32 %i.be, -65536
  %i.bi = or disjoint i32 %i.bg, %i.bh
  store i32 %i.bi, ptr %i.aq, align 8
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__quicklistDelNode(ptr noundef nonnull %0, ptr noundef nonnull %i.ap)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.e, align 8, !tbaa !13
  br label %quicklistDelIndex.exit

quicklistDelIndex.exit:                           ; preds = %bb.k, %bb.n
  %.not20 = icmp eq ptr %.0, %i.d
  %.not21 = icmp eq ptr %.0, %i.v
  %or.cond = or i1 %.not20, %.not21
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %quicklistDelIndex.exit
  call void @zfree(ptr noundef %.0) #22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %quicklistDelIndex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare i32 @ll2string(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @quicklistPopCustom(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.d = icmp ne i32 %1, 0                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %quicklistDelIndex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null                    ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %2, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not52 = icmp eq ptr %3, null                  ; 3 uses
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %3, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not53 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 -123456789, ptr %4, align 8, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.d, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not54 = icmp eq ptr %i.h, null
  br i1 %.not54, label %quicklistDelIndex.exit, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.i = icmp eq i32 %1, -1
  br i1 %i.i, label %bb.k, label %quicklistDelIndex.exit

bb.k:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %.not55 = icmp eq ptr %i.k, null
  br i1 %.not55, label %quicklistDelIndex.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.0 = phi ptr [ %i.h, %bb.i ], [ %i.k, %bb.k ]  ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = and i32 %i.m, 196608
  %.not56 = icmp eq i32 %i.n, 131072
  br i1 %.not56, label %bb.m, label %bb.n, !prof !29

bb.m:                                             ; preds = %bb.l
  tail call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1694) #22
  tail call void @abort() #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.o = and i32 %i.m, 786432
  %i.p = icmp eq i32 %i.o, 262144
  br i1 %i.p, label %bb.o, label %bb.t, !prof !29

bb.o:                                             ; preds = %bb.n
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.q = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = tail call ptr %5(ptr noundef %i.r, i64 noundef %i.t) #22
  store ptr %i.u, ptr %2, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not52, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  store i64 %i.w, ptr %3, align 8, !tbaa !13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.x = tail call i32 @quicklistDelIndex(ptr noundef nonnull %0, ptr noundef nonnull %.0, ptr noundef null) ; 0 uses
  br label %quicklistDelIndex.exit

bb.t:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aa = sext i1 %i.d to i64
  %i.ab = tail call ptr @lpSeek(ptr noundef %i.z, i64 noundef %i.aa) #22 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !36
  %i.ac = call ptr @lpGetValue(ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #22 ; 2 uses
  %.not57 = icmp eq ptr %i.ac, null
  br i1 %.not57, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ae = zext i32 %i.ad to i64
  %i.af = call ptr %5(ptr noundef nonnull %i.ac, i64 noundef %i.ae) #22
  store ptr %i.af, ptr %2, align 8, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not52, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  store i64 %i.ah, ptr %3, align 8, !tbaa !13
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %2, align 8, !tbaa !36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not53, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !58
  store i64 %i.ai, ptr %4, align 8, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %i.aj = load i32, ptr %i.l, align 8
  %i.ak = and i32 %i.aj, 786432
  %i.al = icmp eq i32 %i.ak, 262144
  br i1 %i.al, label %bb.ad, label %bb.ae, !prof !29

bb.ad:                                            ; preds = %bb.ac
  call void @__quicklistDelNode(ptr noundef nonnull %0, ptr noundef nonnull %.0)
  br label %quicklistDelIndex.exit

bb.ae:                                            ; preds = %bb.ac
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !15
  %6 = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ap = call ptr @lpDelete(ptr noundef %i.ao, ptr noundef %6, ptr noundef nonnull %i.a) #22 ; 2 uses
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !15
  %i.aq = call i64 @lpBytes(ptr noundef %i.ap) #22 ; 2 uses
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !13
  %i.at = sub i64 %i.aq, %i.an
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !13
  %i.av = load i32, ptr %i.l, align 8             ; 2 uses
  %i.aw = add i32 %i.av, 65535
  %i.ax = and i32 %i.aw, 65535                    ; 2 uses
  %i.ay = and i32 %i.av, -65536
  %i.az = or disjoint i32 %i.ax, %i.ay
  store i32 %i.az, ptr %i.l, align 8
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @__quicklistDelNode(ptr noundef nonnull %0, ptr noundef nonnull %.0)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bb = add i64 %i.ba, -1
  store i64 %i.bb, ptr %i.e, align 8, !tbaa !13
  br label %quicklistDelIndex.exit

quicklistDelIndex.exit:                           ; preds = %bb.i, %bb.ag, %bb.ad, %bb.s, %bb.k, %bb.j, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.s ], [ 1, %bb.ag ], [ 0, %bb.k ], [ 0, %bb.j ], [ 1, %bb.ad ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @_quicklistSaver(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias ptr @zmalloc(i64 noundef %1) #24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.a, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @quicklistPop(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 0, ptr %i.b, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 0, ptr %i.c, align 8, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @quicklistPopCustom(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @_quicklistSaver) ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !36
  store ptr %i.h, ptr %2, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not13 = icmp eq ptr %4, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.c, align 8, !tbaa !58
  store i64 %i.i, ptr %4, align 8, !tbaa !58
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i64, ptr %i.b, align 8, !tbaa !13
  store i64 %i.j, ptr %3, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.g ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @quicklistPush(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 196608
  %.not13 = icmp eq i32 %i.d, 131072
  br i1 %.not13, label %bb.c, label %bb.d, !prof !29

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1759) #22
  tail call void @abort() #23
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 196608
  %.not15 = icmp eq i32 %i.i, 131072
  br i1 %.not15, label %bb.f, label %bb.g, !prof !29

bb.f:                                             ; preds = %bb.e
  tail call void @_serverAssert(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1761) #22
  tail call void @abort() #23
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  switch i32 %3, label %bb.j [
    i32 0, label %bb.h
    i32 -1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = tail call i32 @quicklistPushHead(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.k = tail call i32 @quicklistPushTail(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @quicklistRepr(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i64 noundef %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = shl i64 %i.h, 48
  %i.j = ashr exact i64 %i.i, 48
  %i.k = trunc nsw i64 %i.j to i32
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.k) ; 0 uses
  %i.m = load i64, ptr %i.g, align 8
  %i.n = trunc i64 %i.m to i32
  %i.o = lshr i32 %i.n, 16
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.o) ; 0 uses
  %i.q = load i64, ptr %i.g, align 8
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = and i32 %i.s, 15
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.t) ; 0 uses
  %.037 = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %.not38 = icmp eq ptr %.037, null
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not32 = icmp eq i32 %1, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not32, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.040.us = phi ptr [ %.0.us, %.lr.ph.split.us ], [ %.037, %.lr.ph ] ; 3 uses
  %.03039.us = phi i32 [ %i.w, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.w = add nuw nsw i32 %.03039.us, 1
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.03039.us) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.040.us, i64 32
  %i.z = load i32, ptr %i.y, align 8              ; 5 uses
  %i.aa = and i32 %i.z, 786432
end_hunk_0
