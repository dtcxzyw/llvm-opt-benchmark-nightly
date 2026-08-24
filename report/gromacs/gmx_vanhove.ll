Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_vanhove?download=true
inline.NumInlined: 322
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z11gmx_vanhoveiPPc:bb.a
  %i.nb = getelementptr i8, ptr %i.mz, i64 -8
  %wide.trip.count726 = zext nneg i32 %i.mx to i64
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph621, %.loopexit557
  %indvars.iv723 = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next724, %.loopexit557 ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %i.na, i64 %indvars.iv723 ; 10 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !34 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4 ; 7 uses
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !34 ; 2 uses
  %i.ng = fmul float %i.mv, %i.nf
  %i.nh = call float @llvm.fmuladd.f32(float %i.mt, float %i.nd, float %i.ng)
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nc, i64 8 ; 8 uses
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !34
  %i.nk = call float @llvm.fmuladd.f32(float %i.mw, float %i.nj, float %i.nh) ; 4 uses
  store float %i.nk, ptr %i.ni, align 4, !tbaa !34
  %i.nl = fmul float %i.mq, %i.nf
  %i.nm = call float @llvm.fmuladd.f32(float %i.mp, float %i.nd, float %i.nl) ; 3 uses
  store float %i.nm, ptr %i.ne, align 4, !tbaa !34
  %i.nn = fmul float %i.mn, %i.nd                 ; 3 uses
  store float %i.nn, ptr %i.nc, align 4, !tbaa !34
  br i1 %.not330, label %.loopexit557, label %.preheader556

.preheader556:                                    ; preds = %bb.bs
  %i.no = load ptr, ptr %i.nb, align 8, !tbaa !36
  %i.np = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %indvars.iv723 ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 3 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !34
  %i.ns = fsub float %i.nk, %i.nr
  %i.nt = fpext float %i.ns to double             ; 2 uses
  %i.nu = fcmp olt double %i.km, %i.nt
  br i1 %i.nu, label %.lr.ph611, label %.preheader553

.preheader553:                                    ; preds = %.lr.ph611, %.preheader556
  %.pre-phi824 = phi double [ %i.nt, %.preheader556 ], [ %i.oh, %.lr.ph611 ]
  %i.nv = phi float [ %i.nm, %.preheader556 ], [ %i.od, %.lr.ph611 ] ; 2 uses
  %i.nw = phi float [ %i.nn, %.preheader556 ], [ %i.oc, %.lr.ph611 ] ; 2 uses
  %i.nx = phi float [ %i.nk, %.preheader556 ], [ %i.oe, %.lr.ph611 ] ; 2 uses
  %i.ny = fcmp ult double %i.kn, %.pre-phi824
  br i1 %i.ny, label %._crit_edge617, label %.lr.ph616

.lr.ph611:                                        ; preds = %.preheader556, %.lr.ph611
  %i.nz = phi float [ %i.oe, %.lr.ph611 ], [ %i.nk, %.preheader556 ]
  %i.oa = phi float [ %i.od, %.lr.ph611 ], [ %i.nm, %.preheader556 ]
  %i.ob = phi float [ %i.oc, %.lr.ph611 ], [ %i.nn, %.preheader556 ]
  %i.oc = fsub float %i.ob, %i.ki                 ; 3 uses
  %i.od = fsub float %i.oa, %i.kj                 ; 3 uses
  %i.oe = fsub float %i.nz, %i.kk                 ; 4 uses
  store float %i.oc, ptr %i.nc, align 4, !tbaa !34
  store float %i.od, ptr %i.ne, align 4, !tbaa !34
  store float %i.oe, ptr %i.ni, align 4, !tbaa !34
  %i.of = load float, ptr %i.nq, align 4, !tbaa !34
  %i.og = fsub float %i.oe, %i.of
  %i.oh = fpext float %i.og to double             ; 2 uses
  %i.oi = fcmp olt double %i.km, %i.oh
  br i1 %i.oi, label %.lr.ph611, label %.preheader553, !llvm.loop !52

.lr.ph616:                                        ; preds = %.preheader553, %.lr.ph616
  %i.oj = phi float [ %i.oo, %.lr.ph616 ], [ %i.nx, %.preheader553 ]
  %i.ok = phi float [ %i.on, %.lr.ph616 ], [ %i.nv, %.preheader553 ]
  %i.ol = phi float [ %i.om, %.lr.ph616 ], [ %i.nw, %.preheader553 ]
  %i.om = fadd float %i.ol, %i.ki                 ; 3 uses
  %i.on = fadd float %i.ok, %i.kj                 ; 3 uses
  %i.oo = fadd float %i.oj, %i.kk                 ; 4 uses
  store float %i.om, ptr %i.nc, align 4, !tbaa !34
  store float %i.on, ptr %i.ne, align 4, !tbaa !34
  store float %i.oo, ptr %i.ni, align 4, !tbaa !34
  %i.op = load float, ptr %i.nq, align 4, !tbaa !34
  %i.oq = fsub float %i.oo, %i.op
  %i.or = fpext float %i.oq to double
  %i.os = fcmp ult double %i.kn, %i.or
  br i1 %i.os, label %._crit_edge617, label %.lr.ph616, !llvm.loop !53

._crit_edge617:                                   ; preds = %.lr.ph616, %.preheader553
  %i.ot = phi float [ %i.nx, %.preheader553 ], [ %i.oo, %.lr.ph616 ] ; 2 uses
  %i.ou = phi float [ %i.nw, %.preheader553 ], [ %i.om, %.lr.ph616 ] ; 2 uses
  %i.ov = phi float [ %i.nv, %.preheader553 ], [ %i.on, %.lr.ph616 ] ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 3 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !34
  %i.oy = fsub float %i.ov, %i.ox
  %i.oz = fpext float %i.oy to double             ; 2 uses
  %i.pa = fcmp olt double %i.kp, %i.oz
  br i1 %i.pa, label %.lr.ph611.1, label %.preheader553.1

.lr.ph611.1:                                      ; preds = %._crit_edge617, %.lr.ph611.1
  %i.pb = phi float [ %i.pg, %.lr.ph611.1 ], [ %i.ot, %._crit_edge617 ]
  %i.pc = phi float [ %i.pf, %.lr.ph611.1 ], [ %i.ov, %._crit_edge617 ]
  %i.pd = phi float [ %i.pe, %.lr.ph611.1 ], [ %i.ou, %._crit_edge617 ]
  %i.pe = fsub float %i.pd, %i.kd                 ; 3 uses
  %i.pf = fsub float %i.pc, %i.kf                 ; 4 uses
  %i.pg = fsub float %i.pb, %i.kh                 ; 3 uses
  store float %i.pe, ptr %i.nc, align 4, !tbaa !34
  store float %i.pf, ptr %i.ne, align 4, !tbaa !34
  store float %i.pg, ptr %i.ni, align 4, !tbaa !34
  %i.ph = load float, ptr %i.ow, align 4, !tbaa !34
  %i.pi = fsub float %i.pf, %i.ph
  %i.pj = fpext float %i.pi to double             ; 2 uses
  %i.pk = fcmp olt double %i.kp, %i.pj
  br i1 %i.pk, label %.lr.ph611.1, label %.preheader553.1, !llvm.loop !52

.preheader553.1:                                  ; preds = %.lr.ph611.1, %._crit_edge617
  %.pre-phi826 = phi double [ %i.oz, %._crit_edge617 ], [ %i.pj, %.lr.ph611.1 ]
  %i.pl = phi float [ %i.ot, %._crit_edge617 ], [ %i.pg, %.lr.ph611.1 ] ; 2 uses
  %i.pm = phi float [ %i.ou, %._crit_edge617 ], [ %i.pe, %.lr.ph611.1 ] ; 2 uses
  %i.pn = phi float [ %i.ov, %._crit_edge617 ], [ %i.pf, %.lr.ph611.1 ] ; 2 uses
  %i.po = fcmp ult double %i.kq, %.pre-phi826
  br i1 %i.po, label %._crit_edge617.1, label %.lr.ph616.1

.lr.ph616.1:                                      ; preds = %.preheader553.1, %.lr.ph616.1
  %i.pp = phi float [ %i.pu, %.lr.ph616.1 ], [ %i.pl, %.preheader553.1 ]
  %i.pq = phi float [ %i.pt, %.lr.ph616.1 ], [ %i.pn, %.preheader553.1 ]
  %i.pr = phi float [ %i.ps, %.lr.ph616.1 ], [ %i.pm, %.preheader553.1 ]
  %i.ps = fadd float %i.pr, %i.kd                 ; 3 uses
  %i.pt = fadd float %i.pq, %i.kf                 ; 4 uses
  %i.pu = fadd float %i.pp, %i.kh                 ; 3 uses
  store float %i.ps, ptr %i.nc, align 4, !tbaa !34
  store float %i.pt, ptr %i.ne, align 4, !tbaa !34
  store float %i.pu, ptr %i.ni, align 4, !tbaa !34
  %i.pv = load float, ptr %i.ow, align 4, !tbaa !34
  %i.pw = fsub float %i.pt, %i.pv
  %i.px = fpext float %i.pw to double
  %i.py = fcmp ult double %i.kq, %i.px
  br i1 %i.py, label %._crit_edge617.1, label %.lr.ph616.1, !llvm.loop !53

._crit_edge617.1:                                 ; preds = %.lr.ph616.1, %.preheader553.1
  %i.pz = phi float [ %i.pl, %.preheader553.1 ], [ %i.pu, %.lr.ph616.1 ] ; 2 uses
  %i.qa = phi float [ %i.pn, %.preheader553.1 ], [ %i.pt, %.lr.ph616.1 ] ; 2 uses
  %i.qb = phi float [ %i.pm, %.preheader553.1 ], [ %i.ps, %.lr.ph616.1 ] ; 3 uses
  %i.qc = load float, ptr %i.np, align 4, !tbaa !34
  %i.qd = fsub float %i.qb, %i.qc
  %i.qe = fpext float %i.qd to double             ; 2 uses
  %i.qf = fcmp olt double %i.kt, %i.qe
  br i1 %i.qf, label %.lr.ph611.2, label %.preheader553.2

.lr.ph611.2:                                      ; preds = %._crit_edge617.1, %.lr.ph611.2
  %i.qg = phi float [ %i.ql, %.lr.ph611.2 ], [ %i.pz, %._crit_edge617.1 ]
  %i.qh = phi float [ %i.qk, %.lr.ph611.2 ], [ %i.qa, %._crit_edge617.1 ]
  %i.qi = phi float [ %i.qj, %.lr.ph611.2 ], [ %i.qb, %._crit_edge617.1 ]
  %i.qj = fsub float %i.qi, %i.kr                 ; 4 uses
  %i.qk = fsub float %i.qh, %i.kv                 ; 3 uses
  %i.ql = fsub float %i.qg, %i.kb                 ; 3 uses
  store float %i.qj, ptr %i.nc, align 4, !tbaa !34
  store float %i.qk, ptr %i.ne, align 4, !tbaa !34
  store float %i.ql, ptr %i.ni, align 4, !tbaa !34
  %i.qm = load float, ptr %i.np, align 4, !tbaa !34
  %i.qn = fsub float %i.qj, %i.qm
  %i.qo = fpext float %i.qn to double             ; 2 uses
  %i.qp = fcmp olt double %i.kt, %i.qo
  br i1 %i.qp, label %.lr.ph611.2, label %.preheader553.2, !llvm.loop !52

.preheader553.2:                                  ; preds = %.lr.ph611.2, %._crit_edge617.1
  %.pre-phi828 = phi double [ %i.qe, %._crit_edge617.1 ], [ %i.qo, %.lr.ph611.2 ]
  %i.qq = phi float [ %i.pz, %._crit_edge617.1 ], [ %i.ql, %.lr.ph611.2 ]
  %i.qr = phi float [ %i.qa, %._crit_edge617.1 ], [ %i.qk, %.lr.ph611.2 ]
  %i.qs = phi float [ %i.qb, %._crit_edge617.1 ], [ %i.qj, %.lr.ph611.2 ]
  %i.qt = fcmp ult double %i.ku, %.pre-phi828
  br i1 %i.qt, label %.loopexit557, label %.lr.ph616.2.preheader

.lr.ph616.2.preheader:                            ; preds = %.preheader553.2
  %i.qu = insertelement <2 x float> poison, float %i.qs, i64 0
  %i.qv = insertelement <2 x float> %i.qu, float %i.qr, i64 1
  br label %.lr.ph616.2

.lr.ph616.2:                                      ; preds = %.lr.ph616.2.preheader, %.lr.ph616.2
  %i.qw = phi float [ %i.qz, %.lr.ph616.2 ], [ %i.qq, %.lr.ph616.2.preheader ]
  %i.qx = phi <2 x float> [ %i.qy, %.lr.ph616.2 ], [ %i.qv, %.lr.ph616.2.preheader ]
  %i.qy = fadd <2 x float> %i.qx, %i.jz           ; 3 uses
  %i.qz = fadd float %i.qw, %i.kb                 ; 2 uses
  store <2 x float> %i.qy, ptr %i.nc, align 4, !tbaa !34
  store float %i.qz, ptr %i.ni, align 4, !tbaa !34
  %i.ra = load float, ptr %i.np, align 4, !tbaa !34
  %i.rb = extractelement <2 x float> %i.qy, i64 0
  %i.rc = fsub float %i.rb, %i.ra
  %i.rd = fpext float %i.rc to double
  %i.re = fcmp ult double %i.ku, %i.rd
  br i1 %i.re, label %.loopexit557, label %.lr.ph616.2, !llvm.loop !53

.loopexit557:                                     ; preds = %.lr.ph616.2, %.preheader553.2, %bb.bs
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %.loopexit560, label %bb.bs, !llvm.loop !54

.loopexit560:                                     ; preds = %.loopexit557, %bb.br, %bb.bi
  %.not685 = icmp eq i64 %indvars.iv752, 0
  br i1 %.not685, label %._crit_edge630, label %.lr.ph629

.lr.ph629:                                        ; preds = %.loopexit560
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %.1541, i64 %indvars.iv752
  %i.rg = load ptr, ptr %i.f, align 8
  %.not327 = icmp eq ptr %i.rg, null
  %i.rh = load ptr, ptr %i.g, align 8
  %.not328 = icmp eq ptr %i.rh, null
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph629, %bb.ch
  %indvars.iv734 = phi i64 [ 0, %.lr.ph629 ], [ %indvars.iv.next735, %bb.ch ] ; 3 uses
  %i.ri = sub nuw nsw i64 %indvars.iv752, %indvars.iv734 ; 3 uses
  %i.rj = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5fmmax, align 4, !tbaa !9
  %i.rk = trunc nuw i64 %i.ri to i32              ; 6 uses
  %.not325 = icmp slt i32 %i.rj, %i.rk
  %i.rl = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4 ; 2 uses
  %.not326 = icmp slt i32 %i.rl, %i.rk
  %or.cond334 = select i1 %.not325, i1 %.not326, i1 false
  br i1 %or.cond334, label %bb.ch, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rm = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !34
  %i.rn = fcmp oeq float %i.rm, 0.000000e+00
  br i1 %i.rn, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ro = uitofp nneg i32 %i.rk to float
  %i.rp = fmul float %i.hm, %i.ro
  %i.rq = call noundef float @sqrtf(float noundef %i.rp) #21
  %i.rr = fmul float %.1235, %i.rq
  %i.rs = call float @llvm.rint.f32(float %i.rr)
  %i.rt = fptosi float %i.rs to i32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.0241 = phi i32 [ %i.rt, %bb.bv ], [ %i.rk, %bb.bu ] ; 3 uses
  %i.ru = load i32, ptr %i.n, align 4, !tbaa !9   ; 3 uses
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %.lr.ph624, label %._crit_edge625

.lr.ph624:                                        ; preds = %bb.bw
  %i.rw = load ptr, ptr %i.rf, align 8, !tbaa !36 ; 2 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %.1541, i64 %indvars.iv734
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !36 ; 2 uses
  %i.rz = icmp slt i32 %.0241, %.1244
  %i.sa = sext i32 %.0241 to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %.0549, i64 %i.sa
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.0548, i64 %i.ri ; 4 uses
  %.fr = freeze i1 %i.rz
  br i1 %.fr, label %.lr.ph624.split, label %.lr.ph624.split.us

.lr.ph624.split.us:                               ; preds = %.lr.ph624, %bb.by
  %i.sd = phi i32 [ %i.sw, %bb.by ], [ %i.ru, %.lr.ph624 ]
  %i.se = phi i32 [ %i.sx, %bb.by ], [ %i.rl, %.lr.ph624 ] ; 2 uses
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %bb.by ], [ 0, %.lr.ph624 ] ; 3 uses
  %i.sf = getelementptr inbounds nuw [12 x i8], ptr %i.rw, i64 %indvars.iv728 ; 2 uses
  %i.sg = getelementptr inbounds nuw [12 x i8], ptr %i.ry, i64 %indvars.iv728 ; 2 uses
  %i.sh = load <2 x float>, ptr %i.sg, align 4, !tbaa !34
  %i.si = load <2 x float>, ptr %i.sf, align 4, !tbaa !34
  %i.sj = fsub <2 x float> %i.sh, %i.si           ; 2 uses
  %i.sk = fmul <2 x float> %i.sj, %i.sj           ; 2 uses
  %shift = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.sk, %shift
  %i.sl = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !34
  %i.so = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sp = load float, ptr %i.so, align 4, !tbaa !34
  %i.sq = fsub float %i.sn, %i.sp                 ; 2 uses
  %i.sr = fmul float %i.sq, %i.sq
  %i.ss = fadd float %i.sl, %i.sr
  %.not329.us = icmp slt i32 %i.se, %i.rk
  %i.st = fcmp ugt float %i.ss, %.0236
  %or.cond336.us = select i1 %.not329.us, i1 true, i1 %i.st
  br i1 %or.cond336.us, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph624.split.us
  %i.su = load i32, ptr %i.sc, align 4, !tbaa !9
  %i.sv = add nsw i32 %i.su, 1
  store i32 %i.sv, ptr %i.sc, align 4, !tbaa !9
  %.pre815 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4, !tbaa !9
  %.pre817 = load i32, ptr %i.n, align 4, !tbaa !9
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph624.split.us
  %i.sw = phi i32 [ %.pre817, %bb.bx ], [ %i.sd, %.lr.ph624.split.us ] ; 2 uses
  %i.sx = phi i32 [ %.pre815, %bb.bx ], [ %i.se, %.lr.ph624.split.us ]
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %i.sy = sext i32 %i.sw to i64
  %i.sz = icmp slt i64 %indvars.iv.next729, %i.sy
  br i1 %i.sz, label %.lr.ph624.split.us, label %._crit_edge625, !llvm.loop !55

.lr.ph624.split:                                  ; preds = %.lr.ph624, %bb.cd
  %i.ta = phi i32 [ %i.ud, %bb.cd ], [ %i.ru, %.lr.ph624 ]
  %indvars.iv731 = phi i64 [ %indvars.iv.next732, %bb.cd ], [ 0, %.lr.ph624 ] ; 3 uses
  %i.tb = getelementptr inbounds nuw [12 x i8], ptr %i.rw, i64 %indvars.iv731 ; 2 uses
  %i.tc = getelementptr inbounds nuw [12 x i8], ptr %i.ry, i64 %indvars.iv731 ; 2 uses
  %i.td = load <2 x float>, ptr %i.tc, align 4, !tbaa !34
  %i.te = load <2 x float>, ptr %i.tb, align 4, !tbaa !34
  %i.tf = fsub <2 x float> %i.td, %i.te           ; 2 uses
  %i.tg = fmul <2 x float> %i.tf, %i.tf           ; 2 uses
  %shift1145 = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1146 = fadd <2 x float> %i.tg, %shift1145
  %i.th = extractelement <2 x float> %foldExtExtBinop1146, i64 0
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !34
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !34
  %i.tm = fsub float %i.tj, %i.tl                 ; 2 uses
  %i.tn = fmul float %i.tm, %i.tm
  %i.to = fadd float %i.th, %i.tn                 ; 3 uses
  %i.tp = fcmp olt float %i.to, %.0237
  br i1 %i.tp, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %.lr.ph624.split
  %sqrt = call float @llvm.sqrt.f32(float %i.to)
  %i.tq = fmul float %i.ho, %sqrt
  %i.tr = call float @llvm.rint.f32(float %i.tq)
  %i.ts = fptosi float %i.tr to i32               ; 2 uses
  %i.tt = icmp sgt i32 %.0242, %i.ts
  br i1 %i.tt, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.tu = load ptr, ptr %i.sb, align 8, !tbaa !36
  %i.tv = sext i32 %i.ts to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.tu, i64 %i.tv ; 2 uses
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !34
  %i.ty = fadd float %i.tx, 1.000000e+00
  store float %i.ty, ptr %i.tw, align 4, !tbaa !34
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %.lr.ph624.split
  %i.tz = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4, !tbaa !9
  %.not329 = icmp slt i32 %i.tz, %i.rk
  %i.ua = fcmp ugt float %i.to, %.0236
  %or.cond336 = select i1 %.not329, i1 true, i1 %i.ua
  br i1 %or.cond336, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ub = load i32, ptr %i.sc, align 4, !tbaa !9
  %i.uc = add nsw i32 %i.ub, 1
  store i32 %i.uc, ptr %i.sc, align 4, !tbaa !9
  %.pre818 = load i32, ptr %i.n, align 4, !tbaa !9
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.ud = phi i32 [ %i.ta, %bb.cb ], [ %.pre818, %bb.cc ] ; 2 uses
  %indvars.iv.next732 = add nuw nsw i64 %indvars.iv731, 1 ; 2 uses
  %i.ue = sext i32 %i.ud to i64
  %i.uf = icmp slt i64 %indvars.iv.next732, %i.ue
  br i1 %i.uf, label %.lr.ph624.split, label %._crit_edge625, !llvm.loop !55

._crit_edge625:                                   ; preds = %bb.by, %bb.cd, %bb.bw
  br i1 %.not327, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge625
  %i.ug = sext i32 %.0241 to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %.0546, i64 %i.ug ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !9
  %i.uj = add nsw i32 %i.ui, 1
  store i32 %i.uj, ptr %i.uh, align 4, !tbaa !9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge625
  br i1 %.not328, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.0545, i64 %i.ri ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !9
  %i.um = add nsw i32 %i.ul, 1
  store i32 %i.um, ptr %i.uk, align 4, !tbaa !9
  br label %bb.ch

bb.ch:                                            ; preds = %bb.bt, %bb.cg, %bb.cf
  %indvars.iv.next735 = add nuw nsw i64 %indvars.iv734, 1 ; 2 uses
  %exitcond738.not = icmp eq i64 %indvars.iv.next735, %indvars.iv752
  br i1 %exitcond738.not, label %._crit_edge630, label %bb.bt, !llvm.loop !56

._crit_edge630:                                   ; preds = %bb.ch, %.loopexit560
  %i.un = load ptr, ptr %i.h, align 8, !tbaa !23
  %.not323 = icmp ne ptr %i.un, null
  %i.uo = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4 ; 2 uses
  %i.up = icmp sgt i32 %i.uo, 0
  %or.cond684 = select i1 %.not323, i1 %i.up, i1 false
  br i1 %or.cond684, label %.lr.ph646, label %.loopexit559

.lr.ph646:                                        ; preds = %._crit_edge630
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %.1541, i64 %indvars.iv752
  %.pre820 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE6fshift, align 4, !tbaa !9
  br label %bb.ci

bb.ci:                                            ; preds = %.lr.ph646, %bb.cl
  %i.ur = phi i32 [ %i.uo, %.lr.ph646 ], [ %i.xi, %bb.cl ]
  %i.us = phi i32 [ %.pre820, %.lr.ph646 ], [ %i.xj, %bb.cl ] ; 2 uses
  %indvars.iv749 = phi i64 [ 0, %.lr.ph646 ], [ %indvars.iv.next750, %bb.cl ] ; 3 uses
  %.4268644 = phi i32 [ %.3267648, %.lr.ph646 ], [ %.7271, %bb.cl ] ; 3 uses
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 3 uses
  %i.ut = trunc nuw nsw i64 %indvars.iv.next750 to i32
  %i.uu = mul nsw i32 %i.us, %i.ut
  %i.uv = sub nsw i32 %i.kw, %i.uu                ; 2 uses
  %i.uw = icmp sgt i32 %i.uv, -1
  br i1 %i.uw, label %.preheader555, label %bb.cl

.preheader555:                                    ; preds = %bb.ci
  %i.ux = load i32, ptr %i.n, align 4, !tbaa !9
  %i.uy = icmp sgt i32 %i.ux, 0
  br i1 %i.uy, label %.lr.ph642, label %._crit_edge643

.lr.ph642:                                        ; preds = %.preheader555
  %i.uz = zext nneg i32 %i.uv to i64
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %.1541, i64 %i.uz
  %i.vb = getelementptr inbounds nuw [8 x i8], ptr %.0547, i64 %indvars.iv749
  br label %bb.cj

bb.cj:                                            ; preds = %.lr.ph642, %.loopexit
  %.3250641 = phi i32 [ 0, %.lr.ph642 ], [ %i.xc, %.loopexit ] ; 3 uses
  %.5269640 = phi i32 [ %.4268644, %.lr.ph642 ], [ %.6270, %.loopexit ] ; 7 uses
  %i.vc = load ptr, ptr %i.uq, align 8, !tbaa !36
  %i.vd = sext i32 %.3250641 to i64               ; 2 uses
  %i.ve = getelementptr inbounds [12 x i8], ptr %i.vc, i64 %i.vd ; 2 uses
  %i.vf = load ptr, ptr %i.va, align 8, !tbaa !36
  %i.vg = getelementptr inbounds [12 x i8], ptr %i.vf, i64 %i.vd ; 2 uses
  %i.vh = load <2 x float>, ptr %i.vg, align 4, !tbaa !34
  %i.vi = load <2 x float>, ptr %i.ve, align 4, !tbaa !34
  %i.vj = fsub <2 x float> %i.vh, %i.vi           ; 2 uses
  %i.vk = fmul <2 x float> %i.vj, %i.vj           ; 2 uses
  %shift1148 = shufflevector <2 x float> %i.vk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149 = fadd <2 x float> %i.vk, %shift1148
  %i.vl = extractelement <2 x float> %foldExtExtBinop1149, i64 0
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vn = load float, ptr %i.vm, align 4, !tbaa !34
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !34
  %i.vq = fsub float %i.vn, %i.vp                 ; 2 uses
  %i.vr = fmul float %i.vq, %i.vq
  %i.vs = fadd float %i.vl, %i.vr
  %sqrt550 = call float @llvm.sqrt.f32(float %i.vs)
  %i.vt = fmul float %i.ho, %sqrt550
  %i.vu = call float @llvm.rint.f32(float %i.vt)
  %i.vv = fptosi float %i.vu to i32               ; 4 uses
  %.not324 = icmp sgt i32 %.5269640, %i.vv
  br i1 %.not324, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.vw = srem i32 %i.vv, 10
  %i.vx = sub i32 %i.vv, %i.vw
  %i.vy = add i32 %i.vx, 11                       ; 6 uses
  %i.vz = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !9
  %i.wa = icmp sgt i32 %i.vz, 0
  br i1 %i.wa, label %.lr.ph636, label %.loopexit

.lr.ph636:                                        ; preds = %bb.ck
  %i.wb = sext i32 %i.vy to i64                   ; 2 uses
  %i.wc = icmp slt i32 %.5269640, %i.vy
  %.fr639 = freeze i1 %i.wc
end_hunk_0
