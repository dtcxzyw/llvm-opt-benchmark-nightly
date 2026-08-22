Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-x11?download=true
inline.NumInlined: 1770
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 137
begin_hunk_0_@decode_x11_event:bb.a

bb.v:                                             ; preds = %bb.v, %.preheader136.us.i.new.5
  %indvars.iv247.i.5 = phi i64 [ 0, %.preheader136.us.i.new.5 ], [ %indvars.iv.next248.i.1.5, %bb.v ] ; 3 uses
  %.1104206.us.i.5 = phi i32 [ %.2105.us.i.lcssa.4, %.preheader136.us.i.new.5 ], [ %.2105.us.i.1.5, %bb.v ]
  %.1107205.us.i.5 = phi i32 [ -1, %.preheader136.us.i.new.5 ], [ %.2108.us.i.1.5, %bb.v ]
  %niter1047.5 = phi i64 [ 0, %.preheader136.us.i.new.5 ], [ %niter1047.next.1.5, %bb.v ]
  %i.fo = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv247.i.5
  %i.fp = load i32, ptr %i.fo, align 4            ; 2 uses
  %i.fq = icmp eq i32 %i.fp, %.0109.lcssa.i       ; 2 uses
  %i.fr = icmp ne i32 %i.fp, %.0112.lcssa.i
  %i.fs = select i1 %i.fq, i1 true, i1 %i.fr
  %i.ft = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv247.i.5
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %i.fv = load i32, ptr %i.fu, align 4            ; 2 uses
  %i.fw = icmp eq i32 %i.fv, %.0109.lcssa.i       ; 2 uses
  %i.fx = icmp ne i32 %i.fv, %.0112.lcssa.i
  %i.fy = select i1 %i.fw, i1 true, i1 %i.fq
  %.2108.us.i.1.5 = select i1 %i.fy, i32 5, i32 %.1107205.us.i.5 ; 3 uses
  %i.fz = select i1 %i.fw, i1 true, i1 %i.fx
  %i.ga = select i1 %i.fz, i1 %i.fs, i1 false
  %.2105.us.i.1.5 = select i1 %i.ga, i32 %.1104206.us.i.5, i32 5 ; 3 uses
  %indvars.iv.next248.i.1.5 = add nuw nsw i64 %indvars.iv247.i.5, 2 ; 2 uses
  %niter1047.next.1.5 = add i64 %niter1047.5, 2   ; 2 uses
  %niter1047.ncmp.1.5 = icmp eq i64 %niter1047.next.1.5, %unroll_iter1046.5
  br i1 %niter1047.ncmp.1.5, label %._crit_edge.us212.i.unr-lcssa.5, label %bb.v, !llvm.loop !31

._crit_edge.us212.i.unr-lcssa.5:                  ; preds = %bb.v
  %lcmp.mod1042.5.not = icmp eq i64 %xtraiter1041.5, 0
  br i1 %lcmp.mod1042.5.not, label %._crit_edge.us212.i.5, label %.epil.preheader1040.5

.epil.preheader1040.5:                            ; preds = %._crit_edge.us212.i.unr-lcssa.5, %.preheader136.us.i.5
  %indvars.iv247.i.epil.init.5 = phi i64 [ 0, %.preheader136.us.i.5 ], [ %indvars.iv.next248.i.1.5, %._crit_edge.us212.i.unr-lcssa.5 ]
  %.1104206.us.i.epil.init.5 = phi i32 [ %.2105.us.i.lcssa.4, %.preheader136.us.i.5 ], [ %.2105.us.i.1.5, %._crit_edge.us212.i.unr-lcssa.5 ]
  %.1107205.us.i.epil.init.5 = phi i32 [ -1, %.preheader136.us.i.5 ], [ %.2108.us.i.1.5, %._crit_edge.us212.i.unr-lcssa.5 ]
  %lcmp.mod1045.5 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod1045.5)
  %i.gb = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv247.i.epil.init.5
  %i.gc = load i32, ptr %i.gb, align 4            ; 2 uses
  %i.gd = icmp eq i32 %i.gc, %.0109.lcssa.i       ; 2 uses
  %i.ge = icmp ne i32 %i.gc, %.0112.lcssa.i
  %.2108.us.i.epil.5 = select i1 %i.gd, i32 5, i32 %.1107205.us.i.epil.init.5
  %i.gf = select i1 %i.gd, i1 true, i1 %i.ge
  %.2105.us.i.epil.5 = select i1 %i.gf, i32 %.1104206.us.i.epil.init.5, i32 5
  br label %._crit_edge.us212.i.5

._crit_edge.us212.i.5:                            ; preds = %.epil.preheader1040.5, %._crit_edge.us212.i.unr-lcssa.5
  %.2108.us.i.lcssa.5 = phi i32 [ %.2108.us.i.1.5, %._crit_edge.us212.i.unr-lcssa.5 ], [ %.2108.us.i.epil.5, %.epil.preheader1040.5 ] ; 2 uses
  %.2105.us.i.lcssa.5 = phi i32 [ %.2105.us.i.1.5, %._crit_edge.us212.i.unr-lcssa.5 ], [ %.2105.us.i.epil.5, %.epil.preheader1040.5 ] ; 3 uses
  %i.gg = icmp eq i32 %.2108.us.i.lcssa.5, -1
  br i1 %i.gg, label %.preheader136.us.i.6, label %.preheader.i

.preheader136.us.i.6:                             ; preds = %._crit_edge.us212.i.5
  %i.gh = getelementptr i8, ptr %5, i64 12448
  %i.gi = load ptr, ptr %i.gh, align 8            ; 3 uses
  %xtraiter1041.6 = and i64 %wide.trip.count250.i, 1
  %i.gj = icmp eq i64 %i.bf, 0
  br i1 %i.gj, label %.epil.preheader1040.6, label %.preheader136.us.i.new.6

.preheader136.us.i.new.6:                         ; preds = %.preheader136.us.i.6
  %unroll_iter1046.6 = and i64 %wide.trip.count250.i, 2147483646
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.preheader136.us.i.new.6
  %indvars.iv247.i.6 = phi i64 [ 0, %.preheader136.us.i.new.6 ], [ %indvars.iv.next248.i.1.6, %bb.w ] ; 3 uses
  %.1104206.us.i.6 = phi i32 [ %.2105.us.i.lcssa.5, %.preheader136.us.i.new.6 ], [ %.2105.us.i.1.6, %bb.w ]
  %.1107205.us.i.6 = phi i32 [ -1, %.preheader136.us.i.new.6 ], [ %.2108.us.i.1.6, %bb.w ]
  %niter1047.6 = phi i64 [ 0, %.preheader136.us.i.new.6 ], [ %niter1047.next.1.6, %bb.w ]
  %i.gk = getelementptr [4 x i8], ptr %i.gi, i64 %indvars.iv247.i.6
  %i.gl = load i32, ptr %i.gk, align 4            ; 2 uses
  %i.gm = icmp eq i32 %i.gl, %.0109.lcssa.i       ; 2 uses
  %i.gn = icmp ne i32 %i.gl, %.0112.lcssa.i
  %i.go = select i1 %i.gm, i1 true, i1 %i.gn
  %i.gp = getelementptr [4 x i8], ptr %i.gi, i64 %indvars.iv247.i.6
  %i.gq = getelementptr i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4            ; 2 uses
  %i.gs = icmp eq i32 %i.gr, %.0109.lcssa.i       ; 2 uses
  %i.gt = icmp ne i32 %i.gr, %.0112.lcssa.i
  %i.gu = select i1 %i.gs, i1 true, i1 %i.gm
  %.2108.us.i.1.6 = select i1 %i.gu, i32 6, i32 %.1107205.us.i.6 ; 3 uses
  %i.gv = select i1 %i.gs, i1 true, i1 %i.gt
  %i.gw = select i1 %i.gv, i1 %i.go, i1 false
  %.2105.us.i.1.6 = select i1 %i.gw, i32 %.1104206.us.i.6, i32 6 ; 3 uses
  %indvars.iv.next248.i.1.6 = add nuw nsw i64 %indvars.iv247.i.6, 2 ; 2 uses
  %niter1047.next.1.6 = add i64 %niter1047.6, 2   ; 2 uses
  %niter1047.ncmp.1.6 = icmp eq i64 %niter1047.next.1.6, %unroll_iter1046.6
  br i1 %niter1047.ncmp.1.6, label %._crit_edge.us212.i.unr-lcssa.6, label %bb.w, !llvm.loop !31

._crit_edge.us212.i.unr-lcssa.6:                  ; preds = %bb.w
  %lcmp.mod1042.6.not = icmp eq i64 %xtraiter1041.6, 0
  br i1 %lcmp.mod1042.6.not, label %._crit_edge.us212.i.6, label %.epil.preheader1040.6

.epil.preheader1040.6:                            ; preds = %._crit_edge.us212.i.unr-lcssa.6, %.preheader136.us.i.6
  %indvars.iv247.i.epil.init.6 = phi i64 [ 0, %.preheader136.us.i.6 ], [ %indvars.iv.next248.i.1.6, %._crit_edge.us212.i.unr-lcssa.6 ]
  %.1104206.us.i.epil.init.6 = phi i32 [ %.2105.us.i.lcssa.5, %.preheader136.us.i.6 ], [ %.2105.us.i.1.6, %._crit_edge.us212.i.unr-lcssa.6 ]
  %.1107205.us.i.epil.init.6 = phi i32 [ -1, %.preheader136.us.i.6 ], [ %.2108.us.i.1.6, %._crit_edge.us212.i.unr-lcssa.6 ]
  %lcmp.mod1045.6 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod1045.6)
  %i.gx = getelementptr [4 x i8], ptr %i.gi, i64 %indvars.iv247.i.epil.init.6
  %i.gy = load i32, ptr %i.gx, align 4            ; 2 uses
  %i.gz = icmp eq i32 %i.gy, %.0109.lcssa.i       ; 2 uses
  %i.ha = icmp ne i32 %i.gy, %.0112.lcssa.i
  %.2108.us.i.epil.6 = select i1 %i.gz, i32 6, i32 %.1107205.us.i.epil.init.6
  %i.hb = select i1 %i.gz, i1 true, i1 %i.ha
  %.2105.us.i.epil.6 = select i1 %i.hb, i32 %.1104206.us.i.epil.init.6, i32 6
  br label %._crit_edge.us212.i.6

._crit_edge.us212.i.6:                            ; preds = %.epil.preheader1040.6, %._crit_edge.us212.i.unr-lcssa.6
  %.2108.us.i.lcssa.6 = phi i32 [ %.2108.us.i.1.6, %._crit_edge.us212.i.unr-lcssa.6 ], [ %.2108.us.i.epil.6, %.epil.preheader1040.6 ] ; 2 uses
  %.2105.us.i.lcssa.6 = phi i32 [ %.2105.us.i.1.6, %._crit_edge.us212.i.unr-lcssa.6 ], [ %.2105.us.i.epil.6, %.epil.preheader1040.6 ] ; 3 uses
  %i.hc = icmp eq i32 %.2108.us.i.lcssa.6, -1
  br i1 %i.hc, label %.preheader136.us.i.7, label %.preheader.i

.preheader136.us.i.7:                             ; preds = %._crit_edge.us212.i.6
  %i.hd = getelementptr i8, ptr %5, i64 12456
  %i.he = load ptr, ptr %i.hd, align 8            ; 3 uses
  %xtraiter1041.7 = and i64 %wide.trip.count250.i, 1
  %i.hf = icmp eq i64 %i.bf, 0
  br i1 %i.hf, label %.epil.preheader1040.7, label %.preheader136.us.i.new.7

.preheader136.us.i.new.7:                         ; preds = %.preheader136.us.i.7
  %unroll_iter1046.7 = and i64 %wide.trip.count250.i, 2147483646
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader136.us.i.new.7
  %indvars.iv247.i.7 = phi i64 [ 0, %.preheader136.us.i.new.7 ], [ %indvars.iv.next248.i.1.7, %bb.x ] ; 3 uses
  %.1104206.us.i.7 = phi i32 [ %.2105.us.i.lcssa.6, %.preheader136.us.i.new.7 ], [ %.2105.us.i.1.7, %bb.x ]
  %.1107205.us.i.7 = phi i32 [ -1, %.preheader136.us.i.new.7 ], [ %.2108.us.i.1.7, %bb.x ]
  %niter1047.7 = phi i64 [ 0, %.preheader136.us.i.new.7 ], [ %niter1047.next.1.7, %bb.x ]
  %i.hg = getelementptr [4 x i8], ptr %i.he, i64 %indvars.iv247.i.7
  %i.hh = load i32, ptr %i.hg, align 4            ; 2 uses
  %i.hi = icmp eq i32 %i.hh, %.0109.lcssa.i       ; 2 uses
  %i.hj = icmp ne i32 %i.hh, %.0112.lcssa.i
  %i.hk = select i1 %i.hi, i1 true, i1 %i.hj
  %i.hl = getelementptr [4 x i8], ptr %i.he, i64 %indvars.iv247.i.7
  %i.hm = getelementptr i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4            ; 2 uses
  %i.ho = icmp eq i32 %i.hn, %.0109.lcssa.i       ; 2 uses
  %i.hp = icmp ne i32 %i.hn, %.0112.lcssa.i
  %i.hq = select i1 %i.ho, i1 true, i1 %i.hi
  %.2108.us.i.1.7 = select i1 %i.hq, i32 7, i32 %.1107205.us.i.7 ; 3 uses
  %i.hr = select i1 %i.ho, i1 true, i1 %i.hp
  %i.hs = select i1 %i.hr, i1 %i.hk, i1 false
  %.2105.us.i.1.7 = select i1 %i.hs, i32 %.1104206.us.i.7, i32 7 ; 3 uses
  %indvars.iv.next248.i.1.7 = add nuw nsw i64 %indvars.iv247.i.7, 2 ; 2 uses
  %niter1047.next.1.7 = add i64 %niter1047.7, 2   ; 2 uses
  %niter1047.ncmp.1.7 = icmp eq i64 %niter1047.next.1.7, %unroll_iter1046.7
  br i1 %niter1047.ncmp.1.7, label %._crit_edge.us212.i.unr-lcssa.7, label %bb.x, !llvm.loop !31

._crit_edge.us212.i.unr-lcssa.7:                  ; preds = %bb.x
  %lcmp.mod1042.7.not = icmp eq i64 %xtraiter1041.7, 0
  br i1 %lcmp.mod1042.7.not, label %.preheader.i, label %.epil.preheader1040.7

.epil.preheader1040.7:                            ; preds = %._crit_edge.us212.i.unr-lcssa.7, %.preheader136.us.i.7
  %indvars.iv247.i.epil.init.7 = phi i64 [ 0, %.preheader136.us.i.7 ], [ %indvars.iv.next248.i.1.7, %._crit_edge.us212.i.unr-lcssa.7 ]
  %.1104206.us.i.epil.init.7 = phi i32 [ %.2105.us.i.lcssa.6, %.preheader136.us.i.7 ], [ %.2105.us.i.1.7, %._crit_edge.us212.i.unr-lcssa.7 ]
  %.1107205.us.i.epil.init.7 = phi i32 [ -1, %.preheader136.us.i.7 ], [ %.2108.us.i.1.7, %._crit_edge.us212.i.unr-lcssa.7 ]
  %lcmp.mod1045.7 = trunc i32 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod1045.7)
  %i.ht = getelementptr [4 x i8], ptr %i.he, i64 %indvars.iv247.i.epil.init.7
  %i.hu = load i32, ptr %i.ht, align 4            ; 2 uses
  %i.hv = icmp eq i32 %i.hu, %.0109.lcssa.i       ; 2 uses
  %i.hw = icmp ne i32 %i.hu, %.0112.lcssa.i
  %.2108.us.i.epil.7 = select i1 %i.hv, i32 7, i32 %.1107205.us.i.epil.init.7
  %i.hx = select i1 %i.hv, i1 true, i1 %i.hw
  %.2105.us.i.epil.7 = select i1 %i.hx, i32 %.1104206.us.i.epil.init.7, i32 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.us212.i.unr-lcssa.7, %.epil.preheader1040.7, %._crit_edge.us212.i.6, %._crit_edge.us212.i.5, %._crit_edge.us212.i.4, %._crit_edge.us212.i.3, %._crit_edge.us212.i.2, %._crit_edge.us212.i.1, %._crit_edge.us212.i
  %.2108.us.i.lcssa.lcssa = phi i32 [ %.2108.us.i.lcssa, %._crit_edge.us212.i ], [ %.2108.us.i.lcssa.1, %._crit_edge.us212.i.1 ], [ %.2108.us.i.lcssa.2, %._crit_edge.us212.i.2 ], [ %.2108.us.i.lcssa.3, %._crit_edge.us212.i.3 ], [ %.2108.us.i.lcssa.4, %._crit_edge.us212.i.4 ], [ %.2108.us.i.lcssa.5, %._crit_edge.us212.i.5 ], [ %.2108.us.i.lcssa.6, %._crit_edge.us212.i.6 ], [ %.2108.us.i.1.7, %._crit_edge.us212.i.unr-lcssa.7 ], [ %.2108.us.i.epil.7, %.epil.preheader1040.7 ] ; 3 uses
  %.2105.us.i.lcssa.lcssa = phi i32 [ %.2105.us.i.lcssa, %._crit_edge.us212.i ], [ %.2105.us.i.lcssa.1, %._crit_edge.us212.i.1 ], [ %.2105.us.i.lcssa.2, %._crit_edge.us212.i.2 ], [ %.2105.us.i.lcssa.3, %._crit_edge.us212.i.3 ], [ %.2105.us.i.lcssa.4, %._crit_edge.us212.i.4 ], [ %.2105.us.i.lcssa.5, %._crit_edge.us212.i.5 ], [ %.2105.us.i.lcssa.6, %._crit_edge.us212.i.6 ], [ %.2105.us.i.1.7, %._crit_edge.us212.i.unr-lcssa.7 ], [ %.2105.us.i.epil.7, %.epil.preheader1040.7 ] ; 3 uses
  %i.hy = getelementptr i8, ptr %5, i64 12408
  %i.hz = load ptr, ptr %i.hy, align 8
  br label %bb.z

bb.y:                                             ; preds = %bb.aa
  %indvars.iv.next256.i = add nuw nsw i64 %indvars.iv255.i, 1 ; 2 uses
  %exitcond259.not.i = icmp eq i64 %indvars.iv.next256.i, %wide.trip.count250.i
  br i1 %exitcond259.not.i, label %._crit_edge.i, label %bb.z, !llvm.loop !32

bb.z:                                             ; preds = %bb.y, %.preheader.i
  %indvars.iv255.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next256.i, %bb.y ] ; 3 uses
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %indvars.iv255.i
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = icmp eq i32 %i.ib, %.099.lcssa.i
  br i1 %i.ic, label %._crit_edge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.id = load ptr, ptr %i.ab, align 8
  %i.ie = getelementptr [4 x i8], ptr %i.id, i64 %indvars.iv255.i
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = icmp eq i32 %i.if, %.096.lcssa.i
  br i1 %i.ig, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.aa, %bb.z, %bb.y, %.preheader137.i
  %.us-phi214276.i = phi i32 [ -1, %.preheader137.i ], [ %.2105.us.i.lcssa.lcssa, %bb.y ], [ %.2105.us.i.lcssa.lcssa, %bb.z ], [ %.2105.us.i.lcssa.lcssa, %bb.aa ] ; 2 uses
  %.us-phi213275.i = phi i32 [ -1, %.preheader137.i ], [ %.2108.us.i.lcssa.lcssa, %bb.y ], [ %.2108.us.i.lcssa.lcssa, %bb.z ], [ %.2108.us.i.lcssa.lcssa, %bb.aa ] ; 2 uses
  %.lcssa.i = phi i1 [ true, %.preheader137.i ], [ false, %bb.aa ], [ false, %bb.z ], [ true, %bb.y ]
  %.3102.i = phi i32 [ %.099.lcssa.i, %.preheader137.i ], [ 0, %bb.aa ], [ %.099.lcssa.i, %bb.z ], [ %.099.lcssa.i, %bb.y ]
  %.3.i = phi i32 [ %.096.lcssa.i, %.preheader137.i ], [ %.096.lcssa.i, %bb.aa ], [ 0, %bb.z ], [ %.096.lcssa.i, %bb.y ]
  %i.ih = icmp sgt i32 %i.aa, 2
  br i1 %i.ih, label %.lr.ph229.preheader.i, label %.critedge.thread.i

.lr.ph229.preheader.i:                            ; preds = %._crit_edge.i
  %7 = zext nneg i32 %i.aa to i64
  br label %.lr.ph229.i

.lr.ph229.i:                                      ; preds = %bb.ab, %.lr.ph229.preheader.i
  %indvars.iv260.i = phi i64 [ %7, %.lr.ph229.preheader.i ], [ %indvars.iv.next261.i, %bb.ab ] ; 4 uses
  %i.ii = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv260.i
  %i.ij = getelementptr i8, ptr %i.ii, i64 -8
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = icmp eq ptr %i.ik, null
  br i1 %i.il, label %bb.ab, label %.critedge.i

bb.ab:                                            ; preds = %.lr.ph229.i
  %indvars.iv.next261.i = add nsw i64 %indvars.iv260.i, -1
  %i.im = icmp sgt i64 %indvars.iv260.i, 3
  br i1 %i.im, label %.lr.ph229.i, label %.critedge.thread.i, !llvm.loop !33

.critedge.i:                                      ; preds = %.lr.ph229.i
  %8 = trunc nuw nsw i64 %indvars.iv260.i to i32  ; 3 uses
  %i.in = icmp sgt i32 %.us-phi214276.i, -1
  br i1 %i.in, label %bb.ac, label %.critedge.thread.i

bb.ac:                                            ; preds = %.critedge.i
  %i.io = zext nneg i32 %.us-phi214276.i to i64
  %i.ip = getelementptr [4 x i8], ptr @modifiermask, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4
  %i.ir = and i32 %i.iq, %i.t
  %.not.i = icmp eq i32 %i.ir, 0
  br i1 %.not.i, label %.critedge.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.is = getelementptr i8, ptr %i.ag, i64 8
  %i.it = add nsw i32 %8, -2
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.ab, %bb.ad, %bb.ac, %.critedge.i, %._crit_edge.i
  %.1118.i = phi i32 [ %i.it, %bb.ad ], [ %8, %bb.ac ], [ %8, %.critedge.i ], [ %i.aa, %._crit_edge.i ], [ 2, %bb.ab ] ; 6 uses
  %.0115.i = phi ptr [ %i.is, %bb.ad ], [ %i.ag, %bb.ac ], [ %i.ag, %.critedge.i ], [ %i.ag, %._crit_edge.i ], [ %i.ag, %bb.ab ] ; 10 uses
  %i.iu = icmp sgt i32 %.us-phi213275.i, -1
  br i1 %i.iu, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %.critedge.thread.i
  %i.iv = zext nneg i32 %.us-phi213275.i to i64
  %i.iw = getelementptr [4 x i8], ptr @modifiermask, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4
  %i.iy = and i32 %i.ix, %i.t
  %i.iz = icmp ne i32 %i.iy, 0
  %i.ja = icmp sgt i32 %.1118.i, 1
  %or.cond3.i = select i1 %i.iz, i1 %i.ja, i1 false
  br i1 %or.cond3.i, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.jb = getelementptr i8, ptr %.0115.i, i64 4
  %i.jc = load i32, ptr %i.jb, align 4            ; 3 uses
  %i.jd = add i32 %i.jc, -65408
  %or.cond131.i = icmp ult i32 %i.jd, 62
  %i.je = and i32 %i.jc, -65536
  %or.cond132.i = icmp eq i32 %i.je, 285212672
  %or.cond.i = or i1 %or.cond131.i, %or.cond132.i
  br i1 %or.cond.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.jf = and i32 %i.t, 1
  %.not130.i = icmp eq i32 %i.jf, 0
  br i1 %.not130.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jg = and i32 %i.t, 2
  %i.jh = icmp ne i32 %i.jg, 0
  %i.ji = icmp ne i32 %.3.i, 0
  %or.cond5.i = select i1 %i.jh, i1 %i.ji, i1 false
  br i1 %or.cond5.i, label %bb.ai, label %bb.bf

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jj = load i32, ptr %.0115.i, align 4
  br label %bb.bf

bb.aj:                                            ; preds = %bb.af, %bb.ae, %.critedge.thread.i
  %i.jk = and i32 %i.t, 1
  %.not127.i = icmp eq i32 %i.jk, 0               ; 2 uses
  %i.jl = and i32 %i.t, 2                         ; 2 uses
  br i1 %.not127.i, label %bb.ak, label %._crit_edge260.i

._crit_edge260.i:                                 ; preds = %bb.aj
  %i.jm = icmp ne i32 %i.jl, 0
  br label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  %i.jn = icmp eq i32 %i.jl, 0
  %or.cond7.i = or i1 %i.jn, %.lcssa.i
  br i1 %or.cond7.i, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.jo = icmp eq i32 %.1118.i, 1
  br i1 %i.jo, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jp = icmp sgt i32 %.1118.i, 1
  br i1 %i.jp, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.jq = getelementptr i8, ptr %.0115.i, i64 4
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.jt = load i32, ptr %.0115.i, align 4
  call fastcc void @XConvertCase(i32 noundef %i.jt, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %.pr.i = load i32, ptr %i.b, align 4
  br label %bb.bf

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.ju = load i32, ptr %.0115.i, align 4
  br label %bb.bf

bb.aq:                                            ; preds = %bb.ak, %._crit_edge260.i
  %.pre-phi.i = phi i1 [ %i.jm, %._crit_edge260.i ], [ true, %bb.ak ]
  %i.jv = icmp ne i32 %.3102.i, 0
  %or.cond9.i = select i1 %.pre-phi.i, i1 %i.jv, i1 false
  %i.jw = icmp eq i32 %.1118.i, 1                 ; 2 uses
  br i1 %or.cond9.i, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  br i1 %i.jw, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jx = icmp sgt i32 %.1118.i, 1
  br i1 %i.jx, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.jy = getelementptr i8, ptr %.0115.i, i64 4
  %i.jz = load i32, ptr %i.jy, align 4            ; 2 uses
  %i.ka = icmp eq i32 %i.jz, 0
  br i1 %i.ka, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.kb = load i32, ptr %.0115.i, align 4
  call fastcc void @XConvertCase(i32 noundef %i.kb, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
  %.pre.i = load i32, ptr %i.e, align 4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.kc = phi i32 [ %.pre.i, %bb.au ], [ %i.jz, %bb.at ], [ 0, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.bf

bb.aw:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  br i1 %i.jw, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kd = icmp sgt i32 %.1118.i, 1
  br i1 %i.kd, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.ke = getelementptr i8, ptr %.0115.i, i64 4
  %i.kf = load i32, ptr %i.ke, align 4
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %i.kh = load i32, ptr %.0115.i, align 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.ki = phi i32 [ %i.kh, %bb.az ], [ %storemerge.lcssa167.lcssa.i, %bb.ay ], [ %storemerge.lcssa167.lcssa.i, %bb.ax ] ; 3 uses
  call fastcc void @XConvertCase(i32 noundef %i.ki, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br i1 %.not127.i, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.kj = load i32, ptr %.0115.i, align 4         ; 2 uses
  %.not128.i = icmp eq i32 %i.ki, %i.kj
  br i1 %.not128.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kk = load i32, ptr %i.g, align 4             ; 2 uses
  %.not129.i = icmp ne i32 %i.ki, %i.kk
  %i.kl = load i32, ptr %i.f, align 4
  %i.km = icmp eq i32 %i.kl, %i.kk
  %or.cond134.i = select i1 %.not129.i, i1 true, i1 %i.km
  br i1 %or.cond134.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @XConvertCase(i32 noundef %i.kj, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %i.kn = load i32, ptr %i.g, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.av, %bb.ap, %bb.ao, %bb.ai, %bb.ah
  %i.ko = phi i32 [ %i.ju, %bb.ap ], [ %.pr.i, %bb.ao ], [ %i.kn, %bb.be ], [ %i.kc, %bb.av ], [ %i.jj, %bb.ai ], [ %i.jc, %bb.ah ] ; 2 uses
  %i.kp = icmp eq i32 %i.ko, 16777215
  %spec.select.i = select i1 %i.kp, i32 0, i32 %i.ko ; 2 uses
  %i.kq = tail call ptr @val_to_str_ext_const(i32 noundef %spec.select.i, ptr noundef nonnull @x11_keysym_vals_source_ext, ptr noundef nonnull @.str.1548)
  %i.kr = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.v, ptr noundef nonnull @.str.1566, i32 noundef %spec.select.i, ptr noundef %i.kq)
  br label %keycode2keysymString.exit

keycode2keysymString.exit:                        ; preds = %.preheader138.us.i, %bb.b, %.preheader138.lr.ph.split.us.i, %._crit_edge175.i, %bb.bf
  %.0116.i = phi ptr [ %i.kr, %bb.bf ], [ @.str.1548, %bb.b ], [ @.str.1548, %._crit_edge175.i ], [ @.str.1548, %.preheader138.lr.ph.split.us.i ], [ @.str.1548, %.preheader138.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ks = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %4, i32 noundef %i.u, ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %i.r, ptr noundef nonnull @.str.1565, i32 noundef %i.r, ptr noundef %.0116.i) ; 0 uses
  store i32 2, ptr %i.h, align 4
  %i.kt = load i32, ptr @hf_x11_event_sequencenumber, align 4
  %i.ku = call fastcc i32 @field16(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %4, i32 noundef %i.kt, i32 noundef %6) ; 0 uses
  %i.kv = load i32, ptr @hf_x11_time, align 4     ; 3 uses
  %i.kw = load i32, ptr %i.h, align 4             ; 4 uses
  %i.kx = tail call i32 @tvb_get_uint32(ptr noundef %0, i32 noundef %i.kw, i32 noundef %6) ; 2 uses
  %.not.i896 = icmp eq i32 %i.kx, 0
  br i1 %.not.i896, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %keycode2keysymString.exit
  %i.ky = tail call ptr @proto_registrar_get_nth(i32 noundef %i.kv)
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format(ptr noundef %4, i32 noundef %i.kv, ptr noundef %0, i32 noundef %i.kw, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.1567, ptr noundef %i.kz) ; 0 uses
  br label %timestamp.exit

bb.bh:                                            ; preds = %keycode2keysymString.exit
  %i.lb = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.kv, ptr noundef %0, i32 noundef %i.kw, i32 noundef 4, i32 noundef %i.kx) ; 0 uses
  br label %timestamp.exit

timestamp.exit:                                   ; preds = %bb.bg, %bb.bh
  %i.lc = add i32 %i.kw, 4
  store i32 %i.lc, ptr %i.h, align 4
  %i.ld = load i32, ptr @hf_x11_rootwindow, align 4
  %i.le = call fastcc i32 @field32(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %4, i32 noundef %i.ld, i32 noundef %6) ; 0 uses
  %i.lf = load i32, ptr @hf_x11_eventwindow, align 4
  %i.lg = call fastcc i32 @field32(ptr noundef %0, ptr noundef nonnull %i.h, ptr noundef %4, i32 noundef %i.lf, i32 noundef %6) ; 0 uses
end_hunk_0
