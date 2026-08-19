inline.NumInlined: 647
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 33
begin_hunk_0_@Abc_TtSwapVars:bb.a
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph208
  %index219 = phi i64 [ 0, %vector.ph208 ], [ %index.next222, %vector.body218 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index219 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load220 = load <2 x i64>, ptr %i.am, align 8, !tbaa !86 ; 3 uses
  %wide.load221 = load <2 x i64>, ptr %i.an, align 8, !tbaa !86 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat211, %wide.load220
  %i.ap = and <2 x i64> %broadcast.splat211, %wide.load221
  %i.aq = and <2 x i64> %broadcast.splat213, %wide.load220
  %i.ar = and <2 x i64> %broadcast.splat213, %wide.load221
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat215
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat215
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat217, %wide.load220
  %i.ax = and <2 x i64> %broadcast.splat217, %wide.load221
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat215
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat215
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !86
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !86
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next222, %n.vec209
  br i1 %i.bc, label %.loopexit, label %vector.body218, !llvm.loop !306

scalar.ph206:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !86    ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !86
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph206.1

scalar.ph206.1:                                   ; preds = %scalar.ph206
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !86 ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !86
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph206.2

scalar.ph206.2:                                   ; preds = %scalar.ph206.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !86 ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !86
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 3 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx132 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx132 ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw i32 1, %i.ci                    ; 3 uses
  %.not133 = icmp eq i32 %i.ce, 31
  br i1 %.not133, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %.not134 = icmp eq i32 %i.ci, 31
  %i.cl = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cm = shl i32 2, %i.ci
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  br i1 %.not134, label %.loopexit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.co = sext i32 %spec.select117 to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !86 ; 5 uses
  %i.cr = xor i64 %i.cq, -1                       ; 2 uses
  %i.cs = sext i32 %i.cj to i64                   ; 2 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 1)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64 ; 3 uses
  %i.ct = shl nuw nsw i64 %wide.trip.count153, 3  ; 2 uses
  %i.cu = shl nsw i64 %i.cn, 3
  %i.cv = shl nsw i64 %i.cs, 3                    ; 2 uses
  %min.iters.check191 = icmp slt i32 %i.cj, 2
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.ct
  %i.cy = getelementptr i8, ptr %0, i64 %i.cv
  %i.cz = getelementptr i8, ptr %0, i64 %i.ct
  %n.vec193 = and i64 %wide.trip.count153, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert194 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat195 = shufflevector <2 x i64> %broadcast.splatinsert194, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert196 = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat197 = shufflevector <2 x i64> %broadcast.splatinsert196, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar182 = phi i64 [ %indvar.next183, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.0128.us = phi ptr [ %i.dx, %._crit_edge.us ], [ %0, %.preheader.lr.ph.split.us ] ; 5 uses
  %invariant.gep169 = getelementptr [8 x i8], ptr %.0128.us, i64 %i.cs ; 2 uses
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.memcheck181

scalar.ph190.preheader:                           ; preds = %vector.memcheck181, %.preheader.us
  br label %scalar.ph190

vector.memcheck181:                               ; preds = %.preheader.us
  %i.da = mul i64 %i.cu, %indvar182               ; 3 uses
  %scevgep186 = getelementptr i8, ptr %i.cx, i64 %i.da
  %scevgep185 = getelementptr i8, ptr %i.cy, i64 %i.da
  %scevgep184 = getelementptr i8, ptr %i.cz, i64 %i.da
  %bound0187 = icmp ult ptr %.0128.us, %scevgep186
  %bound1188 = icmp ult ptr %scevgep185, %scevgep184
  %found.conflict189 = and i1 %bound0187, %bound1188
  br i1 %found.conflict189, label %scalar.ph190.preheader, label %vector.body198

vector.body198:                                   ; preds = %vector.memcheck181, %vector.body198
  %index199 = phi i64 [ %index.next202, %vector.body198 ], [ 0, %vector.memcheck181 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %index199 ; 2 uses
  %wide.load200 = load <2 x i64>, ptr %i.db, align 8, !tbaa !86, !alias.scope !307, !noalias !310 ; 2 uses
  %i.dc = and <2 x i64> %broadcast.splat, %wide.load200
  %i.dd = lshr <2 x i64> %i.dc, %broadcast.splat195
  %i.de = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index199 ; 2 uses
  %wide.load201 = load <2 x i64>, ptr %i.de, align 8, !tbaa !86, !alias.scope !310 ; 2 uses
  %i.df = shl <2 x i64> %wide.load201, %broadcast.splat195
  %i.dg = and <2 x i64> %i.df, %broadcast.splat
  %i.dh = and <2 x i64> %wide.load200, %broadcast.splat197
  %i.di = or <2 x i64> %i.dg, %i.dh
  store <2 x i64> %i.di, ptr %i.db, align 8, !tbaa !86, !alias.scope !307, !noalias !310
  %i.dj = and <2 x i64> %wide.load201, %broadcast.splat
  %i.dk = or <2 x i64> %i.dj, %i.dd
  store <2 x i64> %i.dk, ptr %i.de, align 8, !tbaa !86, !alias.scope !310
  %index.next202 = add nuw i64 %index199, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next202, %n.vec193
  br i1 %i.dl, label %._crit_edge.us, label %vector.body198, !llvm.loop !312

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph190 ], [ 0, %scalar.ph190.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !86 ; 2 uses
  %i.do = and i64 %i.cq, %i.dn
  %i.dp = lshr i64 %i.do, %i.cl
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dq = load i64, ptr %gep170, align 8, !tbaa !86 ; 2 uses
  %i.dr = shl i64 %i.dq, %i.cl
  %i.ds = and i64 %i.dr, %i.cq
  %i.dt = and i64 %i.dn, %i.cr
  %i.du = or i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !86
  %i.dv = and i64 %i.dq, %i.cq
  %i.dw = or i64 %i.dv, %i.dp
  store i64 %i.dw, ptr %gep170, align 8, !tbaa !86
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph190, !llvm.loop !313

._crit_edge.us:                                   ; preds = %vector.body198, %scalar.ph190
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cn ; 2 uses
  %i.dy = icmp ult ptr %i.dx, %i.ch
  %indvar.next183 = add i64 %indvar182, 1
  br i1 %i.dy, label %.preheader.us, label %.loopexit, !llvm.loop !314

bb.h:                                             ; preds = %bb.f
  %i.dz = add nsw i32 %spec.select117, -6         ; 3 uses
  %i.ea = shl nuw i32 1, %i.dz                    ; 4 uses
  %i.eb = add nsw i32 %spec.select, -6            ; 3 uses
  %i.ec = shl nuw i32 1, %i.eb                    ; 2 uses
  %.not = icmp eq i32 %i.ce, 31
  br i1 %.not, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %.not130 = icmp eq i32 %i.eb, 31
  %i.ed = shl i32 2, %i.eb
  %i.ee = sext i32 %i.ed to i64                   ; 2 uses
  %.not131 = icmp eq i32 %i.dz, 31
  %or.cond = select i1 %.not130, i1 true, i1 %.not131
  br i1 %or.cond, label %.loopexit, label %.preheader120.us.us.preheader

.preheader120.us.us.preheader:                    ; preds = %.preheader120.lr.ph
  %i.ef = shl i32 2, %i.dz                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ea, i32 1) ; 2 uses
  %i.eg = sext i32 %i.ef to i64                   ; 6 uses
  %i.eh = sext i32 %i.ea to i64                   ; 3 uses
  %i.ei = sext i32 %i.ec to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.ej = shl nsw i64 %i.eh, 3
  %i.ek = shl nsw i64 %i.ee, 3
  %smax173 = tail call i64 @llvm.smax.i64(i64 %i.eg, i64 %i.ei)
  %i.el = icmp slt i32 %i.ef, %i.ec
  %umin = zext i1 %i.el to i64                    ; 3 uses
  %i.em = or disjoint i64 %umin, %i.eg
  %i.en = sub i64 %smax173, %i.em                 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 1) ; 2 uses
  %4 = shl nsw i64 %i.ei, 3
  %i.eo = udiv i64 %i.en, %umax
  %i.ep = add i64 %i.eo, %umin
  %i.eq = mul i64 %i.ep, %i.eg
  %5 = add i64 %i.eq, %i.ei
  %6 = add i64 %5, %wide.trip.count
  %i.er = shl i64 %6, 3
  %i.es = getelementptr i8, ptr %0, i64 %i.ej
  %i.et = getelementptr i8, ptr %0, i64 %4
  %i.eu = getelementptr i8, ptr %0, i64 %i.er
  %min.iters.check = icmp slt i32 %i.ea, 12
  %invariant.op = add i64 %i.eh, %wide.trip.count
  %stride.check = icmp slt i32 %i.ef, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ev = icmp slt i32 %i.ea, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod231 = trunc i32 %smax to i1
  br label %.preheader120.us.us

.preheader120.us.us:                              ; preds = %.preheader120.us.us.preheader, %._crit_edge124.us.us
  %indvar = phi i64 [ 0, %.preheader120.us.us.preheader ], [ %indvar.next, %._crit_edge124.us.us ] ; 2 uses
  %.1125.us.us = phi ptr [ %0, %.preheader120.us.us.preheader ], [ %i.fp, %._crit_edge124.us.us ] ; 3 uses
  %i.ew = mul i64 %i.ek, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.es, i64 %i.ew
  %scevgep175 = getelementptr i8, ptr %i.et, i64 %i.ew
  %scevgep176 = getelementptr i8, ptr %i.eu, i64 %i.ew
  %invariant.gep167.a = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.eh
  %invariant.gep167 = getelementptr [8 x i8], ptr %.1125.us.us, i64 %i.ei
  %scevgep176.a = getelementptr i8, ptr %0, i64 %i.ew
  %bound1.a = icmp ult ptr %scevgep, %scevgep176
  br label %.preheader119.us.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.ex = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !86
  %i.ez = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !86
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !86
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !86
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !86
  %i.fd = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !86
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !86
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !86
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !315

.preheader119.us.us:                              ; preds = %.preheader120.us.us, %._crit_edge.us.us
  %indvars.iv146 = phi i64 [ 0, %.preheader120.us.us ], [ %indvars.iv.next147, %._crit_edge.us.us ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep167.a, i64 %indvars.iv146 ; 4 uses
  %gep168 = getelementptr [8 x i8], ptr %invariant.gep167, i64 %indvars.iv146 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader119.us.us
  br i1 %i.ev, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader119.us.us
  %7 = udiv i64 %i.en, %umax
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.eg
  %.reass = add i64 %9, %invariant.op
  %10 = shl i64 %.reass, 3
  %scevgep174 = getelementptr i8, ptr %scevgep176.a, i64 %10
  %bound1 = icmp ult ptr %scevgep175, %scevgep174
  %found.conflict = and i1 %bound1.a, %bound1
  %11 = or i1 %found.conflict, %stride.check
  br i1 %11, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ff, align 8, !tbaa !86, !alias.scope !316, !noalias !319
  %wide.load178 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !86, !alias.scope !316, !noalias !319
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16     ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !86, !alias.scope !319
  %wide.load180 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !86, !alias.scope !319
  store <2 x i64> %wide.load179, ptr %i.ff, align 8, !tbaa !86, !alias.scope !316, !noalias !319
  store <2 x i64> %wide.load180, ptr %i.fg, align 8, !tbaa !86, !alias.scope !316, !noalias !319
  store <2 x i64> %wide.load, ptr %i.fh, align 8, !tbaa !86, !alias.scope !319
  store <2 x i64> %wide.load178, ptr %i.fi, align 8, !tbaa !86, !alias.scope !319
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %._crit_edge.us.us, label %vector.body, !llvm.loop !321

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.fk = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !86
  %i.fm = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !86
  store i64 %i.fn, ptr %i.fk, align 8, !tbaa !86
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !86
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.eg ; 2 uses
  %i.fo = icmp slt i64 %indvars.iv.next147, %i.ei
  br i1 %i.fo, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !322

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fp = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ee ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fq, label %.preheader120.us.us, label %.loopexit, !llvm.loop !323

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body218, %scalar.ph206, %scalar.ph206.1, %scalar.ph206.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #20 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !39
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #30 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #30
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #30 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !233
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #34
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #30 ; 0 uses
  call void @free(ptr noundef %i.d) #30
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !233, !noalias !324
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #30, !inline_history !327 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #10

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #21

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #21

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Vec_WecSortCompare4(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #24 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.b = load i32, ptr %.val6, align 4, !tbaa !39
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.d = load i32, ptr %.val5, align 4, !tbaa !39
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.d, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #25 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !39
  %i.b = load i32, ptr %1, align 4, !tbaa !39
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #26

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nounwind }
attributes #31 = { nounwind allocsize(1) }
attributes #32 = { nounwind allocsize(0) }
attributes #33 = { nounwind allocsize(0,1) }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
end_hunk_0
