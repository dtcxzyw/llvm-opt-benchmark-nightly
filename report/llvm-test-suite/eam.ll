Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/eam?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@initEamPot:bb.a
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.n, label %eamBcastPotential.exit

bb.n:                                             ; preds = %bb.m
  %i.ka = load <2 x double>, ptr %i.w, align 8, !tbaa !18
  store <2 x double> %i.ka, ptr %3, align 16, !tbaa !18
  %i.kb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !21
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.kc, ptr %i.kd, align 16, !tbaa !37
  %i.ke = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !20
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !39
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ki = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.kj = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kh, ptr noundef nonnull dereferenceable(1) %i.ki) #17 ; 0 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.km = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kk, ptr noundef nonnull dereferenceable(1) %i.kl) #17 ; 0 uses
  br label %eamBcastPotential.exit

eamBcastPotential.exit:                           ; preds = %bb.m, %bb.n
  call void @bcastParallel(ptr noundef nonnull %3, i32 noundef 40, i32 noundef 0) #17
  %i.kn = load <2 x double>, ptr %3, align 16, !tbaa !18
  store <2 x double> %i.kn, ptr %i.w, align 8, !tbaa !18
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kp = load double, ptr %i.ko, align 16, !tbaa !37
  %i.kq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store double %i.kp, ptr %i.kq, align 8, !tbaa !21
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !39
  %i.kt = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !20
  %i.ku = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.kw = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ku, ptr noundef nonnull dereferenceable(1) %i.kv) #17 ; 0 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ky = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.kz = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kx, ptr noundef nonnull dereferenceable(1) %i.ky) #17 ; 0 uses
  call fastcc void @bcastInterpolationObject(ptr noundef nonnull %i.aa)
  call fastcc void @bcastInterpolationObject(ptr noundef nonnull %i.ab)
  call fastcc void @bcastInterpolationObject(ptr noundef nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret ptr %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @eamForce(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = alloca [27 x i32], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48   ; 3 uses
  br i1 %i.f, label %bb.b, label %._crit_edge360

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !49
  %i.k = shl nsw i32 %i.j, 6
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3                      ; 2 uses
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -17179869184, 17179869177) %i.m) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !52
  %i.p = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -17179869184, 17179869177) %i.m) #16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !53
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !54
  %i.t = tail call ptr @initForceHaloExchange(ptr noundef %i.s, ptr noundef %i.h) #17
  store ptr %i.t, ptr %i.d, align 8, !tbaa !47
  %i.u = tail call noalias noundef dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr %i.u, ptr %i.v, align 8, !tbaa !55
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !52
  store ptr %i.w, ptr %i.u, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !48   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !58
  br label %._crit_edge360

._crit_edge360:                                   ; preds = %bb.a, %bb.b
  %i.z = phi ptr [ %i.x, %bb.b ], [ %i.h, %bb.a ]
  %i.aa = load double, ptr %i.c, align 8, !tbaa !19 ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !49
  %i.aj = shl nsw i32 %i.ai, 6
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ak, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.af, i8 0, i64 %i.al, i1 false)
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !49
  %i.as = shl nsw i32 %i.ar, 6
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !49
  %i.ba = shl nsw i32 %i.az, 6
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.bc, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.bf = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !49
  %i.bi = shl nsw i32 %i.bh, 6
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.be, i8 0, i64 %i.bk, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !63
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph257, label %._crit_edge270

.lr.ph257:                                        ; preds = %._crit_edge360
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %bb.c

.preheader:                                       ; preds = %._crit_edge
  %i.br = icmp sgt i32 %i.io, 0
  br i1 %i.br, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %i.im, i64 120
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %wide.trip.count329 = zext nneg i32 %i.io to i64
  br label %bb.h

bb.c:                                             ; preds = %.lr.ph257, %._crit_edge
  %indvars.iv317 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next318, %._crit_edge ] ; 5 uses
  %indvars.iv307 = phi i32 [ 0, %.lr.ph257 ], [ %indvars.iv.next308, %._crit_edge ] ; 2 uses
  %i.bv = phi ptr [ %i.bl, %.lr.ph257 ], [ %i.im, %._crit_edge ] ; 2 uses
  %.0204253 = phi double [ 0.000000e+00, %.lr.ph257 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.bw = zext i32 %indvars.iv307 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv317
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %.fr295 = freeze i32 %i.ca                      ; 2 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv317 to i32
  %i.cc = call i32 @getNeighborBoxes(ptr noundef nonnull %i.bv, i32 noundef %i.cb, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  %i.ce = icmp sgt i32 %.fr295, 0
  %or.cond = and i1 %i.cd, %i.ce
  br i1 %or.cond, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.cc to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %..loopexit230_crit_edge.us
  %indvars.iv313 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next314, %..loopexit230_crit_edge.us ] ; 2 uses
  %.1245.us = phi double [ %.0204253, %.lr.ph.split.us.preheader ], [ %.7.us, %..loopexit230_crit_edge.us ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv313
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4  ; 4 uses
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp sgt i64 %indvars.iv317, %i.ch
  br i1 %i.ci, label %..loopexit230_crit_edge.us, label %.lr.ph243.us

.lr.ph243.us:                                     ; preds = %.lr.ph.split.us
  %i.cj = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.ch
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4  ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 0
  %i.cp = zext i32 %i.cg to i64
  %i.cq = icmp ne i64 %indvars.iv317, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  br i1 %i.co, label %.lr.ph.us.us.preheader, label %..loopexit230_crit_edge.us

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph243.us
  %i.cs = shl i32 %i.cg, 6
  %1 = zext i32 %i.cs to i64
  br label %.lr.ph.us.us

..loopexit230_crit_edge.us:                       ; preds = %._crit_edge.us.us, %.lr.ph243.us, %.lr.ph.split.us
  %.7.us = phi double [ %.1245.us, %.lr.ph.split.us ], [ %.1245.us, %.lr.ph243.us ], [ %.6.us.us, %._crit_edge.us.us ] ; 2 uses
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond316.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count
  br i1 %exitcond316.not, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv309 = phi i64 [ %i.bw, %.lr.ph.us.us.preheader ], [ %indvars.iv.next310, %._crit_edge.us.us ] ; 5 uses
  %.0200241.us.us = phi i32 [ 0, %.lr.ph.us.us.preheader ], [ %i.il, %._crit_edge.us.us ] ; 2 uses
  %.2239.us.us = phi double [ %.1245.us, %.lr.ph.us.us.preheader ], [ %.6.us.us, %._crit_edge.us.us ]
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ %1, %.lr.ph.us.us ] ; 5 uses
  %.0198238.us.us = phi i32 [ %i.ik, %bb.g ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %.3235.us.us = phi double [ %.6.us.us, %bb.g ], [ %.2239.us.us, %.lr.ph.us.us ] ; 4 uses
  %.not207.us.us = icmp samesign ugt i32 %.0198238.us.us, %.0200241.us.us
  %or.cond.us.us = select i1 %i.cq, i1 true, i1 %.not207.us.us
  br i1 %or.cond.us.us, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ct = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !65 ; 2 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv309 ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv ; 2 uses
  %i.cy = load <2 x double>, ptr %i.cw, align 8, !tbaa !18
  %i.cz = load <2 x double>, ptr %i.cx, align 8, !tbaa !18
  %i.da = fsub <2 x double> %i.cy, %i.cz          ; 3 uses
  %i.db = extractelement <2 x double> %i.da, i64 0 ; 2 uses
  %i.dc = call double @llvm.fmuladd.f64(double %i.db, double %i.db, double 0.000000e+00)
  %i.dd = extractelement <2 x double> %i.da, i64 1 ; 2 uses
  %i.de = call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.dc)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dg = load double, ptr %i.df, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.di = load double, ptr %i.dh, align 8, !tbaa !18
  %i.dj = fsub double %i.dg, %i.di                ; 3 uses
  %i.dk = call double @llvm.fmuladd.f64(double %i.dj, double %i.dj, double %i.de) ; 2 uses
  %i.dl = fcmp ogt double %i.dk, %i.ab
  br i1 %i.dl, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dm = call double @sqrt(double noundef %i.dk) #17, !tbaa !4 ; 4 uses
  %i.dn = load ptr, ptr %i.bp, align 8, !tbaa !34 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ds = load i32, ptr %i.dn, align 8, !tbaa !25 ; 3 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !29 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !23
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load i32, ptr %i.dt, align 8, !tbaa !25 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !60 ; 2 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv309 ; 3 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv ; 3 uses
  %i.ec = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ee = load <2 x double>, ptr %i.ea, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ei = load i32, ptr %i.cr, align 4, !tbaa !63
  %i.ej = icmp slt i32 %i.cg, %i.ei
  %i.ek = load <2 x double>, ptr %i.dq, align 8, !tbaa !18 ; 3 uses
  %i.el = load double, ptr %i.dr, align 8, !tbaa !26
  %i.em = load <2 x double>, ptr %i.dw, align 8, !tbaa !18 ; 3 uses
  %i.en = extractelement <2 x double> %i.ek, i64 0
  %i.eo = fcmp olt double %i.dm, %i.en
  %i.ep = extractelement <2 x double> %i.em, i64 0
  %i.eq = fcmp olt double %i.dm, %i.ep
  %i.er = insertelement <2 x i1> poison, i1 %i.eq, i64 0
  %i.es = insertelement <2 x i1> %i.er, i1 %i.eo, i64 1
  %i.et = shufflevector <2 x double> %i.em, <2 x double> %i.ek, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eu = select <2 x i1> %i.es, <2 x double> %i.et, <2 x double> %i.ed
  %i.ev = fsub <2 x double> %i.eu, %i.et
  %i.ew = shufflevector <2 x double> %i.em, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ex = fmul <2 x double> %i.ew, %i.ev          ; 2 uses
  %i.ey = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ex)
  %i.ez = fptosi <2 x double> %i.ey to <2 x i32>  ; 3 uses
  %i.fa = extractelement <2 x i32> %i.ez, i64 1
  %.040.i.us.us = call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.fa)
  %i.fb = sext i32 %.040.i.us.us to i64
  %i.fc = getelementptr [8 x i8], ptr %i.dp, i64 %i.fb ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = getelementptr i8, ptr %i.fc, i64 -8
  %i.ff = load <2 x double>, ptr %i.fd, align 8, !tbaa !18 ; 2 uses
  %i.fg = load <2 x double>, ptr %i.fe, align 8, !tbaa !18 ; 4 uses
  %i.fh = fsub <2 x double> %i.ff, %i.fg          ; 4 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 0
  %shift = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.fh
  %i.fj = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fk = insertelement <2 x i32> poison, i32 %i.dx, i64 0
  %i.fl = insertelement <2 x i32> %i.fk, i32 %i.ds, i64 1
  %i.fm = icmp slt <2 x i32> %i.fl, %i.ez
  %i.fn = sitofp i32 %i.ds to double
  %i.fo = sitofp i32 %i.dx to double
  %i.fp = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fn, i64 1
  %i.fr = fdiv <2 x double> %i.fq, %i.ew
  %i.fs = select <2 x i1> %i.fm, <2 x double> %i.fr, <2 x double> %i.ex ; 3 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 1
  %i.fu = call double @llvm.floor.f64(double %i.ft)
  %i.fv = extractelement <2 x double> %i.fs, i64 0
  %i.fw = call double @llvm.floor.f64(double %i.fv)
  %i.fx = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fu, i64 1
  %i.fz = fsub <2 x double> %i.fs, %i.fy          ; 4 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 1
  %i.gb = call double @llvm.fmuladd.f64(double %i.ga, double %i.fj, double %i.fi)
  %i.gc = fmul double %i.gb, 5.000000e-01
  %i.gd = fmul double %i.el, %i.gc                ; 2 uses
  %i.ge = extractelement <2 x i32> %i.ez, i64 0
  %.040.i210.us.us = call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.ge)
  %i.gf = sext i32 %.040.i210.us.us to i64
  %i.gg = getelementptr [8 x i8], ptr %i.dv, i64 %i.gf ; 3 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !18 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.gg, i64 -8
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !18 ; 2 uses
  %i.gl = load double, ptr %i.gg, align 8, !tbaa !18
  %i.gm = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = fmul <2 x double> %i.gn, %i.da
  %i.gp = fdiv <2 x double> %i.go, %i.ed          ; 2 uses
  %i.gq = fsub <2 x double> %i.ee, %i.gp
  store <2 x double> %i.gq, ptr %i.ea, align 8, !tbaa !18
  %i.gr = load <2 x double>, ptr %i.eb, align 8, !tbaa !18
  %i.gs = fadd <2 x double> %i.gp, %i.gr
  store <2 x double> %i.gs, ptr %i.eb, align 8, !tbaa !18
  %i.gt = fmul double %i.gd, %i.dj
  %i.gu = fdiv double %i.gt, %i.dm                ; 2 uses
  %i.gv = fsub double %i.eg, %i.gu
  store double %i.gv, ptr %i.ef, align 8, !tbaa !18
  %i.gw = load double, ptr %i.eh, align 8, !tbaa !18
  %i.gx = fadd double %i.gu, %i.gw
  store double %i.gx, ptr %i.eh, align 8, !tbaa !18
  %foldExtExtBinop383 = fadd <2 x double> %i.ff, %i.fg
  %i.gy = extractelement <2 x double> %foldExtExtBinop383, i64 0
  %i.gz = extractelement <2 x double> %i.fg, i64 1
  %i.ha = call double @llvm.fmuladd.f64(double %i.gz, double -2.000000e+00, double %i.gy)
  %i.hb = fmul <2 x double> %i.fz, <double 1.000000e+00, double 5.000000e-01>
  %i.hc = fsub double %i.gi, %i.gk
  %i.hd = extractelement <2 x double> %i.fz, i64 0
  %i.he = fmul double %i.hd, 5.000000e-01
  %i.hf = fadd double %i.gi, %i.gk
  %i.hg = insertelement <2 x double> %i.fz, double %i.gl, i64 0 ; 2 uses
  %i.hh = insertelement <2 x double> <double -2.000000e+00, double poison>, double %i.ha, i64 1
  %i.hi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.hj = insertelement <2 x double> %i.hi, double %i.hf, i64 0
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.hh, <2 x double> %i.hj)
  %i.hl = insertelement <2 x double> %i.fg, double %i.hc, i64 0
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hk, <2 x double> %i.hl) ; 2 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 1 ; 3 uses
  %i.ho = fadd double %.3235.us.us, %i.hn
  %i.hp = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.he, i64 0
  %i.hq = insertelement <2 x double> %i.hg, double %.3235.us.us, i64 1
  %i.hr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.hm, <2 x double> %i.hq) ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 1
  %.4.us.us = select i1 %i.ej, double %i.ho, double %i.hs
  %i.ht = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !62 ; 2 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv309 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !18
  %i.hy = call double @llvm.fmuladd.f64(double %i.hn, double 5.000000e-01, double %i.hx)
  store double %i.hy, ptr %i.hw, align 8, !tbaa !18
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %indvars.iv ; 2 uses
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !18
  %i.ib = call double @llvm.fmuladd.f64(double %i.hn, double 5.000000e-01, double %i.ia)
  store double %i.ib, ptr %i.hz, align 8, !tbaa !18
  %i.ic = load ptr, ptr %i.bd, align 8, !tbaa !53 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv309 ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !18
  %i.if = extractelement <2 x double> %i.hr, i64 0 ; 2 uses
  %i.ig = fadd double %i.if, %i.ie
  store double %i.ig, ptr %i.id, align 8, !tbaa !18
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !18
  %i.ij = fadd double %i.if, %i.ii
  store double %i.ij, ptr %i.ih, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.6.us.us = phi double [ %.3235.us.us, %bb.d ], [ %.4.us.us, %bb.f ], [ %.3235.us.us, %bb.e ] ; 3 uses
  %i.ik = add nuw nsw i32 %.0198238.us.us, 1      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.ik, %i.cn
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.d

._crit_edge.us.us:                                ; preds = %bb.g
  %i.il = add nuw nsw i32 %.0200241.us.us, 1      ; 2 uses
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1
  %exitcond312.not = icmp eq i32 %i.il, %.fr295
  br i1 %exitcond312.not, label %..loopexit230_crit_edge.us, label %.lr.ph.us.us

._crit_edge:                                      ; preds = %..loopexit230_crit_edge.us, %bb.c
  %.1.lcssa = phi double [ %.0204253, %bb.c ], [ %.7.us, %..loopexit230_crit_edge.us ] ; 3 uses
  %indvars.iv.next318 = add nuw nsw i64 %indvars.iv317, 1 ; 2 uses
  %i.im = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  %i.io = load i32, ptr %i.in, align 4, !tbaa !63 ; 3 uses
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp slt i64 %indvars.iv.next318, %i.ip
  %indvars.iv.next308 = add i32 %indvars.iv307, 64
  br i1 %i.iq, label %bb.c, label %.preheader

._crit_edge270:                                   ; preds = %._crit_edge265, %._crit_edge360, %.preheader
  %.8.lcssa = phi double [ %.1.lcssa, %.preheader ], [ 0.000000e+00, %._crit_edge360 ], [ %.9.lcssa, %._crit_edge265 ]
  call void @profileStart(i32 noundef 8) #17
  %i.ir = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !55
  call void @haloExchange(ptr noundef %i.ir, ptr noundef %i.it) #17
  call void @profileStop(i32 noundef 8) #17
  %i.iu = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 12
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !63
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %._crit_edge270
  %i.iy = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph269, %._crit_edge265
  %indvars.iv326 = phi i64 [ 0, %.lr.ph269 ], [ %indvars.iv.next327, %._crit_edge265 ] ; 2 uses
  %indvars.iv320 = phi i32 [ 0, %.lr.ph269 ], [ %indvars.iv.next321, %._crit_edge265 ] ; 3 uses
  %.8267 = phi double [ %.1.lcssa, %.lr.ph269 ], [ %.9.lcssa, %._crit_edge265 ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv326
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4  ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 0
  br i1 %i.jb, label %.lr.ph264, label %._crit_edge265

.lr.ph264:                                        ; preds = %bb.h
  %i.jc = zext i32 %indvars.iv320 to i64
  %i.jd = load ptr, ptr %i.bu, align 8, !tbaa !28 ; 4 uses
  %i.je = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !23
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jj = load i32, ptr %i.jd, align 8, !tbaa !25 ; 3 uses
  %i.jk = sitofp i32 %i.jj to double
  %i.jl = load ptr, ptr %i.av, align 8, !tbaa !52
  %i.jm = load ptr, ptr %i.ac, align 8, !tbaa !59
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 48
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !62
  %i.jp = add i32 %i.ja, %indvars.iv320
  br label %bb.i

._crit_edge265:                                   ; preds = %bb.i, %bb.h
  %.9.lcssa = phi double [ %.8267, %bb.h ], [ %i.kw, %bb.i ] ; 2 uses
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %indvars.iv.next321 = add i32 %indvars.iv320, 64
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge270, label %bb.h

bb.i:                                             ; preds = %.lr.ph264, %bb.i
  %indvars.iv322 = phi i64 [ %i.jc, %.lr.ph264 ], [ %indvars.iv.next323, %bb.i ] ; 4 uses
  %.9260 = phi double [ %.8267, %.lr.ph264 ], [ %i.kw, %bb.i ]
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv322
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !18 ; 2 uses
  %i.js = load double, ptr %i.jh, align 8, !tbaa !27 ; 3 uses
  %i.jt = fcmp olt double %i.jr, %i.js
  %.0.i212 = select i1 %i.jt, double %i.js, double %i.jr
  %i.ju = fsub double %.0.i212, %i.js
  %i.jv = load double, ptr %i.ji, align 8, !tbaa !26 ; 3 uses
  %i.jw = fmul double %i.jv, %i.ju                ; 2 uses
  %i.jx = call double @llvm.floor.f64(double %i.jw)
  %i.jy = fptosi double %i.jx to i32              ; 2 uses
  %i.jz = icmp slt i32 %i.jj, %i.jy
  %i.ka = fdiv double %i.jk, %i.jv
  %.040.i213 = call i32 @llvm.smin.i32(i32 %i.jj, i32 %i.jy)
  %.1.i214 = select i1 %i.jz, double %i.ka, double %i.jw ; 2 uses
  %i.kb = call double @llvm.floor.f64(double %.1.i214)
  %i.kc = fsub double %.1.i214, %i.kb             ; 3 uses
  %i.kd = sext i32 %.040.i213 to i64
  %i.ke = getelementptr [8 x i8], ptr %i.jg, i64 %i.kd ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 8
  %i.kg = getelementptr i8, ptr %i.ke, i64 -8
  %i.kh = load <2 x double>, ptr %i.kf, align 8, !tbaa !18 ; 2 uses
  %i.ki = load <2 x double>, ptr %i.kg, align 8, !tbaa !18 ; 3 uses
  %i.kj = fsub <2 x double> %i.kh, %i.ki          ; 3 uses
  %i.kk = fmul double %i.kc, 5.000000e-01
  %foldExtExtBinop385 = fadd <2 x double> %i.kh, %i.ki
  %i.kl = extractelement <2 x double> %foldExtExtBinop385, i64 0
  %i.km = extractelement <2 x double> %i.ki, i64 1 ; 2 uses
  %i.kn = call double @llvm.fmuladd.f64(double %i.km, double -2.000000e+00, double %i.kl)
  %i.ko = extractelement <2 x double> %i.kj, i64 0 ; 2 uses
  %i.kp = call double @llvm.fmuladd.f64(double %i.kc, double %i.kn, double %i.ko)
  %i.kq = call double @llvm.fmuladd.f64(double %i.kk, double %i.kp, double %i.km) ; 2 uses
  %shift387 = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop388 = fsub <2 x double> %shift387, %i.kj
  %i.kr = extractelement <2 x double> %foldExtExtBinop388, i64 0
  %i.ks = call double @llvm.fmuladd.f64(double %i.kc, double %i.kr, double %i.ko)
  %i.kt = fmul double %i.ks, 5.000000e-01
  %i.ku = fmul double %i.jv, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv322
  store double %i.ku, ptr %i.kv, align 8, !tbaa !18
  %i.kw = fadd double %.9260, %i.kq               ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv322 ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !18
  %i.kz = fadd double %i.ky, %i.kq
  store double %i.kz, ptr %i.kx, align 8, !tbaa !18
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next323 to i32
  %exitcond325.not = icmp eq i32 %i.jp, %lftr.wideiv
  br i1 %exitcond325.not, label %._crit_edge265, label %bb.i

._crit_edge294:                                   ; preds = %._crit_edge288, %._crit_edge270
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.8.lcssa, ptr %i.la, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 0

bb.j:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvars.iv354 = phi i64 [ 0, %.lr.ph293 ], [ %indvars.iv.next355, %._crit_edge288 ] ; 5 uses
  %indvars.iv343 = phi i32 [ 0, %.lr.ph293 ], [ %indvars.iv.next344, %._crit_edge288 ] ; 2 uses
  %i.lb = phi ptr [ %i.iu, %.lr.ph293 ], [ %i.ql, %._crit_edge288 ] ; 2 uses
  %i.lc = zext i32 %indvars.iv343 to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 120
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %indvars.iv354
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !4
  %.fr = freeze i32 %i.lg                         ; 2 uses
  %i.lh = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.li = call i32 @getNeighborBoxes(ptr noundef nonnull %i.lb, i32 noundef %i.lh, ptr noundef nonnull %i.a) #17 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  %i.lk = icmp sgt i32 %.fr, 0
  %or.cond379 = and i1 %i.lj, %i.lk
  br i1 %or.cond379, label %.lr.ph287.split.us.preheader, label %._crit_edge288

.lr.ph287.split.us.preheader:                     ; preds = %bb.j
  %wide.trip.count352 = zext nneg i32 %i.li to i64
  br label %.lr.ph287.split.us

.lr.ph287.split.us:                               ; preds = %.lr.ph287.split.us.preheader, %..loopexit229_crit_edge.split.us
  %indvars.iv349 = phi i64 [ 0, %.lr.ph287.split.us.preheader ], [ %indvars.iv.next350, %..loopexit229_crit_edge.split.us ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv349
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4  ; 3 uses
  %i.ln = sext i32 %i.lm to i64                   ; 2 uses
  %i.lo = icmp sgt i64 %indvars.iv354, %i.ln
  br i1 %i.lo, label %..loopexit229_crit_edge.split.us, label %.lr.ph284.us

.lr.ph284.us:                                     ; preds = %.lr.ph287.split.us
  %i.lp = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 120
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !64
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ln
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !4  ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  %i.lv = zext i32 %i.lm to i64
  %i.lw = icmp ne i64 %indvars.iv354, %i.lv
  br i1 %i.lu, label %.lr.ph279.us.preheader, label %..loopexit229_crit_edge.split.us

.lr.ph279.us.preheader:                           ; preds = %.lr.ph284.us
  %i.lx = shl i32 %i.lm, 6
  %2 = zext i32 %i.lx to i64
  br label %.lr.ph279.us

.lr.ph279.us:                                     ; preds = %.lr.ph279.us.preheader, %._crit_edge280.us
  %indvars.iv345 = phi i64 [ %i.lc, %.lr.ph279.us.preheader ], [ %indvars.iv.next346, %._crit_edge280.us ] ; 4 uses
  %.0188282.us = phi i32 [ 0, %.lr.ph279.us.preheader ], [ %i.qk, %._crit_edge280.us ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.us, %.lr.ph279.us
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %.loopexit.us ], [ %2, %.lr.ph279.us ] ; 4 uses
  %.0186277.us = phi i32 [ %i.qj, %.loopexit.us ], [ 0, %.lr.ph279.us ] ; 2 uses
  %.not.us = icmp samesign ugt i32 %.0186277.us, %.0188282.us
  %or.cond208.us = select i1 %i.lw, i1 true, i1 %.not.us
  br i1 %or.cond208.us, label %bb.l, label %.loopexit.us

bb.l:                                             ; preds = %bb.k
  %i.ly = load ptr, ptr %i.ac, align 8, !tbaa !59 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !65 ; 2 uses
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %i.ma, i64 %indvars.iv345 ; 3 uses
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.ma, i64 %indvars.iv339 ; 3 uses
  %i.md = load double, ptr %i.mb, align 8, !tbaa !18
  %i.me = load double, ptr %i.mc, align 8, !tbaa !18
  %i.mf = fsub double %i.md, %i.me                ; 4 uses
  %i.mg = call double @llvm.fmuladd.f64(double %i.mf, double %i.mf, double 0.000000e+00)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !18
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !18
  %i.ml = fsub double %i.mi, %i.mk                ; 4 uses
  %i.mm = call double @llvm.fmuladd.f64(double %i.ml, double %i.ml, double %i.mg)
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !18
  %i.mr = fsub double %i.mo, %i.mq                ; 4 uses
  %i.ms = call double @llvm.fmuladd.f64(double %i.mr, double %i.mr, double %i.mm) ; 2 uses
  %i.mt = fcmp ult double %i.ms, %i.ab
  br i1 %i.mt, label %.loopexit.us.loopexit, label %.loopexit.us

.loopexit.us.loopexit:                            ; preds = %bb.l
  %i.mu = call double @sqrt(double noundef %i.ms) #17, !tbaa !4 ; 8 uses
  %i.mv = load ptr, ptr %i.iy, align 8, !tbaa !29 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !23
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !27 ; 3 uses
  %i.na = fcmp olt double %i.mu, %i.mz
  %.0.i215.us = select i1 %i.na, double %i.mz, double %i.mu
  %i.nb = fsub double %.0.i215.us, %i.mz
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !26 ; 3 uses
  %i.ne = fmul double %i.nd, %i.nb                ; 2 uses
  %i.nf = call double @llvm.floor.f64(double %i.ne)
  %i.ng = fptosi double %i.nf to i32              ; 2 uses
  %i.nh = load i32, ptr %i.mv, align 8, !tbaa !25 ; 3 uses
  %i.ni = icmp slt i32 %i.nh, %i.ng
  %i.nj = sitofp i32 %i.nh to double
  %i.nk = fdiv double %i.nj, %i.nd
  %.040.i216.us = call i32 @llvm.smin.i32(i32 %i.nh, i32 %i.ng)
  %.1.i217.us = select i1 %i.ni, double %i.nk, double %i.ne ; 2 uses
  %i.nl = call double @llvm.floor.f64(double %.1.i217.us)
  %i.nm = fsub double %.1.i217.us, %i.nl
  %i.nn = sext i32 %.040.i216.us to i64
  %i.no = getelementptr [8 x i8], ptr %i.mx, i64 %i.nn ; 4 uses
  %i.np = getelementptr i8, ptr %i.no, i64 8
  %i.nq = load double, ptr %i.np, align 8, !tbaa !18
  %i.nr = getelementptr i8, ptr %i.no, i64 -8
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !18
  %i.nt = fsub double %i.nq, %i.ns                ; 2 uses
  %i.nu = getelementptr i8, ptr %i.no, i64 16
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !18
  %i.nw = load double, ptr %i.no, align 8, !tbaa !18
  %i.nx = fsub double %i.nv, %i.nw
  %i.ny = fsub double %i.nx, %i.nt
  %i.nz = call double @llvm.fmuladd.f64(double %i.nm, double %i.ny, double %i.nt)
  %i.oa = fmul double %i.nz, 5.000000e-01
  %i.ob = fmul double %i.nd, %i.oa                ; 6 uses
  %i.oc = load ptr, ptr %i.av, align 8, !tbaa !52 ; 2 uses
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv345 ; 6 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv339 ; 6 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !60 ; 2 uses
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %indvars.iv345 ; 4 uses
  %i.oi = getelementptr inbounds nuw [24 x i8], ptr %i.og, i64 %indvars.iv339 ; 4 uses
  %i.oj = load double, ptr %i.od, align 8, !tbaa !18
  %i.ok = load double, ptr %i.oe, align 8, !tbaa !18
  %i.ol = fadd double %i.oj, %i.ok
  %i.om = fmul double %i.ob, %i.ol
  %i.on = fmul double %i.mf, %i.om
  %i.oo = fdiv double %i.on, %i.mu
  %i.op = load double, ptr %i.oh, align 8, !tbaa !18
  %i.oq = fsub double %i.op, %i.oo
  store double %i.oq, ptr %i.oh, align 8, !tbaa !18
  %i.or = load double, ptr %i.od, align 8, !tbaa !18
  %i.os = load double, ptr %i.oe, align 8, !tbaa !18
  %i.ot = fadd double %i.or, %i.os
  %i.ou = fmul double %i.ob, %i.ot
  %i.ov = fmul double %i.mf, %i.ou
  %i.ow = fdiv double %i.ov, %i.mu
  %i.ox = load double, ptr %i.oi, align 8, !tbaa !18
  %i.oy = fadd double %i.ox, %i.ow
  store double %i.oy, ptr %i.oi, align 8, !tbaa !18
  %i.oz = load double, ptr %i.od, align 8, !tbaa !18
  %i.pa = load double, ptr %i.oe, align 8, !tbaa !18
  %i.pb = fadd double %i.oz, %i.pa
  %i.pc = fmul double %i.ob, %i.pb
  %i.pd = fmul double %i.ml, %i.pc
  %i.pe = fdiv double %i.pd, %i.mu
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !18
  %i.ph = fsub double %i.pg, %i.pe
  store double %i.ph, ptr %i.pf, align 8, !tbaa !18
  %i.pi = load double, ptr %i.od, align 8, !tbaa !18
  %i.pj = load double, ptr %i.oe, align 8, !tbaa !18
  %i.pk = fadd double %i.pi, %i.pj
  %i.pl = fmul double %i.ob, %i.pk
  %i.pm = fmul double %i.ml, %i.pl
  %i.pn = fdiv double %i.pm, %i.mu
  %i.po = getelementptr inbounds nuw i8, ptr %i.oi, i64 8 ; 2 uses
  %i.pp = load double, ptr %i.po, align 8, !tbaa !18
  %i.pq = fadd double %i.pp, %i.pn
  store double %i.pq, ptr %i.po, align 8, !tbaa !18
  %i.pr = load double, ptr %i.od, align 8, !tbaa !18
  %i.ps = load double, ptr %i.oe, align 8, !tbaa !18
  %i.pt = fadd double %i.pr, %i.ps
  %i.pu = fmul double %i.ob, %i.pt
  %i.pv = fmul double %i.mr, %i.pu
  %i.pw = fdiv double %i.pv, %i.mu
  %i.px = getelementptr inbounds nuw i8, ptr %i.oh, i64 16 ; 2 uses
  %i.py = load double, ptr %i.px, align 8, !tbaa !18
  %i.pz = fsub double %i.py, %i.pw
  store double %i.pz, ptr %i.px, align 8, !tbaa !18
  %i.qa = load double, ptr %i.od, align 8, !tbaa !18
  %i.qb = load double, ptr %i.oe, align 8, !tbaa !18
  %i.qc = fadd double %i.qa, %i.qb
  %i.qd = fmul double %i.ob, %i.qc
  %i.qe = fmul double %i.mr, %i.qd
  %i.qf = fdiv double %i.qe, %i.mu
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oi, i64 16 ; 2 uses
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !18
  %i.qi = fadd double %i.qh, %i.qf
  store double %i.qi, ptr %i.qg, align 8, !tbaa !18
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.l, %.loopexit.us.loopexit, %bb.k
  %i.qj = add nuw nsw i32 %.0186277.us, 1         ; 2 uses
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1
  %exitcond342.not = icmp eq i32 %i.qj, %i.lt
  br i1 %exitcond342.not, label %._crit_edge280.us, label %bb.k

..loopexit229_crit_edge.split.us:                 ; preds = %._crit_edge280.us, %.lr.ph284.us, %.lr.ph287.split.us
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %wide.trip.count352
  br i1 %exitcond353.not, label %._crit_edge288, label %.lr.ph287.split.us

._crit_edge280.us:                                ; preds = %.loopexit.us
  %i.qk = add nuw nsw i32 %.0188282.us, 1         ; 2 uses
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1
  %exitcond348.not = icmp eq i32 %i.qk, %.fr
  br i1 %exitcond348.not, label %..loopexit229_crit_edge.split.us, label %.lr.ph279.us

._crit_edge288:                                   ; preds = %..loopexit229_crit_edge.split.us, %bb.j
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.ql = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 12
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !63
  %i.qo = sext i32 %i.qn to i64
  %i.qp = icmp slt i64 %indvars.iv.next355, %i.qo
  %indvars.iv.next344 = add i32 %indvars.iv343, 64
  br i1 %i.qp, label %bb.j, label %._crit_edge294
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

end_hunk_0
