Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaebz?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dlaebz_:bb.a
vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check775 = icmp ult i32 %i.ed, 16
  br i1 %min.iters.check775, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ev = and i64 %i.ej, 12
  %n.vec = and i64 %i.ej, 2147483632              ; 4 uses
  %i.ew = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ex = or disjoint i64 %index, 1               ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ex ; 4 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 32
  %i.fa = getelementptr i8, ptr %i.ey, i64 64
  %i.fb = getelementptr i8, ptr %i.ey, i64 96
  %wide.load = load <4 x double>, ptr %i.ey, align 8, !tbaa !38
  %wide.load776 = load <4 x double>, ptr %i.ez, align 8, !tbaa !38
  %wide.load777 = load <4 x double>, ptr %i.fa, align 8, !tbaa !38
  %wide.load778 = load <4 x double>, ptr %i.fb, align 8, !tbaa !38
  %i.fc = getelementptr [8 x i8], ptr %invariant.gep764, i64 %i.ex ; 4 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 32
  %i.fe = getelementptr i8, ptr %i.fc, i64 64
  %i.ff = getelementptr i8, ptr %i.fc, i64 96
  %wide.load779 = load <4 x double>, ptr %i.fc, align 8, !tbaa !38
  %wide.load780 = load <4 x double>, ptr %i.fd, align 8, !tbaa !38
  %wide.load781 = load <4 x double>, ptr %i.fe, align 8, !tbaa !38
  %wide.load782 = load <4 x double>, ptr %i.ff, align 8, !tbaa !38
  %i.fg = fadd <4 x double> %wide.load, %wide.load779
  %i.fh = fadd <4 x double> %wide.load776, %wide.load780
  %i.fi = fadd <4 x double> %wide.load777, %wide.load781
  %i.fj = fadd <4 x double> %wide.load778, %wide.load782
  %i.fk = fmul <4 x double> %i.fg, splat (double 5.000000e-01)
  %i.fl = fmul <4 x double> %i.fh, splat (double 5.000000e-01)
  %i.fm = fmul <4 x double> %i.fi, splat (double 5.000000e-01)
  %i.fn = fmul <4 x double> %i.fj, splat (double 5.000000e-01)
  %i.fo = getelementptr [8 x i8], ptr %14, i64 %index ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 96
  store <4 x double> %i.fk, ptr %i.fo, align 8, !tbaa !38
  store <4 x double> %i.fl, ptr %i.fp, align 8, !tbaa !38
  store <4 x double> %i.fm, ptr %i.fq, align 8, !tbaa !38
  store <4 x double> %i.fn, ptr %i.fr, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ej
  br i1 %cmp.n, label %.loopexit607, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec783 = and i64 %i.ej, 2147483644           ; 3 uses
  %i.ft = or disjoint i64 %n.vec783, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index784 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next787, %vec.epilog.vector.body ] ; 3 uses
  %i.fu = or disjoint i64 %index784, 1            ; 2 uses
  %i.fv = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fu
  %wide.load785 = load <4 x double>, ptr %i.fv, align 8, !tbaa !38
  %i.fw = getelementptr [8 x i8], ptr %invariant.gep764, i64 %i.fu
  %wide.load786 = load <4 x double>, ptr %i.fw, align 8, !tbaa !38
  %i.fx = fadd <4 x double> %wide.load785, %wide.load786
  %i.fy = fmul <4 x double> %i.fx, splat (double 5.000000e-01)
  %i.fz = getelementptr [8 x i8], ptr %14, i64 %index784
  store <4 x double> %i.fy, ptr %i.fz, align 8, !tbaa !38
  %index.next787 = add nuw i64 %index784, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next787, %n.vec783
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n788 = icmp eq i64 %n.vec783, %i.ej
  br i1 %cmp.n788, label %.loopexit607, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.ew, %vec.epilog.iter.check ], [ %i.ft, %vec.epilog.middle.block ] ; 4 uses
  %i.gb = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %i.gc = zext nneg i32 %i.ed to i64
  %i.gd = sub nsw i64 %i.gc, %indvars.iv.ph
  %xtraiter = and i64 %i.gb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ge = load double, ptr %gep.prol, align 8, !tbaa !38
  %gep765.prol = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.prol
  %i.gf = load double, ptr %gep765.prol, align 8, !tbaa !38
  %i.gg = fadd double %i.ge, %i.gf
  %i.gh = fmul double %i.gg, 5.000000e-01
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.prol
  store double %i.gh, ptr %i.gi, align 8, !tbaa !38
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !12

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.gj = icmp ult i64 %i.gd, 3
  br i1 %i.gj, label %.loopexit607, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 8 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.gk = load double, ptr %gep, align 8, !tbaa !38
  %gep765 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv
  %i.gl = load double, ptr %gep765, align 8, !tbaa !38
  %i.gm = fadd double %i.gk, %i.gl
  %i.gn = fmul double %i.gm, 5.000000e-01
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store double %i.gn, ptr %i.go, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.gp = load double, ptr %gep.1, align 8, !tbaa !38
  %gep765.1 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next
  %i.gq = load double, ptr %gep765.1, align 8, !tbaa !38
  %i.gr = fadd double %i.gp, %i.gq
  %i.gs = fmul double %i.gr, 5.000000e-01
  %i.gt = getelementptr [8 x i8], ptr %14, i64 %indvars.iv
  store double %i.gs, ptr %i.gt, align 8, !tbaa !38
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.gu = load double, ptr %gep.2, align 8, !tbaa !38
  %gep765.2 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next.1
  %i.gv = load double, ptr %gep765.2, align 8, !tbaa !38
  %i.gw = fadd double %i.gu, %i.gv
  %i.gx = fmul double %i.gw, 5.000000e-01
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.1
  store double %i.gx, ptr %i.gy, align 8, !tbaa !38
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.gz = load double, ptr %gep.3, align 8, !tbaa !38
  %gep765.3 = getelementptr [8 x i8], ptr %invariant.gep764, i64 %indvars.iv.next.2
  %i.ha = load double, ptr %gep765.3, align 8, !tbaa !38
  %i.hb = fadd double %i.gz, %i.ha
  %i.hc = fmul double %i.hb, 5.000000e-01
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.2
  store double %i.hc, ptr %i.hd, align 8, !tbaa !38
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit607, label %vec.epilog.scalar.ph, !llvm.loop !13

.loopexit607:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.he = load i32, ptr %1, align 4, !tbaa !36    ; 2 uses
  %.not572650 = icmp slt i32 %i.he, 1
  br i1 %.not572650, label %._crit_edge656, label %.lr.ph655

.lr.ph655:                                        ; preds = %.loopexit607
  %i.hf = shl i32 %i.c, 1                         ; 4 uses
  %i.hg = sext i32 %i.c to i64                    ; 11 uses
  %i.hh = sext i32 %i.hf to i64                   ; 11 uses
  %invariant.gep766 = getelementptr [8 x i8], ptr %i.f, i64 %i.hg ; 7 uses
  %invariant.gep768 = getelementptr [8 x i8], ptr %i.f, i64 %i.hh ; 7 uses
  %i.hi = add i64 %i.b, -8
  %i.hj = sub i64 %i.hi, %i.a                     ; 2 uses
  %i.hk = add nsw i64 %i.hh, %i.d
  %i.hl = shl nsw i64 %i.hk, 3
  %i.hm = or i64 %i.hg, %i.d
  %i.hn = shl nsw i64 %i.hm, 3
  %i.ho = shl nsw i64 %i.d, 3                     ; 3 uses
  %scevgep = getelementptr i8, ptr %13, i64 %i.ho
  %i.hp = add nsw i64 %i.ho, 8                    ; 2 uses
  %scevgep829 = getelementptr i8, ptr %13, i64 %i.hp
  %i.hq = shl nsw i64 %i.d, 2                     ; 3 uses
  %scevgep831 = getelementptr i8, ptr %16, i64 %i.hq
  %i.hr = add nsw i64 %i.hq, 4                    ; 2 uses
  %scevgep833 = getelementptr i8, ptr %16, i64 %i.hr
  %scevgep835 = getelementptr i8, ptr %13, i64 %i.ho
  %scevgep837 = getelementptr i8, ptr %13, i64 %i.hp
  %scevgep839 = getelementptr i8, ptr %16, i64 %i.hq
  %scevgep841 = getelementptr i8, ptr %16, i64 %i.hr
  %scevgep843 = getelementptr i8, ptr %18, i64 -4
  %scevgep846.a = getelementptr i8, ptr %12, i64 -4
  %scevgep849 = getelementptr i8, ptr %14, i64 -8
  %i.hs = sub i64 %i.hl, %i.hj
  %diff.check791 = icmp ugt i64 %i.hs, -128
  %i.ht = sub i64 %i.hn, %i.hj
  %diff.check792 = icmp ugt i64 %i.ht, -128
  %conflict.rdx793 = or i1 %diff.check791, %diff.check792
  br label %bb.n

._crit_edge649:                                   ; preds = %.lr.ph648.prol.loopexit, %.lr.ph648, %vec.epilog.middle.block824, %middle.block810
  %i.hu = add nuw i32 %.0532653, 1
  %exitcond716.not = icmp eq i32 %.0532653, %i.he
  br i1 %exitcond716.not, label %._crit_edge656, label %bb.n, !llvm.loop !14

bb.n:                                             ; preds = %.lr.ph655, %._crit_edge649
  %.0532653 = phi i32 [ 1, %.lr.ph655 ], [ %i.hu, %._crit_edge649 ] ; 2 uses
  %.0534652 = phi i32 [ %i.ed, %.lr.ph655 ], [ %.1535, %._crit_edge649 ] ; 17 uses
  %.0540651 = phi i32 [ 1, %.lr.ph655 ], [ %.0546.lcssa, %._crit_edge649 ] ; 11 uses
  %reass.sub = sub i32 %.0534652, %.0540651
  %i.hv = add i32 %reass.sub, 1
  %i.hw = load i32, ptr %5, align 4, !tbaa !36    ; 2 uses
  %.not573 = icmp sge i32 %i.hv, %i.hw
  %i.hx = icmp sgt i32 %i.hw, 0
  %or.cond597 = and i1 %.not573, %i.hx
  %.not581626 = icmp sgt i32 %.0540651, %.0534652 ; 2 uses
  br i1 %or.cond597, label %.preheader602, label %.preheader603

.preheader603:                                    ; preds = %bb.n
  br i1 %.not581626, label %.loopexit601, label %.lr.ph619.preheader

.lr.ph619.preheader:                              ; preds = %.preheader603
  %i.hy = sext i32 %.0540651 to i64
  %i.hz = add i32 %.0534652, 1
  br label %.lr.ph619

.preheader602:                                    ; preds = %bb.n
  br i1 %.not581626, label %._crit_edge629.thread, label %.lr.ph628.preheader

.lr.ph628.preheader:                              ; preds = %.preheader602
  %i.ia = sext i32 %.0540651 to i64               ; 5 uses
  %i.ib = add i32 %.0534652, 1
  br label %.lr.ph628

.lr.ph628:                                        ; preds = %.lr.ph628.preheader, %._crit_edge625
  %indvars.iv691 = phi i64 [ %i.ia, %.lr.ph628.preheader ], [ %indvars.iv.next692, %._crit_edge625 ] ; 4 uses
  %i.ic = load double, ptr %9, align 8, !tbaa !38
  %i.id = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv691 ; 4 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !38
  %i.if = fsub double %i.ic, %i.ie                ; 5 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.k, i64 %indvars.iv691 ; 8 uses
  store double %i.if, ptr %i.ig, align 8, !tbaa !38
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv691 ; 5 uses
  store i32 0, ptr %i.ih, align 4, !tbaa !36
  %i.ii = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.ij = fcmp ugt double %i.if, %i.ii
  br i1 %i.ij, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph628
  store i32 1, ptr %i.ih, align 4, !tbaa !36
  %i.ik = fneg double %i.ii                       ; 2 uses
  %i.il = fcmp ole double %i.if, %i.ik
  %i.im = select i1 %i.il, double %i.if, double %i.ik ; 2 uses
  store double %i.im, ptr %i.ig, align 8, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph628
  %i.in = phi i32 [ 1, %bb.o ], [ 0, %.lr.ph628 ] ; 2 uses
  %i.io = phi double [ %i.im, %bb.o ], [ %i.if, %.lr.ph628 ] ; 2 uses
  %i.ip = load i32, ptr %2, align 4, !tbaa !36    ; 2 uses
  %.not593621 = icmp slt i32 %i.ip, 2
  br i1 %.not593621, label %._crit_edge625, label %.lr.ph624.preheader

.lr.ph624.preheader:                              ; preds = %bb.p
  %i.iq = add nuw i32 %i.ip, 1                    ; 3 uses
  %wide.trip.count688 = zext i32 %i.iq to i64     ; 2 uses
  %xtraiter940 = and i64 %wide.trip.count688, 1
  %i.ir = icmp eq i32 %i.iq, 3
  br i1 %i.ir, label %.lr.ph624.epil.preheader, label %.lr.ph624.preheader.new

.lr.ph624.preheader.new:                          ; preds = %.lr.ph624.preheader
  %i.is = and i64 %wide.trip.count688, 4294967294
  %i.it = add nsw i64 %i.is, -4
  br label %.lr.ph624

.lr.ph624:                                        ; preds = %bb.s, %.lr.ph624.preheader.new
  %i.iu = phi i32 [ %i.in, %.lr.ph624.preheader.new ], [ %i.kc, %bb.s ] ; 2 uses
  %i.iv = phi double [ %i.io, %.lr.ph624.preheader.new ], [ %i.kd, %bb.s ]
  %indvars.iv685 = phi i64 [ 2, %.lr.ph624.preheader.new ], [ %indvars.iv.next686.1, %bb.s ] ; 5 uses
  %niter947 = phi i64 [ 0, %.lr.ph624.preheader.new ], [ %niter947.next.1, %bb.s ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv685
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !38
  %i.iy = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv685
  %i.iz = getelementptr i8, ptr %i.iy, i64 -8
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !38
  %i.jb = fdiv double %i.ja, %i.iv
  %i.jc = fsub double %i.ix, %i.jb
  %i.jd = load double, ptr %i.id, align 8, !tbaa !38
  %i.je = fsub double %i.jc, %i.jd                ; 5 uses
  store double %i.je, ptr %i.ig, align 8, !tbaa !38
  %i.jf = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.jg = fcmp ugt double %i.je, %i.jf
  br i1 %i.jg, label %.lr.ph624.1, label %bb.q

bb.q:                                             ; preds = %.lr.ph624
  %i.jh = add nsw i32 %i.iu, 1                    ; 2 uses
  store i32 %i.jh, ptr %i.ih, align 4, !tbaa !36
  %i.ji = fneg double %i.jf                       ; 2 uses
  %i.jj = fcmp ole double %i.je, %i.ji
  %i.jk = select i1 %i.jj, double %i.je, double %i.ji ; 2 uses
  store double %i.jk, ptr %i.ig, align 8, !tbaa !38
  br label %.lr.ph624.1

.lr.ph624.1:                                      ; preds = %.lr.ph624, %bb.q
  %i.jl = phi i32 [ %i.iu, %.lr.ph624 ], [ %i.jh, %bb.q ] ; 2 uses
  %i.jm = phi double [ %i.je, %.lr.ph624 ], [ %i.jk, %bb.q ]
  %i.jn = getelementptr [8 x i8], ptr %9, i64 %indvars.iv685
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !38
  %i.jp = getelementptr [8 x i8], ptr %11, i64 %indvars.iv685
  %i.jq = getelementptr i8, ptr %i.jp, i64 -8
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !38
  %i.js = fdiv double %i.jr, %i.jm
  %i.jt = fsub double %i.jo, %i.js
  %i.ju = load double, ptr %i.id, align 8, !tbaa !38
  %i.jv = fsub double %i.jt, %i.ju                ; 5 uses
  store double %i.jv, ptr %i.ig, align 8, !tbaa !38
  %i.jw = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.jx = fcmp ugt double %i.jv, %i.jw
  br i1 %i.jx, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph624.1
  %i.jy = add nsw i32 %i.jl, 1                    ; 2 uses
  store i32 %i.jy, ptr %i.ih, align 4, !tbaa !36
  %i.jz = fneg double %i.jw                       ; 2 uses
  %i.ka = fcmp ole double %i.jv, %i.jz
  %i.kb = select i1 %i.ka, double %i.jv, double %i.jz ; 2 uses
  store double %i.kb, ptr %i.ig, align 8, !tbaa !38
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph624.1
  %i.kc = phi i32 [ %i.jl, %.lr.ph624.1 ], [ %i.jy, %bb.r ] ; 2 uses
  %i.kd = phi double [ %i.jv, %.lr.ph624.1 ], [ %i.kb, %bb.r ] ; 2 uses
  %indvars.iv.next686.1 = add nuw nsw i64 %indvars.iv685, 2 ; 2 uses
  %niter947.next.1 = add i64 %niter947, 2
  %niter947.ncmp.1 = icmp eq i64 %niter947, %i.it
  br i1 %niter947.ncmp.1, label %._crit_edge625.loopexit.unr-lcssa, label %.lr.ph624, !llvm.loop !15

._crit_edge625.loopexit.unr-lcssa:                ; preds = %bb.s
  %lcmp.mod944.not = icmp eq i64 %xtraiter940, 0
  br i1 %lcmp.mod944.not, label %._crit_edge625, label %.lr.ph624.epil.preheader

.lr.ph624.epil.preheader:                         ; preds = %._crit_edge625.loopexit.unr-lcssa, %.lr.ph624.preheader
  %.epil.init = phi i32 [ %i.in, %.lr.ph624.preheader ], [ %i.kc, %._crit_edge625.loopexit.unr-lcssa ]
  %.epil.init943 = phi double [ %i.io, %.lr.ph624.preheader ], [ %i.kd, %._crit_edge625.loopexit.unr-lcssa ]
  %indvars.iv685.epil.init = phi i64 [ 2, %.lr.ph624.preheader ], [ %indvars.iv.next686.1, %._crit_edge625.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod945 = trunc i32 %i.iq to i1
  tail call void @llvm.assume(i1 %lcmp.mod945)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv685.epil.init
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !38
  %i.kg = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv685.epil.init
  %i.kh = getelementptr i8, ptr %i.kg, i64 -8
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !38
  %i.kj = fdiv double %i.ki, %.epil.init943
  %i.kk = fsub double %i.kf, %i.kj
  %i.kl = load double, ptr %i.id, align 8, !tbaa !38
  %i.km = fsub double %i.kk, %i.kl                ; 4 uses
  store double %i.km, ptr %i.ig, align 8, !tbaa !38
  %i.kn = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %i.ko = fcmp ugt double %i.km, %i.kn
  br i1 %i.ko, label %._crit_edge625, label %bb.t

bb.t:                                             ; preds = %.lr.ph624.epil.preheader
  %i.kp = add nsw i32 %.epil.init, 1
  store i32 %i.kp, ptr %i.ih, align 4, !tbaa !36
  %i.kq = fneg double %i.kn                       ; 2 uses
  %i.kr = fcmp ole double %i.km, %i.kq
  %i.ks = select i1 %i.kr, double %i.km, double %i.kq
  store double %i.ks, ptr %i.ig, align 8, !tbaa !38
  br label %._crit_edge625

._crit_edge625:                                   ; preds = %._crit_edge625.loopexit.unr-lcssa, %bb.t, %.lr.ph624.epil.preheader, %bb.p
  %indvars.iv.next692 = add nsw i64 %indvars.iv691, 1 ; 2 uses
  %lftr.wideiv694 = trunc i64 %indvars.iv.next692 to i32
  %exitcond695.not = icmp eq i32 %i.ib, %lftr.wideiv694
  br i1 %exitcond695.not, label %._crit_edge629, label %.lr.ph628, !llvm.loop !16

._crit_edge629:                                   ; preds = %._crit_edge625
  %i.kt = load i32, ptr %0, align 4, !tbaa !36
  %i.ku = icmp slt i32 %i.kt, 3
  %i.kv = sext i32 %.0540651 to i64               ; 5 uses
  %i.kw = add i32 %.0534652, 1                    ; 2 uses
  br i1 %i.ku, label %.lr.ph636, label %.lr.ph632.preheader

._crit_edge629.thread:                            ; preds = %.preheader602
  %i.kx = load i32, ptr %0, align 4, !tbaa !36
  %i.ky = icmp slt i32 %i.kx, 3
  br i1 %i.ky, label %._crit_edge637, label %.loopexit601

.lr.ph632.preheader:                              ; preds = %._crit_edge629
  %i.kz = sub i32 %.0534652, %.0540651            ; 2 uses
  %i.la = zext i32 %i.kz to i64
  %i.lb = add nuw nsw i64 %i.la, 1                ; 2 uses
  %min.iters.check920 = icmp ult i32 %i.kz, 39
  br i1 %min.iters.check920, label %.lr.ph632.preheader933, label %vector.memcheck827

vector.memcheck827:                               ; preds = %.lr.ph632.preheader
  %i.lc = add nsw i64 %i.hg, %i.ia                ; 2 uses
  %i.ld = shl nsw i64 %i.lc, 3                    ; 2 uses
  %scevgep828 = getelementptr i8, ptr %scevgep, i64 %i.ld ; 6 uses
  %i.le = sub i32 %.0534652, %.0540651
  %i.lf = zext i32 %i.le to i64                   ; 2 uses
  %i.lg = shl nuw nsw i64 %i.lf, 3                ; 3 uses
  %i.lh = getelementptr i8, ptr %scevgep829, i64 %i.ld
  %scevgep830 = getelementptr i8, ptr %i.lh, i64 %i.lg ; 6 uses
  %i.li = shl nsw i64 %i.lc, 2                    ; 2 uses
  %scevgep832 = getelementptr i8, ptr %scevgep831, i64 %i.li ; 6 uses
  %i.lj = shl nuw nsw i64 %i.lf, 2                ; 3 uses
  %i.lk = getelementptr i8, ptr %scevgep833, i64 %i.li
  %scevgep834 = getelementptr i8, ptr %i.lk, i64 %i.lj ; 6 uses
end_hunk_0
begin_hunk_1_@dlaebz_:bb.a
  br label %.lr.ph615

.lr.ph615:                                        ; preds = %.lr.ph615, %.lr.ph615.preheader.new
  %indvars.iv676 = phi i64 [ 2, %.lr.ph615.preheader.new ], [ %indvars.iv.next677.3, %.lr.ph615 ] ; 7 uses
  %.1614 = phi double [ %.0, %.lr.ph615.preheader.new ], [ %.2.3, %.lr.ph615 ]
  %.1552612 = phi i32 [ %.0551, %.lr.ph615.preheader.new ], [ %.2553.3, %.lr.ph615 ]
  %niter = phi i64 [ 0, %.lr.ph615.preheader.new ], [ %niter.next.3, %.lr.ph615 ]
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv676
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !38
  %i.qm = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv676
  %i.qn = getelementptr i8, ptr %i.qm, i64 -8
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !38
  %i.qp = fdiv double %i.qo, %.1614
  %i.qq = fsub double %i.ql, %i.qp
  %i.qr = fsub double %i.qq, %i.px                ; 3 uses
  %i.qs = fcmp ole double %i.qr, %i.qa            ; 2 uses
  %i.qt = fcmp ugt double %i.qr, %i.qc
  %i.qu = zext i1 %i.qs to i32
  %.2553 = add nuw nsw i32 %.1552612, %i.qu
  %i.qv = and i1 %i.qs, %i.qt
  %.2 = select i1 %i.qv, double %i.qc, double %i.qr
  %i.qw = getelementptr [8 x i8], ptr %9, i64 %indvars.iv676
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !38
  %i.qy = getelementptr [8 x i8], ptr %11, i64 %indvars.iv676
  %i.qz = getelementptr i8, ptr %i.qy, i64 -8
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !38
  %i.rb = fdiv double %i.ra, %.2
  %i.rc = fsub double %i.qx, %i.rb
  %i.rd = fsub double %i.rc, %i.px                ; 3 uses
  %i.re = fcmp ole double %i.rd, %i.qa            ; 2 uses
  %i.rf = fcmp ugt double %i.rd, %i.qc
  %i.rg = zext i1 %i.re to i32
  %.2553.1 = add nuw nsw i32 %.2553, %i.rg
  %i.rh = and i1 %i.re, %i.rf
  %.2.1 = select i1 %i.rh, double %i.qc, double %i.rd
  %indvars.iv.next677.1 = add nuw nsw i64 %indvars.iv676, 2 ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next677.1
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !38
  %i.rk = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next677.1
  %i.rl = getelementptr i8, ptr %i.rk, i64 -8
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !38
  %i.rn = fdiv double %i.rm, %.2.1
  %i.ro = fsub double %i.rj, %i.rn
  %i.rp = fsub double %i.ro, %i.px                ; 3 uses
  %i.rq = fcmp ole double %i.rp, %i.qa            ; 2 uses
  %i.rr = fcmp ugt double %i.rp, %i.qc
  %i.rs = zext i1 %i.rq to i32
  %.2553.2 = add nuw nsw i32 %.2553.1, %i.rs
  %i.rt = and i1 %i.rq, %i.rr
  %.2.2 = select i1 %i.rt, double %i.qc, double %i.rp
  %indvars.iv.next677.2 = add nuw nsw i64 %indvars.iv676, 3 ; 2 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next677.2
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !38
  %i.rw = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next677.2
  %i.rx = getelementptr i8, ptr %i.rw, i64 -8
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !38
  %i.rz = fdiv double %i.ry, %.2.2
  %i.sa = fsub double %i.rv, %i.rz
  %i.sb = fsub double %i.sa, %i.px                ; 3 uses
  %i.sc = fcmp ole double %i.sb, %i.qa            ; 2 uses
  %i.sd = fcmp ugt double %i.sb, %i.qc
  %i.se = zext i1 %i.sc to i32
  %.2553.3 = add nuw nsw i32 %.2553.2, %i.se      ; 3 uses
  %i.sf = and i1 %i.sc, %i.sd
  %.2.3 = select i1 %i.sf, double %i.qc, double %i.sb ; 2 uses
  %indvars.iv.next677.3 = add nuw nsw i64 %indvars.iv676, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph615, !llvm.loop !28

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph615
  %lcmp.mod937.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod937.not, label %._crit_edge, label %.lr.ph615.epil.preheader

.lr.ph615.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph615.preheader
  %indvars.iv676.epil.init = phi i64 [ 2, %.lr.ph615.preheader ], [ %indvars.iv.next677.3, %._crit_edge.loopexit.unr-lcssa ]
  %.1614.epil.init = phi double [ %.0, %.lr.ph615.preheader ], [ %.2.3, %._crit_edge.loopexit.unr-lcssa ]
  %.1552612.epil.init = phi i32 [ %.0551, %.lr.ph615.preheader ], [ %.2553.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod939 = icmp ne i64 %xtraiter936, 0
  tail call void @llvm.assume(i1 %lcmp.mod939)
  br label %.lr.ph615.epil

.lr.ph615.epil:                                   ; preds = %.lr.ph615.epil, %.lr.ph615.epil.preheader
  %indvars.iv676.epil = phi i64 [ %indvars.iv676.epil.init, %.lr.ph615.epil.preheader ], [ %indvars.iv.next677.epil, %.lr.ph615.epil ] ; 3 uses
  %.1614.epil = phi double [ %.1614.epil.init, %.lr.ph615.epil.preheader ], [ %.2.epil, %.lr.ph615.epil ]
  %.1552612.epil = phi i32 [ %.1552612.epil.init, %.lr.ph615.epil.preheader ], [ %.2553.epil, %.lr.ph615.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph615.epil.preheader ], [ %epil.iter.next, %.lr.ph615.epil ]
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv676.epil
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !38
  %i.si = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv676.epil
  %i.sj = getelementptr i8, ptr %i.si, i64 -8
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !38
  %i.sl = fdiv double %i.sk, %.1614.epil
  %i.sm = fsub double %i.sh, %i.sl
  %i.sn = fsub double %i.sm, %i.px                ; 3 uses
  %i.so = fcmp ole double %i.sn, %i.qa            ; 2 uses
  %i.sp = fcmp ugt double %i.sn, %i.qc
  %i.sq = zext i1 %i.so to i32
  %.2553.epil = add nuw nsw i32 %.1552612.epil, %i.sq ; 2 uses
  %i.sr = and i1 %i.so, %i.sp
  %.2.epil = select i1 %i.sr, double %i.qc, double %i.sn
  %indvars.iv.next677.epil = add nuw nsw i64 %indvars.iv676.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter936
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph615.epil, !llvm.loop !29

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph615.epil, %.lr.ph619
  %.1552.lcssa = phi i32 [ %.0551, %.lr.ph619 ], [ %.2553.3, %._crit_edge.loopexit.unr-lcssa ], [ %.2553.epil, %.lr.ph615.epil ] ; 5 uses
  %i.ss = load i32, ptr %0, align 4, !tbaa !36
  %i.st = icmp slt i32 %i.ss, 3
  br i1 %i.st, label %bb.af, label %bb.am

bb.af:                                            ; preds = %._crit_edge
  %i.su = add nsw i64 %indvars.iv681, %i.hg       ; 2 uses
  %i.sv = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !36 ; 2 uses
  %i.sx = add nsw i64 %indvars.iv681, %i.hh       ; 3 uses
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.sx ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !36 ; 3 uses
  %i.ta = tail call i32 @llvm.smax.i32(i32 %i.sw, i32 %.1552.lcssa) ; 2 uses
  %i.tb = tail call i32 @llvm.smin.i32(i32 %i.sz, i32 %i.ta) ; 3 uses
  %.not580 = icmp sgt i32 %i.sz, %i.ta
  br i1 %.not580, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.sx
  store double %i.px, ptr %i.tc, align 8, !tbaa !38
  br label %bb.ao

bb.ah:                                            ; preds = %bb.af
  %i.td = icmp eq i32 %i.tb, %i.sw
  br i1 %i.td, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.te = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.su
  store double %i.px, ptr %i.te, align 8, !tbaa !38
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.tf = load i32, ptr %3, align 4, !tbaa !36    ; 2 uses
  %i.tg = icmp slt i32 %.2544617, %i.tf
  br i1 %i.tg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.th = add nsw i32 %.2544617, 1                ; 3 uses
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.sx ; 2 uses
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !38
  %i.tk = add nsw i32 %i.th, %i.hf
  %i.tl = sext i32 %i.tk to i64                   ; 2 uses
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.tl
  store double %i.tj, ptr %i.tm, align 8, !tbaa !38
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.tl
  store i32 %i.sz, ptr %i.tn, align 4, !tbaa !36
  %i.to = add nsw i32 %i.th, %i.c
  %i.tp = sext i32 %i.to to i64                   ; 2 uses
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.tp
  store double %i.px, ptr %i.tq, align 8, !tbaa !38
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.tp
  store i32 %i.tb, ptr %i.tr, align 4, !tbaa !36
  store double %i.px, ptr %i.ti, align 8, !tbaa !38
  store i32 %i.tb, ptr %i.sy, align 4, !tbaa !36
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.ts = add nsw i32 %i.tf, 1
  store i32 %i.ts, ptr %19, align 4, !tbaa !36
  br label %.loopexit

bb.am:                                            ; preds = %._crit_edge
  %i.tt = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv681 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !36
  %.not576 = icmp sgt i32 %.1552.lcssa, %i.tu
  br i1 %.not576, label %.thread760, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.tv = add nsw i64 %indvars.iv681, %i.hg       ; 2 uses
  %i.tw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.tv
  store double %i.px, ptr %i.tw, align 8, !tbaa !38
  %i.tx = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.tv
  store i32 %.1552.lcssa, ptr %i.tx, align 4, !tbaa !36
  %.pre = load i32, ptr %i.tt, align 4, !tbaa !36
  %i.ty = icmp slt i32 %.1552.lcssa, %.pre
  br i1 %i.ty, label %bb.ao, label %.thread760

.thread760:                                       ; preds = %bb.am, %bb.an
  %i.tz = add nsw i64 %indvars.iv681, %i.hh       ; 2 uses
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.tz
  store double %i.px, ptr %i.ua, align 8, !tbaa !38
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.tz
  store i32 %.1552.lcssa, ptr %i.ub, align 4, !tbaa !36
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ai, %bb.ak, %bb.ag, %.thread760, %bb.an
  %.3545 = phi i32 [ %.2544617, %bb.ag ], [ %.2544617, %bb.ai ], [ %i.th, %bb.ak ], [ %.2544617, %.thread760 ], [ %.2544617, %bb.an ] ; 2 uses
  %indvars.iv.next682 = add nsw i64 %indvars.iv681, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next682 to i32
  %exitcond684.not = icmp eq i32 %i.hz, %lftr.wideiv
  br i1 %exitcond684.not, label %.loopexit601, label %.lr.ph619, !llvm.loop !30

.loopexit601:                                     ; preds = %bb.ao, %.lr.ph632.prol.loopexit, %bb.ae, %middle.block931, %._crit_edge629.thread, %.preheader603, %._crit_edge637
  %.1535 = phi i32 [ %.0542.lcssa, %._crit_edge637 ], [ %.0534652, %middle.block931 ], [ %.0534652, %._crit_edge629.thread ], [ %.0534652, %.preheader603 ], [ %.0534652, %.lr.ph632.prol.loopexit ], [ %.0534652, %bb.ae ], [ %.3545, %bb.ao ] ; 10 uses
  %.not587639 = icmp sgt i32 %.0540651, %.1535
  br i1 %.not587639, label %.preheader598, label %.lr.ph644.preheader

.lr.ph644.preheader:                              ; preds = %.loopexit601
  %i.uc = sext i32 %.0540651 to i64
  %i.ud = add i32 %.1535, 1
  br label %.lr.ph644

.preheader598:                                    ; preds = %bb.au, %.loopexit601
  %.0546.lcssa = phi i32 [ %.0540651, %.loopexit601 ], [ %.1547, %bb.au ] ; 6 uses
  %.not588646 = icmp sgt i32 %.0546.lcssa, %.1535
  br i1 %.not588646, label %._crit_edge656, label %iter.check813

iter.check813:                                    ; preds = %.preheader598
  %i.ue = sext i32 %.0546.lcssa to i64            ; 5 uses
  %i.uf = add i32 %.1535, 1
  %i.ug = sub i32 %.1535, %.0546.lcssa            ; 3 uses
  %i.uh = zext i32 %i.ug to i64
  %i.ui = add nuw nsw i64 %i.uh, 1                ; 5 uses
  %min.iters.check794 = icmp ult i32 %i.ug, 3
  %brmerge = select i1 %min.iters.check794, i1 true, i1 %conflict.rdx793
  br i1 %brmerge, label %.lr.ph648.preheader, label %vector.main.loop.iter.check795

vector.main.loop.iter.check795:                   ; preds = %iter.check813
  %min.iters.check796 = icmp ult i32 %i.ug, 15
  br i1 %min.iters.check796, label %vec.epilog.ph817, label %vector.ph797

vector.ph797:                                     ; preds = %vector.main.loop.iter.check795
  %i.uj = and i64 %i.ui, 12
  %n.vec798 = and i64 %i.ui, 8589934576           ; 4 uses
  %i.uk = add nsw i64 %n.vec798, %i.ue
  br label %vector.body799

vector.body799:                                   ; preds = %vector.body799, %vector.ph797
  %index800 = phi i64 [ 0, %vector.ph797 ], [ %index.next809, %vector.body799 ] ; 2 uses
  %i.ul = add i64 %index800, %i.ue                ; 3 uses
  %i.um = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.ul ; 4 uses
  %i.un = getelementptr i8, ptr %i.um, i64 32
  %i.uo = getelementptr i8, ptr %i.um, i64 64
  %i.up = getelementptr i8, ptr %i.um, i64 96
  %wide.load801 = load <4 x double>, ptr %i.um, align 8, !tbaa !38
  %wide.load802 = load <4 x double>, ptr %i.un, align 8, !tbaa !38
  %wide.load803 = load <4 x double>, ptr %i.uo, align 8, !tbaa !38
  %wide.load804 = load <4 x double>, ptr %i.up, align 8, !tbaa !38
  %i.uq = getelementptr [8 x i8], ptr %invariant.gep768, i64 %i.ul ; 4 uses
  %i.ur = getelementptr i8, ptr %i.uq, i64 32
  %i.us = getelementptr i8, ptr %i.uq, i64 64
  %i.ut = getelementptr i8, ptr %i.uq, i64 96
  %wide.load805 = load <4 x double>, ptr %i.uq, align 8, !tbaa !38
  %wide.load806 = load <4 x double>, ptr %i.ur, align 8, !tbaa !38
  %wide.load807 = load <4 x double>, ptr %i.us, align 8, !tbaa !38
  %wide.load808 = load <4 x double>, ptr %i.ut, align 8, !tbaa !38
  %i.uu = fadd <4 x double> %wide.load801, %wide.load805
  %i.uv = fadd <4 x double> %wide.load802, %wide.load806
  %i.uw = fadd <4 x double> %wide.load803, %wide.load807
  %i.ux = fadd <4 x double> %wide.load804, %wide.load808
  %i.uy = fmul <4 x double> %i.uu, splat (double 5.000000e-01)
  %i.uz = fmul <4 x double> %i.uv, splat (double 5.000000e-01)
  %i.va = fmul <4 x double> %i.uw, splat (double 5.000000e-01)
  %i.vb = fmul <4 x double> %i.ux, splat (double 5.000000e-01)
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ul ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 96
  store <4 x double> %i.uy, ptr %i.vc, align 8, !tbaa !38
  store <4 x double> %i.uz, ptr %i.vd, align 8, !tbaa !38
  store <4 x double> %i.va, ptr %i.ve, align 8, !tbaa !38
  store <4 x double> %i.vb, ptr %i.vf, align 8, !tbaa !38
  %index.next809 = add nuw i64 %index800, 16      ; 2 uses
  %i.vg = icmp eq i64 %index.next809, %n.vec798
  br i1 %i.vg, label %middle.block810, label %vector.body799, !llvm.loop !31

middle.block810:                                  ; preds = %vector.body799
  %cmp.n811 = icmp eq i64 %i.ui, %n.vec798
  br i1 %cmp.n811, label %._crit_edge649, label %vec.epilog.iter.check815

vec.epilog.iter.check815:                         ; preds = %middle.block810
  %min.epilog.iters.check816 = icmp eq i64 %i.uj, 0
  br i1 %min.epilog.iters.check816, label %.lr.ph648.preheader, label %vec.epilog.ph817, !prof !42

vec.epilog.ph817:                                 ; preds = %vector.main.loop.iter.check795, %vec.epilog.iter.check815
  %vec.epilog.resume.val812 = phi i64 [ %n.vec798, %vec.epilog.iter.check815 ], [ 0, %vector.main.loop.iter.check795 ]
  %n.vec818 = and i64 %i.ui, 8589934588           ; 3 uses
  %i.vh = add nsw i64 %n.vec818, %i.ue
  br label %vec.epilog.vector.body819

vec.epilog.vector.body819:                        ; preds = %vec.epilog.vector.body819, %vec.epilog.ph817
  %index820 = phi i64 [ %vec.epilog.resume.val812, %vec.epilog.ph817 ], [ %index.next823, %vec.epilog.vector.body819 ] ; 2 uses
  %i.vi = add i64 %index820, %i.ue                ; 3 uses
  %i.vj = getelementptr [8 x i8], ptr %invariant.gep766, i64 %i.vi
  %wide.load821 = load <4 x double>, ptr %i.vj, align 8, !tbaa !38
  %i.vk = getelementptr [8 x i8], ptr %invariant.gep768, i64 %i.vi
  %wide.load822 = load <4 x double>, ptr %i.vk, align 8, !tbaa !38
  %i.vl = fadd <4 x double> %wide.load821, %wide.load822
  %i.vm = fmul <4 x double> %i.vl, splat (double 5.000000e-01)
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.vi
  store <4 x double> %i.vm, ptr %i.vn, align 8, !tbaa !38
  %index.next823 = add nuw i64 %index820, 4       ; 2 uses
  %i.vo = icmp eq i64 %index.next823, %n.vec818
  br i1 %i.vo, label %vec.epilog.middle.block824, label %vec.epilog.vector.body819, !llvm.loop !32

vec.epilog.middle.block824:                       ; preds = %vec.epilog.vector.body819
  %cmp.n825 = icmp eq i64 %i.ui, %n.vec818
  br i1 %cmp.n825, label %._crit_edge649, label %.lr.ph648.preheader

.lr.ph648.preheader:                              ; preds = %iter.check813, %vec.epilog.iter.check815, %vec.epilog.middle.block824
  %indvars.iv711.ph = phi i64 [ %i.ue, %iter.check813 ], [ %i.vh, %vec.epilog.middle.block824 ], [ %i.uk, %vec.epilog.iter.check815 ] ; 3 uses
  %i.vp = add i32 %.1535, 1
  %i.vq = trunc i64 %indvars.iv711.ph to i32      ; 2 uses
  %i.vr = sub i32 %i.vp, %i.vq
  %i.vs = sub i32 %.1535, %i.vq
  %xtraiter951 = and i32 %i.vr, 3                 ; 2 uses
  %lcmp.mod952.not = icmp eq i32 %xtraiter951, 0
  br i1 %lcmp.mod952.not, label %.lr.ph648.prol.loopexit, label %.lr.ph648.prol

.lr.ph648.prol:                                   ; preds = %.lr.ph648.preheader, %.lr.ph648.prol
  %indvars.iv711.prol = phi i64 [ %indvars.iv.next712.prol, %.lr.ph648.prol ], [ %indvars.iv711.ph, %.lr.ph648.preheader ] ; 4 uses
  %prol.iter953 = phi i32 [ %prol.iter953.next, %.lr.ph648.prol ], [ 0, %.lr.ph648.preheader ]
  %gep767.prol = getelementptr [8 x i8], ptr %invariant.gep766, i64 %indvars.iv711.prol
  %i.vt = load double, ptr %gep767.prol, align 8, !tbaa !38
  %gep769.prol = getelementptr [8 x i8], ptr %invariant.gep768, i64 %indvars.iv711.prol
  %i.vu = load double, ptr %gep769.prol, align 8, !tbaa !38
  %i.vv = fadd double %i.vt, %i.vu
  %i.vw = fmul double %i.vv, 5.000000e-01
  %i.vx = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv711.prol
  store double %i.vw, ptr %i.vx, align 8, !tbaa !38
  %indvars.iv.next712.prol = add nsw i64 %indvars.iv711.prol, 1 ; 2 uses
  %prol.iter953.next = add i32 %prol.iter953, 1   ; 2 uses
  %prol.iter953.cmp.not = icmp eq i32 %prol.iter953.next, %xtraiter951
  br i1 %prol.iter953.cmp.not, label %.lr.ph648.prol.loopexit, label %.lr.ph648.prol, !llvm.loop !33

.lr.ph648.prol.loopexit:                          ; preds = %.lr.ph648.prol, %.lr.ph648.preheader
  %indvars.iv711.unr = phi i64 [ %indvars.iv711.ph, %.lr.ph648.preheader ], [ %indvars.iv.next712.prol, %.lr.ph648.prol ]
  %i.vy = icmp ult i32 %i.vs, 3
  br i1 %i.vy, label %._crit_edge649, label %.lr.ph648

.lr.ph644:                                        ; preds = %.lr.ph644.preheader, %bb.au
  %indvars.iv706 = phi i64 [ %i.uc, %.lr.ph644.preheader ], [ %indvars.iv.next707, %bb.au ] ; 5 uses
  %.0546640 = phi i32 [ %.0540651, %.lr.ph644.preheader ], [ %.1547, %bb.au ] ; 5 uses
  %i.vz = add nsw i64 %indvars.iv706, %i.hh       ; 3 uses
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.vz ; 2 uses
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !38 ; 5 uses
  %i.wc = add nsw i64 %indvars.iv706, %i.hg       ; 3 uses
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.wc ; 2 uses
  %i.we = load double, ptr %i.wd, align 8, !tbaa !38 ; 5 uses
  %i.wf = fsub double %i.wb, %i.we
  %i.wg = tail call double @llvm.fabs.f64(double %i.wf)
  %i.wh = fcmp oge double %i.wb, 0.000000e+00
  %i.wi = fneg double %i.wb
  %i.wj = select i1 %i.wh, double %i.wb, double %i.wi ; 2 uses
  %i.wk = fcmp oge double %i.we, 0.000000e+00
  %i.wl = fneg double %i.we
  %i.wm = select i1 %i.wk, double %i.we, double %i.wl ; 2 uses
  %i.wn = fcmp oge double %i.wj, %i.wm
  %i.wo = select i1 %i.wn, double %i.wj, double %i.wm
  %i.wp = load double, ptr %6, align 8, !tbaa !38 ; 2 uses
  %i.wq = load double, ptr %8, align 8, !tbaa !38 ; 2 uses
  %.inv = fcmp oge double %i.wp, %i.wq
  %. = select i1 %.inv, double %i.wp, double %i.wq ; 2 uses
  %i.wr = load double, ptr %7, align 8, !tbaa !38
  %i.ws = fmul double %i.wr, %i.wo                ; 2 uses
  %i.wt = fcmp oge double %., %i.ws
  %i.wu = select i1 %i.wt, double %., double %i.ws
  %i.wv = fcmp olt double %i.wg, %i.wu
  br i1 %i.wv, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph644
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.wc
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !36
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.vz
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !36
  %.not589 = icmp slt i32 %i.wx, %i.wz
  br i1 %.not589, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph644
  %i.xa = sext i32 %.0546640 to i64               ; 2 uses
  %i.xb = icmp sgt i64 %indvars.iv706, %i.xa
  br i1 %i.xb, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.wc ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !36
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.vz ; 2 uses
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !36
  %i.xg = add nsw i32 %.0546640, %i.c
  %i.xh = sext i32 %i.xg to i64                   ; 2 uses
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.xh ; 2 uses
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !38
  store double %i.xj, ptr %i.wd, align 8, !tbaa !38
  %i.xk = add nsw i32 %.0546640, %i.hf
  %i.xl = sext i32 %i.xk to i64                   ; 2 uses
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.xl ; 2 uses
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !38
  store double %i.xn, ptr %i.wa, align 8, !tbaa !38
  %i.xo = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.xh ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !36
  store i32 %i.xp, ptr %i.xc, align 4, !tbaa !36
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.xl ; 2 uses
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !36
  store i32 %i.xr, ptr %i.xe, align 4, !tbaa !36
  store double %i.we, ptr %i.xi, align 8, !tbaa !38
  store double %i.wb, ptr %i.xm, align 8, !tbaa !38
  store i32 %i.xd, ptr %i.xo, align 4, !tbaa !36
  store i32 %i.xf, ptr %i.xq, align 4, !tbaa !36
  %i.xs = load i32, ptr %0, align 4, !tbaa !36
  %i.xt = icmp eq i32 %i.xs, 3
  br i1 %i.xt, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv706 ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !36
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.xa ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !36
  store i32 %i.xx, ptr %i.xu, align 4, !tbaa !36
  store i32 %i.xv, ptr %i.xw, align 4, !tbaa !36
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %i.xy = add nsw i32 %.0546640, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.at
  %.1547 = phi i32 [ %i.xy, %bb.at ], [ %.0546640, %bb.ap ] ; 2 uses
  %indvars.iv.next707 = add nsw i64 %indvars.iv706, 1 ; 2 uses
  %lftr.wideiv709 = trunc i64 %indvars.iv.next707 to i32
  %exitcond710.not = icmp eq i32 %i.ud, %lftr.wideiv709
  br i1 %exitcond710.not, label %.preheader598, label %.lr.ph644, !llvm.loop !34

.lr.ph648:                                        ; preds = %.lr.ph648.prol.loopexit, %.lr.ph648
  %indvars.iv711 = phi i64 [ %indvars.iv.next712.3, %.lr.ph648 ], [ %indvars.iv711.unr, %.lr.ph648.prol.loopexit ] ; 8 uses
  %gep767 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %indvars.iv711
  %i.xz = load double, ptr %gep767, align 8, !tbaa !38
  %gep769 = getelementptr [8 x i8], ptr %invariant.gep768, i64 %indvars.iv711
  %i.ya = load double, ptr %gep769, align 8, !tbaa !38
  %i.yb = fadd double %i.xz, %i.ya
  %i.yc = fmul double %i.yb, 5.000000e-01
  %i.yd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv711
  store double %i.yc, ptr %i.yd, align 8, !tbaa !38
  %indvars.iv.next712 = add nsw i64 %indvars.iv711, 1 ; 2 uses
  %gep767.1 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %indvars.iv.next712
  %i.ye = load double, ptr %gep767.1, align 8, !tbaa !38
  %gep769.1 = getelementptr [8 x i8], ptr %invariant.gep768, i64 %indvars.iv.next712
  %i.yf = load double, ptr %gep769.1, align 8, !tbaa !38
  %i.yg = fadd double %i.ye, %i.yf
  %i.yh = fmul double %i.yg, 5.000000e-01
  %i.yi = getelementptr [8 x i8], ptr %14, i64 %indvars.iv711
  store double %i.yh, ptr %i.yi, align 8, !tbaa !38
  %indvars.iv.next712.1 = add nsw i64 %indvars.iv711, 2 ; 3 uses
  %gep767.2 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %indvars.iv.next712.1
  %i.yj = load double, ptr %gep767.2, align 8, !tbaa !38
  %gep769.2 = getelementptr [8 x i8], ptr %invariant.gep768, i64 %indvars.iv.next712.1
  %i.yk = load double, ptr %gep769.2, align 8, !tbaa !38
  %i.yl = fadd double %i.yj, %i.yk
  %i.ym = fmul double %i.yl, 5.000000e-01
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.next712.1
  store double %i.ym, ptr %i.yn, align 8, !tbaa !38
  %indvars.iv.next712.2 = add nsw i64 %indvars.iv711, 3 ; 3 uses
  %gep767.3 = getelementptr [8 x i8], ptr %invariant.gep766, i64 %indvars.iv.next712.2
  %i.yo = load double, ptr %gep767.3, align 8, !tbaa !38
  %gep769.3 = getelementptr [8 x i8], ptr %invariant.gep768, i64 %indvars.iv.next712.2
  %i.yp = load double, ptr %gep769.3, align 8, !tbaa !38
  %i.yq = fadd double %i.yo, %i.yp
  %i.yr = fmul double %i.yq, 5.000000e-01
  %i.ys = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv.next712.2
  store double %i.yr, ptr %i.ys, align 8, !tbaa !38
  %indvars.iv.next712.3 = add nsw i64 %indvars.iv711, 4 ; 2 uses
  %lftr.wideiv714.3 = trunc i64 %indvars.iv.next712.3 to i32
  %exitcond715.not.3 = icmp eq i32 %i.uf, %lftr.wideiv714.3
  br i1 %exitcond715.not.3, label %._crit_edge649, label %.lr.ph648, !llvm.loop !35

._crit_edge656:                                   ; preds = %.preheader598, %._crit_edge649, %.loopexit607
  %.1541 = phi i32 [ 1, %.loopexit607 ], [ %.0546.lcssa, %._crit_edge649 ], [ %.0546.lcssa, %.preheader598 ]
  %.2536 = phi i32 [ %i.ed, %.loopexit607 ], [ %.1535, %._crit_edge649 ], [ %.1535, %.preheader598 ] ; 2 uses
  %reass.sub672 = sub i32 %.2536, %.1541
  %i.yt = add i32 %reass.sub672, 1
  %i.yu = tail call i32 @llvm.smax.i32(i32 %i.yt, i32 0)
  store i32 %i.yu, ptr %19, align 4, !tbaa !36
  store i32 %.2536, ptr %15, align 4, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge637, %._crit_edge667.1, %bb.d, %._crit_edge656, %bb.al, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4f64.p0(<4 x double>, ptr captures(none), <4 x i1>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v4i32.p0(<4 x i32>, ptr captures(none), <4 x i1>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !39}
!9 = distinct !{!9, !39}
!10 = distinct !{!10, !39, !40, !41}
!11 = distinct !{!11, !39, !40, !41}
!12 = distinct !{!12, !43}
!13 = distinct !{!13, !39, !40}
!14 = distinct !{!14, !39}
!15 = distinct !{!15, !39}
!16 = distinct !{!16, !39}
!17 = distinct !{!17, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !39, !40, !41}
!26 = distinct !{!26, !39}
!27 = distinct !{!27, !39, !40}
!28 = distinct !{!28, !39}
!29 = distinct !{!29, !43}
!30 = distinct !{!30, !39}
!31 = distinct !{!31, !39, !40, !41}
!32 = distinct !{!32, !39, !40, !41}
!33 = distinct !{!33, !43}
!34 = distinct !{!34, !39}
!35 = distinct !{!35, !39, !40}
!36 = !{!5, !5, i64 0}
!37 = !{!"double", !4, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{!"branch_weights", i32 4, i32 12}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!18}
!45 = !{!19}
!46 = !{!20}
!47 = !{!21}
!48 = !{!24, !23, !22, !18, !19, !20}
!49 = !{!24}
!50 = !{!23, !22, !18, !19, !20}
!51 = !{!23}
!52 = !{!22, !18, !19, !20}
!53 = !{!22}
!54 = !{!18, !19, !20}
end_hunk_1
