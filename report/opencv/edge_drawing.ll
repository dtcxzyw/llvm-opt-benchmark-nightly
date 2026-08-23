Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 154
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl7inverseEPPdS3_i:bb.a
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !736

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp ult i64 %i.ao, 3
  br i1 %i.as, label %._crit_edge, label %scalar.ph

.preheader234.lr.ph:                              ; preds = %._crit_edge
  %.not172243.not = icmp slt i32 %2, %i.m
  %i.at = add nsw i32 %2, -1
  %i.au = zext i32 %i.b to i64                    ; 6 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = or disjoint i32 %i.m, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.aw)
  %i.ax = add i32 %smax, -2
  %i.ay = sub i32 %i.ax, %2
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  %i.bc = add nsw i64 %i.au, -1                   ; 2 uses
  %min.iters.check380 = icmp ult i32 %i.b, 5
  %n.vec382 = and i64 %i.bc, -4                   ; 3 uses
  %i.bd = or disjoint i64 %n.vec382, 1
  %cmp.n389 = icmp eq i64 %i.bc, %n.vec382
  br label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bf = load double, ptr %i.be, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store double %i.bf, ptr %i.bg, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  store double %i.bi, ptr %i.bj, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.1
  store double %i.bl, ptr %i.bm, align 8, !tbaa !20
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.2
  store double %i.bo, ptr %i.bp, align 8, !tbaa !20
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.c
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !737

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.c
  br i1 %exitcond287.not, label %.preheader234.lr.ph, label %.preheader236, !llvm.loop !738

.lr.ph:                                           ; preds = %._crit_edge246, %.preheader234.lr.ph
  %indvars.iv297 = phi i64 [ 1, %.preheader234.lr.ph ], [ %indvars.iv.next298, %._crit_edge246 ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv297
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !513 ; 7 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv297
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !513 ; 7 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = ptrtoaddr ptr %i.br to i64
  %i.bw = sub i64 %i.bv, %i.bu
  %diff.check378 = icmp ugt i64 %i.bw, -32
  %or.cond469 = select i1 %min.iters.check380, i1 true, i1 %diff.check378
  br i1 %or.cond469, label %scalar.ph379.preheader, label %vector.body383

vector.body383:                                   ; preds = %.lr.ph, %vector.body383
  %index384 = phi i64 [ %index.next387, %vector.body383 ], [ 0, %.lr.ph ] ; 2 uses
  %i.bx = or disjoint i64 %index384, 1            ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load385 = load <2 x double>, ptr %i.by, align 8, !tbaa !20
  %wide.load386 = load <2 x double>, ptr %i.bz, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bx ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x double> %wide.load385, ptr %i.ca, align 8, !tbaa !20
  store <2 x double> %wide.load386, ptr %i.cb, align 8, !tbaa !20
  %index.next387 = add nuw i64 %index384, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.cc, label %middle.block388, label %vector.body383, !llvm.loop !739

middle.block388:                                  ; preds = %vector.body383
  br i1 %cmp.n389, label %.preheader233, label %scalar.ph379.preheader

scalar.ph379.preheader:                           ; preds = %.lr.ph, %middle.block388
  %indvars.iv289.ph = phi i64 [ 1, %.lr.ph ], [ %i.bd, %middle.block388 ] ; 4 uses
  %i.cd = sub nsw i64 %i.au, %indvars.iv289.ph
  %xtraiter472 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol

scalar.ph379.prol:                                ; preds = %scalar.ph379.preheader, %scalar.ph379.prol
  %indvars.iv289.prol = phi i64 [ %indvars.iv.next290.prol, %scalar.ph379.prol ], [ %indvars.iv289.ph, %scalar.ph379.preheader ] ; 3 uses
  %prol.iter474 = phi i64 [ %prol.iter474.next, %scalar.ph379.prol ], [ 0, %scalar.ph379.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv289.prol
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv289.prol
  store double %i.cf, ptr %i.cg, align 8, !tbaa !20
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.prol, 1 ; 2 uses
  %prol.iter474.next = add i64 %prol.iter474, 1   ; 2 uses
  %prol.iter474.cmp.not = icmp eq i64 %prol.iter474.next, %xtraiter472
  br i1 %prol.iter474.cmp.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol, !llvm.loop !740

scalar.ph379.prol.loopexit:                       ; preds = %scalar.ph379.prol, %scalar.ph379.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %scalar.ph379.preheader ], [ %indvars.iv.next290.prol, %scalar.ph379.prol ]
  %i.ch = sub nsw i64 %indvars.iv289.ph, %i.au
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.preheader233, label %scalar.ph379

.lr.ph270:                                        ; preds = %._crit_edge246
  %i.cj = or disjoint i32 %i.m, 1
  %i.ck = add i32 %i.m, 2
  %i.cl = or disjoint i32 %i.m, 1
  %i.cm = sext i32 %i.cl to i64                   ; 7 uses
  %i.cn = sext i32 %i.cj to i64
  %wide.trip.count314 = zext i32 %i.ck to i64     ; 4 uses
  %i.co = sext i32 %i.m to i64
  %i.cp = shl nsw i64 %i.co, 3
  %i.cq = add nsw i64 %i.cp, 16                   ; 2 uses
  %i.cr = or disjoint i32 %i.m, 1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = or disjoint i32 %i.m, 1
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nuw nsw i64 %wide.trip.count314, 3  ; 2 uses
  %i.cw = add nsw i64 %i.c, -2
  %i.cx = add nsw i64 %wide.trip.count314, -1
  br label %bb.e

.preheader233:                                    ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379, %middle.block388
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv297
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !513 ; 2 uses
  br i1 %.not172243.not, label %.lr.ph245, label %._crit_edge246

.lr.ph245:                                        ; preds = %.preheader233
  %scevgep = getelementptr nuw i8, ptr %i.cz, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bb, i1 false), !tbaa !20
  br label %._crit_edge246

scalar.ph379:                                     ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.3, %scalar.ph379 ], [ %indvars.iv289.unr, %scalar.ph379.prol.loopexit ] ; 6 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv289
  %i.db = load double, ptr %i.da, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv289
  store double %i.db, ptr %i.dc, align 8, !tbaa !20
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next290
  %i.de = load double, ptr %i.dd, align 8, !tbaa !20
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next290
  store double %i.de, ptr %i.df, align 8, !tbaa !20
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next290.1
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next290.1
  store double %i.dh, ptr %i.di, align 8, !tbaa !20
  %indvars.iv.next290.2 = add nuw nsw i64 %indvars.iv289, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next290.2
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next290.2
  store double %i.dk, ptr %i.dl, align 8, !tbaa !20
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.3 = icmp eq i64 %indvars.iv.next290.3, %i.au
  br i1 %exitcond293.3, label %.preheader233, label %scalar.ph379, !llvm.loop !741

._crit_edge246:                                   ; preds = %.preheader233, %.lr.ph245
  %i.dm = trunc nuw nsw i64 %indvars.iv297 to i32
  %i.dn = add i32 %i.at, %i.dm
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %i.cz, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  store double 1.000000e+00, ptr %i.dq, align 8, !tbaa !20
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next298, %i.c
  br i1 %exitcond301.not, label %.lr.ph270, label %.lr.ph, !llvm.loop !742

.preheader228:                                    ; preds = %._crit_edge266
  %.not163271.not = icmp slt i32 %2, %i.m
  br i1 %.not163271.not, label %.preheader.preheader, label %.lr.ph.i207.preheader

.preheader.preheader:                             ; preds = %.preheader228
  %i.dr = zext i32 %i.b to i64                    ; 4 uses
  %i.ds = shl nuw nsw i64 %i.au, 3
  %i.dt = or disjoint i32 %i.m, 1
  %i.du = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.dt)
  %i.dv = add i32 %i.du, -2
  %i.dw = sub i32 %i.dv, %2                       ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check452 = icmp ult i32 %i.dw, 3
  %n.vec454 = and i64 %i.dy, 8589934588           ; 4 uses
  %i.dz = add nuw nsw i64 %n.vec454, %i.dr
  %i.ea = or disjoint i64 %n.vec454, 1
  %cmp.n461 = icmp eq i64 %i.dy, %n.vec454
  br label %.preheader

bb.e:                                             ; preds = %.lr.ph270, %._crit_edge266
  %indvar = phi i64 [ 0, %.lr.ph270 ], [ %indvar.next, %._crit_edge266 ] ; 8 uses
  %indvars.iv302 = phi i64 [ 1, %.lr.ph270 ], [ %indvars.iv.next303, %._crit_edge266 ] ; 21 uses
  %i.eb = sub i64 %i.x, %indvar
  %i.ec = xor i64 %indvar, -1
  %i.ed = add i64 %i.ec, %wide.trip.count314      ; 3 uses
  %i.ee = shl nuw nsw i64 %indvar, 3
  %3 = add nuw i64 %i.ee, 8                       ; 2 uses
  %i.ef = sub i64 %i.cu, %indvar                  ; 3 uses
  %i.eg = sub i64 %i.cs, %indvar                  ; 3 uses
  %i.eh = shl nuw nsw i64 %indvar, 3
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv302
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !513 ; 13 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv302 ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !20 ; 2 uses
  %i.em = tail call double @llvm.fabs.f64(double %i.el) ; 3 uses
  %i.en = trunc nuw nsw i64 %indvars.iv302 to i32 ; 2 uses
  %xtraiter475 = and i64 %i.eb, 1
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.e
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv302
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !513
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv302
  %i.er = load double, ptr %i.eq, align 8, !tbaa !20
  %i.es = tail call double @llvm.fabs.f64(double %i.er) ; 2 uses
  %i.et = fcmp olt double %i.em, %i.es            ; 2 uses
  %.1145.prol = select i1 %i.et, double %i.es, double %i.em ; 2 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv302 to i32
  %.1.prol = select i1 %i.et, i32 %i.eu, i32 %i.en ; 2 uses
  %indvars.iv.next305.prol = add nuw nsw i64 %indvars.iv302, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.e
  %.1145.lcssa.unr = phi double [ poison, %bb.e ], [ %.1145.prol, %.prol.loopexit.unr-lcssa ]
  %.1.lcssa.unr = phi i32 [ poison, %bb.e ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv304.unr = phi i64 [ %indvars.iv302, %bb.e ], [ %indvars.iv.next305.prol, %.prol.loopexit.unr-lcssa ]
  %.0251.unr = phi i32 [ %i.en, %bb.e ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %.0144250.unr = phi double [ %i.em, %bb.e ], [ %.1145.prol, %.prol.loopexit.unr-lcssa ]
  %i.ev = icmp eq i64 %i.cw, %indvar
  br i1 %i.ev, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.1, %.new ], [ %indvars.iv304.unr, %.prol.loopexit ] ; 4 uses
  %.0251 = phi i32 [ %.1.1, %.new ], [ %.0251.unr, %.prol.loopexit ]
  %.0144250 = phi double [ %.1145.1, %.new ], [ %.0144250.unr, %.prol.loopexit ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv304
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !513
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv302
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !20
  %i.fa = tail call double @llvm.fabs.f64(double %i.ez) ; 2 uses
  %i.fb = fcmp olt double %.0144250, %i.fa        ; 2 uses
  %.1145 = select i1 %i.fb, double %i.fa, double %.0144250 ; 2 uses
  %i.fc = trunc nuw nsw i64 %indvars.iv304 to i32
  %.1 = select i1 %i.fb, i32 %i.fc, i32 %.0251
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next305
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !513
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv302
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !20
  %i.fh = tail call double @llvm.fabs.f64(double %i.fg) ; 2 uses
  %i.fi = fcmp olt double %.1145, %i.fh           ; 2 uses
  %.1145.1 = select i1 %i.fi, double %i.fh, double %.1145 ; 2 uses
  %i.fj = trunc nuw nsw i64 %indvars.iv.next305 to i32
  %.1.1 = select i1 %i.fi, i32 %i.fj, i32 %.1     ; 2 uses
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %exitcond308.not.1 = icmp eq i64 %indvars.iv.next305.1, %i.c
  br i1 %exitcond308.not.1, label %.unr-lcssa, label %.new, !llvm.loop !743

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.1145.lcssa = phi double [ %.1145.lcssa.unr, %.prol.loopexit ], [ %.1145.1, %.new ]
  %.1.lcssa = phi i32 [ %.1.lcssa.unr, %.prol.loopexit ], [ %.1.1, %.new ] ; 2 uses
  %i.fk = fcmp ult double %.1145.lcssa, f0x3BFD83C94FB6D2AC
  br i1 %i.fk, label %.lr.ph.i184, label %bb.f

bb.f:                                             ; preds = %.unr-lcssa
  %i.fl = zext i32 %.1.lcssa to i64
  %.not165 = icmp eq i64 %indvars.iv302, %i.fl
  %.not166252 = icmp sgt i64 %indvars.iv302, %i.cn ; 2 uses
  %or.cond = select i1 %.not165, i1 true, i1 %.not166252
  br i1 %or.cond, label %.loopexit231, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.f
  %i.fm = sext i32 %.1.lcssa to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !513 ; 6 uses
  %min.iters.check436 = icmp ult i64 %i.ed, 4
  br i1 %min.iters.check436, label %scalar.ph435.preheader, label %vector.memcheck427

vector.memcheck427:                               ; preds = %.lr.ph254
  %scevgep428 = getelementptr nuw i8, ptr %i.fo, i64 %3
  %scevgep429 = getelementptr i8, ptr %i.fo, i64 %i.cv
  %scevgep430 = getelementptr i8, ptr %i.ej, i64 %3
  %scevgep431 = getelementptr i8, ptr %i.ej, i64 %i.cv
  %bound0432 = icmp ult ptr %scevgep428, %scevgep431
  %bound1433 = icmp ult ptr %scevgep430, %scevgep429
  %found.conflict434 = and i1 %bound0432, %bound1433
  br i1 %found.conflict434, label %scalar.ph435.preheader, label %vector.ph437

vector.ph437:                                     ; preds = %vector.memcheck427
  %n.vec438 = and i64 %i.ed, -4                   ; 3 uses
  %i.fp = add i64 %indvars.iv302, %n.vec438
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %i.fq = add nuw i64 %indvars.iv302, %index440   ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fq ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load441 = load <2 x double>, ptr %i.fr, align 8, !tbaa !20, !alias.scope !744, !noalias !747
  %wide.load442 = load <2 x double>, ptr %i.fs, align 8, !tbaa !20, !alias.scope !744, !noalias !747
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.fq ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %wide.load443 = load <2 x double>, ptr %i.ft, align 8, !tbaa !20, !alias.scope !747
  %wide.load444 = load <2 x double>, ptr %i.fu, align 8, !tbaa !20, !alias.scope !747
  store <2 x double> %wide.load443, ptr %i.fr, align 8, !tbaa !20, !alias.scope !744, !noalias !747
  store <2 x double> %wide.load444, ptr %i.fs, align 8, !tbaa !20, !alias.scope !744, !noalias !747
  store <2 x double> %wide.load441, ptr %i.ft, align 8, !tbaa !20, !alias.scope !747
  store <2 x double> %wide.load442, ptr %i.fu, align 8, !tbaa !20, !alias.scope !747
  %index.next445 = add nuw i64 %index440, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next445, %n.vec438
  br i1 %i.fv, label %middle.block446, label %vector.body439, !llvm.loop !749

middle.block446:                                  ; preds = %vector.body439
  %cmp.n447 = icmp eq i64 %i.ed, %n.vec438
  br i1 %cmp.n447, label %.loopexit231.loopexit, label %scalar.ph435.preheader

scalar.ph435.preheader:                           ; preds = %vector.memcheck427, %.lr.ph254, %middle.block446
  %indvars.iv311.ph = phi i64 [ %indvars.iv302, %vector.memcheck427 ], [ %indvars.iv302, %.lr.ph254 ], [ %i.fp, %middle.block446 ] ; 6 uses
  %xtraiter478 = and i64 %indvars.iv311.ph, 1
  %lcmp.mod479.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod479.not, label %scalar.ph435.prol.loopexit, label %scalar.ph435.prol

scalar.ph435.prol:                                ; preds = %scalar.ph435.preheader
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv311.ph ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !20
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv311.ph ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !20
  store double %i.fz, ptr %i.fw, align 8, !tbaa !20
  store double %i.fx, ptr %i.fy, align 8, !tbaa !20
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv311.ph, 1
  br label %scalar.ph435.prol.loopexit

scalar.ph435.prol.loopexit:                       ; preds = %scalar.ph435.prol, %scalar.ph435.preheader
  %indvars.iv311.unr = phi i64 [ %indvars.iv311.ph, %scalar.ph435.preheader ], [ %indvars.iv.next312.prol, %scalar.ph435.prol ]
  %i.ga = icmp eq i64 %indvars.iv311.ph, %i.cx
  br i1 %i.ga, label %.loopexit231.loopexit, label %scalar.ph435

scalar.ph435:                                     ; preds = %scalar.ph435.prol.loopexit, %scalar.ph435
  %indvars.iv311 = phi i64 [ %indvars.iv.next312.1, %scalar.ph435 ], [ %indvars.iv311.unr, %scalar.ph435.prol.loopexit ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv311 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !20
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv311 ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !20
  store double %i.ge, ptr %i.gb, align 8, !tbaa !20
  store double %i.gc, ptr %i.gd, align 8, !tbaa !20
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next312 ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !20
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.next312 ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !20
  store double %i.gi, ptr %i.gf, align 8, !tbaa !20
  store double %i.gg, ptr %i.gh, align 8, !tbaa !20
  %indvars.iv.next312.1 = add nuw nsw i64 %indvars.iv311, 2 ; 2 uses
  %exitcond315.1 = icmp eq i64 %indvars.iv.next312.1, %wide.trip.count314
  br i1 %exitcond315.1, label %.loopexit231.loopexit, label %scalar.ph435, !llvm.loop !750

.loopexit231.loopexit:                            ; preds = %scalar.ph435.prol.loopexit, %scalar.ph435, %middle.block446
  %.pre346 = load double, ptr %i.ek, align 8, !tbaa !20
  br label %.loopexit231

.loopexit231:                                     ; preds = %.loopexit231.loopexit, %bb.f
  %i.gj = phi double [ %.pre346, %.loopexit231.loopexit ], [ %i.el, %bb.f ] ; 2 uses
  br i1 %.not166252, label %._crit_edge266, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %.loopexit231
  %min.iters.check415 = icmp ult i64 %i.ef, 2
  br i1 %min.iters.check415, label %.lr.ph258.preheader471, label %vector.ph416

vector.ph416:                                     ; preds = %.lr.ph258.preheader
  %n.vec417 = and i64 %i.ef, -2                   ; 3 uses
  %i.gk = sub i64 %i.cm, %n.vec417
  %broadcast.splatinsert418 = insertelement <2 x double> poison, double %i.gj, i64 0
  %broadcast.splat419 = shufflevector <2 x double> %broadcast.splatinsert418, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next423, %vector.body420 ] ; 2 uses
  %i.gl = sub i64 %i.cm, %index421
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.gl
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -8 ; 2 uses
  %wide.load422 = load <2 x double>, ptr %i.gn, align 8, !tbaa !20
  %i.go = fdiv <2 x double> %wide.load422, %broadcast.splat419
  store <2 x double> %i.go, ptr %i.gn, align 8, !tbaa !20
  %index.next423 = add nuw i64 %index421, 2       ; 2 uses
  %i.gp = icmp eq i64 %index.next423, %n.vec417
  br i1 %i.gp, label %middle.block424, label %vector.body420, !llvm.loop !751

middle.block424:                                  ; preds = %vector.body420
  %cmp.n425 = icmp eq i64 %i.ef, %n.vec417
  br i1 %cmp.n425, label %.lr.ph265.split.preheader, label %.lr.ph258.preheader471

.lr.ph258.preheader471:                           ; preds = %.lr.ph258.preheader, %middle.block424
  %indvars.iv316.ph = phi i64 [ %i.cm, %.lr.ph258.preheader ], [ %i.gk, %middle.block424 ]
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader471, %.lr.ph258
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %.lr.ph258 ], [ %indvars.iv316.ph, %.lr.ph258.preheader471 ] ; 3 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %indvars.iv316 ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !20
  %i.gs = fdiv double %i.gr, %i.gj
  store double %i.gs, ptr %i.gq, align 8, !tbaa !20
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, -1
  %.not167.not = icmp sgt i64 %indvars.iv316, %indvars.iv302
  br i1 %.not167.not, label %.lr.ph258, label %.lr.ph265.split.preheader, !llvm.loop !752

.lr.ph265.split.preheader:                        ; preds = %.lr.ph258, %middle.block424
  %i.gt = getelementptr i8, ptr %i.ej, i64 %i.eh
  %scevgep393 = getelementptr i8, ptr %i.gt, i64 8
  %scevgep394 = getelementptr i8, ptr %i.ej, i64 %i.cq
  %min.iters.check396 = icmp ult i64 %i.eg, 4
  %n.vec398 = and i64 %i.eg, -4                   ; 3 uses
  %i.gu = sub i64 %i.cm, %n.vec398
  %cmp.n412 = icmp eq i64 %i.eg, %n.vec398
  br label %.lr.ph265.split

.lr.ph265.split:                                  ; preds = %.lr.ph265.split.preheader, %..loopexit_crit_edge
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %..loopexit_crit_edge ], [ 1, %.lr.ph265.split.preheader ] ; 3 uses
  %.not169 = icmp eq i64 %indvars.iv322, %indvars.iv302
  br i1 %.not169, label %..loopexit_crit_edge, label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph265.split
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv322
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !513 ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv302 ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !20
  %i.gz = fneg double %i.gy                       ; 2 uses
  br i1 %min.iters.check396, label %scalar.ph395.preheader, label %vector.memcheck391

vector.memcheck391:                               ; preds = %.lr.ph262
  %scevgep392 = getelementptr i8, ptr %i.gw, i64 %i.cq
  %bound0 = icmp ult ptr %i.gx, %scevgep394
  %bound1 = icmp ult ptr %scevgep393, %scevgep392
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck391
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gz, i64 0 ; 2 uses
  %i.ha = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next410, %vector.body399 ] ; 2 uses
  %i.hc = sub i64 %i.cm, %index400                ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -8 ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.hd, i64 -24 ; 2 uses
  %wide.load401 = load <2 x double>, ptr %i.he, align 8, !tbaa !20, !alias.scope !753, !noalias !756
  %wide.load402 = load <2 x double>, ptr %i.hf, align 8, !tbaa !20, !alias.scope !753, !noalias !756
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.hc ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -8
  %i.hi = getelementptr inbounds i8, ptr %i.hg, i64 -24
  %wide.load404 = load <2 x double>, ptr %i.hh, align 8, !tbaa !20, !alias.scope !756
  %wide.load405 = load <2 x double>, ptr %i.hi, align 8, !tbaa !20, !alias.scope !756
  %reverse408 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %wide.load404, <2 x double> %wide.load401)
  %reverse409 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %wide.load405, <2 x double> %wide.load402)
  store <2 x double> %reverse408, ptr %i.he, align 8, !tbaa !20, !alias.scope !753, !noalias !756
  store <2 x double> %reverse409, ptr %i.hf, align 8, !tbaa !20, !alias.scope !753, !noalias !756
  %index.next410 = add nuw i64 %index400, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next410, %n.vec398
  br i1 %i.hj, label %middle.block411, label %vector.body399, !llvm.loop !758

middle.block411:                                  ; preds = %vector.body399
  br i1 %cmp.n412, label %..loopexit_crit_edge, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %vector.memcheck391, %.lr.ph262, %middle.block411
  %indvars.iv319.ph = phi i64 [ %i.cm, %vector.memcheck391 ], [ %i.cm, %.lr.ph262 ], [ %i.gu, %middle.block411 ]
  br label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %scalar.ph395 ], [ %indvars.iv319.ph, %scalar.ph395.preheader ] ; 4 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %indvars.iv319 ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !20
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %indvars.iv319
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !20
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.hn, double %i.hl)
  store double %i.ho, ptr %i.hk, align 8, !tbaa !20
  %indvars.iv.next320 = add nsw i64 %indvars.iv319, -1
  %.not170.not = icmp sgt i64 %indvars.iv319, %indvars.iv302
  br i1 %.not170.not, label %scalar.ph395, label %..loopexit_crit_edge, !llvm.loop !759

..loopexit_crit_edge:                             ; preds = %scalar.ph395, %middle.block411, %.lr.ph265.split
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %i.c
  br i1 %exitcond326.not, label %._crit_edge266, label %.lr.ph265.split, !llvm.loop !760

.lr.ph.i184:                                      ; preds = %.unr-lcssa, %bb.h
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186, %bb.h ], [ 0, %.unr-lcssa ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i185
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !513 ; 2 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i184
  tail call void @_ZdaPv(ptr noundef nonnull %i.hq) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i184
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i185, 1 ; 2 uses
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i186, %i.c
  br i1 %exitcond.not.i187, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit, label %.lr.ph.i184, !llvm.loop !520

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit: ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit, %bb.j
  %indvars.iv.i192 = phi i64 [ %indvars.iv.next.i193, %bb.j ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit ] ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i192
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !513 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i191
  tail call void @_ZdaPv(ptr noundef nonnull %i.ht) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i191
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i192, 1 ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %i.c
  br i1 %exitcond.not.i194, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195, label %.lr.ph.i191, !llvm.loop !520

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195: ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #43
  br label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195, %bb.l
  %indvars.iv.i200 = phi i64 [ %indvars.iv.next.i201, %bb.l ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i200
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !513 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i199
  tail call void @_ZdaPv(ptr noundef nonnull %i.hw) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i199
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, %i.c
  br i1 %exitcond.not.i202, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit203, label %.lr.ph.i199, !llvm.loop !520

._crit_edge266:                                   ; preds = %..loopexit_crit_edge, %.loopexit231
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next303, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond329.not, label %.preheader228, label %bb.e, !llvm.loop !761

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge275
  %indvars.iv339 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next340, %._crit_edge275 ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv339
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !513 ; 3 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv339
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !513 ; 3 uses
  br i1 %min.iters.check452, label %scalar.ph451.preheader, label %vector.memcheck449

vector.memcheck449:                               ; preds = %.preheader
  %i.ic = ptrtoaddr ptr %i.ib to i64
  %i.id = ptrtoaddr ptr %i.hz to i64
  %i.ie = add i64 %i.ds, %i.id
  %i.if = sub i64 %i.ic, %i.ie
  %i.ig = add i64 %i.if, 7
  %diff.check450 = icmp ult i64 %i.ig, 31
  br i1 %diff.check450, label %scalar.ph451.preheader, label %vector.ph453

vector.ph453:                                     ; preds = %vector.memcheck449
  %invariant.gep = getelementptr [8 x i8], ptr %i.hz, i64 %i.dr
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph453
  %index456 = phi i64 [ 0, %vector.ph453 ], [ %index.next459, %vector.body455 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index456 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load457 = load <2 x double>, ptr %gep, align 8, !tbaa !20
  %wide.load458 = load <2 x double>, ptr %i.ih, align 8, !tbaa !20
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %index456 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store <2 x double> %wide.load457, ptr %i.ij, align 8, !tbaa !20
  store <2 x double> %wide.load458, ptr %i.ik, align 8, !tbaa !20
  %index.next459 = add nuw i64 %index456, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.il, label %middle.block460, label %vector.body455, !llvm.loop !762

middle.block460:                                  ; preds = %vector.body455
  br i1 %cmp.n461, label %._crit_edge275, label %scalar.ph451.preheader

scalar.ph451.preheader:                           ; preds = %vector.memcheck449, %.preheader, %middle.block460
  %indvars.iv334.ph = phi i64 [ %i.dr, %vector.memcheck449 ], [ %i.dr, %.preheader ], [ %i.dz, %middle.block460 ]
  %indvars.iv332.ph = phi i64 [ 1, %vector.memcheck449 ], [ 1, %.preheader ], [ %i.ea, %middle.block460 ]
  br label %scalar.ph451

scalar.ph451:                                     ; preds = %scalar.ph451.preheader, %scalar.ph451
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %scalar.ph451 ], [ %indvars.iv334.ph, %scalar.ph451.preheader ] ; 3 uses
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %scalar.ph451 ], [ %indvars.iv332.ph, %scalar.ph451.preheader ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv334
  %i.in = load double, ptr %i.im, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %indvars.iv332
  store double %i.in, ptr %i.io, align 8, !tbaa !20
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1
  %i.ip = trunc nuw i64 %indvars.iv334 to i32
  %.not163 = icmp slt i32 %i.m, %i.ip
  br i1 %.not163, label %._crit_edge275, label %scalar.ph451, !llvm.loop !763

._crit_edge275:                                   ; preds = %scalar.ph451, %middle.block460
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next340, %i.c
  br i1 %exitcond345.not, label %.lr.ph.i207.preheader, label %.preheader, !llvm.loop !764

.lr.ph.i207.preheader:                            ; preds = %._crit_edge275, %.preheader228, %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %bb.n
  %indvars.iv.i208 = phi i64 [ %indvars.iv.next.i209, %bb.n ], [ 0, %.lr.ph.i207.preheader ] ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i208
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !513 ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i207
  tail call void @_ZdaPv(ptr noundef nonnull %i.ir) #43
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i207
  %indvars.iv.next.i209 = add nuw nsw i64 %indvars.iv.i208, 1 ; 2 uses
  %exitcond.not.i210 = icmp eq i64 %indvars.iv.next.i209, %i.c
  br i1 %exitcond.not.i210, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit211, label %.lr.ph.i207, !llvm.loop !520

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit211: ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  br label %.lr.ph.i215
end_hunk_0
