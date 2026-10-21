Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mincross?download=true
inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mincross:bb.a
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph.i85, label %._crit_edge.i82

.lr.ph.i85:                                       ; preds = %.preheader23.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count.i86 = zext nneg i32 %i.eg to i64 ; 2 uses
  %xtraiter316 = and i64 %wide.trip.count.i86, 3  ; 3 uses
  %i.ek = icmp ult i32 %i.eg, 4
  br i1 %i.ek, label %.epil.preheader315, label %.lr.ph.i85.new

.lr.ph.i85.new:                                   ; preds = %.lr.ph.i85
  %unroll_iter320 = and i64 %wide.trip.count.i86, 2147483644
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i85.new
  %indvars.iv.i87 = phi i64 [ 0, %.lr.ph.i85.new ], [ %indvars.iv.next.i88.3, %bb.p ] ; 5 uses
  %niter321 = phi i64 [ 0, %.lr.ph.i85.new ], [ %niter321.next.3, %bb.p ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i87
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !15 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !176
  %i.er = fptosi double %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 364
  store i32 %i.er, ptr %i.es, align 4, !tbaa !57
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i87
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !44
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !15 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !176
  %i.fa = fptosi double %i.ez to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 364
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !57
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i87
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !44
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !15 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !176
  %i.fj = fptosi double %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 364
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !57
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i87
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !44
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !15 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !176
  %i.fs = fptosi double %i.fr to i32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 364
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !57
  %indvars.iv.next.i88.3 = add nuw nsw i64 %indvars.iv.i87, 4 ; 2 uses
  %niter321.next.3 = add i64 %niter321, 4         ; 2 uses
  %niter321.ncmp.3 = icmp eq i64 %niter321.next.3, %unroll_iter320
  br i1 %niter321.ncmp.3, label %._crit_edge.i82.loopexit.unr-lcssa, label %bb.p, !llvm.loop !158

._crit_edge.i82.loopexit.unr-lcssa:               ; preds = %bb.p
  %lcmp.mod318.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod318.not, label %._crit_edge.i82, label %.epil.preheader315

.epil.preheader315:                               ; preds = %._crit_edge.i82.loopexit.unr-lcssa, %.lr.ph.i85
  %indvars.iv.i87.epil.init = phi i64 [ 0, %.lr.ph.i85 ], [ %indvars.iv.next.i88.3, %._crit_edge.i82.loopexit.unr-lcssa ]
  %lcmp.mod319 = icmp ne i64 %xtraiter316, 0
  tail call void @llvm.assume(i1 %lcmp.mod319)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader315
  %indvars.iv.i87.epil = phi i64 [ %indvars.iv.i87.epil.init, %.epil.preheader315 ], [ %indvars.iv.next.i88.epil, %bb.q ] ; 2 uses
  %epil.iter317 = phi i64 [ 0, %.epil.preheader315 ], [ %epil.iter317.next, %bb.q ]
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i87.epil
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !44
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !15 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 32
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !176
  %i.ga = fptosi double %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 364
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !57
  %indvars.iv.next.i88.epil = add nuw nsw i64 %indvars.iv.i87.epil, 1
  %epil.iter317.next = add i64 %epil.iter317, 1   ; 2 uses
  %epil.iter317.cmp.not = icmp eq i64 %epil.iter317.next, %xtraiter316
  br i1 %epil.iter317.cmp.not, label %._crit_edge.i82, label %bb.q, !llvm.loop !159

._crit_edge.i82:                                  ; preds = %._crit_edge.i82.loopexit.unr-lcssa, %bb.q, %.preheader23.i
  %indvars.iv.next33.i = add nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %lftr.wideiv.i83 = trunc i64 %indvars.iv.next33.i to i32
  %exitcond35.not.i = icmp eq i32 %i.ee, %lftr.wideiv.i83
  br i1 %exitcond35.not.i, label %.lr.ph29.i, label %.preheader23.i, !llvm.loop !160

.lr.ph29.i:                                       ; preds = %._crit_edge.i82, %.lr.ph29.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph29.i ], [ %i.ed, %._crit_edge.i82 ] ; 4 uses
  %i.gc = phi ptr [ %i.gr, %.lr.ph29.i ], [ %i.dw, %._crit_edge.i82 ]
  %i.gd = load ptr, ptr @Root, align 8, !tbaa !73
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 264
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !39
  %i.gi = getelementptr inbounds [88 x i8], ptr %i.gh, i64 %indvars.iv36.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 65
  store i8 0, ptr %i.gj, align 1, !tbaa !94
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 264
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !39
  %i.gm = getelementptr inbounds [88 x i8], ptr %i.gl, i64 %indvars.iv36.i ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !43
  %i.gp = load i32, ptr %i.gm, align 8, !tbaa !42
  %i.gq = sext i32 %i.gp to i64
  tail call void @qsort(ptr noundef %i.go, i64 noundef %i.gq, i64 noundef 8, ptr noundef nonnull @nodeposcmpf) #20
  %indvars.iv.next37.i = add nsw i64 %indvars.iv36.i, 1
  %i.gr = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 340
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !38
  %i.gu = sext i32 %i.gt to i64
  %.not22.not.i = icmp slt i64 %indvars.iv36.i, %i.gu
  br i1 %.not22.not.i, label %.lr.ph29.i, label %save_best.exit81, !llvm.loop !161

save_best.exit81:                                 ; preds = %._crit_edge.i72, %.lr.ph29.i, %bb.o, %bb.k, %bb.n, %bb.j
  %.055 = phi i32 [ %i.bj, %bb.n ], [ %i.bk, %bb.j ], [ %i.bj, %.lr.ph29.i ], [ %i.bk, %bb.k ], [ %i.bj, %bb.o ], [ %i.bk, %._crit_edge.i72 ] ; 2 uses
  %.247 = phi i64 [ %.1162, %bb.n ], [ %i.bp, %bb.j ], [ %.1162, %.lr.ph29.i ], [ %i.bp, %bb.k ], [ %.1162, %bb.o ], [ %i.bp, %._crit_edge.i72 ] ; 2 uses
  %.2 = phi i64 [ %.1162, %bb.n ], [ %.1162, %bb.j ], [ %.1162, %.lr.ph29.i ], [ %i.bp, %bb.k ], [ %.1162, %bb.o ], [ %i.bp, %._crit_edge.i72 ] ; 2 uses
  %i.gv = icmp sgt i32 %.055, 0
  br i1 %i.gv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %save_best.exit81, %bb.bl
  %.3155 = phi i64 [ %.4, %bb.bl ], [ %.2, %save_best.exit81 ] ; 5 uses
  %.348154 = phi i64 [ %i.tq, %bb.bl ], [ %.247, %save_best.exit81 ] ; 3 uses
  %.051153 = phi i32 [ %.253, %bb.bl ], [ 0, %save_best.exit81 ] ; 3 uses
  %.054152 = phi i32 [ %i.wa, %bb.bl ], [ 0, %save_best.exit81 ] ; 4 uses
  %i.gw = load i8, ptr @Verbose, align 1, !tbaa !66
  %.not63 = icmp eq i8 %i.gw, 0
  br i1 %.not63, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !62
  %i.gy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.17, i32 noundef %.050160, i32 noundef %.054152, i32 noundef %.051153, i64 noundef %.348154, i64 noundef %.3155) #22 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph
  %i.gz = add nsw i32 %.051153, 1                 ; 2 uses
  %i.ha = load i32, ptr @MinQuit, align 4, !tbaa !69
  %i.hb = icmp sge i32 %.051153, %i.ha
  %i.hc = icmp eq i64 %.348154, 0
  %or.cond = select i1 %i.hb, i1 true, i1 %i.hc
  br i1 %or.cond, label %._crit_edge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hd = and i32 %.054152, 2
  %i.he = icmp eq i32 %i.hd, 0                    ; 3 uses
  %i.hf = and i32 %.054152, 1
  %.not37.i = icmp eq i32 %i.hf, 0                ; 2 uses
  %i.hg = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 7 uses
  br i1 %.not37.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 336
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !37 ; 2 uses
  %i.hj = load ptr, ptr @Root, align 8, !tbaa !73
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !15
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 336
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !37
  %i.ho = icmp sle i32 %i.hi, %i.hn
  %i.hp = zext i1 %i.ho to i32
  %spec.select.i = add nsw i32 %i.hi, %i.hp
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 340
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 340
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !38 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hg, i64 336
  %i.hu = load ptr, ptr @Root, align 8, !tbaa !73
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !15
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 340
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !38
  %i.hz = icmp sge i32 %i.hs, %i.hy
  %i.ia = sext i1 %i.hz to i32
  %spec.select31.i = add nsw i32 %i.hs, %i.ia
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.i = phi i32 [ %spec.select.i, %bb.u ], [ %spec.select31.i, %bb.v ] ; 2 uses
  %.027.in.i = phi ptr [ %i.hq, %bb.u ], [ %i.ht, %bb.v ]
  %.026.i = phi i32 [ 1, %bb.u ], [ -1, %bb.v ]   ; 2 uses
  %.027.i = load i32, ptr %.027.in.i, align 4, !tbaa !69 ; 2 uses
  %i.ib = add nsw i32 %.027.i, %.026.i
  %.not59.i = icmp eq i32 %.2.i, %i.ib
  br i1 %.not59.i, label %mincross_step.exit, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.w
  %i.ic = sext i32 %.2.i to i64
  %i.id = sext i32 %.026.i to i64
  %sext.i = sext i32 %.027.i to i64
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 264
  %.pre.i.a = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !39
  br label %bb.x

bb.x:                                             ; preds = %reorder.exit.i, %.lr.ph.i90
  %.pre86.i = phi ptr [ %.pre.i.a, %.lr.ph.i90 ], [ %.pre8690115.i, %reorder.exit.i ] ; 2 uses
  %.val3284.i = phi ptr [ %i.hg, %.lr.ph.i90 ], [ %.val32116.i, %reorder.exit.i ]
  %indvars.iv.i91 = phi i64 [ %i.ic, %.lr.ph.i90 ], [ %indvars.iv.next.i92, %reorder.exit.i ] ; 6 uses
  %2 = load ptr, ptr @TI_list, align 8, !tbaa !76 ; 10 uses
  %i.ie = getelementptr inbounds [88 x i8], ptr %.pre86.i, i64 %indvars.iv.i91 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !43 ; 2 uses
  %i.ih = load i32, ptr %i.ie, align 8, !tbaa !42
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %.lr.ph103.i.i, label %reorder.exit.i

.lr.ph103.i.i:                                    ; preds = %bb.x
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.y

.preheader.i.i:                                   ; preds = %.loopexit.thread.i.i
  %i.ik = icmp sgt i32 %i.mk, 0
  br i1 %i.ik, label %.lr.ph107.preheader.i.i, label %reorder.exit.i

.lr.ph107.preheader.i.i:                          ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.mk to i64 ; 2 uses
  br label %.lr.ph107.i.i

bb.y:                                             ; preds = %.loopexit.thread.i.i, %.lr.ph103.i.i
  %indvars.iv115.i.i = phi i64 [ 0, %.lr.ph103.i.i ], [ %indvars.iv.next116.i.i, %.loopexit.thread.i.i ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv115.i.i
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !44
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 4 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !15 ; 7 uses
  br i1 %.not37.i, label %.preheader92.i.i, label %.preheader91.i.i

.preheader92.i.i:                                 ; preds = %bb.y
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 256
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !95 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !52 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.ir, null
  br i1 %.not94.i.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i

.preheader91.i.i:                                 ; preds = %bb.y
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 272
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !51 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !52 ; 2 uses
  %.not8997.i.i = icmp eq ptr %i.iu, null
  br i1 %.not8997.i.i, label %.loopexit.thread.i.i, label %.lr.ph100.i.i

.lr.ph100.i.i:                                    ; preds = %.preheader91.i.i, %bb.aa
  %indvars.iv112.i.i = phi i64 [ %indvars.iv.next113.i.i, %bb.aa ], [ 0, %.preheader91.i.i ]
  %i.iv = phi ptr [ %i.jt, %bb.aa ], [ %i.iu, %.preheader91.i.i ] ; 3 uses
  %.07999.i.i = phi i64 [ %.180.i.i, %bb.aa ], [ 0, %.preheader91.i.i ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !15 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 210
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !96
  %i.ja = icmp sgt i16 %i.iz, 0
  br i1 %i.ja, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph100.i.i
  %i.jb = load i32, ptr %i.iv, align 8
  %i.jc = and i32 %i.jb, 3
  %i.jd = icmp eq i32 %i.jc, 2
  %i.je = select i1 %i.jd, i64 56, i64 -8
  %i.jf = getelementptr inbounds i8, ptr %i.iv, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !56
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !15
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 364
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !57
  %i.jl = shl nsw i32 %i.jk, 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 108
  %i.jn = load i8, ptr %i.jm, align 4, !tbaa !177
  %i.jo = zext i8 %i.jn to i32
  %i.jp = or disjoint i32 %i.jl, %i.jo
  %i.jq = add i64 %.07999.i.i, 1
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.07999.i.i
  store i32 %i.jp, ptr %i.jr, align 4, !tbaa !69
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph100.i.i
  %.180.i.i = phi i64 [ %i.jq, %bb.z ], [ %.07999.i.i, %.lr.ph100.i.i ] ; 2 uses
  %indvars.iv.next113.i.i = add nuw nsw i64 %indvars.iv112.i.i, 1 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.next113.i.i
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !52 ; 2 uses
  %.not89.i.i = icmp eq ptr %i.jt, null
  br i1 %.not89.i.i, label %.loopexit.i.i, label %.lr.ph100.i.i, !llvm.loop !162

.lr.ph.i.i:                                       ; preds = %.preheader92.i.i, %bb.ac
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ac ], [ 0, %.preheader92.i.i ]
  %i.ju = phi ptr [ %i.ks, %bb.ac ], [ %i.ir, %.preheader92.i.i ] ; 3 uses
  %.296.i.i = phi i64 [ %.3.i.i, %bb.ac ], [ 0, %.preheader92.i.i ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !15 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 210
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !96
  %i.jz = icmp sgt i16 %i.jy, 0
  br i1 %i.jz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ka = load i32, ptr %i.ju, align 8
  %i.kb = and i32 %i.ka, 3
  %i.kc = icmp eq i32 %i.kb, 3
  %i.kd = select i1 %i.kc, i64 56, i64 120
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !56
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !15
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 364
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !57
  %i.kk = shl nsw i32 %i.kj, 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jw, i64 60
  %i.km = load i8, ptr %i.kl, align 4, !tbaa !178
  %i.kn = zext i8 %i.km to i32
  %i.ko = or disjoint i32 %i.kk, %i.kn
  %i.kp = add i64 %.296.i.i, 1
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.296.i.i
  store i32 %i.ko, ptr %i.kq, align 4, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %.3.i.i = phi i64 [ %i.kp, %bb.ab ], [ %.296.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.next.i.i
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !163

.loopexit.i.i:                                    ; preds = %bb.aa, %bb.ac
  %.4.i.i = phi i64 [ %.3.i.i, %bb.ac ], [ %.180.i.i, %bb.aa ] ; 5 uses
  switch i64 %.4.i.i, label %bb.af [
    i64 0, label %.loopexit.thread.i.i
    i64 1, label %bb.ad
    i64 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %.loopexit.i.i
  %i.kt = load i32, ptr %2, align 4, !tbaa !69
  %i.ku = sitofp i32 %i.kt to double
  br label %.loopexit.thread.i.i

bb.ae:                                            ; preds = %.loopexit.i.i
  %i.kv = load i32, ptr %2, align 4, !tbaa !69
  %i.kw = load i32, ptr %i.ij, align 4, !tbaa !69
  %i.kx = add nsw i32 %i.kw, %i.kv
  %i.ky = sdiv i32 %i.kx, 2
  %i.kz = sitofp i32 %i.ky to double
  br label %.loopexit.thread.i.i

bb.af:                                            ; preds = %.loopexit.i.i
  tail call void @qsort(ptr noundef %2, i64 noundef %.4.i.i, i64 noundef 4, ptr noundef nonnull @ordercmpf) #20
  %i.la = and i64 %.4.i.i, 1
  %.not90.i.i = icmp eq i64 %i.la, 0
  %i.lb = lshr i64 %.4.i.i, 1                     ; 2 uses
  br i1 %.not90.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !69
  %i.le = sitofp i32 %i.ld to double
  %i.lf = load ptr, ptr %i.in, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

bb.ah:                                            ; preds = %bb.af
  %i.lg = getelementptr [4 x i8], ptr %2, i64 %.4.i.i
  %i.lh = getelementptr i8, ptr %i.lg, i64 -4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !69
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lb ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !69 ; 3 uses
  %i.ll = sub nsw i32 %i.li, %i.lk                ; 3 uses
  %i.lm = getelementptr i8, ptr %i.lj, i64 -4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !69 ; 3 uses
  %i.lo = load i32, ptr %2, align 4, !tbaa !69
  %i.lp = sub nsw i32 %i.ln, %i.lo                ; 3 uses
  %i.lq = icmp eq i32 %i.lp, %i.ll
  br i1 %i.lq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.lr = add nsw i32 %i.ln, %i.lk
  %i.ls = sdiv i32 %i.lr, 2
  %i.lt = sitofp i32 %i.ls to double
  %i.lu = load ptr, ptr %i.in, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.lv = sitofp i32 %i.ln to double
  %i.lw = sitofp i32 %i.ll to double
  %i.lx = sitofp i32 %i.lk to double
  %i.ly = sitofp i32 %i.lp to double
  %i.lz = fmul nnan double %i.lx, %i.ly
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.lv, double %i.lw, double %i.lz)
  %i.mb = add nsw i32 %i.lp, %i.ll
  %i.mc = sitofp i32 %i.mb to double
  %i.md = fdiv double %i.ma, %i.mc
  %i.me = load ptr, ptr %i.in, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ad, %.loopexit.i.i, %.preheader91.i.i, %.preheader92.i.i
  %.sink134.i.i = phi ptr [ %i.lu, %bb.ai ], [ %i.me, %bb.aj ], [ %i.lf, %bb.ag ], [ %i.io, %bb.ae ], [ %i.io, %bb.ad ], [ %i.io, %.loopexit.i.i ], [ %i.io, %.preheader92.i.i ], [ %i.io, %.preheader91.i.i ]
  %.sink.i.i = phi double [ %i.lt, %bb.ai ], [ %i.md, %bb.aj ], [ %i.le, %bb.ag ], [ %i.kz, %bb.ae ], [ %i.ku, %bb.ad ], [ -1.000000e+00, %.loopexit.i.i ], [ -1.000000e+00, %.preheader92.i.i ], [ -1.000000e+00, %.preheader91.i.i ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.sink134.i.i, i64 368
  store double %.sink.i.i, ptr %i.mf, align 8, !tbaa !179
  %indvars.iv.next116.i.i = add nuw nsw i64 %indvars.iv115.i.i, 1 ; 2 uses
  %i.mg = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 6 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 264
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !39 ; 6 uses
  %i.mj = getelementptr inbounds [88 x i8], ptr %i.mi, i64 %indvars.iv.i91 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !42 ; 4 uses
  %i.ml = sext i32 %i.mk to i64
  %i.mm = icmp slt i64 %indvars.iv.next116.i.i, %i.ml
  br i1 %i.mm, label %bb.y, label %.preheader.i.i, !llvm.loop !164

.lr.ph107.i.i:                                    ; preds = %flat_mval.exit.i.i, %.lr.ph107.preheader.i.i
  %indvars.iv118.i.i = phi i64 [ 0, %.lr.ph107.preheader.i.i ], [ %indvars.iv.next119.i.i, %flat_mval.exit.i.i ] ; 2 uses
  %.081105.i.i = phi i1 [ false, %.lr.ph107.preheader.i.i ], [ %.182.i.i, %flat_mval.exit.i.i ] ; 3 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv118.i.i
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !44
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !15 ; 7 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 280
end_hunk_0
begin_hunk_1_@mincross:bb.a
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 368
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !179 ; 3 uses
  %i.qd = fcmp olt double %i.qc, 0.000000e+00
  %i.qe = getelementptr inbounds nuw i8, ptr %.15926.i.i, i64 8 ; 3 uses
  %i.qf = icmp ult ptr %i.qe, %.05536.i.i         ; 2 uses
  br i1 %i.qd, label %bb.as, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %bb.ar
  br i1 %i.qf, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.preheader.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 336
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 233
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 216
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qa, i64 360 ; 2 uses
  br label %.lr.ph.i34.i

bb.as:                                            ; preds = %bb.ar
  br i1 %i.qf, label %bb.ar, label %.critedge.thread.i.i, !llvm.loop !168

.lr.ph.i34.i:                                     ; preds = %.critedge.i.i, %.lr.ph.preheader.i.i
  %.05729.i.i = phi ptr [ %.057.i.i, %.critedge.i.i ], [ %i.qe, %.lr.ph.preheader.i.i ] ; 4 uses
  %.05428.i.i = phi i1 [ %.1.i.i, %.critedge.i.i ], [ false, %.lr.ph.preheader.i.i ] ; 2 uses
  %.pre.i.i = load ptr, ptr %.05729.i.i, align 8, !tbaa !44 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !15 ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 336
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !102 ; 2 uses
  br i1 %.05428.i.i, label %bb.at, label %.lr.ph._crit_edge.i.i

bb.at:                                            ; preds = %.lr.ph.i34.i
  %.not68.i.i = icmp eq ptr %i.qn, null
  br i1 %.not68.i.i, label %.lr.ph._crit_edge.i.i, label %.critedge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %bb.at, %.lr.ph.i34.i
  %i.qo = phi ptr [ null, %bb.at ], [ %i.qn, %.lr.ph.i34.i ] ; 3 uses
  %i.qp = load ptr, ptr %i.qg, align 8, !tbaa !102 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.qp, %i.qo        ; 2 uses
  br i1 %.b.i.i.i, label %bb.az, label %bb.au

bb.au:                                            ; preds = %.lr.ph._crit_edge.i.i
  %.not25.i.i.i = icmp eq ptr %i.qp, null
  %.not26.i.i.i = icmp eq ptr %i.qo, null
  %i.qq = or i1 %.not26.i.i.i, %.not25.i.i.i
  %or.cond29.i.i.i = or i1 %.not27.i.i.i, %i.qq
  br i1 %or.cond29.i.i.i, label %bb.ba, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qr = load i8, ptr %i.qh, align 1, !tbaa !103
  %i.qs = icmp eq i8 %i.qr, 7
  br i1 %i.qs, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.qt = load i8, ptr %i.qi, align 8, !tbaa !104
  %i.qu = icmp eq i8 %i.qt, 1
  br i1 %i.qu, label %left2right.exit.thread.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ql, i64 233
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !103
  %i.qx = icmp eq i8 %i.qw, 7
  br i1 %i.qx, label %bb.ay, label %.thread.thread.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ql, i64 216
  %i.qz = load i8, ptr %i.qy, align 8, !tbaa !104
  %i.ra = icmp eq i8 %i.qz, 1
  br i1 %i.ra, label %left2right.exit.thread.i.i, label %.thread.thread.i.i

bb.az:                                            ; preds = %.lr.ph._crit_edge.i.i
  br i1 %.not27.i.i.i, label %bb.ba, label %.thread.thread.i.i

bb.ba:                                            ; preds = %bb.az, %bb.au
  %i.rb = load i32, ptr %i.qj, align 8, !tbaa !105
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [88 x i8], ptr %i.mi, i64 %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 80
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !90 ; 4 uses
  %i.rg = icmp eq ptr %i.rf, null
  br i1 %i.rg, label %left2right.exit.thread.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.rh = load i32, ptr %i.pu, align 4, !tbaa !106
  %i.ri = and i32 %i.rh, 1
  %.not28.i.i.i = icmp eq i32 %i.ri, 0            ; 2 uses
  %spec.select.i.i36.i = select i1 %.not28.i.i.i, ptr %i.py, ptr %.pre.i.i
  %spec.select30.i.i.i = select i1 %.not28.i.i.i, ptr %.pre.i.i, ptr %i.py
  %i.rj = getelementptr inbounds nuw i8, ptr %spec.select.i.i36.i, i64 16
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !15
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 448
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !107
  %i.rn = sext i32 %i.rm to i64                   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !15
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 448
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !107
  %i.rs = sext i32 %i.rr to i64                   ; 2 uses
  %i.rt = load i64, ptr %i.rf, align 8, !tbaa !108
  %.not.i.i.i.i = icmp ugt i64 %i.rt, %i.rn
  br i1 %.not.i.i.i.i, label %bb.bc, label %left2right.exit.thread.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !109 ; 2 uses
  %.not15.i.i.i.i = icmp ugt i64 %i.rv, %i.rs
  br i1 %.not15.i.i.i.i, label %left2right.exit.i.i, label %left2right.exit.thread.i.i

left2right.exit.i.i:                              ; preds = %bb.bc
  %i.rw = mul i64 %i.rv, %i.rn
  %i.rx = add i64 %i.rw, %i.rs                    ; 2 uses
  %i.ry = lshr i64 %i.rx, 3
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !92
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.ry
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !66
  %i.sd = trunc i64 %i.rx to i8
  %i.se = and i8 %i.sd, 7
  %i.sf = lshr i8 %i.sc, %i.se
  %i.sg = trunc i8 %i.sf to i1
  br i1 %i.sg, label %.thread.thread.i.i, label %left2right.exit.thread.i.i

left2right.exit.thread.i.i:                       ; preds = %left2right.exit.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.aw
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ql, i64 368
  %i.si = load double, ptr %i.sh, align 8, !tbaa !179 ; 3 uses
  %i.sj = fcmp ult double %i.si, 0.000000e+00
  br i1 %i.sj, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %left2right.exit.thread.i.i
  %.not69.i.i = icmp ne ptr %i.qo, null
  %spec.select.i.i = or i1 %.05428.i.i, %.not69.i.i
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bd, %bb.at
  %.1.i.i = phi i1 [ true, %bb.at ], [ %spec.select.i.i, %bb.bd ]
  %.057.i.i = getelementptr inbounds nuw i8, ptr %.05729.i.i, i64 8 ; 2 uses
  %i.sk = icmp ult ptr %.057.i.i, %.05536.i.i
  br i1 %i.sk, label %.lr.ph.i34.i, label %.critedge.thread.i.i, !llvm.loop !169

bb.be:                                            ; preds = %left2right.exit.thread.i.i
  %i.sl = fcmp ogt double %i.qc, %i.si
  %i.sm = fcmp oge double %i.qc, %i.si
  %or.cond.i.i = and i1 %i.he, %i.sm
  %or.cond71.i.i = or i1 %i.sl, %or.cond.i.i
  br i1 %or.cond71.i.i, label %bb.bf, label %.thread.thread.i.i

bb.bf:                                            ; preds = %bb.be
  %i.sn = load i32, ptr %i.qj, align 8, !tbaa !105
  %i.so = getelementptr inbounds nuw i8, ptr %i.qa, i64 364 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !57 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.ql, i64 364 ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !57 ; 2 uses
  store i32 %i.sr, ptr %i.so, align 4, !tbaa !57
  %i.ss = load ptr, ptr %i.pw, align 8, !tbaa !15
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 264
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !39
  %i.sv = sext i32 %i.sn to i64
  %i.sw = getelementptr inbounds [88 x i8], ptr %i.su, i64 %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !43 ; 2 uses
  %i.sz = sext i32 %i.sr to i64
  %i.ta = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.sz
  store ptr %i.py, ptr %i.ta, align 8, !tbaa !44
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !57
  %i.tb = sext i32 %i.sp to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.sy, i64 %i.tb
  store ptr %.pre.i.i, ptr %i.tc, align 8, !tbaa !44
  %i.td = add nsw i32 %.16231.i.i, 1
  br label %.thread.thread.i.i

.thread.thread.i.i:                               ; preds = %left2right.exit.i.i, %bb.az, %bb.ay, %bb.ax, %bb.bf, %bb.be
  %.4.i35.i = phi i32 [ %i.td, %bb.bf ], [ %.16231.i.i, %bb.be ], [ %.16231.i.i, %bb.ax ], [ %.16231.i.i, %bb.ay ], [ %.16231.i.i, %bb.az ], [ %.16231.i.i, %left2right.exit.i.i ] ; 2 uses
  %i.te = icmp ult ptr %.05729.i.i, %.05536.i.i
  br i1 %i.te, label %.preheader.i33.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.thread.thread.i.i, %.critedge.preheader.i.i, %bb.as, %.critedge.i.i, %.preheader17.i.i
  %.16225.i.i = phi i32 [ %.16231.i.i, %bb.as ], [ %.06135.i.i, %.preheader17.i.i ], [ %.16231.i.i, %.critedge.i.i ], [ %.16231.i.i, %.critedge.preheader.i.i ], [ %.4.i35.i, %.thread.thread.i.i ] ; 2 uses
  %spec.select72.i.i = getelementptr inbounds i8, ptr %.05536.i.i, i64 %spec.select72.idx.i.i
  %i.tf = icmp sgt i32 %.06038.in.i.i, 1
  br i1 %i.tf, label %.preheader17.i.i, label %._crit_edge.i.i, !llvm.loop !170

._crit_edge.i.i:                                  ; preds = %.critedge.thread.i.i
  %i.tg = icmp eq i32 %.16225.i.i, 0
  br i1 %i.tg, label %reorder.exit.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i.i
  %i.th = load ptr, ptr %i.pw, align 8, !tbaa !15
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 264
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !39
  %i.tk = getelementptr [88 x i8], ptr %i.tj, i64 %indvars.iv.i91 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 65
  store i8 0, ptr %i.tl, align 1, !tbaa !94
  %i.tm = icmp sgt i64 %indvars.iv.i91, 0
  br i1 %i.tm, label %bb.bh, label %reorder.exit.i

bb.bh:                                            ; preds = %bb.bg
  %i.tn = getelementptr i8, ptr %i.tk, i64 -23
  store i8 0, ptr %i.tn, align 1, !tbaa !94
  br label %reorder.exit.i

reorder.exit.i:                                   ; preds = %bb.bh, %bb.bg, %._crit_edge.i.i, %.preheader.i.i, %bb.x
  %.val32116.i = phi ptr [ %i.mg, %bb.bh ], [ %i.mg, %.preheader.i.i ], [ %i.mg, %._crit_edge.i.i ], [ %i.mg, %bb.bg ], [ %.val3284.i, %bb.x ] ; 2 uses
  %.pre8690115.i = phi ptr [ %i.mi, %bb.bh ], [ %i.mi, %.preheader.i.i ], [ %i.mi, %._crit_edge.i.i ], [ %i.mi, %bb.bg ], [ %.pre86.i, %bb.x ]
  %indvars.iv.next.i92 = add nsw i64 %indvars.iv.i91, %i.id
  %i.to = icmp eq i64 %indvars.iv.i91, %sext.i
  br i1 %i.to, label %mincross_step.exit, label %bb.x, !llvm.loop !171

mincross_step.exit:                               ; preds = %reorder.exit.i, %bb.w
  %.val.i = phi ptr [ %i.hg, %bb.w ], [ %.val32116.i, %reorder.exit.i ]
  %i.tp = xor i1 %i.he, true
  tail call fastcc void @transpose(ptr %.val.i, i1 noundef zeroext %i.tp)
  %i.tq = tail call fastcc i64 @ncross()          ; 5 uses
  %.not64 = icmp sgt i64 %i.tq, %.3155
  br i1 %.not64, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %mincross_step.exit
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.val, i64 336
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !37 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.val, i64 340
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !38 ; 2 uses
  %.not2.i94 = icmp sgt i32 %i.ts, %i.tu
  br i1 %.not2.i94, label %save_best.exit107, label %.preheader.lr.ph.i95

.preheader.lr.ph.i95:                             ; preds = %bb.bi
  %i.tv = getelementptr inbounds nuw i8, ptr %.val, i64 264
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !39
  %i.tx = sext i32 %i.ts to i64
  %i.ty = add i32 %i.tu, 1
  br label %.preheader.i96

.preheader.i96:                                   ; preds = %._crit_edge.i98, %.preheader.lr.ph.i95
  %indvars.iv6.i97 = phi i64 [ %i.tx, %.preheader.lr.ph.i95 ], [ %indvars.iv.next7.i99, %._crit_edge.i98 ] ; 2 uses
  %i.tz = getelementptr inbounds [88 x i8], ptr %i.tw, i64 %indvars.iv6.i97 ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !42 ; 3 uses
  %i.ub = icmp sgt i32 %i.ua, 0
  br i1 %i.ub, label %.lr.ph.i102, label %._crit_edge.i98

.lr.ph.i102:                                      ; preds = %.preheader.i96
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count.i103 = zext nneg i32 %i.ua to i64 ; 2 uses
  %xtraiter323 = and i64 %wide.trip.count.i103, 3 ; 3 uses
  %i.ue = icmp ult i32 %i.ua, 4
  br i1 %i.ue, label %.epil.preheader322, label %.lr.ph.i102.new

.lr.ph.i102.new:                                  ; preds = %.lr.ph.i102
  %unroll_iter327 = and i64 %wide.trip.count.i103, 2147483644
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.lr.ph.i102.new
  %indvars.iv.i104 = phi i64 [ 0, %.lr.ph.i102.new ], [ %indvars.iv.next.i105.3, %bb.bj ] ; 5 uses
  %niter328 = phi i64 [ 0, %.lr.ph.i102.new ], [ %niter328.next.3, %bb.bj ]
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !44
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 16
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !15 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 364
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !57
  %i.ul = sitofp i32 %i.uk to double
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  store double %i.ul, ptr %i.um, align 8, !tbaa !176
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !44
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !15 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 364
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !57
  %i.uu = sitofp i32 %i.ut to double
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  store double %i.uu, ptr %i.uv, align 8, !tbaa !176
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !44
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !15 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 364
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !57
  %i.vd = sitofp i32 %i.vc to double
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 32
  store double %i.vd, ptr %i.ve, align 8, !tbaa !176
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !44
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !15 ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 364
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !57
  %i.vm = sitofp i32 %i.vl to double
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  store double %i.vm, ptr %i.vn, align 8, !tbaa !176
  %indvars.iv.next.i105.3 = add nuw nsw i64 %indvars.iv.i104, 4 ; 2 uses
  %niter328.next.3 = add i64 %niter328, 4         ; 2 uses
  %niter328.ncmp.3 = icmp eq i64 %niter328.next.3, %unroll_iter327
  br i1 %niter328.ncmp.3, label %._crit_edge.i98.loopexit.unr-lcssa, label %bb.bj, !llvm.loop !154

._crit_edge.i98.loopexit.unr-lcssa:               ; preds = %bb.bj
  %lcmp.mod325.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod325.not, label %._crit_edge.i98, label %.epil.preheader322

.epil.preheader322:                               ; preds = %._crit_edge.i98.loopexit.unr-lcssa, %.lr.ph.i102
  %indvars.iv.i104.epil.init = phi i64 [ 0, %.lr.ph.i102 ], [ %indvars.iv.next.i105.3, %._crit_edge.i98.loopexit.unr-lcssa ]
  %lcmp.mod326 = icmp ne i64 %xtraiter323, 0
  tail call void @llvm.assume(i1 %lcmp.mod326)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.epil.preheader322
  %indvars.iv.i104.epil = phi i64 [ %indvars.iv.i104.epil.init, %.epil.preheader322 ], [ %indvars.iv.next.i105.epil, %bb.bk ] ; 2 uses
  %epil.iter324 = phi i64 [ 0, %.epil.preheader322 ], [ %epil.iter324.next, %bb.bk ]
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.ud, i64 %indvars.iv.i104.epil
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !44
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !15 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 364
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !57
  %i.vu = sitofp i32 %i.vt to double
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 32
  store double %i.vu, ptr %i.vv, align 8, !tbaa !176
  %indvars.iv.next.i105.epil = add nuw nsw i64 %indvars.iv.i104.epil, 1
  %epil.iter324.next = add i64 %epil.iter324, 1   ; 2 uses
  %epil.iter324.cmp.not = icmp eq i64 %epil.iter324.next, %xtraiter323
  br i1 %epil.iter324.cmp.not, label %._crit_edge.i98, label %bb.bk, !llvm.loop !172

._crit_edge.i98:                                  ; preds = %._crit_edge.i98.loopexit.unr-lcssa, %bb.bk, %.preheader.i96
  %indvars.iv.next7.i99 = add nsw i64 %indvars.iv6.i97, 1 ; 2 uses
  %lftr.wideiv.i100 = trunc i64 %indvars.iv.next7.i99 to i32
  %exitcond9.not.i101 = icmp eq i32 %i.ty, %lftr.wideiv.i100
  br i1 %exitcond9.not.i101, label %save_best.exit107, label %.preheader.i96, !llvm.loop !156

save_best.exit107:                                ; preds = %._crit_edge.i98, %bb.bi
  %i.vw = sitofp i64 %i.tq to double
  %i.vx = sitofp i64 %.3155 to double
  %i.vy = fmul nnan double %i.vx, f0x3FEFD70A3D70A3D7
  %i.vz = fcmp ogt double %i.vy, %i.vw
  %spec.select = select i1 %i.vz, i32 0, i32 %i.gz
  br label %bb.bl

bb.bl:                                            ; preds = %mincross_step.exit, %save_best.exit107
  %.253 = phi i32 [ %spec.select, %save_best.exit107 ], [ %i.gz, %mincross_step.exit ]
  %.4 = phi i64 [ %i.tq, %save_best.exit107 ], [ %.3155, %mincross_step.exit ] ; 2 uses
  %i.wa = add nuw nsw i32 %.054152, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.wa, %.055
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !173

._crit_edge:                                      ; preds = %bb.bl, %bb.s, %save_best.exit81
  %.348.lcssa = phi i64 [ %.247, %save_best.exit81 ], [ %.348154, %bb.s ], [ %i.tq, %bb.bl ] ; 3 uses
  %.3.lcssa = phi i64 [ %.2, %save_best.exit81 ], [ %.3155, %bb.s ], [ %.4, %bb.bl ] ; 4 uses
  %i.wb = icmp eq i64 %.348.lcssa, 0
  %i.wc = add nuw nsw i32 %.050160, 1             ; 2 uses
  %exitcond188.not = icmp eq i32 %i.wc, 3
  %or.cond253 = select i1 %i.wb, i1 true, i1 %exitcond188.not
  br i1 %or.cond253, label %bb.bm, label %bb.e, !llvm.loop !174

bb.bm:                                            ; preds = %._crit_edge
  %i.wd = icmp sgt i64 %.348.lcssa, %.3.lcssa
  br i1 %i.wd, label %bb.bn, label %restore_best.exit126

bb.bn:                                            ; preds = %bb.bm
  %i.we = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 4 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 336
  %i.wg = load i32, ptr %i.wf, align 8, !tbaa !37 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 340
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !38 ; 2 uses
  %.not25.i108 = icmp sgt i32 %i.wg, %i.wi
  br i1 %.not25.i108, label %restore_best.exit126, label %.preheader23.lr.ph.i109

.preheader23.lr.ph.i109:                          ; preds = %bb.bn
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 264
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !39
  %i.wl = sext i32 %i.wg to i64                   ; 2 uses
  %i.wm = add i32 %i.wi, 1
  br label %.preheader23.i110

.preheader23.i110:                                ; preds = %._crit_edge.i112, %.preheader23.lr.ph.i109
  %indvars.iv32.i111 = phi i64 [ %i.wl, %.preheader23.lr.ph.i109 ], [ %indvars.iv.next33.i113, %._crit_edge.i112 ] ; 2 uses
  %i.wn = getelementptr inbounds [88 x i8], ptr %i.wk, i64 %indvars.iv32.i111 ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !42 ; 3 uses
  %i.wp = icmp sgt i32 %i.wo, 0
  br i1 %i.wp, label %.lr.ph.i121, label %._crit_edge.i112

.lr.ph.i121:                                      ; preds = %.preheader23.i110
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !43 ; 5 uses
  %wide.trip.count.i122 = zext nneg i32 %i.wo to i64 ; 2 uses
  %xtraiter330 = and i64 %wide.trip.count.i122, 3 ; 3 uses
  %i.ws = icmp ult i32 %i.wo, 4
  br i1 %i.ws, label %.epil.preheader329, label %.lr.ph.i121.new

.lr.ph.i121.new:                                  ; preds = %.lr.ph.i121
  %unroll_iter334 = and i64 %wide.trip.count.i122, 2147483644
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %.lr.ph.i121.new
  %indvars.iv.i123 = phi i64 [ 0, %.lr.ph.i121.new ], [ %indvars.iv.next.i124.3, %bb.bo ] ; 5 uses
  %niter335 = phi i64 [ 0, %.lr.ph.i121.new ], [ %niter335.next.3, %bb.bo ]
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv.i123
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !44
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 16
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !15 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 32
end_hunk_1
