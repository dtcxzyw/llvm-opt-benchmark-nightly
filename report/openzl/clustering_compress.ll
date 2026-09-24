Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/clustering_compress?download=true
inline.NumInlined: 35
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ZL_ContextClustering_greedy:bb.a
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
  %.061.lcssa.i = phi i32 [ 0, %bb.w ], [ %.06110.i, %bb.r ], [ %i.cj, %bb.s ], [ %i.cy, %bb.v ], [ %i.co, %bb.t ], [ %i.ct, %bb.u ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ce, i64 1028
  store i32 %.061.lcssa.i, ptr %i.de, align 4, !tbaa !65
  %i.df = add i32 %.061.lcssa.i, 1                ; 2 uses
  %wide.trip.count.i = zext i32 %i.df to i64      ; 5 uses
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
  %.lcssa395 = phi i32 [ %i.dl, %middle.block ], [ %i.fj, %scalar.ph ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ce, i64 1024
  store i32 %.lcssa395, ptr %i.dm, align 8, !tbaa !66
  %i.dn = zext i32 %.lcssa395 to i64              ; 6 uses
  %i.do = zext i32 %.061.lcssa.i to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !28
  %i.dr = icmp eq i32 %.lcssa395, %i.dq
  br i1 %i.dr, label %ZS_fillEntropyCost.exit.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %.loopexit413
  %xtraiter438 = and i64 %wide.trip.count.i, 1
  %i.ds = icmp eq i32 %.061.lcssa.i, 0
  br i1 %i.ds, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter444 = and i64 %wide.trip.count.i, 4294967294
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i ] ; 3 uses
  %.01921.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %i.er, %.preheader.i.i.i ]
  %niter445 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter445.next.1, %.preheader.i.i.i ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !28 ; 2 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = shl nuw nsw i64 %i.dv, 8                ; 2 uses
  %i.dx = udiv i64 %i.dw, %i.dn
  %i.dy = icmp ne i32 %i.du, 0
  %i.dz = icmp samesign ult i64 %i.dw, %i.dn
  %or.cond.i.i.i = select i1 %i.dy, i1 %i.dz, i1 false
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i64 1, i64 %i.dx
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28
  %i.ec = zext i32 %i.eb to i64
  %i.ed = mul nuw i64 %i.ec, %i.dv
  %i.ee = add i64 %i.ed, %.01921.i.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !28 ; 2 uses
  %i.ei = zext i32 %i.eh to i64                   ; 2 uses
  %i.ej = shl nuw nsw i64 %i.ei, 8                ; 2 uses
  %i.ek = udiv i64 %i.ej, %i.dn
  %i.el = icmp ne i32 %i.eh, 0
  %i.em = icmp samesign ult i64 %i.ej, %i.dn
  %or.cond.i.i.i.1 = select i1 %i.el, i1 %i.em, i1 false
  %spec.store.select.i.i.i.1 = select i1 %or.cond.i.i.i.1, i64 1, i64 %i.ek
  %i.en = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i.1
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !28
  %i.ep = zext i32 %i.eo to i64
  %i.eq = mul nuw i64 %i.ep, %i.ei
  %i.er = add i64 %i.eq, %i.ee                    ; 3 uses
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter445.next.1 = add i64 %niter445, 2         ; 2 uses
  %niter445.ncmp.1 = icmp eq i64 %niter445.next.1, %unroll_iter444
  br i1 %niter445.ncmp.1, label %.unr-lcssa437, label %.preheader.i.i.i, !llvm.loop !43

.unr-lcssa437:                                    ; preds = %.preheader.i.i.i
  %lcmp.mod440.not = icmp eq i64 %xtraiter438, 0
  br i1 %lcmp.mod440.not, label %bb.x, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %.unr-lcssa437, %.preheader.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %.unr-lcssa437 ]
  %.01921.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %i.er, %.unr-lcssa437 ]
  %lcmp.mod443 = trunc i32 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod443)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i.i.i.epil.init
  %i.et = load i32, ptr %i.es, align 4, !tbaa !28 ; 2 uses
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = shl nuw nsw i64 %i.eu, 8                ; 2 uses
  %i.ew = udiv i64 %i.ev, %i.dn
  %i.ex = icmp ne i32 %i.et, 0
  %i.ey = icmp samesign ult i64 %i.ev, %i.dn
  %or.cond.i.i.i.epil = select i1 %i.ex, i1 %i.ey, i1 false
  %spec.store.select.i.i.i.epil = select i1 %or.cond.i.i.i.epil, i64 1, i64 %i.ew
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i.epil
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !28
  %i.fb = zext i32 %i.fa to i64
  %i.fc = mul nuw i64 %i.fb, %i.eu
  %i.fd = add i64 %i.fc, %.01921.i.i.i.epil.init
  br label %bb.x

bb.x:                                             ; preds = %.unr-lcssa437, %.preheader.i.i.i.epil.preheader
  %.lcssa429 = phi i64 [ %i.er, %.unr-lcssa437 ], [ %i.fd, %.preheader.i.i.i.epil.preheader ]
  %i.fe = lshr i64 %.lcssa429, 8
  br label %ZS_fillEntropyCost.exit.i

ZS_fillEntropyCost.exit.i:                        ; preds = %bb.x, %.loopexit413
  %.0.i.i.i = phi i64 [ %i.fe, %bb.x ], [ 0, %.loopexit413 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ce, i64 1032
  store i64 %.0.i.i.i, ptr %i.ff, align 8, !tbaa !67
  %i.fg = add nuw nsw i64 %.06313.i, 1
  %exitcond27.not.i = icmp eq i64 %.06313.i, %i.u
  br i1 %exitcond27.not.i, label %.preheader.i, label %.preheader3.i, !llvm.loop !44

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.06211.i = phi i32 [ %i.fj, %scalar.ph ], [ %.06211.i.ph, %scalar.ph.preheader ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !28
  %i.fj = add i32 %i.fi, %.06211.i                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond26.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond26.i, label %.loopexit413, label %scalar.ph, !llvm.loop !45

.lr.ph16.i:                                       ; preds = %.preheader.i, %bb.y
  %.06415.i = phi i32 [ %i.fp, %bb.y ], [ %5, %.preheader.i ] ; 3 uses
  %i.fk = zext i32 %.06415.i to i64
  %i.fl = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1024
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !66
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.y, label %.critedge2.i

bb.y:                                             ; preds = %.lr.ph16.i
  %i.fp = add i32 %.06415.i, -1                   ; 2 uses
  %.not70.i = icmp eq i32 %i.fp, 0
  br i1 %.not70.i, label %.critedge2.i, label %.lr.ph16.i, !llvm.loop !46

.critedge2.i:                                     ; preds = %bb.y, %.lr.ph16.i, %.preheader.i
  %i.fq = phi i32 [ 0, %.preheader.i ], [ %.06415.i, %.lr.ph16.i ], [ 0, %bb.y ] ; 10 uses
  %i.fr = zext i32 %i.fq to i64                   ; 9 uses
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 4 uses
  %min.iters.check400 = icmp ult i32 %i.fq, 7
  br i1 %min.iters.check400, label %scalar.ph399.preheader, label %vector.ph401

vector.ph401:                                     ; preds = %.critedge2.i
  %n.vec402 = and i64 %i.fs, 8589934584           ; 3 uses
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next407, %vector.body403 ] ; 9 uses
  %vec.phi405 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.hd, %vector.body403 ]
  %vec.phi406 = phi <4 x i32> [ zeroinitializer, %vector.ph401 ], [ %i.he, %vector.body403 ]
  %i.ft = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fu = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fv = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fw = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fx = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fy = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.fz = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.ga = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %index404
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 1024
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 2064
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fv, i64 3104
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 4144
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 5184
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 6224
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 7264
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ga, i64 8304
  %i.gj = load i32, ptr %i.gb, align 8, !tbaa !66
  %i.gk = load i32, ptr %i.gc, align 8, !tbaa !66
  %i.gl = load i32, ptr %i.gd, align 8, !tbaa !66
  %i.gm = load i32, ptr %i.ge, align 8, !tbaa !66
  %i.gn = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 1
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 2
  %i.gq = insertelement <4 x i32> %i.gp, i32 %i.gm, i64 3
  %i.gr = load i32, ptr %i.gf, align 8, !tbaa !66
  %i.gs = load i32, ptr %i.gg, align 8, !tbaa !66
  %i.gt = load i32, ptr %i.gh, align 8, !tbaa !66
  %i.gu = load i32, ptr %i.gi, align 8, !tbaa !66
  %i.gv = insertelement <4 x i32> poison, i32 %i.gr, i64 0
  %i.gw = insertelement <4 x i32> %i.gv, i32 %i.gs, i64 1
  %i.gx = insertelement <4 x i32> %i.gw, i32 %i.gt, i64 2
  %i.gy = insertelement <4 x i32> %i.gx, i32 %i.gu, i64 3
  %i.gz = icmp ne <4 x i32> %i.gq, zeroinitializer
  %i.ha = icmp ne <4 x i32> %i.gy, zeroinitializer
  %i.hb = zext <4 x i1> %i.gz to <4 x i32>
  %i.hc = zext <4 x i1> %i.ha to <4 x i32>
  %i.hd = add <4 x i32> %vec.phi405, %i.hb        ; 2 uses
  %i.he = add <4 x i32> %vec.phi406, %i.hc        ; 2 uses
  %index.next407 = add nuw i64 %index404, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next407, %n.vec402
  br i1 %i.hf, label %middle.block408, label %vector.body403, !llvm.loop !47

middle.block408:                                  ; preds = %vector.body403
  %bin.rdx409 = add <4 x i32> %i.he, %i.hd
  %i.hg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx409) ; 2 uses
  %cmp.n410 = icmp eq i64 %i.fs, %n.vec402
  br i1 %cmp.n410, label %ZS_Histograms_computeO1.exit, label %scalar.ph399.preheader

scalar.ph399.preheader:                           ; preds = %.critedge2.i, %middle.block408
  %.020.i.ph = phi i64 [ 0, %.critedge2.i ], [ %n.vec402, %middle.block408 ]
  %.05919.i.ph = phi i32 [ 0, %.critedge2.i ], [ %i.hg, %middle.block408 ]
  br label %scalar.ph399

scalar.ph399:                                     ; preds = %scalar.ph399.preheader, %scalar.ph399
  %.020.i = phi i64 [ %i.hn, %scalar.ph399 ], [ %.020.i.ph, %scalar.ph399.preheader ] ; 3 uses
  %.05919.i = phi i32 [ %i.hm, %scalar.ph399 ], [ %.05919.i.ph, %scalar.ph399.preheader ]
  %i.hh = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %.020.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 1024
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !66
  %i.hk = icmp ne i32 %i.hj, 0
  %i.hl = zext i1 %i.hk to i32
  %i.hm = add i32 %.05919.i, %i.hl                ; 2 uses
  %i.hn = add nuw nsw i64 %.020.i, 1
  %exitcond28.not.i = icmp eq i64 %.020.i, %i.fr
  br i1 %exitcond28.not.i, label %ZS_Histograms_computeO1.exit, label %scalar.ph399, !llvm.loop !48

ZS_Histograms_computeO1.exit:                     ; preds = %scalar.ph399, %middle.block408
  %.lcssa394 = phi i32 [ %i.hg, %middle.block408 ], [ %i.hm, %scalar.ph399 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %i.fq, ptr %i.ho, align 4, !tbaa !28
  store i32 %.lcssa394, ptr %i.j, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.hp = shl nuw nsw i64 %i.fr, 2
  %i.hq = add nuw nsw i64 %i.hp, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 -1, i64 %i.hq, i1 false), !tbaa !28
  %i.hr = add i32 %i.fq, 1                        ; 5 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %i.hr, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter447 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.hs = icmp ult i32 %i.hr, 4
  br i1 %i.hs, label %.epil.preheader446, label %ZS_Histograms_computeO1.exit.new

ZS_Histograms_computeO1.exit.new:                 ; preds = %ZS_Histograms_computeO1.exit
  %unroll_iter452 = and i64 %wide.trip.count, 4294967292
  br label %bb.aa

.preheader270.unr-lcssa:                          ; preds = %bb.aa
  %lcmp.mod449.not = icmp eq i64 %xtraiter447, 0
  br i1 %lcmp.mod449.not, label %.preheader270, label %.epil.preheader446

.epil.preheader446:                               ; preds = %.preheader270.unr-lcssa, %ZS_Histograms_computeO1.exit
  %indvars.iv.epil.init = phi i64 [ 0, %ZS_Histograms_computeO1.exit ], [ %indvars.iv.next.3, %.preheader270.unr-lcssa ]
  %.0181286.epil.init = phi i64 [ 0, %ZS_Histograms_computeO1.exit ], [ %i.in, %.preheader270.unr-lcssa ]
  %lcmp.mod451 = icmp ne i64 %xtraiter447, 0
  tail call void @llvm.assume(i1 %lcmp.mod451)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader446
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader446 ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %.0181286.epil = phi i64 [ %.0181286.epil.init, %.epil.preheader446 ], [ %i.hw, %bb.z ]
  %epil.iter448 = phi i64 [ 0, %.epil.preheader446 ], [ %epil.iter448.next, %bb.z ]
  %i.ht = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 1040
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !67
  %i.hw = add i64 %i.hv, %.0181286.epil           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter448.next = add i64 %epil.iter448, 1   ; 2 uses
  %epil.iter448.cmp.not = icmp eq i64 %epil.iter448.next, %xtraiter447
  br i1 %epil.iter448.cmp.not, label %.preheader270, label %bb.z, !llvm.loop !49

.preheader270:                                    ; preds = %bb.z, %.preheader270.unr-lcssa
  %.lcssa422 = phi i64 [ %i.in, %.preheader270.unr-lcssa ], [ %i.hw, %bb.z ]
  %i.hx = zext i32 %i.hr to i64                   ; 6 uses
  br label %bb.ac

bb.aa:                                            ; preds = %bb.aa, %ZS_Histograms_computeO1.exit.new
  %indvars.iv = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %indvars.iv.next.3, %bb.aa ] ; 5 uses
  %.0181286 = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %i.in, %bb.aa ]
  %niter453 = phi i64 [ 0, %ZS_Histograms_computeO1.exit.new ], [ %niter453.next.3, %bb.aa ]
  %i.hy = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1040
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !67
  %i.ib = add i64 %i.ia, %.0181286
  %i.ic = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2080
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !67
  %i.if = add i64 %i.ie, %i.ib
  %i.ig = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 3120
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !67
  %i.ij = add i64 %i.ii, %i.if
  %i.ik = getelementptr inbounds nuw [1040 x i8], ptr %i.j, i64 %indvars.iv
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4160
  %i.im = load i64, ptr %i.il, align 8, !tbaa !67
  %i.in = add i64 %i.im, %i.ij                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter453.next.3 = add i64 %niter453, 4         ; 2 uses
  %niter453.ncmp.3 = icmp eq i64 %niter453.next.3, %unroll_iter452
  br i1 %niter453.ncmp.3, label %.preheader270.unr-lcssa, label %bb.aa, !llvm.loop !50

bb.ab:                                            ; preds = %bb.ai
  %i.io = icmp ugt i64 %.1188, %6
  br i1 %i.io, label %bb.aj, label %._crit_edge347

bb.ac:                                            ; preds = %.preheader270, %bb.ai
  %.0177291 = phi i32 [ 0, %.preheader270 ], [ %i.lp, %bb.ai ] ; 3 uses
  %.0178290 = phi i32 [ 256, %.preheader270 ], [ %.1179, %bb.ai ] ; 5 uses
  %.1182289 = phi i64 [ %.lcssa422, %.preheader270 ], [ %.2183, %bb.ai ] ; 3 uses
  %.0187288 = phi i64 [ %i.hx, %.preheader270 ], [ %.1188, %bb.ai ] ; 3 uses
  %i.ip = zext i32 %.0177291 to i64               ; 2 uses
  %i.iq = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.ip ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 1024
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !66 ; 2 uses
  %i.it = icmp ult i32 %i.is, 300
  br i1 %i.it, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.iu = icmp eq i32 %.0178290, 256
  br i1 %i.iu, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iv = zext i32 %.0178290 to i64
  %i.iw = getelementptr inbounds nuw [1040 x i8], ptr %i.n, i64 %i.iv ; 8 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1032 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !67
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 1032
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !67
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 1024 ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !66
  %i.jd = add i32 %i.jc, %i.is
  store i32 %i.jd, ptr %i.jb, align 8, !tbaa !66
  %i.je = getelementptr inbounds nuw i8, ptr %i.iw, i64 1028 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !65
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iq, i64 1028
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !65
  %..i = tail call i32 @llvm.umax.i32(i32 %i.jf, i32 %i.jh)
  store i32 %..i, ptr %i.je, align 4, !tbaa !65
  br label %bb.ah

bb.af:                                            ; preds = %bb.ah
  %i.ji = add i64 %.0187288, -1
  %i.jj = load i32, ptr %i.jb, align 8, !tbaa !66 ; 2 uses
  %i.jk = zext i32 %i.jj to i64                   ; 6 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.lj
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !28
  %i.jn = icmp eq i32 %i.jj, %i.jm
  br i1 %i.jn, label %ZS_Histogram_combine.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.af
  %i.jo = add i32 %i.li, 1                        ; 2 uses
  %umax.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.jo, i32 1) ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %umax.i.i.i to i64 ; 2 uses
  %xtraiter455 = and i64 %wide.trip.count.i.i.i, 1
  %i.jp = icmp ult i32 %i.jo, 2
  br i1 %i.jp, label %.preheader.i.i.i214.epil.preheader, label %.preheader.preheader.i.i.i.new

.preheader.preheader.i.i.i.new:                   ; preds = %.preheader.preheader.i.i.i
  %unroll_iter461 = and i64 %wide.trip.count.i.i.i, 4294967294
  br label %.preheader.i.i.i214

.preheader.i.i.i214:                              ; preds = %.preheader.i.i.i214, %.preheader.preheader.i.i.i.new
  %indvars.iv.i.i.i215 = phi i64 [ 0, %.preheader.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i219.1, %.preheader.i.i.i214 ] ; 3 uses
  %.01921.i.i.i216 = phi i64 [ 0, %.preheader.preheader.i.i.i.new ], [ %i.ko, %.preheader.i.i.i214 ]
  %niter462 = phi i64 [ 0, %.preheader.preheader.i.i.i.new ], [ %niter462.next.1, %.preheader.i.i.i214 ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.i.i215
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !28 ; 2 uses
  %i.js = zext i32 %i.jr to i64                   ; 2 uses
  %i.jt = shl nuw nsw i64 %i.js, 8                ; 2 uses
  %i.ju = udiv i64 %i.jt, %i.jk
  %i.jv = icmp ne i32 %i.jr, 0
  %i.jw = icmp samesign ult i64 %i.jt, %i.jk
  %or.cond.i.i.i217 = select i1 %i.jv, i1 %i.jw, i1 false
  %spec.store.select.i.i.i218 = select i1 %or.cond.i.i.i217, i64 1, i64 %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i218
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !28
  %i.jz = zext i32 %i.jy to i64
  %i.ka = mul nuw i64 %i.jz, %i.js
  %i.kb = add i64 %i.ka, %.01921.i.i.i216
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.i.i215
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !28 ; 2 uses
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = shl nuw nsw i64 %i.kf, 8                ; 2 uses
  %i.kh = udiv i64 %i.kg, %i.jk
  %i.ki = icmp ne i32 %i.ke, 0
  %i.kj = icmp samesign ult i64 %i.kg, %i.jk
  %or.cond.i.i.i217.1 = select i1 %i.ki, i1 %i.kj, i1 false
  %spec.store.select.i.i.i218.1 = select i1 %or.cond.i.i.i217.1, i64 1, i64 %i.kh
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i218.1
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !28
  %i.km = zext i32 %i.kl to i64
  %i.kn = mul nuw i64 %i.km, %i.kf
  %i.ko = add i64 %i.kn, %i.kb                    ; 3 uses
  %indvars.iv.next.i.i.i219.1 = add nuw nsw i64 %indvars.iv.i.i.i215, 2 ; 2 uses
  %niter462.next.1 = add i64 %niter462, 2         ; 2 uses
  %niter462.ncmp.1 = icmp eq i64 %niter462.next.1, %unroll_iter461
  br i1 %niter462.ncmp.1, label %.unr-lcssa454, label %.preheader.i.i.i214, !llvm.loop !43

.unr-lcssa454:                                    ; preds = %.preheader.i.i.i214
  %lcmp.mod457.not = icmp eq i64 %xtraiter455, 0
  br i1 %lcmp.mod457.not, label %bb.ag, label %.preheader.i.i.i214.epil.preheader

.preheader.i.i.i214.epil.preheader:               ; preds = %.unr-lcssa454, %.preheader.preheader.i.i.i
  %indvars.iv.i.i.i215.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %indvars.iv.next.i.i.i219.1, %.unr-lcssa454 ]
  %.01921.i.i.i216.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i ], [ %i.ko, %.unr-lcssa454 ]
  %lcmp.mod460 = trunc i32 %umax.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod460)
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.i.i.i215.epil.init
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !28 ; 2 uses
  %i.kr = zext i32 %i.kq to i64                   ; 2 uses
  %i.ks = shl nuw nsw i64 %i.kr, 8                ; 2 uses
  %i.kt = udiv i64 %i.ks, %i.jk
  %i.ku = icmp ne i32 %i.kq, 0
  %i.kv = icmp samesign ult i64 %i.ks, %i.jk
  %or.cond.i.i.i217.epil = select i1 %i.ku, i1 %i.kv, i1 false
  %spec.store.select.i.i.i218.epil = select i1 %or.cond.i.i.i217.epil, i64 1, i64 %i.kt
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %spec.store.select.i.i.i218.epil
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !28
  %i.ky = zext i32 %i.kx to i64
  %i.kz = mul nuw i64 %i.ky, %i.kr
  %i.la = add i64 %i.kz, %.01921.i.i.i216.epil.init
  br label %bb.ag

bb.ag:                                            ; preds = %.unr-lcssa454, %.preheader.i.i.i214.epil.preheader
  %.lcssa421 = phi i64 [ %i.ko, %.unr-lcssa454 ], [ %i.la, %.preheader.i.i.i214.epil.preheader ]
  %i.lb = lshr i64 %.lcssa421, 8
  br label %ZS_Histogram_combine.exit

bb.ah:                                            ; preds = %bb.ah, %bb.ae
end_hunk_0
begin_hunk_1_@ZL_ContextClustering_greedy:bb.a
  %i.sx = icmp eq i32 %i.ss, 0
  %or.cond38.i.i241 = select i1 %or.cond.i.i240, i1 true, i1 %i.sx
  %i.sy = zext i32 %..i.i239 to i64               ; 3 uses
  br i1 %or.cond38.i.i241, label %bb.be, label %._crit_edge.i.i242.preheader

._crit_edge.i.i242.preheader:                     ; preds = %bb.be, %bb.bd
  br label %._crit_edge.i.i242

bb.be:                                            ; preds = %bb.bd
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !28
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.sy
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !28
  %i.td = add i32 %i.tc, %i.ta
  %i.te = icmp eq i32 %i.td, %i.st
  br i1 %i.te, label %ZS_combineLoss.exit248, label %._crit_edge.i.i242.preheader

bb.bf:                                            ; preds = %._crit_edge.i.i242
  %i.tf = lshr i64 %i.tu, 8
  br label %ZS_combineLoss.exit248

._crit_edge.i.i242:                               ; preds = %._crit_edge.i.i242.preheader, %._crit_edge.i.i242
  %.041.i.i243 = phi i64 [ %i.tv, %._crit_edge.i.i242 ], [ 0, %._crit_edge.i.i242.preheader ] ; 4 uses
  %.03240.i.i244 = phi i64 [ %i.tu, %._crit_edge.i.i242 ], [ 0, %._crit_edge.i.i242.preheader ]
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %.041.i.i243
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !28
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %.041.i.i243
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !28
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = zext i32 %i.tk to i64                   ; 2 uses
  %i.tm = shl nuw nsw i64 %i.tl, 8
  %i.tn = udiv i64 %i.tm, %i.su
  %i.to = icmp ne i32 %i.tk, 0
  %i.tp = zext i1 %i.to to i64
  %.39.i.i245 = tail call i64 @llvm.umax.i64(i64 %i.tn, i64 %i.tp)
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr @kInverseProbabilityLog256, i64 %.39.i.i245
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !28
  %i.ts = zext i32 %i.tr to i64
  %i.tt = mul nuw i64 %i.ts, %i.tl
  %i.tu = add i64 %i.tt, %.03240.i.i244           ; 2 uses
  %i.tv = add nuw nsw i64 %.041.i.i243, 1
  %exitcond.not.i.i246 = icmp eq i64 %.041.i.i243, %i.sy
  br i1 %exitcond.not.i.i246, label %bb.bf, label %._crit_edge.i.i242, !llvm.loop !53

ZS_combineLoss.exit248:                           ; preds = %bb.be, %bb.bf
  %.033.i.i247 = phi i64 [ %i.tf, %bb.bf ], [ 0, %bb.be ]
  %i.tw = add i64 %i.sk, %i.si
  %i.tx = sub i64 %.033.i.i247, %i.tw
  %i.ty = mul nuw i64 %i.sd, %i.hx
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %i.ty
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.tz, i64 %i.sf
  store i64 %i.tx, ptr %i.ua, align 8, !tbaa !68
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bc, %ZS_combineLoss.exit248
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %lftr.wideiv341 = trunc i64 %indvars.iv.next339 to i32
  %exitcond342.not = icmp eq i32 %i.hr, %lftr.wideiv341
  br i1 %exitcond342.not, label %.loopexit264, label %bb.bc, !llvm.loop !59

._crit_edge:                                      ; preds = %.loopexit264
  tail call void @free(ptr noundef %i.ls) #16
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %bb.ab, %._crit_edge
  %.4185 = phi i64 [ %i.nz, %._crit_edge ], [ %.2183, %bb.ab ]
  %i.ub = icmp eq i32 %i.fq, 0
  br i1 %i.ub, label %.epil.preheader475, label %._crit_edge347.new

._crit_edge347.new:                               ; preds = %._crit_edge347
  %unroll_iter482 = and i64 %i.fs, 8589934590
  br label %bb.bk

.unr-lcssa474:                                    ; preds = %bb.bq
  %i.uc = and i64 %i.fr, 1
  %lcmp.mod478.not.not = icmp eq i64 %i.uc, 0
  br i1 %lcmp.mod478.not.not, label %.epil.preheader475, label %bb.bj

.epil.preheader475:                               ; preds = %.unr-lcssa474, %._crit_edge347
  %.0158316.epil.init = phi i64 [ 0, %._crit_edge347 ], [ %i.vj, %.unr-lcssa474 ] ; 2 uses
  %.0159315.epil.init = phi i32 [ 0, %._crit_edge347 ], [ %.1.1, %.unr-lcssa474 ] ; 3 uses
  %lcmp.mod481 = trunc i64 %i.fs to i1
  tail call void @llvm.assume(i1 %lcmp.mod481)
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0158316.epil.init
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !28 ; 2 uses
  %i.uf = icmp eq i32 %i.ue, -1
  br i1 %i.uf, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.epil.preheader475
  %i.ug = sext i32 %i.ue to i64
  %i.uh = getelementptr inbounds i8, ptr %0, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !24
  br label %.epilog-lcssa479

bb.bi:                                            ; preds = %.epil.preheader475
  %i.uj = add i32 %.0159315.epil.init, 1
  %i.uk = trunc i32 %.0159315.epil.init to i8
  br label %.epilog-lcssa479

.epilog-lcssa479:                                 ; preds = %bb.bi, %bb.bh
  %.sink.epil = phi i8 [ %i.uk, %bb.bi ], [ %i.ui, %bb.bh ]
  %.1.epil = phi i32 [ %i.uj, %bb.bi ], [ %.0159315.epil.init, %bb.bh ]
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 %.0158316.epil.init
  store i8 %.sink.epil, ptr %i.ul, align 1, !tbaa !24
  br label %bb.bj

bb.bj:                                            ; preds = %.unr-lcssa474, %.epilog-lcssa479
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa474 ], [ %.1.epil, %.epilog-lcssa479 ]
  %i.um = zext i32 %.1.lcssa to i64
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.um, ptr %i.un, align 8, !tbaa !27
  %i.uo = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.fr, ptr %i.uo, align 8, !tbaa !23
  %i.up = tail call noalias ptr @fopen(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) ; 6 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.22, i64 21, i64 1, ptr %i.up) ; 0 uses
  %fwrite201 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 26, i64 1, ptr %i.up) ; 0 uses
  br label %bb.bs

bb.bk:                                            ; preds = %bb.bq, %._crit_edge347.new
  %.0158316 = phi i64 [ 0, %._crit_edge347.new ], [ %i.vj, %bb.bq ] ; 4 uses
  %.0159315 = phi i32 [ 0, %._crit_edge347.new ], [ %.1.1, %bb.bq ] ; 3 uses
  %niter483 = phi i64 [ 0, %._crit_edge347.new ], [ %niter483.next.1, %bb.bq ]
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0158316
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !28 ; 2 uses
  %i.us = icmp eq i32 %i.ur, -1
  br i1 %i.us, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ut = add i32 %.0159315, 1
  %i.uu = trunc i32 %.0159315 to i8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.uv = sext i32 %i.ur to i64
  %i.uw = getelementptr inbounds i8, ptr %0, i64 %i.uv
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !24
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bl, %bb.bm
  %.sink = phi i8 [ %i.uu, %bb.bl ], [ %i.ux, %bb.bm ]
  %.1 = phi i32 [ %i.ut, %bb.bl ], [ %.0159315, %bb.bm ] ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 %.0158316
  store i8 %.sink, ptr %i.uy, align 1, !tbaa !24
  %i.uz = or disjoint i64 %.0158316, 1            ; 2 uses
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.uz
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !28 ; 2 uses
  %i.vc = icmp eq i32 %i.vb, -1
  br i1 %i.vc, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.vd = sext i32 %i.vb to i64
  %i.ve = getelementptr inbounds i8, ptr %0, i64 %i.vd
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !24
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.vg = add i32 %.1, 1
  %i.vh = trunc i32 %.1 to i8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink.1 = phi i8 [ %i.vh, %bb.bp ], [ %i.vf, %bb.bo ]
  %.1.1 = phi i32 [ %i.vg, %bb.bp ], [ %.1, %bb.bo ] ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %0, i64 %i.uz
  store i8 %.sink.1, ptr %i.vi, align 1, !tbaa !24
  %i.vj = add nuw nsw i64 %.0158316, 2            ; 2 uses
  %niter483.next.1 = add i64 %niter483, 2         ; 2 uses
  %niter483.ncmp.1 = icmp eq i64 %niter483.next.1, %unroll_iter482
  br i1 %niter483.ncmp.1, label %.unr-lcssa474, label %bb.bk, !llvm.loop !60

bb.br:                                            ; preds = %bb.bv
  %fwrite203 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %i.up) ; 0 uses
  %i.vk = tail call i32 @fclose(ptr noundef %i.up) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.j) #16
  %i.vl = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !28
  %i.vm = icmp sgt i32 %i.vl, 255
  br i1 %i.vm, label %bb.bw, label %bb.bx

bb.bs:                                            ; preds = %bb.bj, %bb.bv
  %indvars.iv344 = phi i64 [ 0, %bb.bj ], [ %indvars.iv.next345, %bb.bv ] ; 6 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv344
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !28 ; 2 uses
  %i.vp = icmp eq i32 %i.vo, -1
  br i1 %i.vp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv344
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !24
  %i.vs = zext i8 %i.vr to i32
  %i.vt = trunc nuw i64 %indvars.iv344 to i32
  %i.vu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.up, ptr noundef nonnull @.str.24, i32 noundef %i.vt, i32 noundef %i.vs) #16 ; 0 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  %i.vv = trunc nuw i64 %indvars.iv344 to i32
  %i.vw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.up, ptr noundef nonnull @.str.25, i32 noundef %i.vv, i32 noundef %i.vo) #16 ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1
  %.not202.not = icmp samesign ult i64 %indvars.iv344, %i.fr
  br i1 %.not202.not, label %bb.bs, label %bb.br, !llvm.loop !61

bb.bw:                                            ; preds = %bb.br
  %i.vx = lshr i64 %.4185, 3
  %i.vy = trunc i64 %i.vx to i32
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ZL_ContextClustering_greedy, i32 noundef 487, ptr noundef nonnull @.str.27, i32 noundef %i.vy) #16
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
