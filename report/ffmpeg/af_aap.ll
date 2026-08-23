Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aap?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@filter_channels_double:bb.a
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !97
  %i.er = load i32, ptr %i.al, align 8, !tbaa !57
  %i.es = sext i32 %i.er to i64
  %i.et = tail call nsz double %i.eq(ptr noundef %i.bz, ptr noundef %i.cq, i64 noundef %i.es) #8, !inline_history !99 ; 3 uses
  %i.eu = load i32, ptr %i.dp, align 4, !tbaa !53 ; 2 uses
  %i.ev = icmp slt i32 %i.eu, 1
  %spec.select.i.i = select i1 %i.ev, i32 %i.ds, i32 %i.eu
  %storemerge.i.i = add nsw i32 %spec.select.i.i, -1
  store i32 %storemerge.i.i, ptr %i.dp, align 4, !tbaa !53
  %i.ew = fsub nsz double %i.bk, %i.et            ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 4 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !53 ; 2 uses
  %i.ez = add nsw i32 %i.ey, %i.cb
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.fa
  store double %i.ew, ptr %i.fb, align 8, !tbaa !93
  %i.fc = sext i32 %i.ey to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.fc
  store double %i.ew, ptr %i.fd, align 8, !tbaa !93
  %i.fe = icmp sgt i32 %i.cb, 0                   ; 2 uses
  br i1 %i.fe, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ff = icmp sgt i32 %i.ds, 0
  %i.fg = zext nneg i32 %i.cb to i64              ; 10 uses
  br i1 %i.ff, label %.lr.ph.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %.lr.ph.i
  %i.fh = add nuw i32 %i.cb, 1
  %i.fi = add nsw i64 %i.fg, -1
  br label %.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.fj = load i32, ptr %i.dw, align 4, !tbaa !53 ; 2 uses
  %wide.trip.count215.i = zext nneg i32 %i.ds to i64 ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count215.i, 1
  %i.fk = icmp eq i32 %i.ds, 1
  %unroll_iter = and i64 %wide.trip.count215.i, 2147483646
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod120 = trunc i32 %i.ds to i1
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split185.us.us.i, %.lr.ph.split.us.i
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i, %.split185.us.us.i ], [ 0, %.lr.ph.split.us.i ] ; 6 uses
  %indvars224.i = trunc i64 %indvars.iv217.i to i32 ; 2 uses
  %i.fl = mul nuw nsw i64 %indvars.iv217.i, %i.fg
  %invariant.op.us.us.i = add i32 %i.fj, %indvars224.i ; 3 uses
  %invariant.gep266.i = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.fl
  %invariant.gep268.i = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv217.i ; 2 uses
  br label %.preheader178.us.us.i

.preheader178.us.us.i:                            ; preds = %bb.c, %.split.us.us.i
  %indvars.iv219.i = phi i64 [ %indvars.iv.next220.i, %bb.c ], [ %indvars.iv217.i, %.split.us.us.i ] ; 5 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv219.i to i32
  %invariant.op181.us.us.i = add i32 %i.fj, %i.fm ; 3 uses
  br i1 %i.fk, label %.epil.preheader, label %.preheader178.us.us.i.new

.preheader178.us.us.i.new:                        ; preds = %.preheader178.us.us.i, %.preheader178.us.us.i.new
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i.1, %.preheader178.us.us.i.new ], [ 0, %.preheader178.us.us.i ] ; 3 uses
  %.0163179.us.us.i = phi double [ %i.gd, %.preheader178.us.us.i.new ], [ 0.000000e+00, %.preheader178.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %.preheader178.us.us.i.new ], [ 0, %.preheader178.us.us.i ]
  %i.fn = trunc nuw nsw i64 %indvars.iv212.i to i32 ; 2 uses
  %.reass.us.us.i = add i32 %invariant.op.us.us.i, %i.fn
  %i.fo = sext i32 %.reass.us.us.i to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.fo
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !93
  %.reass182.us.us.i = add i32 %invariant.op181.us.us.i, %i.fn
  %i.fr = sext i32 %.reass182.us.us.i to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !93
  %i.fu = tail call nsz double @llvm.fmuladd.f64(double %i.fq, double %i.ft, double %.0163179.us.us.i)
  %i.fv = trunc i64 %indvars.iv212.i to i32
  %i.fw = or disjoint i32 %i.fv, 1                ; 2 uses
  %.reass.us.us.i.1 = add i32 %invariant.op.us.us.i, %i.fw
  %i.fx = sext i32 %.reass.us.us.i.1 to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !93
  %.reass182.us.us.i.1 = add i32 %invariant.op181.us.us.i, %i.fw
  %i.ga = sext i32 %.reass182.us.us.i.1 to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !93
  %i.gd = tail call nsz double @llvm.fmuladd.f64(double %i.fz, double %i.gc, double %i.fu) ; 3 uses
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader178.us.us.i.new, !llvm.loop !100

bb.b:                                             ; preds = %._crit_edge.us.us.i
  %i.ge = mul nuw nsw i64 %indvars.iv219.i, %i.fg
  %gep269.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep268.i, i64 %i.ge
  store double %.lcssa, ptr %gep269.i, align 8, !tbaa !93
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.us.us.i, %bb.b
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %exitcond223.not.i = icmp eq i64 %indvars.iv.next220.i, %i.fg
  br i1 %exitcond223.not.i, label %.split185.us.us.i, label %.preheader178.us.us.i, !llvm.loop !101

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader178.us.us.i.new
  br i1 %lcmp.mod118.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader178.us.us.i
  %indvars.iv212.i.epil.init = phi i64 [ 0, %.preheader178.us.us.i ], [ %indvars.iv.next213.i.1, %._crit_edge.us.us.i.unr-lcssa ]
  %.0163179.us.us.i.epil.init = phi double [ 0.000000e+00, %.preheader178.us.us.i ], [ %i.gd, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.gf = trunc nuw nsw i64 %indvars.iv212.i.epil.init to i32 ; 2 uses
  %.reass.us.us.i.epil = add i32 %invariant.op.us.us.i, %i.gf
  %i.gg = sext i32 %.reass.us.us.i.epil to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !93
  %.reass182.us.us.i.epil = add i32 %invariant.op181.us.us.i, %i.gf
  %i.gj = sext i32 %.reass182.us.us.i.epil to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.gj
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !93
  %i.gm = tail call nsz double @llvm.fmuladd.f64(double %i.gi, double %i.gl, double %.0163179.us.us.i.epil.init)
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi double [ %i.gd, %._crit_edge.us.us.i.unr-lcssa ], [ %i.gm, %.epil.preheader ] ; 2 uses
  %gep267.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep266.i, i64 %indvars.iv219.i
  store double %.lcssa, ptr %gep267.i, align 8, !tbaa !93
  %.not.us.us.i = icmp eq i64 %indvars.iv217.i, %indvars.iv219.i
  br i1 %.not.us.us.i, label %bb.c, label %bb.b

.split185.us.us.i:                                ; preds = %bb.c
  %i.gn = mul nuw nsw i32 %i.cb, %indvars224.i
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep268.i, i64 %i.go ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !93
  %i.gr = fadd nsz double %i.gq, %i.dr
  store double %i.gr, ptr %i.gp, align 8, !tbaa !93
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %exitcond226.not.i = icmp eq i64 %indvars.iv.next218.i, %i.fg
  br i1 %exitcond226.not.i, label %._crit_edge.i, label %.split.us.us.i, !llvm.loop !102

._crit_edge.i:                                    ; preds = %.split185.i, %.split185.us.us.i, %.lr.ph
  %.not86.i.i = icmp slt i32 %i.cb, 0
  br i1 %.not86.i.i, label %.preheader176.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %i.gs = add nuw i32 %i.cb, 1
  %wide.trip.count.i.i = zext i32 %i.gs to i64    ; 3 uses
  %min.iters.check103 = icmp ult i32 %i.cb, 7
  br i1 %min.iters.check103, label %.lr.ph.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec105 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next108, %vector.body106 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph104 ], [ %vec.ind.next, %vector.body106 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index107 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <4 x i32> %vec.ind, ptr %i.gt, align 4, !tbaa !53
  store <4 x i32> %step.add, ptr %i.gu, align 4, !tbaa !53
  %index.next108 = add nuw i64 %index107, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gv = icmp eq i64 %index.next108, %n.vec105
  br i1 %i.gv, label %middle.block109, label %vector.body106, !llvm.loop !103

middle.block109:                                  ; preds = %vector.body106
  %cmp.n110 = icmp eq i64 %n.vec105, %wide.trip.count.i.i
  br i1 %cmp.n110, label %.preheader85.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block109
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec105, %middle.block109 ]
  br label %.lr.ph.i.i

.preheader85.i.i:                                 ; preds = %.lr.ph.i.i, %middle.block109
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %.preheader176.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader85.i.i
  %i.gw = zext nneg i32 %i.cb to i64              ; 19 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.gw ; 2 uses
  %i.gy = shl nuw nsw i64 %i.gw, 3                ; 2 uses
  %i.gz = add nsw i64 %i.gw, -1
  %i.ha = add nsw i64 %i.gw, -1
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i
  %i.hc = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !53
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader85.i.i, label %.lr.ph.i.i, !llvm.loop !104

.loopexit.i.i:                                    ; preds = %._crit_edge.us.i.i, %bb.f
  %indvars.iv.next108.i.i = add nuw nsw i64 %indvars.iv107.i.i, 1
  %exitcond121.not.i.i = icmp eq i64 %indvars.iv.next101.i.i, %i.gw
  br i1 %exitcond121.not.i.i, label %.preheader51.us.us.i.i.preheader, label %.preheader.i.i, !llvm.loop !105

.preheader51.us.us.i.i.preheader:                 ; preds = %.unr-lcssa, %.loopexit.i.i
  br label %.preheader51.us.us.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.lr.ph.i.i
  %indvars.iv107.i.i = phi i64 [ 1, %.preheader.lr.ph.i.i ], [ %indvars.iv.next108.i.i, %.loopexit.i.i ] ; 6 uses
  %indvars.iv100.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next101.i.i, %.loopexit.i.i ] ; 19 uses
  %i.hd = sub nsw i64 %i.gw, %indvars.iv100.i.i
  %i.he = xor i64 %indvars.iv100.i.i, -1
  %i.hf = add nsw i64 %i.he, %i.gw                ; 3 uses
  %i.hg = shl nuw nsw i64 %indvars.iv100.i.i, 3
  %4 = add nuw i64 %i.hg, 8                       ; 2 uses
  %i.hh = trunc nuw nsw i64 %indvars.iv100.i.i to i32 ; 2 uses
  %xtraiter121 = and i64 %i.hd, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i.i
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv100.i.i
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !75
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %indvars.iv100.i.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !93 ; 2 uses
  %i.hm = tail call nsz double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp nsz one double %i.hl, 0.000000e+00 ; 2 uses
  %.177.i.i.prol = select nsz i1 %i.hn, double %i.hm, double 0.000000e+00 ; 2 uses
  %i.ho = trunc nuw nsw i64 %indvars.iv100.i.i to i32
  %.175.i.i.prol = select i1 %i.hn, i32 %i.ho, i32 %i.hh ; 2 uses
  %indvars.iv.next103.i.i.prol = add nuw nsw i64 %indvars.iv100.i.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i.i
  %.177.i.i.lcssa.unr = phi double [ poison, %.preheader.i.i ], [ %.177.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.175.i.i.lcssa.unr = phi i32 [ poison, %.preheader.i.i ], [ %.175.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv102.i.i.unr = phi i64 [ %indvars.iv100.i.i, %.preheader.i.i ], [ %indvars.iv.next103.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.07489.i.i.unr = phi i32 [ %i.hh, %.preheader.i.i ], [ %.175.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.07688.i.i.unr = phi double [ 0.000000e+00, %.preheader.i.i ], [ %.177.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.hp = icmp eq i64 %indvars.iv100.i.i, %i.ha
  br i1 %i.hp, label %.unr-lcssa, label %.preheader.i.i.new

.unr-lcssa:                                       ; preds = %.preheader.i.i.new, %.prol.loopexit
  %.177.i.i.lcssa = phi double [ %.177.i.i.lcssa.unr, %.prol.loopexit ], [ %.177.i.i.1, %.preheader.i.i.new ]
  %.175.i.i.lcssa = phi i32 [ %.175.i.i.lcssa.unr, %.prol.loopexit ], [ %.175.i.i.1, %.preheader.i.i.new ] ; 2 uses
  %i.hq = fcmp nsz uge double %.177.i.i.lcssa, f0x3EE4F8B580000000
  br i1 %i.hq, label %bb.d, label %.preheader51.us.us.i.i.preheader

.preheader.i.i.new:                               ; preds = %.prol.loopexit, %.preheader.i.i.new
  %indvars.iv102.i.i = phi i64 [ %indvars.iv.next103.i.i.1, %.preheader.i.i.new ], [ %indvars.iv102.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.07489.i.i = phi i32 [ %.175.i.i.1, %.preheader.i.i.new ], [ %.07489.i.i.unr, %.prol.loopexit ]
  %.07688.i.i = phi double [ %.177.i.i.1, %.preheader.i.i.new ], [ %.07688.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv102.i.i
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !75
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv100.i.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !93
  %i.hv = tail call nsz double @llvm.fabs.f64(double %i.hu) ; 2 uses
  %i.hw = fcmp nsz ogt double %i.hv, %.07688.i.i  ; 2 uses
  %.177.i.i = select nsz i1 %i.hw, double %i.hv, double %.07688.i.i ; 2 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv102.i.i to i32
  %.175.i.i = select i1 %i.hw, i32 %i.hx, i32 %.07489.i.i
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next103.i.i
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !75
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv100.i.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !93
  %i.ic = tail call nsz double @llvm.fabs.f64(double %i.ib) ; 2 uses
  %i.id = fcmp nsz ogt double %i.ic, %.177.i.i    ; 2 uses
  %.177.i.i.1 = select nsz i1 %i.id, double %i.ic, double %.177.i.i ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv.next103.i.i to i32
  %.175.i.i.1 = select i1 %i.id, i32 %i.ie, i32 %.175.i.i ; 2 uses
  %indvars.iv.next103.i.i.1 = add nuw nsw i64 %indvars.iv102.i.i, 2 ; 2 uses
  %exitcond106.not.i.i.1 = icmp eq i64 %indvars.iv.next103.i.i.1, %i.gw
  br i1 %exitcond106.not.i.i.1, label %.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !106

bb.d:                                             ; preds = %.unr-lcssa
  %i.if = zext i32 %.175.i.i.lcssa to i64
  %.not83.i.i = icmp eq i64 %indvars.iv100.i.i, %i.if
  br i1 %.not83.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ig = sext i32 %.175.i.i.lcssa to i64         ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !53
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv100.i.i ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !53
  store i32 %i.ik, ptr %i.ih, align 4, !tbaa !53
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !53
  %i.il = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.ig ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !75
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv100.i.i ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !75
  store ptr %i.io, ptr %i.il, align 8, !tbaa !75
  store ptr %i.im, ptr %i.in, align 8, !tbaa !75
  %i.ip = load i32, ptr %i.gx, align 4, !tbaa !53
  %i.iq = add nsw i32 %i.ip, 1
  store i32 %i.iq, ptr %i.gx, align 4, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next101.i.i = add nuw nsw i64 %indvars.iv100.i.i, 1 ; 3 uses
  %i.ir = icmp samesign ult i64 %indvars.iv.next101.i.i, %i.gw
  br i1 %i.ir, label %.lr.ph95.i.i, label %.loopexit.i.i

.lr.ph95.i.i:                                     ; preds = %bb.f
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv100.i.i
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !75 ; 7 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv100.i.i
  %scevgep81 = getelementptr i8, ptr %i.it, i64 %4
  %scevgep82 = getelementptr i8, ptr %i.it, i64 %i.gy
  %min.iters.check87 = icmp ult i64 %i.hf, 4
  %n.vec89 = and i64 %i.hf, -4                    ; 3 uses
  %i.iv = add i64 %indvars.iv107.i.i, %n.vec89
  %cmp.n100 = icmp eq i64 %i.hf, %n.vec89
  br label %.lr.ph92.us.i.i

.lr.ph92.us.i.i:                                  ; preds = %._crit_edge.us.i.i, %.lr.ph95.i.i
  %indvars.iv114.i.i = phi i64 [ %indvars.iv.next115.i.i, %._crit_edge.us.i.i ], [ %indvars.iv107.i.i, %.lr.ph95.i.i ] ; 2 uses
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !93
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv114.i.i
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !75 ; 7 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv100.i.i ; 6 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !93
  %i.jb = fdiv nsz double %i.ja, %i.iw
  store double %i.jb, ptr %i.iz, align 8, !tbaa !93
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph92.us.i.i
  %scevgep79 = getelementptr nuw i8, ptr %i.iy, i64 %4
  %scevgep80 = getelementptr i8, ptr %i.iy, i64 %i.gy
  %bound083 = icmp ult ptr %scevgep79, %scevgep82
  %bound184 = icmp ult ptr %scevgep81, %scevgep80
  %found.conflict85 = and i1 %bound083, %bound184
  br i1 %found.conflict85, label %scalar.ph86.preheader, label %vector.body90

vector.body90:                                    ; preds = %vector.memcheck78, %vector.body90
  %index91 = phi i64 [ %index.next98, %vector.body90 ], [ 0, %vector.memcheck78 ] ; 2 uses
  %i.jc = add nuw i64 %indvars.iv107.i.i, %index91 ; 2 uses
  %i.jd = load double, ptr %i.iz, align 8, !tbaa !93, !alias.scope !107
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.jc ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load92 = load <2 x double>, ptr %i.je, align 8, !tbaa !93, !alias.scope !110
  %wide.load93 = load <2 x double>, ptr %i.jf, align 8, !tbaa !93, !alias.scope !110
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.jc ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16 ; 2 uses
  %wide.load94 = load <2 x double>, ptr %i.jg, align 8, !tbaa !93, !alias.scope !112, !noalias !110
  %wide.load95 = load <2 x double>, ptr %i.jh, align 8, !tbaa !93, !alias.scope !112, !noalias !110
  %.scalar = fneg nsz double %i.jd
  %i.ji = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %wide.load92, <2 x double> %wide.load94)
  %i.jl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %wide.load93, <2 x double> %wide.load95)
  store <2 x double> %i.jk, ptr %i.jg, align 8, !tbaa !93, !alias.scope !112, !noalias !110
  store <2 x double> %i.jl, ptr %i.jh, align 8, !tbaa !93, !alias.scope !112, !noalias !110
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.jm = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.jm, label %middle.block99, label %vector.body90, !llvm.loop !114

middle.block99:                                   ; preds = %vector.body90
  br i1 %cmp.n100, label %._crit_edge.us.i.i, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck78, %.lr.ph92.us.i.i, %middle.block99
  %indvars.iv109.i.i.ph = phi i64 [ %indvars.iv107.i.i, %vector.memcheck78 ], [ %indvars.iv107.i.i, %.lr.ph92.us.i.i ], [ %i.iv, %middle.block99 ] ; 6 uses
  %i.jn = sub i64 %i.gw, %indvars.iv109.i.i.ph
  %xtraiter123 = and i64 %i.jn, 1
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %scalar.ph86.prol.loopexit, label %scalar.ph86.prol

scalar.ph86.prol:                                 ; preds = %scalar.ph86.preheader
  %i.jo = load double, ptr %i.iz, align 8, !tbaa !93
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv109.i.i.ph
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !93
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv109.i.i.ph ; 2 uses
  %i.js = load double, ptr %i.jr, align 8, !tbaa !93
  %i.jt = fneg nsz double %i.jo
  %i.ju = tail call nsz double @llvm.fmuladd.f64(double %i.jt, double %i.jq, double %i.js)
  store double %i.ju, ptr %i.jr, align 8, !tbaa !93
  %indvars.iv.next110.i.i.prol = add nuw nsw i64 %indvars.iv109.i.i.ph, 1
  br label %scalar.ph86.prol.loopexit

scalar.ph86.prol.loopexit:                        ; preds = %scalar.ph86.prol, %scalar.ph86.preheader
  %indvars.iv109.i.i.unr = phi i64 [ %indvars.iv109.i.i.ph, %scalar.ph86.preheader ], [ %indvars.iv.next110.i.i.prol, %scalar.ph86.prol ]
  %i.jv = icmp eq i64 %i.gz, %indvars.iv109.i.i.ph
  br i1 %i.jv, label %._crit_edge.us.i.i, label %scalar.ph86

scalar.ph86:                                      ; preds = %scalar.ph86.prol.loopexit, %scalar.ph86
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i.1, %scalar.ph86 ], [ %indvars.iv109.i.i.unr, %scalar.ph86.prol.loopexit ] ; 4 uses
  %i.jw = load double, ptr %i.iz, align 8, !tbaa !93
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv109.i.i
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !93
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv109.i.i ; 2 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !93
  %i.kb = fneg nsz double %i.jw
  %i.kc = tail call nsz double @llvm.fmuladd.f64(double %i.kb, double %i.jy, double %i.ka)
  store double %i.kc, ptr %i.jz, align 8, !tbaa !93
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 2 uses
  %i.kd = load double, ptr %i.iz, align 8, !tbaa !93
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.next110.i.i
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !93
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv.next110.i.i ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !93
  %i.ki = fneg nsz double %i.kd
  %i.kj = tail call nsz double @llvm.fmuladd.f64(double %i.ki, double %i.kf, double %i.kh)
  store double %i.kj, ptr %i.kg, align 8, !tbaa !93
  %indvars.iv.next110.i.i.1 = add nuw nsw i64 %indvars.iv109.i.i, 2 ; 2 uses
  %exitcond113.not.i.i.1 = icmp eq i64 %indvars.iv.next110.i.i.1, %i.gw
  br i1 %exitcond113.not.i.i.1, label %._crit_edge.us.i.i, label %scalar.ph86, !llvm.loop !115

._crit_edge.us.i.i:                               ; preds = %scalar.ph86.prol.loopexit, %scalar.ph86, %middle.block99
  %indvars.iv.next115.i.i = add nuw nsw i64 %indvars.iv114.i.i, 1 ; 2 uses
  %exitcond118.not.i.i = icmp eq i64 %indvars.iv.next115.i.i, %i.gw
  br i1 %exitcond118.not.i.i, label %.loopexit.i.i, label %.lr.ph92.us.i.i, !llvm.loop !116

.preheader51.us.us.i.i:                           ; preds = %.preheader51.us.us.i.i.preheader, %._crit_edge62.us.us.i.i
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %._crit_edge62.us.us.i.i ], [ 0, %.preheader51.us.us.i.i.preheader ] ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.us.us.i.i, %.preheader51.us.us.i.i
  %indvars.iv66.i.i = phi i64 [ %indvars.iv.next67.i.i, %._crit_edge.us.us.i.i ], [ 0, %.preheader51.us.us.i.i ] ; 9 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv66.i.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !53
  %i.km = zext i32 %i.kl to i64
  %i.kn = icmp eq i64 %indvars.iv77.i.i, %i.km
  %i.ko = select nsz i1 %i.kn, double 1.000000e+00, double 0.000000e+00 ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv66.i.i
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !75
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv77.i.i ; 4 uses
  store double %i.ko, ptr %i.kr, align 8, !tbaa !93
  %.not.i171.i = icmp eq i64 %indvars.iv66.i.i, 0
  br i1 %.not.i171.i, label %._crit_edge.us.us.i.i, label %.lr.ph.us.us.i.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us.i.i.new
  %indvars.iv.i172.i = phi i64 [ 0, %.lr.ph.us.us.i.i.new ], [ %indvars.iv.next.i173.i.1, %bb.h ] ; 4 uses
  %i.ks = phi double [ %i.ko, %.lr.ph.us.us.i.i.new ], [ %i.li, %bb.h ]
  %niter130 = phi i64 [ 0, %.lr.ph.us.us.i.i.new ], [ %niter130.next.1, %bb.h ]
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv.i172.i
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !93
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i172.i
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !75
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv77.i.i
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !93
  %i.kz = fneg nsz double %i.ku
  %i.la = tail call nsz double @llvm.fmuladd.f64(double %i.kz, double %i.ky, double %i.ks) ; 2 uses
  store double %i.la, ptr %i.kr, align 8, !tbaa !93
  %indvars.iv.next.i173.i = or disjoint i64 %indvars.iv.i172.i, 1 ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv.next.i173.i
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !93
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i173.i
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !75
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv77.i.i
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !93
  %i.lh = fneg nsz double %i.lc
  %i.li = tail call nsz double @llvm.fmuladd.f64(double %i.lh, double %i.lg, double %i.la) ; 3 uses
  store double %i.li, ptr %i.kr, align 8, !tbaa !93
  %indvars.iv.next.i173.i.1 = add nuw nsw i64 %indvars.iv.i172.i, 2 ; 2 uses
  %niter130.next.1 = add i64 %niter130, 2         ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !117

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %bb.h
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %._crit_edge.us.us.i.i, label %.epil.preheader125

.epil.preheader125:                               ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %.lr.ph.us.us.i.i
  %indvars.iv.i172.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i.i ], [ %indvars.iv.next.i173.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.ko, %.lr.ph.us.us.i.i ], [ %i.li, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = trunc i64 %indvars.iv66.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv.i172.i.epil.init
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !93
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i172.i.epil.init
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !75
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv77.i.i
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !93
  %i.lp = fneg nsz double %i.lk
  %i.lq = tail call nsz double @llvm.fmuladd.f64(double %i.lp, double %i.lo, double %.epil.init)
  store double %i.lq, ptr %i.kr, align 8, !tbaa !93
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %.epil.preheader125, %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %bb.g
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %i.gw
  br i1 %exitcond70.not.i.i, label %.preheader.us.us.i.i, label %bb.g, !llvm.loop !118

.lr.ph56.us.us.i.i:                               ; preds = %.preheader.us.us.i.i, %.lr.ph56.us.us.i.i
  %indvars.iv73.i.i = phi i64 [ %indvars.iv.next74.i.i, %.lr.ph56.us.us.i.i ], [ %indvars.iv71.i.i, %.preheader.us.us.i.i ] ; 3 uses
  %i.lr = phi double [ %i.lz, %.lr.ph56.us.us.i.i ], [ %.promoted58.us.us.i.i, %.preheader.us.us.i.i ]
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv73.i.i
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !93
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv73.i.i
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !75
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %indvars.iv77.i.i
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !93
  %i.ly = fneg nsz double %i.lt
  %i.lz = tail call nsz double @llvm.fmuladd.f64(double %i.ly, double %i.lx, double %i.lr) ; 3 uses
  store double %i.lz, ptr %i.mm, align 8, !tbaa !93
  %indvars.iv.next74.i.i = add nuw nsw i64 %indvars.iv73.i.i, 1 ; 2 uses
  %i.ma = trunc nuw i64 %indvars.iv.next74.i.i to i32
  %i.mb = icmp sgt i32 %i.cb, %i.ma
  br i1 %i.mb, label %.lr.ph56.us.us.i.i, label %._crit_edge57.us.us.i.i, !llvm.loop !119

._crit_edge57.us.us.i.i:                          ; preds = %.lr.ph56.us.us.i.i, %.preheader.us.us.i.i
  %i.mc = phi double [ %.promoted58.us.us.i.i, %.preheader.us.us.i.i ], [ %i.lz, %.lr.ph56.us.us.i.i ]
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %indvars.iv.next72.i.i
  %i.me = load double, ptr %i.md, align 8, !tbaa !93
  %i.mf = fdiv nsz double %i.mc, %i.me
  store double %i.mf, ptr %i.mm, align 8, !tbaa !93
  %i.mg = icmp sgt i64 %indvars.iv71.i.i, 1
  br i1 %i.mg, label %.preheader.us.us.i.i, label %._crit_edge62.us.us.i.i, !llvm.loop !120

.preheader.us.us.i.i:                             ; preds = %._crit_edge.us.us.i.i, %._crit_edge57.us.us.i.i
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i, %._crit_edge57.us.us.i.i ], [ %i.gw, %._crit_edge.us.us.i.i ] ; 4 uses
  %indvars.iv.next72.i.i = add nsw i64 %indvars.iv71.i.i, -1 ; 4 uses
  %i.mh = icmp slt i64 %indvars.iv71.i.i, %i.gw
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next72.i.i
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !75 ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next72.i.i
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !75
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv77.i.i ; 3 uses
  %.promoted58.us.us.i.i = load double, ptr %i.mm, align 8, !tbaa !93 ; 2 uses
  br i1 %i.mh, label %.lr.ph56.us.us.i.i, label %._crit_edge57.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %bb.g
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv66.i.i
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !75 ; 3 uses
  %xtraiter126 = and i64 %indvars.iv66.i.i, 1
  %i.mp = icmp eq i64 %indvars.iv66.i.i, 1
  br i1 %i.mp, label %.epil.preheader125, label %.lr.ph.us.us.i.i.new

end_hunk_0
begin_hunk_1_@filter_channels_float:bb.a
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !141
  %i.ep = load i32, ptr %i.al, align 8, !tbaa !57
  %i.eq = tail call nsz float %i.eo(ptr noundef %i.bz, ptr noundef %i.cq, i32 noundef %i.ep) #8, !inline_history !142 ; 3 uses
  %i.er = load i32, ptr %i.dp, align 4, !tbaa !53 ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  %spec.select.i.i = select i1 %i.es, i32 %i.dr, i32 %i.er
  %storemerge.i.i = add nsw i32 %spec.select.i.i, -1
  store i32 %storemerge.i.i, ptr %i.dp, align 4, !tbaa !53
  %i.et = fsub nsz float %i.bk, %i.eq             ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dp, i64 4 ; 4 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !53 ; 2 uses
  %i.ew = add nsw i32 %i.ev, %i.cb
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ex
  store float %i.et, ptr %i.ey, align 4, !tbaa !140
  %i.ez = sext i32 %i.ev to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ez
  store float %i.et, ptr %i.fa, align 4, !tbaa !140
  %i.fb = icmp sgt i32 %i.cb, 0                   ; 2 uses
  br i1 %i.fb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.fc = icmp sgt i32 %i.dr, 0
  %i.fd = zext nneg i32 %i.cb to i64              ; 10 uses
  br i1 %i.fc, label %.lr.ph.split.us.i, label %.split.preheader.i

.split.preheader.i:                               ; preds = %.lr.ph.i
  %i.fe = add nuw i32 %i.cb, 1
  %i.ff = add nsw i64 %i.fd, -1
  br label %.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.fg = load i32, ptr %i.du, align 4, !tbaa !53 ; 2 uses
  %wide.trip.count215.i = zext nneg i32 %i.dr to i64 ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count215.i, 1
  %i.fh = icmp eq i32 %i.dr, 1
  %unroll_iter = and i64 %wide.trip.count215.i, 2147483646
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod120 = trunc i32 %i.dr to i1
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split185.us.us.i, %.lr.ph.split.us.i
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i, %.split185.us.us.i ], [ 0, %.lr.ph.split.us.i ] ; 6 uses
  %indvars224.i = trunc i64 %indvars.iv217.i to i32 ; 2 uses
  %i.fi = mul nuw nsw i64 %indvars.iv217.i, %i.fd
  %invariant.op.us.us.i = add i32 %i.fg, %indvars224.i ; 3 uses
  %invariant.gep266.i = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.fi
  %invariant.gep268.i = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv217.i ; 2 uses
  br label %.preheader178.us.us.i

.preheader178.us.us.i:                            ; preds = %bb.c, %.split.us.us.i
  %indvars.iv219.i = phi i64 [ %indvars.iv.next220.i, %bb.c ], [ %indvars.iv217.i, %.split.us.us.i ] ; 5 uses
  %i.fj = trunc nuw nsw i64 %indvars.iv219.i to i32
  %invariant.op181.us.us.i = add i32 %i.fg, %i.fj ; 3 uses
  br i1 %i.fh, label %.epil.preheader, label %.preheader178.us.us.i.new

.preheader178.us.us.i.new:                        ; preds = %.preheader178.us.us.i, %.preheader178.us.us.i.new
  %indvars.iv212.i = phi i64 [ %indvars.iv.next213.i.1, %.preheader178.us.us.i.new ], [ 0, %.preheader178.us.us.i ] ; 3 uses
  %.0163179.us.us.i = phi float [ %i.ga, %.preheader178.us.us.i.new ], [ 0.000000e+00, %.preheader178.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %.preheader178.us.us.i.new ], [ 0, %.preheader178.us.us.i ]
  %i.fk = trunc nuw nsw i64 %indvars.iv212.i to i32 ; 2 uses
  %.reass.us.us.i = add i32 %invariant.op.us.us.i, %i.fk
  %i.fl = sext i32 %.reass.us.us.i to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !140
  %.reass182.us.us.i = add i32 %invariant.op181.us.us.i, %i.fk
  %i.fo = sext i32 %.reass182.us.us.i to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fo
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !140
  %i.fr = tail call nsz float @llvm.fmuladd.f32(float %i.fn, float %i.fq, float %.0163179.us.us.i)
  %i.fs = trunc i64 %indvars.iv212.i to i32
  %i.ft = or disjoint i32 %i.fs, 1                ; 2 uses
  %.reass.us.us.i.1 = add i32 %invariant.op.us.us.i, %i.ft
  %i.fu = sext i32 %.reass.us.us.i.1 to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !140
  %.reass182.us.us.i.1 = add i32 %invariant.op181.us.us.i, %i.ft
  %i.fx = sext i32 %.reass182.us.us.i.1 to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.fx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !140
  %i.ga = tail call nsz float @llvm.fmuladd.f32(float %i.fw, float %i.fz, float %i.fr) ; 3 uses
  %indvars.iv.next213.i.1 = add nuw nsw i64 %indvars.iv212.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.preheader178.us.us.i.new, !llvm.loop !143

bb.b:                                             ; preds = %._crit_edge.us.us.i
  %i.gb = mul nuw nsw i64 %indvars.iv219.i, %i.fd
  %gep269.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep268.i, i64 %i.gb
  store float %.lcssa, ptr %gep269.i, align 4, !tbaa !140
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.us.us.i, %bb.b
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %exitcond223.not.i = icmp eq i64 %indvars.iv.next220.i, %i.fd
  br i1 %exitcond223.not.i, label %.split185.us.us.i, label %.preheader178.us.us.i, !llvm.loop !144

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.preheader178.us.us.i.new
  br i1 %lcmp.mod118.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.preheader178.us.us.i
  %indvars.iv212.i.epil.init = phi i64 [ 0, %.preheader178.us.us.i ], [ %indvars.iv.next213.i.1, %._crit_edge.us.us.i.unr-lcssa ]
  %.0163179.us.us.i.epil.init = phi float [ 0.000000e+00, %.preheader178.us.us.i ], [ %i.ga, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.gc = trunc nuw nsw i64 %indvars.iv212.i.epil.init to i32 ; 2 uses
  %.reass.us.us.i.epil = add i32 %invariant.op.us.us.i, %i.gc
  %i.gd = sext i32 %.reass.us.us.i.epil to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !140
  %.reass182.us.us.i.epil = add i32 %invariant.op181.us.us.i, %i.gc
  %i.gg = sext i32 %.reass182.us.us.i.epil to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !140
  %i.gj = tail call nsz float @llvm.fmuladd.f32(float %i.gf, float %i.gi, float %.0163179.us.us.i.epil.init)
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.ga, %._crit_edge.us.us.i.unr-lcssa ], [ %i.gj, %.epil.preheader ] ; 2 uses
  %gep267.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep266.i, i64 %indvars.iv219.i
  store float %.lcssa, ptr %gep267.i, align 4, !tbaa !140
  %.not.us.us.i = icmp eq i64 %indvars.iv217.i, %indvars.iv219.i
  br i1 %.not.us.us.i, label %bb.c, label %bb.b

.split185.us.us.i:                                ; preds = %bb.c
  %i.gk = mul nuw nsw i32 %i.cb, %indvars224.i
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep268.i, i64 %i.gl ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !140
  %i.go = fadd nsz float %i.dq, %i.gn
  store float %i.go, ptr %i.gm, align 4, !tbaa !140
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %exitcond226.not.i = icmp eq i64 %indvars.iv.next218.i, %i.fd
  br i1 %exitcond226.not.i, label %._crit_edge.i, label %.split.us.us.i, !llvm.loop !145

._crit_edge.i:                                    ; preds = %.split185.i, %.split185.us.us.i, %.lr.ph
  %.not86.i.i = icmp slt i32 %i.cb, 0
  br i1 %.not86.i.i, label %.preheader176.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %i.gp = add nuw i32 %i.cb, 1
  %wide.trip.count.i.i = zext i32 %i.gp to i64    ; 3 uses
  %min.iters.check103 = icmp ult i32 %i.cb, 7
  br i1 %min.iters.check103, label %.lr.ph.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec105 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next108, %vector.body106 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph104 ], [ %vec.ind.next, %vector.body106 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %index107 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> %vec.ind, ptr %i.gq, align 4, !tbaa !53
  store <4 x i32> %step.add, ptr %i.gr, align 4, !tbaa !53
  %index.next108 = add nuw i64 %index107, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.gs = icmp eq i64 %index.next108, %n.vec105
  br i1 %i.gs, label %middle.block109, label %vector.body106, !llvm.loop !146

middle.block109:                                  ; preds = %vector.body106
  %cmp.n110 = icmp eq i64 %n.vec105, %wide.trip.count.i.i
  br i1 %cmp.n110, label %.preheader85.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block109
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec105, %middle.block109 ]
  br label %.lr.ph.i.i

.preheader85.i.i:                                 ; preds = %.lr.ph.i.i, %middle.block109
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %.preheader176.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader85.i.i
  %i.gt = zext nneg i32 %i.cb to i64              ; 19 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.gt ; 2 uses
  %i.gv = shl nuw nsw i64 %i.gt, 2                ; 2 uses
  %i.gw = add nsw i64 %i.gt, -1
  %i.gx = add nsw i64 %i.gt, -1
  br label %.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i
  %i.gz = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !53
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader85.i.i, label %.lr.ph.i.i, !llvm.loop !147

.loopexit.i.i:                                    ; preds = %._crit_edge.us.i.i, %bb.f
  %indvars.iv.next108.i.i = add nuw nsw i64 %indvars.iv107.i.i, 1
  %exitcond121.not.i.i = icmp eq i64 %indvars.iv.next101.i.i, %i.gt
  br i1 %exitcond121.not.i.i, label %.preheader51.us.us.i.i.preheader, label %.preheader.i.i, !llvm.loop !148

.preheader51.us.us.i.i.preheader:                 ; preds = %.unr-lcssa, %.loopexit.i.i
  br label %.preheader51.us.us.i.i

.preheader.i.i:                                   ; preds = %.loopexit.i.i, %.preheader.lr.ph.i.i
  %indvars.iv107.i.i = phi i64 [ 1, %.preheader.lr.ph.i.i ], [ %indvars.iv.next108.i.i, %.loopexit.i.i ] ; 6 uses
  %indvars.iv100.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next101.i.i, %.loopexit.i.i ] ; 19 uses
  %i.ha = sub nsw i64 %i.gt, %indvars.iv100.i.i
  %i.hb = xor i64 %indvars.iv100.i.i, -1
  %i.hc = add nsw i64 %i.hb, %i.gt                ; 3 uses
  %i.hd = shl nuw nsw i64 %indvars.iv100.i.i, 2
  %4 = add nuw i64 %i.hd, 4                       ; 2 uses
  %i.he = trunc nuw nsw i64 %indvars.iv100.i.i to i32 ; 2 uses
  %xtraiter121 = and i64 %i.ha, 1
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.i.i
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv100.i.i
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !84
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv100.i.i
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !140 ; 2 uses
  %i.hj = tail call nsz float @llvm.fabs.f32(float %i.hi)
  %i.hk = fcmp nsz one float %i.hi, 0.000000e+00  ; 2 uses
  %.177.i.i.prol = select nsz i1 %i.hk, float %i.hj, float 0.000000e+00 ; 2 uses
  %i.hl = trunc nuw nsw i64 %indvars.iv100.i.i to i32
  %.175.i.i.prol = select i1 %i.hk, i32 %i.hl, i32 %i.he ; 2 uses
  %indvars.iv.next103.i.i.prol = add nuw nsw i64 %indvars.iv100.i.i, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.i.i
  %.177.i.i.lcssa.unr = phi float [ poison, %.preheader.i.i ], [ %.177.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.175.i.i.lcssa.unr = phi i32 [ poison, %.preheader.i.i ], [ %.175.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv102.i.i.unr = phi i64 [ %indvars.iv100.i.i, %.preheader.i.i ], [ %indvars.iv.next103.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.07489.i.i.unr = phi i32 [ %i.he, %.preheader.i.i ], [ %.175.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.07688.i.i.unr = phi float [ 0.000000e+00, %.preheader.i.i ], [ %.177.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.hm = icmp eq i64 %indvars.iv100.i.i, %i.gx
  br i1 %i.hm, label %.unr-lcssa, label %.preheader.i.i.new

.unr-lcssa:                                       ; preds = %.preheader.i.i.new, %.prol.loopexit
  %.177.i.i.lcssa = phi float [ %.177.i.i.lcssa.unr, %.prol.loopexit ], [ %.177.i.i.1, %.preheader.i.i.new ]
  %.175.i.i.lcssa = phi i32 [ %.175.i.i.lcssa.unr, %.prol.loopexit ], [ %.175.i.i.1, %.preheader.i.i.new ] ; 2 uses
  %i.hn = fcmp nsz uge float %.177.i.i.lcssa, f0x3727C5AC
  br i1 %i.hn, label %bb.d, label %.preheader51.us.us.i.i.preheader

.preheader.i.i.new:                               ; preds = %.prol.loopexit, %.preheader.i.i.new
  %indvars.iv102.i.i = phi i64 [ %indvars.iv.next103.i.i.1, %.preheader.i.i.new ], [ %indvars.iv102.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.07489.i.i = phi i32 [ %.175.i.i.1, %.preheader.i.i.new ], [ %.07489.i.i.unr, %.prol.loopexit ]
  %.07688.i.i = phi float [ %.177.i.i.1, %.preheader.i.i.new ], [ %.07688.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv102.i.i
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !84
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %indvars.iv100.i.i
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !140
  %i.hs = tail call nsz float @llvm.fabs.f32(float %i.hr) ; 2 uses
  %i.ht = fcmp nsz ogt float %i.hs, %.07688.i.i   ; 2 uses
  %.177.i.i = select nsz i1 %i.ht, float %i.hs, float %.07688.i.i ; 2 uses
  %i.hu = trunc nuw nsw i64 %indvars.iv102.i.i to i32
  %.175.i.i = select i1 %i.ht, i32 %i.hu, i32 %.07489.i.i
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next103.i.i
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !84
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv100.i.i
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !140
  %i.hz = tail call nsz float @llvm.fabs.f32(float %i.hy) ; 2 uses
  %i.ia = fcmp nsz ogt float %i.hz, %.177.i.i     ; 2 uses
  %.177.i.i.1 = select nsz i1 %i.ia, float %i.hz, float %.177.i.i ; 2 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv.next103.i.i to i32
  %.175.i.i.1 = select i1 %i.ia, i32 %i.ib, i32 %.175.i.i ; 2 uses
  %indvars.iv.next103.i.i.1 = add nuw nsw i64 %indvars.iv102.i.i, 2 ; 2 uses
  %exitcond106.not.i.i.1 = icmp eq i64 %indvars.iv.next103.i.i.1, %i.gt
  br i1 %exitcond106.not.i.i.1, label %.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !149

bb.d:                                             ; preds = %.unr-lcssa
  %i.ic = zext i32 %.175.i.i.lcssa to i64
  %.not83.i.i = icmp eq i64 %indvars.iv100.i.i, %i.ic
  br i1 %.not83.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.id = sext i32 %.175.i.i.lcssa to i64         ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.id ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !53
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv100.i.i ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !53
  store i32 %i.ih, ptr %i.ie, align 4, !tbaa !53
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !53
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.id ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !84
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv100.i.i ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !84
  store ptr %i.il, ptr %i.ii, align 8, !tbaa !84
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !84
  %i.im = load i32, ptr %i.gu, align 4, !tbaa !53
  %i.in = add nsw i32 %i.im, 1
  store i32 %i.in, ptr %i.gu, align 4, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next101.i.i = add nuw nsw i64 %indvars.iv100.i.i, 1 ; 3 uses
  %i.io = icmp samesign ult i64 %indvars.iv.next101.i.i, %i.gt
  br i1 %i.io, label %.lr.ph95.i.i, label %.loopexit.i.i

.lr.ph95.i.i:                                     ; preds = %bb.f
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv100.i.i
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !84 ; 7 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv100.i.i
  %scevgep81 = getelementptr i8, ptr %i.iq, i64 %4
  %scevgep82 = getelementptr i8, ptr %i.iq, i64 %i.gv
  %min.iters.check87 = icmp ult i64 %i.hc, 8
  %n.vec89 = and i64 %i.hc, -8                    ; 3 uses
  %i.is = add i64 %indvars.iv107.i.i, %n.vec89
  %cmp.n100 = icmp eq i64 %i.hc, %n.vec89
  br label %.lr.ph92.us.i.i

.lr.ph92.us.i.i:                                  ; preds = %._crit_edge.us.i.i, %.lr.ph95.i.i
  %indvars.iv114.i.i = phi i64 [ %indvars.iv.next115.i.i, %._crit_edge.us.i.i ], [ %indvars.iv107.i.i, %.lr.ph95.i.i ] ; 2 uses
  %i.it = load float, ptr %i.ir, align 4, !tbaa !140
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv114.i.i
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !84 ; 7 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv100.i.i ; 6 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !140
  %i.iy = fdiv nsz float %i.ix, %i.it
  store float %i.iy, ptr %i.iw, align 4, !tbaa !140
  br i1 %min.iters.check87, label %scalar.ph86.preheader, label %vector.memcheck78

vector.memcheck78:                                ; preds = %.lr.ph92.us.i.i
  %scevgep79 = getelementptr nuw i8, ptr %i.iv, i64 %4
  %scevgep80 = getelementptr i8, ptr %i.iv, i64 %i.gv
  %bound083 = icmp ult ptr %scevgep79, %scevgep82
  %bound184 = icmp ult ptr %scevgep81, %scevgep80
  %found.conflict85 = and i1 %bound083, %bound184
  br i1 %found.conflict85, label %scalar.ph86.preheader, label %vector.body90

vector.body90:                                    ; preds = %vector.memcheck78, %vector.body90
  %index91 = phi i64 [ %index.next98, %vector.body90 ], [ 0, %vector.memcheck78 ] ; 2 uses
  %i.iz = add nuw i64 %indvars.iv107.i.i, %index91 ; 2 uses
  %i.ja = load float, ptr %i.iw, align 4, !tbaa !140, !alias.scope !150
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.iz ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %wide.load92 = load <4 x float>, ptr %i.jb, align 4, !tbaa !140, !alias.scope !153
  %wide.load93 = load <4 x float>, ptr %i.jc, align 4, !tbaa !140, !alias.scope !153
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.iz ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 2 uses
  %wide.load94 = load <4 x float>, ptr %i.jd, align 4, !tbaa !140, !alias.scope !155, !noalias !153
  %wide.load95 = load <4 x float>, ptr %i.je, align 4, !tbaa !140, !alias.scope !155, !noalias !153
  %.scalar = fneg nsz float %i.ja
  %i.jf = insertelement <4 x float> poison, float %.scalar, i64 0
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %wide.load92, <4 x float> %wide.load94)
  %i.ji = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jg, <4 x float> %wide.load93, <4 x float> %wide.load95)
  store <4 x float> %i.jh, ptr %i.jd, align 4, !tbaa !140, !alias.scope !155, !noalias !153
  store <4 x float> %i.ji, ptr %i.je, align 4, !tbaa !140, !alias.scope !155, !noalias !153
  %index.next98 = add nuw i64 %index91, 8         ; 2 uses
  %i.jj = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.jj, label %middle.block99, label %vector.body90, !llvm.loop !157

middle.block99:                                   ; preds = %vector.body90
  br i1 %cmp.n100, label %._crit_edge.us.i.i, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck78, %.lr.ph92.us.i.i, %middle.block99
  %indvars.iv109.i.i.ph = phi i64 [ %indvars.iv107.i.i, %vector.memcheck78 ], [ %indvars.iv107.i.i, %.lr.ph92.us.i.i ], [ %i.is, %middle.block99 ] ; 6 uses
  %i.jk = sub i64 %i.gt, %indvars.iv109.i.i.ph
  %xtraiter123 = and i64 %i.jk, 1
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %scalar.ph86.prol.loopexit, label %scalar.ph86.prol

scalar.ph86.prol:                                 ; preds = %scalar.ph86.preheader
  %i.jl = load float, ptr %i.iw, align 4, !tbaa !140
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv109.i.i.ph
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !140
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv109.i.i.ph ; 2 uses
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !140
  %i.jq = fneg nsz float %i.jl
  %i.jr = tail call nsz float @llvm.fmuladd.f32(float %i.jq, float %i.jn, float %i.jp)
  store float %i.jr, ptr %i.jo, align 4, !tbaa !140
  %indvars.iv.next110.i.i.prol = add nuw nsw i64 %indvars.iv109.i.i.ph, 1
  br label %scalar.ph86.prol.loopexit

scalar.ph86.prol.loopexit:                        ; preds = %scalar.ph86.prol, %scalar.ph86.preheader
  %indvars.iv109.i.i.unr = phi i64 [ %indvars.iv109.i.i.ph, %scalar.ph86.preheader ], [ %indvars.iv.next110.i.i.prol, %scalar.ph86.prol ]
  %i.js = icmp eq i64 %i.gw, %indvars.iv109.i.i.ph
  br i1 %i.js, label %._crit_edge.us.i.i, label %scalar.ph86

scalar.ph86:                                      ; preds = %scalar.ph86.prol.loopexit, %scalar.ph86
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i.1, %scalar.ph86 ], [ %indvars.iv109.i.i.unr, %scalar.ph86.prol.loopexit ] ; 4 uses
  %i.jt = load float, ptr %i.iw, align 4, !tbaa !140
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv109.i.i
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !140
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv109.i.i ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !140
  %i.jy = fneg nsz float %i.jt
  %i.jz = tail call nsz float @llvm.fmuladd.f32(float %i.jy, float %i.jv, float %i.jx)
  store float %i.jz, ptr %i.jw, align 4, !tbaa !140
  %indvars.iv.next110.i.i = add nuw nsw i64 %indvars.iv109.i.i, 1 ; 2 uses
  %i.ka = load float, ptr %i.iw, align 4, !tbaa !140
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next110.i.i
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !140
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next110.i.i ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !140
  %i.kf = fneg nsz float %i.ka
  %i.kg = tail call nsz float @llvm.fmuladd.f32(float %i.kf, float %i.kc, float %i.ke)
  store float %i.kg, ptr %i.kd, align 4, !tbaa !140
  %indvars.iv.next110.i.i.1 = add nuw nsw i64 %indvars.iv109.i.i, 2 ; 2 uses
  %exitcond113.not.i.i.1 = icmp eq i64 %indvars.iv.next110.i.i.1, %i.gt
  br i1 %exitcond113.not.i.i.1, label %._crit_edge.us.i.i, label %scalar.ph86, !llvm.loop !158

._crit_edge.us.i.i:                               ; preds = %scalar.ph86.prol.loopexit, %scalar.ph86, %middle.block99
  %indvars.iv.next115.i.i = add nuw nsw i64 %indvars.iv114.i.i, 1 ; 2 uses
  %exitcond118.not.i.i = icmp eq i64 %indvars.iv.next115.i.i, %i.gt
  br i1 %exitcond118.not.i.i, label %.loopexit.i.i, label %.lr.ph92.us.i.i, !llvm.loop !159

.preheader51.us.us.i.i:                           ; preds = %.preheader51.us.us.i.i.preheader, %._crit_edge62.us.us.i.i
  %indvars.iv77.i.i = phi i64 [ %indvars.iv.next78.i.i, %._crit_edge62.us.us.i.i ], [ 0, %.preheader51.us.us.i.i.preheader ] ; 8 uses
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.us.us.i.i, %.preheader51.us.us.i.i
  %indvars.iv66.i.i = phi i64 [ %indvars.iv.next67.i.i, %._crit_edge.us.us.i.i ], [ 0, %.preheader51.us.us.i.i ] ; 9 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv66.i.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !53
  %i.kj = zext i32 %i.ki to i64
  %i.kk = icmp eq i64 %indvars.iv77.i.i, %i.kj
  %i.kl = select nsz i1 %i.kk, float 1.000000e+00, float 0.000000e+00 ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv66.i.i
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !84
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kn, i64 %indvars.iv77.i.i ; 4 uses
  store float %i.kl, ptr %i.ko, align 4, !tbaa !140
  %.not.i171.i = icmp eq i64 %indvars.iv66.i.i, 0
  br i1 %.not.i171.i, label %._crit_edge.us.us.i.i, label %.lr.ph.us.us.i.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us.i.i.new
  %indvars.iv.i172.i = phi i64 [ 0, %.lr.ph.us.us.i.i.new ], [ %indvars.iv.next.i173.i.1, %bb.h ] ; 4 uses
  %i.kp = phi float [ %i.kl, %.lr.ph.us.us.i.i.new ], [ %i.lf, %bb.h ]
  %niter130 = phi i64 [ 0, %.lr.ph.us.us.i.i.new ], [ %niter130.next.1, %bb.h ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.i172.i
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !140
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i172.i
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !84
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv77.i.i
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !140
  %i.kw = fneg nsz float %i.kr
  %i.kx = tail call nsz float @llvm.fmuladd.f32(float %i.kw, float %i.kv, float %i.kp) ; 2 uses
  store float %i.kx, ptr %i.ko, align 4, !tbaa !140
  %indvars.iv.next.i173.i = or disjoint i64 %indvars.iv.i172.i, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.next.i173.i
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !140
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i173.i
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !84
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv77.i.i
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !140
  %i.le = fneg nsz float %i.kz
  %i.lf = tail call nsz float @llvm.fmuladd.f32(float %i.le, float %i.ld, float %i.kx) ; 3 uses
  store float %i.lf, ptr %i.ko, align 4, !tbaa !140
  %indvars.iv.next.i173.i.1 = add nuw nsw i64 %indvars.iv.i172.i, 2 ; 2 uses
  %niter130.next.1 = add i64 %niter130, 2         ; 2 uses
  %niter130.ncmp.1 = icmp eq i64 %niter130.next.1, %unroll_iter129
  br i1 %niter130.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !160

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %bb.h
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %._crit_edge.us.us.i.i, label %.epil.preheader125

.epil.preheader125:                               ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %.lr.ph.us.us.i.i
  %indvars.iv.i172.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i.i ], [ %indvars.iv.next.i173.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ %i.kl, %.lr.ph.us.us.i.i ], [ %i.lf, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = trunc i64 %indvars.iv66.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.i172.i.epil.init
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !140
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i172.i.epil.init
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !84
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %indvars.iv77.i.i
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !140
  %i.lm = fneg nsz float %i.lh
  %i.ln = tail call nsz float @llvm.fmuladd.f32(float %i.lm, float %i.ll, float %.epil.init)
  store float %i.ln, ptr %i.ko, align 4, !tbaa !140
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %.epil.preheader125, %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %bb.g
  %indvars.iv.next67.i.i = add nuw nsw i64 %indvars.iv66.i.i, 1 ; 2 uses
  %exitcond70.not.i.i = icmp eq i64 %indvars.iv.next67.i.i, %i.gt
  br i1 %exitcond70.not.i.i, label %.preheader.us.us.i.i, label %bb.g, !llvm.loop !161

.lr.ph56.us.us.i.i:                               ; preds = %.preheader.us.us.i.i, %.lr.ph56.us.us.i.i
  %indvars.iv73.i.i = phi i64 [ %indvars.iv.next74.i.i, %.lr.ph56.us.us.i.i ], [ %indvars.iv71.i.i, %.preheader.us.us.i.i ] ; 3 uses
  %i.lo = phi float [ %i.lw, %.lr.ph56.us.us.i.i ], [ %.promoted58.us.us.i.i, %.preheader.us.us.i.i ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv73.i.i
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !140
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv73.i.i
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !84
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv77.i.i
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !140
  %i.lv = fneg nsz float %i.lq
  %i.lw = tail call nsz float @llvm.fmuladd.f32(float %i.lv, float %i.lu, float %i.lo) ; 3 uses
  store float %i.lw, ptr %i.mj, align 4, !tbaa !140
  %indvars.iv.next74.i.i = add nuw nsw i64 %indvars.iv73.i.i, 1 ; 2 uses
  %i.lx = trunc nuw i64 %indvars.iv.next74.i.i to i32
  %i.ly = icmp sgt i32 %i.cb, %i.lx
  br i1 %i.ly, label %.lr.ph56.us.us.i.i, label %._crit_edge57.us.us.i.i, !llvm.loop !162

._crit_edge57.us.us.i.i:                          ; preds = %.lr.ph56.us.us.i.i, %.preheader.us.us.i.i
  %i.lz = phi float [ %.promoted58.us.us.i.i, %.preheader.us.us.i.i ], [ %i.lw, %.lr.ph56.us.us.i.i ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv.next72.i.i
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !140
  %i.mc = fdiv nsz float %i.lz, %i.mb
  store float %i.mc, ptr %i.mj, align 4, !tbaa !140
  %i.md = icmp sgt i64 %indvars.iv71.i.i, 1
  br i1 %i.md, label %.preheader.us.us.i.i, label %._crit_edge62.us.us.i.i, !llvm.loop !163

.preheader.us.us.i.i:                             ; preds = %._crit_edge.us.us.i.i, %._crit_edge57.us.us.i.i
  %indvars.iv71.i.i = phi i64 [ %indvars.iv.next72.i.i, %._crit_edge57.us.us.i.i ], [ %i.gt, %._crit_edge.us.us.i.i ] ; 4 uses
  %indvars.iv.next72.i.i = add nsw i64 %indvars.iv71.i.i, -1 ; 4 uses
  %i.me = icmp slt i64 %indvars.iv71.i.i, %i.gt
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next72.i.i
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !84 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next72.i.i
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !84
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv77.i.i ; 3 uses
  %.promoted58.us.us.i.i = load float, ptr %i.mj, align 4, !tbaa !140 ; 2 uses
  br i1 %i.me, label %.lr.ph56.us.us.i.i, label %._crit_edge57.us.us.i.i

.lr.ph.us.us.i.i:                                 ; preds = %bb.g
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv66.i.i
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !84 ; 3 uses
  %xtraiter126 = and i64 %indvars.iv66.i.i, 1
  %i.mm = icmp eq i64 %indvars.iv66.i.i, 1
  br i1 %i.mm, label %.epil.preheader125, label %.lr.ph.us.us.i.i.new

end_hunk_1
