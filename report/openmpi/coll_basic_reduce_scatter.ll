Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_basic_reduce_scatter?download=true
inline.NumInlined: 13
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@mca_coll_basic_reduce_scatter_intra:bb.a

bb.o:                                             ; preds = %bb.n
  %i.ci = sext i32 %i.bt to i64
  %i.cj = shl nsw i64 %i.ci, 2                    ; 2 uses
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.cj) #9 ; 21 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = tail call noalias ptr @malloc(i64 noundef %i.cj) #9 ; 14 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.q, label %.preheader398

.preheader398:                                    ; preds = %bb.p
  %i.co = icmp sgt i32 %i.bt, 0
  br i1 %i.co, label %.lr.ph404.preheader, label %._crit_edge405.thread

._crit_edge405.thread:                            ; preds = %.preheader398
  store i32 0, ptr %i.cm, align 4, !tbaa !41
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
  %.0260430 = phi i32 [ %i.ip, %bb.ae ], [ %i.bt, %._crit_edge409 ] ; 6 uses
  %.0264429 = phi i32 [ %.1263494, %bb.ae ], [ 0, %._crit_edge409 ] ; 8 uses
  %.0267428 = phi i32 [ %i.iq, %bb.ae ], [ %i.eo, %._crit_edge409 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.eq = xor i32 %.0267428, %.0269               ; 4 uses
  %i.er = icmp slt i32 %i.eq, %i.bu
  %i.es = shl nuw nsw i32 %i.eq, 1
  %i.et = or disjoint i32 %i.es, 1
  %i.eu = add nsw i32 %i.eq, %i.bu
  %i.ev = select i1 %i.er, i32 %i.et, i32 %i.eu   ; 2 uses
  %i.ew = icmp slt i32 %.0269, %i.eq
  %i.ex = add i32 %.0264429, %.0267428            ; 13 uses
  br i1 %i.ew, label %bb.y, label %.lr.ph413.preheader

bb.y:                                             ; preds = %.lr.ph432
  %i.ey = icmp slt i32 %i.ex, %.0260430
  br i1 %i.ey, label %.lr.ph422.preheader, label %.lr.ph426.preheader

.lr.ph422.preheader:                              ; preds = %bb.y
  %i.ez = zext i32 %i.ex to i64                   ; 3 uses
  %i.fa = xor i32 %i.ex, -1
  %i.fb = add i32 %.0260430, %i.fa                ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check513 = icmp ult i32 %i.fb, 7
  br i1 %min.iters.check513, label %.lr.ph422.preheader561, label %vector.ph514

vector.ph514:                                     ; preds = %.lr.ph422.preheader
  %n.vec515 = and i64 %i.fd, 8589934584           ; 3 uses
  %i.fe = add nuw nsw i64 %n.vec515, %i.ez
  %invariant.gep610 = getelementptr [4 x i8], ptr %i.ck, i64 %i.ez
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph514
  %index517 = phi i64 [ 0, %vector.ph514 ], [ %index.next522, %vector.body516 ] ; 2 uses
  %vec.phi518 = phi <4 x i32> [ zeroinitializer, %vector.ph514 ], [ %i.fg, %vector.body516 ]
  %vec.phi519 = phi <4 x i32> [ zeroinitializer, %vector.ph514 ], [ %i.fh, %vector.body516 ]
  %gep611 = getelementptr [4 x i8], ptr %invariant.gep610, i64 %index517 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %gep611, i64 16
  %wide.load520 = load <4 x i32>, ptr %gep611, align 4, !tbaa !41
  %wide.load521 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !41
  %i.fg = add <4 x i32> %wide.load520, %vec.phi518 ; 2 uses
  %i.fh = add <4 x i32> %wide.load521, %vec.phi519 ; 2 uses
  %index.next522 = add nuw i64 %index517, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.fi, label %middle.block523, label %vector.body516, !llvm.loop !66

middle.block523:                                  ; preds = %vector.body516
  %bin.rdx524 = add <4 x i32> %i.fh, %i.fg
  %i.fj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx524) ; 2 uses
  %cmp.n525 = icmp eq i64 %i.fd, %n.vec515
  br i1 %cmp.n525, label %.lr.ph426.preheader, label %.lr.ph422.preheader561

.lr.ph422.preheader561:                           ; preds = %.lr.ph422.preheader, %middle.block523
  %indvars.iv459.ph = phi i64 [ %i.ez, %.lr.ph422.preheader ], [ %i.fe, %middle.block523 ]
  %.0257420.ph = phi i32 [ 0, %.lr.ph422.preheader ], [ %i.fj, %middle.block523 ]
  br label %.lr.ph422

.lr.ph426.preheader:                              ; preds = %.lr.ph422, %middle.block523, %bb.y
  %.0257.lcssa = phi i32 [ 0, %bb.y ], [ %i.fj, %middle.block523 ], [ %i.fx, %.lr.ph422 ] ; 2 uses
  %i.fk = sext i32 %.0264429 to i64               ; 5 uses
  %i.fl = sext i32 %i.ex to i64                   ; 2 uses
  %i.fm = add nsw i64 %i.fk, 1
  %i.fn = call i64 @llvm.smax.i64(i64 %i.fm, i64 %i.fl)
  %i.fo = sub i64 %i.fn, %i.fk                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.fo, 8
  br i1 %min.iters.check, label %.lr.ph426.preheader560, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph426.preheader
  %n.vec = and i64 %i.fo, -8                      ; 3 uses
  %i.fp = add i64 %n.vec, %i.fk
  %invariant.gep612 = getelementptr [4 x i8], ptr %i.ck, i64 %i.fk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %vec.phi510 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %gep613 = getelementptr [4 x i8], ptr %invariant.gep612, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %gep613, i64 16
  %wide.load = load <4 x i32>, ptr %gep613, align 4, !tbaa !41
  %wide.load511 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !41
  %i.fr = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.fs = add <4 x i32> %wide.load511, %vec.phi510 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.fs, %i.fr
  %i.fu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph426.preheader560

.lr.ph426.preheader560:                           ; preds = %.lr.ph426.preheader, %middle.block
  %indvars.iv462.ph = phi i64 [ %i.fk, %.lr.ph426.preheader ], [ %i.fp, %middle.block ]
  %.0425.ph = phi i32 [ 0, %.lr.ph426.preheader ], [ %i.fu, %middle.block ]
  br label %.lr.ph426

.lr.ph422:                                        ; preds = %.lr.ph422.preheader561, %.lr.ph422
  %indvars.iv459 = phi i64 [ %indvars.iv.next460, %.lr.ph422 ], [ %indvars.iv459.ph, %.lr.ph422.preheader561 ] ; 2 uses
  %.0257420 = phi i32 [ %i.fx, %.lr.ph422 ], [ %.0257420.ph, %.lr.ph422.preheader561 ]
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv459
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !41
  %i.fx = add nsw i32 %i.fw, %.0257420            ; 2 uses
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %i.fy = trunc nuw i64 %indvars.iv.next460 to i32
  %i.fz = icmp sgt i32 %.0260430, %i.fy
  br i1 %i.fz, label %.lr.ph422, label %.lr.ph426.preheader, !llvm.loop !70

.lr.ph426:                                        ; preds = %.lr.ph426.preheader560, %.lr.ph426
  %indvars.iv462 = phi i64 [ %indvars.iv.next463, %.lr.ph426 ], [ %indvars.iv462.ph, %.lr.ph426.preheader560 ] ; 2 uses
  %.0425 = phi i32 [ %i.gc, %.lr.ph426 ], [ %.0425.ph, %.lr.ph426.preheader560 ]
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv462
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !41
  %i.gc = add nsw i32 %i.gb, %.0425               ; 2 uses
  %indvars.iv.next463 = add nsw i64 %indvars.iv462, 1 ; 2 uses
  %i.gd = icmp slt i64 %indvars.iv.next463, %i.fl
  br i1 %i.gd, label %.lr.ph426, label %.loopexit, !llvm.loop !71

.lr.ph413.preheader:                              ; preds = %.lr.ph432
  %i.ge = sext i32 %.0264429 to i64               ; 5 uses
  %i.gf = sext i32 %i.ex to i64                   ; 2 uses
  %i.gg = add nsw i64 %i.ge, 1
  %i.gh = call i64 @llvm.smax.i64(i64 %i.gg, i64 %i.gf)
  %i.gi = sub i64 %i.gh, %i.ge                    ; 3 uses
  %min.iters.check545 = icmp ult i64 %i.gi, 8
  br i1 %min.iters.check545, label %.lr.ph413.preheader564, label %vector.ph546

vector.ph546:                                     ; preds = %.lr.ph413.preheader
  %n.vec547 = and i64 %i.gi, -8                   ; 3 uses
  %i.gj = add i64 %n.vec547, %i.ge
  %invariant.gep606 = getelementptr [4 x i8], ptr %i.ck, i64 %i.ge
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next554, %vector.body548 ] ; 2 uses
  %vec.phi550 = phi <4 x i32> [ zeroinitializer, %vector.ph546 ], [ %i.gl, %vector.body548 ]
  %vec.phi551 = phi <4 x i32> [ zeroinitializer, %vector.ph546 ], [ %i.gm, %vector.body548 ]
  %gep607 = getelementptr [4 x i8], ptr %invariant.gep606, i64 %index549 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %gep607, i64 16
  %wide.load552 = load <4 x i32>, ptr %gep607, align 4, !tbaa !41
  %wide.load553 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !41
  %i.gl = add <4 x i32> %wide.load552, %vec.phi550 ; 2 uses
  %i.gm = add <4 x i32> %wide.load553, %vec.phi551 ; 2 uses
  %index.next554 = add nuw i64 %index549, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next554, %n.vec547
  br i1 %i.gn, label %middle.block555, label %vector.body548, !llvm.loop !72

middle.block555:                                  ; preds = %vector.body548
  %bin.rdx556 = add <4 x i32> %i.gm, %i.gl
  %i.go = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx556) ; 2 uses
  %cmp.n557 = icmp eq i64 %i.gi, %n.vec547
  br i1 %cmp.n557, label %.preheader396, label %.lr.ph413.preheader564

.lr.ph413.preheader564:                           ; preds = %.lr.ph413.preheader, %middle.block555
  %indvars.iv453.ph = phi i64 [ %i.ge, %.lr.ph413.preheader ], [ %i.gj, %middle.block555 ]
  %.1258411.ph = phi i32 [ 0, %.lr.ph413.preheader ], [ %i.go, %middle.block555 ]
  br label %.lr.ph413

.preheader396:                                    ; preds = %.lr.ph413, %middle.block555
  %.lcssa = phi i32 [ %i.go, %middle.block555 ], [ %i.hd, %.lr.ph413 ] ; 3 uses
  %i.gp = icmp slt i32 %i.ex, %.0260430
  br i1 %i.gp, label %.lr.ph417.preheader, label %.loopexit.thread

.lr.ph417.preheader:                              ; preds = %.preheader396
  %i.gq = zext i32 %i.ex to i64                   ; 3 uses
  %i.gr = xor i32 %i.ex, -1
  %i.gs = add i32 %.0260430, %i.gr                ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %min.iters.check529 = icmp ult i32 %i.gs, 7
  br i1 %min.iters.check529, label %.lr.ph417.preheader562, label %vector.ph530

vector.ph530:                                     ; preds = %.lr.ph417.preheader
  %n.vec531 = and i64 %i.gu, 8589934584           ; 3 uses
  %i.gv = add nuw nsw i64 %n.vec531, %i.gq
  %invariant.gep608 = getelementptr [4 x i8], ptr %i.ck, i64 %i.gq
  br label %vector.body532

vector.body532:                                   ; preds = %vector.body532, %vector.ph530
  %index533 = phi i64 [ 0, %vector.ph530 ], [ %index.next538, %vector.body532 ] ; 2 uses
  %vec.phi534 = phi <4 x i32> [ zeroinitializer, %vector.ph530 ], [ %i.gx, %vector.body532 ]
  %vec.phi535 = phi <4 x i32> [ zeroinitializer, %vector.ph530 ], [ %i.gy, %vector.body532 ]
  %gep609 = getelementptr [4 x i8], ptr %invariant.gep608, i64 %index533 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %gep609, i64 16
  %wide.load536 = load <4 x i32>, ptr %gep609, align 4, !tbaa !41
  %wide.load537 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !41
  %i.gx = add <4 x i32> %wide.load536, %vec.phi534 ; 2 uses
  %i.gy = add <4 x i32> %wide.load537, %vec.phi535 ; 2 uses
  %index.next538 = add nuw i64 %index533, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next538, %n.vec531
  br i1 %i.gz, label %middle.block539, label %vector.body532, !llvm.loop !73

middle.block539:                                  ; preds = %vector.body532
  %bin.rdx540 = add <4 x i32> %i.gy, %i.gx
  %i.ha = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx540) ; 2 uses
  %cmp.n541 = icmp eq i64 %i.gu, %n.vec531
  br i1 %cmp.n541, label %.loopexit, label %.lr.ph417.preheader562

.lr.ph417.preheader562:                           ; preds = %.lr.ph417.preheader, %middle.block539
  %indvars.iv456.ph = phi i64 [ %i.gq, %.lr.ph417.preheader ], [ %i.gv, %middle.block539 ]
  %.1416.ph = phi i32 [ 0, %.lr.ph417.preheader ], [ %i.ha, %middle.block539 ]
  br label %.lr.ph417

.lr.ph413:                                        ; preds = %.lr.ph413.preheader564, %.lr.ph413
  %indvars.iv453 = phi i64 [ %indvars.iv.next454, %.lr.ph413 ], [ %indvars.iv453.ph, %.lr.ph413.preheader564 ] ; 2 uses
  %.1258411 = phi i32 [ %i.hd, %.lr.ph413 ], [ %.1258411.ph, %.lr.ph413.preheader564 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv453
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !41
  %i.hd = add nsw i32 %i.hc, %.1258411            ; 2 uses
  %indvars.iv.next454 = add nsw i64 %indvars.iv453, 1 ; 2 uses
  %i.he = icmp slt i64 %indvars.iv.next454, %i.gf
  br i1 %i.he, label %.lr.ph413, label %.preheader396, !llvm.loop !74

.lr.ph417:                                        ; preds = %.lr.ph417.preheader562, %.lr.ph417
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %.lr.ph417 ], [ %indvars.iv456.ph, %.lr.ph417.preheader562 ] ; 2 uses
  %.1416 = phi i32 [ %i.hh, %.lr.ph417 ], [ %.1416.ph, %.lr.ph417.preheader562 ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv456
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !41
  %i.hh = add nsw i32 %i.hg, %.1416               ; 2 uses
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.hi = trunc nuw i64 %indvars.iv.next457 to i32
  %i.hj = icmp sgt i32 %.0260430, %i.hi
  br i1 %i.hj, label %.lr.ph417, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %.lr.ph417, %.lr.ph426, %middle.block539, %middle.block
  %.1265 = phi i32 [ %i.ex, %middle.block ], [ %.0264429, %middle.block539 ], [ %i.ex, %.lr.ph426 ], [ %.0264429, %.lr.ph417 ] ; 2 uses
  %.1263 = phi i32 [ %.0264429, %middle.block ], [ %i.ex, %middle.block539 ], [ %.0264429, %.lr.ph426 ], [ %i.ex, %.lr.ph417 ] ; 3 uses
  %.2259 = phi i32 [ %.0257.lcssa, %middle.block ], [ %.lcssa, %middle.block539 ], [ %.0257.lcssa, %.lr.ph426 ], [ %.lcssa, %.lr.ph417 ] ; 2 uses
  %.2 = phi i32 [ %i.fu, %middle.block ], [ %i.ha, %middle.block539 ], [ %i.gc, %.lr.ph426 ], [ %i.hh, %.lr.ph417 ] ; 4 uses
  %i.hk = icmp sgt i32 %.2, 0
  br i1 %i.hk, label %bb.z, label %.loopexit.thread

bb.z:                                             ; preds = %.loopexit
  %i.hl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !76
  %i.hm = zext nneg i32 %.1263 to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !41
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul nsw i64 %i.ar, %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.bm, i64 %i.hq
  %i.hs = zext nneg i32 %.2 to i64
  %i.ht = call i32 %i.hl(ptr noundef nonnull %i.hr, i64 noundef %i.hs, ptr noundef nonnull %3, i32 noundef %i.ev, i32 noundef -22, ptr noundef %5, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not335 = icmp eq i32 %i.ht, 0
  br i1 %.not335, label %.loopexit.thread, label %.thread356

.loopexit.thread:                                 ; preds = %.preheader396, %bb.z, %.loopexit
  %i.hu = phi i1 [ false, %.loopexit ], [ true, %bb.z ], [ false, %.preheader396 ]
  %.2496 = phi i32 [ %.2, %.loopexit ], [ %.2, %bb.z ], [ 0, %.preheader396 ]
  %.2259495 = phi i32 [ %.2259, %.loopexit ], [ %.2259, %bb.z ], [ %.lcssa, %.preheader396 ] ; 2 uses
  %.1263494 = phi i32 [ %.1263, %.loopexit ], [ %.1263, %bb.z ], [ %i.ex, %.preheader396 ] ; 3 uses
  %.1265493 = phi i32 [ %.1265, %.loopexit ], [ %.1265, %bb.z ], [ %.0264429, %.preheader396 ]
  %i.hv = icmp sgt i32 %.2259495, 0
  br i1 %i.hv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.loopexit.thread
  %i.hw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !60
  %i.hx = zext nneg i32 %.1265493 to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !41
  %i.ia = sext i32 %i.hz to i64
  %i.ib = mul nsw i64 %i.ar, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %i.bp, i64 %i.ib
  %i.id = zext nneg i32 %.2259495 to i64
  %i.ie = call i32 %i.hw(ptr noundef %i.ic, i64 noundef %i.id, ptr noundef nonnull %3, i32 noundef %i.ev, i32 noundef -22, i32 noundef 4, ptr noundef %5) #10 ; 2 uses
  %.not336 = icmp eq i32 %i.ie, 0
  br i1 %.not336, label %bb.ab, label %.thread356

bb.ab:                                            ; preds = %bb.aa, %.loopexit.thread
  br i1 %i.hu, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.if = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !77
  %i.ig = call i32 %i.if(ptr noundef nonnull %i.a, ptr noundef null) #10 ; 2 uses
  %.not337 = icmp eq i32 %i.ig, 0
  br i1 %.not337, label %bb.ad, label %.thread356

bb.ad:                                            ; preds = %bb.ac
  %i.ih = zext nneg i32 %.1263494 to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !41
  %i.ik = sext i32 %i.ij to i64
  %i.il = mul nsw i64 %i.ar, %i.ik                ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %i.bm, i64 %i.il
  %i.in = getelementptr inbounds i8, ptr %i.bp, i64 %i.il
  %i.io = zext nneg i32 %.2496 to i64
  call fastcc void @ompi_op_reduce(ptr noundef %4, ptr noundef nonnull %i.im, ptr noundef %i.in, i64 noundef %i.io, ptr noundef nonnull %3)
  br label %bb.ae

.thread356:                                       ; preds = %bb.ac, %bb.aa, %bb.z
  %.5.ph = phi i32 [ %i.ie, %bb.aa ], [ %i.ht, %bb.z ], [ %i.ig, %bb.ac ]
  call void @free(ptr noundef nonnull %i.ck) #10
  call void @free(ptr noundef %i.cm) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.thread364

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %i.ip = add nuw nsw i32 %.1263494, %.0267428
  %i.iq = lshr i32 %.0267428, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.not434 = icmp eq i32 %i.iq, 0
  br i1 %.not434, label %._crit_edge433, label %.lr.ph432, !llvm.loop !79

._crit_edge433:                                   ; preds = %bb.ae, %._crit_edge409
  %i.ir = sext i32 %.val to i64                   ; 2 uses
  %i.is = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !41 ; 3 uses
  %.not333 = icmp eq i32 %i.it, 0
  br i1 %.not333, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge433
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ir
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !41
  %i.iw = sext i32 %i.iv to i64
  %i.ix = mul nsw i64 %i.ar, %i.iw
  %i.iy = getelementptr inbounds i8, ptr %i.bp, i64 %i.ix
  %i.iz = call i32 @ompi_datatype_sndrcv(ptr noundef %i.iy, i32 noundef %i.it, ptr noundef nonnull %3, ptr noundef %1, i32 noundef %i.it, ptr noundef nonnull %3) #10 ; 2 uses
  %.not334 = icmp eq i32 %i.iz, 0
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
  %i.ja = icmp eq i32 %.pre, 0
  br i1 %i.ja, label %.thread368.thread, label %bb.ak

.thread368.thread:                                ; preds = %bb.j, %.thread368
  %i.jb = sext i32 %.val to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !41 ; 2 uses
  %.not340 = icmp eq i32 %i.jd, 0
  br i1 %.not340, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.thread368.thread
  %i.je = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 72), align 8, !tbaa !62
  %i.jf = sext i32 %i.jd to i64
  %i.jg = or disjoint i32 %.val, 1
  %i.jh = call i32 %i.je(ptr noundef %1, i64 noundef %i.jf, ptr noundef nonnull %3, i32 noundef %i.jg, i32 noundef -22, ptr noundef %5, ptr noundef null) #10 ; 2 uses
  %.not341 = icmp eq i32 %i.jh, 0
  br i1 %.not341, label %bb.am, label %.thread364

bb.ak:                                            ; preds = %.thread368
  %i.ji = add nsw i32 %.val, -1                   ; 2 uses
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !41 ; 2 uses
  %.not338 = icmp eq i32 %i.jl, 0
  br i1 %.not338, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !60
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.jj
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !41
  %i.jp = sext i32 %i.jo to i64
  %i.jq = mul nsw i64 %i.ar, %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.bp, i64 %i.jq
  %i.js = sext i32 %i.jl to i64
  %i.jt = call i32 %i.jm(ptr noundef %i.jr, i64 noundef %i.js, ptr noundef nonnull %3, i32 noundef %i.ji, i32 noundef -22, i32 noundef 4, ptr noundef %5) #10 ; 2 uses
  %.not339 = icmp eq i32 %i.jt, 0
end_hunk_0
