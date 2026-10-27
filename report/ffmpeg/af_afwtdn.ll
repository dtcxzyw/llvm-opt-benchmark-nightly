Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afwtdn?download=true
inline.NumInlined: 37
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@filter_channel:bb.a
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader.i173, label %.lr.ph.i168.epil, !llvm.loop !100

.lr.ph.preheader.i173:                            ; preds = %.lr.ph.i168.epil, %.lr.ph.preheader.i173.unr-lcssa
  %.lcssa514.a = phi double [ %i.pe, %.lr.ph.preheader.i173.unr-lcssa ], [ %i.ph, %.lr.ph.i168.epil ]
  %i.pi = fdiv nsz double %.lcssa514.a, %i.ns     ; 5 uses
  %xtraiter522 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.pj = icmp ult i32 %i.nr, 4
  br i1 %i.pj, label %.lr.ph.i175.epil.preheader, label %.lr.ph.preheader.i173.new

.lr.ph.preheader.i173.new:                        ; preds = %.lr.ph.preheader.i173
  %unroll_iter527 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %.lr.ph.i175, %.lr.ph.preheader.i173.new
  %indvars.iv.i176 = phi i64 [ 0, %.lr.ph.preheader.i173.new ], [ %indvars.iv.next.i177.3, %.lr.ph.i175 ] ; 5 uses
  %.0810.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i173.new ], [ %i.qg, %.lr.ph.i175 ]
  %niter528 = phi i64 [ 0, %.lr.ph.preheader.i173.new ], [ %niter528.next.3, %.lr.ph.i175 ]
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i176
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !86
  %i.pm = fsub nsz double %i.pl, %i.pi            ; 2 uses
  %i.pn = fmul nsz double %i.pm, %i.pm
  %i.po = fadd nsz double %.0810.i, %i.pn
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i176
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !86
  %i.ps = fsub nsz double %i.pr, %i.pi            ; 2 uses
  %i.pt = fmul nsz double %i.ps, %i.ps
  %i.pu = fadd nsz double %i.po, %i.pt
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i176
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load double, ptr %i.pw, align 8, !tbaa !86
  %i.py = fsub nsz double %i.px, %i.pi            ; 2 uses
  %i.pz = fmul nsz double %i.py, %i.py
  %i.qa = fadd nsz double %i.pu, %i.pz
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i176
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !86
  %i.qe = fsub nsz double %i.qd, %i.pi            ; 2 uses
  %i.qf = fmul nsz double %i.qe, %i.qe
  %i.qg = fadd nsz double %i.qa, %i.qf            ; 3 uses
  %indvars.iv.next.i177.3 = add nuw nsw i64 %indvars.iv.i176, 4 ; 2 uses
  %niter528.next.3 = add i64 %niter528, 4         ; 2 uses
  %niter528.ncmp.3 = icmp eq i64 %niter528.next.3, %unroll_iter527
  br i1 %niter528.ncmp.3, label %.lr.ph.preheader.i181.unr-lcssa, label %.lr.ph.i175, !llvm.loop !101

measure_stddev.exit:                              ; preds = %bb.ab
  %i.qh = fdiv nsz double 0.000000e+00, %i.ns     ; 2 uses
  %i.qi = tail call ninf nsz double @llvm.sqrt.f64(double %i.qh)
  %i.qj = fmul nsz double %i.qi, %i.nv
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store double %i.qj, ptr %i.qk, align 8, !tbaa !86
  br label %measure_absmean.exit

.lr.ph.preheader.i181.unr-lcssa:                  ; preds = %.lr.ph.i175
  %lcmp.mod524.not = icmp eq i64 %xtraiter522, 0
  br i1 %lcmp.mod524.not, label %.lr.ph.preheader.i181, label %.lr.ph.i175.epil.preheader

.lr.ph.i175.epil.preheader:                       ; preds = %.lr.ph.preheader.i181.unr-lcssa, %.lr.ph.preheader.i173
  %indvars.iv.i176.epil.init = phi i64 [ 0, %.lr.ph.preheader.i173 ], [ %indvars.iv.next.i177.3, %.lr.ph.preheader.i181.unr-lcssa ]
  %.0810.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i173 ], [ %i.qg, %.lr.ph.preheader.i181.unr-lcssa ]
  %lcmp.mod526 = icmp ne i64 %xtraiter522, 0
  tail call void @llvm.assume(i1 %lcmp.mod526)
  br label %.lr.ph.i175.epil

.lr.ph.i175.epil:                                 ; preds = %.lr.ph.i175.epil, %.lr.ph.i175.epil.preheader
  %indvars.iv.i176.epil = phi i64 [ %indvars.iv.i176.epil.init, %.lr.ph.i175.epil.preheader ], [ %indvars.iv.next.i177.epil, %.lr.ph.i175.epil ] ; 2 uses
  %.0810.i.epil = phi double [ %.0810.i.epil.init, %.lr.ph.i175.epil.preheader ], [ %i.qp, %.lr.ph.i175.epil ]
  %epil.iter523 = phi i64 [ 0, %.lr.ph.i175.epil.preheader ], [ %epil.iter523.next, %.lr.ph.i175.epil ]
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i176.epil
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !86
  %i.qn = fsub nsz double %i.qm, %i.pi            ; 2 uses
  %i.qo = fmul nsz double %i.qn, %i.qn
  %i.qp = fadd nsz double %.0810.i.epil, %i.qo    ; 2 uses
  %indvars.iv.next.i177.epil = add nuw nsw i64 %indvars.iv.i176.epil, 1
  %epil.iter523.next = add i64 %epil.iter523, 1   ; 2 uses
  %epil.iter523.cmp.not = icmp eq i64 %epil.iter523.next, %xtraiter522
  br i1 %epil.iter523.cmp.not, label %.lr.ph.preheader.i181, label %.lr.ph.i175.epil, !llvm.loop !102

.lr.ph.preheader.i181:                            ; preds = %.lr.ph.i175.epil, %.lr.ph.preheader.i181.unr-lcssa
  %.lcssa515 = phi double [ %i.qg, %.lr.ph.preheader.i181.unr-lcssa ], [ %i.qp, %.lr.ph.i175.epil ]
  %i.qq = fdiv nsz double %.lcssa515, %i.ns
  %i.qr = tail call nsz double @llvm.sqrt.f64(double %i.qq)
  %i.qs = fmul nsz double %i.nv, %i.qr
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  store double %i.qs, ptr %i.qt, align 8, !tbaa !86
  %xtraiter529 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.qu = icmp ult i32 %i.nr, 4
  br i1 %i.qu, label %.lr.ph.i183.epil.preheader, label %.lr.ph.preheader.i181.new

.lr.ph.preheader.i181.new:                        ; preds = %.lr.ph.preheader.i181
  %unroll_iter534 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i183

.lr.ph.i183:                                      ; preds = %.lr.ph.i183, %.lr.ph.preheader.i181.new
  %indvars.iv.i184 = phi i64 [ 0, %.lr.ph.preheader.i181.new ], [ %indvars.iv.next.i186.3, %.lr.ph.i183 ] ; 5 uses
  %.079.i185 = phi double [ 0.000000e+00, %.lr.ph.preheader.i181.new ], [ %i.rn, %.lr.ph.i183 ]
  %niter535 = phi i64 [ 0, %.lr.ph.preheader.i181.new ], [ %niter535.next.3, %.lr.ph.i183 ]
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i184
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !86
  %i.qx = tail call nsz double @llvm.fabs.f64(double %i.qw)
  %i.qy = fadd nsz double %.079.i185, %i.qx
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i184
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !86
  %i.rc = tail call nsz double @llvm.fabs.f64(double %i.rb)
  %i.rd = fadd nsz double %i.qy, %i.rc
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i184
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !86
  %i.rh = tail call nsz double @llvm.fabs.f64(double %i.rg)
  %i.ri = fadd nsz double %i.rd, %i.rh
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i184
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !86
  %i.rm = tail call nsz double @llvm.fabs.f64(double %i.rl)
  %i.rn = fadd nsz double %i.ri, %i.rm            ; 3 uses
  %indvars.iv.next.i186.3 = add nuw nsw i64 %indvars.iv.i184, 4 ; 2 uses
  %niter535.next.3 = add i64 %niter535, 4         ; 2 uses
  %niter535.ncmp.3 = icmp eq i64 %niter535.next.3, %unroll_iter534
  br i1 %niter535.ncmp.3, label %measure_absmean.exit.loopexit.unr-lcssa, label %.lr.ph.i183, !llvm.loop !103

measure_absmean.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i183
  %lcmp.mod531.not = icmp eq i64 %xtraiter529, 0
  br i1 %lcmp.mod531.not, label %measure_absmean.exit.loopexit, label %.lr.ph.i183.epil.preheader

.lr.ph.i183.epil.preheader:                       ; preds = %measure_absmean.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i181
  %indvars.iv.i184.epil.init = phi i64 [ 0, %.lr.ph.preheader.i181 ], [ %indvars.iv.next.i186.3, %measure_absmean.exit.loopexit.unr-lcssa ]
  %.079.i185.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i181 ], [ %i.rn, %measure_absmean.exit.loopexit.unr-lcssa ]
  %lcmp.mod533 = icmp ne i64 %xtraiter529, 0
  tail call void @llvm.assume(i1 %lcmp.mod533)
  br label %.lr.ph.i183.epil

.lr.ph.i183.epil:                                 ; preds = %.lr.ph.i183.epil, %.lr.ph.i183.epil.preheader
  %indvars.iv.i184.epil = phi i64 [ %indvars.iv.i184.epil.init, %.lr.ph.i183.epil.preheader ], [ %indvars.iv.next.i186.epil, %.lr.ph.i183.epil ] ; 2 uses
  %.079.i185.epil = phi double [ %.079.i185.epil.init, %.lr.ph.i183.epil.preheader ], [ %i.rr, %.lr.ph.i183.epil ]
  %epil.iter530 = phi i64 [ 0, %.lr.ph.i183.epil.preheader ], [ %epil.iter530.next, %.lr.ph.i183.epil ]
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.i184.epil
  %i.rp = load double, ptr %i.ro, align 8, !tbaa !86
  %i.rq = tail call nsz double @llvm.fabs.f64(double %i.rp)
  %i.rr = fadd nsz double %.079.i185.epil, %i.rq  ; 2 uses
  %indvars.iv.next.i186.epil = add nuw nsw i64 %indvars.iv.i184.epil, 1
  %epil.iter530.next = add i64 %epil.iter530, 1   ; 2 uses
  %epil.iter530.cmp.not = icmp eq i64 %epil.iter530.next, %xtraiter529
  br i1 %epil.iter530.cmp.not, label %measure_absmean.exit.loopexit, label %.lr.ph.i183.epil, !llvm.loop !104

measure_absmean.exit.loopexit:                    ; preds = %.lr.ph.i183.epil, %measure_absmean.exit.loopexit.unr-lcssa
  %.lcssa516 = phi double [ %i.rn, %measure_absmean.exit.loopexit.unr-lcssa ], [ %i.rr, %.lr.ph.i183.epil ]
  %.pre335 = fdiv nsz double %.lcssa516, %i.ns
  br label %measure_absmean.exit

measure_absmean.exit:                             ; preds = %measure_absmean.exit.loopexit, %measure_stddev.exit
  %.pre-phi336 = phi double [ %.pre335, %measure_absmean.exit.loopexit ], [ %i.qh, %measure_stddev.exit ]
  %i.rs = fmul nsz double %i.nv, %.pre-phi336
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store double %i.rs, ptr %i.rt, align 8, !tbaa !86
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.ab, !llvm.loop !105

bb.ac:                                            ; preds = %bb.aa
  %i.ru = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !144
  %.not161 = icmp eq i32 %i.rv, 0
  br i1 %.not161, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ac
  %i.rw = load i32, ptr %i.bd, align 8, !tbaa !32 ; 4 uses
  %.not162293 = icmp slt i32 %i.rw, 0
  br i1 %.not162293, label %._crit_edge305, label %.lr.ph295

.lr.ph295:                                        ; preds = %.preheader
  %i.rx = load ptr, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.rz = add nuw i32 %i.rw, 1
  %wide.trip.count323 = zext i32 %i.rz to i64     ; 4 uses
  %min.iters.check = icmp ult i32 %i.rw, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph295
  %i.sa = shl nuw nsw i64 %wide.trip.count323, 3  ; 2 uses
  %i.sb = getelementptr i8, ptr %i.ai, i64 %i.sa  ; 2 uses
  %i.sc = getelementptr i8, ptr %i.w, i64 %i.sa   ; 2 uses
  %i.sd = getelementptr i8, ptr %i.b, i64 16      ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %i.sc
  %bound1 = icmp ult ptr %i.w, %i.sb
  %found.conflict = and i1 %bound0, %bound1
  %bound0430 = icmp ult ptr %i.ai, %i.sd
  %bound1431 = icmp ult ptr %i.ry, %i.sb
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx = or i1 %found.conflict, %found.conflict432
  %bound0433 = icmp ult ptr %i.w, %i.sd
  %bound1434 = icmp ult ptr %i.ry, %i.sc
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx, %found.conflict435
  br i1 %conflict.rdx436, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count323, 4294967294 ; 3 uses
  %i.se = load double, ptr %i.ry, align 8, !tbaa !145, !alias.scope !146
  %i.sf = fmul nsz double %i.se, 5.000000e-01
  %broadcast.splatinsert437 = insertelement <2 x double> poison, double %i.sf, i64 0
  %broadcast.splat438 = shufflevector <2 x double> %broadcast.splatinsert437, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %index
  %wide.load = load <2 x i32>, ptr %i.sg, align 4, !tbaa !64
  %i.sh = sitofp nsz <2 x i32> %wide.load to <2 x double>
  %i.si = tail call nsz <2 x double> @llvm.log.v2f64(<2 x double> %i.sh)
  %i.sj = fmul nsz <2 x double> %i.si, splat (double 2.000000e+00)
  %i.sk = tail call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.sj)
  %i.sl = fmul nsz <2 x double> %broadcast.splat438, %i.sk ; 2 uses
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  store <2 x double> %i.sl, ptr %i.sm, align 8, !tbaa !86, !alias.scope !147, !noalias !148
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index
  store <2 x double> %i.sl, ptr %i.sn, align 8, !tbaa !86, !alias.scope !149, !noalias !146
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.so = icmp eq i64 %index.next, %n.vec
  br i1 %i.so, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count323
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph295, %middle.block
  %indvars.iv320.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph295 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv320 = phi i64 [ %indvars.iv.next321, %scalar.ph ], [ %indvars.iv320.ph, %scalar.ph.preheader ] ; 4 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv320
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !64
  %i.sr = sitofp nsz i32 %i.sq to double
  %i.ss = tail call nsz double @llvm.log.f64(double %i.sr)
  %i.st = fmul nsz double %i.ss, 2.000000e+00
  %i.su = tail call nsz double @llvm.sqrt.f64(double %i.st) ; 2 uses
  %i.sv = load double, ptr %i.ry, align 8, !tbaa !145
  %i.sw = fmul nsz double %i.sv, 5.000000e-01
  %i.sx = fmul nsz double %i.sw, %i.su
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv320
  store double %i.sx, ptr %i.sy, align 8, !tbaa !86
  %i.sz = load double, ptr %i.ry, align 8, !tbaa !145
  %i.ta = fmul nsz double %i.sz, 5.000000e-01
  %i.tb = fmul nsz double %i.ta, %i.su
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv320
  store double %i.tb, ptr %i.tc, align 8, !tbaa !86
  %indvars.iv.next321 = add nuw nsw i64 %indvars.iv320, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next321, %wide.trip.count323
  br i1 %exitcond324.not, label %.loopexit, label %scalar.ph, !llvm.loop !111

.loopexit:                                        ; preds = %measure_absmean.exit, %scalar.ph, %middle.block, %forward.exit, %bb.ac
  %.pr = load i32, ptr %i.bd, align 8, !tbaa !32  ; 6 uses
  %.not163296 = icmp slt i32 %.pr, 0
  br i1 %.not163296, label %._crit_edge305, label %.lr.ph299

.lr.ph299:                                        ; preds = %.loopexit
  %i.td = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.te = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.tf = zext nneg i32 %.pr to i64
  %i.tg = add nuw i32 %.pr, 1
  %wide.trip.count328 = zext i32 %i.tg to i64
  br label %bb.ad

.lr.ph304:                                        ; preds = %bb.af
  %i.th = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !152
  %i.tj = sitofp nsz i32 %i.ti to double
  %i.tk = fmul nsz double %.1, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !41
  %i.tn = sitofp nsz i32 %i.tm to double
  %i.to = fdiv nsz double %i.tk, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !153
  %.not165 = icmp eq i32 %i.tq, 0
  %i.tr = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ts = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.tt = fcmp nsz olt double %i.to, 5.000000e-02
  %i.tu = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.tv = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.tw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.tx = add nuw i32 %.pr, 1
  %wide.trip.count333 = zext i32 %i.tx to i64
  br label %bb.bp

bb.ad:                                            ; preds = %.lr.ph299, %bb.af
  %indvars.iv325 = phi i64 [ 0, %.lr.ph299 ], [ %indvars.iv.next326, %bb.af ] ; 7 uses
  %.0153297 = phi double [ 0.000000e+00, %.lr.ph299 ], [ %.1, %bb.af ] ; 2 uses
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv325
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !64 ; 7 uses
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv325
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !134 ; 19 uses
  %i.uc = icmp sgt i32 %i.tz, 0
  br i1 %i.uc, label %.lr.ph.preheader.i190, label %measure_stddev.exit207

.lr.ph.preheader.i190:                            ; preds = %bb.ad
  %wide.trip.count.i191 = zext nneg i32 %i.tz to i64 ; 6 uses
  %xtraiter536 = and i64 %wide.trip.count.i191, 7 ; 3 uses
  %i.ud = icmp ult i32 %i.tz, 8
  br i1 %i.ud, label %.lr.ph.i192.epil.preheader, label %.lr.ph.preheader.i190.new

.lr.ph.preheader.i190.new:                        ; preds = %.lr.ph.preheader.i190
  %unroll_iter541 = and i64 %wide.trip.count.i191, 2147483640
  br label %.lr.ph.i192

.lr.ph.i192:                                      ; preds = %.lr.ph.i192, %.lr.ph.preheader.i190.new
  %indvars.iv.i193 = phi i64 [ 0, %.lr.ph.preheader.i190.new ], [ %indvars.iv.next.i195.7, %.lr.ph.i192 ] ; 9 uses
  %.079.i194 = phi double [ 0.000000e+00, %.lr.ph.preheader.i190.new ], [ %i.vi, %.lr.ph.i192 ]
  %niter542 = phi i64 [ 0, %.lr.ph.preheader.i190.new ], [ %niter542.next.7, %.lr.ph.i192 ]
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !86
  %i.ug = fadd nsz double %.079.i194, %i.uf
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !86
  %i.uk = fadd nsz double %i.ug, %i.uj
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 16
  %i.un = load double, ptr %i.um, align 8, !tbaa !86
  %i.uo = fadd nsz double %i.uk, %i.un
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !86
  %i.us = fadd nsz double %i.uo, %i.ur
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !86
  %i.uw = fadd nsz double %i.us, %i.uv
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 40
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !86
  %i.va = fadd nsz double %i.uw, %i.uz
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 48
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !86
  %i.ve = fadd nsz double %i.va, %i.vd
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 56
  %i.vh = load double, ptr %i.vg, align 8, !tbaa !86
  %i.vi = fadd nsz double %i.ve, %i.vh            ; 3 uses
  %indvars.iv.next.i195.7 = add nuw nsw i64 %indvars.iv.i193, 8 ; 2 uses
  %niter542.next.7 = add i64 %niter542, 8         ; 2 uses
  %niter542.ncmp.7 = icmp eq i64 %niter542.next.7, %unroll_iter541
  br i1 %niter542.ncmp.7, label %.lr.ph.preheader.i200.unr-lcssa, label %.lr.ph.i192, !llvm.loop !99

.lr.ph.preheader.i200.unr-lcssa:                  ; preds = %.lr.ph.i192
  %lcmp.mod538.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod538.not, label %.lr.ph.preheader.i200, label %.lr.ph.i192.epil.preheader

.lr.ph.i192.epil.preheader:                       ; preds = %.lr.ph.preheader.i200.unr-lcssa, %.lr.ph.preheader.i190
  %indvars.iv.i193.epil.init = phi i64 [ 0, %.lr.ph.preheader.i190 ], [ %indvars.iv.next.i195.7, %.lr.ph.preheader.i200.unr-lcssa ]
  %.079.i194.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i190 ], [ %i.vi, %.lr.ph.preheader.i200.unr-lcssa ]
  %lcmp.mod540 = icmp ne i64 %xtraiter536, 0
  tail call void @llvm.assume(i1 %lcmp.mod540)
  br label %.lr.ph.i192.epil

.lr.ph.i192.epil:                                 ; preds = %.lr.ph.i192.epil, %.lr.ph.i192.epil.preheader
  %indvars.iv.i193.epil = phi i64 [ %indvars.iv.i193.epil.init, %.lr.ph.i192.epil.preheader ], [ %indvars.iv.next.i195.epil, %.lr.ph.i192.epil ] ; 2 uses
  %.079.i194.epil = phi double [ %.079.i194.epil.init, %.lr.ph.i192.epil.preheader ], [ %i.vl, %.lr.ph.i192.epil ]
  %epil.iter537 = phi i64 [ 0, %.lr.ph.i192.epil.preheader ], [ %epil.iter537.next, %.lr.ph.i192.epil ]
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i193.epil
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !86
  %i.vl = fadd nsz double %.079.i194.epil, %i.vk  ; 2 uses
  %indvars.iv.next.i195.epil = add nuw nsw i64 %indvars.iv.i193.epil, 1
  %epil.iter537.next = add i64 %epil.iter537, 1   ; 2 uses
  %epil.iter537.cmp.not = icmp eq i64 %epil.iter537.next, %xtraiter536
  br i1 %epil.iter537.cmp.not, label %.lr.ph.preheader.i200, label %.lr.ph.i192.epil, !llvm.loop !112

.lr.ph.preheader.i200:                            ; preds = %.lr.ph.i192.epil, %.lr.ph.preheader.i200.unr-lcssa
  %.lcssa510.a = phi double [ %i.vi, %.lr.ph.preheader.i200.unr-lcssa ], [ %i.vl, %.lr.ph.i192.epil ]
  %i.vm = uitofp nneg i32 %i.tz to double         ; 3 uses
  %i.vn = fdiv nsz double %.lcssa510.a, %i.vm     ; 5 uses
  %xtraiter543 = and i64 %wide.trip.count.i191, 3 ; 3 uses
  %i.vo = icmp ult i32 %i.tz, 4
  br i1 %i.vo, label %.lr.ph.i202.epil.preheader, label %.lr.ph.preheader.i200.new

.lr.ph.preheader.i200.new:                        ; preds = %.lr.ph.preheader.i200
  %unroll_iter548 = and i64 %wide.trip.count.i191, 2147483644
  br label %.lr.ph.i202

.lr.ph.i202:                                      ; preds = %.lr.ph.i202, %.lr.ph.preheader.i200.new
  %indvars.iv.i203 = phi i64 [ 0, %.lr.ph.preheader.i200.new ], [ %indvars.iv.next.i205.3, %.lr.ph.i202 ] ; 5 uses
  %.0810.i204 = phi double [ 0.000000e+00, %.lr.ph.preheader.i200.new ], [ %i.wl, %.lr.ph.i202 ]
  %niter549 = phi i64 [ 0, %.lr.ph.preheader.i200.new ], [ %niter549.next.3, %.lr.ph.i202 ]
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i203
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !86
  %i.vr = fsub nsz double %i.vq, %i.vn            ; 2 uses
  %i.vs = fmul nsz double %i.vr, %i.vr
  %i.vt = fadd nsz double %.0810.i204, %i.vs
  %i.vu = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i203
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load double, ptr %i.vv, align 8, !tbaa !86
  %i.vx = fsub nsz double %i.vw, %i.vn            ; 2 uses
  %i.vy = fmul nsz double %i.vx, %i.vx
  %i.vz = fadd nsz double %i.vt, %i.vy
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i203
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wc = load double, ptr %i.wb, align 8, !tbaa !86
  %i.wd = fsub nsz double %i.wc, %i.vn            ; 2 uses
  %i.we = fmul nsz double %i.wd, %i.wd
  %i.wf = fadd nsz double %i.vz, %i.we
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.i203
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 24
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !86
  %i.wj = fsub nsz double %i.wi, %i.vn            ; 2 uses
  %i.wk = fmul nsz double %i.wj, %i.wj
  %i.wl = fadd nsz double %i.wf, %i.wk            ; 3 uses
  %indvars.iv.next.i205.3 = add nuw nsw i64 %indvars.iv.i203, 4 ; 2 uses
  %niter549.next.3 = add i64 %niter549, 4         ; 2 uses
  %niter549.ncmp.3 = icmp eq i64 %niter549.next.3, %unroll_iter548
  br i1 %niter549.ncmp.3, label %.lr.ph.preheader.i210.unr-lcssa, label %.lr.ph.i202, !llvm.loop !101

measure_stddev.exit207:                           ; preds = %bb.ad
  %i.wm = sitofp nsz i32 %i.tz to double
  %i.wn = fdiv nsz double 0.000000e+00, %i.wm     ; 2 uses
  %i.wo = tail call nsz double @llvm.sqrt.f64(double %i.wn)
end_hunk_0
