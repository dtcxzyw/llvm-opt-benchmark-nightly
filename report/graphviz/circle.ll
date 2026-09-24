Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/circle?download=true
inline.NumInlined: 19
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@circleLayout:bb.a
  %.not23.i = icmp eq ptr %i.ep, null
  br i1 %.not23.i, label %setParentNodes.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %setNStepsToCenter.exit.i, %bb.t
  %.01625.i = phi ptr [ %i.ex, %bb.t ], [ %i.ep, %setNStepsToCenter.exit.i ] ; 2 uses
  %.01724.i = phi i64 [ %spec.select.i, %bb.t ], [ 0, %setNStepsToCenter.exit.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.01625.i, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !13
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 152
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !30
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !58 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, %i.bc
  br i1 %i.ew, label %setParentNodes.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i29
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 %.01724.i) ; 2 uses
  %i.ex = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.01625.i) #13 ; 2 uses
  %.not.i30 = icmp eq ptr %i.ex, null
  br i1 %.not.i30, label %setParentNodes.exit, label %.lr.ph.i29, !llvm.loop !49

setParentNodes.exit:                              ; preds = %.lr.ph.i29, %bb.t, %setNStepsToCenter.exit.i
  %spec.select21.i = phi i64 [ 0, %setNStepsToCenter.exit.i ], [ %spec.select.i, %bb.t ], [ -1, %.lr.ph.i29 ] ; 11 uses
  %i.ey = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not24 = icmp eq i8 %i.ey, 0
  br i1 %.not24, label %bb.v, label %bb.u

bb.u:                                             ; preds = %setParentNodes.exit
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.fa = call ptr @agnameof(ptr noundef %.022) #13
  %i.fb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str, ptr noundef %i.fa, i64 noundef %spec.select21.i) #14 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %setParentNodes.exit
  %i.fc = icmp eq i64 %spec.select21.i, -1
  br i1 %i.fc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.1) #13
  br label %bb.ah

bb.x:                                             ; preds = %bb.v
  %i.fd = call ptr @agfstnode(ptr noundef %0) #13 ; 2 uses
  %.not21.i32 = icmp eq ptr %i.fd, null
  br i1 %.not21.i32, label %setSubtreeSize.exit, label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %bb.x, %.loopexit.i33
  %.01022.i = phi ptr [ %i.fu, %.loopexit.i33 ], [ %i.fd, %bb.x ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.01022.i, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 152
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !30 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !40
  %.not11.i = icmp eq i64 %i.fj, 0
  br i1 %.not11.i, label %bb.y, label %.loopexit.i33

bb.y:                                             ; preds = %.lr.ph23.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !41
  %i.fm = add i64 %i.fl, 1
  store i64 %i.fm, ptr %i.fk, align 8, !tbaa !41
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !39 ; 2 uses
  %.not1219.i = icmp eq ptr %.018.i, null
  br i1 %.not1219.i, label %.loopexit.i33, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %bb.y, %.lr.ph.i36
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i36 ], [ %.018.i, %bb.y ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 152
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !41
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !41
  %.0.in.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !39 ; 2 uses
  %.not12.i = icmp eq ptr %.0.i, null
  br i1 %.not12.i, label %.loopexit.i33, label %.lr.ph.i36, !llvm.loop !50

.loopexit.i33:                                    ; preds = %.lr.ph.i36, %bb.y, %.lr.ph23.i
  %i.fu = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.01022.i) #13 ; 2 uses
  %.not.i34 = icmp eq ptr %i.fu, null
  br i1 %.not.i34, label %setSubtreeSize.exit, label %.lr.ph23.i, !llvm.loop !51

setSubtreeSize.exit:                              ; preds = %.loopexit.i33, %bb.x
  %i.fv = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 152
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !30
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  store double f0x401921FB54442D18, ptr %i.fy, align 8, !tbaa !42
  call fastcc void @setChildSubtreeSpans(ptr noundef %0, ptr noundef %.022)
  %i.fz = load ptr, ptr %i.ax, align 8, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 152
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !30
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  store double 0.000000e+00, ptr %i.gc, align 8, !tbaa !32
  call fastcc void @setChildPositions(ptr noundef %0, ptr noundef %.022)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.gd = add nuw i64 %spec.select21.i, 1         ; 3 uses
  %mul.ov.i.i.i = icmp ugt i64 %spec.select21.i, 2305843009213693950
  br i1 %mul.ov.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %setSubtreeSize.exit
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.gf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.8, i64 noundef range(i64 1, 0) %i.gd, i64 noundef 8) #14 ; 0 uses
  call fastcc void @graphviz_exit() #15
  unreachable

bb.aa:                                            ; preds = %setSubtreeSize.exit
  %i.gg = call noalias ptr @calloc(i64 noundef range(i64 1, 0) %i.gd, i64 noundef 8) #16 ; 10 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.ab, label %gv_calloc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.gj = shl nuw i64 %i.gd, 3
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.9, i64 noundef %i.gj) #14 ; 0 uses
  call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.aa
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !72
  %i.gn = call ptr @agattr_text(ptr noundef %i.gm, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef null) #13
  %i.go = call ptr @late_string(ptr noundef %0, ptr noundef %i.gn, ptr noundef null) #13 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.go, null
  br i1 %.not.i.i37, label %.critedge.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %gv_calloc.exit.i.i
  %.not3538.i.i = icmp eq i64 %spec.select21.i, 0
  br i1 %.not3538.i.i, label %.critedge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader.i.i
  %i.gp = call double @strtod(ptr noundef nonnull %i.go, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.gq = fcmp ogt double %i.gp, 0.000000e+00
  br i1 %i.gq, label %.lr.ph.i41, label %.critedge.i.i

.loopexit.i.i42:                                  ; preds = %bb.ac
  %exitcond.not.i.i = icmp eq i64 %.02940.i28.i, %spec.select21.i
  br i1 %exitcond.not.i.i, label %getRankseps.exit.i, label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %.loopexit.i.i42
  %i.gr = add nuw nsw i64 %.02940.i28.i, 1        ; 2 uses
  %i.gs = call double @strtod(ptr noundef nonnull %.132.i.i, ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.gt = fcmp ogt double %i.gs, 0.000000e+00
  br i1 %i.gt, label %.lr.ph.i41, label %.critedge.i.i

.lr.ph.i41:                                       ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i43
  %i.gu = phi double [ %i.gs, %.lr.ph.i.i43 ], [ %i.gp, %.lr.ph.i.preheader.i ]
  %.02940.i28.i = phi i64 [ %i.gr, %.lr.ph.i.i43 ], [ 1, %.lr.ph.i.preheader.i ] ; 3 uses
  %.02741.i27.i = phi double [ %i.gw, %.lr.ph.i.i43 ], [ 0.000000e+00, %.lr.ph.i.preheader.i ]
  %i.gv = call nsz double @llvm.maxnum.f64(double %i.gu, double 2.000000e-02) ; 2 uses
  %i.gw = fadd double %i.gv, %.02741.i27.i        ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.02940.i28.i
  store double %i.gw, ptr %i.gx, align 8, !tbaa !73
  %i.gy = load ptr, ptr %i.a, align 8, !tbaa !74
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge2.i.i, %.lr.ph.i41
  %.132.i.i = phi ptr [ %i.gy, %.lr.ph.i41 ], [ %i.ha, %.critedge2.i.i ] ; 3 uses
  %i.gz = load i8, ptr %.132.i.i, align 1, !tbaa !61
  switch i8 %i.gz, label %.loopexit.i.i42 [
    i8 9, label %.critedge2.i.i
    i8 10, label %.critedge2.i.i
    i8 11, label %.critedge2.i.i
    i8 12, label %.critedge2.i.i
    i8 13, label %.critedge2.i.i
    i8 32, label %.critedge2.i.i
    i8 58, label %.critedge2.i.i
  ]

.critedge2.i.i:                                   ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac, %bb.ac
  %i.ha = getelementptr inbounds nuw i8, ptr %.132.i.i, i64 1
  br label %bb.ac, !llvm.loop !52

.critedge.i.i:                                    ; preds = %.lr.ph.i.i43, %.lr.ph.i.preheader.i, %.preheader.i.i, %gv_calloc.exit.i.i
  %.130.i.i = phi i64 [ 1, %gv_calloc.exit.i.i ], [ 1, %.preheader.i.i ], [ 1, %.lr.ph.i.preheader.i ], [ %i.gr, %.lr.ph.i.i43 ] ; 5 uses
  %.128.i.i = phi double [ 0.000000e+00, %gv_calloc.exit.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ], [ %i.gw, %.lr.ph.i.i43 ] ; 2 uses
  %.1.i.i38 = phi double [ 1.000000e+00, %gv_calloc.exit.i.i ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %.lr.ph.i.preheader.i ], [ %i.gv, %.lr.ph.i.i43 ] ; 5 uses
  %.not3649.i.i = icmp ugt i64 %.130.i.i, %spec.select21.i
  br i1 %.not3649.i.i, label %getRankseps.exit.i, label %.lr.ph52.i.i.preheader

.lr.ph52.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.hb = add nuw nsw i64 %spec.select21.i, 1
  %i.hc = sub nuw i64 %i.hb, %.130.i.i
  %i.hd = sub nuw i64 %spec.select21.i, %.130.i.i
  %xtraiter = and i64 %i.hc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.i.i.prol.loopexit, label %.lr.ph52.i.i.prol

.lr.ph52.i.i.prol:                                ; preds = %.lr.ph52.i.i.preheader, %.lr.ph52.i.i.prol
  %.051.i.i.prol = phi i64 [ %i.hg, %.lr.ph52.i.i.prol ], [ %.130.i.i, %.lr.ph52.i.i.preheader ] ; 2 uses
  %.250.i.i.prol = phi double [ %i.he, %.lr.ph52.i.i.prol ], [ %.128.i.i, %.lr.ph52.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph52.i.i.prol ], [ 0, %.lr.ph52.i.i.preheader ]
  %i.he = fadd double %.1.i.i38, %.250.i.i.prol   ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.051.i.i.prol
  store double %i.he, ptr %i.hf, align 8, !tbaa !73
  %i.hg = add nuw nsw i64 %.051.i.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.i.i.prol.loopexit, label %.lr.ph52.i.i.prol, !llvm.loop !53

.lr.ph52.i.i.prol.loopexit:                       ; preds = %.lr.ph52.i.i.prol, %.lr.ph52.i.i.preheader
  %.051.i.i.unr = phi i64 [ %.130.i.i, %.lr.ph52.i.i.preheader ], [ %i.hg, %.lr.ph52.i.i.prol ]
  %.250.i.i.unr = phi double [ %.128.i.i, %.lr.ph52.i.i.preheader ], [ %i.he, %.lr.ph52.i.i.prol ]
  %i.hh = icmp ult i64 %i.hd, 3
  br i1 %i.hh, label %getRankseps.exit.i, label %.lr.ph52.i.i

.lr.ph52.i.i:                                     ; preds = %.lr.ph52.i.i.prol.loopexit, %.lr.ph52.i.i
  %.051.i.i = phi i64 [ %i.ht, %.lr.ph52.i.i ], [ %.051.i.i.unr, %.lr.ph52.i.i.prol.loopexit ] ; 5 uses
  %.250.i.i = phi double [ %i.hr, %.lr.ph52.i.i ], [ %.250.i.i.unr, %.lr.ph52.i.i.prol.loopexit ]
  %i.hi = fadd double %.1.i.i38, %.250.i.i        ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.051.i.i
  store double %i.hi, ptr %i.hj, align 8, !tbaa !73
  %i.hk = fadd double %.1.i.i38, %i.hi            ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.051.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store double %i.hk, ptr %i.hm, align 8, !tbaa !73
  %i.hn = fadd double %.1.i.i38, %i.hk            ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.051.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store double %i.hn, ptr %i.hp, align 8, !tbaa !73
  %i.hq = add nuw nsw i64 %.051.i.i, 3            ; 2 uses
  %i.hr = fadd double %.1.i.i38, %i.hn            ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.hq
  store double %i.hr, ptr %i.hs, align 8, !tbaa !73
  %i.ht = add nuw nsw i64 %.051.i.i, 4
  %exitcond53.not.i.i.3 = icmp eq i64 %i.hq, %spec.select21.i
  br i1 %exitcond53.not.i.i.3, label %getRankseps.exit.i, label %.lr.ph52.i.i, !llvm.loop !54

getRankseps.exit.i:                               ; preds = %.loopexit.i.i42, %.lr.ph52.i.i.prol.loopexit, %.lr.ph52.i.i, %.critedge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.hu = load i8, ptr @Verbose, align 1, !tbaa !61
  %.not.i39 = icmp eq i8 %i.hu, 0
  br i1 %.not.i39, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %getRankseps.exit.i
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !66
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.4, i64 18, i64 1, ptr %i.hv) #17 ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %i.hw = load ptr, ptr @stderr, align 8, !tbaa !66
  %fputc.i = call i32 @fputc(i32 10, ptr %i.hw)   ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %bb.ad
  %.01931.i = phi i64 [ 0, %bb.ad ], [ %i.ib, %bb.af ] ; 3 uses
  %i.hx = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.01931.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !73
  %i.ia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hx, ptr noundef nonnull @.str.5, double noundef %i.hz) #14 ; 0 uses
  %i.ib = add nuw nsw i64 %.01931.i, 1
  %exitcond.not.i = icmp eq i64 %.01931.i, %spec.select21.i
  br i1 %exitcond.not.i, label %bb.ae, label %bb.af, !llvm.loop !55

bb.ag:                                            ; preds = %bb.ae, %getRankseps.exit.i
  %i.ic = call ptr @agfstnode(ptr noundef %0) #13 ; 2 uses
  %.not2232.i = icmp eq ptr %i.ic, null
  br i1 %.not2232.i, label %setAbsolutePos.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.ag, %.lr.ph34.i
  %.033.i = phi ptr [ %i.iv, %.lr.ph34.i ], [ %i.ic, %bb.ag ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !13 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 152
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !30 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !58
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !73 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 48 ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !32
  %i.in = call double @cos(double noundef %i.im) #13
  %i.io = fmul double %i.ik, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 176
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !57 ; 2 uses
  store double %i.io, ptr %i.iq, align 8, !tbaa !73
  %i.ir = load double, ptr %i.il, align 8, !tbaa !32
  %i.is = call double @sin(double noundef %i.ir) #13
  %i.it = fmul double %i.ik, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store double %i.it, ptr %i.iu, align 8, !tbaa !73
  %i.iv = call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.033.i) #13 ; 2 uses
  %.not22.i = icmp eq ptr %i.iv, null
  br i1 %.not22.i, label %setAbsolutePos.exit, label %.lr.ph34.i, !llvm.loop !56

setAbsolutePos.exit:                              ; preds = %.lr.ph34.i, %bb.ag
  call void @free(ptr noundef %i.gg) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.w, %setAbsolutePos.exit, %bb.b
  %.1 = phi ptr [ %1, %bb.b ], [ %.022, %setAbsolutePos.exit ], [ %.022, %bb.w ]
  ret ptr %.1
}

declare i32 @agnnodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @agfstnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @agnameof(ptr noundef) local_unnamed_addr #1

declare void @agerrorf(ptr noundef, ...) local_unnamed_addr #1

declare ptr @agnxtnode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agfstedge(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @agnxtedge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @setNStepsToLeaf(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = tail call ptr @agfstedge(ptr noundef %0, ptr noundef %1) #13 ; 2 uses
  %.not25 = icmp eq ptr %i.g, null
  br i1 %.not25, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.026 = phi ptr [ %i.z, %bb.f ], [ %i.g, %bb.a ] ; 4 uses
  %i.h = load i32, ptr %.026, align 8
  %i.i = and i32 %i.h, 3                          ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  %i.k = select i1 %i.j, i64 56, i64 120
  %i.l = getelementptr inbounds nuw i8, ptr %.026, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = icmp eq ptr %i.m, %1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.o = icmp eq i32 %i.i, 2
  %i.p = select i1 %i.o, i64 56, i64 -8
  %i.q = getelementptr inbounds i8, ptr %.026, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.022 = phi ptr [ %i.r, %bb.b ], [ %i.m, %.lr.ph ] ; 3 uses
  %i.s = icmp eq ptr %2, %.022
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 152
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !38
  %i.y = icmp ult i64 %i.f, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.f, ptr %i.w, align 8, !tbaa !38
  tail call fastcc void @setNStepsToLeaf(ptr noundef %0, ptr noundef nonnull %.022, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %i.z = tail call ptr @agnxtedge(ptr noundef %0, ptr noundef nonnull %.026, ptr noundef %1) #13 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76
}

declare ptr @agattr_text(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare hidden i64 @gv_list_append_slot_(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden void @gv_list_pop_front_(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @agxget(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @setChildSubtreeSpans(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %i.i = uitofp i64 %i.h to double
  %i.j = fdiv double %i.f, %i.i
  %i.k = tail call ptr @agfstedge(ptr noundef %0, ptr noundef %1) #13 ; 2 uses
  %.not28 = icmp eq ptr %i.k, null
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.029 = phi ptr [ %i.ak, %bb.g ], [ %i.k, %bb.a ] ; 4 uses
  %i.l = load i32, ptr %.029, align 8
  %i.m = and i32 %i.l, 3                          ; 2 uses
  %i.n = icmp eq i32 %i.m, 3
  %i.o = select i1 %i.n, i64 56, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.s = icmp eq i32 %i.m, 2
  %i.t = select i1 %i.s, i64 56, i64 -8
  %i.u = getelementptr inbounds i8, ptr %.029, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.024 = phi ptr [ %i.v, %bb.b ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.024, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !39
  %.not26 = icmp eq ptr %i.ab, %1
  br i1 %.not26, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !42
  %.not.i.i = tail call noundef i1 @llvm.is.fpclass.f64(double %i.ad, /* (pzero) */ i32 64)
  br i1 %.not.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
end_hunk_0
