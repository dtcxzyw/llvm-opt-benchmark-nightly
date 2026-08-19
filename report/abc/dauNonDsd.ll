inline.NumInlined: 79
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Abc_TtMoveVar:bb.a
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph81
  %index92 = phi i64 [ 0, %vector.ph81 ], [ %index.next95, %vector.body91 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index92 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load93 = load <2 x i64>, ptr %i.ap, align 8, !tbaa !9 ; 3 uses
  %wide.load94 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !9 ; 3 uses
  %i.ar = and <2 x i64> %wide.load93, %broadcast.splat84
  %i.as = and <2 x i64> %wide.load94, %broadcast.splat84
  %i.at = and <2 x i64> %wide.load93, %broadcast.splat86
  %i.au = and <2 x i64> %wide.load94, %broadcast.splat86
  %i.av = shl <2 x i64> %i.at, %broadcast.splat88
  %i.aw = shl <2 x i64> %i.au, %broadcast.splat88
  %i.ax = or <2 x i64> %i.av, %i.ar
  %i.ay = or <2 x i64> %i.aw, %i.as
  %i.az = and <2 x i64> %wide.load93, %broadcast.splat90
  %i.ba = and <2 x i64> %wide.load94, %broadcast.splat90
  %i.bb = lshr <2 x i64> %i.az, %broadcast.splat88
  %i.bc = lshr <2 x i64> %i.ba, %broadcast.splat88
  %i.bd = or <2 x i64> %i.ax, %i.bb
  %i.be = or <2 x i64> %i.ay, %i.bc
  store <2 x i64> %i.bd, ptr %i.ap, align 8, !tbaa !9
  store <2 x i64> %i.be, ptr %i.aq, align 8, !tbaa !9
  %index.next95 = add nuw i64 %index92, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next95, %n.vec82
  br i1 %i.bf, label %Abc_TtSwapVars.exit, label %vector.body91, !llvm.loop !39

scalar.ph79:                                      ; preds = %.lr.ph.i
  %i.bg = load i64, ptr %0, align 8, !tbaa !9     ; 3 uses
  %i.bh = and i64 %i.bg, %i.ai
  %i.bi = and i64 %i.bg, %i.ak
  %i.bj = shl i64 %i.bi, %i.al
  %i.bk = or i64 %i.bj, %i.bh
  %i.bl = and i64 %i.bg, %i.an
  %i.bm = lshr i64 %i.bl, %i.al
  %i.bn = or i64 %i.bk, %i.bm
  store i64 %i.bn, ptr %0, align 8, !tbaa !9
  %exitcond160.not.i = icmp slt i32 %i.ab, 2
  br i1 %exitcond160.not.i, label %Abc_TtSwapVars.exit, label %scalar.ph79.1

scalar.ph79.1:                                    ; preds = %scalar.ph79
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !9  ; 3 uses
  %i.bq = and i64 %i.bp, %i.ai
  %i.br = and i64 %i.bp, %i.ak
  %i.bs = shl i64 %i.br, %i.al
  %i.bt = or i64 %i.bs, %i.bq
  %i.bu = and i64 %i.bp, %i.an
  %i.bv = lshr i64 %i.bu, %i.al
  %i.bw = or i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !9
  %exitcond160.not.i.1 = icmp eq i32 %i.aa, 1
  br i1 %exitcond160.not.i.1, label %Abc_TtSwapVars.exit, label %scalar.ph79.2

scalar.ph79.2:                                    ; preds = %scalar.ph79.1
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !9  ; 3 uses
  %i.bz = and i64 %i.by, %i.ai
  %i.ca = and i64 %i.by, %i.ak
  %i.cb = shl i64 %i.ca, %i.al
  %i.cc = or i64 %i.cb, %i.bz
  %i.cd = and i64 %i.by, %i.an
  %i.ce = lshr i64 %i.cd, %i.al
  %i.cf = or i64 %i.cc, %i.ce
  store i64 %i.cf, ptr %i.bx, align 8, !tbaa !9
  br label %Abc_TtSwapVars.exit

bb.f:                                             ; preds = %bb.d
  %i.cg = icmp slt i32 %spec.select117.i, 6
  %i.ch = add nsw i32 %1, -6                      ; 3 uses
  %i.ci = shl nuw i32 1, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %.idx132.i = shl nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds i8, ptr %0, i64 %.idx132.i ; 2 uses
  br i1 %i.cg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cl = add nsw i32 %spec.select.i, -6          ; 3 uses
  %i.cm = shl nuw i32 1, %i.cl                    ; 3 uses
  %.not133.i = icmp eq i32 %i.ch, 31
  br i1 %.not133.i, label %Abc_TtSwapVars.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.cn = shl nuw nsw i32 1, %spec.select117.i
  %.not134.i = icmp eq i32 %i.cl, 31
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.cp = shl i32 2, %i.cl
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  br i1 %.not134.i, label %Abc_TtSwapVars.exit, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.cr = sext i32 %spec.select117.i to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !9  ; 5 uses
  %i.cu = xor i64 %i.ct, -1                       ; 2 uses
  %i.cv = sext i32 %i.cm to i64                   ; 2 uses
  %smax152.i = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 1)
  %wide.trip.count153.i = zext nneg i32 %smax152.i to i64 ; 3 uses
  %i.cw = shl nuw nsw i64 %wide.trip.count153.i, 3 ; 2 uses
  %i.cx = shl nsw i64 %i.cq, 3
  %i.cy = shl nsw i64 %i.cv, 3                    ; 2 uses
  %min.iters.check64 = icmp slt i32 %i.cm, 2
  %i.cz = getelementptr i8, ptr %0, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cw
  %i.db = getelementptr i8, ptr %0, i64 %i.cy
  %i.dc = getelementptr i8, ptr %0, i64 %i.cw
  %n.vec66 = and i64 %wide.trip.count153.i, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert67 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat68 = shufflevector <2 x i64> %broadcast.splatinsert67, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert69 = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat70 = shufflevector <2 x i64> %broadcast.splatinsert69, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %indvar55 = phi i64 [ %indvar.next56, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.0128.us.i = phi ptr [ %i.ea, %._crit_edge.us.i ], [ %0, %.preheader.lr.ph.split.us.i ] ; 5 uses
  %invariant.gep169.i = getelementptr [8 x i8], ptr %.0128.us.i, i64 %i.cv ; 2 uses
  br i1 %min.iters.check64, label %scalar.ph63.preheader, label %vector.memcheck54

scalar.ph63.preheader:                            ; preds = %vector.memcheck54, %.preheader.us.i
  br label %scalar.ph63

vector.memcheck54:                                ; preds = %.preheader.us.i
  %i.dd = mul i64 %i.cx, %indvar55                ; 3 uses
  %scevgep59 = getelementptr i8, ptr %i.da, i64 %i.dd
  %scevgep58 = getelementptr i8, ptr %i.db, i64 %i.dd
  %scevgep57 = getelementptr i8, ptr %i.dc, i64 %i.dd
  %bound060 = icmp ult ptr %.0128.us.i, %scevgep59
  %bound161 = icmp ult ptr %scevgep58, %scevgep57
  %found.conflict62 = and i1 %bound060, %bound161
  br i1 %found.conflict62, label %scalar.ph63.preheader, label %vector.body71

vector.body71:                                    ; preds = %vector.memcheck54, %vector.body71
  %index72 = phi i64 [ %index.next75, %vector.body71 ], [ 0, %vector.memcheck54 ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i, i64 %index72 ; 2 uses
  %wide.load73 = load <2 x i64>, ptr %i.de, align 8, !tbaa !9, !alias.scope !42, !noalias !45 ; 2 uses
  %i.df = and <2 x i64> %wide.load73, %broadcast.splat
  %i.dg = lshr <2 x i64> %i.df, %broadcast.splat68
  %i.dh = getelementptr [8 x i8], ptr %invariant.gep169.i, i64 %index72 ; 2 uses
  %wide.load74 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !9, !alias.scope !45 ; 2 uses
  %i.di = shl <2 x i64> %wide.load74, %broadcast.splat68
  %i.dj = and <2 x i64> %i.di, %broadcast.splat
  %i.dk = and <2 x i64> %wide.load73, %broadcast.splat70
  %i.dl = or <2 x i64> %i.dj, %i.dk
  store <2 x i64> %i.dl, ptr %i.de, align 8, !tbaa !9, !alias.scope !42, !noalias !45
  %i.dm = and <2 x i64> %wide.load74, %broadcast.splat
  %i.dn = or <2 x i64> %i.dm, %i.dg
  store <2 x i64> %i.dn, ptr %i.dh, align 8, !tbaa !9, !alias.scope !45
  %index.next75 = add nuw i64 %index72, 2         ; 2 uses
  %i.do = icmp eq i64 %index.next75, %n.vec66
  br i1 %i.do, label %._crit_edge.us.i, label %vector.body71, !llvm.loop !47

scalar.ph63:                                      ; preds = %scalar.ph63.preheader, %scalar.ph63
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %scalar.ph63 ], [ 0, %scalar.ph63.preheader ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i, i64 %indvars.iv149.i ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !9  ; 2 uses
  %i.dr = and i64 %i.dq, %i.ct
  %i.ds = lshr i64 %i.dr, %i.co
  %gep170.i = getelementptr [8 x i8], ptr %invariant.gep169.i, i64 %indvars.iv149.i ; 2 uses
  %i.dt = load i64, ptr %gep170.i, align 8, !tbaa !9 ; 2 uses
  %i.du = shl i64 %i.dt, %i.co
  %i.dv = and i64 %i.du, %i.ct
  %i.dw = and i64 %i.dq, %i.cu
  %i.dx = or i64 %i.dv, %i.dw
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !9
  %i.dy = and i64 %i.dt, %i.ct
  %i.dz = or i64 %i.dy, %i.ds
  store i64 %i.dz, ptr %gep170.i, align 8, !tbaa !9
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next150.i, %wide.trip.count153.i
  br i1 %exitcond154.not.i, label %._crit_edge.us.i, label %scalar.ph63, !llvm.loop !48

._crit_edge.us.i:                                 ; preds = %vector.body71, %scalar.ph63
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0128.us.i, i64 %i.cq ; 2 uses
  %i.eb = icmp ult ptr %i.ea, %i.ck
  %indvar.next56 = add i64 %indvar55, 1
  br i1 %i.eb, label %.preheader.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !49

bb.h:                                             ; preds = %bb.f
  %i.ec = add nsw i32 %spec.select117.i, -6       ; 3 uses
  %i.ed = shl nuw i32 1, %i.ec                    ; 4 uses
  %i.ee = add nsw i32 %spec.select.i, -6          ; 3 uses
  %i.ef = shl nuw i32 1, %i.ee                    ; 2 uses
  %.not.i = icmp eq i32 %i.ch, 31
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.preheader120.lr.ph.i

.preheader120.lr.ph.i:                            ; preds = %bb.h
  %.not130.i = icmp eq i32 %i.ee, 31
  %i.eg = shl i32 2, %i.ee
  %i.eh = sext i32 %i.eg to i64                   ; 2 uses
  %.not131.i = icmp eq i32 %i.ec, 31
  %or.cond.i = select i1 %.not130.i, i1 true, i1 %.not131.i
  br i1 %or.cond.i, label %Abc_TtSwapVars.exit, label %.preheader120.us.us.preheader.i

.preheader120.us.us.preheader.i:                  ; preds = %.preheader120.lr.ph.i
  %i.ei = shl i32 2, %i.ec                        ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ed, i32 1) ; 2 uses
  %i.ej = sext i32 %i.ei to i64                   ; 6 uses
  %i.ek = sext i32 %i.ed to i64                   ; 3 uses
  %i.el = sext i32 %i.ef to i64                   ; 5 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 5 uses
  %i.em = shl nsw i64 %i.ek, 3
  %i.en = shl nsw i64 %i.eh, 3
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ej, i64 %i.el)
  %i.eo = icmp slt i32 %i.ei, %i.ef
  %umin = zext i1 %i.eo to i64                    ; 3 uses
  %i.ep = or disjoint i64 %umin, %i.ej
  %i.eq = sub i64 %smax, %i.ep                    ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ej, i64 1) ; 2 uses
  %6 = shl nsw i64 %i.el, 3
  %i.er = udiv i64 %i.eq, %umax
  %i.es = add i64 %i.er, %umin
  %i.et = mul i64 %i.es, %i.ej
  %7 = add i64 %i.et, %i.el
  %8 = add i64 %7, %wide.trip.count.i
  %i.eu = shl i64 %8, 3
  %i.ev = getelementptr i8, ptr %0, i64 %i.em
  %i.ew = getelementptr i8, ptr %0, i64 %6
  %i.ex = getelementptr i8, ptr %0, i64 %i.eu
  %min.iters.check = icmp slt i32 %i.ed, 12
  %invariant.op = add i64 %i.ek, %wide.trip.count.i
  %stride.check = icmp slt i32 %i.ei, 0
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ey = icmp slt i32 %i.ed, 2
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod104 = trunc i32 %smax.i to i1
  br label %.preheader120.us.us.i

.preheader120.us.us.i:                            ; preds = %._crit_edge124.us.us.i, %.preheader120.us.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge124.us.us.i ], [ 0, %.preheader120.us.us.preheader.i ] ; 2 uses
  %.1125.us.us.i = phi ptr [ %i.fs, %._crit_edge124.us.us.i ], [ %0, %.preheader120.us.us.preheader.i ] ; 3 uses
  %i.ez = mul i64 %i.en, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ev, i64 %i.ez
  %scevgep48 = getelementptr i8, ptr %i.ew, i64 %i.ez
  %scevgep49 = getelementptr i8, ptr %i.ex, i64 %i.ez
  %invariant.gep167.i.a = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.ek
  %invariant.gep167.i = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.el
  %scevgep49.a = getelementptr i8, ptr %0, i64 %i.ez
  %bound1.a = icmp ult ptr %scevgep, %scevgep49
  br label %.preheader119.us.us.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.fa = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !9
  %i.fc = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !9
  store i64 %i.fd, ptr %i.fa, align 8, !tbaa !9
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !9
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.fe = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !9
  %i.fg = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !9
  store i64 %i.fh, ptr %i.fe, align 8, !tbaa !9
  store i64 %i.ff, ptr %i.fg, align 8, !tbaa !9
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !50

.preheader119.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader120.us.us.i
  %indvars.iv146.i = phi i64 [ 0, %.preheader120.us.us.i ], [ %indvars.iv.next147.i, %._crit_edge.us.us.i ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep167.i.a, i64 %indvars.iv146.i ; 4 uses
  %gep168.i = getelementptr [8 x i8], ptr %invariant.gep167.i, i64 %indvars.iv146.i ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader119.us.us.i
  br i1 %i.ey, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader119.us.us.i
  %9 = udiv i64 %i.eq, %umax
  %10 = add i64 %9, %umin
  %11 = mul i64 %10, %i.ej
  %.reass = add i64 %11, %invariant.op
  %12 = shl i64 %.reass, 3
  %scevgep47 = getelementptr i8, ptr %scevgep49.a, i64 %12
  %bound1 = icmp ult ptr %scevgep48, %scevgep47
  %found.conflict = and i1 %bound1.a, %bound1
  %13 = or i1 %found.conflict, %stride.check
  br i1 %13, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 3 uses
  %i.fi = getelementptr [8 x i8], ptr %gep.i, i64 %index ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16     ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fi, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %wide.load51 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  %i.fk = getelementptr [8 x i8], ptr %gep168.i, i64 %index ; 3 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16     ; 2 uses
  %wide.load52 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !9, !alias.scope !54
  %wide.load53 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !9, !alias.scope !54
  store <2 x i64> %wide.load52, ptr %i.fi, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <2 x i64> %wide.load53, ptr %i.fj, align 8, !tbaa !9, !alias.scope !51, !noalias !54
  store <2 x i64> %wide.load, ptr %i.fk, align 8, !tbaa !9, !alias.scope !54
  store <2 x i64> %wide.load51, ptr %i.fl, align 8, !tbaa !9, !alias.scope !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %._crit_edge.us.us.i, label %vector.body, !llvm.loop !56

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod104)
  %i.fn = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !9
  %i.fp = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !9
  store i64 %i.fq, ptr %i.fn, align 8, !tbaa !9
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !9
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, %i.ej ; 2 uses
  %i.fr = icmp slt i64 %indvars.iv.next147.i, %i.el
  br i1 %i.fr, label %.preheader119.us.us.i, label %._crit_edge124.us.us.i, !llvm.loop !57

._crit_edge124.us.us.i:                           ; preds = %._crit_edge.us.us.i
  %i.fs = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i, i64 %i.eh ; 2 uses
  %i.ft = icmp ult ptr %i.fs, %i.ck
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ft, label %.preheader120.us.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !58

Abc_TtSwapVars.exit:                              ; preds = %._crit_edge124.us.us.i, %._crit_edge.us.i, %vector.body91, %scalar.ph79, %scalar.ph79.1, %scalar.ph79.2, %bb.c, %bb.e, %bb.g, %.preheader.lr.ph.i, %bb.h, %.preheader120.lr.ph.i
  %i.fu = sext i32 %i.c to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fu ; 5 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fx
  store i32 %5, ptr %i.fy, align 4, !tbaa !8
  %i.fz = sext i32 %5 to i64
  %i.ga = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fz ; 4 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gc
  store i32 %i.c, ptr %i.gd, align 4, !tbaa !8
  %i.ge = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gf = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.gg = xor i32 %i.gf, %i.ge                    ; 2 uses
  store i32 %i.gg, ptr %i.fv, align 4, !tbaa !8
  %i.gh = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gi = xor i32 %i.gh, %i.gg                    ; 2 uses
  store i32 %i.gi, ptr %i.ga, align 4, !tbaa !8
  %i.gj = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.gk = xor i32 %i.gj, %i.gi
  store i32 %i.gk, ptr %i.fv, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %Abc_TtSwapVars.exit
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Dau_DecFindSets_int(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #9 {
.preheader181:
  %i.a = alloca [2 x [64 x i64]], align 16        ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca [2 x [64 x ptr]], align 16        ; 5 uses
  %i.d = alloca [16 x i32], align 16              ; 6 uses
  %i.e = alloca [16 x i32], align 16              ; 5 uses
  %i.f = alloca [16 x i32], align 16              ; 6 uses
  %i.g = alloca [16 x i32], align 16              ; 8 uses
  %i.h = alloca [1024 x i64], align 16            ; 10 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  store i32 0, ptr %i.j, align 4, !tbaa !33
  store i32 32, ptr %i.i, align 8, !tbaa !59
  %i.k = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #21 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.m = icmp slt i32 %1, 7
  %i.n = add nsw i32 %1, -6
  %i.o = shl nuw i32 1, %i.n
  %i.p = select i1 %i.m, i32 1, i32 %i.o
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.r, i1 false)
  %i.s = shl nuw i32 1, %1
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge197.split

.lr.ph.preheader:                                 ; preds = %.preheader181
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader330, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %vec.ind, ptr %i.u, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.v, align 16, !tbaa !8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %vec.ind, ptr %i.w, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.x, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader180, label %.lr.ph.preheader330

.lr.ph.preheader330:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader180:                                    ; preds = %.lr.ph, %middle.block
  %i.z = icmp samesign ugt i32 %1, 2
  br i1 %i.z, label %.preheader179.lr.ph, label %._crit_edge197.split

.preheader179.lr.ph:                              ; preds = %.preheader180
  %.not198 = icmp eq i32 %1, 31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 2 uses
  br i1 %.not198, label %._crit_edge197.split, label %.preheader179.preheader

.preheader179.preheader:                          ; preds = %.preheader179.lr.ph
  %i.ac = add nsw i32 %1, -2                      ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %i.ad = zext nneg i32 %1 to i64
  %wide.trip.count214 = zext nneg i32 %i.ac to i64
  br label %.preheader179

.lr.ph:                                           ; preds = %.lr.ph.preheader330, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader330 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.af = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader180, label %.lr.ph, !llvm.loop !61

.preheader179:                                    ; preds = %.preheader179.preheader, %._crit_edge
  %i.ah = phi ptr [ %i.k, %.preheader179.preheader ], [ %i.kq, %._crit_edge ]
  %i.ai = phi i32 [ 32, %.preheader179.preheader ], [ %i.kr, %._crit_edge ]
  %.val11.i228 = phi ptr [ %i.k, %.preheader179.preheader ], [ %.val11.i231, %._crit_edge ]
  %.val.i221 = phi i32 [ 0, %.preheader179.preheader ], [ %.val.i223, %._crit_edge ]
  %i.aj = phi ptr [ %i.k, %.preheader179.preheader ], [ %i.ks, %._crit_edge ]
  %i.ak = phi ptr [ %i.k, %.preheader179.preheader ], [ %i.kt, %._crit_edge ]
  %i.al = phi i32 [ 32, %.preheader179.preheader ], [ %i.ku, %._crit_edge ]
  %i.am = phi i32 [ 0, %.preheader179.preheader ], [ %i.kv, %._crit_edge ]
  %indvars.iv209 = phi i64 [ 2, %.preheader179.preheader ], [ %indvars.iv.next210, %._crit_edge ] ; 20 uses
  %indvars.iv205 = phi i32 [ 1, %.preheader179.preheader ], [ %indvars.iv.next206, %._crit_edge ] ; 2 uses
  %indvar200 = phi i64 [ 0, %.preheader179.preheader ], [ %indvar.next201, %._crit_edge ] ; 3 uses
  %i.an = trunc i64 %indvar200 to i32
  %i.ao = sub i32 %i.ac, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i64 %i.ap, 2
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.aq
  %i.ar = shl nuw nsw i64 %indvar200, 2
  %i.as = add nuw nsw i64 %i.ar, 8
  %i.at = sub nsw i64 %i.ad, %indvars.iv209       ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv209 ; 2 uses
  %i.av = icmp slt i64 %i.at, 6                   ; 2 uses
  %i.aw = trunc i64 %i.at to i32
  %i.ax = add i32 %i.aw, -6                       ; 3 uses
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = trunc nuw nsw i64 %indvars.iv209 to i32 ; 2 uses
  %i.ba = shl nuw nsw i32 1, %i.az
  %.not134.i = icmp eq i64 %indvars.iv209, 31     ; 2 uses
  %i.bb = sext i32 %i.ay to i64
  %i.bc = shl nsw i64 %i.bb, 3                    ; 4 uses
  %wide.trip.count144.i = zext nneg i32 %i.ba to i64 ; 4 uses
  %i.bd = trunc nsw i64 %i.at to i32              ; 3 uses
  %i.be = shl nuw nsw i32 1, %i.bd
  %i.bf = zext nneg i32 %i.be to i64
  %notmask.i = shl nsw i64 -1, %i.bf
  %i.bg = xor i64 %notmask.i, -1                  ; 2 uses
  %i.bh = sub nsw i64 6, %i.at                    ; 2 uses
  %.not68190 = icmp samesign ult i64 %indvars.iv209, 3
  %i.bi = trunc nsw i64 %i.bh to i32
  %i.bj = trunc nsw i64 %i.bh to i32
  %xtraiter = and i64 %indvars.iv209, 1
  %unroll_iter = and i64 %indvars.iv209, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod332 = trunc i64 %indvars.iv209 to i1
  %xtraiter333 = and i64 %indvars.iv209, 1
  %unroll_iter336 = and i64 %indvars.iv209, 9223372036854775806
  %lcmp.mod334.not = icmp eq i64 %xtraiter333, 0
  %lcmp.mod335 = trunc i64 %indvars.iv209 to i1
  %xtraiter339 = and i64 %indvars.iv209, 1
  %unroll_iter342 = and i64 %indvars.iv209, 9223372036854775806
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  %lcmp.mod341 = trunc i64 %indvars.iv209 to i1
  %min.iters.check296 = icmp samesign ult i64 %indvars.iv209, 8
  %n.vec298 = and i64 %indvars.iv209, 9223372036854775800 ; 3 uses
  %cmp.n305 = icmp eq i64 %indvars.iv209, %n.vec298
  br label %bb.a
end_hunk_0
