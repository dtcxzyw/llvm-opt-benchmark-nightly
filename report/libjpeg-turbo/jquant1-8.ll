Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jquant1-8?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@jinit_1pass_quantizer:bb.a
  %niter = phi i32 [ 0, %.lr.ph.us.i.i.new ], [ %niter.next.7, %bb.j ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.058.us.i.i, %factor.op.mul107 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.us.i.i.unr-lcssa, label %bb.j, !llvm.loop !64

._crit_edge.us.i.i.unr-lcssa:                     ; preds = %bb.j
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.i.unr-lcssa, %.lr.ph.us.i.i
  %.058.us.i.i.epil.init = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.us.i.i ], [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.058.us.i.i.epil = phi i64 [ %.058.us.i.i.epil.init, %.epil.preheader ], [ %i.bi, %bb.k ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.bi = mul nuw nsw i64 %.058.us.i.i.epil, %indvars.iv.next.i.i ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.i.i, label %bb.k, !llvm.loop !65

._crit_edge.us.i.i:                               ; preds = %bb.k, %._crit_edge.us.i.i.unr-lcssa
  %.lcssa83 = phi i64 [ %.reass.reass.reass.reass.reass.reass.reass, %._crit_edge.us.i.i.unr-lcssa ], [ %i.bi, %bb.k ] ; 2 uses
  %.not.us.i.i = icmp sgt i64 %.lcssa83, %i.bd
  br i1 %.not.us.i.i, label %.split60.us.loopexit.i.i, label %.lr.ph.us.i.i, !llvm.loop !66

.split60.us.loopexit.i.i:                         ; preds = %._crit_edge.us.i.i
  %i.bj = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bk = trunc i64 %.lcssa83 to i32
  br label %.split60.us.i.i

.split60.us.i.i:                                  ; preds = %.split60.us.loopexit.i.i, %.split.preheader.i.i
  %.us-phi.i.i = phi i32 [ %i.bj, %.split60.us.loopexit.i.i ], [ %smax.i.i, %.split.preheader.i.i ] ; 4 uses
  %.us-phi61.i.i = phi i32 [ %i.bk, %.split60.us.loopexit.i.i ], [ %narrow.i.i, %.split.preheader.i.i ]
  %i.bl = icmp samesign ult i32 %.us-phi.i.i, 2
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.split60.us.i.i
  %i.bm = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i32 56, ptr %i.bn, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store i32 %.us-phi61.i.i, ptr %i.bo, align 4, !tbaa !38
  %i.bp = load ptr, ptr %0, align 8, !tbaa !34
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39
  tail call void %i.bq(ptr noundef nonnull %0) #8, !inline_history !67
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.split60.us.i.i
  %i.br = icmp sgt i32 %i.ar, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i, label %select_ncolors.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %wide.trip.count85.i.i = zext nneg i32 %i.ar to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count85.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.us-phi.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi74 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.bv, %vector.body ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 4, !tbaa !50
  store <4 x i32> %broadcast.splat, ptr %i.bt, align 4, !tbaa !50
  %i.bu = mul <4 x i32> %vec.phi, %broadcast.splat ; 2 uses
  %i.bv = mul <4 x i32> %vec.phi74, %broadcast.splat ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.bv, %i.bu
  %i.bx = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count85.i.i
  br i1 %cmp.n, label %.lr.ph67.us.preheader.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv82.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.05062.i.i.ph = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph67.us.preheader.i.i:                        ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa72 = phi i32 [ %i.bx, %middle.block ], [ %i.ea, %.lr.ph.i.i ] ; 2 uses
  %i.by = load i32, ptr %i.as, align 8, !tbaa !85
  %i.bz = icmp eq i32 %i.by, 2
  %narrow101.i64.i = select i1 %i.bz, i32 %i.aw, i32 0
  %spec.select.i65.i = sext i32 %narrow101.i64.i to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i65.i ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !50 ; 2 uses
  %i.cc = sdiv i32 %.lcssa72, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = add nsw i32 %i.cb, 1                    ; 3 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.cd, %i.cf                ; 3 uses
  %i.ch = icmp sgt i64 %i.cg, %i.bd
  br i1 %i.ch, label %select_ncolors.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph67.us.preheader.i.i
  %exitcond90.peel.not.i.i = icmp eq i32 %i.ar, 1
  br i1 %exitcond90.peel.not.i.i, label %._crit_edge.us73.i.us.i, label %.peel.next.i.preheader.i

._crit_edge.us73.i.us.i:                          ; preds = %.lr.ph.i, %._crit_edge.us73.i.us.i
  %i.ci = phi i64 [ %i.cu, %._crit_edge.us73.i.us.i ], [ %i.cg, %.lr.ph.i ]
  %i.cj = phi i32 [ %i.cs, %._crit_edge.us73.i.us.i ], [ %i.ce, %.lr.ph.i ]
  %i.ck = phi ptr [ %i.co, %._crit_edge.us73.i.us.i ], [ %i.ca, %.lr.ph.i ]
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !50
  %i.cl = trunc i64 %i.ci to i32                  ; 2 uses
  %i.cm = load i32, ptr %i.as, align 8, !tbaa !85
  %i.cn = icmp eq i32 %i.cm, 2
  %narrow101.i.us.i = select i1 %i.cn, i32 %i.aw, i32 0
  %spec.select.i.us.i = sext i32 %narrow101.i.us.i to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i.us.i ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !50 ; 2 uses
  %i.cq = sdiv i32 %i.cl, %i.cp
  %i.cr = sext i32 %i.cq to i64
  %i.cs = add nsw i32 %i.cp, 1                    ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.cr, %i.ct                ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, %i.bd
  br i1 %i.cv, label %select_ncolors.exit.i, label %._crit_edge.us73.i.us.i

.peel.next.i.preheader.i:                         ; preds = %.lr.ph.i, %._crit_edge.us73.i.loopexit.i
  %i.cw = phi i64 [ %i.dx, %._crit_edge.us73.i.loopexit.i ], [ %i.cg, %.lr.ph.i ]
  %i.cx = phi i32 [ %i.dv, %._crit_edge.us73.i.loopexit.i ], [ %i.ce, %.lr.ph.i ]
  %i.cy = phi ptr [ %i.dr, %._crit_edge.us73.i.loopexit.i ], [ %i.ca, %.lr.ph.i ]
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !50
  %i.cz = trunc i64 %i.cw to i32
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.p, %.peel.next.i.preheader.i
  %indvars.iv87.i.i = phi i64 [ %indvars.iv.next88.i.i, %bb.p ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %.25264.us.i.i = phi i32 [ %i.do, %bb.p ], [ %i.cz, %.peel.next.i.preheader.i ] ; 2 uses
  %i.da = load i32, ptr %i.as, align 8, !tbaa !85 ; 2 uses
  %i.db = icmp eq i32 %i.da, 2
  br i1 %i.db, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.peel.next.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv87.i.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !50
  %i.de = sext i32 %i.dd to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.peel.next.i.i
  %i.df = phi i64 [ %i.de, %bb.n ], [ %indvars.iv87.i.i, %.peel.next.i.i ]
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !50 ; 2 uses
  %i.di = sdiv i32 %.25264.us.i.i, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = add nsw i32 %i.dh, 1                    ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = mul nsw i64 %i.dj, %i.dl                ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, %i.bd
  br i1 %i.dn, label %._crit_edge.us73.i.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.dk, ptr %i.dg, align 4, !tbaa !50
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  %indvars.iv.next88.i.i = add nuw nsw i64 %indvars.iv87.i.i, 1 ; 2 uses
  %exitcond90.not.i.i = icmp eq i64 %indvars.iv.next88.i.i, %wide.trip.count85.i.i
  br i1 %exitcond90.not.i.i, label %.._crit_edge.us73.i.loopexit_crit_edge.i, label %.peel.next.i.i, !llvm.loop !69

.._crit_edge.us73.i.loopexit_crit_edge.i:         ; preds = %bb.p
  %.pre.i = load i32, ptr %i.as, align 8, !tbaa !85
  br label %._crit_edge.us73.i.loopexit.i, !llvm.loop !69

._crit_edge.us73.i.loopexit.i:                    ; preds = %bb.o, %.._crit_edge.us73.i.loopexit_crit_edge.i
  %i.dp = phi i32 [ %.pre.i, %.._crit_edge.us73.i.loopexit_crit_edge.i ], [ %i.da, %bb.o ]
  %.252.lcssa.us.i.ph.i = phi i32 [ %i.do, %.._crit_edge.us73.i.loopexit_crit_edge.i ], [ %.25264.us.i.i, %bb.o ] ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 2
  %narrow101.i.i = select i1 %i.dq, i32 %i.aw, i32 0
  %spec.select.i.i = sext i32 %narrow101.i.i to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %spec.select.i.i ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !50 ; 2 uses
  %i.dt = sdiv i32 %.252.lcssa.us.i.ph.i, %i.ds
  %i.du = sext i32 %i.dt to i64
  %i.dv = add nsw i32 %i.ds, 1                    ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul nsw i64 %i.du, %i.dw                ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, %i.bd
  br i1 %i.dy, label %select_ncolors.exit.i, label %.peel.next.i.preheader.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv82.i.i = phi i64 [ %indvars.iv.next83.i.i, %.lr.ph.i.i ], [ %indvars.iv82.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.05062.i.i = phi i32 [ %i.ea, %.lr.ph.i.i ], [ %.05062.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv82.i.i
  store i32 %.us-phi.i.i, ptr %i.dz, align 4, !tbaa !50
  %i.ea = mul nuw nsw i32 %.05062.i.i, %.us-phi.i.i ; 2 uses
  %indvars.iv.next83.i.i = add nuw nsw i64 %indvars.iv82.i.i, 1 ; 2 uses
  %exitcond86.not.i.i = icmp eq i64 %indvars.iv.next83.i.i, %wide.trip.count85.i.i
  br i1 %exitcond86.not.i.i, label %.lr.ph67.us.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !70

select_ncolors.exit.i:                            ; preds = %._crit_edge.us73.i.loopexit.i, %._crit_edge.us73.i.us.i, %.lr.ph67.us.preheader.i.i, %bb.m
  %.us-phi76.i.i = phi i32 [ 1, %bb.m ], [ %.lcssa72, %.lr.ph67.us.preheader.i.i ], [ %i.cl, %._crit_edge.us73.i.us.i ], [ %.252.lcssa.us.i.ph.i, %._crit_edge.us73.i.loopexit.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.eb = load i32, ptr %i.y, align 8, !tbaa !49
  %i.ec = icmp eq i32 %i.eb, 3
  %i.ed = load ptr, ptr %0, align 8, !tbaa !34    ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 44
  store i32 %.us-phi76.i.i, ptr %i.ee, align 4, !tbaa !38
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %select_ncolors.exit.i
  %i.ef = load i32, ptr %i.aq, align 4, !tbaa !50
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !50
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !50
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 52
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !50
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ap, i64 76
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  store i32 %i.el, ptr %i.em, align 4, !tbaa !50
  br label %bb.s

bb.r:                                             ; preds = %select_ncolors.exit.i
  %i.en = load ptr, ptr %0, align 8, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ 94, %bb.q ], [ 95, %bb.r ]
  %.sink.i = phi ptr [ %i.ed, %bb.q ], [ %i.en, %bb.r ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i32 %.sink, ptr %i.eo, align 8, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !89
  tail call void %i.eq(ptr noundef nonnull %0, i32 noundef 1) #8, !inline_history !71
  %i.er = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !53
  %i.eu = load i32, ptr %i.y, align 8, !tbaa !49
  %i.ev = tail call ptr %i.et(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.us-phi76.i.i, i32 noundef %i.eu) #8, !inline_history !71 ; 2 uses
  %i.ew = load i32, ptr %i.y, align 8, !tbaa !49  ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph76.preheader.i, label %create_colormap.exit

.lr.ph76.preheader.i:                             ; preds = %bb.s
  %i.ey = sext i32 %.us-phi76.i.i to i64          ; 2 uses
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %._crit_edge73.i, %.lr.ph76.preheader.i
  %i.ez = phi i32 [ %i.ew, %.lr.ph76.preheader.i ], [ %i.gj, %._crit_edge73.i ] ; 2 uses
  %indvars.iv93.i = phi i64 [ 0, %.lr.ph76.preheader.i ], [ %indvars.iv.next94.i, %._crit_edge73.i ] ; 3 uses
  %.05875.i = phi i32 [ %.us-phi76.i.i, %.lr.ph76.preheader.i ], [ %.fr77.i, %._crit_edge73.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv93.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !50 ; 4 uses
  %i.fc = sdiv i32 %.05875.i, %i.fb
  %.fr77.i = freeze i32 %i.fc                     ; 4 uses
  %i.fd = icmp sgt i32 %i.fb, 0
  br i1 %i.fd, label %.lr.ph72.i, label %._crit_edge73.i

.lr.ph72.i:                                       ; preds = %.lr.ph76.i
  %i.fe = add nsw i32 %i.fb, -1                   ; 2 uses
  %i.ff = lshr i32 %i.fe, 1
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = zext nneg i32 %i.fe to i64
  %i.fi = icmp sgt i32 %.fr77.i, 0
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv93.i ; 5 uses
  br i1 %i.fi, label %.lr.ph72.split.us.preheader.i, label %._crit_edge73.i

.lr.ph72.split.us.preheader.i:                    ; preds = %.lr.ph72.i
  %1 = sext i32 %.05875.i to i64
  %2 = zext nneg i32 %.fr77.i to i64              ; 3 uses
  %wide.trip.count91.i = zext nneg i32 %i.fb to i64
  %xtraiter87 = and i64 %2, 3                     ; 3 uses
  %i.fk = icmp ult i32 %.fr77.i, 4
  %unroll_iter91 = and i64 %2, 2147483644
  %lcmp.mod89.not = icmp eq i64 %xtraiter87, 0
  %lcmp.mod90 = icmp ne i64 %xtraiter87, 0
  br label %.lr.ph72.split.us.i

.lr.ph72.split.us.i:                              ; preds = %._crit_edge69.us.i, %.lr.ph72.split.us.preheader.i
  %indvars.iv83.i.a = phi i64 [ 0, %.lr.ph72.split.us.preheader.i ], [ %indvars.iv.next84.i.a, %._crit_edge69.us.i ] ; 3 uses
  %3 = mul nuw nsw i64 %indvars.iv83.i.a, %2      ; 2 uses
  %i.fl = icmp slt i64 %3, %i.ey
  br i1 %i.fl, label %.preheader.lr.ph.us.i, label %._crit_edge69.us.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.us.i, %._crit_edge.us.i
  %indvars.iv85.i = phi i64 [ %3, %.preheader.lr.ph.us.i ], [ %indvars.iv.next86.i, %._crit_edge.us.i ] ; 6 uses
  br i1 %i.fk, label %.epil.preheader86, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 5 uses
  %niter92 = phi i64 [ %niter92.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !54
  %i.fn = getelementptr i8, ptr %i.fm, i64 %indvars.iv.i
  %i.fo = getelementptr i8, ptr %i.fn, i64 %indvars.iv85.i
  store i8 %i.gi, ptr %i.fo, align 1, !tbaa !38
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !54
  %i.fq = getelementptr i8, ptr %i.fp, i64 %indvars.iv.i
  %i.fr = getelementptr i8, ptr %i.fq, i64 1
  %i.fs = getelementptr i8, ptr %i.fr, i64 %indvars.iv85.i
  store i8 %i.gi, ptr %i.fs, align 1, !tbaa !38
  %i.ft = load ptr, ptr %i.fj, align 8, !tbaa !54
  %i.fu = getelementptr i8, ptr %i.ft, i64 %indvars.iv.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 2
  %i.fw = getelementptr i8, ptr %i.fv, i64 %indvars.iv85.i
  store i8 %i.gi, ptr %i.fw, align 1, !tbaa !38
  %i.fx = load ptr, ptr %i.fj, align 8, !tbaa !54
  %i.fy = getelementptr i8, ptr %i.fx, i64 %indvars.iv.i
  %i.fz = getelementptr i8, ptr %i.fy, i64 3
  %i.ga = getelementptr i8, ptr %i.fz, i64 %indvars.iv85.i
  store i8 %i.gi, ptr %i.ga, align 1, !tbaa !38
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter92.next.3 = add i64 %niter92, 4           ; 2 uses
  %niter92.ncmp.3 = icmp eq i64 %niter92.next.3, %unroll_iter91
  br i1 %niter92.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !72

._crit_edge69.us.i:                               ; preds = %._crit_edge.us.i, %.lr.ph72.split.us.i
  %indvars.iv.next84.i.a = add nuw nsw i64 %indvars.iv83.i.a, 1 ; 2 uses
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next84.i.a, %wide.trip.count91.i
  br i1 %exitcond92.not.i, label %._crit_edge73.loopexit.i, label %.lr.ph72.split.us.i, !llvm.loop !73

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod89.not, label %._crit_edge.us.i, label %.epil.preheader86

.epil.preheader86:                                ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i.3, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader86
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %bb.t ], [ %indvars.iv.i.epil.init, %.epil.preheader86 ] ; 2 uses
  %epil.iter88 = phi i64 [ %epil.iter88.next, %bb.t ], [ 0, %.epil.preheader86 ]
  %i.gb = load ptr, ptr %i.fj, align 8, !tbaa !54
  %i.gc = getelementptr i8, ptr %i.gb, i64 %indvars.iv.i.epil
  %i.gd = getelementptr i8, ptr %i.gc, i64 %indvars.iv85.i
  store i8 %i.gi, ptr %i.gd, align 1, !tbaa !38
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter88.next = add i64 %epil.iter88, 1     ; 2 uses
  %epil.iter88.cmp.not = icmp eq i64 %epil.iter88.next, %xtraiter87
  br i1 %epil.iter88.cmp.not, label %._crit_edge.us.i, label %bb.t, !llvm.loop !74

._crit_edge.us.i:                                 ; preds = %bb.t, %._crit_edge.us.i.unr-lcssa
  %indvars.iv.next86.i = add nsw i64 %indvars.iv85.i, %1 ; 2 uses
  %i.ge = icmp slt i64 %indvars.iv.next86.i, %i.ey
  br i1 %i.ge, label %.preheader.us.i, label %._crit_edge69.us.i, !llvm.loop !75

.preheader.lr.ph.us.i:                            ; preds = %.lr.ph72.split.us.i
  %i.gf = mul nuw nsw i64 %indvars.iv83.i.a, 255
  %i.gg = add nuw nsw i64 %i.gf, %i.fg
  %i.gh = udiv i64 %i.gg, %i.fh
  %i.gi = trunc i64 %i.gh to i8                   ; 5 uses
  br label %.preheader.us.i

._crit_edge73.loopexit.i:                         ; preds = %._crit_edge69.us.i
  %.pre96.i = load i32, ptr %i.y, align 8, !tbaa !49
  br label %._crit_edge73.i

._crit_edge73.i:                                  ; preds = %._crit_edge73.loopexit.i, %.lr.ph72.i, %.lr.ph76.i
  %i.gj = phi i32 [ %i.ez, %.lr.ph76.i ], [ %.pre96.i, %._crit_edge73.loopexit.i ], [ %i.ez, %.lr.ph72.i ] ; 2 uses
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 1 ; 2 uses
  %i.gk = sext i32 %i.gj to i64
  %i.gl = icmp slt i64 %indvars.iv.next94.i, %i.gk
  br i1 %i.gl, label %.lr.ph76.i, label %create_colormap.exit, !llvm.loop !76

create_colormap.exit:                             ; preds = %._crit_edge73.i, %bb.s
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store ptr %i.ev, ptr %i.gm, align 8, !tbaa !55
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  store i32 %.us-phi76.i.i, ptr %i.gn, align 8, !tbaa !56
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !57
  %i.gq = icmp eq i32 %i.gp, 2
  br i1 %i.gq, label %bb.u, label %alloc_fs_workspace.exit

bb.u:                                             ; preds = %create_colormap.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !58
  %i.gt = add i32 %i.gs, 2
  %i.gu = zext i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 1
  %i.gw = load i32, ptr %i.y, align 8, !tbaa !49
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph.i34, label %alloc_fs_workspace.exit

.lr.ph.i34:                                       ; preds = %bb.u
  %i.gy = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i34
  %indvars.iv.i35 = phi i64 [ 0, %.lr.ph.i34 ], [ %indvars.iv.next.i36, %bb.v ] ; 2 uses
  %i.ha = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !59
  %i.hd = tail call ptr %i.hc(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.gv) #8, !inline_history !0
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i35
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !47
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %i.hf = load i32, ptr %i.y, align 8, !tbaa !49
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next.i36, %i.hg
  br i1 %i.hh, label %bb.v, label %alloc_fs_workspace.exit, !llvm.loop !1

alloc_fs_workspace.exit:                          ; preds = %bb.v, %bb.u, %create_colormap.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef initializes((156, 168)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.d, ptr %i.e, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.g, ptr %i.h, align 4, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57
  switch i32 %i.j, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load i32, ptr %i.k, align 8, !tbaa !49
  %i.m = icmp eq i32 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @color_quantize3, ptr %i.n, align 8, !tbaa !97
  br label %create_odither_tables.exit

bb.d:                                             ; preds = %bb.b
  store ptr @color_quantize, ptr %i.n, align 8, !tbaa !97
  br label %create_odither_tables.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !49
  %i.q = icmp eq i32 %i.p, 3
  %spec.select = select i1 %i.q, ptr @quantize3_ord_dither, ptr @quantize_ord_dither
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %spec.select, ptr %i.r, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store i32 0, ptr %i.s, align 4, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.u = load i32, ptr %i.t, align 8, !tbaa !61
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %create_odither_tables.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i32, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph26.i, label %create_odither_tables.exit

.lr.ph26.i:                                       ; preds = %bb.h
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 68 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 88 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

bb.i:                                             ; preds = %make_odither_array.exit.i, %.lr.ph26.i
  %i.ae = phi i32 [ %i.y, %.lr.ph26.i ], [ %i.gh, %make_odither_array.exit.i ]
  %indvars.iv29.i = phi i64 [ 0, %.lr.ph26.i ], [ %indvars.iv.next30.i, %make_odither_array.exit.i ] ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv29.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !50 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv29.i, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv29.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph.i, !llvm.loop !90

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !50
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %.thread.i, label %make_odither_array.exit.i

.thread.i:                                        ; preds = %bb.j, %bb.k, %bb.i
  %i.an = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = tail call ptr %i.ao(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #8, !inline_history !91 ; 2 uses
  %i.aq = add nsw i32 %i.ag, -1
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i64 %i.ar, 9                    ; 16 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.thread.i
  %indvars.iv.i.i = phi i64 [ 0, %.thread.i ], [ %indvars.iv.next.i.i, %.preheader.i.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr @base_dither_matrix, i64 %indvars.iv.i.i ; 16 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %indvars.iv.i.i ; 16 uses
  %i.av = load i8, ptr %i.at, align 16, !tbaa !38
  %i.aw = zext i8 %i.av to i32
  %i.ax = shl nuw nsw i32 %i.aw, 1
  %i.ay = sub nsw i32 255, %i.ax
  %narrow.i.i = mul nsw i32 %i.ay, 255
  %i.az = sext i32 %narrow.i.i to i64
  %i.ba = sdiv i64 %i.az, %i.as
  %i.bb = trunc nsw i64 %i.ba to i32
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !38
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = sub nsw i32 255, %i.bf
  %narrow.1.i.i = mul nsw i32 %i.bg, 255
  %i.bh = sext i32 %narrow.1.i.i to i64
  %i.bi = sdiv i64 %i.bh, %i.as
  %i.bj = trunc nsw i64 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !50
  %i.bl = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !38
  %i.bn = zext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 %i.bn, 1
  %i.bp = sub nsw i32 255, %i.bo
  %narrow.2.i.i = mul nsw i32 %i.bp, 255
end_hunk_0
