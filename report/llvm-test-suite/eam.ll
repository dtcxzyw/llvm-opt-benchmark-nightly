inline.NumInlined: 31
inline.NumDeleted: 9
begin_hunk_0_@eamForce:bb.a
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !18
  %i.gk = fadd double %i.ge, %i.gj
  store double %i.gk, ptr %i.gi, align 8, !tbaa !18
  %i.gl = fmul double %i.ef, 5.000000e-01
  %i.gm = fadd double %i.ej, %i.el
  %i.gn = call double @llvm.fmuladd.f64(double %i.ep, double -2.000000e+00, double %i.gm)
  %i.go = call double @llvm.fmuladd.f64(double %i.ef, double %i.gn, double %i.em)
  %i.gp = call double @llvm.fmuladd.f64(double %i.gl, double %i.go, double %i.ep) ; 4 uses
  %i.gq = icmp slt i32 %i.fh, %i.fg
  %i.gr = sitofp i32 %i.fh to double
  %i.gs = fdiv double %i.gr, %i.fd
  %.1.i211.us.us = select i1 %i.gq, double %i.gs, double %i.fe ; 2 uses
  %i.gt = call double @llvm.floor.f64(double %.1.i211.us.us)
  %i.gu = fsub double %.1.i211.us.us, %i.gt       ; 2 uses
  %i.gv = fsub double %i.fl, %i.fn
  %i.gw = fmul double %i.gu, 5.000000e-01
  %i.gx = fadd double %i.fl, %i.fn
  %i.gy = call double @llvm.fmuladd.f64(double %i.fo, double -2.000000e+00, double %i.gx)
  %i.gz = call double @llvm.fmuladd.f64(double %i.gu, double %i.gy, double %i.gv)
  %i.ha = call double @llvm.fmuladd.f64(double %i.gw, double %i.gz, double %i.fo) ; 2 uses
  %i.hb = load i32, ptr %i.cr, align 4, !tbaa !63
  %i.hc = icmp slt i32 %i.cg, %i.hb
  %i.hd = fadd double %.3238.us.us, %i.gp
  %i.he = call double @llvm.fmuladd.f64(double %i.gp, double 5.000000e-01, double %.3238.us.us)
  %.4.us.us = select i1 %i.hc, double %i.hd, double %i.he
  %i.hf = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !62 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv314 ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !18
  %i.hk = call double @llvm.fmuladd.f64(double %i.gp, double 5.000000e-01, double %i.hj)
  store double %i.hk, ptr %i.hi, align 8, !tbaa !18
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %indvars.iv ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !18
  %i.hn = call double @llvm.fmuladd.f64(double %i.gp, double 5.000000e-01, double %i.hm)
  store double %i.hn, ptr %i.hl, align 8, !tbaa !18
  %i.ho = load ptr, ptr %i.bd, align 8, !tbaa !53 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %indvars.iv314 ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !18
  %i.hr = fadd double %i.ha, %i.hq
  store double %i.hr, ptr %i.hp, align 8, !tbaa !18
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %indvars.iv ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !18
  %i.hu = fadd double %i.ha, %i.ht
  store double %i.hu, ptr %i.hs, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.6.us.us = phi double [ %.3238.us.us, %bb.d ], [ %.4.us.us, %bb.f ], [ %.3238.us.us, %bb.e ] ; 3 uses
  %i.hv = add nuw nsw i32 %.0204235.us.us, 1      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.hv, %i.cn
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.d

._crit_edge.us.us:                                ; preds = %bb.g
  %i.hw = add nuw nsw i32 %.0198239.us.us, 1      ; 2 uses
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1
  %exitcond317.not = icmp eq i32 %i.hw, %.fr299
  br i1 %exitcond317.not, label %..loopexit230_crit_edge.us, label %.lr.ph.us.us

._crit_edge:                                      ; preds = %..loopexit230_crit_edge.us, %bb.c
  %.1.lcssa = phi double [ %.0184255, %bb.c ], [ %.7.us, %..loopexit230_crit_edge.us ] ; 3 uses
  %indvars.iv.next323.a = add nuw nsw i64 %indvars.iv322.a, 1 ; 2 uses
  %i.hx = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 12
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !63 ; 3 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp slt i64 %indvars.iv.next323.a, %i.ia
  %indvars.iv.next313 = add i32 %indvars.iv312, 64
  br i1 %i.ib, label %bb.c, label %.preheader

._crit_edge270:                                   ; preds = %._crit_edge265, %._crit_edge365, %.preheader
  %.8.lcssa = phi double [ %.1.lcssa, %.preheader ], [ 0.000000e+00, %._crit_edge365 ], [ %.9.lcssa, %._crit_edge265 ]
  call void @profileStart(i32 noundef 8) #17
  %i.ic = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.id = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !55
  call void @haloExchange(ptr noundef %i.ic, ptr noundef %i.ie) #17
  call void @profileStop(i32 noundef 8) #17
  %i.if = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !63
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %._crit_edge270
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph269, %._crit_edge265
  %indvars.iv331 = phi i64 [ 0, %.lr.ph269 ], [ %indvars.iv.next332, %._crit_edge265 ] ; 2 uses
  %indvars.iv325 = phi i32 [ 0, %.lr.ph269 ], [ %indvars.iv.next326, %._crit_edge265 ] ; 3 uses
  %.8268 = phi double [ %.1.lcssa, %.lr.ph269 ], [ %.9.lcssa, %._crit_edge265 ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv331
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !4  ; 2 uses
  %i.im = icmp sgt i32 %i.il, 0
  br i1 %i.im, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %bb.h
  %i.in = zext i32 %indvars.iv325 to i64
  %i.io = load ptr, ptr %i.bu, align 8, !tbaa !28 ; 4 uses
  %i.ip = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !23
  %i.is = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iu = load i32, ptr %i.io, align 8, !tbaa !25 ; 3 uses
  %i.iv = sitofp i32 %i.iu to double
  %i.iw = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ix = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !62
  %i.ja = add i32 %i.il, %indvars.iv325
  br label %bb.i

._crit_edge265:                                   ; preds = %bb.i, %bb.h
  %.9.lcssa = phi double [ %.8268, %bb.h ], [ %i.kj, %bb.i ] ; 2 uses
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %indvars.iv.next326 = add i32 %indvars.iv325, 64
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %._crit_edge270, label %bb.h

bb.i:                                             ; preds = %.lr.ph264, %bb.i
  %indvars.iv327 = phi i64 [ %i.in, %.lr.ph264 ], [ %indvars.iv.next328, %bb.i ] ; 4 uses
  %.9262 = phi double [ %.8268, %.lr.ph264 ], [ %i.kj, %bb.i ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ip, i64 %indvars.iv327
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !18 ; 2 uses
  %i.jd = load double, ptr %i.is, align 8, !tbaa !27 ; 3 uses
  %i.je = fcmp olt double %i.jc, %i.jd
  %.0.i212 = select i1 %i.je, double %i.jd, double %i.jc
  %i.jf = fsub double %.0.i212, %i.jd
  %i.jg = load double, ptr %i.it, align 8, !tbaa !26 ; 3 uses
  %i.jh = fmul double %i.jg, %i.jf                ; 2 uses
  %i.ji = call double @llvm.floor.f64(double %i.jh)
  %i.jj = fptosi double %i.ji to i32              ; 2 uses
  %i.jk = icmp slt i32 %i.iu, %i.jj
  %i.jl = fdiv double %i.iv, %i.jg
  %.040.i213 = call i32 @llvm.smin.i32(i32 %i.iu, i32 %i.jj)
  %.1.i214 = select i1 %i.jk, double %i.jl, double %i.jh ; 2 uses
  %i.jm = call double @llvm.floor.f64(double %.1.i214)
  %i.jn = fsub double %.1.i214, %i.jm             ; 3 uses
  %i.jo = sext i32 %.040.i213 to i64
  %i.jp = getelementptr [8 x i8], ptr %i.ir, i64 %i.jo ; 4 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 8
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !18 ; 2 uses
  %i.js = getelementptr i8, ptr %i.jp, i64 -8
  %i.jt = load double, ptr %i.js, align 8, !tbaa !18 ; 2 uses
  %i.ju = fsub double %i.jr, %i.jt                ; 3 uses
  %i.jv = getelementptr i8, ptr %i.jp, i64 16
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !18
  %i.jx = load double, ptr %i.jp, align 8, !tbaa !18 ; 3 uses
  %i.jy = fsub double %i.jw, %i.jx
  %i.jz = fmul double %i.jn, 5.000000e-01
  %i.ka = fadd double %i.jr, %i.jt
  %i.kb = call double @llvm.fmuladd.f64(double %i.jx, double -2.000000e+00, double %i.ka)
  %i.kc = call double @llvm.fmuladd.f64(double %i.jn, double %i.kb, double %i.ju)
  %i.kd = call double @llvm.fmuladd.f64(double %i.jz, double %i.kc, double %i.jx) ; 2 uses
  %i.ke = fsub double %i.jy, %i.ju
  %i.kf = call double @llvm.fmuladd.f64(double %i.jn, double %i.ke, double %i.ju)
  %i.kg = fmul double %i.kf, 5.000000e-01
  %i.kh = fmul double %i.jg, %i.kg
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv327
  store double %i.kh, ptr %i.ki, align 8, !tbaa !18
  %i.kj = fadd double %.9262, %i.kd               ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv327 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !18
  %i.km = fadd double %i.kl, %i.kd
  store double %i.km, ptr %i.kk, align 8, !tbaa !18
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next328 to i32
  %exitcond330.not = icmp eq i32 %i.ja, %lftr.wideiv
  br i1 %exitcond330.not, label %._crit_edge265, label %bb.i

._crit_edge298:                                   ; preds = %._crit_edge288, %._crit_edge270
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.8.lcssa, ptr %i.kn, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0

bb.j:                                             ; preds = %.lr.ph297, %._crit_edge288
  %indvars.iv359 = phi i64 [ 0, %.lr.ph297 ], [ %indvars.iv.next360, %._crit_edge288 ] ; 5 uses
  %indvars.iv348 = phi i32 [ 0, %.lr.ph297 ], [ %indvars.iv.next349, %._crit_edge288 ] ; 2 uses
  %i.ko = phi ptr [ %i.if, %.lr.ph297 ], [ %i.pz, %._crit_edge288 ] ; 2 uses
  %i.kp = zext i32 %indvars.iv348 to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 120
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv359
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %.fr = freeze i32 %i.kt                         ; 2 uses
  %i.ku = trunc nuw nsw i64 %indvars.iv359 to i32
  %i.kv = call i32 @getNeighborBoxes(ptr noundef nonnull %i.ko, i32 noundef %i.ku, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  %i.kx = icmp sgt i32 %.fr, 0
  %or.cond384 = and i1 %i.kw, %i.kx
  br i1 %or.cond384, label %.lr.ph287.split.us.preheader, label %._crit_edge288

.lr.ph287.split.us.preheader:                     ; preds = %bb.j
  %wide.trip.count357 = zext nneg i32 %i.kv to i64
  br label %.lr.ph287.split.us

.lr.ph287.split.us:                               ; preds = %.lr.ph287.split.us.preheader, %..loopexit229_crit_edge.us
  %indvars.iv354 = phi i64 [ 0, %.lr.ph287.split.us.preheader ], [ %indvars.iv.next355, %..loopexit229_crit_edge.us ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv354
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !4  ; 3 uses
  %i.la = sext i32 %i.kz to i64                   ; 2 uses
  %i.lb = icmp sgt i64 %indvars.iv359, %i.la
  br i1 %i.lb, label %..loopexit229_crit_edge.us, label %.lr.ph284.us

.lr.ph284.us:                                     ; preds = %.lr.ph287.split.us
  %i.lc = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !64
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.le, i64 %i.la
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !4  ; 2 uses
  %i.lh = icmp sgt i32 %i.lg, 0
  %i.li = zext i32 %i.kz to i64
  %i.lj = icmp ne i64 %indvars.iv359, %i.li
  br i1 %i.lh, label %.lr.ph279.us.us.preheader, label %..loopexit229_crit_edge.us

.lr.ph279.us.us.preheader:                        ; preds = %.lr.ph284.us
  %i.lk = shl i32 %i.kz, 6
  %i.ll = sext i32 %i.lk to i64
  br label %.lr.ph279.us.us

..loopexit229_crit_edge.us:                       ; preds = %._crit_edge280.us.us, %.lr.ph284.us, %.lr.ph287.split.us
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %wide.trip.count357
  br i1 %exitcond358.not, label %._crit_edge288, label %.lr.ph287.split.us

.lr.ph279.us.us:                                  ; preds = %.lr.ph279.us.us.preheader, %._crit_edge280.us.us
  %indvars.iv350 = phi i64 [ %i.kp, %.lr.ph279.us.us.preheader ], [ %indvars.iv.next351, %._crit_edge280.us.us ] ; 4 uses
  %.0189282.us.us = phi i32 [ 0, %.lr.ph279.us.us.preheader ], [ %i.py, %._crit_edge280.us.us ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.us.us, %.lr.ph279.us.us
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %.loopexit.us.us ], [ %i.ll, %.lr.ph279.us.us ] ; 4 uses
  %.0187277.us.us = phi i32 [ %i.px, %.loopexit.us.us ], [ 0, %.lr.ph279.us.us ] ; 2 uses
  %.not.us.us = icmp samesign ugt i32 %.0187277.us.us, %.0189282.us.us
  %or.cond208.us.us = select i1 %i.lj, i1 true, i1 %.not.us.us
  br i1 %or.cond208.us.us, label %bb.l, label %.loopexit.us.us

bb.l:                                             ; preds = %bb.k
  %i.lm = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !65 ; 2 uses
  %i.lp = getelementptr inbounds nuw [24 x i8], ptr %i.lo, i64 %indvars.iv350 ; 3 uses
  %i.lq = getelementptr inbounds [24 x i8], ptr %i.lo, i64 %indvars.iv344 ; 3 uses
  %i.lr = load double, ptr %i.lp, align 8, !tbaa !18
  %i.ls = load double, ptr %i.lq, align 8, !tbaa !18
  %i.lt = fsub double %i.lr, %i.ls                ; 4 uses
  %i.lu = call double @llvm.fmuladd.f64(double %i.lt, double %i.lt, double 0.000000e+00)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !18
  %i.lz = fsub double %i.lw, %i.ly                ; 4 uses
  %i.ma = call double @llvm.fmuladd.f64(double %i.lz, double %i.lz, double %i.lu)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !18
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.me = load double, ptr %i.md, align 8, !tbaa !18
  %i.mf = fsub double %i.mc, %i.me                ; 4 uses
  %i.mg = call double @llvm.fmuladd.f64(double %i.mf, double %i.mf, double %i.ma) ; 2 uses
  %i.mh = fcmp ult double %i.mg, %i.ab
  br i1 %i.mh, label %.loopexit.us.us.loopexit, label %.loopexit.us.us

.loopexit.us.us.loopexit:                         ; preds = %bb.l
  %i.mi = call double @sqrt(double noundef %i.mg) #17, !tbaa !4 ; 8 uses
  %i.mj = load ptr, ptr %i.ij, align 8, !tbaa !29 ; 4 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !23
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !27 ; 3 uses
  %i.mo = fcmp olt double %i.mi, %i.mn
  %.0.i215.us.us = select i1 %i.mo, double %i.mn, double %i.mi
  %i.mp = fsub double %.0.i215.us.us, %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !26 ; 3 uses
  %i.ms = fmul double %i.mr, %i.mp                ; 2 uses
  %i.mt = call double @llvm.floor.f64(double %i.ms)
  %i.mu = fptosi double %i.mt to i32              ; 2 uses
  %i.mv = load i32, ptr %i.mj, align 8, !tbaa !25 ; 3 uses
  %i.mw = icmp slt i32 %i.mv, %i.mu
  %i.mx = sitofp i32 %i.mv to double
  %i.my = fdiv double %i.mx, %i.mr
  %.040.i216.us.us = call i32 @llvm.smin.i32(i32 %i.mv, i32 %i.mu)
  %.1.i217.us.us = select i1 %i.mw, double %i.my, double %i.ms ; 2 uses
  %i.mz = call double @llvm.floor.f64(double %.1.i217.us.us)
  %i.na = fsub double %.1.i217.us.us, %i.mz
  %i.nb = sext i32 %.040.i216.us.us to i64
  %i.nc = getelementptr [8 x i8], ptr %i.ml, i64 %i.nb ; 4 uses
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !18
  %i.nf = getelementptr i8, ptr %i.nc, i64 -8
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !18
  %i.nh = fsub double %i.ne, %i.ng                ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nc, i64 16
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !18
  %i.nk = load double, ptr %i.nc, align 8, !tbaa !18
  %i.nl = fsub double %i.nj, %i.nk
  %i.nm = fsub double %i.nl, %i.nh
  %i.nn = call double @llvm.fmuladd.f64(double %i.na, double %i.nm, double %i.nh)
  %i.no = fmul double %i.nn, 5.000000e-01
  %i.np = fmul double %i.mr, %i.no                ; 6 uses
  %i.nq = load ptr, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv350 ; 6 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv344 ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !60 ; 2 uses
  %i.nv = getelementptr inbounds nuw [24 x i8], ptr %i.nu, i64 %indvars.iv350 ; 4 uses
  %i.nw = getelementptr inbounds [24 x i8], ptr %i.nu, i64 %indvars.iv344 ; 4 uses
  %i.nx = load double, ptr %i.nr, align 8, !tbaa !18
  %i.ny = load double, ptr %i.ns, align 8, !tbaa !18
  %i.nz = fadd double %i.nx, %i.ny
  %i.oa = fmul double %i.np, %i.nz
  %i.ob = fmul double %i.lt, %i.oa
  %i.oc = fdiv double %i.ob, %i.mi
  %i.od = load double, ptr %i.nv, align 8, !tbaa !18
  %i.oe = fsub double %i.od, %i.oc
  store double %i.oe, ptr %i.nv, align 8, !tbaa !18
  %i.of = load double, ptr %i.nr, align 8, !tbaa !18
  %i.og = load double, ptr %i.ns, align 8, !tbaa !18
  %i.oh = fadd double %i.of, %i.og
  %i.oi = fmul double %i.np, %i.oh
  %i.oj = fmul double %i.lt, %i.oi
  %i.ok = fdiv double %i.oj, %i.mi
  %i.ol = load double, ptr %i.nw, align 8, !tbaa !18
  %i.om = fadd double %i.ol, %i.ok
  store double %i.om, ptr %i.nw, align 8, !tbaa !18
  %i.on = load double, ptr %i.nr, align 8, !tbaa !18
  %i.oo = load double, ptr %i.ns, align 8, !tbaa !18
  %i.op = fadd double %i.on, %i.oo
  %i.oq = fmul double %i.np, %i.op
  %i.or = fmul double %i.lz, %i.oq
  %i.os = fdiv double %i.or, %i.mi
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !18
  %i.ov = fsub double %i.ou, %i.os
  store double %i.ov, ptr %i.ot, align 8, !tbaa !18
  %i.ow = load double, ptr %i.nr, align 8, !tbaa !18
  %i.ox = load double, ptr %i.ns, align 8, !tbaa !18
  %i.oy = fadd double %i.ow, %i.ox
  %i.oz = fmul double %i.np, %i.oy
  %i.pa = fmul double %i.lz, %i.oz
  %i.pb = fdiv double %i.pa, %i.mi
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nw, i64 8 ; 2 uses
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !18
  %i.pe = fadd double %i.pd, %i.pb
  store double %i.pe, ptr %i.pc, align 8, !tbaa !18
  %i.pf = load double, ptr %i.nr, align 8, !tbaa !18
  %i.pg = load double, ptr %i.ns, align 8, !tbaa !18
  %i.ph = fadd double %i.pf, %i.pg
  %i.pi = fmul double %i.np, %i.ph
  %i.pj = fmul double %i.mf, %i.pi
  %i.pk = fdiv double %i.pj, %i.mi
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !18
  %i.pn = fsub double %i.pm, %i.pk
  store double %i.pn, ptr %i.pl, align 8, !tbaa !18
  %i.po = load double, ptr %i.nr, align 8, !tbaa !18
  %i.pp = load double, ptr %i.ns, align 8, !tbaa !18
  %i.pq = fadd double %i.po, %i.pp
  %i.pr = fmul double %i.np, %i.pq
  %i.ps = fmul double %i.mf, %i.pr
  %i.pt = fdiv double %i.ps, %i.mi
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nw, i64 16 ; 2 uses
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !18
  %i.pw = fadd double %i.pv, %i.pt
  store double %i.pw, ptr %i.pu, align 8, !tbaa !18
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %bb.l, %.loopexit.us.us.loopexit, %bb.k
  %i.px = add nuw nsw i32 %.0187277.us.us, 1      ; 2 uses
  %indvars.iv.next345 = add nsw i64 %indvars.iv344, 1
  %exitcond347.not = icmp eq i32 %i.px, %i.lg
  br i1 %exitcond347.not, label %._crit_edge280.us.us, label %bb.k

._crit_edge280.us.us:                             ; preds = %.loopexit.us.us
  %i.py = add nuw nsw i32 %.0189282.us.us, 1      ; 2 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1
  %exitcond353.not.a = icmp eq i32 %i.py, %.fr
  br i1 %exitcond353.not.a, label %..loopexit229_crit_edge.us, label %.lr.ph279.us.us

._crit_edge288:                                   ; preds = %..loopexit229_crit_edge.us, %bb.j
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %i.pz = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !63
  %i.qc = sext i32 %i.qb to i64
  %i.qd = icmp slt i64 %indvars.iv.next360, %i.qc
  %indvars.iv.next349 = add i32 %indvars.iv348, 64
  br i1 %i.qd, label %bb.j, label %._crit_edge298
}

; Function Attrs: nofree nounwind uwtable
define internal void @eamPrint(ptr nofree noundef captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %i.e) #17 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !22
  %i.i = fdiv double %i.h, f0x4059E921DD37DC65
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, double noundef %i.i) #17 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.k) #17 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !21
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, double noundef %i.n) #17 ; 0 uses
  %i.p = load double, ptr %1, align 8, !tbaa !19
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, double noundef %i.p) #17 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eamDestroy(ptr nofree noundef captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 6 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %destroyInterpolationObject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !23
  tail call void @free(ptr noundef nonnull %i.f) #17
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi ptr [ %.pre.i, %bb.e ], [ %i.c, %bb.d ]
  tail call void @free(ptr noundef %i.g) #17
  store ptr null, ptr %i.b, align 8, !tbaa !69
  br label %destroyInterpolationObject.exit

destroyInterpolationObject.exit:                  ; preds = %bb.c, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 3 uses
  %.not.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i11, label %destroyInterpolationObject.exit14, label %bb.g

bb.g:                                             ; preds = %destroyInterpolationObject.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not9.i12 = icmp eq ptr %i.k, null
  br i1 %.not9.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8 ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !23
  tail call void @free(ptr noundef nonnull %i.l) #17
  %.pre.i13 = load ptr, ptr %i.h, align 8, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i13, %bb.h ], [ %i.i, %bb.g ]
  tail call void @free(ptr noundef %i.m) #17
  store ptr null, ptr %i.h, align 8, !tbaa !69
  br label %destroyInterpolationObject.exit14

destroyInterpolationObject.exit14:                ; preds = %destroyInterpolationObject.exit, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69   ; 3 uses
  %.not.i15 = icmp eq ptr %i.o, null
  br i1 %.not.i15, label %destroyInterpolationObject.exit18, label %bb.j

bb.j:                                             ; preds = %destroyInterpolationObject.exit14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %.not9.i16 = icmp eq ptr %i.q, null
  br i1 %.not9.i16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !23
  tail call void @free(ptr noundef nonnull %i.r) #17
  %.pre.i17 = load ptr, ptr %i.n, align 8, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = phi ptr [ %.pre.i17, %bb.k ], [ %i.o, %bb.j ]
  tail call void @free(ptr noundef %i.s) #17
  store ptr null, ptr %i.n, align 8, !tbaa !69
  br label %destroyInterpolationObject.exit18

destroyInterpolationObject.exit18:                ; preds = %destroyInterpolationObject.exit14, %bb.l
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  tail call void @destroyHaloExchange(ptr noundef nonnull %i.t) #17
  tail call void @free(ptr noundef nonnull %i.a) #17
  store ptr null, ptr %0, align 8, !tbaa !70
  br label %bb.m

bb.m:                                             ; preds = %destroyInterpolationObject.exit18, %bb.b, %bb.a
  ret void
}

declare i32 @getMyRank() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal fastcc void @typeNotSupported(ptr noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !71
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, ptr noundef %0) #17 ; 0 uses
  tail call void @exit(i32 noundef -1) #20
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare ptr @initForceHaloExchange(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @getNeighborBoxes(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

declare void @profileStart(i32 noundef) local_unnamed_addr #3

declare void @haloExchange(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @profileStop(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @destroyHaloExchange(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #12

declare void @bcastParallel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @bcastInterpolationObject(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.anon.0, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.a = tail call i32 @getMyRank() #17
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !25
  store i32 %i.d, ptr %1, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_0
