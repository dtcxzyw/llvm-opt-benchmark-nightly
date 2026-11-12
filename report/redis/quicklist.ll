Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/quicklist?download=true
inline.NumInlined: 67
inline.NumDeleted: 3
begin_hunk_0_@quicklistPushTail:bb.a
  %i.ab = icmp ugt i64 %2, 8192
  br i1 %i.ab, label %_quicklistNodeAllowInsert.exit.thread, label %.thread.i, !prof !52

.thread.i:                                        ; preds = %isLargeElement.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !45 ; 2 uses
  %i.ae = add nuw nsw i64 %2, 8
  %i.af = add i64 %i.ae, %i.ad
  br label %_quicklistNodeAllowInsert.exit

bb.h:                                             ; preds = %.split.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !45 ; 3 uses
  %i.ai = add i64 %2, 8
  %i.aj = add i64 %i.ai, %i.ah                    ; 2 uses
  %i.ak = icmp sgt i64 %i.f, -1
  br i1 %i.ak, label %_quicklistNodeAllowInsert.exit, label %.quicklistNodeLimit.exit.i_crit_edge.i

.quicklistNodeLimit.exit.i_crit_edge.i:           ; preds = %bb.h
  %.pre.i = tail call i32 @llvm.umax.i32(i32 range(i32 -2147483648, 0) %i.g, i32 -5)
  %.pre16.i = xor i32 %.pre.i, -1
  %.pre17.i = zext nneg i32 %.pre16.i to i64
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr @optimization_level, i64 %.pre17.i
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %quicklistNodeLimit.exit.i.i

quicklistNodeLimit.exit.i.i:                      ; preds = %.quicklistNodeLimit.exit.i_crit_edge.i, %.thread14.i
  %i.al = phi i64 [ %i.ah, %.quicklistNodeLimit.exit.i_crit_edge.i ], [ %i.y, %.thread14.i ]
  %i.am = phi i64 [ %.pre, %.quicklistNodeLimit.exit.i_crit_edge.i ], [ %i.v, %.thread14.i ]
  %i.an = phi i64 [ %i.aj, %.quicklistNodeLimit.exit.i_crit_edge.i ], [ %i.aa, %.thread14.i ]
  %i.ao = icmp ugt i64 %i.an, %i.am
  br i1 %i.ao, label %_quicklistNodeAllowInsert.exit.thread, label %bb.i, !prof !54

_quicklistNodeAllowInsert.exit:                   ; preds = %.thread.i, %bb.h
  %i.ap = phi i64 [ %i.ad, %.thread.i ], [ %i.ah, %bb.h ]
  %i.aq = phi i64 [ %i.af, %.thread.i ], [ %i.aj, %bb.h ]
  %.in.i = and i32 %i.p, 65535
  %i.ar = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.as = icmp ugt i64 %i.aq, 8192
  %i.at = icmp samesign uge i32 %.in.i, %i.ar
  %spec.select.i.i = or i1 %i.at, %i.as
  br i1 %spec.select.i.i, label %_quicklistNodeAllowInsert.exit.thread, label %bb.i, !prof !54

bb.i:                                             ; preds = %quicklistNodeLimit.exit.i.i, %_quicklistNodeAllowInsert.exit
  %i.au = phi i64 [ %i.al, %quicklistNodeLimit.exit.i.i ], [ %i.ap, %_quicklistNodeAllowInsert.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !44
  %i.ax = trunc i64 %2 to i32
  %i.ay = tail call ptr @lpAppend(ptr noundef %i.aw, ptr noundef %1, i32 noundef %i.ax) #22 ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !44
  %i.bb = tail call i64 @lpBytes(ptr noundef %i.ay) #22 ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !46  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !39
  %i.bg = sub i64 %i.bb, %i.au
  %i.bh = add i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.be, align 8, !tbaa !39
  br label %bb.j

_quicklistNodeAllowInsert.exit.thread:            ; preds = %quicklistNodeLimit.exit.i.i, %.split12.i, %.split.i, %bb.e, %isLargeElement.exit.i, %bb.d, %_quicklistNodeAllowInsert.exit
  %i.bi = tail call ptr @quicklistCreateNode(ptr noundef nonnull %0) ; 3 uses
  %i.bj = tail call ptr @lpNew(i64 noundef 0) #22
  %i.bk = trunc i64 %2 to i32
  %i.bl = tail call ptr @lpAppend(ptr noundef %i.bj, ptr noundef %1, i32 noundef %i.bk) #22 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !44
  %i.bn = tail call i64 @lpBytes(ptr noundef %i.bl) #22 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !39
  %i.br = add i64 %i.bq, %i.bn
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !39
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !46
  tail call void @__quicklistInsertNode(ptr noundef nonnull %0, ptr noundef %i.bs, ptr noundef %i.bi, i32 noundef 1)
  %.pre41 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %_quicklistNodeAllowInsert.exit.thread, %bb.i
  %i.bt = phi ptr [ %.pre41, %_quicklistNodeAllowInsert.exit.thread ], [ %i.bc, %bb.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !39
  %i.bw = add i64 %i.bv, 1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %i.bz = add i32 %i.by, 1
  %i.ca = and i32 %i.bz, 65535
  %i.cb = and i32 %i.by, -65536
  %i.cc = or disjoint i32 %i.ca, %i.cb
  store i32 %i.cc, ptr %i.bx, align 8
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.ce = icmp ne ptr %i.b, %i.cd
  %i.cf = zext i1 %i.ce to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ %i.cf, %bb.j ]
  ret i32 %.0
}

declare ptr @lpAppend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @quicklistAppendListpack(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 !guid !105 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call ptr @zmalloc_usable(i64 noundef 40, ptr noundef nonnull %i.a) #22 ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39
  %i.f = add i64 %i.e, %i.c
  store i64 %i.f, ptr %i.d, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !45
  %i.k = and i32 %i.i, -6291456
  %i.l = or disjoint i32 %i.k, 589824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 %i.l, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.g, align 8, !tbaa !44
  %i.m = call i64 @lpLength(ptr noundef %1) #22
  %i.n = trunc i64 %i.m to i32
  %i.o = load i32, ptr %i.h, align 8
  %i.p = and i32 %i.n, 65535
  %i.q = and i32 %i.o, -65536
  %i.r = or disjoint i32 %i.q, %i.p
  store i32 %i.r, ptr %i.h, align 8
  %i.s = call i64 @lpBytes(ptr noundef %1) #22    ; 2 uses
  store i64 %i.s, ptr %i.j, align 8, !tbaa !45
  %i.t = load i64, ptr %i.d, align 8, !tbaa !39
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %i.d, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  call void @__quicklistInsertNode(ptr noundef %0, ptr noundef %i.w, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.x = load i32, ptr %i.h, align 8
  %i.y = and i32 %i.x, 65535
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ac = add i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !39
  ret void
}

declare i64 @lpLength(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @quicklistAppendPlainNode(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !guid !106 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = call ptr @zmalloc_usable(i64 noundef 40, ptr noundef nonnull %i.a) #22 ; 5 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39
  %i.f = add i64 %i.e, %i.c
  store i64 %i.f, ptr %i.d, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = and i32 %i.i, -6291456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.g, align 8, !tbaa !44
  store i64 %2, ptr %i.j, align 8, !tbaa !45
  %i.l = or disjoint i32 %i.k, 327681
  store i32 %i.l, ptr %i.h, align 8
  %i.m = load i64, ptr %i.d, align 8, !tbaa !39
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.d, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  call void @__quicklistInsertNode(ptr noundef %0, ptr noundef %i.p, ptr noundef nonnull %i.b, i32 noundef 1)
  %i.q = load i32, ptr %i.h, align 8
  %i.r = and i32 %i.q, 65535
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = add i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @__quicklistDelNode(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 !guid !107 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %2 = load i64, ptr %i.d, align 8                ; 2 uses
  %3 = and i64 %2, 64424509440
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_quicklistBookmarkFindByNode.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %4 = lshr i64 %2, 32
  %wide.trip.count.i = and i64 %4, 15
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_quicklistBookmarkFindByNode.exit.thread, label %.lr.ph.i, !llvm.loop !1

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv.i ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %_quicklistBookmarkFindByNode.exit, label %bb.b

_quicklistBookmarkFindByNode.exit:                ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !55
  %.not38 = icmp eq ptr %i.i, null
  br i1 %.not38, label %bb.c, label %_quicklistBookmarkFindByNode.exit.thread

bb.c:                                             ; preds = %_quicklistBookmarkFindByNode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  call void @zfree_usable(ptr noundef %i.k, ptr noundef nonnull %i.a) #22
  %i.l = load i64, ptr %i.d, align 8              ; 2 uses
  %i.m = add i64 %i.l, 64424509440
  %i.n = and i64 %i.m, 64424509440                ; 2 uses
  %i.o = and i64 %i.l, -64424509441
  %i.p = or disjoint i64 %i.n, %i.o
  store i64 %i.p, ptr %i.d, align 8
  %i.q = load i64, ptr %i.a, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = sub i64 %i.s, %i.q
  store i64 %i.t, ptr %i.r, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.v = shl i64 %indvars.iv.i, 32
  %sext.i = sub i64 %i.n, %i.v
  %i.w = ashr exact i64 %sext.i, 28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_quicklistBookmarkFindByNode.exit.thread

_quicklistBookmarkFindByNode.exit.thread:         ; preds = %bb.b, %bb.a, %_quicklistBookmarkFindByNode.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 3 uses
  %.not39 = icmp eq ptr %i.y, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !51    ; 4 uses
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_quicklistBookmarkFindByNode.exit.thread
  store ptr %.pre, ptr %i.y, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_quicklistBookmarkFindByNode.exit.thread
  %.not40 = icmp eq ptr %.pre, null
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %.pre, ptr %i.aa, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr %0, align 8, !tbaa !46
  %i.ae = icmp eq ptr %1, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !47
  store ptr %i.af, ptr %0, align 8, !tbaa !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !39
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = and i32 %i.ak, 65535
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ap = sub i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !39
  call void @__quicklistCompress(ptr noundef nonnull %0, ptr noundef null)
  %i.aq = load i32, ptr %i.aj, align 8
  %i.ar = and i32 %i.aq, 196608
  %i.as = icmp eq i32 %i.ar, 131072
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !39
  %reass.sub = sub i64 %i.ax, %i.av
  %i.ay = add i64 %reass.sub, -8
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !39
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !39
  %i.bd = sub i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre48 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.be = phi ptr [ %.pre48, %bb.m ], [ %i.au, %bb.l ]
  call void @zfree(ptr noundef %i.be) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @zfree_usable(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #22
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !39
  %i.bi = sub i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef ptr @_quicklistBookmarkFindByNode(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #13 !guid !108 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load i64, ptr %i.b, align 8                ; 2 uses
  %3 = and i64 %2, 64424509440
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = lshr i64 %2, 32
  %wide.trip.count = and i64 %4, 15
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.08 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.lr.ph ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define dso_local void @_quicklistBookmarkDelete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 !guid !109 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64
  %.neg = sub i64 %i.d, %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50
  call void @zfree_usable(ptr noundef %i.f, ptr noundef nonnull %i.a) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = add i64 %i.h, 64424509440
  %i.j = and i64 %i.i, 64424509440                ; 2 uses
  %i.k = and i64 %i.h, -64424509441
  %i.l = or disjoint i64 %i.j, %i.k
  store i64 %i.l, ptr %i.g, align 8
  %i.m = load i64, ptr %i.a, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = sub i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.neg8 = shl i64 %.neg, 28
  %sext = add i64 %i.j, %.neg8
  %i.r = ashr exact i64 %sext, 28
  %i.s = and i64 %i.r, -16
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @quicklistDelIndex(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !110 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 786432
  %i.d = icmp eq i32 %i.c, 262144
  br i1 %i.d, label %bb.b, label %bb.c, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @__quicklistDelNode(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = load ptr, ptr %2, align 8, !tbaa !56
  %i.j = tail call ptr @lpDelete(ptr noundef %i.h, ptr noundef %i.i, ptr noundef nonnull %2) #22 ; 2 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !44
  %i.k = tail call i64 @lpBytes(ptr noundef %i.j) #22 ; 2 uses
  store i64 %i.k, ptr %i.e, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39
  %i.n = sub i64 %i.k, %i.f
  %i.o = add i64 %i.n, %i.m
  store i64 %i.o, ptr %i.l, align 8, !tbaa !39
  %i.p = load i32, ptr %i.a, align 8              ; 2 uses
  %i.q = add i32 %i.p, 65535
  %i.r = and i32 %i.q, 65535                      ; 2 uses
  %i.s = and i32 %i.p, -65536
  %i.t = or disjoint i32 %i.r, %i.s
  store i32 %i.t, ptr %i.a, align 8
  %.not = icmp eq i32 %i.r, 0                     ; 2 uses
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__quicklistDelNode(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !39
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !39
  %i.x = zext i1 %.not to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.020 = phi i32 [ 1, %bb.b ], [ %i.x, %bb.e ]
  ret i32 %.020
}

declare ptr @lpDelete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @quicklistDelEntry(ptr nofree noundef captures(none) initializes((16, 24)) %0, ptr noundef %1) local_unnamed_addr #1 !guid !111 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = load ptr, ptr %1, align 8, !tbaa !61     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 786432
  %i.j = icmp eq i32 %i.i, 262144
  br i1 %i.j, label %quicklistDelIndex.exit.thread, label %bb.b, !prof !52

quicklistDelIndex.exit.thread:                    ; preds = %bb.a
  tail call void @__quicklistDelNode(ptr noundef %i.f, ptr noundef nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.q = tail call ptr @lpDelete(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull %i.k) #22 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !44
  %i.r = tail call i64 @lpBytes(ptr noundef %i.q) #22 ; 2 uses
  store i64 %i.r, ptr %i.l, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = sub i64 %i.r, %i.m
  %i.v = add i64 %i.u, %i.t
  store i64 %i.v, ptr %i.s, align 8, !tbaa !39
  %i.w = load i32, ptr %i.g, align 8              ; 2 uses
  %i.x = add i32 %i.w, 65535
  %i.y = and i32 %i.x, 65535                      ; 2 uses
  %i.z = and i32 %i.w, -65536
  %i.aa = or disjoint i32 %i.y, %i.z
  store i32 %i.aa, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %quicklistDelIndex.exit, label %quicklistDelIndex.exit.thread16

quicklistDelIndex.exit.thread16:                  ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !39
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ae, align 8, !tbaa !63
  br label %bb.f

quicklistDelIndex.exit:                           ; preds = %bb.b
  tail call void @__quicklistDelNode(ptr noundef nonnull %i.f, ptr noundef nonnull %i.b)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %quicklistDelIndex.exit, %quicklistDelIndex.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.ai, align 8, !tbaa !63
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !64
  switch i32 %i.ak, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.al, align 8, !tbaa !65
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.am, align 8, !tbaa !66
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.an, align 8, !tbaa !65
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.ao, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %quicklistDelIndex.exit.thread16, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @quicklistReplaceEntry(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 !guid !112 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !67     ; 24 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = and i32 %i.f, 786432
  %i.h = icmp eq i32 %i.g, 262144
  br i1 %i.h, label %.critedge, label %bb.b, !prof !52

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8
  %i.k = shl i64 %i.j, 48
  %i.l = ashr exact i64 %i.k, 48                  ; 2 uses
  %i.m = trunc nsw i64 %i.l to i32
  %i.n = load i64, ptr @packed_threshold, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.c, label %.split, !prof !53

.split:                                           ; preds = %bb.b
  %.not159 = icmp ult i64 %3, %i.n
  br i1 %.not159, label %bb.d, label %.critedge, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.o = icmp sgt i64 %i.l, -1
  br i1 %i.o, label %isLargeElement.exit, label %.split156

.split156:                                        ; preds = %bb.c
  %i.p = tail call i32 @llvm.umax.i32(i32 range(i32 -2147483648, 0) %i.m, i32 -5)
  %narrow.i.i = xor i32 %i.p, -1
  %.0.i.i = zext nneg i32 %narrow.i.i to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @optimization_level, i64 %.0.i.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !39
  %i.s = icmp ugt i64 %3, %i.r
  br i1 %i.s, label %.critedge, label %bb.d, !prof !52

isLargeElement.exit:                              ; preds = %bb.c
  %i.t = icmp ugt i64 %3, 8192
  br i1 %i.t, label %.critedge, label %bb.d, !prof !52

bb.d:                                             ; preds = %.split156, %.split, %isLargeElement.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
begin_hunk_1_@quicklistPopCustom:bb.a
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  br i1 %.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %2, align 8, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.not53, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !76
  store i64 %i.ai, ptr %4, align 8, !tbaa !76
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %i.aj = load i32, ptr %i.l, align 8
  %i.ak = and i32 %i.aj, 786432
  %i.al = icmp eq i32 %i.ak, 262144
  br i1 %i.al, label %bb.ad, label %bb.ae, !prof !52

bb.ad:                                            ; preds = %bb.ac
  call void @__quicklistDelNode(ptr noundef nonnull %0, ptr noundef nonnull %.0)
  br label %quicklistDelIndex.exit

bb.ae:                                            ; preds = %bb.ac
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !44
  %i.ap = call ptr @lpDelete(ptr noundef %i.ao, ptr noundef %i.ab, ptr noundef nonnull %i.a) #22 ; 2 uses
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !44
  %i.aq = call i64 @lpBytes(ptr noundef %i.ap) #22 ; 2 uses
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !39
  %i.at = sub i64 %i.aq, %i.an
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !39
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
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !39
  %i.bb = add i64 %i.ba, -1
  store i64 %i.bb, ptr %i.e, align 8, !tbaa !39
  br label %quicklistDelIndex.exit

quicklistDelIndex.exit:                           ; preds = %bb.i, %bb.ag, %bb.ad, %bb.s, %bb.k, %bb.j, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %bb.s ], [ 1, %bb.ag ], [ 0, %bb.k ], [ 0, %bb.j ], [ 1, %bb.ad ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @_quicklistSaver(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) #1 !guid !136 {
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
define dso_local range(i32 0, 2) i32 @quicklistPop(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #1 !guid !137 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 0, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 0, ptr %i.c, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @quicklistPopCustom(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull @_quicklistSaver) ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !56
  store ptr %i.h, ptr %2, align 8, !tbaa !56
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not13 = icmp eq ptr %4, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %i.c, align 8, !tbaa !76
  store i64 %i.i, ptr %4, align 8, !tbaa !76
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not14 = icmp eq ptr %3, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load i64, ptr %i.b, align 8, !tbaa !39
  store i64 %i.j, ptr %3, align 8, !tbaa !39
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.g ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @quicklistPush(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #1 !guid !138 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 196608
  %.not13 = icmp eq i32 %i.d, 131072
  br i1 %.not13, label %bb.c, label %bb.d, !prof !52

bb.c:                                             ; preds = %bb.b
  tail call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1759) #22
  tail call void @abort() #23
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 196608
  %.not15 = icmp eq i32 %i.i, 131072
  br i1 %.not15, label %bb.f, label %bb.g, !prof !52

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
define dso_local void @quicklistRepr(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 !guid !140 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39
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
  %2 = load i64, ptr %i.g, align 8
  %3 = lshr i64 %2, 32
  %4 = trunc nuw i64 %3 to i32
  %i.q = and i32 %4, 15
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.q) ; 0 uses
  %.037 = load ptr, ptr %0, align 8, !tbaa !46    ; 3 uses
  %.not38 = icmp eq ptr %.037, null
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not32 = icmp eq i32 %1, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %.not32, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.040.us = phi ptr [ %.0.us, %.lr.ph.split.us ], [ %.037, %.lr.ph ] ; 3 uses
  %.03039.us = phi i32 [ %i.t, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.t = add nuw nsw i32 %.03039.us, 1
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.03039.us) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.040.us, i64 32
  %i.w = load i32, ptr %i.v, align 8              ; 5 uses
  %i.x = and i32 %i.w, 786432
  %i.y = icmp eq i32 %i.x, 262144
  %i.z = select i1 %i.y, ptr @.str.14, ptr @.str.15
  %i.aa = and i32 %i.w, 196608
  %i.ab = icmp eq i32 %i.aa, 65536
  %i.ac = select i1 %i.ab, ptr @.str.16, ptr @.str.17
  %i.ad = getelementptr inbounds nuw i8, ptr %.040.us, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !45
  %i.af = and i32 %i.w, 65535
  %i.ag = lshr i32 %i.w, 20
  %i.ah = and i32 %i.ag, 1
  %i.ai = lshr i32 %i.w, 21
  %i.aj = and i32 %i.ai, 1
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %i.z, ptr noundef nonnull %i.ac, i64 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ah, i32 noundef %i.aj) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.040.us, i64 8
  %.0.us = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  %.not.us = icmp eq ptr %.0.us, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !139

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.040 = phi ptr [ %.0, %bb.i ], [ %.037, %.lr.ph ] ; 7 uses
  %.03039 = phi i32 [ %i.am, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.am = add nuw nsw i32 %.03039, 1
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %.03039) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.040, i64 32 ; 7 uses
  %i.ap = load i32, ptr %i.ao, align 8            ; 5 uses
  %i.aq = and i32 %i.ap, 786432
  %i.ar = icmp eq i32 %i.aq, 262144
  %i.as = select i1 %i.ar, ptr @.str.14, ptr @.str.15
  %i.at = and i32 %i.ap, 196608
  %i.au = icmp eq i32 %i.at, 65536
  %i.av = select i1 %i.au, ptr @.str.16, ptr @.str.17
  %i.aw = getelementptr inbounds nuw i8, ptr %.040, i64 24 ; 4 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = and i32 %i.ap, 65535
  %i.az = lshr i32 %i.ap, 20
  %i.ba = and i32 %i.az, 1
  %i.bb = lshr i32 %i.ap, 21
  %i.bc = and i32 %i.bb, 1
  %i.bd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %i.as, ptr noundef nonnull %i.av, i64 noundef %i.ax, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %i.bc) ; 0 uses
  %i.be = load i32, ptr %i.ao, align 8            ; 3 uses
  %i.bf = and i32 %i.be, 196608
  %i.bg = icmp eq i32 %i.bf, 131072
  br i1 %i.bg, label %bb.b, label %__quicklistDecompressNode.exit

bb.b:                                             ; preds = %.lr.ph.split
  %i.bh = and i32 %i.be, -1114113
  store i32 %i.bh, ptr %i.ao, align 8
  %i.bi = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.bj = tail call noalias ptr @zmalloc(i64 noundef %i.bi) #24 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.040, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !44 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bo = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.bp = tail call i64 @lzf_decompress(ptr noundef nonnull %i.bm, i64 noundef %i.bn, ptr noundef %i.bj, i64 noundef %i.bo) #22
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @zfree(ptr noundef %i.bj) #22
  %.pre = load i32, ptr %i.ao, align 8
  br label %__quicklistDecompressNode.exit

bb.d:                                             ; preds = %bb.b
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !39
  tail call void @zfree(ptr noundef nonnull %i.bl) #22
  %i.bs = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.bt = load i64, ptr %i.s, align 8, !tbaa !39
  %reass.sub = sub i64 %i.bs, %i.br
  %i.bu = add i64 %reass.sub, -8
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.s, align 8, !tbaa !39
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !44
  %i.bw = load i32, ptr %i.ao, align 8
  %i.bx = and i32 %i.bw, -196609
  %i.by = or disjoint i32 %i.bx, 65536            ; 2 uses
  store i32 %i.by, ptr %i.ao, align 8
  br label %__quicklistDecompressNode.exit

__quicklistDecompressNode.exit:                   ; preds = %bb.d, %bb.c, %.lr.ph.split
  %i.bz = phi i32 [ %i.by, %bb.d ], [ %.pre, %bb.c ], [ %i.be, %.lr.ph.split ]
  %i.ca = lshr i32 %i.bz, 18
  %i.cb = and i32 %i.ca, 3
  switch i32 %i.cb, label %bb.g [
    i32 2, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %__quicklistDecompressNode.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !44
  tail call void @lpRepr(ptr noundef %i.cd) #22
  %puts33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %__quicklistDecompressNode.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !44
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %i.cf) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %__quicklistDecompressNode.exit, %bb.f, %bb.e
  %puts34 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.ch = load i32, ptr %i.ao, align 8
  %i.ci = and i32 %i.ch, 1245184
  %or.cond = icmp eq i32 %i.ci, 1114112
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cj = tail call i32 @__quicklistCompressNode(ptr noundef nonnull %0, ptr noundef nonnull %.040) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %.040, i64 8
  %.0 = load ptr, ptr %i.ck, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.i, %.lr.ph.split.us, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #16

declare void @lpRepr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @quicklistBookmarkCreate(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 !guid !141 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !142    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 64424509440                ; 2 uses
  %i.h = icmp eq i64 %i.g, 64424509440
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.not12.i = icmp eq i64 %i.g, 0
  br i1 %.not12.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.j = lshr i64 %i.f, 32
  %wide.trip.count.i = and i64 %i.j, 15
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull readonly dereferenceable(1) %1) #26
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_quicklistBookmarkFindByName.exit, label %bb.c

_quicklistBookmarkFindByName.exit:                ; preds = %.lr.ph.i
  store ptr %2, ptr %i.k, align 8, !tbaa !55
  br label %bb.d

.loopexit:                                        ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.o = lshr i64 %i.f, 28
  %i.p = and i64 %i.o, 240
  %i.q = add nuw nsw i64 %i.p, 64
  %i.r = call ptr @zrealloc_usable(ptr noundef nonnull %i.d, i64 noundef %i.q, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 4 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  %3 = load i64, ptr %i.t, align 8
  %4 = lshr i64 %3, 32
  %5 = and i64 %4, 15
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %5
  store ptr %2, ptr %i.u, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.v = call noalias ptr @zstrdup_usable(ptr noundef %1, ptr noundef nonnull %i.c) #22
  %i.w = load i64, ptr %i.t, align 8              ; 3 uses
  %i.x = lshr i64 %i.w, 32
  %i.y = and i64 %i.x, 15
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !50
  %i.ab = add i64 %i.w, 4294967296
  %i.ac = and i64 %i.ab, 64424509440
  %i.ad = and i64 %i.w, -64424509441
  %i.ae = or disjoint i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.t, align 8
  %i.af = load i64, ptr %i.a, align 8, !tbaa !39
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !39
  %i.ah = add i64 %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !39
  %i.ak = add i64 %i.ah, %i.aj
  %i.al = load i64, ptr %i.b, align 8, !tbaa !39
  %i.am = sub i64 %i.ak, %i.al
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %_quicklistBookmarkFindByName.exit, %.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %.loopexit ], [ 1, %_quicklistBookmarkFindByName.exit ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @_quicklistBookmarkFindByName(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 !guid !143 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load i64, ptr %i.b, align 8                ; 2 uses
  %3 = and i64 %2, 64424509440
  %.not12 = icmp eq i64 %3, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %4 = lshr i64 %2, 32
  %wide.trip.count = and i64 %4, 15
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %1) #26
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.08 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.c, %.lr.ph ]
  ret ptr %.08
}

declare ptr @zrealloc_usable(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noalias ptr @zstrdup_usable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @quicklistBookmarkFind(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 !guid !144 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %2 = load i64, ptr %i.b, align 8                ; 2 uses
  %3 = and i64 %2, 64424509440
  %.not12.i = icmp eq i64 %3, 0
  br i1 %.not12.i, label %_quicklistBookmarkFindByName.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %4 = lshr i64 %2, 32
  %wide.trip.count.i = and i64 %4, 15
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_quicklistBookmarkFindByName.exit.thread, label %.lr.ph.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull readonly dereferenceable(1) %1) #26
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_quicklistBookmarkFindByName.exit, label %bb.b

_quicklistBookmarkFindByName.exit:                ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %_quicklistBookmarkFindByName.exit.thread

_quicklistBookmarkFindByName.exit.thread:         ; preds = %bb.b, %bb.a, %_quicklistBookmarkFindByName.exit
  %.0 = phi ptr [ %i.g, %_quicklistBookmarkFindByName.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @quicklistBookmarkDelete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 !guid !145 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %2 = load i64, ptr %i.c, align 8                ; 2 uses
  %3 = and i64 %2, 64424509440
  %.not12.i = icmp eq i64 %3, 0
  br i1 %.not12.i, label %_quicklistBookmarkFindByName.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %4 = lshr i64 %2, 32
  %wide.trip.count.i = and i64 %4, 15
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_quicklistBookmarkFindByName.exit.thread, label %.lr.ph.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv.i ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull readonly dereferenceable(1) %1) #26
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_quicklistBookmarkFindByName.exit, label %bb.b

_quicklistBookmarkFindByName.exit:                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @zfree_usable(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #22
  %i.h = load i64, ptr %i.c, align 8              ; 2 uses
  %i.i = add i64 %i.h, 64424509440
  %i.j = and i64 %i.i, 64424509440                ; 2 uses
  %i.k = and i64 %i.h, -64424509441
  %i.l = or disjoint i64 %i.j, %i.k
  store i64 %i.l, ptr %i.c, align 8
  %i.m = load i64, ptr %i.a, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !39
  %i.p = sub i64 %i.o, %i.m
  store i64 %i.p, ptr %i.n, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = shl i64 %indvars.iv.i, 32
  %sext.i = sub i64 %i.j, %i.r
  %i.s = ashr exact i64 %sext.i, 28
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_quicklistBookmarkFindByName.exit.thread

_quicklistBookmarkFindByName.exit.thread:         ; preds = %bb.b, %bb.a, %_quicklistBookmarkFindByName.exit
  %.0 = phi i32 [ 1, %_quicklistBookmarkFindByName.exit ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nofree nounwind }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind allocsize(1) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!16}

!0 = distinct !{!0, !48}
!1 = distinct !{!1, !48}
!2 = distinct !{!2, !48}
!3 = distinct !{!3, !48}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"PIE Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{i32 1, !"ThinLTO", i32 0}
!11 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!12 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{i64 5832382177699820683}
!18 = !{i64 1362558488858288645}
!19 = !{i64 -5850750044260506230}
!20 = !{i64 7669555236175048740}
!21 = !{i64 -4610924665344926587}
!22 = !{i64 -4324822985471517412}
!23 = !{i64 -7902222870122945521}
!24 = !{i64 -5962164420546273239}
!25 = !{i64 1568825626733253403}
!26 = !{i64 -428378925449415717}
!27 = !{i64 -8325767559748539569}
!28 = !{i64 5121552798173434958}
!29 = !{i64 -5940507302380561671}
!30 = !{i64 2710157650665046663}
!31 = !{i64 -1066622761844377888}
!32 = !{i64 5304471506825436283}
!33 = !{i64 4120742142874737637}
!34 = !{i64 -1284038070177894612}
!35 = !{i64 -4358591991971758263}
!36 = !{i64 -4233380452152361301}
!37 = !{i64 -2483532719620971701}
!38 = !{!"long", !14, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"any pointer", !14, i64 0}
!41 = !{!"p1 _ZTS13quicklistNode", !40, i64 0}
!42 = !{!"p1 omnipotent char", !40, i64 0}
!43 = !{!"quicklistNode", !41, i64 0, !41, i64 8, !42, i64 16, !38, i64 24, !15, i64 32, !15, i64 34, !15, i64 34, !15, i64 34, !15, i64 34, !15, i64 34, !15, i64 34}
!44 = !{!43, !42, i64 16}
!45 = !{!43, !38, i64 24}
!46 = !{!41, !41, i64 0}
!47 = !{!43, !41, i64 8}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"quicklistBookmark", !41, i64 0, !42, i64 8}
!50 = !{!49, !42, i64 8}
!51 = !{!43, !41, i64 0}
!52 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!55 = !{!49, !41, i64 0}
!56 = !{!42, !42, i64 0}
!57 = !{!"p1 _ZTS9quicklist", !40, i64 0}
!58 = !{!"long long", !14, i64 0}
!59 = !{!"quicklistEntry", !57, i64 0, !41, i64 8, !42, i64 16, !42, i64 24, !58, i64 32, !38, i64 40, !15, i64 48}
!60 = !{!59, !41, i64 8}
!61 = !{!59, !57, i64 0}
!62 = !{!"quicklistIter", !57, i64 0, !41, i64 8, !42, i64 16, !38, i64 24, !15, i64 32}
!63 = !{!62, !42, i64 16}
!64 = !{!62, !15, i64 32}
!65 = !{!62, !41, i64 8}
!66 = !{!62, !38, i64 24}
!67 = !{!62, !57, i64 0}
!68 = !{!59, !15, i64 48}
!69 = !{!"branch_weights", i32 1, i32 127}
!70 = !{!"branch_weights", i32 127, i32 255873}
!71 = !{!59, !42, i64 16}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = !{!59, !42, i64 24}
!74 = !{!59, !38, i64 40}
!75 = !{!59, !58, i64 32}
!76 = !{!58, !58, i64 0}
!77 = !{i64 1705234403066551592}
!78 = !{i64 -4432603035479141787}
!79 = !{i64 1303288235555035453}
!80 = !{i64 6963244503366081773}
!81 = !{i64 -5991857316878949317}
!82 = !{i64 -2289943716856097115}
!83 = !{i64 5977236499154778686}
!84 = !{i64 -6570548393571220881}
!85 = !{i64 6035433593294459355}
!86 = distinct !{!86, !48}
!87 = !{i64 -1037390512384079915}
!88 = !{i64 -5300276173067360119}
!89 = !{i64 799169650110078547}
!90 = !{i64 -3055947659394607649}
!91 = !{i64 -6179876315415084227}
!92 = !{!40, !40, i64 0}
!93 = distinct !{!93, !48}
!94 = !{i64 -4333487263128243281}
!95 = !{i64 -5730224640745824222}
!96 = !{i64 2014855234779849596}
!97 = !{i64 8864323934407669025}
!98 = !{i64 -6734701486216540734}
!99 = !{i64 -7888034992471984554}
!100 = !{i64 -7004794803333823435}
!101 = !{i64 7023698090111802912}
!102 = !{i64 2459525300805843737}
!103 = !{i64 -823232961506366084}
!104 = !{i64 7775770607385846844}
!105 = !{i64 4205645587938887238}
!106 = !{i64 2552567331515967494}
!107 = !{i64 3083734908254982162}
!108 = !{i64 5540530555007282264}
!109 = !{i64 -5706377652736358028}
!110 = !{i64 5894713262950920905}
!111 = !{i64 -7488518270546675171}
!112 = !{i64 -1755785021578400088}
!113 = !{i64 8802190445757908125}
!114 = !{i64 -7928885680585663235}
!115 = !{i64 8205658154314770436}
!116 = !{i64 2312896132342753214}
!117 = !{i64 -2118805636954444030}
!118 = !{i64 8079187723017695115}
!119 = !{i64 -2055079380708162969}
!120 = !{i64 -6229110036538641107}
!121 = !{i64 -7825051116423031065}
!122 = !{i64 975926014132285357}
!123 = distinct !{!123, !48, !72}
!124 = !{i64 -2015062168385363700}
!125 = !{i64 -7924498498190234617}
end_hunk_1
