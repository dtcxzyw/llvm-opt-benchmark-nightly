Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/pnmdec?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ReadPNM:bb.a
  %i.id = or i1 %.not, %or.cond8                  ; 2 uses
  %i.ie = select i1 %i.id, i64 3, i64 4
  %i.if = mul nuw nsw i64 %i.ie, %i.hs            ; 20 uses
  %i.ig = call i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64 noundef %i.if, i64 noundef %i.ht) #11
  %.not121 = icmp eq i32 %i.ig, 0
  br i1 %.not121, label %bb.cq, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ih = load i32, ptr %i.g, align 4, !tbaa !34  ; 16 uses
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %i.if, %i.ii
  %i.ik = call noalias ptr @malloc(i64 noundef %i.ij) #16 ; 15 uses
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.cq, label %.preheader135

.preheader135:                                    ; preds = %bb.bq
  %i.im = icmp sgt i32 %i.ih, 0
  %.pre = load i32, ptr %i.h, align 8, !tbaa !33  ; 7 uses
  br i1 %i.im, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %.preheader135
  %i.in = load i32, ptr %i.k, align 8, !tbaa !40
  %i.io = mul nsw i32 %.pre, %i.in
  %i.ip = sext i32 %i.io to i64                   ; 17 uses
  %i.iq = load i32, ptr %i.m, align 8, !tbaa !28  ; 5 uses
  %i.ir = icmp eq i32 %i.iq, 255                  ; 4 uses
  %i.is = load i32, ptr %i.l, align 4
  %.fr186 = freeze i32 %i.is                      ; 6 uses
  %i.it = icmp sgt i32 %.fr186, 2                 ; 2 uses
  %or.cond11 = and i1 %i.ir, %i.it
  %i.iu = sdiv i32 %i.iq, 2                       ; 3 uses
  %i.iv = mul i32 %.fr186, %.pre                  ; 5 uses
  %i.iw = icmp eq i32 %.fr186, 1
  %i.ix = icmp ne i32 %3, 0                       ; 2 uses
  %i.iy = icmp eq i32 %.fr186, 2
  %or.cond19 = and i1 %i.ix, %i.iy
  %i.iz = icmp eq i32 %.fr186, 4
  %invariant.op = and i1 %i.iz, %.not             ; 4 uses
  %i.ja = icmp sgt i32 %.pre, 0
  %i.jb = sext i32 %i.iv to i64                   ; 5 uses
  br i1 %or.cond11, label %.lr.ph160.split.us, label %.lr.ph160.split

.lr.ph160.split.us:                               ; preds = %.lr.ph160
  %i.jc = icmp eq i32 %.fr186, 3
  %or.cond13 = or i1 %i.ix, %i.jc
  br i1 %or.cond13, label %.lr.ph160.split.us.split.us.preheader, label %.lr.ph160.split.us.split

.lr.ph160.split.us.split.us.preheader:            ; preds = %.lr.ph160.split.us
  %xtraiter370 = and i32 %i.ih, 3                 ; 3 uses
  %i.jd = icmp ult i32 %i.ih, 4
  br i1 %i.jd, label %.lr.ph160.split.us.split.us.epil.preheader, label %.lr.ph160.split.us.split.us.preheader.new

.lr.ph160.split.us.split.us.preheader.new:        ; preds = %.lr.ph160.split.us.split.us.preheader
  %unroll_iter374 = and i32 %i.ih, 2147483644
  br label %.lr.ph160.split.us.split.us

.lr.ph160.split.us.split.us:                      ; preds = %.lr.ph160.split.us.split.us, %.lr.ph160.split.us.split.us.preheader.new
  %.0103159.us.us = phi i64 [ %.0.i, %.lr.ph160.split.us.split.us.preheader.new ], [ %i.jo, %.lr.ph160.split.us.split.us ] ; 2 uses
  %.0104156.us.us = phi ptr [ %i.ik, %.lr.ph160.split.us.split.us.preheader.new ], [ %i.jp, %.lr.ph160.split.us.split.us ] ; 2 uses
  %niter375 = phi i32 [ 0, %.lr.ph160.split.us.split.us.preheader.new ], [ %niter375.next.3, %.lr.ph160.split.us.split.us ]
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us.us
  %i.jf = add i64 %.0103159.us.us, %i.ip          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0104156.us.us, ptr align 1 %i.je, i64 %i.jb, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %.0104156.us.us, i64 %i.if ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 %i.jf
  %i.ji = add i64 %i.jf, %i.ip                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jg, ptr align 1 %i.jh, i64 %i.jb, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.if ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 %i.ji
  %i.jl = add i64 %i.ji, %i.ip                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jj, ptr align 1 %i.jk, i64 %i.jb, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.if ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 %i.jl
  %i.jo = add i64 %i.jl, %i.ip                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jn, i64 %i.jb, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.if ; 2 uses
  %niter375.next.3 = add nuw nsw i32 %niter375, 4 ; 2 uses
  %niter375.ncmp.3 = icmp eq i32 %niter375.next.3, %unroll_iter374
  br i1 %niter375.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph160.split.us.split.us, !llvm.loop !11

.lr.ph160.split.us.split:                         ; preds = %.lr.ph160.split.us
  br i1 %i.ja, label %.preheader.us.preheader, label %._crit_edge

.preheader.us.preheader:                          ; preds = %.lr.ph160.split.us.split
  %wide.trip.count253 = zext nneg i32 %.pre to i64 ; 2 uses
  %xtraiter364 = and i64 %wide.trip.count253, 1
  %i.jq = icmp eq i32 %.pre, 1
  %unroll_iter368 = and i64 %wide.trip.count253, 2147483646
  %lcmp.mod366.not = icmp eq i64 %xtraiter364, 0
  %lcmp.mod367 = trunc i32 %.pre to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %..loopexit_crit_edge.us
  %.0103159.us = phi i64 [ %i.kz, %..loopexit_crit_edge.us ], [ %.0.i, %.preheader.us.preheader ] ; 2 uses
  %.0104156.us = phi ptr [ %i.la, %..loopexit_crit_edge.us ], [ %i.ik, %.preheader.us.preheader ] ; 4 uses
  %.0106155.us = phi i32 [ %i.lb, %..loopexit_crit_edge.us ], [ 0, %.preheader.us.preheader ]
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us ; 3 uses
  br i1 %i.jq, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv250 = phi i64 [ %indvars.iv.next251.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %niter369 = phi i64 [ %niter369.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.js = shl nuw nsw i64 %indvars.iv250, 2
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.js ; 3 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !29
  %i.jv = mul nuw nsw i64 %indvars.iv250, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.jv ; 3 uses
  store i8 %i.ju, ptr %i.jw, align 1, !tbaa !29
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !29
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store i8 %i.jy, ptr %i.jz, align 1, !tbaa !29
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jt, i64 2
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !29
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  store i8 %i.kb, ptr %i.kc, align 1, !tbaa !29
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 2 uses
  %i.kd = shl nuw nsw i64 %indvars.iv.next251, 2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.kd ; 3 uses
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !29
  %i.kg = mul nuw nsw i64 %indvars.iv.next251, 3
  %i.kh = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.kg ; 3 uses
  store i8 %i.kf, ptr %i.kh, align 1, !tbaa !29
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !29
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !29
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ke, i64 2
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !29
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 2
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !29
  %indvars.iv.next251.1 = add nuw nsw i64 %indvars.iv250, 2 ; 2 uses
  %niter369.next.1 = add i64 %niter369, 2         ; 2 uses
  %niter369.ncmp.1 = icmp eq i64 %niter369.next.1, %unroll_iter368
  br i1 %niter369.ncmp.1, label %..loopexit_crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !12

..loopexit_crit_edge.us.unr-lcssa:                ; preds = %.preheader.us.new
  br i1 %lcmp.mod366.not, label %..loopexit_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv250.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next251.1, %..loopexit_crit_edge.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod367)
  %i.ko = shl nuw nsw i64 %indvars.iv250.epil.init, 2
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.ko ; 3 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !29
  %i.kr = mul nuw nsw i64 %indvars.iv250.epil.init, 3
  %i.ks = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.kr ; 3 uses
  store i8 %i.kq, ptr %i.ks, align 1, !tbaa !29
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kp, i64 1
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !29
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !29
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 2
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !29
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !29
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.unr-lcssa, %.epil.preheader
  %i.kz = add i64 %.0103159.us, %i.ip
  %i.la = getelementptr inbounds nuw i8, ptr %.0104156.us, i64 %i.if
  %i.lb = add nuw nsw i32 %.0106155.us, 1         ; 2 uses
  %exitcond255.not = icmp eq i32 %i.lb, %i.ih
  br i1 %exitcond255.not, label %._crit_edge, label %.preheader.us, !llvm.loop !11

.lr.ph160.split:                                  ; preds = %.lr.ph160
  %i.lc = icmp sgt i32 %i.iv, 0
  br i1 %i.lc, label %.lr.ph160.split.split, label %._crit_edge

.lr.ph160.split.split:                            ; preds = %.lr.ph160.split
  %wide.trip.count247 = zext nneg i32 %i.iv to i64 ; 16 uses
  br i1 %i.it, label %.lr.ph160.split.split.split.us, label %.lr.ph

.lr.ph160.split.split.split.us:                   ; preds = %.lr.ph160.split.split
  br i1 %i.ib, label %.lr.ph160.split.split.split.us.split.us, label %.lr.ph160.split.split.split.us.split

.lr.ph160.split.split.split.us.split.us:          ; preds = %.lr.ph160.split.split.split.us
  br i1 %i.ir, label %.lr.ph160.split.split.split.us.split.us.split.us, label %.lr.ph.us.us

.lr.ph160.split.split.split.us.split.us.split.us: ; preds = %.lr.ph160.split.split.split.us.split.us
  br i1 %invariant.op, label %.lr.ph.us.us.us.us, label %iter.check.preheader

iter.check.preheader:                             ; preds = %.lr.ph160.split.split.split.us.split.us.split.us
  %min.iters.check = icmp ult i32 %i.iv, 8
  %min.iters.check335 = icmp ult i32 %i.iv, 16
  %i.ld = and i64 %wide.trip.count247, 8
  %n.vec = and i64 %wide.trip.count247, 2147483632 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count247
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ld, 0
  %n.vec336 = and i64 %wide.trip.count247, 2147483640 ; 3 uses
  %cmp.n339 = icmp eq i64 %n.vec336, %wide.trip.count247
  br label %iter.check

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph160.split.split.split.us.split.us.split.us, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us184.us
  %.0103159.us161.us.us.us = phi i64 [ %i.lu, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us184.us ], [ %.0.i, %.lr.ph160.split.split.split.us.split.us.split.us ] ; 2 uses
  %.0104156.us162.us.us.us = phi ptr [ %i.lv, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us184.us ], [ %i.ik, %.lr.ph160.split.split.split.us.split.us.split.us ] ; 2 uses
  %.0106155.us163.us.us.us = phi i32 [ %i.lw, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us184.us ], [ 0, %.lr.ph160.split.split.split.us.split.us.split.us ]
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us.us.us
  br label %bb.br

bb.br:                                            ; preds = %bb.bt, %.lr.ph.us.us.us.us
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %bb.bt ], [ 0, %.lr.ph.us.us.us.us ] ; 3 uses
  %.0102152.us.us.us.us.us.us181.us = phi i32 [ %.1.us.us.us.us.us.us.us, %bb.bt ], [ 0, %.lr.ph.us.us.us.us ] ; 3 uses
  %i.lf = and i64 %indvars.iv244, 3
  %i.lg = icmp eq i64 %i.lf, 3
  br i1 %i.lg, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lh = shl nuw nsw i64 %indvars.iv244, 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lh ; 2 uses
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !29
  %i.lk = zext i8 %i.lj to i16
  %i.ll = shl nuw i16 %i.lk, 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !29
  %i.lo = zext i8 %i.ln to i16
  %i.lp = or disjoint i16 %i.ll, %i.lo
  %spec.store.select.us.us.us.us.us.us183.us = call i16 @llvm.umin.i16(i16 %i.lp, i16 255)
  %i.lq = trunc nuw i16 %spec.store.select.us.us.us.us.us.us183.us to i8
  %i.lr = sext i32 %.0102152.us.us.us.us.us.us181.us to i64
  %i.ls = getelementptr inbounds i8, ptr %.0104156.us162.us.us.us, i64 %i.lr
  store i8 %i.lq, ptr %i.ls, align 1, !tbaa !29
  %i.lt = add nsw i32 %.0102152.us.us.us.us.us.us181.us, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.1.us.us.us.us.us.us.us = phi i32 [ %.0102152.us.us.us.us.us.us181.us, %bb.br ], [ %i.lt, %bb.bs ]
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us184.us, label %bb.br, !llvm.loop !13

..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us184.us: ; preds = %bb.bt
  %i.lu = add i64 %.0103159.us161.us.us.us, %i.ip
  %i.lv = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us.us, i64 %i.if
  %i.lw = add nuw nsw i32 %.0106155.us163.us.us.us, 1 ; 2 uses
  %exitcond249.not = icmp eq i32 %i.lw, %i.ih
  br i1 %exitcond249.not, label %._crit_edge, label %.lr.ph.us.us.us.us, !llvm.loop !11

iter.check:                                       ; preds = %iter.check.preheader, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us
  %.0103159.us161.us.us = phi i64 [ %i.uh, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us ], [ %.0.i, %iter.check.preheader ] ; 2 uses
  %.0104156.us162.us.us = phi ptr [ %i.ui, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us ], [ %i.ik, %iter.check.preheader ] ; 4 uses
  %.0106155.us163.us.us = phi i32 [ %i.uj, %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us ], [ 0, %iter.check.preheader ]
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 %.0103159.us161.us.us ; 25 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check335, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 18 uses
  %i.ly = shl nuw nsw i64 %index, 1
  %i.lz = shl i64 %index, 1
  %i.ma = shl i64 %index, 1
  %i.mb = shl i64 %index, 1
  %i.mc = shl i64 %index, 1
  %i.md = shl i64 %index, 1
  %i.me = shl i64 %index, 1
  %i.mf = shl i64 %index, 1
  %i.mg = shl i64 %index, 1
  %i.mh = shl i64 %index, 1
  %i.mi = shl i64 %index, 1
  %i.mj = shl i64 %index, 1
  %i.mk = shl i64 %index, 1
  %i.ml = shl i64 %index, 1
  %i.mm = shl i64 %index, 1
  %i.mn = shl i64 %index, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ly ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lz ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 2
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ma ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mt = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mb ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 6
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mc ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.md ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 10
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.me ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mf ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 14
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mg ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mh ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 18
  %i.nh = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mi ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 20
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mj ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 22
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mk ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ml ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 26
  %i.np = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mm ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 28
  %i.nr = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mn ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 30
  %i.nt = load i8, ptr %i.mo, align 1, !tbaa !29
  %i.nu = load i8, ptr %i.mq, align 1, !tbaa !29
  %i.nv = load i8, ptr %i.ms, align 1, !tbaa !29
  %i.nw = load i8, ptr %i.mu, align 1, !tbaa !29
  %i.nx = load i8, ptr %i.mw, align 1, !tbaa !29
  %i.ny = load i8, ptr %i.my, align 1, !tbaa !29
  %i.nz = load i8, ptr %i.na, align 1, !tbaa !29
  %i.oa = load i8, ptr %i.nc, align 1, !tbaa !29
  %i.ob = load i8, ptr %i.ne, align 1, !tbaa !29
  %i.oc = load i8, ptr %i.ng, align 1, !tbaa !29
  %i.od = load i8, ptr %i.ni, align 1, !tbaa !29
  %i.oe = load i8, ptr %i.nk, align 1, !tbaa !29
  %i.of = load i8, ptr %i.nm, align 1, !tbaa !29
  %i.og = load i8, ptr %i.no, align 1, !tbaa !29
  %i.oh = load i8, ptr %i.nq, align 1, !tbaa !29
  %i.oi = load i8, ptr %i.ns, align 1, !tbaa !29
  %i.oj = insertelement <16 x i8> poison, i8 %i.nt, i64 0
  %i.ok = insertelement <16 x i8> %i.oj, i8 %i.nu, i64 1
  %i.ol = insertelement <16 x i8> %i.ok, i8 %i.nv, i64 2
  %i.om = insertelement <16 x i8> %i.ol, i8 %i.nw, i64 3
  %i.on = insertelement <16 x i8> %i.om, i8 %i.nx, i64 4
  %i.oo = insertelement <16 x i8> %i.on, i8 %i.ny, i64 5
  %i.op = insertelement <16 x i8> %i.oo, i8 %i.nz, i64 6
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 7
  %i.or = insertelement <16 x i8> %i.oq, i8 %i.ob, i64 8
  %i.os = insertelement <16 x i8> %i.or, i8 %i.oc, i64 9
  %i.ot = insertelement <16 x i8> %i.os, i8 %i.od, i64 10
  %i.ou = insertelement <16 x i8> %i.ot, i8 %i.oe, i64 11
  %i.ov = insertelement <16 x i8> %i.ou, i8 %i.of, i64 12
  %i.ow = insertelement <16 x i8> %i.ov, i8 %i.og, i64 13
  %i.ox = insertelement <16 x i8> %i.ow, i8 %i.oh, i64 14
  %i.oy = insertelement <16 x i8> %i.ox, i8 %i.oi, i64 15
  %i.oz = zext <16 x i8> %i.oy to <16 x i16>
  %i.pa = shl nuw <16 x i16> %i.oz, splat (i16 8)
  %i.pb = getelementptr inbounds nuw i8, ptr %i.mo, i64 1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.mp, i64 3
  %i.pd = getelementptr inbounds nuw i8, ptr %i.mr, i64 5
  %i.pe = getelementptr inbounds nuw i8, ptr %i.mt, i64 7
  %i.pf = getelementptr inbounds nuw i8, ptr %i.mv, i64 9
  %i.pg = getelementptr inbounds nuw i8, ptr %i.mx, i64 11
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mz, i64 13
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nb, i64 15
  %i.pj = getelementptr inbounds nuw i8, ptr %i.nd, i64 17
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nf, i64 19
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nh, i64 21
  %i.pm = getelementptr inbounds nuw i8, ptr %i.nj, i64 23
  %i.pn = getelementptr inbounds nuw i8, ptr %i.nl, i64 25
  %i.po = getelementptr inbounds nuw i8, ptr %i.nn, i64 27
  %i.pp = getelementptr inbounds nuw i8, ptr %i.np, i64 29
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nr, i64 31
  %i.pr = load i8, ptr %i.pb, align 1, !tbaa !29
  %i.ps = load i8, ptr %i.pc, align 1, !tbaa !29
  %i.pt = load i8, ptr %i.pd, align 1, !tbaa !29
  %i.pu = load i8, ptr %i.pe, align 1, !tbaa !29
  %i.pv = load i8, ptr %i.pf, align 1, !tbaa !29
  %i.pw = load i8, ptr %i.pg, align 1, !tbaa !29
  %i.px = load i8, ptr %i.ph, align 1, !tbaa !29
  %i.py = load i8, ptr %i.pi, align 1, !tbaa !29
  %i.pz = load i8, ptr %i.pj, align 1, !tbaa !29
  %i.qa = load i8, ptr %i.pk, align 1, !tbaa !29
  %i.qb = load i8, ptr %i.pl, align 1, !tbaa !29
  %i.qc = load i8, ptr %i.pm, align 1, !tbaa !29
  %i.qd = load i8, ptr %i.pn, align 1, !tbaa !29
  %i.qe = load i8, ptr %i.po, align 1, !tbaa !29
  %i.qf = load i8, ptr %i.pp, align 1, !tbaa !29
  %i.qg = load i8, ptr %i.pq, align 1, !tbaa !29
  %i.qh = insertelement <16 x i8> poison, i8 %i.pr, i64 0
  %i.qi = insertelement <16 x i8> %i.qh, i8 %i.ps, i64 1
  %i.qj = insertelement <16 x i8> %i.qi, i8 %i.pt, i64 2
  %i.qk = insertelement <16 x i8> %i.qj, i8 %i.pu, i64 3
  %i.ql = insertelement <16 x i8> %i.qk, i8 %i.pv, i64 4
  %i.qm = insertelement <16 x i8> %i.ql, i8 %i.pw, i64 5
  %i.qn = insertelement <16 x i8> %i.qm, i8 %i.px, i64 6
  %i.qo = insertelement <16 x i8> %i.qn, i8 %i.py, i64 7
  %i.qp = insertelement <16 x i8> %i.qo, i8 %i.pz, i64 8
  %i.qq = insertelement <16 x i8> %i.qp, i8 %i.qa, i64 9
  %i.qr = insertelement <16 x i8> %i.qq, i8 %i.qb, i64 10
  %i.qs = insertelement <16 x i8> %i.qr, i8 %i.qc, i64 11
  %i.qt = insertelement <16 x i8> %i.qs, i8 %i.qd, i64 12
  %i.qu = insertelement <16 x i8> %i.qt, i8 %i.qe, i64 13
  %i.qv = insertelement <16 x i8> %i.qu, i8 %i.qf, i64 14
  %i.qw = insertelement <16 x i8> %i.qv, i8 %i.qg, i64 15
  %i.qx = zext <16 x i8> %i.qw to <16 x i16>
  %i.qy = or disjoint <16 x i16> %i.pa, %i.qx
  %i.qz = call <16 x i16> @llvm.umin.v16i16(<16 x i16> %i.qy, <16 x i16> splat (i16 255))
  %i.ra = trunc nuw <16 x i16> %i.qz to <16 x i8>
  %i.rb = getelementptr inbounds nuw i8, ptr %.0104156.us162.us.us, i64 %index
  store <16 x i8> %i.ra, ptr %i.rb, align 1, !tbaa !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.rc = icmp eq i64 %index.next, %n.vec
  br i1 %i.rc, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit134_crit_edge.split.us.us.split.us.us.split.us.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index337 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next338, %vec.epilog.vector.body ] ; 10 uses
  %i.rd = shl nuw nsw i64 %index337, 1
  %i.re = shl i64 %index337, 1
end_hunk_0
