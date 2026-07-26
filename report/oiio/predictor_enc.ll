inline.NumInlined: 92
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@VP8LResidualImage:bb.a
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next146
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !3
  %i.aq = add i32 %i.ao, %i.ah                    ; 3 uses
  %indvars.iv.next146.1 = add nsw i64 %indvars.iv145, 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge112.loopexit.unr-lcssa, label %bb.d, !llvm.loop !18

._crit_edge112.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge112.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge112.loopexit.unr-lcssa, %.lr.ph111
  %indvars.iv145.epil.init = phi i64 [ %i.v, %.lr.ph111 ], [ %indvars.iv.next146.1, %._crit_edge112.loopexit.unr-lcssa ] ; 2 uses
  %.080108.epil.init = phi i32 [ 0, %.lr.ph111 ], [ %i.aq, %._crit_edge112.loopexit.unr-lcssa ]
  %lcmp.mod255 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.ar = trunc nsw i64 %indvars.iv145.epil.init to i32 ; 3 uses
  %i.as = shl nuw i32 1, %i.ar                    ; 2 uses
  %i.at = add i32 %i.t, %i.as
  %i.au = lshr i32 %i.at, %i.ar
  %i.av = add i32 %i.u, %i.as
  %i.aw = lshr i32 %i.av, %i.ar
  %i.ax = mul nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv145.epil.init
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !3
  %i.az = add i32 %i.ax, %.080108.epil.init
  br label %._crit_edge112.loopexit

._crit_edge112.loopexit:                          ; preds = %._crit_edge112.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa251 = phi i32 [ %i.aq, %._crit_edge112.loopexit.unr-lcssa ], [ %i.az, %.epil.preheader ]
  %i.ba = zext i32 %.lcssa251 to i64
  br label %._crit_edge112

._crit_edge112:                                   ; preds = %._crit_edge112.loopexit, %bb.c
  %.080.lcssa = phi i64 [ 0, %bb.c ], [ %i.ba, %._crit_edge112.loopexit ]
  %i.bb = tail call ptr @WebPSafeMalloc(i64 noundef %.080.lcssa, i64 noundef 4) #10 ; 6 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.bs, label %bb.e

bb.e:                                             ; preds = %._crit_edge112
  %i.bd = sext i32 %2 to i64                      ; 5 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bd ; 3 uses
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !19
  %.not85.not113 = icmp slt i32 %2, %3
  br i1 %.not85.not113, label %.lr.ph116.preheader, label %._crit_edge117

.lr.ph116.preheader:                              ; preds = %bb.e
  %wide.trip.count152 = sext i32 %3 to i64        ; 3 uses
  %i.bf = sub nsw i64 %wide.trip.count152, %i.bd
  %xtraiter256 = and i64 %i.bf, 3                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol

.lr.ph116.prol:                                   ; preds = %.lr.ph116.preheader, %.lr.ph116.prol
  %i.bg = phi ptr [ %i.bk, %.lr.ph116.prol ], [ %i.bb, %.lr.ph116.preheader ]
  %indvars.iv149.prol = phi i64 [ %indvars.iv.next150.prol, %.lr.ph116.prol ], [ %i.bd, %.lr.ph116.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph116.prol ], [ 0, %.lr.ph116.preheader ]
  %indvars.iv.next150.prol = add nsw i64 %indvars.iv149.prol, 1 ; 3 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv149.prol
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.prol
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !19
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter256
  br i1 %prol.iter.cmp.not, label %.lr.ph116.prol.loopexit, label %.lr.ph116.prol, !llvm.loop !22

.lr.ph116.prol.loopexit:                          ; preds = %.lr.ph116.prol, %.lr.ph116.preheader
  %.unr = phi ptr [ %i.bb, %.lr.ph116.preheader ], [ %i.bk, %.lr.ph116.prol ]
  %indvars.iv149.unr = phi i64 [ %i.bd, %.lr.ph116.preheader ], [ %indvars.iv.next150.prol, %.lr.ph116.prol ]
  %i.bm = sub nsw i64 %i.bd, %wide.trip.count152
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116
  %i.bo = phi ptr [ %i.ch, %.lr.ph116 ], [ %.unr, %.lr.ph116.prol.loopexit ]
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.3, %.lr.ph116 ], [ %indvars.iv149.unr, %.lr.ph116.prol.loopexit ] ; 5 uses
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv149
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !19
  %indvars.iv.next150.1 = add nsw i64 %indvars.iv149, 2 ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.1
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !19
  %indvars.iv.next150.2 = add nsw i64 %indvars.iv149, 3 ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150.1
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.2
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !19
  %indvars.iv.next150.3 = add nsw i64 %indvars.iv149, 4 ; 3 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next150.2
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next150.3
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !19
  %exitcond153.not.3 = icmp eq i64 %indvars.iv.next150.3, %wide.trip.count152
  br i1 %exitcond153.not.3, label %._crit_edge117, label %.lr.ph116, !llvm.loop !24

._crit_edge117:                                   ; preds = %.lr.ph116.prol.loopexit, %.lr.ph116, %bb.e
  %i.cj = shl nuw i32 1, %2                       ; 5 uses
  %i.ck = add i32 %0, -1                          ; 4 uses
  %i.cl = add i32 %i.cj, %i.ck
  %i.cm = lshr i32 %i.cl, %2
  %i.cn = add i32 %1, -1                          ; 2 uses
  %i.co = add i32 %i.cj, %i.cn
  %i.cp = lshr i32 %i.co, %2                      ; 4 uses
  %i.cq = sub nsw i32 %3, %2                      ; 7 uses
  %i.cr = add i32 %i.cq, 1                        ; 3 uses
  %i.cs = mul i32 %i.cr, 14336
  %i.ct = shl i32 %i.cr, 10
  %i.cu = mul i32 %i.cr, 15374
  %i.cv = sext i32 %i.cu to i64
  %i.cw = tail call ptr @WebPSafeCalloc(i64 noundef %i.cv, i64 noundef 4) #10 ; 11 uses
  %i.cx = sext i32 %i.cs to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cx ; 3 uses
  %i.cz = sext i32 %i.ct to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.cz ; 2 uses
  %i.db = load i32, ptr %13, align 4, !tbaa !3
  %i.dc = tail call noundef i32 @llvm.smin.i32(i32 range(i32 -2147483648, 2147483647) %3, i32 4) ; 2 uses
  %i.dd = tail call noundef i32 @llvm.smax.i32(i32 %i.dc, i32 %2)
  %i.de = sub nsw i32 %i.dd, %2                   ; 2 uses
  store i32 0, ptr %14, align 4, !tbaa !3
  %i.df = icmp eq ptr %i.cw, null
  br i1 %i.df, label %GetBestPredictorsAndSubSampling.exit.thread, label %.preheader180.i

.preheader180.i:                                  ; preds = %._crit_edge117
  %.not195.i = icmp eq i32 %i.cp, 0
  br i1 %.not195.i, label %.preheader.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader180.i
  %i.dg = sext i32 %0 to i64                      ; 5 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %6, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 5 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 4 uses
  %i.dl = icmp sgt i32 %.fr130, 1                 ; 2 uses
  %.not.i.i = icmp sge i32 %2, %i.dc
  %i.dm = add i32 %i.de, 1
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %i.dm, i32 2)
  %i.dn = sext i32 %1 to i64
  %invariant.op.i.i = add nsw i64 %i.dn, -1       ; 3 uses
  %i.do = add i32 %i.cm, -1
  %i.dp = add i32 %i.cp, -1
  %.pre.i = mul i32 %i.cq, 14336
  %i.dq = add i32 %.pre.i, 14336
  %i.dr = zext i32 %i.dq to i64
  %i.ds = shl nuw nsw i64 %i.dr, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.bo, %.lr.ph.i
  %.0145190.i = phi i32 [ 0, %.lr.ph.i ], [ %.1146.i, %bb.bo ] ; 2 uses
  %.0147189.i = phi i32 [ 0, %.lr.ph.i ], [ %.1148.i, %bb.bo ] ; 2 uses
  %.0150188.i = phi i32 [ 0, %.lr.ph.i ], [ %i.rc, %bb.bo ] ; 3 uses
  %.0151187.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ra, %bb.bo ] ; 3 uses
  %.0152186.i = phi i32 [ 0, %.lr.ph.i ], [ %.2154.i, %bb.bo ] ; 2 uses
  %.0155185.i = phi i32 [ 0, %.lr.ph.i ], [ %.2157.i, %bb.bo ] ; 2 uses
  %i.dt = shl i32 %.0151187.i, %2                 ; 7 uses
  %i.du = shl i32 %.0150188.i, %2                 ; 4 uses
  %i.dv = sub nsw i32 %1, %i.du
  %i.dw = call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.dv) ; 2 uses
  %i.dx = sub nsw i32 %0, %i.dt                   ; 3 uses
  %i.dy = call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.dx) ; 4 uses
  %i.dz = icmp sgt i32 %i.dt, 0
  %i.ea = zext i1 %i.dz to i32                    ; 2 uses
  %i.eb = sub nsw i32 %i.dt, %i.ea
  %i.ec = add nsw i32 %i.dy, %i.ea                ; 5 uses
  %i.ed = icmp slt i32 %i.cj, %i.dx
  %i.ee = zext i1 %i.ed to i32
  %i.ef = add nsw i32 %i.ec, %i.ee                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.eg = icmp sgt i32 %i.du, 0                   ; 4 uses
  %i.eh = icmp sgt i32 %i.dw, 0
  %i.ei = sext i32 %i.eb to i64                   ; 10 uses
  %i.ej = add nsw i32 %i.du, -1
  %i.ek = mul nsw i32 %i.ej, %0
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %5, i64 %i.el
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ei ; 17 uses
  %i.eo = add nsw i32 %i.ec, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = shl nsw i64 %i.ep, 2                    ; 17 uses
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %5, i64 %i.ei ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %i.dk, i64 %i.ei ; 2 uses
  %i.es = add nsw i32 %i.dy, %i.dt                ; 3 uses
  br i1 %i.eh, label %.split.us.preheader.i.i, label %.split.i.i

.split.us.preheader.i.i:                          ; preds = %bb.f
  %i.et = icmp sgt i32 %i.dx, 0
  %15 = icmp slt i32 %i.dy, 1
  %i.eu = sext i32 %i.du to i64                   ; 3 uses
  %wide.trip.count146.i.i = zext nneg i32 %i.dw to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.dy to i64 ; 2 uses
  %brmerge.i.i = or i1 %.not.i.i, %15
  br i1 %i.et, label %.split.us.i.us.i, label %.split.us.i.i.preheader

.split.us.i.i.preheader:                          ; preds = %.split.us.preheader.i.i
  br i1 %i.dl, label %.split.us.i.i.us, label %.split.us.i.i

.split.us.i.i.us:                                 ; preds = %.split.us.i.i.preheader, %._crit_edge127.us.i.split.i.split.us126
  %indvars.iv148.i.i.us = phi i64 [ %indvars.iv.next149.i.i.us, %._crit_edge127.us.i.split.i.split.us126 ], [ 0, %.split.us.i.i.preheader ] ; 2 uses
  %.0131.us.i.i.us = phi ptr [ %.1100123.us.i.i.us121, %._crit_edge127.us.i.split.i.split.us126 ], [ %6, %.split.us.i.i.preheader ]
  %.099130.us.i.i.us = phi ptr [ %.1124.us.i.i.us120, %._crit_edge127.us.i.split.i.split.us126 ], [ %i.di, %.split.us.i.i.preheader ] ; 2 uses
  br i1 %i.eg, label %bb.g, label %.lr.ph126.us.i.i.us

bb.g:                                             ; preds = %.split.us.i.i.us
  %i.ev = getelementptr inbounds [4 x i8], ptr %.099130.us.i.i.us, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ev, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  br label %.lr.ph126.us.i.i.us

.lr.ph126.us.i.i.us:                              ; preds = %bb.g, %.split.us.i.i.us
  %i.ew = trunc nuw nsw i64 %indvars.iv148.i.i.us to i32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph126.us.i.i.us, %.loopexit.split.us.i.i.us123
  %indvars.iv143.i.i.us119 = phi i64 [ 0, %.lr.ph126.us.i.i.us ], [ %indvars.iv.next144.i.i.us124, %.loopexit.split.us.i.i.us123 ] ; 2 uses
  %.1124.us.i.i.us120 = phi ptr [ %.0131.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1100123.us.i.i.us121, %.loopexit.split.us.i.i.us123 ] ; 4 uses
  %.1100123.us.i.i.us121 = phi ptr [ %.099130.us.i.i.us, %.lr.ph126.us.i.i.us ], [ %.1124.us.i.i.us120, %.loopexit.split.us.i.i.us123 ] ; 3 uses
  %i.ex = add nsw i64 %indvars.iv143.i.i.us119, %i.eu ; 4 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %.1124.us.i.i.us120, i64 %i.ei
  %i.ez = mul nsw i64 %i.ex, %i.dg
  %gep.us.i.i.us122 = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.ez ; 2 uses
  %i.fa = icmp slt i64 %i.ex, %invariant.op.i.i   ; 2 uses
  %i.fb = zext i1 %i.fa to i32
  %i.fc = add nsw i32 %i.ec, %i.fb
  %i.fd = sext i32 %i.fc to i64
  %i.fe = shl nsw i64 %i.fd, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ey, ptr readonly align 4 %gep.us.i.i.us122, i64 %i.fe, i1 false)
  %i.ff = icmp sgt i64 %i.ex, 0
  %brmerge.not.us.i.i.us = select i1 %i.ff, i1 %i.fa, i1 false
  br i1 %brmerge.not.us.i.i.us, label %bb.i, label %.loopexit.split.us.i.i.us123

bb.i:                                             ; preds = %bb.h
  call fastcc void @MaxDiffsForRow(i32 noundef %i.ef, i32 noundef %0, ptr noundef readonly %gep.us.i.i.us122, ptr noundef nonnull %i.er, i32 noundef %10)
  br label %.loopexit.split.us.i.i.us123

.loopexit.split.us.i.i.us123:                     ; preds = %bb.i, %bb.h
  %i.fg = trunc nsw i64 %i.ex to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1100123.us.i.i.us121, ptr noundef %.1124.us.i.i.us120, ptr noundef nonnull %i.dk, i32 noundef %i.ew, i32 noundef %i.dt, i32 noundef %i.es, i32 noundef %i.fg, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  %indvars.iv.next144.i.i.us124 = add nuw nsw i64 %indvars.iv143.i.i.us119, 1 ; 2 uses
  %exitcond147.not.i.i.us125 = icmp eq i64 %indvars.iv.next144.i.i.us124, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.i.us125, label %._crit_edge127.us.i.split.i.split.us126, label %bb.h, !llvm.loop !25

._crit_edge127.us.i.split.i.split.us126:          ; preds = %.loopexit.split.us.i.i.us123
  %indvars.iv.next149.i.i.us = add nuw nsw i64 %indvars.iv148.i.i.us, 1 ; 2 uses
  %exitcond151.not.i.i.us = icmp eq i64 %indvars.iv.next149.i.i.us, 14
  br i1 %exitcond151.not.i.i.us, label %ComputeResidualsForTile.exit.i, label %.split.us.i.i.us, !llvm.loop !26

.split.us.i.us.i:                                 ; preds = %.split.us.preheader.i.i, %._crit_edge127.us.i.split.us.us.i
  %indvars.iv148.i.us.i = phi i64 [ %indvars.iv.next149.i.us.i, %._crit_edge127.us.i.split.us.us.i ], [ 0, %.split.us.preheader.i.i ] ; 3 uses
  %.0131.us.i.us.i = phi ptr [ %.1100123.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %6, %.split.us.preheader.i.i ]
  %.099130.us.i.us.i = phi ptr [ %.1124.us.i.us.us.i, %._crit_edge127.us.i.split.us.us.i ], [ %i.di, %.split.us.preheader.i.i ] ; 2 uses
  %.idx.i.us.i = shl nuw nsw i64 %indvars.iv148.i.us.i, 12
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.idx.i.us.i ; 4 uses
  br i1 %i.eg, label %bb.j, label %.lr.ph126.us.i.us.i

bb.j:                                             ; preds = %.split.us.i.us.i
  %i.fi = getelementptr inbounds [4 x i8], ptr %.099130.us.i.us.i, i64 %i.ei
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fi, ptr readonly align 4 %i.en, i64 %i.eq, i1 false)
  br label %.lr.ph126.us.i.us.i

.lr.ph126.us.i.us.i:                              ; preds = %bb.j, %.split.us.i.us.i
  %i.fj = trunc nuw nsw i64 %indvars.iv148.i.us.i to i32 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split.us.i.us.us.i, %.lr.ph126.us.i.us.i
  %indvars.iv143.i.us.us.i = phi i64 [ 0, %.lr.ph126.us.i.us.i ], [ %indvars.iv.next144.i.us.us.i, %.loopexit.split.us.i.us.us.i ] ; 2 uses
  %.1124.us.i.us.us.i = phi ptr [ %.0131.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1100123.us.i.us.us.i, %.loopexit.split.us.i.us.us.i ] ; 4 uses
  %.1100123.us.i.us.us.i = phi ptr [ %.099130.us.i.us.i, %.lr.ph126.us.i.us.i ], [ %.1124.us.i.us.us.i, %.loopexit.split.us.i.us.us.i ] ; 3 uses
  %i.fk = add nsw i64 %indvars.iv143.i.us.us.i, %i.eu ; 4 uses
  %i.fl = getelementptr inbounds [4 x i8], ptr %.1124.us.i.us.us.i, i64 %i.ei
  %i.fm = mul nsw i64 %i.fk, %i.dg
  %gep.us.i.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %i.fm ; 2 uses
  %i.fn = icmp slt i64 %i.fk, %invariant.op.i.i   ; 2 uses
  %i.fo = zext i1 %i.fn to i32
  %i.fp = add nsw i32 %i.ec, %i.fo
  %i.fq = sext i32 %i.fp to i64
  %i.fr = shl nsw i64 %i.fq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fl, ptr readonly align 4 %gep.us.i.us.us.i, i64 %i.fr, i1 false)
  %i.fs = icmp sgt i64 %i.fk, 0
  %or.cond.not112.not115.us.i.us.us.i = select i1 %i.dl, i1 %i.fs, i1 false
  %brmerge.not.us.i.us.us.i = select i1 %or.cond.not112.not115.us.i.us.us.i, i1 %i.fn, i1 false
  br i1 %brmerge.not.us.i.us.us.i, label %bb.l, label %.lr.ph.us.i.preheader.us.us.i

bb.l:                                             ; preds = %bb.k
  call fastcc void @MaxDiffsForRow(i32 noundef %i.ef, i32 noundef %0, ptr noundef readonly %gep.us.i.us.us.i, ptr noundef nonnull %i.er, i32 noundef %10)
  br label %.lr.ph.us.i.preheader.us.us.i

.lr.ph.us.i.preheader.us.us.i:                    ; preds = %bb.l, %bb.k
  %i.ft = trunc nsw i64 %i.fk to i32
  call fastcc void @GetResidual(i32 noundef %0, i32 noundef %1, ptr noundef %.1100123.us.i.us.us.i, ptr noundef %.1124.us.i.us.us.i, ptr noundef nonnull %i.dk, i32 noundef %i.fj, i32 noundef %i.dt, i32 noundef %i.es, i32 noundef %i.ft, i32 noundef %.fr130, i32 noundef %9, i32 noundef %10, ptr noundef nonnull %i.a)
  br label %.lr.ph.us.i.us.us.i

.lr.ph.us.i.us.us.i:                              ; preds = %.lr.ph.us.i.us.us.i, %.lr.ph.us.i.preheader.us.us.i
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %.lr.ph.us.i.us.us.i ], [ 0, %.lr.ph.us.i.preheader.us.us.i ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3  ; 4 uses
  %i.fw = lshr i32 %i.fv, 24
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !3
  %i.gb = lshr i32 %i.fv, 16
  %i.gc = and i32 %i.gb, 255
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1024 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !3
  %i.gi = lshr i32 %i.fv, 8
  %i.gj = and i32 %i.gi, 255
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 2048 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !3
  %i.gp = and i32 %i.fv, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 3072 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !3
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !3
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.us.i.us.us.i, label %.lr.ph.us.i.us.us.i, !llvm.loop !27

._crit_edge.us.i.us.us.i:                         ; preds = %.lr.ph.us.i.us.us.i
  br i1 %brmerge.i.i, label %.loopexit.split.us.i.us.us.i, label %.lr.ph119.us.i.us.us.i

.lr.ph119.us.i.us.us.i:                           ; preds = %._crit_edge.us.i.us.us.i, %._crit_edge120.us.i.us.us.i
  %.098121.us.i.us.us.i = phi i32 [ %i.ib, %._crit_edge120.us.i.us.us.i ], [ 1, %._crit_edge.us.i.us.us.i ] ; 2 uses
  %i.gv = mul nsw i32 %.098121.us.i.us.us.i, 14
  %i.gw = add nsw i32 %i.gv, %i.fj
  %i.gx = shl nsw i32 %i.gw, 10
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gy ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph119.us.i.us.us.i
  %indvars.iv137.i.us.us.i = phi i64 [ %indvars.iv.next138.i.us.us.i, %bb.m ], [ 0, %.lr.ph119.us.i.us.us.i ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv137.i.us.us.i
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3  ; 4 uses
  %i.hc = lshr i32 %i.hb, 24
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !3
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !3
  %i.hh = lshr i32 %i.hb, 16
  %i.hi = and i32 %i.hh, 255
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1024 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = add i32 %i.hm, 1
  store i32 %i.hn, ptr %i.hl, align 4, !tbaa !3
  %i.ho = lshr i32 %i.hb, 8
  %i.hp = and i32 %i.ho, 255
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2048 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hu = add i32 %i.ht, 1
  store i32 %i.hu, ptr %i.hs, align 4, !tbaa !3
  %i.hv = and i32 %i.hb, 255
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 3072 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = add i32 %i.hz, 1
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !3
  %indvars.iv.next138.i.us.us.i = add nuw nsw i64 %indvars.iv137.i.us.us.i, 1 ; 2 uses
  %exitcond141.not.i.us.us.i = icmp eq i64 %indvars.iv.next138.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond141.not.i.us.us.i, label %._crit_edge120.us.i.us.us.i, label %bb.m, !llvm.loop !28

._crit_edge120.us.i.us.us.i:                      ; preds = %bb.m
  %i.ib = add nuw i32 %.098121.us.i.us.us.i, 1    ; 2 uses
  %exitcond142.i.us.us.i = icmp eq i32 %i.ib, %umax.i.i
  br i1 %exitcond142.i.us.us.i, label %.loopexit.split.us.i.us.us.i, label %.lr.ph119.us.i.us.us.i, !llvm.loop !29

.loopexit.split.us.i.us.us.i:                     ; preds = %._crit_edge120.us.i.us.us.i, %._crit_edge.us.i.us.us.i
  %indvars.iv.next144.i.us.us.i = add nuw nsw i64 %indvars.iv143.i.us.us.i, 1 ; 2 uses
  %exitcond147.not.i.us.us.i = icmp eq i64 %indvars.iv.next144.i.us.us.i, %wide.trip.count146.i.i
  br i1 %exitcond147.not.i.us.us.i, label %._crit_edge127.us.i.split.us.us.i, label %bb.k, !llvm.loop !25

._crit_edge127.us.i.split.us.us.i:                ; preds = %.loopexit.split.us.i.us.us.i
end_hunk_0
