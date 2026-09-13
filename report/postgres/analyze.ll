Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/analyze?download=true
inline.NumInlined: 97
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@compute_scalar_stats:bb.a
  br i1 %or.cond, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fi = fcmp ule float %i.ff, 0.000000e+00
  %.not = icmp sgt i32 %.3375, %i.m
  %or.cond402 = select i1 %i.fi, i1 true, i1 %.not
  br i1 %or.cond402, label %bb.al, label %analyze_mcv_list.exit

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %spec.select403 = call i32 @llvm.smin.i32(i32 %i.m, i32 %.3375) ; 8 uses
  %i.fj = icmp sgt i32 %spec.select403, 0
  br i1 %i.fj, label %bb.am, label %analyze_mcv_list.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.fk = zext nneg i32 %spec.select403 to i64    ; 8 uses
  %i.fl = shl nuw nsw i64 %i.fk, 2                ; 2 uses
  %i.fm = call ptr @palloc(i64 noundef %i.fl) #13 ; 15 uses
  %min.iters.check = icmp ult i32 %spec.select403, 13
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.am
  %scevgep = getelementptr i8, ptr %i.fm, i64 %i.fl
  %scevgep517 = getelementptr i8, ptr %i.w, i64 -4
  %i.fn = shl nuw nsw i64 %i.fk, 3
  %scevgep518 = getelementptr i8, ptr %scevgep517, i64 %i.fn
  %bound0 = icmp ult ptr %i.fm, %scevgep518
  %bound1 = icmp ult ptr %i.w, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fo = and i64 %i.fk, 7                        ; 2 uses
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = select i1 %i.fp, i64 8, i64 %i.fo
  %n.vec = sub nsw i64 %i.fk, %i.fq               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %wide.vec = load <8 x i32>, ptr %i.fr, align 4, !alias.scope !55
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec519 = load <8 x i32>, ptr %i.ft, align 4, !alias.scope !55
  %strided.vec520 = shufflevector <8 x i32> %wide.vec519, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %index ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store <4 x i32> %strided.vec, ptr %i.fu, align 4, !alias.scope !56, !noalias !55
  store <4 x i32> %strided.vec520, ptr %i.fv, align 4, !alias.scope !56, !noalias !55
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fw = icmp eq i64 %index.next, %n.vec
  br i1 %i.fw, label %scalar.ph.preheader, label %vector.body, !llvm.loop !49

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.am
  %indvars.iv463.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.am ], [ %n.vec, %vector.body ] ; 4 uses
  %i.fx = sub nsw i64 %i.fk, %indvars.iv463.ph
  %xtraiter = and i64 %i.fx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv463.prol = phi i64 [ %indvars.iv.next464.prol, %scalar.ph.prol ], [ %indvars.iv463.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv463.prol
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv463.prol
  store i32 %i.fz, ptr %i.ga, align 4
  %indvars.iv.next464.prol = add nuw nsw i64 %indvars.iv463.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !50

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv463.unr = phi i64 [ %indvars.iv463.ph, %scalar.ph.preheader ], [ %indvars.iv.next464.prol, %scalar.ph.prol ]
  %i.gb = sub nsw i64 %indvars.iv463.ph, %i.fk
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %.unr-lcssa, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv463 = phi i64 [ %indvars.iv.next464.3, %scalar.ph ], [ %indvars.iv463.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv463
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv463
  store i32 %i.ge, ptr %i.gf, align 4
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next464
  %i.gh = load i32, ptr %i.gg, align 4
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next464
  store i32 %i.gh, ptr %i.gi, align 4
  %indvars.iv.next464.1 = add nuw nsw i64 %indvars.iv463, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next464.1
  %i.gk = load i32, ptr %i.gj, align 4
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next464.1
  store i32 %i.gk, ptr %i.gl, align 4
  %indvars.iv.next464.2 = add nuw nsw i64 %indvars.iv463, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next464.2
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next464.2
  store i32 %i.gn, ptr %i.go, align 4
  %indvars.iv.next464.3 = add nuw nsw i64 %indvars.iv463, 4 ; 2 uses
  %exitcond467.not.3 = icmp eq i64 %indvars.iv.next464.3, %i.fk
  br i1 %exitcond467.not.3, label %.unr-lcssa, label %scalar.ph, !llvm.loop !51

.unr-lcssa:                                       ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.gp = load float, ptr %i.dn, align 4
  %i.gq = fpext float %i.gp to double
  %i.gr = fcmp oeq double %3, %i.dk
  %i.gs = fcmp ole double %3, 1.000000e+00
  %or.cond.i = or i1 %i.gr, %i.gs
  br i1 %or.cond.i, label %analyze_mcv_list.exit.thread498, label %bb.an

bb.an:                                            ; preds = %.unr-lcssa
  %i.gt = load float, ptr %i.ey, align 4          ; 2 uses
  %i.gu = fpext float %i.gt to double             ; 2 uses
  %i.gv = fcmp olt float %i.gt, 0.000000e+00
  %i.gw = fneg double %i.gu
  %i.gx = fmul double %3, %i.gw
  %.058.i = select i1 %i.gv, double %i.gx, double %i.gu
  %.not412 = icmp eq i32 %spec.select403, 1
  br i1 %.not412, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.an
  %i.gy = add nsw i32 %spec.select403, -1
  %wide.trip.count.i = zext nneg i32 %i.gy to i64 ; 2 uses
  %xtraiter524 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.gz = add nsw i32 %spec.select403, -2
  %i.ha = icmp ult i32 %i.gz, 3
  br i1 %i.ha, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod525.not = icmp eq i64 %xtraiter524, 0
  br i1 %lcmp.mod525.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.05773.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.ie, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod527 = icmp ne i64 %xtraiter524, 0
  call void @llvm.assume(i1 %lcmp.mod527)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.05773.i.epil = phi double [ %.05773.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.he, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i.epil
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = sitofp i32 %i.hc to double
  %i.he = fadd double %.05773.i.epil, %i.hd       ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter524
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !52

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.an
  %.057.lcssa.i = phi double [ 0.000000e+00, %bb.an ], [ %i.ie, %.preheader.i.loopexit.unr-lcssa ], [ %i.he, %.lr.ph.i.epil ]
  %i.hf = fsub double %3, %i.dk
  %i.hg = fmul double %3, %3
  %i.hh = fadd double %3, -1.000000e+00
  %i.hi = fmul double %i.hg, %i.hh
  %i.hj = insertelement <2 x double> <double 1.000000e+00, double poison>, double %3, i64 1
  %i.hk = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ao

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.05773.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.ie, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hn = load i32, ptr %i.hm, align 4
  %i.ho = sitofp i32 %i.hn to double
  %i.hp = fadd double %.05773.i, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = sitofp i32 %i.hs to double
  %i.hu = fadd double %i.hp, %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hx = load i32, ptr %i.hw, align 4
  %i.hy = sitofp i32 %i.hx to double
  %i.hz = fadd double %i.hu, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = sitofp i32 %i.ic to double
  %i.ie = fadd double %i.hz, %i.id                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.ao:                                            ; preds = %bb.aq, %.preheader.i
  %indvars.iv78.i = phi i64 [ %i.fk, %.preheader.i ], [ %indvars.iv.next79.i, %bb.aq ] ; 3 uses
  %.176.i = phi double [ %.057.lcssa.i, %.preheader.i ], [ %i.jo, %bb.aq ] ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1 ; 4 uses
  %i.if = trunc nuw nsw i64 %indvars.iv.next79.i to i32
  %i.ig = uitofp nneg i32 %i.if to double
  %i.ih = fsub double %.058.i, %i.ig              ; 2 uses
  %i.ii = fcmp ogt double %i.ih, 1.000000e+00
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.next79.i ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4
  %i.il = sitofp i32 %i.ik to double
  %i.im = fmul double %3, %i.il
  %i.in = insertelement <2 x double> poison, double %.176.i, i64 0
  %i.io = insertelement <2 x double> %i.in, double %i.im, i64 1
  %i.ip = fdiv <2 x double> %i.io, %i.hl          ; 2 uses
  %i.iq = fsub <2 x double> %i.hj, %i.ip          ; 2 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 0
  %i.is = fsub double %i.ir, %i.gq                ; 2 uses
  %i.it = fcmp olt double %i.is, 0.000000e+00
  %spec.store.select.i = select i1 %i.it, double 0.000000e+00, double %i.is ; 2 uses
  %i.iu = fcmp ogt double %spec.store.select.i, 1.000000e+00
  %spec.store.select2.i = select i1 %i.iu, double 1.000000e+00, double %spec.store.select.i ; 2 uses
  %i.iv = fdiv double %spec.store.select2.i, %i.ih
  %.0.i405 = select i1 %i.ii, double %i.iv, double %spec.store.select2.i
  %i.iw = extractelement <2 x double> %i.ip, i64 1
  %i.ix = fmul double %i.iw, %i.dk
  %i.iy = extractelement <2 x double> %i.iq, i64 1
  %i.iz = fmul double %i.ix, %i.iy
  %i.ja = fmul double %i.hf, %i.iz
  %i.jb = fdiv double %i.ja, %i.hi
  %i.jc = call double @sqrt(double noundef %i.jb) #13
  %i.jd = load i32, ptr %i.ij, align 4
  %i.je = sitofp i32 %i.jd to double
  %i.jf = fmul double %i.jc, 2.000000e+00
  %i.jg = call double @llvm.fmuladd.f64(double %.0.i405, double %i.dk, double %i.jf)
  %i.jh = fadd double %i.jg, 5.000000e-01
  %i.ji = fcmp olt double %i.jh, %i.je
  br i1 %i.ji, label %.thread.loopexit.split.loop.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jj = icmp eq i64 %indvars.iv.next79.i, 0
  br i1 %i.jj, label %analyze_mcv_list.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jk = getelementptr [4 x i8], ptr %i.fm, i64 %indvars.iv78.i
  %i.jl = getelementptr i8, ptr %i.jk, i64 -8
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = sitofp i32 %i.jm to double
  %i.jo = fsub double %.176.i, %i.jn
  br label %bb.ao

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.ao
  %i.jp = trunc nuw nsw i64 %indvars.iv78.i to i32
  br label %analyze_mcv_list.exit

analyze_mcv_list.exit:                            ; preds = %.thread.loopexit.split.loop.exit.i, %bb.ak
  %.2371 = phi i32 [ %.3375, %bb.ak ], [ %i.jp, %.thread.loopexit.split.loop.exit.i ] ; 3 uses
  %i.jq = icmp sgt i32 %.2371, 0
  br i1 %i.jq, label %analyze_mcv_list.exit.thread498, label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread498:                  ; preds = %.unr-lcssa, %analyze_mcv_list.exit
  %.2371500 = phi i32 [ %.2371, %analyze_mcv_list.exit ], [ %spec.select403, %.unr-lcssa ] ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.js, ptr @CurrentMemoryContext, align 8
  %i.ju = zext nneg i32 %.2371500 to i64          ; 3 uses
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = call ptr @palloc(i64 noundef %i.jv) #13 ; 2 uses
  %i.jx = shl nuw nsw i64 %i.ju, 2
  %i.jy = call ptr @palloc(i64 noundef %i.jx) #13 ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %analyze_mcv_list.exit.thread498, %bb.ar
  %indvars.iv468 = phi i64 [ 0, %analyze_mcv_list.exit.thread498 ], [ %indvars.iv.next469, %bb.ar ] ; 4 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv468 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8
  %i.kf = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 78
  %i.kh = load i8, ptr %i.kg, align 2, !range !6, !noundef !7
  %i.ki = trunc nuw i8 %i.kh to i1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 76
  %i.kk = load i16, ptr %i.kj, align 4
  %i.kl = sext i16 %i.kk to i32
  %i.km = call i64 @datumCopy(i64 noundef %i.ke, i1 noundef zeroext %i.ki, i32 noundef %i.kl) #13
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv468
  store i64 %i.km, ptr %i.kn, align 8
  %i.ko = load i32, ptr %i.jz, align 4
  %i.kp = sitofp i32 %i.ko to double
  %i.kq = fdiv double %i.kp, %i.dk
  %i.kr = fptrunc double %i.kq to float
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %indvars.iv468
  store float %i.kr, ptr %i.ks, align 4
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next469, %i.ju
  br i1 %exitcond472.not, label %bb.as, label %bb.ar, !llvm.loop !53

bb.as:                                            ; preds = %bb.ar
  store ptr %i.jt, ptr @CurrentMemoryContext, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 1, ptr %i.kt, align 8
  %i.ku = load i32, ptr %i.o, align 4
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ku, ptr %i.kv, align 4
  %i.kw = load i32, ptr %i.z, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.kw, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.jy, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.2371500, ptr %i.kz, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.jw, ptr %i.la, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.2371500, ptr %i.lb, align 8
  br label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread:                     ; preds = %bb.ap, %bb.al, %bb.as, %analyze_mcv_list.exit
  %i.lc = phi i1 [ true, %bb.as ], [ false, %analyze_mcv_list.exit ], [ false, %bb.al ], [ false, %bb.ap ]
  %.2371407 = phi i32 [ %.2371500, %bb.as ], [ %.2371, %analyze_mcv_list.exit ], [ %spec.select403, %bb.al ], [ 0, %bb.ap ] ; 3 uses
  %.0357 = phi i32 [ 1, %bb.as ], [ 0, %analyze_mcv_list.exit ], [ 0, %bb.al ], [ 0, %bb.ap ] ; 3 uses
  %i.ld = sub i32 %.1366, %.2371407               ; 2 uses
  %i.le = icmp sgt i32 %i.ld, %i.m
  %i.lf = add i32 %i.m, 1
  %spec.select404 = select i1 %i.le, i32 %i.lf, i32 %i.ld ; 5 uses
  %i.lg = icmp sgt i32 %spec.select404, 1
  br i1 %i.lg, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %analyze_mcv_list.exit.thread
  %i.lh = sext i32 %.2371407 to i64
  call void @qsort_interruptible(ptr noundef %i.w, i64 noundef %i.lh, i64 noundef 8, ptr noundef nonnull @compare_mcvs, ptr noundef null) #13
  br i1 %i.lc, label %.lr.ph444, label %.lr.ph450.preheader

.lr.ph444:                                        ; preds = %bb.at, %bb.aw
  %.0338443 = phi i32 [ %.3341, %bb.aw ], [ 0, %bb.at ] ; 4 uses
  %.0342442 = phi i32 [ %.1343, %bb.aw ], [ 0, %bb.at ] ; 3 uses
  %.0344441 = phi i32 [ %.3347, %bb.aw ], [ 0, %bb.at ] ; 3 uses
  %i.li = icmp slt i32 %.0338443, %.2371407
  br i1 %i.li, label %bb.au, label %.thread408

bb.au:                                            ; preds = %.lr.ph444
  %i.lj = sext i32 %.0338443 to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.lj ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lm = load i32, ptr %i.ll, align 4            ; 3 uses
  %.not399 = icmp slt i32 %.0344441, %i.lm
  br i1 %.not399, label %.thread408, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ln = load i32, ptr %i.lk, align 4
  %i.lo = add i32 %i.ln, %i.lm
  %i.lp = add nsw i32 %.0338443, 1
  br label %bb.aw

.thread408:                                       ; preds = %.lr.ph444, %bb.au
  %.pn = phi i32 [ %i.lm, %bb.au ], [ %.1377, %.lr.ph444 ] ; 2 uses
  %.1337 = sub i32 %.pn, %.0344441                ; 2 uses
  %i.lq = sext i32 %.0342442 to i64
  %i.lr = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.lq
  %i.ls = sext i32 %.0344441 to i64
  %i.lt = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.ls
  %i.lu = sext i32 %.1337 to i64
  %i.lv = shl nsw i64 %i.lu, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.lr, ptr align 8 %i.lt, i64 %i.lv, i1 false)
  %i.lw = add i32 %.1337, %.0342442
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread408
  %.3347 = phi i32 [ %.pn, %.thread408 ], [ %i.lo, %bb.av ] ; 2 uses
  %.1343 = phi i32 [ %i.lw, %.thread408 ], [ %.0342442, %bb.av ] ; 2 uses
  %.3341 = phi i32 [ %.0338443, %.thread408 ], [ %i.lp, %bb.av ]
  %i.lx = icmp slt i32 %.3347, %.1377
  br i1 %i.lx, label %.lr.ph444, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %bb.aw, %bb.at
  %.0352 = phi i32 [ %.1377, %bb.at ], [ %.1343, %bb.aw ]
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.lz, ptr @CurrentMemoryContext, align 8
  %i.mb = zext nneg i32 %spec.select404 to i64
  %i.mc = shl nuw nsw i64 %i.mb, 3
  %i.md = call ptr @palloc(i64 noundef %i.mc) #13 ; 2 uses
  %i.me = add i32 %.0352, -1                      ; 2 uses
  %i.mf = add nsw i32 %spec.select404, -1         ; 4 uses
  %i.mg = sdiv i32 %i.me, %i.mf
  %i.mh = srem i32 %i.me, %i.mf
  %wide.trip.count476 = zext nneg i32 %spec.select404 to i64
  br label %.lr.ph450

.lr.ph450:                                        ; preds = %.lr.ph450.preheader, %.lr.ph450
  %indvars.iv473 = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next474, %.lr.ph450 ] ; 2 uses
  %.0348447 = phi i32 [ 0, %.lr.ph450.preheader ], [ %.1349, %.lr.ph450 ]
  %.0350446 = phi i32 [ 0, %.lr.ph450.preheader ], [ %.1351, %.lr.ph450 ] ; 2 uses
  %i.mi = sext i32 %.0350446 to i64
  %i.mj = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.mi
  %i.mk = load i64, ptr %i.mj, align 8
  %i.ml = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 78
  %i.mn = load i8, ptr %i.mm, align 2, !range !6, !noundef !7
  %i.mo = trunc nuw i8 %i.mn to i1
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 76
  %i.mq = load i16, ptr %i.mp, align 4
  %i.mr = sext i16 %i.mq to i32
  %i.ms = call i64 @datumCopy(i64 noundef %i.mk, i1 noundef zeroext %i.mo, i32 noundef %i.mr) #13
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %indvars.iv473
  store i64 %i.ms, ptr %i.mt, align 8
  %i.mu = add i32 %.0350446, %i.mg
  %i.mv = add i32 %.0348447, %i.mh                ; 2 uses
  %.not398 = icmp sge i32 %i.mv, %i.mf            ; 2 uses
  %i.mw = zext i1 %.not398 to i32
  %.1351 = add i32 %i.mu, %i.mw
  %i.mx = select i1 %.not398, i32 %i.mf, i32 0
  %.1349 = sub nsw i32 %i.mv, %i.mx
  %indvars.iv.next474 = add nuw nsw i64 %indvars.iv473, 1 ; 2 uses
  %exitcond477.not = icmp eq i64 %indvars.iv.next474, %wide.trip.count476
  br i1 %exitcond477.not, label %._crit_edge451, label %.lr.ph450, !llvm.loop !54

._crit_edge451:                                   ; preds = %.lr.ph450
  store ptr %i.ma, ptr @CurrentMemoryContext, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.mz = zext nneg i32 %.0357 to i64             ; 5 uses
  %i.na = getelementptr inbounds nuw [2 x i8], ptr %i.my, i64 %i.mz
  store i16 2, ptr %i.na, align 2
  %i.nb = load i32, ptr %i.ad, align 4
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.mz
  store i32 %i.nb, ptr %i.nd, align 4
  %i.ne = load i32, ptr %i.z, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.nf, i64 %i.mz
  store i32 %i.ne, ptr %i.ng, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.mz
  store ptr %i.md, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.mz
  store i32 %spec.select404, ptr %i.nk, align 4
  %i.nl = add nuw nsw i32 %.0357, 1
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge451, %analyze_mcv_list.exit.thread
  %.1358 = phi i32 [ %i.nl, %._crit_edge451 ], [ %.0357, %analyze_mcv_list.exit.thread ]
  %.not397 = icmp eq i32 %.1377, 1
  br i1 %.not397, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nn = load ptr, ptr %i.nm, align 8
end_hunk_0
begin_hunk_1_@compute_distinct_stats:bb.a
vector.ph:                                        ; preds = %vector.memcheck
  %i.gf = and i64 %i.gb, 7                        ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 0
  %i.gh = select i1 %i.gg, i64 8, i64 %i.gf
  %n.vec = sub nsw i64 %i.gb, %i.gh               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %index
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gm, i64 72
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 104
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 120
  %i.gy = load i32, ptr %i.gq, align 8, !alias.scope !70
  %i.gz = load i32, ptr %i.gr, align 8, !alias.scope !70
  %i.ha = load i32, ptr %i.gs, align 8, !alias.scope !70
  %i.hb = load i32, ptr %i.gt, align 8, !alias.scope !70
  %i.hc = insertelement <4 x i32> poison, i32 %i.gy, i64 0
  %i.hd = insertelement <4 x i32> %i.hc, i32 %i.gz, i64 1
  %i.he = insertelement <4 x i32> %i.hd, i32 %i.ha, i64 2
  %i.hf = insertelement <4 x i32> %i.he, i32 %i.hb, i64 3
  %i.hg = load i32, ptr %i.gu, align 8, !alias.scope !70
  %i.hh = load i32, ptr %i.gv, align 8, !alias.scope !70
  %i.hi = load i32, ptr %i.gw, align 8, !alias.scope !70
  %i.hj = load i32, ptr %i.gx, align 8, !alias.scope !70
  %i.hk = insertelement <4 x i32> poison, i32 %i.hg, i64 0
  %i.hl = insertelement <4 x i32> %i.hk, i32 %i.hh, i64 1
  %i.hm = insertelement <4 x i32> %i.hl, i32 %i.hi, i64 2
  %i.hn = insertelement <4 x i32> %i.hm, i32 %i.hj, i64 3
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %index ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <4 x i32> %i.hf, ptr %i.ho, align 4, !alias.scope !71, !noalias !70
  store <4 x i32> %i.hn, ptr %i.hp, align 4, !alias.scope !71, !noalias !70
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !65

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.ak
  %indvars.iv311.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.ak ], [ %n.vec, %vector.body ] ; 4 uses
  %i.hr = sub nsw i64 %i.gb, %indvars.iv311.ph
  %xtraiter374 = and i64 %i.hr, 3                 ; 2 uses
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  br i1 %lcmp.mod375.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv311.prol = phi i64 [ %indvars.iv.next312.prol, %scalar.ph.prol ], [ %indvars.iv311.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv311.prol
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load i32, ptr %i.ht, align 8
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv311.prol
  store i32 %i.hu, ptr %i.hv, align 4
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv311.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter374
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !66

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv311.unr = phi i64 [ %indvars.iv311.ph, %scalar.ph.preheader ], [ %indvars.iv.next312.prol, %scalar.ph.prol ]
  %i.hw = sub nsw i64 %indvars.iv311.ph, %i.gb
  %i.hx = icmp ugt i64 %i.hw, -4
  br i1 %i.hx, label %.unr-lcssa, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv311 = phi i64 [ %indvars.iv.next312.3, %scalar.ph ], [ %indvars.iv311.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv311
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ia = load i32, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv311
  store i32 %i.ia, ptr %i.ib, align 4
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next312
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i32, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next312
  store i32 %i.ie, ptr %i.if, align 4
  %indvars.iv.next312.1 = add nuw nsw i64 %indvars.iv311, 2 ; 2 uses
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next312.1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ii = load i32, ptr %i.ih, align 8
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next312.1
  store i32 %i.ii, ptr %i.ij, align 4
  %indvars.iv.next312.2 = add nuw nsw i64 %indvars.iv311, 3 ; 2 uses
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next312.2
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i32, ptr %i.il, align 8
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next312.2
  store i32 %i.im, ptr %i.in, align 4
  %indvars.iv.next312.3 = add nuw nsw i64 %indvars.iv311, 4 ; 2 uses
  %exitcond315.not.3 = icmp eq i64 %indvars.iv.next312.3, %i.gb
  br i1 %exitcond315.not.3, label %.unr-lcssa, label %scalar.ph, !llvm.loop !67

.unr-lcssa:                                       ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.io = load float, ptr %i.dy, align 4
  %i.ip = fpext float %i.io to double
  %i.iq = fcmp oeq double %3, %i.dv
  %i.ir = fcmp ole double %3, 1.000000e+00
  %or.cond.i = or i1 %i.iq, %i.ir
  br i1 %or.cond.i, label %analyze_mcv_list.exit.thread343, label %bb.al

bb.al:                                            ; preds = %.unr-lcssa
  %i.is = load float, ptr %i.fq, align 4          ; 2 uses
  %i.it = fpext float %i.is to double             ; 2 uses
  %i.iu = fcmp olt float %i.is, 0.000000e+00
  %i.iv = fneg double %i.it
  %i.iw = fmul double %3, %i.iv
  %.058.i = select i1 %i.iu, double %i.iw, double %i.it
  %.not256 = icmp eq i32 %spec.select253, 1
  br i1 %.not256, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.al
  %i.ix = add nsw i32 %spec.select253, -1
  %wide.trip.count.i = zext nneg i32 %i.ix to i64 ; 2 uses
  %xtraiter376 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.iy = add nsw i32 %spec.select253, -2
  %i.iz = icmp ult i32 %i.iy, 3
  br i1 %i.iz, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.05773.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.kd, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod379 = icmp ne i64 %xtraiter376, 0
  call void @llvm.assume(i1 %lcmp.mod379)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.05773.i.epil = phi double [ %.05773.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.jd, %.lr.ph.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i.epil
  %i.jb = load i32, ptr %i.ja, align 4
  %i.jc = sitofp i32 %i.jb to double
  %i.jd = fadd double %.05773.i.epil, %i.jc       ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter376
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph.i.epil, !llvm.loop !68

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.al
  %.057.lcssa.i = phi double [ 0.000000e+00, %bb.al ], [ %i.kd, %.preheader.i.loopexit.unr-lcssa ], [ %i.jd, %.lr.ph.i.epil ]
  %i.je = fsub double %3, %i.dv
  %i.jf = fmul double %3, %3
  %i.jg = fadd double %3, -1.000000e+00
  %i.jh = fmul double %i.jf, %i.jg
  %i.ji = insertelement <2 x double> <double 1.000000e+00, double poison>, double %3, i64 1
  %i.jj = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.am

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.05773.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.kd, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.jm = load i32, ptr %i.jl, align 4
  %i.jn = sitofp i32 %i.jm to double
  %i.jo = fadd double %.05773.i, %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jr = load i32, ptr %i.jq, align 4
  %i.js = sitofp i32 %i.jr to double
  %i.jt = fadd double %i.jo, %i.js
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load i32, ptr %i.jv, align 4
  %i.jx = sitofp i32 %i.jw to double
  %i.jy = fadd double %i.jt, %i.jx
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 12
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = sitofp i32 %i.kb to double
  %i.kd = fadd double %i.jy, %i.kc                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

bb.am:                                            ; preds = %bb.ao, %.preheader.i
  %indvars.iv78.i = phi i64 [ %i.gb, %.preheader.i ], [ %indvars.iv.next79.i, %bb.ao ] ; 3 uses
  %.176.i = phi double [ %.057.lcssa.i, %.preheader.i ], [ %i.ln, %bb.ao ] ; 2 uses
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, -1 ; 4 uses
  %i.ke = trunc nuw nsw i64 %indvars.iv.next79.i to i32
  %i.kf = uitofp nneg i32 %i.ke to double
  %i.kg = fsub double %.058.i, %i.kf              ; 2 uses
  %i.kh = fcmp ogt double %i.kg, 1.000000e+00
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.next79.i ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4
  %i.kk = sitofp i32 %i.kj to double
  %i.kl = fmul double %3, %i.kk
  %i.km = insertelement <2 x double> poison, double %.176.i, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %i.kl, i64 1
  %i.ko = fdiv <2 x double> %i.kn, %i.jk          ; 2 uses
  %i.kp = fsub <2 x double> %i.ji, %i.ko          ; 2 uses
  %i.kq = extractelement <2 x double> %i.kp, i64 0
  %i.kr = fsub double %i.kq, %i.ip                ; 2 uses
  %i.ks = fcmp olt double %i.kr, 0.000000e+00
  %spec.store.select.i = select i1 %i.ks, double 0.000000e+00, double %i.kr ; 2 uses
  %i.kt = fcmp ogt double %spec.store.select.i, 1.000000e+00
  %spec.store.select2.i = select i1 %i.kt, double 1.000000e+00, double %spec.store.select.i ; 2 uses
  %i.ku = fdiv double %spec.store.select2.i, %i.kg
  %.0.i254 = select i1 %i.kh, double %i.ku, double %spec.store.select2.i
  %i.kv = extractelement <2 x double> %i.ko, i64 1
  %i.kw = fmul double %i.kv, %i.dv
  %i.kx = extractelement <2 x double> %i.kp, i64 1
  %i.ky = fmul double %i.kw, %i.kx
  %i.kz = fmul double %i.je, %i.ky
  %i.la = fdiv double %i.kz, %i.jh
  %i.lb = call double @sqrt(double noundef %i.la) #13
  %i.lc = load i32, ptr %i.ki, align 4
  %i.ld = sitofp i32 %i.lc to double
  %i.le = fmul double %i.lb, 2.000000e+00
  %i.lf = call double @llvm.fmuladd.f64(double %.0.i254, double %i.dv, double %i.le)
  %i.lg = fadd double %i.lf, 5.000000e-01
  %i.lh = fcmp olt double %i.lg, %i.ld
  br i1 %i.lh, label %.thread.loopexit.split.loop.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.li = icmp eq i64 %indvars.iv.next79.i, 0
  br i1 %i.li, label %analyze_mcv_list.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lj = getelementptr [4 x i8], ptr %i.gd, i64 %indvars.iv78.i
  %i.lk = getelementptr i8, ptr %i.lj, i64 -8
  %i.ll = load i32, ptr %i.lk, align 4
  %i.lm = sitofp i32 %i.ll to double
  %i.ln = fsub double %.176.i, %i.lm
  br label %bb.am

.thread.loopexit.split.loop.exit.i:               ; preds = %bb.am
  %i.lo = trunc nuw nsw i64 %indvars.iv78.i to i32
  br label %analyze_mcv_list.exit

analyze_mcv_list.exit:                            ; preds = %.thread.loopexit.split.loop.exit.i, %bb.ai
  %.2230 = phi i32 [ %.3, %bb.ai ], [ %i.lo, %.thread.loopexit.split.loop.exit.i ] ; 2 uses
  %i.lp = icmp sgt i32 %.2230, 0
  br i1 %i.lp, label %analyze_mcv_list.exit.thread343, label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread343:                  ; preds = %.unr-lcssa, %analyze_mcv_list.exit
  %.2230345 = phi i32 [ %.2230, %analyze_mcv_list.exit ], [ %spec.select253, %.unr-lcssa ] ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8
  %i.ls = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.lr, ptr @CurrentMemoryContext, align 8
  %i.lt = zext nneg i32 %.2230345 to i64          ; 3 uses
  %i.lu = shl nuw nsw i64 %i.lt, 3
  %i.lv = call ptr @palloc(i64 noundef %i.lu) #13 ; 2 uses
  %i.lw = shl nuw nsw i64 %i.lt, 2
  %i.lx = call ptr @palloc(i64 noundef %i.lw) #13 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %analyze_mcv_list.exit.thread343, %bb.ap
  %indvars.iv316 = phi i64 [ 0, %analyze_mcv_list.exit.thread343 ], [ %indvars.iv.next317, %bb.ap ] ; 4 uses
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv316 ; 2 uses
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 78
  %i.mc = load i8, ptr %i.mb, align 2, !range !6, !noundef !7
  %i.md = trunc nuw i8 %i.mc to i1
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 76
  %i.mf = load i16, ptr %i.me, align 4
  %i.mg = sext i16 %i.mf to i32
  %i.mh = call i64 @datumCopy(i64 noundef %i.lz, i1 noundef zeroext %i.md, i32 noundef %i.mg) #13
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %indvars.iv316
  store i64 %i.mh, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.mk = load i32, ptr %i.mj, align 8
  %i.ml = sitofp i32 %i.mk to double
  %i.mm = fdiv double %i.ml, %i.dv
  %i.mn = fptrunc double %i.mm to float
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv316
  store float %i.mn, ptr %i.mo, align 4
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %i.lt
  br i1 %exitcond320.not, label %bb.aq, label %bb.ap, !llvm.loop !69

bb.aq:                                            ; preds = %bb.ap
  store ptr %i.ls, ptr @CurrentMemoryContext, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 1, ptr %i.mp, align 8
  %i.mq = load i32, ptr %i.o, align 4
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.mq, ptr %i.mr, align 4
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mt = load i32, ptr %i.ms, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.mt, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.lx, ptr %i.mv, align 8
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.2230345, ptr %i.mw, align 4
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.lv, ptr %i.mx, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %.2230345, ptr %i.my, align 8
  br label %analyze_mcv_list.exit.thread

bb.ar:                                            ; preds = %._crit_edge279
  %i.mz = icmp sgt i32 %.1220, 0
  br i1 %i.mz, label %bb.as, label %analyze_mcv_list.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float 1.000000e+00, ptr %i.nb, align 4
  br i1 %i.l, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.nc = load ptr, ptr %i.b, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 76
  %i.ne = load i16, ptr %i.nd, align 4
  %i.nf = sext i16 %i.ne to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.sink321 = phi i32 [ %i.nf, %bb.at ], [ 0, %bb.as ]
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink321, ptr %i.ng, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 76
  store float 0.000000e+00, ptr %i.nh, align 4
  br label %analyze_mcv_list.exit.thread

analyze_mcv_list.exit.thread:                     ; preds = %bb.an, %.thread, %bb.aj, %analyze_mcv_list.exit, %bb.aq, %bb.ar, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_trivial_stats(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, double %3) #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 78
  %i.e = load i8, ptr %i.d, align 2, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.thread.thread, label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.h = load i16, ptr %i.g, align 4
  %.fr65 = freeze i16 %i.h                        ; 2 uses
  %i.i = icmp slt i16 %.fr65, 0                   ; 2 uses
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.lr.ph, label %.thread80

.thread.thread:                                   ; preds = %bb.a
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.lr.ph.split.split.preheader, label %.thread80

.lr.ph:                                           ; preds = %.thread
  %i.l = icmp eq i16 %.fr65, -1
  br i1 %i.l, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.046.us = phi double [ %.2.us, %bb.h ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %.03745.us = phi i32 [ %.138.us, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.03944.us = phi i32 [ %.140.us, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.04143.us = phi i32 [ %i.ai, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @vacuum_delay_point(i1 noundef zeroext true) #13
  %i.m = call i64 %1(ptr noundef %0, i32 noundef %.04143.us, ptr noundef nonnull %i.a) #13
  %i.n = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.p = add i32 %.03745.us, 1
  %i.q = inttoptr i64 %i.m to ptr                 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = icmp eq i8 %i.r, 1
  br i1 %i.t, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = and i32 %i.s, 1
  %.not.i.us = icmp eq i32 %i.u, 0
  br i1 %.not.i.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i32 %i.s, 1
  %i.w = zext nneg i32 %i.v to i64
  br label %VARSIZE_ANY.exit.us

bb.e:                                             ; preds = %bb.c
  %i.x = load i32, ptr %i.q, align 4
  %i.y = lshr i32 %i.x, 2
  %i.z = zext nneg i32 %i.y to i64
  br label %VARSIZE_ANY.exit.us

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr i8, ptr %i.q, i64 1
  %.val.i.us = load i8, ptr %i.aa, align 1        ; 2 uses
  %i.ab = add i8 %.val.i.us, -1
  %or.cond.i.i.i.us = icmp ult i8 %i.ab, 3
  %i.ac = icmp eq i8 %.val.i.us, 18
  %i.ad = select i1 %i.ac, i64 18, i64 2
  %i.ae = select i1 %or.cond.i.i.i.us, i64 10, i64 %i.ad
  br label %VARSIZE_ANY.exit.us

VARSIZE_ANY.exit.us:                              ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.us = phi i64 [ %i.ae, %bb.f ], [ %i.w, %bb.d ], [ %i.z, %bb.e ]
  %i.af = uitofp nneg i64 %.0.i.us to double
  %i.ag = fadd double %.046.us, %i.af
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.ah = add i32 %.03944.us, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %VARSIZE_ANY.exit.us
  %.140.us = phi i32 [ %i.ah, %bb.g ], [ %.03944.us, %VARSIZE_ANY.exit.us ] ; 2 uses
  %.138.us = phi i32 [ %.03745.us, %bb.g ], [ %i.p, %VARSIZE_ANY.exit.us ] ; 2 uses
  %.2.us = phi double [ %.046.us, %bb.g ], [ %i.ag, %VARSIZE_ANY.exit.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ai = add nuw nsw i32 %.04143.us, 1           ; 2 uses
  %exitcond69.not = icmp eq i32 %i.ai, %2
  br i1 %exitcond69.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !72

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.thread.thread, %.lr.ph.split
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.k
  %.046.us51 = phi double [ %.2.us57, %bb.k ], [ 0.000000e+00, %.lr.ph.split ] ; 2 uses
  %.03745.us52 = phi i32 [ %.138.us56, %bb.k ], [ 0, %.lr.ph.split ] ; 2 uses
  %.03944.us53 = phi i32 [ %.140.us55, %bb.k ], [ 0, %.lr.ph.split ] ; 2 uses
  %.04143.us54 = phi i32 [ %i.at, %bb.k ], [ 0, %.lr.ph.split ] ; 2 uses
end_hunk_1
