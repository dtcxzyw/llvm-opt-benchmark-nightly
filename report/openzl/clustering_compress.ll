Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/clustering_compress?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ZL_ContextClustering_greedy:bb.a
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !24
  %i.bp = zext i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !28
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !28
  %i.bt = add nuw nsw i64 %.0659.i, 2             ; 2 uses
  %niter436.next.1 = add i64 %niter436, 2         ; 2 uses
  %niter436.ncmp.1 = icmp eq i64 %niter436.next.1, %unroll_iter435
  br i1 %niter436.ncmp.1, label %.preheader3.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !40

.preheader3.i.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph.i
  %lcmp.mod433.not = icmp eq i64 %xtraiter431, 0
  br i1 %lcmp.mod433.not, label %.preheader3.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader3.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.0659.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.bt, %.preheader3.i.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod434 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod434)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 %.0659.i.epil.init
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !24
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %.0659.i.epil.init
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !28
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !28
  br label %.preheader3.i.preheader

.preheader3.i.preheader:                          ; preds = %.lr.ph.i.epil.preheader, %.preheader3.i.preheader.loopexit.unr-lcssa, %.preheader5.i
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %.preheader3.i.preheader, %ZS_fillEntropyCost.exit.i
  %.06313.i = phi i64 [ %i.eg, %ZS_fillEntropyCost.exit.i ], [ 0, %.preheader3.i.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.06313.i ; 12 uses
  br label %bb.r

.preheader.i:                                     ; preds = %ZS_fillEntropyCost.exit.i
  %.not7014.i = icmp eq i32 %5, 0
  br i1 %.not7014.i, label %.critedge2.i, label %.lr.ph16.i

bb.r:                                             ; preds = %bb.w, %.preheader3.i
  %.06110.i = phi i32 [ 255, %.preheader3.i ], [ %i.dd, %bb.w ] ; 7 uses
  %i.cf = zext i32 %.06110.i to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !28
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.cj = add nsw i32 %.06110.i, -1               ; 2 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !28
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %bb.s
  %i.co = add nsw i32 %.06110.i, -2               ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !28
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %.critedge.i

bb.u:                                             ; preds = %bb.t
  %i.ct = add nsw i32 %.06110.i, -3               ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !28
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.v, label %.critedge.i

bb.v:                                             ; preds = %bb.u
  %i.cy = add nsw i32 %.06110.i, -4               ; 2 uses
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !28
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %i.dd = add nsw i32 %.06110.i, -5               ; 2 uses
  %.not72.i.4 = icmp eq i32 %i.dd, 0
  br i1 %.not72.i.4, label %.critedge.i, label %bb.r, !llvm.loop !41

.critedge.i:                                      ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.061.lcssa.i = phi i32 [ 0, %bb.w ], [ %.06110.i, %bb.r ], [ %i.cj, %bb.s ], [ %i.cy, %bb.v ], [ %i.co, %bb.t ], [ %i.ct, %bb.u ] ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 1028
  store i32 %.061.lcssa.i, ptr %i.de, align 4, !tbaa !65
  %i.df = add nuw nsw i32 %.061.lcssa.i, 1
  %wide.trip.count.i = zext i32 %i.df to i64      ; 4 uses
  %min.iters.check = icmp ult i32 %.061.lcssa.i, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.critedge.i
  %n.vec = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi397 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <4 x i32>, ptr %i.dg, align 4, !tbaa !28
  %wide.load398 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !28
  %i.di = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.dj = add <4 x i32> %wide.load398, %vec.phi397 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit413, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.critedge.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.critedge.i ], [ %n.vec, %middle.block ]
  %.06211.i.ph = phi i32 [ 0, %.critedge.i ], [ %i.dl, %middle.block ]
  br label %scalar.ph

.loopexit413:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa395 = phi i32 [ %i.dl, %middle.block ], [ %i.ej, %scalar.ph ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ce, i64 1024
  store i32 %.lcssa395, ptr %i.dm, align 8, !tbaa !66
  %i.dn = zext i32 %.lcssa395 to i64              ; 2 uses
  %i.do = zext i32 %.061.lcssa.i to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !28
  %i.dr = icmp eq i32 %.lcssa395, %i.dq
  br i1 %i.dr, label %ZS_fillEntropyCost.exit.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.loopexit413, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.preheader.i.i.i ], [ 0, %.loopexit413 ] ; 2 uses
  %.01921.i.i.i = phi i64 [ %i.ed, %.preheader.i.i.i ], [ 0, %.loopexit413 ]
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !28 ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = shl nuw nsw i64 %i.du, 8                ; 2 uses
  %i.dw = udiv i64 %i.dv, %i.dn
  %i.dx = icmp ne i32 %i.dt, 0
  %i.dy = icmp samesign ult i64 %i.dv, %i.dn
  %or.cond.i.i.i = select i1 %i.dx, i1 %i.dy, i1 false
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i64 1, i64 %i.dw
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !28
  %i.eb = zext i32 %i.ea to i64
  %i.ec = mul nuw i64 %i.eb, %i.du
  %i.ed = add i64 %i.ec, %.01921.i.i.i            ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i
  br i1 %exitcond.i.i.i, label %bb.x, label %.preheader.i.i.i, !llvm.loop !43

bb.x:                                             ; preds = %.preheader.i.i.i
  %i.ee = lshr i64 %i.ed, 8
  br label %ZS_fillEntropyCost.exit.i

ZS_fillEntropyCost.exit.i:                        ; preds = %bb.x, %.loopexit413
  %.0.i.i.i = phi i64 [ %i.ee, %bb.x ], [ 0, %.loopexit413 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ce, i64 1032
  store i64 %.0.i.i.i, ptr %i.ef, align 8, !tbaa !67
  %i.eg = add nuw nsw i64 %.06313.i, 1
  %exitcond27.not.i = icmp eq i64 %.06313.i, %i.u
  br i1 %exitcond27.not.i, label %.preheader.i, label %.preheader3.i, !llvm.loop !44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.06211.i = phi i32 [ %i.ej, %scalar.ph ], [ %.06211.i.ph, %scalar.ph.preheader ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !28
  %i.ej = add i32 %i.ei, %.06211.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond26.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond26.i, label %.loopexit413, label %scalar.ph, !llvm.loop !45

.lr.ph16.i:                                       ; preds = %.preheader.i, %bb.y
  %.06415.i = phi i32 [ %i.ep, %bb.y ], [ %5, %.preheader.i ] ; 3 uses
  %i.ek = zext i32 %.06415.i to i64
  %i.el = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1024
  %i.en = load i32, ptr %i.em, align 8, !tbaa !66
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.y, label %.critedge2.i

bb.y:                                             ; preds = %.lr.ph16.i
  %i.ep = add i32 %.06415.i, -1                   ; 2 uses
  %.not70.i = icmp eq i32 %i.ep, 0
  br i1 %.not70.i, label %.critedge2.i, label %.lr.ph16.i, !llvm.loop !46

.critedge2.i:                                     ; preds = %bb.y, %.lr.ph16.i, %.preheader.i
  %i.eq = phi i32 [ 0, %.preheader.i ], [ %.06415.i, %.lr.ph16.i ], [ 0, %bb.y ] ; 10 uses
  %i.er = zext i32 %i.eq to i64                   ; 9 uses
  %i.es = add nuw nsw i64 %i.er, 1                ; 4 uses
  %min.iters.check400 = icmp ult i32 %i.eq, 7
  br i1 %min.iters.check400, label %scalar.ph399.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %.critedge2.i
  %n.vec402 = and i64 %i.es, 8589934584           ; 3 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next407, %vector.body403 ] ; 9 uses
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.gd, %vector.body403 ]
  %vec.phi406 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.ge, %vector.body403 ]
  %i.et = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.eu = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.ev = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.ew = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.ex = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.ey = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.ez = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fa = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 1024
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 2064
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 3104
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 4144
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 5184
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 6224
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 7264
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 8304
  %i.fj = load i32, ptr %i.fb, align 8, !tbaa !66
  %i.fk = load i32, ptr %i.fc, align 8, !tbaa !66
  %i.fl = load i32, ptr %i.fd, align 8, !tbaa !66
  %i.fm = load i32, ptr %i.fe, align 8, !tbaa !66
  %i.fn = insertelement <4 x i32> poison, i32 %i.fj, i64 0
  %i.fo = insertelement <4 x i32> %i.fn, i32 %i.fk, i64 1
  %i.fp = insertelement <4 x i32> %i.fo, i32 %i.fl, i64 2
  %i.fq = insertelement <4 x i32> %i.fp, i32 %i.fm, i64 3
  %i.fr = load i32, ptr %i.ff, align 8, !tbaa !66
  %i.fs = load i32, ptr %i.fg, align 8, !tbaa !66
  %i.ft = load i32, ptr %i.fh, align 8, !tbaa !66
  %i.fu = load i32, ptr %i.fi, align 8, !tbaa !66
  %i.fv = insertelement <4 x i32> poison, i32 %i.fr, i64 0
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 1
  %i.fx = insertelement <4 x i32> %i.fw, i32 %i.ft, i64 2
  %i.fy = insertelement <4 x i32> %i.fx, i32 %i.fu, i64 3
  %i.fz = icmp ne <4 x i32> %i.fq, zeroinitializer
  %i.ga = icmp ne <4 x i32> %i.fy, zeroinitializer
  %i.gb = zext <4 x i1> %i.fz to <4 x i32>
  %i.gc = zext <4 x i1> %i.ga to <4 x i32>
  %i.gd = add <4 x i32> %vec.phi405, %i.gb        ; 2 uses
  %i.ge = add <4 x i32> %vec.phi406, %i.gc        ; 2 uses
  %index.next407 = add nuw i64 %index404, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next407, %n.vec402
  br i1 %i.gf, label %middle.block408, label %vector.body403, !llvm.loop !47

middle.block408:                                  ; preds = %vector.body403
  %bin.rdx409 = add <4 x i32> %i.ge, %i.gd
  %i.gg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx409) ; 2 uses
  %cmp.n410 = icmp eq i64 %i.es, %n.vec402
  br i1 %cmp.n410, label %ZS_Histograms_computeO1.exit, label %scalar.ph399.preheader

scalar.ph399.preheader:                           ; preds = %.critedge2.i, %middle.block408
  %.020.i.ph = phi i64 [ 0, %.critedge2.i ], [ %n.vec402, %middle.block408 ]
  %.05919.i.ph = phi i32 [ 0, %.critedge2.i ], [ %i.gg, %middle.block408 ]
  br label %scalar.ph399

scalar.ph399:                                     ; preds = %scalar.ph399.preheader, %scalar.ph399
  %.020.i = phi i64 [ %i.gn, %scalar.ph399 ], [ %.020.i.ph, %scalar.ph399.preheader ] ; 3 uses
  %.05919.i = phi i32 [ %i.gm, %scalar.ph399 ], [ %.05919.i.ph, %scalar.ph399.preheader ]
  %i.gh = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.020.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1024
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !66
  %i.gk = icmp ne i32 %i.gj, 0
  %i.gl = zext i1 %i.gk to i32
  %i.gm = add i32 %.05919.i, %i.gl                ; 2 uses
  %i.gn = add nuw nsw i64 %.020.i, 1
  %exitcond28.not.i = icmp eq i64 %.020.i, %i.er
  br i1 %exitcond28.not.i, label %ZS_Histograms_computeO1.exit, label %scalar.ph399, !llvm.loop !48

ZS_Histograms_computeO1.exit:                     ; preds = %scalar.ph399, %middle.block408
  %.lcssa394 = phi i32 [ %i.gg, %middle.block408 ], [ %i.gm, %scalar.ph399 ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.eq, ptr %i.go, align 4, !tbaa !28
  store i32 %.lcssa394, ptr %i.j, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.gp = shl nuw nsw i64 %i.er, 2
  %i.gq = add nuw nsw i64 %i.gp, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.gq, i1 false), !tbaa !28
  %i.gr = add i32 %i.eq, 1                        ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.gr, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter438 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.gs = icmp ult i32 %i.gr, 4
  br i1 %i.gs, label %.epil.preheader437, label %ZS_Histograms_computeO1.exit.new

ZS_Histograms_computeO1.exit.new:                 ; preds = %ZS_Histograms_computeO1.exit
  %unroll_iter443 = and i64 %wide.trip.count, 4294967292
  br label %bb.aa

.preheader270.unr-lcssa:                          ; preds = %bb.aa
  %lcmp.mod440.not = icmp eq i64 %xtraiter438, 0
  br i1 %lcmp.mod440.not, label %.preheader270, label %.epil.preheader437

.epil.preheader437:                               ; preds = %.preheader270.unr-lcssa, %ZS_Histograms_computeO1.exit
  %indvars.iv.epil.init = phi i64 [ 0, %ZS_Histograms_computeO1.exit ], [ %indvars.iv.next.3, %.preheader270.unr-lcssa ]
  %.0181286.epil.init = phi i64 [ 0, %ZS_Histograms_computeO1.exit ], [ %i.hn, %.preheader270.unr-lcssa ]
  %lcmp.mod442 = icmp ne i64 %xtraiter438, 0
  tail call void @llvm.assume(i1 %lcmp.mod442)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader437
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader437 ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %.0181286.epil = phi i64 [ %.0181286.epil.init, %.epil.preheader437 ], [ %i.gw, %bb.z ]
  %epil.iter439 = phi i64 [ 0, %.epil.preheader437 ], [ %epil.iter439.next, %bb.z ]
  %i.gt = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1040
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !67
  %i.gw = add i64 %i.gv, %.0181286.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter439.next = add i64 %epil.iter439, 1   ; 2 uses
  %epil.iter439.cmp.not = icmp eq i64 %epil.iter439.next, %xtraiter438
  br i1 %epil.iter439.cmp.not, label %.preheader270, label %bb.z, !llvm.loop !49

.preheader270:                                    ; preds = %bb.z, %.preheader270.unr-lcssa
  %.lcssa422 = phi i64 [ %i.hn, %.preheader270.unr-lcssa ], [ %i.gw, %bb.z ]
  %i.gx = zext i32 %i.gr to i64                   ; 6 uses
  br label %bb.ac

bb.aa:                                            ; preds = %bb.aa, %ZS_Histograms_computeO1.exit.new
  %indvars.iv = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %indvars.iv.next.3, %bb.aa ] ; 5 uses
  %.0181286 = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %i.hn, %bb.aa ]
  %niter444 = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %niter444.next.3, %bb.aa ]
  %i.gy = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1040
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !67
  %i.hb = add i64 %i.ha, %.0181286
  %i.hc = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2080
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !67
  %i.hf = add i64 %i.he, %i.hb
  %i.hg = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 3120
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !67
  %i.hj = add i64 %i.hi, %i.hf
  %i.hk = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4160
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !67
  %i.hn = add i64 %i.hm, %i.hj                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter444.next.3 = add i64 %niter444, 4         ; 2 uses
  %niter444.ncmp.3 = icmp eq i64 %niter444.next.3, %unroll_iter443
  br i1 %niter444.ncmp.3, label %.preheader270.unr-lcssa, label %bb.aa, !llvm.loop !50

bb.ab:                                            ; preds = %bb.ai
  %i.ho = icmp ugt i64 %.1188, %6
  br i1 %i.ho, label %bb.aj, label %._crit_edge347

bb.ac:                                            ; preds = %.preheader270, %bb.ai
  %.0177291 = phi i32 [ 0, %.preheader270 ], [ %i.jp, %bb.ai ] ; 3 uses
  %.0178290 = phi i32 [ 256, %.preheader270 ], [ %.1179, %bb.ai ] ; 5 uses
  %.1182289 = phi i64 [ %.lcssa422, %.preheader270 ], [ %.2183, %bb.ai ] ; 3 uses
  %.0187288 = phi i64 [ %i.gx, %.preheader270 ], [ %.1188, %bb.ai ] ; 3 uses
  %i.hp = zext i32 %.0177291 to i64               ; 2 uses
  %i.hq = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.hp ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1024
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !66 ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 300
  br i1 %i.ht, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.hu = icmp eq i32 %.0178290, 256
  br i1 %i.hu, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hv = zext i32 %.0178290 to i64
  %i.hw = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.hv ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 1032 ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !67
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 1032
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !67
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 1024 ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !66
  %i.id = add i32 %i.ic, %i.hs
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !66
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 1028 ; 3 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !65
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 1028
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !65
  %..i = tail call i32 @llvm.umax.i32(i32 %i.if, i32 %i.ih)
  store i32 %..i, ptr %i.ie, align 4, !tbaa !65
  br label %bb.ah

bb.af:                                            ; preds = %bb.ah
  %i.ii = add i64 %.0187288, -1
  %i.ij = load i32, ptr %i.ib, align 8, !tbaa !66 ; 2 uses
  %i.ik = zext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jj
  %i.im = load i32, ptr %i.il, align 4, !tbaa !28
  %i.in = icmp eq i32 %i.ij, %i.im
  br i1 %i.in, label %ZS_Histogram_combine.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.af
  %i.io = add i32 %i.ji, 1
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.io, i32 1)
  %wide.trip.count.i.i.i = zext i32 %umax.i.i.i to i64
  br label %.preheader.i.i.i214

.preheader.i.i.i214:                              ; preds = %.preheader.i.i.i214, %.preheader.preheader.i.i.i
  %indvars.iv.i.i.i215 = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next.i.i.i219, %.preheader.i.i.i214 ] ; 2 uses
  %.01921.i.i.i216 = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %i.ja, %.preheader.i.i.i214 ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv.i.i.i215
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !28 ; 2 uses
  %i.ir = zext i32 %i.iq to i64                   ; 2 uses
  %i.is = shl nuw nsw i64 %i.ir, 8                ; 2 uses
  %i.it = udiv i64 %i.is, %i.ik
  %i.iu = icmp ne i32 %i.iq, 0
  %i.iv = icmp samesign ult i64 %i.is, %i.ik
  %or.cond.i.i.i217 = select i1 %i.iu, i1 %i.iv, i1 false
  %spec.store.select.i.i.i218 = select i1 %or.cond.i.i.i217, i64 1, i64 %i.it
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i218
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !28
  %i.iy = zext i32 %i.ix to i64
  %i.iz = mul nuw i64 %i.iy, %i.ir
  %i.ja = add i64 %i.iz, %.01921.i.i.i216         ; 2 uses
  %indvars.iv.next.i.i.i219 = add nuw nsw i64 %indvars.iv.i.i.i215, 1 ; 2 uses
  %exitcond.i.i.i220 = icmp eq i64 %indvars.iv.next.i.i.i219, %wide.trip.count.i.i.i
  br i1 %exitcond.i.i.i220, label %bb.ag, label %.preheader.i.i.i214, !llvm.loop !43

bb.ag:                                            ; preds = %.preheader.i.i.i214
  %i.jb = lshr i64 %i.ja, 8
  br label %ZS_Histogram_combine.exit

bb.ah:                                            ; preds = %bb.ah, %bb.ae
  %.018.i = phi i64 [ 0, %bb.ae ], [ %i.jh, %bb.ah ] ; 4 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.018.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !28
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.018.i ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !28
  %i.jg = add i32 %i.jf, %i.jd
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !28
  %i.jh = add nuw nsw i64 %.018.i, 1
  %i.ji = load i32, ptr %i.ie, align 4, !tbaa !65 ; 2 uses
  %i.jj = zext i32 %i.ji to i64                   ; 2 uses
  %.not.not.i = icmp samesign ult i64 %.018.i, %i.jj
  br i1 %.not.not.i, label %bb.ah, label %bb.af, !llvm.loop !51

ZS_Histogram_combine.exit:                        ; preds = %bb.af, %bb.ag
  %.0.i.i.i222 = phi i64 [ %i.jb, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  store i64 %.0.i.i.i222, ptr %i.hx, align 8, !tbaa !67
  %i.jk = add i64 %i.hy, %i.ia
  %i.jl = sub i64 %.1182289, %i.jk
  %i.jm = add i64 %i.jl, %.0.i.i.i222
  %i.jn = and i32 %.0178290, 255
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hp
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %ZS_Histogram_combine.exit
  %.1188 = phi i64 [ %.0187288, %bb.ac ], [ %i.ii, %ZS_Histogram_combine.exit ], [ %.0187288, %bb.ad ] ; 3 uses
  %.2183 = phi i64 [ %.1182289, %bb.ac ], [ %i.jm, %ZS_Histogram_combine.exit ], [ %.1182289, %bb.ad ] ; 3 uses
  %.1179 = phi i32 [ %.0178290, %bb.ac ], [ %.0178290, %ZS_Histogram_combine.exit ], [ %.0177291, %bb.ad ]
  %i.jp = add i32 %.0177291, 1                    ; 2 uses
  %.not197 = icmp ugt i32 %i.jp, %i.eq
  br i1 %.not197, label %bb.ab, label %bb.ac, !llvm.loop !52

bb.aj:                                            ; preds = %bb.ab
  %i.jq = shl nuw nsw i64 %i.gx, 3
  %i.jr = mul i64 %i.jq, %i.gx
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jr) #19 ; 5 uses
  %.not198 = icmp eq ptr %i.js, null
  br i1 %.not198, label %bb.ak, label %.preheader269, !prof !62

bb.ak:                                            ; preds = %bb.aj
  %i.jt = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.ju = icmp sgt i32 %i.jt, 0
  br i1 %i.ju, label %bb.al, label %.thread252

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 391, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null) #16
  %.pr251 = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.jv = icmp sgt i32 %.pr251, 0
  br i1 %i.jv, label %bb.am, label %.thread252
end_hunk_0
begin_hunk_1_@ZL_ContextClustering_greedy:bb.a
  %i.px = icmp eq i32 %i.ps, 0
  %or.cond38.i.i241 = select i1 %or.cond.i.i240, i1 true, i1 %i.px
  %i.py = zext i32 %..i.i239 to i64               ; 3 uses
  br i1 %or.cond38.i.i241, label %bb.be, label %._crit_edge.i.i242.preheader

._crit_edge.i.i242.preheader:                     ; preds = %bb.be, %bb.bd
  br label %._crit_edge.i.i242

bb.be:                                            ; preds = %bb.bd
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %i.py
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !28
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.py
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !28
  %i.qd = add i32 %i.qc, %i.qa
  %i.qe = icmp eq i32 %i.qd, %i.pt
  br i1 %i.qe, label %ZS_combineLoss.exit248, label %._crit_edge.i.i242.preheader

bb.bf:                                            ; preds = %._crit_edge.i.i242
  %i.qf = lshr i64 %i.qu, 8
  br label %ZS_combineLoss.exit248

._crit_edge.i.i242:                               ; preds = %._crit_edge.i.i242.preheader, %._crit_edge.i.i242
  %.041.i.i243 = phi i64 [ %i.qv, %._crit_edge.i.i242 ], [ 0, %._crit_edge.i.i242.preheader ] ; 4 uses
  %.03240.i.i244 = phi i64 [ %i.qu, %._crit_edge.i.i242 ], [ 0, %._crit_edge.i.i242.preheader ]
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %.041.i.i243
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !28
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %.041.i.i243
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !28
  %i.qk = add i32 %i.qj, %i.qh                    ; 2 uses
  %i.ql = zext i32 %i.qk to i64                   ; 2 uses
  %i.qm = shl nuw nsw i64 %i.ql, 8
  %i.qn = udiv i64 %i.qm, %i.pu
  %i.qo = icmp ne i32 %i.qk, 0
  %i.qp = zext i1 %i.qo to i64
  %.39.i.i245 = tail call i64 @llvm.umax.i64(i64 %i.qn, i64 %i.qp)
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %.39.i.i245
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !28
  %i.qs = zext i32 %i.qr to i64
  %i.qt = mul nuw i64 %i.qs, %i.ql
  %i.qu = add i64 %i.qt, %.03240.i.i244           ; 2 uses
  %i.qv = add nuw nsw i64 %.041.i.i243, 1
  %exitcond.not.i.i246 = icmp eq i64 %.041.i.i243, %i.py
  br i1 %exitcond.not.i.i246, label %bb.bf, label %._crit_edge.i.i242, !llvm.loop !53

ZS_combineLoss.exit248:                           ; preds = %bb.be, %bb.bf
  %.033.i.i247 = phi i64 [ %i.qf, %bb.bf ], [ 0, %bb.be ]
  %i.qw = add i64 %i.pk, %i.pi
  %i.qx = sub i64 %.033.i.i247, %i.qw
  %i.qy = mul nuw i64 %i.pd, %i.gx
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.qy
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.pf
  store i64 %i.qx, ptr %i.ra, align 8, !tbaa !68
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %ZS_combineLoss.exit248
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %lftr.wideiv341 = trunc i64 %indvars.iv.next339 to i32
  %exitcond342.not = icmp eq i32 %i.gr, %lftr.wideiv341
  br i1 %exitcond342.not, label %.loopexit264, label %bb.bc, !llvm.loop !59

._crit_edge:                                      ; preds = %.loopexit264
  tail call void @free(ptr noundef %i.js) #16
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %bb.ab, %._crit_edge
  %.4185 = phi i64 [ %i.lz, %._crit_edge ], [ %.2183, %bb.ab ]
  %i.rb = icmp eq i32 %i.eq, 0
  br i1 %i.rb, label %.epil.preheader448, label %._crit_edge347.new

._crit_edge347.new:                               ; preds = %._crit_edge347
  %unroll_iter455 = and i64 %i.es, 8589934590
  br label %bb.bk

.unr-lcssa447:                                    ; preds = %bb.bq
  %i.rc = and i64 %i.er, 1
  %lcmp.mod451.not.not = icmp eq i64 %i.rc, 0
  br i1 %lcmp.mod451.not.not, label %.epil.preheader448, label %bb.bj

.epil.preheader448:                               ; preds = %.unr-lcssa447, %._crit_edge347
  %.0158316.epil.init = phi i64 [ 0, %._crit_edge347 ], [ %i.sj, %.unr-lcssa447 ] ; 2 uses
  %.0159315.epil.init = phi i32 [ 0, %._crit_edge347 ], [ %.1.1, %.unr-lcssa447 ] ; 3 uses
  %lcmp.mod454 = trunc i64 %i.es to i1
  tail call void @llvm.assume(i1 %lcmp.mod454)
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0158316.epil.init
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !28 ; 2 uses
  %i.rf = icmp eq i32 %i.re, -1
  br i1 %i.rf, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.epil.preheader448
  %i.rg = sext i32 %i.re to i64
  %i.rh = getelementptr inbounds i8, ptr %0, i64 %i.rg
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !24
  br label %.epilog-lcssa452

bb.bi:                                            ; preds = %.epil.preheader448
  %i.rj = add i32 %.0159315.epil.init, 1
  %i.rk = trunc i32 %.0159315.epil.init to i8
  br label %.epilog-lcssa452

.epilog-lcssa452:                                 ; preds = %bb.bi, %bb.bh
  %.sink.epil = phi i8 [ %i.rk, %bb.bi ], [ %i.ri, %bb.bh ]
  %.1.epil = phi i32 [ %i.rj, %bb.bi ], [ %.0159315.epil.init, %bb.bh ]
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 %.0158316.epil.init
  store i8 %.sink.epil, ptr %i.rl, align 1, !tbaa !24
  br label %bb.bj

bb.bj:                                            ; preds = %.unr-lcssa447, %.epilog-lcssa452
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa447 ], [ %.1.epil, %.epilog-lcssa452 ]
  %i.rm = zext i32 %.1.lcssa to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.rm, ptr %i.rn, align 8, !tbaa !27
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.er, ptr %i.ro, align 8, !tbaa !23
  %i.rp = tail call noalias ptr @fopen(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) ; 6 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.22, i64 21, i64 1, ptr %i.rp) ; 0 uses
  %fwrite201 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 26, i64 1, ptr %i.rp) ; 0 uses
  br label %bb.bs

bb.bk:                                            ; preds = %bb.bq, %._crit_edge347.new
  %.0158316 = phi i64 [ 0, %._crit_edge347.new ], [ %i.sj, %bb.bq ] ; 4 uses
  %.0159315 = phi i32 [ 0, %._crit_edge347.new ], [ %.1.1, %bb.bq ] ; 3 uses
  %niter456 = phi i64 [ 0, %._crit_edge347.new ], [ %niter456.next.1, %bb.bq ]
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0158316
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !28 ; 2 uses
  %i.rs = icmp eq i32 %i.rr, -1
  br i1 %i.rs, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.rt = add i32 %.0159315, 1
  %i.ru = trunc i32 %.0159315 to i8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.rv = sext i32 %i.rr to i64
  %i.rw = getelementptr inbounds i8, ptr %0, i64 %i.rv
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %.sink = phi i8 [ %i.ru, %bb.bl ], [ %i.rx, %bb.bm ]
  %.1 = phi i32 [ %i.rt, %bb.bl ], [ %.0159315, %bb.bm ] ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 %.0158316
  store i8 %.sink, ptr %i.ry, align 1, !tbaa !24
  %i.rz = or disjoint i64 %.0158316, 1            ; 2 uses
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !28 ; 2 uses
  %i.sc = icmp eq i32 %i.sb, -1
  br i1 %i.sc, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.sd = sext i32 %i.sb to i64
  %i.se = getelementptr inbounds i8, ptr %0, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !24
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.sg = add i32 %.1, 1
  %i.sh = trunc i32 %.1 to i8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink.1 = phi i8 [ %i.sh, %bb.bp ], [ %i.sf, %bb.bo ]
  %.1.1 = phi i32 [ %i.sg, %bb.bp ], [ %.1, %bb.bo ] ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %0, i64 %i.rz
  store i8 %.sink.1, ptr %i.si, align 1, !tbaa !24
  %i.sj = add nuw nsw i64 %.0158316, 2            ; 2 uses
  %niter456.next.1 = add i64 %niter456, 2         ; 2 uses
  %niter456.ncmp.1 = icmp eq i64 %niter456.next.1, %unroll_iter455
  br i1 %niter456.ncmp.1, label %.unr-lcssa447, label %bb.bk, !llvm.loop !60

bb.br:                                            ; preds = %bb.bv
  %fwrite203 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %i.rp) ; 0 uses
  %i.sk = tail call i32 @fclose(ptr noundef %i.rp) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.j) #16
  %i.sl = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.sm = icmp sgt i32 %i.sl, 255
  br i1 %i.sm, label %bb.bw, label %bb.bx

bb.bs:                                            ; preds = %bb.bj, %bb.bv
  %indvars.iv344 = phi i64 [ 0, %bb.bj ], [ %indvars.iv.next345, %bb.bv ] ; 6 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv344
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !28 ; 2 uses
  %i.sp = icmp eq i32 %i.so, -1
  br i1 %i.sp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv344
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !24
  %i.ss = zext i8 %i.sr to i32
  %i.st = trunc nuw i64 %indvars.iv344 to i32
  %i.su = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rp, ptr noundef nonnull @.str.24, i32 noundef %i.st, i32 noundef %i.ss) #16 ; 0 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.sv = trunc nuw i64 %indvars.iv344 to i32
  %i.sw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.rp, ptr noundef nonnull @.str.25, i32 noundef %i.sv, i32 noundef %i.so) #16 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1
  %.not202.not = icmp samesign ult i64 %indvars.iv344, %i.er
  br i1 %.not202.not, label %bb.bs, label %bb.br, !llvm.loop !61

bb.bw:                                            ; preds = %bb.br
  %i.sx = lshr i64 %.4185, 3
  %i.sy = trunc i64 %i.sx to i32
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 487, ptr noundef nonnull @.str.27, i32 noundef %i.sy) #16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.br, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @ZL_ContextClustering_prune(ptr nofree noundef writeonly captures(none) %0, ptr %1, ptr %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #6 {
bb.a:
  %5 = alloca [256 x %struct.ContextSize], align 16 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = add i32 %3, 1
  %i.b = zext i32 %3 to i64
  %i.c = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %3, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  %n.vec = and i64 %i.c, 8589934588               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %interleaved.vec = shufflevector <2 x i32> zeroinitializer, <2 x i32> %vec.ind, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.d, align 16, !tbaa !28
  %interleaved.vec95 = shufflevector <2 x i32> zeroinitializer, <2 x i32> %step.add, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec95, ptr %i.f, align 16, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.g = icmp eq i64 %index.next, %n.vec
  br i1 %i.g, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.h = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %.not = icmp eq ptr %2, %1
  br i1 %.not, label %.preheader63, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = sub i64 %i.i, %i.h
  %i.l = icmp ugt i64 %i.k, -4
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = trunc nuw i64 %indvars.iv to i32
  store i32 %i.o, ptr %i.n, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.a, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !70

.preheader63.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader63, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader63.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05065.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ax, %.preheader63.loopexit.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.05065.epil = phi i64 [ %i.v, %.lr.ph.epil ], [ %.05065.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.05065.epil
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !32
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !32
  %i.v = add nuw i64 %.05065.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader63, label %.lr.ph.epil, !llvm.loop !71

.preheader63:                                     ; preds = %.preheader63.loopexit.unr-lcssa, %.lr.ph.epil, %.loopexit
  %.not5666 = icmp eq i32 %3, 0
  br i1 %.not5666, label %.critedge, label %.lr.ph68

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05065 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !32
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !32
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.05065
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !32
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !32
  %i.ax = add nuw i64 %.05065, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader63.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !72

.lr.ph68:                                         ; preds = %.preheader63, %bb.b
  %.05267 = phi i32 [ %i.bc, %bb.b ], [ %3, %.preheader63 ] ; 3 uses
  %i.ay = zext i32 %.05267 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph68
  %i.bc = add i32 %.05267, -1                     ; 2 uses
  %.not56 = icmp eq i32 %i.bc, 0
  br i1 %.not56, label %.critedge, label %.lr.ph68, !llvm.loop !73

.critedge:                                        ; preds = %.lr.ph68, %bb.b, %.preheader63
  %.052.lcssa = phi i32 [ 0, %.preheader63 ], [ 0, %bb.b ], [ %.05267, %.lr.ph68 ] ; 4 uses
  %i.bd = zext i32 %.052.lcssa to i64             ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !23
  %.not57 = icmp ult i64 %4, %i.bd
  %i.bf = add i32 %.052.lcssa, 1                  ; 3 uses
  br i1 %.not57, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge
  %i.bg = icmp eq i32 %.052.lcssa, 0
  br i1 %i.bg, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter102 = and i32 %i.bf, -2
  br label %.preheader

.unr-lcssa:                                       ; preds = %.preheader
  %i.bh = and i32 %.052.lcssa, 1
  %lcmp.mod99.not.not = icmp eq i32 %i.bh, 0
  br i1 %lcmp.mod99.not.not, label %.preheader.epil.preheader, label %bb.c

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv82.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next83.1, %.unr-lcssa ] ; 2 uses
  %.04672.epil.init = phi i32 [ 256, %.preheader.preheader ], [ %.2.1, %.unr-lcssa ] ; 2 uses
  %.04771.epil.init = phi i32 [ 0, %.preheader.preheader ], [ %.249.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod101 = trunc i32 %i.bf to i1
  tail call void @llvm.assume(i1 %lcmp.mod101)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv82.epil.init
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !32
  %i.bk = icmp ugt i32 %i.bj, 299                 ; 2 uses
  %i.bl = icmp eq i32 %.04672.epil.init, 256      ; 2 uses
  %i.bm = select i1 %i.bk, i1 true, i1 %i.bl
  %.sink.in.epil = select i1 %i.bm, i32 %.04771.epil.init, i32 %.04672.epil.init
  %narrow.epil = select i1 %i.bk, i1 true, i1 %i.bl
  %.pn.epil = zext i1 %narrow.epil to i32
  %.sink.epil = trunc i32 %.sink.in.epil to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv82.epil.init
end_hunk_1
