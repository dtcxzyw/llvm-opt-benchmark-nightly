Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/stuff?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@diffeq_model:bb.a
  %.0 = phi double [ %i.aj, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv124
  store double %.0, ptr %i.am, align 8, !tbaa !18
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  store double %.0, ptr %i.ao, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv124
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.f, %.preheader83
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count127
  br i1 %exitcond128.not, label %.preheader81.lr.ph, label %.preheader83, !llvm.loop !106

.preheader81:                                     ; preds = %.preheader81, %.preheader81.lr.ph.split.new
  %indvars.iv132 = phi i64 [ 0, %.preheader81.lr.ph.split.new ], [ %indvars.iv.next133.7, %.preheader81 ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader81.lr.ph.split.new ], [ %niter.next.7, %.preheader81 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.at, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bc, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bi, i8 0, i64 %i.q, i1 false), !tbaa !18
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bl, i8 0, i64 %i.q, i1 false), !tbaa !18
  %indvars.iv.next133.7 = add nuw nsw i64 %indvars.iv132, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader80.loopexit.unr-lcssa, label %.preheader81, !llvm.loop !107

.preheader80.loopexit.unr-lcssa:                  ; preds = %.preheader81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader80, label %.preheader81.epil.preheader

.preheader81.epil.preheader:                      ; preds = %.preheader80.loopexit.unr-lcssa, %.preheader81.lr.ph.split
  %indvars.iv132.epil.init = phi i64 [ 0, %.preheader81.lr.ph.split ], [ %indvars.iv.next133.7, %.preheader80.loopexit.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %.preheader81.epil

.preheader81.epil:                                ; preds = %.preheader81.epil, %.preheader81.epil.preheader
  %indvars.iv132.epil = phi i64 [ %indvars.iv132.epil.init, %.preheader81.epil.preheader ], [ %indvars.iv.next133.epil, %.preheader81.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader81.epil.preheader ], [ %epil.iter.next, %.preheader81.epil ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv132.epil
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bn, i8 0, i64 %i.q, i1 false), !tbaa !18
  %indvars.iv.next133.epil = add nuw nsw i64 %indvars.iv132.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader80, label %.preheader81.epil, !llvm.loop !108

.preheader80:                                     ; preds = %.preheader80.loopexit.unr-lcssa, %.preheader81.epil, %.preheader81.lr.ph
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre157, i64 184
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !53 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !54 ; 2 uses
  %.not7798 = icmp eq ptr %i.bq, null
  br i1 %.not7798, label %._crit_edge102, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader80
  %i.br = getelementptr inbounds nuw i8, ptr %.pre157, i64 208
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre157, i64 200
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre157, i64 224
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre157, i64 216
  %.pre159 = load i16, ptr @Ndim, align 2
  %wide.trip.count147 = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge94.us
  %i.bv = phi i16 [ %.pre159, %.preheader.lr.ph ], [ %i.ev, %._crit_edge94.us ]
  %indvars.iv154 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next155, %._crit_edge94.us ] ; 6 uses
  %i.bw = phi ptr [ %i.bq, %.preheader.lr.ph ], [ %i.ex, %._crit_edge94.us ]
  %.fr = freeze i16 %i.bv                         ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %.not.i.us = icmp eq i16 %.fr, 0
  %wide.trip.count.i.us = zext i16 %.fr to i64    ; 5 uses
  br i1 %.not.i.us, label %._crit_edge94.us, label %.lr.ph93.split.us.us.preheader

.lr.ph93.split.us.us.preheader:                   ; preds = %.preheader.us
  %wide.trip.count142 = zext i16 %.fr to i64
  %i.by = shl nuw nsw i64 %wide.trip.count.i.us, 3 ; 2 uses
  %xtraiter205 = and i64 %wide.trip.count.i.us, 1
  %i.bz = icmp eq i16 %.fr, 1
  %unroll_iter210 = and i64 %wide.trip.count.i.us, 65534
  %lcmp.mod207.not = icmp eq i64 %xtraiter205, 0
  %lcmp.mod209 = trunc i16 %.fr to i1
  %min.iters.check = icmp eq i16 %.fr, 1
  %n.vec = and i64 %wide.trip.count.i.us, 65534   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.us
  br label %.lr.ph93.split.us.us

.lr.ph93.split.us.us:                             ; preds = %.lr.ph93.split.us.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv144 = phi i64 [ 0, %.lr.ph93.split.us.us.preheader ], [ %indvars.iv.next145, %..loopexit_crit_edge.us.us ] ; 7 uses
  %i.ca = icmp eq i64 %indvars.iv154, %indvars.iv144
  br i1 %i.ca, label %..loopexit_crit_edge.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %.lr.ph93.split.us.us
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv144
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !54
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 176
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !75 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 176
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !75 ; 3 uses
  br i1 %i.bz, label %.lr.ph.i.us.us.epil.preheader, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.us.us.preheader ] ; 5 uses
  %.016.i.us.us = phi double [ %i.cx, %.lr.ph.i.us.us ], [ 0.000000e+00, %.lr.ph.i.us.us.preheader ]
  %niter211 = phi i64 [ %niter211.next.1, %.lr.ph.i.us.us ], [ 0, %.lr.ph.i.us.us.preheader ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.us.us
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.i.us.us
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !18
  %i.co = fsub double %i.cl, %i.cn                ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.us
  store double %i.co, ptr %i.cp, align 16, !tbaa !18
  %i.cq = tail call double @llvm.fmuladd.f64(double %i.co, double %i.co, double %.016.i.us.us)
  %indvars.iv.next.i.us.us = or disjoint i64 %indvars.iv.i.us.us, 1 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.us.us
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.next.i.us.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !18
  %i.cv = fsub double %i.cs, %i.cu                ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.us.us
  store double %i.cv, ptr %i.cw, align 8, !tbaa !18
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cv, double %i.cq) ; 3 uses
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us, 2 ; 2 uses
  %niter211.next.1 = add i64 %niter211, 2         ; 2 uses
  %niter211.ncmp.1 = icmp eq i64 %niter211.next.1, %unroll_iter210
  br i1 %niter211.ncmp.1, label %distvec.exit.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !1

distvec.exit.us.us.unr-lcssa:                     ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod207.not, label %distvec.exit.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %distvec.exit.us.us.unr-lcssa, %.lr.ph.i.us.us.preheader
  %indvars.iv.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us.preheader ], [ %indvars.iv.next.i.us.us.1, %distvec.exit.us.us.unr-lcssa ] ; 3 uses
  %.016.i.us.us.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.us.us.preheader ], [ %i.cx, %distvec.exit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod209)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.us.us.epil.init
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv.i.us.us.epil.init
  %i.db = load double, ptr %i.da, align 8, !tbaa !18
  %i.dc = fsub double %i.cz, %i.db                ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.us.epil.init
  store double %i.dc, ptr %i.dd, align 8, !tbaa !18
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.dc, double %.016.i.us.us.epil.init)
  br label %distvec.exit.us.us

distvec.exit.us.us:                               ; preds = %distvec.exit.us.us.unr-lcssa, %.lr.ph.i.us.us.epil.preheader
  %.lcssa = phi double [ %i.cx, %distvec.exit.us.us.unr-lcssa ], [ %i.de, %.lr.ph.i.us.us.epil.preheader ]
  %i.df = tail call double @sqrt(double noundef %.lcssa) #22 ; 2 uses
  %i.dg = load ptr, ptr %i.br, align 8, !tbaa !64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv154
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !16 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv144 ; 4 uses
  %i.dk = load ptr, ptr %i.bs, align 8, !tbaa !63
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv154
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !16 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv144 ; 4 uses
  %i.do = load ptr, ptr %i.bt, align 8, !tbaa !68
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv154
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !67
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv144
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !16 ; 6 uses
  %i.dt = load ptr, ptr %i.bu, align 8, !tbaa !66
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv154
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !16 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %distvec.exit.us.us
  %i.dw = getelementptr i8, ptr %i.ds, i64 %i.by  ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 %i.by  ; 3 uses
  %bound0 = icmp ult ptr %i.ds, %i.dx
  %bound1 = icmp ult ptr %i.dv, %i.dw
  %found.conflict = and i1 %bound0, %bound1
  %2 = shl nuw nsw i64 %indvars.iv144, 3
  %3 = add nuw i64 %2, 8                          ; 2 uses
  %4 = getelementptr i8, ptr %i.di, i64 %3        ; 2 uses
  %bound0184 = icmp ult ptr %i.ds, %4
  %bound1185 = icmp ult ptr %i.dj, %i.dw
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx = or i1 %found.conflict, %found.conflict186
  %5 = getelementptr i8, ptr %i.dm, i64 %3        ; 2 uses
  %bound0187 = icmp ult ptr %i.ds, %5
  %bound1188 = icmp ult ptr %i.dn, %i.dw
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx, %found.conflict189
  %bound0191 = icmp ult ptr %i.dv, %4
  %bound1192 = icmp ult ptr %i.dj, %i.dx
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %i.dv, %5
  %bound1196 = icmp ult ptr %i.dn, %i.dx
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  br i1 %conflict.rdx198, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dy = load double, ptr %i.dj, align 8, !tbaa !18, !alias.scope !119
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %i.dy, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = load double, ptr %i.dn, align 8, !tbaa !18, !alias.scope !120
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.dz, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.df, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %wide.load = load <2 x double>, ptr %i.ea, align 16, !tbaa !18 ; 2 uses
  %i.eb = fmul <2 x double> %wide.load, %broadcast.splat200
  %i.ec = fdiv <2 x double> %i.eb, %broadcast.splat
  %i.ed = fsub <2 x double> %wide.load, %i.ec
  %i.ee = fmul <2 x double> %broadcast.splat202, %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index
  store <2 x double> %i.ee, ptr %i.ef, align 8, !tbaa !18, !alias.scope !121, !noalias !122
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index ; 2 uses
  %wide.load203 = load <2 x double>, ptr %i.eg, align 8, !tbaa !18, !alias.scope !123, !noalias !124
  %i.eh = fadd <2 x double> %i.ee, %wide.load203
  store <2 x double> %i.eh, ptr %i.eg, align 8, !tbaa !18, !alias.scope !123, !noalias !124
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %distvec.exit.us.us, %middle.block
  %indvars.iv139.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %distvec.exit.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %scalar.ph ], [ %indvars.iv139.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ej = load double, ptr %i.dj, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv139
  %i.el = load double, ptr %i.ek, align 8, !tbaa !18 ; 2 uses
  %i.em = load double, ptr %i.dn, align 8, !tbaa !18
  %i.en = fmul double %i.el, %i.em
  %i.eo = fdiv double %i.en, %i.df
  %i.ep = fsub double %i.el, %i.eo
  %i.eq = fmul double %i.ej, %i.ep                ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv139
  store double %i.eq, ptr %i.er, align 8, !tbaa !18
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv139 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !18
  %i.eu = fadd double %i.eq, %i.et
  store double %i.eu, ptr %i.es, align 8, !tbaa !18
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %exitcond143.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count142
  br i1 %exitcond143.not, label %..loopexit_crit_edge.us.us, label %scalar.ph, !llvm.loop !115

..loopexit_crit_edge.us.us:                       ; preds = %scalar.ph, %middle.block, %.lr.ph93.split.us.us
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %._crit_edge94.us.loopexit120, label %.lr.ph93.split.us.us, !llvm.loop !116

._crit_edge94.us.loopexit120:                     ; preds = %..loopexit_crit_edge.us.us
  %.pre158 = load i16, ptr @Ndim, align 2
  br label %._crit_edge94.us

._crit_edge94.us:                                 ; preds = %.preheader.us, %._crit_edge94.us.loopexit120
  %i.ev = phi i16 [ %.pre158, %._crit_edge94.us.loopexit120 ], [ 0, %.preheader.us ]
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next155
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !54 ; 2 uses
  %.not77.us = icmp eq ptr %i.ex, null
  br i1 %.not77.us, label %._crit_edge102, label %.preheader.us, !llvm.loop !117

._crit_edge102:                                   ; preds = %._crit_edge94.us, %bb.c, %.preheader80
  %i.ey = load i8, ptr @Verbose, align 1, !tbaa !23
  %.not78 = icmp eq i8 %i.ey, 0
  br i1 %.not78, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge102
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fa = tail call double @elapsed_sec() #22
  %i.fb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.8, double noundef %i.fa) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

declare void @start_timer() local_unnamed_addr #6

declare ptr @agedge(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare double @elapsed_sec() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @solve_model(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 7 uses
  %i.b = alloca [10 x double], align 16           ; 12 uses
  %i.c = alloca [10 x double], align 16           ; 10 uses
  %i.d = alloca [10 x double], align 16           ; 11 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = load double, ptr @Epsilon, align 8, !tbaa !18 ; 2 uses
  %i.g = fmul double %i.f, %i.f
  store double %i.g, ptr @Epsilon2, align 8, !tbaa !18
  %i.h = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %.val39 = load ptr, ptr %i.h, align 8, !tbaa !35 ; 2 uses
  %i.i = load i32, ptr @choose_node.cnt, align 4, !tbaa !62
  %i.j = add nsw i32 %i.i, 1                      ; 2 uses
  store i32 %i.j, ptr @choose_node.cnt, align 4, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %.val39, i64 192
  %i.l = load i32, ptr %i.k, align 8, !tbaa !157
  %i.m = load i32, ptr @MaxIter, align 4, !tbaa !62
  %.not.i40 = icmp slt i32 %i.l, %i.m
  br i1 %.not.i40, label %.preheader2.i.lr.ph, label %choose_node.exit.thread

.preheader2.i.lr.ph:                              ; preds = %bb.a
  %i.n = icmp sgt i32 %1, 0                       ; 3 uses
  %wide.trip.count20.i = zext nneg i32 %1 to i64  ; 3 uses
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %.preheader2.i.lr.ph, %move_node.exit
  %i.o = phi i32 [ %i.j, %.preheader2.i.lr.ph ], [ %i.on, %move_node.exit ]
  %.val41 = phi ptr [ %.val39, %.preheader2.i.lr.ph ], [ %.val, %move_node.exit ] ; 2 uses
  br i1 %i.n, label %.lr.ph8.i, label %._crit_edge9.i

.lr.ph8.i:                                        ; preds = %.preheader2.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val41, i64 184
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.r = load i16, ptr @Ndim, align 2
  %.fr13.i = freeze i16 %i.r                      ; 3 uses
  %.not14.i = icmp eq i16 %.fr13.i, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.val41, i64 216
  br i1 %.not14.i, label %._crit_edge9.i, label %.lr.ph8.split.us.preheader.i

.lr.ph8.split.us.preheader.i:                     ; preds = %.lr.ph8.i
  %wide.trip.count.i = zext i16 %.fr13.i to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.t = icmp ult i16 %.fr13.i, 4
  %unroll_iter = and i64 %wide.trip.count.i, 65532
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod250 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph8.split.us.i

.lr.ph8.split.us.i:                               ; preds = %bb.c, %.lr.ph8.split.us.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.lr.ph8.split.us.preheader.i ], [ %indvars.iv.next18.i, %bb.c ] ; 3 uses
  %.07.us.i = phi ptr [ null, %.lr.ph8.split.us.preheader.i ], [ %.1.us.i, %bb.c ] ; 2 uses
  %.0236.us.i = phi double [ 0.000000e+00, %.lr.ph8.split.us.preheader.i ], [ %.124.us.i, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv17.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 163
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76
  %i.aa = icmp ugt i8 %i.z, 1
  br i1 %i.aa, label %bb.c, label %.preheader.us.i

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 5 uses
  %.0254.us.i = phi double [ %i.ap, %.preheader.us.i.new ], [ 0.000000e+00, %.preheader.us.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ad = call double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %.0254.us.i)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.ah = call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.ad)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.ah)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = call double @llvm.fmuladd.f64(double %i.ao, double %i.ao, double %i.al) ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !125

bb.b:                                             ; preds = %._crit_edge.us.i
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.us.i, %bb.b, %.lr.ph8.split.us.i
end_hunk_0
begin_hunk_1_@solve_model:bb.a
scalar.ph189.prol.loopexit:                       ; preds = %scalar.ph189.prol, %scalar.ph189.preheader
  %indvars.iv.i15.unr = phi i64 [ %indvars.iv.i15.ph, %scalar.ph189.preheader ], [ %indvars.iv.next.i16.prol, %scalar.ph189.prol ]
  %i.gp = sub nsw i64 %indvars.iv.i15.ph, %i.bo
  %i.gq = icmp ugt i64 %i.gp, -4
  br i1 %i.gq, label %._crit_edge.i, label %scalar.ph189

scalar.ph189:                                     ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i16.3, %scalar.ph189 ], [ %indvars.iv.i15.unr, %scalar.ph189.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i15
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !18
  %i.gt = fneg double %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i15
  store double %i.gt, ptr %i.gu, align 8, !tbaa !18
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next.i16
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !18
  %i.gx = fneg double %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i16
  store double %i.gx, ptr %i.gy, align 8, !tbaa !18
  %indvars.iv.next.i16.1 = add nuw nsw i64 %indvars.iv.i15, 2 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next.i16.1
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !18
  %i.hb = fneg double %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i16.1
  store double %i.hb, ptr %i.hc, align 8, !tbaa !18
  %indvars.iv.next.i16.2 = add nuw nsw i64 %indvars.iv.i15, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next.i16.2
  %i.he = load double, ptr %i.hd, align 8, !tbaa !18
  %i.hf = fneg double %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i16.2
  store double %i.hf, ptr %i.hg, align 8, !tbaa !18
  %indvars.iv.next.i16.3 = add nuw nsw i64 %indvars.iv.i15, 4 ; 2 uses
  %exitcond.not.i17.3 = icmp eq i64 %indvars.iv.next.i16.3, %i.bo
  br i1 %exitcond.not.i17.3, label %._crit_edge.i, label %scalar.ph189, !llvm.loop !138

._crit_edge.i:                                    ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189, %middle.block199, %D2E.exit.thread71.i
  call void @solve(ptr noundef %i.br, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.bo) #22
  %i.hh = load i16, ptr @Ndim, align 2, !tbaa !65
  %.fr12.i40.i = freeze i16 %i.hh
  %.not51.i = icmp eq i16 %.fr12.i40.i, 0
  br i1 %.not51.i, label %._crit_edge44.i, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %._crit_edge.i, %.lr.ph43.i
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %.lr.ph43.i ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.hi = load double, ptr @Damping, align 8, !tbaa !18 ; 2 uses
  %i.hj = fsub double 1.000000e+00, %i.hi
  %i.hk = fmul double %i.hj, 2.000000e+00
  %i.hl = call double @drand48() #22
  %i.hm = call double @llvm.fmuladd.f64(double %i.hk, double %i.hl, double %i.hi)
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv57.i ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !18
  %i.hp = fmul double %i.ho, %i.hm                ; 2 uses
  store double %i.hp, ptr %i.hn, align 8, !tbaa !18
  %i.hq = load ptr, ptr %i.bj, align 8, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 176
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !75
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv57.i ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !18
  %i.hv = fadd double %i.hp, %i.hu
  store double %i.hv, ptr %i.ht, align 8, !tbaa !18
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %i.hw = load i16, ptr @Ndim, align 2, !tbaa !65
  %.fr12.i.i = freeze i16 %i.hw                   ; 2 uses
  %i.hx = zext i16 %.fr12.i.i to i64
  %i.hy = icmp samesign ult i64 %indvars.iv.next58.i, %i.hx
  br i1 %i.hy, label %.lr.ph43.i, label %._crit_edge44.i, !llvm.loop !139

._crit_edge44.i:                                  ; preds = %.lr.ph43.i, %._crit_edge.i
  %.fr12.i.lcssa.i = phi i16 [ 0, %._crit_edge.i ], [ %.fr12.i.i, %.lr.ph43.i ] ; 5 uses
  %i.hz = load ptr, ptr %i.h, align 8, !tbaa !35  ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 192 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !157
  %i.ic = add nsw i32 %i.ib, 1
  store i32 %i.ic, ptr %i.ia, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 184
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !53 ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.cc
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !54
  %.not.i32.i = icmp eq i16 %.fr12.i.lcssa.i, 0
  br i1 %.not.i32.i, label %update_arrays.exit.i, label %.preheader.thread.i.i

.preheader.thread.i.i:                            ; preds = %._crit_edge44.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 216
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !66 ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.cc
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !16 ; 6 uses
  %i.il = zext i16 %.fr12.i.lcssa.i to i64        ; 7 uses
  %i.im = shl nuw nsw i64 %i.il, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ik, i8 0, i64 %i.im, i1 false), !tbaa !18
  br i1 %i.n, label %.lr.ph8.split.us.preheader.i.i, label %update_arrays.exit.i

.lr.ph8.split.us.preheader.i.i:                   ; preds = %.preheader.thread.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 208
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 200
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hz, i64 224
  %i.ir = zext i32 %i.bm to i64
  %i.is = shl nuw nsw i64 %i.il, 3                ; 4 uses
  %scevgep = getelementptr i8, ptr %i.ik, i64 %i.is ; 2 uses
  %i.it = insertelement <4 x ptr> poison, ptr %i.ik, i64 0
  %i.iu = shufflevector <4 x ptr> %i.it, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.iv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.iw = shufflevector <4 x ptr> %i.iv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %xtraiter270 = and i64 %i.il, 1
  %i.ix = icmp eq i16 %.fr12.i.lcssa.i, 1
  %unroll_iter275 = and i64 %i.il, 65534
  %lcmp.mod272.not = icmp eq i64 %xtraiter270, 0
  %lcmp.mod274 = trunc i16 %.fr12.i.lcssa.i to i1
  %min.iters.check = icmp ult i16 %.fr12.i.lcssa.i, 6
  %n.vec = and i64 %i.il, 65534                   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.il
  br label %.lr.ph8.split.us.i.i

.lr.ph8.split.us.i.i:                             ; preds = %..loopexit_crit_edge.us.i36.i, %.lr.ph8.split.us.preheader.i.i
  %indvars.iv19.i.i = phi i64 [ 0, %.lr.ph8.split.us.preheader.i.i ], [ %indvars.iv.next20.i.i, %..loopexit_crit_edge.us.i36.i ] ; 9 uses
  %i.iy = icmp eq i64 %indvars.iv19.i.i, %i.ir
  br i1 %i.iy, label %..loopexit_crit_edge.us.i36.i, label %.lr.ph.i.us.preheader.i.i

.lr.ph.i.us.preheader.i.i:                        ; preds = %.lr.ph8.split.us.i.i
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv19.i.i
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !54
  %i.jb = load ptr, ptr %i.in, align 8, !tbaa !35
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 176
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !75 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !35
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 176
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !75 ; 3 uses
  br i1 %i.ix, label %.lr.ph.i.us.i.i.epil.preheader, label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.preheader.i.i, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ %indvars.iv.next.i.us.i.i.1, %.lr.ph.i.us.i.i ], [ 0, %.lr.ph.i.us.preheader.i.i ] ; 5 uses
  %.016.i.us.i.i = phi double [ %i.jv, %.lr.ph.i.us.i.i ], [ 0.000000e+00, %.lr.ph.i.us.preheader.i.i ]
  %niter276 = phi i64 [ %niter276.next.1, %.lr.ph.i.us.i.i ], [ 0, %.lr.ph.i.us.preheader.i.i ]
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.i.us.i.i
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !18
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.i.us.i.i
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !18
  %i.jm = fsub double %i.jj, %i.jl                ; 3 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.i.i
  store double %i.jm, ptr %i.jn, align 16, !tbaa !18
  %i.jo = call double @llvm.fmuladd.f64(double %i.jm, double %i.jm, double %.016.i.us.i.i)
  %indvars.iv.next.i.us.i.i = or disjoint i64 %indvars.iv.i.us.i.i, 1 ; 3 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.next.i.us.i.i
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.next.i.us.i.i
  %i.js = load double, ptr %i.jr, align 8, !tbaa !18
  %i.jt = fsub double %i.jq, %i.js                ; 3 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.us.i.i
  store double %i.jt, ptr %i.ju, align 8, !tbaa !18
  %i.jv = call double @llvm.fmuladd.f64(double %i.jt, double %i.jt, double %i.jo) ; 3 uses
  %indvars.iv.next.i.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.i.i, 2 ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %distvec.exit.us.i.i.unr-lcssa, label %.lr.ph.i.us.i.i, !llvm.loop !1

distvec.exit.us.i.i.unr-lcssa:                    ; preds = %.lr.ph.i.us.i.i
  br i1 %lcmp.mod272.not, label %distvec.exit.us.i.i, label %.lr.ph.i.us.i.i.epil.preheader

.lr.ph.i.us.i.i.epil.preheader:                   ; preds = %distvec.exit.us.i.i.unr-lcssa, %.lr.ph.i.us.preheader.i.i
  %indvars.iv.i.us.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.us.preheader.i.i ], [ %indvars.iv.next.i.us.i.i.1, %distvec.exit.us.i.i.unr-lcssa ] ; 3 uses
  %.016.i.us.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.us.preheader.i.i ], [ %i.jv, %distvec.exit.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod274)
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %indvars.iv.i.us.i.i.epil.init
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.i.us.i.i.epil.init
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !18
  %i.ka = fsub double %i.jx, %i.jz                ; 3 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.us.i.i.epil.init
  store double %i.ka, ptr %i.kb, align 8, !tbaa !18
  %i.kc = call double @llvm.fmuladd.f64(double %i.ka, double %i.ka, double %.016.i.us.i.i.epil.init)
  br label %distvec.exit.us.i.i

distvec.exit.us.i.i:                              ; preds = %distvec.exit.us.i.i.unr-lcssa, %.lr.ph.i.us.i.i.epil.preheader
  %.lcssa246 = phi double [ %i.jv, %distvec.exit.us.i.i.unr-lcssa ], [ %i.kc, %.lr.ph.i.us.i.i.epil.preheader ]
  %i.kd = call double @sqrt(double noundef %.lcssa246) #22 ; 2 uses
  %i.ke = load ptr, ptr %i.io, align 8, !tbaa !64
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.cc
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !16 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv19.i.i ; 5 uses
  %i.ki = load ptr, ptr %i.ip, align 8, !tbaa !63
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.cc
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !16 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv19.i.i ; 5 uses
  %i.km = load ptr, ptr %i.iq, align 8, !tbaa !68 ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.cc
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !67
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %indvars.iv19.i.i
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !16 ; 5 uses
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv19.i.i
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !67
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.ks, i64 %i.cc
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !16 ; 7 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv19.i.i
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !16 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %distvec.exit.us.i.i
  %i.kx = getelementptr i8, ptr %i.kq, i64 %i.is  ; 2 uses
  %bound0 = icmp ult ptr %i.kq, %scevgep
  %bound1 = icmp ult ptr %i.ik, %i.kx
  %found.conflict = and i1 %bound0, %bound1
  %i.ky = getelementptr i8, ptr %i.ku, i64 %i.is  ; 4 uses
  %i.kz = getelementptr i8, ptr %i.kw, i64 %i.is  ; 4 uses
  %i.la = shl nuw nsw i64 %indvars.iv19.i.i, 3
  %i.lb = add nuw i64 %i.la, 8                    ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kg, i64 %i.lb  ; 3 uses
  %i.ld = getelementptr i8, ptr %i.kk, i64 %i.lb  ; 3 uses
  %i.le = insertelement <4 x ptr> poison, ptr %i.kq, i64 0
  %i.lf = shufflevector <4 x ptr> %i.le, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lg = insertelement <4 x ptr> poison, ptr %i.ky, i64 0
  %i.lh = insertelement <4 x ptr> %i.lg, ptr %i.kz, i64 1
  %i.li = insertelement <4 x ptr> %i.lh, ptr %i.lc, i64 2
  %i.lj = insertelement <4 x ptr> %i.li, ptr %i.ld, i64 3 ; 2 uses
  %i.lk = icmp ult <4 x ptr> %i.lf, %i.lj
  %i.ll = insertelement <4 x ptr> poison, ptr %i.ku, i64 0
  %i.lm = insertelement <4 x ptr> %i.ll, ptr %i.kw, i64 1
  %i.ln = insertelement <4 x ptr> %i.lm, ptr %i.kh, i64 2
  %i.lo = insertelement <4 x ptr> %i.ln, ptr %i.kl, i64 3 ; 2 uses
  %i.lp = insertelement <4 x ptr> poison, ptr %i.kx, i64 0
  %i.lq = shufflevector <4 x ptr> %i.lp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.lr = icmp ult <4 x ptr> %i.lo, %i.lq
  %i.ls = and <4 x i1> %i.lk, %i.lr
  %i.lt = icmp ult <4 x ptr> %i.lo, %i.iw
  %i.lu = icmp ult <4 x ptr> %i.iu, %i.lj
  %i.lv = and <4 x i1> %i.lu, %i.lt
  %bound0160 = icmp ult ptr %i.ku, %i.kz
  %bound1161 = icmp ult ptr %i.kw, %i.ky
  %found.conflict162 = and i1 %bound0160, %bound1161
  %bound0164 = icmp ult ptr %i.ku, %i.lc
  %bound1165 = icmp ult ptr %i.kh, %i.ky
  %found.conflict166 = and i1 %bound0164, %bound1165
  %bound0168 = icmp ult ptr %i.ku, %i.ld
  %bound1169 = icmp ult ptr %i.kl, %i.ky
  %found.conflict170 = and i1 %bound0168, %bound1169
  %bound0172 = icmp ult ptr %i.kw, %i.lc
  %bound1173 = icmp ult ptr %i.kh, %i.kz
  %found.conflict174 = and i1 %bound0172, %bound1173
  %bound0176 = icmp ult ptr %i.kw, %i.ld
  %bound1177 = icmp ult ptr %i.kl, %i.kz
  %found.conflict178 = and i1 %bound0176, %bound1177
  %rdx.op = or <4 x i1> %i.ls, %i.lv
  %i.lw = bitcast <4 x i1> %rdx.op to i4
  %i.lx = icmp ne i4 %i.lw, 0
  %op.rdx = or i1 %i.lx, %found.conflict
  %op.rdx236 = or i1 %found.conflict162, %found.conflict166
  %op.rdx237 = or i1 %found.conflict170, %found.conflict174
  %op.rdx238 = or i1 %op.rdx, %op.rdx236
  %op.rdx239 = or i1 %op.rdx237, %found.conflict178
  %op.rdx240 = or i1 %op.rdx238, %op.rdx239
  br i1 %op.rdx240, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ly = load double, ptr %i.kh, align 8, !tbaa !18, !alias.scope !158
  %broadcast.splatinsert182 = insertelement <2 x double> poison, double %i.ly, i64 0
  %broadcast.splat183 = shufflevector <2 x double> %broadcast.splatinsert182, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lz = load double, ptr %i.kl, align 8, !tbaa !18, !alias.scope !159
  %broadcast.splatinsert180 = insertelement <2 x double> poison, double %i.lz, i64 0
  %broadcast.splat181 = shufflevector <2 x double> %broadcast.splatinsert180, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.kd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  %wide.load = load <2 x double>, ptr %i.ma, align 16, !tbaa !18 ; 2 uses
  %i.mb = fmul <2 x double> %wide.load, %broadcast.splat181
  %i.mc = fdiv <2 x double> %i.mb, %broadcast.splat
  %i.md = fsub <2 x double> %wide.load, %i.mc
  %i.me = fmul <2 x double> %broadcast.splat183, %i.md ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %index ; 2 uses
  store <2 x double> %i.me, ptr %i.mf, align 8, !tbaa !18, !alias.scope !160, !noalias !161
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %index ; 2 uses
  %wide.load184 = load <2 x double>, ptr %i.mg, align 8, !tbaa !18, !alias.scope !162, !noalias !163
  %i.mh = fadd <2 x double> %wide.load184, %i.me
  store <2 x double> %i.mh, ptr %i.mg, align 8, !tbaa !18, !alias.scope !162, !noalias !163
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %index ; 2 uses
  %wide.load185 = load <2 x double>, ptr %i.mi, align 8, !tbaa !18, !alias.scope !164, !noalias !165
  %wide.load186 = load <2 x double>, ptr %i.mf, align 8, !tbaa !18, !alias.scope !160, !noalias !161
  %i.mj = fneg <2 x double> %wide.load186         ; 2 uses
  store <2 x double> %i.mj, ptr %i.mi, align 8, !tbaa !18, !alias.scope !164, !noalias !165
  %i.mk = fsub <2 x double> %i.mj, %wide.load185
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %index ; 2 uses
  %wide.load187 = load <2 x double>, ptr %i.ml, align 8, !tbaa !18, !alias.scope !166, !noalias !167
  %i.mm = fadd <2 x double> %i.mk, %wide.load187
  store <2 x double> %i.mm, ptr %i.ml, align 8, !tbaa !18, !alias.scope !166, !noalias !167
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mn = icmp eq i64 %index.next, %n.vec
  br i1 %i.mn, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.i36.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %distvec.exit.us.i.i, %middle.block
  %indvars.iv.i33.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %distvec.exit.us.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i33.i = phi i64 [ %indvars.iv.next.i34.i, %scalar.ph ], [ %indvars.iv.i33.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.mo = load double, ptr %i.kh, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i33.i
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !18 ; 2 uses
  %i.mr = load double, ptr %i.kl, align 8, !tbaa !18
  %i.ms = fmul double %i.mq, %i.mr
  %i.mt = fdiv double %i.ms, %i.kd
  %i.mu = fsub double %i.mq, %i.mt
  %i.mv = fmul double %i.mo, %i.mu                ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.kq, i64 %indvars.iv.i33.i ; 2 uses
  store double %i.mv, ptr %i.mw, align 8, !tbaa !18
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.i33.i ; 2 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !18
  %i.mz = fadd double %i.my, %i.mv
  store double %i.mz, ptr %i.mx, align 8, !tbaa !18
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i33.i ; 2 uses
  %i.nb = load double, ptr %i.na, align 8, !tbaa !18
  %i.nc = load double, ptr %i.mw, align 8, !tbaa !18
  %i.nd = fneg double %i.nc                       ; 2 uses
  store double %i.nd, ptr %i.na, align 8, !tbaa !18
  %i.ne = fsub double %i.nd, %i.nb
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.i33.i ; 2 uses
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !18
  %i.nh = fadd double %i.ne, %i.ng
  store double %i.nh, ptr %i.nf, align 8, !tbaa !18
  %indvars.iv.next.i34.i = add nuw nsw i64 %indvars.iv.i33.i, 1 ; 2 uses
  %exitcond.not.i35.i = icmp eq i64 %indvars.iv.next.i34.i, %i.il
  br i1 %exitcond.not.i35.i, label %..loopexit_crit_edge.us.i36.i, label %scalar.ph, !llvm.loop !148

..loopexit_crit_edge.us.i36.i:                    ; preds = %scalar.ph, %middle.block, %.lr.ph8.split.us.i.i
  %indvars.iv.next20.i.i = add nuw nsw i64 %indvars.iv19.i.i, 1 ; 2 uses
  %exitcond23.not.i.i = icmp eq i64 %indvars.iv.next20.i.i, %wide.trip.count20.i
  br i1 %exitcond23.not.i.i, label %update_arrays.exit.i, label %.lr.ph8.split.us.i.i, !llvm.loop !149

update_arrays.exit.i:                             ; preds = %..loopexit_crit_edge.us.i36.i, %.preheader.thread.i.i, %._crit_edge44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ni = call i32 @test_toggle() #22
  %.not.i12 = icmp eq i32 %i.ni, 0
  br i1 %.not.i12, label %move_node.exit, label %.preheader.i

.preheader.i:                                     ; preds = %update_arrays.exit.i
  %i.nj = load i16, ptr @Ndim, align 2, !tbaa !65 ; 3 uses
  %.not52.i = icmp eq i16 %i.nj, 0
  br i1 %.not52.i, label %._crit_edge48.i, label %.lr.ph47.preheader.i

.lr.ph47.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count63.i = zext i16 %i.nj to i64    ; 2 uses
  %xtraiter277 = and i64 %wide.trip.count63.i, 3  ; 3 uses
  %i.nk = icmp ult i16 %i.nj, 4
  br i1 %i.nk, label %.lr.ph47.i.epil.preheader, label %.lr.ph47.preheader.i.new

.lr.ph47.preheader.i.new:                         ; preds = %.lr.ph47.preheader.i
  %unroll_iter282 = and i64 %wide.trip.count63.i, 65532
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph47.i, %.lr.ph47.preheader.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph47.preheader.i.new ], [ %indvars.iv.next61.i.3, %.lr.ph47.i ] ; 5 uses
  %.046.i = phi double [ 0.000000e+00, %.lr.ph47.preheader.i.new ], [ %i.od, %.lr.ph47.i ]
  %niter283 = phi i64 [ 0, %.lr.ph47.preheader.i.new ], [ %niter283.next.3, %.lr.ph47.i ]
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv60.i
  %i.nm = load double, ptr %i.nl, align 16, !tbaa !18
  %i.nn = call double @llvm.fabs.f64(double %i.nm)
  %i.no = fadd double %.046.i, %i.nn
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv60.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !18
  %i.ns = call double @llvm.fabs.f64(double %i.nr)
  %i.nt = fadd double %i.no, %i.ns
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv60.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.nw = load double, ptr %i.nv, align 16, !tbaa !18
  %i.nx = call double @llvm.fabs.f64(double %i.nw)
  %i.ny = fadd double %i.nt, %i.nx
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv60.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !18
  %i.oc = call double @llvm.fabs.f64(double %i.ob)
  %i.od = fadd double %i.ny, %i.oc                ; 3 uses
  %indvars.iv.next61.i.3 = add nuw nsw i64 %indvars.iv60.i, 4 ; 2 uses
  %niter283.next.3 = add i64 %niter283, 4         ; 2 uses
  %niter283.ncmp.3 = icmp eq i64 %niter283.next.3, %unroll_iter282
  br i1 %niter283.ncmp.3, label %._crit_edge48.i.loopexit.unr-lcssa, label %.lr.ph47.i, !llvm.loop !150

._crit_edge48.i.loopexit.unr-lcssa:               ; preds = %.lr.ph47.i
  %lcmp.mod279.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod279.not, label %._crit_edge48.i, label %.lr.ph47.i.epil.preheader

.lr.ph47.i.epil.preheader:                        ; preds = %._crit_edge48.i.loopexit.unr-lcssa, %.lr.ph47.preheader.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph47.preheader.i ], [ %indvars.iv.next61.i.3, %._crit_edge48.i.loopexit.unr-lcssa ]
  %.046.i.epil.init = phi double [ 0.000000e+00, %.lr.ph47.preheader.i ], [ %i.od, %._crit_edge48.i.loopexit.unr-lcssa ]
  %lcmp.mod281 = icmp ne i64 %xtraiter277, 0
  call void @llvm.assume(i1 %lcmp.mod281)
  br label %.lr.ph47.i.epil

.lr.ph47.i.epil:                                  ; preds = %.lr.ph47.i.epil, %.lr.ph47.i.epil.preheader
  %indvars.iv60.i.epil = phi i64 [ %indvars.iv60.i.epil.init, %.lr.ph47.i.epil.preheader ], [ %indvars.iv.next61.i.epil, %.lr.ph47.i.epil ] ; 2 uses
  %.046.i.epil = phi double [ %.046.i.epil.init, %.lr.ph47.i.epil.preheader ], [ %i.oh, %.lr.ph47.i.epil ]
  %epil.iter278 = phi i64 [ 0, %.lr.ph47.i.epil.preheader ], [ %epil.iter278.next, %.lr.ph47.i.epil ]
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv60.i.epil
  %i.of = load double, ptr %i.oe, align 8, !tbaa !18
  %i.og = call double @llvm.fabs.f64(double %i.of)
  %i.oh = fadd double %.046.i.epil, %i.og         ; 2 uses
  %indvars.iv.next61.i.epil = add nuw nsw i64 %indvars.iv60.i.epil, 1
  %epil.iter278.next = add i64 %epil.iter278, 1   ; 2 uses
  %epil.iter278.cmp.not = icmp eq i64 %epil.iter278.next, %xtraiter277
  br i1 %epil.iter278.cmp.not, label %._crit_edge48.i, label %.lr.ph47.i.epil, !llvm.loop !151

._crit_edge48.i:                                  ; preds = %._crit_edge48.i.loopexit.unr-lcssa, %.lr.ph47.i.epil, %.preheader.i
  %.0.lcssa.i13 = phi double [ 0.000000e+00, %.preheader.i ], [ %i.od, %._crit_edge48.i.loopexit.unr-lcssa ], [ %i.oh, %.lr.ph47.i.epil ]
end_hunk_1
