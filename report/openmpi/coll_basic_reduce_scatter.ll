inline.NumInlined: 13
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mca_coll_basic_reduce_scatter_intra:bb.a

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
  %.0260430 = phi i32 [ %i.ir, %bb.ae ], [ %i.bt, %._crit_edge409 ] ; 6 uses
  %.0264429 = phi i32 [ %.1263494, %bb.ae ], [ 0, %._crit_edge409 ] ; 10 uses
  %.0267428 = phi i32 [ %i.is, %bb.ae ], [ %i.eo, %._crit_edge409 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.eq = xor i32 %.0267428, %.0269               ; 4 uses
  %i.er = icmp slt i32 %i.eq, %i.bu
  %i.es = shl nuw nsw i32 %i.eq, 1
  %i.et = or disjoint i32 %i.es, 1
  %i.eu = add nsw i32 %i.eq, %i.bu
  %i.ev = select i1 %i.er, i32 %i.et, i32 %i.eu   ; 2 uses
  %i.ew = icmp slt i32 %.0269, %i.eq
  %i.ex = add i32 %.0264429, %.0267428            ; 11 uses
  br i1 %i.ew, label %bb.y, label %.lr.ph413.preheader

bb.y:                                             ; preds = %.lr.ph432
  %i.ey = icmp slt i32 %i.ex, %.0260430
  br i1 %i.ey, label %.lr.ph422.preheader, label %.lr.ph426.preheader

.lr.ph422.preheader:                              ; preds = %bb.y
  %i.ez = zext i32 %i.ex to i64                   ; 3 uses
  %i.fa = xor i32 %.0264429, -1
  %i.fb = add i32 %.0260430, %i.fa
  %i.fc = sub i32 %i.fb, %.0267428                ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = add nuw nsw i64 %i.fd, 1                ; 2 uses
  %min.iters.check513 = icmp ult i32 %i.fc, 7
  br i1 %min.iters.check513, label %.lr.ph422.preheader561, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph422.preheader
  %n.vec515 = and i64 %i.fe, 8589934584           ; 3 uses
  %i.ff = add nuw nsw i64 %n.vec515, %i.ez
  %invariant.gep610 = getelementptr [4 x i8], ptr %i.ck, i64 %i.ez
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph514
  %index517 = phi i64 [ 0, %vector.ph514 ], [ %index.next522, %vector.body516 ] ; 2 uses
  %vec.phi518 = phi <4 x i32> [ zeroinitializer, %vector.ph514 ], [ %i.fh, %vector.body516 ]
  %vec.phi519 = phi <4 x i32> [ zeroinitializer, %vector.ph514 ], [ %i.fi, %vector.body516 ]
  %gep611 = getelementptr [4 x i8], ptr %invariant.gep610, i64 %index517 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %gep611, i64 16
  %wide.load520 = load <4 x i32>, ptr %gep611, align 4, !tbaa !41
  %wide.load521 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !41
  %i.fh = add <4 x i32> %wide.load520, %vec.phi518 ; 2 uses
  %i.fi = add <4 x i32> %wide.load521, %vec.phi519 ; 2 uses
  %index.next522 = add nuw i64 %index517, 8       ; 2 uses
  %i.fj = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.fj, label %middle.block523, label %vector.body516, !llvm.loop !66

middle.block523:                                  ; preds = %vector.body516
  %bin.rdx524 = add <4 x i32> %i.fi, %i.fh
  %i.fk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx524) ; 2 uses
  %cmp.n525 = icmp eq i64 %i.fe, %n.vec515
  br i1 %cmp.n525, label %.lr.ph426.preheader, label %.lr.ph422.preheader561

.lr.ph422.preheader561:                           ; preds = %.lr.ph422.preheader, %middle.block523
  %indvars.iv459.ph = phi i64 [ %i.ez, %.lr.ph422.preheader ], [ %i.ff, %middle.block523 ]
  %.0257420.ph = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.fk, %middle.block523 ]
  br label %.lr.ph422

.lr.ph426.preheader:                              ; preds = %.lr.ph422, %middle.block523, %bb.y
  %.0257.lcssa = phi i32 [ 0, %bb.y ], [ %i.fk, %middle.block523 ], [ %i.fy, %.lr.ph422 ] ; 2 uses
  %i.fl = sext i32 %.0264429 to i64               ; 5 uses
  %i.fm = sext i32 %i.ex to i64                   ; 2 uses
  %i.fn = add nsw i64 %i.fl, 1
  %i.fo = call i64 @llvm.smax.i64(i64 %i.fn, i64 %i.fm)
  %i.fp = sub nsw i64 %i.fo, %i.fl                ; 3 uses
  %min.iters.check = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check, label %.lr.ph426.preheader560, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph426.preheader
  %n.vec = and i64 %i.fp, -8                      ; 3 uses
  %i.fq = add i64 %n.vec, %i.fl
  %invariant.gep612 = getelementptr [4 x i8], ptr %i.ck, i64 %i.fl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %vec.phi510 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ft, %vector.body ]
  %gep613 = getelementptr [4 x i8], ptr %invariant.gep612, i64 %index ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %gep613, i64 16
  %wide.load = load <4 x i32>, ptr %gep613, align 4, !tbaa !41
  %wide.load511 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !41
  %i.fs = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ft = add <4 x i32> %wide.load511, %vec.phi510 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ft, %i.fs
  %i.fv = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph426.preheader560

.lr.ph426.preheader560:                           ; preds = %.lr.ph426.preheader, %middle.block
  %indvars.iv462.ph = phi i64 [ %i.fl, %.lr.ph426.preheader ], [ %i.fq, %middle.block ]
  %.0425.ph = phi i32 [ 0, %.lr.ph426.preheader ], [ %i.fv, %middle.block ]
  br label %.lr.ph426

.lr.ph422:                                        ; preds = %.lr.ph422.preheader561, %.lr.ph422
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %.lr.ph422 ], [ %indvars.iv459.ph, %.lr.ph422.preheader561 ] ; 2 uses
  %.0257420 = phi i32 [ %i.fy, %.lr.ph422 ], [ %.0257420.ph, %.lr.ph422.preheader561 ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv459
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !41
  %i.fy = add nsw i32 %i.fx, %.0257420            ; 2 uses
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %i.fz = trunc nuw i64 %indvars.iv.next460 to i32
  %i.ga = icmp sgt i32 %.0260430, %i.fz
  br i1 %i.ga, label %.lr.ph422, label %.lr.ph426.preheader, !llvm.loop !70

.lr.ph426:                                        ; preds = %.lr.ph426.preheader560, %.lr.ph426
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %.lr.ph426 ], [ %indvars.iv462.ph, %.lr.ph426.preheader560 ] ; 2 uses
  %.0425 = phi i32 [ %i.gd, %.lr.ph426 ], [ %.0425.ph, %.lr.ph426.preheader560 ]
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv462
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !41
  %i.gd = add nsw i32 %i.gc, %.0425               ; 2 uses
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1 ; 2 uses
  %i.ge = icmp slt i64 %indvars.iv.next463, %i.fm
  br i1 %i.ge, label %.lr.ph426, label %.loopexit, !llvm.loop !71

.lr.ph413.preheader:                              ; preds = %.lr.ph432
  %i.gf = sext i32 %.0264429 to i64               ; 5 uses
  %i.gg = sext i32 %i.ex to i64                   ; 2 uses
  %i.gh = add nsw i64 %i.gf, 1
  %i.gi = call i64 @llvm.smax.i64(i64 %i.gh, i64 %i.gg)
  %i.gj = sub nsw i64 %i.gi, %i.gf                ; 3 uses
  %min.iters.check545 = icmp ult i64 %i.gj, 8
  br i1 %min.iters.check545, label %.lr.ph413.preheader564, label %vector.ph546

vector.ph546:                                     ; preds = %.lr.ph413.preheader
  %n.vec547 = and i64 %i.gj, -8                   ; 3 uses
  %i.gk = add i64 %n.vec547, %i.gf
  %invariant.gep606 = getelementptr [4 x i8], ptr %i.ck, i64 %i.gf
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next554, %vector.body548 ] ; 2 uses
  %vec.phi550 = phi <4 x i32> [ zeroinitializer, %vector.ph546 ], [ %i.gm, %vector.body548 ]
  %vec.phi551 = phi <4 x i32> [ zeroinitializer, %vector.ph546 ], [ %i.gn, %vector.body548 ]
  %gep607 = getelementptr [4 x i8], ptr %invariant.gep606, i64 %index549 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %gep607, i64 16
  %wide.load552 = load <4 x i32>, ptr %gep607, align 4, !tbaa !41
  %wide.load553 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !41
  %i.gm = add <4 x i32> %wide.load552, %vec.phi550 ; 2 uses
  %i.gn = add <4 x i32> %wide.load553, %vec.phi551 ; 2 uses
  %index.next554 = add nuw i64 %index549, 8       ; 2 uses
  %i.go = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.go, label %middle.block555, label %vector.body548, !llvm.loop !72

middle.block555:                                  ; preds = %vector.body548
  %bin.rdx556 = add <4 x i32> %i.gn, %i.gm
  %i.gp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx556) ; 2 uses
  %cmp.n557 = icmp eq i64 %i.gj, %n.vec547
  br i1 %cmp.n557, label %.preheader396, label %.lr.ph413.preheader564

.lr.ph413.preheader564:                           ; preds = %.lr.ph413.preheader, %middle.block555
  %indvars.iv453.ph = phi i64 [ %i.gf, %.lr.ph413.preheader ], [ %i.gk, %middle.block555 ]
  %.1258411.ph = phi i32 [ 0, %.lr.ph413.preheader ], [ %i.gp, %middle.block555 ]
  br label %.lr.ph413

.preheader396:                                    ; preds = %.lr.ph413, %middle.block555
  %.lcssa = phi i32 [ %i.gp, %middle.block555 ], [ %i.hf, %.lr.ph413 ] ; 3 uses
  %i.gq = icmp slt i32 %i.ex, %.0260430
  br i1 %i.gq, label %.lr.ph417.preheader, label %.loopexit.thread

.lr.ph417.preheader:                              ; preds = %.preheader396
  %i.gr = zext i32 %i.ex to i64                   ; 3 uses
  %i.gs = xor i32 %.0264429, -1
  %i.gt = add i32 %.0260430, %i.gs
  %i.gu = sub i32 %i.gt, %.0267428                ; 2 uses
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check529 = icmp ult i32 %i.gu, 7
  br i1 %min.iters.check529, label %.lr.ph417.preheader562, label %vector.ph530

vector.ph530:                                     ; preds = %.lr.ph417.preheader
  %n.vec531 = and i64 %i.gw, 8589934584           ; 3 uses
  %i.gx = add nuw nsw i64 %n.vec531, %i.gr
  %invariant.gep608 = getelementptr [4 x i8], ptr %i.ck, i64 %i.gr
  br label %vector.body532

vector.body532:                                   ; preds = %vector.body532, %vector.ph530
  %index533 = phi i64 [ 0, %vector.ph530 ], [ %index.next538, %vector.body532 ] ; 2 uses
  %vec.phi534 = phi <4 x i32> [ zeroinitializer, %vector.ph530 ], [ %i.gz, %vector.body532 ]
  %vec.phi535 = phi <4 x i32> [ zeroinitializer, %vector.ph530 ], [ %i.ha, %vector.body532 ]
  %gep609 = getelementptr [4 x i8], ptr %invariant.gep608, i64 %index533 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %gep609, i64 16
  %wide.load536 = load <4 x i32>, ptr %gep609, align 4, !tbaa !41
  %wide.load537 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !41
  %i.gz = add <4 x i32> %wide.load536, %vec.phi534 ; 2 uses
  %i.ha = add <4 x i32> %wide.load537, %vec.phi535 ; 2 uses
  %index.next538 = add nuw i64 %index533, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next538, %n.vec531
  br i1 %i.hb, label %middle.block539, label %vector.body532, !llvm.loop !73

middle.block539:                                  ; preds = %vector.body532
  %bin.rdx540 = add <4 x i32> %i.ha, %i.gz
  %i.hc = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx540) ; 2 uses
  %cmp.n541 = icmp eq i64 %i.gw, %n.vec531
  br i1 %cmp.n541, label %.loopexit, label %.lr.ph417.preheader562

.lr.ph417.preheader562:                           ; preds = %.lr.ph417.preheader, %middle.block539
  %indvars.iv456.ph = phi i64 [ %i.gr, %.lr.ph417.preheader ], [ %i.gx, %middle.block539 ]
  %.1416.ph = phi i32 [ 0, %.lr.ph417.preheader ], [ %i.hc, %middle.block539 ]
  br label %.lr.ph417

.lr.ph413:                                        ; preds = %.lr.ph413.preheader564, %.lr.ph413
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %.lr.ph413 ], [ %indvars.iv453.ph, %.lr.ph413.preheader564 ] ; 2 uses
  %.1258411 = phi i32 [ %i.hf, %.lr.ph413 ], [ %.1258411.ph, %.lr.ph413.preheader564 ]
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv453
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !41
  %i.hf = add nsw i32 %i.he, %.1258411            ; 2 uses
  %indvars.iv.next454 = add nsw i64 %indvars.iv453, 1 ; 2 uses
  %i.hg = icmp slt i64 %indvars.iv.next454, %i.gg
  br i1 %i.hg, label %.lr.ph413, label %.preheader396, !llvm.loop !74

.lr.ph417:                                        ; preds = %.lr.ph417.preheader562, %.lr.ph417
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %.lr.ph417 ], [ %indvars.iv456.ph, %.lr.ph417.preheader562 ] ; 2 uses
  %.1416 = phi i32 [ %i.hj, %.lr.ph417 ], [ %.1416.ph, %.lr.ph417.preheader562 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv456
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !41
  %i.hj = add nsw i32 %i.hi, %.1416               ; 2 uses
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.hk = trunc nuw i64 %indvars.iv.next457 to i32
  %i.hl = icmp sgt i32 %.0260430, %i.hk
  br i1 %i.hl, label %.lr.ph417, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %.lr.ph417, %.lr.ph426, %middle.block539, %middle.block
  %.1265 = phi i32 [ %i.ex, %middle.block ], [ %.0264429, %middle.block539 ], [ %i.ex, %.lr.ph426 ], [ %.0264429, %.lr.ph417 ] ; 2 uses
  %.1263 = phi i32 [ %.0264429, %middle.block ], [ %i.ex, %middle.block539 ], [ %.0264429, %.lr.ph426 ], [ %i.ex, %.lr.ph417 ] ; 3 uses
  %.2259 = phi i32 [ %.0257.lcssa, %middle.block ], [ %.lcssa, %middle.block539 ], [ %.0257.lcssa, %.lr.ph426 ], [ %.lcssa, %.lr.ph417 ] ; 2 uses
  %.2 = phi i32 [ %i.fv, %middle.block ], [ %i.hc, %middle.block539 ], [ %i.gd, %.lr.ph426 ], [ %i.hj, %.lr.ph417 ] ; 4 uses
  %i.hm = icmp sgt i32 %.2, 0
  br i1 %i.hm, label %bb.z, label %.loopexit.thread

bb.z:                                             ; preds = %.loopexit
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !76
  %i.ho = zext nneg i32 %.1263 to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !41
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul nsw i64 %i.ar, %i.hr
  %i.ht = getelementptr inbounds i8, ptr %i.bm, i64 %i.hs
  %i.hu = zext nneg i32 %.2 to i64
  %i.hv = call i32 %i.hn(ptr noundef nonnull %i.ht, i64 noundef %i.hu, ptr noundef nonnull %3, i32 noundef %i.ev, i32 noundef -22, ptr noundef %5, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not335 = icmp eq i32 %i.hv, 0
  br i1 %.not335, label %.loopexit.thread, label %.thread356

.loopexit.thread:                                 ; preds = %.preheader396, %bb.z, %.loopexit
  %i.hw = phi i1 [ false, %.loopexit ], [ true, %bb.z ], [ false, %.preheader396 ]
  %.2496 = phi i32 [ %.2, %.loopexit ], [ %.2, %bb.z ], [ 0, %.preheader396 ]
  %.2259495 = phi i32 [ %.2259, %.loopexit ], [ %.2259, %bb.z ], [ %.lcssa, %.preheader396 ] ; 2 uses
  %.1263494 = phi i32 [ %.1263, %.loopexit ], [ %.1263, %bb.z ], [ %i.ex, %.preheader396 ] ; 3 uses
  %.1265493 = phi i32 [ %.1265, %.loopexit ], [ %.1265, %bb.z ], [ %.0264429, %.preheader396 ]
  %i.hx = icmp sgt i32 %.2259495, 0
  br i1 %i.hx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit.thread
  %i.hy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !60
  %i.hz = zext nneg i32 %.1265493 to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !41
  %i.ic = sext i32 %i.ib to i64
  %i.id = mul nsw i64 %i.ar, %i.ic
  %i.ie = getelementptr inbounds i8, ptr %i.bp, i64 %i.id
  %i.if = zext nneg i32 %.2259495 to i64
  %i.ig = call i32 %i.hy(ptr noundef %i.ie, i64 noundef %i.if, ptr noundef nonnull %3, i32 noundef %i.ev, i32 noundef -22, i32 noundef 4, ptr noundef %5) #10 ; 2 uses
  %.not336 = icmp eq i32 %i.ig, 0
  br i1 %.not336, label %bb.ab, label %.thread356

bb.ab:                                            ; preds = %bb.aa, %.loopexit.thread
  br i1 %i.hw, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.ih = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !77
  %i.ii = call i32 %i.ih(ptr noundef nonnull %i.a, ptr noundef null) #10 ; 2 uses
  %.not337 = icmp eq i32 %i.ii, 0
  br i1 %.not337, label %bb.ad, label %.thread356

bb.ad:                                            ; preds = %bb.ac
  %i.ij = zext nneg i32 %.1263494 to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !41
  %i.im = sext i32 %i.il to i64
  %i.in = mul nsw i64 %i.ar, %i.im                ; 2 uses
  %i.io = getelementptr inbounds i8, ptr %i.bm, i64 %i.in
  %i.ip = getelementptr inbounds i8, ptr %i.bp, i64 %i.in
  %i.iq = zext nneg i32 %.2496 to i64
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.io, ptr noundef %i.ip, i64 noundef %i.iq, ptr noundef nonnull %3)
  br label %bb.ae

.thread356:                                       ; preds = %bb.ac, %bb.aa, %bb.z
  %.5.ph = phi i32 [ %i.ig, %bb.aa ], [ %i.hv, %bb.z ], [ %i.ii, %bb.ac ]
  call void @free(ptr noundef nonnull %i.ck) #10
  call void @free(ptr noundef %i.cm) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread364

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %i.ir = add nuw nsw i32 %.1263494, %.0267428
  %i.is = lshr i32 %.0267428, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not434 = icmp eq i32 %i.is, 0
  br i1 %.not434, label %._crit_edge433, label %.lr.ph432, !llvm.loop !79

._crit_edge433:                                   ; preds = %bb.ae, %._crit_edge409
  %i.it = sext i32 %.val to i64                   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !41 ; 3 uses
  %.not333 = icmp eq i32 %i.iv, 0
  br i1 %.not333, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge433
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.it
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !41
  %i.iy = sext i32 %i.ix to i64
  %i.iz = mul nsw i64 %i.ar, %i.iy
  %i.ja = getelementptr inbounds i8, ptr %i.bp, i64 %i.iz
  %i.jb = call i32 @ompi_datatype_sndrcv(ptr noundef %i.ja, i32 noundef %i.iv, ptr noundef nonnull %3, ptr noundef %1, i32 noundef %i.iv, ptr noundef nonnull %3) #10 ; 2 uses
  %.not334 = icmp eq i32 %i.jb, 0
  br i1 %.not334, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.ck) #10
  call void @free(ptr noundef %i.cm) #10
  br label %.thread364
end_hunk_0
