Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasq1?download=true
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dlasq1_:bb.a
  store i32 %i.t, ptr %i.a, align 4, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %i.u = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.u, 1
  %unroll_iter = and i64 %i.u, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %i.v = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.at, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader ], [ %niter.next.1, %.lr.ph ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !20 ; 3 uses
  %i.y = fcmp oge double %i.x, 0.000000e+00
  %i.z = fneg double %i.x
  %i.aa = select i1 %i.y, double %i.x, double %i.z
  store double %i.aa, ptr %i.w, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20 ; 3 uses
  %i.ad = fcmp oge double %i.ac, 0.000000e+00
  %i.ae = fneg double %i.ac
  %i.af = select i1 %i.ad, double %i.ac, double %i.ae ; 2 uses
  %i.ag = fcmp oge double %i.v, %i.af
  %i.ah = select i1 %i.ag, double %i.v, double %i.af ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !20 ; 3 uses
  %i.ak = fcmp oge double %i.aj, 0.000000e+00
  %i.al = fneg double %i.aj
  %i.am = select i1 %i.ak, double %i.aj, double %i.al
  store double %i.am, ptr %i.ai, align 8, !tbaa !20
  %i.an = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.ao = load double, ptr %i.an, align 8, !tbaa !20 ; 3 uses
  %i.ap = fcmp oge double %i.ao, 0.000000e+00
  %i.aq = fneg double %i.ao
  %i.ar = select i1 %i.ap, double %i.ao, double %i.aq ; 2 uses
  %i.as = fcmp oge double %i.ah, %i.ar
  %i.at = select i1 %i.as, double %i.ah, double %i.ar ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !8

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa
  %lcmp.mod182 = trunc i64 %i.u to i1
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !20 ; 3 uses
  %i.aw = fcmp oge double %i.av, 0.000000e+00
  %i.ax = fneg double %i.av
  %i.ay = select i1 %i.aw, double %i.av, double %i.ax
  store double %i.ay, ptr %i.au, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.1
  %i.ba = load double, ptr %i.az, align 8, !tbaa !20 ; 3 uses
  %i.bb = fcmp oge double %i.ba, 0.000000e+00
  %i.bc = fneg double %i.ba
  %i.bd = select i1 %i.bb, double %i.ba, double %i.bc ; 2 uses
  %i.be = fcmp oge double %i.at, %i.bd
  %i.bf = select i1 %i.be, double %i.at, double %i.bd
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa180 = phi double [ %i.at, %._crit_edge.unr-lcssa ], [ %i.bf, %.lr.ph.epil.preheader ] ; 4 uses
  store double %.lcssa180, ptr %i.f, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %wide.trip.count ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !20 ; 3 uses
  %i.bi = fcmp oge double %i.bh, 0.000000e+00
  %i.bj = fneg double %i.bh
  %i.bk = select i1 %i.bi, double %i.bh, double %i.bj
  store double %i.bk, ptr %i.bg, align 8, !tbaa !20
  %i.bl = fcmp oeq double %.lcssa180, 0.000000e+00
  br i1 %i.bl, label %bb.f, label %.lr.ph124.preheader

bb.f:                                             ; preds = %._crit_edge
  call void @dlasrt_(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.d) #5
  br label %bb.i

.lr.ph124.preheader:                              ; preds = %._crit_edge
  %i.bm = zext nneg i32 %i.j to i64               ; 2 uses
  %xtraiter183 = and i64 %i.bm, 7                 ; 3 uses
  %i.bn = add nsw i32 %i.j, -1
  %i.bo = icmp ult i32 %i.bn, 7
  br i1 %i.bo, label %.lr.ph124.epil.preheader, label %.lr.ph124.preheader.new

.lr.ph124.preheader.new:                          ; preds = %.lr.ph124.preheader
  %unroll_iter189 = and i64 %i.bm, 2147483640
  br label %.lr.ph124

.lr.ph124:                                        ; preds = %.lr.ph124, %.lr.ph124.preheader.new
  %indvars.iv145 = phi i64 [ 1, %.lr.ph124.preheader.new ], [ %indvars.iv.next146.7, %.lr.ph124 ] ; 9 uses
  %i.bp = phi double [ %.lcssa180, %.lr.ph124.preheader.new ], [ %i.db, %.lr.ph124 ] ; 2 uses
  %niter190 = phi i64 [ 0, %.lr.ph124.preheader.new ], [ %niter190.next.7, %.lr.ph124 ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145
  %i.br = load double, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %i.bs = fcmp oge double %i.bp, %i.br
  %i.bt = select i1 %i.bs, double %i.bp, double %i.br ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %indvars.iv145
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !20 ; 2 uses
  %i.bw = fcmp oge double %i.bt, %i.bv
  %i.bx = select i1 %i.bw, double %i.bt, double %i.bv ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !20 ; 2 uses
  %i.cb = fcmp oge double %i.bx, %i.ca
  %i.cc = select i1 %i.cb, double %i.bx, double %i.ca ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !20 ; 2 uses
  %i.cg = fcmp oge double %i.cc, %i.cf
  %i.ch = select i1 %i.cg, double %i.cc, double %i.cf ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !20 ; 2 uses
  %i.cl = fcmp oge double %i.ch, %i.ck
  %i.cm = select i1 %i.cl, double %i.ch, double %i.ck ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load double, ptr %i.co, align 8, !tbaa !20 ; 2 uses
  %i.cq = fcmp oge double %i.cm, %i.cp
  %i.cr = select i1 %i.cq, double %i.cm, double %i.cp ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !20 ; 2 uses
  %i.cv = fcmp oge double %i.cr, %i.cu
  %i.cw = select i1 %i.cv, double %i.cr, double %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !20 ; 2 uses
  %i.da = fcmp oge double %i.cw, %i.cz
  %i.db = select i1 %i.da, double %i.cw, double %i.cz ; 3 uses
  %indvars.iv.next146.7 = add nuw nsw i64 %indvars.iv145, 8 ; 2 uses
  %niter190.next.7 = add i64 %niter190, 8         ; 2 uses
  %niter190.ncmp.7 = icmp eq i64 %niter190.next.7, %unroll_iter189
  br i1 %niter190.ncmp.7, label %._crit_edge125.unr-lcssa, label %.lr.ph124, !llvm.loop !9

._crit_edge125.unr-lcssa:                         ; preds = %.lr.ph124
  %lcmp.mod186.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod186.not, label %._crit_edge125, label %.lr.ph124.epil.preheader

.lr.ph124.epil.preheader:                         ; preds = %._crit_edge125.unr-lcssa, %.lr.ph124.preheader
  %indvars.iv145.epil.init = phi i64 [ 1, %.lr.ph124.preheader ], [ %indvars.iv.next146.7, %._crit_edge125.unr-lcssa ]
  %.epil.init185 = phi double [ %.lcssa180, %.lr.ph124.preheader ], [ %i.db, %._crit_edge125.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter183, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %.lr.ph124.epil

.lr.ph124.epil:                                   ; preds = %.lr.ph124.epil, %.lr.ph124.epil.preheader
  %indvars.iv145.epil = phi i64 [ %indvars.iv145.epil.init, %.lr.ph124.epil.preheader ], [ %indvars.iv.next146.epil, %.lr.ph124.epil ] ; 2 uses
  %i.dc = phi double [ %.epil.init185, %.lr.ph124.epil.preheader ], [ %i.dg, %.lr.ph124.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph124.epil.preheader ], [ %epil.iter.next, %.lr.ph124.epil ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv145.epil
  %i.de = load double, ptr %i.dd, align 8, !tbaa !20 ; 2 uses
  %i.df = fcmp oge double %i.dc, %i.de
  %i.dg = select i1 %i.df, double %i.dc, double %i.de ; 2 uses
  %indvars.iv.next146.epil = add nuw nsw i64 %indvars.iv145.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter183
  br i1 %epil.iter.cmp.not, label %._crit_edge125, label %.lr.ph124.epil, !llvm.loop !10

._crit_edge125:                                   ; preds = %.lr.ph124.epil, %._crit_edge125.unr-lcssa
  %.lcssa = phi double [ %i.db, %._crit_edge125.unr-lcssa ], [ %i.dg, %.lr.ph124.epil ]
  store double %.lcssa, ptr %i.f, align 8
  %i.dh = tail call double @dlamch_(ptr noundef nonnull @.str.2) #5
  %i.di = tail call double @dlamch_(ptr noundef nonnull @.str.3) #5
  %i.dj = fdiv double %i.dh, %i.di
  %i.dk = tail call double @sqrt(double noundef %i.dj) #5
  store double %i.dk, ptr %i.c, align 8, !tbaa !20
  tail call void @dcopy_(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %3, ptr noundef nonnull @c__2) #5
  %i.dl = load i32, ptr %0, align 4, !tbaa !18
  %i.dm = add nsw i32 %i.dl, -1
  store i32 %i.dm, ptr %i.a, align 4, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @c__1, ptr noundef nonnull %i.dn, ptr noundef nonnull @c__2) #5
  %i.do = load i32, ptr %0, align 4, !tbaa !18
  %i.dp = shl i32 %i.do, 1
  %i.dq = add nsw i32 %i.dp, -1                   ; 2 uses
  store i32 %i.dq, ptr %i.a, align 4, !tbaa !18
  store i32 %i.dq, ptr %i.b, align 4, !tbaa !18
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull @c__1, ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #5
  %i.dr = load i32, ptr %0, align 4, !tbaa !18
  %i.ds = shl i32 %i.dr, 1                        ; 6 uses
  %i.dt = add nsw i32 %i.ds, -1
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !18
  %.not114.not127 = icmp sgt i32 %i.ds, 1
  br i1 %.not114.not127, label %iter.check, label %._crit_edge131

iter.check:                                       ; preds = %._crit_edge125
  %wide.trip.count153 = zext nneg i32 %i.ds to i64 ; 2 uses
  %i.du = add nsw i64 %wide.trip.count153, -1     ; 3 uses
  %min.iters.check = icmp ult i32 %i.ds, 5
  br i1 %min.iters.check, label %.lr.ph130.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check170 = icmp ult i32 %i.ds, 17
  br i1 %min.iters.check170, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.du, -16                     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %3, i64 %index ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 64 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 96 ; 2 uses
  %wide.load = load <4 x double>, ptr %i.dv, align 8, !tbaa !20 ; 2 uses
  %wide.load171 = load <4 x double>, ptr %i.dw, align 8, !tbaa !20 ; 2 uses
  %wide.load172 = load <4 x double>, ptr %i.dx, align 8, !tbaa !20 ; 2 uses
  %wide.load173 = load <4 x double>, ptr %i.dy, align 8, !tbaa !20 ; 2 uses
  %i.dz = fmul <4 x double> %wide.load, %wide.load
  %i.ea = fmul <4 x double> %wide.load171, %wide.load171
  %i.eb = fmul <4 x double> %wide.load172, %wide.load172
  %i.ec = fmul <4 x double> %wide.load173, %wide.load173
  store <4 x double> %i.dz, ptr %i.dv, align 8, !tbaa !20
  store <4 x double> %i.ea, ptr %i.dw, align 8, !tbaa !20
  store <4 x double> %i.eb, ptr %i.dx, align 8, !tbaa !20
  store <4 x double> %i.ec, ptr %i.dy, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !11

vec.epilog.iter.check:                            ; preds = %vector.body
  %5 = and i64 %i.du, 12
  %6 = or disjoint i64 %n.vec, 1
  %min.epilog.iters.check = icmp eq i64 %5, 0
  br i1 %min.epilog.iters.check, label %.lr.ph130.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec174 = and i64 %i.du, -4                   ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index175 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next177, %vec.epilog.vector.body ] ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %3, i64 %index175 ; 2 uses
  %wide.load176 = load <4 x double>, ptr %i.ee, align 8, !tbaa !20 ; 2 uses
  %i.ef = fmul <4 x double> %wide.load176, %wide.load176
  store <4 x double> %i.ef, ptr %i.ee, align 8, !tbaa !20
  %index.next177 = add nuw i64 %index175, 4       ; 2 uses
  %i.eg = icmp eq i64 %index.next177, %n.vec174
  br i1 %i.eg, label %.lr.ph130.preheader.loopexit, label %vec.epilog.vector.body, !llvm.loop !12

.lr.ph130.preheader.loopexit:                     ; preds = %vec.epilog.vector.body
  %7 = or disjoint i64 %n.vec174, 1
  br label %.lr.ph130.preheader

.lr.ph130.preheader:                              ; preds = %.lr.ph130.preheader.loopexit, %iter.check, %vec.epilog.iter.check
  %indvars.iv150.ph = phi i64 [ 1, %iter.check ], [ %6, %vec.epilog.iter.check ], [ %7, %.lr.ph130.preheader.loopexit ]
  br label %.lr.ph130

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph130 ], [ %indvars.iv150.ph, %.lr.ph130.preheader ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv150 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !20 ; 2 uses
  %i.ej = fmul double %i.ei, %i.ei
  store double %i.ej, ptr %i.eh, align 8, !tbaa !20
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge131, label %.lr.ph130, !llvm.loop !13

._crit_edge131:                                   ; preds = %.lr.ph130, %._crit_edge125
  %i.ek = sext i32 %i.ds to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ek
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !20
  call void @dlasq2_(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %i.em = load i32, ptr %4, align 4, !tbaa !18
  switch i32 %i.em, label %bb.i [
    i32 0, label %bb.g
    i32 2, label %bb.h
  ]

bb.g:                                             ; preds = %._crit_edge131
  %i.en = load i32, ptr %0, align 4, !tbaa !18    ; 4 uses
  store i32 %i.en, ptr %i.a, align 4, !tbaa !18
  %.not116137 = icmp slt i32 %i.en, 1
  br i1 %.not116137, label %._crit_edge141, label %.lr.ph140.preheader

.lr.ph140.preheader:                              ; preds = %bb.g
  %i.eo = zext nneg i32 %i.en to i64              ; 2 uses
  %xtraiter197 = and i64 %i.eo, 7                 ; 3 uses
  %i.ep = icmp ult i32 %i.en, 8
  br i1 %i.ep, label %.lr.ph140.epil.preheader, label %.lr.ph140.preheader.new

.lr.ph140.preheader.new:                          ; preds = %.lr.ph140.preheader
  %unroll_iter201 = and i64 %i.eo, 2147483640
  br label %.lr.ph140

.lr.ph140:                                        ; preds = %.lr.ph140, %.lr.ph140.preheader.new
  %indvars.iv160 = phi i64 [ 1, %.lr.ph140.preheader.new ], [ %indvars.iv.next161.7, %.lr.ph140 ] ; 11 uses
  %niter202 = phi i64 [ 0, %.lr.ph140.preheader.new ], [ %niter202.next.7, %.lr.ph140 ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv160
  %i.er = load double, ptr %i.eq, align 8, !tbaa !20
  %i.es = call double @sqrt(double noundef %i.er) #5
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv160
  store double %i.es, ptr %i.et, align 8, !tbaa !20
  %i.eu = getelementptr [8 x i8], ptr %3, i64 %indvars.iv160
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !20
  %i.ew = call double @sqrt(double noundef %i.ev) #5
  %i.ex = getelementptr [8 x i8], ptr %1, i64 %indvars.iv160
  store double %i.ew, ptr %i.ex, align 8, !tbaa !20
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next161.1
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !20
  %i.fa = call double @sqrt(double noundef %i.ez) #5
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next161.1
  store double %i.fa, ptr %i.fb, align 8, !tbaa !20
  %indvars.iv.next161.2 = add nuw nsw i64 %indvars.iv160, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next161.2
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !20
  %i.fe = call double @sqrt(double noundef %i.fd) #5
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next161.2
  store double %i.fe, ptr %i.ff, align 8, !tbaa !20
  %indvars.iv.next161.3 = add nuw nsw i64 %indvars.iv160, 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next161.3
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !20
  %i.fi = call double @sqrt(double noundef %i.fh) #5
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next161.3
  store double %i.fi, ptr %i.fj, align 8, !tbaa !20
  %indvars.iv.next161.4 = add nuw nsw i64 %indvars.iv160, 5 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next161.4
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !20
  %i.fm = call double @sqrt(double noundef %i.fl) #5
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next161.4
  store double %i.fm, ptr %i.fn, align 8, !tbaa !20
  %indvars.iv.next161.5 = add nuw nsw i64 %indvars.iv160, 6 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next161.5
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !20
  %i.fq = call double @sqrt(double noundef %i.fp) #5
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next161.5
  store double %i.fq, ptr %i.fr, align 8, !tbaa !20
  %indvars.iv.next161.6 = add nuw nsw i64 %indvars.iv160, 7 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next161.6
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !20
  %i.fu = call double @sqrt(double noundef %i.ft) #5
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next161.6
  store double %i.fu, ptr %i.fv, align 8, !tbaa !20
  %indvars.iv.next161.7 = add nuw nsw i64 %indvars.iv160, 8 ; 2 uses
  %niter202.next.7 = add i64 %niter202, 8         ; 2 uses
  %niter202.ncmp.7 = icmp eq i64 %niter202.next.7, %unroll_iter201
  br i1 %niter202.ncmp.7, label %._crit_edge141.loopexit.unr-lcssa, label %.lr.ph140, !llvm.loop !14

._crit_edge141.loopexit.unr-lcssa:                ; preds = %.lr.ph140
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %._crit_edge141, label %.lr.ph140.epil.preheader

.lr.ph140.epil.preheader:                         ; preds = %._crit_edge141.loopexit.unr-lcssa, %.lr.ph140.preheader
  %indvars.iv160.epil.init = phi i64 [ 1, %.lr.ph140.preheader ], [ %indvars.iv.next161.7, %._crit_edge141.loopexit.unr-lcssa ]
  %lcmp.mod200 = icmp ne i64 %xtraiter197, 0
  call void @llvm.assume(i1 %lcmp.mod200)
  br label %.lr.ph140.epil

.lr.ph140.epil:                                   ; preds = %.lr.ph140.epil, %.lr.ph140.epil.preheader
  %indvars.iv160.epil = phi i64 [ %indvars.iv160.epil.init, %.lr.ph140.epil.preheader ], [ %indvars.iv.next161.epil, %.lr.ph140.epil ] ; 3 uses
  %epil.iter198 = phi i64 [ 0, %.lr.ph140.epil.preheader ], [ %epil.iter198.next, %.lr.ph140.epil ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv160.epil
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !20
  %i.fy = call double @sqrt(double noundef %i.fx) #5
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv160.epil
  store double %i.fy, ptr %i.fz, align 8, !tbaa !20
  %indvars.iv.next161.epil = add nuw nsw i64 %indvars.iv160.epil, 1
  %epil.iter198.next = add i64 %epil.iter198, 1   ; 2 uses
  %epil.iter198.cmp.not = icmp eq i64 %epil.iter198.next, %xtraiter197
  br i1 %epil.iter198.cmp.not, label %._crit_edge141, label %.lr.ph140.epil, !llvm.loop !15

._crit_edge141:                                   ; preds = %._crit_edge141.loopexit.unr-lcssa, %.lr.ph140.epil, %bb.g
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %0, ptr noundef nonnull @c__1, ptr noundef nonnull %1, ptr noundef nonnull %0, ptr noundef nonnull %i.d) #5
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge131
  %i.ga = load i32, ptr %0, align 4, !tbaa !18    ; 4 uses
  store i32 %i.ga, ptr %i.a, align 4, !tbaa !18
  %.not115132 = icmp slt i32 %i.ga, 1
  br i1 %.not115132, label %._crit_edge136, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.h
  %i.gb = zext nneg i32 %i.ga to i64              ; 2 uses
  %xtraiter191 = and i64 %i.gb, 3                 ; 3 uses
  %i.gc = icmp ult i32 %i.ga, 4
  br i1 %i.gc, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter195 = and i64 %i.gb, 2147483644
  br label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %indvars.iv155 = phi i64 [ 1, %.lr.ph135.preheader.new ], [ %indvars.iv.next156.3, %.lr.ph135 ] ; 10 uses
  %niter196 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter196.next.3, %.lr.ph135 ]
  %sext = shl i64 %indvars.iv155, 33
  %i.gd = ashr exact i64 %sext, 29
  %i.ge = getelementptr i8, ptr %i.g, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -8
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !20
  %i.gh = call double @sqrt(double noundef %i.gg) #5
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv155
  store double %i.gh, ptr %i.gi, align 8, !tbaa !20
  %.idx = shl nuw nsw i64 %indvars.iv155, 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !20
  %i.gl = call double @sqrt(double noundef %i.gk) #5
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv155
  store double %i.gl, ptr %i.gm, align 8, !tbaa !20
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %sext.1 = shl i64 %indvars.iv.next156, 33
  %i.gn = ashr exact i64 %sext.1, 29
  %i.go = getelementptr i8, ptr %i.g, i64 %i.gn
  %i.gp = getelementptr i8, ptr %i.go, i64 -8
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !20
  %i.gr = call double @sqrt(double noundef %i.gq) #5
  %i.gs = getelementptr [8 x i8], ptr %1, i64 %indvars.iv155
  store double %i.gr, ptr %i.gs, align 8, !tbaa !20
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next156, 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !20
  %i.gv = call double @sqrt(double noundef %i.gu) #5
  %i.gw = getelementptr [8 x i8], ptr %2, i64 %indvars.iv155
  store double %i.gv, ptr %i.gw, align 8, !tbaa !20
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv155, 2 ; 4 uses
  %sext.2 = shl i64 %indvars.iv.next156.1, 33
  %i.gx = ashr exact i64 %sext.2, 29
  %i.gy = getelementptr i8, ptr %i.g, i64 %i.gx
  %i.gz = getelementptr i8, ptr %i.gy, i64 -8
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !20
  %i.hb = call double @sqrt(double noundef %i.ha) #5
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next156.1
  store double %i.hb, ptr %i.hc, align 8, !tbaa !20
  %.idx.2 = shl nuw nsw i64 %indvars.iv.next156.1, 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.2
  %i.he = load double, ptr %i.hd, align 8, !tbaa !20
  %i.hf = call double @sqrt(double noundef %i.he) #5
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next156.1
  store double %i.hf, ptr %i.hg, align 8, !tbaa !20
  %indvars.iv.next156.2 = add nuw nsw i64 %indvars.iv155, 3 ; 4 uses
  %sext.3 = shl i64 %indvars.iv.next156.2, 33
  %i.hh = ashr exact i64 %sext.3, 29
  %i.hi = getelementptr i8, ptr %i.g, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 -8
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !20
  %i.hl = call double @sqrt(double noundef %i.hk) #5
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next156.2
  store double %i.hl, ptr %i.hm, align 8, !tbaa !20
  %.idx.3 = shl nuw nsw i64 %indvars.iv.next156.2, 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.3
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !20
  %i.hp = call double @sqrt(double noundef %i.ho) #5
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next156.2
  store double %i.hp, ptr %i.hq, align 8, !tbaa !20
  %indvars.iv.next156.3 = add nuw nsw i64 %indvars.iv155, 4 ; 2 uses
  %niter196.next.3 = add i64 %niter196, 4         ; 2 uses
end_hunk_0
