Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_basicadj?download=true
inline.NumInlined: 82
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@process:bb.a
  %.neg329.i.i = fmul reassoc nsz arcp contract afn float %..i.i, -2.000000e+00
  %i.rn = fadd reassoc nsz arcp contract afn float %.neg329.i.i, 1.250000e+01
  %i.ro = fadd reassoc nsz arcp contract afn float %i.rn, %.462.i.i
  %i.rp = fadd reassoc nsz arcp contract afn float %i.ro, %.463.i.i
  %.0229.i.i = fmul reassoc nsz arcp contract afn float %i.rp, 5.000000e-01 ; 3 uses
  %i.rq = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rh) ; 3 uses
  %i.rr = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0229.i.i) ; 3 uses
  %i.rs = fsub reassoc nsz arcp contract afn float %i.rq, %i.rr
  %i.rt = fcmp reassoc nsz arcp contract afn ogt float %i.rs, 1.000000e+00
  br i1 %i.rt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge5.i.i
  %i.ru = fmul reassoc nsz arcp contract afn float %i.rh, %i.rr
  %i.rv = fmul reassoc nsz arcp contract afn float %i.rq, %.0229.i.i
  %i.rw = fadd reassoc nsz arcp contract afn float %i.rv, %i.ru
  %i.rx = fadd reassoc nsz arcp contract afn float %i.rq, %i.rr
  %i.ry = fdiv reassoc nsz arcp contract afn float %i.rw, %i.rx
  br label %bb.bg

bb.bf:                                            ; preds = %.critedge5.i.i
  %i.rz = fpext reassoc nsz arcp contract afn float %i.rh to double
  %i.sa = fpext reassoc nsz arcp contract afn float %.0229.i.i to double
  %i.sb = fadd reassoc nsz arcp contract afn double %i.rz, %i.sa
  %i.sc = fmul reassoc nsz arcp contract afn double %i.sb, 5.000000e-01
  %i.sd = fptrunc reassoc nsz arcp contract afn double %i.sc to float
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0215.i.i = phi nsz float [ %i.ry, %bb.be ], [ %i.sd, %bb.bf ] ; 5 uses
  %i.se = fmul reassoc nsz arcp contract afn float %.0215.i.i, f0x3F317218
  %i.sf = call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.se) ; 3 uses
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sf, 6.553600e+04
  %i.sh = fdiv reassoc nsz arcp contract afn float %i.sg, %i.rj
  %i.si = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.sh) ; 3 uses
  %i.sj = fmul reassoc nsz arcp contract afn float %i.si, %i.rb ; 4 uses
  %i.sk = sitofp reassoc nsz arcp contract afn i32 %i.qw to float ; 2 uses
  %i.sl = fmul reassoc nnan nsz arcp contract afn float %i.sk, f0x38133333
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, %i.sf
  %i.sn = fadd reassoc nsz arcp contract afn float %i.sm, -2.300000e+00
  %i.so = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.0215.i.i, float 0.000000e+00)
  %i.sp = fadd reassoc nsz arcp contract afn float %i.so, 1.000000e+00
  %i.sq = fdiv reassoc nsz arcp contract afn float %i.sn, %i.sp
  %i.sr = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sq, float 1.000000e+02)
  %i.ss = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sr, float 0.000000e+00) ; 2 uses
  %i.st = sitofp reassoc nsz arcp contract afn i32 %i.qy to float
  %i.su = fmul reassoc nsz arcp contract afn float %i.qx, %i.st
  %i.sv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.su)
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sf, %i.sv ; 2 uses
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, f0x37800000 ; 3 uses
  %i.sy = fcmp reassoc nsz arcp contract afn olt float %i.sx, 1.000000e-01
  %i.sz = fsub reassoc nsz arcp contract afn float %i.cg, %i.sx
  %i.ta = fmul reassoc nsz arcp contract afn float %i.sz, 1.500000e+01 ; 2 uses
  br i1 %i.sy, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.tb = fdiv reassoc nsz arcp contract afn float %i.ta, %i.sx
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.tc = fpext reassoc nsz arcp contract afn float %i.ta to double
  %i.td = fmul reassoc nsz arcp contract afn float %i.sw, f0x35AA9931
  %i.te = fpext reassoc nsz arcp contract afn float %i.td to double
  %i.tf = fsub reassoc nsz arcp contract afn double 1.083300e-01, %i.te
  %i.tg = fdiv reassoc nsz arcp contract afn double %i.tc, %i.tf
  %i.th = fptrunc reassoc nsz arcp contract afn double %i.tg to float
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.0222.i.i = phi nsz float [ %i.tb, %bb.bh ], [ %i.th, %bb.bi ] ; 2 uses
  %i.ti = fcmp reassoc nsz arcp contract afn olt float %.0222.i.i, 0.000000e+00
  %i.tj = select reassoc nsz arcp contract afn i1 %i.ti, float 0.000000e+00, float %.0222.i.i
  %i.tk = fmul reassoc nsz arcp contract afn float %i.tj, 2.500000e-01 ; 2 uses
  %i.tl = fsub reassoc nsz arcp contract afn float 1.100000e+00, %i.pd
  %i.tm = fmul reassoc nsz arcp contract afn float %i.tl, %i.cf ; 2 uses
  %i.tn = fcmp reassoc nsz arcp contract afn ogt float %i.tm, 1.000000e+02
  %i.to = select reassoc nsz arcp contract afn i1 %i.tn, float 1.000000e+02, float %i.tm ; 2 uses
  %i.tp = fcmp reassoc nsz arcp contract afn olt float %i.to, 0.000000e+00
  %i.tq = select reassoc nsz arcp contract afn i1 %i.tp, float 0.000000e+00, float %i.to
  %i.tr = fmul reassoc nsz arcp contract afn float %i.si, %i.sk
  %i.ts = fpext reassoc nsz arcp contract afn float %i.tr to double ; 3 uses
  %i.tt = fcmp reassoc nsz arcp contract afn ugt double %i.ts, 3.040000e-03
  br i1 %i.tt, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.tu = fmul reassoc nnan nsz arcp contract afn double %i.ts, 1.292000e+01
  br label %gamma2.exit.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.tv = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.ts)
  %i.tw = fmul reassoc nsz arcp contract afn double %i.tv, f0x3FDAAAAAAAAAAAAB
  %i.tx = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.tw)
  %i.ty = fmul reassoc nsz arcp contract afn double %i.tx, 1.055000e+00
  %i.tz = fadd reassoc nsz arcp contract afn double %i.ty, -5.500000e-02
  br label %gamma2.exit.i.i

gamma2.exit.i.i:                                  ; preds = %bb.bl, %bb.bk
  %i.ua = phi reassoc nsz arcp contract afn double [ %i.tu, %bb.bk ], [ %i.tz, %bb.bl ] ; 3 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %i.si, 8.000000e+00 ; 3 uses
  %invariant.op359 = fadd reassoc nsz arcp contract afn float %i.ub, %i.ub
  br label %.lr.ph371.i.i

._crit_edge372.i.i:                               ; preds = %gamma2.exit275.i.i.1
  %i.uc = fdiv reassoc nsz arcp contract afn float %i.vl, %i.hk ; 2 uses
  %i.ud = fcmp reassoc nsz arcp contract afn olt float %i.sj, %i.uc
  br i1 %i.ud, label %bb.bq, label %bb.br

.lr.ph371.i.i:                                    ; preds = %gamma2.exit275.i.i.1, %gamma2.exit.i.i
  %indvars.iv408.i.i = phi i64 [ 0, %gamma2.exit.i.i ], [ %indvars.iv.next409.i.i.1, %gamma2.exit275.i.i.1 ] ; 3 uses
  %.0216369.i.i = phi float [ 0.000000e+00, %gamma2.exit.i.i ], [ %.reass, %gamma2.exit275.i.i.1 ] ; 3 uses
  %.0217368.i.i = phi float [ 0.000000e+00, %gamma2.exit.i.i ], [ %i.vl, %gamma2.exit275.i.i.1 ]
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv408.i.i
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !15
  %i.ug = uitofp reassoc nsz arcp contract afn i32 %i.uf to double
  %i.uh = fpext reassoc nsz arcp contract afn float %.0216369.i.i to double ; 3 uses
  %i.ui = fcmp reassoc nsz arcp contract afn ugt double %i.uh, 3.040000e-03
  br i1 %i.ui, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph371.i.i
  %i.uj = fmul reassoc nnan nsz arcp contract afn double %i.uh, 1.292000e+01
  br label %gamma2.exit275.i.i

bb.bn:                                            ; preds = %.lr.ph371.i.i
  %i.uk = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.uh)
  %i.ul = fmul reassoc nsz arcp contract afn double %i.uk, f0x3FDAAAAAAAAAAAAB
  %i.um = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.ul)
  %i.un = fmul reassoc nsz arcp contract afn double %i.um, 1.055000e+00
  %i.uo = fadd reassoc nsz arcp contract afn double %i.un, -5.500000e-02
  br label %gamma2.exit275.i.i

gamma2.exit275.i.i:                               ; preds = %bb.bn, %bb.bm
  %i.up = phi reassoc nsz arcp contract afn double [ %i.uj, %bb.bm ], [ %i.uo, %bb.bn ]
  %i.uq = fmul reassoc nsz arcp contract afn double %i.up, %i.ug
  %i.ur = fpext reassoc nsz arcp contract afn float %.0217368.i.i to double
  %i.us = fadd reassoc nsz arcp contract afn double %i.uq, %i.ur
  %i.ut = fptrunc reassoc nsz arcp contract afn double %i.us to float
  %i.uu = fadd reassoc nsz arcp contract afn float %.0216369.i.i, %i.ub
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv408.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !15
  %i.uy = uitofp reassoc nsz arcp contract afn i32 %i.ux to double
  %i.uz = fpext reassoc nsz arcp contract afn float %i.uu to double ; 3 uses
  %i.va = fcmp reassoc nsz arcp contract afn ugt double %i.uz, 3.040000e-03
  br i1 %i.va, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %gamma2.exit275.i.i
  %i.vb = fmul reassoc nnan nsz arcp contract afn double %i.uz, 1.292000e+01
  br label %gamma2.exit275.i.i.1

bb.bp:                                            ; preds = %gamma2.exit275.i.i
  %i.vc = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.uz)
  %i.vd = fmul reassoc nsz arcp contract afn double %i.vc, f0x3FDAAAAAAAAAAAAB
  %i.ve = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.vd)
  %i.vf = fmul reassoc nsz arcp contract afn double %i.ve, 1.055000e+00
  %i.vg = fadd reassoc nsz arcp contract afn double %i.vf, -5.500000e-02
  br label %gamma2.exit275.i.i.1

gamma2.exit275.i.i.1:                             ; preds = %bb.bp, %bb.bo
  %i.vh = phi reassoc nsz arcp contract afn double [ %i.vb, %bb.bo ], [ %i.vg, %bb.bp ]
  %i.vi = fmul reassoc nsz arcp contract afn double %i.vh, %i.uy
  %i.vj = fpext reassoc nsz arcp contract afn float %i.ut to double
  %i.vk = fadd reassoc nsz arcp contract afn double %i.vi, %i.vj
  %i.vl = fptrunc reassoc nsz arcp contract afn double %i.vk to float ; 2 uses
  %.reass = fadd reassoc nsz arcp contract afn float %.0216369.i.i, %invariant.op359
  %indvars.iv.next409.i.i.1 = add nuw nsw i64 %indvars.iv408.i.i, 2 ; 2 uses
  %exitcond412.not.i.i.1 = icmp eq i64 %indvars.iv.next409.i.i.1, 8192
  br i1 %exitcond412.not.i.i.1, label %._crit_edge372.i.i, label %.lr.ph371.i.i

bb.bq:                                            ; preds = %._crit_edge372.i.i
  %i.vm = fsub reassoc nsz arcp contract afn float %i.uc, %i.sj
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, f0x3FAAAAAB
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vn, %i.sj
  %i.vp = fptosi float %i.vo to i32
  %i.vq = sitofp reassoc nsz arcp contract afn i32 %i.vp to double ; 2 uses
  %i.vr = fcmp reassoc nsz arcp contract afn olt double %i.ua, %i.vq
  %spec.select.i.i = select nsz i1 %i.vr, double %i.vq, double %i.ua
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge372.i.i
  %.1219.i.i = phi nsz double [ %spec.select.i.i, %bb.bq ], [ %i.ua, %._crit_edge372.i.i ] ; 3 uses
  %i.vs = fcmp reassoc nsz arcp contract afn ugt double %.1219.i.i, 3.928000e-02
  br i1 %i.vs, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vt = fmul reassoc nnan nsz arcp contract afn double %.1219.i.i, f0x3FB3D0722149B580
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.vu = fmul reassoc nsz arcp contract afn double %.1219.i.i, f0x3FEE54EDCD0AEB60
  %i.vv = fadd reassoc nsz arcp contract afn double %i.vu, f0x3FAAB1232F514A03
  %i.vw = call reassoc nsz arcp contract afn double @llvm.log.f64(double %i.vv)
  %i.vx = fmul reassoc nsz arcp contract afn double %i.vw, 2.400000e+00
  %i.vy = call reassoc nsz arcp contract afn double @llvm.exp.f64(double %i.vx)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.vz = phi reassoc nsz arcp contract afn double [ %i.vt, %bb.bs ], [ %i.vy, %bb.bt ]
  %i.wa = fpext reassoc nsz arcp contract afn float %i.sj to double
  %i.wb = fdiv reassoc nsz arcp contract afn double %i.wa, %i.vz
  %i.wc = fptrunc reassoc nsz arcp contract afn double %i.wb to float
  %i.wd = fcmp reassoc nsz arcp contract afn ogt float %.0215.i.i, 1.200000e+01
  %6 = fcmp reassoc nsz arcp contract afn olt float %.0215.i.i, -5.000000e+00
  %7 = select reassoc nsz arcp contract afn i1 %6, float -5.000000e+00, float %.0215.i.i
  %8 = select reassoc nsz arcp contract afn i1 %i.wd, float 1.200000e+01, float %7 ; 2 uses
  %i.we = fcmp reassoc nsz arcp contract afn olt float %i.tk, 1.000000e+02
  %i.wf = select reassoc nsz arcp contract afn i1 %i.we, float %i.tk, float 1.000000e+02 ; 2 uses
  %i.wg = fcmp reassoc nsz arcp contract afn olt float %i.wf, -1.000000e+02
  %i.wh = select reassoc nsz arcp contract afn i1 %i.wg, float -1.000000e+02, float %i.wf
  %i.wi = fmul reassoc nsz arcp contract afn float %i.wc, f0x3C23D70A ; 2 uses
  %i.wj = fmul reassoc nsz arcp contract afn float %i.wh, f0x3C23D70A ; 2 uses
  %i.wk = fmul reassoc nsz arcp contract afn float %i.tq, f0x3C23D70A ; 2 uses
  %9 = fcmp ord float %8, 0.000000e+00
  br i1 %9, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.57) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.2.i.i = phi nsz float [ %8, %bb.bu ], [ 0.000000e+00, %bb.bv ] ; 2 uses
  %10 = fcmp ord float %i.wi, 0.000000e+00
  br i1 %10, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.58) #23
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.1221.i.i = phi nsz float [ %i.wi, %bb.bw ], [ 0.000000e+00, %bb.bx ] ; 2 uses
  %11 = fcmp ord float %i.wj, 0.000000e+00
  br i1 %11, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.59) #23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.2224.i.i = phi nsz float [ %i.wj, %bb.by ], [ 0.000000e+00, %bb.bz ] ; 2 uses
  %12 = fcmp ord float %i.wk, 0.000000e+00
  br i1 %12, label %_auto_exposure.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.60) #23
  br label %_auto_exposure.exit

_auto_exposure.exit:                              ; preds = %middle.block, %._crit_edge.i14.i, %.preheader334.i.i, %._crit_edge350.i.i, %.preheader.i.i, %bb.ca, %bb.cb
  %.2224326.i.i = phi float [ %.2224.i.i, %bb.ca ], [ %.2224.i.i, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.2304312325.i.i = phi float [ %.2.i.i, %bb.ca ], [ %.2.i.i, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.0227290303313324.i.i = phi float [ %i.ss, %bb.ca ], [ %i.ss, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.1221315323.i.i = phi float [ %.1221.i.i, %bb.ca ], [ %.1221.i.i, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  %.1226.i.i = phi nsz float [ %i.wk, %bb.ca ], [ 0.000000e+00, %bb.cb ], [ 0.000000e+00, %.preheader.i.i ], [ 0.000000e+00, %._crit_edge350.i.i ], [ 0.000000e+00, %._crit_edge.i14.i ], [ 0.000000e+00, %middle.block ], [ 0.000000e+00, %.preheader334.i.i ]
  store float %.2304312325.i.i, ptr %i.ch, align 4, !tbaa !12
  store float %.1221315323.i.i, ptr %i.m, align 8, !tbaa !12
  store float %.2224326.i.i, ptr %i.ci, align 4, !tbaa !12
  store float %.1226.i.i, ptr %i.cj, align 8, !tbaa !12
  store float %.0227290303313324.i.i, ptr %i.ck, align 8, !tbaa !12
  store float 0.000000e+00, ptr %i.cl, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @free(ptr noundef nonnull %i.cm) #23
  %i.wl = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.r) #23 ; 0 uses
  store i32 2, ptr %i.t, align 4, !tbaa !110
  %i.wm = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #23 ; 0 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.d, %bb.c
  %i.wn = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.r) #23 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %_auto_exposure.exit, %bb.cc, %bb.b, %bb.a
  %i.wo = load float, ptr %i.k, align 4, !tbaa !202 ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !203 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !204
  %i.wt = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !205 ; 2 uses
  %i.wv = fadd reassoc nsz arcp contract afn float %i.wu, 1.000000e+00
  %i.ww = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !206 ; 2 uses
  %i.wy = fmul reassoc nsz arcp contract afn float %i.wx, f0x3F36DB6E ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !130 ; 2 uses
  %i.xb = fadd reassoc nsz arcp contract afn float %i.xa, 1.000000e+00 ; 4 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !120 ; 2 uses
  %i.xe = fcmp reassoc nsz arcp contract afn ogt float %i.xd, 0.000000e+00
  %i.xf = fmul reassoc nnan nsz arcp contract afn float %i.xd, f0x3C23D70A
  %spec.select = select reassoc nsz arcp contract afn i1 %i.xe, float %i.xf, float 1.842000e-01 ; 5 uses
  %i.xg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select ; 4 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !129 ; 2 uses
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, 2.000000e+00 ; 3 uses
  %i.xk = fcmp reassoc nsz arcp contract afn ult float %i.xj, 0.000000e+00
  %i.xl = fadd reassoc nsz arcp contract afn float %i.xj, 1.000000e+00
  %i.xm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xl
  %i.xn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.xj
  %i.xo = select reassoc nsz arcp contract afn i1 %i.xk, float %i.xn, float %i.xm ; 3 uses
  %i.xp = fmul reassoc nsz arcp contract afn float %i.wq, f0x3C23D70A ; 2 uses
  %i.xq = fmul reassoc nsz arcp contract afn float %i.ws, 1.250000e-03 ; 2 uses
  %i.xr = fsub reassoc nsz arcp contract afn float f0x3F666666, %i.xq ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !131 ; 2 uses
  %.not211 = icmp eq i32 %i.xt, 0
  %i.xu = fcmp reassoc nsz arcp contract afn une float %i.xa, 0.000000e+00 ; 2 uses
  %spec.select222 = select i1 %.not211, i1 %i.xu, i1 false ; 3 uses
  %i.xv = select i1 %i.xu, i32 %i.xt, i32 0
  %i.xw = fcmp reassoc nsz arcp contract afn une float %i.xi, 0.000000e+00 ; 3 uses
  %i.xx = fcmp reassoc nsz arcp contract afn une float %i.wu, 0.000000e+00
  %i.xy = fcmp reassoc nsz arcp contract afn une float %i.wx, 0.000000e+00
  %i.xz = select i1 %i.xx, i1 true, i1 %i.xy
  %i.ya = fcmp reassoc nsz arcp contract afn ogt float %i.wq, 0.000000e+00
  %i.yb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !194
  %i.yd = sext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !193
  %i.yg = sext i32 %i.yf to i64
  %i.yh = sext i32 %i.i to i64                    ; 2 uses
  %i.yi = mul nsw i64 %i.yd, %i.yh
  %i.yj = mul i64 %i.yi, %i.yg                    ; 2 uses
  %.not242 = icmp eq i64 %i.yj, 0
  br i1 %.not242, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.cd
  %i.yk = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !207
  %i.ym = fneg reassoc nsz arcp contract afn float %i.yl
  %i.yn = call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ym)
  %i.yo = fsub reassoc nsz arcp contract afn float %i.yn, %i.wo ; 3 uses
  %.not212 = icmp eq ptr %i.g, null               ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.g, i64 576 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.g, i64 712 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.g, i64 768 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.g, i64 704 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.g, i64 852 ; 2 uses
  %i.yu = fcmp reassoc nsz arcp contract afn ogt float %i.xp, 0.000000e+00
  %i.yv = fsub reassoc nsz arcp contract afn float f0xBDCCCCD0, %i.xq
  %i.yw = getelementptr inbounds nuw i8, ptr %i.k, i64 44 ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.k, i64 262188 ; 3 uses
  %i.yy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.wy)
  %i.yz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yo ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.yz, f0x3E63D838
  %i.za = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yo
  %i.zb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yo
  %i.zc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xr
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %.0200240 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.aih, %.loopexit ] ; 6 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0200240
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !12
  %i.zf = fsub reassoc nsz arcp contract afn float %i.ze, %i.wo ; 2 uses
  %i.zg = fmul reassoc nsz arcp contract afn float %i.zf, %i.yz
  %i.zh = getelementptr [4 x i8], ptr %3, i64 %.0200240 ; 43 uses
  store float %i.zg, ptr %i.zh, align 4, !tbaa !12
  %i.zi = add nuw i64 %.0200240, 1                ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zi
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !12
  %i.zl = fsub reassoc nsz arcp contract afn float %i.zk, %i.wo
  %i.zm = fmul reassoc nsz arcp contract afn float %i.zl, %i.za
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zi
  store float %i.zm, ptr %i.zn, align 4, !tbaa !12
  %i.zo = add i64 %.0200240, 2                    ; 2 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zo
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !12
  %i.zr = fsub reassoc nsz arcp contract afn float %i.zq, %i.wo
  %i.zs = fmul reassoc nsz arcp contract afn float %i.zr, %i.zb
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.zo
  store float %i.zs, ptr %i.zt, align 4, !tbaa !12
  br i1 %i.ya, label %bb.ce, label %.loopexit226

._crit_edge:                                      ; preds = %.loopexit, %bb.cd
  ret void

bb.ce:                                            ; preds = %.preheader
  br i1 %.not212, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.zu = load i32, ptr %i.ys, align 64, !tbaa !118
  %i.zv = load i32, ptr %i.yt, align 4, !tbaa !119
  %i.zw = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %i.zh, ptr noundef %i.yp, ptr noundef %i.yq, ptr noundef %i.yr, i32 noundef %i.zu, i32 noundef %i.zv)
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %.reass310 = fmul reassoc nsz arcp contract afn float %i.zf, %invariant.op
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !12
  %i.zz = fmul reassoc nsz arcp contract afn float %i.zy, f0x3F37855B
  %i.aaa = fadd reassoc nsz arcp contract afn float %i.zz, %.reass310
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !12
  %i.aad = fmul reassoc nsz arcp contract afn float %i.aac, 6.061690e-02
  %i.aae = fadd reassoc nsz arcp contract afn float %i.aaa, %i.aad
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.aaf = phi reassoc nsz arcp contract afn float [ %i.zw, %bb.cf ], [ %i.aae, %bb.cg ] ; 2 uses
  %i.aag = fcmp reassoc nsz arcp contract afn ogt float %i.aaf, 0.000000e+00
  br i1 %i.aag, label %bb.ci, label %.loopexit226

bb.ci:                                            ; preds = %bb.ch
  br i1 %i.yu, label %bb.cj, label %hlcurve.exit

bb.cj:                                            ; preds = %bb.ci
  %i.aah = fadd reassoc nsz arcp contract afn float %i.yv, %i.aaf ; 2 uses
  %i.aai = fcmp reassoc nsz arcp contract afn oeq float %i.aah, 0.000000e+00
  %spec.store.select.i = select i1 %i.aai, float f0x358637BD, float %i.aah
  %i.aaj = fmul reassoc nsz arcp contract afn float %spec.store.select.i, %i.xp ; 2 uses
  %i.aak = fmul reassoc nsz arcp contract afn float %i.aaj, %i.zc ; 2 uses
  %i.aal = fcmp reassoc nsz arcp contract afn ole float %i.aak, -1.000000e+00
  %spec.store.select1.i = select i1 %i.aal, float f0xBF7FFFEF, float %i.aak
  %i.aam = call reassoc nsz arcp contract afn float @log1pf(float noundef %spec.store.select1.i) #24
  %i.aan = fmul reassoc nsz arcp contract afn float %i.aam, %i.xr
  %i.aao = fdiv reassoc nsz arcp contract afn float %i.aan, %i.aaj
  br label %hlcurve.exit

hlcurve.exit:                                     ; preds = %bb.ci, %bb.cj
  %.0.i = phi nsz float [ %i.aao, %bb.cj ], [ 1.000000e+00, %bb.ci ] ; 2 uses
  %i.aap = load <2 x float>, ptr %i.zh, align 4, !tbaa !12
  %i.aaq = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.aar = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aas = fmul reassoc nsz arcp contract afn <2 x float> %i.aap, %i.aar
  store <2 x float> %i.aas, ptr %i.zh, align 4, !tbaa !12
  %i.aat = getelementptr i8, ptr %i.zh, i64 8     ; 2 uses
  %i.aau = load float, ptr %i.aat, align 4, !tbaa !12
  %i.aav = fmul reassoc nsz arcp contract afn float %i.aau, %.0.i
  store float %i.aav, ptr %i.aat, align 4, !tbaa !12
  br label %.loopexit226

.loopexit226:                                     ; preds = %hlcurve.exit, %bb.ch, %.preheader
  br i1 %i.xw, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %.loopexit226
  %i.aaw = load float, ptr %i.zh, align 4, !tbaa !12 ; 4 uses
  %i.aax = fcmp reassoc nsz arcp contract afn ogt float %i.aaw, 0.000000e+00
  br i1 %i.aax, label %bb.cl, label %bb.co

bb.cl:                                            ; preds = %bb.ck
  %i.aay = fcmp reassoc nsz arcp contract afn ogt float %i.aaw, 1.000000e+00
  br i1 %i.aay, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.aaz = call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.aaw, float %i.xo)
  br label %get_lut_gamma.exit

bb.cn:                                            ; preds = %bb.cl
  %i.aba = fmul reassoc nnan nsz arcp contract afn float %i.aaw, 6.553600e+04
  %i.abb = fptosi float %i.aba to i32
  %i.abc = call i32 @llvm.umin.i32(i32 %i.abb, i32 65535)
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.yw, i64 %i.abd
end_hunk_0
