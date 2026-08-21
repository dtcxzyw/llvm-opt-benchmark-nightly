Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ida?download=true
inline.NumInlined: 26
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@IDASolve:bb.a
  %.2.i.i = phi i32 [ %.1.i.i, %bb.ch ], [ %.1.i.i, %bb.cg ], [ %.0.i.i, %bb.cf ]
  %i.oa = load ptr, ptr %i.fz, align 8, !tbaa !64
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.oa) #13
  %i.ob = load ptr, ptr %i.ga, align 8, !tbaa !140 ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !141
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !144
  %.not51.i.i = icmp eq ptr %i.of, null
  br i1 %.not51.i.i, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.og = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.oh = call i32 @SUNNonlinSolSetup(ptr noundef nonnull %i.ob, ptr noundef %i.og, ptr noundef nonnull %0) #13 ; 2 uses
  %i.oi = icmp slt i32 %i.oh, 0
  br i1 %i.oi, label %IDANls.exit.thread.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %.not52.i.i = icmp eq i32 %i.oh, 0
  br i1 %.not52.i.i, label %._crit_edge55.i.i, label %IDANls.exit.thread.i

._crit_edge55.i.i:                                ; preds = %bb.ck
  %.pre56.i.i = load ptr, ptr %i.ga, align 8, !tbaa !140
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge55.i.i, %bb.ci
  %i.oj = phi ptr [ %.pre56.i.i, %._crit_edge55.i.i ], [ %i.ob, %bb.ci ]
  %i.ok = load ptr, ptr %i.fr, align 8, !tbaa !66
  %i.ol = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.om = load ptr, ptr %i.et, align 8, !tbaa !63
  %i.on = load double, ptr %i.gb, align 8, !tbaa !123
  %i.oo = call i32 @SUNNonlinSolSolve(ptr noundef %i.oj, ptr noundef %i.ok, ptr noundef %i.ol, ptr noundef %i.om, double noundef %i.on, i32 noundef %.2.i.i, ptr noundef nonnull %0) #13 ; 2 uses
  %i.op = load ptr, ptr %i.ga, align 8, !tbaa !140
  %i.oq = call i32 @SUNNonlinSolGetNumIters(ptr noundef %i.op, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.or = load i64, ptr %i.a, align 8, !tbaa !60
  %i.os = load i64, ptr %i.gc, align 8, !tbaa !146
  %i.ot = add nsw i64 %i.os, %i.or
  store i64 %i.ot, ptr %i.gc, align 8, !tbaa !146
  %i.ou = load ptr, ptr %i.ga, align 8, !tbaa !140
  %i.ov = call i32 @SUNNonlinSolGetNumConvFails(ptr noundef %i.ou, ptr noundef nonnull %i.b) #13 ; 0 uses
  %i.ow = load i64, ptr %i.b, align 8, !tbaa !60
  %i.ox = load i64, ptr %i.gd, align 8, !tbaa !147
  %i.oy = add nsw i64 %i.ox, %i.ow
  store i64 %i.oy, ptr %i.gd, align 8, !tbaa !147
  %.not53.i.i = icmp eq i32 %i.oo, 0
  br i1 %.not53.i.i, label %bb.cm, label %IDANls.exit.thread.i

IDANls.exit.thread.i:                             ; preds = %bb.cl, %bb.ck, %bb.cj
  %.046.i.ph.i = phi i32 [ %i.oo, %bb.cl ], [ 4, %bb.ck ], [ -16, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.pre240.i = load i32, ptr %i.fa, align 8, !tbaa !122
  br label %select.unfold.i

bb.cm:                                            ; preds = %bb.cl
  %i.oz = load ptr, ptr %i.fr, align 8, !tbaa !66
  %i.pa = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.pb = load ptr, ptr %i.h, align 8, !tbaa !111
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.oz, double noundef 1.000000e+00, ptr noundef %i.pa, ptr noundef %i.pb) #13
  %i.pc = load ptr, ptr %i.fu, align 8, !tbaa !67
  %i.pd = load double, ptr %i.ff, align 8, !tbaa !128
  %i.pe = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.pf = load ptr, ptr %i.j, align 8, !tbaa !112
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.pc, double noundef %i.pd, ptr noundef %i.pe, ptr noundef %i.pf) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.pg = load ptr, ptr %i.ge, align 8, !tbaa !90 ; 2 uses
  %.not49.i = icmp eq ptr %i.pg, null
  br i1 %.not49.i, label %IDACheckConstraints.exit.thread114.loopexit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ph = load ptr, ptr %i.gf, align 8, !tbaa !70 ; 6 uses
  %i.pi = load ptr, ptr %i.gg, align 8, !tbaa !69 ; 19 uses
  %i.pj = load ptr, ptr %i.h, align 8, !tbaa !111
  %i.pk = call i32 @N_VConstrMask(ptr noundef nonnull %i.pg, ptr noundef %i.pj, ptr noundef %i.ph) #13
  %.not.i64.i = icmp eq i32 %i.pk, 0
  br i1 %.not.i64.i, label %bb.co, label %IDACheckConstraints.exit.thread114.loopexit.i

bb.co:                                            ; preds = %bb.cn
  %i.pl = load ptr, ptr %i.ge, align 8, !tbaa !90
  call void @N_VCompare(double noundef 1.500000e+00, ptr noundef %i.pl, ptr noundef %i.pi) #13
  %i.pm = load ptr, ptr %i.ge, align 8, !tbaa !90
  call void @N_VProd(ptr noundef %i.pi, ptr noundef %i.pm, ptr noundef %i.pi) #13
  %i.pn = load ptr, ptr %i.et, align 8, !tbaa !63
  call void @N_VDiv(ptr noundef %i.pi, ptr noundef %i.pn, ptr noundef %i.pi) #13
  %i.po = load ptr, ptr %i.gh, align 8, !tbaa !71
  call void @N_VScale(double noundef -1.000000e-01, ptr noundef %i.pi, ptr noundef %i.po) #13
  %i.pp = load ptr, ptr %i.h, align 8, !tbaa !111
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.pp, double noundef -1.000000e-01, ptr noundef %i.pi, ptr noundef %i.pi) #13
  call void @N_VProd(ptr noundef %i.pi, ptr noundef %i.ph, ptr noundef %i.pi) #13
  %i.pq = load ptr, ptr %i.et, align 8, !tbaa !63
  %i.pr = call double @N_VWrmsNorm(ptr noundef %i.pi, ptr noundef %i.pq) #13
  %i.ps = load double, ptr %i.gb, align 8, !tbaa !123
  %i.pt = fcmp ugt double %i.pr, %i.ps
  br i1 %i.pt, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pu = fadd double %i.mb, %i.mh
  %i.pv = extractelement <2 x double> %i.lz, i64 0
  %i.pw = fsub double %i.pu, %i.pv
  %i.px = call double @llvm.fabs.f64(double %i.pw) ; 2 uses
  %i.py = fcmp ogt double %i.px, %i.mh
  %.102.i.le.i = select i1 %i.py, double %i.px, double %i.mh
  %i.pz = load i64, ptr %i.gm, align 8, !tbaa !148
  %i.qa = add nsw i64 %i.pz, 1
  store i64 %i.qa, ptr %i.gm, align 8, !tbaa !148
  %i.qb = load ptr, ptr %i.fz, align 8, !tbaa !64
  call void @N_VProd(ptr noundef %i.ph, ptr noundef %i.qb, ptr noundef %i.pi) #13
  %i.qc = load ptr, ptr %i.fz, align 8, !tbaa !64 ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.qc, double noundef -1.000000e+00, ptr noundef %i.pi, ptr noundef %i.qc) #13
  %i.qd = load ptr, ptr %i.fr, align 8, !tbaa !66
  call void @N_VProd(ptr noundef %i.ph, ptr noundef %i.qd, ptr noundef %i.pi) #13
  %i.qe = load ptr, ptr %i.fz, align 8, !tbaa !64 ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.qe, double noundef -1.000000e+00, ptr noundef %i.pi, ptr noundef %i.qe) #13
  %i.qf = load ptr, ptr %i.gh, align 8, !tbaa !71 ; 2 uses
  call void @N_VProd(ptr noundef %i.ph, ptr noundef %i.qf, ptr noundef %i.qf) #13
  %i.qg = load ptr, ptr %i.fz, align 8, !tbaa !64 ; 2 uses
  %i.qh = load ptr, ptr %i.gh, align 8, !tbaa !71
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.qg, double noundef -1.000000e+00, ptr noundef %i.qh, ptr noundef %i.qg) #13
  br label %IDACheckConstraints.exit.thread114.i

bb.cq:                                            ; preds = %bb.co
  %i.qi = add nsw i32 %.0100.i, 1                 ; 2 uses
  %i.qj = load i64, ptr %i.gi, align 8, !tbaa !149
  %i.qk = add nsw i64 %i.qj, 1
  store i64 %i.qk, ptr %i.gi, align 8, !tbaa !149
  %i.ql = load double, ptr %i.fd, align 8, !tbaa !115
  %i.qm = call double @llvm.fabs.f64(double %i.ql)
  %i.qn = load double, ptr %i.gj, align 8, !tbaa !118
  %i.qo = fmul double %i.qn, f0x3FF000010C6F7A0B
  %i.qp = fcmp ugt double %i.qm, %i.qo
  br i1 %i.qp, label %bb.cr, label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.qq = load i32, ptr %i.gk, align 8, !tbaa !25
  %i.qr = icmp eq i32 %i.qi, %i.qq
  br i1 %i.qr, label %.loopexit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qs = load ptr, ptr %i.es, align 8, !tbaa !73
  %i.qt = load ptr, ptr %i.h, align 8, !tbaa !111
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.qs, double noundef -1.000000e+00, ptr noundef %i.qt, ptr noundef %i.pi) #13
  call void @N_VProd(ptr noundef %i.ph, ptr noundef %i.pi, ptr noundef %i.pi) #13
  %i.qu = load ptr, ptr %i.es, align 8, !tbaa !73
  %i.qv = call double @N_VMinQuotient(ptr noundef %i.qu, ptr noundef %i.pi) #13
  %i.qw = fmul double %i.qv, 9.000000e-01         ; 2 uses
  %i.qx = fcmp ogt double %i.qw, 1.000000e-01
  %i.qy = select i1 %i.qx, double %i.qw, double 1.000000e-01 ; 2 uses
  %i.qz = load double, ptr %i.gj, align 8, !tbaa !118
  %i.ra = load double, ptr %i.fd, align 8, !tbaa !115
  %i.rb = call double @llvm.fabs.f64(double %i.ra)
  %i.rc = fdiv double %i.qz, %i.rb                ; 2 uses
  %i.rd = fcmp ogt double %i.qy, %i.rc
  %i.re = select i1 %i.rd, double %i.qy, double %i.rc
  store double %i.re, ptr %i.gl, align 8, !tbaa !150
  store double %i.it, ptr %i.ez, align 8, !tbaa !76
  %i.rf = load i32, ptr %i.fa, align 8, !tbaa !122 ; 9 uses
  %.not32.i.i.i = icmp slt i32 %i.rf, 1
  br i1 %.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cs
  %i.rg = zext nneg i32 %i.rf to i64              ; 2 uses
  %xtraiter613 = and i64 %i.rg, 3                 ; 3 uses
  %i.rh = icmp ult i32 %i.rf, 4
  br i1 %i.rh, label %.epil.preheader612, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter617 = and i64 %i.rg, 2147483644
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.ct ] ; 5 uses
  %niter618 = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter618.next.3, %bb.ct ]
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i ; 2 uses
  %i.rj = load double, ptr %i.ri, align 8, !tbaa !21
  %i.rk = load double, ptr %i.fd, align 8, !tbaa !115
  %i.rl = fsub double %i.rj, %i.rk
  %i.rm = getelementptr i8, ptr %i.ri, i64 -8
  store double %i.rl, ptr %i.rm, align 8, !tbaa !21
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !21
  %i.rq = load double, ptr %i.fd, align 8, !tbaa !115
  %i.rr = fsub double %i.rp, %i.rq
  store double %i.rr, ptr %i.rn, align 8, !tbaa !21
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !21
  %i.rv = load double, ptr %i.fd, align 8, !tbaa !115
  %i.rw = fsub double %i.ru, %i.rv
  %i.rx = getelementptr i8, ptr %i.rs, i64 8
  store double %i.rw, ptr %i.rx, align 8, !tbaa !21
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !21
  %i.sb = load double, ptr %i.fd, align 8, !tbaa !115
  %i.sc = fsub double %i.sa, %i.sb
  %i.sd = getelementptr i8, ptr %i.ry, i64 16
  store double %i.sc, ptr %i.sd, align 8, !tbaa !21
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter618.next.3 = add nuw nsw i64 %niter618, 4 ; 2 uses
  %niter618.ncmp.3 = icmp eq i64 %niter618.next.3, %unroll_iter617
  br i1 %niter618.ncmp.3, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %bb.ct

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.ct
  %lcmp.mod615.not = icmp eq i64 %xtraiter613, 0
  br i1 %lcmp.mod615.not, label %._crit_edge.i.i.i, label %.epil.preheader612

.epil.preheader612:                               ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod616 = icmp ne i64 %xtraiter613, 0
  call void @llvm.assume(i1 %lcmp.mod616)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.epil.preheader612
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader612 ], [ %indvars.iv.next.i.i.i.epil, %bb.cu ] ; 2 uses
  %epil.iter614 = phi i64 [ 0, %.epil.preheader612 ], [ %epil.iter614.next, %bb.cu ]
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.i.epil ; 2 uses
  %i.sf = load double, ptr %i.se, align 8, !tbaa !21
  %i.sg = load double, ptr %i.fd, align 8, !tbaa !115
  %i.sh = fsub double %i.sf, %i.sg
  %i.si = getelementptr i8, ptr %i.se, i64 -8
  store double %i.sh, ptr %i.si, align 8, !tbaa !21
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter614.next = add i64 %epil.iter614, 1   ; 2 uses
  %epil.iter614.cmp.not = icmp eq i64 %epil.iter614.next, %xtraiter613
  br i1 %epil.iter614.cmp.not, label %._crit_edge.i.i.i, label %bb.cu, !llvm.loop !151

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %bb.cu, %bb.cs
  %i.sj = load i32, ptr %i.fh, align 8, !tbaa !130 ; 5 uses
  %.not30.i.i.i = icmp sgt i32 %i.sj, %i.rf
  br i1 %.not30.i.i.i, label %IDARestore.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i
  %i.sk = sext i32 %i.sj to i64                   ; 11 uses
  %i.sl = add i32 %i.rf, 1                        ; 2 uses
  %i.sm = sub i32 %i.rf, %i.sj
  %i.sn = zext i32 %i.sm to i64
  %i.so = add nuw nsw i64 %i.sn, 1                ; 2 uses
  %min.iters.check548 = icmp eq i32 %i.rf, %i.sj
  br i1 %min.iters.check548, label %scalar.ph547.preheader, label %vector.memcheck545

vector.memcheck545:                               ; preds = %.preheader.i.i.i
  %i.sp = shl nsw i64 %i.sk, 3
  %i.sq = add nsw i64 %i.sp, -961
  %diff.check546 = icmp ult i64 %i.sq, 15
  br i1 %diff.check546, label %scalar.ph547.preheader, label %vector.ph549

vector.ph549:                                     ; preds = %vector.memcheck545
  %n.vec550 = and i64 %i.so, 8589934590           ; 3 uses
  %i.sr = add nsw i64 %n.vec550, %i.sk
  %invariant.gep = getelementptr [8 x i8], ptr %i.fk, i64 %i.sk
  br label %vector.body551

vector.body551:                                   ; preds = %vector.body551, %vector.ph549
  %index552 = phi i64 [ 0, %vector.ph549 ], [ %index.next554, %vector.body551 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index552
  %wide.load553 = load <2 x double>, ptr %gep, align 8, !tbaa !21
  %i.ss = fdiv <2 x double> splat (double 1.000000e+00), %wide.load553
  %i.st = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %index552
  store <2 x double> %i.ss, ptr %i.st, align 8, !tbaa !21
  %index.next554 = add nuw i64 %index552, 2       ; 2 uses
  %i.su = icmp eq i64 %index.next554, %n.vec550
  br i1 %i.su, label %middle.block555, label %vector.body551, !llvm.loop !152

middle.block555:                                  ; preds = %vector.body551
  %cmp.n556 = icmp eq i64 %i.so, %n.vec550
  br i1 %cmp.n556, label %.loopexit568, label %scalar.ph547.preheader

scalar.ph547.preheader:                           ; preds = %vector.memcheck545, %.preheader.i.i.i, %middle.block555
  %indvars.iv36.i.i.i.ph = phi i64 [ %i.sk, %vector.memcheck545 ], [ %i.sk, %.preheader.i.i.i ], [ %i.sr, %middle.block555 ] ; 3 uses
  %i.sv = add i32 %i.rf, 1
  %i.sw = trunc i64 %indvars.iv36.i.i.i.ph to i32 ; 2 uses
  %i.sx = sub i32 %i.sv, %i.sw
  %i.sy = sub i32 %i.rf, %i.sw
  %xtraiter619 = and i32 %i.sx, 3                 ; 2 uses
  %lcmp.mod620.not = icmp eq i32 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %scalar.ph547.prol.loopexit, label %scalar.ph547.prol

scalar.ph547.prol:                                ; preds = %scalar.ph547.preheader, %scalar.ph547.prol
  %indvars.iv36.i.i.i.prol = phi i64 [ %indvars.iv.next37.i.i.i.prol, %scalar.ph547.prol ], [ %indvars.iv36.i.i.i.ph, %scalar.ph547.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph547.prol ], [ 0, %scalar.ph547.preheader ]
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv36.i.i.i.prol
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !21
  %i.tb = fdiv double 1.000000e+00, %i.ta
  %i.tc = sub nsw i64 %indvars.iv36.i.i.i.prol, %i.sk
  %i.td = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.tc
  store double %i.tb, ptr %i.td, align 8, !tbaa !21
  %indvars.iv.next37.i.i.i.prol = add nsw i64 %indvars.iv36.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter619
  br i1 %prol.iter.cmp.not, label %scalar.ph547.prol.loopexit, label %scalar.ph547.prol, !llvm.loop !153

scalar.ph547.prol.loopexit:                       ; preds = %scalar.ph547.prol, %scalar.ph547.preheader
  %indvars.iv36.i.i.i.unr = phi i64 [ %indvars.iv36.i.i.i.ph, %scalar.ph547.preheader ], [ %indvars.iv.next37.i.i.i.prol, %scalar.ph547.prol ]
  %i.te = icmp ult i32 %i.sy, 3
  br i1 %i.te, label %.loopexit568, label %scalar.ph547

scalar.ph547:                                     ; preds = %scalar.ph547.prol.loopexit, %scalar.ph547
  %indvars.iv36.i.i.i = phi i64 [ %indvars.iv.next37.i.i.i.3, %scalar.ph547 ], [ %indvars.iv36.i.i.i.unr, %scalar.ph547.prol.loopexit ] ; 6 uses
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv36.i.i.i
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !21
  %i.th = fdiv double 1.000000e+00, %i.tg
  %i.ti = sub nsw i64 %indvars.iv36.i.i.i, %i.sk
  %i.tj = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.ti
  store double %i.th, ptr %i.tj, align 8, !tbaa !21
  %indvars.iv.next37.i.i.i = add nsw i64 %indvars.iv36.i.i.i, 1 ; 2 uses
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv.next37.i.i.i
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !21
  %i.tm = fdiv double 1.000000e+00, %i.tl
  %i.tn = sub nsw i64 %indvars.iv.next37.i.i.i, %i.sk
  %i.to = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.tn
  store double %i.tm, ptr %i.to, align 8, !tbaa !21
  %indvars.iv.next37.i.i.i.1 = add nsw i64 %indvars.iv36.i.i.i, 2 ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv.next37.i.i.i.1
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !21
  %i.tr = fdiv double 1.000000e+00, %i.tq
  %i.ts = sub nsw i64 %indvars.iv.next37.i.i.i.1, %i.sk
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.ts
  store double %i.tr, ptr %i.tt, align 8, !tbaa !21
  %indvars.iv.next37.i.i.i.2 = add nsw i64 %indvars.iv36.i.i.i, 3 ; 2 uses
  %i.tu = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv.next37.i.i.i.2
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !21
  %i.tw = fdiv double 1.000000e+00, %i.tv
  %i.tx = sub nsw i64 %indvars.iv.next37.i.i.i.2, %i.sk
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.tx
  store double %i.tw, ptr %i.ty, align 8, !tbaa !21
  %indvars.iv.next37.i.i.i.3 = add nsw i64 %indvars.iv36.i.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.i.3 = trunc i64 %indvars.iv.next37.i.i.i.3 to i32
  %exitcond39.not.i.i.i.3 = icmp eq i32 %i.sl, %lftr.wideiv.i.i.i.3
  br i1 %exitcond39.not.i.i.i.3, label %.loopexit568, label %scalar.ph547, !llvm.loop !154

.loopexit568:                                     ; preds = %scalar.ph547.prol.loopexit, %scalar.ph547, %middle.block555
  %i.tz = sub i32 %i.sl, %i.sj
  %i.ua = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.sk ; 2 uses
  %i.ub = call i32 @N_VScaleVectorArray(i32 noundef %i.tz, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.ua, ptr noundef nonnull %i.ua) #13 ; 0 uses
  br label %IDARestore.exit.i.i

IDARestore.exit.i.i:                              ; preds = %.loopexit568, %._crit_edge.i.i.i
  store i32 1, ptr %i.fg, align 4, !tbaa !129
  %i.uc = load double, ptr %i.gl, align 8, !tbaa !150 ; 2 uses
  %i.ud = load double, ptr %i.fd, align 8, !tbaa !115
  %i.ue = fmul double %i.uc, %i.ud                ; 2 uses
  store double %i.ue, ptr %i.fd, align 8, !tbaa !115
  %i.uf = load i64, ptr %i.m, align 8, !tbaa !113
  %i.ug = icmp eq i64 %i.uf, 0
  br i1 %i.ug, label %bb.cv, label %IDACheckConstraints.exit.i.backedge

bb.cv:                                            ; preds = %IDARestore.exit.i.i
  store double %i.ue, ptr %i.fe, align 8, !tbaa !21
  %i.uh = load ptr, ptr %i.ft, align 8, !tbaa !73 ; 2 uses
  call void @N_VScale(double noundef %i.uc, ptr noundef %i.uh, ptr noundef %i.uh) #13
  br label %IDACheckConstraints.exit.i.backedge

IDACheckConstraints.exit.i.backedge:              ; preds = %bb.cv, %IDARestore.exit.i.i
  br label %IDACheckConstraints.exit.i

IDACheckConstraints.exit.thread114.loopexit.i:    ; preds = %bb.cn, %bb.cm
  %i.ui = fadd double %i.mb, %i.mh
  %i.uj = extractelement <2 x double> %i.lz, i64 0
  %i.uk = fsub double %i.ui, %i.uj
  %i.ul = call double @llvm.fabs.f64(double %i.uk) ; 2 uses
  %i.um = fcmp ogt double %i.ul, %i.mh
  %.102.i.le198.i = select i1 %i.um, double %i.ul, double %i.mh
  br label %IDACheckConstraints.exit.thread114.i

IDACheckConstraints.exit.thread114.i:             ; preds = %IDACheckConstraints.exit.thread114.loopexit.i, %bb.cp
  %.102.i158.i = phi double [ %.102.i.le198.i, %IDACheckConstraints.exit.thread114.loopexit.i ], [ %.102.i.le.i, %bb.cp ] ; 2 uses
  %i.un = load ptr, ptr %i.fz, align 8, !tbaa !64 ; 2 uses
  %i.uo = load ptr, ptr %i.et, align 8, !tbaa !63 ; 2 uses
  %i.up = load i32, ptr %i.ev, align 8, !tbaa !116
  %.not.i.i.i = icmp eq i32 %i.up, 0
  br i1 %.not.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %IDACheckConstraints.exit.thread114.i
  %i.uq = load ptr, ptr %i.ew, align 8, !tbaa !92
  %i.ur = call double @N_VWrmsNormMask(ptr noundef %i.un, ptr noundef %i.uo, ptr noundef %i.uq) #13
  br label %IDAWrmsNorm.exit.i.i

bb.cx:                                            ; preds = %IDACheckConstraints.exit.thread114.i
  %i.us = call double @N_VWrmsNorm(ptr noundef %i.un, ptr noundef %i.uo) #13
  br label %IDAWrmsNorm.exit.i.i

IDAWrmsNorm.exit.i.i:                             ; preds = %bb.cx, %bb.cw
  %.0.i.i.i = phi double [ %i.ur, %bb.cw ], [ %i.us, %bb.cx ] ; 2 uses
  %i.ut = load i32, ptr %i.fa, align 8, !tbaa !122 ; 6 uses
  %i.uu = sext i32 %i.ut to i64
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.uu
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !21
  %i.ux = fmul double %.0.i.i.i, %i.uw            ; 7 uses
  %i.uy = add nsw i32 %i.ut, 1
  %i.uz = sitofp i32 %i.uy to double
  %i.va = fmul double %i.ux, %i.uz                ; 2 uses
  store i32 %i.ut, ptr %i.gn, align 8, !tbaa !155
  %i.vb = icmp sgt i32 %i.ut, 1
  br i1 %i.vb, label %bb.cy, label %IDATestError.exit.i

bb.cy:                                            ; preds = %IDAWrmsNorm.exit.i.i
  %i.vc = zext nneg i32 %i.ut to i64
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.vc
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !73
  %i.vf = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.vg = load ptr, ptr %i.go, align 8, !tbaa !65
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ve, double noundef 1.000000e+00, ptr noundef %i.vf, ptr noundef %i.vg) #13
  %i.vh = load ptr, ptr %i.go, align 8, !tbaa !65 ; 2 uses
  %i.vi = load ptr, ptr %i.et, align 8, !tbaa !63 ; 2 uses
  %i.vj = load i32, ptr %i.ev, align 8, !tbaa !116
  %.not.i56.i.i = icmp eq i32 %i.vj, 0
  br i1 %.not.i56.i.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.vk = load ptr, ptr %i.ew, align 8, !tbaa !92
  %i.vl = call double @N_VWrmsNormMask(ptr noundef %i.vh, ptr noundef %i.vi, ptr noundef %i.vk) #13
  br label %IDAWrmsNorm.exit58.i.i

bb.da:                                            ; preds = %bb.cy
  %i.vm = call double @N_VWrmsNorm(ptr noundef %i.vh, ptr noundef %i.vi) #13
  br label %IDAWrmsNorm.exit58.i.i

IDAWrmsNorm.exit58.i.i:                           ; preds = %bb.da, %bb.cz
  %.0.i57.i.i = phi double [ %i.vl, %bb.cz ], [ %i.vm, %bb.da ]
  %i.vn = load i32, ptr %i.fa, align 8, !tbaa !122 ; 7 uses
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr [8 x i8], ptr %i.fm, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 -8
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !21
  %i.vs = fmul double %.0.i57.i.i, %i.vr          ; 4 uses
  %i.vt = sitofp i32 %i.vn to double
  %i.vu = fmul double %i.vs, %i.vt                ; 3 uses
  %i.vv = icmp sgt i32 %i.vn, 2
  br i1 %i.vv, label %bb.db, label %bb.de

bb.db:                                            ; preds = %IDAWrmsNorm.exit58.i.i
  %i.vw = zext nneg i32 %i.vn to i64
  %i.vx = getelementptr [8 x i8], ptr %i.es, i64 %i.vw
  %i.vy = getelementptr i8, ptr %i.vx, i64 -8
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !73
  %i.wa = load ptr, ptr %i.go, align 8, !tbaa !65 ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.vz, double noundef 1.000000e+00, ptr noundef %i.wa, ptr noundef %i.wa) #13
  %i.wb = load ptr, ptr %i.go, align 8, !tbaa !65 ; 2 uses
  %i.wc = load ptr, ptr %i.et, align 8, !tbaa !63 ; 2 uses
  %i.wd = load i32, ptr %i.ev, align 8, !tbaa !116
  %.not.i59.i.i = icmp eq i32 %i.wd, 0
  br i1 %.not.i59.i.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.we = load ptr, ptr %i.ew, align 8, !tbaa !92
  %i.wf = call double @N_VWrmsNormMask(ptr noundef %i.wb, ptr noundef %i.wc, ptr noundef %i.we) #13
  br label %IDAWrmsNorm.exit61.i.i

bb.dd:                                            ; preds = %bb.db
  %i.wg = call double @N_VWrmsNorm(ptr noundef %i.wb, ptr noundef %i.wc) #13
  br label %IDAWrmsNorm.exit61.i.i

IDAWrmsNorm.exit61.i.i:                           ; preds = %bb.dd, %bb.dc
  %.0.i60.i.i = phi double [ %i.wf, %bb.dc ], [ %i.wg, %bb.dd ]
  %i.wh = load i32, ptr %i.fa, align 8, !tbaa !122 ; 4 uses
  %i.wi = sext i32 %i.wh to i64
  %i.wj = getelementptr [8 x i8], ptr %i.fm, i64 %i.wi
  %i.wk = getelementptr i8, ptr %i.wj, i64 -16
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !21
  %i.wm = fmul double %.0.i60.i.i, %i.wl
  %i.wn = add nsw i32 %i.wh, -1                   ; 2 uses
  %i.wo = sitofp i32 %i.wn to double
  %i.wp = fmul double %i.wm, %i.wo                ; 2 uses
  %i.wq = fcmp ogt double %i.vu, %i.wp
  %i.wr = select i1 %i.wq, double %i.vu, double %i.wp
  %i.ws = fcmp ugt double %i.wr, %i.va
  br i1 %i.ws, label %IDATestError.exit.i, label %.sink.split.i.i

bb.de:                                            ; preds = %IDAWrmsNorm.exit58.i.i
  %i.wt = fmul double %i.va, 5.000000e-01
  %i.wu = fcmp ugt double %i.vu, %i.wt
  br i1 %i.wu, label %IDATestError.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.wv = add nsw i32 %i.vn, -1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.df, %IDAWrmsNorm.exit61.i.i
  %i.ww = phi i32 [ %i.vn, %bb.df ], [ %i.wh, %IDAWrmsNorm.exit61.i.i ]
  %.sink.i.i = phi i32 [ %i.wv, %bb.df ], [ %i.wn, %IDAWrmsNorm.exit61.i.i ]
  store i32 %.sink.i.i, ptr %i.gn, align 8, !tbaa !155
  br label %IDATestError.exit.i

IDATestError.exit.i:                              ; preds = %.sink.split.i.i, %bb.de, %IDAWrmsNorm.exit61.i.i, %IDAWrmsNorm.exit.i.i
  %i.wx = phi i32 [ %i.wh, %IDAWrmsNorm.exit61.i.i ], [ %i.ww, %.sink.split.i.i ], [ %i.vn, %bb.de ], [ %i.ut, %IDAWrmsNorm.exit.i.i ] ; 11 uses
  %.2107.i = phi double [ %i.vs, %IDAWrmsNorm.exit61.i.i ], [ %i.vs, %.sink.split.i.i ], [ %i.vs, %bb.de ], [ %.0105.ph.i, %IDAWrmsNorm.exit.i.i ] ; 3 uses
  %i.wy = fmul double %.102.i158.i, %.0.i.i.i
  %i.wz = fcmp ogt double %i.wy, 1.000000e+00
  br i1 %i.wz, label %select.unfold.i, label %bb.dw

select.unfold.i:                                  ; preds = %IDATestError.exit.i, %IDANls.exit.thread.i
  %i.xa = phi i32 [ %.pre240.i, %IDANls.exit.thread.i ], [ %i.wx, %IDATestError.exit.i ] ; 9 uses
  %.1109.ph.i = phi double [ %.0108.ph.i, %IDANls.exit.thread.i ], [ %i.ux, %IDATestError.exit.i ] ; 2 uses
  %.1106.ph.i = phi double [ %.0105.ph.i, %IDANls.exit.thread.i ], [ %.2107.i, %IDATestError.exit.i ] ; 2 uses
  %.0.ph.i = phi i32 [ %.046.i.ph.i, %IDANls.exit.thread.i ], [ 7, %IDATestError.exit.i ] ; 5 uses
  store double %i.it, ptr %i.ez, align 8, !tbaa !76
  %.not32.i.i = icmp slt i32 %i.xa, 1
  br i1 %.not32.i.i, label %._crit_edge.i72.i, label %.lr.ph.i67.i

.lr.ph.i67.i:                                     ; preds = %select.unfold.i
  %i.xb = zext nneg i32 %i.xa to i64              ; 2 uses
  %xtraiter622 = and i64 %i.xb, 3                 ; 3 uses
  %i.xc = icmp ult i32 %i.xa, 4
  br i1 %i.xc, label %.epil.preheader621, label %.lr.ph.i67.i.new

.lr.ph.i67.i.new:                                 ; preds = %.lr.ph.i67.i
  %unroll_iter626 = and i64 %i.xb, 2147483644
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %.lr.ph.i67.i.new
  %indvars.iv.i69.i = phi i64 [ 1, %.lr.ph.i67.i.new ], [ %indvars.iv.next.i70.i.3, %bb.dg ] ; 5 uses
  %niter627 = phi i64 [ 0, %.lr.ph.i67.i.new ], [ %niter627.next.3, %bb.dg ]
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i69.i ; 2 uses
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !21
  %i.xf = load double, ptr %i.fd, align 8, !tbaa !115
  %i.xg = fsub double %i.xe, %i.xf
  %i.xh = getelementptr i8, ptr %i.xd, i64 -8
  store double %i.xg, ptr %i.xh, align 8, !tbaa !21
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i69.i ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !21
  %i.xl = load double, ptr %i.fd, align 8, !tbaa !115
  %i.xm = fsub double %i.xk, %i.xl
  store double %i.xm, ptr %i.xi, align 8, !tbaa !21
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i69.i ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 16
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !21
  %i.xq = load double, ptr %i.fd, align 8, !tbaa !115
  %i.xr = fsub double %i.xp, %i.xq
  %i.xs = getelementptr i8, ptr %i.xn, i64 8
  store double %i.xr, ptr %i.xs, align 8, !tbaa !21
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i69.i ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !21
  %i.xw = load double, ptr %i.fd, align 8, !tbaa !115
  %i.xx = fsub double %i.xv, %i.xw
  %i.xy = getelementptr i8, ptr %i.xt, i64 16
  store double %i.xx, ptr %i.xy, align 8, !tbaa !21
  %indvars.iv.next.i70.i.3 = add nuw nsw i64 %indvars.iv.i69.i, 4 ; 2 uses
  %niter627.next.3 = add nuw nsw i64 %niter627, 4 ; 2 uses
  %niter627.ncmp.3 = icmp eq i64 %niter627.next.3, %unroll_iter626
  br i1 %niter627.ncmp.3, label %._crit_edge.i72.i.loopexit.unr-lcssa, label %bb.dg

._crit_edge.i72.i.loopexit.unr-lcssa:             ; preds = %bb.dg
  %lcmp.mod624.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod624.not, label %._crit_edge.i72.i, label %.epil.preheader621

.epil.preheader621:                               ; preds = %._crit_edge.i72.i.loopexit.unr-lcssa, %.lr.ph.i67.i
  %indvars.iv.i69.i.epil.init = phi i64 [ 1, %.lr.ph.i67.i ], [ %indvars.iv.next.i70.i.3, %._crit_edge.i72.i.loopexit.unr-lcssa ]
  %lcmp.mod625 = icmp ne i64 %xtraiter622, 0
  call void @llvm.assume(i1 %lcmp.mod625)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %.epil.preheader621
  %indvars.iv.i69.i.epil = phi i64 [ %indvars.iv.i69.i.epil.init, %.epil.preheader621 ], [ %indvars.iv.next.i70.i.epil, %bb.dh ] ; 2 uses
  %epil.iter623 = phi i64 [ 0, %.epil.preheader621 ], [ %epil.iter623.next, %bb.dh ]
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i69.i.epil ; 2 uses
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !21
  %i.yb = load double, ptr %i.fd, align 8, !tbaa !115
  %i.yc = fsub double %i.ya, %i.yb
  %i.yd = getelementptr i8, ptr %i.xz, i64 -8
  store double %i.yc, ptr %i.yd, align 8, !tbaa !21
  %indvars.iv.next.i70.i.epil = add nuw nsw i64 %indvars.iv.i69.i.epil, 1
  %epil.iter623.next = add i64 %epil.iter623, 1   ; 2 uses
  %epil.iter623.cmp.not = icmp eq i64 %epil.iter623.next, %xtraiter622
  br i1 %epil.iter623.cmp.not, label %._crit_edge.i72.i, label %bb.dh, !llvm.loop !156

._crit_edge.i72.i:                                ; preds = %._crit_edge.i72.i.loopexit.unr-lcssa, %bb.dh, %select.unfold.i
  %i.ye = load i32, ptr %i.fh, align 8, !tbaa !130 ; 5 uses
  %.not30.i.i = icmp sgt i32 %i.ye, %i.xa
  br i1 %.not30.i.i, label %IDARestore.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i72.i
  %i.yf = sext i32 %i.ye to i64                   ; 11 uses
  %i.yg = add i32 %i.xa, 1                        ; 2 uses
  %i.yh = sub i32 %i.xa, %i.ye
  %i.yi = zext i32 %i.yh to i64
  %i.yj = add nuw nsw i64 %i.yi, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.xa, %i.ye
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i.i
  %i.yk = shl nsw i64 %i.yf, 3
  %i.yl = add nsw i64 %i.yk, -961
  %diff.check = icmp ult i64 %i.yl, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.yj, 8589934590              ; 3 uses
  %i.ym = add nsw i64 %n.vec, %i.yf
  %invariant.gep676 = getelementptr [8 x i8], ptr %i.fk, i64 %i.yf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep677 = getelementptr [8 x i8], ptr %invariant.gep676, i64 %index
  %wide.load = load <2 x double>, ptr %gep677, align 8, !tbaa !21
  %i.yn = fdiv <2 x double> splat (double 1.000000e+00), %wide.load
  %i.yo = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %index
  store <2 x double> %i.yn, ptr %i.yo, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.yp = icmp eq i64 %index.next, %n.vec
  br i1 %i.yp, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yj, %n.vec
  br i1 %cmp.n, label %.loopexit569, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.i.i, %middle.block
  %indvars.iv36.i.i.ph = phi i64 [ %i.yf, %vector.memcheck ], [ %i.yf, %.preheader.i.i ], [ %i.ym, %middle.block ] ; 3 uses
  %i.yq = add i32 %i.xa, 1
  %i.yr = trunc i64 %indvars.iv36.i.i.ph to i32   ; 2 uses
  %i.ys = sub i32 %i.yq, %i.yr
  %i.yt = sub i32 %i.xa, %i.yr
  %xtraiter628 = and i32 %i.ys, 3                 ; 2 uses
  %lcmp.mod629.not = icmp eq i32 %xtraiter628, 0
  br i1 %lcmp.mod629.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv36.i.i.prol = phi i64 [ %indvars.iv.next37.i.i.prol, %scalar.ph.prol ], [ %indvars.iv36.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter630 = phi i32 [ %prol.iter630.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.yu = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv36.i.i.prol
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !21
  %i.yw = fdiv double 1.000000e+00, %i.yv
  %i.yx = sub nsw i64 %indvars.iv36.i.i.prol, %i.yf
  %i.yy = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.yx
  store double %i.yw, ptr %i.yy, align 8, !tbaa !21
  %indvars.iv.next37.i.i.prol = add nsw i64 %indvars.iv36.i.i.prol, 1 ; 2 uses
  %prol.iter630.next = add i32 %prol.iter630, 1   ; 2 uses
  %prol.iter630.cmp.not = icmp eq i32 %prol.iter630.next, %xtraiter628
  br i1 %prol.iter630.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !158

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv36.i.i.unr = phi i64 [ %indvars.iv36.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next37.i.i.prol, %scalar.ph.prol ]
  %i.yz = icmp ult i32 %i.yt, 3
  br i1 %i.yz, label %.loopexit569, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.3, %scalar.ph ], [ %indvars.iv36.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.za = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv36.i.i
  %i.zb = load double, ptr %i.za, align 8, !tbaa !21
  %i.zc = fdiv double 1.000000e+00, %i.zb
  %i.zd = sub nsw i64 %indvars.iv36.i.i, %i.yf
  %i.ze = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.zd
  store double %i.zc, ptr %i.ze, align 8, !tbaa !21
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %i.zf = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv.next37.i.i
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !21
  %i.zh = fdiv double 1.000000e+00, %i.zg
  %i.zi = sub nsw i64 %indvars.iv.next37.i.i, %i.yf
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.zi
  store double %i.zh, ptr %i.zj, align 8, !tbaa !21
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, 2 ; 2 uses
  %i.zk = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv.next37.i.i.1
  %i.zl = load double, ptr %i.zk, align 8, !tbaa !21
  %i.zm = fdiv double 1.000000e+00, %i.zl
  %i.zn = sub nsw i64 %indvars.iv.next37.i.i.1, %i.yf
  %i.zo = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.zn
  store double %i.zm, ptr %i.zo, align 8, !tbaa !21
  %indvars.iv.next37.i.i.2 = add nsw i64 %indvars.iv36.i.i, 3 ; 2 uses
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv.next37.i.i.2
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !21
  %i.zr = fdiv double 1.000000e+00, %i.zq
  %i.zs = sub nsw i64 %indvars.iv.next37.i.i.2, %i.yf
  %i.zt = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.zs
  store double %i.zr, ptr %i.zt, align 8, !tbaa !21
  %indvars.iv.next37.i.i.3 = add nsw i64 %indvars.iv36.i.i, 4 ; 2 uses
  %lftr.wideiv.i.i.3 = trunc i64 %indvars.iv.next37.i.i.3 to i32
  %exitcond39.not.i.i.3 = icmp eq i32 %i.yg, %lftr.wideiv.i.i.3
  br i1 %exitcond39.not.i.i.3, label %.loopexit569, label %scalar.ph, !llvm.loop !159

.loopexit569:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.zu = sub i32 %i.yg, %i.ye
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.yf ; 2 uses
  %i.zw = call i32 @N_VScaleVectorArray(i32 noundef %i.zu, ptr noundef nonnull %i.fq, ptr noundef nonnull %i.zv, ptr noundef nonnull %i.zv) #13 ; 0 uses
  br label %IDARestore.exit.i

IDARestore.exit.i:                                ; preds = %.loopexit569, %._crit_edge.i72.i
  store i32 1, ptr %i.fg, align 4, !tbaa !129
  %.not.i73.i = icmp eq i32 %.0.ph.i, 7
  br i1 %.not.i73.i, label %bb.do, label %bb.di

bb.di:                                            ; preds = %IDARestore.exit.i
  %i.zx = add nsw i32 %.0103.ph.i, 1              ; 2 uses
  %i.zy = load i64, ptr %i.gp, align 8, !tbaa !60
  %i.zz = add nsw i64 %i.zy, 1
  store i64 %i.zz, ptr %i.gp, align 8, !tbaa !60
  %i.aaa = icmp slt i32 %.0.ph.i, 0
  br i1 %i.aaa, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %switch.tableidx.i.i = add nsw i32 %.0.ph.i, 8
  %i.aab = icmp ult i32 %switch.tableidx.i.i, 3
  %spec.select.i76.i = select i1 %i.aab, i32 %.0.ph.i, i32 -17
  br label %.loopexit

bb.dk:                                            ; preds = %bb.di
  %i.aac = load i32, ptr %i.gq, align 8, !tbaa !160
  %i.aad = icmp eq i32 %i.zx, %i.aac
  br i1 %i.aad, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aae = load double, ptr %i.fd, align 8, !tbaa !115 ; 2 uses
  %i.aaf = call double @llvm.fabs.f64(double %i.aae) ; 2 uses
  %i.aag = load double, ptr %i.gj, align 8, !tbaa !118 ; 2 uses
  %i.aah = fmul double %i.aag, f0x3FF000010C6F7A0B
  %i.aai = fcmp ugt double %i.aaf, %i.aah
  br i1 %i.aai, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.aaj = icmp eq i32 %.0.ph.i, 1
  %..i74.i = select i1 %i.aaj, i32 -9, i32 -4
  br label %.loopexit

bb.dn:                                            ; preds = %bb.dl
  %i.aak = load double, ptr %i.gr, align 8, !tbaa !22 ; 2 uses
  %i.aal = fdiv double %i.aag, %i.aaf             ; 2 uses
  %i.aam = fcmp ogt double %i.aak, %i.aal
  %.93.i.i = select i1 %i.aam, double %i.aak, double %i.aal ; 3 uses
  store double %.93.i.i, ptr %i.gl, align 8, !tbaa !150
  %i.aan = fmul double %i.aae, %.93.i.i
  br label %bb.du

bb.do:                                            ; preds = %IDARestore.exit.i
  %i.aao = add nsw i32 %.0101.ph.i, 1             ; 3 uses
  %i.aap = load i64, ptr %i.gs, align 8, !tbaa !60
  %i.aaq = add nsw i64 %i.aap, 1
  store i64 %i.aaq, ptr %i.gs, align 8, !tbaa !60
  %i.aar = icmp eq i32 %.0101.ph.i, 0
  br i1 %i.aar, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.aas = load i32, ptr %i.fa, align 8, !tbaa !122
  %i.aat = load i32, ptr %i.gn, align 8, !tbaa !155 ; 3 uses
  %i.aau = icmp eq i32 %i.aas, %i.aat
  %i.aav = select i1 %i.aau, double %.1109.ph.i, double %.1106.ph.i
  store i32 %i.aat, ptr %i.fa, align 8, !tbaa !122
  %i.aaw = call double @llvm.fmuladd.f64(double %i.aav, double 2.000000e+00, double 1.000000e-04)
  %i.aax = add nsw i32 %i.aat, 1
  %i.aay = sitofp i32 %i.aax to double
end_hunk_0
begin_hunk_1_@IDASolve:bb.a
  %.0.i92.i = select i1 %i.adb, double %i.adc, double %i.acx
  store double %.0.i92.i, ptr %i.fd, align 8, !tbaa !115
  br label %bb.em

.thread148.i.i:                                   ; preds = %.thread.i.i
  %i.add = add nsw i32 %i.wx, 1                   ; 2 uses
  %i.ade = load i32, ptr %i.fh, align 8, !tbaa !130
  %i.adf = icmp sge i32 %i.add, %i.ade
  %i.adg = icmp eq i32 %i.acm, 1
  %or.cond.i77.i = select i1 %i.adf, i1 true, i1 %i.adg
  br i1 %or.cond.i77.i, label %.thread154.i.i, label %bb.eb

bb.eb:                                            ; preds = %.thread148.i.i
  %i.adh = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.adi = sext i32 %i.add to i64
  %i.adj = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.adi
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !73
  %i.adl = load ptr, ptr %i.gg, align 8, !tbaa !69
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.adh, double noundef -1.000000e+00, ptr noundef %i.adk, ptr noundef %i.adl) #13
  %i.adm = load ptr, ptr %i.gg, align 8, !tbaa !69 ; 2 uses
  %i.adn = load ptr, ptr %i.et, align 8, !tbaa !63 ; 2 uses
  %i.ado = load i32, ptr %i.ev, align 8, !tbaa !116
  %.not.i.i78.i = icmp eq i32 %i.ado, 0
  br i1 %.not.i.i78.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.adp = load ptr, ptr %i.ew, align 8, !tbaa !92
  %i.adq = call double @N_VWrmsNormMask(ptr noundef %i.adm, ptr noundef %i.adn, ptr noundef %i.adp) #13
  br label %IDAWrmsNorm.exit.i79.i

bb.ed:                                            ; preds = %bb.eb
  %i.adr = call double @N_VWrmsNorm(ptr noundef %i.adm, ptr noundef %i.adn) #13
  br label %IDAWrmsNorm.exit.i79.i

IDAWrmsNorm.exit.i79.i:                           ; preds = %bb.ed, %bb.ec
  %.0.i.i80.i = phi double [ %i.adq, %bb.ec ], [ %i.adr, %bb.ed ]
  %i.ads = load i32, ptr %i.fa, align 8, !tbaa !122 ; 6 uses
  %i.adt = add nsw i32 %i.ads, 2
  %i.adu = sitofp i32 %i.adt to double            ; 2 uses
  %i.adv = fdiv double %.0.i.i80.i, %i.adu        ; 2 uses
  %i.adw = add nsw i32 %i.ads, 1                  ; 3 uses
  %i.adx = sitofp i32 %i.adw to double
  %i.ady = fmul double %i.ux, %i.adx              ; 4 uses
  %i.adz = fmul double %i.adv, %i.adu             ; 4 uses
  %i.aea = icmp eq i32 %i.ads, 1
  br i1 %i.aea, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %IDAWrmsNorm.exit.i79.i
  %i.aeb = sitofp i32 %i.ads to double
  %i.aec = fmul double %.2107.i, %i.aeb
  %i.aed = fcmp olt double %i.ady, %i.adz
  %i.aee = select i1 %i.aed, double %i.ady, double %i.adz
  %i.aef = fcmp ugt double %i.aec, %i.aee
  br i1 %i.aef, label %.split.i.i, label %._crit_edge166.i.i

._crit_edge166.i.i:                               ; preds = %bb.ee
  %.pre167.i.i = add nsw i32 %i.ads, -1
  br label %bb.eh

.split.i.i:                                       ; preds = %bb.ee
  %i.aeg = fcmp ult double %i.adz, %i.ady
  br i1 %i.aeg, label %bb.eg, label %.thread154.i.i

bb.ef:                                            ; preds = %IDAWrmsNorm.exit.i79.i
  %i.aeh = fmul double %i.ady, 5.000000e-01
  %i.aei = fcmp ult double %i.adz, %i.aeh
  br i1 %i.aei, label %bb.eg, label %.thread154.i.i

bb.eg:                                            ; preds = %bb.ef, %.split.i.i
  store i32 %i.adw, ptr %i.fa, align 8, !tbaa !122
  br label %.thread154.i.i

bb.eh:                                            ; preds = %._crit_edge166.i.i, %bb.dy
  %.pre-phi.i81.i = phi i32 [ %.pre167.i.i, %._crit_edge166.i.i ], [ %i.aco, %bb.dy ] ; 2 uses
  store i32 %.pre-phi.i81.i, ptr %i.fa, align 8, !tbaa !122
  br label %.thread154.i.i

.thread154.i.i:                                   ; preds = %bb.eh, %bb.eg, %bb.ef, %.split.i.i, %.thread148.i.i, %.thread148.thread.i.i
  %i.aej = phi i32 [ %i.adw, %bb.eg ], [ %.pre-phi.i81.i, %bb.eh ], [ %i.wx, %.thread148.i.i ], [ %i.wx, %.thread148.thread.i.i ], [ 1, %bb.ef ], [ %i.ads, %.split.i.i ]
  %.0128.i.i = phi double [ %i.adv, %bb.eg ], [ %.2107.i, %bb.eh ], [ %i.ux, %.thread148.i.i ], [ %i.ux, %.thread148.thread.i.i ], [ %i.ux, %bb.ef ], [ %i.ux, %.split.i.i ]
  store double 1.000000e+00, ptr %i.gl, align 8, !tbaa !150
  %i.aek = call double @llvm.fmuladd.f64(double %.0128.i.i, double 2.000000e+00, double 1.000000e-04)
  %i.ael = add nsw i32 %i.aej, 1
  %i.aem = sitofp i32 %i.ael to double
  %i.aen = fdiv double -1.000000e+00, %i.aem
  %i.aeo = call double @pow(double noundef %i.aek, double noundef %i.aen) #13 ; 6 uses
  %i.aep = load double, ptr %i.gy, align 8, !tbaa !164
  %i.aeq = fcmp ult double %i.aeo, %i.aep
  br i1 %i.aeq, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.thread154.i.i
  %i.aer = load double, ptr %i.gz, align 8, !tbaa !165 ; 2 uses
  %i.aes = fcmp olt double %i.aeo, %i.aer
  %.146.i.i = select i1 %i.aes, double %i.aeo, double %i.aer ; 2 uses
  %i.aet = load double, ptr %i.fd, align 8, !tbaa !115 ; 2 uses
  %i.aeu = call double @llvm.fabs.f64(double %i.aet)
  %i.aev = fmul double %.146.i.i, %i.aeu
  %i.aew = load double, ptr %i.gx, align 8, !tbaa !117
  %i.aex = fmul double %i.aew, %i.aev             ; 2 uses
  %i.aey = fcmp olt double %i.aex, 1.000000e+00
  %i.aez = select i1 %i.aey, double 1.000000e+00, double %i.aex
  %i.afa = fdiv double %.146.i.i, %i.aez
  br label %.sink.split.i82.i

bb.ej:                                            ; preds = %.thread154.i.i
  %i.afb = load double, ptr %i.ha, align 8, !tbaa !166
  %i.afc = fcmp ugt double %i.aeo, %i.afb
  %.pre.i91.i = load double, ptr %i.fd, align 8, !tbaa !115 ; 3 uses
  br i1 %i.afc, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.afd = load double, ptr %i.gv, align 8, !tbaa !162 ; 2 uses
  %i.afe = fcmp olt double %i.aeo, %i.afd
  %.147.i.i = select i1 %i.afe, double %i.aeo, double %i.afd ; 2 uses
  %i.aff = load double, ptr %i.hb, align 8, !tbaa !167 ; 2 uses
  %i.afg = fcmp ogt double %.147.i.i, %i.aff
  %i.afh = select i1 %i.afg, double %.147.i.i, double %i.aff ; 2 uses
  %i.afi = load double, ptr %i.gj, align 8, !tbaa !118
  %i.afj = call double @llvm.fabs.f64(double %.pre.i91.i)
  %i.afk = fdiv double %i.afi, %i.afj             ; 2 uses
  %i.afl = fcmp ogt double %i.afh, %i.afk
  %i.afm = select i1 %i.afl, double %i.afh, double %i.afk
  br label %.sink.split.i82.i

.sink.split.i82.i:                                ; preds = %bb.ek, %bb.ei
  %.sink.i83.i = phi double [ %i.afm, %bb.ek ], [ %i.afa, %bb.ei ] ; 2 uses
  %.ph.i.i = phi double [ %.pre.i91.i, %bb.ek ], [ %i.aet, %bb.ei ]
  store double %.sink.i83.i, ptr %i.gl, align 8, !tbaa !150
  %i.afn = fmul double %.sink.i83.i, %.ph.i.i
  br label %bb.el

bb.el:                                            ; preds = %.sink.split.i82.i, %bb.ej
  %i.afo = phi double [ %.pre.i91.i, %bb.ej ], [ %i.afn, %.sink.split.i82.i ]
  store double %i.afo, ptr %i.fd, align 8, !tbaa !115
  %.pre163.i.i = load i32, ptr %i.fb, align 4, !tbaa !78
  %.pre164.i.i = load i32, ptr %i.gw, align 8, !tbaa !72
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ea, %bb.dz
  %i.afp = phi i32 [ %i.acr, %bb.dz ], [ %i.acr, %bb.ea ], [ %.pre164.i.i, %bb.el ]
  %i.afq = phi i32 [ %i.wx, %bb.dz ], [ %i.wx, %bb.ea ], [ %.pre163.i.i, %bb.el ] ; 3 uses
  %i.afr = icmp slt i32 %i.afq, %i.afp
  br i1 %i.afr, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.afs = load ptr, ptr %i.fz, align 8, !tbaa !64
  %i.aft = sext i32 %i.afq to i64
  %i.afu = getelementptr [8 x i8], ptr %0, i64 %i.aft
  %i.afv = getelementptr i8, ptr %i.afu, i64 104
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !73
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.afs, ptr noundef %i.afw) #13
  %.pre165.i.i = load i32, ptr %i.fb, align 4, !tbaa !78
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.afx = phi i32 [ %.pre165.i.i, %bb.en ], [ %i.afq, %bb.em ] ; 3 uses
  %i.afy = load ptr, ptr %i.fz, align 8, !tbaa !64
  store ptr %i.afy, ptr %i.hc, align 8, !tbaa !73
  %i.afz = sext i32 %i.afx to i64                 ; 4 uses
  %i.aga = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.afz
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !73
  store ptr %i.agb, ptr %i.hd, align 8, !tbaa !73
  %.not160.i.i = icmp slt i32 %i.afx, 1
  %.pre168.i.i = add i32 %i.afx, 1                ; 3 uses
  br i1 %.not160.i.i, label %.loopexit298, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.eo
  %wide.trip.count.i85.i = zext i32 %.pre168.i.i to i64
  %i.agc = add nsw i64 %wide.trip.count.i85.i, -1 ; 3 uses
  %xtraiter631 = and i64 %i.agc, 1
  %i.agd = icmp eq i32 %.pre168.i.i, 2
  br i1 %i.agd, label %.lr.ph.i86.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter635 = and i64 %i.agc, -2
  br label %.lr.ph.i86.i

.lr.ph.i86.i:                                     ; preds = %.lr.ph.i86.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i87.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i88.i.1, %.lr.ph.i86.i ] ; 5 uses
  %niter636 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter636.next.1, %.lr.ph.i86.i ]
  %i.age = sub nsw i64 %i.afz, %indvars.iv.i87.i
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.age ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !73
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i87.i
  store ptr %i.agh, ptr %i.agi, align 8, !tbaa !73
  %i.agj = load ptr, ptr %i.agf, align 8, !tbaa !73
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i87.i
  store ptr %i.agj, ptr %i.agk, align 8, !tbaa !73
  %indvars.iv.next.i88.i = add nuw nsw i64 %indvars.iv.i87.i, 1 ; 3 uses
  %i.agl = sub nsw i64 %i.afz, %indvars.iv.next.i88.i
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.agl ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !73
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next.i88.i
  store ptr %i.ago, ptr %i.agp, align 8, !tbaa !73
  %i.agq = load ptr, ptr %i.agm, align 8, !tbaa !73
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.next.i88.i
  store ptr %i.agq, ptr %i.agr, align 8, !tbaa !73
  %indvars.iv.next.i88.i.1 = add nuw nsw i64 %indvars.iv.i87.i, 2 ; 2 uses
  %niter636.next.1 = add nuw nsw i64 %niter636, 2 ; 2 uses
  %niter636.ncmp.1 = icmp eq i64 %niter636.next.1, %unroll_iter635
  br i1 %niter636.ncmp.1, label %.loopexit298.loopexit.unr-lcssa, label %.lr.ph.i86.i

.loopexit:                                        ; preds = %bb.ds, %bb.cq, %bb.cr, %bb.dm, %bb.dj
  %.045.i.ph = phi i32 [ -11, %bb.cq ], [ %spec.select.i76.i, %bb.dj ], [ %..i74.i, %bb.dm ], [ -11, %bb.cr ], [ -3, %bb.ds ]
  %i.ags = call fastcc i32 @IDAHandleFailure(ptr noundef %0, i32 noundef %.045.i.ph)
  %i.agt = load double, ptr %i.ez, align 8, !tbaa !76 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.agt, ptr %i.agu, align 8, !tbaa !127
  store double %i.agt, ptr %2, align 8, !tbaa !21
  %i.agv = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.agt, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %IDAStopTest2.exit.thread

.loopexit298.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i86.i
  %lcmp.mod633.not = icmp eq i64 %xtraiter631, 0
  br i1 %lcmp.mod633.not, label %.loopexit298, label %.lr.ph.i86.i.epil.preheader

.lr.ph.i86.i.epil.preheader:                      ; preds = %.loopexit298.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i87.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i88.i.1, %.loopexit298.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod634 = trunc i64 %i.agc to i1
  call void @llvm.assume(i1 %lcmp.mod634)
  %i.agw = sub nsw i64 %i.afz, %indvars.iv.i87.i.epil.init
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.agw ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !73
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i87.i.epil.init
  store ptr %i.agz, ptr %i.aha, align 8, !tbaa !73
  %i.ahb = load ptr, ptr %i.agx, align 8, !tbaa !73
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i87.i.epil.init
  store ptr %i.ahb, ptr %i.ahc, align 8, !tbaa !73
  br label %.loopexit298

.loopexit298:                                     ; preds = %.lr.ph.i86.i.epil.preheader, %.loopexit298.loopexit.unr-lcssa, %bb.eo
  %i.ahd = call i32 @N_VLinearSumVectorArray(i32 noundef %.pre168.i.i, double noundef 1.000000e+00, ptr noundef nonnull %i.hd, double noundef 1.000000e+00, ptr noundef nonnull %i.hc, ptr noundef nonnull %i.hd) #13 ; 0 uses
  %i.ahe = load ptr, ptr %i.fz, align 8, !tbaa !64 ; 2 uses
  call void @N_VScale(double noundef %.102.i158.i, ptr noundef %i.ahe, ptr noundef %i.ahe) #13
  %i.ahf = add nuw nsw i64 %.0253, 1
  %i.ahg = load i32, ptr %i.fo, align 8, !tbaa !119
  %.not283 = icmp eq i32 %i.ahg, 0
  br i1 %.not283, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %.loopexit298
  %i.ahh = load double, ptr %i.ex, align 8, !tbaa !18
  %i.ahi = fmul double %i.ahh, 1.000000e+02
  %i.ahj = load double, ptr %i.ez, align 8, !tbaa !76 ; 2 uses
  %i.ahk = call double @llvm.fabs.f64(double %i.ahj)
  %i.ahl = load double, ptr %i.fd, align 8, !tbaa !115
  %i.ahm = call double @llvm.fabs.f64(double %i.ahl)
  %i.ahn = fadd double %i.ahk, %i.ahm
  %i.aho = fmul double %i.ahi, %i.ahn
  %i.ahp = load double, ptr %i.fp, align 8, !tbaa !120 ; 2 uses
  %i.ahq = fsub double %i.ahj, %i.ahp
  %i.ahr = call double @llvm.fabs.f64(double %i.ahq)
  %i.ahs = fcmp ugt double %i.ahr, %i.aho
  br i1 %i.ahs, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store double %i.ahp, ptr %i.ez, align 8, !tbaa !76
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq, %.loopexit298
  %i.aht = load i32, ptr %i.he, align 8, !tbaa !84
  %i.ahu = icmp sgt i32 %i.aht, 0
  br i1 %i.ahu, label %bb.es, label %.thread

bb.es:                                            ; preds = %bb.er
  %i.ahv = call fastcc i32 @IDARcheck3(ptr noundef %0, double noundef %1, i32 noundef %5)
  switch i32 %i.ahv, label %bb.ev [
    i32 1, label %bb.et
    i32 -10, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 1, ptr %i.ahw, align 8, !tbaa !81
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !126 ; 2 uses
  store double %i.ahy, ptr %2, align 8, !tbaa !21
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.ahy, ptr %i.ahz, align 8, !tbaa !127
  br label %IDAStopTest2.exit.thread

bb.eu:                                            ; preds = %bb.es
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !126
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 1446, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, double noundef %i.aib)
  br label %IDAStopTest2.exit.thread

bb.ev:                                            ; preds = %bb.es
  %i.aic = load i64, ptr %i.m, align 8, !tbaa !113
  %i.aid = icmp eq i64 %i.aic, 1
  br i1 %i.aid, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.ev
  %i.aie = load i32, ptr %i.he, align 8, !tbaa !84 ; 2 uses
  %i.aif = icmp sgt i32 %i.aie, 0
  br i1 %i.aif, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.aig = load ptr, ptr %i.hf, align 8, !tbaa !106
  %wide.trip.count = zext nneg i32 %i.aie to i64
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ex
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph, %bb.ew
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ew ] ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !26
  %.not284 = icmp eq i32 %i.aii, 0
  br i1 %.not284, label %bb.ey, label %bb.ew

bb.ey:                                            ; preds = %bb.ex
  %i.aij = load i32, ptr %i.hg, align 8, !tbaa !85
  %i.aik = icmp sgt i32 %i.aij, 0
  br i1 %i.aik, label %bb.ez, label %.thread

bb.ez:                                            ; preds = %bb.ey
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 1470, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %.thread

.thread:                                          ; preds = %bb.ew, %.preheader, %bb.ev, %bb.ez, %bb.ey, %bb.er
  %i.ail = load i32, ptr %i.fo, align 8, !tbaa !119
  %.not.i288 = icmp eq i32 %i.ail, 0
  br i1 %.not.i288, label %bb.ff, label %bb.fa

bb.fa:                                            ; preds = %.thread
  %i.aim = load double, ptr %i.ex, align 8, !tbaa !18 ; 2 uses
  %i.ain = fmul double %i.aim, 1.000000e+02
  %i.aio = load double, ptr %i.ez, align 8, !tbaa !76 ; 4 uses
  %i.aip = call double @llvm.fabs.f64(double %i.aio)
  %i.aiq = load double, ptr %i.fd, align 8, !tbaa !115 ; 4 uses
  %i.air = call double @llvm.fabs.f64(double %i.aiq)
  %i.ais = fadd double %i.aip, %i.air
  %i.ait = fmul double %i.ain, %i.ais             ; 2 uses
  %i.aiu = load double, ptr %i.fp, align 8, !tbaa !120 ; 5 uses
  %i.aiv = fsub double %i.aio, %i.aiu
  %i.aiw = call double @llvm.fabs.f64(double %i.aiv)
  %i.aix = fcmp ugt double %i.aiw, %i.ait
  br i1 %i.aix, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aiy = fsub double %1, %i.aiu                 ; 2 uses
  %i.aiz = fmul double %i.aiq, %i.aiy
  %i.aja = fcmp ult double %i.aiz, 0.000000e+00
  %i.ajb = call double @llvm.fabs.f64(double %i.aiy)
  %i.ajc = fcmp ugt double %i.ajb, %i.ait
  %or.cond.i = and i1 %i.aja, %i.ajc
  br i1 %or.cond.i, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ajd = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.aiu, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.aje = load double, ptr %i.fp, align 8, !tbaa !120 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.aje, ptr %i.ajf, align 8, !tbaa !127
  store double %i.aje, ptr %2, align 8, !tbaa !21
  store i32 0, ptr %i.fo, align 8, !tbaa !119
  br label %IDAStopTest2.exit.thread

bb.fd:                                            ; preds = %bb.fa
  %i.ajg = fadd double %i.aio, %i.aiq
  %i.ajh = fsub double %i.ajg, %i.aiu
  %i.aji = fmul double %i.aiq, %i.ajh
  %i.ajj = fcmp ogt double %i.aji, 0.000000e+00
  br i1 %i.ajj, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ajk = fsub double %i.aiu, %i.aio
  %i.ajl = call double @llvm.fmuladd.f64(double %i.aim, double -4.000000e+00, double 1.000000e+00)
  %i.ajm = fmul double %i.ajl, %i.ajk
  store double %i.ajm, ptr %i.fd, align 8, !tbaa !115
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fb, %.thread
  switch i32 %5, label %IDAStopTest2.exit.thread [
    i32 1, label %bb.fg
    i32 2, label %bb.fi
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.ajn = load double, ptr %i.ez, align 8, !tbaa !76
  %i.ajo = fsub double %i.ajn, %1
  %i.ajp = load double, ptr %i.fd, align 8, !tbaa !115
  %i.ajq = fmul double %i.ajo, %i.ajp
  %i.ajr = fcmp ult double %i.ajq, 0.000000e+00
  br i1 %i.ajr, label %IDAStopTest2.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ajs = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %1, ptr %i.ajt, align 8, !tbaa !127
  store double %1, ptr %2, align 8, !tbaa !21
  br label %IDAStopTest2.exit.thread

bb.fi:                                            ; preds = %bb.ff
  %i.aju = load double, ptr %i.ez, align 8, !tbaa !76 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 680
end_hunk_1
begin_hunk_2_@IDARcheck3:bb.a
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !173
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store double %i.ny, ptr %i.nz, align 8, !tbaa !126
  %i.oa = icmp sgt i32 %i.nr, 0
  br i1 %i.oa, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %._crit_edge
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !103 ; 7 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !101 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.nr to i64   ; 5 uses
  %min.iters.check226 = icmp ult i32 %i.nr, 8
  %i.of = ptrtoaddr ptr %i.oe to i64
  %i.og = ptrtoaddr ptr %i.oc to i64
  %i.oh = sub i64 %i.og, %i.of
  %diff.check224 = icmp ugt i64 %i.oh, -32
  %or.cond250 = select i1 %min.iters.check226, i1 true, i1 %diff.check224
  br i1 %or.cond250, label %scalar.ph225.preheader, label %vector.ph227

vector.ph227:                                     ; preds = %.lr.ph78
  %n.vec228 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body229

vector.body229:                                   ; preds = %vector.body229, %vector.ph227
  %index230 = phi i64 [ 0, %vector.ph227 ], [ %index.next233, %vector.body229 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %index230 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load231 = load <2 x double>, ptr %i.oi, align 8, !tbaa !21
  %wide.load232 = load <2 x double>, ptr %i.oj, align 8, !tbaa !21
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %index230 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <2 x double> %wide.load231, ptr %i.ok, align 8, !tbaa !21
  store <2 x double> %wide.load232, ptr %i.ol, align 8, !tbaa !21
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.om = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.om, label %middle.block234, label %vector.body229, !llvm.loop !187

middle.block234:                                  ; preds = %vector.body229
  %cmp.n235 = icmp eq i64 %n.vec228, %wide.trip.count
  br i1 %cmp.n235, label %._crit_edge79, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %.lr.ph78, %middle.block234
  %indvars.iv101.ph = phi i64 [ 0, %.lr.ph78 ], [ %n.vec228, %middle.block234 ] ; 3 uses
  %xtraiter283 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %scalar.ph225.prol.loopexit, label %scalar.ph225.prol

scalar.ph225.prol:                                ; preds = %scalar.ph225.preheader, %scalar.ph225.prol
  %indvars.iv101.prol = phi i64 [ %indvars.iv.next102.prol, %scalar.ph225.prol ], [ %indvars.iv101.ph, %scalar.ph225.preheader ] ; 3 uses
  %prol.iter285 = phi i64 [ %prol.iter285.next, %scalar.ph225.prol ], [ 0, %scalar.ph225.preheader ]
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv101.prol
  %i.oo = load double, ptr %i.on, align 8, !tbaa !21
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv101.prol
  store double %i.oo, ptr %i.op, align 8, !tbaa !21
  %indvars.iv.next102.prol = add nuw nsw i64 %indvars.iv101.prol, 1 ; 2 uses
  %prol.iter285.next = add i64 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i64 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %scalar.ph225.prol.loopexit, label %scalar.ph225.prol, !llvm.loop !188

scalar.ph225.prol.loopexit:                       ; preds = %scalar.ph225.prol, %scalar.ph225.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph225.preheader ], [ %indvars.iv.next102.prol, %scalar.ph225.prol ]
  %i.oq = sub nsw i64 %indvars.iv101.ph, %wide.trip.count
  %i.or = icmp ugt i64 %i.oq, -4
  br i1 %i.or, label %._crit_edge79, label %scalar.ph225

scalar.ph225:                                     ; preds = %scalar.ph225.prol.loopexit, %scalar.ph225
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %scalar.ph225 ], [ %indvars.iv101.unr, %scalar.ph225.prol.loopexit ] ; 6 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv101
  %i.ot = load double, ptr %i.os, align 8, !tbaa !21
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv101
  store double %i.ot, ptr %i.ou, align 8, !tbaa !21
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next102
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !21
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.next102
  store double %i.ow, ptr %i.ox, align 8, !tbaa !21
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next102.1
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !21
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.next102.1
  store double %i.oz, ptr %i.pa, align 8, !tbaa !21
  %indvars.iv.next102.2 = add nuw nsw i64 %indvars.iv101, 3 ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next102.2
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !21
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.next102.2
  store double %i.pc, ptr %i.pd, align 8, !tbaa !21
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next102.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge79, label %scalar.ph225, !llvm.loop !189

._crit_edge79:                                    ; preds = %scalar.ph225.prol.loopexit, %scalar.ph225, %middle.block234, %._crit_edge
  br i1 %i.nf, label %IDARootfind.exit.thread, label %bb.av

bb.av:                                            ; preds = %._crit_edge.thread.thread132, %._crit_edge.thread, %._crit_edge79
  %i.pe = phi ptr [ %i.nu, %._crit_edge.thread ], [ %i.nx, %._crit_edge79 ], [ %i.lp, %._crit_edge.thread.thread132 ]
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !173
  %i.pg = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.ph = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.pi = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.pf, ptr noundef %i.pg, ptr noundef %i.ph) ; 0 uses
  br label %IDARootfind.exit.thread

IDARootfind.exit.thread:                          ; preds = %bb.x, %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge79, %bb.d, %bb.av
  %.051 = phi i32 [ 1, %bb.av ], [ -10, %bb.d ], [ 0, %._crit_edge79 ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge.thread.thread ], [ -10, %bb.x ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @IDAGetSolution(ptr noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3435, ptr noundef nonnull @__func__.IDAGetSolution, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !18
  %i.d = fmul double %i.c, 1.000000e+02
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load double, ptr %i.e, align 8, !tbaa !76 ; 4 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load double, ptr %i.h, align 8, !tbaa !115 ; 3 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fadd double %i.g, %i.j
  %i.l = fmul double %i.d, %i.k                   ; 2 uses
  %i.m = fcmp olt double %i.i, 0.000000e+00
  %i.n = fneg double %i.l
  %.060 = select i1 %i.m, double %i.n, double %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load double, ptr %i.o, align 8, !tbaa !79
  %i.q = fsub double %i.f, %i.p                   ; 2 uses
  %i.r = fsub double %i.q, %.060
  %i.s = fsub double %1, %i.r
  %i.t = fmul double %i.i, %i.s
  %i.u = fcmp olt double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3448, ptr noundef nonnull @__func__.IDAGetSolution, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, double noundef %1, double noundef %i.q, double noundef %i.f)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1) ; 5 uses
  %i.x = fsub double %1, %i.f                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !21 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 5 uses
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !21
  %.not65 = icmp slt i32 %spec.store.select, 1
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ab = fdiv double %i.x, %i.z                  ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 1256      ; 3 uses
  %i.ad = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %xtraiter = and i64 %i.ad, 1
  %i.ae = icmp ult i32 %i.w, 2
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ad, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %i.af = phi double [ %i.z, %.lr.ph.new ], [ %i.au, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.05768 = phi double [ %i.ab, %.lr.ph.new ], [ %i.av, %bb.f ] ; 2 uses
  %.05867 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.aq, %bb.f ]
  %.05966 = phi double [ 1.000000e+00, %.lr.ph.new ], [ %i.ar, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.ag = fdiv double %.05966, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %.05867, double %.05768, double %i.ag) ; 2 uses
  %i.ai = fmul double %.05966, %.05768            ; 3 uses
  %i.aj = fadd double %i.x, %i.af
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.al = load double, ptr %i.ak, align 8, !tbaa !21 ; 3 uses
  %i.am = fdiv double %i.aj, %i.al                ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  store double %i.ai, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv
  store double %i.ah, ptr %i.ao, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ap = fdiv double %i.ai, %i.al
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.am, double %i.ap) ; 3 uses
  %i.ar = fmul double %i.ai, %i.am                ; 3 uses
  %i.as = fadd double %i.x, %i.al
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.au = load double, ptr %i.at, align 8, !tbaa !21 ; 3 uses
  %i.av = fdiv double %i.as, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store double %i.ar, ptr %i.aw, align 8, !tbaa !21
  %i.ax = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store double %i.aq, ptr %i.ax, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi double [ %i.z, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05768.epil.init = phi double [ %i.ab, %.lr.ph ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05867.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %.05966.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %spec.store.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.ay = fdiv double %.05966.epil.init, %.epil.init
  %i.az = tail call double @llvm.fmuladd.f64(double %.05867.epil.init, double %.05768.epil.init, double %i.ay)
  %i.ba = fmul double %.05966.epil.init, %.05768.epil.init
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  store double %i.ba, ptr %i.bb, align 8, !tbaa !21
  %i.bc = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  store double %i.az, ptr %i.bc, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %.pre-phi = add i32 %spec.store.select, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = tail call i32 @N_VLinearCombination(i32 noundef %.pre-phi, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.bd, ptr noundef %2) #13
  %.not63 = icmp eq i32 %i.be, 0
  br i1 %.not63, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bh = tail call i32 @N_VLinearCombination(i32 noundef %spec.store.select, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg, ptr noundef %3) #13
  %.not64 = icmp eq i32 %i.bh, 0
  %. = select i1 %.not64, i32 0, i32 -28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge, %bb.d, %bb.b
  %.061 = phi i32 [ -20, %bb.b ], [ -26, %bb.d ], [ -28, %._crit_edge ], [ %., %bb.g ]
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 100) i32 @IDAStopTest1(ptr noundef nonnull %0, double noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !76 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !120 ; 6 uses
  %i.g = fsub double %i.d, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !115 ; 5 uses
  %i.j = fmul double %i.g, %i.i
  %i.k = fcmp ogt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2190, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, double noundef %i.f, double noundef %i.d)
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !18 ; 2 uses
  %i.n = fmul double %i.m, 1.000000e+02
  %i.o = tail call double @llvm.fabs.f64(double %i.d)
  %i.p = tail call double @llvm.fabs.f64(double %i.i)
  %i.q = fadd double %i.o, %i.p
  %i.r = fmul double %i.q, %i.n                   ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.g)
  %i.t = fcmp ugt double %i.s, %i.r
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = fsub double %1, %i.f                     ; 2 uses
  %i.v = fmul double %i.u, %i.i
  %i.w = fcmp ult double %i.v, 0.000000e+00
  %i.x = tail call double @llvm.fabs.f64(double %i.u)
  %i.y = fcmp ugt double %i.x, %i.r
  %or.cond = and i1 %i.w, %i.y
  br i1 %or.cond, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not71 = icmp eq i32 %i.z, 0
  %i.aa = load double, ptr %i.e, align 8, !tbaa !120 ; 3 uses
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load double, ptr %i.c, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2208, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, double noundef %i.aa, double noundef %i.ab)
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.aa, ptr %i.ac, align 8, !tbaa !127
  store double %i.aa, ptr %2, align 8, !tbaa !21
  store i32 0, ptr %i.a, align 8, !tbaa !119
  br label %bb.t

bb.i:                                             ; preds = %bb.d
  %i.ad = fadd double %i.d, %i.i
  %i.ae = fsub double %i.ad, %i.f
  %i.af = fmul double %i.i, %i.ae
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = fsub double %i.f, %i.d
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.m, double -4.000000e+00, double 1.000000e+00)
  %i.aj = fmul double %i.ah, %i.ai
  store double %i.aj, ptr %i.h, align 8, !tbaa !115
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.a
  switch i32 %5, label %bb.t [
    i32 1, label %bb.l
    i32 2, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !127
  %i.am = fcmp oeq double %1, %i.al
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %1, ptr %i.ak, align 8, !tbaa !127
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ao = load double, ptr %i.an, align 8, !tbaa !76
  %i.ap = fsub double %i.ao, %1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !115
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fcmp ult double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2242, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, double noundef %1)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  store double %1, ptr %i.ak, align 8, !tbaa !127
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !127
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !115
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = fcmp ogt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.aw, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.bf = load double, ptr %i.av, align 8, !tbaa !76 ; 2 uses
  store double %i.bf, ptr %i.ax, align 8, !tbaa !127
  store double %i.bf, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.r, %bb.n, %bb.s, %bb.q, %bb.p, %bb.m, %bb.h, %bb.g, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.g ], [ 1, %bb.h ], [ 99, %bb.r ], [ 0, %bb.m ], [ -22, %bb.p ], [ 0, %bb.q ], [ 99, %bb.n ], [ 0, %bb.s ], [ -22, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -99, -2) i32 @IDAHandleFailure(ptr nofree noundef nonnull readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.m [
    i32 -3, label %bb.b
    i32 -4, label %bb.c
    i32 -6, label %bb.d
    i32 -7, label %bb.e
    i32 -9, label %bb.f
    i32 -8, label %bb.g
    i32 -11, label %bb.h
    i32 -20, label %bb.i
    i32 -9999, label %bb.j
    i32 -16, label %bb.k
    i32 -17, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load double, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load double, ptr %i.c, align 8, !tbaa !115
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 2365, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, double noundef %i.b, double noundef %i.d)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load double, ptr %i.e, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.h = load double, ptr %i.g, align 8, !tbaa !115
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 2370, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.f, double noundef %i.h)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load double, ptr %i.i, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 2375, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, double noundef %i.j)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.l = load double, ptr %i.k, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -7, i32 noundef 2380, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, double noundef %i.l)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.n = load double, ptr %i.m, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -9, i32 noundef 2385, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, double noundef %i.n)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.p = load double, ptr %i.o, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -8, i32 noundef 2390, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, double noundef %i.p)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.r = load double, ptr %i.q, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -11, i32 noundef 2395, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, double noundef %i.r)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 2400, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.t = load double, ptr %i.s, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 2404, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, double noundef %i.t)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.v = load double, ptr %i.u, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -16, i32 noundef 2409, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.46, double noundef %i.v)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.x = load double, ptr %i.w, align 8, !tbaa !76
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -17, i32 noundef 2413, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.47, double noundef %i.x)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -99, i32 noundef 2419, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.48)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -99, %bb.m ], [ -3, %bb.b ], [ -4, %bb.c ], [ -6, %bb.d ], [ -7, %bb.e ], [ -9, %bb.f ], [ -8, %bb.g ], [ -11, %bb.h ], [ -20, %bb.i ], [ -20, %bb.j ], [ -16, %bb.k ], [ -17, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @IDAGetDky(ptr noundef %0, double noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x double], align 16            ; 12 uses
  %i.b = alloca [6 x double], align 16            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1521, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -27, i32 noundef 1530, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78   ; 2 uses
  %i.h = icmp sgt i32 %2, %i.g
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -25, i32 noundef 1538, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.28)
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !18
  %i.k = fmul double %i.j, 1.000000e+02
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.m = load double, ptr %i.l, align 8, !tbaa !76 ; 4 uses
  %i.n = tail call double @llvm.fabs.f64(double %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.p = load double, ptr %i.o, align 8, !tbaa !115 ; 3 uses
  %i.q = tail call double @llvm.fabs.f64(double %i.p)
  %i.r = fadd double %i.n, %i.q
  %i.s = fmul double %i.k, %i.r                   ; 2 uses
  %i.t = fcmp olt double %i.p, 0.000000e+00
  %i.u = fneg double %i.s
  %.077 = select i1 %i.t, double %i.u, double %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.w = load double, ptr %i.v, align 8, !tbaa !79
  %i.x = fsub double %i.m, %i.w                   ; 2 uses
  %i.y = fsub double %i.x, %.077
  %i.z = fsub double %1, %i.y
  %i.aa = fmul double %i.p, %i.z
  %i.ab = fcmp olt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.i, label %.lr.ph95

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 1551, ptr noundef nonnull @__func__.IDAGetDky, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, double noundef %1, double noundef %i.x, double noundef %i.m)
  br label %bb.o

.lr.ph95:                                         ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !tbaa !21
  %i.ac = fsub double %1, %i.m                    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.ae = sub i32 %i.g, %2                        ; 4 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = add nuw i32 %2, 1
  %wide.trip.count = zext i32 %i.ag to i64
  %.not8387 = icmp slt i32 %i.ae, 1
  br label %bb.j

.loopexit:                                        ; preds = %bb.m, %.lr.ph92.preheader
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph95, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph95 ], [ %indvar.next, %.loopexit ] ; 14 uses
  %indvars.iv101 = phi i64 [ 1, %.lr.ph95 ], [ %indvars.iv.next102, %.loopexit ] ; 7 uses
  %4 = add nuw i64 %indvar, %i.af
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %indvars.iv101) ; 2 uses
  %5 = sub i64 %umax, %indvar
  %.neg = add nuw i64 %indvar, 1
  %6 = shl i64 %indvar, 3
  %scevgep108 = getelementptr i8, ptr %i.a, i64 %6
  %i.ah = shl nuw nsw i64 %indvar, 3
  %i.ai = add nuw nsw i64 %i.ah, 8                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ai
  %scevgep100 = getelementptr i8, ptr %i.a, i64 %i.ai
  %i.aj = trunc i64 %indvar to i32
  %i.ak = add i32 %i.ae, %i.aj
  %7 = trunc i64 %indvars.iv101 to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %7)
  %i.al = trunc i64 %indvar to i32
  %i.am = xor i32 %i.al, -1
  %i.an = add i32 %smax, %i.am
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = add nuw nsw i64 %i.ap, 8
  %i.ar = icmp eq i64 %indvar, 0
  br i1 %i.ar, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store double 1.000000e+00, ptr %i.a, align 16, !tbaa !21
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.as = add nsw i64 %indvar, -1                 ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !21
  %i.av = trunc nuw nsw i64 %indvar to i32
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fmul double %i.au, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.as
  %i.az = load double, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %i.ba = fdiv double %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvar
  store double %i.ba, ptr %i.bb, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.075 = phi double [ 0.000000e+00, %bb.k ], [ %i.az, %bb.l ] ; 2 uses
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.bc = add nuw nsw i64 %indvar, %i.af
  br i1 %.not8387, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bd = trunc nuw nsw i64 %indvar to i32
  %i.be = uitofp nneg i32 %i.bd to double         ; 3 uses
  %load_initial = load double, ptr %scevgep108, align 8 ; 2 uses
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %8 = add nsw i64 %indvars.iv101, -1             ; 2 uses
  %9 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %8
  %10 = load double, ptr %9, align 8, !tbaa !21
  %11 = fadd double %i.ac, %.075
  %12 = fmul double %11, %load_initial
  %13 = tail call double @llvm.fmuladd.f64(double %i.be, double %10, double %12)
  %14 = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %8
  %15 = load double, ptr %14, align 8, !tbaa !21  ; 2 uses
  %16 = fdiv double %13, %15                      ; 2 uses
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv101
  store double %16, ptr %17, align 8, !tbaa !21
  %indvars.iv.next98.prol = add nuw nsw i64 %indvars.iv101, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %store_forwarded.unr = phi double [ %load_initial, %.lr.ph ], [ %16, %.prol.loopexit.unr-lcssa ]
  %indvars.iv97.unr = phi i64 [ %indvars.iv101, %.lr.ph ], [ %indvars.iv.next98.prol, %.prol.loopexit.unr-lcssa ]
  %.17688.unr = phi double [ %.075, %.lr.ph ], [ %15, %.prol.loopexit.unr-lcssa ]
  %18 = icmp eq i64 %umax, %.neg
  br i1 %18, label %.lr.ph92.preheader, label %bb.n

.lr.ph92.preheader:                               ; preds = %bb.n, %.prol.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep100, i64 %i.aq, i1 false), !tbaa !21
  br label %.loopexit

bb.n:                                             ; preds = %.prol.loopexit, %bb.n
  %store_forwarded = phi double [ %i.bn, %bb.n ], [ %store_forwarded.unr, %.prol.loopexit ]
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.n ], [ %indvars.iv97.unr, %.prol.loopexit ] ; 6 uses
  %.17688 = phi double [ %i.bm, %bb.n ], [ %.17688.unr, %.prol.loopexit ]
  %19 = add nsw i64 %indvars.iv97, -1             ; 2 uses
  %20 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !21
  %22 = fadd double %i.ac, %.17688
  %23 = fmul double %22, %store_forwarded
  %24 = tail call double @llvm.fmuladd.f64(double %i.be, double %21, double %23)
  %25 = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %19
  %26 = load double, ptr %25, align 8, !tbaa !21  ; 2 uses
  %27 = fdiv double %24, %26                      ; 2 uses
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv97
  store double %27, ptr %28, align 8, !tbaa !21
  %i.bf = add nuw nsw i64 %indvars.iv97, 1        ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv97
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !21
  %i.bi = fadd double %i.ac, %26
  %i.bj = fmul double %i.bi, %27
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bh, double %i.bj)
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv97
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %i.bn = fdiv double %i.bk, %i.bm                ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bf
  store double %i.bn, ptr %i.bo, align 8, !tbaa !21
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 2
  %.not83.not.1 = icmp samesign ult i64 %i.bf, %i.bc
  br i1 %.not83.not.1, label %bb.n, label %.lr.ph92.preheader

._crit_edge:                                      ; preds = %.loopexit
  %i.bp = add i32 %i.ae, 1
  %i.bq = zext nneg i32 %2 to i64                 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  %i.bu = call i32 @N_VLinearCombination(i32 noundef %i.bp, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bt, ptr noundef nonnull %3) #13
  %.not82 = icmp eq i32 %i.bu, 0
  %. = select i1 %.not82, i32 0, i32 -28
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.i, %bb.g, %bb.d, %bb.b
  %.078 = phi i32 [ -20, %bb.b ], [ -27, %bb.d ], [ -25, %bb.g ], [ -26, %bb.i ], [ %., %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.078
}

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeY(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1637, ptr noundef nonnull @__func__.IDAComputeY, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !66
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 -20, 1) i32 @IDAComputeYp(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1662, ptr noundef nonnull @__func__.IDAComputeYp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.e = load double, ptr %i.d, align 8, !tbaa !128
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef %i.e, ptr noundef %1, ptr noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -20, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @IDAFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 13 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @IDAFreeVectors(ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 984 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !77
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 976 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !140
  %i.g = tail call i32 @SUNNonlinSolFree(ptr noundef %i.f) #13 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !77
  store ptr null, ptr %i.e, align 8, !tbaa !140
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %.not26 = icmp eq ptr %i.i, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  %i.l = load i32, ptr %i.k, align 8, !tbaa !84
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !101
  tail call void @free(ptr noundef %i.o) #13
  store ptr null, ptr %i.n, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102
  tail call void @free(ptr noundef %i.q) #13
  store ptr null, ptr %i.p, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !103
  tail call void @free(ptr noundef %i.s) #13
  store ptr null, ptr %i.r, align 8, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1080 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  tail call void @free(ptr noundef %i.u) #13
  store ptr null, ptr %i.t, align 8, !tbaa !104
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105
  tail call void @free(ptr noundef %i.w) #13
  store ptr null, ptr %i.v, align 8, !tbaa !105
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1168 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !106
  tail call void @free(ptr noundef %i.y) #13
  store ptr null, ptr %i.x, align 8, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = load ptr, ptr %0, align 8, !tbaa !190
  tail call void @free(ptr noundef %i.z) #13
  store ptr null, ptr %0, align 8, !tbaa !190
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare i32 @N_VConstrMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @idaNlsInit(ptr noundef) local_unnamed_addr #5

declare double @N_VWrmsNormMask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

declare void @SUNGlobalFallbackErrHandler(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #5

declare i32 @SUNLogger_QueueMsg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare i32 @SUNContext_GetLastError(ptr noundef) local_unnamed_addr #5

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #5

declare void @N_VAbs(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VScaleVectorArray(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolGetNumIters(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @SUNNonlinSolGetNumConvFails(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @N_VLinearSumVectorArray(i32 noundef, double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"IDAMemRec", !10, i64 0, !12, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !12, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !5, i64 68, !11, i64 72, !11, i64 80, !5, i64 88, !6, i64 96, !6, i64 144, !6, i64 192, !6, i64 240, !6, i64 288, !6, i64 336, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !12, i64 512, !13, i64 520, !13, i64 528, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !12, i64 568, !12, i64 576, !12, i64 584, !5, i64 592, !12, i64 600, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !5, i64 768, !5, i64 772, !5, i64 776, !5, i64 780, !14, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !14, i64 904, !14, i64 912, !14, i64 920, !14, i64 928, !14, i64 936, !14, i64 944, !12, i64 952, !5, i64 960, !5, i64 964, !5, i64 968, !5, i64 972, !15, i64 976, !5, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !12, i64 1048, !5, i64 1056, !11, i64 1064, !5, i64 1072, !16, i64 1080, !16, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !17, i64 1120, !17, i64 1128, !17, i64 1136, !12, i64 1144, !5, i64 1152, !14, i64 1160, !16, i64 1168, !5, i64 1176, !13, i64 1184, !14, i64 1192, !14, i64 1200, !5, i64 1208, !6, i64 1216, !6, i64 1264, !6, i64 1304, !6, i64 1352}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!9, !12, i64 8}
!19 = !{!9, !5, i64 64}
!20 = !{!9, !14, i64 784}
!21 = !{!12, !12, i64 0}
!22 = !{!9, !12, i64 856}
!23 = !{!9, !12, i64 752}
!24 = !{!9, !12, i64 1048}
!25 = !{!9, !5, i64 1208}
!26 = !{!5, !5, i64 0}
!27 = !{!9, !5, i64 544}
!28 = !{!9, !5, i64 548}
!29 = !{!9, !5, i64 552}
!30 = !{!9, !5, i64 564}
!31 = !{!9, !14, i64 936}
!32 = !{!9, !14, i64 944}
!33 = !{!34, !36, i64 24}
!34 = !{!"SUNContext_", !11, i64 0, !35, i64 8, !5, i64 16, !36, i64 24, !5, i64 32, !5, i64 36, !37, i64 40, !5, i64 48}
!35 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!36 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!37 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!38 = !{!34, !5, i64 36}
!39 = !{!37, !37, i64 0}
!40 = !{!41, !11, i64 8}
!41 = !{!"SUNErrHandler_", !37, i64 0, !11, i64 8, !11, i64 16}
!42 = !{!41, !11, i64 16}
!43 = distinct !{null}
!44 = !{!45, !46, i64 8}
!45 = !{!"_generic_N_Vector", !11, i64 0, !46, i64 8, !10, i64 16}
!46 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!47 = !{!48, !11, i64 8}
!48 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!49 = !{!48, !11, i64 24}
!50 = !{!48, !11, i64 88}
!51 = !{!48, !11, i64 96}
!52 = !{!48, !11, i64 104}
!53 = !{!48, !11, i64 120}
!54 = !{!48, !11, i64 128}
!55 = !{!48, !11, i64 136}
!56 = !{!48, !11, i64 144}
!57 = !{!48, !11, i64 168}
!58 = !{!48, !11, i64 184}
!59 = !{!48, !11, i64 32}
!60 = !{!14, !14, i64 0}
!61 = !{!9, !14, i64 920}
!62 = !{!9, !14, i64 928}
!63 = !{!9, !13, i64 384}
!64 = !{!9, !13, i64 448}
!65 = !{!9, !13, i64 424}
!66 = !{!9, !13, i64 408}
!67 = !{!9, !13, i64 416}
!68 = !{!9, !13, i64 440}
!69 = !{!9, !13, i64 456}
!70 = !{!9, !13, i64 464}
!71 = !{!9, !13, i64 472}
!72 = !{!9, !5, i64 776}
!73 = !{!13, !13, i64 0}
!74 = !{!9, !5, i64 780}
!75 = !{!9, !11, i64 16}
!76 = !{!9, !12, i64 672}
!77 = !{!9, !5, i64 984}
!78 = !{!9, !5, i64 612}
!79 = !{!9, !12, i64 656}
!80 = !{!9, !12, i64 952}
!81 = !{!9, !5, i64 1152}
!82 = !{!9, !5, i64 556}
!83 = !{!9, !11, i64 1064}
!84 = !{!9, !5, i64 1072}
!85 = !{!9, !5, i64 1176}
!86 = !{!9, !5, i64 960}
!87 = !{!9, !5, i64 972}
!88 = !{!9, !5, i64 964}
!89 = !{!9, !13, i64 56}
!90 = !{!9, !13, i64 1184}
!91 = !{!9, !5, i64 968}
!92 = !{!9, !13, i64 432}
!93 = !{!9, !14, i64 1160}
!94 = !{!9, !11, i64 1040}
!95 = !{!9, !12, i64 40}
!96 = !{!9, !12, i64 48}
!97 = !{!9, !5, i64 32}
!98 = !{!9, !5, i64 68}
!99 = !{!9, !11, i64 72}
!100 = !{!9, !11, i64 80}
!101 = !{!9, !17, i64 1120}
!102 = !{!9, !17, i64 1128}
!103 = !{!9, !17, i64 1136}
!104 = !{!9, !16, i64 1080}
!105 = !{!9, !16, i64 1088}
!106 = !{!9, !16, i64 1168}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.isvectorized", i32 1}
!109 = !{!"llvm.loop.unroll.runtime.disable"}
!110 = distinct !{!110, !109, !108}
!111 = !{!9, !13, i64 392}
!112 = !{!9, !13, i64 400}
!113 = !{!9, !14, i64 864}
!114 = !{!9, !12, i64 632}
!115 = !{!9, !12, i64 648}
!116 = !{!9, !5, i64 88}
!117 = !{!9, !12, i64 792}
!118 = !{!9, !12, i64 800}
!119 = !{!9, !5, i64 592}
!120 = !{!9, !12, i64 600}
!121 = !{!9, !12, i64 640}
!122 = !{!9, !5, i64 608}
!123 = !{!9, !12, i64 744}
!124 = !{!9, !12, i64 760}
!125 = !{!9, !11, i64 1024}
!126 = !{!9, !12, i64 1096}
!127 = !{!9, !12, i64 680}
!128 = !{!9, !12, i64 688}
!129 = !{!9, !5, i64 620}
!130 = !{!9, !5, i64 624}
!131 = distinct !{!131, !132}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!9, !12, i64 696}
!134 = distinct !{!134, !108, !109}
!135 = distinct !{!135, !109, !108}
!136 = !{!9, !11, i64 1008}
!137 = !{!9, !12, i64 704}
!138 = !{!9, !12, i64 720}
!139 = !{!9, !12, i64 712}
!140 = !{!9, !15, i64 976}
!141 = !{!142, !143, i64 16}
!142 = !{!"_generic_SUNNonlinearSolver", !11, i64 0, !11, i64 8, !143, i64 16, !10, i64 24}
!143 = !{!"p1 _ZTS31_generic_SUNNonlinearSolver_Ops", !11, i64 0}
!144 = !{!145, !11, i64 16}
!145 = !{!"_generic_SUNNonlinearSolver_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136}
!146 = !{!9, !14, i64 896}
!147 = !{!9, !14, i64 904}
!148 = !{!9, !14, i64 1192}
!149 = !{!9, !14, i64 1200}
!150 = !{!9, !12, i64 664}
!151 = distinct !{!151, !132}
!152 = distinct !{!152, !108, !109}
!153 = distinct !{!153, !132}
!154 = distinct !{!154, !108}
!155 = !{!9, !5, i64 616}
!156 = distinct !{!156, !132}
!157 = distinct !{!157, !108, !109}
!158 = distinct !{!158, !132}
!159 = distinct !{!159, !108}
!160 = !{!9, !5, i64 768}
!161 = !{!9, !12, i64 848}
!162 = !{!9, !12, i64 840}
!163 = !{!9, !5, i64 772}
!164 = !{!9, !12, i64 808}
!165 = !{!9, !12, i64 824}
!166 = !{!9, !12, i64 816}
!167 = !{!9, !12, i64 832}
!168 = !{!48, !11, i64 176}
!169 = !{!9, !11, i64 24}
!170 = !{!9, !11, i64 1000}
!171 = !{!9, !12, i64 1144}
!172 = !{!9, !12, i64 1104}
!173 = !{!9, !12, i64 1112}
!174 = distinct !{!174, !108, !109}
!175 = distinct !{!175, !132}
!176 = distinct !{!176, !108}
!177 = distinct !{null}
!178 = distinct !{!178, !108, !109}
end_hunk_2
