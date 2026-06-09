inline.NumInlined: 219
inline.NumDeleted: 51
begin_hunk_0_@_ZL13BM_PIC_1D_RAWRN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next154
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr [8 x i8], ptr %i.s, i64 %i.dq ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8     ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !11
  %i.du = fadd double %i.dn, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !11
  %i.dv = load double, ptr %i.dl, align 8, !tbaa !11
  %i.dw = load double, ptr %i.dr, align 8, !tbaa !11
  %i.dx = fadd double %i.dv, %i.dw
  store double %i.dx, ptr %i.dr, align 8, !tbaa !11
  %indvars.iv.next154.1 = add nuw nsw i64 %indvars.iv153, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.lr.ph124.us, !llvm.loop !102

.preheader118.us:                                 ; preds = %.preheader118.us.preheader213, %.preheader118.us
  %indvars.iv149 = phi i64 [ %indvars.iv.next150, %.preheader118.us ], [ %indvars.iv149.ph, %.preheader118.us.preheader213 ] ; 8 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv149 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv149
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !11
  %i.ec = fadd double %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv149 ; 3 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !11
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv149
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !11
  %i.eh = fsub double %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv149
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !11
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ej, double %i.ec) ; 2 uses
  store double %i.ek, ptr %i.dy, align 8, !tbaa !11
  %i.el = load double, ptr %i.ed, align 8, !tbaa !11
  %i.em = fadd double %i.ek, %i.el
  %i.en = fadd double %i.w, %i.em                 ; 2 uses
  %i.eo = fptosi double %i.en to i32              ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv149
  %i.eq = sitofp i32 %i.eo to double
  %i.er = fsub double %i.en, %i.eq                ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv149
  store double %i.er, ptr %i.es, align 8, !tbaa !11
  %i.et = and i32 %i.eo, 2047
  %i.eu = add nuw nsw i32 %i.et, 1                ; 2 uses
  store i32 %i.eu, ptr %i.ep, align 4, !tbaa !4
  %i.ev = uitofp nneg i32 %i.eu to double
  %i.ew = fadd double %i.er, %i.ev
  store double %i.ew, ptr %i.ed, align 8, !tbaa !11
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next150, %i.aj
  br i1 %exitcond152.not, label %.lr.ph124.us.preheader, label %.preheader118.us, !llvm.loop !103

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %bb.b ] ; 9 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ex, align 8, !tbaa !11
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ey, align 8, !tbaa !11
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4  ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !4
  %i.fc = sitofp i32 %i.fa to double
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.fc, ptr %i.fd, align 8, !tbaa !11
  %.not.us = icmp eq i32 %i.fa, 0
  br i1 %.not.us, label %.thread.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph.us
  %i.fe = sext i32 %i.fa to i64                   ; 2 uses
  %i.ff = getelementptr [8 x i8], ptr %i.k, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !11
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double %i.fh, ptr %i.fi, align 8, !tbaa !11
  %i.fj = getelementptr [8 x i8], ptr %i.o, i64 %i.fe
  %i.fk = getelementptr i8, ptr %i.fj, i64 -8
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !11
  br label %bb.b

.thread.us:                                       ; preds = %.lr.ph.us
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.fm, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.thread.us, %bb.a
  %i.fn = phi double [ %i.fl, %bb.a ], [ 0.000000e+00, %.thread.us ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store double %i.fn, ptr %i.fo, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aj
  br i1 %exitcond.not, label %.preheader118.us.preheader, label %.lr.ph.us, !llvm.loop !104

.preheader118.us.preheader:                       ; preds = %bb.b
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %.preheader118.us.preheader213, label %vector.body

vector.body:                                      ; preds = %.preheader118.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader118.us.preheader ] ; 8 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fp, align 8, !tbaa !11, !alias.scope !105, !noalias !108
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index
  %wide.load208 = load <2 x double>, ptr %i.fq, align 8, !tbaa !11, !alias.scope !114
  %i.fr = fadd <2 x double> %wide.load, %wide.load208
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %wide.load209 = load <2 x double>, ptr %i.fs, align 8, !tbaa !11, !alias.scope !115, !noalias !116
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  %wide.load210 = load <2 x double>, ptr %i.ft, align 8, !tbaa !11, !alias.scope !117
  %i.fu = fsub <2 x double> %wide.load209, %wide.load210
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  %wide.load211 = load <2 x double>, ptr %i.fv, align 8, !tbaa !11, !alias.scope !118
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> %wide.load211, <2 x double> %i.fr) ; 2 uses
  store <2 x double> %i.fw, ptr %i.fp, align 8, !tbaa !11, !alias.scope !105, !noalias !108
  %wide.load212 = load <2 x double>, ptr %i.fs, align 8, !tbaa !11, !alias.scope !115, !noalias !116
  %i.fx = fadd <2 x double> %i.fw, %wide.load212
  %i.fy = fadd <2 x double> %broadcast.splat, %i.fx ; 2 uses
  %i.fz = fptosi <2 x double> %i.fy to <2 x i32>  ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index
  %i.gb = sitofp <2 x i32> %i.fz to <2 x double>
  %i.gc = fsub <2 x double> %i.fy, %i.gb          ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index
  store <2 x double> %i.gc, ptr %i.gd, align 8, !tbaa !11, !alias.scope !119, !noalias !120
  %i.ge = and <2 x i32> %i.fz, splat (i32 2047)
  %i.gf = add nuw nsw <2 x i32> %i.ge, splat (i32 1) ; 2 uses
  store <2 x i32> %i.gf, ptr %i.ga, align 4, !tbaa !4
  %i.gg = uitofp nneg <2 x i32> %i.gf to <2 x double>
  %i.gh = fadd <2 x double> %i.gc, %i.gg
  store <2 x double> %i.gh, ptr %i.fs, align 8, !tbaa !11, !alias.scope !115, !noalias !116
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph124.us.preheader, label %.preheader118.us.preheader213

.preheader118.us.preheader213:                    ; preds = %.preheader118.us.preheader, %middle.block
  %indvars.iv149.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader118.us.preheader ]
  br label %.preheader118.us

.lr.ph124.us.preheader:                           ; preds = %.preheader118.us, %middle.block
  br i1 %i.cj, label %.lr.ph124.us.epil.preheader, label %.lr.ph124.us

._crit_edge127:                                   ; preds = %._crit_edge.us, %.preheader119.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 11 uses
  tail call void @_Z8loopInitj(i32 noundef 26)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !83   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83   ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !83   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !83   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !83   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 32, !tbaa !40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13
  %.not = icmp ne i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16           ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not210212 = icmp eq i64 %i.ad, 0
  %.not.i.not210 = select i1 %.not, i1 true, i1 %.not.i.not210212
  br i1 %.not.i.not210, label %._crit_edge, label %.preheader199.lr.ph, !prof !39

.preheader199.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.ae = trunc i64 %i.z to i32
  %i.af = icmp sgt i32 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count = and i64 %i.z, 2147483647     ; 22 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.phi.trans.insert239 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert241 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.trip.count224 = and i64 %i.z, 2147483647
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.trip.count233 = and i64 %i.z, 2147483647  ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.cq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %1 = shl nuw nsw i64 %wide.trip.count, 3        ; 46 uses
  %2 = add nuw nsw i64 %1, 8                      ; 2 uses
  %i.cr = add nsw i64 %1, -8                      ; 15 uses
  %i.cs = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %min.iters.check1031 = icmp ult i64 %i.cs, 2
  %n.vec1034 = and i64 %i.cs, -2                  ; 2 uses
  %i.ct = or i64 %i.cs, 1
  %cmp.n1055 = icmp eq i64 %i.cs, %n.vec1034
  %3 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check923 = icmp ult i64 %3, 2
  %n.vec926 = and i64 %3, -2                      ; 2 uses
  %i.cu = or i64 %3, 1
  %cmp.n947 = icmp eq i64 %3, %n.vec926
  %4 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check815 = icmp ult i64 %4, 2
  %n.vec818 = and i64 %4, -2                      ; 2 uses
  %i.cv = or i64 %4, 1
  %cmp.n839 = icmp eq i64 %4, %n.vec818
  %5 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check707 = icmp ult i64 %5, 2
  %n.vec710 = and i64 %5, -2                      ; 2 uses
  %i.cw = or i64 %5, 1
  %cmp.n731 = icmp eq i64 %5, %n.vec710
  %6 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check599 = icmp ult i64 %6, 2
  %n.vec602 = and i64 %6, -2                      ; 2 uses
  %i.cx = or i64 %6, 1
  %cmp.n623 = icmp eq i64 %6, %n.vec602
  %7 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check487 = icmp ult i64 %7, 2
  %n.vec490 = and i64 %7, -2                      ; 2 uses
  %i.cy = or i64 %7, 1
  %cmp.n515 = icmp eq i64 %7, %n.vec490
  %8 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check381 = icmp ult i64 %8, 2
  %n.vec384 = and i64 %8, -2                      ; 2 uses
  %i.cz = or i64 %8, 1
  %cmp.n393 = icmp eq i64 %8, %n.vec384
  %i.da = and i64 %i.z, 1
  %lcmp.mod.not.not = icmp eq i64 %i.da, 0
  %9 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check348 = icmp ult i64 %9, 2
  %n.vec351 = and i64 %9, -2                      ; 2 uses
  %i.db = or i64 %9, 1
  %cmp.n360 = icmp eq i64 %9, %n.vec351
  %i.dc = and i64 %i.z, 1
  %lcmp.mod1066.not.not = icmp eq i64 %i.dc, 0
  %10 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %min.iters.check315 = icmp ult i64 %10, 2
  %n.vec318 = and i64 %10, -2                     ; 2 uses
  %i.dd = or i64 %10, 1
  %cmp.n327 = icmp eq i64 %10, %n.vec318
  %i.de = and i64 %i.z, 1
  %lcmp.mod1068.not.not = icmp eq i64 %i.de, 0
  %11 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %min.iters.check282 = icmp ult i64 %11, 2
  %n.vec285 = and i64 %11, -2                     ; 2 uses
  %i.df = or i64 %11, 1
  %cmp.n294 = icmp eq i64 %11, %n.vec285
  %i.dg = and i64 %i.z, 1
  %lcmp.mod1070.not.not = icmp eq i64 %i.dg, 0
  %12 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %min.iters.check = icmp ult i64 %12, 2
  %n.vec = and i64 %12, -2                        ; 2 uses
  %i.dh = or i64 %12, 1
  %cmp.n = icmp eq i64 %12, %n.vec
  %i.di = and i64 %i.z, 1
  %lcmp.mod1072.not.not = icmp eq i64 %i.di, 0
  br label %.preheader199

.preheader199:                                    ; preds = %.preheader199.lr.ph, %.split.us
  %.sroa.0190.0211 = phi i64 [ %i.ad, %.preheader199.lr.ph ], [ %i.aps, %.split.us ]
  br i1 %i.af, label %.preheader196.us.preheader, label %.split.us

.preheader196.us.preheader:                       ; preds = %.preheader199
  %i.dj = load ptr, ptr %i.ag, align 8, !tbaa !8  ; 11 uses
  %i.dk = load ptr, ptr %i.ah, align 8, !tbaa !8  ; 11 uses
  %i.dl = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 7 uses
  %i.dm = load ptr, ptr %i.aj, align 8, !tbaa !8  ; 7 uses
  %i.dn = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 11 uses
  %i.do = load ptr, ptr %i.al, align 8, !tbaa !8  ; 7 uses
  %i.dp = load ptr, ptr %i.am, align 8, !tbaa !8  ; 11 uses
  %i.dq = load ptr, ptr %i.an, align 8, !tbaa !8  ; 4 uses
  %i.dr = load ptr, ptr %i.m, align 8, !tbaa !8   ; 4 uses
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check1031, label %scalar.ph1030.preheader, label %vector.memcheck949

vector.memcheck949:                               ; preds = %.preheader196.us.preheader
  %scevgep950 = getelementptr nuw i8, ptr %i.dq, i64 8 ; 9 uses
  %scevgep951 = getelementptr i8, ptr %i.dq, i64 %1 ; 9 uses
  %scevgep952 = getelementptr i8, ptr %i.ds, i64 8 ; 9 uses
  %scevgep953 = getelementptr i8, ptr %i.ds, i64 %1 ; 9 uses
  %scevgep954 = getelementptr i8, ptr %i.dj, i64 %i.cr ; 2 uses
  %scevgep955 = getelementptr i8, ptr %i.dk, i64 %i.cr ; 2 uses
  %scevgep956 = getelementptr i8, ptr %i.dl, i64 %1 ; 2 uses
  %scevgep957 = getelementptr i8, ptr %i.dm, i64 %1 ; 2 uses
  %scevgep958 = getelementptr i8, ptr %i.dn, i64 %1 ; 2 uses
  %scevgep959 = getelementptr i8, ptr %i.do, i64 %1 ; 2 uses
  %scevgep960 = getelementptr i8, ptr %i.dp, i64 %i.cr ; 2 uses
  %scevgep961 = getelementptr i8, ptr %i.dr, i64 8 ; 2 uses
  %scevgep962 = getelementptr i8, ptr %i.dr, i64 %1 ; 2 uses
  %bound0963 = icmp ult ptr %scevgep950, %scevgep953
  %bound1964 = icmp ult ptr %scevgep952, %scevgep951
  %found.conflict965 = and i1 %bound0963, %bound1964
  %bound0966 = icmp ult ptr %scevgep950, %scevgep954
  %bound1967 = icmp ult ptr %i.dj, %scevgep951
  %found.conflict968 = and i1 %bound0966, %bound1967
  %conflict.rdx969 = or i1 %found.conflict965, %found.conflict968
  %bound0970 = icmp ult ptr %scevgep950, %scevgep955
  %bound1971 = icmp ult ptr %i.dk, %scevgep951
  %found.conflict972 = and i1 %bound0970, %bound1971
  %conflict.rdx973 = or i1 %conflict.rdx969, %found.conflict972
  %bound0974 = icmp ult ptr %scevgep950, %scevgep956
  %bound1975 = icmp ult ptr %i.dl, %scevgep951
  %found.conflict976 = and i1 %bound0974, %bound1975
  %conflict.rdx977 = or i1 %conflict.rdx973, %found.conflict976
  %bound0978 = icmp ult ptr %scevgep950, %scevgep957
  %bound1979 = icmp ult ptr %i.dm, %scevgep951
  %found.conflict980 = and i1 %bound0978, %bound1979
  %conflict.rdx981 = or i1 %conflict.rdx977, %found.conflict980
  %bound0982 = icmp ult ptr %scevgep950, %scevgep958
  %bound1983 = icmp ult ptr %i.dn, %scevgep951
  %found.conflict984 = and i1 %bound0982, %bound1983
  %conflict.rdx985 = or i1 %conflict.rdx981, %found.conflict984
  %bound0986 = icmp ult ptr %scevgep950, %scevgep959
  %bound1987 = icmp ult ptr %i.do, %scevgep951
  %found.conflict988 = and i1 %bound0986, %bound1987
  %conflict.rdx989 = or i1 %conflict.rdx985, %found.conflict988
  %bound0990 = icmp ult ptr %scevgep950, %scevgep960
  %bound1991 = icmp ult ptr %i.dp, %scevgep951
  %found.conflict992 = and i1 %bound0990, %bound1991
  %conflict.rdx993 = or i1 %conflict.rdx989, %found.conflict992
  %bound0994 = icmp ult ptr %scevgep950, %scevgep962
  %bound1995 = icmp ult ptr %scevgep961, %scevgep951
  %found.conflict996 = and i1 %bound0994, %bound1995
  %conflict.rdx997 = or i1 %conflict.rdx993, %found.conflict996
  %bound0998 = icmp ult ptr %scevgep952, %scevgep954
  %bound1999 = icmp ult ptr %i.dj, %scevgep953
  %found.conflict1000 = and i1 %bound0998, %bound1999
  %conflict.rdx1001 = or i1 %conflict.rdx997, %found.conflict1000
  %bound01002 = icmp ult ptr %scevgep952, %scevgep955
  %bound11003 = icmp ult ptr %i.dk, %scevgep953
  %found.conflict1004 = and i1 %bound01002, %bound11003
  %conflict.rdx1005 = or i1 %conflict.rdx1001, %found.conflict1004
  %bound01006 = icmp ult ptr %scevgep952, %scevgep956
  %bound11007 = icmp ult ptr %i.dl, %scevgep953
  %found.conflict1008 = and i1 %bound01006, %bound11007
  %conflict.rdx1009 = or i1 %conflict.rdx1005, %found.conflict1008
  %bound01010 = icmp ult ptr %scevgep952, %scevgep957
  %bound11011 = icmp ult ptr %i.dm, %scevgep953
  %found.conflict1012 = and i1 %bound01010, %bound11011
  %conflict.rdx1013 = or i1 %conflict.rdx1009, %found.conflict1012
  %bound01014 = icmp ult ptr %scevgep952, %scevgep958
  %bound11015 = icmp ult ptr %i.dn, %scevgep953
  %found.conflict1016 = and i1 %bound01014, %bound11015
  %conflict.rdx1017 = or i1 %conflict.rdx1013, %found.conflict1016
  %bound01018 = icmp ult ptr %scevgep952, %scevgep959
  %bound11019 = icmp ult ptr %i.do, %scevgep953
  %found.conflict1020 = and i1 %bound01018, %bound11019
  %conflict.rdx1021 = or i1 %conflict.rdx1017, %found.conflict1020
  %bound01022 = icmp ult ptr %scevgep952, %scevgep960
  %bound11023 = icmp ult ptr %i.dp, %scevgep953
  %found.conflict1024 = and i1 %bound01022, %bound11023
  %conflict.rdx1025 = or i1 %conflict.rdx1021, %found.conflict1024
  %bound01026 = icmp ult ptr %scevgep952, %scevgep962
  %bound11027 = icmp ult ptr %scevgep961, %scevgep953
  %found.conflict1028 = and i1 %bound01026, %bound11027
  %conflict.rdx1029 = or i1 %conflict.rdx1025, %found.conflict1028
  br i1 %conflict.rdx1029, label %scalar.ph1030.preheader, label %vector.body1035

vector.body1035:                                  ; preds = %vector.memcheck949, %vector.body1035
  %index1036 = phi i64 [ %index.next1053, %vector.body1035 ], [ 0, %vector.memcheck949 ] ; 9 uses
  %i.dt = or disjoint i64 %index1036, 1           ; 7 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %index1036
  %wide.load1037 = load <2 x double>, ptr %i.du, align 8, !tbaa !11, !alias.scope !122
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %index1036
  %wide.load1038 = load <2 x double>, ptr %i.dv, align 8, !tbaa !11, !alias.scope !125
  %i.dw = fadd <2 x double> %wide.load1037, %wide.load1038
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %index1036 ; 2 uses
  %wide.load1039 = load <2 x double>, ptr %i.dx, align 8, !tbaa !11, !alias.scope !127
  %i.dy = fsub <2 x double> %i.dw, %wide.load1039
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %index1036 ; 2 uses
  %wide.load1040 = load <2 x double>, ptr %i.dz, align 8, !tbaa !11, !alias.scope !129
  %i.ea = fsub <2 x double> %i.dy, %wide.load1040
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dt ; 2 uses
  %wide.load1041 = load <2 x double>, ptr %i.eb, align 8, !tbaa !11, !alias.scope !131
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %index1036
  %wide.load1042 = load <2 x double>, ptr %i.ec, align 8, !tbaa !11, !alias.scope !131
  %i.ed = fadd <2 x double> %wide.load1041, %wide.load1042
  %i.ee = fmul <2 x double> %i.ea, %i.ed
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.do, i64 %index1036 ; 2 uses
  %wide.load1043 = load <2 x double>, ptr %i.ef, align 8, !tbaa !11, !alias.scope !133
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %index1036
  %wide.load1044 = load <2 x double>, ptr %i.eg, align 8, !tbaa !11, !alias.scope !135
  %i.eh = fadd <2 x double> %wide.load1043, %wide.load1044
  %i.ei = fdiv <2 x double> %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dt
  store <2 x double> %i.ei, ptr %i.ej, align 8, !tbaa !11, !alias.scope !137, !noalias !139
  %wide.load1045 = load <2 x double>, ptr %i.dx, align 8, !tbaa !11, !alias.scope !127
  %wide.load1046 = load <2 x double>, ptr %i.dz, align 8, !tbaa !11, !alias.scope !129
  %i.ek = fadd <2 x double> %wide.load1045, %wide.load1046
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dt
  %wide.load1047 = load <2 x double>, ptr %i.el, align 8, !tbaa !11, !alias.scope !127
  %i.em = fsub <2 x double> %i.ek, %wide.load1047
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dt
  %wide.load1048 = load <2 x double>, ptr %i.en, align 8, !tbaa !11, !alias.scope !129
  %i.eo = fsub <2 x double> %i.em, %wide.load1048
  %wide.load1049 = load <2 x double>, ptr %i.eb, align 8, !tbaa !11, !alias.scope !131
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dt
  %wide.load1050 = load <2 x double>, ptr %i.ep, align 8, !tbaa !11, !alias.scope !142
  %i.eq = fadd <2 x double> %wide.load1049, %wide.load1050
  %i.er = fmul <2 x double> %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dt
  %wide.load1051 = load <2 x double>, ptr %i.es, align 8, !tbaa !11, !alias.scope !133
  %wide.load1052 = load <2 x double>, ptr %i.ef, align 8, !tbaa !11, !alias.scope !133
  %i.et = fadd <2 x double> %wide.load1051, %wide.load1052
  %i.eu = fdiv <2 x double> %i.er, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  store <2 x double> %i.eu, ptr %i.ev, align 8, !tbaa !11, !alias.scope !143, !noalias !144
  %index.next1053 = add nuw i64 %index1036, 2     ; 2 uses
  %i.ew = icmp eq i64 %index.next1053, %n.vec1034
  br i1 %i.ew, label %middle.block1054, label %vector.body1035, !llvm.loop !145

middle.block1054:                                 ; preds = %vector.body1035
  br i1 %cmp.n1055, label %._crit_edge.us, label %scalar.ph1030.preheader

scalar.ph1030.preheader:                          ; preds = %vector.memcheck949, %.preheader196.us.preheader, %middle.block1054
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck949 ], [ 1, %.preheader196.us.preheader ], [ %i.ct, %middle.block1054 ]
  br label %scalar.ph1030

scalar.ph1030:                                    ; preds = %scalar.ph1030.preheader, %scalar.ph1030
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph1030 ], [ %indvars.iv.ph, %scalar.ph1030.preheader ] ; 9 uses
  %i.ex = add nsw i64 %indvars.iv, -1             ; 7 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !11
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.ex
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !11
  %i.fc = fadd double %i.ez, %i.fb
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ex ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !11
  %i.ff = fsub double %i.fc, %i.fe
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.ex ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !11
  %i.fi = fsub double %i.ff, %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !11
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ex
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !11
  %i.fn = fadd double %i.fk, %i.fm
  %i.fo = fmul double %i.fi, %i.fn
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ex ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !11
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ex
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !11
  %i.ft = fadd double %i.fq, %i.fs
  %i.fu = fdiv double %i.fo, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv
  store double %i.fu, ptr %i.fv, align 8, !tbaa !11
  %i.fw = load double, ptr %i.fd, align 8, !tbaa !11
  %i.fx = load double, ptr %i.fg, align 8, !tbaa !11
  %i.fy = fadd double %i.fw, %i.fx
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !11
  %i.gb = fsub double %i.fy, %i.ga
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !11
  %i.ge = fsub double %i.gb, %i.gd
  %i.gf = load double, ptr %i.fj, align 8, !tbaa !11
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !11
  %i.gi = fadd double %i.gf, %i.gh
  %i.gj = fmul double %i.ge, %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !11
  %i.gm = load double, ptr %i.fp, align 8, !tbaa !11
  %i.gn = fadd double %i.gl, %i.gm
  %i.go = fdiv double %i.gj, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv
  store double %i.go, ptr %i.gp, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph1030, !llvm.loop !146

._crit_edge.us:                                   ; preds = %scalar.ph1030, %middle.block1054
  %i.gq = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 10 uses
  %i.gr = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 10 uses
  %i.gs = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 10 uses
  %i.gt = load ptr, ptr %i.as, align 8, !tbaa !8  ; 10 uses
  %i.gu = load ptr, ptr %i.at, align 8, !tbaa !8  ; 4 uses
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check923, label %scalar.ph922.preheader, label %vector.memcheck841

vector.memcheck841:                               ; preds = %._crit_edge.us
  %scevgep842 = getelementptr nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %scevgep843 = getelementptr i8, ptr %i.gu, i64 %1 ; 2 uses
  %scevgep844 = getelementptr i8, ptr %i.gv, i64 8 ; 2 uses
  %scevgep845 = getelementptr i8, ptr %i.gv, i64 %1 ; 2 uses
  %scevgep846 = getelementptr i8, ptr %i.gq, i64 %i.cr
  %scevgep847 = getelementptr i8, ptr %i.gr, i64 %i.cr
  %scevgep848 = getelementptr i8, ptr %i.dj, i64 %1
  %scevgep849 = getelementptr i8, ptr %i.dk, i64 %1
  %scevgep850 = getelementptr i8, ptr %i.gs, i64 %1
  %scevgep851 = getelementptr i8, ptr %i.dp, i64 %1
  %scevgep852 = getelementptr i8, ptr %i.gt, i64 %i.cr
  %scevgep853 = getelementptr i8, ptr %i.dn, i64 8
  %scevgep854 = getelementptr i8, ptr %i.dn, i64 %1
  %bound0855 = icmp ult ptr %scevgep842, %scevgep845
  %bound1856 = icmp ult ptr %scevgep844, %scevgep843
  %found.conflict857 = and i1 %bound0855, %bound1856
  %i.gw = insertelement <8 x ptr> poison, ptr %scevgep842, i64 0
  %i.gx = shufflevector <8 x ptr> %i.gw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gy = insertelement <8 x ptr> poison, ptr %scevgep846, i64 0
  %i.gz = insertelement <8 x ptr> %i.gy, ptr %scevgep847, i64 1
  %i.ha = insertelement <8 x ptr> %i.gz, ptr %scevgep848, i64 2
  %i.hb = insertelement <8 x ptr> %i.ha, ptr %scevgep849, i64 3
  %i.hc = insertelement <8 x ptr> %i.hb, ptr %scevgep850, i64 4
  %i.hd = insertelement <8 x ptr> %i.hc, ptr %scevgep851, i64 5
  %i.he = insertelement <8 x ptr> %i.hd, ptr %scevgep852, i64 6
  %i.hf = insertelement <8 x ptr> %i.he, ptr %scevgep854, i64 7 ; 2 uses
  %i.hg = icmp ult <8 x ptr> %i.gx, %i.hf
  %i.hh = insertelement <8 x ptr> poison, ptr %i.gq, i64 0
  %i.hi = insertelement <8 x ptr> %i.hh, ptr %i.gr, i64 1
  %i.hj = insertelement <8 x ptr> %i.hi, ptr %i.dj, i64 2
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %i.dk, i64 3
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %i.gs, i64 4
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %i.dp, i64 5
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %i.gt, i64 6
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep853, i64 7 ; 2 uses
  %i.hp = insertelement <8 x ptr> poison, ptr %scevgep843, i64 0
  %i.hq = shufflevector <8 x ptr> %i.hp, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hr = icmp ult <8 x ptr> %i.ho, %i.hq
  %i.hs = and <8 x i1> %i.hg, %i.hr
  %i.ht = insertelement <8 x ptr> poison, ptr %scevgep844, i64 0
  %i.hu = shufflevector <8 x ptr> %i.ht, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hv = icmp ult <8 x ptr> %i.hu, %i.hf
  %i.hw = insertelement <8 x ptr> poison, ptr %scevgep845, i64 0
  %i.hx = shufflevector <8 x ptr> %i.hw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hy = icmp ult <8 x ptr> %i.ho, %i.hx
  %i.hz = and <8 x i1> %i.hv, %i.hy
  %rdx.op1061 = or <8 x i1> %i.hs, %i.hz
  %i.ia = bitcast <8 x i1> %rdx.op1061 to i8
  %i.ib = icmp ne i8 %i.ia, 0
  %op.rdx1062 = or i1 %i.ib, %found.conflict857
  br i1 %op.rdx1062, label %scalar.ph922.preheader, label %vector.body927

vector.body927:                                   ; preds = %vector.memcheck841, %vector.body927
  %index928 = phi i64 [ %index.next945, %vector.body927 ], [ 0, %vector.memcheck841 ] ; 9 uses
  %i.ic = or disjoint i64 %index928, 1            ; 7 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %index928
  %wide.load929 = load <2 x double>, ptr %i.id, align 8, !tbaa !11, !alias.scope !147
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index928
  %wide.load930 = load <2 x double>, ptr %i.ie, align 8, !tbaa !11, !alias.scope !150
  %i.if = fadd <2 x double> %wide.load929, %wide.load930
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %index928 ; 2 uses
  %wide.load931 = load <2 x double>, ptr %i.ig, align 8, !tbaa !11, !alias.scope !152
  %i.ih = fsub <2 x double> %i.if, %wide.load931
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %index928 ; 2 uses
  %wide.load932 = load <2 x double>, ptr %i.ii, align 8, !tbaa !11, !alias.scope !154
  %i.ij = fsub <2 x double> %i.ih, %wide.load932
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ic ; 2 uses
  %wide.load933 = load <2 x double>, ptr %i.ik, align 8, !tbaa !11, !alias.scope !156
  %i.il = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %index928
  %wide.load934 = load <2 x double>, ptr %i.il, align 8, !tbaa !11, !alias.scope !156
  %i.im = fadd <2 x double> %wide.load933, %wide.load934
  %i.in = fmul <2 x double> %i.ij, %i.im
  %i.io = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %index928 ; 2 uses
  %wide.load935 = load <2 x double>, ptr %i.io, align 8, !tbaa !11, !alias.scope !158
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %index928
  %wide.load936 = load <2 x double>, ptr %i.ip, align 8, !tbaa !11, !alias.scope !160
  %i.iq = fadd <2 x double> %wide.load935, %wide.load936
  %i.ir = fdiv <2 x double> %i.in, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ic
  store <2 x double> %i.ir, ptr %i.is, align 8, !tbaa !11, !alias.scope !162, !noalias !164
  %wide.load937 = load <2 x double>, ptr %i.ig, align 8, !tbaa !11, !alias.scope !152
  %wide.load938 = load <2 x double>, ptr %i.ii, align 8, !tbaa !11, !alias.scope !154
  %i.it = fadd <2 x double> %wide.load937, %wide.load938
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ic
  %wide.load939 = load <2 x double>, ptr %i.iu, align 8, !tbaa !11, !alias.scope !152
  %i.iv = fsub <2 x double> %i.it, %wide.load939
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ic
  %wide.load940 = load <2 x double>, ptr %i.iw, align 8, !tbaa !11, !alias.scope !154
  %i.ix = fsub <2 x double> %i.iv, %wide.load940
  %wide.load941 = load <2 x double>, ptr %i.ik, align 8, !tbaa !11, !alias.scope !156
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ic
  %wide.load942 = load <2 x double>, ptr %i.iy, align 8, !tbaa !11, !alias.scope !167
  %i.iz = fadd <2 x double> %wide.load941, %wide.load942
  %i.ja = fmul <2 x double> %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ic
  %wide.load943 = load <2 x double>, ptr %i.jb, align 8, !tbaa !11, !alias.scope !158
  %wide.load944 = load <2 x double>, ptr %i.io, align 8, !tbaa !11, !alias.scope !158
  %i.jc = fadd <2 x double> %wide.load943, %wide.load944
  %i.jd = fdiv <2 x double> %i.ja, %i.jc
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ic
  store <2 x double> %i.jd, ptr %i.je, align 8, !tbaa !11, !alias.scope !168, !noalias !169
  %index.next945 = add nuw i64 %index928, 2       ; 2 uses
  %i.jf = icmp eq i64 %index.next945, %n.vec926
  br i1 %i.jf, label %middle.block946, label %vector.body927, !llvm.loop !170

middle.block946:                                  ; preds = %vector.body927
  br i1 %cmp.n947, label %._crit_edge.us.1, label %scalar.ph922.preheader

scalar.ph922.preheader:                           ; preds = %vector.memcheck841, %._crit_edge.us, %middle.block946
  %indvars.iv.1.ph = phi i64 [ 1, %vector.memcheck841 ], [ 1, %._crit_edge.us ], [ %i.cu, %middle.block946 ]
  br label %scalar.ph922

scalar.ph922:                                     ; preds = %scalar.ph922.preheader, %scalar.ph922
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph922 ], [ %indvars.iv.1.ph, %scalar.ph922.preheader ] ; 9 uses
  %i.jg = add nsw i64 %indvars.iv.1, -1           ; 7 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.jg
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !11
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.jg
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !11
  %i.jl = fadd double %i.ji, %i.jk
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.jg ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !11
  %i.jo = fsub double %i.jl, %i.jn
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.jg ; 2 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !11
  %i.jr = fsub double %i.jo, %i.jq
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.1 ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !11
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.jg
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !11
  %i.jw = fadd double %i.jt, %i.jv
  %i.jx = fmul double %i.jr, %i.jw
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.jg ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !11
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.jg
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !11
  %i.kc = fadd double %i.jz, %i.kb
  %i.kd = fdiv double %i.jx, %i.kc
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.1
  store double %i.kd, ptr %i.ke, align 8, !tbaa !11
  %i.kf = load double, ptr %i.jm, align 8, !tbaa !11
  %i.kg = load double, ptr %i.jp, align 8, !tbaa !11
  %i.kh = fadd double %i.kf, %i.kg
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.1
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !11
  %i.kk = fsub double %i.kh, %i.kj
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.1
  %i.km = load double, ptr %i.kl, align 8, !tbaa !11
  %i.kn = fsub double %i.kk, %i.km
  %i.ko = load double, ptr %i.js, align 8, !tbaa !11
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.1
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !11
  %i.kr = fadd double %i.ko, %i.kq
  %i.ks = fmul double %i.kn, %i.kr
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.1
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !11
  %i.kv = load double, ptr %i.jy, align 8, !tbaa !11
  %i.kw = fadd double %i.ku, %i.kv
  %i.kx = fdiv double %i.ks, %i.kw
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.1
  store double %i.kx, ptr %i.ky, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %scalar.ph922, !llvm.loop !171

._crit_edge.us.1:                                 ; preds = %scalar.ph922, %middle.block946
  %i.kz = load ptr, ptr %i.av, align 8, !tbaa !8  ; 10 uses
  %i.la = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 10 uses
  %i.lb = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 10 uses
  %i.lc = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 10 uses
  %i.ld = load ptr, ptr %i.az, align 8, !tbaa !8  ; 4 uses
  %i.le = load ptr, ptr %i.ba, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check815, label %scalar.ph814.preheader, label %vector.memcheck733

vector.memcheck733:                               ; preds = %._crit_edge.us.1
  %scevgep734 = getelementptr nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %scevgep735 = getelementptr i8, ptr %i.ld, i64 %1 ; 2 uses
  %scevgep736 = getelementptr i8, ptr %i.le, i64 8 ; 2 uses
  %scevgep737 = getelementptr i8, ptr %i.le, i64 %1 ; 2 uses
  %scevgep738 = getelementptr i8, ptr %i.kz, i64 %i.cr
  %scevgep739 = getelementptr i8, ptr %i.la, i64 %i.cr
  %scevgep740 = getelementptr i8, ptr %i.gq, i64 %1
  %scevgep741 = getelementptr i8, ptr %i.gr, i64 %1
  %scevgep742 = getelementptr i8, ptr %i.lb, i64 %1
  %scevgep743 = getelementptr i8, ptr %i.gt, i64 %1
  %scevgep744 = getelementptr i8, ptr %i.lc, i64 %i.cr
  %scevgep745 = getelementptr i8, ptr %i.gs, i64 8
  %scevgep746 = getelementptr i8, ptr %i.gs, i64 %1
  %bound0747 = icmp ult ptr %scevgep734, %scevgep737
  %bound1748 = icmp ult ptr %scevgep736, %scevgep735
  %found.conflict749 = and i1 %bound0747, %bound1748
  %i.lf = insertelement <8 x ptr> poison, ptr %scevgep734, i64 0
  %i.lg = shufflevector <8 x ptr> %i.lf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.lh = insertelement <8 x ptr> poison, ptr %scevgep738, i64 0
  %i.li = insertelement <8 x ptr> %i.lh, ptr %scevgep739, i64 1
  %i.lj = insertelement <8 x ptr> %i.li, ptr %scevgep740, i64 2
  %i.lk = insertelement <8 x ptr> %i.lj, ptr %scevgep741, i64 3
  %i.ll = insertelement <8 x ptr> %i.lk, ptr %scevgep742, i64 4
  %i.lm = insertelement <8 x ptr> %i.ll, ptr %scevgep743, i64 5
  %i.ln = insertelement <8 x ptr> %i.lm, ptr %scevgep744, i64 6
  %i.lo = insertelement <8 x ptr> %i.ln, ptr %scevgep746, i64 7 ; 2 uses
  %i.lp = icmp ult <8 x ptr> %i.lg, %i.lo
  %i.lq = insertelement <8 x ptr> poison, ptr %i.kz, i64 0
  %i.lr = insertelement <8 x ptr> %i.lq, ptr %i.la, i64 1
  %i.ls = insertelement <8 x ptr> %i.lr, ptr %i.gq, i64 2
  %i.lt = insertelement <8 x ptr> %i.ls, ptr %i.gr, i64 3
  %i.lu = insertelement <8 x ptr> %i.lt, ptr %i.lb, i64 4
  %i.lv = insertelement <8 x ptr> %i.lu, ptr %i.gt, i64 5
  %i.lw = insertelement <8 x ptr> %i.lv, ptr %i.lc, i64 6
  %i.lx = insertelement <8 x ptr> %i.lw, ptr %scevgep745, i64 7 ; 2 uses
  %i.ly = insertelement <8 x ptr> poison, ptr %scevgep735, i64 0
  %i.lz = shufflevector <8 x ptr> %i.ly, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ma = icmp ult <8 x ptr> %i.lx, %i.lz
  %i.mb = and <8 x i1> %i.lp, %i.ma
  %i.mc = insertelement <8 x ptr> poison, ptr %scevgep736, i64 0
  %i.md = shufflevector <8 x ptr> %i.mc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.me = icmp ult <8 x ptr> %i.md, %i.lo
  %i.mf = insertelement <8 x ptr> poison, ptr %scevgep737, i64 0
  %i.mg = shufflevector <8 x ptr> %i.mf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.mh = icmp ult <8 x ptr> %i.lx, %i.mg
  %i.mi = and <8 x i1> %i.me, %i.mh
  %rdx.op1059 = or <8 x i1> %i.mb, %i.mi
  %i.mj = bitcast <8 x i1> %rdx.op1059 to i8
  %i.mk = icmp ne i8 %i.mj, 0
  %op.rdx1060 = or i1 %i.mk, %found.conflict749
  br i1 %op.rdx1060, label %scalar.ph814.preheader, label %vector.body819

vector.body819:                                   ; preds = %vector.memcheck733, %vector.body819
  %index820 = phi i64 [ %index.next837, %vector.body819 ], [ 0, %vector.memcheck733 ] ; 9 uses
  %i.ml = or disjoint i64 %index820, 1            ; 7 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %index820
  %wide.load821 = load <2 x double>, ptr %i.mm, align 8, !tbaa !11, !alias.scope !172
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.la, i64 %index820
  %wide.load822 = load <2 x double>, ptr %i.mn, align 8, !tbaa !11, !alias.scope !175
  %i.mo = fadd <2 x double> %wide.load821, %wide.load822
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %index820 ; 2 uses
  %wide.load823 = load <2 x double>, ptr %i.mp, align 8, !tbaa !11, !alias.scope !177
  %i.mq = fsub <2 x double> %i.mo, %wide.load823
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index820 ; 2 uses
  %wide.load824 = load <2 x double>, ptr %i.mr, align 8, !tbaa !11, !alias.scope !179
  %i.ms = fsub <2 x double> %i.mq, %wide.load824
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ml ; 2 uses
  %wide.load825 = load <2 x double>, ptr %i.mt, align 8, !tbaa !11, !alias.scope !181
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %index820
  %wide.load826 = load <2 x double>, ptr %i.mu, align 8, !tbaa !11, !alias.scope !181
  %i.mv = fadd <2 x double> %wide.load825, %wide.load826
  %i.mw = fmul <2 x double> %i.ms, %i.mv
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %index820 ; 2 uses
  %wide.load827 = load <2 x double>, ptr %i.mx, align 8, !tbaa !11, !alias.scope !183
  %i.my = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %index820
  %wide.load828 = load <2 x double>, ptr %i.my, align 8, !tbaa !11, !alias.scope !185
  %i.mz = fadd <2 x double> %wide.load827, %wide.load828
  %i.na = fdiv <2 x double> %i.mw, %i.mz
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ml
  store <2 x double> %i.na, ptr %i.nb, align 8, !tbaa !11, !alias.scope !187, !noalias !189
  %wide.load829 = load <2 x double>, ptr %i.mp, align 8, !tbaa !11, !alias.scope !177
  %wide.load830 = load <2 x double>, ptr %i.mr, align 8, !tbaa !11, !alias.scope !179
  %i.nc = fadd <2 x double> %wide.load829, %wide.load830
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ml
  %wide.load831 = load <2 x double>, ptr %i.nd, align 8, !tbaa !11, !alias.scope !177
  %i.ne = fsub <2 x double> %i.nc, %wide.load831
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ml
  %wide.load832 = load <2 x double>, ptr %i.nf, align 8, !tbaa !11, !alias.scope !179
  %i.ng = fsub <2 x double> %i.ne, %wide.load832
  %wide.load833 = load <2 x double>, ptr %i.mt, align 8, !tbaa !11, !alias.scope !181
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ml
  %wide.load834 = load <2 x double>, ptr %i.nh, align 8, !tbaa !11, !alias.scope !192
  %i.ni = fadd <2 x double> %wide.load833, %wide.load834
  %i.nj = fmul <2 x double> %i.ng, %i.ni
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ml
  %wide.load835 = load <2 x double>, ptr %i.nk, align 8, !tbaa !11, !alias.scope !183
  %wide.load836 = load <2 x double>, ptr %i.mx, align 8, !tbaa !11, !alias.scope !183
  %i.nl = fadd <2 x double> %wide.load835, %wide.load836
  %i.nm = fdiv <2 x double> %i.nj, %i.nl
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.ml
  store <2 x double> %i.nm, ptr %i.nn, align 8, !tbaa !11, !alias.scope !193, !noalias !194
  %index.next837 = add nuw i64 %index820, 2       ; 2 uses
  %i.no = icmp eq i64 %index.next837, %n.vec818
  br i1 %i.no, label %middle.block838, label %vector.body819, !llvm.loop !195

middle.block838:                                  ; preds = %vector.body819
  br i1 %cmp.n839, label %._crit_edge.us.2, label %scalar.ph814.preheader

scalar.ph814.preheader:                           ; preds = %vector.memcheck733, %._crit_edge.us.1, %middle.block838
  %indvars.iv.2.ph = phi i64 [ 1, %vector.memcheck733 ], [ 1, %._crit_edge.us.1 ], [ %i.cv, %middle.block838 ]
  br label %scalar.ph814

scalar.ph814:                                     ; preds = %scalar.ph814.preheader, %scalar.ph814
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph814 ], [ %indvars.iv.2.ph, %scalar.ph814.preheader ] ; 9 uses
  %i.np = add nsw i64 %indvars.iv.2, -1           ; 7 uses
  %i.nq = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.np
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !11
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.np
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !11
  %i.nu = fadd double %i.nr, %i.nt
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.np ; 2 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !11
  %i.nx = fsub double %i.nu, %i.nw
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.np ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !11
  %i.oa = fsub double %i.nx, %i.nz
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.2 ; 2 uses
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !11
  %i.od = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.np
  %i.oe = load double, ptr %i.od, align 8, !tbaa !11
  %i.of = fadd double %i.oc, %i.oe
  %i.og = fmul double %i.oa, %i.of
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.np ; 2 uses
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !11
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.np
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !11
  %i.ol = fadd double %i.oi, %i.ok
  %i.om = fdiv double %i.og, %i.ol
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv.2
  store double %i.om, ptr %i.on, align 8, !tbaa !11
  %i.oo = load double, ptr %i.nv, align 8, !tbaa !11
  %i.op = load double, ptr %i.ny, align 8, !tbaa !11
  %i.oq = fadd double %i.oo, %i.op
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.2
  %i.os = load double, ptr %i.or, align 8, !tbaa !11
  %i.ot = fsub double %i.oq, %i.os
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.2
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !11
  %i.ow = fsub double %i.ot, %i.ov
  %i.ox = load double, ptr %i.ob, align 8, !tbaa !11
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.2
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !11
  %i.pa = fadd double %i.ox, %i.oz
  %i.pb = fmul double %i.ow, %i.pa
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.2
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !11
  %i.pe = load double, ptr %i.oh, align 8, !tbaa !11
  %i.pf = fadd double %i.pd, %i.pe
  %i.pg = fdiv double %i.pb, %i.pf
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %indvars.iv.2
  store double %i.pg, ptr %i.ph, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %scalar.ph814, !llvm.loop !196

._crit_edge.us.2:                                 ; preds = %scalar.ph814, %middle.block838
  %i.pi = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 10 uses
  %i.pj = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 10 uses
  %i.pk = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 10 uses
  %i.pl = load ptr, ptr %i.be, align 8, !tbaa !8  ; 10 uses
  %i.pm = load ptr, ptr %i.bf, align 8, !tbaa !8  ; 4 uses
  %i.pn = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check707, label %scalar.ph706.preheader, label %vector.memcheck625

vector.memcheck625:                               ; preds = %._crit_edge.us.2
  %scevgep626 = getelementptr nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %scevgep627 = getelementptr i8, ptr %i.pm, i64 %1 ; 2 uses
  %scevgep628 = getelementptr i8, ptr %i.pn, i64 8 ; 2 uses
  %scevgep629 = getelementptr i8, ptr %i.pn, i64 %1 ; 2 uses
  %scevgep630 = getelementptr i8, ptr %i.pi, i64 %i.cr
  %scevgep631 = getelementptr i8, ptr %i.pj, i64 %i.cr
  %scevgep632 = getelementptr i8, ptr %i.kz, i64 %1
  %scevgep633 = getelementptr i8, ptr %i.la, i64 %1
  %scevgep634 = getelementptr i8, ptr %i.pk, i64 %1
  %scevgep635 = getelementptr i8, ptr %i.lc, i64 %1
  %scevgep636 = getelementptr i8, ptr %i.pl, i64 %i.cr
  %scevgep637 = getelementptr i8, ptr %i.lb, i64 8
  %scevgep638 = getelementptr i8, ptr %i.lb, i64 %1
  %bound0639 = icmp ult ptr %scevgep626, %scevgep629
  %bound1640 = icmp ult ptr %scevgep628, %scevgep627
  %found.conflict641 = and i1 %bound0639, %bound1640
  %i.po = insertelement <8 x ptr> poison, ptr %scevgep626, i64 0
  %i.pp = shufflevector <8 x ptr> %i.po, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.pq = insertelement <8 x ptr> poison, ptr %scevgep630, i64 0
  %i.pr = insertelement <8 x ptr> %i.pq, ptr %scevgep631, i64 1
  %i.ps = insertelement <8 x ptr> %i.pr, ptr %scevgep632, i64 2
  %i.pt = insertelement <8 x ptr> %i.ps, ptr %scevgep633, i64 3
  %i.pu = insertelement <8 x ptr> %i.pt, ptr %scevgep634, i64 4
  %i.pv = insertelement <8 x ptr> %i.pu, ptr %scevgep635, i64 5
  %i.pw = insertelement <8 x ptr> %i.pv, ptr %scevgep636, i64 6
  %i.px = insertelement <8 x ptr> %i.pw, ptr %scevgep638, i64 7 ; 2 uses
  %i.py = icmp ult <8 x ptr> %i.pp, %i.px
  %i.pz = insertelement <8 x ptr> poison, ptr %i.pi, i64 0
  %i.qa = insertelement <8 x ptr> %i.pz, ptr %i.pj, i64 1
  %i.qb = insertelement <8 x ptr> %i.qa, ptr %i.kz, i64 2
  %i.qc = insertelement <8 x ptr> %i.qb, ptr %i.la, i64 3
  %i.qd = insertelement <8 x ptr> %i.qc, ptr %i.pk, i64 4
  %i.qe = insertelement <8 x ptr> %i.qd, ptr %i.lc, i64 5
  %i.qf = insertelement <8 x ptr> %i.qe, ptr %i.pl, i64 6
  %i.qg = insertelement <8 x ptr> %i.qf, ptr %scevgep637, i64 7 ; 2 uses
  %i.qh = insertelement <8 x ptr> poison, ptr %scevgep627, i64 0
  %i.qi = shufflevector <8 x ptr> %i.qh, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qj = icmp ult <8 x ptr> %i.qg, %i.qi
  %i.qk = and <8 x i1> %i.py, %i.qj
  %i.ql = insertelement <8 x ptr> poison, ptr %scevgep628, i64 0
  %i.qm = shufflevector <8 x ptr> %i.ql, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qn = icmp ult <8 x ptr> %i.qm, %i.px
  %i.qo = insertelement <8 x ptr> poison, ptr %scevgep629, i64 0
  %i.qp = shufflevector <8 x ptr> %i.qo, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qq = icmp ult <8 x ptr> %i.qg, %i.qp
  %i.qr = and <8 x i1> %i.qn, %i.qq
  %rdx.op1057 = or <8 x i1> %i.qk, %i.qr
  %i.qs = bitcast <8 x i1> %rdx.op1057 to i8
  %i.qt = icmp ne i8 %i.qs, 0
  %op.rdx1058 = or i1 %i.qt, %found.conflict641
  br i1 %op.rdx1058, label %scalar.ph706.preheader, label %vector.body711

vector.body711:                                   ; preds = %vector.memcheck625, %vector.body711
  %index712 = phi i64 [ %index.next729, %vector.body711 ], [ 0, %vector.memcheck625 ] ; 9 uses
  %i.qu = or disjoint i64 %index712, 1            ; 7 uses
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %index712
  %wide.load713 = load <2 x double>, ptr %i.qv, align 8, !tbaa !11, !alias.scope !197
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %index712
  %wide.load714 = load <2 x double>, ptr %i.qw, align 8, !tbaa !11, !alias.scope !200
  %i.qx = fadd <2 x double> %wide.load713, %wide.load714
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %index712 ; 2 uses
  %wide.load715 = load <2 x double>, ptr %i.qy, align 8, !tbaa !11, !alias.scope !202
  %i.qz = fsub <2 x double> %i.qx, %wide.load715
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.la, i64 %index712 ; 2 uses
  %wide.load716 = load <2 x double>, ptr %i.ra, align 8, !tbaa !11, !alias.scope !204
  %i.rb = fsub <2 x double> %i.qz, %wide.load716
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.qu ; 2 uses
  %wide.load717 = load <2 x double>, ptr %i.rc, align 8, !tbaa !11, !alias.scope !206
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %index712
  %wide.load718 = load <2 x double>, ptr %i.rd, align 8, !tbaa !11, !alias.scope !206
  %i.re = fadd <2 x double> %wide.load717, %wide.load718
  %i.rf = fmul <2 x double> %i.rb, %i.re
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %index712 ; 2 uses
  %wide.load719 = load <2 x double>, ptr %i.rg, align 8, !tbaa !11, !alias.scope !208
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %index712
  %wide.load720 = load <2 x double>, ptr %i.rh, align 8, !tbaa !11, !alias.scope !210
  %i.ri = fadd <2 x double> %wide.load719, %wide.load720
  %i.rj = fdiv <2 x double> %i.rf, %i.ri
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.qu
  store <2 x double> %i.rj, ptr %i.rk, align 8, !tbaa !11, !alias.scope !212, !noalias !214
  %wide.load721 = load <2 x double>, ptr %i.qy, align 8, !tbaa !11, !alias.scope !202
  %wide.load722 = load <2 x double>, ptr %i.ra, align 8, !tbaa !11, !alias.scope !204
  %i.rl = fadd <2 x double> %wide.load721, %wide.load722
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.qu
  %wide.load723 = load <2 x double>, ptr %i.rm, align 8, !tbaa !11, !alias.scope !202
  %i.rn = fsub <2 x double> %i.rl, %wide.load723
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.qu
  %wide.load724 = load <2 x double>, ptr %i.ro, align 8, !tbaa !11, !alias.scope !204
  %i.rp = fsub <2 x double> %i.rn, %wide.load724
  %wide.load725 = load <2 x double>, ptr %i.rc, align 8, !tbaa !11, !alias.scope !206
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.qu
  %wide.load726 = load <2 x double>, ptr %i.rq, align 8, !tbaa !11, !alias.scope !217
  %i.rr = fadd <2 x double> %wide.load725, %wide.load726
  %i.rs = fmul <2 x double> %i.rp, %i.rr
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.qu
  %wide.load727 = load <2 x double>, ptr %i.rt, align 8, !tbaa !11, !alias.scope !208
  %wide.load728 = load <2 x double>, ptr %i.rg, align 8, !tbaa !11, !alias.scope !208
  %i.ru = fadd <2 x double> %wide.load727, %wide.load728
  %i.rv = fdiv <2 x double> %i.rs, %i.ru
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.qu
  store <2 x double> %i.rv, ptr %i.rw, align 8, !tbaa !11, !alias.scope !218, !noalias !219
  %index.next729 = add nuw i64 %index712, 2       ; 2 uses
  %i.rx = icmp eq i64 %index.next729, %n.vec710
  br i1 %i.rx, label %middle.block730, label %vector.body711, !llvm.loop !220

middle.block730:                                  ; preds = %vector.body711
  br i1 %cmp.n731, label %._crit_edge.us.3, label %scalar.ph706.preheader

scalar.ph706.preheader:                           ; preds = %vector.memcheck625, %._crit_edge.us.2, %middle.block730
  %indvars.iv.3.ph = phi i64 [ 1, %vector.memcheck625 ], [ 1, %._crit_edge.us.2 ], [ %i.cw, %middle.block730 ]
  br label %scalar.ph706

scalar.ph706:                                     ; preds = %scalar.ph706.preheader, %scalar.ph706
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph706 ], [ %indvars.iv.3.ph, %scalar.ph706.preheader ] ; 9 uses
  %i.ry = add nsw i64 %indvars.iv.3, -1           ; 7 uses
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.ry
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !11
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.ry
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !11
  %i.sd = fadd double %i.sa, %i.sc
  %i.se = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.ry ; 2 uses
  %i.sf = load double, ptr %i.se, align 8, !tbaa !11
  %i.sg = fsub double %i.sd, %i.sf
  %i.sh = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.ry ; 2 uses
  %i.si = load double, ptr %i.sh, align 8, !tbaa !11
  %i.sj = fsub double %i.sg, %i.si
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.3 ; 2 uses
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !11
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %i.ry
  %i.sn = load double, ptr %i.sm, align 8, !tbaa !11
  %i.so = fadd double %i.sl, %i.sn
  %i.sp = fmul double %i.sj, %i.so
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.ry ; 2 uses
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !11
  %i.ss = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %i.ry
  %i.st = load double, ptr %i.ss, align 8, !tbaa !11
  %i.su = fadd double %i.sr, %i.st
  %i.sv = fdiv double %i.sp, %i.su
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv.3
  store double %i.sv, ptr %i.sw, align 8, !tbaa !11
  %i.sx = load double, ptr %i.se, align 8, !tbaa !11
  %i.sy = load double, ptr %i.sh, align 8, !tbaa !11
  %i.sz = fadd double %i.sx, %i.sy
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.3
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !11
  %i.tc = fsub double %i.sz, %i.tb
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv.3
  %i.te = load double, ptr %i.td, align 8, !tbaa !11
  %i.tf = fsub double %i.tc, %i.te
  %i.tg = load double, ptr %i.sk, align 8, !tbaa !11
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv.3
  %i.ti = load double, ptr %i.th, align 8, !tbaa !11
  %i.tj = fadd double %i.tg, %i.ti
  %i.tk = fmul double %i.tf, %i.tj
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.3
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !11
  %i.tn = load double, ptr %i.sq, align 8, !tbaa !11
  %i.to = fadd double %i.tm, %i.tn
  %i.tp = fdiv double %i.tk, %i.to
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv.3
  store double %i.tp, ptr %i.tq, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3.not, label %._crit_edge.us.3, label %scalar.ph706, !llvm.loop !221

._crit_edge.us.3:                                 ; preds = %scalar.ph706, %middle.block730
  %i.tr = load ptr, ptr %i.bh, align 8, !tbaa !8  ; 4 uses
  %i.ts = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 4 uses
  %i.tt = load ptr, ptr %i.bj, align 8, !tbaa !8  ; 6 uses
  %i.tu = load ptr, ptr %i.bk, align 8, !tbaa !8  ; 4 uses
  %i.tv = load ptr, ptr %i.bl, align 8, !tbaa !8  ; 4 uses
  %i.tw = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check599, label %scalar.ph598.preheader, label %vector.memcheck517

vector.memcheck517:                               ; preds = %._crit_edge.us.3
  %scevgep518 = getelementptr nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %scevgep519 = getelementptr i8, ptr %i.tv, i64 %1 ; 2 uses
  %scevgep520 = getelementptr i8, ptr %i.tw, i64 8 ; 2 uses
  %scevgep521 = getelementptr i8, ptr %i.tw, i64 %1 ; 2 uses
  %scevgep522 = getelementptr i8, ptr %i.tr, i64 %i.cr
  %scevgep523 = getelementptr i8, ptr %i.ts, i64 %i.cr
  %scevgep524 = getelementptr i8, ptr %i.pi, i64 %1
  %scevgep525 = getelementptr i8, ptr %i.pj, i64 %1
  %scevgep526 = getelementptr i8, ptr %i.tt, i64 %1
  %scevgep527 = getelementptr i8, ptr %i.pl, i64 %1
  %scevgep528 = getelementptr i8, ptr %i.tu, i64 %i.cr
  %scevgep529 = getelementptr i8, ptr %i.pk, i64 8
  %scevgep530 = getelementptr i8, ptr %i.pk, i64 %1
  %bound0531 = icmp ult ptr %scevgep518, %scevgep521
  %bound1532 = icmp ult ptr %scevgep520, %scevgep519
  %found.conflict533 = and i1 %bound0531, %bound1532
  %i.tx = insertelement <8 x ptr> poison, ptr %scevgep518, i64 0
  %i.ty = shufflevector <8 x ptr> %i.tx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.tz = insertelement <8 x ptr> poison, ptr %scevgep522, i64 0
  %i.ua = insertelement <8 x ptr> %i.tz, ptr %scevgep523, i64 1
  %i.ub = insertelement <8 x ptr> %i.ua, ptr %scevgep524, i64 2
  %i.uc = insertelement <8 x ptr> %i.ub, ptr %scevgep525, i64 3
  %i.ud = insertelement <8 x ptr> %i.uc, ptr %scevgep526, i64 4
  %i.ue = insertelement <8 x ptr> %i.ud, ptr %scevgep527, i64 5
  %i.uf = insertelement <8 x ptr> %i.ue, ptr %scevgep528, i64 6
  %i.ug = insertelement <8 x ptr> %i.uf, ptr %scevgep530, i64 7 ; 2 uses
  %i.uh = icmp ult <8 x ptr> %i.ty, %i.ug
  %i.ui = insertelement <8 x ptr> poison, ptr %i.tr, i64 0
  %i.uj = insertelement <8 x ptr> %i.ui, ptr %i.ts, i64 1
  %i.uk = insertelement <8 x ptr> %i.uj, ptr %i.pi, i64 2
  %i.ul = insertelement <8 x ptr> %i.uk, ptr %i.pj, i64 3
  %i.um = insertelement <8 x ptr> %i.ul, ptr %i.tt, i64 4
  %i.un = insertelement <8 x ptr> %i.um, ptr %i.pl, i64 5
  %i.uo = insertelement <8 x ptr> %i.un, ptr %i.tu, i64 6
  %i.up = insertelement <8 x ptr> %i.uo, ptr %scevgep529, i64 7 ; 2 uses
  %i.uq = insertelement <8 x ptr> poison, ptr %scevgep519, i64 0
  %i.ur = shufflevector <8 x ptr> %i.uq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.us = icmp ult <8 x ptr> %i.up, %i.ur
  %i.ut = and <8 x i1> %i.uh, %i.us
  %i.uu = insertelement <8 x ptr> poison, ptr %scevgep520, i64 0
  %i.uv = shufflevector <8 x ptr> %i.uu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.uw = icmp ult <8 x ptr> %i.uv, %i.ug
  %i.ux = insertelement <8 x ptr> poison, ptr %scevgep521, i64 0
  %i.uy = shufflevector <8 x ptr> %i.ux, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.uz = icmp ult <8 x ptr> %i.up, %i.uy
  %i.va = and <8 x i1> %i.uw, %i.uz
  %rdx.op = or <8 x i1> %i.ut, %i.va
  %i.vb = bitcast <8 x i1> %rdx.op to i8
  %i.vc = icmp ne i8 %i.vb, 0
  %op.rdx = or i1 %i.vc, %found.conflict533
  br i1 %op.rdx, label %scalar.ph598.preheader, label %vector.body603

vector.body603:                                   ; preds = %vector.memcheck517, %vector.body603
  %index604 = phi i64 [ %index.next621, %vector.body603 ], [ 0, %vector.memcheck517 ] ; 9 uses
  %i.vd = or disjoint i64 %index604, 1            ; 7 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.tr, i64 %index604
  %wide.load605 = load <2 x double>, ptr %i.ve, align 8, !tbaa !11, !alias.scope !222
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %index604
  %wide.load606 = load <2 x double>, ptr %i.vf, align 8, !tbaa !11, !alias.scope !225
  %i.vg = fadd <2 x double> %wide.load605, %wide.load606
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %index604 ; 2 uses
  %wide.load607 = load <2 x double>, ptr %i.vh, align 8, !tbaa !11, !alias.scope !227
  %i.vi = fsub <2 x double> %i.vg, %wide.load607
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %index604 ; 2 uses
  %wide.load608 = load <2 x double>, ptr %i.vj, align 8, !tbaa !11, !alias.scope !229
  %i.vk = fsub <2 x double> %i.vi, %wide.load608
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.vd ; 2 uses
  %wide.load609 = load <2 x double>, ptr %i.vl, align 8, !tbaa !11, !alias.scope !231
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.tt, i64 %index604
  %wide.load610 = load <2 x double>, ptr %i.vm, align 8, !tbaa !11, !alias.scope !231
  %i.vn = fadd <2 x double> %wide.load609, %wide.load610
  %i.vo = fmul <2 x double> %i.vk, %i.vn
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %index604 ; 2 uses
  %wide.load611 = load <2 x double>, ptr %i.vp, align 8, !tbaa !11, !alias.scope !233
  %i.vq = getelementptr inbounds [8 x i8], ptr %i.tu, i64 %index604
  %wide.load612 = load <2 x double>, ptr %i.vq, align 8, !tbaa !11, !alias.scope !235
  %i.vr = fadd <2 x double> %wide.load611, %wide.load612
  %i.vs = fdiv <2 x double> %i.vo, %i.vr
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.vd
  store <2 x double> %i.vs, ptr %i.vt, align 8, !tbaa !11, !alias.scope !237, !noalias !239
  %wide.load613 = load <2 x double>, ptr %i.vh, align 8, !tbaa !11, !alias.scope !227
  %wide.load614 = load <2 x double>, ptr %i.vj, align 8, !tbaa !11, !alias.scope !229
  %i.vu = fadd <2 x double> %wide.load613, %wide.load614
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.vd
  %wide.load615 = load <2 x double>, ptr %i.vv, align 8, !tbaa !11, !alias.scope !227
  %i.vw = fsub <2 x double> %i.vu, %wide.load615
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.vd
  %wide.load616 = load <2 x double>, ptr %i.vx, align 8, !tbaa !11, !alias.scope !229
  %i.vy = fsub <2 x double> %i.vw, %wide.load616
  %wide.load617 = load <2 x double>, ptr %i.vl, align 8, !tbaa !11, !alias.scope !231
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.vd
  %wide.load618 = load <2 x double>, ptr %i.vz, align 8, !tbaa !11, !alias.scope !242
  %i.wa = fadd <2 x double> %wide.load617, %wide.load618
  %i.wb = fmul <2 x double> %i.vy, %i.wa
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.vd
  %wide.load619 = load <2 x double>, ptr %i.wc, align 8, !tbaa !11, !alias.scope !233
  %wide.load620 = load <2 x double>, ptr %i.vp, align 8, !tbaa !11, !alias.scope !233
  %i.wd = fadd <2 x double> %wide.load619, %wide.load620
  %i.we = fdiv <2 x double> %i.wb, %i.wd
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.vd
  store <2 x double> %i.we, ptr %i.wf, align 8, !tbaa !11, !alias.scope !243, !noalias !244
  %index.next621 = add nuw i64 %index604, 2       ; 2 uses
  %i.wg = icmp eq i64 %index.next621, %n.vec602
  br i1 %i.wg, label %middle.block622, label %vector.body603, !llvm.loop !245

middle.block622:                                  ; preds = %vector.body603
  br i1 %cmp.n623, label %.preheader195.us.preheader, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck517, %._crit_edge.us.3, %middle.block622
  %indvars.iv.4.ph = phi i64 [ 1, %vector.memcheck517 ], [ 1, %._crit_edge.us.3 ], [ %i.cx, %middle.block622 ]
  br label %scalar.ph598

scalar.ph598:                                     ; preds = %scalar.ph598.preheader, %scalar.ph598
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %scalar.ph598 ], [ %indvars.iv.4.ph, %scalar.ph598.preheader ] ; 9 uses
  %i.wh = add nsw i64 %indvars.iv.4, -1           ; 7 uses
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.tr, i64 %i.wh
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !11
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %i.wh
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !11
  %i.wm = fadd double %i.wj, %i.wl
  %i.wn = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.wh ; 2 uses
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !11
  %i.wp = fsub double %i.wm, %i.wo
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.wh ; 2 uses
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !11
  %i.ws = fsub double %i.wp, %i.wr
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv.4 ; 2 uses
  %i.wu = load double, ptr %i.wt, align 8, !tbaa !11
  %i.wv = getelementptr inbounds [8 x i8], ptr %i.tt, i64 %i.wh
  %i.ww = load double, ptr %i.wv, align 8, !tbaa !11
  %i.wx = fadd double %i.wu, %i.ww
  %i.wy = fmul double %i.ws, %i.wx
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %i.wh ; 2 uses
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !11
  %i.xb = getelementptr inbounds [8 x i8], ptr %i.tu, i64 %i.wh
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !11
  %i.xd = fadd double %i.xa, %i.xc
  %i.xe = fdiv double %i.wy, %i.xd
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.4
  store double %i.xe, ptr %i.xf, align 8, !tbaa !11
  %i.xg = load double, ptr %i.wn, align 8, !tbaa !11
  %i.xh = load double, ptr %i.wq, align 8, !tbaa !11
  %i.xi = fadd double %i.xg, %i.xh
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %indvars.iv.4
  %i.xk = load double, ptr %i.xj, align 8, !tbaa !11
  %i.xl = fsub double %i.xi, %i.xk
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %indvars.iv.4
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !11
  %i.xo = fsub double %i.xl, %i.xn
  %i.xp = load double, ptr %i.wt, align 8, !tbaa !11
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %indvars.iv.4
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !11
  %i.xs = fadd double %i.xp, %i.xr
  %i.xt = fmul double %i.xo, %i.xs
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %indvars.iv.4
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !11
  %i.xw = load double, ptr %i.wz, align 8, !tbaa !11
  %i.xx = fadd double %i.xv, %i.xw
  %i.xy = fdiv double %i.xt, %i.xx
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv.4
  store double %i.xy, ptr %i.xz, align 8, !tbaa !11
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1 ; 2 uses
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, %wide.trip.count
  br i1 %exitcond.4.not, label %.preheader195.us.preheader, label %scalar.ph598, !llvm.loop !246

._crit_edge:                                      ; preds = %.split.us, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.preheader195.us.preheader:                       ; preds = %scalar.ph598, %middle.block622
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.pre240 = load ptr, ptr %.phi.trans.insert239, align 8, !tbaa !8
  %.pre242 = load ptr, ptr %.phi.trans.insert241, align 8, !tbaa !8
  br label %.preheader195.us

.preheader195.us:                                 ; preds = %.preheader195.us.preheader, %._crit_edge.us205
  %i.ya = phi ptr [ %.pre242, %.preheader195.us.preheader ], [ %i.yr, %._crit_edge.us205 ] ; 9 uses
  %i.yb = phi ptr [ %.pre240, %.preheader195.us.preheader ], [ %i.yj, %._crit_edge.us205 ] ; 4 uses
  %i.yc = phi ptr [ %.pre, %.preheader195.us.preheader ], [ %i.yl, %._crit_edge.us205 ] ; 9 uses
  %indvars.iv226 = phi i64 [ 1, %.preheader195.us.preheader ], [ %indvars.iv.next227, %._crit_edge.us205 ] ; 5 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv226
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !8  ; 7 uses
  %i.yf = add nsw i64 %indvars.iv226, -1          ; 2 uses
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.yf
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !8  ; 4 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 5 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next227
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !8  ; 5 uses
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next227
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !8  ; 5 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv226
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !8  ; 4 uses
  %i.yo = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.yf
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !8  ; 4 uses
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next227
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !8  ; 5 uses
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv226
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check487, label %scalar.ph486.preheader, label %vector.memcheck395

vector.memcheck395:                               ; preds = %.preheader195.us
  %scevgep = getelementptr nuw i8, ptr %i.yn, i64 8 ; 10 uses
  %scevgep396 = getelementptr i8, ptr %i.yn, i64 %1 ; 10 uses
  %scevgep397 = getelementptr i8, ptr %i.yt, i64 8 ; 10 uses
  %scevgep398 = getelementptr i8, ptr %i.yt, i64 %1 ; 10 uses
  %scevgep399 = getelementptr i8, ptr %i.ye, i64 %1 ; 2 uses
  %scevgep400 = getelementptr i8, ptr %i.yc, i64 %2 ; 2 uses
  %scevgep401 = getelementptr nuw i8, ptr %i.yb, i64 8 ; 2 uses
  %scevgep402 = getelementptr i8, ptr %i.yb, i64 %1 ; 2 uses
  %scevgep403 = getelementptr nuw i8, ptr %i.yh, i64 8 ; 2 uses
  %scevgep404 = getelementptr i8, ptr %i.yh, i64 %1 ; 2 uses
  %scevgep405 = getelementptr nuw i8, ptr %i.yj, i64 8 ; 2 uses
  %scevgep406 = getelementptr i8, ptr %i.yj, i64 %1 ; 2 uses
  %scevgep407 = getelementptr nuw i8, ptr %i.yl, i64 8 ; 2 uses
  %scevgep408 = getelementptr i8, ptr %i.yl, i64 %1 ; 2 uses
  %scevgep409 = getelementptr i8, ptr %i.ya, i64 %2 ; 2 uses
  %scevgep410 = getelementptr i8, ptr %i.yp, i64 8 ; 2 uses
  %scevgep411 = getelementptr i8, ptr %i.yp, i64 %1 ; 2 uses
  %scevgep412 = getelementptr i8, ptr %i.yr, i64 8 ; 2 uses
  %scevgep413 = getelementptr i8, ptr %i.yr, i64 %1 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep398
  %bound1 = icmp ult ptr %scevgep397, %scevgep396
  %found.conflict = and i1 %bound0, %bound1
  %bound0414 = icmp ult ptr %scevgep, %scevgep399
  %bound1415 = icmp ult ptr %i.ye, %scevgep396
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx417 = or i1 %found.conflict, %found.conflict416
  %bound0418 = icmp ult ptr %scevgep, %scevgep400
  %bound1419 = icmp ult ptr %i.yc, %scevgep396
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %conflict.rdx417, %found.conflict420
  %bound0422 = icmp ult ptr %scevgep, %scevgep402
  %bound1423 = icmp ult ptr %scevgep401, %scevgep396
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  %bound0426 = icmp ult ptr %scevgep, %scevgep404
  %bound1427 = icmp ult ptr %scevgep403, %scevgep396
  %found.conflict428 = and i1 %bound0426, %bound1427
  %conflict.rdx429 = or i1 %conflict.rdx425, %found.conflict428
  %bound0430 = icmp ult ptr %scevgep, %scevgep406
  %bound1431 = icmp ult ptr %scevgep405, %scevgep396
  %found.conflict432 = and i1 %bound0430, %bound1431
  %conflict.rdx433 = or i1 %conflict.rdx429, %found.conflict432
  %bound0434 = icmp ult ptr %scevgep, %scevgep408
  %bound1435 = icmp ult ptr %scevgep407, %scevgep396
  %found.conflict436 = and i1 %bound0434, %bound1435
  %conflict.rdx437 = or i1 %conflict.rdx433, %found.conflict436
  %bound0438 = icmp ult ptr %scevgep, %scevgep409
  %bound1439 = icmp ult ptr %i.ya, %scevgep396
  %found.conflict440 = and i1 %bound0438, %bound1439
  %conflict.rdx441 = or i1 %conflict.rdx437, %found.conflict440
  %bound0442 = icmp ult ptr %scevgep, %scevgep411
  %bound1443 = icmp ult ptr %scevgep410, %scevgep396
  %found.conflict444 = and i1 %bound0442, %bound1443
  %conflict.rdx445 = or i1 %conflict.rdx441, %found.conflict444
  %bound0446 = icmp ult ptr %scevgep, %scevgep413
  %bound1447 = icmp ult ptr %scevgep412, %scevgep396
  %found.conflict448 = and i1 %bound0446, %bound1447
  %conflict.rdx449 = or i1 %conflict.rdx445, %found.conflict448
  %bound0450 = icmp ult ptr %scevgep397, %scevgep399
  %bound1451 = icmp ult ptr %i.ye, %scevgep398
  %found.conflict452 = and i1 %bound0450, %bound1451
  %conflict.rdx453 = or i1 %conflict.rdx449, %found.conflict452
  %bound0454 = icmp ult ptr %scevgep397, %scevgep400
  %bound1455 = icmp ult ptr %i.yc, %scevgep398
  %found.conflict456 = and i1 %bound0454, %bound1455
  %conflict.rdx457 = or i1 %conflict.rdx453, %found.conflict456
  %bound0458 = icmp ult ptr %scevgep397, %scevgep402
  %bound1459 = icmp ult ptr %scevgep401, %scevgep398
  %found.conflict460 = and i1 %bound0458, %bound1459
  %conflict.rdx461 = or i1 %conflict.rdx457, %found.conflict460
  %bound0462 = icmp ult ptr %scevgep397, %scevgep404
  %bound1463 = icmp ult ptr %scevgep403, %scevgep398
  %found.conflict464 = and i1 %bound0462, %bound1463
  %conflict.rdx465 = or i1 %conflict.rdx461, %found.conflict464
  %bound0466 = icmp ult ptr %scevgep397, %scevgep406
  %bound1467 = icmp ult ptr %scevgep405, %scevgep398
  %found.conflict468 = and i1 %bound0466, %bound1467
  %conflict.rdx469 = or i1 %conflict.rdx465, %found.conflict468
  %bound0470 = icmp ult ptr %scevgep397, %scevgep408
  %bound1471 = icmp ult ptr %scevgep407, %scevgep398
  %found.conflict472 = and i1 %bound0470, %bound1471
  %conflict.rdx473 = or i1 %conflict.rdx469, %found.conflict472
  %bound0474 = icmp ult ptr %scevgep397, %scevgep409
  %bound1475 = icmp ult ptr %i.ya, %scevgep398
  %found.conflict476 = and i1 %bound0474, %bound1475
  %conflict.rdx477 = or i1 %conflict.rdx473, %found.conflict476
  %bound0478 = icmp ult ptr %scevgep397, %scevgep411
  %bound1479 = icmp ult ptr %scevgep410, %scevgep398
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx481 = or i1 %conflict.rdx477, %found.conflict480
  %bound0482 = icmp ult ptr %scevgep397, %scevgep413
  %bound1483 = icmp ult ptr %scevgep412, %scevgep398
  %found.conflict484 = and i1 %bound0482, %bound1483
  %conflict.rdx485 = or i1 %conflict.rdx481, %found.conflict484
  br i1 %conflict.rdx485, label %scalar.ph486.preheader, label %vector.body491

vector.body491:                                   ; preds = %vector.memcheck395, %vector.body491
  %index492 = phi i64 [ %index.next513, %vector.body491 ], [ 0, %vector.memcheck395 ] ; 6 uses
  %i.yu = or disjoint i64 %index492, 1            ; 11 uses
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.yu ; 2 uses
  %wide.load493 = load <2 x double>, ptr %i.yv, align 8, !tbaa !11, !alias.scope !247
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.yu
  %wide.load494 = load <2 x double>, ptr %i.yw, align 8, !tbaa !11, !alias.scope !250 ; 4 uses
  %i.yx = add nuw nsw i64 %index492, 2            ; 2 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.yx
  %wide.load495 = load <2 x double>, ptr %i.yy, align 8, !tbaa !11, !alias.scope !250
  %i.yz = fsub <2 x double> %wide.load494, %wide.load495
  %i.za = getelementptr inbounds [8 x i8], ptr %i.ye, i64 %index492 ; 2 uses
  %wide.load496 = load <2 x double>, ptr %i.za, align 8, !tbaa !11, !alias.scope !247
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.yc, i64 %index492
  %wide.load497 = load <2 x double>, ptr %i.zb, align 8, !tbaa !11, !alias.scope !250
  %i.zc = fsub <2 x double> %wide.load494, %wide.load497
  %i.zd = fneg <2 x double> %i.zc
  %i.ze = fmul <2 x double> %wide.load496, %i.zd
  %i.zf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load493, <2 x double> %i.yz, <2 x double> %i.ze)
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.yu ; 2 uses
  %wide.load498 = load <2 x double>, ptr %i.zg, align 8, !tbaa !11, !alias.scope !252
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %i.yu
  %wide.load499 = load <2 x double>, ptr %i.zh, align 8, !tbaa !11, !alias.scope !254
  %i.zi = fsub <2 x double> %wide.load494, %wide.load499
  %i.zj = fneg <2 x double> %wide.load498
  %i.zk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zj, <2 x double> %i.zi, <2 x double> %i.zf)
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %i.yu ; 2 uses
  %wide.load500 = load <2 x double>, ptr %i.zl, align 8, !tbaa !11, !alias.scope !256
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %i.yu
  %wide.load501 = load <2 x double>, ptr %i.zm, align 8, !tbaa !11, !alias.scope !258
  %i.zn = fsub <2 x double> %wide.load494, %wide.load501
  %i.zo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load500, <2 x double> %i.zn, <2 x double> %i.zk)
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %i.yu ; 2 uses
  %wide.load502 = load <2 x double>, ptr %i.zp, align 8, !tbaa !11, !alias.scope !260, !noalias !262
  %i.zq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zo, <2 x double> splat (double 4.100000e-03), <2 x double> %wide.load502)
  store <2 x double> %i.zq, ptr %i.zp, align 8, !tbaa !11, !alias.scope !260, !noalias !262
  %wide.load503 = load <2 x double>, ptr %i.yv, align 8, !tbaa !11, !alias.scope !247
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.yu
  %wide.load504 = load <2 x double>, ptr %i.zr, align 8, !tbaa !11, !alias.scope !267 ; 4 uses
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.yx
  %wide.load505 = load <2 x double>, ptr %i.zs, align 8, !tbaa !11, !alias.scope !267
  %i.zt = fsub <2 x double> %wide.load504, %wide.load505
  %wide.load506 = load <2 x double>, ptr %i.za, align 8, !tbaa !11, !alias.scope !247
  %i.zu = getelementptr inbounds [8 x i8], ptr %i.ya, i64 %index492
  %wide.load507 = load <2 x double>, ptr %i.zu, align 8, !tbaa !11, !alias.scope !267
  %i.zv = fsub <2 x double> %wide.load504, %wide.load507
  %i.zw = fneg <2 x double> %i.zv
  %i.zx = fmul <2 x double> %wide.load506, %i.zw
  %i.zy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load503, <2 x double> %i.zt, <2 x double> %i.zx)
  %wide.load508 = load <2 x double>, ptr %i.zg, align 8, !tbaa !11, !alias.scope !252
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.yp, i64 %i.yu
  %wide.load509 = load <2 x double>, ptr %i.zz, align 8, !tbaa !11, !alias.scope !268
  %i.aaa = fsub <2 x double> %wide.load504, %wide.load509
  %i.aab = fneg <2 x double> %wide.load508
  %i.aac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aab, <2 x double> %i.aaa, <2 x double> %i.zy)
  %wide.load510 = load <2 x double>, ptr %i.zl, align 8, !tbaa !11, !alias.scope !256
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.yu
  %wide.load511 = load <2 x double>, ptr %i.aad, align 8, !tbaa !11, !alias.scope !269
  %i.aae = fsub <2 x double> %wide.load504, %wide.load511
  %i.aaf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load510, <2 x double> %i.aae, <2 x double> %i.aac)
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.yt, i64 %i.yu ; 2 uses
  %wide.load512 = load <2 x double>, ptr %i.aag, align 8, !tbaa !11, !alias.scope !270, !noalias !271
  %i.aah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaf, <2 x double> splat (double 4.100000e-03), <2 x double> %wide.load512)
  store <2 x double> %i.aah, ptr %i.aag, align 8, !tbaa !11, !alias.scope !270, !noalias !271
  %index.next513 = add nuw i64 %index492, 2       ; 2 uses
  %i.aai = icmp eq i64 %index.next513, %n.vec490
  br i1 %i.aai, label %middle.block514, label %vector.body491, !llvm.loop !272

middle.block514:                                  ; preds = %vector.body491
  br i1 %cmp.n515, label %._crit_edge.us205, label %scalar.ph486.preheader

scalar.ph486.preheader:                           ; preds = %vector.memcheck395, %.preheader195.us, %middle.block514
  %indvars.iv221.ph = phi i64 [ 1, %vector.memcheck395 ], [ 1, %.preheader195.us ], [ %i.cy, %middle.block514 ]
  br label %scalar.ph486

scalar.ph486:                                     ; preds = %scalar.ph486.preheader, %scalar.ph486
  %indvars.iv221 = phi i64 [ %indvars.iv.next222, %scalar.ph486 ], [ %indvars.iv221.ph, %scalar.ph486.preheader ] ; 13 uses
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %indvars.iv221 ; 2 uses
  %i.aak = load double, ptr %i.aaj, align 8, !tbaa !11
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv221
  %i.aam = load double, ptr %i.aal, align 8, !tbaa !11 ; 4 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 4 uses
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv.next222
  %i.aao = load double, ptr %i.aan, align 8, !tbaa !11
  %i.aap = fsub double %i.aam, %i.aao
  %i.aaq = add nsw i64 %indvars.iv221, -1         ; 3 uses
  %i.aar = getelementptr inbounds [8 x i8], ptr %i.ye, i64 %i.aaq ; 2 uses
  %i.aas = load double, ptr %i.aar, align 8, !tbaa !11
  %i.aat = getelementptr inbounds [8 x i8], ptr %i.yc, i64 %i.aaq
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !11
  %i.aav = fsub double %i.aam, %i.aau
  %i.aaw = fneg double %i.aav
  %i.aax = fmul double %i.aas, %i.aaw
  %i.aay = tail call double @llvm.fmuladd.f64(double %i.aak, double %i.aap, double %i.aax)
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv221 ; 2 uses
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !11
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv221
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !11
  %i.abd = fsub double %i.aam, %i.abc
  %i.abe = fneg double %i.aba
  %i.abf = tail call double @llvm.fmuladd.f64(double %i.abe, double %i.abd, double %i.aay)
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %indvars.iv221 ; 2 uses
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !11
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv221
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !11
  %i.abk = fsub double %i.aam, %i.abj
  %i.abl = tail call double @llvm.fmuladd.f64(double %i.abh, double %i.abk, double %i.abf)
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv221 ; 2 uses
  %i.abn = load double, ptr %i.abm, align 8, !tbaa !11
  %i.abo = tail call double @llvm.fmuladd.f64(double %i.abl, double 4.100000e-03, double %i.abn)
  store double %i.abo, ptr %i.abm, align 8, !tbaa !11
  %i.abp = load double, ptr %i.aaj, align 8, !tbaa !11
  %i.abq = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv221
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !11 ; 4 uses
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv.next222
  %i.abt = load double, ptr %i.abs, align 8, !tbaa !11
  %i.abu = fsub double %i.abr, %i.abt
  %i.abv = load double, ptr %i.aar, align 8, !tbaa !11
  %i.abw = getelementptr inbounds [8 x i8], ptr %i.ya, i64 %i.aaq
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !11
  %i.aby = fsub double %i.abr, %i.abx
  %i.abz = fneg double %i.aby
  %i.aca = fmul double %i.abv, %i.abz
end_hunk_0
