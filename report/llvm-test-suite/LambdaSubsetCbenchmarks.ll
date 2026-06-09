inline.NumInlined: 244
inline.NumDeleted: 76
begin_hunk_0_@_ZL16BM_PIC_1D_LAMBDARN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv.next159
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [8 x i8], ptr %i.s, i64 %i.dr ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8     ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !11
  %i.dv = fadd double %i.do, %i.du
  store double %i.dv, ptr %i.dt, align 8, !tbaa !11
  %i.dw = load double, ptr %i.dm, align 8, !tbaa !11
  %i.dx = load double, ptr %i.ds, align 8, !tbaa !11
  %i.dy = fadd double %i.dw, %i.dx
  store double %i.dy, ptr %i.ds, align 8, !tbaa !11
  %indvars.iv.next159.1 = add nuw nsw i64 %indvars.iv158, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us.unr-lcssa", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us", !llvm.loop !100

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader220", %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us"
  %indvars.iv153 = phi i64 [ %indvars.iv.next154, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us" ], [ %indvars.iv153.ph, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader220" ] ; 8 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv153 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !11
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv153
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !11
  %i.ed = fadd double %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv153 ; 3 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !11
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv153
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !11
  %i.ei = fsub double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv153
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !11
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ek, double %i.ed) ; 2 uses
  store double %i.el, ptr %i.dz, align 8, !tbaa !11
  %i.em = load double, ptr %i.ee, align 8, !tbaa !11
  %i.en = fadd double %i.el, %i.em
  %i.eo = fadd double %i.w, %i.en                 ; 2 uses
  %i.ep = fptosi double %i.eo to i32              ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv153
  %i.er = sitofp i32 %i.ep to double
  %i.es = fsub double %i.eo, %i.er                ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv153
  store double %i.es, ptr %i.et, align 8, !tbaa !11
  %i.eu = and i32 %i.ep, 2047
  %i.ev = add nuw nsw i32 %i.eu, 1                ; 2 uses
  store i32 %i.ev, ptr %i.eq, align 4, !tbaa !4
  %i.ew = uitofp nneg i32 %i.ev to double
  %i.ex = fadd double %i.es, %i.ew
  store double %i.ex, ptr %i.ee, align 8, !tbaa !11
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count
  br i1 %exitcond157.not, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us", !llvm.loop !101

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next, %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us" ] ; 9 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ey, align 8, !tbaa !11
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.ez, align 8, !tbaa !11
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4  ; 4 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !4
  %i.fd = sitofp i32 %i.fb to double
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.fd, ptr %i.fe, align 8, !tbaa !11
  %.not.i26.us = icmp eq i32 %i.fb, 0
  br i1 %.not.i26.us, label %.thread.i.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph.us
  %i.ff = sext i32 %i.fb to i64                   ; 2 uses
  %i.fg = getelementptr [8 x i8], ptr %i.k, i64 %i.ff
  %i.fh = getelementptr i8, ptr %i.fg, i64 -8
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !11
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double %i.fi, ptr %i.fj, align 8, !tbaa !11
  %i.fk = getelementptr [8 x i8], ptr %i.o, i64 %i.ff
  %i.fl = getelementptr i8, ptr %i.fk, i64 -8
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !11
  br label %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"

.thread.i.us:                                     ; preds = %.lr.ph.us
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store double 0.000000e+00, ptr %i.fn, align 8, !tbaa !11
  br label %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"

"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us": ; preds = %.thread.i.us, %bb.a
  %i.fo = phi double [ %i.fm, %bb.a ], [ 0.000000e+00, %.thread.i.us ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store double %i.fo, ptr %i.fp, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader", label %.lr.ph.us, !llvm.loop !102

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader": ; preds = %"_ZZL16BM_PIC_1D_LAMBDARN9benchmark5StateEENK3$_0clEi.exit.us"
  %.not219.not = xor i1 %.not219, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not219.not
  br i1 %brmerge, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader220", label %vector.body

vector.body:                                      ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader", %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader" ] ; 8 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fq, align 8, !tbaa !11, !alias.scope !103, !noalias !106
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index
  %wide.load214 = load <2 x double>, ptr %i.fr, align 8, !tbaa !11, !alias.scope !112
  %i.fs = fadd <2 x double> %wide.load, %wide.load214
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 3 uses
  %wide.load215 = load <2 x double>, ptr %i.ft, align 8, !tbaa !11, !alias.scope !113, !noalias !114
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index
  %wide.load216 = load <2 x double>, ptr %i.fu, align 8, !tbaa !11, !alias.scope !115
  %i.fv = fsub <2 x double> %wide.load215, %wide.load216
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  %wide.load217 = load <2 x double>, ptr %i.fw, align 8, !tbaa !11, !alias.scope !116
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %wide.load217, <2 x double> %i.fs) ; 2 uses
  store <2 x double> %i.fx, ptr %i.fq, align 8, !tbaa !11, !alias.scope !103, !noalias !106
  %wide.load218 = load <2 x double>, ptr %i.ft, align 8, !tbaa !11, !alias.scope !113, !noalias !114
  %i.fy = fadd <2 x double> %i.fx, %wide.load218
  %i.fz = fadd <2 x double> %broadcast.splat, %i.fy ; 2 uses
  %i.ga = fptosi <2 x double> %i.fz to <2 x i32>  ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index
  %i.gc = sitofp <2 x i32> %i.ga to <2 x double>
  %i.gd = fsub <2 x double> %i.fz, %i.gc          ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index
  store <2 x double> %i.gd, ptr %i.ge, align 8, !tbaa !11, !alias.scope !117, !noalias !118
  %i.gf = and <2 x i32> %i.ga, splat (i32 2047)
  %i.gg = add nuw nsw <2 x i32> %i.gf, splat (i32 1) ; 2 uses
  store <2 x i32> %i.gg, ptr %i.gb, align 4, !tbaa !4
  %i.gh = uitofp nneg <2 x i32> %i.gg to <2 x double>
  %i.gi = fadd <2 x double> %i.gd, %i.gh
  store <2 x double> %i.gi, ptr %i.ft, align 8, !tbaa !11, !alias.scope !113, !noalias !114
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gj = icmp eq i64 %index.next, %n.vec
  br i1 %i.gj, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader220"

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader220": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader", %middle.block
  %indvars.iv153.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us.preheader" ]
  br label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us"

"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.preheader": ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit.us", %middle.block
  br i1 %i.ck, label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us.epil.preheader", label %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit.us"

._crit_edge:                                      ; preds = %"_Z6forallIZL16BM_PIC_1D_LAMBDARN9benchmark5StateEE3$_2Ev9simd_execiiT_.exit.us", %.lr.ph127, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 11 uses
  tail call void @_Z8loopInitj(i32 noundef 26)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !81   ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 14 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !81   ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !81   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 32, !tbaa !40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41   ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13
  %.not = icmp ne i32 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 16           ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not150152 = icmp eq i64 %i.ad, 0
  %.not.i.not150 = select i1 %.not, i1 true, i1 %.not.i.not150152
  br i1 %.not.i.not150, label %._crit_edge, label %.preheader141.lr.ph, !prof !39

.preheader141.lr.ph:                              ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.trip.count164 = and i64 %i.z, 2147483647
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %wide.trip.count173 = and i64 %i.z, 2147483647  ; 5 uses
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
  %min.iters.check971 = icmp ult i64 %i.cs, 2
  %n.vec974 = and i64 %i.cs, -2                   ; 2 uses
  %i.ct = or i64 %i.cs, 1
  %cmp.n995 = icmp eq i64 %i.cs, %n.vec974
  %3 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check863 = icmp ult i64 %3, 2
  %n.vec866 = and i64 %3, -2                      ; 2 uses
  %i.cu = or i64 %3, 1
  %cmp.n887 = icmp eq i64 %3, %n.vec866
  %4 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check755 = icmp ult i64 %4, 2
  %n.vec758 = and i64 %4, -2                      ; 2 uses
  %i.cv = or i64 %4, 1
  %cmp.n779 = icmp eq i64 %4, %n.vec758
  %5 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check647 = icmp ult i64 %5, 2
  %n.vec650 = and i64 %5, -2                      ; 2 uses
  %i.cw = or i64 %5, 1
  %cmp.n671 = icmp eq i64 %5, %n.vec650
  %6 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check539 = icmp ult i64 %6, 2
  %n.vec542 = and i64 %6, -2                      ; 2 uses
  %i.cx = or i64 %6, 1
  %cmp.n563 = icmp eq i64 %6, %n.vec542
  %7 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check427 = icmp ult i64 %7, 2
  %n.vec430 = and i64 %7, -2                      ; 2 uses
  %i.cy = or i64 %7, 1
  %cmp.n455 = icmp eq i64 %7, %n.vec430
  %8 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check321 = icmp ult i64 %8, 2
  %n.vec324 = and i64 %8, -2                      ; 2 uses
  %i.cz = or i64 %8, 1
  %cmp.n333 = icmp eq i64 %8, %n.vec324
  %i.da = and i64 %i.z, 1
  %lcmp.mod.not.not = icmp eq i64 %i.da, 0
  %9 = add nsw i64 %wide.trip.count, -1           ; 4 uses
  %min.iters.check288 = icmp ult i64 %9, 2
  %n.vec291 = and i64 %9, -2                      ; 2 uses
  %i.db = or i64 %9, 1
  %cmp.n300 = icmp eq i64 %9, %n.vec291
  %i.dc = and i64 %i.z, 1
  %lcmp.mod1006.not.not = icmp eq i64 %i.dc, 0
  %10 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %min.iters.check255 = icmp ult i64 %10, 2
  %n.vec258 = and i64 %10, -2                     ; 2 uses
  %i.dd = or i64 %10, 1
  %cmp.n267 = icmp eq i64 %10, %n.vec258
  %i.de = and i64 %i.z, 1
  %lcmp.mod1008.not.not = icmp eq i64 %i.de, 0
  %11 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %min.iters.check222 = icmp ult i64 %11, 2
  %n.vec225 = and i64 %11, -2                     ; 2 uses
  %i.df = or i64 %11, 1
  %cmp.n234 = icmp eq i64 %11, %n.vec225
  %i.dg = and i64 %i.z, 1
  %lcmp.mod1010.not.not = icmp eq i64 %i.dg, 0
  %12 = add nsw i64 %wide.trip.count, -1          ; 4 uses
  %min.iters.check = icmp ult i64 %12, 2
  %n.vec = and i64 %12, -2                        ; 2 uses
  %i.dh = or i64 %12, 1
  %cmp.n = icmp eq i64 %12, %n.vec
  %i.di = and i64 %i.z, 1
  %lcmp.mod1012.not.not = icmp eq i64 %i.di, 0
  br label %.preheader141

.preheader141:                                    ; preds = %.preheader141.lr.ph, %.split.us
  %.sroa.046.0151 = phi i64 [ %i.ad, %.preheader141.lr.ph ], [ %i.apt, %.split.us ]
  br i1 %i.af, label %.preheader138.us.preheader, label %.split.us

.preheader138.us.preheader:                       ; preds = %.preheader141
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
  br i1 %min.iters.check971, label %scalar.ph970.preheader, label %vector.memcheck889

vector.memcheck889:                               ; preds = %.preheader138.us.preheader
  %scevgep890 = getelementptr nuw i8, ptr %i.dq, i64 8 ; 9 uses
  %scevgep891 = getelementptr i8, ptr %i.dq, i64 %1 ; 9 uses
  %scevgep892 = getelementptr i8, ptr %i.ds, i64 8 ; 9 uses
  %scevgep893 = getelementptr i8, ptr %i.ds, i64 %1 ; 9 uses
  %scevgep894 = getelementptr i8, ptr %i.dj, i64 %i.cr ; 2 uses
  %scevgep895 = getelementptr i8, ptr %i.dk, i64 %i.cr ; 2 uses
  %scevgep896 = getelementptr i8, ptr %i.dl, i64 %1 ; 2 uses
  %scevgep897 = getelementptr i8, ptr %i.dm, i64 %1 ; 2 uses
  %scevgep898 = getelementptr i8, ptr %i.dn, i64 %1 ; 2 uses
  %scevgep899 = getelementptr i8, ptr %i.do, i64 %1 ; 2 uses
  %scevgep900 = getelementptr i8, ptr %i.dp, i64 %i.cr ; 2 uses
  %scevgep901 = getelementptr i8, ptr %i.dr, i64 8 ; 2 uses
  %scevgep902 = getelementptr i8, ptr %i.dr, i64 %1 ; 2 uses
  %bound0903 = icmp ult ptr %scevgep890, %scevgep893
  %bound1904 = icmp ult ptr %scevgep892, %scevgep891
  %found.conflict905 = and i1 %bound0903, %bound1904
  %bound0906 = icmp ult ptr %scevgep890, %scevgep894
  %bound1907 = icmp ult ptr %i.dj, %scevgep891
  %found.conflict908 = and i1 %bound0906, %bound1907
  %conflict.rdx909 = or i1 %found.conflict905, %found.conflict908
  %bound0910 = icmp ult ptr %scevgep890, %scevgep895
  %bound1911 = icmp ult ptr %i.dk, %scevgep891
  %found.conflict912 = and i1 %bound0910, %bound1911
  %conflict.rdx913 = or i1 %conflict.rdx909, %found.conflict912
  %bound0914 = icmp ult ptr %scevgep890, %scevgep896
  %bound1915 = icmp ult ptr %i.dl, %scevgep891
  %found.conflict916 = and i1 %bound0914, %bound1915
  %conflict.rdx917 = or i1 %conflict.rdx913, %found.conflict916
  %bound0918 = icmp ult ptr %scevgep890, %scevgep897
  %bound1919 = icmp ult ptr %i.dm, %scevgep891
  %found.conflict920 = and i1 %bound0918, %bound1919
  %conflict.rdx921 = or i1 %conflict.rdx917, %found.conflict920
  %bound0922 = icmp ult ptr %scevgep890, %scevgep898
  %bound1923 = icmp ult ptr %i.dn, %scevgep891
  %found.conflict924 = and i1 %bound0922, %bound1923
  %conflict.rdx925 = or i1 %conflict.rdx921, %found.conflict924
  %bound0926 = icmp ult ptr %scevgep890, %scevgep899
  %bound1927 = icmp ult ptr %i.do, %scevgep891
  %found.conflict928 = and i1 %bound0926, %bound1927
  %conflict.rdx929 = or i1 %conflict.rdx925, %found.conflict928
  %bound0930 = icmp ult ptr %scevgep890, %scevgep900
  %bound1931 = icmp ult ptr %i.dp, %scevgep891
  %found.conflict932 = and i1 %bound0930, %bound1931
  %conflict.rdx933 = or i1 %conflict.rdx929, %found.conflict932
  %bound0934 = icmp ult ptr %scevgep890, %scevgep902
  %bound1935 = icmp ult ptr %scevgep901, %scevgep891
  %found.conflict936 = and i1 %bound0934, %bound1935
  %conflict.rdx937 = or i1 %conflict.rdx933, %found.conflict936
  %bound0938 = icmp ult ptr %scevgep892, %scevgep894
  %bound1939 = icmp ult ptr %i.dj, %scevgep893
  %found.conflict940 = and i1 %bound0938, %bound1939
  %conflict.rdx941 = or i1 %conflict.rdx937, %found.conflict940
  %bound0942 = icmp ult ptr %scevgep892, %scevgep895
  %bound1943 = icmp ult ptr %i.dk, %scevgep893
  %found.conflict944 = and i1 %bound0942, %bound1943
  %conflict.rdx945 = or i1 %conflict.rdx941, %found.conflict944
  %bound0946 = icmp ult ptr %scevgep892, %scevgep896
  %bound1947 = icmp ult ptr %i.dl, %scevgep893
  %found.conflict948 = and i1 %bound0946, %bound1947
  %conflict.rdx949 = or i1 %conflict.rdx945, %found.conflict948
  %bound0950 = icmp ult ptr %scevgep892, %scevgep897
  %bound1951 = icmp ult ptr %i.dm, %scevgep893
  %found.conflict952 = and i1 %bound0950, %bound1951
  %conflict.rdx953 = or i1 %conflict.rdx949, %found.conflict952
  %bound0954 = icmp ult ptr %scevgep892, %scevgep898
  %bound1955 = icmp ult ptr %i.dn, %scevgep893
  %found.conflict956 = and i1 %bound0954, %bound1955
  %conflict.rdx957 = or i1 %conflict.rdx953, %found.conflict956
  %bound0958 = icmp ult ptr %scevgep892, %scevgep899
  %bound1959 = icmp ult ptr %i.do, %scevgep893
  %found.conflict960 = and i1 %bound0958, %bound1959
  %conflict.rdx961 = or i1 %conflict.rdx957, %found.conflict960
  %bound0962 = icmp ult ptr %scevgep892, %scevgep900
  %bound1963 = icmp ult ptr %i.dp, %scevgep893
  %found.conflict964 = and i1 %bound0962, %bound1963
  %conflict.rdx965 = or i1 %conflict.rdx961, %found.conflict964
  %bound0966 = icmp ult ptr %scevgep892, %scevgep902
  %bound1967 = icmp ult ptr %scevgep901, %scevgep893
  %found.conflict968 = and i1 %bound0966, %bound1967
  %conflict.rdx969 = or i1 %conflict.rdx965, %found.conflict968
  br i1 %conflict.rdx969, label %scalar.ph970.preheader, label %vector.body975

vector.body975:                                   ; preds = %vector.memcheck889, %vector.body975
  %index976 = phi i64 [ %index.next993, %vector.body975 ], [ 0, %vector.memcheck889 ] ; 9 uses
  %i.dt = or disjoint i64 %index976, 1            ; 7 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %index976
  %wide.load977 = load <2 x double>, ptr %i.du, align 8, !tbaa !11, !alias.scope !120
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %index976
  %wide.load978 = load <2 x double>, ptr %i.dv, align 8, !tbaa !11, !alias.scope !123
  %i.dw = fadd <2 x double> %wide.load977, %wide.load978
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %index976 ; 2 uses
  %wide.load979 = load <2 x double>, ptr %i.dx, align 8, !tbaa !11, !alias.scope !125
  %i.dy = fsub <2 x double> %i.dw, %wide.load979
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %index976 ; 2 uses
  %wide.load980 = load <2 x double>, ptr %i.dz, align 8, !tbaa !11, !alias.scope !127
  %i.ea = fsub <2 x double> %i.dy, %wide.load980
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dt ; 2 uses
  %wide.load981 = load <2 x double>, ptr %i.eb, align 8, !tbaa !11, !alias.scope !129
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %index976
  %wide.load982 = load <2 x double>, ptr %i.ec, align 8, !tbaa !11, !alias.scope !129
  %i.ed = fadd <2 x double> %wide.load981, %wide.load982
  %i.ee = fmul <2 x double> %i.ea, %i.ed
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.do, i64 %index976 ; 2 uses
  %wide.load983 = load <2 x double>, ptr %i.ef, align 8, !tbaa !11, !alias.scope !131
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %index976
  %wide.load984 = load <2 x double>, ptr %i.eg, align 8, !tbaa !11, !alias.scope !133
  %i.eh = fadd <2 x double> %wide.load983, %wide.load984
  %i.ei = fdiv <2 x double> %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dt
  store <2 x double> %i.ei, ptr %i.ej, align 8, !tbaa !11, !alias.scope !135, !noalias !137
  %wide.load985 = load <2 x double>, ptr %i.dx, align 8, !tbaa !11, !alias.scope !125
  %wide.load986 = load <2 x double>, ptr %i.dz, align 8, !tbaa !11, !alias.scope !127
  %i.ek = fadd <2 x double> %wide.load985, %wide.load986
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.dt
  %wide.load987 = load <2 x double>, ptr %i.el, align 8, !tbaa !11, !alias.scope !125
  %i.em = fsub <2 x double> %i.ek, %wide.load987
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dt
  %wide.load988 = load <2 x double>, ptr %i.en, align 8, !tbaa !11, !alias.scope !127
  %i.eo = fsub <2 x double> %i.em, %wide.load988
  %wide.load989 = load <2 x double>, ptr %i.eb, align 8, !tbaa !11, !alias.scope !129
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dt
  %wide.load990 = load <2 x double>, ptr %i.ep, align 8, !tbaa !11, !alias.scope !140
  %i.eq = fadd <2 x double> %wide.load989, %wide.load990
  %i.er = fmul <2 x double> %i.eo, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dt
  %wide.load991 = load <2 x double>, ptr %i.es, align 8, !tbaa !11, !alias.scope !131
  %wide.load992 = load <2 x double>, ptr %i.ef, align 8, !tbaa !11, !alias.scope !131
  %i.et = fadd <2 x double> %wide.load991, %wide.load992
  %i.eu = fdiv <2 x double> %i.er, %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  store <2 x double> %i.eu, ptr %i.ev, align 8, !tbaa !11, !alias.scope !141, !noalias !142
  %index.next993 = add nuw i64 %index976, 2       ; 2 uses
  %i.ew = icmp eq i64 %index.next993, %n.vec974
  br i1 %i.ew, label %middle.block994, label %vector.body975, !llvm.loop !143

middle.block994:                                  ; preds = %vector.body975
  br i1 %cmp.n995, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us", label %scalar.ph970.preheader

scalar.ph970.preheader:                           ; preds = %vector.memcheck889, %.preheader138.us.preheader, %middle.block994
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck889 ], [ 1, %.preheader138.us.preheader ], [ %i.ct, %middle.block994 ]
  br label %scalar.ph970

scalar.ph970:                                     ; preds = %scalar.ph970.preheader, %scalar.ph970
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph970 ], [ %indvars.iv.ph, %scalar.ph970.preheader ] ; 9 uses
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
  br i1 %exitcond.not, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us", label %scalar.ph970, !llvm.loop !144

"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us": ; preds = %scalar.ph970, %middle.block994
  %i.gq = load ptr, ptr %i.ap, align 8, !tbaa !8  ; 10 uses
  %i.gr = load ptr, ptr %i.aq, align 8, !tbaa !8  ; 10 uses
  %i.gs = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 10 uses
  %i.gt = load ptr, ptr %i.as, align 8, !tbaa !8  ; 10 uses
  %i.gu = load ptr, ptr %i.at, align 8, !tbaa !8  ; 4 uses
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check863, label %scalar.ph862.preheader, label %vector.memcheck781

vector.memcheck781:                               ; preds = %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us"
  %scevgep782 = getelementptr nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %scevgep783 = getelementptr i8, ptr %i.gu, i64 %1 ; 2 uses
  %scevgep784 = getelementptr i8, ptr %i.gv, i64 8 ; 2 uses
  %scevgep785 = getelementptr i8, ptr %i.gv, i64 %1 ; 2 uses
  %scevgep786 = getelementptr i8, ptr %i.gq, i64 %i.cr
  %scevgep787 = getelementptr i8, ptr %i.gr, i64 %i.cr
  %scevgep788 = getelementptr i8, ptr %i.dj, i64 %1
  %scevgep789 = getelementptr i8, ptr %i.dk, i64 %1
  %scevgep790 = getelementptr i8, ptr %i.gs, i64 %1
  %scevgep791 = getelementptr i8, ptr %i.dp, i64 %1
  %scevgep792 = getelementptr i8, ptr %i.gt, i64 %i.cr
  %scevgep793 = getelementptr i8, ptr %i.dn, i64 8
  %scevgep794 = getelementptr i8, ptr %i.dn, i64 %1
  %bound0795 = icmp ult ptr %scevgep782, %scevgep785
  %bound1796 = icmp ult ptr %scevgep784, %scevgep783
  %found.conflict797 = and i1 %bound0795, %bound1796
  %i.gw = insertelement <8 x ptr> poison, ptr %scevgep782, i64 0
  %i.gx = shufflevector <8 x ptr> %i.gw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gy = insertelement <8 x ptr> poison, ptr %scevgep786, i64 0
  %i.gz = insertelement <8 x ptr> %i.gy, ptr %scevgep787, i64 1
  %i.ha = insertelement <8 x ptr> %i.gz, ptr %scevgep788, i64 2
  %i.hb = insertelement <8 x ptr> %i.ha, ptr %scevgep789, i64 3
  %i.hc = insertelement <8 x ptr> %i.hb, ptr %scevgep790, i64 4
  %i.hd = insertelement <8 x ptr> %i.hc, ptr %scevgep791, i64 5
  %i.he = insertelement <8 x ptr> %i.hd, ptr %scevgep792, i64 6
  %i.hf = insertelement <8 x ptr> %i.he, ptr %scevgep794, i64 7 ; 2 uses
  %i.hg = icmp ult <8 x ptr> %i.gx, %i.hf
  %i.hh = insertelement <8 x ptr> poison, ptr %i.gq, i64 0
  %i.hi = insertelement <8 x ptr> %i.hh, ptr %i.gr, i64 1
  %i.hj = insertelement <8 x ptr> %i.hi, ptr %i.dj, i64 2
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %i.dk, i64 3
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %i.gs, i64 4
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %i.dp, i64 5
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %i.gt, i64 6
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep793, i64 7 ; 2 uses
  %i.hp = insertelement <8 x ptr> poison, ptr %scevgep783, i64 0
  %i.hq = shufflevector <8 x ptr> %i.hp, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hr = icmp ult <8 x ptr> %i.ho, %i.hq
  %i.hs = and <8 x i1> %i.hg, %i.hr
  %i.ht = insertelement <8 x ptr> poison, ptr %scevgep784, i64 0
  %i.hu = shufflevector <8 x ptr> %i.ht, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hv = icmp ult <8 x ptr> %i.hu, %i.hf
  %i.hw = insertelement <8 x ptr> poison, ptr %scevgep785, i64 0
  %i.hx = shufflevector <8 x ptr> %i.hw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hy = icmp ult <8 x ptr> %i.ho, %i.hx
  %i.hz = and <8 x i1> %i.hv, %i.hy
  %rdx.op1001 = or <8 x i1> %i.hs, %i.hz
  %i.ia = bitcast <8 x i1> %rdx.op1001 to i8
  %i.ib = icmp ne i8 %i.ia, 0
  %op.rdx1002 = or i1 %i.ib, %found.conflict797
  br i1 %op.rdx1002, label %scalar.ph862.preheader, label %vector.body867

vector.body867:                                   ; preds = %vector.memcheck781, %vector.body867
  %index868 = phi i64 [ %index.next885, %vector.body867 ], [ 0, %vector.memcheck781 ] ; 9 uses
  %i.ic = or disjoint i64 %index868, 1            ; 7 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %index868
  %wide.load869 = load <2 x double>, ptr %i.id, align 8, !tbaa !11, !alias.scope !145
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index868
  %wide.load870 = load <2 x double>, ptr %i.ie, align 8, !tbaa !11, !alias.scope !148
  %i.if = fadd <2 x double> %wide.load869, %wide.load870
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %index868 ; 2 uses
  %wide.load871 = load <2 x double>, ptr %i.ig, align 8, !tbaa !11, !alias.scope !150
  %i.ih = fsub <2 x double> %i.if, %wide.load871
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %index868 ; 2 uses
  %wide.load872 = load <2 x double>, ptr %i.ii, align 8, !tbaa !11, !alias.scope !152
  %i.ij = fsub <2 x double> %i.ih, %wide.load872
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ic ; 2 uses
  %wide.load873 = load <2 x double>, ptr %i.ik, align 8, !tbaa !11, !alias.scope !154
  %i.il = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %index868
  %wide.load874 = load <2 x double>, ptr %i.il, align 8, !tbaa !11, !alias.scope !154
  %i.im = fadd <2 x double> %wide.load873, %wide.load874
  %i.in = fmul <2 x double> %i.ij, %i.im
  %i.io = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %index868 ; 2 uses
  %wide.load875 = load <2 x double>, ptr %i.io, align 8, !tbaa !11, !alias.scope !156
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %index868
  %wide.load876 = load <2 x double>, ptr %i.ip, align 8, !tbaa !11, !alias.scope !158
  %i.iq = fadd <2 x double> %wide.load875, %wide.load876
  %i.ir = fdiv <2 x double> %i.in, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.ic
  store <2 x double> %i.ir, ptr %i.is, align 8, !tbaa !11, !alias.scope !160, !noalias !162
  %wide.load877 = load <2 x double>, ptr %i.ig, align 8, !tbaa !11, !alias.scope !150
  %wide.load878 = load <2 x double>, ptr %i.ii, align 8, !tbaa !11, !alias.scope !152
  %i.it = fadd <2 x double> %wide.load877, %wide.load878
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ic
  %wide.load879 = load <2 x double>, ptr %i.iu, align 8, !tbaa !11, !alias.scope !150
  %i.iv = fsub <2 x double> %i.it, %wide.load879
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.ic
  %wide.load880 = load <2 x double>, ptr %i.iw, align 8, !tbaa !11, !alias.scope !152
  %i.ix = fsub <2 x double> %i.iv, %wide.load880
  %wide.load881 = load <2 x double>, ptr %i.ik, align 8, !tbaa !11, !alias.scope !154
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.ic
  %wide.load882 = load <2 x double>, ptr %i.iy, align 8, !tbaa !11, !alias.scope !165
  %i.iz = fadd <2 x double> %wide.load881, %wide.load882
  %i.ja = fmul <2 x double> %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ic
  %wide.load883 = load <2 x double>, ptr %i.jb, align 8, !tbaa !11, !alias.scope !156
  %wide.load884 = load <2 x double>, ptr %i.io, align 8, !tbaa !11, !alias.scope !156
  %i.jc = fadd <2 x double> %wide.load883, %wide.load884
  %i.jd = fdiv <2 x double> %i.ja, %i.jc
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.ic
  store <2 x double> %i.jd, ptr %i.je, align 8, !tbaa !11, !alias.scope !166, !noalias !167
  %index.next885 = add nuw i64 %index868, 2       ; 2 uses
  %i.jf = icmp eq i64 %index.next885, %n.vec866
  br i1 %i.jf, label %middle.block886, label %vector.body867, !llvm.loop !168

middle.block886:                                  ; preds = %vector.body867
  br i1 %cmp.n887, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.1", label %scalar.ph862.preheader

scalar.ph862.preheader:                           ; preds = %vector.memcheck781, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us", %middle.block886
  %indvars.iv.1.ph = phi i64 [ 1, %vector.memcheck781 ], [ 1, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us" ], [ %i.cu, %middle.block886 ]
  br label %scalar.ph862

scalar.ph862:                                     ; preds = %scalar.ph862.preheader, %scalar.ph862
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph862 ], [ %indvars.iv.1.ph, %scalar.ph862.preheader ] ; 9 uses
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
  br i1 %exitcond.1.not, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.1", label %scalar.ph862, !llvm.loop !169

"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.1": ; preds = %scalar.ph862, %middle.block886
  %i.kz = load ptr, ptr %i.av, align 8, !tbaa !8  ; 10 uses
  %i.la = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 10 uses
  %i.lb = load ptr, ptr %i.ax, align 8, !tbaa !8  ; 10 uses
  %i.lc = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 10 uses
  %i.ld = load ptr, ptr %i.az, align 8, !tbaa !8  ; 4 uses
  %i.le = load ptr, ptr %i.ba, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check755, label %scalar.ph754.preheader, label %vector.memcheck673

vector.memcheck673:                               ; preds = %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.1"
  %scevgep674 = getelementptr nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %scevgep675 = getelementptr i8, ptr %i.ld, i64 %1 ; 2 uses
  %scevgep676 = getelementptr i8, ptr %i.le, i64 8 ; 2 uses
  %scevgep677 = getelementptr i8, ptr %i.le, i64 %1 ; 2 uses
  %scevgep678 = getelementptr i8, ptr %i.kz, i64 %i.cr
  %scevgep679 = getelementptr i8, ptr %i.la, i64 %i.cr
  %scevgep680 = getelementptr i8, ptr %i.gq, i64 %1
  %scevgep681 = getelementptr i8, ptr %i.gr, i64 %1
  %scevgep682 = getelementptr i8, ptr %i.lb, i64 %1
  %scevgep683 = getelementptr i8, ptr %i.gt, i64 %1
  %scevgep684 = getelementptr i8, ptr %i.lc, i64 %i.cr
  %scevgep685 = getelementptr i8, ptr %i.gs, i64 8
  %scevgep686 = getelementptr i8, ptr %i.gs, i64 %1
  %bound0687 = icmp ult ptr %scevgep674, %scevgep677
  %bound1688 = icmp ult ptr %scevgep676, %scevgep675
  %found.conflict689 = and i1 %bound0687, %bound1688
  %i.lf = insertelement <8 x ptr> poison, ptr %scevgep674, i64 0
  %i.lg = shufflevector <8 x ptr> %i.lf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.lh = insertelement <8 x ptr> poison, ptr %scevgep678, i64 0
  %i.li = insertelement <8 x ptr> %i.lh, ptr %scevgep679, i64 1
  %i.lj = insertelement <8 x ptr> %i.li, ptr %scevgep680, i64 2
  %i.lk = insertelement <8 x ptr> %i.lj, ptr %scevgep681, i64 3
  %i.ll = insertelement <8 x ptr> %i.lk, ptr %scevgep682, i64 4
  %i.lm = insertelement <8 x ptr> %i.ll, ptr %scevgep683, i64 5
  %i.ln = insertelement <8 x ptr> %i.lm, ptr %scevgep684, i64 6
  %i.lo = insertelement <8 x ptr> %i.ln, ptr %scevgep686, i64 7 ; 2 uses
  %i.lp = icmp ult <8 x ptr> %i.lg, %i.lo
  %i.lq = insertelement <8 x ptr> poison, ptr %i.kz, i64 0
  %i.lr = insertelement <8 x ptr> %i.lq, ptr %i.la, i64 1
  %i.ls = insertelement <8 x ptr> %i.lr, ptr %i.gq, i64 2
  %i.lt = insertelement <8 x ptr> %i.ls, ptr %i.gr, i64 3
  %i.lu = insertelement <8 x ptr> %i.lt, ptr %i.lb, i64 4
  %i.lv = insertelement <8 x ptr> %i.lu, ptr %i.gt, i64 5
  %i.lw = insertelement <8 x ptr> %i.lv, ptr %i.lc, i64 6
  %i.lx = insertelement <8 x ptr> %i.lw, ptr %scevgep685, i64 7 ; 2 uses
  %i.ly = insertelement <8 x ptr> poison, ptr %scevgep675, i64 0
  %i.lz = shufflevector <8 x ptr> %i.ly, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ma = icmp ult <8 x ptr> %i.lx, %i.lz
  %i.mb = and <8 x i1> %i.lp, %i.ma
  %i.mc = insertelement <8 x ptr> poison, ptr %scevgep676, i64 0
  %i.md = shufflevector <8 x ptr> %i.mc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.me = icmp ult <8 x ptr> %i.md, %i.lo
  %i.mf = insertelement <8 x ptr> poison, ptr %scevgep677, i64 0
  %i.mg = shufflevector <8 x ptr> %i.mf, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.mh = icmp ult <8 x ptr> %i.lx, %i.mg
  %i.mi = and <8 x i1> %i.me, %i.mh
  %rdx.op999 = or <8 x i1> %i.mb, %i.mi
  %i.mj = bitcast <8 x i1> %rdx.op999 to i8
  %i.mk = icmp ne i8 %i.mj, 0
  %op.rdx1000 = or i1 %i.mk, %found.conflict689
  br i1 %op.rdx1000, label %scalar.ph754.preheader, label %vector.body759

vector.body759:                                   ; preds = %vector.memcheck673, %vector.body759
  %index760 = phi i64 [ %index.next777, %vector.body759 ], [ 0, %vector.memcheck673 ] ; 9 uses
  %i.ml = or disjoint i64 %index760, 1            ; 7 uses
  %i.mm = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %index760
  %wide.load761 = load <2 x double>, ptr %i.mm, align 8, !tbaa !11, !alias.scope !170
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.la, i64 %index760
  %wide.load762 = load <2 x double>, ptr %i.mn, align 8, !tbaa !11, !alias.scope !173
  %i.mo = fadd <2 x double> %wide.load761, %wide.load762
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %index760 ; 2 uses
  %wide.load763 = load <2 x double>, ptr %i.mp, align 8, !tbaa !11, !alias.scope !175
  %i.mq = fsub <2 x double> %i.mo, %wide.load763
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %index760 ; 2 uses
  %wide.load764 = load <2 x double>, ptr %i.mr, align 8, !tbaa !11, !alias.scope !177
  %i.ms = fsub <2 x double> %i.mq, %wide.load764
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.ml ; 2 uses
  %wide.load765 = load <2 x double>, ptr %i.mt, align 8, !tbaa !11, !alias.scope !179
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %index760
  %wide.load766 = load <2 x double>, ptr %i.mu, align 8, !tbaa !11, !alias.scope !179
  %i.mv = fadd <2 x double> %wide.load765, %wide.load766
  %i.mw = fmul <2 x double> %i.ms, %i.mv
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %index760 ; 2 uses
  %wide.load767 = load <2 x double>, ptr %i.mx, align 8, !tbaa !11, !alias.scope !181
  %i.my = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %index760
  %wide.load768 = load <2 x double>, ptr %i.my, align 8, !tbaa !11, !alias.scope !183
  %i.mz = fadd <2 x double> %wide.load767, %wide.load768
  %i.na = fdiv <2 x double> %i.mw, %i.mz
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.ml
  store <2 x double> %i.na, ptr %i.nb, align 8, !tbaa !11, !alias.scope !185, !noalias !187
  %wide.load769 = load <2 x double>, ptr %i.mp, align 8, !tbaa !11, !alias.scope !175
  %wide.load770 = load <2 x double>, ptr %i.mr, align 8, !tbaa !11, !alias.scope !177
  %i.nc = fadd <2 x double> %wide.load769, %wide.load770
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %i.ml
  %wide.load771 = load <2 x double>, ptr %i.nd, align 8, !tbaa !11, !alias.scope !175
  %i.ne = fsub <2 x double> %i.nc, %wide.load771
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.ml
  %wide.load772 = load <2 x double>, ptr %i.nf, align 8, !tbaa !11, !alias.scope !177
  %i.ng = fsub <2 x double> %i.ne, %wide.load772
  %wide.load773 = load <2 x double>, ptr %i.mt, align 8, !tbaa !11, !alias.scope !179
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.ml
  %wide.load774 = load <2 x double>, ptr %i.nh, align 8, !tbaa !11, !alias.scope !190
  %i.ni = fadd <2 x double> %wide.load773, %wide.load774
  %i.nj = fmul <2 x double> %i.ng, %i.ni
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.ml
  %wide.load775 = load <2 x double>, ptr %i.nk, align 8, !tbaa !11, !alias.scope !181
  %wide.load776 = load <2 x double>, ptr %i.mx, align 8, !tbaa !11, !alias.scope !181
  %i.nl = fadd <2 x double> %wide.load775, %wide.load776
  %i.nm = fdiv <2 x double> %i.nj, %i.nl
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %i.ml
  store <2 x double> %i.nm, ptr %i.nn, align 8, !tbaa !11, !alias.scope !191, !noalias !192
  %index.next777 = add nuw i64 %index760, 2       ; 2 uses
  %i.no = icmp eq i64 %index.next777, %n.vec758
  br i1 %i.no, label %middle.block778, label %vector.body759, !llvm.loop !193

middle.block778:                                  ; preds = %vector.body759
  br i1 %cmp.n779, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.2", label %scalar.ph754.preheader

scalar.ph754.preheader:                           ; preds = %vector.memcheck673, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.1", %middle.block778
  %indvars.iv.2.ph = phi i64 [ 1, %vector.memcheck673 ], [ 1, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.1" ], [ %i.cv, %middle.block778 ]
  br label %scalar.ph754

scalar.ph754:                                     ; preds = %scalar.ph754.preheader, %scalar.ph754
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph754 ], [ %indvars.iv.2.ph, %scalar.ph754.preheader ] ; 9 uses
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
  br i1 %exitcond.2.not, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.2", label %scalar.ph754, !llvm.loop !194

"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.2": ; preds = %scalar.ph754, %middle.block778
  %i.pi = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 10 uses
  %i.pj = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 10 uses
  %i.pk = load ptr, ptr %i.bd, align 8, !tbaa !8  ; 10 uses
  %i.pl = load ptr, ptr %i.be, align 8, !tbaa !8  ; 10 uses
  %i.pm = load ptr, ptr %i.bf, align 8, !tbaa !8  ; 4 uses
  %i.pn = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check647, label %scalar.ph646.preheader, label %vector.memcheck565

vector.memcheck565:                               ; preds = %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.2"
  %scevgep566 = getelementptr nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %scevgep567 = getelementptr i8, ptr %i.pm, i64 %1 ; 2 uses
  %scevgep568 = getelementptr i8, ptr %i.pn, i64 8 ; 2 uses
  %scevgep569 = getelementptr i8, ptr %i.pn, i64 %1 ; 2 uses
  %scevgep570 = getelementptr i8, ptr %i.pi, i64 %i.cr
  %scevgep571 = getelementptr i8, ptr %i.pj, i64 %i.cr
  %scevgep572 = getelementptr i8, ptr %i.kz, i64 %1
  %scevgep573 = getelementptr i8, ptr %i.la, i64 %1
  %scevgep574 = getelementptr i8, ptr %i.pk, i64 %1
  %scevgep575 = getelementptr i8, ptr %i.lc, i64 %1
  %scevgep576 = getelementptr i8, ptr %i.pl, i64 %i.cr
  %scevgep577 = getelementptr i8, ptr %i.lb, i64 8
  %scevgep578 = getelementptr i8, ptr %i.lb, i64 %1
  %bound0579 = icmp ult ptr %scevgep566, %scevgep569
  %bound1580 = icmp ult ptr %scevgep568, %scevgep567
  %found.conflict581 = and i1 %bound0579, %bound1580
  %i.po = insertelement <8 x ptr> poison, ptr %scevgep566, i64 0
  %i.pp = shufflevector <8 x ptr> %i.po, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.pq = insertelement <8 x ptr> poison, ptr %scevgep570, i64 0
  %i.pr = insertelement <8 x ptr> %i.pq, ptr %scevgep571, i64 1
  %i.ps = insertelement <8 x ptr> %i.pr, ptr %scevgep572, i64 2
  %i.pt = insertelement <8 x ptr> %i.ps, ptr %scevgep573, i64 3
  %i.pu = insertelement <8 x ptr> %i.pt, ptr %scevgep574, i64 4
  %i.pv = insertelement <8 x ptr> %i.pu, ptr %scevgep575, i64 5
  %i.pw = insertelement <8 x ptr> %i.pv, ptr %scevgep576, i64 6
  %i.px = insertelement <8 x ptr> %i.pw, ptr %scevgep578, i64 7 ; 2 uses
  %i.py = icmp ult <8 x ptr> %i.pp, %i.px
  %i.pz = insertelement <8 x ptr> poison, ptr %i.pi, i64 0
  %i.qa = insertelement <8 x ptr> %i.pz, ptr %i.pj, i64 1
  %i.qb = insertelement <8 x ptr> %i.qa, ptr %i.kz, i64 2
  %i.qc = insertelement <8 x ptr> %i.qb, ptr %i.la, i64 3
  %i.qd = insertelement <8 x ptr> %i.qc, ptr %i.pk, i64 4
  %i.qe = insertelement <8 x ptr> %i.qd, ptr %i.lc, i64 5
  %i.qf = insertelement <8 x ptr> %i.qe, ptr %i.pl, i64 6
  %i.qg = insertelement <8 x ptr> %i.qf, ptr %scevgep577, i64 7 ; 2 uses
  %i.qh = insertelement <8 x ptr> poison, ptr %scevgep567, i64 0
  %i.qi = shufflevector <8 x ptr> %i.qh, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qj = icmp ult <8 x ptr> %i.qg, %i.qi
  %i.qk = and <8 x i1> %i.py, %i.qj
  %i.ql = insertelement <8 x ptr> poison, ptr %scevgep568, i64 0
  %i.qm = shufflevector <8 x ptr> %i.ql, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qn = icmp ult <8 x ptr> %i.qm, %i.px
  %i.qo = insertelement <8 x ptr> poison, ptr %scevgep569, i64 0
  %i.qp = shufflevector <8 x ptr> %i.qo, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.qq = icmp ult <8 x ptr> %i.qg, %i.qp
  %i.qr = and <8 x i1> %i.qn, %i.qq
  %rdx.op997 = or <8 x i1> %i.qk, %i.qr
  %i.qs = bitcast <8 x i1> %rdx.op997 to i8
  %i.qt = icmp ne i8 %i.qs, 0
  %op.rdx998 = or i1 %i.qt, %found.conflict581
  br i1 %op.rdx998, label %scalar.ph646.preheader, label %vector.body651

vector.body651:                                   ; preds = %vector.memcheck565, %vector.body651
  %index652 = phi i64 [ %index.next669, %vector.body651 ], [ 0, %vector.memcheck565 ] ; 9 uses
  %i.qu = or disjoint i64 %index652, 1            ; 7 uses
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %index652
  %wide.load653 = load <2 x double>, ptr %i.qv, align 8, !tbaa !11, !alias.scope !195
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %index652
  %wide.load654 = load <2 x double>, ptr %i.qw, align 8, !tbaa !11, !alias.scope !198
  %i.qx = fadd <2 x double> %wide.load653, %wide.load654
  %i.qy = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %index652 ; 2 uses
  %wide.load655 = load <2 x double>, ptr %i.qy, align 8, !tbaa !11, !alias.scope !200
  %i.qz = fsub <2 x double> %i.qx, %wide.load655
  %i.ra = getelementptr inbounds [8 x i8], ptr %i.la, i64 %index652 ; 2 uses
  %wide.load656 = load <2 x double>, ptr %i.ra, align 8, !tbaa !11, !alias.scope !202
  %i.rb = fsub <2 x double> %i.qz, %wide.load656
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.qu ; 2 uses
  %wide.load657 = load <2 x double>, ptr %i.rc, align 8, !tbaa !11, !alias.scope !204
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %index652
  %wide.load658 = load <2 x double>, ptr %i.rd, align 8, !tbaa !11, !alias.scope !204
  %i.re = fadd <2 x double> %wide.load657, %wide.load658
  %i.rf = fmul <2 x double> %i.rb, %i.re
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %index652 ; 2 uses
  %wide.load659 = load <2 x double>, ptr %i.rg, align 8, !tbaa !11, !alias.scope !206
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %index652
  %wide.load660 = load <2 x double>, ptr %i.rh, align 8, !tbaa !11, !alias.scope !208
  %i.ri = fadd <2 x double> %wide.load659, %wide.load660
  %i.rj = fdiv <2 x double> %i.rf, %i.ri
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %i.qu
  store <2 x double> %i.rj, ptr %i.rk, align 8, !tbaa !11, !alias.scope !210, !noalias !212
  %wide.load661 = load <2 x double>, ptr %i.qy, align 8, !tbaa !11, !alias.scope !200
  %wide.load662 = load <2 x double>, ptr %i.ra, align 8, !tbaa !11, !alias.scope !202
  %i.rl = fadd <2 x double> %wide.load661, %wide.load662
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.qu
  %wide.load663 = load <2 x double>, ptr %i.rm, align 8, !tbaa !11, !alias.scope !200
  %i.rn = fsub <2 x double> %i.rl, %wide.load663
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.qu
  %wide.load664 = load <2 x double>, ptr %i.ro, align 8, !tbaa !11, !alias.scope !202
  %i.rp = fsub <2 x double> %i.rn, %wide.load664
  %wide.load665 = load <2 x double>, ptr %i.rc, align 8, !tbaa !11, !alias.scope !204
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.qu
  %wide.load666 = load <2 x double>, ptr %i.rq, align 8, !tbaa !11, !alias.scope !215
  %i.rr = fadd <2 x double> %wide.load665, %wide.load666
  %i.rs = fmul <2 x double> %i.rp, %i.rr
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.qu
  %wide.load667 = load <2 x double>, ptr %i.rt, align 8, !tbaa !11, !alias.scope !206
  %wide.load668 = load <2 x double>, ptr %i.rg, align 8, !tbaa !11, !alias.scope !206
  %i.ru = fadd <2 x double> %wide.load667, %wide.load668
  %i.rv = fdiv <2 x double> %i.rs, %i.ru
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.qu
  store <2 x double> %i.rv, ptr %i.rw, align 8, !tbaa !11, !alias.scope !216, !noalias !217
  %index.next669 = add nuw i64 %index652, 2       ; 2 uses
  %i.rx = icmp eq i64 %index.next669, %n.vec650
  br i1 %i.rx, label %middle.block670, label %vector.body651, !llvm.loop !218

middle.block670:                                  ; preds = %vector.body651
  br i1 %cmp.n671, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.3", label %scalar.ph646.preheader

scalar.ph646.preheader:                           ; preds = %vector.memcheck565, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.2", %middle.block670
  %indvars.iv.3.ph = phi i64 [ 1, %vector.memcheck565 ], [ 1, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.2" ], [ %i.cw, %middle.block670 ]
  br label %scalar.ph646

scalar.ph646:                                     ; preds = %scalar.ph646.preheader, %scalar.ph646
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph646 ], [ %indvars.iv.3.ph, %scalar.ph646.preheader ] ; 9 uses
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
  br i1 %exitcond.3.not, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.3", label %scalar.ph646, !llvm.loop !219

"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.3": ; preds = %scalar.ph646, %middle.block670
  %i.tr = load ptr, ptr %i.bh, align 8, !tbaa !8  ; 4 uses
  %i.ts = load ptr, ptr %i.bi, align 8, !tbaa !8  ; 4 uses
  %i.tt = load ptr, ptr %i.bj, align 8, !tbaa !8  ; 6 uses
  %i.tu = load ptr, ptr %i.bk, align 8, !tbaa !8  ; 4 uses
  %i.tv = load ptr, ptr %i.bl, align 8, !tbaa !8  ; 4 uses
  %i.tw = load ptr, ptr %i.bm, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check539, label %scalar.ph538.preheader, label %vector.memcheck457

vector.memcheck457:                               ; preds = %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.3"
  %scevgep458 = getelementptr nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %scevgep459 = getelementptr i8, ptr %i.tv, i64 %1 ; 2 uses
  %scevgep460 = getelementptr i8, ptr %i.tw, i64 8 ; 2 uses
  %scevgep461 = getelementptr i8, ptr %i.tw, i64 %1 ; 2 uses
  %scevgep462 = getelementptr i8, ptr %i.tr, i64 %i.cr
  %scevgep463 = getelementptr i8, ptr %i.ts, i64 %i.cr
  %scevgep464 = getelementptr i8, ptr %i.pi, i64 %1
  %scevgep465 = getelementptr i8, ptr %i.pj, i64 %1
  %scevgep466 = getelementptr i8, ptr %i.tt, i64 %1
  %scevgep467 = getelementptr i8, ptr %i.pl, i64 %1
  %scevgep468 = getelementptr i8, ptr %i.tu, i64 %i.cr
  %scevgep469 = getelementptr i8, ptr %i.pk, i64 8
  %scevgep470 = getelementptr i8, ptr %i.pk, i64 %1
  %bound0471 = icmp ult ptr %scevgep458, %scevgep461
  %bound1472 = icmp ult ptr %scevgep460, %scevgep459
  %found.conflict473 = and i1 %bound0471, %bound1472
  %i.tx = insertelement <8 x ptr> poison, ptr %scevgep458, i64 0
  %i.ty = shufflevector <8 x ptr> %i.tx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.tz = insertelement <8 x ptr> poison, ptr %scevgep462, i64 0
  %i.ua = insertelement <8 x ptr> %i.tz, ptr %scevgep463, i64 1
  %i.ub = insertelement <8 x ptr> %i.ua, ptr %scevgep464, i64 2
  %i.uc = insertelement <8 x ptr> %i.ub, ptr %scevgep465, i64 3
  %i.ud = insertelement <8 x ptr> %i.uc, ptr %scevgep466, i64 4
  %i.ue = insertelement <8 x ptr> %i.ud, ptr %scevgep467, i64 5
  %i.uf = insertelement <8 x ptr> %i.ue, ptr %scevgep468, i64 6
  %i.ug = insertelement <8 x ptr> %i.uf, ptr %scevgep470, i64 7 ; 2 uses
  %i.uh = icmp ult <8 x ptr> %i.ty, %i.ug
  %i.ui = insertelement <8 x ptr> poison, ptr %i.tr, i64 0
  %i.uj = insertelement <8 x ptr> %i.ui, ptr %i.ts, i64 1
  %i.uk = insertelement <8 x ptr> %i.uj, ptr %i.pi, i64 2
  %i.ul = insertelement <8 x ptr> %i.uk, ptr %i.pj, i64 3
  %i.um = insertelement <8 x ptr> %i.ul, ptr %i.tt, i64 4
  %i.un = insertelement <8 x ptr> %i.um, ptr %i.pl, i64 5
  %i.uo = insertelement <8 x ptr> %i.un, ptr %i.tu, i64 6
  %i.up = insertelement <8 x ptr> %i.uo, ptr %scevgep469, i64 7 ; 2 uses
  %i.uq = insertelement <8 x ptr> poison, ptr %scevgep459, i64 0
  %i.ur = shufflevector <8 x ptr> %i.uq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.us = icmp ult <8 x ptr> %i.up, %i.ur
  %i.ut = and <8 x i1> %i.uh, %i.us
  %i.uu = insertelement <8 x ptr> poison, ptr %scevgep460, i64 0
  %i.uv = shufflevector <8 x ptr> %i.uu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.uw = icmp ult <8 x ptr> %i.uv, %i.ug
  %i.ux = insertelement <8 x ptr> poison, ptr %scevgep461, i64 0
  %i.uy = shufflevector <8 x ptr> %i.ux, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.uz = icmp ult <8 x ptr> %i.up, %i.uy
  %i.va = and <8 x i1> %i.uw, %i.uz
  %rdx.op = or <8 x i1> %i.ut, %i.va
  %i.vb = bitcast <8 x i1> %rdx.op to i8
  %i.vc = icmp ne i8 %i.vb, 0
  %op.rdx = or i1 %i.vc, %found.conflict473
  br i1 %op.rdx, label %scalar.ph538.preheader, label %vector.body543

vector.body543:                                   ; preds = %vector.memcheck457, %vector.body543
  %index544 = phi i64 [ %index.next561, %vector.body543 ], [ 0, %vector.memcheck457 ] ; 9 uses
  %i.vd = or disjoint i64 %index544, 1            ; 7 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.tr, i64 %index544
  %wide.load545 = load <2 x double>, ptr %i.ve, align 8, !tbaa !11, !alias.scope !220
  %i.vf = getelementptr inbounds [8 x i8], ptr %i.ts, i64 %index544
  %wide.load546 = load <2 x double>, ptr %i.vf, align 8, !tbaa !11, !alias.scope !223
  %i.vg = fadd <2 x double> %wide.load545, %wide.load546
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %index544 ; 2 uses
  %wide.load547 = load <2 x double>, ptr %i.vh, align 8, !tbaa !11, !alias.scope !225
  %i.vi = fsub <2 x double> %i.vg, %wide.load547
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %index544 ; 2 uses
  %wide.load548 = load <2 x double>, ptr %i.vj, align 8, !tbaa !11, !alias.scope !227
  %i.vk = fsub <2 x double> %i.vi, %wide.load548
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.vd ; 2 uses
  %wide.load549 = load <2 x double>, ptr %i.vl, align 8, !tbaa !11, !alias.scope !229
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.tt, i64 %index544
  %wide.load550 = load <2 x double>, ptr %i.vm, align 8, !tbaa !11, !alias.scope !229
  %i.vn = fadd <2 x double> %wide.load549, %wide.load550
  %i.vo = fmul <2 x double> %i.vk, %i.vn
  %i.vp = getelementptr inbounds [8 x i8], ptr %i.pl, i64 %index544 ; 2 uses
  %wide.load551 = load <2 x double>, ptr %i.vp, align 8, !tbaa !11, !alias.scope !231
  %i.vq = getelementptr inbounds [8 x i8], ptr %i.tu, i64 %index544
  %wide.load552 = load <2 x double>, ptr %i.vq, align 8, !tbaa !11, !alias.scope !233
  %i.vr = fadd <2 x double> %wide.load551, %wide.load552
  %i.vs = fdiv <2 x double> %i.vo, %i.vr
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.vd
  store <2 x double> %i.vs, ptr %i.vt, align 8, !tbaa !11, !alias.scope !235, !noalias !237
  %wide.load553 = load <2 x double>, ptr %i.vh, align 8, !tbaa !11, !alias.scope !225
  %wide.load554 = load <2 x double>, ptr %i.vj, align 8, !tbaa !11, !alias.scope !227
  %i.vu = fadd <2 x double> %wide.load553, %wide.load554
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.vd
  %wide.load555 = load <2 x double>, ptr %i.vv, align 8, !tbaa !11, !alias.scope !225
  %i.vw = fsub <2 x double> %i.vu, %wide.load555
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %i.vd
  %wide.load556 = load <2 x double>, ptr %i.vx, align 8, !tbaa !11, !alias.scope !227
  %i.vy = fsub <2 x double> %i.vw, %wide.load556
  %wide.load557 = load <2 x double>, ptr %i.vl, align 8, !tbaa !11, !alias.scope !229
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.vd
  %wide.load558 = load <2 x double>, ptr %i.vz, align 8, !tbaa !11, !alias.scope !240
  %i.wa = fadd <2 x double> %wide.load557, %wide.load558
  %i.wb = fmul <2 x double> %i.vy, %i.wa
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.vd
  %wide.load559 = load <2 x double>, ptr %i.wc, align 8, !tbaa !11, !alias.scope !231
  %wide.load560 = load <2 x double>, ptr %i.vp, align 8, !tbaa !11, !alias.scope !231
  %i.wd = fadd <2 x double> %wide.load559, %wide.load560
  %i.we = fdiv <2 x double> %i.wb, %i.wd
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %i.vd
  store <2 x double> %i.we, ptr %i.wf, align 8, !tbaa !11, !alias.scope !241, !noalias !242
  %index.next561 = add nuw i64 %index544, 2       ; 2 uses
  %i.wg = icmp eq i64 %index.next561, %n.vec542
  br i1 %i.wg, label %middle.block562, label %vector.body543, !llvm.loop !243

middle.block562:                                  ; preds = %vector.body543
  br i1 %cmp.n563, label %.preheader137.us.preheader, label %scalar.ph538.preheader

scalar.ph538.preheader:                           ; preds = %vector.memcheck457, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.3", %middle.block562
  %indvars.iv.4.ph = phi i64 [ 1, %vector.memcheck457 ], [ 1, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_0Ev9simd_execiiT_.exit_crit_edge.us.3" ], [ %i.cx, %middle.block562 ]
  br label %scalar.ph538

scalar.ph538:                                     ; preds = %scalar.ph538.preheader, %scalar.ph538
  %indvars.iv.4 = phi i64 [ %indvars.iv.next.4, %scalar.ph538 ], [ %indvars.iv.4.ph, %scalar.ph538.preheader ] ; 9 uses
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
  br i1 %exitcond.4.not, label %.preheader137.us.preheader, label %scalar.ph538, !llvm.loop !244

._crit_edge:                                      ; preds = %.split.us, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void

.preheader137.us.preheader:                       ; preds = %scalar.ph538, %middle.block562
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  %.pre180 = load ptr, ptr %.phi.trans.insert179, align 8, !tbaa !8
  %.pre182 = load ptr, ptr %.phi.trans.insert181, align 8, !tbaa !8
  br label %.preheader137.us

.preheader137.us:                                 ; preds = %.preheader137.us.preheader, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us"
  %i.ya = phi ptr [ %.pre182, %.preheader137.us.preheader ], [ %i.ys, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us" ] ; 9 uses
  %i.yb = phi ptr [ %.pre180, %.preheader137.us.preheader ], [ %i.yj, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us" ] ; 4 uses
  %i.yc = phi ptr [ %.pre, %.preheader137.us.preheader ], [ %i.yl, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us" ] ; 9 uses
  %indvars.iv166 = phi i64 [ 1, %.preheader137.us.preheader ], [ %indvars.iv.next167, %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us" ] ; 6 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv166
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !8  ; 7 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv166
  %i.yg = getelementptr i8, ptr %i.yf, i64 -8
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !8  ; 4 uses
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 5 uses
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next167
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !8  ; 5 uses
  %i.yk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next167
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !8  ; 5 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv166
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !8  ; 4 uses
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv166
  %i.yp = getelementptr i8, ptr %i.yo, i64 -8
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !8  ; 4 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next167
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !8  ; 5 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv166
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !8  ; 4 uses
  br i1 %min.iters.check427, label %scalar.ph426.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %.preheader137.us
  %scevgep = getelementptr nuw i8, ptr %i.yn, i64 8 ; 10 uses
  %scevgep336 = getelementptr i8, ptr %i.yn, i64 %1 ; 10 uses
  %scevgep337 = getelementptr i8, ptr %i.yu, i64 8 ; 10 uses
  %scevgep338 = getelementptr i8, ptr %i.yu, i64 %1 ; 10 uses
  %scevgep339 = getelementptr i8, ptr %i.ye, i64 %1 ; 2 uses
  %scevgep340 = getelementptr i8, ptr %i.yc, i64 %2 ; 2 uses
  %scevgep341 = getelementptr nuw i8, ptr %i.yb, i64 8 ; 2 uses
  %scevgep342 = getelementptr i8, ptr %i.yb, i64 %1 ; 2 uses
  %scevgep343 = getelementptr nuw i8, ptr %i.yh, i64 8 ; 2 uses
  %scevgep344 = getelementptr i8, ptr %i.yh, i64 %1 ; 2 uses
  %scevgep345 = getelementptr nuw i8, ptr %i.yj, i64 8 ; 2 uses
  %scevgep346 = getelementptr i8, ptr %i.yj, i64 %1 ; 2 uses
  %scevgep347 = getelementptr nuw i8, ptr %i.yl, i64 8 ; 2 uses
  %scevgep348 = getelementptr i8, ptr %i.yl, i64 %1 ; 2 uses
  %scevgep349 = getelementptr i8, ptr %i.ya, i64 %2 ; 2 uses
  %scevgep350 = getelementptr i8, ptr %i.yq, i64 8 ; 2 uses
  %scevgep351 = getelementptr i8, ptr %i.yq, i64 %1 ; 2 uses
  %scevgep352 = getelementptr i8, ptr %i.ys, i64 8 ; 2 uses
  %scevgep353 = getelementptr i8, ptr %i.ys, i64 %1 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep338
  %bound1 = icmp ult ptr %scevgep337, %scevgep336
  %found.conflict = and i1 %bound0, %bound1
  %bound0354 = icmp ult ptr %scevgep, %scevgep339
  %bound1355 = icmp ult ptr %i.ye, %scevgep336
  %found.conflict356 = and i1 %bound0354, %bound1355
  %conflict.rdx357 = or i1 %found.conflict, %found.conflict356
  %bound0358 = icmp ult ptr %scevgep, %scevgep340
  %bound1359 = icmp ult ptr %i.yc, %scevgep336
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %conflict.rdx357, %found.conflict360
  %bound0362 = icmp ult ptr %scevgep, %scevgep342
  %bound1363 = icmp ult ptr %scevgep341, %scevgep336
  %found.conflict364 = and i1 %bound0362, %bound1363
  %conflict.rdx365 = or i1 %conflict.rdx361, %found.conflict364
  %bound0366 = icmp ult ptr %scevgep, %scevgep344
  %bound1367 = icmp ult ptr %scevgep343, %scevgep336
  %found.conflict368 = and i1 %bound0366, %bound1367
  %conflict.rdx369 = or i1 %conflict.rdx365, %found.conflict368
  %bound0370 = icmp ult ptr %scevgep, %scevgep346
  %bound1371 = icmp ult ptr %scevgep345, %scevgep336
  %found.conflict372 = and i1 %bound0370, %bound1371
  %conflict.rdx373 = or i1 %conflict.rdx369, %found.conflict372
  %bound0374 = icmp ult ptr %scevgep, %scevgep348
  %bound1375 = icmp ult ptr %scevgep347, %scevgep336
  %found.conflict376 = and i1 %bound0374, %bound1375
  %conflict.rdx377 = or i1 %conflict.rdx373, %found.conflict376
  %bound0378 = icmp ult ptr %scevgep, %scevgep349
  %bound1379 = icmp ult ptr %i.ya, %scevgep336
  %found.conflict380 = and i1 %bound0378, %bound1379
  %conflict.rdx381 = or i1 %conflict.rdx377, %found.conflict380
  %bound0382 = icmp ult ptr %scevgep, %scevgep351
  %bound1383 = icmp ult ptr %scevgep350, %scevgep336
  %found.conflict384 = and i1 %bound0382, %bound1383
  %conflict.rdx385 = or i1 %conflict.rdx381, %found.conflict384
  %bound0386 = icmp ult ptr %scevgep, %scevgep353
  %bound1387 = icmp ult ptr %scevgep352, %scevgep336
  %found.conflict388 = and i1 %bound0386, %bound1387
  %conflict.rdx389 = or i1 %conflict.rdx385, %found.conflict388
  %bound0390 = icmp ult ptr %scevgep337, %scevgep339
  %bound1391 = icmp ult ptr %i.ye, %scevgep338
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %conflict.rdx389, %found.conflict392
  %bound0394 = icmp ult ptr %scevgep337, %scevgep340
  %bound1395 = icmp ult ptr %i.yc, %scevgep338
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  %bound0398 = icmp ult ptr %scevgep337, %scevgep342
  %bound1399 = icmp ult ptr %scevgep341, %scevgep338
  %found.conflict400 = and i1 %bound0398, %bound1399
  %conflict.rdx401 = or i1 %conflict.rdx397, %found.conflict400
  %bound0402 = icmp ult ptr %scevgep337, %scevgep344
  %bound1403 = icmp ult ptr %scevgep343, %scevgep338
  %found.conflict404 = and i1 %bound0402, %bound1403
  %conflict.rdx405 = or i1 %conflict.rdx401, %found.conflict404
  %bound0406 = icmp ult ptr %scevgep337, %scevgep346
  %bound1407 = icmp ult ptr %scevgep345, %scevgep338
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %conflict.rdx405, %found.conflict408
  %bound0410 = icmp ult ptr %scevgep337, %scevgep348
  %bound1411 = icmp ult ptr %scevgep347, %scevgep338
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  %bound0414 = icmp ult ptr %scevgep337, %scevgep349
  %bound1415 = icmp ult ptr %i.ya, %scevgep338
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx417 = or i1 %conflict.rdx413, %found.conflict416
  %bound0418 = icmp ult ptr %scevgep337, %scevgep351
  %bound1419 = icmp ult ptr %scevgep350, %scevgep338
  %found.conflict420 = and i1 %bound0418, %bound1419
  %conflict.rdx421 = or i1 %conflict.rdx417, %found.conflict420
  %bound0422 = icmp ult ptr %scevgep337, %scevgep353
  %bound1423 = icmp ult ptr %scevgep352, %scevgep338
  %found.conflict424 = and i1 %bound0422, %bound1423
  %conflict.rdx425 = or i1 %conflict.rdx421, %found.conflict424
  br i1 %conflict.rdx425, label %scalar.ph426.preheader, label %vector.body431

vector.body431:                                   ; preds = %vector.memcheck335, %vector.body431
  %index432 = phi i64 [ %index.next453, %vector.body431 ], [ 0, %vector.memcheck335 ] ; 6 uses
  %i.yv = or disjoint i64 %index432, 1            ; 11 uses
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.yv ; 2 uses
  %wide.load433 = load <2 x double>, ptr %i.yw, align 8, !tbaa !11, !alias.scope !245
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.yv
  %wide.load434 = load <2 x double>, ptr %i.yx, align 8, !tbaa !11, !alias.scope !248 ; 4 uses
  %i.yy = add nuw nsw i64 %index432, 2            ; 2 uses
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %i.yy
  %wide.load435 = load <2 x double>, ptr %i.yz, align 8, !tbaa !11, !alias.scope !248
  %i.za = fsub <2 x double> %wide.load434, %wide.load435
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.ye, i64 %index432 ; 2 uses
  %wide.load436 = load <2 x double>, ptr %i.zb, align 8, !tbaa !11, !alias.scope !245
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.yc, i64 %index432
  %wide.load437 = load <2 x double>, ptr %i.zc, align 8, !tbaa !11, !alias.scope !248
  %i.zd = fsub <2 x double> %wide.load434, %wide.load437
  %i.ze = fneg <2 x double> %i.zd
  %i.zf = fmul <2 x double> %wide.load436, %i.ze
  %i.zg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load433, <2 x double> %i.za, <2 x double> %i.zf)
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %i.yv ; 2 uses
  %wide.load438 = load <2 x double>, ptr %i.zh, align 8, !tbaa !11, !alias.scope !250
  %i.zi = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %i.yv
  %wide.load439 = load <2 x double>, ptr %i.zi, align 8, !tbaa !11, !alias.scope !252
  %i.zj = fsub <2 x double> %wide.load434, %wide.load439
  %i.zk = fneg <2 x double> %wide.load438
  %i.zl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zk, <2 x double> %i.zj, <2 x double> %i.zg)
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %i.yv ; 2 uses
  %wide.load440 = load <2 x double>, ptr %i.zm, align 8, !tbaa !11, !alias.scope !254
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %i.yv
  %wide.load441 = load <2 x double>, ptr %i.zn, align 8, !tbaa !11, !alias.scope !256
  %i.zo = fsub <2 x double> %wide.load434, %wide.load441
  %i.zp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load440, <2 x double> %i.zo, <2 x double> %i.zl)
  %i.zq = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %i.yv ; 2 uses
  %wide.load442 = load <2 x double>, ptr %i.zq, align 8, !tbaa !11, !alias.scope !258, !noalias !260
  %i.zr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zp, <2 x double> splat (double 4.100000e-03), <2 x double> %wide.load442)
  store <2 x double> %i.zr, ptr %i.zq, align 8, !tbaa !11, !alias.scope !258, !noalias !260
  %wide.load443 = load <2 x double>, ptr %i.yw, align 8, !tbaa !11, !alias.scope !245
  %i.zs = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.yv
  %wide.load444 = load <2 x double>, ptr %i.zs, align 8, !tbaa !11, !alias.scope !265 ; 4 uses
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.yy
  %wide.load445 = load <2 x double>, ptr %i.zt, align 8, !tbaa !11, !alias.scope !265
  %i.zu = fsub <2 x double> %wide.load444, %wide.load445
  %wide.load446 = load <2 x double>, ptr %i.zb, align 8, !tbaa !11, !alias.scope !245
  %i.zv = getelementptr inbounds [8 x i8], ptr %i.ya, i64 %index432
  %wide.load447 = load <2 x double>, ptr %i.zv, align 8, !tbaa !11, !alias.scope !265
  %i.zw = fsub <2 x double> %wide.load444, %wide.load447
  %i.zx = fneg <2 x double> %i.zw
  %i.zy = fmul <2 x double> %wide.load446, %i.zx
  %i.zz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load443, <2 x double> %i.zu, <2 x double> %i.zy)
  %wide.load448 = load <2 x double>, ptr %i.zh, align 8, !tbaa !11, !alias.scope !250
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.yv
  %wide.load449 = load <2 x double>, ptr %i.aaa, align 8, !tbaa !11, !alias.scope !266
  %i.aab = fsub <2 x double> %wide.load444, %wide.load449
  %i.aac = fneg <2 x double> %wide.load448
  %i.aad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aac, <2 x double> %i.aab, <2 x double> %i.zz)
  %wide.load450 = load <2 x double>, ptr %i.zm, align 8, !tbaa !11, !alias.scope !254
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.ys, i64 %i.yv
  %wide.load451 = load <2 x double>, ptr %i.aae, align 8, !tbaa !11, !alias.scope !267
  %i.aaf = fsub <2 x double> %wide.load444, %wide.load451
  %i.aag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load450, <2 x double> %i.aaf, <2 x double> %i.aad)
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.yv ; 2 uses
  %wide.load452 = load <2 x double>, ptr %i.aah, align 8, !tbaa !11, !alias.scope !268, !noalias !269
  %i.aai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aag, <2 x double> splat (double 4.100000e-03), <2 x double> %wide.load452)
  store <2 x double> %i.aai, ptr %i.aah, align 8, !tbaa !11, !alias.scope !268, !noalias !269
  %index.next453 = add nuw i64 %index432, 2       ; 2 uses
  %i.aaj = icmp eq i64 %index.next453, %n.vec430
  br i1 %i.aaj, label %middle.block454, label %vector.body431, !llvm.loop !270

middle.block454:                                  ; preds = %vector.body431
  br i1 %cmp.n455, label %"._Z6forallIZL18BM_HYDRO_2D_LAMBDARN9benchmark5StateEE3$_1Ev9simd_execiiT_.exit_crit_edge.us", label %scalar.ph426.preheader

scalar.ph426.preheader:                           ; preds = %vector.memcheck335, %.preheader137.us, %middle.block454
  %indvars.iv161.ph = phi i64 [ 1, %vector.memcheck335 ], [ 1, %.preheader137.us ], [ %i.cy, %middle.block454 ]
  br label %scalar.ph426

scalar.ph426:                                     ; preds = %scalar.ph426.preheader, %scalar.ph426
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %scalar.ph426 ], [ %indvars.iv161.ph, %scalar.ph426.preheader ] ; 13 uses
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %indvars.iv161 ; 2 uses
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !11
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv161
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !11 ; 4 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 4 uses
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.yc, i64 %indvars.iv.next162
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !11
  %i.aaq = fsub double %i.aan, %i.aap
  %i.aar = add nsw i64 %indvars.iv161, -1         ; 3 uses
  %i.aas = getelementptr inbounds [8 x i8], ptr %i.ye, i64 %i.aar ; 2 uses
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !11
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.yc, i64 %i.aar
  %i.aav = load double, ptr %i.aau, align 8, !tbaa !11
  %i.aaw = fsub double %i.aan, %i.aav
  %i.aax = fneg double %i.aaw
  %i.aay = fmul double %i.aat, %i.aax
  %i.aaz = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.aaq, double %i.aay)
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.yb, i64 %indvars.iv161 ; 2 uses
  %i.abb = load double, ptr %i.aba, align 8, !tbaa !11
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv161
  %i.abd = load double, ptr %i.abc, align 8, !tbaa !11
  %i.abe = fsub double %i.aan, %i.abd
  %i.abf = fneg double %i.abb
  %i.abg = tail call double @llvm.fmuladd.f64(double %i.abf, double %i.abe, double %i.aaz)
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.yj, i64 %indvars.iv161 ; 2 uses
  %i.abi = load double, ptr %i.abh, align 8, !tbaa !11
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.yl, i64 %indvars.iv161
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !11
  %i.abl = fsub double %i.aan, %i.abk
  %i.abm = tail call double @llvm.fmuladd.f64(double %i.abi, double %i.abl, double %i.abg)
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv161 ; 2 uses
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !11
  %i.abp = tail call double @llvm.fmuladd.f64(double %i.abm, double 4.100000e-03, double %i.abo)
  store double %i.abp, ptr %i.abn, align 8, !tbaa !11
  %i.abq = load double, ptr %i.aak, align 8, !tbaa !11
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv161
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !11 ; 4 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv.next162
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !11
  %i.abv = fsub double %i.abs, %i.abu
  %i.abw = load double, ptr %i.aas, align 8, !tbaa !11
  %i.abx = getelementptr inbounds [8 x i8], ptr %i.ya, i64 %i.aar
  %i.aby = load double, ptr %i.abx, align 8, !tbaa !11
  %i.abz = fsub double %i.abs, %i.aby
  %i.aca = fneg double %i.abz
  %i.acb = fmul double %i.abw, %i.aca
end_hunk_0
