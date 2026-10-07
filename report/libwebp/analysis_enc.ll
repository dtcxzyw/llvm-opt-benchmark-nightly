Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/analysis_enc?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@VP8EncAnalyze:bb.a
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %vector.body.interim.3, %bb.i, %.critedge2.loopexit.split.loop.exit211.i, %vector.early.exit
  %.0103.lcssa198.i = phi i32 [ %i.eb, %vector.early.exit ], [ %i.eb, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.eb, %bb.i ], [ 256, %vector.body.interim.3 ] ; 5 uses
  %.1104.lcssa.i = phi i32 [ 255, %vector.early.exit ], [ %i.eh, %.critedge2.loopexit.split.loop.exit211.i ], [ %i.eb, %bb.i ], [ 255, %vector.body.interim.3 ] ; 3 uses
  %i.ei = icmp sgt i32 %i.dl, 0                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %spec.select.i to i64
  br i1 %i.ei, label %vector.body123, label %.preheader126.i

vector.body123:                                   ; preds = %.critedge2.i
  %broadcast.splatinsert121 = insertelement <4 x i32> poison, i32 %.0103.lcssa198.i, i64 0
  %broadcast.splat122 = shufflevector <4 x i32> %broadcast.splatinsert121, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ej = sub nsw i32 %.1104.lcssa.i, %.0103.lcssa198.i
  %broadcast.splatinsert119 = insertelement <4 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat120 = shufflevector <4 x i32> %broadcast.splatinsert119, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ek = shl nuw nsw i32 %spec.select.i, 1
  %broadcast.splatinsert117 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat118 = shufflevector <4 x i32> %broadcast.splatinsert117, <4 x i32> poison, <4 x i32> zeroinitializer
  %trip.count.minus.1 = add nsw i64 %wide.trip.count.i, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.el = icmp uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 5 uses
  %i.em = mul nsw <4 x i32> %broadcast.splat120, <i32 1, i32 3, i32 5, i32 7>
  %i.en = call <4 x i32> @llvm.masked.sdiv.v4i32(<4 x i32> %i.em, <4 x i32> %broadcast.splat118, <4 x i1> %i.el)
  %i.eo = add nsw <4 x i32> %i.en, %broadcast.splat122 ; 4 uses
  %i.ep = extractelement <4 x i1> %i.el, i64 0
  br i1 %i.ep, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body123
  %i.eq = extractelement <4 x i32> %i.eo, i64 0   ; 2 uses
  store i32 %i.eq, ptr %i.b, align 16, !tbaa !35
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body123
  %i.er = phi i32 [ %i.eq, %pred.store.if ], [ undef, %vector.body123 ] ; 2 uses
  %i.es = extractelement <4 x i1> %i.el, i64 1
  br i1 %i.es, label %pred.store.if126, label %pred.store.continue127

pred.store.if126:                                 ; preds = %pred.store.continue
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.eu = extractelement <4 x i32> %i.eo, i64 1   ; 2 uses
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !35
  br label %pred.store.continue127

pred.store.continue127:                           ; preds = %pred.store.if126, %pred.store.continue
  %i.ev = phi i32 [ %i.eu, %pred.store.if126 ], [ undef, %pred.store.continue ] ; 2 uses
  %i.ew = extractelement <4 x i1> %i.el, i64 2
  br i1 %i.ew, label %pred.store.if128, label %pred.store.continue129

pred.store.if128:                                 ; preds = %pred.store.continue127
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ey = extractelement <4 x i32> %i.eo, i64 2   ; 2 uses
  store i32 %i.ey, ptr %i.ex, align 8, !tbaa !35
  br label %pred.store.continue129

pred.store.continue129:                           ; preds = %pred.store.if128, %pred.store.continue127
  %i.ez = phi i32 [ %i.ey, %pred.store.if128 ], [ undef, %pred.store.continue127 ] ; 2 uses
  %i.fa = extractelement <4 x i1> %i.el, i64 3
  br i1 %i.fa, label %pred.store.if130, label %.preheader126.i

pred.store.if130:                                 ; preds = %pred.store.continue129
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fc = extractelement <4 x i32> %i.eo, i64 3   ; 2 uses
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !35
  br label %.preheader126.i

.preheader126.i:                                  ; preds = %pred.store.continue129, %pred.store.if130, %.critedge2.i
  %i.fd = phi i32 [ undef, %.critedge2.i ], [ %i.fc, %pred.store.if130 ], [ undef, %pred.store.continue129 ]
  %i.fe = phi i32 [ undef, %.critedge2.i ], [ %i.ez, %pred.store.if130 ], [ %i.ez, %pred.store.continue129 ]
  %i.ff = phi i32 [ undef, %.critedge2.i ], [ %i.ev, %pred.store.if130 ], [ %i.ev, %pred.store.continue129 ]
  %i.fg = phi i32 [ undef, %.critedge2.i ], [ %i.er, %pred.store.if130 ], [ %i.er, %pred.store.continue129 ] ; 3 uses
  %.not138.i = icmp sgt i32 %.0103.lcssa198.i, %.1104.lcssa.i ; 2 uses
  %i.fh = add i32 %spec.select.i, -1
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 4                ; 2 uses
  %i.fl = sext i32 %spec.select.i to i64          ; 6 uses
  %i.fm = zext nneg i32 %.0103.lcssa198.i to i64  ; 2 uses
  %smax179.i = call i32 @llvm.smax.i32(i32 %.1104.lcssa.i, i32 %.0103.lcssa198.i)
  %i.fn = add nuw nsw i32 %smax179.i, 1
  %wide.trip.count180.i = zext i32 %i.fn to i64   ; 2 uses
  br i1 %i.ei, label %.preheader125.i.us.preheader, label %.preheader124.i

.preheader125.i.us.preheader:                     ; preds = %.preheader126.i
  %exitcond186.not.i.us = icmp eq i32 %i.dl, 1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %exitcond186.not.i.us.1 = icmp eq i32 %i.dl, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %exitcond186.not.i.us.2 = icmp eq i32 %i.dl, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  br label %.preheader125.i.us

.preheader125.i.us:                               ; preds = %.preheader125.i.us.preheader, %._crit_edge.i.us
  %i.fx = phi i32 [ %i.jn, %._crit_edge.i.us ], [ %i.fd, %.preheader125.i.us.preheader ] ; 5 uses
  %i.fy = phi i32 [ %i.jo, %._crit_edge.i.us ], [ %i.fe, %.preheader125.i.us.preheader ] ; 4 uses
  %i.fz = phi i32 [ %i.jp, %._crit_edge.i.us ], [ %i.ff, %.preheader125.i.us.preheader ] ; 3 uses
  %i.ga = phi i32 [ %i.id, %._crit_edge.i.us ], [ %i.fg, %.preheader125.i.us.preheader ] ; 2 uses
  %.1102150.i.us = phi i32 [ %i.jr, %._crit_edge.i.us ], [ 0, %.preheader125.i.us.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.d, i8 0, i64 %i.fk, i1 false), !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.fk, i1 false), !tbaa !35
  br i1 %.not138.i, label %.lr.ph146.i.us, label %.lr.ph141.i.us

.lr.ph141.i.us:                                   ; preds = %.preheader125.i.us, %bb.j
  %indvars.iv176.i.us = phi i64 [ %indvars.iv.next177.i.us, %bb.j ], [ %i.fm, %.preheader125.i.us ] ; 4 uses
  %.4139.i.us = phi i32 [ %.6.i.us, %bb.j ], [ 0, %.preheader125.i.us ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv176.i.us
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !35 ; 3 uses
  %.not114.i.us = icmp eq i32 %i.gc, 0
  br i1 %.not114.i.us, label %bb.j, label %.preheader.preheader.i.us

.preheader.preheader.i.us:                        ; preds = %.lr.ph141.i.us
  %i.gd = zext nneg i32 %.4139.i.us to i64        ; 5 uses
  %i.ge = add nuw nsw i32 %.4139.i.us, 1
  %smax.i.us = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.ge)
  %i.gf = add nsw i32 %smax.i.us, -1              ; 4 uses
  %i.gg = trunc nuw nsw i64 %indvars.iv176.i.us to i32 ; 7 uses
  %indvars.iv.next174.i.us103 = add nuw nsw i64 %i.gd, 1 ; 4 uses
  %i.gh = icmp slt i64 %indvars.iv.next174.i.us103, %i.fl
  br i1 %i.gh, label %.lr.ph106, label %.critedge4.i.us

.preheader.i.us:                                  ; preds = %.lr.ph106
  %indvars.iv.next174.i.us = add nuw nsw i64 %i.gd, 2 ; 4 uses
  %i.gi = icmp slt i64 %indvars.iv.next174.i.us, %i.fl
  br i1 %i.gi, label %.lr.ph106.1, label %.critedge4.i.us

.lr.ph106.1:                                      ; preds = %.preheader.i.us
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !35
  %i.gl = sub nsw i32 %i.gg, %i.gk
  %i.gm = call i32 @llvm.abs.i32(i32 %i.gl, i1 true)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !35
  %i.gp = sub nsw i32 %i.gg, %i.go
  %i.gq = call i32 @llvm.abs.i32(i32 %i.gp, i1 true)
  %i.gr = icmp samesign ult i32 %i.gm, %i.gq
  br i1 %i.gr, label %.preheader.i.us.1, label %.critedge4.loopexit.i.us, !llvm.loop !43

.preheader.i.us.1:                                ; preds = %.lr.ph106.1
  %indvars.iv.next174.i.us.1 = add nuw nsw i64 %i.gd, 3 ; 2 uses
  %i.gs = icmp slt i64 %indvars.iv.next174.i.us.1, %i.fl
  br i1 %i.gs, label %.lr.ph106.2, label %.critedge4.i.us

.lr.ph106.2:                                      ; preds = %.preheader.i.us.1
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us.1
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !35
  %i.gv = sub nsw i32 %i.gg, %i.gu
  %i.gw = call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !35
  %i.gz = sub nsw i32 %i.gg, %i.gy
  %i.ha = call i32 @llvm.abs.i32(i32 %i.gz, i1 true)
  %i.hb = icmp samesign ult i32 %i.gw, %i.ha
  br i1 %i.hb, label %.critedge4.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !43

.lr.ph106:                                        ; preds = %.preheader.preheader.i.us
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.us103
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !35
  %i.he = sub nsw i32 %i.gg, %i.hd
  %i.hf = call i32 @llvm.abs.i32(i32 %i.he, i1 true)
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gd
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !35
  %i.hi = sub nsw i32 %i.gg, %i.hh
  %i.hj = call i32 @llvm.abs.i32(i32 %i.hi, i1 true)
  %i.hk = icmp samesign ult i32 %i.hf, %i.hj
  br i1 %i.hk, label %.preheader.i.us, label %.critedge4.loopexit.i.us, !llvm.loop !43

.critedge4.loopexit.i.us:                         ; preds = %.lr.ph106.2, %.lr.ph106.1, %.lr.ph106
  %indvars.iv173.i.us104.lcssa = phi i64 [ %i.gd, %.lr.ph106 ], [ %indvars.iv.next174.i.us103, %.lr.ph106.1 ], [ %indvars.iv.next174.i.us, %.lr.ph106.2 ]
  %i.hl = trunc nuw nsw i64 %indvars.iv173.i.us104.lcssa to i32
  br label %.critedge4.i.us

.critedge4.i.us:                                  ; preds = %.preheader.i.us, %.preheader.i.us.1, %.lr.ph106.2, %.preheader.preheader.i.us, %.critedge4.loopexit.i.us
  %.5.lcssa.i.us = phi i32 [ %i.hl, %.critedge4.loopexit.i.us ], [ %i.gf, %.preheader.preheader.i.us ], [ %i.gf, %.lr.ph106.2 ], [ %i.gf, %.preheader.i.us.1 ], [ %i.gf, %.preheader.i.us ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i.us
  store i32 %.5.lcssa.i.us, ptr %i.hm, align 4, !tbaa !35
  %i.hn = mul nsw i32 %i.gc, %i.gg
  %i.ho = zext nneg i32 %.5.lcssa.i.us to i64     ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ho ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !35
  %i.hr = add nsw i32 %i.hq, %i.hn
  store i32 %i.hr, ptr %i.hp, align 4, !tbaa !35
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ho ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !35
  %i.hu = add nsw i32 %i.ht, %i.gc
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %.critedge4.i.us, %.lr.ph141.i.us
  %.6.i.us = phi i32 [ %.5.lcssa.i.us, %.critedge4.i.us ], [ %.4139.i.us, %.lr.ph141.i.us ]
  %indvars.iv.next177.i.us = add nuw nsw i64 %indvars.iv176.i.us, 1 ; 2 uses
  %exitcond181.not.i.us = icmp eq i64 %indvars.iv.next177.i.us, %wide.trip.count180.i
  br i1 %exitcond181.not.i.us, label %.lr.ph146.i.us, label %.lr.ph141.i.us, !llvm.loop !44

.lr.ph146.i.us:                                   ; preds = %.preheader125.i.us, %bb.j
  %i.hv = load i32, ptr %i.d, align 16, !tbaa !35 ; 5 uses
  %.not113.i.us = icmp eq i32 %i.hv, 0
  br i1 %.not113.i.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph146.i.us
  %i.hw = load i32, ptr %i.e, align 16, !tbaa !35
  %i.hx = sdiv i32 %i.hv, 2
  %i.hy = add nsw i32 %i.hw, %i.hx
  %i.hz = sdiv i32 %i.hy, %i.hv                   ; 4 uses
  %i.ia = sub nsw i32 %i.ga, %i.hz
  %i.ib = call i32 @llvm.abs.i32(i32 %i.ia, i1 true)
  store i32 %i.hz, ptr %i.b, align 16, !tbaa !35
  %i.ic = mul nsw i32 %i.hz, %i.hv
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph146.i.us
  %i.id = phi i32 [ %i.hz, %bb.k ], [ %i.ga, %.lr.ph146.i.us ] ; 2 uses
  %.1100.i.us = phi i32 [ %i.hv, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  %.198.i.us = phi i32 [ %i.ib, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  %.2.i.us = phi i32 [ %i.ic, %bb.k ], [ 0, %.lr.ph146.i.us ] ; 3 uses
  br i1 %exitcond186.not.i.us, label %._crit_edge.i.us, label %.lr.ph146.i.us.1

.lr.ph146.i.us.1:                                 ; preds = %bb.l
  %i.ie = load i32, ptr %i.fo, align 4, !tbaa !35 ; 5 uses
  %.not113.i.us.1 = icmp eq i32 %i.ie, 0
  br i1 %.not113.i.us.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph146.i.us.1
  %i.if = load i32, ptr %i.fp, align 4, !tbaa !35
  %i.ig = sdiv i32 %i.ie, 2
  %i.ih = add nsw i32 %i.if, %i.ig
  %i.ii = sdiv i32 %i.ih, %i.ie                   ; 4 uses
  %i.ij = sub nsw i32 %i.fz, %i.ii
  %i.ik = call i32 @llvm.abs.i32(i32 %i.ij, i1 true)
  %i.il = add nuw nsw i32 %i.ik, %.198.i.us
  store i32 %i.ii, ptr %i.fq, align 4, !tbaa !35
  %i.im = mul nsw i32 %i.ii, %i.ie
  %i.in = add nsw i32 %i.im, %.2.i.us
  %i.io = add nsw i32 %i.ie, %.1100.i.us
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph146.i.us.1
  %i.ip = phi i32 [ %i.ii, %bb.m ], [ %i.fz, %.lr.ph146.i.us.1 ] ; 4 uses
  %.1100.i.us.1 = phi i32 [ %i.io, %bb.m ], [ %.1100.i.us, %.lr.ph146.i.us.1 ] ; 3 uses
  %.198.i.us.1 = phi i32 [ %i.il, %bb.m ], [ %.198.i.us, %.lr.ph146.i.us.1 ] ; 3 uses
  %.2.i.us.1 = phi i32 [ %i.in, %bb.m ], [ %.2.i.us, %.lr.ph146.i.us.1 ] ; 3 uses
  br i1 %exitcond186.not.i.us.1, label %._crit_edge.i.us, label %.lr.ph146.i.us.2

.lr.ph146.i.us.2:                                 ; preds = %bb.n
  %i.iq = load i32, ptr %i.fr, align 8, !tbaa !35 ; 5 uses
  %.not113.i.us.2 = icmp eq i32 %i.iq, 0
  br i1 %.not113.i.us.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph146.i.us.2
  %i.ir = load i32, ptr %i.fs, align 8, !tbaa !35
  %i.is = sdiv i32 %i.iq, 2
  %i.it = add nsw i32 %i.ir, %i.is
  %i.iu = sdiv i32 %i.it, %i.iq                   ; 4 uses
  %i.iv = sub nsw i32 %i.fy, %i.iu
  %i.iw = call i32 @llvm.abs.i32(i32 %i.iv, i1 true)
  %i.ix = add nuw nsw i32 %i.iw, %.198.i.us.1
  store i32 %i.iu, ptr %i.ft, align 8, !tbaa !35
  %i.iy = mul nsw i32 %i.iu, %i.iq
  %i.iz = add nsw i32 %i.iy, %.2.i.us.1
  %i.ja = add nsw i32 %i.iq, %.1100.i.us.1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph146.i.us.2
  %i.jb = phi i32 [ %i.iu, %bb.o ], [ %i.fy, %.lr.ph146.i.us.2 ] ; 3 uses
  %.1100.i.us.2 = phi i32 [ %i.ja, %bb.o ], [ %.1100.i.us.1, %.lr.ph146.i.us.2 ] ; 3 uses
  %.198.i.us.2 = phi i32 [ %i.ix, %bb.o ], [ %.198.i.us.1, %.lr.ph146.i.us.2 ] ; 3 uses
  %.2.i.us.2 = phi i32 [ %i.iz, %bb.o ], [ %.2.i.us.1, %.lr.ph146.i.us.2 ] ; 3 uses
  br i1 %exitcond186.not.i.us.2, label %._crit_edge.i.us, label %.lr.ph146.i.us.3

.lr.ph146.i.us.3:                                 ; preds = %bb.p
  %i.jc = load i32, ptr %i.fu, align 4, !tbaa !35 ; 5 uses
  %.not113.i.us.3 = icmp eq i32 %i.jc, 0
  br i1 %.not113.i.us.3, label %._crit_edge.i.us, label %bb.q

bb.q:                                             ; preds = %.lr.ph146.i.us.3
  %i.jd = load i32, ptr %i.fv, align 4, !tbaa !35
  %i.je = sdiv i32 %i.jc, 2
  %i.jf = add nsw i32 %i.jd, %i.je
  %i.jg = sdiv i32 %i.jf, %i.jc                   ; 4 uses
  %i.jh = sub nsw i32 %i.fx, %i.jg
  %i.ji = call i32 @llvm.abs.i32(i32 %i.jh, i1 true)
  %i.jj = add nuw nsw i32 %i.ji, %.198.i.us.2
  store i32 %i.jg, ptr %i.fw, align 4, !tbaa !35
  %i.jk = mul nsw i32 %i.jg, %i.jc
  %i.jl = add nsw i32 %i.jk, %.2.i.us.2
  %i.jm = add nsw i32 %i.jc, %.1100.i.us.2
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %.lr.ph146.i.us.3, %bb.q, %bb.p, %bb.n, %bb.l
  %i.jn = phi i32 [ %i.fx, %bb.l ], [ %i.fx, %bb.n ], [ %i.fx, %bb.p ], [ %i.jg, %bb.q ], [ %i.fx, %.lr.ph146.i.us.3 ]
  %i.jo = phi i32 [ %i.fy, %bb.l ], [ %i.fy, %bb.n ], [ %i.jb, %bb.p ], [ %i.jb, %bb.q ], [ %i.jb, %.lr.ph146.i.us.3 ]
  %i.jp = phi i32 [ %i.fz, %bb.l ], [ %i.ip, %bb.n ], [ %i.ip, %bb.p ], [ %i.ip, %bb.q ], [ %i.ip, %.lr.ph146.i.us.3 ]
  %.1100.i.us.lcssa = phi i32 [ %.1100.i.us, %bb.l ], [ %.1100.i.us.1, %bb.n ], [ %.1100.i.us.2, %bb.p ], [ %i.jm, %bb.q ], [ %.1100.i.us.2, %.lr.ph146.i.us.3 ] ; 2 uses
  %.198.i.us.lcssa = phi i32 [ %.198.i.us, %bb.l ], [ %.198.i.us.1, %bb.n ], [ %.198.i.us.2, %bb.p ], [ %i.jj, %bb.q ], [ %.198.i.us.2, %.lr.ph146.i.us.3 ]
  %.2.i.us.lcssa = phi i32 [ %.2.i.us, %bb.l ], [ %.2.i.us.1, %bb.n ], [ %.2.i.us.2, %bb.p ], [ %i.jl, %bb.q ], [ %.2.i.us.2, %.lr.ph146.i.us.3 ]
  %i.jq = icmp slt i32 %.198.i.us.lcssa, 5
  %i.jr = add nuw nsw i32 %.1102150.i.us, 1       ; 2 uses
  %exitcond187.not.i.us = icmp eq i32 %i.jr, 6
  %or.cond.i.us = select i1 %i.jq, i1 true, i1 %exitcond187.not.i.us
  br i1 %or.cond.i.us, label %._crit_edge.thread.sink.split.i, label %.preheader125.i.us, !llvm.loop !45

.preheader124.i:                                  ; preds = %.preheader126.i
  br i1 %.not138.i, label %._crit_edge.thread.i, label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %.preheader124.i, %bb.r
  %indvars.iv176.i = phi i64 [ %indvars.iv.next177.i, %bb.r ], [ %i.fm, %.preheader124.i ] ; 4 uses
  %.4139.i = phi i32 [ %.6.i, %bb.r ], [ 0, %.preheader124.i ] ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv176.i
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !35 ; 3 uses
  %.not114.i = icmp eq i32 %i.jt, 0
  br i1 %.not114.i, label %bb.r, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.lr.ph141.i
  %i.ju = zext nneg i32 %.4139.i to i64           ; 5 uses
  %i.jv = add nuw nsw i32 %.4139.i, 1
  %smax.i = call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.jv)
  %i.jw = add nsw i32 %smax.i, -1                 ; 4 uses
  %i.jx = trunc nuw nsw i64 %indvars.iv176.i to i32 ; 7 uses
  %indvars.iv.next174.i100 = add nuw nsw i64 %i.ju, 1 ; 4 uses
  %i.jy = icmp slt i64 %indvars.iv.next174.i100, %i.fl
  br i1 %i.jy, label %.lr.ph, label %.critedge4.i

.preheader.i:                                     ; preds = %.lr.ph
  %indvars.iv.next174.i = add nuw nsw i64 %i.ju, 2 ; 4 uses
  %i.jz = icmp slt i64 %indvars.iv.next174.i, %i.fl
  br i1 %i.jz, label %.lr.ph.1, label %.critedge4.i

.lr.ph.1:                                         ; preds = %.preheader.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !35
  %i.kc = sub nsw i32 %i.jx, %i.kb
  %i.kd = call i32 @llvm.abs.i32(i32 %i.kc, i1 true)
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i100
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !35
  %i.kg = sub nsw i32 %i.jx, %i.kf
  %i.kh = call i32 @llvm.abs.i32(i32 %i.kg, i1 true)
  %i.ki = icmp samesign ult i32 %i.kd, %i.kh
  br i1 %i.ki, label %.preheader.i.1, label %.critedge4.loopexit.i, !llvm.loop !43

.preheader.i.1:                                   ; preds = %.lr.ph.1
  %indvars.iv.next174.i.1 = add nuw nsw i64 %i.ju, 3 ; 2 uses
  %i.kj = icmp slt i64 %indvars.iv.next174.i.1, %i.fl
  br i1 %i.kj, label %.lr.ph.2, label %.critedge4.i

.lr.ph.2:                                         ; preds = %.preheader.i.1
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i.1
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !35
  %i.km = sub nsw i32 %i.jx, %i.kl
  %i.kn = call i32 @llvm.abs.i32(i32 %i.km, i1 true)
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !35
  %i.kq = sub nsw i32 %i.jx, %i.kp
  %i.kr = call i32 @llvm.abs.i32(i32 %i.kq, i1 true)
  %i.ks = icmp samesign ult i32 %i.kn, %i.kr
  br i1 %i.ks, label %.critedge4.i, label %.critedge4.loopexit.i, !llvm.loop !43

.lr.ph:                                           ; preds = %.preheader.preheader.i
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next174.i100
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !35
  %i.kv = sub nsw i32 %i.jx, %i.ku
  %i.kw = call i32 @llvm.abs.i32(i32 %i.kv, i1 true)
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ju
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !35
  %i.kz = sub nsw i32 %i.jx, %i.ky
  %i.la = call i32 @llvm.abs.i32(i32 %i.kz, i1 true)
  %i.lb = icmp samesign ult i32 %i.kw, %i.la
  br i1 %i.lb, label %.preheader.i, label %.critedge4.loopexit.i, !llvm.loop !43

.critedge4.loopexit.i:                            ; preds = %.lr.ph.2, %.lr.ph.1, %.lr.ph
  %indvars.iv173.i101.lcssa = phi i64 [ %i.ju, %.lr.ph ], [ %indvars.iv.next174.i100, %.lr.ph.1 ], [ %indvars.iv.next174.i, %.lr.ph.2 ]
  %i.lc = trunc nuw nsw i64 %indvars.iv173.i101.lcssa to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %.preheader.i, %.preheader.i.1, %.lr.ph.2, %.preheader.preheader.i, %.critedge4.loopexit.i
  %.5.lcssa.i = phi i32 [ %i.lc, %.critedge4.loopexit.i ], [ %i.jw, %.preheader.preheader.i ], [ %i.jw, %.lr.ph.2 ], [ %i.jw, %.preheader.i.1 ], [ %i.jw, %.preheader.i ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv176.i
  store i32 %.5.lcssa.i, ptr %i.ld, align 4, !tbaa !35
  %i.le = mul nsw i32 %i.jt, %i.jx
  %i.lf = zext nneg i32 %.5.lcssa.i to i64        ; 2 uses
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lf ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !35
  %i.li = add nsw i32 %i.lh, %i.le
  store i32 %i.li, ptr %i.lg, align 4, !tbaa !35
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.lf ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !35
  %i.ll = add nsw i32 %i.lk, %i.jt
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %.critedge4.i, %.lr.ph141.i
  %.6.i = phi i32 [ %.5.lcssa.i, %.critedge4.i ], [ %.4139.i, %.lr.ph141.i ]
  %indvars.iv.next177.i = add nuw nsw i64 %indvars.iv176.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next177.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %._crit_edge.thread.i, label %.lr.ph141.i, !llvm.loop !44

._crit_edge.thread.sink.split.i:                  ; preds = %._crit_edge.i.us
  %i.lm = sdiv i32 %.1100.i.us.lcssa, 2
  %i.ln = add nsw i32 %.2.i.us.lcssa, %i.lm
  %i.lo = sdiv i32 %i.ln, %.1100.i.us.lcssa
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.r, %.preheader124.i, %._crit_edge.thread.sink.split.i
  %i.lp = phi i32 [ %i.id, %._crit_edge.thread.sink.split.i ], [ %i.fg, %.preheader124.i ], [ %i.fg, %bb.r ] ; 5 uses
  %i.lq = phi i32 [ %i.lo, %._crit_edge.thread.sink.split.i ], [ poison, %.preheader124.i ], [ poison, %bb.r ] ; 2 uses
  %i.lr = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.ls = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.lt = mul nsw i32 %i.ls, %i.lr                ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph153.i, label %._crit_edge154.i

.lr.ph153.i:                                      ; preds = %._crit_edge.thread.i
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 23648
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph153.i
  %indvars.iv188.i = phi i64 [ 0, %.lr.ph153.i ], [ %indvars.iv.next189.i, %bb.s ] ; 2 uses
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !74
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv188.i ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 1 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !38
  %i.ma = zext i8 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !35 ; 2 uses
  %i.md = trunc i32 %i.mc to i8
  %i.me = load i8, ptr %i.lx, align 4
  %i.mf = shl i8 %i.md, 5
  %i.mg = and i8 %i.mf, 96
  %i.mh = and i8 %i.me, -97
  %i.mi = or disjoint i8 %i.mg, %i.mh
  store i8 %i.mi, ptr %i.lx, align 4
  %i.mj = sext i32 %i.mc to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !35
  %i.mm = trunc i32 %i.ml to i8
  store i8 %i.mm, ptr %i.ly, align 1, !tbaa !38
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.mn = load i32, ptr %i.q, align 8, !tbaa !59  ; 2 uses
  %i.mo = load i32, ptr %i.o, align 4, !tbaa !58  ; 2 uses
  %i.mp = mul nsw i32 %i.mo, %i.mn                ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next189.i, %i.mq
  br i1 %i.mr, label %bb.s, label %._crit_edge154.i, !llvm.loop !46

._crit_edge154.i:                                 ; preds = %bb.s, %._crit_edge.thread.i
  %.lcssa128.i = phi i32 [ %i.lr, %._crit_edge.thread.i ], [ %i.mn, %bb.s ] ; 7 uses
  %.lcssa127.i = phi i32 [ %i.ls, %._crit_edge.thread.i ], [ %i.mo, %bb.s ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.lt, %._crit_edge.thread.i ], [ %i.mp, %bb.s ]
  %i.ms = icmp sgt i32 %i.dl, 1
  br i1 %i.ms, label %bb.t, label %SmoothSegmentMap.exit.i

bb.t:                                             ; preds = %._crit_edge154.i
  %i.mt = load ptr, ptr %0, align 8, !tbaa !26
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 68
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !75
  %i.mw = and i32 %i.mv, 1
  %.not112.i = icmp eq i32 %i.mw, 0
  br i1 %.not112.i, label %SmoothSegmentMap.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mx = sext i32 %.lcssa.i to i64
  %i.my = call ptr @WebPSafeMalloc(i64 noundef %i.mx, i64 noundef 1) #8 ; 6 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %SmoothSegmentMap.exit.i, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.u
  %i.na = add nsw i32 %.lcssa127.i, -1
  %i.nb = icmp sgt i32 %.lcssa127.i, 2
  br i1 %i.nb, label %.preheader62.lr.ph.i.i, label %._crit_edge71.split.i.i

.preheader62.lr.ph.i.i:                           ; preds = %.preheader63.i.i
  %i.nc = add i32 %.lcssa128.i, -1                ; 3 uses
  %i.nd = icmp sgt i32 %.lcssa128.i, 2
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 23648 ; 4 uses
  %i.nf = sub nsw i32 0, %.lcssa128.i
  %i.ng = xor i32 %.lcssa128.i, -1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = sext i32 %i.nf to i64
  %i.nj = sub i32 1, %.lcssa128.i
  %i.nk = sext i32 %i.nj to i64
  %i.nl = sext i32 %i.nc to i64
  %i.nm = sext i32 %.lcssa128.i to i64
  br i1 %i.nd, label %.preheader62.preheader.i.i, label %._crit_edge71.split.i.i

.preheader62.preheader.i.i:                       ; preds = %.preheader62.lr.ph.i.i
  %i.nn = zext nneg i32 %.lcssa128.i to i64       ; 2 uses
  %wide.trip.count78.i.i = zext nneg i32 %i.na to i64 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.nc to i64    ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader62.i.i

.preheader62.i.i:                                 ; preds = %._crit_edge.i.i, %.preheader62.preheader.i.i
end_hunk_0
