Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaebz?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dlaebz_:bb.a
.lr.ph666.11040:                                  ; preds = %.lr.ph666, %bb.e
  %i.ay = phi i32 [ %i.al, %.lr.ph666 ], [ %i.ax, %bb.e ] ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %9, i64 %indvars.iv717
  %i.ba = load double, ptr %i.az, align 8, !tbaa !38
  %i.bb = getelementptr [8 x i8], ptr %11, i64 %indvars.iv717
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !38
  %i.be = fdiv double %i.bd, %spec.select596
  %i.bf = fsub double %i.ba, %i.be
  %i.bg = fsub double %i.bf, %i.aa                ; 2 uses
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp olt double %i.bh, %i.r
  %spec.select596.11039 = select i1 %i.bi, double %i.s, double %i.bg ; 3 uses
  %i.bj = fcmp ugt double %spec.select596.11039, 0.000000e+00
  br i1 %i.bj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph666.11040
  %i.bk = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.bk, ptr %i.ae, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph666.11040
  %i.bl = phi i32 [ %i.ay, %.lr.ph666.11040 ], [ %i.bk, %bb.f ] ; 2 uses
  %indvars.iv.next718.11041 = add nuw nsw i64 %indvars.iv717, 2 ; 2 uses
  %niter1036.next.1 = add i64 %niter1036, 2
  %niter1036.ncmp.1 = icmp eq i64 %niter1036, %i.ak
  br i1 %niter1036.ncmp.1, label %._crit_edge667.loopexit.unr-lcssa, label %.lr.ph666, !llvm.loop !8

._crit_edge667.loopexit.unr-lcssa:                ; preds = %bb.g
  %lcmp.mod1033.not = icmp eq i64 %xtraiter1029, 0
  br i1 %lcmp.mod1033.not, label %._crit_edge667, label %.lr.ph666.epil.preheader

.lr.ph666.epil.preheader:                         ; preds = %._crit_edge667.loopexit.unr-lcssa, %.lr.ph666.preheader
  %.epil.init1032 = phi i32 [ %storemerge, %.lr.ph666.preheader ], [ %i.bl, %._crit_edge667.loopexit.unr-lcssa ]
  %indvars.iv717.epil.init = phi i64 [ 2, %.lr.ph666.preheader ], [ %indvars.iv.next718.11041, %._crit_edge667.loopexit.unr-lcssa ] ; 2 uses
  %.1530664.epil.init = phi double [ %spec.select, %.lr.ph666.preheader ], [ %spec.select596.11039, %._crit_edge667.loopexit.unr-lcssa ]
  %lcmp.mod1034 = trunc i32 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod1034)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv717.epil.init
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !38
  %i.bo = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv717.epil.init
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !38
  %i.br = fdiv double %i.bq, %.1530664.epil.init
  %i.bs = fsub double %i.bn, %i.br
  %i.bt = fsub double %i.bs, %i.aa                ; 2 uses
  %i.bu = tail call double @llvm.fabs.f64(double %i.bt)
  %i.bv = fcmp olt double %i.bu, %i.r
  %spec.select596.epil = select i1 %i.bv, double %i.s, double %i.bt
  %i.bw = fcmp ugt double %spec.select596.epil, 0.000000e+00
  br i1 %i.bw, label %._crit_edge667, label %bb.h

bb.h:                                             ; preds = %.lr.ph666.epil.preheader
  %i.bx = add nsw i32 %.epil.init1032, 1
  store i32 %i.bx, ptr %i.ae, align 4, !tbaa !36
  br label %._crit_edge667

._crit_edge667:                                   ; preds = %._crit_edge667.loopexit.unr-lcssa, %bb.h, %.lr.ph666.epil.preheader, %.preheader
  %i.by = add nsw i64 %i.x, %indvars.iv726        ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !38 ; 4 uses
  %i.cb = fsub double %i.q, %i.ca                 ; 2 uses
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp olt double %i.cc, %i.r
  %spec.select.1 = select i1 %i.cd, double %i.s, double %i.cb ; 3 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.by ; 4 uses
  %i.cf = fcmp ole double %spec.select.1, 0.000000e+00
  %storemerge.1 = zext i1 %i.cf to i32            ; 3 uses
  store i32 %storemerge.1, ptr %i.ce, align 4, !tbaa !36
  %i.cg = load i32, ptr %2, align 4, !tbaa !36    ; 2 uses
  %.not595662.1 = icmp slt i32 %i.cg, 2
  br i1 %.not595662.1, label %._crit_edge667.1, label %.lr.ph666.preheader.1

.lr.ph666.preheader.1:                            ; preds = %._crit_edge667
  %i.ch = add nuw i32 %i.cg, 1                    ; 3 uses
  %wide.trip.count720.1 = zext i32 %i.ch to i64   ; 2 uses
  %xtraiter1042 = and i64 %wide.trip.count720.1, 1
  %i.ci = icmp eq i32 %i.ch, 3
  br i1 %i.ci, label %.lr.ph666.1.epil.preheader, label %.lr.ph666.preheader.1.new

.lr.ph666.preheader.1.new:                        ; preds = %.lr.ph666.preheader.1
  %i.cj = and i64 %wide.trip.count720.1, 4294967294
  %i.ck = add nsw i64 %i.cj, -4
  br label %.lr.ph666.1

.lr.ph666.1:                                      ; preds = %bb.k, %.lr.ph666.preheader.1.new
  %i.cl = phi i32 [ %storemerge.1, %.lr.ph666.preheader.1.new ], [ %i.dl, %bb.k ] ; 2 uses
  %indvars.iv717.1 = phi i64 [ 2, %.lr.ph666.preheader.1.new ], [ %indvars.iv.next718.1.1, %bb.k ] ; 5 uses
  %.1530664.1 = phi double [ %spec.select.1, %.lr.ph666.preheader.1.new ], [ %spec.select596.1.1, %bb.k ]
  %niter1049 = phi i64 [ 0, %.lr.ph666.preheader.1.new ], [ %niter1049.next.1, %bb.k ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv717.1
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !38
  %i.co = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv717.1
  %i.cp = getelementptr i8, ptr %i.co, i64 -8
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !38
  %i.cr = fdiv double %i.cq, %.1530664.1
  %i.cs = fsub double %i.cn, %i.cr
  %i.ct = fsub double %i.cs, %i.ca                ; 2 uses
  %i.cu = tail call double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp olt double %i.cu, %i.r
  %spec.select596.1 = select i1 %i.cv, double %i.s, double %i.ct ; 2 uses
  %i.cw = fcmp ugt double %spec.select596.1, 0.000000e+00
  br i1 %i.cw, label %.lr.ph666.1.1, label %bb.i

bb.i:                                             ; preds = %.lr.ph666.1
  %i.cx = add nsw i32 %i.cl, 1                    ; 2 uses
  store i32 %i.cx, ptr %i.ce, align 4, !tbaa !36
  br label %.lr.ph666.1.1

.lr.ph666.1.1:                                    ; preds = %bb.i, %.lr.ph666.1
  %i.cy = phi i32 [ %i.cx, %bb.i ], [ %i.cl, %.lr.ph666.1 ] ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %9, i64 %indvars.iv717.1
  %i.da = load double, ptr %i.cz, align 8, !tbaa !38
  %i.db = getelementptr [8 x i8], ptr %11, i64 %indvars.iv717.1
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !38
  %i.de = fdiv double %i.dd, %spec.select596.1
  %i.df = fsub double %i.da, %i.de
  %i.dg = fsub double %i.df, %i.ca                ; 2 uses
  %i.dh = tail call double @llvm.fabs.f64(double %i.dg)
  %i.di = fcmp olt double %i.dh, %i.r
  %spec.select596.1.1 = select i1 %i.di, double %i.s, double %i.dg ; 3 uses
  %i.dj = fcmp ugt double %spec.select596.1.1, 0.000000e+00
  br i1 %i.dj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph666.1.1
  %i.dk = add nsw i32 %i.cy, 1                    ; 2 uses
  store i32 %i.dk, ptr %i.ce, align 4, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph666.1.1
  %i.dl = phi i32 [ %i.dk, %bb.j ], [ %i.cy, %.lr.ph666.1.1 ] ; 2 uses
  %indvars.iv.next718.1.1 = add nuw nsw i64 %indvars.iv717.1, 2 ; 2 uses
  %niter1049.next.1 = add i64 %niter1049, 2
  %niter1049.ncmp.1 = icmp eq i64 %niter1049, %i.ck
  br i1 %niter1049.ncmp.1, label %._crit_edge667.1.loopexit.unr-lcssa, label %.lr.ph666.1, !llvm.loop !8

._crit_edge667.1.loopexit.unr-lcssa:              ; preds = %bb.k
  %lcmp.mod1046.not = icmp eq i64 %xtraiter1042, 0
  br i1 %lcmp.mod1046.not, label %._crit_edge667.1, label %.lr.ph666.1.epil.preheader

.lr.ph666.1.epil.preheader:                       ; preds = %._crit_edge667.1.loopexit.unr-lcssa, %.lr.ph666.preheader.1
  %.epil.init1045 = phi i32 [ %storemerge.1, %.lr.ph666.preheader.1 ], [ %i.dl, %._crit_edge667.1.loopexit.unr-lcssa ]
  %indvars.iv717.1.epil.init = phi i64 [ 2, %.lr.ph666.preheader.1 ], [ %indvars.iv.next718.1.1, %._crit_edge667.1.loopexit.unr-lcssa ] ; 2 uses
  %.1530664.1.epil.init = phi double [ %spec.select.1, %.lr.ph666.preheader.1 ], [ %spec.select596.1.1, %._crit_edge667.1.loopexit.unr-lcssa ]
  %lcmp.mod1047 = trunc i32 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod1047)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv717.1.epil.init
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !38
  %i.do = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv717.1.epil.init
  %i.dp = getelementptr i8, ptr %i.do, i64 -8
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !38
  %i.dr = fdiv double %i.dq, %.1530664.1.epil.init
  %i.ds = fsub double %i.dn, %i.dr
  %i.dt = fsub double %i.ds, %i.ca                ; 2 uses
  %i.du = tail call double @llvm.fabs.f64(double %i.dt)
  %i.dv = fcmp olt double %i.du, %i.r
  %spec.select596.1.epil = select i1 %i.dv, double %i.s, double %i.dt
  %i.dw = fcmp ugt double %spec.select596.1.epil, 0.000000e+00
  br i1 %i.dw, label %._crit_edge667.1, label %bb.l

bb.l:                                             ; preds = %.lr.ph666.1.epil.preheader
  %i.dx = add nsw i32 %.epil.init1045, 1
  store i32 %i.dx, ptr %i.ce, align 4, !tbaa !36
  br label %._crit_edge667.1

._crit_edge667.1:                                 ; preds = %._crit_edge667.1.loopexit.unr-lcssa, %bb.l, %.lr.ph666.1.epil.preheader, %._crit_edge667
  %i.dy = load i32, ptr %15, align 4, !tbaa !36
  %gep771 = getelementptr [4 x i8], ptr %invariant.gep770, i64 %indvars.iv726
  %i.dz = load i32, ptr %gep771, align 4, !tbaa !36
  %i.ea = add nsw i32 %i.dz, %i.dy
  %i.eb = load i32, ptr %i.ae, align 4, !tbaa !36
  %i.ec = sub i32 %i.ea, %i.eb
  store i32 %i.ec, ptr %15, align 4, !tbaa !36
  %indvars.iv.next727 = add nuw nsw i64 %indvars.iv726, 1 ; 2 uses
  %exitcond730.not = icmp eq i64 %indvars.iv.next727, %wide.trip.count729
  br i1 %exitcond730.not, label %.loopexit, label %.preheader, !llvm.loop !9

bb.m:                                             ; preds = %bb.c
  %i.ed = load i32, ptr %4, align 4, !tbaa !36    ; 8 uses
  %i.ee = icmp ne i32 %i.m, 2
  %.not609 = icmp slt i32 %i.ed, 1
  %or.cond671 = select i1 %i.ee, i1 true, i1 %.not609
  br i1 %or.cond671, label %.loopexit607, label %iter.check

iter.check:                                       ; preds = %bb.m
  %i.ef = shl i32 %i.c, 1
  %i.eg = sext i32 %i.c to i64                    ; 2 uses
  %i.eh = sext i32 %i.ef to i64                   ; 2 uses
  %i.ei = add nuw i32 %i.ed, 1
  %wide.trip.count = zext i32 %i.ei to i64        ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.f, i64 %i.eg ; 7 uses
  %invariant.gep764 = getelementptr [8 x i8], ptr %i.f, i64 %i.eh ; 7 uses
  %i.ej = zext nneg i32 %i.ed to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ed, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ek = add i64 %i.a, -8
  %i.el = sub i64 %i.ek, %i.b                     ; 2 uses
  %20 = or i64 %i.eg, %i.d
  %i.em = shl nsw i64 %20, 3
  %i.en = sub i64 %i.em, %i.el
  %diff.check = icmp ugt i64 %i.en, -128
  %21 = add nsw i64 %i.eh, %i.d
  %i.eo = shl nsw i64 %21, 3
  %i.ep = sub i64 %i.eo, %i.el
  %diff.check775 = icmp ugt i64 %i.ep, -128
  %conflict.rdx = or i1 %diff.check, %diff.check775
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check776 = icmp ult i32 %i.ed, 16
  br i1 %min.iters.check776, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.eq = and i64 %i.ej, 12
  %n.vec = and i64 %i.ej, 2147483632              ; 4 uses
  %i.er = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.es = or disjoint i64 %index, 1               ; 2 uses
  %i.et = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.es ; 4 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 32
  %i.ev = getelementptr i8, ptr %i.et, i64 64
  %i.ew = getelementptr i8, ptr %i.et, i64 96
  %wide.load = load <4 x double>, ptr %i.et, align 8, !tbaa !38
  %wide.load777 = load <4 x double>, ptr %i.eu, align 8, !tbaa !38
  %wide.load778 = load <4 x double>, ptr %i.ev, align 8, !tbaa !38
  %wide.load779 = load <4 x double>, ptr %i.ew, align 8, !tbaa !38
  %i.ex = getelementptr [8 x i8], ptr %invariant.gep764, i64 %i.es ; 4 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 32
  %i.ez = getelementptr i8, ptr %i.ex, i64 64
  %i.fa = getelementptr i8, ptr %i.ex, i64 96
  %wide.load780 = load <4 x double>, ptr %i.ex, align 8, !tbaa !38
  %wide.load781 = load <4 x double>, ptr %i.ey, align 8, !tbaa !38
  %wide.load782 = load <4 x double>, ptr %i.ez, align 8, !tbaa !38
  %wide.load783 = load <4 x double>, ptr %i.fa, align 8, !tbaa !38
  %i.fb = fadd <4 x double> %wide.load, %wide.load780
  %i.fc = fadd <4 x double> %wide.load777, %wide.load781
  %i.fd = fadd <4 x double> %wide.load778, %wide.load782
  %i.fe = fadd <4 x double> %wide.load779, %wide.load783
  %i.ff = fmul <4 x double> %i.fb, splat (double 5.000000e-01)
  %i.fg = fmul <4 x double> %i.fc, splat (double 5.000000e-01)
  %i.fh = fmul <4 x double> %i.fd, splat (double 5.000000e-01)
  %i.fi = fmul <4 x double> %i.fe, splat (double 5.000000e-01)
  %i.fj = getelementptr [8 x i8], ptr %14, i64 %index ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  store <4 x double> %i.ff, ptr %i.fj, align 8, !tbaa !38
  store <4 x double> %i.fg, ptr %i.fk, align 8, !tbaa !38
  store <4 x double> %i.fh, ptr %i.fl, align 8, !tbaa !38
  store <4 x double> %i.fi, ptr %i.fm, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ej
  br i1 %cmp.n, label %.loopexit607, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.eq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec784 = and i64 %i.ej, 2147483644           ; 3 uses
  %i.fo = or disjoint i64 %n.vec784, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index785 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next788, %vec.epilog.vector.body ] ; 3 uses
  %i.fp = or disjoint i64 %index785, 1            ; 2 uses
  %i.fq = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fp
  %wide.load786 = load <4 x double>, ptr %i.fq, align 8, !tbaa !38
  %i.fr = getelementptr [8 x i8], ptr %invariant.gep764, i64 %i.fp
  %wide.load787 = load <4 x double>, ptr %i.fr, align 8, !tbaa !38
  %i.fs = fadd <4 x double> %wide.load786, %wide.load787
  %i.ft = fmul <4 x double> %i.fs, splat (double 5.000000e-01)
  %i.fu = getelementptr [8 x i8], ptr %14, i64 %index785
  store <4 x double> %i.ft, ptr %i.fu, align 8, !tbaa !38
  %index.next788 = add nuw i64 %index785, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next788, %n.vec784
  br i1 %i.fv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n789 = icmp eq i64 %n.vec784, %i.ej
  br i1 %cmp.n789, label %.loopexit607, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.er, %vec.epilog.iter.check ], [ %i.fo, %vec.epilog.middle.block ] ; 4 uses
  %i.fw = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.fx = zext nneg i32 %i.ed to i64
  %i.fy = sub nsw i64 %i.fx, %indvars.iv.ph
  %xtraiter = and i64 %i.fw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.fz = load double, ptr %gep.prol, align 8, !tbaa !38
  %gep765.prol = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.prol
  %i.ga = load double, ptr %gep765.prol, align 8, !tbaa !38
  %i.gb = fadd double %i.fz, %i.ga
  %i.gc = fmul double %i.gb, 5.000000e-01
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.prol
  store double %i.gc, ptr %i.gd, align 8, !tbaa !38
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !12

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ge = icmp ult i64 %i.fy, 3
  br i1 %i.ge, label %.loopexit607, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gf = load double, ptr %gep, align 8, !tbaa !38
  %gep765 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv
  %i.gg = load double, ptr %gep765, align 8, !tbaa !38
  %i.gh = fadd double %i.gf, %i.gg
  %i.gi = fmul double %i.gh, 5.000000e-01
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store double %i.gi, ptr %i.gj, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.gk = load double, ptr %gep.1, align 8, !tbaa !38
  %gep765.1 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next
  %i.gl = load double, ptr %gep765.1, align 8, !tbaa !38
  %i.gm = fadd double %i.gk, %i.gl
  %i.gn = fmul double %i.gm, 5.000000e-01
  %i.go = getelementptr [8 x i8], ptr %14, i64 %indvars.iv
  store double %i.gn, ptr %i.go, align 8, !tbaa !38
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.gp = load double, ptr %gep.2, align 8, !tbaa !38
  %gep765.2 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next.1
  %i.gq = load double, ptr %gep765.2, align 8, !tbaa !38
  %i.gr = fadd double %i.gp, %i.gq
  %i.gs = fmul double %i.gr, 5.000000e-01
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store double %i.gs, ptr %i.gt, align 8, !tbaa !38
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.gu = load double, ptr %gep.3, align 8, !tbaa !38
  %gep765.3 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next.2
  %i.gv = load double, ptr %gep765.3, align 8, !tbaa !38
  %i.gw = fadd double %i.gu, %i.gv
  %i.gx = fmul double %i.gw, 5.000000e-01
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store double %i.gx, ptr %i.gy, align 8, !tbaa !38
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit607, label %vec.epilog.scalar.ph, !llvm.loop !13

.loopexit607:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.gz = load i32, ptr %1, align 4, !tbaa !36    ; 2 uses
  %.not572650 = icmp slt i32 %i.gz, 1
  br i1 %.not572650, label %._crit_edge656, label %.lr.ph655

.lr.ph655:                                        ; preds = %.loopexit607
  %i.ha = shl i32 %i.c, 1                         ; 4 uses
  %i.hb = sext i32 %i.c to i64                    ; 11 uses
  %i.hc = sext i32 %i.ha to i64                   ; 11 uses
  %invariant.gep766 = getelementptr [8 x i8], ptr %i.f, i64 %i.hb ; 7 uses
  %invariant.gep768 = getelementptr [8 x i8], ptr %i.f, i64 %i.hc ; 7 uses
  %i.hd = add i64 %i.a, -8
  %i.he = sub i64 %i.hd, %i.b                     ; 2 uses
  %22 = add nsw i64 %i.hc, %i.d
  %i.hf = shl nsw i64 %22, 3
  %23 = or i64 %i.hb, %i.d
  %i.hg = shl nsw i64 %23, 3
  %i.hh = shl nsw i64 %i.d, 2
  %i.hi = getelementptr i8, ptr %16, i64 %i.hh
  %scevgep = getelementptr i8, ptr %i.hi, i64 4   ; 2 uses
  %i.hj = shl nsw i64 %i.d, 3
  %i.hk = getelementptr i8, ptr %13, i64 %i.hj
  %scevgep924 = getelementptr i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hl = sub i64 %i.hg, %i.he
  %diff.check796 = icmp ugt i64 %i.hl, -128
  %i.hm = sub i64 %i.hf, %i.he
  %diff.check797 = icmp ugt i64 %i.hm, -128
  %conflict.rdx798 = or i1 %diff.check796, %diff.check797
  br label %bb.n

._crit_edge649:                                   ; preds = %.lr.ph648.prol.loopexit, %.lr.ph648, %vec.epilog.middle.block828, %middle.block814
  %i.hn = add nuw i32 %.0532653, 1
  %exitcond716.not = icmp eq i32 %.0532653, %i.gz
  br i1 %exitcond716.not, label %._crit_edge656, label %bb.n, !llvm.loop !14

bb.n:                                             ; preds = %.lr.ph655, %._crit_edge649
  %.0532653 = phi i32 [ 1, %.lr.ph655 ], [ %i.hn, %._crit_edge649 ] ; 2 uses
  %.0534652 = phi i32 [ %i.ed, %.lr.ph655 ], [ %.1535, %._crit_edge649 ] ; 16 uses
  %.0540651 = phi i32 [ 1, %.lr.ph655 ], [ %.0546.lcssa, %._crit_edge649 ] ; 10 uses
  %reass.sub = sub i32 %.0534652, %.0540651
  %i.ho = add i32 %reass.sub, 1
  %i.hp = load i32, ptr %5, align 4, !tbaa !36    ; 2 uses
  %.not573 = icmp sge i32 %i.ho, %i.hp
  %i.hq = icmp sgt i32 %i.hp, 0
  %or.cond597 = and i1 %.not573, %i.hq
  %.not581626 = icmp sgt i32 %.0540651, %.0534652 ; 2 uses
  br i1 %or.cond597, label %.preheader602, label %.preheader603

.preheader603:                                    ; preds = %bb.n
  br i1 %.not581626, label %.loopexit601, label %.lr.ph619.preheader

.lr.ph619.preheader:                              ; preds = %.preheader603
  %i.hr = sext i32 %.0540651 to i64
  %i.hs = add i32 %.0534652, 1
  br label %.lr.ph619

.preheader602:                                    ; preds = %bb.n
  br i1 %.not581626, label %._crit_edge629.thread, label %.lr.ph628.preheader

.lr.ph628.preheader:                              ; preds = %.preheader602
  %i.ht = sext i32 %.0540651 to i64               ; 5 uses
  %i.hu = add i32 %.0534652, 1
  br label %.lr.ph628

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %._crit_edge625
  %indvars.iv691 = phi i64 [ %i.ht, %.lr.ph628.preheader ], [ %indvars.iv.next692, %._crit_edge625 ] ; 4 uses
  %i.hv = load double, ptr %9, align 8, !tbaa !38
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv691 ; 4 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !38
  %i.hy = fsub double %i.hv, %i.hx                ; 5 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv691 ; 8 uses
  store double %i.hy, ptr %i.hz, align 8, !tbaa !38
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv691 ; 5 uses
  store i32 0, ptr %i.ia, align 4, !tbaa !36
  %i.ib = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.ic = fcmp ugt double %i.hy, %i.ib
  br i1 %i.ic, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph628
  store i32 1, ptr %i.ia, align 4, !tbaa !36
  %i.id = fneg double %i.ib                       ; 2 uses
  %i.ie = fcmp ole double %i.hy, %i.id
  %i.if = select i1 %i.ie, double %i.hy, double %i.id ; 2 uses
  store double %i.if, ptr %i.hz, align 8, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph628
  %i.ig = phi i32 [ 1, %bb.o ], [ 0, %.lr.ph628 ] ; 2 uses
  %i.ih = phi double [ %i.if, %bb.o ], [ %i.hy, %.lr.ph628 ] ; 2 uses
  %i.ii = load i32, ptr %2, align 4, !tbaa !36    ; 2 uses
  %.not593621 = icmp slt i32 %i.ii, 2
  br i1 %.not593621, label %._crit_edge625, label %.lr.ph624.preheader

.lr.ph624.preheader:                              ; preds = %bb.p
  %i.ij = add nuw i32 %i.ii, 1                    ; 3 uses
  %wide.trip.count688 = zext i32 %i.ij to i64     ; 2 uses
  %xtraiter1015 = and i64 %wide.trip.count688, 1
  %i.ik = icmp eq i32 %i.ij, 3
  br i1 %i.ik, label %.lr.ph624.epil.preheader, label %.lr.ph624.preheader.new

.lr.ph624.preheader.new:                          ; preds = %.lr.ph624.preheader
  %i.il = and i64 %wide.trip.count688, 4294967294
  %i.im = add nsw i64 %i.il, -4
  br label %.lr.ph624

.lr.ph624:                                        ; preds = %bb.s, %.lr.ph624.preheader.new
  %i.in = phi i32 [ %i.ig, %.lr.ph624.preheader.new ], [ %i.jv, %bb.s ] ; 2 uses
  %i.io = phi double [ %i.ih, %.lr.ph624.preheader.new ], [ %i.jw, %bb.s ]
  %indvars.iv685 = phi i64 [ 2, %.lr.ph624.preheader.new ], [ %indvars.iv.next686.1, %bb.s ] ; 5 uses
  %niter1022 = phi i64 [ 0, %.lr.ph624.preheader.new ], [ %niter1022.next.1, %bb.s ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv685
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !38
  %i.ir = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv685
  %i.is = getelementptr i8, ptr %i.ir, i64 -8
  %i.it = load double, ptr %i.is, align 8, !tbaa !38
  %i.iu = fdiv double %i.it, %i.io
  %i.iv = fsub double %i.iq, %i.iu
  %i.iw = load double, ptr %i.hw, align 8, !tbaa !38
  %i.ix = fsub double %i.iv, %i.iw                ; 5 uses
  store double %i.ix, ptr %i.hz, align 8, !tbaa !38
  %i.iy = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.iz = fcmp ugt double %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph624.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph624
  %i.ja = add nsw i32 %i.in, 1                    ; 2 uses
  store i32 %i.ja, ptr %i.ia, align 4, !tbaa !36
  %i.jb = fneg double %i.iy                       ; 2 uses
  %i.jc = fcmp ole double %i.ix, %i.jb
  %i.jd = select i1 %i.jc, double %i.ix, double %i.jb ; 2 uses
  store double %i.jd, ptr %i.hz, align 8, !tbaa !38
  br label %.lr.ph624.1

.lr.ph624.1:                                      ; preds = %.lr.ph624, %bb.q
  %i.je = phi i32 [ %i.in, %.lr.ph624 ], [ %i.ja, %bb.q ] ; 2 uses
  %i.jf = phi double [ %i.ix, %.lr.ph624 ], [ %i.jd, %bb.q ]
  %i.jg = getelementptr [8 x i8], ptr %9, i64 %indvars.iv685
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !38
  %i.ji = getelementptr [8 x i8], ptr %11, i64 %indvars.iv685
  %i.jj = getelementptr i8, ptr %i.ji, i64 -8
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !38
  %i.jl = fdiv double %i.jk, %i.jf
  %i.jm = fsub double %i.jh, %i.jl
  %i.jn = load double, ptr %i.hw, align 8, !tbaa !38
  %i.jo = fsub double %i.jm, %i.jn                ; 5 uses
  store double %i.jo, ptr %i.hz, align 8, !tbaa !38
  %i.jp = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.jq = fcmp ugt double %i.jo, %i.jp
  br i1 %i.jq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph624.1
  %i.jr = add nsw i32 %i.je, 1                    ; 2 uses
  store i32 %i.jr, ptr %i.ia, align 4, !tbaa !36
  %i.js = fneg double %i.jp                       ; 2 uses
  %i.jt = fcmp ole double %i.jo, %i.js
  %i.ju = select i1 %i.jt, double %i.jo, double %i.js ; 2 uses
  store double %i.ju, ptr %i.hz, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph624.1
  %i.jv = phi i32 [ %i.je, %.lr.ph624.1 ], [ %i.jr, %bb.r ] ; 2 uses
  %i.jw = phi double [ %i.jo, %.lr.ph624.1 ], [ %i.ju, %bb.r ] ; 2 uses
  %indvars.iv.next686.1 = add nuw nsw i64 %indvars.iv685, 2 ; 2 uses
  %niter1022.next.1 = add i64 %niter1022, 2
  %niter1022.ncmp.1 = icmp eq i64 %niter1022, %i.im
  br i1 %niter1022.ncmp.1, label %._crit_edge625.loopexit.unr-lcssa, label %.lr.ph624, !llvm.loop !15

._crit_edge625.loopexit.unr-lcssa:                ; preds = %bb.s
  %lcmp.mod1019.not = icmp eq i64 %xtraiter1015, 0
  br i1 %lcmp.mod1019.not, label %._crit_edge625, label %.lr.ph624.epil.preheader

.lr.ph624.epil.preheader:                         ; preds = %._crit_edge625.loopexit.unr-lcssa, %.lr.ph624.preheader
  %.epil.init = phi i32 [ %i.ig, %.lr.ph624.preheader ], [ %i.jv, %._crit_edge625.loopexit.unr-lcssa ]
  %.epil.init1018 = phi double [ %i.ih, %.lr.ph624.preheader ], [ %i.jw, %._crit_edge625.loopexit.unr-lcssa ]
  %indvars.iv685.epil.init = phi i64 [ 2, %.lr.ph624.preheader ], [ %indvars.iv.next686.1, %._crit_edge625.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1020 = trunc i32 %i.ij to i1
  tail call void @llvm.assume(i1 %lcmp.mod1020)
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv685.epil.init
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !38
  %i.jz = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv685.epil.init
  %i.ka = getelementptr i8, ptr %i.jz, i64 -8
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !38
  %i.kc = fdiv double %i.kb, %.epil.init1018
  %i.kd = fsub double %i.jy, %i.kc
  %i.ke = load double, ptr %i.hw, align 8, !tbaa !38
  %i.kf = fsub double %i.kd, %i.ke                ; 4 uses
  store double %i.kf, ptr %i.hz, align 8, !tbaa !38
  %i.kg = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.kh = fcmp ugt double %i.kf, %i.kg
  br i1 %i.kh, label %._crit_edge625, label %bb.t

bb.t:                                             ; preds = %.lr.ph624.epil.preheader
  %i.ki = add nsw i32 %.epil.init, 1
  store i32 %i.ki, ptr %i.ia, align 4, !tbaa !36
  %i.kj = fneg double %i.kg                       ; 2 uses
  %i.kk = fcmp ole double %i.kf, %i.kj
  %i.kl = select i1 %i.kk, double %i.kf, double %i.kj
  store double %i.kl, ptr %i.hz, align 8, !tbaa !38
  br label %._crit_edge625

._crit_edge625:                                   ; preds = %._crit_edge625.loopexit.unr-lcssa, %bb.t, %.lr.ph624.epil.preheader, %bb.p
  %indvars.iv.next692 = add nsw i64 %indvars.iv691, 1 ; 2 uses
  %lftr.wideiv694 = trunc i64 %indvars.iv.next692 to i32
  %exitcond695.not = icmp eq i32 %i.hu, %lftr.wideiv694
  br i1 %exitcond695.not, label %._crit_edge629, label %.lr.ph628, !llvm.loop !16

._crit_edge629:                                   ; preds = %._crit_edge625
  %i.km = load i32, ptr %0, align 4, !tbaa !36
  %i.kn = icmp slt i32 %i.km, 3
  %i.ko = sext i32 %.0540651 to i64               ; 5 uses
  %i.kp = add i32 %.0534652, 1                    ; 2 uses
  br i1 %i.kn, label %.lr.ph636, label %.lr.ph632.preheader

._crit_edge629.thread:                            ; preds = %.preheader602
  %i.kq = load i32, ptr %0, align 4, !tbaa !36
  %i.kr = icmp slt i32 %i.kq, 3
end_hunk_0
