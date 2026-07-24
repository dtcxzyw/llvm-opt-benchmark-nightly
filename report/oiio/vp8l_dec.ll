inline.NumInlined: 127
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@VP8LDecodeAlphaHeader:bb.a
bb.j:                                             ; preds = %Is8bOptimizable.exit
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !13
  switch i32 %i.ay, label %VP8LDelete.exit [
    i32 0, label %VP8LDelete.exit.sink.split
    i32 5, label %VP8LDelete.exit.sink.split
  ]

Is8bOptimizable.exit.thread:                      ; preds = %bb.h, %bb.i, %bb.g, %bb.e, %bb.d, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.az, align 8, !tbaa !81
  %i.ba = load i32, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !70
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !72
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.be, %i.bc                ; 2 uses
  %i.bg = and i32 %i.ba, 65535
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = sext i32 %i.ba to i64
  %i.bj = shl nsw i64 %i.bi, 4
  %i.bk = add nsw i64 %i.bj, %i.bh
  %i.bl = add nsw i64 %i.bk, %i.bf
  %i.bm = tail call ptr @WebPSafeMalloc(i64 noundef %i.bl, i64 noundef 4) #8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !58
  %i.bo = icmp eq ptr %i.bm, null
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Is8bOptimizable.exit.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bp, align 8, !tbaa !82
  %i.bq = load i32, ptr %i.a, align 8, !tbaa !13
  switch i32 %i.bq, label %VP8LDelete.exit [
    i32 0, label %VP8LDelete.exit.sink.split
    i32 5, label %VP8LDelete.exit.sink.split
  ]

bb.l:                                             ; preds = %Is8bOptimizable.exit.thread
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bf
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bh
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !82
  br label %AllocateInternalBuffers8b.exit

AllocateInternalBuffers8b.exit:                   ; preds = %Is8bOptimizable.exit, %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.bu, align 8, !tbaa !83
  br label %VP8LNew.exit.thread

VP8LDelete.exit.sink.split:                       ; preds = %bb.k, %bb.k, %bb.j, %bb.j
  store i32 1, ptr %i.a, align 8, !tbaa !13
  br label %VP8LDelete.exit

VP8LDelete.exit:                                  ; preds = %VP8LDelete.exit.sink.split, %bb.k, %bb.j, %bb.b
  tail call fastcc void @VP8LClear(ptr noundef nonnull %i.a)
  tail call void @WebPSafeFree(ptr noundef nonnull %i.a) #8
  br label %VP8LNew.exit.thread

VP8LNew.exit.thread:                              ; preds = %bb.a, %VP8LDelete.exit, %AllocateInternalBuffers8b.exit
  %.0 = phi i32 [ 0, %VP8LDelete.exit ], [ 1, %AllocateInternalBuffers8b.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DecodeImageStream(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef nonnull %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 3 uses
  %.not = icmp eq i32 %2, 0                       ; 4 uses
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 376 ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %ExpandColorMap.exit, %.preheader
  %.087.ph.ph = phi i32 [ %i.at, %ExpandColorMap.exit ], [ %0, %.preheader ] ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.d, %.outer.outer
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %i.h = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 1) #8
  %.not59 = icmp eq i32 %i.h, 0
  br i1 %.not59, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 8, !tbaa !59
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.j ; 6 uses
  %i.l = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 2) #8, !inline_history !84 ; 3 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !63   ; 2 uses
  %i.n = shl nuw i32 1, %i.l                      ; 2 uses
  %i.o = and i32 %i.m, %i.n
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.d, label %.thread110thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.p = or i32 %i.m, %i.n
  store i32 %i.p, ptr %i.g, align 8, !tbaa !63
  store i32 %i.l, ptr %i.k, align 8, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store i32 %.087.ph.ph, ptr %i.q, align 8, !tbaa !85
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr null, ptr %i.s, align 8, !tbaa !60
  %i.t = load i32, ptr %i.f, align 8, !tbaa !59
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.f, align 8, !tbaa !59
  switch i32 %i.l, label %.outer [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.v = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 3) #8, !inline_history !84
  %i.w = add i32 %i.v, 2                          ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !87
  %i.y = load i32, ptr %i.q, align 8, !tbaa !85
  %notmask = shl nsw i32 -1, %i.w
  %i.z = xor i32 %notmask, -1                     ; 2 uses
  %i.aa = add i32 %i.y, %i.z
  %i.ab = lshr i32 %i.aa, %i.w
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !86
  %i.ad = add i32 %i.ac, %i.z
  %i.ae = lshr i32 %i.ad, %i.w
  %i.af = tail call fastcc i32 @DecodeImageStream(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.s), !inline_history !84
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.thread110thread-pre-split, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.ah = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 8) #8, !inline_history !84
  %i.ai = add i32 %i.ah, 1                        ; 6 uses
  %i.aj = icmp sgt i32 %i.ai, 16
  %i.ak = icmp sgt i32 %i.ai, 4
  %i.al = icmp sgt i32 %i.ai, 2
  %i.am = select i1 %i.al, i32 2, i32 3
  %i.an = select i1 %i.ak, i32 1, i32 %i.am
  %i.ao = select i1 %i.aj, i32 0, i32 %i.an       ; 3 uses
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !85
  %i.aq = shl nuw nsw i32 1, %i.ao
  %i.ar = add i32 %i.ap, -1
  %i.as = add i32 %i.ar, %i.aq
  %i.at = lshr i32 %i.as, %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 %i.ao, ptr %i.au, align 4, !tbaa !87
  %i.av = tail call fastcc i32 @DecodeImageStream(i32 noundef %i.ai, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.s), !inline_history !84
  %.not46.i = icmp eq i32 %i.av, 0
  br i1 %.not46.i, label %.thread110thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !87
  %i.ax = lshr i32 8, %i.aw                       ; 2 uses
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = tail call ptr @WebPSafeMalloc(i64 noundef %i.az, i64 noundef 4) #8 ; 13 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !60  ; 9 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  %i.be = icmp sgt i32 %i.ai, 1
  br i1 %i.be, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.bf = shl i32 %i.ai, 2
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 5) ; 4 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -4      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bg, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %scevgep = getelementptr i8, ptr %i.ba, i64 %wide.trip.count.i
  %scevgep177 = getelementptr i8, ptr %i.bc, i64 4
  %scevgep178 = getelementptr i8, ptr %i.bc, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %i.ba, %scevgep178
  %bound1 = icmp ult ptr %scevgep177, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  %i.bh = add nsw i64 %n.vec, 4
  %load_initial = load <4 x i8>, ptr %i.ba, align 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %store_forwarded = phi <4 x i8> [ %load_initial, %vector.ph ], [ %i.bl, %vector.body ]
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bi = add i64 %index, 4                       ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bi
  %wide.load = load <4 x i8>, ptr %i.bj, align 1, !tbaa !7, !alias.scope !88
  %i.bk = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bl = add <4 x i8> %store_forwarded, %wide.load ; 2 uses
  store <4 x i8> %i.bl, ptr %i.bk, align 1, !tbaa !7, !alias.scope !91, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 4, %vector.memcheck ], [ 4, %.lr.ph.preheader.i ], [ %i.bh, %middle.block ] ; 4 uses
  %i.bn = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i.prol
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  %i.bq = getelementptr i8, ptr %i.ba, i64 %indvars.iv.i.prol ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !7
  %.narrow.i.prol = add i8 %i.bs, %i.bp
  store i8 %.narrow.i.prol, ptr %i.bq, align 1, !tbaa !7
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !94

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bt = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.h
  %.024.lcssa.i = phi i32 [ 4, %bb.h ], [ %smax.i, %middle.block ], [ %smax.i, %.lr.ph.i ], [ %smax.i, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.bv = shl nuw nsw i32 4, %i.ax                ; 2 uses
  %i.bw = icmp samesign ult i32 %.024.lcssa.i, %i.bv
  br i1 %i.bw, label %.lr.ph28.preheader.i, label %ExpandColorMap.exit

.lr.ph28.preheader.i:                             ; preds = %.preheader.i
  %i.bx = zext nneg i32 %.024.lcssa.i to i64
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 %i.bx
  %i.by = xor i32 %.024.lcssa.i, -1
  %i.bz = add nsw i32 %i.bv, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 0, i64 %i.cb, i1 false), !tbaa !7
  br label %ExpandColorMap.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !7
  %i.ce = getelementptr i8, ptr %i.ba, i64 %indvars.iv.i ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !7
  %.narrow.i = add i8 %i.cg, %i.cd
  store i8 %.narrow.i, ptr %i.ce, align 1, !tbaa !7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !7
  %i.cj = getelementptr i8, ptr %i.ba, i64 %indvars.iv.next.i ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !7
  %.narrow.i.1 = add i8 %i.cl, %i.ci
  store i8 %.narrow.i.1, ptr %i.cj, align 1, !tbaa !7
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !7
  %i.co = getelementptr i8, ptr %i.ba, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !7
  %.narrow.i.2 = add i8 %i.cq, %i.cn
  store i8 %.narrow.i.2, ptr %i.co, align 1, !tbaa !7
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !7
  %i.ct = getelementptr i8, ptr %i.ba, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !7
  %.narrow.i.3 = add i8 %i.cv, %i.cs
  store i8 %.narrow.i.3, ptr %i.ct, align 1, !tbaa !7
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !96

ExpandColorMap.exit:                              ; preds = %.preheader.i, %.lr.ph28.preheader.i
  %i.cw = load ptr, ptr %i.s, align 8, !tbaa !60
  tail call void @WebPSafeFree(ptr noundef %i.cw) #8
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !60
  br label %.outer.outer

.critedge.i:                                      ; preds = %bb.g
  %i.cx = load i32, ptr %3, align 8, !tbaa !13    ; 2 uses
  switch i32 %i.cx, label %.thread110 [
    i32 0, label %VP8LSetError.exit.thread.sink.split
    i32 5, label %VP8LSetError.exit.thread.sink.split
  ]

.critedge:                                        ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ %.087.ph.ph, %bb.b ] ; 6 uses
  %i.cy = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 1) #8
  %.not61 = icmp eq i32 %i.cy, 0
  br i1 %.not61, label %.critedge68, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.cz = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 4) #8 ; 2 uses
  %i.da = add i32 %i.cz, -1
  %i.db = icmp ult i32 %i.da, 11
  br i1 %i.db, label %.critedge68, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = load i32, ptr %3, align 8, !tbaa !13
  switch i32 %i.dc, label %VP8LSetError.exit.thread [
    i32 0, label %VP8LSetError.exit.thread.sink.split
    i32 5, label %VP8LSetError.exit.thread.sink.split
  ]

.critedge68:                                      ; preds = %.critedge, %bb.i
  %.052 = phi i32 [ %i.cz, %bb.i ], [ 0, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 3 uses
  br i1 %.not, label %VP8LSetError.exit77, label %bb.k

bb.k:                                             ; preds = %.critedge68
  %i.de = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 1) #8, !inline_history !98
  %.not79.i = icmp eq i32 %i.de, 0
  br i1 %.not79.i, label %VP8LSetError.exit77, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 3) #8, !inline_history !98
  %i.dg = add i32 %i.df, 2                        ; 4 uses
  %i.dh = shl nuw i32 1, %i.dg                    ; 2 uses
  %i.di = add i32 %.1, -1
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, %i.dg                   ; 2 uses
  %i.dl = add i32 %1, -1
  %i.dm = add i32 %i.dl, %i.dh
  %i.dn = lshr i32 %i.dm, %i.dg                   ; 2 uses
  %i.do = mul i32 %i.dk, %i.dn                    ; 6 uses
  %i.dp = call fastcc i32 @DecodeImageStream(i32 noundef %i.dk, i32 noundef %i.dn, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.a), !inline_history !98
  %.not80.i = icmp eq i32 %i.dp, 0
  br i1 %.not80.i, label %VP8LSetError.exit77.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 196
  store i32 %i.dg, ptr %i.dq, align 4, !tbaa !99
  %i.dr = icmp sgt i32 %i.do, 0                   ; 2 uses
  br i1 %i.dr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 3 uses
  %min.iters.check181 = icmp ult i32 %i.do, 8
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %.lr.ph
  %n.vec184 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph182
  %index186 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body185 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph182 ], [ %i.eb, %vector.body185 ]
  %vec.phi187 = phi <4 x i32> [ splat (i32 1), %vector.ph182 ], [ %i.ec, %vector.body185 ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index186 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load188 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !3
  %wide.load189 = load <4 x i32>, ptr %i.du, align 4, !tbaa !3
  %i.dv = lshr <4 x i32> %wide.load188, splat (i32 8)
  %i.dw = lshr <4 x i32> %wide.load189, splat (i32 8)
  %i.dx = and <4 x i32> %i.dv, splat (i32 65535)  ; 2 uses
  %i.dy = and <4 x i32> %i.dw, splat (i32 65535)  ; 2 uses
  store <4 x i32> %i.dx, ptr %i.dt, align 4, !tbaa !3
  store <4 x i32> %i.dy, ptr %i.du, align 4, !tbaa !3
  %i.dz = add nuw nsw <4 x i32> %i.dx, splat (i32 1)
  %i.ea = add nuw nsw <4 x i32> %i.dy, splat (i32 1)
  %i.eb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.dz) ; 2 uses
  %i.ec = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi187, <4 x i32> %i.ea) ; 2 uses
  %index.next190 = add nuw i64 %index186, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next190, %n.vec184
  br i1 %i.ed, label %middle.block191, label %vector.body185, !llvm.loop !100

middle.block191:                                  ; preds = %vector.body185
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eb, <4 x i32> %i.ec)
  %i.ee = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n192 = icmp eq i64 %n.vec184, %wide.trip.count
  br i1 %cmp.n192, label %._crit_edge, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %.lr.ph, %middle.block191
end_hunk_0
begin_hunk_1_@VP8LDecodeAlphaImageStream:bb.a
  %i.fy = add nsw i32 %i.fv, -2
  %i.fz = lshr i32 %i.fy, 1                       ; 2 uses
  %i.ga = and i32 %i.fv, 1
  %i.gb = or disjoint i32 %i.ga, 2
  %i.gc = shl i32 %i.gb, %i.fz
  %i.gd = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.q, i32 noundef %i.fz) #8
  %i.ge = add i32 %i.gd, %i.gc
  br label %GetCopyDistance.exit.i

GetCopyDistance.exit.i:                           ; preds = %bb.w, %VP8LFillBitWindow.exit161.i
  %.0.in.i.i = phi i32 [ %i.ge, %bb.w ], [ %i.fv, %VP8LFillBitWindow.exit161.i ] ; 2 uses
  %.0.i162.i = add i32 %.0.in.i.i, 1              ; 2 uses
  %i.gf = icmp sgt i32 %.0.i162.i, 120
  br i1 %i.gf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %GetCopyDistance.exit.i
  %i.gg = add nsw i32 %.0.in.i.i, -119
  br label %PlaneCodeToDistance.exit.i

bb.y:                                             ; preds = %GetCopyDistance.exit.i
  %i.gh = sext i32 %.0.i162.i to i64
  %i.gi = getelementptr i8, ptr @kCodeToPlane, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 -1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !7
  %i.gl = zext i8 %i.gk to i32                    ; 2 uses
  %i.gm = lshr i32 %i.gl, 4
  %i.gn = and i32 %i.gl, 15
  %i.go = mul nsw i32 %i.gm, %i.j
  %reass.sub = sub i32 %i.go, %i.gn
  %i.gp = add i32 %reass.sub, 8
  %i.gq = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 1)
  br label %PlaneCodeToDistance.exit.i

PlaneCodeToDistance.exit.i:                       ; preds = %bb.y, %bb.x
  %.0.i163.i = phi i32 [ %i.gg, %bb.x ], [ %i.gq, %bb.y ] ; 5 uses
  %.not135.i = icmp slt i32 %.0116229.i, %.0.i163.i
  %i.gr = sub nsw i32 %i.r, %.0116229.i
  %.not136.i = icmp slt i32 %i.gr, %.0.i.i154.i
  %or.cond146.i = select i1 %.not135.i, i1 true, i1 %.not136.i
  br i1 %or.cond146.i, label %.thread203.i, label %bb.z

bb.z:                                             ; preds = %PlaneCodeToDistance.exit.i
  %i.gs = zext nneg i32 %.0116229.i to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.gs ; 16 uses
  %i.gu = zext i32 %.0.i163.i to i64
  %i.gv = sub nsw i64 0, %i.gu
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.gv ; 17 uses
  %i.gx = icmp sgt i32 %.0.i.i154.i, 7
  br i1 %i.gx, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  switch i32 %.0.i163.i, label %bb.ae [
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 4, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.gy = load i8, ptr %i.gw, align 1, !tbaa !7
  %i.gz = zext i8 %i.gy to i32
  %i.ha = mul nuw i32 %i.gz, 16843009
  br label %.critedge.i.i

bb.ac:                                            ; preds = %bb.aa
  %.0.copyload8.i.i = load i16, ptr %i.gw, align 1
  %.0.insert.ext.i.i = zext i16 %.0.copyload8.i.i to i32
  %i.hb = mul nuw i32 %.0.insert.ext.i.i, 65537
  br label %.critedge.i.i

bb.ad:                                            ; preds = %bb.aa
  %.0.copyload.i.i = load i32, ptr %i.gw, align 1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ad, %bb.ac, %bb.ab
  %.027.i.i = phi i32 [ %i.ha, %bb.ab ], [ %i.hb, %bb.ac ], [ %.0.copyload.i.i, %bb.ad ] ; 8 uses
  %i.hc = ptrtoint ptr %i.gt to i64
  %i.hd = and i64 %i.hc, 3
  %.not22.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not22.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i164.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i164.i, %.lr.ph.i.i164.i.1, %.lr.ph.i.i164.i.2, %.lr.ph.i.i164.i.3, %.critedge.i.i
  %.021.lcssa.i.i.i = phi ptr [ %i.gw, %.critedge.i.i ], [ %i.hj, %.lr.ph.i.i164.i ], [ %i.hp, %.lr.ph.i.i164.i.1 ], [ %i.hw, %.lr.ph.i.i164.i.2 ], [ %i.id, %.lr.ph.i.i164.i.3 ] ; 8 uses
  %.020.lcssa.i.i.i = phi ptr [ %i.gt, %.critedge.i.i ], [ %i.hl, %.lr.ph.i.i164.i ], [ %i.hr, %.lr.ph.i.i164.i.1 ], [ %i.hy, %.lr.ph.i.i164.i.2 ], [ %i.if, %.lr.ph.i.i164.i.3 ] ; 10 uses
  %.019.lcssa.i.i.i = phi i32 [ %.0.i.i154.i, %.critedge.i.i ], [ %.0.in.i.i.i, %.lr.ph.i.i164.i ], [ %i.ht, %.lr.ph.i.i164.i.1 ], [ %i.ia, %.lr.ph.i.i164.i.2 ], [ %i.ig, %.lr.ph.i.i164.i.3 ] ; 3 uses
  %.018.lcssa.i.i.i = phi i32 [ %.027.i.i, %.critedge.i.i ], [ %i.hm, %.lr.ph.i.i164.i ], [ %i.hs, %.lr.ph.i.i164.i.1 ], [ %i.hz, %.lr.ph.i.i164.i.2 ], [ %.027.i.i, %.lr.ph.i.i164.i.3 ] ; 2 uses
  %.020.lcssa.i.i.i91 = ptrtoaddr ptr %.020.lcssa.i.i.i to i64
  %.021.lcssa.i.i.i92 = ptrtoaddr ptr %.021.lcssa.i.i.i to i64
  %i.he = ashr i32 %.019.lcssa.i.i.i, 2           ; 5 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph31.preheader.i.i.i, label %._crit_edge.i.i166.i

.lr.ph31.preheader.i.i.i:                         ; preds = %.preheader.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.he to i64 ; 3 uses
  %min.iters.check123 = icmp ult i32 %i.he, 8
  br i1 %min.iters.check123, label %.lr.ph31.i.i.i.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph31.preheader.i.i.i
  %n.vec126 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.018.lcssa.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next129, %vector.body127 ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.020.lcssa.i.i.i, i64 %index128 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.hg, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat, ptr %i.hh, align 4, !tbaa !3
  %index.next129 = add nuw i64 %index128, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next129, %n.vec126
  br i1 %i.hi, label %middle.block130, label %vector.body127, !llvm.loop !113

middle.block130:                                  ; preds = %vector.body127
  %cmp.n131 = icmp eq i64 %n.vec126, %wide.trip.count.i.i.i
  br i1 %cmp.n131, label %._crit_edge.i.i166.i, label %.lr.ph31.i.i.i.preheader

.lr.ph31.i.i.i.preheader:                         ; preds = %.lr.ph31.preheader.i.i.i, %middle.block130
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph31.preheader.i.i.i ], [ %n.vec126, %middle.block130 ]
  br label %.lr.ph31.i.i.i

.lr.ph.i.i164.i:                                  ; preds = %.critedge.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 1 ; 2 uses
  %i.hk = load i8, ptr %i.gw, align 1, !tbaa !7
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 1 ; 3 uses
  store i8 %i.hk, ptr %i.gt, align 1, !tbaa !7
  %i.hm = tail call noundef i32 @llvm.fshl.i32(i32 %.027.i.i, i32 %.027.i.i, i32 24)
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = and i64 %i.hn, 3
  %.not.i.i165.i = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i165.i, label %.preheader.i.i.i, label %.lr.ph.i.i164.i.1

.lr.ph.i.i164.i.1:                                ; preds = %.lr.ph.i.i164.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 2 ; 2 uses
  %i.hq = load i8, ptr %i.hj, align 1, !tbaa !7
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gt, i64 2 ; 3 uses
  store i8 %i.hq, ptr %i.hl, align 1, !tbaa !7
  %i.hs = tail call i32 @llvm.fshl.i32(i32 %.027.i.i, i32 %.027.i.i, i32 16)
  %i.ht = add nsw i32 %.0.in.i.i.i, -1
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = and i64 %i.hu, 3
  %.not.i.i165.i.1 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i165.i.1, label %.preheader.i.i.i, label %.lr.ph.i.i164.i.2

.lr.ph.i.i164.i.2:                                ; preds = %.lr.ph.i.i164.i.1
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gw, i64 3 ; 2 uses
  %i.hx = load i8, ptr %i.hp, align 1, !tbaa !7
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gt, i64 3 ; 3 uses
  store i8 %i.hx, ptr %i.hr, align 1, !tbaa !7
  %i.hz = tail call i32 @llvm.fshl.i32(i32 %.027.i.i, i32 %.027.i.i, i32 8)
  %i.ia = add nsw i32 %.0.in.i.i.i, -2
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = and i64 %i.ib, 3
  %.not.i.i165.i.2 = icmp eq i64 %i.ic, 0
  br i1 %.not.i.i165.i.2, label %.preheader.i.i.i, label %.lr.ph.i.i164.i.3

.lr.ph.i.i164.i.3:                                ; preds = %.lr.ph.i.i164.i.2
  %i.id = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !7
  %i.if = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  store i8 %i.ie, ptr %i.hy, align 1, !tbaa !7
  %i.ig = add nsw i32 %.0.in.i.i.i, -3
  br label %.preheader.i.i.i

.lr.ph31.i.i.i:                                   ; preds = %.lr.ph31.i.i.i.preheader, %.lr.ph31.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph31.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph31.i.i.i.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.020.lcssa.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %.018.lcssa.i.i.i, ptr %i.ih, align 4, !tbaa !3
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i167.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i167.i, label %._crit_edge.i.i166.i, label %.lr.ph31.i.i.i, !llvm.loop !114

._crit_edge.i.i166.i:                             ; preds = %.lr.ph31.i.i.i, %middle.block130, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %.preheader.i.i.i ], [ %i.he, %middle.block130 ], [ %i.he, %.lr.ph31.i.i.i ] ; 2 uses
  %i.ii = shl nuw nsw i32 %.0.lcssa.i.i.i, 2
  %i.ij = icmp slt i32 %i.ii, %.019.lcssa.i.i.i
  br i1 %i.ij, label %iter.check109, label %CopyBlock8b.exit.i

iter.check109:                                    ; preds = %._crit_edge.i.i166.i
  %i.ik = zext nneg i32 %.0.lcssa.i.i.i to i64
  %i.il = shl nuw nsw i64 %i.ik, 2                ; 6 uses
  %wide.trip.count46.i.i.i = zext nneg i32 %.019.lcssa.i.i.i to i64 ; 4 uses
  %i.im = sub nsw i64 %wide.trip.count46.i.i.i, %i.il ; 7 uses
  %min.iters.check94 = icmp ult i64 %i.im, 8
  %i.in = sub i64 %.021.lcssa.i.i.i92, %.020.lcssa.i.i.i91
  %diff.check93 = icmp ugt i64 %i.in, -32
  %or.cond = select i1 %min.iters.check94, i1 true, i1 %diff.check93
  br i1 %or.cond, label %.lr.ph35.i.i.i.preheader, label %vector.main.loop.iter.check95

vector.main.loop.iter.check95:                    ; preds = %iter.check109
  %min.iters.check96 = icmp ult i64 %i.im, 32
  br i1 %min.iters.check96, label %vec.epilog.ph113, label %vector.ph97

vector.ph97:                                      ; preds = %vector.main.loop.iter.check95
  %n.mod.vf98 = and i64 %i.im, 24
  %n.vec99 = and i64 %i.im, -32                   ; 4 uses
  %i.io = add nsw i64 %i.il, %n.vec99
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph97
  %index101 = phi i64 [ 0, %vector.ph97 ], [ %index.next104, %vector.body100 ] ; 2 uses
  %i.ip = add i64 %i.il, %index101                ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load102 = load <16 x i8>, ptr %i.iq, align 1, !tbaa !7
  %wide.load103 = load <16 x i8>, ptr %i.ir, align 1, !tbaa !7
  %i.is = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %i.ip ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  store <16 x i8> %wide.load102, ptr %i.is, align 1, !tbaa !7
  store <16 x i8> %wide.load103, ptr %i.it, align 1, !tbaa !7
  %index.next104 = add nuw i64 %index101, 32      ; 2 uses
  %i.iu = icmp eq i64 %index.next104, %n.vec99
  br i1 %i.iu, label %middle.block105, label %vector.body100, !llvm.loop !115

middle.block105:                                  ; preds = %vector.body100
  %cmp.n106 = icmp eq i64 %i.im, %n.vec99
  br i1 %cmp.n106, label %CopyBlock8b.exit.i, label %vec.epilog.iter.check111

vec.epilog.iter.check111:                         ; preds = %middle.block105
  %min.epilog.iters.check112 = icmp eq i64 %n.mod.vf98, 0
  br i1 %min.epilog.iters.check112, label %.lr.ph35.i.i.i.preheader, label %vec.epilog.ph113, !prof !116

vec.epilog.ph113:                                 ; preds = %vector.main.loop.iter.check95, %vec.epilog.iter.check111
  %vec.epilog.resume.val107 = phi i64 [ %n.vec99, %vec.epilog.iter.check111 ], [ 0, %vector.main.loop.iter.check95 ]
  %n.vec115 = and i64 %i.im, -8                   ; 3 uses
  %i.iv = add nsw i64 %i.il, %n.vec115
  br label %vec.epilog.vector.body116

vec.epilog.vector.body116:                        ; preds = %vec.epilog.vector.body116, %vec.epilog.ph113
  %index117 = phi i64 [ %vec.epilog.resume.val107, %vec.epilog.ph113 ], [ %index.next119, %vec.epilog.vector.body116 ] ; 2 uses
  %i.iw = add i64 %i.il, %index117                ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %i.iw
  %wide.load118 = load <8 x i8>, ptr %i.ix, align 1, !tbaa !7
  %i.iy = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %i.iw
  store <8 x i8> %wide.load118, ptr %i.iy, align 1, !tbaa !7
  %index.next119 = add nuw i64 %index117, 8       ; 2 uses
  %i.iz = icmp eq i64 %index.next119, %n.vec115
  br i1 %i.iz, label %vec.epilog.middle.block120, label %vec.epilog.vector.body116, !llvm.loop !117

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body116
  %cmp.n121 = icmp eq i64 %i.im, %n.vec115
  br i1 %cmp.n121, label %CopyBlock8b.exit.i, label %.lr.ph35.i.i.i.preheader

.lr.ph35.i.i.i.preheader:                         ; preds = %iter.check109, %vec.epilog.iter.check111, %vec.epilog.middle.block120
  %indvars.iv43.i.i.i.ph = phi i64 [ %i.il, %iter.check109 ], [ %i.io, %vec.epilog.iter.check111 ], [ %i.iv, %vec.epilog.middle.block120 ] ; 4 uses
  %i.ja = sub nsw i64 %wide.trip.count46.i.i.i, %indvars.iv43.i.i.i.ph
  %xtraiter = and i64 %i.ja, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph35.i.i.i.prol.loopexit, label %.lr.ph35.i.i.i.prol

.lr.ph35.i.i.i.prol:                              ; preds = %.lr.ph35.i.i.i.preheader, %.lr.ph35.i.i.i.prol
  %indvars.iv43.i.i.i.prol = phi i64 [ %indvars.iv.next44.i.i.i.prol, %.lr.ph35.i.i.i.prol ], [ %indvars.iv43.i.i.i.ph, %.lr.ph35.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph35.i.i.i.prol ], [ 0, %.lr.ph35.i.i.i.preheader ]
  %i.jb = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv43.i.i.i.prol
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !7
  %i.jd = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv43.i.i.i.prol
  store i8 %i.jc, ptr %i.jd, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.prol = add nuw nsw i64 %indvars.iv43.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph35.i.i.i.prol.loopexit, label %.lr.ph35.i.i.i.prol, !llvm.loop !118

.lr.ph35.i.i.i.prol.loopexit:                     ; preds = %.lr.ph35.i.i.i.prol, %.lr.ph35.i.i.i.preheader
  %indvars.iv43.i.i.i.unr = phi i64 [ %indvars.iv43.i.i.i.ph, %.lr.ph35.i.i.i.preheader ], [ %indvars.iv.next44.i.i.i.prol, %.lr.ph35.i.i.i.prol ]
  %i.je = sub nsw i64 %indvars.iv43.i.i.i.ph, %wide.trip.count46.i.i.i
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %CopyBlock8b.exit.i, label %.lr.ph35.i.i.i

.lr.ph35.i.i.i:                                   ; preds = %.lr.ph35.i.i.i.prol.loopexit, %.lr.ph35.i.i.i
  %indvars.iv43.i.i.i = phi i64 [ %indvars.iv.next44.i.i.i.3, %.lr.ph35.i.i.i ], [ %indvars.iv43.i.i.i.unr, %.lr.ph35.i.i.i.prol.loopexit ] ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv43.i.i.i
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !7
  %i.ji = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv43.i.i.i
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i = add nuw nsw i64 %indvars.iv43.i.i.i, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !7
  %i.jl = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.1 = add nuw nsw i64 %indvars.iv43.i.i.i, 2 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !7
  %i.jo = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.1
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.2 = add nuw nsw i64 %indvars.iv43.i.i.i, 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.021.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !7
  %i.jr = getelementptr inbounds nuw i8, ptr %.020.lcssa.i.i.i, i64 %indvars.iv.next44.i.i.i.2
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !7
  %indvars.iv.next44.i.i.i.3 = add nuw nsw i64 %indvars.iv43.i.i.i, 4 ; 2 uses
  %exitcond47.not.i.i.i.3 = icmp eq i64 %indvars.iv.next44.i.i.i.3, %wide.trip.count46.i.i.i
  br i1 %exitcond47.not.i.i.i.3, label %CopyBlock8b.exit.i, label %.lr.ph35.i.i.i, !llvm.loop !119

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %.not.i.i = icmp slt i32 %.0.i163.i, %.0.i.i154.i
  br i1 %.not.i.i, label %iter.check, label %bb.af

iter.check:                                       ; preds = %bb.ae
  %wide.trip.count.i.i = zext i32 %.0.i.i154.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.0.i.i154.i, 4
  %i.js = add i32 %.0.i163.i, -1
  %diff.check = icmp ult i32 %i.js, 31
  %or.cond133 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond133, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check82 = icmp ult i32 %.0.i.i154.i, 32
  br i1 %min.iters.check82, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load = load <16 x i8>, ptr %i.jt, align 1, !tbaa !7
  %wide.load83 = load <16 x i8>, ptr %i.ju, align 1, !tbaa !7
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %index ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store <16 x i8> %wide.load, ptr %i.jv, align 1, !tbaa !7
  store <16 x i8> %wide.load83, ptr %i.jw, align 1, !tbaa !7
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jx = icmp eq i64 %index.next, %n.vec
  br i1 %i.jx, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %CopyBlock8b.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %index86
  %wide.load87 = load <4 x i8>, ptr %i.jy, align 1, !tbaa !7
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %index86
  store <4 x i8> %wide.load87, ptr %i.jz, align 1, !tbaa !7
  %index.next88 = add nuw i64 %index86, 4         ; 2 uses
  %i.ka = icmp eq i64 %index.next88, %n.vec85
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !122

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %n.vec85, %wide.trip.count.i.i
  br i1 %cmp.n89, label %CopyBlock8b.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec85, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter144 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i.i.prol
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !7
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i.prol
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !7
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !123

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ke = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.kf = icmp ugt i64 %i.ke, -4
  br i1 %i.kf, label %CopyBlock8b.exit.i, label %.lr.ph.i.i

bb.af:                                            ; preds = %bb.ae
  %i.kg = sext i32 %.0.i.i154.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gt, ptr align 1 %i.gw, i64 %i.kg, i1 false)
  br label %CopyBlock8b.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.i.i
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.i.i
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next.i.i
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !7
  %i.km = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next.i.i
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !7
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next.i.i.1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !7
  %i.kp = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next.i.i.1
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !7
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next.i.i.2
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !7
  %i.ks = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next.i.i.2
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !7
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %CopyBlock8b.exit.i, label %.lr.ph.i.i, !llvm.loop !124

CopyBlock8b.exit.i:                               ; preds = %.lr.ph35.i.i.i.prol.loopexit, %.lr.ph35.i.i.i, %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block105, %vec.epilog.middle.block120, %middle.block, %vec.epilog.middle.block, %bb.af, %._crit_edge.i.i166.i
  %i.kt = add nsw i32 %.0.i.i154.i, %.0116229.i   ; 3 uses
  %i.ku = add nsw i32 %.0.i.i154.i, %.0111230.i   ; 3 uses
  %.not137223.i = icmp slt i32 %i.ku, %i.j
  br i1 %.not137223.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %CopyBlock8b.exit.i, %bb.aj
  %.1107225.i = phi i32 [ %i.kw, %bb.aj ], [ %.0106232.i, %CopyBlock8b.exit.i ] ; 4 uses
  %.1112224.i = phi i32 [ %i.kv, %bb.aj ], [ %i.ku, %CopyBlock8b.exit.i ]
  %i.kv = sub nsw i32 %.1112224.i, %i.j           ; 3 uses
  %i.kw = add nsw i32 %.1107225.i, 1              ; 6 uses
  %.not139.not.i = icmp slt i32 %.1107225.i, %1
  %i.kx = and i32 %i.kw, 15
  %i.ky = icmp eq i32 %i.kx, 0
  %or.cond148.i = select i1 %.not139.not.i, i1 %i.ky, i1 false
  br i1 %or.cond148.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.lr.ph.i
  %i.kz = load ptr, ptr %i.au, align 8, !tbaa !73 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !74 ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 12 ; 3 uses
end_hunk_1
