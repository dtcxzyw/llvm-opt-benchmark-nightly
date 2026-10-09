Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlatm7?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dlatm7_:bb.a
  store double 1.000000e+00, ptr %i.cq, align 8, !tbaa !28
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %._crit_edge184, label %.lr.ph183, !llvm.loop !17

._crit_edge184:                                   ; preds = %.lr.ph183, %middle.block296, %vec.epilog.middle.block309, %bb.m
  %.not155.not185 = icmp slt i32 %i.ce, %i.c
  br i1 %.not155.not185, label %.lr.ph188.preheader, label %._crit_edge184.._crit_edge189_crit_edge

._crit_edge184.._crit_edge189_crit_edge:          ; preds = %._crit_edge184
  %.pre = zext nneg i32 %i.ce to i64
  br label %._crit_edge189

.lr.ph188.preheader:                              ; preds = %._crit_edge184
  %i.cr = sext i32 %i.ce to i64                   ; 2 uses
  %i.cs = shl nsw i64 %i.cr, 3
  %scevgep229 = getelementptr i8, ptr %5, i64 %i.cs
  %i.ct = xor i32 %i.ce, -1
  %i.cu = add i32 %i.c, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = add nuw nsw i64 %i.cw, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep229, i8 0, i64 %i.cx, i1 false), !tbaa !28
  br label %._crit_edge189

._crit_edge189:                                   ; preds = %._crit_edge184.._crit_edge189_crit_edge, %.lr.ph188.preheader
  %.pre-phi = phi i64 [ %.pre, %._crit_edge184.._crit_edge189_crit_edge ], [ %i.cr, %.lr.ph188.preheader ]
  %i.cy = load double, ptr %1, align 8, !tbaa !28
  %i.cz = fdiv double 1.000000e+00, %i.cy
  %i.da = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.pre-phi
  store double %i.cz, ptr %i.da, align 8, !tbaa !28
  br label %.loopexit167

bb.n:                                             ; preds = %bb.k
  store double 1.000000e+00, ptr %5, align 8, !tbaa !28
  %.not266 = icmp eq i32 %i.c, 1
  br i1 %.not266, label %.loopexit167, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.db = load i32, ptr %7, align 4, !tbaa !26    ; 2 uses
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %bb.p, label %.loopexit167

bb.p:                                             ; preds = %bb.o
  %i.dd = add nsw i32 %i.db, -1
  %i.de = uitofp nneg i32 %i.dd to double
  %i.df = fdiv double -1.000000e+00, %i.de
  %i.dg = load double, ptr %1, align 8, !tbaa !28
  %i.dh = tail call double @pow(double noundef %i.dg, double noundef %i.df) #8 ; 6 uses
  %i.di = load i32, ptr %7, align 4, !tbaa !26    ; 5 uses
  %.not152173 = icmp slt i32 %i.di, 2
  br i1 %.not152173, label %._crit_edge, label %.lr.ph175.preheader

.lr.ph175.preheader:                              ; preds = %bb.p
  %i.dj = add nuw i32 %i.di, 1                    ; 3 uses
  %wide.trip.count219 = zext i32 %i.dj to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count219, 1
  %i.dk = icmp eq i32 %i.dj, 3
  br i1 %i.dk, label %.lr.ph175.epil.preheader, label %.lr.ph175.preheader.new

.lr.ph175.preheader.new:                          ; preds = %.lr.ph175.preheader
  %i.dl = and i64 %wide.trip.count219, 4294967294
  %i.dm = add nsw i64 %i.dl, -4
  br label %.lr.ph175

.lr.ph175:                                        ; preds = %dpow_ui.exit.1, %.lr.ph175.preheader.new
  %indvars.iv216 = phi i64 [ 2, %.lr.ph175.preheader.new ], [ %indvars.iv.next217.1, %dpow_ui.exit.1 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph175.preheader.new ], [ %niter.next.1, %dpow_ui.exit.1 ] ; 2 uses
  %i.dn = add nsw i64 %indvars.iv216, -2          ; 2 uses
  %.not1821.i = icmp eq i64 %i.dn, 0
  br i1 %.not1821.i, label %dpow_ui.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph175
  %i.do = lshr exact i64 %i.dn, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.dp = phi i64 [ %i.dt, %.lr.ph.i ], [ %i.do, %.lr.ph.i.preheader ] ; 2 uses
  %spec.select23.i = phi double [ %spec.select.i, %.lr.ph.i ], [ %i.dh, %.lr.ph.i.preheader ] ; 2 uses
  %.11422.i = phi double [ %i.dq, %.lr.ph.i ], [ %i.dh, %.lr.ph.i.preheader ] ; 2 uses
  %i.dq = fmul double %.11422.i, %.11422.i        ; 2 uses
  %i.dr = and i64 %i.dp, 1
  %.not17.i = icmp eq i64 %i.dr, 0
  %i.ds = fmul double %spec.select23.i, %i.dq
  %spec.select.i = select i1 %.not17.i, double %spec.select23.i, double %i.ds ; 2 uses
  %i.dt = lshr i64 %i.dp, 1                       ; 2 uses
  %.not18.i = icmp eq i64 %i.dt, 0
  br i1 %.not18.i, label %dpow_ui.exit, label %.lr.ph.i

dpow_ui.exit:                                     ; preds = %.lr.ph.i, %.lr.ph175
  %.2.i = phi double [ %i.dh, %.lr.ph175 ], [ %spec.select.i, %.lr.ph.i ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv216
  store double %.2.i, ptr %i.du, align 8, !tbaa !28
  %i.dv = lshr exact i64 %indvars.iv216, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %dpow_ui.exit
  %i.dw = phi i64 [ %i.ea, %.lr.ph.i.1 ], [ %i.dv, %dpow_ui.exit ] ; 2 uses
  %spec.select23.i.1 = phi double [ %spec.select.i.1, %.lr.ph.i.1 ], [ 1.000000e+00, %dpow_ui.exit ] ; 2 uses
  %.11422.i.1 = phi double [ %i.dx, %.lr.ph.i.1 ], [ %i.dh, %dpow_ui.exit ] ; 2 uses
  %i.dx = fmul double %.11422.i.1, %.11422.i.1    ; 2 uses
  %i.dy = and i64 %i.dw, 1
  %.not17.i.1 = icmp eq i64 %i.dy, 0
  %i.dz = fmul double %spec.select23.i.1, %i.dx
  %spec.select.i.1 = select i1 %.not17.i.1, double %spec.select23.i.1, double %i.dz ; 2 uses
  %i.ea = lshr i64 %i.dw, 1                       ; 2 uses
  %.not18.i.1 = icmp eq i64 %i.ea, 0
  br i1 %.not18.i.1, label %dpow_ui.exit.1, label %.lr.ph.i.1

dpow_ui.exit.1:                                   ; preds = %.lr.ph.i.1
  %i.eb = getelementptr [8 x i8], ptr %5, i64 %indvars.iv216
  store double %spec.select.i.1, ptr %i.eb, align 8, !tbaa !28
  %indvars.iv.next217.1 = add nuw nsw i64 %indvars.iv216, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.dm
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph175, !llvm.loop !18

._crit_edge.loopexit.unr-lcssa:                   ; preds = %dpow_ui.exit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph175.epil.preheader

.lr.ph175.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph175.preheader
  %indvars.iv216.epil.init = phi i64 [ 2, %.lr.ph175.preheader ], [ %indvars.iv.next217.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod344 = trunc i32 %i.dj to i1
  tail call void @llvm.assume(i1 %lcmp.mod344)
  %i.ec = add nsw i64 %indvars.iv216.epil.init, -1 ; 2 uses
  %i.ed = and i64 %i.ec, 1
  %.not1719.i.epil = icmp eq i64 %i.ed, 0
  %spec.select20.i.epil = select i1 %.not1719.i.epil, double 1.000000e+00, double %i.dh ; 2 uses
  %i.ee = lshr i64 %i.ec, 1                       ; 2 uses
  %.not1821.i.epil = icmp eq i64 %i.ee, 0
  br i1 %.not1821.i.epil, label %dpow_ui.exit.epil, label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph175.epil.preheader, %.lr.ph.i.epil
  %i.ef = phi i64 [ %i.ej, %.lr.ph.i.epil ], [ %i.ee, %.lr.ph175.epil.preheader ] ; 2 uses
  %spec.select23.i.epil = phi double [ %spec.select.i.epil, %.lr.ph.i.epil ], [ %spec.select20.i.epil, %.lr.ph175.epil.preheader ] ; 2 uses
  %.11422.i.epil = phi double [ %i.eg, %.lr.ph.i.epil ], [ %i.dh, %.lr.ph175.epil.preheader ] ; 2 uses
  %i.eg = fmul double %.11422.i.epil, %.11422.i.epil ; 2 uses
  %i.eh = and i64 %i.ef, 1
  %.not17.i.epil = icmp eq i64 %i.eh, 0
  %i.ei = fmul double %spec.select23.i.epil, %i.eg
  %spec.select.i.epil = select i1 %.not17.i.epil, double %spec.select23.i.epil, double %i.ei ; 2 uses
  %i.ej = lshr i64 %i.ef, 1                       ; 2 uses
  %.not18.i.epil = icmp eq i64 %i.ej, 0
  br i1 %.not18.i.epil, label %dpow_ui.exit.epil, label %.lr.ph.i.epil

dpow_ui.exit.epil:                                ; preds = %.lr.ph.i.epil, %.lr.ph175.epil.preheader
  %.2.i.epil = phi double [ %spec.select20.i.epil, %.lr.ph175.epil.preheader ], [ %spec.select.i.epil, %.lr.ph.i.epil ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv216.epil.init
  store double %.2.i.epil, ptr %i.ek, align 8, !tbaa !28
  br label %._crit_edge

._crit_edge:                                      ; preds = %dpow_ui.exit.epil, %._crit_edge.loopexit.unr-lcssa, %bb.p
  %i.el = load i32, ptr %6, align 4, !tbaa !26    ; 2 uses
  %.not153.not176 = icmp slt i32 %i.di, %i.el
  br i1 %.not153.not176, label %.lr.ph179.preheader, label %.loopexit167

.lr.ph179.preheader:                              ; preds = %._crit_edge
  %i.em = sext i32 %i.di to i64
  %i.en = shl nsw i64 %i.em, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.en
  %i.eo = xor i32 %i.di, -1
  %i.ep = add i32 %i.el, %i.eo
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.es, i1 false), !tbaa !28
  br label %.loopexit167

bb.q:                                             ; preds = %bb.k
  store double 1.000000e+00, ptr %5, align 8, !tbaa !28
  %.not = icmp eq i32 %i.c, 1
  br i1 %.not, label %.loopexit167, label %iter.check

iter.check:                                       ; preds = %bb.q
  %i.et = load double, ptr %1, align 8, !tbaa !28
  %i.eu = fdiv double 1.000000e+00, %i.et         ; 4 uses
  %i.ev = fsub double 1.000000e+00, %i.eu
  %i.ew = add nsw i32 %i.c, -1
  %i.ex = uitofp nneg i32 %i.ew to double
  %i.ey = fdiv double %i.ev, %i.ex                ; 3 uses
  %i.ez = add nuw i32 %i.c, 1
  %wide.trip.count214 = zext i32 %i.ez to i64     ; 2 uses
  %i.fa = add nsw i64 %wide.trip.count214, -2     ; 7 uses
  %min.iters.check = icmp ult i64 %i.fa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check268 = icmp ult i64 %i.fa, 16
  br i1 %min.iters.check268, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fb = and i64 %i.fa, 12
  %n.vec = and i64 %i.fa, -16                     ; 4 uses
  %i.fc = or disjoint i64 %n.vec, 2               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.eu, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert269 = insertelement <4 x double> poison, double %i.ey, i64 0
  %broadcast.splat270 = shufflevector <4 x double> %broadcast.splatinsert269, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %9 = sub <4 x i32> %broadcast.splat272, %vec.ind
  %10 = sub <4 x i32> %broadcast.splat272, %step.add
  %11 = sub <4 x i32> %broadcast.splat272, %step.add.2
  %12 = sub <4 x i32> %broadcast.splat272, %step.add.3
  %i.fd = uitofp nneg <4 x i32> %9 to <4 x double>
  %i.fe = uitofp nneg <4 x i32> %10 to <4 x double>
  %i.ff = uitofp nneg <4 x i32> %11 to <4 x double>
  %i.fg = uitofp nneg <4 x i32> %12 to <4 x double>
  %i.fh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fd, <4 x double> %broadcast.splat270, <4 x double> %broadcast.splat)
  %i.fi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fe, <4 x double> %broadcast.splat270, <4 x double> %broadcast.splat)
  %i.fj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ff, <4 x double> %broadcast.splat270, <4 x double> %broadcast.splat)
  %i.fk = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fg, <4 x double> %broadcast.splat270, <4 x double> %broadcast.splat)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 48
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 80
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 112
  store <4 x double> %i.fh, ptr %i.fm, align 8, !tbaa !28
  store <4 x double> %i.fi, ptr %i.fn, align 8, !tbaa !28
  store <4 x double> %i.fj, ptr %i.fo, align 8, !tbaa !28
  store <4 x double> %i.fk, ptr %i.fp, align 8, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fa, %n.vec
  br i1 %cmp.n, label %.loopexit167, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.fc, %vec.epilog.iter.check ], [ 2, %vector.main.loop.iter.check ]
  %n.vec273 = and i64 %i.fa, -4                   ; 3 uses
  %i.fr = or disjoint i64 %n.vec273, 2
  %broadcast.splatinsert274 = insertelement <4 x double> poison, double %i.eu, i64 0
  %broadcast.splat275 = shufflevector <4 x double> %broadcast.splatinsert274, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert276 = insertelement <4 x double> poison, double %i.ey, i64 0
  %broadcast.splat277 = shufflevector <4 x double> %broadcast.splatinsert276, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert278 = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat279 = shufflevector <4 x i32> %broadcast.splatinsert278, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fs = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert280 = insertelement <4 x i32> poison, i32 %i.fs, i64 0
  %broadcast.splat281 = shufflevector <4 x i32> %broadcast.splatinsert280, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat281, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index282 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next284, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind283 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next285, %vec.epilog.vector.body ] ; 2 uses
  %i.ft = sub <4 x i32> %broadcast.splat279, %vec.ind283
  %i.fu = uitofp nneg <4 x i32> %i.ft to <4 x double>
  %i.fv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fu, <4 x double> %broadcast.splat277, <4 x double> %broadcast.splat275)
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index282
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <4 x double> %i.fv, ptr %i.fx, align 8, !tbaa !28
  %index.next284 = add nuw i64 %index282, 4       ; 2 uses
  %vec.ind.next285 = add <4 x i32> %vec.ind283, splat (i32 4)
  %i.fy = icmp eq i64 %index.next284, %n.vec273
  br i1 %i.fy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n286 = icmp eq i64 %i.fa, %n.vec273
  br i1 %cmp.n286, label %.loopexit167, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv211.ph = phi i64 [ 2, %iter.check ], [ %i.fc, %vec.epilog.iter.check ], [ %i.fr, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %vec.epilog.scalar.ph ], [ %indvars.iv211.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.fz = trunc i64 %indvars.iv211 to i32
  %i.ga = sub i32 %i.c, %i.fz
  %i.gb = uitofp nneg i32 %i.ga to double
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.ey, double %i.eu)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv211
  store double %i.gc, ptr %i.gd, align 8, !tbaa !28
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %.loopexit167, label %vec.epilog.scalar.ph, !llvm.loop !21

bb.r:                                             ; preds = %bb.k
  %i.ge = load double, ptr %1, align 8, !tbaa !28
  %i.gf = fdiv double 1.000000e+00, %i.ge
  %i.gg = tail call double @log(double noundef %i.gf) #8
  %i.gh = load i32, ptr %6, align 4, !tbaa !26    ; 2 uses
  %.not150170 = icmp slt i32 %i.gh, 1
  br i1 %.not150170, label %.loopexit167, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.r
  %i.gi = add nuw i32 %i.gh, 1
  %wide.trip.count = zext i32 %i.gi to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.gj = tail call double @dlaran_(ptr noundef %4) #8
  %i.gk = fmul double %i.gg, %i.gj
  %i.gl = tail call double @exp(double noundef %i.gk) #8
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  store double %i.gl, ptr %i.gm, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit167, label %.lr.ph, !llvm.loop !22

bb.s:                                             ; preds = %bb.k
  tail call void @dlarnv_(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6, ptr noundef %5) #8
  br label %.loopexit167

.loopexit167:                                     ; preds = %.lr.ph, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph179.preheader, %bb.r, %._crit_edge, %bb.q, %bb.n, %bb.o, %bb.s, %._crit_edge189, %._crit_edge199
  %i.gn = load i32, ptr %0, align 4, !tbaa !26    ; 6 uses
  switch i32 %i.gn, label %bb.t [
    i32 -6, label %thread-pre-split165
    i32 0, label %thread-pre-split165
    i32 6, label %thread-pre-split165
  ]

bb.t:                                             ; preds = %.loopexit167
  %i.go = load i32, ptr %2, align 4, !tbaa !26
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.u, label %thread-pre-split165

bb.u:                                             ; preds = %bb.t
  %i.gq = load i32, ptr %6, align 4, !tbaa !26    ; 2 uses
  %.not161200 = icmp slt i32 %i.gq, 1
  br i1 %.not161200, label %thread-pre-split165, label %.lr.ph203.preheader

.lr.ph203.preheader:                              ; preds = %bb.u
  %i.gr = add nuw i32 %i.gq, 1
  %wide.trip.count245 = zext i32 %i.gr to i64
  br label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203.preheader, %bb.w
  %indvars.iv242 = phi i64 [ 1, %.lr.ph203.preheader ], [ %indvars.iv.next243, %bb.w ] ; 2 uses
  %i.gs = tail call double @dlaran_(ptr noundef %4) #8
  %i.gt = fcmp ogt double %i.gs, 5.000000e-01
  br i1 %i.gt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph203
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv242 ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !28
  %i.gw = fneg double %i.gv
  store double %i.gw, ptr %i.gu, align 8, !tbaa !28
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph203, %bb.v
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1 ; 2 uses
  %exitcond246.not = icmp eq i64 %indvars.iv.next243, %wide.trip.count245
  br i1 %exitcond246.not, label %thread-pre-split165.loopexit, label %.lr.ph203, !llvm.loop !23

thread-pre-split165.loopexit:                     ; preds = %bb.w
  %.pr166.pre = load i32, ptr %0, align 4, !tbaa !26
  br label %thread-pre-split165

thread-pre-split165:                              ; preds = %bb.u, %thread-pre-split165.loopexit, %.loopexit167, %.loopexit167, %.loopexit167, %bb.t
  %i.gx = phi i32 [ %i.gn, %bb.t ], [ %i.gn, %.loopexit167 ], [ %i.gn, %.loopexit167 ], [ %i.gn, %.loopexit167 ], [ %.pr166.pre, %thread-pre-split165.loopexit ], [ %i.gn, %bb.u ]
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %thread-pre-split165
  %i.gz = load i32, ptr %6, align 4, !tbaa !26    ; 3 uses
  %.not162204 = icmp slt i32 %i.gz, 2
  br i1 %.not162204, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.x
  %i.ha = add nuw nsw i32 %i.gz, 1
  %i.hb = zext nneg i32 %i.ha to i64              ; 5 uses
  %i.hc = lshr i32 %i.gz, 1                       ; 2 uses
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
  %xtraiter347 = and i64 %i.hd, 3                 ; 3 uses
  %i.he = add nsw i32 %i.hc, -1
  %i.hf = icmp ult i32 %i.he, 3
  br i1 %i.hf, label %.epil.preheader, label %.lr.ph207.new

.lr.ph207.new:                                    ; preds = %.lr.ph207
  %unroll_iter350 = and i64 %i.hd, 1073741820
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.hb
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.lr.ph207.new
  %indvars.iv247 = phi i64 [ 1, %.lr.ph207.new ], [ %indvars.iv.next248.3, %bb.y ] ; 7 uses
  %niter351 = phi i64 [ 0, %.lr.ph207.new ], [ %niter351.next.3, %bb.y ]
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv247 ; 2 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !28
  %i.hi = sub nsw i64 %i.hb, %indvars.iv247
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hi ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !28
  store double %i.hk, ptr %i.hg, align 8, !tbaa !28
  store double %i.hh, ptr %i.hj, align 8, !tbaa !28
  %indvars.iv.next248.neg = xor i64 %indvars.iv247, -1
  %i.hl = getelementptr [8 x i8], ptr %5, i64 %indvars.iv247 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !28
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next248.neg ; 2 uses
  %i.hn = load double, ptr %gep, align 8, !tbaa !28
  store double %i.hn, ptr %i.hl, align 8, !tbaa !28
  store double %i.hm, ptr %gep, align 8, !tbaa !28
  %indvars.iv.next248.1 = add nuw nsw i64 %indvars.iv247, 2 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next248.1 ; 2 uses
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !28
  %i.hq = sub nsw i64 %i.hb, %indvars.iv.next248.1
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hq ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !28
  store double %i.hs, ptr %i.ho, align 8, !tbaa !28
  store double %i.hp, ptr %i.hr, align 8, !tbaa !28
end_hunk_0
