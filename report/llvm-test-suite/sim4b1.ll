inline.NumInlined: 64
inline.NumDeleted: 23
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
  %indvars.iv.i354 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i355.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i354
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %i.da = load <4 x i32>, ptr %i.cz, align 4, !tbaa !4
  %i.db = shufflevector <4 x i32> %i.da, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.db, ptr %i.cz, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i354
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !31 ; 2 uses
  %i.df = load <4 x i32>, ptr %i.de, align 4, !tbaa !4
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dg, ptr %i.de, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i354
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31 ; 2 uses
  %i.dk = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4
  %i.dl = shufflevector <4 x i32> %i.dk, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dl, ptr %i.dj, align 4, !tbaa !4
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i354
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !31 ; 2 uses
  %i.dp = load <4 x i32>, ptr %i.do, align 4, !tbaa !4
  %i.dq = shufflevector <4 x i32> %i.dp, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.dq, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next.i355.3 = add nuw nsw i64 %indvars.iv.i354, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %swap_seqs.exit.unr-lcssa, label %.lr.ph.i, !llvm.loop !47

swap_seqs.exit.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %swap_seqs.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %swap_seqs.exit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i354.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i355.3, %swap_seqs.exit.unr-lcssa ]
  %lcmp.mod1216 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1216)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i354.epil = phi i64 [ %indvars.iv.i354.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i355.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i354.epil
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 2 uses
  %i.dt = load <4 x i32>, ptr %i.ds, align 4, !tbaa !4
  %i.du = shufflevector <4 x i32> %i.dt, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.du, ptr %i.ds, align 4, !tbaa !4
  %indvars.iv.next.i355.epil = add nuw nsw i64 %indvars.iv.i354.epil, 1
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
  br i1 %i.ee, label %.lr.ph.i357, label %grow_exon_right.exit

.lr.ph.i357:                                      ; preds = %swap_seqs.exit
  %i.ef = load i32, ptr %i.i, align 4, !tbaa !14
  %.promoted12.i = load i32, ptr %i.ec, align 4, !tbaa !51 ; 2 uses
  %i.eg = zext i32 %.promoted12.i to i64
  %i.eh = zext i32 %.promoted.i to i64
  %umax.i = call i32 @llvm.umax.i32(i32 %.promoted12.i, i32 %i.ef)
  %wide.trip.count.i358 = zext i32 %umax.i to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.i357
  %indvars.iv13.i = phi i64 [ %i.eh, %.lr.ph.i357 ], [ %indvars.iv.next14.i, %bb.m ] ; 2 uses
  %indvars.iv.i359 = phi i64 [ %i.eg, %.lr.ph.i357 ], [ %indvars.iv.next.i361, %bb.m ] ; 3 uses
  %exitcond.not.i360 = icmp eq i64 %indvars.iv.i359, %wide.trip.count.i358
  br i1 %exitcond.not.i360, label %grow_exon_right.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv13.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.i359
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !20
  %i.em = icmp eq i8 %i.ej, %i.el
  br i1 %i.em, label %bb.m, label %grow_exon_right.exit

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1 ; 2 uses
  %i.en = trunc i64 %indvars.iv.next14.i to i32   ; 2 uses
  store i32 %i.en, ptr %i.ed, align 4, !tbaa !50
  %indvars.iv.next.i361 = add nuw nsw i64 %indvars.iv.i359, 1 ; 2 uses
  %i.eo = trunc nuw i64 %indvars.iv.next.i361 to i32
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
  %.0289 = phi ptr [ %i.er, %grow_exon_right.exit ], [ %i.bq, %free_hash_env.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.pre = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %.not676 = icmp eq i32 %.pre, 0
  br i1 %.not676, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h, %bb.n
  %.1290895 = phi ptr [ %.0289, %bb.n ], [ %i.bq, %bb.h ], [ %i.bq, %bb.g ]
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
  %.val352 = load i32, ptr %i.ex, align 4, !tbaa !33
  %i.ey = getelementptr i8, ptr %i.ew, i64 12
  %.val353 = load i32, ptr %i.ey, align 4, !tbaa !51
  %i.ez = call fastcc i32 @is_polyAT_exon_p(i32 %.val352, i32 %.val353, ptr noundef %i.eu)
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
  %.0293.lcssa = phi i32 [ %i.fa, %.critedge.split.loop.exit ], [ %i.es, %bb.p ] ; 5 uses
  %.not329 = icmp eq i32 %.0293.lcssa, 0
  br i1 %.not329, label %.critedge.thread, label %.preheader598.preheader

.preheader598.preheader:                          ; preds = %.critedge
  %wide.trip.count732 = zext i32 %.0293.lcssa to i64 ; 2 uses
  br label %.preheader598

.preheader598:                                    ; preds = %.preheader598.preheader, %.preheader598
  %indvars.iv729 = phi i64 [ 0, %.preheader598.preheader ], [ %indvars.iv.next730, %.preheader598 ] ; 2 uses
  %i.fb = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv729
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !31
  call void @free(ptr noundef %i.fd) #18
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %exitcond733.not = icmp eq i64 %indvars.iv.next730, %wide.trip.count732
  br i1 %exitcond733.not, label %bb.q, label %.preheader598, !llvm.loop !54

bb.q:                                             ; preds = %.preheader598
  %i.fe = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %wide.trip.count732
  %i.fg = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.fh = sub i32 %i.fg, %.0293.lcssa
  %i.fi = zext i32 %i.fh to i64
  %i.fj = shl nuw nsw i64 %i.fi, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fe, ptr nonnull align 8 %i.ff, i64 %i.fj, i1 false)
  %i.fk = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.fl = sub i32 %i.fk, %.0293.lcssa
  store i32 %i.fl, ptr %i.bl, align 8, !tbaa !19
  %.not330 = icmp eq i32 %i.fk, %.0293.lcssa
  br i1 %.not330, label %bb.ig, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fm = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !31
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.n, %bb.r, %.critedge
  %.3292 = phi ptr [ %i.fn, %bb.r ], [ %.1290895, %.critedge ], [ %.0289, %bb.n ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.3292, i64 4 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !33 ; 3 uses
  %i.fq = add i32 %i.fp, -1                       ; 3 uses
  %.not331 = icmp eq i32 %i.fq, 0
  br i1 %.not331, label %.thread546, label %bb.s

bb.s:                                             ; preds = %.critedge.thread
  %spec.select346 = call i32 @llvm.umin.i32(i32 %i.fq, i32 250) ; 12 uses
  %i.fr = shl nuw nsw i32 %spec.select346, 2
  %i.fs = load i32, ptr %.3292, align 4, !tbaa !35 ; 4 uses
  %i.ft = add i32 %i.fs, -1
  %i.fu = call i32 @llvm.smin.i32(i32 %i.fr, i32 %i.ft) ; 12 uses
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
  %i.gg = sext i32 %i.fu to i64                   ; 4 uses
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.gf, i64 %i.gh ; 2 uses
  %i.gj = xor i32 %spec.select346, -1
  %i.gk = add i32 %i.fp, %i.gj                    ; 5 uses
  %i.gl = xor i32 %i.fu, -1
  %i.gm = add i32 %i.fs, %i.gl                    ; 5 uses
  %i.gn = load i32, ptr %i.x, align 4, !tbaa !39  ; 2 uses
  %i.go = add nuw nsw i32 %spec.select346, 1      ; 6 uses
  %i.gp = icmp sgt i32 %i.fs, 1
  br i1 %i.gp, label %.lr.ph.i366, label %.critedge.i

.lr.ph.i366:                                      ; preds = %bb.s, %bb.t
  %.0229272.i = phi i32 [ %i.ha, %bb.t ], [ %i.fu, %bb.s ] ; 4 uses
  %.0230271.i = phi i32 [ %i.gz, %bb.t ], [ %spec.select346, %bb.s ] ; 3 uses
  %i.gq = zext nneg i32 %.0230271.i to i64
  %i.gr = getelementptr i8, ptr %i.gb, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !20
  %i.gu = zext nneg i32 %.0229272.i to i64
  %i.gv = getelementptr i8, ptr %i.gi, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !20
  %i.gy = icmp eq i8 %i.gt, %i.gx
  br i1 %i.gy, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %.lr.ph.i366
  %i.gz = add nsw i32 %.0230271.i, -1             ; 3 uses
  %i.ha = add nsw i32 %.0229272.i, -1             ; 2 uses
  %i.hb = icmp ne i32 %i.gz, 0
  %i.hc = icmp sgt i32 %.0229272.i, 1
  %or.cond.i = and i1 %i.hc, %i.hb
  br i1 %or.cond.i, label %.lr.ph.i366, label %.critedge.i, !llvm.loop !55

.critedge.i:                                      ; preds = %bb.t, %.lr.ph.i366, %bb.s
  %.0230.lcssa.i = phi i32 [ %spec.select346, %bb.s ], [ %.0230271.i, %.lr.ph.i366 ], [ %i.gz, %bb.t ] ; 3 uses
  %.0229.lcssa.i = phi i32 [ %i.fu, %bb.s ], [ %.0229272.i, %.lr.ph.i366 ], [ %i.ha, %bb.t ] ; 2 uses
  %i.hd = icmp eq i32 %.0230.lcssa.i, 0
  %i.he = icmp eq i32 %.0229.lcssa.i, 0
  %or.cond3.i = select i1 %i.hd, i1 true, i1 %i.he
  br i1 %or.cond3.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.critedge.i
  %i.hf = add nsw i32 %.0230.lcssa.i, %i.gk
  %i.hg = add nsw i32 %.0229.lcssa.i, %i.gm
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
  %.not277.i = icmp slt i32 %i.hh, 0
  br i1 %.not277.i, label %._crit_edge.i, label %.lr.ph279.preheader.i

.lr.ph279.preheader.i:                            ; preds = %bb.v
  %wide.trip.count.i362 = zext nneg i32 %i.hi to i64 ; 3 uses
  %min.iters.check1127 = icmp ult i32 %i.hi, 8
  br i1 %min.iters.check1127, label %.lr.ph279.i.preheader, label %vector.ph1128

vector.ph1128:                                    ; preds = %.lr.ph279.preheader.i
  %n.vec1130 = and i64 %wide.trip.count.i362, 2147483640 ; 3 uses
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %vector.ph1128
  %index1134 = phi i64 [ 0, %vector.ph1128 ], [ %index.next1135, %vector.body1133 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %index1134 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <4 x i32> %broadcast.splat1132, ptr %i.hp, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1132, ptr %i.hq, align 4, !tbaa !4
  %index.next1135 = add nuw i64 %index1134, 8     ; 2 uses
  %i.hr = icmp eq i64 %index.next1135, %n.vec1130
  br i1 %i.hr, label %middle.block1136, label %vector.body1133, !llvm.loop !56

middle.block1136:                                 ; preds = %vector.body1133
  %cmp.n1137 = icmp eq i64 %n.vec1130, %wide.trip.count.i362
  br i1 %cmp.n1137, label %._crit_edge.i, label %.lr.ph279.i.preheader

.lr.ph279.i.preheader:                            ; preds = %.lr.ph279.preheader.i, %middle.block1136
  %indvars.iv.i363.ph = phi i64 [ 0, %.lr.ph279.preheader.i ], [ %n.vec1130, %middle.block1136 ]
  br label %.lr.ph279.i

.lr.ph279.i:                                      ; preds = %.lr.ph279.i.preheader, %.lr.ph279.i
  %indvars.iv.i363 = phi i64 [ %indvars.iv.next.i364, %.lr.ph279.i ], [ %indvars.iv.i363.ph, %.lr.ph279.i.preheader ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv.i363
  store i32 %i.go, ptr %i.hs, align 4, !tbaa !4
  %indvars.iv.next.i364 = add nuw nsw i64 %indvars.iv.i363, 1 ; 2 uses
  %exitcond.not.i365 = icmp eq i64 %indvars.iv.next.i364, %wide.trip.count.i362
  br i1 %exitcond.not.i365, label %._crit_edge.i, label %.lr.ph279.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %.lr.ph279.i, %middle.block1136, %bb.v
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.gg ; 4 uses
  store i32 %.0230.lcssa.i, ptr %i.ht, align 4, !tbaa !4
  %i.hu = shl nuw nsw i32 %i.go, 2
  %i.hv = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.hw = call ptr @xmalloc(i64 noundef %i.hv) #18 ; 13 uses
  %i.hx = call ptr @xmalloc(i64 noundef %i.hv) #18 ; 8 uses
  %wide.trip.count320.i = zext nneg i32 %i.go to i64 ; 2 uses
  %min.iters.check1114 = icmp ult i32 %i.fq, 8
  br i1 %min.iters.check1114, label %scalar.ph1113.preheader, label %vector.ph1115

vector.ph1115:                                    ; preds = %._crit_edge.i
  %n.vec1117 = and i64 %i.fz, 248                 ; 3 uses
  %i.hy = or disjoint i64 %n.vec1117, 1
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %vector.ph1115
  %index1121 = phi i64 [ 0, %vector.ph1115 ], [ %index.next1122, %vector.body1120 ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %index1121 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  store <4 x i32> %broadcast.splat1119, ptr %i.ia, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat1119, ptr %i.ib, align 4, !tbaa !4
  %index.next1122 = add nuw i64 %index1121, 8     ; 2 uses
  %i.ic = icmp eq i64 %index.next1122, %n.vec1117
  br i1 %i.ic, label %middle.block1123, label %vector.body1120, !llvm.loop !60

middle.block1123:                                 ; preds = %vector.body1120
  %cmp.n1124 = icmp eq i64 %n.vec1117, %i.fz
  br i1 %cmp.n1124, label %.loopexit1140, label %scalar.ph1113.preheader

scalar.ph1113.preheader:                          ; preds = %._crit_edge.i, %middle.block1123
  %indvars.iv317.i.ph = phi i64 [ 1, %._crit_edge.i ], [ %i.hy, %middle.block1123 ]
  br label %scalar.ph1113

scalar.ph1113:                                    ; preds = %scalar.ph1113.preheader, %scalar.ph1113
  %indvars.iv317.i = phi i64 [ %indvars.iv.next318.i, %scalar.ph1113 ], [ %indvars.iv317.i.ph, %scalar.ph1113.preheader ] ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv317.i
  store i32 %i.go, ptr %i.id, align 4, !tbaa !4
  %indvars.iv.next318.i = add nuw nsw i64 %indvars.iv317.i, 1 ; 2 uses
  %exitcond321.not.i = icmp eq i64 %indvars.iv.next318.i, %wide.trip.count320.i
  br i1 %exitcond321.not.i, label %.loopexit1140, label %scalar.ph1113, !llvm.loop !61

.loopexit1140:                                    ; preds = %scalar.ph1113, %middle.block1123
  %i.ie = load i32, ptr %i.ht, align 4, !tbaa !4
  store i32 %i.ie, ptr %i.hw, align 4, !tbaa !4
  store i32 %i.fu, ptr %i.hx, align 4, !tbaa !4
  %i.if = sdiv i32 %i.gn, 2                       ; 2 uses
  %i.ig = shl nsw i32 %i.gn, 1                    ; 2 uses
  %i.ih = add nsw i32 %i.fu, 2
  %i.ii = add nuw nsw i32 %spec.select346, 2
  %i.ij = sub i64 %i.hm, %i.ho
  %i.ik = add nsw i64 %i.gg, 1
  %diff.check1099 = icmp ult i64 %i.ij, 32
  br label %bb.w

.loopexit.i:                                      ; preds = %.lr.ph298.i.prol.loopexit, %.lr.ph298.i, %._crit_edge291.thread.i
  %indvars.iv.next343.i = add nuw nsw i64 %indvars.iv342.i, 1
  %indvars.iv.next329.i = add nsw i32 %indvars.iv328.i, 1
  %indvars.iv.next345.i = add nuw nsw i64 %indvars.iv344.i, 1 ; 2 uses
  %exitcond350.i = icmp eq i64 %indvars.iv.next345.i, %wide.trip.count320.i
  br i1 %exitcond350.i, label %.critedge5.i, label %bb.w, !llvm.loop !62

bb.w:                                             ; preds = %.loopexit.i, %.loopexit1140
  %indvars.iv344.i = phi i64 [ 0, %.loopexit1140 ], [ %indvars.iv.next345.i, %.loopexit.i ] ; 10 uses
  %indvars.iv342.i = phi i64 [ 1, %.loopexit1140 ], [ %indvars.iv.next343.i, %.loopexit.i ] ; 11 uses
  %indvars.iv328.i = phi i32 [ %i.ih, %.loopexit1140 ], [ %indvars.iv.next329.i, %.loopexit.i ] ; 5 uses
  %.0236303.in.i = phi i32 [ %i.fu, %.loopexit1140 ], [ %.0236303.i, %.loopexit.i ]
  %.0235302.in.i = phi i32 [ %i.fu, %.loopexit1140 ], [ %.0235302.i, %.loopexit.i ]
  %i.il = add i64 %i.ik, %indvars.iv344.i
  %i.im = trunc i64 %i.il to i32
  %i.in = shl nuw nsw i64 %indvars.iv344.i, 1
  %i.io = add nuw i64 %i.in, 2
  %.0236303.i = add i32 %.0236303.in.i, -1        ; 4 uses
  %i.ip = sext i32 %.0236303.i to i64             ; 6 uses
  %.0235302.i = add nsw i32 %.0235302.in.i, 1     ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv344.i
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !4
  %i.is = sub nsw i32 %spec.select346, %i.ir      ; 3 uses
  %.not.i.i = icmp sgt i32 %i.is, %i.if
  br i1 %.not.i.i, label %bb.x, label %good_ratio.exit.i

bb.x:                                             ; preds = %bb.w
  %i.it = icmp slt i32 %i.is, %i.ig
  br i1 %i.it, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !63
  br label %good_ratio.exit.i

bb.z:                                             ; preds = %bb.x
  %i.iv = sitofp i32 %i.is to double
  %i.iw = call double @llvm.fmuladd.f64(double %i.iv, double f0x3FC3333333333334, double 1.000000e+00)
  %i.ix = fptosi double %i.iw to i32
  br label %good_ratio.exit.i

good_ratio.exit.i:                                ; preds = %bb.z, %bb.y, %bb.w
  %.0.i.i = phi i32 [ %i.ix, %bb.z ], [ %i.iu, %bb.y ], [ 2, %bb.w ]
  %i.iy = sext i32 %.0.i.i to i64
  %.not247.i = icmp sgt i64 %indvars.iv344.i, %i.iy
  br i1 %.not247.i, label %bb.aa, label %.critedge7.i

bb.aa:                                            ; preds = %good_ratio.exit.i
  %.not248.i = icmp eq i64 %indvars.iv344.i, 0
  br i1 %.not248.i, label %.critedge5.split.loop.exit371.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.iz = add nsw i64 %indvars.iv344.i, -1        ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !4
  %i.jc = sub nsw i32 %spec.select346, %i.jb      ; 3 uses
  %.not.i257.i = icmp sgt i32 %i.jc, %i.if
  br i1 %.not.i257.i, label %bb.ac, label %good_ratio.exit259.i

bb.ac:                                            ; preds = %bb.ab
  %i.jd = icmp slt i32 %i.jc, %i.ig
  br i1 %i.jd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.je = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 28), align 4, !tbaa !63
  br label %good_ratio.exit259.i

bb.ae:                                            ; preds = %bb.ac
  %i.jf = sitofp i32 %i.jc to double
  %i.jg = call double @llvm.fmuladd.f64(double %i.jf, double f0x3FC3333333333334, double 1.000000e+00)
  %i.jh = fptosi double %i.jg to i32
  br label %good_ratio.exit259.i

good_ratio.exit259.i:                             ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i258.i = phi i32 [ %i.jh, %bb.ae ], [ %i.je, %bb.ad ], [ 2, %bb.ab ]
  %i.ji = sext i32 %.0.i258.i to i64
  %.not249.i = icmp sgt i64 %i.iz, %i.ji
  br i1 %.not249.i, label %.critedge5.split.loop.exit373.i, label %.critedge7.i

.critedge7.i:                                     ; preds = %good_ratio.exit259.i, %good_ratio.exit.i
  %.not250288.i = icmp sgt i32 %.0236303.i, %.0235302.i
  br i1 %.not250288.i, label %._crit_edge291.thread.i, label %.lr.ph290.i

._crit_edge291.thread.i:                          ; preds = %.critedge7.i
  %i.jj = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv342.i
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !4
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv342.i
  store i32 %i.fu, ptr %i.jl, align 4, !tbaa !4
  br label %.loopexit.i

.lr.ph290.i:                                      ; preds = %.critedge7.i
  %i.jm = trunc i64 %indvars.iv344.i to i32
  %i.jn = xor i32 %i.jm, -1
  %i.jo = add i32 %i.fu, %i.jn
  %i.jp = add nsw i64 %indvars.iv342.i, %i.gg     ; 2 uses
  %sext326.i = sext i32 %i.jo to i64              ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %i.hl, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 -4
  %i.js = getelementptr [4 x i8], ptr %i.hl, i64 %sext326.i
  %i.jt = getelementptr i8, ptr %i.js, i64 4
  br label %bb.af

bb.af:                                            ; preds = %bb.ar, %.lr.ph290.i
  %indvars.iv324.i = phi i64 [ %i.ip, %.lr.ph290.i ], [ %indvars.iv.next325.i, %bb.ar ] ; 7 uses
  %i.ju = icmp eq i64 %indvars.iv324.i, %sext326.i
  br i1 %i.ju, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !4
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.jw = icmp eq i64 %indvars.iv324.i, %i.jp
  br i1 %i.jw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jx = load i32, ptr %i.jr, align 4, !tbaa !4
  %i.jy = add nsw i32 %i.jx, -1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv324.i ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4  ; 3 uses
  %i.kb = add nsw i32 %i.ka, -1                   ; 2 uses
  %i.kc = getelementptr i8, ptr %i.jz, i64 4
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !4  ; 3 uses
  %.not253.i = icmp sgt i32 %i.kb, %i.kd
  %.phi.trans.insert.i = getelementptr i8, ptr %i.jz, i64 -4
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !4 ; 3 uses
  %.not254.i = icmp sgt i32 %i.ka, %.pre.i
  %or.cond376.i = select i1 %.not253.i, i1 true, i1 %.not254.i
  br i1 %or.cond376.i, label %._crit_edge351.i, label %bb.ak

._crit_edge351.i:                                 ; preds = %bb.aj
  %i.ke = add nsw i32 %.pre.i, -1
  %.not256.i = icmp sgt i32 %.pre.i, %i.ka
  %i.kf = call i32 @llvm.smin.i32(i32 %i.ke, i32 %i.kd)
  %spec.select.i = select i1 %.not256.i, i32 %i.kd, i32 %i.kf
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge351.i, %bb.aj, %bb.ai, %bb.ag
  %.1231.i = phi i32 [ %i.jv, %bb.ag ], [ %i.jy, %bb.ai ], [ %spec.select.i, %._crit_edge351.i ], [ %i.kb, %bb.aj ] ; 4 uses
  %i.kg = trunc nsw i64 %indvars.iv324.i to i32
  %i.kh = sub i32 %i.kg, %spec.select346
  %i.ki = add i32 %.1231.i, %i.kh                 ; 3 uses
  %i.kj = icmp sgt i32 %.1231.i, 0
  %i.kk = icmp sgt i32 %i.ki, 0
  %or.cond9281.i = and i1 %i.kj, %i.kk
  br i1 %or.cond9281.i, label %.lr.ph285.i, label %.critedge11.i

.lr.ph285.i:                                      ; preds = %bb.ak, %bb.al
  %.1283.i = phi i32 [ %i.kw, %bb.al ], [ %i.ki, %bb.ak ] ; 3 uses
  %.2282.i = phi i32 [ %i.kv, %bb.al ], [ %.1231.i, %bb.ak ] ; 4 uses
  %i.kl = zext nneg i32 %.2282.i to i64
  %i.km = getelementptr i8, ptr %i.gb, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 -1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !20
  %i.kp = zext nneg i32 %.1283.i to i64
  %i.kq = getelementptr i8, ptr %i.gi, i64 %i.kp
  %i.kr = getelementptr i8, ptr %i.kq, i64 -1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !20
  %i.kt = icmp eq i8 %i.ko, %i.ks
  br i1 %i.kt, label %bb.al, label %.critedge11.thread.i

.critedge11.thread.i:                             ; preds = %.lr.ph285.i
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv324.i
  store i32 %.2282.i, ptr %i.ku, align 4, !tbaa !4
  br label %bb.ar

bb.al:                                            ; preds = %.lr.ph285.i
  %i.kv = add nsw i32 %.2282.i, -1                ; 2 uses
  %i.kw = add nsw i32 %.1283.i, -1                ; 2 uses
  %i.kx = icmp sgt i32 %.2282.i, 1
  %i.ky = icmp sgt i32 %.1283.i, 1
  %or.cond9.i = and i1 %i.ky, %i.kx
  br i1 %or.cond9.i, label %.lr.ph285.i, label %.critedge11.i, !llvm.loop !64

.critedge11.i:                                    ; preds = %bb.al, %bb.ak
  %.2.lcssa.i = phi i32 [ %.1231.i, %bb.ak ], [ %i.kv, %bb.al ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %i.ki, %bb.ak ], [ %i.kw, %bb.al ] ; 2 uses
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv324.i
  store i32 %.2.lcssa.i, ptr %i.kz, align 4, !tbaa !4
  %i.la = icmp eq i32 %.2.lcssa.i, 0              ; 2 uses
  %i.lb = icmp eq i32 %.1.lcssa.i, 0              ; 2 uses
  %or.cond13.i = select i1 %i.la, i1 %i.lb, i1 false
  br i1 %or.cond13.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge11.i
  %i.lc = trunc nuw nsw i64 %indvars.iv342.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  br label %extend_bw.exit

bb.an:                                            ; preds = %.critedge11.i
  br i1 %i.la, label %bb.ao, label %bb.ap
end_hunk_0
begin_hunk_1_@compute_max_score_1:bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !20
  %i.gp = icmp eq i8 %i.go, %i.am
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
  br i1 %exitcond.not.i.2, label %SWscore.exit.2, label %.lr.ph.i.2, !llvm.loop !113

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
  %.sroa.096.2.2 = phi i32 [ %.sroa.096.2.1, %splice_score_compare.exit.thread.2 ], [ %i.dz, %bb.e ] ; 2 uses
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
  br i1 %exitcond.not.i75.2, label %SWscore.exit76.2, label %.lr.ph.i67.2, !llvm.loop !113

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
  %.sroa.6.1.2 = phi i32 [ %.sroa.10.0.lcssa.i64.2, %splice_score_compare.exit79.2 ], [ %.sroa.6.1.1, %SWscore.exit76.2 ], [ %.sroa.6.1.1, %bb.f ]
  %.sroa.293.2.2 = phi i32 [ %i.ja, %splice_score_compare.exit79.2 ], [ %.sroa.293.2.1, %SWscore.exit76.2 ], [ %.sroa.293.2.1, %bb.f ] ; 2 uses
  %.sroa.10.1.2 = phi i32 [ %.sroa.11.2.2, %splice_score_compare.exit79.2 ], [ %.sroa.10.1.1, %SWscore.exit76.2 ], [ %.sroa.10.1.1, %bb.f ]
  %i.jb = add i32 %.sroa.7.1.2, %.sroa.6.1.2      ; 3 uses
  %i.jc = add nuw nsw i32 %.sroa.14103.1.2, %.sroa.10.1.2 ; 3 uses
  %i.jd = load i32, ptr %i.s, align 4, !tbaa !127 ; 2 uses
  %i.je = icmp ult i32 %i.jb, %i.jd
  br i1 %i.je, label %splice_score_compare.exit82.thread, label %bb.g

bb.g:                                             ; preds = %splice_score_compare.exit79.thread.2
  %i.jf = icmp ugt i32 %i.jb, %i.jd
  br i1 %i.jf, label %splice_score_compare.exit82.thread111, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jg = load i32, ptr %i.t, align 4, !tbaa !128 ; 2 uses
  %i.jh = icmp ult i32 %i.jc, %i.jg
  br i1 %i.jh, label %splice_score_compare.exit82.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ji = icmp samesign ugt i32 %i.jc, %i.jg
  br i1 %i.ji, label %splice_score_compare.exit82.thread111, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jj = load i32, ptr %i.u, align 4, !tbaa !122
  %i.jk = icmp ult i32 %3, %i.jj
  br i1 %i.jk, label %splice_score_compare.exit82.thread111, label %splice_score_compare.exit82.thread

splice_score_compare.exit82.thread111:            ; preds = %bb.j, %bb.g, %bb.i
  store i32 %i.jb, ptr %i.s, align 4, !tbaa !127
  store i32 %i.jc, ptr %i.t, align 4, !tbaa !128
  store i32 %.sroa.096.2.2, ptr %2, align 4, !tbaa !118
  %i.jl = add i32 %5, %i.aj
  store i32 %i.jl, ptr %i.v, align 4, !tbaa !120
  store i32 %.sroa.293.2.2, ptr %i.w, align 4, !tbaa !121
  store i32 %3, ptr %i.u, align 4, !tbaa !122
  store i32 %9, ptr %i.x, align 4, !tbaa !123
  br label %splice_score_compare.exit82.thread

splice_score_compare.exit82.thread:               ; preds = %bb.h, %splice_score_compare.exit79.thread.2, %bb.j, %splice_score_compare.exit82.thread111
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.jm = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 36), align 4, !tbaa !108
  %i.jn = sext i32 %i.jm to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.jn
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !205

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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 16}
!9 = !{!"_hash_env_t", !10, i64 0, !12, i64 8, !5, i64 16, !13, i64 24, !5, i64 32, !5, i64 36}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 int", !11, i64 0}
!14 = !{!15, !5, i64 4148}
!15 = !{!"_seq_t", !12, i64 0, !12, i64 8, !12, i64 16, !16, i64 24, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156}
!16 = !{!"_read_buf_t", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 20}
!17 = !{!18, !5, i64 12}
!18 = !{!"_collec_t", !6, i64 0, !5, i64 8, !5, i64 12}
!19 = !{!18, !5, i64 8}
!20 = !{!6, !6, i64 0}
!21 = !{!15, !12, i64 16}
!22 = !{!23, !5, i64 40}
!23 = !{!"_options_t", !12, i64 0, !24, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76}
!24 = !{!"p1 _ZTS11_junction_t", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS9_result_t", !11, i64 0}
!27 = !{!28, !5, i64 4}
!28 = !{!"_sim4_stats", !5, i64 0, !5, i64 4, !5, i64 8}
!29 = !{!28, !5, i64 8}
!30 = !{!9, !12, i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"p1 _ZTS7_exon_t", !11, i64 0}
!33 = !{!34, !5, i64 4}
!34 = !{!"_exon_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 24, !5, i64 24, !5, i64 28, !5, i64 28, !5, i64 31}
!35 = !{!34, !5, i64 0}
!36 = !{!37, !5, i64 24}
!37 = !{!"_result_t", !38, i64 0, !18, i64 8, !5, i64 24, !5, i64 28, !5, i64 32, !28, i64 36}
!38 = !{!"p1 _ZTS17_edit_script_list", !11, i64 0}
!39 = !{!9, !5, i64 36}
!40 = !{!9, !5, i64 32}
!41 = !{!9, !13, i64 24}
!42 = !{!9, !10, i64 0}
!43 = !{!23, !5, i64 24}
!44 = !{!11, !11, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!34, !5, i64 8}
!51 = !{!34, !5, i64 12}
!52 = distinct !{!52, !46}
!53 = distinct !{!53, !46}
!54 = distinct !{!54, !46}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46, !57, !58}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = distinct !{!59, !46, !58, !57}
!60 = distinct !{!60, !46, !57, !58}
!61 = distinct !{!61, !46, !58, !57}
!62 = distinct !{!62, !46}
!63 = !{!23, !5, i64 28}
!64 = distinct !{!64, !46}
!65 = distinct !{!65, !46}
!66 = distinct !{!66, !46}
!67 = distinct !{!67, !46, !57, !58}
!68 = distinct !{!68, !49}
!69 = distinct !{!69, !46, !57}
!70 = distinct !{!70, !46}
!71 = !{!23, !5, i64 56}
!72 = !{!23, !5, i64 48}
!73 = !{!37, !5, i64 28}
!74 = distinct !{!74, !49}
!75 = distinct !{!75, !46}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !46}
!78 = distinct !{!78, !46}
!79 = distinct !{!79, !46}
!80 = distinct !{!80, !46}
!81 = distinct !{!81, !46}
!82 = distinct !{!82, !46, !57, !58}
!83 = distinct !{!83, !49}
!84 = distinct !{!84, !46, !57}
!85 = distinct !{!85, !46}
!86 = distinct !{!86, !46}
!87 = distinct !{!87, !46}
!88 = distinct !{!88, !46, !57, !58}
!89 = distinct !{!89, !49}
!90 = distinct !{!90, !46, !57}
!91 = distinct !{!91, !46}
!92 = distinct !{!92, !46, !57, !58}
!93 = distinct !{!93, !49}
!94 = distinct !{!94, !46, !57}
!95 = distinct !{!95, !46, !57, !58}
!96 = distinct !{!96, !49}
!97 = distinct !{!97, !46, !57}
!98 = distinct !{!98, !46}
!99 = distinct !{!99, !46}
!100 = distinct !{!100, !46}
!101 = distinct !{!101, !46}
!102 = distinct !{!102, !46}
!103 = distinct !{!103, !46}
!104 = distinct !{!104, !46}
!105 = distinct !{!105, !46}
!106 = distinct !{!106, !46}
!107 = distinct !{!107, !46}
!108 = !{!23, !5, i64 36}
!109 = distinct !{!109, !46}
!110 = !{!23, !5, i64 32}
!111 = distinct !{!111, !46}
!112 = !{!23, !5, i64 44}
!113 = distinct !{!113, !46}
!114 = distinct !{!114, !46}
!115 = !{!37, !5, i64 32}
!116 = !{!37, !5, i64 16}
!117 = distinct !{!117, !46}
!118 = !{!119, !5, i64 0}
!119 = !{!"_splice_score_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!120 = !{!119, !5, i64 4}
!121 = !{!119, !5, i64 8}
!122 = !{!119, !5, i64 12}
!123 = !{!119, !5, i64 24}
!124 = distinct !{!124, !46}
!125 = distinct !{!125, !46}
!126 = distinct !{!126, !46}
!127 = !{!119, !5, i64 16}
!128 = !{!119, !5, i64 20}
!129 = !{!23, !5, i64 16}
!130 = !{!23, !24, i64 8}
!131 = distinct !{!131, !46}
!132 = distinct !{!132, !46}
!133 = distinct !{!133, !46}
!134 = distinct !{!134, !46}
!135 = distinct !{!135, !46}
!136 = !{!38, !38, i64 0}
!137 = !{!138, !38, i64 0}
!138 = !{!"_edit_script_list", !38, i64 0, !139, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!139 = !{!"p1 _ZTS12_edit_script", !11, i64 0}
!140 = !{!138, !139, i64 8}
!141 = !{!138, !5, i64 16}
!142 = !{!138, !5, i64 20}
!143 = !{!138, !5, i64 24}
!144 = !{!138, !5, i64 28}
!145 = !{!138, !5, i64 32}
!146 = !{!147, !6, i64 12}
!147 = !{!"_edit_script", !139, i64 0, !5, i64 8, !6, i64 12}
!148 = !{!147, !5, i64 8}
!149 = !{!147, !139, i64 0}
!150 = !{!139, !139, i64 0}
!151 = distinct !{!151, !46, !57, !58}
!152 = distinct !{!152, !46, !58, !57}
!153 = distinct !{!153, !46}
!154 = !{!34, !5, i64 16}
!155 = distinct !{!155, !46}
!156 = !{!37, !38, i64 0}
!157 = distinct !{!157, !46}
!158 = distinct !{!158, !46}
!159 = !{!160, !5, i64 0}
!160 = !{!"_hash_node_t", !5, i64 0, !5, i64 4}
!161 = distinct !{!161, !46}
!162 = !{!163, !163, i64 0}
!163 = !{!"p1 _ZTS12_hash_node_t", !11, i64 0}
!164 = distinct !{!164, !46}
!165 = !{!23, !5, i64 64}
!166 = distinct !{!166, !46}
!167 = distinct !{!167, !46}
!168 = distinct !{!168, !46}
!169 = distinct !{!169, !46}
!170 = distinct !{!170, !46}
!171 = distinct !{!171, !46}
!172 = distinct !{!172, !46}
!173 = distinct !{!173, !46}
!174 = distinct !{!174, !46}
!175 = !{!34, !5, i64 20}
end_hunk_1
