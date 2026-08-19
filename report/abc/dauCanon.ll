inline.NumInlined: 334
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 101
begin_hunk_0_@Abc_TtSwapVars:bb.a
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph208
  %index219 = phi i64 [ 0, %vector.ph208 ], [ %index.next222, %vector.body218 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index219 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load220 = load <2 x i64>, ptr %i.am, align 8, !tbaa !8 ; 3 uses
  %wide.load221 = load <2 x i64>, ptr %i.an, align 8, !tbaa !8 ; 3 uses
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
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !8
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !8
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next222, %n.vec209
  br i1 %i.bc, label %.loopexit, label %vector.body218, !llvm.loop !48

scalar.ph206:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !8
  %exitcond160.not = icmp slt i32 %i.y, 2
  br i1 %exitcond160.not, label %.loopexit, label %scalar.ph206.1

scalar.ph206.1:                                   ; preds = %scalar.ph206
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !8  ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !8
  %exitcond160.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond160.not.1, label %.loopexit, label %scalar.ph206.2

scalar.ph206.2:                                   ; preds = %scalar.ph206.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !8  ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !8
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
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !8  ; 5 uses
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
  %wide.load200 = load <2 x i64>, ptr %i.db, align 8, !tbaa !8, !alias.scope !49, !noalias !52 ; 2 uses
  %i.dc = and <2 x i64> %broadcast.splat, %wide.load200
  %i.dd = lshr <2 x i64> %i.dc, %broadcast.splat195
  %i.de = getelementptr [8 x i8], ptr %invariant.gep169, i64 %index199 ; 2 uses
  %wide.load201 = load <2 x i64>, ptr %i.de, align 8, !tbaa !8, !alias.scope !52 ; 2 uses
  %i.df = shl <2 x i64> %wide.load201, %broadcast.splat195
  %i.dg = and <2 x i64> %i.df, %broadcast.splat
  %i.dh = and <2 x i64> %wide.load200, %broadcast.splat197
  %i.di = or <2 x i64> %i.dg, %i.dh
  store <2 x i64> %i.di, ptr %i.db, align 8, !tbaa !8, !alias.scope !49, !noalias !52
  %i.dj = and <2 x i64> %wide.load201, %broadcast.splat
  %i.dk = or <2 x i64> %i.dj, %i.dd
  store <2 x i64> %i.dk, ptr %i.de, align 8, !tbaa !8, !alias.scope !52
  %index.next202 = add nuw i64 %index199, 2       ; 2 uses
  %i.dl = icmp eq i64 %index.next202, %n.vec193
  br i1 %i.dl, label %._crit_edge.us, label %vector.body198, !llvm.loop !54

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %scalar.ph190 ], [ 0, %scalar.ph190.preheader ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.0128.us, i64 %indvars.iv149 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !8  ; 2 uses
  %i.do = and i64 %i.cq, %i.dn
  %i.dp = lshr i64 %i.do, %i.cl
  %gep170 = getelementptr [8 x i8], ptr %invariant.gep169, i64 %indvars.iv149 ; 2 uses
  %i.dq = load i64, ptr %gep170, align 8, !tbaa !8 ; 2 uses
  %i.dr = shl i64 %i.dq, %i.cl
  %i.ds = and i64 %i.dr, %i.cq
  %i.dt = and i64 %i.dn, %i.cr
  %i.du = or i64 %i.ds, %i.dt
  store i64 %i.du, ptr %i.dm, align 8, !tbaa !8
  %i.dv = and i64 %i.dq, %i.cq
  %i.dw = or i64 %i.dv, %i.dp
  store i64 %i.dw, ptr %gep170, align 8, !tbaa !8
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge.us, label %scalar.ph190, !llvm.loop !55

._crit_edge.us:                                   ; preds = %vector.body198, %scalar.ph190
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0128.us, i64 %i.cn ; 2 uses
  %i.dy = icmp ult ptr %i.dx, %i.ch
  %indvar.next183 = add i64 %indvar182, 1
  br i1 %i.dy, label %.preheader.us, label %.loopexit, !llvm.loop !56

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
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !8
  %i.ez = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !8
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !8
  store i64 %i.ey, ptr %i.ez, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.fb = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !8
  %i.fd = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.next ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !8
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !8
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !57

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
  %wide.load = load <2 x i64>, ptr %i.ff, align 8, !tbaa !8, !alias.scope !58, !noalias !61
  %wide.load178 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !8, !alias.scope !58, !noalias !61
  %i.fh = getelementptr [8 x i8], ptr %gep168, i64 %index ; 3 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 16     ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.fh, align 8, !tbaa !8, !alias.scope !61
  %wide.load180 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !8, !alias.scope !61
  store <2 x i64> %wide.load179, ptr %i.ff, align 8, !tbaa !8, !alias.scope !58, !noalias !61
  store <2 x i64> %wide.load180, ptr %i.fg, align 8, !tbaa !8, !alias.scope !58, !noalias !61
  store <2 x i64> %wide.load, ptr %i.fh, align 8, !tbaa !8, !alias.scope !61
  store <2 x i64> %wide.load178, ptr %i.fi, align 8, !tbaa !8, !alias.scope !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %._crit_edge.us.us, label %vector.body, !llvm.loop !63

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %i.fk = getelementptr [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !8
  %i.fm = getelementptr [8 x i8], ptr %gep168, i64 %indvars.iv.epil.init ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !8
  store i64 %i.fn, ptr %i.fk, align 8, !tbaa !8
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !8
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.eg ; 2 uses
  %i.fo = icmp slt i64 %indvars.iv.next147, %i.ei
  br i1 %i.fo, label %.preheader119.us.us, label %._crit_edge124.us.us, !llvm.loop !64

._crit_edge124.us.us:                             ; preds = %._crit_edge.us.us
  %i.fp = getelementptr inbounds [8 x i8], ptr %.1125.us.us, i64 %i.ee ; 2 uses
  %i.fq = icmp ult ptr %i.fp, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fq, label %.preheader120.us.us, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %._crit_edge124.us.us, %._crit_edge.us, %vector.body218, %scalar.ph206, %scalar.ph206.1, %scalar.ph206.2, %.preheader120.lr.ph, %.preheader.lr.ph, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 8) i32 @Abc_Tt6CofactorPermNaive(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = load i64, ptr %0, align 8, !tbaa !8      ; 8 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.b ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !8
  %i.e = and i64 %i.d, %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !8
  %i.h = and i64 %i.g, %i.a
  %i.i = shl nuw i32 1, %1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = shl i64 %i.h, %i.j
  %i.l = or i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !8
  %i.o = and i64 %i.n, %i.a
  %i.p = lshr i64 %i.o, %i.j
  %i.q = or i64 %i.l, %i.p                        ; 2 uses
  %i.r = icmp ugt i64 %i.a, %i.q
  br i1 %i.r, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = shl nuw i32 1, %1
  %i.t = zext i32 %i.s to i64                     ; 8 uses
  %i.u = shl i64 %i.a, %i.t
  %i.v = sext i32 %1 to i64                       ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8    ; 6 uses
  %i.y = and i64 %i.x, %i.u
  %i.z = and i64 %i.x, %i.a
  %i.aa = lshr i64 %i.z, %i.t
  %i.ab = or i64 %i.aa, %i.y                      ; 4 uses
  %i.ac = icmp ugt i64 %i.a, %i.ab
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.ab) ; 2 uses
  %spec.select67 = zext i1 %i.ac to i32
  %i.ad = add nsw i32 %1, 1                       ; 2 uses
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = zext i32 %i.ae to i64                   ; 6 uses
  %i.ag = shl i64 %i.ab, %i.af
  %i.ah = sext i32 %i.ad to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !8  ; 6 uses
  %i.ak = and i64 %i.ag, %i.aj
  %i.al = and i64 %i.ab, %i.aj
  %i.am = lshr i64 %i.al, %i.af
  %i.an = or i64 %i.am, %i.ak                     ; 4 uses
  %i.ao = icmp ugt i64 %spec.select, %i.an
  %.150 = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.an) ; 2 uses
  %.1 = select i1 %i.ao, i32 3, i32 %spec.select67
  %i.ap = shl i64 %i.an, %i.t
  %i.aq = and i64 %i.ap, %i.x
  %i.ar = and i64 %i.an, %i.x
  %i.as = lshr i64 %i.ar, %i.t
  %i.at = or i64 %i.as, %i.aq                     ; 5 uses
  %i.au = icmp ugt i64 %.150, %i.at
  %.251 = tail call i64 @llvm.umin.i64(i64 %.150, i64 %i.at) ; 2 uses
  %.2 = select i1 %i.au, i32 2, i32 %.1
  %i.av = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.v ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !8
  %i.ax = and i64 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !8
  %i.ba = and i64 %i.at, %i.az
  %i.bb = shl i64 %i.ba, %i.t
  %i.bc = or i64 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !8
  %i.bf = and i64 %i.at, %i.be
  %i.bg = lshr i64 %i.bf, %i.t
  %i.bh = or i64 %i.bc, %i.bg                     ; 4 uses
  %i.bi = icmp ugt i64 %.251, %i.bh
  %.352 = tail call i64 @llvm.umin.i64(i64 %.251, i64 %i.bh) ; 2 uses
  %.3 = select i1 %i.bi, i32 6, i32 %.2
  %i.bj = shl i64 %i.bh, %i.af
  %i.bk = and i64 %i.bj, %i.aj
  %i.bl = and i64 %i.bh, %i.aj
  %i.bm = lshr i64 %i.bl, %i.af
  %i.bn = or i64 %i.bm, %i.bk                     ; 4 uses
  %i.bo = icmp ugt i64 %.352, %i.bn
  %.453 = tail call i64 @llvm.umin.i64(i64 %.352, i64 %i.bn) ; 2 uses
  %.4 = select i1 %i.bo, i32 7, i32 %.3
  %i.bp = shl i64 %i.bn, %i.t
  %i.bq = and i64 %i.bp, %i.x
  %i.br = and i64 %i.bn, %i.x
  %i.bs = lshr i64 %i.br, %i.t
  %i.bt = or i64 %i.bs, %i.bq                     ; 4 uses
  %i.bu = icmp ugt i64 %.453, %i.bt
  %.554 = tail call i64 @llvm.umin.i64(i64 %.453, i64 %i.bt) ; 2 uses
  %.5 = select i1 %i.bu, i32 5, i32 %.4
  %i.bv = shl i64 %i.bt, %i.af
  %i.bw = and i64 %i.bv, %i.aj
  %i.bx = and i64 %i.bt, %i.aj
  %i.by = lshr i64 %i.bx, %i.af
  %i.bz = or i64 %i.by, %i.bw                     ; 2 uses
  %i.ca = icmp ugt i64 %.554, %i.bz
  %.655 = tail call i64 @llvm.umin.i64(i64 %.554, i64 %i.bz)
  %.6 = select i1 %i.ca, i32 4, i32 %.5
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %.655, %bb.c ], [ %i.q, %bb.b ]
  %.157.ph = phi i32 [ %.6, %bb.c ], [ 4, %bb.b ]
  store i64 %.sink, ptr %0, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %.157 = phi i32 [ 0, %bb.b ], [ %.157.ph, %.sink.split ]
  ret i32 %.157
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 8) i32 @Abc_TtCofactorPermNaive(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %.not = icmp eq i32 %3, 0
  %i.b = icmp slt i32 %2, 1                       ; 27 uses
  %.pre = zext i32 %2 to i64                      ; 32 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %Abc_TtSwapAdjacent.exit, label %.lr.ph18.i.preheader

.lr.ph18.i.preheader:                             ; preds = %bb.b
  %min.iters.check = icmp ult i32 %2, 8
  %i.c = sub i64 add (i64 ptrtoaddr (ptr @Abc_TtCofactorPermNaive.pCopy to i64), i64 -1), %i.a
  %diff.check = icmp ult i64 %i.c, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph18.i.preheader1049, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.i.preheader
  %n.vec = and i64 %.pre, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !8
  %wide.load600 = load <2 x i64>, ptr %i.e, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x i64> %wide.load, ptr %i.f, align 16, !tbaa !8
  store <2 x i64> %wide.load600, ptr %i.g, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %.pre
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph18.i.preheader1049

.lr.ph18.i.preheader1049:                         ; preds = %.lr.ph18.i.preheader, %middle.block
  %indvars.iv21.i.ph = phi i64 [ 0, %.lr.ph18.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.pre, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol

.lr.ph18.i.prol:                                  ; preds = %.lr.ph18.i.preheader1049, %.lr.ph18.i.prol
  %indvars.iv21.i.prol = phi i64 [ %indvars.iv.next22.i.prol, %.lr.ph18.i.prol ], [ %indvars.iv21.i.ph, %.lr.ph18.i.preheader1049 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.prol ], [ 0, %.lr.ph18.i.preheader1049 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv21.i.prol
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPermNaive.pCopy, i64 %indvars.iv21.i.prol
  store i64 %i.j, ptr %i.k, align 8, !tbaa !8
  %indvars.iv.next22.i.prol = add nuw nsw i64 %indvars.iv21.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.prol.loopexit, label %.lr.ph18.i.prol, !llvm.loop !67

.lr.ph18.i.prol.loopexit:                         ; preds = %.lr.ph18.i.prol, %.lr.ph18.i.preheader1049
end_hunk_0
begin_hunk_1_@Abc_TtCofactorPermConfig:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds i8, ptr %.pn.i, i64 -12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %.not93.i = icmp eq i32 %i.ac, %i.ae
  br i1 %.not93.i, label %bb.l, label %bb.n, !llvm.loop !162

bb.n:                                             ; preds = %bb.m
  %i.af = icmp ult i32 %i.ac, %i.ae
  br i1 %i.af, label %Abc_TtCompare2VarCofsRev.exit, label %Abc_TtSwapAdjacent.exit

bb.o:                                             ; preds = %bb.j
  %i.ag = icmp samesign ult i32 %1, 7             ; 2 uses
  %i.ah = add nsw i32 %1, -6                      ; 2 uses
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = select i1 %i.ag, i32 1, i32 %i.ai       ; 3 uses
  %i.ak = shl nsw i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.idx108.i = sub nsw i64 %i.z, %i.al            ; 2 uses
  %.not106.i = icmp slt i64 %.idx108.i, 0
  br i1 %.not106.i, label %Abc_TtSwapAdjacent.exit, label %.preheader97.preheader.i

.preheader97.preheader.i:                         ; preds = %bb.o
  %i.an = shl nuw nsw i64 %.idx108.i, 3
  %.076105.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.ao = select i1 %i.ag, i32 0, i32 %i.ah       ; 2 uses
  %i.ap = shl i32 2, %i.ao
  %i.aq = shl nuw i32 1, %i.ao
  %i.ar = sext i32 %i.aj to i64
  %i.as = sext i32 %i.aq to i64
  %i.at = sext i32 %i.ap to i64
  %i.au = icmp sgt i32 %i.aj, 0
  br label %.preheader97.i

.loopexit98.i:                                    ; preds = %bb.p, %.preheader97.i
  %.076.i = getelementptr inbounds [8 x i8], ptr %.076107.i, i64 %i.am ; 2 uses
  %.not.i = icmp ult ptr %.076.i, %0
  br i1 %.not.i, label %Abc_TtSwapAdjacent.exit, label %.preheader97.i, !llvm.loop !163

.preheader97.i:                                   ; preds = %.loopexit98.i, %.preheader97.preheader.i
  %.076107.i = phi ptr [ %.076.i, %.loopexit98.i ], [ %.076105.i, %.preheader97.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.076107.i, i64 %i.as
  %invariant.gep134.i = getelementptr [8 x i8], ptr %.076107.i, i64 %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit98.i

bb.p:                                             ; preds = %.lr.ph
  %i.av = icmp sgt i64 %indvars.iv.i507, 1
  br i1 %i.av, label %.lr.ph, label %.loopexit98.i, !llvm.loop !164

.lr.ph:                                           ; preds = %.preheader97.i, %bb.p
  %indvars.iv.i507 = phi i64 [ %indvars.iv.next.i, %bb.p ], [ %i.ar, %.preheader97.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i507, -1 ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.aw = load i64, ptr %gep.i, align 8, !tbaa !8 ; 2 uses
  %gep135.i = getelementptr [8 x i8], ptr %invariant.gep134.i, i64 %indvars.iv.next.i
  %i.ax = load i64, ptr %gep135.i, align 8, !tbaa !8 ; 2 uses
  %.not91.i = icmp eq i64 %i.aw, %i.ax
  br i1 %.not91.i, label %bb.p, label %bb.q, !llvm.loop !164

bb.q:                                             ; preds = %.lr.ph
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %Abc_TtCompare2VarCofsRev.exit, label %Abc_TtSwapAdjacent.exit

Abc_TtCompare2VarCofsRev.exit:                    ; preds = %bb.q, %bb.n, %bb.i
  br i1 %i.e, label %bb.r, label %bb.s

bb.r:                                             ; preds = %Abc_TtCompare2VarCofsRev.exit
  %i.az = icmp sgt i32 %2, 0
  br i1 %i.az, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.r
  %i.ba = shl nuw nsw i32 1, %1
  %i.bb = sext i32 %1 to i64
  %i.bc = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.bb ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !8  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !8  ; 2 uses
  %i.bg = zext nneg i32 %i.ba to i64              ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !8  ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %2 to i64  ; 3 uses
  %min.iters.check535 = icmp ult i32 %2, 4
  br i1 %min.iters.check535, label %scalar.ph534.preheader, label %vector.ph536

vector.ph536:                                     ; preds = %.lr.ph64.i
  %n.vec537 = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert538 = insertelement <2 x i64> poison, i64 %i.bf, i64 0
  %broadcast.splat539 = shufflevector <2 x i64> %broadcast.splatinsert538, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert540 = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat541 = shufflevector <2 x i64> %broadcast.splatinsert540, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert542 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat543 = shufflevector <2 x i64> %broadcast.splatinsert542, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph536
  %index545 = phi i64 [ 0, %vector.ph536 ], [ %index.next548, %vector.body544 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index545 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %wide.load546 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !8 ; 3 uses
  %wide.load547 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !8 ; 3 uses
  %i.bl = and <2 x i64> %wide.load546, %broadcast.splat
  %i.bm = and <2 x i64> %wide.load547, %broadcast.splat
  %i.bn = and <2 x i64> %wide.load546, %broadcast.splat539
  %i.bo = and <2 x i64> %wide.load547, %broadcast.splat539
  %i.bp = shl <2 x i64> %i.bn, %broadcast.splat541
  %i.bq = shl <2 x i64> %i.bo, %broadcast.splat541
  %i.br = or <2 x i64> %i.bp, %i.bl
  %i.bs = or <2 x i64> %i.bq, %i.bm
  %i.bt = and <2 x i64> %wide.load546, %broadcast.splat543
  %i.bu = and <2 x i64> %wide.load547, %broadcast.splat543
  %i.bv = lshr <2 x i64> %i.bt, %broadcast.splat541
  %i.bw = lshr <2 x i64> %i.bu, %broadcast.splat541
  %i.bx = or <2 x i64> %i.br, %i.bv
  %i.by = or <2 x i64> %i.bs, %i.bw
  store <2 x i64> %i.bx, ptr %i.bj, align 8, !tbaa !8
  store <2 x i64> %i.by, ptr %i.bk, align 8, !tbaa !8
  %index.next548 = add nuw i64 %index545, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next548, %n.vec537
  br i1 %i.bz, label %middle.block549, label %vector.body544, !llvm.loop !165

middle.block549:                                  ; preds = %vector.body544
  %cmp.n550 = icmp eq i64 %n.vec537, %wide.trip.count73.i
  br i1 %cmp.n550, label %Abc_TtSwapAdjacent.exit, label %scalar.ph534.preheader

scalar.ph534.preheader:                           ; preds = %.lr.ph64.i, %middle.block549
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec537, %middle.block549 ]
  br label %scalar.ph534

scalar.ph534:                                     ; preds = %scalar.ph534.preheader, %scalar.ph534
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph534 ], [ %indvars.iv70.i.ph, %scalar.ph534.preheader ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !8  ; 3 uses
  %i.cc = and i64 %i.cb, %i.bd
  %i.cd = and i64 %i.cb, %i.bf
  %i.ce = shl i64 %i.cd, %i.bg
  %i.cf = or i64 %i.ce, %i.cc
  %i.cg = and i64 %i.cb, %i.bi
  %i.ch = lshr i64 %i.cg, %i.bg
  %i.ci = or i64 %i.cf, %i.ch
  store i64 %i.ci, ptr %i.ca, align 8, !tbaa !8
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph534, !llvm.loop !166

bb.s:                                             ; preds = %Abc_TtCompare2VarCofsRev.exit
  %i.cj = icmp eq i32 %1, 5
  %i.ck = sext i32 %2 to i64
  %.idx65.i = shl nsw i64 %i.ck, 3                ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %0, i64 %.idx65.i ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cm = icmp sgt i32 %2, 0
  br i1 %i.cm, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.05462.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %0, %bb.t ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.co = load <2 x i32>, ptr %i.cn, align 4, !tbaa !16
  %i.cp = shufflevector <2 x i32> %i.co, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.cp, ptr %i.cn, align 4, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %i.cl
  br i1 %i.cr, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !42

bb.u:                                             ; preds = %bb.s
  %i.cs = icmp samesign ult i32 %1, 7
  %i.ct = add nsw i32 %1, -6
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = select i1 %i.cs, i32 1, i32 %i.cu       ; 7 uses
  %i.cw = icmp sgt i32 %2, 0
  br i1 %i.cw, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.u
  %i.cx = icmp sgt i32 %i.cv, 0
  %i.cy = shl i32 %i.cv, 2                        ; 2 uses
  %i.cz = sext i32 %i.cy to i64                   ; 3 uses
  br i1 %i.cx, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.da = shl nuw nsw i32 %i.cv, 1
  %i.db = zext nneg i32 %i.cv to i64              ; 6 uses
  %i.dc = zext nneg i32 %i.da to i64              ; 2 uses
  %i.dd = shl nuw nsw i64 %i.db, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.dd
  %i.de = add i64 %.idx65.i, %i.a
  %i.df = shl nsw i64 %i.cz, 3                    ; 4 uses
  %i.dg = add i64 %i.df, %i.a
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.dg)
  %i.dh = sub i64 %umax, %i.a                     ; 2 uses
  %i.di = icmp ne i64 %i.dh, %i.df
  %umin = zext i1 %i.di to i64                    ; 2 uses
  %i.dj = or disjoint i64 %i.df, %umin
  %i.dk = sub i64 %i.dh, %i.dj
  %umax526 = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1)
  %i.dl = shl nuw nsw i64 %i.db, 4
  %i.dm = shl nuw nsw i64 %i.dc, 3                ; 2 uses
  %scevgep527 = getelementptr i8, ptr %0, i64 %i.dm
  %min.iters.check = icmp ult i32 %i.cv, 12
  %i.dn = getelementptr i8, ptr %0, i64 %i.dl
  %i.do = getelementptr i8, ptr %0, i64 %i.dd
  %scevgep529 = getelementptr i8, ptr %i.do, i64 %i.dm
  %stride.check = icmp slt i32 %i.cy, 0
  %n.vec = and i64 %i.db, 2147483644
  %xtraiter = and i64 %i.db, 1
  %i.dp = icmp eq i32 %i.cv, 1
  %unroll_iter = and i64 %i.db, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod666 = trunc i32 %i.cv to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.eb, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i120 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.db ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dc ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader.us.i
  br i1 %i.dp, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader.us.i
  %5 = udiv i64 %i.dk, %umax526
  %6 = add i64 %5, %umin
  %7 = mul i64 %6, %i.cz
  %8 = shl i64 %7, 3                              ; 2 uses
  %gep = getelementptr i8, ptr %i.dn, i64 %8
  %gep724 = getelementptr i8, ptr %scevgep529, i64 %8
  %bound0 = icmp ult ptr %scevgep, %gep724
  %bound1 = icmp ult ptr %scevgep527, %gep
  %found.conflict = and i1 %bound0, %bound1
  %9 = or i1 %found.conflict, %stride.check
  br i1 %9, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %index ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !8, !alias.scope !167, !noalias !170
  %wide.load531 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !8, !alias.scope !167, !noalias !170
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load532 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !8, !alias.scope !170
  %wide.load533 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !8, !alias.scope !170
  store <2 x i64> %wide.load532, ptr %i.dq, align 8, !tbaa !8, !alias.scope !167, !noalias !170
  store <2 x i64> %wide.load533, ptr %i.dr, align 8, !tbaa !8, !alias.scope !167, !noalias !170
  store <2 x i64> %wide.load, ptr %i.ds, align 8, !tbaa !8, !alias.scope !170
  store <2 x i64> %wide.load531, ptr %i.dt, align 8, !tbaa !8, !alias.scope !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %._crit_edge.us.i, label %vector.body, !llvm.loop !172

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i123.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep.i122 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %indvars.iv.i121 ; 2 uses
  %i.dv = load i64, ptr %gep.i122, align 8, !tbaa !8
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i121 ; 2 uses
  %i.dw = load i64, ptr %gep81.i, align 8, !tbaa !8
  store i64 %i.dw, ptr %gep.i122, align 8, !tbaa !8
  store i64 %i.dv, ptr %gep81.i, align 8, !tbaa !8
  %indvars.iv.next.i123 = or disjoint i64 %indvars.iv.i121, 1 ; 2 uses
  %gep.i122.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %indvars.iv.next.i123 ; 2 uses
  %i.dx = load i64, ptr %gep.i122.1, align 8, !tbaa !8
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i123 ; 2 uses
  %i.dy = load i64, ptr %gep81.i.1, align 8, !tbaa !8
  store i64 %i.dy, ptr %gep.i122.1, align 8, !tbaa !8
  store i64 %i.dx, ptr %gep81.i.1, align 8, !tbaa !8
  %indvars.iv.next.i123.1 = add nuw nsw i64 %indvars.iv.i121, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !173

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i121.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i123.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod666)
  %gep.i122.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i120, i64 %indvars.iv.i121.epil.init ; 2 uses
  %i.dz = load i64, ptr %gep.i122.epil, align 8, !tbaa !8
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i121.epil.init ; 2 uses
  %i.ea = load i64, ptr %gep81.i.epil, align 8, !tbaa !8
  store i64 %i.ea, ptr %gep.i122.epil, align 8, !tbaa !8
  store i64 %i.dz, ptr %gep81.i.epil, align 8, !tbaa !8
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.cz ; 2 uses
  %i.ec = icmp ult ptr %i.eb, %i.cl
  br i1 %i.ec, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !41

bb.v:                                             ; preds = %bb.e
  br i1 %i.e, label %.preheader.i145, label %bb.z

.preheader.i145:                                  ; preds = %bb.v
  %i.ed = sext i32 %1 to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.ed
  %i.ef = shl nuw nsw i32 1, %1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = icmp sgt i32 %2, 0
  br i1 %i.eh, label %.lr.ph513, label %Abc_TtCompare2VarCofsRev.exit148

.lr.ph513:                                        ; preds = %.preheader.i145
  %i.ei = zext nneg i32 %2 to i64
  %i.ej = load i64, ptr %i.ee, align 8, !tbaa !8  ; 2 uses
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.ek = trunc nuw i64 %i.em to i32
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %bb.x, label %Abc_TtCompare2VarCofsRev.exit148, !llvm.loop !161

bb.x:                                             ; preds = %.lr.ph513, %bb.w
  %indvars.iv117.i146512 = phi i64 [ %i.ei, %.lr.ph513 ], [ %i.em, %bb.w ]
  %i.em = add nsw i64 %indvars.iv117.i146512, -1  ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !8  ; 2 uses
  %i.ep = and i64 %i.ej, %i.eo                    ; 2 uses
  %i.eq = lshr i64 %i.eo, %i.eg
  %i.er = and i64 %i.eq, %i.ej                    ; 2 uses
  %.not94.i147 = icmp eq i64 %i.ep, %i.er
  br i1 %.not94.i147, label %bb.w, label %bb.y, !llvm.loop !161

bb.y:                                             ; preds = %bb.x
  %i.es = icmp ult i64 %i.ep, %i.er
  %i.et = select i1 %i.es, i32 -1, i32 1
  br label %Abc_TtCompare2VarCofsRev.exit148

bb.z:                                             ; preds = %bb.v
  %i.eu = icmp eq i32 %1, 5
  %i.ev = sext i32 %2 to i64                      ; 3 uses
  br i1 %i.eu, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ew = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ev
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ac, %bb.aa
  %.pn.i141 = phi ptr [ %i.ew, %bb.aa ], [ %.077.i142, %bb.ac ] ; 2 uses
  %.077.i142 = getelementptr inbounds i8, ptr %.pn.i141, i64 -16 ; 3 uses
  %.not92.i143 = icmp ult ptr %.077.i142, %0
  br i1 %.not92.i143, label %Abc_TtCompare2VarCofsRev.exit148, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = load i32, ptr %.077.i142, align 4, !tbaa !16 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.pn.i141, i64 -12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !16 ; 2 uses
  %.not93.i144 = icmp eq i32 %i.ex, %i.ez
  br i1 %.not93.i144, label %bb.ab, label %bb.ad, !llvm.loop !162

bb.ad:                                            ; preds = %bb.ac
  %i.fa = icmp ult i32 %i.ex, %i.ez
  %i.fb = select i1 %i.fa, i32 -1, i32 1
  br label %Abc_TtCompare2VarCofsRev.exit148

bb.ae:                                            ; preds = %bb.z
  %i.fc = icmp samesign ult i32 %1, 7
  %i.fd = add nsw i32 %1, -6                      ; 2 uses
  %i.fe = shl nuw i32 1, %i.fd                    ; 2 uses
  %i.ff = select i1 %i.fc, i32 1, i32 %i.fe       ; 3 uses
  %i.fg = shl nsw i32 %i.ff, 2
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = sub nsw i64 0, %i.fh
  %.idx108.i124 = sub nsw i64 %i.ev, %i.fh        ; 2 uses
  %.not106.i125 = icmp slt i64 %.idx108.i124, 0
  br i1 %.not106.i125, label %.thread, label %.preheader97.preheader.i126

.preheader97.preheader.i126:                      ; preds = %bb.ae
  %i.fj = shl nuw nsw i64 %.idx108.i124, 3
  %.076105.i127 = getelementptr inbounds nuw i8, ptr %0, i64 %i.fj
  %i.fk = sext i32 %i.ff to i64                   ; 2 uses
  %i.fl = icmp sgt i32 %i.ff, 0
  br label %.preheader97.i128

.loopexit98.i133:                                 ; preds = %bb.af, %.preheader97.i128
  %.076.i134 = getelementptr inbounds [8 x i8], ptr %.076107.i129, i64 %i.fi ; 2 uses
  %.not.i135 = icmp ult ptr %.076.i134, %0
  br i1 %.not.i135, label %Abc_TtCompare2VarCofsRev.exit148, label %.preheader97.i128, !llvm.loop !163

.preheader97.i128:                                ; preds = %.loopexit98.i133, %.preheader97.preheader.i126
  %.076107.i129 = phi ptr [ %.076.i134, %.loopexit98.i133 ], [ %.076105.i127, %.preheader97.preheader.i126 ] ; 3 uses
  %invariant.gep134.i131 = getelementptr [8 x i8], ptr %.076107.i129, i64 %i.fk
  br i1 %i.fl, label %.lr.ph511, label %.loopexit98.i133

bb.af:                                            ; preds = %.lr.ph511
  %i.fm = icmp sgt i64 %indvars.iv.i132510, 1
  br i1 %i.fm, label %.lr.ph511, label %.loopexit98.i133, !llvm.loop !164

.lr.ph511:                                        ; preds = %.preheader97.i128, %bb.af
  %indvars.iv.i132510 = phi i64 [ %indvars.iv.next.i137, %bb.af ], [ %i.fk, %.preheader97.i128 ] ; 2 uses
  %indvars.iv.next.i137 = add nsw i64 %indvars.iv.i132510, -1 ; 3 uses
  %gep.i138 = getelementptr [8 x i8], ptr %.076107.i129, i64 %indvars.iv.next.i137
  %i.fn = load i64, ptr %gep.i138, align 8, !tbaa !8 ; 2 uses
  %gep135.i139 = getelementptr [8 x i8], ptr %invariant.gep134.i131, i64 %indvars.iv.next.i137
  %i.fo = load i64, ptr %gep135.i139, align 8, !tbaa !8 ; 2 uses
  %.not91.i140 = icmp eq i64 %i.fn, %i.fo
  br i1 %.not91.i140, label %bb.af, label %bb.ag, !llvm.loop !164

bb.ag:                                            ; preds = %.lr.ph511
  %i.fp = icmp ult i64 %i.fn, %i.fo
  %i.fq = select i1 %i.fp, i32 -1, i32 1
  br label %Abc_TtCompare2VarCofsRev.exit148

Abc_TtCompare2VarCofsRev.exit148:                 ; preds = %.loopexit98.i133, %bb.ab, %bb.w, %.preheader.i145, %bb.y, %bb.ad, %bb.ag
  %.4.i136 = phi i32 [ 0, %bb.ab ], [ 0, %.preheader.i145 ], [ %i.et, %bb.y ], [ %i.fb, %bb.ad ], [ %i.fq, %bb.ag ], [ 0, %bb.w ], [ 0, %.loopexit98.i133 ] ; 8 uses
  br i1 %i.e, label %.preheader.i170, label %bb.ak

.preheader.i170:                                  ; preds = %Abc_TtCompare2VarCofsRev.exit148
  %i.fr = shl nuw nsw i32 2, %1
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = sext i32 %1 to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.ft
  %i.fv = shl nuw nsw i32 3, %1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = icmp sgt i32 %2, 0
  br i1 %i.fx, label %.lr.ph517, label %.loopexit288

.lr.ph517:                                        ; preds = %.preheader.i170
  %i.fy = zext nneg i32 %2 to i64
  %i.fz = load i64, ptr %i.fu, align 8, !tbaa !8  ; 2 uses
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ai
  %i.ga = trunc nuw i64 %i.gc to i32
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %bb.ai, label %.loopexit288, !llvm.loop !161

bb.ai:                                            ; preds = %.lr.ph517, %bb.ah
  %indvars.iv117.i171516 = phi i64 [ %i.fy, %.lr.ph517 ], [ %i.gc, %bb.ah ]
  %i.gc = add nsw i64 %indvars.iv117.i171516, -1  ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.gc
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !8  ; 2 uses
  %i.gf = lshr i64 %i.ge, %i.fs
  %i.gg = and i64 %i.gf, %i.fz                    ; 2 uses
  %i.gh = lshr i64 %i.ge, %i.fw
  %i.gi = and i64 %i.gh, %i.fz                    ; 2 uses
  %.not94.i172 = icmp eq i64 %i.gg, %i.gi
  br i1 %.not94.i172, label %bb.ah, label %bb.aj, !llvm.loop !161

bb.aj:                                            ; preds = %bb.ai
  %i.gj = icmp ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %Abc_TtCompare2VarCofsRev.exit173, label %.loopexit288

bb.ak:                                            ; preds = %Abc_TtCompare2VarCofsRev.exit148
  %i.gk = icmp eq i32 %1, 5
  %i.gl = sext i32 %2 to i64                      ; 2 uses
  br i1 %i.gk, label %bb.al, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak
  %.pre376 = add nsw i32 %1, -6                   ; 2 uses
  %.pre378 = shl nuw i32 1, %.pre376
  br label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.gm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.gl
  br label %bb.am

bb.am:                                            ; preds = %bb.an, %bb.al
  %.pn.i166 = phi ptr [ %i.gm, %bb.al ], [ %.077.i167, %bb.an ] ; 3 uses
  %.077.i167 = getelementptr inbounds i8, ptr %.pn.i166, i64 -16 ; 2 uses
  %.not92.i168 = icmp ult ptr %.077.i167, %0
  br i1 %.not92.i168, label %.loopexit288, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gn = getelementptr inbounds i8, ptr %.pn.i166, i64 -8
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !16 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.pn.i166, i64 -4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !16 ; 2 uses
  %.not93.i169 = icmp eq i32 %i.go, %i.gq
  br i1 %.not93.i169, label %bb.am, label %bb.ao, !llvm.loop !162

bb.ao:                                            ; preds = %bb.an
  %i.gr = icmp ult i32 %i.go, %i.gq
  br i1 %i.gr, label %Abc_TtCompare2VarCofsRev.exit173, label %.loopexit288

.thread:                                          ; preds = %bb.ae, %._crit_edge
  %.pre-phi379 = phi i32 [ %.pre378, %._crit_edge ], [ %i.fe, %bb.ae ] ; 2 uses
end_hunk_1
begin_hunk_2_@Abc_TtCofactorPermConfig:bb.a

bb.bw:                                            ; preds = %bb.bv
  %i.ky = getelementptr inbounds i8, ptr %.pn.i216, i64 -12
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !16 ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %.pn.i216, i64 -8
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !16 ; 2 uses
  %.not93.i219 = icmp eq i32 %i.kz, %i.lb
  br i1 %.not93.i219, label %bb.bv, label %bb.bx, !llvm.loop !162

bb.bx:                                            ; preds = %bb.bw
  %i.lc = icmp ult i32 %i.kz, %i.lb
  br i1 %i.lc, label %Abc_TtCompare2VarCofsRev.exit223, label %Abc_TtSwapAdjacent.exit

bb.by:                                            ; preds = %bb.bt
  %i.ld = icmp samesign ult i32 %1, 7             ; 2 uses
  %i.le = add nsw i32 %1, -6                      ; 2 uses
  %i.lf = shl nuw i32 1, %i.le
  %i.lg = select i1 %i.ld, i32 1, i32 %i.lf       ; 3 uses
  %i.lh = shl nsw i32 %i.lg, 2
  %i.li = sext i32 %i.lh to i64                   ; 2 uses
  %i.lj = sub nsw i64 0, %i.li
  %.idx108.i199 = sub nsw i64 %i.kw, %i.li        ; 2 uses
  %.not106.i200 = icmp slt i64 %.idx108.i199, 0
  br i1 %.not106.i200, label %Abc_TtSwapAdjacent.exit, label %.preheader97.preheader.i201

.preheader97.preheader.i201:                      ; preds = %bb.by
  %i.lk = shl nuw nsw i64 %.idx108.i199, 3
  %.076105.i202 = getelementptr inbounds nuw i8, ptr %0, i64 %i.lk
  %i.ll = select i1 %i.ld, i32 0, i32 %i.le       ; 2 uses
  %i.lm = shl i32 2, %i.ll
  %i.ln = shl nuw i32 1, %i.ll
  %i.lo = sext i32 %i.lg to i64
  %i.lp = sext i32 %i.ln to i64
  %i.lq = sext i32 %i.lm to i64
  %i.lr = icmp sgt i32 %i.lg, 0
  br label %.preheader97.i203

.loopexit98.i208:                                 ; preds = %bb.bz, %.preheader97.i203
  %.076.i209 = getelementptr inbounds [8 x i8], ptr %.076107.i204, i64 %i.lj ; 2 uses
  %.not.i210 = icmp ult ptr %.076.i209, %0
  br i1 %.not.i210, label %Abc_TtSwapAdjacent.exit, label %.preheader97.i203, !llvm.loop !163

.preheader97.i203:                                ; preds = %.loopexit98.i208, %.preheader97.preheader.i201
  %.076107.i204 = phi ptr [ %.076.i209, %.loopexit98.i208 ], [ %.076105.i202, %.preheader97.preheader.i201 ] ; 3 uses
  %invariant.gep.i205 = getelementptr [8 x i8], ptr %.076107.i204, i64 %i.lp
  %invariant.gep134.i206 = getelementptr [8 x i8], ptr %.076107.i204, i64 %i.lq
  br i1 %i.lr, label %.lr.ph523, label %.loopexit98.i208

bb.bz:                                            ; preds = %.lr.ph523
  %i.ls = icmp sgt i64 %indvars.iv.i207522, 1
  br i1 %i.ls, label %.lr.ph523, label %.loopexit98.i208, !llvm.loop !164

.lr.ph523:                                        ; preds = %.preheader97.i203, %bb.bz
  %indvars.iv.i207522 = phi i64 [ %indvars.iv.next.i212, %bb.bz ], [ %i.lo, %.preheader97.i203 ] ; 2 uses
  %indvars.iv.next.i212 = add nsw i64 %indvars.iv.i207522, -1 ; 3 uses
  %gep.i213 = getelementptr [8 x i8], ptr %invariant.gep.i205, i64 %indvars.iv.next.i212
  %i.lt = load i64, ptr %gep.i213, align 8, !tbaa !8 ; 2 uses
  %gep135.i214 = getelementptr [8 x i8], ptr %invariant.gep134.i206, i64 %indvars.iv.next.i212
  %i.lu = load i64, ptr %gep135.i214, align 8, !tbaa !8 ; 2 uses
  %.not91.i215 = icmp eq i64 %i.lt, %i.lu
  br i1 %.not91.i215, label %bb.bz, label %bb.ca, !llvm.loop !164

bb.ca:                                            ; preds = %.lr.ph523
  %i.lv = icmp ult i64 %i.lt, %i.lu
  br i1 %i.lv, label %Abc_TtCompare2VarCofsRev.exit223, label %Abc_TtSwapAdjacent.exit

Abc_TtCompare2VarCofsRev.exit223:                 ; preds = %bb.ca, %bb.bx, %bb.bs
  br i1 %i.e, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %Abc_TtCompare2VarCofsRev.exit223
  %i.lw = icmp sgt i32 %2, 0
  br i1 %i.lw, label %.lr.ph64.i239, label %Abc_TtSwapAdjacent.exit244

.lr.ph64.i239:                                    ; preds = %bb.cb
  %i.lx = shl nuw nsw i32 1, %1
  %i.ly = sext i32 %1 to i64
  %i.lz = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.ly ; 3 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !8  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !8  ; 2 uses
  %i.md = zext nneg i32 %i.lx to i64              ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !8  ; 2 uses
  %wide.trip.count73.i240 = zext nneg i32 %2 to i64 ; 3 uses
  %min.iters.check580 = icmp ult i32 %2, 4
  br i1 %min.iters.check580, label %scalar.ph579.preheader, label %vector.ph581

vector.ph581:                                     ; preds = %.lr.ph64.i239
  %n.vec582 = and i64 %wide.trip.count73.i240, 2147483644 ; 3 uses
  %broadcast.splatinsert583 = insertelement <2 x i64> poison, i64 %i.ma, i64 0
  %broadcast.splat584 = shufflevector <2 x i64> %broadcast.splatinsert583, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert585 = insertelement <2 x i64> poison, i64 %i.mc, i64 0
  %broadcast.splat586 = shufflevector <2 x i64> %broadcast.splatinsert585, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert587 = insertelement <2 x i64> poison, i64 %i.md, i64 0
  %broadcast.splat588 = shufflevector <2 x i64> %broadcast.splatinsert587, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert589 = insertelement <2 x i64> poison, i64 %i.mf, i64 0
  %broadcast.splat590 = shufflevector <2 x i64> %broadcast.splatinsert589, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body591

vector.body591:                                   ; preds = %vector.body591, %vector.ph581
  %index592 = phi i64 [ 0, %vector.ph581 ], [ %index.next595, %vector.body591 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index592 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16 ; 2 uses
  %wide.load593 = load <2 x i64>, ptr %i.mg, align 8, !tbaa !8 ; 3 uses
  %wide.load594 = load <2 x i64>, ptr %i.mh, align 8, !tbaa !8 ; 3 uses
  %i.mi = and <2 x i64> %wide.load593, %broadcast.splat584
  %i.mj = and <2 x i64> %wide.load594, %broadcast.splat584
  %i.mk = and <2 x i64> %wide.load593, %broadcast.splat586
  %i.ml = and <2 x i64> %wide.load594, %broadcast.splat586
  %i.mm = shl <2 x i64> %i.mk, %broadcast.splat588
  %i.mn = shl <2 x i64> %i.ml, %broadcast.splat588
  %i.mo = or <2 x i64> %i.mm, %i.mi
  %i.mp = or <2 x i64> %i.mn, %i.mj
  %i.mq = and <2 x i64> %wide.load593, %broadcast.splat590
  %i.mr = and <2 x i64> %wide.load594, %broadcast.splat590
  %i.ms = lshr <2 x i64> %i.mq, %broadcast.splat588
  %i.mt = lshr <2 x i64> %i.mr, %broadcast.splat588
  %i.mu = or <2 x i64> %i.mo, %i.ms
  %i.mv = or <2 x i64> %i.mp, %i.mt
  store <2 x i64> %i.mu, ptr %i.mg, align 8, !tbaa !8
  store <2 x i64> %i.mv, ptr %i.mh, align 8, !tbaa !8
  %index.next595 = add nuw i64 %index592, 4       ; 2 uses
  %i.mw = icmp eq i64 %index.next595, %n.vec582
  br i1 %i.mw, label %middle.block596, label %vector.body591, !llvm.loop !174

middle.block596:                                  ; preds = %vector.body591
  %cmp.n597 = icmp eq i64 %n.vec582, %wide.trip.count73.i240
  br i1 %cmp.n597, label %Abc_TtSwapAdjacent.exit244, label %scalar.ph579.preheader

scalar.ph579.preheader:                           ; preds = %.lr.ph64.i239, %middle.block596
  %indvars.iv70.i241.ph = phi i64 [ 0, %.lr.ph64.i239 ], [ %n.vec582, %middle.block596 ]
  br label %scalar.ph579

scalar.ph579:                                     ; preds = %scalar.ph579.preheader, %scalar.ph579
  %indvars.iv70.i241 = phi i64 [ %indvars.iv.next71.i242, %scalar.ph579 ], [ %indvars.iv70.i241.ph, %scalar.ph579.preheader ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.i241 ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !8  ; 3 uses
  %i.mz = and i64 %i.my, %i.ma
  %i.na = and i64 %i.my, %i.mc
  %i.nb = shl i64 %i.na, %i.md
  %i.nc = or i64 %i.nb, %i.mz
  %i.nd = and i64 %i.my, %i.mf
  %i.ne = lshr i64 %i.nd, %i.md
  %i.nf = or i64 %i.nc, %i.ne
  store i64 %i.nf, ptr %i.mx, align 8, !tbaa !8
  %indvars.iv.next71.i242 = add nuw nsw i64 %indvars.iv70.i241, 1 ; 2 uses
  %exitcond74.not.i243 = icmp eq i64 %indvars.iv.next71.i242, %wide.trip.count73.i240
  br i1 %exitcond74.not.i243, label %Abc_TtSwapAdjacent.exit244, label %scalar.ph579, !llvm.loop !175

bb.cc:                                            ; preds = %Abc_TtCompare2VarCofsRev.exit223
  %i.ng = icmp eq i32 %1, 5
  %i.nh = sext i32 %2 to i64
  %.idx65.i224 = shl nsw i64 %i.nh, 3             ; 2 uses
  %i.ni = getelementptr inbounds i8, ptr %0, i64 %.idx65.i224 ; 2 uses
  br i1 %i.ng, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.nj = icmp sgt i32 %2, 0
  br i1 %i.nj, label %.lr.ph.i237, label %Abc_TtSwapAdjacent.exit244

.lr.ph.i237:                                      ; preds = %bb.cd, %.lr.ph.i237
  %.05462.i238 = phi ptr [ %i.nn, %.lr.ph.i237 ], [ %0, %bb.cd ] ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.05462.i238, i64 4 ; 2 uses
  %i.nl = load <2 x i32>, ptr %i.nk, align 4, !tbaa !16
  %i.nm = shufflevector <2 x i32> %i.nl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.nm, ptr %i.nk, align 4, !tbaa !16
  %i.nn = getelementptr inbounds nuw i8, ptr %.05462.i238, i64 16 ; 2 uses
  %i.no = icmp ult ptr %i.nn, %i.ni
  br i1 %i.no, label %.lr.ph.i237, label %Abc_TtSwapAdjacent.exit244, !llvm.loop !42

bb.ce:                                            ; preds = %bb.cc
  %i.np = icmp samesign ult i32 %1, 7
  %i.nq = add nsw i32 %1, -6
  %i.nr = shl nuw i32 1, %i.nq
  %i.ns = select i1 %i.np, i32 1, i32 %i.nr       ; 7 uses
  %i.nt = icmp sgt i32 %2, 0
  br i1 %i.nt, label %.preheader.lr.ph.i225, label %Abc_TtSwapAdjacent.exit244

.preheader.lr.ph.i225:                            ; preds = %bb.ce
  %i.nu = icmp sgt i32 %i.ns, 0
  %i.nv = shl i32 %i.ns, 2                        ; 2 uses
  %i.nw = sext i32 %i.nv to i64                   ; 3 uses
  br i1 %i.nu, label %.preheader.us.preheader.i226, label %Abc_TtSwapAdjacent.exit244

.preheader.us.preheader.i226:                     ; preds = %.preheader.lr.ph.i225
  %i.nx = shl nuw nsw i32 %i.ns, 1
  %i.ny = zext nneg i32 %i.ns to i64              ; 6 uses
  %i.nz = zext nneg i32 %i.nx to i64              ; 2 uses
  %i.oa = shl nuw nsw i64 %i.ny, 3                ; 2 uses
  %scevgep553 = getelementptr i8, ptr %0, i64 %i.oa
  %i.ob = add i64 %.idx65.i224, %i.a
  %i.oc = shl nsw i64 %i.nw, 3                    ; 4 uses
  %i.od = add i64 %i.oc, %i.a
  %umax554 = tail call i64 @llvm.umax.i64(i64 %i.ob, i64 %i.od)
  %i.oe = sub i64 %umax554, %i.a                  ; 2 uses
  %i.of = icmp ne i64 %i.oe, %i.oc
  %umin555 = zext i1 %i.of to i64                 ; 2 uses
  %i.og = or disjoint i64 %i.oc, %umin555
  %i.oh = sub i64 %i.oe, %i.og
  %umax556 = tail call i64 @llvm.umax.i64(i64 %i.oc, i64 1)
  %i.oi = shl nuw nsw i64 %i.ny, 4
  %i.oj = shl nuw nsw i64 %i.nz, 3                ; 2 uses
  %scevgep557 = getelementptr i8, ptr %0, i64 %i.oj
  %min.iters.check566 = icmp ult i32 %i.ns, 12
  %i.ok = getelementptr i8, ptr %0, i64 %i.oi
  %i.ol = getelementptr i8, ptr %0, i64 %i.oa
  %scevgep559 = getelementptr i8, ptr %i.ol, i64 %i.oj
  %stride.check563 = icmp slt i32 %i.nv, 0
  %n.vec568 = and i64 %i.ny, 2147483644
  %xtraiter667 = and i64 %i.ny, 1
  %i.om = icmp eq i32 %i.ns, 1
  %unroll_iter670 = and i64 %i.ny, 2147483646
  %lcmp.mod668.not = icmp eq i64 %xtraiter667, 0
  %lcmp.mod669 = trunc i32 %i.ns to i1
  br label %.preheader.us.i227

.preheader.us.i227:                               ; preds = %._crit_edge.us.i236, %.preheader.us.preheader.i226
  %.061.us.i228 = phi ptr [ %i.oy, %._crit_edge.us.i236 ], [ %0, %.preheader.us.preheader.i226 ] ; 3 uses
  %invariant.gep.i229 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i228, i64 %i.ny ; 4 uses
  %invariant.gep80.i230 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i228, i64 %i.nz ; 4 uses
  br i1 %min.iters.check566, label %scalar.ph565.preheader, label %scalar.ph565.preheader.a

scalar.ph565.preheader:                           ; preds = %scalar.ph565.preheader.a, %.preheader.us.i227
  br i1 %i.om, label %scalar.ph565.epil.preheader, label %scalar.ph565

scalar.ph565.preheader.a:                         ; preds = %.preheader.us.i227
  %10 = udiv i64 %i.oh, %umax556
  %11 = add i64 %10, %umin555
  %12 = mul i64 %11, %i.nw
  %13 = shl i64 %12, 3                            ; 2 uses
  %gep726 = getelementptr i8, ptr %i.ok, i64 %13
  %gep730 = getelementptr i8, ptr %scevgep559, i64 %13
  %bound0560 = icmp ult ptr %scevgep553, %gep730
  %bound1561 = icmp ult ptr %scevgep557, %gep726
  %found.conflict562 = and i1 %bound0560, %bound1561
  %14 = or i1 %found.conflict562, %stride.check563
  br i1 %14, label %scalar.ph565.preheader, label %vector.body569

vector.body569:                                   ; preds = %scalar.ph565.preheader.a, %vector.body569
  %index570 = phi i64 [ %index.next575, %vector.body569 ], [ 0, %scalar.ph565.preheader.a ] ; 3 uses
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %index570 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16 ; 2 uses
  %wide.load571 = load <2 x i64>, ptr %i.on, align 8, !tbaa !8, !alias.scope !176, !noalias !179
  %wide.load572 = load <2 x i64>, ptr %i.oo, align 8, !tbaa !8, !alias.scope !176, !noalias !179
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %index570 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16 ; 2 uses
  %wide.load573 = load <2 x i64>, ptr %i.op, align 8, !tbaa !8, !alias.scope !179
  %wide.load574 = load <2 x i64>, ptr %i.oq, align 8, !tbaa !8, !alias.scope !179
  store <2 x i64> %wide.load573, ptr %i.on, align 8, !tbaa !8, !alias.scope !176, !noalias !179
  store <2 x i64> %wide.load574, ptr %i.oo, align 8, !tbaa !8, !alias.scope !176, !noalias !179
  store <2 x i64> %wide.load571, ptr %i.op, align 8, !tbaa !8, !alias.scope !179
  store <2 x i64> %wide.load572, ptr %i.oq, align 8, !tbaa !8, !alias.scope !179
  %index.next575 = add nuw i64 %index570, 4       ; 2 uses
  %i.or = icmp eq i64 %index.next575, %n.vec568
  br i1 %i.or, label %._crit_edge.us.i236, label %vector.body569, !llvm.loop !181

scalar.ph565:                                     ; preds = %scalar.ph565.preheader, %scalar.ph565
  %indvars.iv.i231 = phi i64 [ %indvars.iv.next.i234.1, %scalar.ph565 ], [ 0, %scalar.ph565.preheader ] ; 4 uses
  %niter671 = phi i64 [ %niter671.next.1, %scalar.ph565 ], [ 0, %scalar.ph565.preheader ]
  %gep.i232 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %indvars.iv.i231 ; 2 uses
  %i.os = load i64, ptr %gep.i232, align 8, !tbaa !8
  %gep81.i233 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %indvars.iv.i231 ; 2 uses
  %i.ot = load i64, ptr %gep81.i233, align 8, !tbaa !8
  store i64 %i.ot, ptr %gep.i232, align 8, !tbaa !8
  store i64 %i.os, ptr %gep81.i233, align 8, !tbaa !8
  %indvars.iv.next.i234 = or disjoint i64 %indvars.iv.i231, 1 ; 2 uses
  %gep.i232.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %indvars.iv.next.i234 ; 2 uses
  %i.ou = load i64, ptr %gep.i232.1, align 8, !tbaa !8
  %gep81.i233.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %indvars.iv.next.i234 ; 2 uses
  %i.ov = load i64, ptr %gep81.i233.1, align 8, !tbaa !8
  store i64 %i.ov, ptr %gep.i232.1, align 8, !tbaa !8
  store i64 %i.ou, ptr %gep81.i233.1, align 8, !tbaa !8
  %indvars.iv.next.i234.1 = add nuw nsw i64 %indvars.iv.i231, 2 ; 2 uses
  %niter671.next.1 = add i64 %niter671, 2         ; 2 uses
  %niter671.ncmp.1 = icmp eq i64 %niter671.next.1, %unroll_iter670
  br i1 %niter671.ncmp.1, label %._crit_edge.us.i236.loopexit.unr-lcssa, label %scalar.ph565, !llvm.loop !182

._crit_edge.us.i236.loopexit.unr-lcssa:           ; preds = %scalar.ph565
  br i1 %lcmp.mod668.not, label %._crit_edge.us.i236, label %scalar.ph565.epil.preheader

scalar.ph565.epil.preheader:                      ; preds = %._crit_edge.us.i236.loopexit.unr-lcssa, %scalar.ph565.preheader
  %indvars.iv.i231.epil.init = phi i64 [ 0, %scalar.ph565.preheader ], [ %indvars.iv.next.i234.1, %._crit_edge.us.i236.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod669)
  %gep.i232.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i229, i64 %indvars.iv.i231.epil.init ; 2 uses
  %i.ow = load i64, ptr %gep.i232.epil, align 8, !tbaa !8
  %gep81.i233.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i230, i64 %indvars.iv.i231.epil.init ; 2 uses
  %i.ox = load i64, ptr %gep81.i233.epil, align 8, !tbaa !8
  store i64 %i.ox, ptr %gep.i232.epil, align 8, !tbaa !8
  store i64 %i.ow, ptr %gep81.i233.epil, align 8, !tbaa !8
  br label %._crit_edge.us.i236

._crit_edge.us.i236:                              ; preds = %vector.body569, %scalar.ph565.epil.preheader, %._crit_edge.us.i236.loopexit.unr-lcssa
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i228, i64 %i.nw ; 2 uses
  %i.oz = icmp ult ptr %i.oy, %i.ni
  br i1 %i.oz, label %.preheader.us.i227, label %Abc_TtSwapAdjacent.exit244, !llvm.loop !41

Abc_TtSwapAdjacent.exit244:                       ; preds = %._crit_edge.us.i236, %.lr.ph.i237, %scalar.ph579, %middle.block596, %bb.cb, %bb.cd, %bb.ce, %.preheader.lr.ph.i225
  %i.pa = or disjoint i32 %.0, 4
  br label %Abc_TtSwapAdjacent.exit

Abc_TtSwapAdjacent.exit:                          ; preds = %.loopexit98.i, %bb.l, %bb.g, %._crit_edge.us.i, %.lr.ph.i, %scalar.ph534, %.loopexit98.i208, %bb.bv, %bb.bq, %.preheader.i, %middle.block549, %.preheader.i220, %bb.ca, %bb.bx, %bb.bs, %bb.by, %bb.q, %bb.n, %bb.i, %bb.o, %.preheader.lr.ph.i, %bb.u, %bb.t, %bb.r, %Abc_TtSwapAdjacent.exit244, %bb.d, %bb.b
  %.0112 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.d ], [ %.0, %.preheader.i220 ], [ 4, %scalar.ph534 ], [ %i.pa, %Abc_TtSwapAdjacent.exit244 ], [ 4, %bb.r ], [ 4, %middle.block549 ], [ 4, %bb.t ], [ %.0, %.loopexit98.i208 ], [ 4, %bb.u ], [ 4, %.preheader.lr.ph.i ], [ 4, %._crit_edge.us.i ], [ 0, %bb.o ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %.preheader.i ], [ 0, %bb.l ], [ %.0, %bb.by ], [ %.0, %bb.bs ], [ %.0, %bb.bx ], [ %.0, %bb.ca ], [ %.0, %bb.bq ], [ 0, %bb.g ], [ %.0, %bb.bv ], [ 4, %.lr.ph.i ], [ 0, %.loopexit98.i ]
  ret i32 %.0112
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i32 -1, 2) i32 @Abc_TtCompare2VarCofsRev(ptr nofree noundef readonly captures(address) %0, i32 noundef range(i32 2, 1) %1, i32 noundef %2, i32 noundef range(i32 0, 3) %3, i32 noundef range(i32 1, 4) %4) unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %2, 5
  br i1 %i.a, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.b = shl nuw nsw i32 %3, %2
  %i.c = zext nneg i32 %i.b to i64
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr @s_CMasks6, i64 %i.d
  %i.f = shl nuw nsw i32 %4, %2
  %i.g = zext nneg i32 %i.f to i64
  %i.h = icmp sgt i32 %1, 0
  br i1 %i.h, label %.lr.ph145, label %.loopexit

.lr.ph145:                                        ; preds = %.preheader
  %i.i = zext nneg i32 %1 to i64
  %i.j = load i64, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.m to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.loopexit, !llvm.loop !161

bb.c:                                             ; preds = %.lr.ph145, %bb.b
  %indvars.iv117144 = phi i64 [ %i.i, %.lr.ph145 ], [ %i.m, %bb.b ]
  %i.m = add nsw i64 %indvars.iv117144, -1        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.p = lshr i64 %i.o, %i.c
  %i.q = and i64 %i.p, %i.j                       ; 2 uses
  %i.r = lshr i64 %i.o, %i.g
  %i.s = and i64 %i.r, %i.j                       ; 2 uses
  %.not94 = icmp eq i64 %i.q, %i.s
  br i1 %.not94, label %bb.b, label %bb.d, !llvm.loop !161

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.q, %i.s
  %i.u = select i1 %i.t, i32 -1, i32 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.v = icmp eq i32 %2, 5
  %i.w = sext i32 %1 to i64                       ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = zext nneg i32 %3 to i64
  %i.z = zext nneg i32 %4 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn = phi ptr [ %i.x, %bb.f ], [ %.077, %bb.h ]
  %.077 = getelementptr inbounds i8, ptr %.pn, i64 -16 ; 4 uses
  %.not92 = icmp ult ptr %.077, %0
  br i1 %.not92, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.077, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.077, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !16 ; 2 uses
  %.not93 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not93, label %bb.g, label %bb.i, !llvm.loop !162

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp ult i32 %i.ab, %i.ad
  %i.af = select i1 %i.ae, i32 -1, i32 1
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i32 %2, 7             ; 2 uses
  %i.ah = add nsw i32 %2, -6                      ; 2 uses
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = select i1 %i.ag, i32 1, i32 %i.ai       ; 3 uses
  %i.ak = shl nsw i32 %i.aj, 2
  %i.al = sext i32 %i.ak to i64                   ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.idx108 = sub nsw i64 %i.w, %i.al              ; 2 uses
  %.not106 = icmp slt i64 %.idx108, 0
  br i1 %.not106, label %.loopexit, label %.preheader97.preheader

.preheader97.preheader:                           ; preds = %bb.j
  %i.an = shl nuw nsw i64 %.idx108, 3
  %.076105 = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  %i.ao = select i1 %i.ag, i32 0, i32 %i.ah       ; 2 uses
  %i.ap = shl i32 %4, %i.ao
  %i.aq = shl i32 %3, %i.ao
  %i.ar = sext i32 %i.aj to i64
  %i.as = sext i32 %i.aq to i64
  %i.at = sext i32 %i.ap to i64
  %i.au = icmp sgt i32 %i.aj, 0
  br label %.preheader97

.loopexit98:                                      ; preds = %bb.k, %.preheader97
  %.076 = getelementptr inbounds [8 x i8], ptr %.076107, i64 %i.am ; 2 uses
  %.not = icmp ult ptr %.076, %0
  br i1 %.not, label %.loopexit, label %.preheader97, !llvm.loop !163

.preheader97:                                     ; preds = %.preheader97.preheader, %.loopexit98
  %.076107 = phi ptr [ %.076, %.loopexit98 ], [ %.076105, %.preheader97.preheader ] ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.076107, i64 %i.as
  %invariant.gep134 = getelementptr [8 x i8], ptr %.076107, i64 %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit98

bb.k:                                             ; preds = %.lr.ph
  %i.av = icmp sgt i64 %indvars.iv143, 1
  br i1 %i.av, label %.lr.ph, label %.loopexit98, !llvm.loop !164

.lr.ph:                                           ; preds = %.preheader97, %bb.k
  %indvars.iv143 = phi i64 [ %indvars.iv.next, %bb.k ], [ %i.ar, %.preheader97 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv143, -1 ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.aw = load i64, ptr %gep, align 8, !tbaa !8   ; 2 uses
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %indvars.iv.next
  %i.ax = load i64, ptr %gep135, align 8, !tbaa !8 ; 2 uses
  %.not91 = icmp eq i64 %i.aw, %i.ax
  br i1 %.not91, label %bb.k, label %bb.l, !llvm.loop !164

bb.l:                                             ; preds = %.lr.ph
  %i.ay = icmp ult i64 %i.aw, %i.ax
  %i.az = select i1 %i.ay, i32 -1, i32 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit98, %bb.g, %bb.b, %.preheader, %bb.j, %bb.l, %bb.i, %bb.d
  %.4 = phi i32 [ 0, %bb.g ], [ 0, %bb.j ], [ %i.u, %bb.d ], [ %i.af, %bb.i ], [ %i.az, %bb.l ], [ 0, %.preheader ], [ 0, %bb.b ], [ 0, %.loopexit98 ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 8) i32 @Abc_TtCofactorPerm(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @Abc_TtCofactorPermConfig(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0) ; 3 uses
  %.not64 = icmp eq i32 %i.a, 0
  br i1 %.not64, label %Abc_TtCopy.exit72, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %5, align 4, !tbaa !16     ; 3 uses
  %i.c = lshr i32 %i.b, %1
  %i.d = add nsw i32 %1, 1                        ; 3 uses
  %i.e = lshr i32 %i.b, %i.d
  %i.f = xor i32 %i.c, %i.e
  %i.g = and i32 %i.f, 1
  %.not65 = icmp eq i32 %i.g, 0
  br i1 %.not65, label %Abc_TtCopy.exit72.sink.split, label %Abc_TtCopy.exit72.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.h, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %bb.d
  %wide.trip.count24.i = zext nneg i32 %2 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph18.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph18.preheader.i
  %n.vec = and i64 %wide.trip.count24.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !8
  %wide.load92 = load <2 x i64>, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @Abc_TtCofactorPerm.pCopy1, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %wide.load, ptr %i.k, align 16, !tbaa !8
  store <2 x i64> %wide.load92, ptr %i.l, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
end_hunk_2
begin_hunk_3_@Abc_TgSwapAdjacentSymGroups:bb.a

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph30.i
  %.123.lcssa.i = phi i32 [ %.02227.i, %.lr.ph30.i ], [ %i.ai, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41.i, %i.aa
  br i1 %exitcond.not, label %._crit_edge31.i.loopexit, label %.lr.ph30.i, !llvm.loop !312

._crit_edge31.i.loopexit:                         ; preds = %._crit_edge.i
  %i.aj = sext i32 %.123.lcssa.i to i64
  br label %._crit_edge31.i

._crit_edge31.i:                                  ; preds = %._crit_edge31.i.loopexit, %bb.c
  %.022.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.aj, %._crit_edge31.i.loopexit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !313
  %i.am = sext i32 %i.al to i64
  %.1.in.in33.i = getelementptr inbounds i8, ptr %i.o, i64 %i.am
  %.1.in34.i = load i8, ptr %.1.in.in33.i, align 1, !tbaa !187 ; 2 uses
  %i.an = icmp sgt i8 %.1.in34.i, -1
  br i1 %i.an, label %.lr.ph38.i, label %Abc_TgExpendSymmetry.exit

.lr.ph38.i:                                       ; preds = %._crit_edge31.i, %.lr.ph38.i
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %.lr.ph38.i ], [ %.022.lcssa.i, %._crit_edge31.i ] ; 2 uses
  %.1.in36.i = phi i8 [ %.1.in.i, %.lr.ph38.i ], [ %.1.in34.i, %._crit_edge31.i ] ; 2 uses
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, 1
  %i.ao = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv43.i
  store i8 %.1.in36.i, ptr %i.ao, align 1, !tbaa !187
  %i.ap = zext nneg i8 %.1.in36.i to i64
  %.1.in.in.i = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ap
  %.1.in.i = load i8, ptr %.1.in.in.i, align 1, !tbaa !187 ; 2 uses
  %i.aq = icmp sgt i8 %.1.in.i, -1
  br i1 %i.aq, label %.lr.ph38.i, label %Abc_TgExpendSymmetry.exit, !llvm.loop !314

Abc_TgExpendSymmetry.exit:                        ; preds = %.lr.ph38.i, %._crit_edge31.i
  call fastcc void @Abc_TgImplementPerm(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.p ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !187 ; 7 uses
  %i.au = sext i8 %i.at to i32                    ; 5 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !315   ; 13 uses
  %i.aw = ptrtoaddr ptr %i.av to i64              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !313 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 7
  %i.ba = add nsw i32 %i.ay, -6
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = select i1 %i.az, i32 1, i32 %i.bb       ; 8 uses
  %i.bd = icmp slt i8 %i.at, 5
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.be = icmp sgt i32 %i.bc, 0
  br i1 %i.be, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.e
  %i.bf = shl nuw nsw i32 1, %i.au
  %i.bg = sext i8 %i.at to i64
  %i.bh = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.bg ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !8  ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !8  ; 4 uses
  %i.bl = zext nneg i32 %i.bf to i64              ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !8  ; 4 uses
  %min.iters.check72 = icmp ult i32 %i.bc, 4
  br i1 %min.iters.check72, label %scalar.ph71, label %vector.ph73

vector.ph73:                                      ; preds = %.lr.ph64.i
  %i.bo = and i32 %i.bc, 2147483644
  %n.vec74 = zext nneg i32 %i.bo to i64
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert75 = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %broadcast.splat76 = shufflevector <2 x i64> %broadcast.splatinsert75, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert77 = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %broadcast.splat78 = shufflevector <2 x i64> %broadcast.splatinsert77, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert79 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat80 = shufflevector <2 x i64> %broadcast.splatinsert79, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph73
  %index82 = phi i64 [ 0, %vector.ph73 ], [ %index.next85, %vector.body81 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index82 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load83 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !8 ; 3 uses
  %wide.load84 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !8 ; 3 uses
  %i.br = and <2 x i64> %wide.load83, %broadcast.splat
  %i.bs = and <2 x i64> %wide.load84, %broadcast.splat
  %i.bt = and <2 x i64> %wide.load83, %broadcast.splat76
  %i.bu = and <2 x i64> %wide.load84, %broadcast.splat76
  %i.bv = shl <2 x i64> %i.bt, %broadcast.splat78
  %i.bw = shl <2 x i64> %i.bu, %broadcast.splat78
  %i.bx = or <2 x i64> %i.bv, %i.br
  %i.by = or <2 x i64> %i.bw, %i.bs
  %i.bz = and <2 x i64> %wide.load83, %broadcast.splat80
  %i.ca = and <2 x i64> %wide.load84, %broadcast.splat80
  %i.cb = lshr <2 x i64> %i.bz, %broadcast.splat78
  %i.cc = lshr <2 x i64> %i.ca, %broadcast.splat78
  %i.cd = or <2 x i64> %i.bx, %i.cb
  %i.ce = or <2 x i64> %i.by, %i.cc
  store <2 x i64> %i.cd, ptr %i.bp, align 8, !tbaa !8
  store <2 x i64> %i.ce, ptr %i.bq, align 8, !tbaa !8
  %index.next85 = add nuw i64 %index82, 4         ; 2 uses
  %i.cf = icmp eq i64 %index.next85, %n.vec74
  br i1 %i.cf, label %Abc_TtSwapAdjacent.exit, label %vector.body81, !llvm.loop !595

scalar.ph71:                                      ; preds = %.lr.ph64.i
  %i.cg = load i64, ptr %i.av, align 8, !tbaa !8  ; 3 uses
  %i.ch = and i64 %i.cg, %i.bi
  %i.ci = and i64 %i.cg, %i.bk
  %i.cj = shl i64 %i.ci, %i.bl
  %i.ck = or i64 %i.cj, %i.ch
  %i.cl = and i64 %i.cg, %i.bn
  %i.cm = lshr i64 %i.cl, %i.bl
  %i.cn = or i64 %i.ck, %i.cm
  store i64 %i.cn, ptr %i.av, align 8, !tbaa !8
  %exitcond74.not.i = icmp eq i32 %i.bc, 1
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph71.1

scalar.ph71.1:                                    ; preds = %scalar.ph71
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !8  ; 3 uses
  %i.cq = and i64 %i.cp, %i.bi
  %i.cr = and i64 %i.cp, %i.bk
  %i.cs = shl i64 %i.cr, %i.bl
  %i.ct = or i64 %i.cs, %i.cq
  %i.cu = and i64 %i.cp, %i.bn
  %i.cv = lshr i64 %i.cu, %i.bl
  %i.cw = or i64 %i.ct, %i.cv
  store i64 %i.cw, ptr %i.co, align 8, !tbaa !8
  %exitcond74.not.i.1 = icmp eq i32 %i.bc, 2
  br i1 %exitcond74.not.i.1, label %Abc_TtSwapAdjacent.exit, label %scalar.ph71.2

scalar.ph71.2:                                    ; preds = %scalar.ph71.1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !8  ; 3 uses
  %i.cz = and i64 %i.cy, %i.bi
  %i.da = and i64 %i.cy, %i.bk
  %i.db = shl i64 %i.da, %i.bl
  %i.dc = or i64 %i.db, %i.cz
  %i.dd = and i64 %i.cy, %i.bn
  %i.de = lshr i64 %i.dd, %i.bl
  %i.df = or i64 %i.dc, %i.de
  store i64 %i.df, ptr %i.cx, align 8, !tbaa !8
  br label %Abc_TtSwapAdjacent.exit

bb.f:                                             ; preds = %bb.d
  %i.dg = icmp eq i8 %i.at, 5
  %i.dh = sext i32 %i.bc to i64
  %.idx65.i = shl nsw i64 %i.dh, 3                ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.av, i64 %.idx65.i ; 2 uses
  br i1 %i.dg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dj = icmp sgt i32 %i.bc, 0
  br i1 %i.dj, label %.lr.ph.i50, label %Abc_TtSwapAdjacent.exit

.lr.ph.i50:                                       ; preds = %bb.g, %.lr.ph.i50
  %.05462.i = phi ptr [ %i.dn, %.lr.ph.i50 ], [ %i.av, %bb.g ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.dl = load <2 x i32>, ptr %i.dk, align 4, !tbaa !16
  %i.dm = shufflevector <2 x i32> %i.dl, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !16
  %i.dn = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.do = icmp ult ptr %i.dn, %i.di
  br i1 %i.do, label %.lr.ph.i50, label %Abc_TtSwapAdjacent.exit, !llvm.loop !42

bb.h:                                             ; preds = %bb.f
  %i.dp = icmp samesign ult i8 %i.at, 7
  %i.dq = add nsw i32 %i.au, -6
  %i.dr = shl nuw i32 1, %i.dq
  %i.ds = select i1 %i.dp, i32 1, i32 %i.dr       ; 7 uses
  %i.dt = icmp sgt i32 %i.bc, 0
  br i1 %i.dt, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.h
  %i.du = icmp sgt i32 %i.ds, 0
  %i.dv = shl i32 %i.ds, 2                        ; 2 uses
  %i.dw = sext i32 %i.dv to i64                   ; 3 uses
  br i1 %i.du, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.dx = shl nuw nsw i32 %i.ds, 1
  %i.dy = zext nneg i32 %i.ds to i64              ; 6 uses
  %i.dz = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.ea = shl nuw nsw i64 %i.dy, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.av, i64 %i.ea
  %i.eb = add i64 %.idx65.i, %i.aw
  %i.ec = shl nsw i64 %i.dw, 3                    ; 4 uses
  %i.ed = add i64 %i.ec, %i.aw
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 %i.ed)
  %i.ee = sub i64 %umax, %i.aw                    ; 2 uses
  %i.ef = icmp ne i64 %i.ee, %i.ec
  %umin = zext i1 %i.ef to i64                    ; 2 uses
  %i.eg = or disjoint i64 %i.ec, %umin
  %i.eh = sub i64 %i.ee, %i.eg
  %umax63 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ei = shl nuw nsw i64 %i.dy, 4
  %i.ej = shl nuw nsw i64 %i.dz, 3                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.av, i64 %i.ej
  %min.iters.check = icmp ult i32 %i.ds, 12
  %i.ek = getelementptr i8, ptr %i.av, i64 %i.ei
  %i.el = getelementptr i8, ptr %i.av, i64 %i.ea
  %scevgep66 = getelementptr i8, ptr %i.el, i64 %i.ej
  %stride.check = icmp slt i32 %i.dv, 0
  %n.vec = and i64 %i.dy, 2147483644
  %xtraiter = and i64 %i.dy, 1
  %i.em = icmp eq i32 %i.ds, 1
  %unroll_iter = and i64 %i.dy, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod93 = trunc i32 %i.ds to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ey, %._crit_edge.us.i ], [ %i.av, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dy ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dz ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader.us.i
  br i1 %i.em, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader.us.i
  %2 = udiv i64 %i.eh, %umax63
  %3 = add i64 %2, %umin
  %4 = mul i64 %3, %i.dw
  %5 = shl i64 %4, 3                              ; 2 uses
  %gep = getelementptr i8, ptr %i.ek, i64 %5
  %gep97 = getelementptr i8, ptr %scevgep66, i64 %5
  %bound0 = icmp ult ptr %scevgep, %gep97
  %bound1 = icmp ult ptr %scevgep64, %gep
  %found.conflict = and i1 %bound0, %bound1
  %6 = or i1 %found.conflict, %stride.check
  br i1 %6, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.en, align 8, !tbaa !8, !alias.scope !596, !noalias !599
  %wide.load68 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !8, !alias.scope !596, !noalias !599
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load69 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !8, !alias.scope !599
  %wide.load70 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !8, !alias.scope !599
  store <2 x i64> %wide.load69, ptr %i.en, align 8, !tbaa !8, !alias.scope !596, !noalias !599
  store <2 x i64> %wide.load70, ptr %i.eo, align 8, !tbaa !8, !alias.scope !596, !noalias !599
  store <2 x i64> %wide.load, ptr %i.ep, align 8, !tbaa !8, !alias.scope !599
  store <2 x i64> %wide.load68, ptr %i.eq, align 8, !tbaa !8, !alias.scope !599
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %._crit_edge.us.i, label %vector.body, !llvm.loop !601

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i49.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i48 ; 2 uses
  %i.es = load i64, ptr %gep.i, align 8, !tbaa !8
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i48 ; 2 uses
  %i.et = load i64, ptr %gep81.i, align 8, !tbaa !8
  store i64 %i.et, ptr %gep.i, align 8, !tbaa !8
  store i64 %i.es, ptr %gep81.i, align 8, !tbaa !8
  %indvars.iv.next.i49 = or disjoint i64 %indvars.iv.i48, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i49 ; 2 uses
  %i.eu = load i64, ptr %gep.i.1, align 8, !tbaa !8
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i49 ; 2 uses
  %i.ev = load i64, ptr %gep81.i.1, align 8, !tbaa !8
  store i64 %i.ev, ptr %gep.i.1, align 8, !tbaa !8
  store i64 %i.eu, ptr %gep81.i.1, align 8, !tbaa !8
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i48, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !602

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i48.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i49.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i48.epil.init ; 2 uses
  %i.ew = load i64, ptr %gep.i.epil, align 8, !tbaa !8
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i48.epil.init ; 2 uses
  %i.ex = load i64, ptr %gep81.i.epil, align 8, !tbaa !8
  store i64 %i.ex, ptr %gep.i.epil, align 8, !tbaa !8
  store i64 %i.ew, ptr %gep81.i.epil, align 8, !tbaa !8
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dw ; 2 uses
  %i.ez = icmp ult ptr %i.ey, %i.di
  br i1 %i.ez, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !41

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i50, %vector.body81, %scalar.ph71, %scalar.ph71.1, %scalar.ph71.2, %bb.e, %bb.g, %bb.h, %.preheader.lr.ph.i
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.fb = sext i8 %i.at to i64
  %i.fc = getelementptr inbounds i8, ptr %i.fa, i64 %i.fb
  store i8 %i.i, ptr %i.fc, align 1, !tbaa !187
  %i.fd = add nsw i32 %i.au, 1                    ; 3 uses
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %i.fa, i64 %i.fe
  store i8 %i.e, ptr %i.ff, align 1, !tbaa !187
  %i.fg = trunc i32 %i.fd to i8
  store i8 %i.fg, ptr %i.as, align 1, !tbaa !187
  %i.fh = getelementptr inbounds i8, ptr %i.ar, i64 %i.t
  store i8 %i.at, ptr %i.fh, align 1, !tbaa !187
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !316 ; 3 uses
  %i.fk = lshr i32 %i.fj, %i.au
  %i.fl = lshr i32 %i.fj, %i.fd
  %i.fm = xor i32 %i.fk, %i.fl
  %i.fn = and i32 %i.fm, 1
  %.not = icmp eq i32 %i.fn, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Abc_TtSwapAdjacent.exit
  %i.fo = shl i32 3, %i.au
  %i.fp = xor i32 %i.fj, %i.fo
  store i32 %i.fp, ptr %i.fi, align 4, !tbaa !316
  br label %bb.j

bb.j:                                             ; preds = %Abc_TtSwapAdjacent.exit, %bb.i, %Abc_TgExpendSymmetry.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 8) i32 @Abc_TgSymGroupPerm(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483648, 2147483646) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.Abc_TgMan_t_, align 8       ; 65 uses
  %.sroa.21 = alloca [180 x i8], align 4          ; 12 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !315    ; 27 uses
  %i.b = ptrtoaddr ptr %i.a to i64                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !313  ; 5 uses
  %i.e = icmp slt i32 %i.d, 7
  %i.f = add nsw i32 %i.d, -6
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g          ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21)
  %.not = icmp eq i32 %2, 0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %3, ptr noundef nonnull readonly align 8 dereferenceable(192) %0, i64 192, i1 false)
  %i.i = icmp sgt i32 %i.h, 0                     ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %.lr.ph18.preheader.i.i, label %Abc_TgManCopy.exit

.lr.ph18.preheader.i.i:                           ; preds = %bb.b
  %wide.trip.count24.i.i = zext nneg i32 %i.h to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  %i.j = sub i64 add (i64 ptrtoaddr (ptr @Abc_TgSymGroupPerm.pCopy to i64), i64 -1), %i.b
  %diff.check = icmp ult i64 %i.j, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph18.i.i.preheader, label %vector.ph

.lr.ph18.i.i.preheader:                           ; preds = %.lr.ph18.preheader.i.i
  %xtraiter = and i64 %wide.trip.count24.i.i, 3   ; 3 uses
  %i.k = icmp ult i32 %i.h, 4
  br i1 %i.k, label %.lr.ph18.i.i.epil.preheader, label %.lr.ph18.i.i.preheader.new

.lr.ph18.i.i.preheader.new:                       ; preds = %.lr.ph18.i.i.preheader
  %unroll_iter = and i64 %wide.trip.count24.i.i, 2147483644
  br label %.lr.ph18.i.i

vector.ph:                                        ; preds = %.lr.ph18.preheader.i.i
  %n.vec = and i64 %wide.trip.count24.i.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !8
  %wide.load505 = load <2 x i64>, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 16, !tbaa !8
  store <2 x i64> %wide.load505, ptr %i.o, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %Abc_TgManCopy.exit, label %vector.body, !llvm.loop !603

.lr.ph18.i.i:                                     ; preds = %.lr.ph18.i.i, %.lr.ph18.i.i.preheader.new
  %indvars.iv21.i.i = phi i64 [ 0, %.lr.ph18.i.i.preheader.new ], [ %indvars.iv.next22.i.i.3, %.lr.ph18.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph18.i.i.preheader.new ], [ %niter.next.3, %.lr.ph18.i.i ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i.i
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv21.i.i
  store i64 %i.r, ptr %i.s, align 16, !tbaa !8
  %indvars.iv.next22.i.i = or disjoint i64 %indvars.iv21.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.i
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv.next22.i.i
  store i64 %i.u, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next22.i.i.1 = or disjoint i64 %indvars.iv21.i.i, 2 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.i.1
  %i.x = load i64, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv.next22.i.i.1
  store i64 %i.x, ptr %i.y, align 16, !tbaa !8
  %indvars.iv.next22.i.i.2 = or disjoint i64 %indvars.iv21.i.i, 3 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next22.i.i.2
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv.next22.i.i.2
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !8
  %indvars.iv.next22.i.i.3 = add nuw nsw i64 %indvars.iv21.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TgManCopy.exit.loopexit.unr-lcssa, label %.lr.ph18.i.i, !llvm.loop !604

Abc_TgManCopy.exit.loopexit.unr-lcssa:            ; preds = %.lr.ph18.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil.preheader

.lr.ph18.i.i.epil.preheader:                      ; preds = %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.preheader
  %indvars.iv21.i.i.epil.init = phi i64 [ 0, %.lr.ph18.i.i.preheader ], [ %indvars.iv.next22.i.i.3, %Abc_TgManCopy.exit.loopexit.unr-lcssa ]
  %lcmp.mod908 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod908)
  br label %.lr.ph18.i.i.epil

.lr.ph18.i.i.epil:                                ; preds = %.lr.ph18.i.i.epil, %.lr.ph18.i.i.epil.preheader
  %indvars.iv21.i.i.epil = phi i64 [ %indvars.iv.next22.i.i.epil, %.lr.ph18.i.i.epil ], [ %indvars.iv21.i.i.epil.init, %.lr.ph18.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph18.i.i.epil ], [ 0, %.lr.ph18.i.i.epil.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv21.i.i.epil
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %indvars.iv21.i.i.epil
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !8
  %indvars.iv.next22.i.i.epil = add nuw nsw i64 %indvars.iv21.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TgManCopy.exit, label %.lr.ph18.i.i.epil, !llvm.loop !605

Abc_TgManCopy.exit:                               ; preds = %vector.body, %Abc_TgManCopy.exit.loopexit.unr-lcssa, %.lr.ph18.i.i.epil, %bb.b
  %.pre-phi388 = phi i64 [ 2147483648, %bb.b ], [ %wide.trip.count24.i.i, %Abc_TgManCopy.exit.loopexit.unr-lcssa ], [ %wide.trip.count24.i.i, %.lr.ph18.i.i.epil ], [ %wide.trip.count24.i.i, %vector.body ] ; 2 uses
  store ptr @Abc_TgSymGroupPerm.pCopy, ptr %3, align 8, !tbaa !315
  call fastcc void @Abc_TgSwapAdjacentSymGroups(ptr noundef %3, i32 noundef %1)
  %i.af = trunc nuw i64 %.pre-phi388 to i32
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %Abc_TtCompareRev.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.ah = trunc nuw i64 %i.aj to i32
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph, label %Abc_TtCompareRev.exit.thread, !llvm.loop !78

.lr.ph:                                           ; preds = %Abc_TgManCopy.exit, %bb.c
  %indvars.iv.i490 = phi i64 [ %i.aj, %bb.c ], [ %.pre-phi388, %Abc_TgManCopy.exit ]
  %i.aj = add nsw i64 %indvars.iv.i490, -1        ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !8  ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @Abc_TgSymGroupPerm.pCopy, i64 %i.aj
  %i.an = load i64, ptr %i.am, align 8, !tbaa !8  ; 2 uses
  %.not.i = icmp eq i64 %i.al, %i.an
  br i1 %.not.i, label %bb.c, label %bb.d, !llvm.loop !78

bb.d:                                             ; preds = %.lr.ph
  %i.ao = icmp ult i64 %i.al, %i.an
  br i1 %i.ao, label %Abc_TtCompareRev.exit, label %Abc_TtCompareRev.exit.thread

Abc_TtCompareRev.exit:                            ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull readonly align 8 dereferenceable(192) %3, i64 192, i1 false), !tbaa.struct !360
  %i.ap = load ptr, ptr %3, align 8, !tbaa !315   ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !313 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 7
  %i.at = add nsw i32 %i.ar, -6
  %i.au = shl nuw i32 1, %i.at
  %i.av = select i1 %i.as, i32 1, i32 %i.au       ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph18.preheader.i.i32, label %Abc_TtCompareRev.exit.thread.sink.split

.lr.ph18.preheader.i.i32:                         ; preds = %Abc_TtCompareRev.exit
  %i.ax = ptrtoaddr ptr %i.ap to i64
  %wide.trip.count24.i.i33 = zext nneg i32 %i.av to i64 ; 3 uses
  %min.iters.check509 = icmp ult i32 %i.av, 8
  %i.ay = sub i64 %i.ax, %i.b
  %diff.check507 = icmp ugt i64 %i.ay, -32
  %or.cond840 = select i1 %min.iters.check509, i1 true, i1 %diff.check507
end_hunk_3
