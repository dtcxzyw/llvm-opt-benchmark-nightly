Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_dec?download=true
inline.NumInlined: 132
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@VP8LDecodeAlphaHeader:bb.a
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !61
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul nsw i64 %i.be, %i.bc                ; 2 uses
  %i.bg = sext i32 %i.ba to i64                   ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %.not.i40 = icmp eq ptr %i.bi, null
  br i1 %.not.i40, label %bb.m, label %bb.k

bb.k:                                             ; preds = %Is8bOptimizable.exit.thread
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !71
  %i.bk = icmp ugt i32 %i.bj, 10
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !62  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 124
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !73
  %i.bq = sub nsw i32 %i.bn, %i.bp
  %i.br = shl i32 %i.bq, 1
  %i.bs = add i32 %i.br, 2
  %i.bt = sext i32 %i.bs to i64
  %i.bu = lshr exact i64 %i.bt, 1
  %i.bv = and i64 %i.bu, 4611686018427387902
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %Is8bOptimizable.exit.thread
  %.028.i = phi i64 [ 0, %bb.k ], [ %i.bv, %bb.l ], [ 0, %Is8bOptimizable.exit.thread ] ; 2 uses
  %i.bw = mul nsw i64 %i.bg, 17
  %i.bx = add nsw i64 %i.bf, %i.bw
  %i.by = add i64 %i.bx, %.028.i
  %i.bz = tail call ptr @WebPSafeMalloc(i64 noundef %i.by, i64 noundef 4) #7 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !50
  %i.cb = icmp eq ptr %i.bz, null
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @WebPSafeFree(ptr noundef null) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  %i.cc = load i32, ptr %i.a, align 8, !tbaa !30  ; 2 uses
  switch i32 %i.cc, label %VP8LDelete.exit.thread [
    i32 0, label %VP8LDelete.exit.thread.sink.split
    i32 5, label %VP8LDelete.exit.thread.sink.split
  ]

bb.o:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bf
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.bg ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !74
  %i.cg = icmp eq i64 %.028.i, 0
  %.idx.i = shl nsw i64 %i.bg, 6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i
  %spec.select.i = select i1 %i.cg, ptr null, ptr %i.ch
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %spec.select.i, ptr %i.ci, align 8, !tbaa !75
  br label %AllocateInternalBuffers8b.exit

AllocateInternalBuffers8b.exit:                   ; preds = %Is8bOptimizable.exit, %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.cj, align 8, !tbaa !76
  br label %VP8LNew.exit.thread

VP8LDelete.exit:                                  ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 8, !tbaa !30
  %.pre.fr = freeze i32 %.pre                     ; 2 uses
  %i.ck = icmp eq i32 %.pre.fr, 5
  %spec.select = select i1 %i.ck, i32 3, i32 %.pre.fr
  br label %VP8LDelete.exit.thread

VP8LDelete.exit.thread.sink.split:                ; preds = %bb.n, %bb.n, %bb.j, %bb.j
  store i32 1, ptr %i.a, align 8, !tbaa !30
  br label %VP8LDelete.exit.thread

VP8LDelete.exit.thread:                           ; preds = %VP8LDelete.exit, %VP8LDelete.exit.thread.sink.split, %bb.j, %bb.n
  %i.cl = phi i32 [ %i.cc, %bb.n ], [ 1, %VP8LDelete.exit.thread.sink.split ], [ %spec.select, %VP8LDelete.exit ], [ %i.ay, %bb.j ]
  tail call fastcc void @VP8LClear(ptr noundef nonnull %i.a)
  tail call void @WebPSafeFree(ptr noundef nonnull %i.a) #7
  br label %VP8LNew.exit.thread

VP8LNew.exit.thread:                              ; preds = %bb.a, %VP8LDelete.exit.thread, %AllocateInternalBuffers8b.exit
  %.035 = phi i32 [ %i.cl, %VP8LDelete.exit.thread ], [ 0, %AllocateInternalBuffers8b.exit ], [ 1, %bb.a ]
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DecodeImageStream(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2, ptr noundef nonnull %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  %.not = icmp eq i32 %2, 0                       ; 4 uses
  br i1 %.not, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 280 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %ExpandColorMap.exit, %.preheader
  %.086.ph.ph = phi i32 [ %i.at, %ExpandColorMap.exit ], [ %0, %.preheader ] ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.d, %.outer.outer
  br label %bb.b

bb.b:                                             ; preds = %.outer, %.split
  %i.h = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 1) #7
  %.not65 = icmp eq i32 %i.h, 0
  br i1 %.not65, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 8, !tbaa !51
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.j ; 6 uses
  %i.l = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 2) #7, !inline_history !114 ; 3 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.n = shl nuw i32 1, %i.l                      ; 2 uses
  %i.o = and i32 %i.m, %i.n
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.d, label %.threadthread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.p = or i32 %i.m, %i.n
  store i32 %i.p, ptr %i.g, align 8, !tbaa !54
  store i32 %i.l, ptr %i.k, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store i32 %.086.ph.ph, ptr %i.q, align 8, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 %1, ptr %i.r, align 4, !tbaa !126
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 6 uses
  store ptr null, ptr %i.s, align 8, !tbaa !53
  %i.t = load i32, ptr %i.f, align 8, !tbaa !51
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.f, align 8, !tbaa !51
  switch i32 %i.l, label %.outer [
    i32 0, label %.split
    i32 1, label %.split
    i32 3, label %bb.e
  ]

.split:                                           ; preds = %bb.d, %bb.d
  %i.v = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 3) #7, !inline_history !114
  %i.w = add i32 %i.v, 2                          ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.w, ptr %i.x, align 4, !tbaa !127
  %i.y = load i32, ptr %i.q, align 8, !tbaa !125
  %notmask = shl nsw i32 -1, %i.w
  %i.z = xor i32 %notmask, -1                     ; 2 uses
  %i.aa = add i32 %i.y, %i.z
  %i.ab = lshr i32 %i.aa, %i.w
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !126
  %i.ad = add i32 %i.ac, %i.z
  %i.ae = lshr i32 %i.ad, %i.w
  %i.af = tail call fastcc i32 @DecodeImageStream(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.s), !inline_history !114
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.threadthread-pre-split, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 8) #7, !inline_history !114
  %i.ai = add i32 %i.ah, 1                        ; 6 uses
  %i.aj = icmp sgt i32 %i.ai, 16
  %i.ak = icmp sgt i32 %i.ai, 4
  %i.al = icmp sgt i32 %i.ai, 2
  %i.am = select i1 %i.al, i32 2, i32 3
  %i.an = select i1 %i.ak, i32 1, i32 %i.am
  %i.ao = select i1 %i.aj, i32 0, i32 %i.an       ; 3 uses
  %i.ap = load i32, ptr %i.q, align 8, !tbaa !125
  %i.aq = shl nuw nsw i32 1, %i.ao
  %i.ar = add i32 %i.ap, -1
  %i.as = add i32 %i.ar, %i.aq
  %i.at = lshr i32 %i.as, %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store i32 %i.ao, ptr %i.au, align 4, !tbaa !127
  %i.av = tail call fastcc i32 @DecodeImageStream(i32 noundef %i.ai, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.s), !inline_history !114
  %.not46.i = icmp eq i32 %i.av, 0
  br i1 %.not46.i, label %.threadthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !127
  %i.ax = lshr i32 8, %i.aw                       ; 2 uses
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = tail call ptr @WebPSafeMalloc(i64 noundef %i.az, i64 noundef 4) #7 ; 13 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !53  ; 9 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !11
  %i.be = icmp sgt i32 %i.ai, 1
  br i1 %i.be, label %.lr.ph.preheader.i, label %.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.bf = shl i32 %i.ai, 2                        ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 5) ; 4 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 6 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -4      ; 2 uses
  %min.iters.check = icmp slt i32 %i.bf, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %scevgep = getelementptr i8, ptr %i.ba, i64 %wide.trip.count.i
  %scevgep179 = getelementptr i8, ptr %i.bc, i64 4
  %scevgep180 = getelementptr i8, ptr %i.bc, i64 %wide.trip.count.i
  %bound0 = icmp ult ptr %i.ba, %scevgep180
  %bound1 = icmp ult ptr %scevgep179, %scevgep
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
  %i.bi = add nuw i64 %index, 4                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bi
  %wide.load = load <4 x i8>, ptr %i.bj, align 1, !tbaa !10, !alias.scope !128
  %i.bk = getelementptr i8, ptr %i.ba, i64 %i.bi
  %i.bl = add <4 x i8> %store_forwarded, %wide.load ; 2 uses
  store <4 x i8> %i.bl, ptr %i.bk, align 1, !tbaa !10, !alias.scope !129, !noalias !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !118

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
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = getelementptr i8, ptr %i.ba, i64 %indvars.iv.i.prol ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %.narrow.i.prol = add i8 %i.bs, %i.bp
  store i8 %.narrow.i.prol, ptr %i.bq, align 1, !tbaa !10
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !119

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.bt = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.g
  %.0.lcssa.i = phi i32 [ 4, %bb.g ], [ %smax.i, %middle.block ], [ %smax.i, %.lr.ph.i ], [ %smax.i, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.bv = shl nuw nsw i32 4, %i.ax                ; 2 uses
  %i.bw = icmp samesign ult i32 %.0.lcssa.i, %i.bv
  br i1 %i.bw, label %.lr.ph28.preheader.i, label %ExpandColorMap.exit

.lr.ph28.preheader.i:                             ; preds = %.preheader.i
  %i.bx = zext nneg i32 %.0.lcssa.i to i64
  %scevgep.i = getelementptr i8, ptr %i.ba, i64 %i.bx
  %i.by = xor i32 %.0.lcssa.i, -1
  %i.bz = add nsw i32 %i.bv, %i.by
  %i.ca = zext i32 %i.bz to i64
  %i.cb = add nuw nsw i64 %i.ca, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 0, i64 %i.cb, i1 false), !tbaa !10
  br label %ExpandColorMap.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = getelementptr i8, ptr %i.ba, i64 %indvars.iv.i ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !10
  %.narrow.i = add i8 %i.cg, %i.cd
  store i8 %.narrow.i, ptr %i.ce, align 1, !tbaa !10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = getelementptr i8, ptr %i.ba, i64 %indvars.iv.next.i ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !10
  %.narrow.i.1 = add i8 %i.cl, %i.ci
  store i8 %.narrow.i.1, ptr %i.cj, align 1, !tbaa !10
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !10
  %i.co = getelementptr i8, ptr %i.ba, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  %.narrow.i.2 = add i8 %i.cq, %i.cn
  store i8 %.narrow.i.2, ptr %i.co, align 1, !tbaa !10
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv.next.i.2
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = getelementptr i8, ptr %i.ba, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !10
  %.narrow.i.3 = add i8 %i.cv, %i.cs
  store i8 %.narrow.i.3, ptr %i.ct, align 1, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !120

ExpandColorMap.exit:                              ; preds = %.preheader.i, %.lr.ph28.preheader.i
  %i.cw = load ptr, ptr %i.s, align 8, !tbaa !53
  tail call void @WebPSafeFree(ptr noundef %i.cw) #7
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !53
  br label %.outer.outer

.critedge.i:                                      ; preds = %bb.f
  %i.cx = load i32, ptr %3, align 8, !tbaa !30    ; 2 uses
  switch i32 %i.cx, label %.thread [
    i32 0, label %VP8LSetError.exit.thread.sink.split
    i32 5, label %VP8LSetError.exit.thread.sink.split
  ]

.critedge:                                        ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ %0, %bb.a ], [ %.086.ph.ph, %bb.b ] ; 5 uses
  %i.cy = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 1) #7
  %.not67 = icmp eq i32 %i.cy, 0
  br i1 %.not67, label %.critedge74, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.cz = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 4) #7 ; 2 uses
  %i.da = add i32 %i.cz, -1
  %i.db = icmp ult i32 %i.da, 11
  br i1 %i.db, label %.critedge74, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = load i32, ptr %3, align 8, !tbaa !30
  switch i32 %i.dc, label %VP8LSetError.exit.thread [
    i32 0, label %VP8LSetError.exit.thread.sink.split
    i32 5, label %VP8LSetError.exit.thread.sink.split
  ]

.critedge74:                                      ; preds = %.critedge, %bb.h
  %.057 = phi i32 [ %i.cz, %bb.h ], [ 0, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 3 uses
  br i1 %.not, label %VP8LSetError.exit81.thread, label %bb.j

bb.j:                                             ; preds = %.critedge74
  %i.de = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 1) #7, !inline_history !121
  %.not82.i = icmp eq i32 %i.de, 0
  br i1 %.not82.i, label %VP8LSetError.exit81.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = tail call i32 @VP8LReadBits(ptr noundef nonnull %i.c, i32 noundef 3) #7, !inline_history !121
  %i.dg = add i32 %i.df, 2                        ; 4 uses
  %i.dh = shl nuw i32 1, %i.dg                    ; 2 uses
  %i.di = add i32 %.1, -1
  %i.dj = add i32 %i.di, %i.dh
  %i.dk = lshr i32 %i.dj, %i.dg                   ; 2 uses
  %i.dl = add i32 %1, -1
  %i.dm = add i32 %i.dl, %i.dh
  %i.dn = lshr i32 %i.dm, %i.dg                   ; 2 uses
  %i.do = mul i32 %i.dk, %i.dn                    ; 7 uses
  %i.dp = call fastcc i32 @DecodeImageStream(i32 noundef %i.dk, i32 noundef %i.dn, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.a), !inline_history !121
  %.not83.i = icmp eq i32 %i.dp, 0
  br i1 %.not83.i, label %bb.y, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 204
  store i32 %i.dg, ptr %i.dq, align 4, !tbaa !78
  %i.dr = icmp sgt i32 %i.do, 0                   ; 2 uses
  br i1 %i.dr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.do to i64   ; 3 uses
  %min.iters.check183 = icmp ult i32 %i.do, 8
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph
  %n.vec185 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next191, %vector.body186 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph184 ], [ %i.eb, %vector.body186 ]
  %vec.phi188 = phi <4 x i32> [ splat (i32 1), %vector.ph184 ], [ %i.ec, %vector.body186 ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %index187 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load189 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !11
  %wide.load190 = load <4 x i32>, ptr %i.du, align 4, !tbaa !11
end_hunk_0
