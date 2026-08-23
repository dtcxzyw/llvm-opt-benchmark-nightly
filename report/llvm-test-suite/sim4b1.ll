Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim4b1?download=true
inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i353 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i354.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %i.da = load <4 x i32>, ptr %i.cz, align 4, !tbaa !4
  %i.db = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.db, ptr %i.cz, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31 ; 2 uses
  %i.df = load <4 x i32>, ptr %i.de, align 4, !tbaa !4
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dg, ptr %i.de, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31 ; 2 uses
  %i.dk = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4
  %i.dl = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !31 ; 2 uses
  %i.dp = load <4 x i32>, ptr %i.do, align 4, !tbaa !4
  %i.dq = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dq, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next.i354.3 = add nuw nsw i64 %indvars.iv.i353, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %swap_seqs.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !47

swap_seqs.exit.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %swap_seqs.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %swap_seqs.exit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i353.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i354.3, %swap_seqs.exit.unr-lcssa ]
  %lcmp.mod1182 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1182)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i353.epil = phi i64 [ %indvars.iv.i353.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i354.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i353.epil
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 2 uses
  %i.dt = load <4 x i32>, ptr %i.ds, align 4, !tbaa !4
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.du, ptr %i.ds, align 4, !tbaa !4
  %indvars.iv.next.i354.epil = add nuw nsw i64 %indvars.iv.i353.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %swap_seqs.exit, label %.lr.ph.i.epil, !llvm.loop !48

swap_seqs.exit:                                   ; preds = %.lr.ph.i.epil, %swap_seqs.exit.unr-lcssa
  %i.dv = add i32 %i.cv, -1
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31 ; 2 uses
  %i.dz = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.ea = load i32, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %i.eb = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 12 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %.promoted.i = load i32, ptr %i.ed, align 4, !tbaa !50 ; 2 uses
  %i.ee = icmp ult i32 %.promoted.i, %i.ea
  br i1 %i.ee, label %.lr.ph.i356, label %grow_exon_right.exit

.lr.ph.i356:                                      ; preds = %swap_seqs.exit
  %i.ef = load i32, ptr %i.i, align 4, !tbaa !14
  %.promoted12.i = load i32, ptr %i.ec, align 4, !tbaa !51 ; 2 uses
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
  store i32 %i.en, ptr %i.ed, align 4, !tbaa !50
  %indvars.iv.next.i360 = add nuw nsw i64 %indvars.iv.i358, 1 ; 2 uses
  %i.eo = trunc nuw i64 %indvars.iv.next.i360 to i32
  store i32 %i.eo, ptr %i.ec, align 4, !tbaa !51
  %exitcond18.not.i = icmp eq i32 %i.ea, %i.en
  br i1 %exitcond18.not.i, label %grow_exon_right.exit, label %bb.k, !llvm.loop !52

grow_exon_right.exit:                             ; preds = %bb.k, %bb.l, %bb.m, %swap_seqs.exit
  %i.ep = load i32, ptr %i.x, align 4, !tbaa !39
  call fastcc void @merge(ptr noundef nonnull %i.bf, ptr noundef %7, i32 noundef 0, i32 noundef %i.ep)
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.eq = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %free_hash_env.exit, %grow_exon_right.exit
  %.0296 = phi ptr [ %i.er, %grow_exon_right.exit ], [ %i.bq, %free_hash_env.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pre = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %.not680 = icmp eq i32 %.pre, 0
  br i1 %.not680, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h, %bb.n
  %.1297898 = phi ptr [ %.0296, %bb.n ], [ %i.bq, %bb.h ], [ %i.bq, %bb.g ]
  %i.es = phi i32 [ %.pre, %bb.n ], [ %i.bm, %bb.h ], [ %i.bm, %bb.g ] ; 2 uses
  %i.et = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.eu = load ptr, ptr %i.o, align 8, !tbaa !21
  %wide.trip.count = zext i32 %i.es to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !31 ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %.val351 = load i32, ptr %i.ex, align 4, !tbaa !33
  %i.ey = getelementptr i8, ptr %i.ew, i64 12
  %.val352 = load i32, ptr %i.ey, align 4, !tbaa !51
  %i.ez = call fastcc i32 @is_polyAT_exon_p(i32 %.val351, i32 %.val352, ptr noundef %i.eu)
  %.not328 = icmp eq i32 %i.ez, 0
  br i1 %.not328, label %.critedge.split.loop.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.o, !llvm.loop !53

.critedge.split.loop.exit:                        ; preds = %bb.o
  %i.fa = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %.critedge.split.loop.exit
  %.0295.lcssa = phi i32 [ %i.fa, %.critedge.split.loop.exit ], [ %i.es, %bb.p ] ; 5 uses
  %.not329 = icmp eq i32 %.0295.lcssa, 0
  br i1 %.not329, label %.critedge.thread, label %.preheader602.preheader

.preheader602.preheader:                          ; preds = %.critedge
  %wide.trip.count736 = zext i32 %.0295.lcssa to i64 ; 2 uses
  br label %.preheader602

.preheader602:                                    ; preds = %.preheader602.preheader, %.preheader602
  %indvars.iv733 = phi i64 [ 0, %.preheader602.preheader ], [ %indvars.iv.next734, %.preheader602 ] ; 2 uses
  %i.fb = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv733
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !31
  call void @free(ptr noundef %i.fd) #18
  %indvars.iv.next734 = add nuw nsw i64 %indvars.iv733, 1 ; 2 uses
  %exitcond737.not = icmp eq i64 %indvars.iv.next734, %wide.trip.count736
  br i1 %exitcond737.not, label %bb.q, label %.preheader602, !llvm.loop !54

bb.q:                                             ; preds = %.preheader602
  %i.fe = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %wide.trip.count736
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
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !31
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.n, %bb.r, %.critedge
  %.3299 = phi ptr [ %i.fn, %bb.r ], [ %.1297898, %.critedge ], [ %.0296, %bb.n ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.3299, i64 4 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !33 ; 3 uses
  %i.fq = add i32 %i.fp, -1                       ; 4 uses
  %.not331 = icmp eq i32 %i.fq, 0
  br i1 %.not331, label %.thread550, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  %spec.select346 = call i32 @llvm.umin.i32(i32 %i.fq, i32 250) ; 12 uses
  %i.fr = shl nuw nsw i32 %spec.select346, 2
  %i.fs = load i32, ptr %.3299, align 4, !tbaa !35 ; 4 uses
  %i.ft = add i32 %i.fs, -1                       ; 2 uses
  %i.fu = call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.ft) ; 10 uses
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.fw = zext i32 %i.fp to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fw
  %i.fy = getelementptr inbounds i8, ptr %i.fx, i64 -1
  %i.fz = zext nneg i32 %spec.select346 to i64    ; 3 uses
  %i.ga = sub nsw i64 0, %i.fz
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.gd = zext i32 %i.fs to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -1
  %i.gg = sext i32 %i.fu to i64                   ; 3 uses
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.gf, i64 %i.gh ; 2 uses
  %i.gj = xor i32 %spec.select346, -1
  %i.gk = add i32 %i.fp, %i.gj                    ; 5 uses
  %i.gl = xor i32 %i.fu, -1
  %i.gm = add i32 %i.fs, %i.gl                    ; 5 uses
  %i.gn = load i32, ptr %i.x, align 4, !tbaa !39  ; 2 uses
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
  br i1 %or.cond.i, label %.lr.ph.i365, label %.critedge.i, !llvm.loop !55

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
  store <4 x i32> %broadcast.splat1106, ptr %i.hp, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1106, ptr %i.hq, align 4, !tbaa !4
  %index.next1109 = add nuw i64 %index1108, 8     ; 2 uses
  %i.hr = icmp eq i64 %index.next1109, %n.vec1104
  br i1 %i.hr, label %middle.block1110, label %vector.body1107, !llvm.loop !56

middle.block1110:                                 ; preds = %vector.body1107
  %cmp.n1111 = icmp eq i64 %n.vec1104, %wide.trip.count.i361
  br i1 %cmp.n1111, label %._crit_edge.i, label %.lr.ph281.i.preheader

.lr.ph281.i.preheader:                            ; preds = %.lr.ph281.preheader.i, %middle.block1110
  %indvars.iv.i362.ph = phi i64 [ 0, %.lr.ph281.preheader.i ], [ %n.vec1104, %middle.block1110 ]
  br label %.lr.ph281.i

.lr.ph281.i:                                      ; preds = %.lr.ph281.i.preheader, %.lr.ph281.i
  %indvars.iv.i362 = phi i64 [ %indvars.iv.next.i363, %.lr.ph281.i ], [ %indvars.iv.i362.ph, %.lr.ph281.i.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.i362
  store i32 %i.go, ptr %i.hs, align 4, !tbaa !4
  %indvars.iv.next.i363 = add nuw nsw i64 %indvars.iv.i362, 1 ; 2 uses
  %exitcond.not.i364 = icmp eq i64 %indvars.iv.next.i363, %wide.trip.count.i361
  br i1 %exitcond.not.i364, label %._crit_edge.i, label %.lr.ph281.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %.lr.ph281.i, %middle.block1110, %bb.v
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gg ; 3 uses
  store i32 %.0234.lcssa.i, ptr %i.ht, align 4, !tbaa !4
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
  store <4 x i32> %broadcast.splat1094, ptr %i.ia, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1094, ptr %i.ib, align 4, !tbaa !4
  %index.next1097 = add nuw i64 %index1096, 8     ; 2 uses
  %i.ic = icmp eq i64 %index.next1097, %n.vec1092
  br i1 %i.ic, label %middle.block1098, label %vector.body1095, !llvm.loop !60

middle.block1098:                                 ; preds = %vector.body1095
  %cmp.n1099 = icmp eq i64 %n.vec1092, %i.fz
  br i1 %cmp.n1099, label %.loopexit, label %scalar.ph1089.preheader

scalar.ph1089.preheader:                          ; preds = %._crit_edge.i, %middle.block1098
  %indvars.iv319.i.ph = phi i64 [ 1, %._crit_edge.i ], [ %i.hy, %middle.block1098 ]
  br label %scalar.ph1089

scalar.ph1089:                                    ; preds = %scalar.ph1089.preheader, %scalar.ph1089
  %indvars.iv319.i = phi i64 [ %indvars.iv.next320.i, %scalar.ph1089 ], [ %indvars.iv319.i.ph, %scalar.ph1089.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv319.i
  store i32 %i.go, ptr %i.id, align 4, !tbaa !4
  %indvars.iv.next320.i = add nuw nsw i64 %indvars.iv319.i, 1 ; 2 uses
  %exitcond323.not.i = icmp eq i64 %indvars.iv.next320.i, %wide.trip.count322.i
  br i1 %exitcond323.not.i, label %.loopexit, label %scalar.ph1089, !llvm.loop !61

.loopexit:                                        ; preds = %scalar.ph1089, %middle.block1098
  %i.ie = load i32, ptr %i.ht, align 4, !tbaa !4
  store i32 %i.ie, ptr %i.hw, align 4, !tbaa !4
  store i32 %i.fu, ptr %i.hx, align 4, !tbaa !4
  %i.if = sdiv i32 %i.gn, 2                       ; 2 uses
  %i.ig = shl nsw i32 %i.gn, 1                    ; 2 uses
  %i.ih = add nsw i32 %i.fu, 2
  %i.ii = add nuw nsw i32 %spec.select346, 2
  %i.ij = call i32 @llvm.umin.i32(i32 %i.fq, i32 250)
  %i.ik = shl nuw nsw i32 %i.ij, 2
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = sext i32 %i.ft to i64
  %smin = call i64 @llvm.smin.i64(i64 %i.il, i64 %i.im)
  %i.in = add nsw i64 %smin, 1
  %i.io = sub i64 %i.ho, %i.hm
  %diff.check1076 = icmp ugt i64 %i.io, -32
  br label %bb.w

.loopexit.i:                                      ; preds = %.lr.ph300.i, %.lr.ph300.i.prol.loopexit
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1
  %indvars.iv.next331.i = add nsw i32 %indvars.iv330.i, 1
  %indvars.iv.next347.i = add nuw nsw i64 %indvars.iv346.i, 1 ; 2 uses
  %exitcond352.i = icmp eq i64 %indvars.iv.next347.i, %wide.trip.count322.i
  br i1 %exitcond352.i, label %.critedge5.i, label %bb.w, !llvm.loop !62

bb.w:                                             ; preds = %.loopexit.i, %.loopexit
  %indvars.iv346.i = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next347.i, %.loopexit.i ] ; 10 uses
  %indvars.iv344.i = phi i64 [ 1, %.loopexit ], [ %indvars.iv.next345.i, %.loopexit.i ] ; 9 uses
  %indvars.iv330.i = phi i32 [ %i.ih, %.loopexit ], [ %indvars.iv.next331.i, %.loopexit.i ] ; 5 uses
  %.0304.in.i = phi i32 [ %i.fu, %.loopexit ], [ %.0229305.i, %.loopexit.i ]
  %i.ip = add i64 %i.in, %indvars.iv346.i
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = shl nuw nsw i64 %indvars.iv346.i, 1
  %i.is = add nuw i64 %i.ir, 2
  %.0229305.i = add i32 %.0304.in.i, -1           ; 3 uses
  %i.it = sext i32 %.0229305.i to i64             ; 6 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv346.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !4
  %i.iw = sub nsw i32 %spec.select346, %i.iv      ; 3 uses
  %.not.i.i = icmp sgt i32 %i.iw, %i.if
  br i1 %.not.i.i, label %bb.x, label %good_ratio.exit.i

bb.x:                                             ; preds = %bb.w
  %i.ix = icmp slt i32 %i.iw, %i.ig
  br i1 %i.ix, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iy = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !63
  br label %good_ratio.exit.i

bb.z:                                             ; preds = %bb.x
  %i.iz = sitofp i32 %i.iw to double
  %i.ja = call double @llvm.fmuladd.f64(double %i.iz, double f0x3FC3333333333334, double 1.000000e+00)
  %i.jb = fptosi double %i.ja to i32
  br label %good_ratio.exit.i

good_ratio.exit.i:                                ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i = phi i32 [ %i.jb, %bb.z ], [ %i.iy, %bb.y ], [ 2, %bb.w ]
  %i.jc = sext i32 %.0.i.i to i64
  %.not247.i = icmp sgt i64 %indvars.iv346.i, %i.jc
  br i1 %.not247.i, label %bb.aa, label %.lr.ph292.i

bb.aa:                                            ; preds = %good_ratio.exit.i
  %.not248.i = icmp eq i64 %indvars.iv346.i, 0
  br i1 %.not248.i, label %.critedge5.split.loop.exit372.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jd = add nsw i64 %indvars.iv346.i, -1        ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !4
  %i.jg = sub nsw i32 %spec.select346, %i.jf      ; 3 uses
  %.not.i257.i = icmp sgt i32 %i.jg, %i.if
  br i1 %.not.i257.i, label %bb.ac, label %good_ratio.exit259.i

bb.ac:                                            ; preds = %bb.ab
  %i.jh = icmp slt i32 %i.jg, %i.ig
  br i1 %i.jh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ji = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !63
  br label %good_ratio.exit259.i

bb.ae:                                            ; preds = %bb.ac
  %i.jj = sitofp i32 %i.jg to double
  %i.jk = call double @llvm.fmuladd.f64(double %i.jj, double f0x3FC3333333333334, double 1.000000e+00)
  %i.jl = fptosi double %i.jk to i32
  br label %good_ratio.exit259.i

good_ratio.exit259.i:                             ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i258.i = phi i32 [ %i.jl, %bb.ae ], [ %i.ji, %bb.ad ], [ 2, %bb.ab ]
  %i.jm = sext i32 %.0.i258.i to i64
  %.not249.i = icmp sgt i64 %i.jd, %i.jm
  br i1 %.not249.i, label %.critedge5.split.loop.exit374.i, label %.lr.ph292.i

.lr.ph292.i:                                      ; preds = %good_ratio.exit259.i, %good_ratio.exit.i
  %i.jn = trunc i64 %indvars.iv346.i to i32
  %i.jo = xor i32 %i.jn, -1
  %i.jp = add i32 %i.fu, %i.jo
  %i.jq = add nsw i64 %indvars.iv344.i, %i.gg     ; 2 uses
  %sext328.i = sext i32 %i.jp to i64              ; 2 uses
  %i.jr = getelementptr [4 x i8], ptr %i.hl, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 -4
  %i.jt = getelementptr [4 x i8], ptr %i.hl, i64 %sext328.i
  %i.ju = getelementptr i8, ptr %i.jt, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ar, %.lr.ph292.i
  %indvars.iv326.i = phi i64 [ %i.it, %.lr.ph292.i ], [ %indvars.iv.next327.i, %bb.ar ] ; 7 uses
  %i.jv = icmp eq i64 %indvars.iv326.i, %sext328.i
  br i1 %i.jv, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jw = load i32, ptr %i.ju, align 4, !tbaa !4
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.jx = icmp eq i64 %indvars.iv326.i, %i.jq
  br i1 %i.jx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jy = load i32, ptr %i.js, align 4, !tbaa !4
  %i.jz = add nsw i32 %i.jy, -1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv326.i ; 3 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !4  ; 3 uses
  %i.kc = add nsw i32 %i.kb, -1                   ; 2 uses
  %i.kd = getelementptr i8, ptr %i.ka, i64 4
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !4  ; 3 uses
  %.not253.i = icmp sgt i32 %i.kc, %i.ke
  %.phi.trans.insert.i = getelementptr i8, ptr %i.ka, i64 -4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !4 ; 3 uses
  %.not254.i = icmp sgt i32 %i.kb, %.pre.i
  %or.cond377.i = select i1 %.not253.i, i1 true, i1 %.not254.i
  br i1 %or.cond377.i, label %._crit_edge353.i, label %bb.ak

._crit_edge353.i:                                 ; preds = %bb.aj
  %i.kf = add nsw i32 %.pre.i, -1
  %.not256.i = icmp sgt i32 %.pre.i, %i.kb
  %i.kg = call i32 @llvm.smin.i32(i32 %i.kf, i32 %i.ke)
  %spec.select.i = select i1 %.not256.i, i32 %i.ke, i32 %i.kg
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge353.i, %bb.aj, %bb.ai, %bb.ag
  %.1235.i = phi i32 [ %i.jw, %bb.ag ], [ %i.jz, %bb.ai ], [ %spec.select.i, %._crit_edge353.i ], [ %i.kc, %bb.aj ] ; 4 uses
  %i.kh = trunc nsw i64 %indvars.iv326.i to i32
  %i.ki = sub i32 %i.kh, %spec.select346
  %i.kj = add i32 %.1235.i, %i.ki                 ; 3 uses
  %i.kk = icmp sgt i32 %.1235.i, 0
  %i.kl = icmp sgt i32 %i.kj, 0
  %or.cond9283.i = and i1 %i.kk, %i.kl
  br i1 %or.cond9283.i, label %.lr.ph287.i, label %.critedge11.i

.lr.ph287.i:                                      ; preds = %bb.ak, %bb.al
  %.2236285.i = phi i32 [ %i.kw, %bb.al ], [ %.1235.i, %bb.ak ] ; 4 uses
  %.1238284.i = phi i32 [ %i.kx, %bb.al ], [ %i.kj, %bb.ak ] ; 3 uses
  %i.km = zext nneg i32 %.2236285.i to i64
  %i.kn = getelementptr i8, ptr %i.gb, i64 %i.km
  %i.ko = getelementptr i8, ptr %i.kn, i64 -1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !20
  %i.kq = zext nneg i32 %.1238284.i to i64
  %i.kr = getelementptr i8, ptr %i.gi, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kr, i64 -1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !20
  %i.ku = icmp eq i8 %i.kp, %i.kt
  br i1 %i.ku, label %bb.al, label %.critedge11.thread.i

.critedge11.thread.i:                             ; preds = %.lr.ph287.i
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv326.i
  store i32 %.2236285.i, ptr %i.kv, align 4, !tbaa !4
  br label %bb.ar

bb.al:                                            ; preds = %.lr.ph287.i
  %i.kw = add nsw i32 %.2236285.i, -1             ; 2 uses
  %i.kx = add nsw i32 %.1238284.i, -1             ; 2 uses
  %i.ky = icmp sgt i32 %.2236285.i, 1
  %i.kz = icmp sgt i32 %.1238284.i, 1
  %or.cond9.i = and i1 %i.ky, %i.kz
  br i1 %or.cond9.i, label %.lr.ph287.i, label %.critedge11.i, !llvm.loop !64

.critedge11.i:                                    ; preds = %bb.al, %bb.ak
  %.1238.lcssa.i = phi i32 [ %i.kj, %bb.ak ], [ %i.kx, %bb.al ] ; 2 uses
  %.2236.lcssa.i = phi i32 [ %.1235.i, %bb.ak ], [ %i.kw, %bb.al ] ; 3 uses
  %i.la = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv326.i
  store i32 %.2236.lcssa.i, ptr %i.la, align 4, !tbaa !4
  %i.lb = icmp eq i32 %.2236.lcssa.i, 0           ; 2 uses
  %i.lc = icmp eq i32 %.1238.lcssa.i, 0           ; 2 uses
  %or.cond13.i = select i1 %i.lb, i1 %i.lc, i1 false
  br i1 %or.cond13.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge11.i
  %i.ld = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  br label %extend_bw.exit

bb.an:                                            ; preds = %.critedge11.i
  br i1 %i.lb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.le = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  %i.lf = add nsw i32 %.1238.lcssa.i, %i.gm
  br label %extend_bw.exit

bb.ap:                                            ; preds = %bb.an
  br i1 %i.lc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lg = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  %i.lh = add nsw i32 %.2236.lcssa.i, %i.gk
  br label %extend_bw.exit

bb.ar:                                            ; preds = %bb.ap, %.critedge11.thread.i
  %indvars.iv.next327.i = add nsw i64 %indvars.iv326.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next327.i to i32
  %exitcond332.i = icmp eq i32 %indvars.iv330.i, %lftr.wideiv.i
  br i1 %exitcond332.i, label %._crit_edge293.i, label %bb.af, !llvm.loop !65

._crit_edge293.i:                                 ; preds = %bb.ar
  %i.li = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv344.i ; 7 uses
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !4
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv344.i ; 4 uses
  store i32 %i.fu, ptr %i.lk, align 4, !tbaa !4
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.it
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4  ; 2 uses
  %i.ln = load i32, ptr %i.lj, align 4, !tbaa !4
  %i.lo = icmp slt i32 %i.lm, %i.ln
  br i1 %i.lo, label %bb.as, label %.lr.ph297.i.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %._crit_edge293.i
  store i32 %i.lm, ptr %i.lj, align 4, !tbaa !4
  store i32 %.0229305.i, ptr %i.lk, align 4, !tbaa !4
  br label %.lr.ph297.i.prol.loopexit.unr-lcssa

.lr.ph297.i.prol.loopexit.unr-lcssa:              ; preds = %bb.as, %._crit_edge293.i
  %indvars.iv.next334.i.prol = add nsw i64 %i.it, 1
  %.mask1205 = and i64 %indvars.iv346.i, 2147483647
  %i.lp = icmp eq i64 %.mask1205, 2147483647
  br i1 %i.lp, label %.lr.ph300.i.preheader, label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %.lr.ph297.i.prol.loopexit.unr-lcssa, %bb.av
  %indvars.iv333.i = phi i64 [ %indvars.iv.next334.i.1, %bb.av ], [ %indvars.iv.next334.i.prol, %.lr.ph297.i.prol.loopexit.unr-lcssa ] ; 4 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv333.i
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !4  ; 2 uses
  %i.ls = load i32, ptr %i.lj, align 4, !tbaa !4
  %i.lt = icmp slt i32 %i.lr, %i.ls
  br i1 %i.lt, label %bb.at, label %.lr.ph297.i.1

bb.at:                                            ; preds = %.lr.ph297.i
  store i32 %i.lr, ptr %i.lj, align 4, !tbaa !4
  %i.lu = trunc nsw i64 %indvars.iv333.i to i32
  store i32 %i.lu, ptr %i.lk, align 4, !tbaa !4
  br label %.lr.ph297.i.1

.lr.ph297.i.1:                                    ; preds = %bb.at, %.lr.ph297.i
  %indvars.iv.next334.i = add nsw i64 %indvars.iv333.i, 1 ; 2 uses
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next334.i
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !4  ; 2 uses
  %i.lx = load i32, ptr %i.lj, align 4, !tbaa !4
  %i.ly = icmp slt i32 %i.lw, %i.lx
  br i1 %i.ly, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph297.i.1
  store i32 %i.lw, ptr %i.lj, align 4, !tbaa !4
  %i.lz = trunc nsw i64 %indvars.iv.next334.i to i32
  store i32 %i.lz, ptr %i.lk, align 4, !tbaa !4
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph297.i.1
  %indvars.iv.next334.i.1 = add nsw i64 %indvars.iv333.i, 2 ; 2 uses
  %lftr.wideiv336.i.1 = trunc i64 %indvars.iv.next334.i.1 to i32
  %exitcond337.i.1 = icmp eq i32 %indvars.iv330.i, %lftr.wideiv336.i.1
  br i1 %exitcond337.i.1, label %.lr.ph300.i.preheader, label %.lr.ph297.i, !llvm.loop !66

.lr.ph300.i.preheader:                            ; preds = %bb.av, %.lr.ph297.i.prol.loopexit.unr-lcssa
  %min.iters.check1078 = icmp samesign ult i64 %indvars.iv346.i, 3
  %or.cond = select i1 %min.iters.check1078, i1 true, i1 %diff.check1076
  br i1 %or.cond, label %.lr.ph300.i.preheader1122, label %vector.ph1079

vector.ph1079:                                    ; preds = %.lr.ph300.i.preheader
  %n.vec1080 = and i64 %i.is, -8                  ; 2 uses
  %i.ma = add i64 %n.vec1080, %i.it
  br label %vector.body1081
end_hunk_0
begin_hunk_1_@SIM4:bb.a
  %niter1192 = phi i64 [ 0, %.lr.ph.preheader.i372.new ], [ %niter1192.next.3, %.lr.ph.i374 ]
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !31 ; 2 uses
  %i.qg = load <4 x i32>, ptr %i.qf, align 4, !tbaa !4
  %i.qh = shufflevector <4 x i32> %i.qg, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qh, ptr %i.qf, align 4, !tbaa !4
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !31 ; 2 uses
  %i.ql = load <4 x i32>, ptr %i.qk, align 4, !tbaa !4
  %i.qm = shufflevector <4 x i32> %i.ql, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qm, ptr %i.qk, align 4, !tbaa !4
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !31 ; 2 uses
  %i.qq = load <4 x i32>, ptr %i.qp, align 4, !tbaa !4
  %i.qr = shufflevector <4 x i32> %i.qq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qr, ptr %i.qp, align 4, !tbaa !4
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !31 ; 2 uses
  %i.qv = load <4 x i32>, ptr %i.qu, align 4, !tbaa !4
  %i.qw = shufflevector <4 x i32> %i.qv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qw, ptr %i.qu, align 4, !tbaa !4
  %indvars.iv.next.i376.3 = add nuw nsw i64 %indvars.iv.i375, 4 ; 2 uses
  %niter1192.next.3 = add i64 %niter1192, 4       ; 2 uses
  %niter1192.ncmp.3 = icmp eq i64 %niter1192.next.3, %unroll_iter1191
  br i1 %niter1192.ncmp.3, label %swap_seqs.exit379.unr-lcssa, label %.lr.ph.i374, !llvm.loop !47

swap_seqs.exit379.unr-lcssa:                      ; preds = %.lr.ph.i374
  %lcmp.mod1189.not = icmp eq i64 %xtraiter1187, 0
  br i1 %lcmp.mod1189.not, label %swap_seqs.exit379, label %.lr.ph.i374.epil.preheader

.lr.ph.i374.epil.preheader:                       ; preds = %swap_seqs.exit379.unr-lcssa, %.lr.ph.preheader.i372
  %indvars.iv.i375.epil.init = phi i64 [ 0, %.lr.ph.preheader.i372 ], [ %indvars.iv.next.i376.3, %swap_seqs.exit379.unr-lcssa ]
  %lcmp.mod1190 = icmp ne i64 %xtraiter1187, 0
  call void @llvm.assume(i1 %lcmp.mod1190)
  br label %.lr.ph.i374.epil

.lr.ph.i374.epil:                                 ; preds = %.lr.ph.i374.epil, %.lr.ph.i374.epil.preheader
  %indvars.iv.i375.epil = phi i64 [ %indvars.iv.i375.epil.init, %.lr.ph.i374.epil.preheader ], [ %indvars.iv.next.i376.epil, %.lr.ph.i374.epil ] ; 2 uses
  %epil.iter1188 = phi i64 [ 0, %.lr.ph.i374.epil.preheader ], [ %epil.iter1188.next, %.lr.ph.i374.epil ]
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375.epil
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !31 ; 2 uses
  %i.qz = load <4 x i32>, ptr %i.qy, align 4, !tbaa !4
  %i.ra = shufflevector <4 x i32> %i.qz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.ra, ptr %i.qy, align 4, !tbaa !4
  %indvars.iv.next.i376.epil = add nuw nsw i64 %indvars.iv.i375.epil, 1
  %epil.iter1188.next = add i64 %epil.iter1188, 1 ; 2 uses
  %epil.iter1188.cmp.not = icmp eq i64 %epil.iter1188.next, %xtraiter1187
  br i1 %epil.iter1188.cmp.not, label %swap_seqs.exit379, label %.lr.ph.i374.epil, !llvm.loop !74

swap_seqs.exit379:                                ; preds = %.lr.ph.i374.epil, %swap_seqs.exit379.unr-lcssa
  %i.rb = load ptr, ptr %i.qc, align 8, !tbaa !31 ; 2 uses
  %i.rc = load ptr, ptr %i.w, align 8, !tbaa !30  ; 2 uses
  %i.rd = load ptr, ptr %i.o, align 8, !tbaa !21  ; 2 uses
  %i.re = load <2 x i32>, ptr %i.rb, align 4, !tbaa !4 ; 4 uses
  %i.rf = icmp ult <2 x i32> %i.re, splat (i32 2) ; 2 uses
  %i.rg = extractelement <2 x i1> %i.rf, i64 0
  %i.rh = extractelement <2 x i1> %i.rf, i64 1
  %or.cond18.i = select i1 %i.rg, i1 true, i1 %i.rh
  br i1 %or.cond18.i, label %grow_exon_left.exit, label %.lr.ph.preheader.i380

.lr.ph.preheader.i380:                            ; preds = %swap_seqs.exit379
  %i.ri = extractelement <2 x i32> %i.re, i64 1
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr i8, ptr %i.rd, i64 %i.rj
  %i.rl = getelementptr i8, ptr %i.rk, i64 -2
  %i.rm = extractelement <2 x i32> %i.re, i64 0
  %i.rn = zext i32 %i.rm to i64
  %i.ro = getelementptr i8, ptr %i.rc, i64 %i.rn
  %i.rp = getelementptr i8, ptr %i.ro, i64 -2
  br label %.lr.ph.i381

.lr.ph.i381:                                      ; preds = %bb.be, %.lr.ph.preheader.i380
  %.020.i = phi ptr [ %i.rv, %bb.be ], [ %i.rl, %.lr.ph.preheader.i380 ] ; 2 uses
  %.01419.i = phi ptr [ %i.ru, %bb.be ], [ %i.rp, %.lr.ph.preheader.i380 ] ; 2 uses
  %i.rq = phi <2 x i32> [ %i.rw, %bb.be ], [ %i.re, %.lr.ph.preheader.i380 ]
  %i.rr = load i8, ptr %.01419.i, align 1, !tbaa !20
  %i.rs = load i8, ptr %.020.i, align 1, !tbaa !20
  %i.rt = icmp eq i8 %i.rr, %i.rs
  br i1 %i.rt, label %bb.be, label %grow_exon_left.exit

bb.be:                                            ; preds = %.lr.ph.i381
  %i.ru = getelementptr inbounds i8, ptr %.01419.i, i64 -1 ; 2 uses
  %i.rv = getelementptr inbounds i8, ptr %.020.i, i64 -1 ; 2 uses
  %i.rw = add <2 x i32> %i.rq, splat (i32 -1)     ; 2 uses
  store <2 x i32> %i.rw, ptr %i.rb, align 4, !tbaa !4
  %.not.i383 = icmp ult ptr %i.ru, %i.rc
  %.not15.i = icmp ult ptr %i.rv, %i.rd
  %or.cond.i384 = select i1 %.not.i383, i1 true, i1 %.not15.i
  br i1 %or.cond.i384, label %grow_exon_left.exit, label %.lr.ph.i381, !llvm.loop !75

grow_exon_left.exit:                              ; preds = %.lr.ph.i381, %bb.be, %swap_seqs.exit379
  %i.rx = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.ry = load i32, ptr %i.x, align 4, !tbaa !39
  call fastcc void @merge(ptr noundef nonnull %i.bf, ptr noundef %7, i32 noundef %i.rx, i32 noundef %i.ry)
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.rz = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.sa = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.sb = add i32 %i.sa, -1
  %i.sc = zext i32 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.sc
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !31
  br label %bb.bf

bb.bf:                                            ; preds = %free_hash_env.exit370._crit_edge, %grow_exon_left.exit
  %.pre761.a = phi i32 [ %i.sa, %grow_exon_left.exit ], [ %.pre761.pre, %free_hash_env.exit370._crit_edge ]
  %.0290 = phi ptr [ %i.se, %grow_exon_left.exit ], [ %i.om, %free_hash_env.exit370._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bb, %bb.ba
  %i.sf = phi i32 [ %.pre761.a, %bb.bf ], [ %i.oi, %bb.bb ], [ %i.oi, %bb.ba ] ; 6 uses
  %.1291 = phi ptr [ %.0290, %bb.bf ], [ %i.om, %bb.bb ], [ %i.om, %bb.ba ] ; 2 uses
  %.not681 = icmp eq i32 %i.sf, 0
  br i1 %.not681, label %.critedge7.thread, label %.lr.ph655

.lr.ph655:                                        ; preds = %bb.bg
  %i.sg = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.sh = load ptr, ptr %i.o, align 8, !tbaa !21
  %wide.trip.count744 = zext i32 %i.sf to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph655, %bb.bi
  %indvars.iv741 = phi i64 [ 0, %.lr.ph655 ], [ %indvars.iv.next742, %bb.bi ] ; 2 uses
  %i.si = trunc nuw i64 %indvars.iv741 to i32     ; 2 uses
  %i.sj = xor i32 %i.si, -1
  %i.sk = add i32 %i.sf, %i.sj
  %i.sl = zext i32 %i.sk to i64
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !31 ; 2 uses
  %i.so = getelementptr i8, ptr %i.sn, i64 4
  %.val = load i32, ptr %i.so, align 4, !tbaa !33
  %i.sp = getelementptr i8, ptr %i.sn, i64 12
  %.val350 = load i32, ptr %i.sp, align 4, !tbaa !51
  %i.sq = call fastcc i32 @is_polyAT_exon_p(i32 %.val, i32 %.val350, ptr noundef %i.sh)
  %.not335 = icmp eq i32 %i.sq, 0
  br i1 %.not335, label %.critedge7, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %indvars.iv.next742 = add nuw nsw i64 %indvars.iv741, 1 ; 2 uses
  %exitcond745.not = icmp eq i64 %indvars.iv.next742, %wide.trip.count744
  br i1 %exitcond745.not, label %.critedge7, label %bb.bh, !llvm.loop !76

.critedge7:                                       ; preds = %bb.bh, %bb.bi
  %.0289.lcssa = phi i32 [ %i.sf, %bb.bi ], [ %i.si, %bb.bh ] ; 5 uses
  %.not336 = icmp eq i32 %.0289.lcssa, 0
  br i1 %.not336, label %.critedge7.thread, label %bb.bj

bb.bj:                                            ; preds = %.critedge7
  %i.sr = sub i32 %i.sf, %.0289.lcssa             ; 3 uses
  %.not895 = icmp ugt i32 %.0289.lcssa, %i.sf
  br i1 %.not895, label %._crit_edge.thread, label %.lr.ph662.preheader

._crit_edge.thread:                               ; preds = %bb.bj
  store i32 %i.sr, ptr %i.bl, align 8, !tbaa !19
  br label %bb.bk

.lr.ph662.preheader:                              ; preds = %bb.bj
  %i.ss = zext i32 %i.sr to i64
  br label %.lr.ph662

.lr.ph662:                                        ; preds = %.lr.ph662.preheader, %.lr.ph662
  %indvars.iv746 = phi i64 [ %i.ss, %.lr.ph662.preheader ], [ %indvars.iv.next747, %.lr.ph662 ] ; 2 uses
  %i.st = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv746
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !31
  call void @free(ptr noundef %i.sv) #18
  %indvars.iv.next747 = add nuw nsw i64 %indvars.iv746, 1 ; 2 uses
  %i.sw = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %i.sx = zext i32 %i.sw to i64
  %i.sy = icmp samesign ult i64 %indvars.iv.next747, %i.sx
  br i1 %i.sy, label %.lr.ph662, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph662
  %.pre774 = sub i32 %i.sw, %.0289.lcssa          ; 2 uses
  %i.sz = icmp eq i32 %i.sw, %.0289.lcssa
  store i32 %.pre774, ptr %i.bl, align 8, !tbaa !19
  br i1 %i.sz, label %bb.if, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %.pre-phi907 = phi i32 [ %i.sr, %._crit_edge.thread ], [ %.pre774, %._crit_edge ]
  %i.ta = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.tb = add i32 %.pre-phi907, -1
  %i.tc = zext i32 %i.tb to i64
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.ta, i64 %i.tc
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !31
  br label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.bg, %bb.bk, %.critedge7
  %.3293 = phi ptr [ %i.te, %bb.bk ], [ %.1291, %.critedge7 ], [ %.1291, %bb.bg ] ; 2 uses
  %i.tf = load i32, ptr %i.i, align 4, !tbaa !14  ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %.3293, i64 12 ; 3 uses
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !51 ; 4 uses
  %.not338 = icmp eq i32 %i.tf, %i.th
  br i1 %.not338, label %.thread557, label %bb.bl

bb.bl:                                            ; preds = %.critedge7.thread
  %i.ti = sub i32 %i.tf, %i.th
  %spec.select348 = call i32 @llvm.umin.i32(i32 %i.ti, i32 250) ; 18 uses
  %i.tj = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.tk = zext i32 %i.th to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tk ; 2 uses
  %i.tm = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.tn = getelementptr inbounds nuw i8, ptr %.3293, i64 8 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !50 ; 8 uses
  %i.tp = zext i32 %i.to to i64
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tp ; 2 uses
  %i.tr = shl nuw nsw i32 %spec.select348, 2
  %i.ts = load i32, ptr %i.f, align 8, !tbaa !8
  %i.tt = sub i32 %i.ts, %i.to                    ; 2 uses
  %i.tu = call i32 @llvm.smin.i32(i32 %i.tr, i32 %i.tt) ; 10 uses
  %i.tv = load i32, ptr %i.x, align 4, !tbaa !39  ; 2 uses
  %i.tw = add nuw nsw i32 %spec.select348, 1      ; 2 uses
  %i.tx = icmp sgt i32 %i.tt, 0
  br i1 %i.tx, label %.lr.ph.preheader.i401, label %.critedge.thread.i

.lr.ph.preheader.i401:                            ; preds = %bb.bl
  %i.ty = add nsw i32 %i.tu, -1
  %i.tz = add nsw i32 %spec.select348, -1
  %umin.i = call i32 @llvm.umin.i32(i32 %i.ty, i32 %i.tz)
  %i.ua = add nsw i32 %umin.i, 1
  %wide.trip.count.i402 = zext i32 %i.ua to i64   ; 2 uses
  br label %.lr.ph.i403

.lr.ph.i403:                                      ; preds = %bb.bm, %.lr.ph.preheader.i401
  %indvars.iv.i404 = phi i64 [ 0, %.lr.ph.preheader.i401 ], [ %indvars.iv.next.i406, %bb.bm ] ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tl, i64 %indvars.iv.i404
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !20
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tq, i64 %indvars.iv.i404
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !20
  %i.uf = icmp eq i8 %i.uc, %i.ue
  br i1 %i.uf, label %bb.bm, label %.critedge.i405

bb.bm:                                            ; preds = %.lr.ph.i403
  %indvars.iv.next.i406 = add nuw nsw i64 %indvars.iv.i404, 1 ; 2 uses
  %exitcond.not.i407 = icmp eq i64 %indvars.iv.next.i406, %wide.trip.count.i402
  br i1 %exitcond.not.i407, label %.critedge.i405, label %.lr.ph.i403, !llvm.loop !78

.critedge.i405:                                   ; preds = %bb.bm, %.lr.ph.i403
  %.0231.lcssa.ph.in.i = phi i64 [ %indvars.iv.i404, %.lr.ph.i403 ], [ %wide.trip.count.i402, %bb.bm ]
  %.0231.lcssa.ph.i = trunc i64 %.0231.lcssa.ph.in.i to i32 ; 2 uses
  %i.ug = icmp eq i32 %spec.select348, %.0231.lcssa.ph.i
  br i1 %i.ug, label %bb.bn, label %.critedge.thread.i

bb.bn:                                            ; preds = %.critedge.i405
  %i.uh = add nsw i32 %i.to, %spec.select348
  br label %extend_fw.exit

.critedge.thread.i:                               ; preds = %.critedge.i405, %bb.bl
  %.0231.lcssa388.i = phi i32 [ %.0231.lcssa.ph.i, %.critedge.i405 ], [ 0, %bb.bl ] ; 2 uses
  %i.ui = icmp eq i32 %.0231.lcssa388.i, %i.tu
  br i1 %i.ui, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.critedge.thread.i
  %i.uj = add nsw i32 %i.tu, %i.to
  br label %extend_fw.exit

bb.bp:                                            ; preds = %.critedge.thread.i
  %i.uk = add nsw i32 %i.tu, %spec.select348      ; 2 uses
  %i.ul = add nsw i32 %i.uk, 1                    ; 2 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = shl nsw i64 %i.um, 2                    ; 2 uses
  %i.uo = call ptr @xmalloc(i64 noundef %i.un) #18 ; 16 uses
  %i.up = ptrtoaddr ptr %i.uo to i64
  %i.uq = call ptr @xmalloc(i64 noundef %i.un) #18 ; 15 uses
  %i.ur = ptrtoaddr ptr %i.uq to i64
  %.not274.i = icmp slt i32 %i.uk, 0
  br i1 %.not274.i, label %._crit_edge.i385, label %.lr.ph276.preheader.i

.lr.ph276.preheader.i:                            ; preds = %bb.bp
  %i.us = zext nneg i32 %i.ul to i64
  %i.ut = shl nuw nsw i64 %i.us, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.uo, i8 -1, i64 %i.ut, i1 false), !tbaa !4
  br label %._crit_edge.i385

._crit_edge.i385:                                 ; preds = %.lr.ph276.preheader.i, %bb.bp
  %i.uu = zext nneg i32 %spec.select348 to i64    ; 6 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.uo, i64 %i.uu ; 3 uses
  store i32 %.0231.lcssa388.i, ptr %i.uv, align 4, !tbaa !4
  %i.uw = shl nuw nsw i32 %i.tw, 2
  %i.ux = zext nneg i32 %i.uw to i64              ; 2 uses
  %i.uy = call ptr @xmalloc(i64 noundef %i.ux) #18 ; 11 uses
  %i.uz = call ptr @xmalloc(i64 noundef %i.ux) #18 ; 7 uses
  %scevgep.i = getelementptr i8, ptr %i.uy, i64 4
  %i.va = shl nuw nsw i64 %i.uu, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 -1, i64 %i.va, i1 false), !tbaa !4
  %i.vb = load i32, ptr %i.uv, align 4, !tbaa !4
  store i32 %i.vb, ptr %i.uy, align 4, !tbaa !4
  store i32 %spec.select348, ptr %i.uz, align 4, !tbaa !4
  %i.vc = sdiv i32 %i.tv, 2                       ; 2 uses
  %i.vd = shl nsw i32 %i.tv, 1                    ; 2 uses
  %i.ve = sext i32 %i.tu to i64
  %i.vf = add nuw nsw i32 %spec.select348, 2
  %i.vg = add nuw nsw i64 %i.uu, 2
  %wide.trip.count374.i = zext nneg i32 %i.tw to i64 ; 2 uses
  %i.vh = sub i64 %i.ur, %i.up
  %diff.check1062 = icmp ugt i64 %i.vh, -32
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge298.i, %._crit_edge.i385
  %indvars.iv366.i = phi i64 [ 0, %._crit_edge.i385 ], [ %indvars.iv.next367.i, %._crit_edge298.i ] ; 9 uses
  %indvars.iv364.i = phi i64 [ 1, %._crit_edge.i385 ], [ %indvars.iv.next365.i, %._crit_edge298.i ] ; 9 uses
  %indvars.iv362.i = phi i64 [ %i.vg, %._crit_edge.i385 ], [ %indvars.iv.next363.i, %._crit_edge298.i ] ; 5 uses
  %indvars.iv337.in.i = phi i64 [ %i.uu, %._crit_edge.i385 ], [ %indvars.iv337.i, %._crit_edge298.i ] ; 2 uses
  %.0301.i = phi i32 [ -1, %._crit_edge.i385 ], [ %indvars.iv.next328.i, %._crit_edge298.i ] ; 2 uses
  %i.vi = add nuw i64 %indvars.iv366.i, %wide.trip.count374.i
  %i.vj = shl nuw nsw i64 %indvars.iv366.i, 1
  %i.vk = add nuw i64 %i.vj, 2
  %indvars.iv337.i = add nsw i64 %indvars.iv337.in.i, -1 ; 7 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv366.i
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !4  ; 3 uses
  %.not.i.i386 = icmp sgt i32 %i.vm, %i.vc
  br i1 %.not.i.i386, label %bb.br, label %good_ratio.exit.i387

bb.br:                                            ; preds = %bb.bq
  %i.vn = icmp slt i32 %i.vm, %i.vd
  br i1 %i.vn, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.vo = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !63
  br label %good_ratio.exit.i387

bb.bt:                                            ; preds = %bb.br
  %i.vp = sitofp i32 %i.vm to double
  %i.vq = call double @llvm.fmuladd.f64(double %i.vp, double f0x3FC3333333333334, double 1.000000e+00)
  %i.vr = fptosi double %i.vq to i32
  br label %good_ratio.exit.i387

good_ratio.exit.i387:                             ; preds = %bb.bt, %bb.bs, %bb.bq
  %.0.i.i388 = phi i32 [ %i.vr, %bb.bt ], [ %i.vo, %bb.bs ], [ 2, %bb.bq ]
  %i.vs = sext i32 %.0.i.i388 to i64
  %.not244.i = icmp sgt i64 %indvars.iv366.i, %i.vs
  br i1 %.not244.i, label %bb.bu, label %.lr.ph289.i

bb.bu:                                            ; preds = %good_ratio.exit.i387
  %.not245.i = icmp eq i64 %indvars.iv366.i, 0
  br i1 %.not245.i, label %.critedge2.split.loop.exit401.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vt = add nsw i64 %indvars.iv366.i, -1        ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !4  ; 3 uses
  %.not.i256.i = icmp sgt i32 %i.vv, %i.vc
  br i1 %.not.i256.i, label %bb.bw, label %good_ratio.exit258.i

bb.bw:                                            ; preds = %bb.bv
  %i.vw = icmp slt i32 %i.vv, %i.vd
  br i1 %i.vw, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vx = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !63
  br label %good_ratio.exit258.i

bb.by:                                            ; preds = %bb.bw
  %i.vy = sitofp i32 %i.vv to double
  %i.vz = call double @llvm.fmuladd.f64(double %i.vy, double f0x3FC3333333333334, double 1.000000e+00)
  %i.wa = fptosi double %i.vz to i32
  br label %good_ratio.exit258.i

good_ratio.exit258.i:                             ; preds = %bb.by, %bb.bx, %bb.bv
  %.0.i257.i = phi i32 [ %i.wa, %bb.by ], [ %i.vx, %bb.bx ], [ 2, %bb.bv ]
  %i.wb = sext i32 %.0.i257.i to i64
  %.not246.i = icmp sgt i64 %i.vt, %i.wb
  br i1 %.not246.i, label %.critedge2.split.loop.exit403.i, label %.lr.ph289.i

.lr.ph289.i:                                      ; preds = %good_ratio.exit258.i, %good_ratio.exit.i387
  %i.wc = xor i64 %indvars.iv366.i, -1
  %i.wd = add nsw i64 %i.wc, %i.uu                ; 2 uses
  %i.we = add nuw nsw i64 %indvars.iv364.i, %i.uu ; 2 uses
  %i.wf = getelementptr [4 x i8], ptr %i.uo, i64 %i.we
  %i.wg = getelementptr i8, ptr %i.wf, i64 -4
  %i.wh = getelementptr [4 x i8], ptr %i.uo, i64 %i.wd
  %i.wi = getelementptr i8, ptr %i.wh, i64 4
  br label %bb.ca

bb.bz:                                            ; preds = %bb.cm
  %indvars.iv.next340.i390 = add nsw i64 %indvars.iv339.i389, 1 ; 2 uses
  %indvars.iv.next330.i = add nsw i32 %indvars.iv329.i, 1
  %exitcond347.not.i = icmp eq i64 %indvars.iv.next340.i390, %indvars.iv362.i
  br i1 %exitcond347.not.i, label %._crit_edge290.i, label %bb.ca, !llvm.loop !79

bb.ca:                                            ; preds = %bb.bz, %.lr.ph289.i
  %indvars.iv339.i389 = phi i64 [ %indvars.iv337.i, %.lr.ph289.i ], [ %indvars.iv.next340.i390, %bb.bz ] ; 6 uses
  %indvars.iv329.i = phi i32 [ %.0301.i, %.lr.ph289.i ], [ %indvars.iv.next330.i, %bb.bz ] ; 2 uses
  %i.wj = icmp eq i64 %indvars.iv339.i389, %i.wd
  br i1 %i.wj, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.wk = load i32, ptr %i.wi, align 4, !tbaa !4
  %i.wl = add nsw i32 %i.wk, 1
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  %i.wm = icmp eq i64 %indvars.iv339.i389, %i.we
  br i1 %i.wm, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.wn = load i32, ptr %i.wg, align 4, !tbaa !4
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv339.i389 ; 4 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !4  ; 3 uses
  %i.wq = getelementptr i8, ptr %i.wo, i64 4
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !4  ; 3 uses
  %.not250.i = icmp slt i32 %i.wp, %i.wr
  br i1 %.not250.i, label %._crit_edge376.i, label %bb.cf

._crit_edge376.i:                                 ; preds = %bb.ce
  %.phi.trans.insert.i399 = getelementptr i8, ptr %i.wo, i64 -4
  %.pre.i400 = load i32, ptr %.phi.trans.insert.i399, align 4, !tbaa !4
  br label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ws = add nsw i32 %i.wp, 1                    ; 2 uses
  %i.wt = getelementptr i8, ptr %i.wo, i64 -4
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !4  ; 2 uses
  %.not251.i = icmp slt i32 %i.ws, %i.wu
  br i1 %.not251.i, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %._crit_edge376.i
  %i.wv = phi i32 [ %.pre.i400, %._crit_edge376.i ], [ %i.wu, %bb.cf ] ; 2 uses
  %i.ww = add nsw i32 %i.wr, 1
  %.not253.i397 = icmp slt i32 %i.wr, %i.wp
  %i.wx = call i32 @llvm.smax.i32(i32 %i.ww, i32 %i.wv)
  %spec.select.i398 = select i1 %.not253.i397, i32 %i.wv, i32 %i.wx
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.cb
  %.1228.i = phi i32 [ %i.wl, %bb.cb ], [ %i.wn, %bb.cd ], [ %spec.select.i398, %bb.cg ], [ %i.ws, %bb.cf ] ; 7 uses
  %i.wy = trunc i64 %indvars.iv339.i389 to i32
  %i.wz = sub i32 %i.wy, %spec.select348
  %i.xa = add i32 %.1228.i, %i.wz                 ; 3 uses
  %i.xb = icmp sgt i32 %.1228.i, -1
  br i1 %i.xb, label %.preheader.i394, label %.critedge6.i

.preheader.i394:                                  ; preds = %bb.ch
  %i.xc = icmp slt i32 %.1228.i, %spec.select348
  %i.xd = icmp slt i32 %i.xa, %i.tu
  %or.cond254278.i = and i1 %i.xc, %i.xd
  br i1 %or.cond254278.i, label %.lr.ph281.preheader.i395, label %.critedge6.i

.lr.ph281.preheader.i395:                         ; preds = %.preheader.i394
  %i.xe = zext nneg i32 %.1228.i to i64
  %i.xf = add i32 %.1228.i, %indvars.iv329.i
  %i.xg = sext i32 %i.xf to i64
  br label %.lr.ph281.i396

.lr.ph281.i396:                                   ; preds = %bb.ci, %.lr.ph281.preheader.i395
  %indvars.iv331.i = phi i64 [ %i.xg, %.lr.ph281.preheader.i395 ], [ %indvars.iv.next332.i, %bb.ci ] ; 3 uses
  %indvars.iv325.i = phi i64 [ %i.xe, %.lr.ph281.preheader.i395 ], [ %indvars.iv.next326.i, %bb.ci ] ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.tl, i64 %indvars.iv325.i
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !20
  %i.xj = getelementptr inbounds i8, ptr %i.tq, i64 %indvars.iv331.i
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !20
  %i.xl = icmp eq i8 %i.xi, %i.xk
  br i1 %i.xl, label %bb.ci, label %.critedge6.loopexit.split.loop.exit.i

bb.ci:                                            ; preds = %.lr.ph281.i396
  %indvars.iv.next326.i = add nuw nsw i64 %indvars.iv325.i, 1 ; 2 uses
  %indvars333.i = trunc i64 %indvars.iv.next326.i to i32 ; 2 uses
  %indvars.iv.next332.i = add nsw i64 %indvars.iv331.i, 1 ; 3 uses
  %i.xm = icmp sgt i32 %spec.select348, %indvars333.i
  %i.xn = icmp slt i64 %indvars.iv.next332.i, %i.ve
  %or.cond254.i = select i1 %i.xm, i1 %i.xn, i1 false
  br i1 %or.cond254.i, label %.lr.ph281.i396, label %.critedge6.loopexit.i, !llvm.loop !80

.critedge6.loopexit.split.loop.exit.i:            ; preds = %.lr.ph281.i396
  %i.xo = trunc nuw i64 %indvars.iv325.i to i32
  br label %.critedge6.loopexit.i

.critedge6.loopexit.i:                            ; preds = %bb.ci, %.critedge6.loopexit.split.loop.exit.i
  %.2233.ph.in.i = phi i64 [ %indvars.iv331.i, %.critedge6.loopexit.split.loop.exit.i ], [ %indvars.iv.next332.i, %bb.ci ]
  %.3230.ph.i = phi i32 [ %i.xo, %.critedge6.loopexit.split.loop.exit.i ], [ %indvars333.i, %bb.ci ]
  %.2233.ph.i = trunc i64 %.2233.ph.in.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.loopexit.i, %.preheader.i394, %bb.ch
  %.2233.i = phi i32 [ %i.xa, %bb.ch ], [ %i.xa, %.preheader.i394 ], [ %.2233.ph.i, %.critedge6.loopexit.i ] ; 2 uses
  %.3230.i = phi i32 [ %.1228.i, %bb.ch ], [ %.1228.i, %.preheader.i394 ], [ %.3230.ph.i, %.critedge6.loopexit.i ] ; 3 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv339.i389
  store i32 %.3230.i, ptr %i.xp, align 4, !tbaa !4
  %i.xq = icmp eq i32 %.3230.i, %spec.select348   ; 2 uses
  %i.xr = icmp eq i32 %.2233.i, %i.tu             ; 2 uses
  %or.cond255.i = select i1 %i.xq, i1 %i.xr, i1 false
  br i1 %or.cond255.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.critedge6.i
  %i.xs = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef nonnull %i.uq) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  %i.xt = add nsw i32 %i.tu, %i.to
  br label %extend_fw.exit

bb.ck:                                            ; preds = %.critedge6.i
  br i1 %i.xq, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.xu = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef nonnull %i.uq) #18
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  %i.xv = add nsw i32 %.2233.i, %i.to
  br label %extend_fw.exit

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.xr, label %bb.cn, label %bb.bz

bb.cn:                                            ; preds = %bb.cm
  %i.xw = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef nonnull %i.uq) #18
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  %i.xx = add nsw i32 %i.tu, %i.to
  br label %extend_fw.exit

._crit_edge290.i:                                 ; preds = %bb.bz
  %i.xy = load i32, ptr %i.uv, align 4, !tbaa !4
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv364.i ; 7 uses
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !4
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %indvars.iv364.i ; 4 uses
  store i32 %spec.select348, ptr %i.ya, align 4, !tbaa !4
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv337.i
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !4  ; 2 uses
  %i.yd = load i32, ptr %i.xz, align 4, !tbaa !4
  %i.ye = icmp sgt i32 %i.yc, %i.yd
  br i1 %i.ye, label %bb.co, label %._crit_edge290.i.new

bb.co:                                            ; preds = %._crit_edge290.i
  store i32 %i.yc, ptr %i.xz, align 4, !tbaa !4
  %i.yf = trunc nsw i64 %indvars.iv337.i to i32
  store i32 %i.yf, ptr %i.ya, align 4, !tbaa !4
  br label %._crit_edge290.i.new

._crit_edge290.i.new:                             ; preds = %bb.co, %._crit_edge290.i
  br label %.lr.ph294.i

.lr.ph294.i:                                      ; preds = %bb.cr, %._crit_edge290.i.new
  %indvars.iv348.i = phi i64 [ %indvars.iv337.in.i, %._crit_edge290.i.new ], [ %indvars.iv.next349.i.1, %bb.cr ] ; 4 uses
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv348.i
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !4  ; 2 uses
  %i.yi = load i32, ptr %i.xz, align 4, !tbaa !4
  %i.yj = icmp sgt i32 %i.yh, %i.yi
  br i1 %i.yj, label %bb.cp, label %.lr.ph294.i.1

bb.cp:                                            ; preds = %.lr.ph294.i
  store i32 %i.yh, ptr %i.xz, align 4, !tbaa !4
  %i.yk = trunc nsw i64 %indvars.iv348.i to i32
  store i32 %i.yk, ptr %i.ya, align 4, !tbaa !4
  br label %.lr.ph294.i.1

.lr.ph294.i.1:                                    ; preds = %bb.cp, %.lr.ph294.i
  %indvars.iv.next349.i = add nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next349.i
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !4  ; 2 uses
  %i.yn = load i32, ptr %i.xz, align 4, !tbaa !4
  %i.yo = icmp sgt i32 %i.ym, %i.yn
  br i1 %i.yo, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph294.i.1
  store i32 %i.ym, ptr %i.xz, align 4, !tbaa !4
  %i.yp = trunc nsw i64 %indvars.iv.next349.i to i32
  store i32 %i.yp, ptr %i.ya, align 4, !tbaa !4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph294.i.1
  %indvars.iv.next349.i.1 = add nsw i64 %indvars.iv348.i, 2 ; 2 uses
  %exitcond353.not.i.1 = icmp eq i64 %indvars.iv.next349.i.1, %indvars.iv362.i
  br i1 %exitcond353.not.i.1, label %.lr.ph297.i391.preheader, label %.lr.ph294.i, !llvm.loop !81

.lr.ph297.i391.preheader:                         ; preds = %bb.cr
  %min.iters.check1064 = icmp samesign ult i64 %indvars.iv366.i, 3
  %or.cond1113 = select i1 %min.iters.check1064, i1 true, i1 %diff.check1062
  br i1 %or.cond1113, label %.lr.ph297.i391.preheader1121, label %vector.ph1065

vector.ph1065:                                    ; preds = %.lr.ph297.i391.preheader
  %n.vec1066 = and i64 %i.vk, -8                  ; 2 uses
  %i.yq = add i64 %indvars.iv337.i, %n.vec1066
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1071, %vector.body1067 ] ; 2 uses
  %i.yr = add i64 %indvars.iv337.i, %index1068    ; 2 uses
  %i.ys = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.yr ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  %wide.load1069 = load <4 x i32>, ptr %i.ys, align 4, !tbaa !4
  %wide.load1070 = load <4 x i32>, ptr %i.yt, align 4, !tbaa !4
  %i.yu = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.yr ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store <4 x i32> %wide.load1069, ptr %i.yu, align 4, !tbaa !4
  store <4 x i32> %wide.load1070, ptr %i.yv, align 4, !tbaa !4
  %index.next1071 = add nuw i64 %index1068, 8     ; 2 uses
  %i.yw = icmp eq i64 %index.next1071, %n.vec1066
  br i1 %i.yw, label %.lr.ph297.i391.preheader1121, label %vector.body1067, !llvm.loop !82

.lr.ph297.i391.preheader1121:                     ; preds = %vector.body1067, %.lr.ph297.i391.preheader
  %indvars.iv356.i.ph = phi i64 [ %indvars.iv337.i, %.lr.ph297.i391.preheader ], [ %i.yq, %vector.body1067 ] ; 4 uses
  %i.yx = sub i64 %indvars.iv362.i, %indvars.iv356.i.ph
  %i.yy = sub i64 %i.vi, %indvars.iv356.i.ph
  %xtraiter1196 = and i64 %i.yx, 3                ; 2 uses
  %lcmp.mod1197.not = icmp eq i64 %xtraiter1196, 0
  br i1 %lcmp.mod1197.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol

.lr.ph297.i391.prol:                              ; preds = %.lr.ph297.i391.preheader1121, %.lr.ph297.i391.prol
  %indvars.iv356.i.prol = phi i64 [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ], [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1121 ] ; 3 uses
  %prol.iter1198 = phi i64 [ %prol.iter1198.next, %.lr.ph297.i391.prol ], [ 0, %.lr.ph297.i391.preheader1121 ]
  %i.yz = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv356.i.prol
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !4
  %i.zb = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv356.i.prol
  store i32 %i.za, ptr %i.zb, align 4, !tbaa !4
  %indvars.iv.next357.i.prol = add nsw i64 %indvars.iv356.i.prol, 1 ; 2 uses
  %prol.iter1198.next = add i64 %prol.iter1198, 1 ; 2 uses
  %prol.iter1198.cmp.not = icmp eq i64 %prol.iter1198.next, %xtraiter1196
  br i1 %prol.iter1198.cmp.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol, !llvm.loop !83

.lr.ph297.i391.prol.loopexit:                     ; preds = %.lr.ph297.i391.prol, %.lr.ph297.i391.preheader1121
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1121 ], [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ]
  %i.zc = icmp ult i64 %i.yy, 3
  br i1 %i.zc, label %._crit_edge298.i, label %.lr.ph297.i391

.lr.ph297.i391:                                   ; preds = %.lr.ph297.i391.prol.loopexit, %.lr.ph297.i391
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.3, %.lr.ph297.i391 ], [ %indvars.iv356.i.unr, %.lr.ph297.i391.prol.loopexit ] ; 6 uses
  %i.zd = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv356.i
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !4
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv356.i
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !4
  %indvars.iv.next357.i = add nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next357.i
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !4
  %i.zi = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv.next357.i
  store i32 %i.zh, ptr %i.zi, align 4, !tbaa !4
  %indvars.iv.next357.i.1 = add nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next357.i.1
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !4
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv.next357.i.1
  store i32 %i.zk, ptr %i.zl, align 4, !tbaa !4
  %indvars.iv.next357.i.2 = add nsw i64 %indvars.iv356.i, 3 ; 2 uses
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next357.i.2
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !4
  %i.zo = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv.next357.i.2
  store i32 %i.zn, ptr %i.zo, align 4, !tbaa !4
  %indvars.iv.next357.i.3 = add nsw i64 %indvars.iv356.i, 4 ; 2 uses
  %exitcond361.not.i.3 = icmp eq i64 %indvars.iv.next357.i.3, %indvars.iv362.i
  br i1 %exitcond361.not.i.3, label %._crit_edge298.i, label %.lr.ph297.i391, !llvm.loop !84

._crit_edge298.i:                                 ; preds = %.lr.ph297.i391, %.lr.ph297.i391.prol.loopexit
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1
  %indvars.iv.next328.i = add nsw i32 %.0301.i, -1
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond375.i = icmp eq i64 %indvars.iv.next367.i, %wide.trip.count374.i
  br i1 %exitcond375.i, label %.critedge2.i, label %bb.bq, !llvm.loop !85

.critedge2.split.loop.exit401.i:                  ; preds = %bb.bu
  %i.zp = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.split.loop.exit403.i:                  ; preds = %good_ratio.exit258.i
  %i.zq = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %._crit_edge298.i, %.critedge2.split.loop.exit403.i, %.critedge2.split.loop.exit401.i
  %.lcssa.i392 = phi i32 [ %i.zp, %.critedge2.split.loop.exit401.i ], [ %i.zq, %.critedge2.split.loop.exit403.i ], [ %i.vf, %._crit_edge298.i ] ; 2 uses
  %smin.i393 = call i32 @llvm.smin.i32(i32 %.lcssa.i392, i32 1)
  %i.zr = add i32 %smin.i393, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.critedge2.i
  %.2226303.i = phi i32 [ %.lcssa.i392, %.critedge2.i ], [ %i.zz, %bb.ct ] ; 4 uses
  %i.zs = zext nneg i32 %.2226303.i to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.zs ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !4
  %i.zv = getelementptr i8, ptr %i.zt, i64 -4
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !4
  %i.zx = sub nsw i32 %i.zu, %i.zw
  %i.zy = icmp slt i32 %i.zx, 3
  br i1 %i.zy, label %bb.ct, label %.critedge8.i

bb.ct:                                            ; preds = %bb.cs
  %i.zz = add nsw i32 %.2226303.i, -1
  %i.aaa = icmp sgt i32 %.2226303.i, 1
  br i1 %i.aaa, label %bb.cs, label %.critedge8.i, !llvm.loop !86

.critedge8.i:                                     ; preds = %bb.ct, %bb.cs
  %.2226.lcssa.i = phi i32 [ %i.zr, %bb.ct ], [ %.2226303.i, %bb.cs ] ; 2 uses
  %i.aab = sext i32 %.2226.lcssa.i to i64         ; 2 uses
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !4 ; 2 uses
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %i.aab
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !4
  %i.aag = sub i32 %i.to, %spec.select348
  %i.aah = add i32 %i.aag, %i.aad
  %i.aai = add i32 %i.aah, %i.aaf
  call void @free(ptr noundef nonnull %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef %i.uq) #18
  br label %extend_fw.exit

extend_fw.exit:                                   ; preds = %bb.bn, %bb.bo, %bb.cj, %bb.cl, %bb.cn, %.critedge8.i
  %spec.select348.pn = phi i32 [ %spec.select348, %bb.bn ], [ %i.tu, %bb.bo ], [ %i.aad, %.critedge8.i ], [ %spec.select348, %bb.cj ], [ %spec.select348, %bb.cl ], [ %.3230.i, %bb.cn ]
  %.0544 = phi i32 [ %i.uh, %bb.bn ], [ %i.uj, %bb.bo ], [ %i.aai, %.critedge8.i ], [ %i.xt, %bb.cj ], [ %i.xv, %bb.cl ], [ %i.xx, %bb.cn ]
  %.0234.i = phi i32 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %.2226.lcssa.i, %.critedge8.i ], [ %i.xs, %bb.cj ], [ %i.xu, %bb.cl ], [ %i.xw, %bb.cn ]
  %.0545 = add nsw i32 %spec.select348.pn, %i.th  ; 2 uses
  %i.aaj = load i32, ptr %i.tg, align 4, !tbaa !51
  %i.aak = sub nsw i32 %.0545, %i.aaj
  %i.aal = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !71
  %i.aam = mul nsw i32 %i.aak, %i.aal
  %i.aan = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !72
  %i.aao = mul nsw i32 %i.aan, %.0234.i
  %i.aap = add nsw i32 %i.aao, %i.aam
  %i.aaq = icmp sgt i32 %i.aap, -1
  br i1 %i.aaq, label %bb.cu, label %.thread557

bb.cu:                                            ; preds = %extend_fw.exit
  store i32 %.0545, ptr %i.tg, align 4, !tbaa !51
  store i32 %.0544, ptr %i.tn, align 4, !tbaa !50
  br label %.thread557

.thread557:                                       ; preds = %extend_fw.exit, %bb.cu, %.critedge7.thread, %bb.az, %.thread550
  %i.aar = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aas = icmp ugt i32 %i.aar, 1
  br i1 %i.aas, label %.lr.ph665, label %.loopexit601

.lr.ph665:                                        ; preds = %.thread557, %bb.fg
  %i.aat = phi i32 [ %i.atr, %bb.fg ], [ %i.aar, %.thread557 ] ; 2 uses
  %.0285664 = phi i32 [ %i.ats, %bb.fg ], [ 1, %.thread557 ] ; 6 uses
  %i.aau = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aav = add i32 %.0285664, -1                  ; 2 uses
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aaw
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !31 ; 2 uses
  %i.aaz = zext i32 %.0285664 to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aaz
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !31 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !33 ; 6 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 12 ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !51 ; 9 uses
  %i.abg = xor i32 %i.abf, -1
  %i.abh = add i32 %i.abd, %i.abg                 ; 14 uses
  %i.abi = icmp sgt i32 %i.abh, 0
  br i1 %i.abi, label %bb.cv, label %bb.fg

bb.cv:                                            ; preds = %.lr.ph665
  %i.abj = load i32, ptr %i.abb, align 4, !tbaa !35 ; 2 uses
  %i.abk = add i32 %i.abj, -1                     ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 3 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !50 ; 10 uses
  %i.abn = icmp ugt i32 %i.abk, %i.abm
  br i1 %i.abn, label %bb.cw, label %bb.fg

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.abo = icmp samesign ult i32 %i.abh, 501
  %.pre763.a = load i32, ptr %i.x, align 4, !tbaa !39 ; 3 uses
  %.pre766 = load ptr, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  br i1 %i.abo, label %bb.cx, label %.thread561

bb.cx:                                            ; preds = %bb.cw
  %i.abp = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.abq = zext i32 %i.abf to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abq ; 4 uses
  %i.abs = zext i32 %i.abm to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %.pre766, i64 %i.abs ; 4 uses
  %i.abu = xor i32 %i.abm, -1
  %i.abv = add i32 %i.abj, %i.abu                 ; 8 uses
  %i.abw = icmp ugt i32 %i.abv, 999999
  br i1 %i.abw, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.abx = sub nsw i32 %i.abv, %i.abh             ; 3 uses
  %i.aby = uitofp nneg i32 %i.abh to double       ; 2 uses
  %i.abz = call double @llvm.fmuladd.f64(double %i.aby, double 2.000000e-01, double 1.000000e+00)
  %i.aca = fptoui double %i.abz to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre763.a, i32 %i.aca) ; 22 uses
  %i.acb = icmp slt i32 %i.abx, 0
  br i1 %i.acb, label %bb.cz, label %.lr.ph.i408.preheader

bb.cz:                                            ; preds = %bb.cy
  %i.acc = uitofp i32 %.pre763.a to double        ; 2 uses
  %i.acd = uitofp nneg i32 %i.abv to double       ; 2 uses
  %i.ace = fmul nnan double %i.acd, 1.200000e+00  ; 2 uses
  %i.acf = fcmp olt double %i.ace, %i.acc
  %.501.i = select i1 %i.acf, double %i.ace, double %i.acc
  %i.acg = fcmp ult double %.501.i, %i.aby
  br i1 %i.acg, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ach = add nuw i32 %i.abm, 1
  %i.aci = add i32 %i.abf, 1
  %i.acj = add i32 %i.abd, -1
  %i.ack = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.ach, ptr %i.ack, align 4, !tbaa !35
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  store i32 %i.aci, ptr %i.acl, align 4, !tbaa !33
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store i32 %i.abk, ptr %i.acm, align 4, !tbaa !50
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 12
  store i32 %i.acj, ptr %i.acn, align 4, !tbaa !51
  %i.aco = load i32, ptr %i.s, align 4, !tbaa !17 ; 2 uses
  %i.acp = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i.i426 = icmp ugt i32 %i.aco, %i.acp
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i426, label %add_col_elt.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acq = add i32 %i.aco, 5                      ; 2 uses
  store i32 %i.acq, ptr %i.s, align 4, !tbaa !17
  %i.acr = zext i32 %i.acq to i64
  %i.acs = shl nuw nsw i64 %i.acr, 3
  %i.act = call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.acs) #18 ; 2 uses
  store ptr %i.act, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit.i

add_col_elt.exit.i:                               ; preds = %bb.db, %bb.da
  %i.acu = phi ptr [ %i.act, %bb.db ], [ %.pre.i.i, %bb.da ]
  %i.acv = add i32 %i.acp, 1
  store i32 %i.acv, ptr %i.t, align 8, !tbaa !19
  %i.acw = zext i32 %i.acp to i64
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acw
  store ptr %i.ack, ptr %i.acx, align 8, !tbaa !44
  %i.acy = sub nsw i32 %i.abh, %i.abv
  %i.acz = call double @llvm.fmuladd.f64(double %i.acd, double 2.000000e-01, double 1.000000e+00)
  %i.ada = fptoui double %i.acz to i32
  %i.adb = add i32 %i.acy, %i.ada
  br label %greedy.exitthread-pre-split

bb.dc:                                            ; preds = %bb.cz
  %i.adc = add i32 %..i, 1
  br label %greedy.exitthread-pre-split

.lr.ph.i408.preheader:                            ; preds = %bb.cy
  %.neg606.i = sub i32 %i.abx, %..i               ; 2 uses
  br label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %.lr.ph.i408.preheader, %bb.dd
  %.0442532.i = phi i32 [ %i.adm, %bb.dd ], [ %i.abh, %.lr.ph.i408.preheader ] ; 3 uses
  %.0453531.i = phi i32 [ %i.adn, %bb.dd ], [ %i.abv, %.lr.ph.i408.preheader ] ; 3 uses
  %i.add = zext nneg i32 %.0442532.i to i64
  %i.ade = getelementptr i8, ptr %i.abr, i64 %i.add
  %i.adf = getelementptr i8, ptr %i.ade, i64 -1
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !20
  %i.adh = zext nneg i32 %.0453531.i to i64
  %i.adi = getelementptr i8, ptr %i.abt, i64 %i.adh
  %i.adj = getelementptr i8, ptr %i.adi, i64 -1
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !20
  %i.adl = icmp eq i8 %i.adg, %i.adk
end_hunk_1
