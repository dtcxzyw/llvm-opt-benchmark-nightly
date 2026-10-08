Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_dec?download=true
inline.NumInlined: 132
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@DecodeImageStream:bb.a
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
  br i1 %i.dr, label %.lr.ph, label %bb.m

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
  %i.dv = lshr <4 x i32> %wide.load189, splat (i32 8)
  %i.dw = lshr <4 x i32> %wide.load190, splat (i32 8)
  %i.dx = and <4 x i32> %i.dv, splat (i32 65535)  ; 2 uses
  %i.dy = and <4 x i32> %i.dw, splat (i32 65535)  ; 2 uses
  store <4 x i32> %i.dx, ptr %i.dt, align 4, !tbaa !11
  store <4 x i32> %i.dy, ptr %i.du, align 4, !tbaa !11
  %i.dz = add nuw nsw <4 x i32> %i.dx, splat (i32 1)
  %i.ea = add nuw nsw <4 x i32> %i.dy, splat (i32 1)
  %i.eb = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.dz) ; 2 uses
  %i.ec = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi188, <4 x i32> %i.ea) ; 2 uses
  %index.next191 = add nuw i64 %index187, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next191, %n.vec185
  br i1 %i.ed, label %middle.block192, label %vector.body186, !llvm.loop !122

middle.block192:                                  ; preds = %vector.body186
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eb, <4 x i32> %i.ec)
  %i.ee = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n193 = icmp eq i64 %n.vec185, %wide.trip.count
  br i1 %cmp.n193, label %._crit_edge, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %.lr.ph, %middle.block192
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec185, %middle.block192 ]
  %.067.i132.ph = phi i32 [ 1, %.lr.ph ], [ %i.ee, %middle.block192 ]
  br label %scalar.ph182

scalar.ph182:                                     ; preds = %scalar.ph182.preheader, %scalar.ph182
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph182 ], [ %indvars.iv.ph, %scalar.ph182.preheader ] ; 2 uses
  %.067.i132 = phi i32 [ %spec.select.i, %scalar.ph182 ], [ %.067.i132.ph, %scalar.ph182.preheader ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !11
  %i.eh = lshr i32 %i.eg, 8
  %i.ei = and i32 %i.eh, 65535                    ; 2 uses
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !11
  %i.ej = add nuw nsw i32 %i.ei, 1
  %spec.select.i = call i32 @llvm.smax.i32(i32 %.067.i132, i32 %i.ej) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph182, !llvm.loop !123

._crit_edge:                                      ; preds = %scalar.ph182, %middle.block192
  %spec.select.i.lcssa = phi i32 [ %i.ee, %middle.block192 ], [ %spec.select.i, %scalar.ph182 ] ; 5 uses
  %i.ek = icmp samesign ugt i32 %spec.select.i.lcssa, 200
  %5 = icmp samesign ugt i32 %spec.select.i.lcssa, %i.do
  %or.cond.i = or i1 %i.ek, %5
  br i1 %or.cond.i, label %bb.m, label %VP8LSetError.exit81.thread

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.067.i.lcssa157 = phi i32 [ %spec.select.i.lcssa, %._crit_edge ], [ 1, %bb.l ] ; 6 uses
  %i.el = zext nneg i32 %.067.i.lcssa157 to i64   ; 2 uses
  %i.em = call ptr @WebPSafeMalloc(i64 noundef %i.el, i64 noundef 4) #7, !inline_history !121 ; 8 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eo = load i32, ptr %3, align 8, !tbaa !30
  switch i32 %i.eo, label %bb.y [
    i32 0, label %bb.o
    i32 5, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  store i32 1, ptr %3, align 8, !tbaa !30
  br label %bb.y

bb.p:                                             ; preds = %bb.m
  %i.ep = shl nuw nsw i64 %i.el, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.em, i8 -1, i64 %i.ep, i1 false)
  br i1 %i.dr, label %.lr.ph136, label %VP8LSetError.exit81.thread

.lr.ph136:                                        ; preds = %bb.p
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !130 ; 3 uses
  %wide.trip.count145 = zext nneg i32 %i.do to i64 ; 2 uses
  %xtraiter207 = and i64 %wide.trip.count145, 1
  %i.er = icmp eq i32 %i.do, 1
  br i1 %i.er, label %.epil.preheader, label %.lr.ph136.new

.lr.ph136.new:                                    ; preds = %.lr.ph136
  %unroll_iter = and i64 %wide.trip.count145, 2147483646
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph136.new
  %indvars.iv142 = phi i64 [ 0, %.lr.ph136.new ], [ %indvars.iv.next143.1, %bb.u ] ; 3 uses
  %.071.i134 = phi i32 [ 0, %.lr.ph136.new ], [ %.172.i.1, %bb.u ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph136.new ], [ %niter.next.1, %bb.u ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv142 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !11 ; 2 uses
  %i.ex = icmp eq i32 %i.ew, -1
  br i1 %i.ex, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ey = add nsw i32 %.071.i134, 1
  store i32 %.071.i134, ptr %i.ev, align 4, !tbaa !11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ez = phi i32 [ %.071.i134, %bb.r ], [ %i.ew, %bb.q ]
  %.172.i = phi i32 [ %i.ey, %bb.r ], [ %.071.i134, %bb.q ] ; 4 uses
  store i32 %i.ez, ptr %i.es, align 4, !tbaa !11
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv142
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !11
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !11 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, -1
  br i1 %i.fg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fh = add nsw i32 %.172.i, 1
  store i32 %.172.i, ptr %i.fe, align 4, !tbaa !11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fi = phi i32 [ %.172.i, %bb.t ], [ %i.ff, %bb.s ]
  %.172.i.1 = phi i32 [ %i.fh, %bb.t ], [ %.172.i, %bb.s ] ; 3 uses
  store i32 %i.fi, ptr %i.fb, align 4, !tbaa !11
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge137.unr-lcssa, label %bb.q, !llvm.loop !124

._crit_edge137.unr-lcssa:                         ; preds = %bb.u
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %._crit_edge137, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge137.unr-lcssa, %.lr.ph136
  %indvars.iv142.epil.init = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next143.1, %._crit_edge137.unr-lcssa ]
  %.071.i134.epil.init = phi i32 [ 0, %.lr.ph136 ], [ %.172.i.1, %._crit_edge137.unr-lcssa ] ; 4 uses
  %lcmp.mod210 = trunc i32 %i.do to i1
  call void @llvm.assume(i1 %lcmp.mod210)
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv142.epil.init ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !11
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !11 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, -1
  br i1 %i.fo, label %bb.v, label %._crit_edge137.epilog-lcssa

bb.v:                                             ; preds = %.epil.preheader
  %i.fp = add nsw i32 %.071.i134.epil.init, 1
  store i32 %.071.i134.epil.init, ptr %i.fm, align 4, !tbaa !11
  br label %._crit_edge137.epilog-lcssa

._crit_edge137.epilog-lcssa:                      ; preds = %bb.v, %.epil.preheader
  %i.fq = phi i32 [ %.071.i134.epil.init, %bb.v ], [ %i.fn, %.epil.preheader ]
  %.172.i.epil = phi i32 [ %i.fp, %bb.v ], [ %.071.i134.epil.init, %.epil.preheader ]
  store i32 %i.fq, ptr %i.fj, align 4, !tbaa !11
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.unr-lcssa, %._crit_edge137.epilog-lcssa
  %.172.i.lcssa = phi i32 [ %.172.i.1, %._crit_edge137.unr-lcssa ], [ %.172.i.epil, %._crit_edge137.epilog-lcssa ] ; 2 uses
  %i.fr = icmp eq i32 %.172.i.lcssa, %.067.i.lcssa157
  br i1 %i.fr, label %bb.w, label %VP8LSetError.exit81.thread

bb.w:                                             ; preds = %._crit_edge137
  call void @WebPSafeFree(ptr noundef nonnull %i.em) #7, !inline_history !121
  br label %VP8LSetError.exit81.thread

VP8LSetError.exit81.thread:                       ; preds = %bb.p, %._crit_edge137, %._crit_edge, %bb.w, %bb.j, %.critedge74
  %.4.i = phi i32 [ 1, %.critedge74 ], [ 1, %bb.j ], [ %.172.i.lcssa, %._crit_edge137 ], [ %.067.i.lcssa157, %bb.w ], [ %spec.select.i.lcssa, %._crit_edge ], [ 0, %bb.p ] ; 2 uses
  %.370.i = phi i32 [ 1, %.critedge74 ], [ 1, %bb.j ], [ %.067.i.lcssa157, %._crit_edge137 ], [ %.067.i.lcssa157, %bb.w ], [ %spec.select.i.lcssa, %._crit_edge ], [ %.067.i.lcssa157, %bb.p ]
  %.2.i = phi ptr [ null, %.critedge74 ], [ null, %bb.j ], [ %i.em, %._crit_edge137 ], [ null, %bb.w ], [ null, %._crit_edge ], [ %i.em, %bb.p ] ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %3, i64 84 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !46
  %.not84.i = icmp eq i32 %i.ft, 0
  br i1 %.not84.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %VP8LSetError.exit81.thread
  %i.fu = call i32 @ReadHuffmanCodesHelper(i32 noundef range(i32 0, 12) %.057, i32 noundef %.4.i, i32 noundef %.370.i, ptr noundef %.2.i, ptr noundef nonnull %3, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.b), !inline_history !121
  %.not85.i = icmp eq i32 %i.fu, 0
  br i1 %.not85.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.k, %bb.n, %bb.o, %bb.x, %VP8LSetError.exit81.thread
  %.3.i.ph = phi ptr [ null, %bb.n ], [ null, %bb.k ], [ null, %bb.o ], [ %.2.i, %bb.x ], [ %.2.i, %VP8LSetError.exit81.thread ]
  call void @WebPSafeFree(ptr noundef %.3.i.ph) #7, !inline_history !121
  %i.fv = load ptr, ptr %i.a, align 8, !tbaa !130
  call void @WebPSafeFree(ptr noundef %i.fv) #7, !inline_history !121
  call void @VP8LHuffmanTablesDeallocate(ptr noundef nonnull %i.dd) #7, !inline_history !121
  %i.fw = load ptr, ptr %i.b, align 8, !tbaa !15
  call void @VP8LHtreeGroupsFree(ptr noundef %i.fw) #7, !inline_history !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.threadthread-pre-split

.threadthread-pre-split:                          ; preds = %bb.e, %bb.c, %.split, %bb.y
  %.pr = load i32, ptr %3, align 8, !tbaa !30
  br label %.thread

.thread:                                          ; preds = %.threadthread-pre-split, %.critedge.i
  %i.fx = phi i32 [ %.pr, %.threadthread-pre-split ], [ %i.cx, %.critedge.i ]
  switch i32 %i.fx, label %VP8LSetError.exit.thread [
    i32 0, label %VP8LSetError.exit.thread.sink.split
    i32 5, label %VP8LSetError.exit.thread.sink.split
  ]

bb.z:                                             ; preds = %bb.x
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 2 uses
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !48
  %i.ga = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i32 %.4.i, ptr %i.ga, align 8, !tbaa !68
  %i.gb = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 2 uses
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !49
  call void @WebPSafeFree(ptr noundef %.2.i) #7, !inline_history !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.gd = icmp sgt i32 %.057, 0
  br i1 %i.gd, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ge = shl nuw nsw i32 1, %.057
  store i32 %i.ge, ptr %i.d, align 8, !tbaa !67
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.gg = call i32 @VP8LColorCacheInit(ptr noundef nonnull %i.gf, i32 noundef %.057) #7
  %.not69 = icmp eq i32 %i.gg, 0
  br i1 %.not69, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gh = load i32, ptr %3, align 8, !tbaa !30
  switch i32 %i.gh, label %VP8LSetError.exit.thread [
    i32 0, label %VP8LSetError.exit.thread.sink.split
    i32 5, label %VP8LSetError.exit.thread.sink.split
  ]

bb.ac:                                            ; preds = %bb.z
  store i32 0, ptr %i.d, align 8, !tbaa !67
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 204
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !78 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 %.1, ptr %i.gk, align 4, !tbaa !60
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 %1, ptr %i.gl, align 8, !tbaa !61
  %i.gm = shl nuw i32 1, %i.gj
  %i.gn = add i32 %.1, -1
  %i.go = add i32 %i.gn, %i.gm
  %i.gp = lshr i32 %i.go, %i.gj
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !79
  %i.gr = icmp eq i32 %i.gj, 0
  %notmask.i = shl nsw i32 -1, %i.gj
  %i.gs = xor i32 %notmask.i, -1
  %i.gt = select i1 %i.gr, i32 -1, i32 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 200
  store i32 %i.gt, ptr %i.gu, align 8, !tbaa !80
  br i1 %.not, label %bb.ae, label %VP8LSetError.exit.thread123

VP8LSetError.exit.thread123:                      ; preds = %bb.ad
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.gv, align 4, !tbaa !47
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gw = sext i32 %.1 to i64
  %i.gx = sext i32 %1 to i64
  %i.gy = mul nsw i64 %i.gw, %i.gx
  %i.gz = call ptr @WebPSafeMalloc(i64 noundef %i.gy, i64 noundef 4) #7 ; 5 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.af, label %VP8LSetError.exit79

bb.af:                                            ; preds = %bb.ae
  %i.hb = load i32, ptr %3, align 8, !tbaa !30
  switch i32 %i.hb, label %VP8LSetError.exit.thread [
    i32 0, label %VP8LSetError.exit.thread.sink.split
    i32 5, label %VP8LSetError.exit.thread.sink.split
  ]

VP8LSetError.exit79:                              ; preds = %bb.ae
  %i.hc = call fastcc i32 @DecodeImageData(ptr noundef nonnull %3, ptr noundef nonnull %i.gz, i32 noundef %.1, i32 noundef %1, i32 noundef %1, ptr noundef null)
  %.not70 = icmp eq i32 %i.hc, 0
  br i1 %.not70, label %VP8LSetError.exit.thread, label %VP8LSetError.exit

VP8LSetError.exit:                                ; preds = %VP8LSetError.exit79
  %i.hd = load i32, ptr %i.fs, align 4, !tbaa !46
  %.not71.not = icmp eq i32 %i.hd, 0
  br i1 %.not71.not, label %bb.ag, label %VP8LSetError.exit.thread

VP8LSetError.exit.thread.sink.split:              ; preds = %bb.af, %bb.af, %bb.ab, %bb.ab, %.thread, %.thread, %bb.i, %bb.i, %.critedge.i, %.critedge.i
  %.sink = phi i32 [ 1, %bb.ab ], [ 3, %bb.i ], [ 3, %.thread ], [ 1, %.critedge.i ], [ 1, %.critedge.i ], [ 3, %bb.i ], [ 3, %.thread ], [ 1, %bb.ab ], [ 1, %bb.af ], [ 1, %bb.af ]
  store i32 %.sink, ptr %3, align 8, !tbaa !30
  br label %VP8LSetError.exit.thread

VP8LSetError.exit.thread:                         ; preds = %VP8LSetError.exit.thread.sink.split, %bb.af, %bb.ab, %.thread, %bb.i, %VP8LSetError.exit79, %VP8LSetError.exit
  %.058122 = phi ptr [ %i.gz, %VP8LSetError.exit ], [ %i.gz, %VP8LSetError.exit79 ], [ null, %bb.ab ], [ null, %.thread ], [ null, %bb.i ], [ null, %bb.af ], [ null, %VP8LSetError.exit.thread.sink.split ]
  call void @WebPSafeFree(ptr noundef %.058122) #7
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !48
  call void @WebPSafeFree(ptr noundef %i.hf) #7
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 240
  call void @VP8LHuffmanTablesDeallocate(ptr noundef nonnull %i.hg) #7
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 232
  br label %.sink.split

bb.ag:                                            ; preds = %VP8LSetError.exit.thread123, %VP8LSetError.exit
  %.058128 = phi ptr [ null, %VP8LSetError.exit.thread123 ], [ %i.gz, %VP8LSetError.exit ]
  %.not73 = icmp eq ptr %4, null
  br i1 %.not73, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %.058128, ptr %4, align 8, !tbaa !130
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 152
  store i32 0, ptr %i.hi, align 8, !tbaa !81
  br i1 %.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hj = load ptr, ptr %i.fz, align 8, !tbaa !48
  call void @WebPSafeFree(ptr noundef %i.hj) #7
  call void @VP8LHuffmanTablesDeallocate(ptr noundef nonnull %i.dd) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aj, %VP8LSetError.exit.thread
  %.sink168.in = phi ptr [ %i.hh, %VP8LSetError.exit.thread ], [ %i.gc, %bb.aj ]
  %.4120.ph = phi i32 [ 0, %VP8LSetError.exit.thread ], [ 1, %bb.aj ]
  %.sink168 = load ptr, ptr %.sink168.in, align 8, !tbaa !49
  call void @VP8LHtreeGroupsFree(ptr noundef %.sink168) #7
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 168
  call void @VP8LColorCacheClear(ptr noundef nonnull %i.hk) #7
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 184
  call void @VP8LColorCacheClear(ptr noundef nonnull %i.hl) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.d, i8 0, i64 120, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.ai
  %.4120 = phi i32 [ 1, %bb.ai ], [ %.4120.ph, %.sink.split ]
  ret i32 %.4120
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @VP8LDecodeAlphaImageStream(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 30 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !82
  %.not = icmp slt i32 %i.d, %1
  br i1 %.not, label %bb.b, label %DecodeAlphaData.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !69
  %.not16 = icmp eq i32 %i.f, 0
  br i1 %.not16, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @WebPInitAlphaProcessing() #7
  %.pr = load i32, ptr %i.e, align 8, !tbaa !69
  %.not17 = icmp eq i32 %.pr, 0
  br i1 %.not17, label %bb.aq, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !60   ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144
end_hunk_0
