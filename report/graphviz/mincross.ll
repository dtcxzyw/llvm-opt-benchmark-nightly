Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mincross?download=true
inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@mincross:bb.a
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
  %.348154 = phi i64 [ %i.tp, %bb.bl ], [ %.247, %save_best.exit81 ] ; 3 uses
  %.051153 = phi i32 [ %.253, %bb.bl ], [ 0, %save_best.exit81 ] ; 3 uses
  %.054152 = phi i32 [ %i.vz, %bb.bl ], [ 0, %save_best.exit81 ] ; 4 uses
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
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !39
  br label %bb.x

bb.x:                                             ; preds = %reorder.exit.i, %.lr.ph.i90
  %.pre86.i = phi ptr [ %.pre.i, %.lr.ph.i90 ], [ %.pre8690115.i, %reorder.exit.i ] ; 2 uses
  %.val3284.i = phi ptr [ %i.hg, %.lr.ph.i90 ], [ %.val32116.i, %reorder.exit.i ]
  %indvars.iv.i91 = phi i64 [ %i.ic, %.lr.ph.i90 ], [ %indvars.iv.next.i92, %reorder.exit.i ] ; 6 uses
  %i.ie = load ptr, ptr @TI_list, align 8, !tbaa !76 ; 10 uses
  %i.if = getelementptr inbounds [88 x i8], ptr %.pre86.i, i64 %indvars.iv.i91 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !43 ; 2 uses
  %i.ii = load i32, ptr %i.if, align 8, !tbaa !42
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph103.i.i, label %reorder.exit.i

.lr.ph103.i.i:                                    ; preds = %bb.x
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  br label %bb.y

.preheader.i.i:                                   ; preds = %.loopexit.thread.i.i
  %i.il = icmp sgt i32 %i.mj, 0
  br i1 %i.il, label %.lr.ph107.preheader.i.i, label %reorder.exit.i

.lr.ph107.preheader.i.i:                          ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.mj to i64 ; 2 uses
  br label %.lr.ph107.i.i

bb.y:                                             ; preds = %.loopexit.thread.i.i, %.lr.ph103.i.i
  %indvars.iv115.i.i = phi i64 [ 0, %.lr.ph103.i.i ], [ %indvars.iv.next116.i.i, %.loopexit.thread.i.i ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv115.i.i
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !44
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16 ; 4 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !15 ; 7 uses
  br i1 %.not37.i, label %.preheader92.i.i, label %.preheader91.i.i

.preheader92.i.i:                                 ; preds = %bb.y
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 256
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !95 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !52 ; 2 uses
  %.not94.i.i = icmp eq ptr %i.is, null
  br i1 %.not94.i.i, label %.loopexit.thread.i.i, label %.lr.ph.i.i

.preheader91.i.i:                                 ; preds = %bb.y
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 272
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !51 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !52 ; 2 uses
  %.not8997.i.i = icmp eq ptr %i.iv, null
  br i1 %.not8997.i.i, label %.loopexit.thread.i.i, label %.lr.ph100.i.i

.lr.ph100.i.i:                                    ; preds = %.preheader91.i.i, %bb.aa
  %indvars.iv112.i.i = phi i64 [ %indvars.iv.next113.i.i, %bb.aa ], [ 0, %.preheader91.i.i ]
  %i.iw = phi ptr [ %i.ju, %bb.aa ], [ %i.iv, %.preheader91.i.i ] ; 3 uses
  %.07999.i.i = phi i64 [ %.180.i.i, %bb.aa ], [ 0, %.preheader91.i.i ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !15 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 210
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !96
  %i.jb = icmp sgt i16 %i.ja, 0
  br i1 %i.jb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph100.i.i
  %i.jc = load i32, ptr %i.iw, align 8
  %i.jd = and i32 %i.jc, 3
  %i.je = icmp eq i32 %i.jd, 2
  %i.jf = select i1 %i.je, i64 56, i64 -8
  %i.jg = getelementptr inbounds i8, ptr %i.iw, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !56
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !15
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 364
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !57
  %i.jm = shl nsw i32 %i.jl, 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iy, i64 108
  %i.jo = load i8, ptr %i.jn, align 4, !tbaa !177
  %i.jp = zext i8 %i.jo to i32
  %i.jq = or disjoint i32 %i.jm, %i.jp
  %i.jr = add i64 %.07999.i.i, 1
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.07999.i.i
  store i32 %i.jq, ptr %i.js, align 4, !tbaa !69
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph100.i.i
  %.180.i.i = phi i64 [ %i.jr, %bb.z ], [ %.07999.i.i, %.lr.ph100.i.i ] ; 2 uses
  %indvars.iv.next113.i.i = add nuw nsw i64 %indvars.iv112.i.i, 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %indvars.iv.next113.i.i
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !52 ; 2 uses
  %.not89.i.i = icmp eq ptr %i.ju, null
  br i1 %.not89.i.i, label %.loopexit.i.i, label %.lr.ph100.i.i, !llvm.loop !162

.lr.ph.i.i:                                       ; preds = %.preheader92.i.i, %bb.ac
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.ac ], [ 0, %.preheader92.i.i ]
  %i.jv = phi ptr [ %i.kt, %bb.ac ], [ %i.is, %.preheader92.i.i ] ; 3 uses
  %.296.i.i = phi i64 [ %.3.i.i, %bb.ac ], [ 0, %.preheader92.i.i ] ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !15 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 210
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !96
  %i.ka = icmp sgt i16 %i.jz, 0
  br i1 %i.ka, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.kb = load i32, ptr %i.jv, align 8
  %i.kc = and i32 %i.kb, 3
  %i.kd = icmp eq i32 %i.kc, 3
  %i.ke = select i1 %i.kd, i64 56, i64 120
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.ke
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !56
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !15
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 364
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !57
  %i.kl = shl nsw i32 %i.kk, 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.jx, i64 60
  %i.kn = load i8, ptr %i.km, align 4, !tbaa !178
  %i.ko = zext i8 %i.kn to i32
  %i.kp = or disjoint i32 %i.kl, %i.ko
  %i.kq = add i64 %.296.i.i, 1
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %.296.i.i
  store i32 %i.kp, ptr %i.kr, align 4, !tbaa !69
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i.i
  %.3.i.i = phi i64 [ %i.kq, %bb.ab ], [ %.296.i.i, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %indvars.iv.next.i.i
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !52 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !163

.loopexit.i.i:                                    ; preds = %bb.aa, %bb.ac
  %.4.i.i = phi i64 [ %.3.i.i, %bb.ac ], [ %.180.i.i, %bb.aa ] ; 5 uses
  switch i64 %.4.i.i, label %bb.af [
    i64 0, label %.loopexit.thread.i.i
    i64 1, label %bb.ad
    i64 2, label %bb.ae
  ]

bb.ad:                                            ; preds = %.loopexit.i.i
  %i.ku = load i32, ptr %i.ie, align 4, !tbaa !69
  %i.kv = sitofp i32 %i.ku to double
  br label %.loopexit.thread.i.i

bb.ae:                                            ; preds = %.loopexit.i.i
  %i.kw = load i32, ptr %i.ie, align 4, !tbaa !69
  %i.kx = load i32, ptr %i.ik, align 4, !tbaa !69
  %i.ky = add nsw i32 %i.kx, %i.kw
  %i.kz = sdiv i32 %i.ky, 2
  %i.la = sitofp i32 %i.kz to double
  br label %.loopexit.thread.i.i

bb.af:                                            ; preds = %.loopexit.i.i
  tail call void @qsort(ptr noundef %i.ie, i64 noundef %.4.i.i, i64 noundef 4, ptr noundef nonnull @ordercmpf) #20
  %i.lb = and i64 %.4.i.i, 1
  %.not90.i.i = icmp eq i64 %i.lb, 0
  %i.lc = lshr i64 %.4.i.i, 1                     ; 2 uses
  br i1 %.not90.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !69
  %i.lf = sitofp i32 %i.le to double
  %i.lg = load ptr, ptr %i.io, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

bb.ah:                                            ; preds = %bb.af
  %i.lh = getelementptr [4 x i8], ptr %i.ie, i64 %.4.i.i
  %i.li = getelementptr i8, ptr %i.lh, i64 -4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !69
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.lc ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !69 ; 3 uses
  %i.lm = sub nsw i32 %i.lj, %i.ll                ; 3 uses
  %i.ln = getelementptr i8, ptr %i.lk, i64 -4
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !69 ; 3 uses
  %i.lp = load i32, ptr %i.ie, align 4, !tbaa !69
  %i.lq = sub nsw i32 %i.lo, %i.lp                ; 3 uses
  %i.lr = icmp eq i32 %i.lq, %i.lm
  br i1 %i.lr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ls = add nsw i32 %i.lo, %i.ll
  %i.lt = sdiv i32 %i.ls, 2
  %i.lu = sitofp i32 %i.lt to double
  %2 = load ptr, ptr %i.io, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.lv = sitofp i32 %i.lo to double
  %i.lw = sitofp i32 %i.lm to double
  %i.lx = sitofp i32 %i.ll to double
  %i.ly = sitofp i32 %i.lq to double
  %i.lz = fmul nnan double %i.lx, %i.ly
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.lv, double %i.lw, double %i.lz)
  %i.mb = add nsw i32 %i.lq, %i.lm
  %i.mc = sitofp i32 %i.mb to double
  %i.md = fdiv double %i.ma, %i.mc
  %3 = load ptr, ptr %i.io, align 8, !tbaa !15
  br label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae, %bb.ad, %.loopexit.i.i, %.preheader91.i.i, %.preheader92.i.i
  %.sink134.i.i = phi ptr [ %2, %bb.ai ], [ %3, %bb.aj ], [ %i.lg, %bb.ag ], [ %i.ip, %bb.ae ], [ %i.ip, %bb.ad ], [ %i.ip, %.loopexit.i.i ], [ %i.ip, %.preheader92.i.i ], [ %i.ip, %.preheader91.i.i ]
  %.sink.i.i = phi double [ %i.lu, %bb.ai ], [ %i.md, %bb.aj ], [ %i.lf, %bb.ag ], [ %i.la, %bb.ae ], [ %i.kv, %bb.ad ], [ -1.000000e+00, %.loopexit.i.i ], [ -1.000000e+00, %.preheader92.i.i ], [ -1.000000e+00, %.preheader91.i.i ]
  %i.me = getelementptr inbounds nuw i8, ptr %.sink134.i.i, i64 368
  store double %.sink.i.i, ptr %i.me, align 8, !tbaa !179
  %indvars.iv.next116.i.i = add nuw nsw i64 %indvars.iv115.i.i, 1 ; 2 uses
  %i.mf = load ptr, ptr %i.bi, align 8, !tbaa !15 ; 6 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 264
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !39 ; 6 uses
  %i.mi = getelementptr inbounds [88 x i8], ptr %i.mh, i64 %indvars.iv.i91 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !42 ; 4 uses
  %i.mk = sext i32 %i.mj to i64
  %i.ml = icmp slt i64 %indvars.iv.next116.i.i, %i.mk
  br i1 %i.ml, label %bb.y, label %.preheader.i.i, !llvm.loop !164

.lr.ph107.i.i:                                    ; preds = %flat_mval.exit.i.i, %.lr.ph107.preheader.i.i
  %indvars.iv118.i.i = phi i64 [ 0, %.lr.ph107.preheader.i.i ], [ %indvars.iv.next119.i.i, %flat_mval.exit.i.i ] ; 2 uses
  %.081105.i.i = phi i1 [ false, %.lr.ph107.preheader.i.i ], [ %.182.i.i, %flat_mval.exit.i.i ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv118.i.i
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !44
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !15 ; 7 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 280
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !97
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %bb.ak, label %flat_mval.exit.i.i

bb.ak:                                            ; preds = %.lr.ph107.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mp, i64 264
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !98
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %bb.al, label %flat_mval.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mp, i64 312
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !99
  %.not.i.i.i = icmp eq i64 %i.mx, 0
  br i1 %.not.i.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.my = getelementptr inbounds nuw i8, ptr %i.mp, i64 304
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !100 ; 3 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !52 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 8
  %i.nc = and i32 %i.nb, 3
  %i.nd = icmp eq i32 %i.nc, 3
  %i.ne = select i1 %i.nd, i64 56, i64 120
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.ne
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !56 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !52 ; 2 uses
  %.not451.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not451.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.am
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !15
  %.phi.trans.insert15.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 364
  %.pre16.i.i.i = load i32, ptr %.phi.trans.insert15.i.i.i, align 4, !tbaa !57
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.nj = phi i32 [ %.pre16.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ny, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ]
  %i.nk = phi ptr [ %i.ni, %.lr.ph.preheader.i.i.i ], [ %i.nx, %.lr.ph.i.i.i ] ; 2 uses
  %.03.i.i.i = phi ptr [ %i.ng, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.nl = load i32, ptr %i.nk, align 8
  %i.nm = and i32 %i.nl, 3
  %i.nn = icmp eq i32 %i.nm, 3
  %i.no = select i1 %i.nn, i64 56, i64 120
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !56 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !15
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 364
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !57 ; 2 uses
  %i.nv = icmp sgt i32 %i.nu, %i.nj
  %spec.select.i.i.i = select i1 %i.nv, ptr %i.nq, ptr %.03.i.i.i ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %indvars.iv.next.i.i.i
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !52 ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.nx, null
  %i.ny = tail call i32 @llvm.smax.i32(i32 %i.nu, i32 %i.nj)
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !165

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.am
  %.0.lcssa.i.i.i = phi ptr [ %i.ng, %bb.am ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !15
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 368
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !179 ; 2 uses
  %i.od = fcmp ult double %i.oc, 0.000000e+00
  br i1 %i.od, label %flat_mval.exit.i.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i
  %i.oe = fadd double %i.oc, 1.000000e+00
  br label %.sink.split.i.i.i

bb.ao:                                            ; preds = %bb.al
  %i.of = getelementptr inbounds nuw i8, ptr %i.mp, i64 296
  %i.og = load i64, ptr %i.of, align 8, !tbaa !101
  %.not43.i.i.i = icmp eq i64 %i.og, 0
  br i1 %.not43.i.i.i, label %flat_mval.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.oh = getelementptr inbounds nuw i8, ptr %i.mp, i64 288
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !83 ; 3 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !52 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 8
  %i.ol = and i32 %i.ok, 3
  %i.om = icmp eq i32 %i.ol, 2
  %i.on = select i1 %i.om, i64 56, i64 -8
  %i.oo = getelementptr inbounds i8, ptr %i.oj, i64 %i.on
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !56 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !52 ; 2 uses
  %.not444.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not444.i.i.i, label %._crit_edge9.i.i.i, label %.lr.ph8.preheader.i.i.i

.lr.ph8.preheader.i.i.i:                          ; preds = %bb.ap
  %.phi.trans.insert17.i.i.i = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %.pre18.i.i.i = load ptr, ptr %.phi.trans.insert17.i.i.i, align 8, !tbaa !15
  %.phi.trans.insert19.i.i.i = getelementptr inbounds nuw i8, ptr %.pre18.i.i.i, i64 364
  %.pre20.i.i.i = load i32, ptr %.phi.trans.insert19.i.i.i, align 4, !tbaa !57
  br label %.lr.ph8.i.i.i

.lr.ph8.i.i.i:                                    ; preds = %.lr.ph8.i.i.i, %.lr.ph8.preheader.i.i.i
  %i.os = phi i32 [ %.pre20.i.i.i, %.lr.ph8.preheader.i.i.i ], [ %i.ph, %.lr.ph8.i.i.i ] ; 2 uses
  %indvars.iv12.i.i.i = phi i64 [ 1, %.lr.ph8.preheader.i.i.i ], [ %indvars.iv.next13.i.i.i, %.lr.ph8.i.i.i ]
  %i.ot = phi ptr [ %i.or, %.lr.ph8.preheader.i.i.i ], [ %i.pg, %.lr.ph8.i.i.i ] ; 2 uses
  %.26.i.i.i = phi ptr [ %i.op, %.lr.ph8.preheader.i.i.i ], [ %spec.select46.i.i.i, %.lr.ph8.i.i.i ]
  %i.ou = load i32, ptr %i.ot, align 8
  %i.ov = and i32 %i.ou, 3
  %i.ow = icmp eq i32 %i.ov, 2
  %i.ox = select i1 %i.ow, i64 56, i64 -8
  %i.oy = getelementptr inbounds i8, ptr %i.ot, i64 %i.ox
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !56 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !15
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 364
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !57 ; 2 uses
  %i.pe = icmp slt i32 %i.pd, %i.os
  %spec.select46.i.i.i = select i1 %i.pe, ptr %i.oz, ptr %.26.i.i.i ; 2 uses
  %indvars.iv.next13.i.i.i = add nuw nsw i64 %indvars.iv12.i.i.i, 1 ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %indvars.iv.next13.i.i.i
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !52 ; 2 uses
  %.not44.i.i.i = icmp eq ptr %i.pg, null
  %i.ph = tail call i32 @llvm.smin.i32(i32 %i.pd, i32 %i.os)
  br i1 %.not44.i.i.i, label %._crit_edge9.i.i.i, label %.lr.ph8.i.i.i, !llvm.loop !166

._crit_edge9.i.i.i:                               ; preds = %.lr.ph8.i.i.i, %bb.ap
  %.2.lcssa.i.i.i = phi ptr [ %i.op, %bb.ap ], [ %spec.select46.i.i.i, %.lr.ph8.i.i.i ]
  %i.pi = getelementptr inbounds nuw i8, ptr %.2.lcssa.i.i.i, i64 16
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !15
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 368
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !179 ; 2 uses
  %i.pm = fcmp ogt double %i.pl, 0.000000e+00
  br i1 %i.pm, label %bb.aq, label %flat_mval.exit.i.i

bb.aq:                                            ; preds = %._crit_edge9.i.i.i
  %i.pn = fadd double %i.pl, -1.000000e+00
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.aq, %bb.an
  %.sink.i.i.i = phi double [ %i.pn, %bb.aq ], [ %i.oe, %bb.an ]
  %i.po = getelementptr inbounds nuw i8, ptr %i.mp, i64 368
  store double %.sink.i.i.i, ptr %i.po, align 8, !tbaa !179
  br label %flat_mval.exit.i.i

flat_mval.exit.i.i:                               ; preds = %.sink.split.i.i.i, %._crit_edge9.i.i.i, %bb.ao, %._crit_edge.i.i.i, %bb.ak, %.lr.ph107.i.i
  %.182.i.i = phi i1 [ %.081105.i.i, %.lr.ph107.i.i ], [ %.081105.i.i, %bb.ak ], [ true, %._crit_edge9.i.i.i ], [ true, %._crit_edge.i.i.i ], [ true, %bb.ao ], [ %.081105.i.i, %.sink.split.i.i.i ] ; 2 uses
  %indvars.iv.next119.i.i = add nuw nsw i64 %indvars.iv118.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next119.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %medians.exit.i, label %.lr.ph107.i.i, !llvm.loop !167

medians.exit.i:                                   ; preds = %flat_mval.exit.i.i
  %i.pp = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !43 ; 3 uses
  %i.pr = or i1 %i.he, %.182.i.i
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %wide.trip.count.i.i
  %.b.i.i.i = load i1, ptr @ReMincross, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.mf, i64 132
  %i.pu = load ptr, ptr @Root, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  %spec.select72.idx.i.i = select i1 %i.pr, i64 0, i64 -8
  br label %.preheader17.i.i

.preheader17.i.i:                                 ; preds = %.critedge.thread.i.i, %medians.exit.i
  %.06038.in.i.i = phi i32 [ %i.mj, %medians.exit.i ], [ %.06038.i.i, %.critedge.thread.i.i ] ; 2 uses
  %.05536.i.i = phi ptr [ %i.ps, %medians.exit.i ], [ %spec.select72.i.i, %.critedge.thread.i.i ] ; 5 uses
  %.06135.i.i = phi i32 [ 0, %medians.exit.i ], [ %.16225.i.i, %.critedge.thread.i.i ] ; 2 uses
  %.06038.i.i = add nsw i32 %.06038.in.i.i, -1
  %i.pw = icmp ult ptr %i.pq, %.05536.i.i
  br i1 %i.pw, label %.preheader.i33.i, label %.critedge.thread.i.i

.preheader.i33.i:                                 ; preds = %.preheader17.i.i, %.thread.thread.i.i
  %.05832.i.i = phi ptr [ %.05729.i.i, %.thread.thread.i.i ], [ %i.pq, %.preheader17.i.i ]
  %.16231.i.i = phi i32 [ %.4.i35.i, %.thread.thread.i.i ], [ %.06135.i.i, %.preheader17.i.i ] ; 9 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.as, %.preheader.i33.i
  %.15926.i.i = phi ptr [ %.05832.i.i, %.preheader.i33.i ], [ %i.qd, %bb.as ] ; 2 uses
  %i.px = load ptr, ptr %.15926.i.i, align 8, !tbaa !44 ; 4 uses
end_hunk_0
