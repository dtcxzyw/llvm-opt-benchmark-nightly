Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@LogL16Encode:bb.a
  %i.dj = add nsw i64 %.1128175.us.ph, -1
  %xtraiter = and i64 %.1128175.us.ph, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph178.us.prol.loopexit, label %.lr.ph178.us.prol

.lr.ph178.us.prol:                                ; preds = %.lr.ph178.us.preheader, %.lr.ph178.us.prol
  %.6125176.us.prol = phi ptr [ %.6125.us.prol, %.lr.ph178.us.prol ], [ %.6125176.us.ph, %.lr.ph178.us.preheader ] ; 2 uses
  %.1128175.us.prol = phi i64 [ %i.dk, %.lr.ph178.us.prol ], [ %.1128175.us.ph, %.lr.ph178.us.preheader ]
  %.3132174.us.prol = phi i64 [ %i.dl, %.lr.ph178.us.prol ], [ %.3132174.us.ph, %.lr.ph178.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph178.us.prol ], [ 0, %.lr.ph178.us.preheader ]
  %i.dk = add nsw i64 %.1128175.us.prol, -1       ; 2 uses
  %i.dl = add nsw i64 %.3132174.us.prol, 1        ; 3 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us.prol
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !89
  %i.do = lshr i16 %i.dn, 8
  %i.dp = trunc nuw i16 %i.do to i8
  store i8 %i.dp, ptr %.6125176.us.prol, align 1, !tbaa !9
  %.6125.us.prol = getelementptr inbounds nuw i8, ptr %.6125176.us.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph178.us.prol.loopexit, label %.lr.ph178.us.prol, !llvm.loop !166

.lr.ph178.us.prol.loopexit:                       ; preds = %.lr.ph178.us.prol, %.lr.ph178.us.preheader
  %.lcssa372.unr = phi i64 [ poison, %.lr.ph178.us.preheader ], [ %i.dl, %.lr.ph178.us.prol ]
  %.6125.us.lcssa371.unr = phi ptr [ poison, %.lr.ph178.us.preheader ], [ %.6125.us.prol, %.lr.ph178.us.prol ]
  %.6125176.us.unr = phi ptr [ %.6125176.us.ph, %.lr.ph178.us.preheader ], [ %.6125.us.prol, %.lr.ph178.us.prol ]
  %.1128175.us.unr = phi i64 [ %.1128175.us.ph, %.lr.ph178.us.preheader ], [ %i.dk, %.lr.ph178.us.prol ]
  %.3132174.us.unr = phi i64 [ %.3132174.us.ph, %.lr.ph178.us.preheader ], [ %i.dl, %.lr.ph178.us.prol ]
  %i.dq = icmp ult i64 %i.dj, 3
  br i1 %i.dq, label %.loopexit.us, label %.lr.ph178.us

.lr.ph178.us:                                     ; preds = %.lr.ph178.us.prol.loopexit, %.lr.ph178.us
  %.6125176.us = phi ptr [ %.6125.us.3, %.lr.ph178.us ], [ %.6125176.us.unr, %.lr.ph178.us.prol.loopexit ] ; 5 uses
  %.1128175.us = phi i64 [ %i.ef, %.lr.ph178.us ], [ %.1128175.us.unr, %.lr.ph178.us.prol.loopexit ]
  %.3132174.us = phi i64 [ %i.eg, %.lr.ph178.us ], [ %.3132174.us.unr, %.lr.ph178.us.prol.loopexit ] ; 5 uses
  %i.dr = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !89
  %i.dt = lshr i16 %i.ds, 8
  %i.du = trunc nuw i16 %i.dt to i8
  store i8 %i.du, ptr %.6125176.us, align 1, !tbaa !9
  %.6125.us = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 1
  %i.dv = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.dw = getelementptr i8, ptr %i.dv, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !89
  %i.dy = lshr i16 %i.dx, 8
  %i.dz = trunc nuw i16 %i.dy to i8
  store i8 %i.dz, ptr %.6125.us, align 1, !tbaa !9
  %.6125.us.1378 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 2
  %i.ea = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.eb = getelementptr i8, ptr %i.ea, i64 4
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !89
  %i.ed = lshr i16 %i.ec, 8
  %i.ee = trunc nuw i16 %i.ed to i8
  store i8 %i.ee, ptr %.6125.us.1378, align 1, !tbaa !9
  %.6125.us.2 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 3
  %i.ef = add nsw i64 %.1128175.us, -4            ; 2 uses
  %i.eg = add nsw i64 %.3132174.us, 4             ; 2 uses
  %i.eh = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us
  %i.ei = getelementptr i8, ptr %i.eh, i64 6
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !89
  %i.ek = lshr i16 %i.ej, 8
  %i.el = trunc nuw i16 %i.ek to i8
  store i8 %i.el, ptr %.6125.us.2, align 1, !tbaa !9
  %.6125.us.3 = getelementptr inbounds nuw i8, ptr %.6125176.us, i64 4 ; 2 uses
  %.not143.us.3 = icmp eq i64 %i.ef, 0
  br i1 %.not143.us.3, label %.loopexit.us, label %.lr.ph178.us, !llvm.loop !167

._crit_edge.us:                                   ; preds = %bb.s, %.loopexit.us, %.loopexit145.us.thread, %.loopexit145.us
  %.2131.lcssa.us = phi i64 [ %.0129189.us, %.loopexit145.us ], [ %.0150.us, %.loopexit145.us.thread ], [ %.0150.us, %bb.s ], [ %.lcssa296, %.loopexit.us ]
  %.4123.lcssa.us = phi ptr [ %.2121.us, %.loopexit145.us ], [ %i.bx, %.loopexit145.us.thread ], [ %.6125171.us, %bb.s ], [ %.6125.us.lcssa, %.loopexit.us ] ; 4 uses
  %.4116.lcssa.us = phi i64 [ %.2114.us, %.loopexit145.us ], [ %i.by, %.loopexit145.us.thread ], [ %.6172.us, %bb.s ], [ %i.ez, %.loopexit.us ] ; 2 uses
  %i.em = icmp sgt i32 %.4.us, 3
  br i1 %i.em, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.us
  %i.en = trunc i32 %.4.us to i8
  %i.eo = add i8 %i.en, 126
  %i.ep = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us, i64 1
  store i8 %i.eo, ptr %.4123.lcssa.us, align 1, !tbaa !9
  %i.eq = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0150.us
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !89
  %i.es = lshr i16 %i.er, 8
  %i.et = trunc nuw i16 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us, i64 2
  store i8 %i.et, ptr %i.ep, align 1, !tbaa !9
  %i.ev = add nsw i64 %.4116.lcssa.us, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.us
  %.7126.us = phi ptr [ %i.eu, %bb.t ], [ %.4123.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.7.us = phi i64 [ %i.ev, %bb.t ], [ %.4116.lcssa.us, %._crit_edge.us ] ; 2 uses
  %.5.us = phi i32 [ %.4.us, %bb.t ], [ 0, %._crit_edge.us ] ; 3 uses
  %i.ew = zext nneg i32 %.5.us to i64
  %i.ex = add nsw i64 %.2131.lcssa.us, %i.ew      ; 2 uses
  %i.ey = icmp slt i64 %i.ex, %i.f
  br i1 %i.ey, label %.preheader.us.preheader, label %._crit_edge195.us

.loopexit.us:                                     ; preds = %.lr.ph178.us.prol.loopexit, %.lr.ph178.us, %vec.epilog.middle.block, %middle.block
  %.lcssa296 = phi i64 [ %i.dd, %vec.epilog.middle.block ], [ %i.cr, %middle.block ], [ %.lcssa372.unr, %.lr.ph178.us.prol.loopexit ], [ %i.eg, %.lr.ph178.us ] ; 3 uses
  %.6125.us.lcssa = phi ptr [ %i.db, %vec.epilog.middle.block ], [ %i.cp, %middle.block ], [ %.6125.us.lcssa371.unr, %.lr.ph178.us.prol.loopexit ], [ %.6125.us.3, %.lr.ph178.us ] ; 2 uses
  %i.ez = sub i64 %.6172.us, %spec.store.select.us ; 2 uses
  %i.fa = icmp slt i64 %.lcssa296, %.0150.us
  br i1 %i.fa, label %.lr.ph185.us, label %._crit_edge.us

._crit_edge195.us:                                ; preds = %bb.u, %bb.ak
  %.1193.us.1 = phi i32 [ %.5.us.1, %bb.ak ], [ %.5.us, %bb.u ]
  %.1113192.us.1 = phi i64 [ %.7.us.1, %bb.ak ], [ %.7.us, %bb.u ] ; 3 uses
  %.1120191.us.1 = phi ptr [ %.7126.us.1, %bb.ak ], [ %.7126.us, %bb.u ] ; 2 uses
  %.0129189.us.1 = phi i64 [ %i.jo, %bb.ak ], [ 0, %bb.u ] ; 10 uses
  %i.fb = icmp slt i64 %.1113192.us.1, 4
  br i1 %i.fb, label %bb.v, label %bb.x

bb.v:                                             ; preds = %._crit_edge195.us
  store ptr %.1120191.us.1, ptr %i.q, align 8, !tbaa !77
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !148
  %i.fd = sub nsw i64 %i.fc, %.1113192.us.1
  store i64 %i.fd, ptr %i.u, align 8, !tbaa !78
  %i.fe = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not.us.1 = icmp eq i32 %i.fe, 0
  br i1 %.not.us.1, label %.loopexit144, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ff = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.fg = load i64, ptr %i.s, align 8, !tbaa !148
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !78
  %i.fi = sub nsw i64 %i.fg, %i.fh
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge195.us
  %.2121.us.1 = phi ptr [ %i.ff, %bb.w ], [ %.1120191.us.1, %._crit_edge195.us ] ; 5 uses
  %.2114.us.1 = phi i64 [ %i.fi, %bb.w ], [ %.1113192.us.1, %._crit_edge195.us ] ; 3 uses
  %i.fj = icmp slt i64 %.0129189.us.1, %i.f
  br i1 %i.fj, label %.lr.ph.us.1, label %.critedge.thread.us.1

.lr.ph.us.1:                                      ; preds = %bb.x, %.critedge.us.1
  %.0167.us.1 = phi i64 [ %.lcssa354, %.critedge.us.1 ], [ %.0129189.us.1, %bb.x ] ; 6 uses
  %i.fk = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0167.us.1
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !89 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.ac, %.lr.ph.us.1
  %indvars.iv.1 = phi i64 [ 1, %.lr.ph.us.1 ], [ %indvars.iv.next.1.1, %bb.ac ] ; 5 uses
  %i.fm = add nsw i64 %.0167.us.1, %indvars.iv.1  ; 4 uses
  %i.fn = icmp slt i64 %i.fm, %i.f
  br i1 %i.fn, label %bb.z, label %.critedge.us.1.thread

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.fm
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !89
  %i.fq = xor i16 %i.fp, %i.fl
  %i.fr = and i16 %i.fq, 255
  %i.fs = icmp eq i16 %i.fr, 0
  br i1 %i.fs, label %bb.aa, label %.critedge.us.1

.critedge.us.1:                                   ; preds = %bb.ab, %bb.z
  %indvars.iv.1.lcssa356 = phi i64 [ %indvars.iv.1, %bb.z ], [ %indvars.iv.next.1, %bb.ab ] ; 2 uses
  %.lcssa354 = phi i64 [ %i.fm, %bb.z ], [ %i.fw, %bb.ab ]
  %i.ft = icmp samesign ugt i64 %indvars.iv.1.lcssa356, 3
  br i1 %i.ft, label %.critedge.thread.us.1.loopexit248, label %.lr.ph.us.1

.critedge.us.1.thread:                            ; preds = %bb.aa, %bb.y
  %indvars.iv.1.lcssa = phi i64 [ %indvars.iv.1, %bb.y ], [ %indvars.iv.next.1, %bb.aa ] ; 2 uses
  %.lcssa = phi i64 [ %i.fm, %bb.y ], [ %i.fw, %bb.aa ]
  %i.fu = trunc nuw nsw i64 %indvars.iv.1.lcssa to i32
  %i.fv = icmp samesign ugt i64 %indvars.iv.1.lcssa, 3
  %spec.select278 = select i1 %i.fv, i64 %.0167.us.1, i64 %.lcssa
  br label %.critedge.thread.us.1

bb.aa:                                            ; preds = %bb.z
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.fw = add nsw i64 %.0167.us.1, %indvars.iv.next.1 ; 4 uses
  %i.fx = icmp slt i64 %i.fw, %i.f
  br i1 %i.fx, label %bb.ab, label %.critedge.us.1.thread

bb.ab:                                            ; preds = %bb.aa
  %i.fy = getelementptr inbounds [2 x i8], ptr %.0118, i64 %i.fw
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !89
  %i.ga = xor i16 %i.fz, %i.fl
  %i.gb = and i16 %i.ga, 255
  %i.gc = icmp eq i16 %i.gb, 0
  br i1 %i.gc, label %bb.ac, label %.critedge.us.1

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, 129
  br i1 %exitcond.1.not.1, label %.critedge.thread.us.1, label %bb.y

.critedge.thread.us.1.loopexit248:                ; preds = %.critedge.us.1
  %i.gd = trunc nuw nsw i64 %indvars.iv.1.lcssa356 to i32
  br label %.critedge.thread.us.1

.critedge.thread.us.1:                            ; preds = %bb.ac, %.critedge.us.1.thread, %.critedge.thread.us.1.loopexit248, %bb.x
  %.0150.us.1 = phi i64 [ %spec.select278, %.critedge.us.1.thread ], [ %.0129189.us.1, %bb.x ], [ %.0167.us.1, %.critedge.thread.us.1.loopexit248 ], [ %.0167.us.1, %bb.ac ] ; 10 uses
  %.4.us.1 = phi i32 [ %i.fu, %.critedge.us.1.thread ], [ %.1193.us.1, %bb.x ], [ %i.gd, %.critedge.thread.us.1.loopexit248 ], [ 129, %bb.ac ] ; 3 uses
  %i.ge = sub nsw i64 %.0150.us.1, %.0129189.us.1
  %i.gf = and i64 %i.ge, -2
  %or.cond.us.1 = icmp eq i64 %i.gf, 2
  br i1 %or.cond.us.1, label %bb.ad, label %.loopexit145.us.1

bb.ad:                                            ; preds = %.critedge.thread.us.1
  %i.gg = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0129189.us.1
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !89 ; 2 uses
  %i.gi = add nsw i64 %.0129189.us.1, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %.0127.us.1 = phi i64 [ %i.gi, %bb.ad ], [ %i.go, %bb.af ] ; 2 uses
  %i.gj = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0127.us.1
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !89
  %i.gl = xor i16 %i.gk, %i.gh
  %i.gm = and i16 %i.gl, 255
  %i.gn = icmp eq i16 %i.gm, 0
  br i1 %i.gn, label %bb.af, label %.loopexit145.us.1

bb.af:                                            ; preds = %bb.ae
  %i.go = add nsw i64 %.0127.us.1, 1              ; 2 uses
  %i.gp = icmp eq i64 %i.go, %.0150.us.1
  br i1 %i.gp, label %.loopexit145.us.1.thread, label %bb.ae

.loopexit145.us.1.thread:                         ; preds = %bb.af
  %i.gq = xor i64 %.0129189.us.1, -1
  %reass.sub.1 = add i64 %.0150.us.1, %i.gq
  %i.gr = trunc i64 %reass.sub.1 to i8
  %i.gs = add i8 %i.gr, 127
  %i.gt = getelementptr inbounds nuw i8, ptr %.2121.us.1, i64 1
  store i8 %i.gs, ptr %.2121.us.1, align 1, !tbaa !9
  %i.gu = trunc i16 %i.gh to i8
  %i.gv = getelementptr inbounds nuw i8, ptr %.2121.us.1, i64 2
  store i8 %i.gu, ptr %i.gt, align 1, !tbaa !9
  %i.gw = add nsw i64 %.2114.us.1, -2
  br label %._crit_edge.us.1

.loopexit145.us.1:                                ; preds = %bb.ae, %.critedge.thread.us.1
  %i.gx = icmp slt i64 %.0129189.us.1, %.0150.us.1
  br i1 %i.gx, label %.lr.ph185.us.1, label %._crit_edge.us.1

.lr.ph185.us.1:                                   ; preds = %.loopexit145.us.1, %.loopexit.us.1
  %.4116184.us.1 = phi i64 [ %i.jc, %.loopexit.us.1 ], [ %.2114.us.1, %.loopexit145.us.1 ] ; 3 uses
  %.4123183.us.1 = phi ptr [ %.6125.us.1.lcssa, %.loopexit.us.1 ], [ %.2121.us.1, %.loopexit145.us.1 ] ; 2 uses
  %.2131182.us.1 = phi i64 [ %.lcssa288, %.loopexit.us.1 ], [ %.0129189.us.1, %.loopexit145.us.1 ] ; 10 uses
  %i.gy = sub nsw i64 %.0150.us.1, %.2131182.us.1
  %spec.store.select.us.1 = tail call i64 @llvm.smin.i64(i64 %i.gy, i64 127) ; 16 uses
  %i.gz = add nuw nsw i64 %spec.store.select.us.1, 3
  %i.ha = icmp slt i64 %.4116184.us.1, %i.gz
  br i1 %i.ha, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph185.us.1
  store ptr %.4123183.us.1, ptr %i.q, align 8, !tbaa !77
  %i.hb = load i64, ptr %i.s, align 8, !tbaa !148
  %i.hc = sub nsw i64 %i.hb, %.4116184.us.1
  store i64 %i.hc, ptr %i.u, align 8, !tbaa !78
  %i.hd = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not142.us.1 = icmp eq i32 %i.hd, 0
  br i1 %.not142.us.1, label %.loopexit144, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.he = load ptr, ptr %i.q, align 8, !tbaa !77
  %i.hf = load i64, ptr %i.s, align 8, !tbaa !148
  %i.hg = load i64, ptr %i.u, align 8, !tbaa !78
  %i.hh = sub nsw i64 %i.hf, %i.hg
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph185.us.1
  %.5124.us.1 = phi ptr [ %i.he, %bb.ah ], [ %.4123183.us.1, %.lr.ph185.us.1 ] ; 3 uses
  %.5117.us.1 = phi i64 [ %i.hh, %bb.ah ], [ %.4116184.us.1, %.lr.ph185.us.1 ]
  %i.hi = trunc i64 %spec.store.select.us.1 to i8
  store i8 %i.hi, ptr %.5124.us.1, align 1, !tbaa !9
  %.6125171.us.1 = getelementptr i8, ptr %.5124.us.1, i64 1 ; 8 uses
  %.6172.us.1 = add i64 %.5117.us.1, -1           ; 2 uses
  %.not143173.us.1 = icmp eq i64 %.0150.us.1, %.2131182.us.1
  br i1 %.not143173.us.1, label %._crit_edge.us.1, label %iter.check337

iter.check337:                                    ; preds = %bb.ai
  %min.iters.check321 = icmp ult i64 %spec.store.select.us.1, 4
  br i1 %min.iters.check321, label %.lr.ph178.us.1.preheader, label %vector.memcheck313

vector.memcheck313:                               ; preds = %iter.check337
  %scevgep314 = getelementptr i8, ptr %.5124.us.1, i64 1
  %scevgep315 = getelementptr i8, ptr %scevgep314, i64 %spec.store.select.us.1
  %i.hj = shl i64 %.2131182.us.1, 1
  %scevgep316 = getelementptr i8, ptr %.0118, i64 %i.hj
  %i.hk = add i64 %.2131182.us.1, %spec.store.select.us.1
  %i.hl = shl i64 %i.hk, 1
  %scevgep317 = getelementptr i8, ptr %.0118, i64 %i.hl
  %bound0318 = icmp ult ptr %.6125171.us.1, %scevgep317
  %bound1319 = icmp ult ptr %scevgep316, %scevgep315
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph178.us.1.preheader, label %vector.main.loop.iter.check322

vector.main.loop.iter.check322:                   ; preds = %vector.memcheck313
  %min.iters.check323 = icmp ult i64 %spec.store.select.us.1, 16
  br i1 %min.iters.check323, label %vec.epilog.ph341, label %vector.ph324

vector.ph324:                                     ; preds = %vector.main.loop.iter.check322
  %i.hm = and i64 %spec.store.select.us.1, 12
  %n.vec325 = and i64 %spec.store.select.us.1, -16 ; 5 uses
  %i.hn = getelementptr i8, ptr %.6125171.us.1, i64 %n.vec325 ; 2 uses
  %i.ho = and i64 %spec.store.select.us.1, 15
  %i.hp = add i64 %.2131182.us.1, %n.vec325       ; 2 uses
  %i.hq = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us.1
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next331, %vector.body326 ] ; 3 uses
  %next.gep328 = getelementptr i8, ptr %.6125171.us.1, i64 %index327 ; 2 uses
  %i.hr = getelementptr [2 x i8], ptr %i.hq, i64 %index327 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %wide.load329 = load <8 x i16>, ptr %i.hr, align 2, !tbaa !89, !alias.scope !168
  %wide.load330 = load <8 x i16>, ptr %i.hs, align 2, !tbaa !89, !alias.scope !168
  %i.ht = trunc <8 x i16> %wide.load329 to <8 x i8>
  %i.hu = trunc <8 x i16> %wide.load330 to <8 x i8>
  %i.hv = getelementptr i8, ptr %next.gep328, i64 8
  store <8 x i8> %i.ht, ptr %next.gep328, align 1, !tbaa !9, !alias.scope !171, !noalias !168
  store <8 x i8> %i.hu, ptr %i.hv, align 1, !tbaa !9, !alias.scope !171, !noalias !168
  %index.next331 = add nuw i64 %index327, 16      ; 2 uses
  %i.hw = icmp eq i64 %index.next331, %n.vec325
  br i1 %i.hw, label %middle.block332, label %vector.body326, !llvm.loop !173

middle.block332:                                  ; preds = %vector.body326
  %cmp.n333 = icmp eq i64 %spec.store.select.us.1, %n.vec325
  br i1 %cmp.n333, label %.loopexit.us.1, label %vec.epilog.iter.check339

vec.epilog.iter.check339:                         ; preds = %middle.block332
  %min.epilog.iters.check340 = icmp eq i64 %i.hm, 0
  br i1 %min.epilog.iters.check340, label %.lr.ph178.us.1.preheader, label %vec.epilog.ph341, !prof !135

vec.epilog.ph341:                                 ; preds = %vector.main.loop.iter.check322, %vec.epilog.iter.check339
  %vec.epilog.resume.val334 = phi i64 [ %n.vec325, %vec.epilog.iter.check339 ], [ 0, %vector.main.loop.iter.check322 ]
  %n.vec342 = and i64 %spec.store.select.us.1, -4 ; 4 uses
  %i.hx = getelementptr i8, ptr %.6125171.us.1, i64 %n.vec342 ; 2 uses
  %i.hy = and i64 %spec.store.select.us.1, 3
  %i.hz = add i64 %.2131182.us.1, %n.vec342       ; 2 uses
  %i.ia = getelementptr [2 x i8], ptr %.0118, i64 %.2131182.us.1
  br label %vec.epilog.vector.body343

vec.epilog.vector.body343:                        ; preds = %vec.epilog.vector.body343, %vec.epilog.ph341
  %index344 = phi i64 [ %vec.epilog.resume.val334, %vec.epilog.ph341 ], [ %index.next347, %vec.epilog.vector.body343 ] ; 3 uses
  %next.gep345 = getelementptr i8, ptr %.6125171.us.1, i64 %index344
  %i.ib = getelementptr [2 x i8], ptr %i.ia, i64 %index344
  %wide.load346 = load <4 x i16>, ptr %i.ib, align 2, !tbaa !89, !alias.scope !168
  %i.ic = trunc <4 x i16> %wide.load346 to <4 x i8>
  store <4 x i8> %i.ic, ptr %next.gep345, align 1, !tbaa !9, !alias.scope !171, !noalias !168
  %index.next347 = add nuw i64 %index344, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next347, %n.vec342
  br i1 %i.id, label %vec.epilog.middle.block348, label %vec.epilog.vector.body343, !llvm.loop !174

vec.epilog.middle.block348:                       ; preds = %vec.epilog.vector.body343
  %cmp.n349 = icmp eq i64 %spec.store.select.us.1, %n.vec342
  br i1 %cmp.n349, label %.loopexit.us.1, label %.lr.ph178.us.1.preheader

.lr.ph178.us.1.preheader:                         ; preds = %vector.memcheck313, %iter.check337, %vec.epilog.iter.check339, %vec.epilog.middle.block348
  %.6125176.us.1.ph = phi ptr [ %.6125171.us.1, %iter.check337 ], [ %.6125171.us.1, %vector.memcheck313 ], [ %i.hn, %vec.epilog.iter.check339 ], [ %i.hx, %vec.epilog.middle.block348 ] ; 2 uses
  %.1128175.us.1.ph = phi i64 [ %spec.store.select.us.1, %iter.check337 ], [ %spec.store.select.us.1, %vector.memcheck313 ], [ %i.ho, %vec.epilog.iter.check339 ], [ %i.hy, %vec.epilog.middle.block348 ] ; 4 uses
  %.3132174.us.1.ph = phi i64 [ %.2131182.us.1, %iter.check337 ], [ %.2131182.us.1, %vector.memcheck313 ], [ %i.hp, %vec.epilog.iter.check339 ], [ %i.hz, %vec.epilog.middle.block348 ] ; 2 uses
  %i.ie = add nsw i64 %.1128175.us.1.ph, -1
  %xtraiter381 = and i64 %.1128175.us.1.ph, 3     ; 2 uses
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %.lr.ph178.us.1.prol.loopexit, label %.lr.ph178.us.1.prol

.lr.ph178.us.1.prol:                              ; preds = %.lr.ph178.us.1.preheader, %.lr.ph178.us.1.prol
  %.6125176.us.1.prol = phi ptr [ %.6125.us.1.prol, %.lr.ph178.us.1.prol ], [ %.6125176.us.1.ph, %.lr.ph178.us.1.preheader ] ; 2 uses
  %.1128175.us.1.prol = phi i64 [ %i.if, %.lr.ph178.us.1.prol ], [ %.1128175.us.1.ph, %.lr.ph178.us.1.preheader ]
  %.3132174.us.1.prol = phi i64 [ %i.ig, %.lr.ph178.us.1.prol ], [ %.3132174.us.1.ph, %.lr.ph178.us.1.preheader ] ; 2 uses
  %prol.iter383 = phi i64 [ %prol.iter383.next, %.lr.ph178.us.1.prol ], [ 0, %.lr.ph178.us.1.preheader ]
  %i.if = add nsw i64 %.1128175.us.1.prol, -1     ; 2 uses
  %i.ig = add nsw i64 %.3132174.us.1.prol, 1      ; 3 uses
  %i.ih = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us.1.prol
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !89
  %i.ij = trunc i16 %i.ii to i8
  store i8 %i.ij, ptr %.6125176.us.1.prol, align 1, !tbaa !9
  %.6125.us.1.prol = getelementptr inbounds nuw i8, ptr %.6125176.us.1.prol, i64 1 ; 3 uses
  %prol.iter383.next = add i64 %prol.iter383, 1   ; 2 uses
  %prol.iter383.cmp.not = icmp eq i64 %prol.iter383.next, %xtraiter381
  br i1 %prol.iter383.cmp.not, label %.lr.ph178.us.1.prol.loopexit, label %.lr.ph178.us.1.prol, !llvm.loop !175

.lr.ph178.us.1.prol.loopexit:                     ; preds = %.lr.ph178.us.1.prol, %.lr.ph178.us.1.preheader
  %.lcssa361.unr = phi i64 [ poison, %.lr.ph178.us.1.preheader ], [ %i.ig, %.lr.ph178.us.1.prol ]
  %.6125.us.1.lcssa360.unr = phi ptr [ poison, %.lr.ph178.us.1.preheader ], [ %.6125.us.1.prol, %.lr.ph178.us.1.prol ]
  %.6125176.us.1.unr = phi ptr [ %.6125176.us.1.ph, %.lr.ph178.us.1.preheader ], [ %.6125.us.1.prol, %.lr.ph178.us.1.prol ]
  %.1128175.us.1.unr = phi i64 [ %.1128175.us.1.ph, %.lr.ph178.us.1.preheader ], [ %i.if, %.lr.ph178.us.1.prol ]
  %.3132174.us.1.unr = phi i64 [ %.3132174.us.1.ph, %.lr.ph178.us.1.preheader ], [ %i.ig, %.lr.ph178.us.1.prol ]
  %i.ik = icmp ult i64 %i.ie, 3
  br i1 %i.ik, label %.loopexit.us.1, label %.lr.ph178.us.1

.lr.ph178.us.1:                                   ; preds = %.lr.ph178.us.1.prol.loopexit, %.lr.ph178.us.1
  %.6125176.us.1 = phi ptr [ %.6125.us.1.3, %.lr.ph178.us.1 ], [ %.6125176.us.1.unr, %.lr.ph178.us.1.prol.loopexit ] ; 5 uses
  %.1128175.us.1 = phi i64 [ %i.iw, %.lr.ph178.us.1 ], [ %.1128175.us.1.unr, %.lr.ph178.us.1.prol.loopexit ]
  %.3132174.us.1 = phi i64 [ %i.ix, %.lr.ph178.us.1 ], [ %.3132174.us.1.unr, %.lr.ph178.us.1.prol.loopexit ] ; 5 uses
  %i.il = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.im = load i16, ptr %i.il, align 2, !tbaa !89
  %i.in = trunc i16 %i.im to i8
  store i8 %i.in, ptr %.6125176.us.1, align 1, !tbaa !9
  %.6125.us.1 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 1
  %i.io = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.ip = getelementptr i8, ptr %i.io, i64 2
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !89
  %i.ir = trunc i16 %i.iq to i8
  store i8 %i.ir, ptr %.6125.us.1, align 1, !tbaa !9
  %.6125.us.1.1 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 2
  %i.is = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.it = getelementptr i8, ptr %i.is, i64 4
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !89
  %i.iv = trunc i16 %i.iu to i8
  store i8 %i.iv, ptr %.6125.us.1.1, align 1, !tbaa !9
  %.6125.us.1.2 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 3
  %i.iw = add nsw i64 %.1128175.us.1, -4          ; 2 uses
  %i.ix = add nsw i64 %.3132174.us.1, 4           ; 2 uses
  %i.iy = getelementptr [2 x i8], ptr %.0118, i64 %.3132174.us.1
  %i.iz = getelementptr i8, ptr %i.iy, i64 6
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !89
  %i.jb = trunc i16 %i.ja to i8
  store i8 %i.jb, ptr %.6125.us.1.2, align 1, !tbaa !9
  %.6125.us.1.3 = getelementptr inbounds nuw i8, ptr %.6125176.us.1, i64 4 ; 2 uses
  %.not143.us.1.3 = icmp eq i64 %i.iw, 0
  br i1 %.not143.us.1.3, label %.loopexit.us.1, label %.lr.ph178.us.1, !llvm.loop !176

.loopexit.us.1:                                   ; preds = %.lr.ph178.us.1.prol.loopexit, %.lr.ph178.us.1, %vec.epilog.middle.block348, %middle.block332
  %.lcssa288 = phi i64 [ %i.hz, %vec.epilog.middle.block348 ], [ %i.hp, %middle.block332 ], [ %.lcssa361.unr, %.lr.ph178.us.1.prol.loopexit ], [ %i.ix, %.lr.ph178.us.1 ] ; 3 uses
  %.6125.us.1.lcssa = phi ptr [ %i.hx, %vec.epilog.middle.block348 ], [ %i.hn, %middle.block332 ], [ %.6125.us.1.lcssa360.unr, %.lr.ph178.us.1.prol.loopexit ], [ %.6125.us.1.3, %.lr.ph178.us.1 ] ; 2 uses
  %i.jc = sub i64 %.6172.us.1, %spec.store.select.us.1 ; 2 uses
  %i.jd = icmp slt i64 %.lcssa288, %.0150.us.1
  br i1 %i.jd, label %.lr.ph185.us.1, label %._crit_edge.us.1

._crit_edge.us.1:                                 ; preds = %bb.ai, %.loopexit.us.1, %.loopexit145.us.1.thread, %.loopexit145.us.1
  %.2131.lcssa.us.1 = phi i64 [ %.0129189.us.1, %.loopexit145.us.1 ], [ %.0150.us.1, %.loopexit145.us.1.thread ], [ %.0150.us.1, %bb.ai ], [ %.lcssa288, %.loopexit.us.1 ]
  %.4123.lcssa.us.1 = phi ptr [ %.2121.us.1, %.loopexit145.us.1 ], [ %i.gv, %.loopexit145.us.1.thread ], [ %.6125171.us.1, %bb.ai ], [ %.6125.us.1.lcssa, %.loopexit.us.1 ] ; 4 uses
  %.4116.lcssa.us.1 = phi i64 [ %.2114.us.1, %.loopexit145.us.1 ], [ %i.gw, %.loopexit145.us.1.thread ], [ %.6172.us.1, %bb.ai ], [ %i.jc, %.loopexit.us.1 ] ; 2 uses
  %i.je = icmp sgt i32 %.4.us.1, 3
  br i1 %i.je, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.us.1
  %i.jf = trunc i32 %.4.us.1 to i8
  %i.jg = add i8 %i.jf, 126
  %i.jh = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us.1, i64 1
  store i8 %i.jg, ptr %.4123.lcssa.us.1, align 1, !tbaa !9
  %i.ji = getelementptr inbounds [2 x i8], ptr %.0118, i64 %.0150.us.1
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !89
  %i.jk = trunc i16 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %.4123.lcssa.us.1, i64 2
  store i8 %i.jk, ptr %i.jh, align 1, !tbaa !9
  %i.jm = add nsw i64 %.4116.lcssa.us.1, -2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.us.1
  %.7126.us.1 = phi ptr [ %i.jl, %bb.aj ], [ %.4123.lcssa.us.1, %._crit_edge.us.1 ] ; 2 uses
  %.7.us.1 = phi i64 [ %i.jm, %bb.aj ], [ %.4116.lcssa.us.1, %._crit_edge.us.1 ] ; 2 uses
  %.5.us.1 = phi i32 [ %.4.us.1, %bb.aj ], [ 0, %._crit_edge.us.1 ] ; 2 uses
  %i.jn = zext nneg i32 %.5.us.1 to i64
  %i.jo = add nsw i64 %.2131.lcssa.us.1, %i.jn    ; 2 uses
  %i.jp = icmp slt i64 %i.jo, %i.f
  br i1 %i.jp, label %._crit_edge195.us, label %._crit_edge195.us.1

._crit_edge195.us.1:                              ; preds = %bb.ak
  %.pre = load i64, ptr %i.s, align 8, !tbaa !148
  br label %.split204.us

.split204.us:                                     ; preds = %bb.e, %._crit_edge195.us.1
  %i.jq = phi i64 [ %.pre, %._crit_edge195.us.1 ], [ %i.t, %bb.e ]
  %.us-phi = phi ptr [ %.7126.us.1, %._crit_edge195.us.1 ], [ %i.r, %bb.e ]
  %.us-phi205 = phi i64 [ %.7.us.1, %._crit_edge195.us.1 ], [ %i.w, %bb.e ]
  store ptr %.us-phi, ptr %i.q, align 8, !tbaa !77
  %i.jr = sub nsw i64 %i.jq, %.us-phi205
  store i64 %i.jr, ptr %i.u, align 8, !tbaa !78
  br label %.loopexit144

.loopexit144:                                     ; preds = %bb.f, %bb.q, %bb.v, %bb.ag, %.split204.us, %bb.c
  %.0134 = phi i32 [ 0, %bb.q ], [ 0, %bb.c ], [ 1, %.split204.us ], [ 0, %bb.ag ], [ 0, %bb.v ], [ 0, %bb.f ]
  ret i32 %.0134
}

; Function Attrs: nounwind uwtable
define internal void @L16fromY(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.09 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.058 = phi ptr [ %i.c, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.067 = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.e = add nsw i64 %.067, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.09, i64 4
  %i.g = load float, ptr %.09, align 4, !tbaa !7
  %i.h = fpext float %i.g to double
  %i.i = load i32, ptr %i.d, align 8, !tbaa !37
  %i.j = tail call i32 @LogL16fromY(double noundef %i.h, i32 noundef %i.i)
  %i.k = trunc i32 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %.058, i64 2
  store i16 %i.k, ptr %.058, align 2, !tbaa !89
  %i.m = icmp samesign ugt i64 %.067, 1
  br i1 %i.m, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @TIFFFlushData1(ptr noundef) local_unnamed_addr #10

declare void @_TIFFfreeExt(ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_TIFFSetDefaultCompressionState(ptr noundef) local_unnamed_addr #10

declare i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #10

declare i64 @TIFFTileSize(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !8, i64 0}
!11 = !{!"", !8, i64 0, !12, i64 4, !12, i64 6}
!12 = !{!"short", !5, i64 0}
!13 = !{!11, !12, i64 4}
!14 = !{!11, !12, i64 6}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !5, i64 0}
!17 = !{!18, !19, i64 1072}
!18 = !{!"tiff", !19, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !22, i64 48, !22, i64 56, !4, i64 64, !23, i64 72, !23, i64 448, !5, i64 824, !12, i64 840, !4, i64 844, !4, i64 848, !4, i64 852, !4, i64 856, !21, i64 864, !21, i64 872, !21, i64 880, !12, i64 888, !21, i64 896, !4, i64 904, !4, i64 908, !21, i64 912, !4, i64 920, !20, i64 928, !20, i64 936, !20, i64 944, !20, i64 952, !4, i64 960, !20, i64 968, !20, i64 976, !20, i64 984, !20, i64 992, !20, i64 1000, !20, i64 1008, !20, i64 1016, !20, i64 1024, !20, i64 1032, !20, i64 1040, !20, i64 1048, !20, i64 1056, !20, i64 1064, !19, i64 1072, !21, i64 1080, !21, i64 1088, !19, i64 1096, !21, i64 1104, !21, i64 1112, !21, i64 1120, !19, i64 1128, !21, i64 1136, !19, i64 1144, !21, i64 1152, !20, i64 1160, !20, i64 1168, !20, i64 1176, !20, i64 1184, !20, i64 1192, !20, i64 1200, !20, i64 1208, !20, i64 1216, !20, i64 1224, !29, i64 1232, !21, i64 1240, !31, i64 1248, !32, i64 1256, !33, i64 1280, !34, i64 1288, !21, i64 1296, !20, i64 1304, !20, i64 1312, !20, i64 1320, !20, i64 1328, !21, i64 1336, !21, i64 1344, !21, i64 1352, !4, i64 1360}
!19 = !{!"p1 omnipotent char", !20, i64 0}
!20 = !{!"any pointer", !5, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"p1 _ZTS12_TIFFHashSet", !20, i64 0}
!23 = !{!"", !5, i64 0, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !12, i64 52, !12, i64 54, !12, i64 56, !12, i64 58, !4, i64 60, !12, i64 64, !12, i64 66, !24, i64 72, !24, i64 80, !8, i64 88, !8, i64 92, !12, i64 96, !12, i64 98, !8, i64 100, !8, i64 104, !5, i64 108, !5, i64 112, !5, i64 136, !12, i64 140, !25, i64 144, !4, i64 152, !4, i64 156, !26, i64 160, !26, i64 168, !4, i64 176, !27, i64 184, !27, i64 216, !12, i64 248, !26, i64 256, !5, i64 264, !12, i64 268, !5, i64 272, !28, i64 296, !4, i64 304, !19, i64 312, !12, i64 320, !4, i64 324, !20, i64 328, !5, i64 336, !5, i64 337, !21, i64 344, !21, i64 352, !4, i64 360, !20, i64 368}
!24 = !{!"p1 double", !20, i64 0}
!25 = !{!"p1 short", !20, i64 0}
!26 = !{!"p1 long", !20, i64 0}
!27 = !{!"", !12, i64 0, !12, i64 2, !21, i64 8, !5, i64 16, !5, i64 24}
!28 = !{!"p1 float", !20, i64 0}
!29 = !{!"p2 _ZTS10_TIFFField", !30, i64 0}
!30 = !{!"any p2 pointer", !20, i64 0}
!31 = !{!"p1 _ZTS10_TIFFField", !20, i64 0}
!32 = !{!"", !20, i64 0, !20, i64 8, !20, i64 16}
!33 = !{!"p1 _ZTS11client_info", !20, i64 0}
!34 = !{!"p1 _ZTS15_TIFFFieldArray", !20, i64 0}
!35 = !{!36, !4, i64 4}
!36 = !{!"logLuvState", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !19, i64 16, !21, i64 24, !20, i64 32, !20, i64 40, !20, i64 48}
!37 = !{!36, !4, i64 8}
!38 = !{!36, !20, i64 32}
!39 = !{!18, !20, i64 928}
!40 = !{!18, !20, i64 936}
!41 = !{!18, !20, i64 1000}
!42 = !{!18, !20, i64 1016}
!43 = !{!18, !20, i64 952}
!44 = !{!18, !20, i64 1008}
!45 = !{!18, !20, i64 1024}
!46 = !{!18, !20, i64 1032}
!47 = !{!18, !20, i64 1048}
!48 = !{!20, !20, i64 0}
!49 = !{!18, !20, i64 1264}
!50 = !{!18, !20, i64 1256}
!51 = !{!18, !19, i64 0}
!52 = !{!18, !20, i64 1224}
!53 = !{!23, !12, i64 50}
!54 = !{!23, !12, i64 48}
!55 = !{!18, !20, i64 984}
!56 = !{!18, !20, i64 992}
!57 = !{!36, !4, i64 0}
!58 = !{!23, !12, i64 58}
!59 = !{!23, !12, i64 44}
!60 = !{!23, !12, i64 46}
!61 = !{!36, !19, i64 16}
!62 = !{!63, !63, i64 0}
!63 = !{!"p1 int", !20, i64 0}
!64 = !{!36, !20, i64 40}
!65 = !{!18, !4, i64 16}
!66 = !{!18, !21, i64 912}
!67 = !{!18, !21, i64 1080}
!68 = !{!36, !20, i64 48}
!69 = !{!23, !12, i64 98}
!70 = !{!36, !4, i64 12}
!71 = !{!23, !4, i64 28}
!72 = !{!23, !4, i64 32}
!73 = !{!36, !21, i64 24}
!74 = !{!23, !4, i64 60}
!75 = !{!23, !4, i64 20}
!76 = !{!23, !4, i64 16}
!77 = !{!18, !19, i64 1128}
!78 = !{!18, !21, i64 1136}
!79 = !{!80}
!80 = distinct !{!80, !81}
!81 = distinct !{!81, !"LVerDomain"}
!82 = !{!83}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !85, !86}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = !{!"llvm.loop.unroll.runtime.disable"}
!87 = distinct !{!87, !85}
!88 = !{!18, !4, i64 844}
!89 = !{!12, !12, i64 0}
!90 = !{!91}
!91 = distinct !{!91, !92}
!92 = distinct !{!92, !"LVerDomain"}
!93 = !{!94}
!94 = distinct !{!94, !92}
!95 = distinct !{!95, !85, !86}
!96 = distinct !{!96, !85}
end_hunk_0
