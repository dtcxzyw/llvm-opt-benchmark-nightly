Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim4b1?download=true
inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
  br i1 %.not327, label %bb.n, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %free_hash_env.exit
  %wide.trip.count.i = zext i32 %i.cv to i64      ; 2 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !20    ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cx = icmp ult i32 %i.cv, 4
  br i1 %i.cx, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i353 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i354.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !29 ; 2 uses
  %i.da = load <4 x i32>, ptr %i.cz, align 4, !tbaa !10
  %i.db = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.db, ptr %i.cz, align 4, !tbaa !10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29 ; 2 uses
  %i.df = load <4 x i32>, ptr %i.de, align 4, !tbaa !10
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dg, ptr %i.de, align 4, !tbaa !10
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !29 ; 2 uses
  %i.dk = load <4 x i32>, ptr %i.dj, align 4, !tbaa !10
  %i.dl = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !10
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !29 ; 2 uses
  %i.dp = load <4 x i32>, ptr %i.do, align 4, !tbaa !10
  %i.dq = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dq, ptr %i.do, align 4, !tbaa !10
  %indvars.iv.next.i354.3 = add nuw nsw i64 %indvars.iv.i353, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %swap_seqs.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !67

swap_seqs.exit.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %swap_seqs.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %swap_seqs.exit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i353.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i354.3, %swap_seqs.exit.unr-lcssa ]
  %lcmp.mod1183 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1183)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i353.epil = phi i64 [ %indvars.iv.i353.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i354.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353.epil
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29 ; 2 uses
  %i.dt = load <4 x i32>, ptr %i.ds, align 4, !tbaa !10
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.du, ptr %i.ds, align 4, !tbaa !10
  %indvars.iv.next.i354.epil = add nuw nsw i64 %indvars.iv.i353.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %swap_seqs.exit, label %.lr.ph.i.epil, !llvm.loop !68

swap_seqs.exit:                                   ; preds = %.lr.ph.i.epil, %swap_seqs.exit.unr-lcssa
  %i.dv = add i32 %i.cv, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !29 ; 2 uses
  %i.dz = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.ea = load i32, ptr %i.f, align 8, !tbaa !16  ; 2 uses
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %.promoted.i = load i32, ptr %i.ed, align 4, !tbaa !43 ; 2 uses
  %i.ee = icmp ult i32 %.promoted.i, %i.ea
  br i1 %i.ee, label %.lr.ph.i356, label %grow_exon_right.exit

.lr.ph.i356:                                      ; preds = %swap_seqs.exit
  %i.ef = load i32, ptr %i.i, align 4, !tbaa !135
  %.promoted12.i = load i32, ptr %i.ec, align 4, !tbaa !44 ; 2 uses
  %i.eg = zext i32 %.promoted12.i to i64
  %i.eh = zext i32 %.promoted.i to i64
  %umax.i = call i32 @llvm.umax.i32(i32 %.promoted12.i, i32 %i.ef)
  %wide.trip.count.i357 = zext i32 %umax.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i356
  %indvars.iv13.i = phi i64 [ %i.eh, %.lr.ph.i356 ], [ %indvars.iv.next14.i, %bb.m ] ; 2 uses
  %indvars.iv.i358 = phi i64 [ %i.eg, %.lr.ph.i356 ], [ %indvars.iv.next.i360, %bb.m ] ; 3 uses
  %exitcond.not.i359 = icmp eq i64 %indvars.iv.i358, %wide.trip.count.i357
  br i1 %exitcond.not.i359, label %grow_exon_right.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv13.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.i358
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !20
  %i.em = icmp eq i8 %i.ej, %i.el
  br i1 %i.em, label %bb.m, label %grow_exon_right.exit

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1 ; 2 uses
  %i.en = trunc i64 %indvars.iv.next14.i to i32   ; 2 uses
  store i32 %i.en, ptr %i.ed, align 4, !tbaa !43
  %indvars.iv.next.i360 = add nuw nsw i64 %indvars.iv.i358, 1 ; 2 uses
  %i.eo = trunc nuw i64 %indvars.iv.next.i360 to i32
  store i32 %i.eo, ptr %i.ec, align 4, !tbaa !44
  %exitcond18.not.i = icmp eq i32 %i.ea, %i.en
  br i1 %exitcond18.not.i, label %grow_exon_right.exit, label %bb.k, !llvm.loop !69

grow_exon_right.exit:                             ; preds = %bb.k, %bb.l, %bb.m, %swap_seqs.exit
  %i.ep = load i32, ptr %i.x, align 4, !tbaa !36
  call fastcc void @merge(ptr noundef nonnull %i.bf, ptr noundef %7, i32 noundef 0, i32 noundef %i.ep)
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.eq = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !29
  br label %bb.n

bb.n:                                             ; preds = %free_hash_env.exit, %grow_exon_right.exit
  %.0296 = phi ptr [ %i.er, %grow_exon_right.exit ], [ %i.bq, %free_hash_env.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pre = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %.not678 = icmp eq i32 %.pre, 0
  br i1 %.not678, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h, %bb.n
  %.1297896 = phi ptr [ %.0296, %bb.n ], [ %i.bq, %bb.h ], [ %i.bq, %bb.g ]
  %i.es = phi i32 [ %.pre, %bb.n ], [ %i.bm, %bb.h ], [ %i.bm, %bb.g ] ; 2 uses
  %i.et = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !136
  %wide.trip.count = zext i32 %i.es to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !29 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %.val351 = load i32, ptr %i.ex, align 4, !tbaa !31
  %i.ey = getelementptr i8, ptr %i.ew, i64 12
  %.val352 = load i32, ptr %i.ey, align 4, !tbaa !44
  %i.ez = call fastcc i32 @is_polyAT_exon_p(i32 %.val351, i32 %.val352, ptr noundef %i.eu)
  %.not328 = icmp eq i32 %i.ez, 0
  br i1 %.not328, label %.critedge.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !70

.critedge.split.loop.exit:                        ; preds = %bb.o
  %i.fa = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %.critedge.split.loop.exit
  %.0295.lcssa = phi i32 [ %i.fa, %.critedge.split.loop.exit ], [ %i.es, %bb.p ] ; 5 uses
  %.not329 = icmp eq i32 %.0295.lcssa, 0
  br i1 %.not329, label %.critedge.thread, label %.preheader600.preheader

.preheader600.preheader:                          ; preds = %.critedge
  %wide.trip.count734 = zext i32 %.0295.lcssa to i64 ; 2 uses
  br label %.preheader600

.preheader600:                                    ; preds = %.preheader600.preheader, %.preheader600
  %indvars.iv731 = phi i64 [ 0, %.preheader600.preheader ], [ %indvars.iv.next732, %.preheader600 ] ; 2 uses
  %i.fb = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv731
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !29
  call void @free(ptr noundef %i.fd) #18
  %indvars.iv.next732 = add nuw nsw i64 %indvars.iv731, 1 ; 2 uses
  %exitcond735.not = icmp eq i64 %indvars.iv.next732, %wide.trip.count734
  br i1 %exitcond735.not, label %bb.q, label %.preheader600, !llvm.loop !71

bb.q:                                             ; preds = %.preheader600
  %i.fe = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %wide.trip.count734
  %i.fg = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.fh = sub i32 %i.fg, %.0295.lcssa
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fe, ptr nonnull align 8 %i.ff, i64 %i.fj, i1 false)
  %i.fk = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.fl = sub i32 %i.fk, %.0295.lcssa
  store i32 %i.fl, ptr %i.bl, align 8, !tbaa !19
  %.not330 = icmp eq i32 %i.fk, %.0295.lcssa
  br i1 %.not330, label %bb.if, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fm = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !29
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.n, %bb.r, %.critedge
  %.3299 = phi ptr [ %i.fn, %bb.r ], [ %.1297896, %.critedge ], [ %.0296, %bb.n ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.3299, i64 4 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !31 ; 3 uses
  %i.fq = add i32 %i.fp, -1                       ; 3 uses
  %.not331 = icmp eq i32 %i.fq, 0
  br i1 %.not331, label %.thread548, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  %spec.select346 = call i32 @llvm.umin.i32(i32 %i.fq, i32 250) ; 12 uses
  %i.fr = shl nuw nsw i32 %spec.select346, 2
  %i.fs = load i32, ptr %.3299, align 4, !tbaa !32 ; 4 uses
  %i.ft = add i32 %i.fs, -1
  %i.fu = call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.ft) ; 10 uses
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.fw = zext i32 %i.fp to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -1
  %i.fz = zext nneg i32 %spec.select346 to i64    ; 3 uses
  %i.ga = sub nsw i64 0, %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.gd = zext i32 %i.fs to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -1
  %i.gg = sext i32 %i.fu to i64                   ; 4 uses
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.gf, i64 %i.gh ; 2 uses
  %i.gj = xor i32 %spec.select346, -1
  %i.gk = add i32 %i.fp, %i.gj                    ; 5 uses
  %i.gl = xor i32 %i.fu, -1
  %i.gm = add i32 %i.fs, %i.gl                    ; 5 uses
  %i.gn = load i32, ptr %i.x, align 4, !tbaa !36  ; 2 uses
  %i.go = add nuw nsw i32 %spec.select346, 1      ; 6 uses
  %i.gp = icmp sgt i32 %i.fs, 1
  br i1 %i.gp, label %.lr.ph.i365, label %.critedge.i

.lr.ph.i365:                                      ; preds = %bb.s, %bb.t
  %.0234274.i = phi i32 [ %i.gz, %bb.t ], [ %spec.select346, %bb.s ] ; 3 uses
  %.0237273.i = phi i32 [ %i.ha, %bb.t ], [ %i.fu, %bb.s ] ; 4 uses
  %i.gq = zext nneg i32 %.0234274.i to i64
  %i.gr = getelementptr i8, ptr %i.gb, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !20
  %i.gu = zext nneg i32 %.0237273.i to i64
  %i.gv = getelementptr i8, ptr %i.gi, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !20
  %i.gy = icmp eq i8 %i.gt, %i.gx
  br i1 %i.gy, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph.i365
  %i.gz = add nsw i32 %.0234274.i, -1             ; 3 uses
  %i.ha = add nsw i32 %.0237273.i, -1             ; 2 uses
  %i.hb = icmp ne i32 %i.gz, 0
  %i.hc = icmp sgt i32 %.0237273.i, 1
  %or.cond.i = and i1 %i.hb, %i.hc
  br i1 %or.cond.i, label %.lr.ph.i365, label %.critedge.i, !llvm.loop !72

.critedge.i:                                      ; preds = %bb.t, %.lr.ph.i365, %bb.s
  %.0237.lcssa.i = phi i32 [ %i.fu, %bb.s ], [ %.0237273.i, %.lr.ph.i365 ], [ %i.ha, %bb.t ] ; 2 uses
  %.0234.lcssa.i = phi i32 [ %spec.select346, %bb.s ], [ %.0234274.i, %.lr.ph.i365 ], [ %i.gz, %bb.t ] ; 3 uses
  %i.hd = icmp eq i32 %.0234.lcssa.i, 0
  %i.he = icmp eq i32 %.0237.lcssa.i, 0
  %or.cond3.i = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge.i
  %i.hf = add nsw i32 %.0234.lcssa.i, %i.gk
  %i.hg = add nsw i32 %.0237.lcssa.i, %i.gm
  br label %extend_bw.exit

bb.v:                                             ; preds = %.critedge.i
  %i.hh = add nsw i32 %i.fu, %spec.select346      ; 2 uses
  %i.hi = add nsw i32 %i.hh, 1                    ; 3 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = shl nsw i64 %i.hj, 2                    ; 2 uses
  %i.hl = call ptr @xmalloc(i64 noundef %i.hk) #18 ; 17 uses
  %i.hm = ptrtoaddr ptr %i.hl to i64
  %i.hn = call ptr @xmalloc(i64 noundef %i.hk) #18 ; 16 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64
  %.not279.i = icmp slt i32 %i.hh, 0
  br i1 %.not279.i, label %._crit_edge.i, label %.lr.ph281.preheader.i

.lr.ph281.preheader.i:                            ; preds = %bb.v
  %wide.trip.count.i361 = zext nneg i32 %i.hi to i64 ; 3 uses
  %min.iters.check1102 = icmp ult i32 %i.hi, 8
  br i1 %min.iters.check1102, label %.lr.ph281.i.preheader, label %vector.ph1103

vector.ph1103:                                    ; preds = %.lr.ph281.preheader.i
  %n.vec1104 = and i64 %wide.trip.count.i361, 2147483640 ; 3 uses
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1107

vector.body1107:                                  ; preds = %vector.body1107, %vector.ph1103
  %index1108 = phi i64 [ 0, %vector.ph1103 ], [ %index.next1109, %vector.body1107 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index1108 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <4 x i32> %broadcast.splat1106, ptr %i.hp, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat1106, ptr %i.hq, align 4, !tbaa !10
  %index.next1109 = add nuw i64 %index1108, 8     ; 2 uses
  %i.hr = icmp eq i64 %index.next1109, %n.vec1104
  br i1 %i.hr, label %middle.block1110, label %vector.body1107, !llvm.loop !73

middle.block1110:                                 ; preds = %vector.body1107
  %cmp.n1111 = icmp eq i64 %n.vec1104, %wide.trip.count.i361
  br i1 %cmp.n1111, label %._crit_edge.i, label %.lr.ph281.i.preheader

.lr.ph281.i.preheader:                            ; preds = %.lr.ph281.preheader.i, %middle.block1110
  %indvars.iv.i362.ph = phi i64 [ 0, %.lr.ph281.preheader.i ], [ %n.vec1104, %middle.block1110 ]
  br label %.lr.ph281.i

.lr.ph281.i:                                      ; preds = %.lr.ph281.i.preheader, %.lr.ph281.i
  %indvars.iv.i362 = phi i64 [ %indvars.iv.next.i363, %.lr.ph281.i ], [ %indvars.iv.i362.ph, %.lr.ph281.i.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.i362
  store i32 %i.go, ptr %i.hs, align 4, !tbaa !10
  %indvars.iv.next.i363 = add nuw nsw i64 %indvars.iv.i362, 1 ; 2 uses
  %exitcond.not.i364 = icmp eq i64 %indvars.iv.next.i363, %wide.trip.count.i361
  br i1 %exitcond.not.i364, label %._crit_edge.i, label %.lr.ph281.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %.lr.ph281.i, %middle.block1110, %bb.v
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gg ; 3 uses
  store i32 %.0234.lcssa.i, ptr %i.ht, align 4, !tbaa !10
  %i.hu = shl nuw nsw i32 %i.go, 2
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hw = call ptr @xmalloc(i64 noundef %i.hv) #18 ; 12 uses
  %i.hx = call ptr @xmalloc(i64 noundef %i.hv) #18 ; 7 uses
  %wide.trip.count322.i = zext nneg i32 %i.go to i64 ; 2 uses
  %min.iters.check1090 = icmp ult i32 %i.fq, 8
  br i1 %min.iters.check1090, label %scalar.ph1089.preheader, label %vector.ph1091

vector.ph1091:                                    ; preds = %._crit_edge.i
  %n.vec1092 = and i64 %i.fz, 248                 ; 3 uses
  %i.hy = or disjoint i64 %n.vec1092, 1
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %vector.ph1091
  %index1096 = phi i64 [ 0, %vector.ph1091 ], [ %index.next1097, %vector.body1095 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %index1096 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  store <4 x i32> %broadcast.splat1094, ptr %i.ia, align 4, !tbaa !10
  store <4 x i32> %broadcast.splat1094, ptr %i.ib, align 4, !tbaa !10
  %index.next1097 = add nuw i64 %index1096, 8     ; 2 uses
  %i.ic = icmp eq i64 %index.next1097, %n.vec1092
  br i1 %i.ic, label %middle.block1098, label %vector.body1095, !llvm.loop !75

middle.block1098:                                 ; preds = %vector.body1095
  %cmp.n1099 = icmp eq i64 %n.vec1092, %i.fz
  br i1 %cmp.n1099, label %.loopexit, label %scalar.ph1089.preheader

scalar.ph1089.preheader:                          ; preds = %._crit_edge.i, %middle.block1098
  %indvars.iv319.i.ph = phi i64 [ 1, %._crit_edge.i ], [ %i.hy, %middle.block1098 ]
  br label %scalar.ph1089

scalar.ph1089:                                    ; preds = %scalar.ph1089.preheader, %scalar.ph1089
  %indvars.iv319.i = phi i64 [ %indvars.iv.next320.i, %scalar.ph1089 ], [ %indvars.iv319.i.ph, %scalar.ph1089.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv319.i
  store i32 %i.go, ptr %i.id, align 4, !tbaa !10
  %indvars.iv.next320.i = add nuw nsw i64 %indvars.iv319.i, 1 ; 2 uses
  %exitcond323.not.i = icmp eq i64 %indvars.iv.next320.i, %wide.trip.count322.i
  br i1 %exitcond323.not.i, label %.loopexit, label %scalar.ph1089, !llvm.loop !76

.loopexit:                                        ; preds = %scalar.ph1089, %middle.block1098
  %i.ie = load i32, ptr %i.ht, align 4, !tbaa !10
  store i32 %i.ie, ptr %i.hw, align 4, !tbaa !10
  store i32 %i.fu, ptr %i.hx, align 4, !tbaa !10
  %i.if = sdiv i32 %i.gn, 2                       ; 2 uses
  %i.ig = shl nsw i32 %i.gn, 1                    ; 2 uses
  %i.ih = add nsw i32 %i.fu, 2
  %i.ii = add nuw nsw i32 %spec.select346, 2
  %i.ij = add nsw i64 %i.gg, 1
  %i.ik = sub i64 %i.ho, %i.hm
  %diff.check1076 = icmp ugt i64 %i.ik, -32
  br label %bb.w

.loopexit.i.loopexit:                             ; preds = %.lr.ph300.i, %.lr.ph300.i.prol.loopexit
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1
  %indvars.iv.next331.i = add nsw i32 %indvars.iv330.i, 1
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond352.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count322.i
  br i1 %exitcond352.i, label %.critedge5.i, label %bb.w, !llvm.loop !77

bb.w:                                             ; preds = %.loopexit.i.loopexit, %.loopexit
  %indvars.iv346.i = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next347.i, %.loopexit.i.loopexit ] ; 10 uses
  %indvars.iv344.i = phi i64 [ 1, %.loopexit ], [ %indvars.iv.next345.i, %.loopexit.i.loopexit ] ; 9 uses
  %indvars.iv330.i = phi i32 [ %i.ih, %.loopexit ], [ %indvars.iv.next331.i, %.loopexit.i.loopexit ] ; 5 uses
  %indvars.iv324.in.i = phi i32 [ %i.fu, %.loopexit ], [ %indvars.iv324.i, %.loopexit.i.loopexit ]
  %i.il = add i64 %i.ij, %indvars.iv346.i
  %i.im = trunc i64 %i.il to i32
  %indvars.iv324.i = add i32 %indvars.iv324.in.i, -1 ; 3 uses
  %i.in = sext i32 %indvars.iv324.i to i64        ; 6 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv346.i
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !10
  %i.iq = sub nsw i32 %spec.select346, %i.ip      ; 3 uses
  %.not.i.i = icmp sgt i32 %i.iq, %i.if
  br i1 %.not.i.i, label %bb.x, label %good_ratio.exit.i

bb.x:                                             ; preds = %bb.w
  %i.ir = icmp slt i32 %i.iq, %i.ig
  br i1 %i.ir, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.is = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !142
  br label %good_ratio.exit.i

bb.z:                                             ; preds = %bb.x
  %i.it = sitofp i32 %i.iq to double
  %i.iu = call double @llvm.fmuladd.f64(double %i.it, double f0x3FC3333333333334, double 1.000000e+00)
  %i.iv = fptosi double %i.iu to i32
  br label %good_ratio.exit.i

good_ratio.exit.i:                                ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i = phi i32 [ %i.iv, %bb.z ], [ %i.is, %bb.y ], [ 2, %bb.w ]
  %i.iw = sext i32 %.0.i.i to i64
  %.not247.i = icmp sgt i64 %indvars.iv346.i, %i.iw
  br i1 %.not247.i, label %bb.aa, label %.critedge7.i

bb.aa:                                            ; preds = %good_ratio.exit.i
  %.not248.i = icmp eq i64 %indvars.iv346.i, 0
  br i1 %.not248.i, label %.critedge5.split.loop.exit375.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ix = add nsw i64 %indvars.iv346.i, -1        ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !10
  %i.ja = sub nsw i32 %spec.select346, %i.iz      ; 3 uses
  %.not.i257.i = icmp sgt i32 %i.ja, %i.if
  br i1 %.not.i257.i, label %bb.ac, label %good_ratio.exit259.i

bb.ac:                                            ; preds = %bb.ab
  %i.jb = icmp slt i32 %i.ja, %i.ig
  br i1 %i.jb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jc = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !142
  br label %good_ratio.exit259.i

bb.ae:                                            ; preds = %bb.ac
  %i.jd = sitofp i32 %i.ja to double
  %i.je = call double @llvm.fmuladd.f64(double %i.jd, double f0x3FC3333333333334, double 1.000000e+00)
  %i.jf = fptosi double %i.je to i32
  br label %good_ratio.exit259.i

good_ratio.exit259.i:                             ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i258.i = phi i32 [ %i.jf, %bb.ae ], [ %i.jc, %bb.ad ], [ 2, %bb.ab ]
  %i.jg = sext i32 %.0.i258.i to i64
  %.not249.i = icmp sgt i64 %i.ix, %i.jg
  br i1 %.not249.i, label %.critedge5.split.loop.exit377.i, label %.critedge7.i

.critedge7.i:                                     ; preds = %good_ratio.exit259.i, %good_ratio.exit.i
  %i.jh = trunc i64 %indvars.iv346.i to i32
  %i.ji = xor i32 %i.jh, -1
  %i.jj = add i32 %i.fu, %i.ji
  %i.jk = add nsw i64 %indvars.iv344.i, %i.gg     ; 2 uses
  %sext328.i = sext i32 %i.jj to i64              ; 2 uses
  %i.jl = getelementptr [4 x i8], ptr %i.hl, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.jl, i64 -4
  %i.jn = getelementptr [4 x i8], ptr %i.hl, i64 %sext328.i
  %i.jo = getelementptr i8, ptr %i.jn, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ar, %.critedge7.i
  %indvars.iv326.i = phi i64 [ %i.in, %.critedge7.i ], [ %indvars.iv.next327.i, %bb.ar ] ; 7 uses
  %i.jp = icmp eq i64 %indvars.iv326.i, %sext328.i
  br i1 %i.jp, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jq = load i32, ptr %i.jo, align 4, !tbaa !10
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.jr = icmp eq i64 %indvars.iv326.i, %i.jk
  br i1 %i.jr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.js = load i32, ptr %i.jm, align 4, !tbaa !10
  %i.jt = add nsw i32 %i.js, -1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv326.i ; 3 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !10 ; 3 uses
  %i.jw = add nsw i32 %i.jv, -1                   ; 2 uses
  %i.jx = getelementptr i8, ptr %i.ju, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !10 ; 3 uses
  %.not253.i = icmp sgt i32 %i.jw, %i.jy
  %.phi.trans.insert.i = getelementptr i8, ptr %i.ju, i64 -4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !10 ; 3 uses
  %.not254.i = icmp sgt i32 %i.jv, %.pre.i
  %or.cond380.i = select i1 %.not253.i, i1 true, i1 %.not254.i
  br i1 %or.cond380.i, label %._crit_edge353.i, label %bb.ak

._crit_edge353.i:                                 ; preds = %bb.aj
  %i.jz = add nsw i32 %.pre.i, -1
  %.not256.i = icmp sgt i32 %.pre.i, %i.jv
  %i.ka = call i32 @llvm.smin.i32(i32 %i.jz, i32 %i.jy)
  %spec.select.i = select i1 %.not256.i, i32 %i.jy, i32 %i.ka
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge353.i, %bb.aj, %bb.ai, %bb.ag
  %.1235.i = phi i32 [ %i.jq, %bb.ag ], [ %i.jt, %bb.ai ], [ %spec.select.i, %._crit_edge353.i ], [ %i.jw, %bb.aj ] ; 4 uses
  %i.kb = trunc nsw i64 %indvars.iv326.i to i32
  %i.kc = sub i32 %i.kb, %spec.select346
  %i.kd = add i32 %.1235.i, %i.kc                 ; 3 uses
  %i.ke = icmp sgt i32 %.1235.i, 0
  %i.kf = icmp sgt i32 %i.kd, 0
  %or.cond9283.i = and i1 %i.ke, %i.kf
  br i1 %or.cond9283.i, label %.lr.ph287.i, label %.critedge11.i

.lr.ph287.i:                                      ; preds = %bb.ak, %bb.al
  %.2236285.i = phi i32 [ %i.kq, %bb.al ], [ %.1235.i, %bb.ak ] ; 4 uses
  %.1238284.i = phi i32 [ %i.kr, %bb.al ], [ %i.kd, %bb.ak ] ; 3 uses
  %i.kg = zext nneg i32 %.2236285.i to i64
  %i.kh = getelementptr i8, ptr %i.gb, i64 %i.kg
  %i.ki = getelementptr i8, ptr %i.kh, i64 -1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !20
  %i.kk = zext nneg i32 %.1238284.i to i64
  %i.kl = getelementptr i8, ptr %i.gi, i64 %i.kk
  %i.km = getelementptr i8, ptr %i.kl, i64 -1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !20
  %i.ko = icmp eq i8 %i.kj, %i.kn
  br i1 %i.ko, label %bb.al, label %.critedge11.thread.i

.critedge11.thread.i:                             ; preds = %.lr.ph287.i
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv326.i
  store i32 %.2236285.i, ptr %i.kp, align 4, !tbaa !10
  br label %bb.ar

bb.al:                                            ; preds = %.lr.ph287.i
  %i.kq = add nsw i32 %.2236285.i, -1             ; 2 uses
  %i.kr = add nsw i32 %.1238284.i, -1             ; 2 uses
  %i.ks = icmp sgt i32 %.2236285.i, 1
  %i.kt = icmp sgt i32 %.1238284.i, 1
  %or.cond9.i = and i1 %i.ks, %i.kt
  br i1 %or.cond9.i, label %.lr.ph287.i, label %.critedge11.i, !llvm.loop !78

.critedge11.i:                                    ; preds = %bb.al, %bb.ak
  %.1238.lcssa.i = phi i32 [ %i.kd, %bb.ak ], [ %i.kr, %bb.al ] ; 2 uses
  %.2236.lcssa.i = phi i32 [ %.1235.i, %bb.ak ], [ %i.kq, %bb.al ] ; 3 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv326.i
  store i32 %.2236.lcssa.i, ptr %i.ku, align 4, !tbaa !10
  %i.kv = icmp eq i32 %.2236.lcssa.i, 0           ; 2 uses
  %i.kw = icmp eq i32 %.1238.lcssa.i, 0           ; 2 uses
  %or.cond13.i = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond13.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge11.i
  %i.kx = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  br label %extend_bw.exit

bb.an:                                            ; preds = %.critedge11.i
  br i1 %i.kv, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ky = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  %i.kz = add nsw i32 %.1238.lcssa.i, %i.gm
  br label %extend_bw.exit

bb.ap:                                            ; preds = %bb.an
  br i1 %i.kw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.la = trunc nuw nsw i64 %indvars.iv344.i to i32
end_hunk_0
begin_hunk_1_@compute_max_score_1:bb.a
  %i.gq = select i1 %i.gk, i32 2, i32 1
  %spec.select.2 = select i1 %i.gp, i32 %i.gq, i32 %spec.store.select.2 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !20  ; 2 uses
  %i.gt = icmp eq i8 %i.gs, %i.at
  %i.gu = zext i1 %i.gt to i32                    ; 2 uses
  br i1 %i.au, label %.lr.ph.i.2, label %SWscore.exit.2

.lr.ph.i.2:                                       ; preds = %splice_score_compare.exit79.thread.1, %.lr.ph.i.2
  %i.gv = phi i8 [ %i.gy, %.lr.ph.i.2 ], [ %i.at, %splice_score_compare.exit79.thread.1 ]
  %i.gw = phi i8 [ %i.hd, %.lr.ph.i.2 ], [ %i.gs, %splice_score_compare.exit79.thread.1 ]
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.i.2 ], [ 1, %splice_score_compare.exit79.thread.1 ] ; 3 uses
  %.sroa.0.051.i.2 = phi i32 [ %.sroa.10.0..i.2, %.lr.ph.i.2 ], [ 0, %splice_score_compare.exit79.thread.1 ]
  %.sroa.10.050.i.2 = phi i32 [ %i.hn, %.lr.ph.i.2 ], [ %i.gu, %splice_score_compare.exit79.thread.1 ] ; 3 uses
  %.sroa.19.049.i.2 = phi i32 [ %i.hh, %.lr.ph.i.2 ], [ 0, %splice_score_compare.exit79.thread.1 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv.i.2
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !20  ; 3 uses
  %i.gz = icmp eq i8 %i.gw, %i.gy
  %i.ha = zext i1 %i.gz to i32
  %i.hb = add nuw nsw i32 %.sroa.0.051.i.2, %i.ha
  %.sroa.10.0..i.2 = tail call i32 @llvm.smax.i32(i32 %i.hb, i32 %.sroa.10.050.i.2) ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv.i.2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !20  ; 3 uses
  %i.he = icmp eq i8 %i.hd, %i.gv
  %i.hf = zext i1 %i.he to i32
  %i.hg = add nuw nsw i32 %.sroa.19.049.i.2, %i.hf
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 %.sroa.10.050.i.2) ; 2 uses
  %i.hi = tail call i32 @llvm.smax.i32(i32 %.sroa.10.0..i.2, i32 %i.hh) ; 2 uses
  %i.hj = icmp eq i8 %i.hd, %i.gy
  %i.hk = zext i1 %i.hj to i32
  %i.hl = add nsw i32 %.sroa.10.050.i.2, %i.hk    ; 2 uses
  %.not.i.2 = icmp sgt i32 %i.hi, %i.hl
  %i.hm = add nsw i32 %i.hi, -1
  %i.hn = select i1 %.not.i.2, i32 %i.hm, i32 %i.hl ; 2 uses
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, %wide.trip.count.i
  br i1 %exitcond.not.i.2, label %SWscore.exit.2, label %.lr.ph.i.2, !llvm.loop !1

SWscore.exit.2:                                   ; preds = %.lr.ph.i.2, %splice_score_compare.exit79.thread.1
  %.sroa.10.0.lcssa.i.2 = phi i32 [ %i.gu, %splice_score_compare.exit79.thread.1 ], [ %i.hn, %.lr.ph.i.2 ] ; 3 uses
  %i.ho = icmp ult i32 %.sroa.10.0.lcssa.i.2, %.sroa.7.1.1
  br i1 %i.ho, label %splice_score_compare.exit.thread.2, label %bb.e

bb.e:                                             ; preds = %SWscore.exit.2
  %i.hp = icmp ugt i32 %.sroa.10.0.lcssa.i.2, %.sroa.7.1.1
  %or.cond.2 = icmp samesign ugt i32 %spec.select.2, %.sroa.14103.1.1
  %or.cond115.2 = select i1 %i.hp, i1 true, i1 %or.cond.2
  br i1 %or.cond115.2, label %splice_score_compare.exit.2, label %splice_score_compare.exit.thread.2

splice_score_compare.exit.thread.2:               ; preds = %bb.e, %SWscore.exit.2
  br label %splice_score_compare.exit.2

splice_score_compare.exit.2:                      ; preds = %splice_score_compare.exit.thread.2, %bb.e
  %.sroa.096.1.2 = phi i32 [ %.sroa.096.1.1, %splice_score_compare.exit.thread.2 ], [ %i.dz, %bb.e ]
  %.sroa.7.1.2 = phi i32 [ %.sroa.7.1.1, %splice_score_compare.exit.thread.2 ], [ %.sroa.10.0.lcssa.i.2, %bb.e ]
  %.sroa.14103.1.2 = phi i32 [ %.sroa.14103.1.1, %splice_score_compare.exit.thread.2 ], [ %spec.select.2, %bb.e ]
  %i.hq = add i32 %i.av, 1
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !20
  %i.hu = icmp eq i8 %i.ht, %i.aw                 ; 2 uses
  %spec.select113.2 = zext i1 %i.hu to i32
  %i.hv = add i32 %i.ax, 1
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !20
  %i.hz = icmp eq i8 %i.hy, %i.ay
  %i.ia = select i1 %i.hu, i32 2, i32 1
  %.sroa.11.2.2 = select i1 %i.hz, i32 %i.ia, i32 %spec.select113.2 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.az, i64 1 ; 2 uses
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !20  ; 2 uses
  %i.id = icmp eq i8 %i.ic, %i.bc
  %i.ie = zext i1 %i.id to i32                    ; 2 uses
  br i1 %i.au, label %.lr.ph.i67.2, label %SWscore.exit76.2

.lr.ph.i67.2:                                     ; preds = %splice_score_compare.exit.2, %.lr.ph.i67.2
  %i.if = phi i8 [ %i.ii, %.lr.ph.i67.2 ], [ %i.bc, %splice_score_compare.exit.2 ]
  %i.ig = phi i8 [ %i.in, %.lr.ph.i67.2 ], [ %i.ic, %splice_score_compare.exit.2 ]
  %indvars.iv.i68.2 = phi i64 [ %indvars.iv.next.i74.2, %.lr.ph.i67.2 ], [ 1, %splice_score_compare.exit.2 ] ; 3 uses
  %.sroa.0.051.i69.2 = phi i32 [ %.sroa.10.0..i72.2, %.lr.ph.i67.2 ], [ 0, %splice_score_compare.exit.2 ]
  %.sroa.10.050.i70.2 = phi i32 [ %i.ix, %.lr.ph.i67.2 ], [ %i.ie, %splice_score_compare.exit.2 ] ; 3 uses
  %.sroa.19.049.i71.2 = phi i32 [ %i.ir, %.lr.ph.i67.2 ], [ 0, %splice_score_compare.exit.2 ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i68.2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !20  ; 3 uses
  %i.ij = icmp eq i8 %i.ig, %i.ii
  %i.ik = zext i1 %i.ij to i32
  %i.il = add nuw nsw i32 %.sroa.0.051.i69.2, %i.ik
  %.sroa.10.0..i72.2 = tail call i32 @llvm.smax.i32(i32 %i.il, i32 %.sroa.10.050.i70.2) ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.i68.2
  %i.in = load i8, ptr %i.im, align 1, !tbaa !20  ; 3 uses
  %i.io = icmp eq i8 %i.in, %i.if
  %i.ip = zext i1 %i.io to i32
  %i.iq = add nuw nsw i32 %.sroa.19.049.i71.2, %i.ip
  %i.ir = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 %.sroa.10.050.i70.2) ; 2 uses
  %i.is = tail call i32 @llvm.smax.i32(i32 %.sroa.10.0..i72.2, i32 %i.ir) ; 2 uses
  %i.it = icmp eq i8 %i.in, %i.ii
  %i.iu = zext i1 %i.it to i32
  %i.iv = add nsw i32 %.sroa.10.050.i70.2, %i.iu  ; 2 uses
  %.not.i73.2 = icmp sgt i32 %i.is, %i.iv
  %i.iw = add nsw i32 %i.is, -1
  %i.ix = select i1 %.not.i73.2, i32 %i.iw, i32 %i.iv ; 2 uses
  %indvars.iv.next.i74.2 = add nuw nsw i64 %indvars.iv.i68.2, 1 ; 2 uses
  %exitcond.not.i75.2 = icmp eq i64 %indvars.iv.next.i74.2, %wide.trip.count.i
  br i1 %exitcond.not.i75.2, label %SWscore.exit76.2, label %.lr.ph.i67.2, !llvm.loop !1

SWscore.exit76.2:                                 ; preds = %.lr.ph.i67.2, %splice_score_compare.exit.2
  %.sroa.10.0.lcssa.i64.2 = phi i32 [ %i.ie, %splice_score_compare.exit.2 ], [ %i.ix, %.lr.ph.i67.2 ] ; 3 uses
  %i.iy = icmp ult i32 %.sroa.10.0.lcssa.i64.2, %.sroa.6.1.1
  br i1 %i.iy, label %splice_score_compare.exit79.thread.2, label %bb.f

bb.f:                                             ; preds = %SWscore.exit76.2
  %i.iz = icmp ugt i32 %.sroa.10.0.lcssa.i64.2, %.sroa.6.1.1
  %or.cond114.2 = icmp samesign ugt i32 %.sroa.11.2.2, %.sroa.10.1.1
  %or.cond116.2 = select i1 %i.iz, i1 true, i1 %or.cond114.2
  br i1 %or.cond116.2, label %splice_score_compare.exit79.2, label %splice_score_compare.exit79.thread.2

splice_score_compare.exit79.2:                    ; preds = %bb.f
  %i.ja = add i32 %i.bd, 1
  br label %splice_score_compare.exit79.thread.2

splice_score_compare.exit79.thread.2:             ; preds = %splice_score_compare.exit79.2, %bb.f, %SWscore.exit76.2
  %.sroa.10.1.2 = phi i32 [ %.sroa.11.2.2, %splice_score_compare.exit79.2 ], [ %.sroa.10.1.1, %SWscore.exit76.2 ], [ %.sroa.10.1.1, %bb.f ]
  %.sroa.6.1.2 = phi i32 [ %.sroa.10.0.lcssa.i64.2, %splice_score_compare.exit79.2 ], [ %.sroa.6.1.1, %SWscore.exit76.2 ], [ %.sroa.6.1.1, %bb.f ]
  %.sroa.293.1.2 = phi i32 [ %i.ja, %splice_score_compare.exit79.2 ], [ %.sroa.293.1.1, %SWscore.exit76.2 ], [ %.sroa.293.1.1, %bb.f ]
  %i.jb = add i32 %.sroa.7.1.2, %.sroa.6.1.2      ; 3 uses
  %i.jc = add nuw nsw i32 %.sroa.14103.1.2, %.sroa.10.1.2 ; 3 uses
  %i.jd = load i32, ptr %i.s, align 4, !tbaa !54  ; 2 uses
  %i.je = icmp ult i32 %i.jb, %i.jd
  br i1 %i.je, label %splice_score_compare.exit82.thread, label %bb.g

bb.g:                                             ; preds = %splice_score_compare.exit79.thread.2
  %i.jf = icmp ugt i32 %i.jb, %i.jd
  br i1 %i.jf, label %splice_score_compare.exit82.thread111, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jg = load i32, ptr %i.t, align 4, !tbaa !55  ; 2 uses
  %i.jh = icmp ult i32 %i.jc, %i.jg
  br i1 %i.jh, label %splice_score_compare.exit82.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ji = icmp samesign ugt i32 %i.jc, %i.jg
  br i1 %i.ji, label %splice_score_compare.exit82.thread111, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jj = load i32, ptr %i.u, align 4, !tbaa !52
  %i.jk = icmp ult i32 %3, %i.jj
  br i1 %i.jk, label %splice_score_compare.exit82.thread111, label %splice_score_compare.exit82.thread

splice_score_compare.exit82.thread111:            ; preds = %bb.j, %bb.g, %bb.i
  store i32 %i.jb, ptr %i.s, align 4, !tbaa !54
  store i32 %i.jc, ptr %i.t, align 4, !tbaa !55
  store i32 %.sroa.096.1.2, ptr %2, align 4, !tbaa !49
  %i.jl = add i32 %5, %i.aj
  store i32 %i.jl, ptr %i.v, align 4, !tbaa !50
  store i32 %.sroa.293.1.2, ptr %i.w, align 4, !tbaa !51
  store i32 %3, ptr %i.u, align 4, !tbaa !52
  store i32 %9, ptr %i.x, align 4, !tbaa !53
  br label %splice_score_compare.exit82.thread

splice_score_compare.exit82.thread:               ; preds = %bb.h, %splice_score_compare.exit79.thread.2, %bb.j, %splice_score_compare.exit82.thread111
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.jm = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 36), align 4, !tbaa !46
  %i.jn = sext i32 %i.jm to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.jn
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %splice_score_compare.exit82.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !41}
!1 = distinct !{!1, !41}
!2 = distinct !{!2, !41}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!"_hash_env_t", !12, i64 0, !13, i64 8, !9, i64 16, !14, i64 24, !9, i64 32, !9, i64 36}
!16 = !{!15, !9, i64 16}
!17 = !{!"_collec_t", !8, i64 0, !9, i64 8, !9, i64 12}
!18 = !{!17, !9, i64 12}
!19 = !{!17, !9, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 _ZTS11_junction_t", !11, i64 0}
!22 = !{!"_options_t", !13, i64 0, !21, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76}
!23 = !{!22, !9, i64 40}
!24 = !{!"p1 _ZTS9_result_t", !11, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_sim4_stats", !9, i64 0, !9, i64 4, !9, i64 8}
!27 = !{!15, !13, i64 8}
!28 = !{!"p1 _ZTS7_exon_t", !11, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"_exon_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 24, !9, i64 24, !9, i64 28, !9, i64 28, !9, i64 31}
!31 = !{!30, !9, i64 4}
!32 = !{!30, !9, i64 0}
!33 = !{!"p1 _ZTS17_edit_script_list", !11, i64 0}
!34 = !{!"_result_t", !33, i64 0, !17, i64 8, !9, i64 24, !9, i64 28, !9, i64 32, !26, i64 36}
!35 = !{!34, !9, i64 24}
!36 = !{!15, !9, i64 36}
!37 = !{!15, !9, i64 32}
!38 = !{!15, !14, i64 24}
!39 = !{!15, !12, i64 0}
!40 = !{!11, !11, i64 0}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = !{!30, !9, i64 8}
!44 = !{!30, !9, i64 12}
!45 = !{!34, !9, i64 28}
!46 = !{!22, !9, i64 36}
!47 = !{!22, !9, i64 44}
!48 = !{!"_splice_score_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24}
!49 = !{!48, !9, i64 0}
!50 = !{!48, !9, i64 4}
!51 = !{!48, !9, i64 8}
!52 = !{!48, !9, i64 12}
!53 = !{!48, !9, i64 24}
!54 = !{!48, !9, i64 16}
!55 = !{!48, !9, i64 20}
!56 = !{!22, !21, i64 8}
!57 = !{!"p1 _ZTS12_edit_script", !11, i64 0}
!58 = !{!"_edit_script_list", !33, i64 0, !57, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32}
!59 = !{!58, !33, i64 0}
!60 = !{!58, !57, i64 8}
!61 = !{!30, !9, i64 16}
!62 = !{!"_hash_node_t", !9, i64 0, !9, i64 4}
!63 = !{!62, !9, i64 0}
!64 = !{!"p1 _ZTS12_hash_node_t", !11, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!30, !9, i64 20}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41, !140, !141}
!74 = distinct !{!74, !41, !141, !140}
!75 = distinct !{!75, !41, !140, !141}
!76 = distinct !{!76, !41, !141, !140}
!77 = distinct !{!77, !41}
!78 = distinct !{!78, !41}
!79 = distinct !{!79, !41}
!80 = distinct !{!80, !41}
!81 = distinct !{!81, !41, !140, !141}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !41, !140}
!84 = distinct !{!84, !41}
!85 = distinct !{!85, !42}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !41, !140, !141}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !41, !140}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = distinct !{!98, !41}
!99 = distinct !{!99, !41, !140, !141}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !41, !140}
!102 = distinct !{!102, !41}
!103 = distinct !{!103, !41, !140, !141}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !41, !140}
!106 = distinct !{!106, !41}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !41}
!110 = distinct !{!110, !41}
!111 = distinct !{!111, !41}
!112 = distinct !{!112, !41}
!113 = distinct !{!113, !41}
!114 = distinct !{!114, !41}
!115 = distinct !{!115, !41}
!116 = distinct !{!116, !41}
!117 = distinct !{!117, !41}
!118 = distinct !{!118, !41}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !41}
!121 = distinct !{!121, !41}
!122 = distinct !{!122, !41}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !41}
!125 = distinct !{!125, !41}
!126 = distinct !{!126, !41}
!127 = distinct !{!127, !41}
!128 = distinct !{!128, !41, !140, !141}
!129 = distinct !{!129, !41, !141, !140}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = distinct !{!132, !41}
!133 = !{!"_read_buf_t", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !8, i64 20}
!134 = !{!"_seq_t", !13, i64 0, !13, i64 8, !13, i64 16, !133, i64 24, !9, i64 4144, !9, i64 4148, !9, i64 4152, !9, i64 4156}
!135 = !{!134, !9, i64 4148}
!136 = !{!134, !13, i64 16}
!137 = !{!26, !9, i64 4}
!138 = !{!26, !9, i64 8}
!139 = !{!22, !9, i64 24}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = !{!22, !9, i64 28}
!143 = !{!22, !9, i64 56}
!144 = !{!22, !9, i64 48}
!145 = !{!22, !9, i64 32}
!146 = !{!34, !9, i64 32}
!147 = !{!34, !9, i64 16}
!148 = !{!22, !9, i64 16}
!149 = !{!33, !33, i64 0}
!150 = !{!58, !9, i64 16}
!151 = !{!58, !9, i64 20}
!152 = !{!58, !9, i64 24}
!153 = !{!58, !9, i64 28}
!154 = !{!58, !9, i64 32}
!155 = !{!"_edit_script", !57, i64 0, !9, i64 8, !8, i64 12}
!156 = !{!155, !8, i64 12}
!157 = !{!155, !9, i64 8}
!158 = !{!155, !57, i64 0}
!159 = !{!57, !57, i64 0}
!160 = !{!34, !33, i64 0}
!161 = distinct !{!161, !41}
!162 = distinct !{!162, !41}
!163 = distinct !{!163, !41}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = distinct !{!166, !41}
!167 = distinct !{!167, !41}
!168 = distinct !{!168, !41}
!169 = distinct !{!169, !41}
!170 = distinct !{!170, !41}
!171 = distinct !{!171, !41}
!172 = distinct !{!172, !41}
!173 = distinct !{!173, !42}
!174 = distinct !{!174, !41}
!175 = distinct !{!175, !41, !180}
end_hunk_1
