inline.NumInlined: 13
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mca_coll_basic_reduce_scatter_intra:bb.a
  br label %._crit_edge409

.lr.ph404.preheader:                              ; preds = %.preheader398
  %i.cp = sext i32 %i.bu to i64                   ; 4 uses
  %wide.trip.count446 = zext nneg i32 %i.bt to i64 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.cp ; 3 uses
  %xtraiter578 = and i64 %wide.trip.count446, 1
  %i.cq = icmp eq i32 %i.bt, 1
  br i1 %i.cq, label %.lr.ph404.epil.preheader, label %.lr.ph404.preheader.new

.lr.ph404.preheader.new:                          ; preds = %.lr.ph404.preheader
  %unroll_iter582 = and i64 %wide.trip.count446, 2147483646
  br label %.lr.ph404

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.ck) #10
  br label %.sink.split

.lr.ph404:                                        ; preds = %bb.v, %.lr.ph404.preheader.new
  %indvars.iv443 = phi i64 [ 0, %.lr.ph404.preheader.new ], [ %indvars.iv.next444.1, %bb.v ] ; 6 uses
  %niter583 = phi i64 [ 0, %.lr.ph404.preheader.new ], [ %niter583.next.1, %bb.v ]
  %i.cr = icmp slt i64 %indvars.iv443, %i.cp
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph404
  %.idx = shl nuw nsw i64 %indvars.iv443, 3
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !41
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !41
  %i.cw = add nsw i32 %i.cv, %i.cu
  br label %.lr.ph404.1

bb.s:                                             ; preds = %.lr.ph404
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv443
  %i.cx = load i32, ptr %gep, align 4, !tbaa !41
  br label %.lr.ph404.1

.lr.ph404.1:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i32 [ %i.cw, %bb.r ], [ %i.cx, %bb.s ]
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv443
  store i32 %.sink, ptr %i.cy, align 4, !tbaa !41
  %indvars.iv.next444 = or disjoint i64 %indvars.iv443, 1 ; 4 uses
  %i.cz = icmp slt i64 %indvars.iv.next444, %i.cp
  br i1 %i.cz, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph404.1
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next444
  %i.da = load i32, ptr %gep.1, align 4, !tbaa !41
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph404.1
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next444, 3
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !41
  %i.de = load i32, ptr %i.db, align 4, !tbaa !41
  %i.df = add nsw i32 %i.de, %i.dd
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink.1 = phi i32 [ %i.df, %bb.u ], [ %i.da, %bb.t ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next444
  store i32 %.sink.1, ptr %i.dg, align 4, !tbaa !41
  %indvars.iv.next444.1 = add nuw nsw i64 %indvars.iv443, 2 ; 2 uses
  %niter583.next.1 = add i64 %niter583, 2         ; 2 uses
  %niter583.ncmp.1 = icmp eq i64 %niter583.next.1, %unroll_iter582
  br i1 %niter583.ncmp.1, label %._crit_edge405.unr-lcssa, label %.lr.ph404, !llvm.loop !63

._crit_edge405.unr-lcssa:                         ; preds = %bb.v
  %lcmp.mod580.not = icmp eq i64 %xtraiter578, 0
  br i1 %lcmp.mod580.not, label %._crit_edge405, label %.lr.ph404.epil.preheader

.lr.ph404.epil.preheader:                         ; preds = %._crit_edge405.unr-lcssa, %.lr.ph404.preheader
  %indvars.iv443.epil.init = phi i64 [ 0, %.lr.ph404.preheader ], [ %indvars.iv.next444.1, %._crit_edge405.unr-lcssa ] ; 4 uses
  %lcmp.mod581 = trunc i32 %i.bt to i1
  tail call void @llvm.assume(i1 %lcmp.mod581)
  %i.dh = icmp slt i64 %indvars.iv443.epil.init, %i.cp
  br i1 %i.dh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph404.epil.preheader
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv443.epil.init
  %i.di = load i32, ptr %gep.epil, align 4, !tbaa !41
  br label %._crit_edge405.epilog-lcssa

bb.x:                                             ; preds = %.lr.ph404.epil.preheader
  %.idx.epil = shl nuw nsw i64 %indvars.iv443.epil.init, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.epil ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !41
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !41
  %i.dn = add nsw i32 %i.dm, %i.dl
  br label %._crit_edge405.epilog-lcssa

._crit_edge405.epilog-lcssa:                      ; preds = %bb.x, %bb.w
  %.sink.epil = phi i32 [ %i.dn, %bb.x ], [ %i.di, %bb.w ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv443.epil.init
  store i32 %.sink.epil, ptr %i.do, align 4, !tbaa !41
  br label %._crit_edge405

._crit_edge405:                                   ; preds = %._crit_edge405.unr-lcssa, %._crit_edge405.epilog-lcssa
  store i32 0, ptr %i.cm, align 4, !tbaa !41
  %.not505 = icmp eq i32 %i.bt, 1
  br i1 %.not505, label %._crit_edge409, label %.lr.ph408.preheader

.lr.ph408.preheader:                              ; preds = %._crit_edge405
  %i.dp = add nsw i32 %i.bt, -1
  %wide.trip.count451 = zext nneg i32 %i.dp to i64 ; 2 uses
  %xtraiter584 = and i64 %wide.trip.count451, 3   ; 3 uses
  %i.dq = add nsw i32 %i.bt, -2
  %i.dr = icmp ult i32 %i.dq, 3
  br i1 %i.dr, label %.lr.ph408.epil.preheader, label %.lr.ph408.preheader.new

.lr.ph408.preheader.new:                          ; preds = %.lr.ph408.preheader
  %unroll_iter590 = and i64 %wide.trip.count451, 2147483644
  br label %.lr.ph408

.lr.ph408:                                        ; preds = %.lr.ph408, %.lr.ph408.preheader.new
  %i.ds = phi i32 [ 0, %.lr.ph408.preheader.new ], [ %i.eh, %.lr.ph408 ]
  %indvars.iv448 = phi i64 [ 0, %.lr.ph408.preheader.new ], [ %indvars.iv.next449.3, %.lr.ph408 ] ; 5 uses
  %niter591 = phi i64 [ 0, %.lr.ph408.preheader.new ], [ %niter591.next.3, %.lr.ph408 ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv448
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !41
  %i.dv = add nsw i32 %i.du, %i.ds                ; 2 uses
  %indvars.iv.next449 = or disjoint i64 %indvars.iv448, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next449
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !41
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next449
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !41
  %i.dz = add nsw i32 %i.dy, %i.dv                ; 2 uses
  %indvars.iv.next449.1 = or disjoint i64 %indvars.iv448, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next449.1
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !41
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next449.1
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !41
  %i.ed = add nsw i32 %i.ec, %i.dz                ; 2 uses
  %indvars.iv.next449.2 = or disjoint i64 %indvars.iv448, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next449.2
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !41
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next449.2
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !41
  %i.eh = add nsw i32 %i.eg, %i.ed                ; 3 uses
  %indvars.iv.next449.3 = add nuw nsw i64 %indvars.iv448, 4 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next449.3
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !41
  %niter591.next.3 = add i64 %niter591, 4         ; 2 uses
  %niter591.ncmp.3 = icmp eq i64 %niter591.next.3, %unroll_iter590
  br i1 %niter591.ncmp.3, label %._crit_edge409.loopexit.unr-lcssa, label %.lr.ph408, !llvm.loop !64

._crit_edge409.loopexit.unr-lcssa:                ; preds = %.lr.ph408
  %lcmp.mod588.not = icmp eq i64 %xtraiter584, 0
  br i1 %lcmp.mod588.not, label %._crit_edge409, label %.lr.ph408.epil.preheader

.lr.ph408.epil.preheader:                         ; preds = %._crit_edge409.loopexit.unr-lcssa, %.lr.ph408.preheader
  %.epil.init587 = phi i32 [ 0, %.lr.ph408.preheader ], [ %i.eh, %._crit_edge409.loopexit.unr-lcssa ]
  %indvars.iv448.epil.init = phi i64 [ 0, %.lr.ph408.preheader ], [ %indvars.iv.next449.3, %._crit_edge409.loopexit.unr-lcssa ]
  %lcmp.mod589 = icmp ne i64 %xtraiter584, 0
  tail call void @llvm.assume(i1 %lcmp.mod589)
  br label %.lr.ph408.epil

.lr.ph408.epil:                                   ; preds = %.lr.ph408.epil, %.lr.ph408.epil.preheader
  %i.ej = phi i32 [ %.epil.init587, %.lr.ph408.epil.preheader ], [ %i.em, %.lr.ph408.epil ]
  %indvars.iv448.epil = phi i64 [ %indvars.iv448.epil.init, %.lr.ph408.epil.preheader ], [ %indvars.iv.next449.epil, %.lr.ph408.epil ] ; 2 uses
  %epil.iter585 = phi i64 [ 0, %.lr.ph408.epil.preheader ], [ %epil.iter585.next, %.lr.ph408.epil ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv448.epil
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !41
  %i.em = add nsw i32 %i.el, %i.ej                ; 2 uses
  %indvars.iv.next449.epil = add nuw nsw i64 %indvars.iv448.epil, 1 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next449.epil
  store i32 %i.em, ptr %i.en, align 4, !tbaa !41
  %epil.iter585.next = add i64 %epil.iter585, 1   ; 2 uses
  %epil.iter585.cmp.not = icmp eq i64 %epil.iter585.next, %xtraiter584
  br i1 %epil.iter585.cmp.not, label %._crit_edge409, label %.lr.ph408.epil, !llvm.loop !65

._crit_edge409:                                   ; preds = %._crit_edge409.loopexit.unr-lcssa, %.lr.ph408.epil, %._crit_edge405.thread, %._crit_edge405
  %i.eo = ashr i32 %i.bs, 2                       ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph432, label %._crit_edge433

.lr.ph432:                                        ; preds = %._crit_edge409, %bb.ae
  %.0262430 = phi i32 [ %i.il, %bb.ae ], [ %i.bt, %._crit_edge409 ] ; 6 uses
  %.0266429 = phi i32 [ %.1265494, %bb.ae ], [ 0, %._crit_edge409 ] ; 10 uses
  %.0269428 = phi i32 [ %i.im, %bb.ae ], [ %i.eo, %._crit_edge409 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.eq = xor i32 %.0269428, %.0271               ; 4 uses
  %i.er = icmp slt i32 %i.eq, %i.bu
  %i.es = shl nuw nsw i32 %i.eq, 1
  %i.et = or disjoint i32 %i.es, 1
  %i.eu = add nsw i32 %i.eq, %i.bu
  %i.ev = select i1 %i.er, i32 %i.et, i32 %i.eu   ; 2 uses
  %i.ew = icmp slt i32 %.0271, %i.eq
  %i.ex = add i32 %.0266429, %.0269428            ; 11 uses
  br i1 %i.ew, label %bb.y, label %.lr.ph413.preheader

bb.y:                                             ; preds = %.lr.ph432
  %i.ey = icmp slt i32 %i.ex, %.0262430
  br i1 %i.ey, label %.lr.ph422.preheader, label %.lr.ph426.preheader

.lr.ph422.preheader:                              ; preds = %bb.y
  %i.ez = zext i32 %i.ex to i64                   ; 3 uses
  %7 = add i32 %.0266429, %.0269428
  %8 = xor i32 %7, -1
  %9 = add i32 %.0262430, %8                      ; 2 uses
  %i.fa = zext i32 %9 to i64
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check513 = icmp ult i32 %9, 7
  br i1 %min.iters.check513, label %.lr.ph422.preheader561, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph422.preheader
  %n.vec515 = and i64 %i.fb, 8589934584           ; 3 uses
  %i.fc = add nuw nsw i64 %n.vec515, %i.ez
  %invariant.gep610 = getelementptr [4 x i8], ptr %i.ck, i64 %i.ez
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph514
  %index517 = phi i64 [ 0, %vector.ph514 ], [ %index.next522, %vector.body516 ] ; 2 uses
  %vec.phi518 = phi <4 x i32> [ zeroinitializer, %vector.ph514 ], [ %i.fe, %vector.body516 ]
  %vec.phi519 = phi <4 x i32> [ zeroinitializer, %vector.ph514 ], [ %i.ff, %vector.body516 ]
  %gep611 = getelementptr [4 x i8], ptr %invariant.gep610, i64 %index517 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep611, i64 16
  %wide.load520 = load <4 x i32>, ptr %gep611, align 4, !tbaa !41
  %wide.load521 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !41
  %i.fe = add <4 x i32> %wide.load520, %vec.phi518 ; 2 uses
  %i.ff = add <4 x i32> %wide.load521, %vec.phi519 ; 2 uses
  %index.next522 = add nuw i64 %index517, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.fg, label %middle.block523, label %vector.body516, !llvm.loop !66

middle.block523:                                  ; preds = %vector.body516
  %bin.rdx524 = add <4 x i32> %i.ff, %i.fe
  %i.fh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx524) ; 2 uses
  %cmp.n525 = icmp eq i64 %i.fb, %n.vec515
  br i1 %cmp.n525, label %.lr.ph426.preheader, label %.lr.ph422.preheader561

.lr.ph422.preheader561:                           ; preds = %.lr.ph422.preheader, %middle.block523
  %indvars.iv459.ph = phi i64 [ %i.ez, %.lr.ph422.preheader ], [ %i.fc, %middle.block523 ]
  %.0257420.ph = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.fh, %middle.block523 ]
  br label %.lr.ph422

.lr.ph426.preheader:                              ; preds = %.lr.ph422, %middle.block523, %bb.y
  %.0257.lcssa = phi i32 [ 0, %bb.y ], [ %i.fh, %middle.block523 ], [ %i.fv, %.lr.ph422 ] ; 2 uses
  %i.fi = sext i32 %.0266429 to i64               ; 5 uses
  %i.fj = sext i32 %i.ex to i64                   ; 2 uses
  %i.fk = add nsw i64 %i.fi, 1
  %i.fl = call i64 @llvm.smax.i64(i64 %i.fk, i64 %i.fj)
  %i.fm = sub i64 %i.fl, %i.fi                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fm, 8
  br i1 %min.iters.check, label %.lr.ph426.preheader560, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph426.preheader
  %n.vec = and i64 %i.fm, -8                      ; 3 uses
  %i.fn = add i64 %n.vec, %i.fi
  %invariant.gep612 = getelementptr [4 x i8], ptr %i.ck, i64 %i.fi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi510 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %gep613 = getelementptr [4 x i8], ptr %invariant.gep612, i64 %index ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %gep613, i64 16
  %wide.load = load <4 x i32>, ptr %gep613, align 4, !tbaa !41
  %wide.load511 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !41
  %i.fp = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.fq = add <4 x i32> %wide.load511, %vec.phi510 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fq, %i.fp
  %i.fs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph426.preheader560

.lr.ph426.preheader560:                           ; preds = %.lr.ph426.preheader, %middle.block
  %indvars.iv462.ph = phi i64 [ %i.fi, %.lr.ph426.preheader ], [ %i.fn, %middle.block ]
  %.0425.ph = phi i32 [ 0, %.lr.ph426.preheader ], [ %i.fs, %middle.block ]
  br label %.lr.ph426

.lr.ph422:                                        ; preds = %.lr.ph422.preheader561, %.lr.ph422
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %.lr.ph422 ], [ %indvars.iv459.ph, %.lr.ph422.preheader561 ] ; 2 uses
  %.0257420 = phi i32 [ %i.fv, %.lr.ph422 ], [ %.0257420.ph, %.lr.ph422.preheader561 ]
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv459
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !41
  %i.fv = add nsw i32 %i.fu, %.0257420            ; 2 uses
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %i.fw = trunc nuw i64 %indvars.iv.next460 to i32
  %i.fx = icmp sgt i32 %.0262430, %i.fw
  br i1 %i.fx, label %.lr.ph422, label %.lr.ph426.preheader, !llvm.loop !70

.lr.ph426:                                        ; preds = %.lr.ph426.preheader560, %.lr.ph426
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %.lr.ph426 ], [ %indvars.iv462.ph, %.lr.ph426.preheader560 ] ; 2 uses
  %.0425 = phi i32 [ %i.ga, %.lr.ph426 ], [ %.0425.ph, %.lr.ph426.preheader560 ]
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv462
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !41
  %i.ga = add nsw i32 %i.fz, %.0425               ; 2 uses
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1 ; 2 uses
  %i.gb = icmp slt i64 %indvars.iv.next463, %i.fj
  br i1 %i.gb, label %.lr.ph426, label %.loopexit, !llvm.loop !71

.lr.ph413.preheader:                              ; preds = %.lr.ph432
  %i.gc = sext i32 %.0266429 to i64               ; 5 uses
  %i.gd = sext i32 %i.ex to i64                   ; 2 uses
  %i.ge = add nsw i64 %i.gc, 1
  %i.gf = call i64 @llvm.smax.i64(i64 %i.ge, i64 %i.gd)
  %i.gg = sub i64 %i.gf, %i.gc                    ; 3 uses
  %min.iters.check545 = icmp ult i64 %i.gg, 8
  br i1 %min.iters.check545, label %.lr.ph413.preheader564, label %vector.ph546

vector.ph546:                                     ; preds = %.lr.ph413.preheader
  %n.vec547 = and i64 %i.gg, -8                   ; 3 uses
  %i.gh = add i64 %n.vec547, %i.gc
  %invariant.gep606 = getelementptr [4 x i8], ptr %i.ck, i64 %i.gc
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next554, %vector.body548 ] ; 2 uses
  %vec.phi550 = phi <4 x i32> [ zeroinitializer, %vector.ph546 ], [ %i.gj, %vector.body548 ]
  %vec.phi551 = phi <4 x i32> [ zeroinitializer, %vector.ph546 ], [ %i.gk, %vector.body548 ]
  %gep607 = getelementptr [4 x i8], ptr %invariant.gep606, i64 %index549 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %gep607, i64 16
  %wide.load552 = load <4 x i32>, ptr %gep607, align 4, !tbaa !41
  %wide.load553 = load <4 x i32>, ptr %i.gi, align 4, !tbaa !41
  %i.gj = add <4 x i32> %wide.load552, %vec.phi550 ; 2 uses
  %i.gk = add <4 x i32> %wide.load553, %vec.phi551 ; 2 uses
  %index.next554 = add nuw i64 %index549, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.gl, label %middle.block555, label %vector.body548, !llvm.loop !72

middle.block555:                                  ; preds = %vector.body548
  %bin.rdx556 = add <4 x i32> %i.gk, %i.gj
  %i.gm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx556) ; 2 uses
  %cmp.n557 = icmp eq i64 %i.gg, %n.vec547
  br i1 %cmp.n557, label %.preheader396, label %.lr.ph413.preheader564

.lr.ph413.preheader564:                           ; preds = %.lr.ph413.preheader, %middle.block555
  %indvars.iv453.ph = phi i64 [ %i.gc, %.lr.ph413.preheader ], [ %i.gh, %middle.block555 ]
  %.1258411.ph = phi i32 [ 0, %.lr.ph413.preheader ], [ %i.gm, %middle.block555 ]
  br label %.lr.ph413

.preheader396:                                    ; preds = %.lr.ph413, %middle.block555
  %.lcssa = phi i32 [ %i.gm, %middle.block555 ], [ %i.gz, %.lr.ph413 ] ; 3 uses
  %i.gn = icmp slt i32 %i.ex, %.0262430
  br i1 %i.gn, label %.lr.ph417.preheader, label %.loopexit.thread

.lr.ph417.preheader:                              ; preds = %.preheader396
  %i.go = zext i32 %i.ex to i64                   ; 3 uses
  %10 = add i32 %.0266429, %.0269428
  %11 = xor i32 %10, -1
  %12 = add i32 %.0262430, %11                    ; 2 uses
  %i.gp = zext i32 %12 to i64
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check529 = icmp ult i32 %12, 7
  br i1 %min.iters.check529, label %.lr.ph417.preheader562, label %vector.ph530

vector.ph530:                                     ; preds = %.lr.ph417.preheader
  %n.vec531 = and i64 %i.gq, 8589934584           ; 3 uses
  %i.gr = add nuw nsw i64 %n.vec531, %i.go
  %invariant.gep608 = getelementptr [4 x i8], ptr %i.ck, i64 %i.go
  br label %vector.body532

vector.body532:                                   ; preds = %vector.body532, %vector.ph530
  %index533 = phi i64 [ 0, %vector.ph530 ], [ %index.next538, %vector.body532 ] ; 2 uses
  %vec.phi534 = phi <4 x i32> [ zeroinitializer, %vector.ph530 ], [ %i.gt, %vector.body532 ]
  %vec.phi535 = phi <4 x i32> [ zeroinitializer, %vector.ph530 ], [ %i.gu, %vector.body532 ]
  %gep609 = getelementptr [4 x i8], ptr %invariant.gep608, i64 %index533 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %gep609, i64 16
  %wide.load536 = load <4 x i32>, ptr %gep609, align 4, !tbaa !41
  %wide.load537 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !41
  %i.gt = add <4 x i32> %wide.load536, %vec.phi534 ; 2 uses
  %i.gu = add <4 x i32> %wide.load537, %vec.phi535 ; 2 uses
  %index.next538 = add nuw i64 %index533, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next538, %n.vec531
  br i1 %i.gv, label %middle.block539, label %vector.body532, !llvm.loop !73

middle.block539:                                  ; preds = %vector.body532
  %bin.rdx540 = add <4 x i32> %i.gu, %i.gt
  %i.gw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx540) ; 2 uses
  %cmp.n541 = icmp eq i64 %i.gq, %n.vec531
  br i1 %cmp.n541, label %.loopexit, label %.lr.ph417.preheader562

.lr.ph417.preheader562:                           ; preds = %.lr.ph417.preheader, %middle.block539
  %indvars.iv456.ph = phi i64 [ %i.go, %.lr.ph417.preheader ], [ %i.gr, %middle.block539 ]
  %.1416.ph = phi i32 [ 0, %.lr.ph417.preheader ], [ %i.gw, %middle.block539 ]
  br label %.lr.ph417

.lr.ph413:                                        ; preds = %.lr.ph413.preheader564, %.lr.ph413
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %.lr.ph413 ], [ %indvars.iv453.ph, %.lr.ph413.preheader564 ] ; 2 uses
  %.1258411 = phi i32 [ %i.gz, %.lr.ph413 ], [ %.1258411.ph, %.lr.ph413.preheader564 ]
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv453
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !41
  %i.gz = add nsw i32 %i.gy, %.1258411            ; 2 uses
  %indvars.iv.next454 = add nsw i64 %indvars.iv453, 1 ; 2 uses
  %i.ha = icmp slt i64 %indvars.iv.next454, %i.gd
  br i1 %i.ha, label %.lr.ph413, label %.preheader396, !llvm.loop !74

.lr.ph417:                                        ; preds = %.lr.ph417.preheader562, %.lr.ph417
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %.lr.ph417 ], [ %indvars.iv456.ph, %.lr.ph417.preheader562 ] ; 2 uses
  %.1416 = phi i32 [ %i.hd, %.lr.ph417 ], [ %.1416.ph, %.lr.ph417.preheader562 ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv456
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !41
  %i.hd = add nsw i32 %i.hc, %.1416               ; 2 uses
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.he = trunc nuw i64 %indvars.iv.next457 to i32
  %i.hf = icmp sgt i32 %.0262430, %i.he
  br i1 %i.hf, label %.lr.ph417, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %.lr.ph417, %.lr.ph426, %middle.block539, %middle.block
  %.1267 = phi i32 [ %i.ex, %middle.block ], [ %.0266429, %middle.block539 ], [ %i.ex, %.lr.ph426 ], [ %.0266429, %.lr.ph417 ] ; 2 uses
  %.1265 = phi i32 [ %.0266429, %middle.block ], [ %i.ex, %middle.block539 ], [ %.0266429, %.lr.ph426 ], [ %i.ex, %.lr.ph417 ] ; 3 uses
  %.2259 = phi i32 [ %.0257.lcssa, %middle.block ], [ %.lcssa, %middle.block539 ], [ %.0257.lcssa, %.lr.ph426 ], [ %.lcssa, %.lr.ph417 ] ; 2 uses
  %.2 = phi i32 [ %i.fs, %middle.block ], [ %i.gw, %middle.block539 ], [ %i.ga, %.lr.ph426 ], [ %i.hd, %.lr.ph417 ] ; 4 uses
  %i.hg = icmp sgt i32 %.2, 0
  br i1 %i.hg, label %bb.z, label %.loopexit.thread

bb.z:                                             ; preds = %.loopexit
  %i.hh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !76
  %i.hi = zext nneg i32 %.1265 to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !41
  %i.hl = sext i32 %i.hk to i64
  %i.hm = mul nsw i64 %i.ar, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.bm, i64 %i.hm
  %i.ho = zext nneg i32 %.2 to i64
  %i.hp = call i32 %i.hh(ptr noundef nonnull %i.hn, i64 noundef %i.ho, ptr noundef nonnull %3, i32 noundef %i.ev, i32 noundef -22, ptr noundef %5, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not335 = icmp eq i32 %i.hp, 0
  br i1 %.not335, label %.loopexit.thread, label %.thread356

.loopexit.thread:                                 ; preds = %.preheader396, %bb.z, %.loopexit
  %i.hq = phi i1 [ false, %.loopexit ], [ true, %bb.z ], [ false, %.preheader396 ]
  %.2496 = phi i32 [ %.2, %.loopexit ], [ %.2, %bb.z ], [ 0, %.preheader396 ]
  %.2259495 = phi i32 [ %.2259, %.loopexit ], [ %.2259, %bb.z ], [ %.lcssa, %.preheader396 ] ; 2 uses
  %.1265494 = phi i32 [ %.1265, %.loopexit ], [ %.1265, %bb.z ], [ %i.ex, %.preheader396 ] ; 3 uses
  %.1267493 = phi i32 [ %.1267, %.loopexit ], [ %.1267, %bb.z ], [ %.0266429, %.preheader396 ]
  %i.hr = icmp sgt i32 %.2259495, 0
  br i1 %i.hr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit.thread
  %i.hs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !60
  %i.ht = zext nneg i32 %.1267493 to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !41
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul nsw i64 %i.ar, %i.hw
  %i.hy = getelementptr inbounds i8, ptr %i.bp, i64 %i.hx
  %i.hz = zext nneg i32 %.2259495 to i64
  %i.ia = call i32 %i.hs(ptr noundef %i.hy, i64 noundef %i.hz, ptr noundef nonnull %3, i32 noundef %i.ev, i32 noundef -22, i32 noundef 4, ptr noundef %5) #10 ; 2 uses
  %.not336 = icmp eq i32 %i.ia, 0
  br i1 %.not336, label %bb.ab, label %.thread356

bb.ab:                                            ; preds = %bb.aa, %.loopexit.thread
  br i1 %i.hq, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !77
  %i.ic = call i32 %i.ib(ptr noundef nonnull %i.a, ptr noundef null) #10 ; 2 uses
  %.not337 = icmp eq i32 %i.ic, 0
  br i1 %.not337, label %bb.ad, label %.thread356

bb.ad:                                            ; preds = %bb.ac
  %i.id = zext nneg i32 %.1265494 to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !41
  %i.ig = sext i32 %i.if to i64
  %i.ih = mul nsw i64 %i.ar, %i.ig                ; 2 uses
  %i.ii = getelementptr inbounds i8, ptr %i.bm, i64 %i.ih
  %i.ij = getelementptr inbounds i8, ptr %i.bp, i64 %i.ih
  %i.ik = zext nneg i32 %.2496 to i64
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.ii, ptr noundef %i.ij, i64 noundef %i.ik, ptr noundef nonnull %3)
  br label %bb.ae

.thread356:                                       ; preds = %bb.ac, %bb.aa, %bb.z
  %.5288.ph = phi i32 [ %i.ia, %bb.aa ], [ %i.hp, %bb.z ], [ %i.ic, %bb.ac ]
  call void @free(ptr noundef nonnull %i.ck) #10
  call void @free(ptr noundef %i.cm) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread364

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %i.il = add nuw nsw i32 %.1265494, %.0269428
  %i.im = lshr i32 %.0269428, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not434 = icmp eq i32 %i.im, 0
  br i1 %.not434, label %._crit_edge433, label %.lr.ph432, !llvm.loop !79

._crit_edge433:                                   ; preds = %bb.ae, %._crit_edge409
  %i.in = sext i32 %.val to i64                   ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %2, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !41 ; 3 uses
  %.not333 = icmp eq i32 %i.ip, 0
  br i1 %.not333, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge433
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.in
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !41
  %i.is = sext i32 %i.ir to i64
  %i.it = mul nsw i64 %i.ar, %i.is
  %i.iu = getelementptr inbounds i8, ptr %i.bp, i64 %i.it
  %i.iv = call i32 @ompi_datatype_sndrcv(ptr noundef %i.iu, i32 noundef %i.ip, ptr noundef nonnull %3, ptr noundef %1, i32 noundef %i.ip, ptr noundef nonnull %3) #10 ; 2 uses
  %.not334 = icmp eq i32 %i.iv, 0
  br i1 %.not334, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ck) #10
  call void @free(ptr noundef %i.cm) #10
  br label %.thread364

bb.ah:                                            ; preds = %._crit_edge433, %bb.af
  call void @free(ptr noundef nonnull %i.ck) #10
  call void @free(ptr noundef %i.cm) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.n
  br i1 %i.bw, label %.thread368, label %bb.am

.thread368:                                       ; preds = %bb.ai
  %.pre = and i32 %.val, 1
  %i.iw = icmp eq i32 %.pre, 0
  br i1 %i.iw, label %.thread368.thread, label %bb.ak

.thread368.thread:                                ; preds = %bb.j, %.thread368
  %i.ix = sext i32 %.val to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !41 ; 2 uses
  %.not340 = icmp eq i32 %i.iz, 0
  br i1 %.not340, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.thread368.thread
  %i.ja = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !62
  %i.jb = sext i32 %i.iz to i64
  %i.jc = or disjoint i32 %.val, 1
  %i.jd = call i32 %i.ja(ptr noundef %1, i64 noundef %i.jb, ptr noundef nonnull %3, i32 noundef %i.jc, i32 noundef -22, ptr noundef %5, ptr noundef null) #10 ; 2 uses
  %.not341 = icmp eq i32 %i.jd, 0
  br i1 %.not341, label %bb.am, label %.thread364

bb.ak:                                            ; preds = %.thread368
  %i.je = add nsw i32 %.val, -1                   ; 2 uses
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jf
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !41 ; 2 uses
  %.not338 = icmp eq i32 %i.jh, 0
  br i1 %.not338, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ji = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !60
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.jf
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !41
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul nsw i64 %i.ar, %i.jl
  %i.jn = getelementptr inbounds i8, ptr %i.bp, i64 %i.jm
end_hunk_0
