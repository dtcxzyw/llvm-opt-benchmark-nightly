Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/rax?download=true
inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxNewWithMetadata:bb.a

bb.h:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !tbaa !34
  %i.u = load i64, ptr %i.s, align 8, !tbaa !34
  %i.v = sub i64 %i.u, %i.t
  store i64 %i.v, ptr %i.s, align 8, !tbaa !34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @zfree(ptr noundef nonnull %i.e) #24
  br label %bb.j

bb.j:                                             ; preds = %raxNewNode.exit.thread, %bb.a, %bb.i
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.e, %raxNewNode.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret ptr %.0
}

declare void @zfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @raxNodeRealloc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 !guid !68 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = call ptr @zrealloc_usable(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !34
  %i.h = load i64, ptr %i.f, align 8, !tbaa !34
  %i.i = sub i64 %i.h, %i.g                       ; 2 uses
  store i64 %i.i, ptr %i.f, align 8, !tbaa !34
  %i.j = load i64, ptr %i.a, align 8, !tbaa !34
  %i.k = add i64 %i.j, %i.i
  store i64 %i.k, ptr %i.f, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret ptr %i.c
}

declare ptr @zrealloc_usable(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @raxReallocForData(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address_is_null) %2) local_unnamed_addr #1 !guid !69 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 4 uses
  %i.e = lshr i32 %i.d, 3                         ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = xor i32 %i.e, 3
  %.neg = add nuw nsw i32 %i.g, 1
  %i.h = and i32 %.neg, 7
  %i.i = zext nneg i32 %i.h to i64
  %i.j = and i32 %i.d, 4
  %.not = icmp eq i32 %i.j, 0
  %i.k = shl nuw nsw i64 %i.f, 3
  %spec.select = select i1 %.not, i64 %i.k, i64 8
  %i.l = and i32 %i.d, 1
  %.not11 = icmp eq i32 %i.l, 0
  %i.m = shl i32 %i.d, 2
  %i.n = and i32 %i.m, 8
  %i.o = xor i32 %i.n, 8
  %narrow = select i1 %.not11, i32 0, i32 %i.o
  %i.p = zext nneg i32 %narrow to i64
  %i.q = add nuw nsw i64 %i.f, 12
  %i.r = add nuw nsw i64 %i.q, %spec.select
  %i.s = add nuw nsw i64 %i.r, %i.i
  %i.t = add nuw nsw i64 %i.s, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.u = call ptr @zrealloc_usable(ptr noundef nonnull %1, i64 noundef %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #24 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %raxNodeRealloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32   ; 4 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %raxNodeRealloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.b, align 8, !tbaa !34
  %i.z = load i64, ptr %i.x, align 8, !tbaa !34
  %i.aa = sub i64 %i.z, %i.y                      ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !34
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !34
  %i.ac = add i64 %i.ab, %i.aa
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !34
  br label %raxNodeRealloc.exit

raxNodeRealloc.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %raxNodeRealloc.exit
  %.0 = phi ptr [ %i.u, %raxNodeRealloc.exit ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @raxSetData(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 !guid !70 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 4 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %i.a, -4
  %i.c = or disjoint i32 %i.b, 1
  %i.d = lshr i32 %i.a, 3                         ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = xor i32 %i.d, 3
  %.neg = add nuw nsw i32 %i.f, 1
  %i.g = and i32 %.neg, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = and i32 %i.a, 4
  %.not12 = icmp eq i32 %i.i, 0
  %i.j = shl nuw nsw i64 %i.e, 3
  %spec.select = select i1 %.not12, i64 %i.j, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store ptr %1, ptr %i.n, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = or i32 %i.a, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ %i.o, %bb.c ], [ %i.c, %bb.b ]
  store i32 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @raxGetData(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 !guid !71 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 4 uses
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %i.a, 3                         ; 2 uses
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = xor i32 %i.c, 3
  %.neg = add nuw nsw i32 %i.e, 1
  %i.f = and i32 %.neg, 7
  %i.g = zext nneg i32 %i.f to i64
  %i.h = and i32 %i.a, 4
  %.not11 = icmp eq i32 %i.h, 0
  %i.i = shl nuw nsw i64 %i.d, 3
  %spec.select = select i1 %.not11, i64 %i.i, i64 8
  %i.j = shl i32 %i.a, 3
  %i.k = and i32 %i.j, 8
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %spec.select
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  %.0.copyload = load ptr, ptr %i.q, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %.0.copyload, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @raxAddChild(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 !guid !73 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = load i32, ptr %1, align 4                ; 6 uses
  %i.f = and i32 %i.e, 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 263) #24
  tail call void @abort() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i32 %i.e, 3                         ; 2 uses
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 4
  %i.k = xor i32 %i.h, 3
  %.neg = add nuw nsw i32 %i.k, 1
  %i.l = and i32 %.neg, 7
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw nsw i64 %i.i, 3
  %i.o = and i32 %i.e, 1
  %.not = icmp eq i32 %i.o, 0
  %i.p = shl i32 %i.e, 2
  %i.q = and i32 %i.p, 8
  %i.r = xor i32 %i.q, 8
  %narrow = select i1 %.not, i32 0, i32 %i.r
  %i.s = zext nneg i32 %narrow to i64             ; 2 uses
  %i.t = add nuw nsw i64 %i.j, %i.n
  %i.u = add nuw nsw i64 %i.t, %i.m
  %i.v = add nuw nsw i64 %i.u, %i.s               ; 2 uses
  %5 = and i32 %i.e, -8
  %i.w = add i32 %5, 8                            ; 2 uses
  %i.x = lshr exact i32 %i.w, 3                   ; 2 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 4
  %i.aa = xor i32 %i.x, 3
  %.neg83 = add nuw nsw i32 %i.aa, 1
  %i.ab = and i32 %.neg83, 7
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.y, 3
  %i.ae = add nuw nsw i64 %i.z, %i.ad
  %i.af = add nuw nsw i64 %i.ae, %i.s
  %i.ag = add nuw nsw i64 %i.af, %i.ac            ; 3 uses
  %6 = or i32 %i.e, -8
  %7 = add i32 %6, %i.w
  store i32 %7, ptr %1, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ah = call ptr @zmalloc_usable(i64 noundef 8, ptr noundef nonnull %i.d) #24 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %raxNewNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ah, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %.not18.i = icmp eq ptr %i.ak, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i64, ptr %i.d, align 8, !tbaa !34
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !34
  %i.an = add i64 %i.am, %i.al
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !34
  br label %bb.f

raxNewNode.exit:                                  ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.p

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ao = call ptr @zrealloc_usable(ptr noundef nonnull %1, i64 noundef %i.ag, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #24 ; 9 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 4 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %raxNodeRealloc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !34
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.at = sub i64 %i.as, %i.ar                    ; 2 uses
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !34
  %i.au = load i64, ptr %i.b, align 8, !tbaa !34
  %i.av = add i64 %i.au, %i.at
  store i64 %i.av, ptr %i.aq, align 8, !tbaa !34
  br label %raxNodeRealloc.exit

raxNodeRealloc.exit:                              ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 4 uses
  %i.ax = load i32, ptr %i.ao, align 4            ; 3 uses
  %i.ay = lshr i32 %i.ax, 3                       ; 4 uses
  %.not100 = icmp eq i32 %i.ay, 0
  br i1 %.not100, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %raxNodeRealloc.exit
  %wide.trip.count = zext nneg i32 %i.ay to i64
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.a) #24
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !32 ; 3 uses
  %.not.i93 = icmp eq ptr %i.az, null
  br i1 %.not.i93, label %raxFreeNode.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !34
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !34
  %i.bc = sub i64 %i.bb, %i.ba
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !34
  br label %raxFreeNode.exit

raxFreeNode.exit:                                 ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bf = icmp ugt i8 %i.be, %2
  br i1 %i.bf, label %._crit_edge.loopexit.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !72

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph
  %i.bg = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %._crit_edge.loopexit.split.loop.exit, %raxNodeRealloc.exit
  %.078.lcssa = phi i32 [ 0, %raxNodeRealloc.exit ], [ %i.bg, %._crit_edge.loopexit.split.loop.exit ], [ %i.ay, %bb.k ] ; 3 uses
  %i.bh = and i32 %i.ax, 3
  %or.cond = icmp eq i32 %i.bh, 1
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.v
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bj, align 1
  store i64 %i.bm, ptr %i.bl, align 1
  %.pre = load i32, ptr %i.ao, align 4            ; 2 uses
  %.pre103 = lshr i32 %.pre, 3
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.pre-phi = phi i32 [ %.pre103, %bb.l ], [ %i.ay, %._crit_edge ] ; 3 uses
  %i.bn = phi i32 [ %.pre, %bb.l ], [ %i.ax, %._crit_edge ]
  %i.bo = sub nsw i64 %i.ag, %i.v                 ; 2 uses
  %i.bp = add nsw i64 %i.bo, -8                   ; 2 uses
  %i.bq = zext nneg i32 %.pre-phi to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bq
  %i.bs = xor i32 %.pre-phi, 3
  %.neg89 = add nuw nsw i32 %i.bs, 1
  %i.bt = and i32 %.neg89, 7
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bu ; 3 uses
  %i.bw = zext nneg i32 %.078.lcssa to i64        ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 3                ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bo
  %i.ca = sub nsw i32 %.pre-phi, %.078.lcssa
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %i.cc = shl nsw i64 %i.cb, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.by, i64 %i.cc, i1 false)
  %.not90 = icmp eq i64 %i.bp, 0
  br i1 %.not90, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull align 1 %i.bv, i64 %i.bx, i1 false)
  %.pre102 = load i32, ptr %i.ao, align 4         ; 2 uses
  %.pre104 = lshr i32 %.pre102, 3
  %.pre106 = sub nsw i32 %.pre104, %.078.lcssa
  %.pre108 = sext i32 %.pre106 to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre-phi109 = phi i64 [ %.pre108, %bb.n ], [ %i.cb, %bb.m ]
  %i.ce = phi i32 [ %.pre102, %bb.n ], [ %i.bn, %bb.m ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bw ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %i.cf, i64 %.pre-phi109, i1 false)
  store i8 %2, ptr %i.cf, align 1, !tbaa !38
  %8 = and i32 %i.ce, -8
  %i.ch = add i32 %8, 8                           ; 2 uses
  %9 = and i32 %i.ce, 7
  %10 = or disjoint i32 %i.ch, %9
  store i32 %10, ptr %i.ao, align 4
  %i.ci = lshr exact i32 %i.ch, 3                 ; 2 uses
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.cj
  %i.cl = xor i32 %i.ci, 3
  %.neg92 = add nuw nsw i32 %i.cl, 1
  %i.cm = and i32 %.neg92, 7
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bx ; 2 uses
  store ptr %i.ah, ptr %i.cp, align 8
  store ptr %i.ah, ptr %3, align 8, !tbaa !36
  store ptr %i.cp, ptr %4, align 8, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %raxNewNode.exit, %raxFreeNode.exit, %bb.o
  %.1 = phi ptr [ null, %raxNewNode.exit ], [ null, %raxFreeNode.exit ], [ %i.ao, %bb.o ]
  ret ptr %.1
}

declare void @_serverAssert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @raxCompressNode(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 !guid !74 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp ult i32 %i.e, 4
  br i1 %i.f, label %bb.c, label %bb.b, !prof !37

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 404) #24
  tail call void @abort() #25
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.g = call ptr @zmalloc_usable(i64 noundef 8, ptr noundef nonnull %i.d) #24 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %raxNewNode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %.not18.i = icmp eq ptr %i.j, null
  br i1 %.not18.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.d, align 8, !tbaa !34
  %i.l = load i64, ptr %i.j, align 8, !tbaa !34
  %i.m = add i64 %i.l, %i.k
  store i64 %i.m, ptr %i.j, align 8, !tbaa !34
  br label %bb.f

raxNewNode.exit:                                  ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %4, align 8, !tbaa !36
  br label %bb.s

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  store ptr %i.g, ptr %4, align 8, !tbaa !36
  %i.n = add i64 %3, 4
  %i.o = sub i64 4, %3
  %i.p = and i64 %i.o, 7
  %i.q = add i64 %i.n, %i.p                       ; 2 uses
  %i.r = add i64 %i.q, 8                          ; 2 uses
  %i.s = load i32, ptr %1, align 4                ; 4 uses
  %i.t = and i32 %i.s, 1
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %i.s, 2
  %.not.i = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not.i, label %bb.h, label %raxGetData.exit

bb.h:                                             ; preds = %bb.g
  %i.v = lshr i32 %i.s, 3                         ; 2 uses
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = xor i32 %i.v, 3
  %.neg.i = add nuw nsw i32 %i.x, 1
  %i.y = and i32 %.neg.i, 7
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = and i32 %i.s, 4
  %.not11.i = icmp eq i32 %i.aa, 0
  %i.ab = shl nuw nsw i64 %i.w, 3
  %spec.select.i = select i1 %.not11.i, i64 %i.ab, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %spec.select.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.0.copyload.i = load ptr, ptr %i.af, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %.0.copyload.i, %bb.h ], [ null, %bb.g ]
  %i.ag = add i64 %i.q, 16
  %spec.select51 = select i1 %.not.i, i64 %i.ag, i64 %i.r
  br label %bb.i

bb.i:                                             ; preds = %raxGetData.exit, %bb.f
  %.039 = phi ptr [ %.0.i, %raxGetData.exit ], [ null, %bb.f ] ; 2 uses
  %.0 = phi i64 [ %spec.select51, %raxGetData.exit ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ah = call ptr @zrealloc_usable(ptr noundef nonnull %1, i64 noundef %.0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #24 ; 8 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !32  ; 4 uses
  %.not.i53 = icmp eq ptr %i.aj, null
  br i1 %.not.i53, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !34
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !34
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !34
  %i.an = load i64, ptr %i.b, align 8, !tbaa !34
  %i.ao = add i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.aj, align 8, !tbaa !34
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.ap = load ptr, ptr %4, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @zfree_usable(ptr noundef %i.ap, ptr noundef nonnull %i.a) #24
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !32  ; 3 uses
  %.not.i54 = icmp eq ptr %i.aq, null
  br i1 %.not.i54, label %raxFreeNode.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !34
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !34
  %i.at = sub i64 %i.as, %i.ar
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !34
  br label %raxFreeNode.exit

raxFreeNode.exit:                                 ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.s

bb.n:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.au = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.av = trunc i64 %3 to i32
  %i.aw = shl i32 %i.av, 3                        ; 3 uses
  %i.ax = and i32 %i.au, 3
  %i.ay = or disjoint i32 %i.aw, %i.ax
  %i.az = or disjoint i32 %i.ay, 4                ; 2 uses
  store i32 %i.az, ptr %i.ah, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 1 %2, i64 %3, i1 false)
  %i.bb = and i32 %i.au, 1
  %.not43 = icmp eq i32 %i.bb, 0
  br i1 %.not43, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i55 = icmp eq ptr %.039, null
  br i1 %.not.i55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = or disjoint i32 %i.aw, 5
  %i.bd = and i64 %3, 536870911
  %i.be = xor i64 %3, 3
  %.neg.i56 = add i64 %i.be, 1
  %i.bf = and i64 %.neg.i56, 7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store ptr %.039, ptr %i.bi, align 8
  br label %raxSetData.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = or disjoint i32 %i.aw, 7
  br label %raxSetData.exit

raxSetData.exit:                                  ; preds = %bb.p, %bb.q
  %.sink.i = phi i32 [ %i.bj, %bb.q ], [ %i.bc, %bb.p ] ; 2 uses
  store i32 %.sink.i, ptr %i.ah, align 4
  br label %bb.r

bb.r:                                             ; preds = %raxSetData.exit, %bb.n
  %i.bk = phi i32 [ %.sink.i, %raxSetData.exit ], [ %i.az, %bb.n ] ; 5 uses
  %i.bl = lshr i32 %i.bk, 3                       ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = xor i32 %i.bl, 3
end_hunk_0
