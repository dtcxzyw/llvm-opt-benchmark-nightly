inline.NumInlined: 356
inline.NumDeleted: 67
begin_hunk_0_@HUF_decompress4X4:bb.a
  br label %.preheader82.i

.preheader82.i:                                   ; preds = %.preheader82.loopexit.i, %.preheader83.i
  %.068.lcssa.i = phi i32 [ %i.n, %.preheader83.i ], [ %i.t, %.preheader82.loopexit.i ] ; 10 uses
  %.not7786.i = icmp eq i32 %.068.lcssa.i, 0      ; 2 uses
  br i1 %.not7786.i, label %._crit_edge.i, label %.lr.ph89.preheader.i

.lr.ph89.preheader.i:                             ; preds = %.preheader82.i
  %i.u = zext i32 %.068.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.v = icmp ult i32 %.068.lcssa.i, 4
  br i1 %i.v, label %.lr.ph89.i.epil.preheader, label %.lr.ph89.preheader.i.new

.lr.ph89.preheader.i.new:                         ; preds = %.lr.ph89.preheader.i
  %unroll_iter = and i64 %i.u, 4294967292
  br label %.lr.ph89.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not81.i = icmp eq i64 %i.w, 0
  br i1 %.not81.i, label %HUF_readDTableX4.exit.thread, label %.lr.ph, !llvm.loop !71

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i114 = phi i64 [ %i.w, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %i.w = add nsw i64 %indvars.iv.i114, -1         ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %.preheader82.loopexit.i, !llvm.loop !71

.lr.ph89.i:                                       ; preds = %.lr.ph89.i, %.lr.ph89.preheader.i.new
  %indvars.iv112.i = phi i64 [ 1, %.lr.ph89.preheader.i.new ], [ %indvars.iv.next113.i.3, %.lr.ph89.i ] ; 6 uses
  %.07387.i = phi i32 [ 0, %.lr.ph89.preheader.i.new ], [ %i.ao, %.lr.ph89.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph89.preheader.i.new ], [ %niter.next.3, %.lr.ph89.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv112.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ac = add i32 %i.ab, %.07387.i                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv112.i
  store i32 %.07387.i, ptr %i.ad, align 4, !tbaa !3
  %indvars.iv.next113.i = add nuw nsw i64 %indvars.iv112.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next113.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next113.i
  store i32 %i.ac, ptr %i.ah, align 4, !tbaa !3
  %indvars.iv.next113.i.1 = add nuw nsw i64 %indvars.iv112.i, 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next113.i.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next113.i.1
  store i32 %i.ag, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next113.i.2 = add nuw nsw i64 %indvars.iv112.i, 3 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next113.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = add i32 %i.an, %i.ak                    ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.next113.i.2
  store i32 %i.ak, ptr %i.ap, align 4, !tbaa !3
  %indvars.iv.next113.i.3 = add nuw nsw i64 %indvars.iv112.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph89.i, !llvm.loop !72

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph89.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph89.i.epil.preheader

.lr.ph89.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.preheader.i
  %indvars.iv112.i.epil.init = phi i64 [ 1, %.lr.ph89.preheader.i ], [ %indvars.iv.next113.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07387.i.epil.init = phi i32 [ 0, %.lr.ph89.preheader.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod174 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph89.i.epil

.lr.ph89.i.epil:                                  ; preds = %.lr.ph89.i.epil, %.lr.ph89.i.epil.preheader
  %indvars.iv112.i.epil = phi i64 [ %indvars.iv112.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %indvars.iv.next113.i.epil, %.lr.ph89.i.epil ] ; 3 uses
  %.07387.i.epil = phi i32 [ %.07387.i.epil.init, %.lr.ph89.i.epil.preheader ], [ %i.as, %.lr.ph89.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph89.i.epil.preheader ], [ %epil.iter.next, %.lr.ph89.i.epil ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv112.i.epil
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = add i32 %i.ar, %.07387.i.epil           ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv112.i.epil
  store i32 %.07387.i.epil, ptr %i.at, align 4, !tbaa !3
  %indvars.iv.next113.i.epil = add nuw nsw i64 %indvars.iv112.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph89.i.epil, !llvm.loop !73

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph89.i.epil, %.preheader82.i
  %.073.lcssa.i = phi i32 [ 0, %.preheader82.i ], [ %i.ao, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.as, %.lr.ph89.i.epil ] ; 5 uses
  store i32 %.073.lcssa.i, ptr %i.j, align 4, !tbaa !3
  %i.au = load i32, ptr %i.h, align 4, !tbaa !3   ; 4 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge94.i, label %.lr.ph93.preheader.i

.lr.ph93.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count118.i = zext i32 %i.au to i64   ; 2 uses
  %xtraiter175 = and i64 %wide.trip.count118.i, 1
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %.lr.ph93.i.epil.preheader, label %.lr.ph93.preheader.i.new

.lr.ph93.preheader.i.new:                         ; preds = %.lr.ph93.preheader.i
  %unroll_iter179 = and i64 %wide.trip.count118.i, 4294967294
  br label %.lr.ph93.i

.lr.ph93.i:                                       ; preds = %.lr.ph93.i, %.lr.ph93.preheader.i.new
  %indvars.iv115.i = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %indvars.iv.next116.i.1, %.lr.ph93.i ] ; 4 uses
  %niter180 = phi i64 [ 0, %.lr.ph93.preheader.i.new ], [ %niter180.next.1, %.lr.ph93.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv115.i
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !9   ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3  ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !3
  %i.bc = trunc i64 %indvars.iv115.i to i8
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bd ; 2 uses
  store i8 %i.bc, ptr %i.be, align 2, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store i8 %i.ax, ptr %i.bf, align 1, !tbaa !68
  %indvars.iv.next116.i = or disjoint i64 %indvars.iv115.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next116.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9   ; 2 uses
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3  ; 2 uses
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %i.bm = trunc i64 %indvars.iv.next116.i to i8
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bn ; 2 uses
  store i8 %i.bm, ptr %i.bo, align 2, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  store i8 %i.bh, ptr %i.bp, align 1, !tbaa !68
  %indvars.iv.next116.i.1 = add nuw nsw i64 %indvars.iv115.i, 2 ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %._crit_edge94.i.loopexit.unr-lcssa, label %.lr.ph93.i, !llvm.loop !75

._crit_edge94.i.loopexit.unr-lcssa:               ; preds = %.lr.ph93.i
  %lcmp.mod177.not = icmp eq i64 %xtraiter175, 0
  br i1 %lcmp.mod177.not, label %._crit_edge94.i, label %.lr.ph93.i.epil.preheader

.lr.ph93.i.epil.preheader:                        ; preds = %._crit_edge94.i.loopexit.unr-lcssa, %.lr.ph93.preheader.i
  %indvars.iv115.i.epil.init = phi i64 [ 0, %.lr.ph93.preheader.i ], [ %indvars.iv.next116.i.1, %._crit_edge94.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv115.i.epil.init
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !9   ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %i.bw = trunc i64 %indvars.iv115.i.epil.init to i8
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bx ; 2 uses
  store i8 %i.bw, ptr %i.by, align 2, !tbaa !66
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %i.br, ptr %i.bz, align 1, !tbaa !68
  br label %._crit_edge94.i

._crit_edge94.i:                                  ; preds = %.lr.ph93.i.epil.preheader, %._crit_edge94.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.j, align 4, !tbaa !3
  %i.ca = add nuw nsw i32 %i.n, 1                 ; 3 uses
  %i.cb = sub nsw i32 %i.ca, %.068.lcssa.i        ; 4 uses
  br i1 %.not7786.i, label %._crit_edge108.i, label %.lr.ph99.preheader.i

.lr.ph99.preheader.i:                             ; preds = %._crit_edge94.i
  %i.cc = add nuw nsw i32 %.068.lcssa.i, 1        ; 2 uses
  %wide.trip.count123.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %i.cd = zext i32 %.068.lcssa.i to i64           ; 2 uses
  %xtraiter181 = and i64 %i.cd, 1
  %i.ce = icmp eq i32 %i.cc, 2
  br i1 %i.ce, label %.lr.ph99.i.epil.preheader, label %.lr.ph99.preheader.i.new

.lr.ph99.preheader.i.new:                         ; preds = %.lr.ph99.preheader.i
  %unroll_iter185 = and i64 %i.cd, 4294967294
  %invariant.op = sub i32 11, %i.n
  %invariant.op201 = sub i32 11, %i.n
  br label %.lr.ph99.i

.preheader.thread.i.unr-lcssa:                    ; preds = %.lr.ph99.i
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %.preheader.thread.i, label %.lr.ph99.i.epil.preheader

.lr.ph99.i.epil.preheader:                        ; preds = %.preheader.thread.i.unr-lcssa, %.lr.ph99.preheader.i
  %indvars.iv120.i.epil.init = phi i64 [ 1, %.lr.ph99.preheader.i ], [ %indvars.iv.next121.i.1, %.preheader.thread.i.unr-lcssa ]
  %.07196.i.epil.init = phi i32 [ 0, %.lr.ph99.preheader.i ], [ %i.cu, %.preheader.thread.i.unr-lcssa ]
  %lcmp.mod184 = trunc i32 %.068.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv120.i.epil.init
  store i32 %.07196.i.epil.init, ptr %i.cf, align 4, !tbaa !3
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %.preheader.thread.i.unr-lcssa, %.lr.ph99.i.epil.preheader
  %i.cg = sub nsw i32 12, %i.cb                   ; 2 uses
  %.not79105143.i = icmp ugt i32 %i.cb, %i.cg
  br i1 %.not79105143.i, label %._crit_edge108.i, label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.preheader.thread.i
  %i.ch = zext i32 %.068.lcssa.i to i64
  %i.ci = zext i32 %.068.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.068.lcssa.i, 8
  %n.vec = and i64 %i.ci, 4294967288              ; 3 uses
  %i.cj = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.ci
  br label %.lr.ph103.i

.lr.ph99.i:                                       ; preds = %.lr.ph99.i, %.lr.ph99.preheader.i.new
  %indvars.iv120.i = phi i64 [ 1, %.lr.ph99.preheader.i.new ], [ %indvars.iv.next121.i.1, %.lr.ph99.i ] ; 5 uses
  %.07196.i = phi i32 [ 0, %.lr.ph99.preheader.i.new ], [ %i.cu, %.lr.ph99.i ] ; 2 uses
  %niter186 = phi i64 [ 0, %.lr.ph99.preheader.i.new ], [ %niter186.next.1, %.lr.ph99.i ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv120.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = trunc nuw nsw i64 %indvars.iv120.i to i32
  %.reass.reass = add i32 %i.cm, %invariant.op
  %i.cn = shl i32 %i.cl, %.reass.reass
  %i.co = add i32 %i.cn, %.07196.i                ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv120.i
  store i32 %.07196.i, ptr %i.cp, align 4, !tbaa !3
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next121.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = trunc nuw nsw i64 %indvars.iv.next121.i to i32
  %.reass.1.reass = add i32 %i.cs, %invariant.op201
  %i.ct = shl i32 %i.cr, %.reass.1.reass
  %i.cu = add i32 %i.ct, %i.co                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next121.i
  store i32 %i.co, ptr %i.cv, align 4, !tbaa !3
  %indvars.iv.next121.i.1 = add nuw nsw i64 %indvars.iv120.i, 2 ; 2 uses
  %niter186.next.1 = add i64 %niter186, 2         ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %.preheader.thread.i.unr-lcssa, label %.lr.ph99.i, !llvm.loop !76

.lr.ph103.i:                                      ; preds = %.lr.ph103.i.preheader, %._crit_edge104.i
  %.069106.i = phi i32 [ %i.ed, %._crit_edge104.i ], [ %i.cb, %.lr.ph103.i.preheader ] ; 9 uses
  %i.cw = zext i32 %.069106.i to i64
  %i.cx = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.cw ; 6 uses
  %diff.check = icmp eq i32 %.069106.i, 0
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph103.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.069106.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = or disjoint i64 %index, 1               ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load = load <4 x i32>, ptr %i.cz, align 4, !tbaa !3
  %wide.load115 = load <4 x i32>, ptr %i.da, align 4, !tbaa !3
  %i.db = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dc = lshr <4 x i32> %wide.load115, %broadcast.splat
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cy ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x i32> %i.db, ptr %i.dd, align 4, !tbaa !3
  store <4 x i32> %i.dc, ptr %i.de, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !77

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge104.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph103.i, %middle.block
  %indvars.iv125.i.ph = phi i64 [ 1, %.lr.ph103.i ], [ %i.cj, %middle.block ] ; 4 uses
  %i.dg = sub nsw i64 %wide.trip.count123.i, %indvars.iv125.i.ph
  %i.dh = sub nsw i64 %i.ch, %indvars.iv125.i.ph
  %xtraiter187 = and i64 %i.dg, 3                 ; 2 uses
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv125.i.prol = phi i64 [ %indvars.iv.next126.i.prol, %scalar.ph.prol ], [ %indvars.iv125.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !3
  %i.dk = lshr i32 %i.dj, %.069106.i
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv125.i.prol
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !3
  %indvars.iv.next126.i.prol = add nuw nsw i64 %indvars.iv125.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !78

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv125.i.unr = phi i64 [ %indvars.iv125.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next126.i.prol, %scalar.ph.prol ]
  %i.dm = icmp ult i64 %i.dh, 3
  br i1 %i.dm, label %._crit_edge104.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i.3, %scalar.ph ], [ %indvars.iv125.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3
  %i.dp = lshr i32 %i.do, %.069106.i
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv125.i
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !3
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next126.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = lshr i32 %i.ds, %.069106.i
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next126.i
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %indvars.iv.next126.i.1 = add nuw nsw i64 %indvars.iv125.i, 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next126.i.1
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = lshr i32 %i.dw, %.069106.i
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next126.i.1
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3
  %indvars.iv.next126.i.2 = add nuw nsw i64 %indvars.iv125.i, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next126.i.2
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = lshr i32 %i.ea, %.069106.i
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next126.i.2
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !3
  %indvars.iv.next126.i.3 = add nuw nsw i64 %indvars.iv125.i, 4 ; 2 uses
  %exitcond129.not.i.3 = icmp eq i64 %indvars.iv.next126.i.3, %wide.trip.count123.i
  br i1 %exitcond129.not.i.3, label %._crit_edge104.i, label %scalar.ph, !llvm.loop !79

._crit_edge104.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ed = add i32 %.069106.i, 1                   ; 2 uses
  %.not79.i = icmp ugt i32 %i.ed, %i.cg
  br i1 %.not79.i, label %._crit_edge108.i, label %.lr.ph103.i, !llvm.loop !80

._crit_edge108.i:                                 ; preds = %._crit_edge104.i, %.preheader.thread.i, %._crit_edge94.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ee = add nsw i32 %i.n, -11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i.i = icmp eq i32 %.073.lcssa.i, 0
  br i1 %.not56.i.i, label %HUF_readDTableX4.exit, label %.lr.ph55.preheader.i.i

.lr.ph55.preheader.i.i:                           ; preds = %._crit_edge108.i
  %wide.trip.count61.i.i = zext i32 %.073.lcssa.i to i64
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph55.preheader.i.i
  %indvars.iv58.i.i = phi i64 [ 0, %.lr.ph55.preheader.i.i ], [ %indvars.iv.next59.i.i, %.loopexit.i.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv58.i.i ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !66
  %i.eh = zext i8 %i.eg to i32                    ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !68  ; 2 uses
  %i.ek = zext i8 %i.ej to i32
  %i.el = sub nsw i32 %i.ca, %i.ek                ; 6 uses
  %i.em = zext i8 %i.ej to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3  ; 5 uses
  %i.ep = sub nsw i32 12, %i.el                   ; 3 uses
  %i.eq = shl nuw i32 1, %i.ep                    ; 2 uses
  %.not.i.i = icmp ult i32 %i.ep, %i.cb
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph55.i.i
  %i.er = add nsw i32 %i.ee, %i.el                ; 2 uses
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.er, i32 1)
  %i.es = zext nneg i32 %spec.store.select.i.i to i64 ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3  ; 3 uses
  %i.ev = zext i32 %i.eo to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ev ; 4 uses
  %i.ex = zext i32 %i.el to i64
  %i.ey = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.ex
  %i.ez = zext i32 %i.eu to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ez
  %i.fb = sub i32 %.073.lcssa.i, %i.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.ey, i64 68, i1 false)
  %i.fc = icmp sgt i32 %i.er, 1
  br i1 %i.fc, label %bb.d, label %.loopexit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.es
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3  ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.fe, 0
  br i1 %.not.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %.sroa.6.0.insert.ext42.i.i.i = shl nsw i32 %i.el, 16
  %.sroa.6.0.insert.shift43.i.i.i = and i32 %.sroa.6.0.insert.ext42.i.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i.i, %i.eh
  %.sroa.0.0.insert.insert40.i.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.fe to i64  ; 3 uses
  %min.iters.check144 = icmp ult i32 %i.fe, 8
  br i1 %min.iters.check144, label %scalar.ph143.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i.i.i
  %n.vec147 = and i64 %wide.trip.count.i.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert148 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i.i, i64 0
  %broadcast.splat149 = shufflevector <4 x i32> %broadcast.splatinsert148, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph145
  %index151 = phi i64 [ 0, %vector.ph145 ], [ %index.next152, %vector.body150 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %index151 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <4 x i32> %broadcast.splat149, ptr %i.ff, align 4
  store <4 x i32> %broadcast.splat149, ptr %i.fg, align 4
  %index.next152 = add nuw i64 %index151, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next152, %n.vec147
  br i1 %i.fh, label %middle.block153, label %vector.body150, !llvm.loop !81

middle.block153:                                  ; preds = %vector.body150
  %cmp.n154 = icmp eq i64 %n.vec147, %wide.trip.count.i.i.i
  br i1 %cmp.n154, label %.loopexit.i.i.i, label %scalar.ph143.preheader

scalar.ph143.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block153
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec147, %middle.block153 ]
  br label %scalar.ph143

scalar.ph143:                                     ; preds = %scalar.ph143.preheader, %scalar.ph143
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph143 ], [ %indvars.iv.i.i.i.ph, %scalar.ph143.preheader ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.i.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i.i, ptr %i.fi, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i.i, label %scalar.ph143, !llvm.loop !82

.loopexit.i.i.i:                                  ; preds = %scalar.ph143, %middle.block153, %bb.d, %bb.c
  %.not54.i.i.i = icmp eq i32 %.073.lcssa.i, %i.eu
  br i1 %.not54.i.i.i, label %HUF_fillDTableX4Level2.exit.i.i, label %.lr.ph53.preheader.i.i.i

.lr.ph53.preheader.i.i.i:                         ; preds = %.loopexit.i.i.i
  %wide.trip.count59.i.i.i = zext i32 %i.fb to i64
  %invariant.op.i.i = or disjoint i32 %i.eh, 33554432
  br label %.lr.ph53.i.i.i

.lr.ph53.i.i.i:                                   ; preds = %.loopexit, %.lr.ph53.preheader.i.i.i
  %indvars.iv56.i.i.i = phi i64 [ 0, %.lr.ph53.preheader.i.i.i ], [ %indvars.iv.next57.i.i.i, %.loopexit ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %indvars.iv56.i.i.i ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !66
  %i.fl = zext i8 %i.fk to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !68  ; 2 uses
  %i.fo = zext i8 %i.fn to i32
  %i.fp = sub nsw i32 %i.ca, %i.fo                ; 2 uses
  %i.fq = sub nsw i32 %i.ep, %i.fp
  %i.fr = shl nuw i32 1, %i.fq
  %i.fs = zext i8 %i.fn to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !3  ; 9 uses
  %i.fv = add i32 %i.fr, %i.fu                    ; 4 uses
  %i.fw = shl nuw nsw i32 %i.fl, 8
  %i.fx = add nsw i32 %i.fp, %i.el
  %.sroa.6.0.insert.ext.i.i.i = shl nsw i32 %i.fx, 16
  %.sroa.6.0.insert.shift.i.i.i = and i32 %.sroa.6.0.insert.ext.i.i.i, 16711680
  %i.fy = or disjoint i32 %.sroa.6.0.insert.shift.i.i.i, %i.fw
  %.sroa.0.0.insert.insert.i.reass.i.i = or disjoint i32 %i.fy, %invariant.op.i.i ; 2 uses
  %i.fz = add i32 %i.fu, 1
  %umax129 = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 %i.fz)
  %i.ga = sub i32 %umax129, %i.fu                 ; 3 uses
  %min.iters.check131 = icmp ult i32 %i.ga, 16
  br i1 %min.iters.check131, label %scalar.ph130.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph53.i.i.i
  %i.gb = add i32 %i.fu, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 %i.gb)
  %i.gc = add i32 %umax, -1
  %i.gd = icmp ult i32 %i.gc, %i.fu
  br i1 %i.gd, label %scalar.ph130.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.scevcheck
  %n.vec134 = and i32 %i.ga, -8                   ; 3 uses
  %i.ge = add i32 %i.fu, %n.vec134
  %broadcast.splatinsert135 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert.i.reass.i.i, i64 0
  %broadcast.splat136 = shufflevector <4 x i32> %broadcast.splatinsert135, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph132
end_hunk_0
begin_hunk_1_@HUF_decompress4X6:bb.a
  br label %.preheader87.i

.preheader87.i:                                   ; preds = %.preheader87.loopexit.i, %.preheader88.i
  %.073.lcssa.i = phi i32 [ %i.k, %.preheader88.i ], [ %i.q, %.preheader87.loopexit.i ] ; 11 uses
  %.not8291.i = icmp eq i32 %.073.lcssa.i, 0      ; 2 uses
  br i1 %.not8291.i, label %._crit_edge.i, label %.lr.ph94.preheader.i

.lr.ph94.preheader.i:                             ; preds = %.preheader87.i
  %i.r = zext i32 %.073.lcssa.i to i64            ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i32 %.073.lcssa.i, 4
  br i1 %i.s, label %.lr.ph94.i.epil.preheader, label %.lr.ph94.preheader.i.new

.lr.ph94.preheader.i.new:                         ; preds = %.lr.ph94.preheader.i
  %unroll_iter = and i64 %i.r, 4294967292
  br label %.lr.ph94.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %.not86.i = icmp eq i64 %i.t, 0
  br i1 %.not86.i, label %HUF_readDTableX6.exit.thread, label %.lr.ph, !llvm.loop !90

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i107 = phi i64 [ %i.t, %.lr.ph.i ], [ %i.m, %.lr.ph.i.preheader ]
  %i.t = add nsw i64 %indvars.iv.i107, -1         ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i, label %.preheader87.loopexit.i, !llvm.loop !90

.lr.ph94.i:                                       ; preds = %.lr.ph94.i, %.lr.ph94.preheader.i.new
  %indvars.iv117.i = phi i64 [ 1, %.lr.ph94.preheader.i.new ], [ %indvars.iv.next118.i.3, %.lr.ph94.i ] ; 6 uses
  %.07592.i = phi i32 [ 0, %.lr.ph94.preheader.i.new ], [ %i.al, %.lr.ph94.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph94.preheader.i.new ], [ %niter.next.3, %.lr.ph94.i ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv117.i
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = add i32 %i.y, %.07592.i                  ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv117.i
  store i32 %.07592.i, ptr %i.aa, align 4, !tbaa !3
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next118.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = add i32 %i.ac, %i.z                     ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next118.i
  store i32 %i.z, ptr %i.ae, align 4, !tbaa !3
  %indvars.iv.next118.i.1 = add nuw nsw i64 %indvars.iv117.i, 2 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next118.i.1
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add i32 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next118.i.1
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !3
  %indvars.iv.next118.i.2 = add nuw nsw i64 %indvars.iv117.i, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next118.i.2
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = add i32 %i.ak, %i.ah                    ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next118.i.2
  store i32 %i.ah, ptr %i.am, align 4, !tbaa !3
  %indvars.iv.next118.i.3 = add nuw nsw i64 %indvars.iv117.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph94.i, !llvm.loop !91

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph94.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph94.i.epil.preheader

.lr.ph94.i.epil.preheader:                        ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.preheader.i
  %indvars.iv117.i.epil.init = phi i64 [ 1, %.lr.ph94.preheader.i ], [ %indvars.iv.next118.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.07592.i.epil.init = phi i32 [ 0, %.lr.ph94.preheader.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph94.i.epil

.lr.ph94.i.epil:                                  ; preds = %.lr.ph94.i.epil, %.lr.ph94.i.epil.preheader
  %indvars.iv117.i.epil = phi i64 [ %indvars.iv117.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %indvars.iv.next118.i.epil, %.lr.ph94.i.epil ] ; 3 uses
  %.07592.i.epil = phi i32 [ %.07592.i.epil.init, %.lr.ph94.i.epil.preheader ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph94.i.epil.preheader ], [ %epil.iter.next, %.lr.ph94.i.epil ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv117.i.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = add i32 %i.ao, %.07592.i.epil           ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv117.i.epil
  store i32 %.07592.i.epil, ptr %i.aq, align 4, !tbaa !3
  %indvars.iv.next118.i.epil = add nuw nsw i64 %indvars.iv117.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph94.i.epil, !llvm.loop !92

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph94.i.epil, %.preheader87.i
  %.075.lcssa.i = phi i32 [ 0, %.preheader87.i ], [ %i.al, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph94.i.epil ] ; 2 uses
  store i32 %.075.lcssa.i, ptr %i.h, align 4, !tbaa !3
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !3   ; 4 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %._crit_edge99.i, label %.lr.ph98.preheader.i

.lr.ph98.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count123.i = zext i32 %i.ar to i64   ; 2 uses
  %xtraiter128 = and i64 %wide.trip.count123.i, 1
  %i.as = icmp eq i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph98.i.epil.preheader, label %.lr.ph98.preheader.i.new

.lr.ph98.preheader.i.new:                         ; preds = %.lr.ph98.preheader.i
  %unroll_iter132 = and i64 %wide.trip.count123.i, 4294967294
  br label %.lr.ph98.i

.lr.ph98.i:                                       ; preds = %.lr.ph98.i, %.lr.ph98.preheader.i.new
  %indvars.iv120.i = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %indvars.iv.next121.i.1, %.lr.ph98.i ] ; 4 uses
  %niter133 = phi i64 [ 0, %.lr.ph98.preheader.i.new ], [ %niter133.next.1, %.lr.ph98.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv120.i
  %i.au = load i8, ptr %i.at, align 2, !tbaa !9   ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 2 uses
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !3
  %i.az = trunc i64 %indvars.iv120.i to i8
  %i.ba = zext i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.ba ; 2 uses
  store i8 %i.az, ptr %i.bb, align 2, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %i.au, ptr %i.bc, align 1, !tbaa !68
  %indvars.iv.next121.i = or disjoint i64 %indvars.iv120.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next121.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9   ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !3  ; 2 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !3
  %i.bj = trunc i64 %indvars.iv.next121.i to i8
  %i.bk = zext i32 %i.bh to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bk ; 2 uses
  store i8 %i.bj, ptr %i.bl, align 2, !tbaa !66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.be, ptr %i.bm, align 1, !tbaa !68
  %indvars.iv.next121.i.1 = add nuw nsw i64 %indvars.iv120.i, 2 ; 2 uses
  %niter133.next.1 = add i64 %niter133, 2         ; 2 uses
  %niter133.ncmp.1 = icmp eq i64 %niter133.next.1, %unroll_iter132
  br i1 %niter133.ncmp.1, label %._crit_edge99.i.loopexit.unr-lcssa, label %.lr.ph98.i, !llvm.loop !93

._crit_edge99.i.loopexit.unr-lcssa:               ; preds = %.lr.ph98.i
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod130.not, label %._crit_edge99.i, label %.lr.ph98.i.epil.preheader

.lr.ph98.i.epil.preheader:                        ; preds = %._crit_edge99.i.loopexit.unr-lcssa, %.lr.ph98.preheader.i
  %indvars.iv120.i.epil.init = phi i64 [ 0, %.lr.ph98.preheader.i ], [ %indvars.iv.next121.i.1, %._crit_edge99.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod131 = trunc i32 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv120.i.epil.init
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !9   ; 2 uses
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !3
  %i.bt = trunc i64 %indvars.iv120.i.epil.init to i8
  %i.bu = zext i32 %i.br to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.bu ; 2 uses
  store i8 %i.bt, ptr %i.bv, align 2, !tbaa !66
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bo, ptr %i.bw, align 1, !tbaa !68
  br label %._crit_edge99.i

._crit_edge99.i:                                  ; preds = %.lr.ph98.i.epil.preheader, %._crit_edge99.i.loopexit.unr-lcssa, %._crit_edge.i
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.bx = add nuw nsw i32 %i.k, 1                 ; 2 uses
  %i.by = sub nsw i32 %i.bx, %.073.lcssa.i        ; 3 uses
  br i1 %.not8291.i, label %HUF_readDTableX6.exit, label %.lr.ph104.preheader.i

.lr.ph104.preheader.i:                            ; preds = %._crit_edge99.i
  %i.bz = add nuw nsw i32 %.073.lcssa.i, 1        ; 2 uses
  %wide.trip.count128.i = zext nneg i32 %i.bz to i64 ; 2 uses
  %i.ca = zext i32 %.073.lcssa.i to i64           ; 2 uses
  %xtraiter134 = and i64 %i.ca, 1
  %i.cb = icmp eq i32 %i.bz, 2
  br i1 %i.cb, label %.lr.ph104.i.epil.preheader, label %.lr.ph104.preheader.i.new

.lr.ph104.preheader.i.new:                        ; preds = %.lr.ph104.preheader.i
  %unroll_iter138 = and i64 %i.ca, 4294967294
  %invariant.op = sub i32 11, %i.k
  %invariant.op154 = sub i32 11, %i.k
  br label %.lr.ph104.i

.preheader.thread.i.unr-lcssa:                    ; preds = %.lr.ph104.i
  %lcmp.mod136.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod136.not, label %.preheader.thread.i, label %.lr.ph104.i.epil.preheader

.lr.ph104.i.epil.preheader:                       ; preds = %.preheader.thread.i.unr-lcssa, %.lr.ph104.preheader.i
  %indvars.iv125.i.epil.init = phi i64 [ 1, %.lr.ph104.preheader.i ], [ %indvars.iv.next126.i.1, %.preheader.thread.i.unr-lcssa ]
  %.077102.i.epil.init = phi i32 [ 0, %.lr.ph104.preheader.i ], [ %i.cr, %.preheader.thread.i.unr-lcssa ]
  %lcmp.mod137 = trunc i32 %.073.lcssa.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod137)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i.epil.init
  store i32 %.077102.i.epil.init, ptr %i.cc, align 4, !tbaa !3
  br label %.preheader.thread.i

.preheader.thread.i:                              ; preds = %.preheader.thread.i.unr-lcssa, %.lr.ph104.i.epil.preheader
  %i.cd = sub nsw i32 12, %i.by                   ; 2 uses
  %.not84110142.i = icmp ugt i32 %i.by, %i.cd
  br i1 %.not84110142.i, label %HUF_readDTableX6.exit, label %.lr.ph108.i.preheader

.lr.ph108.i.preheader:                            ; preds = %.preheader.thread.i
  %i.ce = zext i32 %.073.lcssa.i to i64
  %i.cf = zext i32 %.073.lcssa.i to i64           ; 2 uses
  %min.iters.check = icmp ult i32 %.073.lcssa.i, 8
  %n.vec = and i64 %i.cf, 4294967288              ; 3 uses
  %i.cg = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.cf
  br label %.lr.ph108.i

.lr.ph104.i:                                      ; preds = %.lr.ph104.i, %.lr.ph104.preheader.i.new
  %indvars.iv125.i = phi i64 [ 1, %.lr.ph104.preheader.i.new ], [ %indvars.iv.next126.i.1, %.lr.ph104.i ] ; 5 uses
  %.077102.i = phi i32 [ 0, %.lr.ph104.preheader.i.new ], [ %i.cr, %.lr.ph104.i ] ; 2 uses
  %niter139 = phi i64 [ 0, %.lr.ph104.preheader.i.new ], [ %niter139.next.1, %.lr.ph104.i ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv125.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !3
  %i.cj = trunc nuw nsw i64 %indvars.iv125.i to i32
  %.reass.reass = add i32 %i.cj, %invariant.op
  %i.ck = shl i32 %i.ci, %.reass.reass
  %i.cl = add i32 %i.ck, %.077102.i               ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i
  store i32 %.077102.i, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next126.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = trunc nuw nsw i64 %indvars.iv.next126.i to i32
  %.reass.1.reass = add i32 %i.cp, %invariant.op154
  %i.cq = shl i32 %i.co, %.reass.1.reass
  %i.cr = add i32 %i.cq, %i.cl                    ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next126.i
  store i32 %i.cl, ptr %i.cs, align 4, !tbaa !3
  %indvars.iv.next126.i.1 = add nuw nsw i64 %indvars.iv125.i, 2 ; 2 uses
  %niter139.next.1 = add i64 %niter139, 2         ; 2 uses
  %niter139.ncmp.1 = icmp eq i64 %niter139.next.1, %unroll_iter138
  br i1 %niter139.ncmp.1, label %.preheader.thread.i.unr-lcssa, label %.lr.ph104.i, !llvm.loop !94

.lr.ph108.i:                                      ; preds = %.lr.ph108.i.preheader, %._crit_edge109.i
  %.079111.i = phi i32 [ %i.ea, %._crit_edge109.i ], [ %i.by, %.lr.ph108.i.preheader ] ; 9 uses
  %i.ct = zext i32 %.079111.i to i64
  %i.cu = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.ct ; 6 uses
  %diff.check = icmp eq i32 %.079111.i, 0
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph108.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.079111.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = or disjoint i64 %index, 1               ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !3
  %wide.load108 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !3
  %i.cy = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.cz = lshr <4 x i32> %wide.load108, %broadcast.splat
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !3
  store <4 x i32> %i.cz, ptr %i.db, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge109.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph108.i, %middle.block
  %indvars.iv130.i.ph = phi i64 [ 1, %.lr.ph108.i ], [ %i.cg, %middle.block ] ; 4 uses
  %i.dd = sub nsw i64 %wide.trip.count128.i, %indvars.iv130.i.ph
  %i.de = sub nsw i64 %i.ce, %indvars.iv130.i.ph
  %xtraiter140 = and i64 %i.dd, 3                 ; 2 uses
  %lcmp.mod141.not = icmp eq i64 %xtraiter140, 0
  br i1 %lcmp.mod141.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv130.i.prol = phi i64 [ %indvars.iv.next131.i.prol, %scalar.ph.prol ], [ %indvars.iv130.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv130.i.prol
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
  %i.dh = lshr i32 %i.dg, %.079111.i
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv130.i.prol
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !3
  %indvars.iv.next131.i.prol = add nuw nsw i64 %indvars.iv130.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter140
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !96

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv130.i.unr = phi i64 [ %indvars.iv130.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next131.i.prol, %scalar.ph.prol ]
  %i.dj = icmp ult i64 %i.de, 3
  br i1 %i.dj, label %._crit_edge109.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i.3, %scalar.ph ], [ %indvars.iv130.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv130.i
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = lshr i32 %i.dl, %.079111.i
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv130.i
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !3
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next131.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = lshr i32 %i.dp, %.079111.i
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next131.i
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !3
  %indvars.iv.next131.i.1 = add nuw nsw i64 %indvars.iv130.i, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next131.i.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.du = lshr i32 %i.dt, %.079111.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next131.i.1
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !3
  %indvars.iv.next131.i.2 = add nuw nsw i64 %indvars.iv130.i, 3 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next131.i.2
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = lshr i32 %i.dx, %.079111.i
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next131.i.2
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %indvars.iv.next131.i.3 = add nuw nsw i64 %indvars.iv130.i, 4 ; 2 uses
  %exitcond134.not.i.3 = icmp eq i64 %indvars.iv.next131.i.3, %wide.trip.count128.i
  br i1 %exitcond134.not.i.3, label %._crit_edge109.i, label %scalar.ph, !llvm.loop !97

._crit_edge109.i:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ea = add i32 %.079111.i, 1                   ; 2 uses
  %.not84.i = icmp ugt i32 %i.ea, %i.cd
  br i1 %.not84.i, label %HUF_readDTableX6.exit, label %.lr.ph108.i, !llvm.loop !98

HUF_readDTableX6.exit.thread:                     ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.a, %bb.b
  %.0.i.ph = phi i64 [ -44, %bb.b ], [ %i.i, %bb.a ], [ -1, %.lr.ph.i.preheader ], [ -1, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %HUF_decompress4X6_usingDTable.exit

HUF_readDTableX6.exit:                            ; preds = %._crit_edge109.i, %._crit_edge99.i, %.preheader.thread.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 18 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 8196
  call fastcc void @HUF_fillDTableX6LevelN(ptr noundef %i.eb, ptr noundef %i.ec, i32 noundef 12, ptr noundef %i.f, i32 noundef 0, i32 noundef 1, i32 noundef %.073.lcssa.i, ptr noundef %8, i32 noundef %.075.lcssa.i, ptr noundef %i.c, i32 noundef %i.bx, i32 0, i16 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not17 = icmp ult i64 %i.i, %3
  br i1 %.not17, label %bb.c, label %HUF_decompress4X6_usingDTable.exit

bb.c:                                             ; preds = %HUF_readDTableX6.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 %i.i ; 10 uses
  %i.ee = sub nuw i64 %3, %i.i                    ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 10
  br i1 %i.ef, label %HUF_decompress4X6_usingDTable.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.eh = load i32, ptr %i.g, align 16, !tbaa !3  ; 6 uses
  %i.ei = add i32 %i.eh, -1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = shl nuw i64 1, %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.ek ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %.val190.i = load i16, ptr %i.ed, align 1       ; 5 uses
  %i.em = zext i16 %.val190.i to i64              ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %.val189.i = load i16, ptr %i.en, align 1       ; 5 uses
  %i.eo = zext i16 %.val189.i to i64              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %.val.i = load i16, ptr %i.ep, align 1          ; 5 uses
  %i.eq = zext i16 %.val.i to i64                 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ed, i64 6 ; 4 uses
  %i.es = getelementptr i8, ptr %i.er, i64 %i.em  ; 12 uses
  %i.et = getelementptr i8, ptr %i.es, i64 %i.eo  ; 12 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.eq  ; 3 uses
  %i.ev = add i64 %1, 3
  %i.ew = lshr i64 %i.ev, 2                       ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.ew ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ew ; 6 uses
  %i.fa = add nuw nsw i64 %i.em, 6
  %i.fb = add nuw nsw i64 %i.fa, %i.eo
  %i.fc = add nuw nsw i64 %i.fb, %i.eq            ; 2 uses
  %i.fd = sub i64 %i.ee, %i.fc
  %i.fe = icmp ugt i64 %i.fc, %i.ee
  br i1 %i.fe, label %BIT_initDStream.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ff = icmp eq i16 %.val190.i, 0
  br i1 %i.ff, label %BIT_initDStream.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fg = icmp ugt i16 %.val190.i, 7
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.er, ptr %i.fh, align 8, !tbaa !61
  br i1 %i.fg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.fi = getelementptr inbounds i8, ptr %i.es, i64 -8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !63
  %.val.i.i = load i64, ptr %i.fi, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !64
  %i.fk = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %i.fm = trunc nuw nsw i64 %i.fk to i32
  %i.fn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fm, i1 true)
  %i.fo = xor i32 %i.fn, 31
  %i.fp = sub nuw nsw i32 8, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !65
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.er, ptr %i.fr, align 8, !tbaa !63
  %i.fs = load i8, ptr %i.er, align 1, !tbaa !9
  %i.ft = zext i8 %i.fs to i64                    ; 7 uses
  store i64 %i.ft, ptr %4, align 8, !tbaa !64
  switch i16 %.val190.i, label %bb.o [
    i16 7, label %bb.i
    i16 6, label %bb.j
    i16 5, label %bb.k
    i16 4, label %bb.l
    i16 3, label %bb.m
    i16 2, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !9
  %i.fw = zext i8 %i.fv to i64
  %i.fx = shl nuw nsw i64 %i.fw, 48
  %i.fy = or disjoint i64 %i.fx, %i.ft
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.fz = phi i64 [ %i.fy, %bb.i ], [ %i.ft, %bb.h ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ed, i64 11
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9
  %i.gc = zext i8 %i.gb to i64
  %i.gd = shl nuw nsw i64 %i.gc, 40
  %i.ge = add nuw nsw i64 %i.gd, %i.fz
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.gf = phi i64 [ %i.ge, %bb.j ], [ %i.ft, %bb.h ]
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ed, i64 10
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !9
  %i.gi = zext i8 %i.gh to i64
  %i.gj = shl nuw nsw i64 %i.gi, 32
  %i.gk = add nuw nsw i64 %i.gj, %i.gf
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.gl = phi i64 [ %i.gk, %bb.k ], [ %i.ft, %bb.h ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ed, i64 9
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !9
  %i.go = zext i8 %i.gn to i64
  %i.gp = shl nuw nsw i64 %i.go, 24
  %i.gq = add nuw nsw i64 %i.gp, %i.gl
  br label %bb.m
end_hunk_1
