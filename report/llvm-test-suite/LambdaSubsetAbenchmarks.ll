inline.NumInlined: 173
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateE:bb.a
  store <2 x double> %i.fx, ptr %i.fl, align 8, !tbaa !11, !alias.scope !85, !noalias !82
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fy = icmp eq i64 %index.next, %n.vec
  br i1 %i.fy, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.lr.ph293.preheader, label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit.preheader404"

"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit.preheader404": ; preds = %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit.preheader", %middle.block
  %indvars.iv311.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit.preheader" ]
  br label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit"

"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit": ; preds = %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit.preheader404", %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit"
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit" ], [ %indvars.iv311.ph, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit.preheader404" ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv311
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !11
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv311 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !11
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.ga, double 5.000000e-01, double %i.gc) ; 2 uses
  %i.ge = tail call double @llvm.fabs.f64(double %i.gd)
  %i.gf = fcmp olt double %i.ge, %i.ao
  %i.gg = select i1 %i.gf, double 0.000000e+00, double %i.gd ; 2 uses
  %i.gh = fcmp olt double %i.gg, %i.aq
  %storemerge285 = select i1 %i.gh, double %i.aq, double %i.gg
  store double %storemerge285, ptr %i.gb, align 8, !tbaa !11
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %.lr.ph293.preheader, label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit", !llvm.loop !88

.lr.ph293.preheader:                              ; preds = %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_3clEi.exit", %middle.block
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.preheader, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit"
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit" ], [ 0, %.lr.ph293.preheader ] ; 16 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv316
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11 ; 2 uses
  %i.gk = fcmp ogt double %i.gj, 0.000000e+00
  br i1 %i.gk, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %.lr.ph293
  %.phi.trans.insert29.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv316
  %.pre30.i = load double, ptr %.phi.trans.insert29.i, align 8, !tbaa !11
  %.phi.trans.insert34.i = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv316
  %.pre35.i = load double, ptr %.phi.trans.insert34.i, align 8, !tbaa !11
  br label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit"

bb.f:                                             ; preds = %.lr.ph293
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv316
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !11
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv316
  %i.go = load double, ptr %i.gn, align 8, !tbaa !11 ; 2 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv316
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !11 ; 2 uses
  %i.gr = fmul double %i.gq, %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv316
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !11
  %i.gu = fmul double %i.gr, %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv316
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !11 ; 2 uses
  %i.gx = fmul double %i.gu, %i.gw
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.go, double %i.gx)
  %i.gz = fdiv double %i.gy, %i.am                ; 2 uses
  %i.ha = fcmp ugt double %i.gz, f0x3842E7922A37D1A0
  br i1 %i.ha, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.hb = tail call double @sqrt(double noundef %i.gz) #9, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i39 = phi double [ %i.hb, %bb.g ], [ f0x3C18987CEE7F439D, %bb.f ]
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv316
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !11
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv316
  %i.hf = load double, ptr %i.he, align 8, !tbaa !11
  %i.hg = tail call double @llvm.fmuladd.f64(double %.0.i39, double %i.hd, double %i.hf)
  br label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit"

"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit": ; preds = %bb.h, %._crit_edge.i
  %i.hh = phi double [ %i.gw, %bb.h ], [ %.pre35.i, %._crit_edge.i ]
  %i.hi = phi double [ %i.go, %bb.h ], [ %.pre30.i, %._crit_edge.i ]
  %.025.i = phi double [ %i.hg, %bb.h ], [ 0.000000e+00, %._crit_edge.i ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv316
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv316
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !11
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv316
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !11
  %i.ho = fadd double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv316
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !11
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv316
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !11
  %i.ht = fadd double %i.hq, %i.hs
  %i.hu = fmul double %i.ht, -8.000000e+00
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.ho, double 7.000000e+00, double %i.hu)
  %i.hw = fadd double %i.hh, %.025.i
  %i.hx = fadd double %i.hw, %i.hv
  %i.hy = fmul double %i.gj, %i.hx
  %i.hz = fdiv double %i.hy, 6.000000e+00
  %i.ia = fsub double %i.hi, %i.hz                ; 2 uses
  %i.ib = tail call double @llvm.fabs.f64(double %i.ia)
  %i.ic = fcmp olt double %i.ib, %i.ao
  %i.id = select i1 %i.ic, double 0.000000e+00, double %i.ia ; 2 uses
  %i.ie = fcmp olt double %i.id, %i.aq
  %storemerge = select i1 %i.ie, double %i.aq, double %i.id
  store double %storemerge, ptr %i.hj, align 8, !tbaa !11
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count319
  br i1 %exitcond320.not, label %.lr.ph295, label %.lr.ph293, !llvm.loop !89

.lr.ph295:                                        ; preds = %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit", %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit"
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit" ], [ 0, %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_4clEi.exit" ] ; 10 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv321
  %i.ig = load double, ptr %i.if, align 8, !tbaa !11
  %i.ih = fcmp ugt double %i.ig, 0.000000e+00
  br i1 %i.ih, label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit", label %bb.i

bb.i:                                             ; preds = %.lr.ph295
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv321
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !11
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv321
  %i.il = load double, ptr %i.ik, align 8, !tbaa !11
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv321
  %i.in = load double, ptr %i.im, align 8, !tbaa !11 ; 2 uses
  %i.io = fmul double %i.in, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv321
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !11
  %i.ir = fmul double %i.io, %i.iq
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv321
  %i.it = load double, ptr %i.is, align 8, !tbaa !11
  %i.iu = fmul double %i.ir, %i.it
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.il, double %i.iu)
  %i.iw = fdiv double %i.iv, %i.am                ; 2 uses
  %i.ix = fcmp ugt double %i.iw, f0x3842E7922A37D1A0
  br i1 %i.ix, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.iy = tail call double @sqrt(double noundef %i.iw) #9, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i40 = phi double [ %i.iy, %bb.j ], [ f0x3C18987CEE7F439D, %bb.i ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv321
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !11
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv321
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !11
  %i.jd = tail call double @llvm.fmuladd.f64(double %.0.i40, double %i.ja, double %i.jc) ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv321 ; 2 uses
  store double %i.jd, ptr %i.je, align 8, !tbaa !11
  %i.jf = tail call double @llvm.fabs.f64(double %i.jd)
  %i.jg = fcmp olt double %i.jf, %i.as
  br i1 %i.jg, label %bb.l, label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit"

bb.l:                                             ; preds = %bb.k
  store double 0.000000e+00, ptr %i.je, align 8, !tbaa !11
  br label %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit"

"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit": ; preds = %.lr.ph295, %bb.k, %bb.l
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %"_Z6forallIZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEE3$_5Ev9simd_execiiT_.exit", label %.lr.ph295, !llvm.loop !90

"_Z6forallIZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEE3$_5Ev9simd_execiiT_.exit": ; preds = %"_ZZL21BM_ENERGY_CALC_LAMBDARN9benchmark5StateEENK3$_5clEi.exit", %bb.b
  %i.jh = add nsw i64 %.sroa.080.0297, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.jh, 0
  br i1 %.not.i.not, label %._crit_edge, label %bb.b, !prof !62
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ADomain, align 8            ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 4 uses
  tail call void @_Z8loopInitj(i32 noundef 5)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 32, !tbaa !41
  %i.l = load i64, ptr %i.k, align 8, !tbaa !42
  %i.m = trunc i64 %i.l to i32
  call void @_ZN7ADomainC2Eii(ptr noundef nonnull align 8 dereferenceable(84) %1, i32 noundef %i.m, i32 noundef 3)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !91
  %i.q = sext i32 %i.p to i64                     ; 7 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !94
  %i.v = sext i32 %i.u to i64                     ; 13 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.v
  %i.y = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.q ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.q ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.v ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.v
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.v ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.v ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.q ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.q ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.v ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.v ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.v ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.as = phi i64 [ %i.ar, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %bb.e

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.c
  %.not.i.not137 = icmp eq i64 %i.as, 0
  br i1 %.not.i.not137, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.lr.ph139, !prof !95

.lr.ph139:                                        ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i32, ptr %i.at, align 8, !tbaa !96 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !97 ; 5 uses
  %.not134135 = icmp sgt i32 %i.au, %i.aw
  br i1 %.not134135, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph139
  %i.ax = sext i32 %i.au to i64                   ; 4 uses
  %i.ay = add i32 %i.aw, 1
  %i.az = shl nsw i64 %i.ax, 3                    ; 9 uses
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.az ; 2 uses
  %i.ba = sub i32 %i.aw, %i.au
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3                ; 5 uses
  %i.bd = getelementptr i8, ptr %i.i, i64 %i.az
  %i.be = getelementptr i8, ptr %i.bd, i64 %i.bc
  %scevgep146 = getelementptr i8, ptr %i.be, i64 8 ; 2 uses
  %i.bf = shl nsw i64 %i.v, 3                     ; 2 uses
  %i.bg = shl nsw i64 %i.q, 3                     ; 2 uses
  %i.bh = add nsw i64 %i.bf, %i.bg
  %i.bi = add nsw i64 %i.bh, %i.az                ; 4 uses
  %scevgep147 = getelementptr i8, ptr %i.c, i64 %i.bi
  %i.bj = add nsw i64 %i.bi, %i.bc
  %i.bk = add nsw i64 %i.bj, 16                   ; 3 uses
  %scevgep148 = getelementptr i8, ptr %i.c, i64 %i.bk
  %i.bl = add nsw i64 %i.bf, %i.az                ; 4 uses
  %scevgep149 = getelementptr i8, ptr %i.c, i64 %i.bl
  %i.bm = add nsw i64 %i.bl, %i.bc
  %i.bn = add nsw i64 %i.bm, 16                   ; 3 uses
  %scevgep150 = getelementptr i8, ptr %i.c, i64 %i.bn
  %scevgep151 = getelementptr i8, ptr %i.c, i64 %i.az
  %i.bo = add nsw i64 %i.az, %i.bc
  %i.bp = add nsw i64 %i.bo, 16                   ; 3 uses
  %scevgep152 = getelementptr i8, ptr %i.c, i64 %i.bp
  %i.bq = add nsw i64 %i.bg, %i.az                ; 4 uses
  %scevgep153 = getelementptr i8, ptr %i.c, i64 %i.bq
  %i.br = add nsw i64 %i.bq, %i.bc
  %i.bs = add nsw i64 %i.br, 16                   ; 3 uses
  %scevgep154 = getelementptr i8, ptr %i.c, i64 %i.bs
  %scevgep155 = getelementptr i8, ptr %i.e, i64 %i.bi
  %scevgep156 = getelementptr i8, ptr %i.e, i64 %i.bk
  %scevgep157 = getelementptr i8, ptr %i.e, i64 %i.bl
  %scevgep158 = getelementptr i8, ptr %i.e, i64 %i.bn
  %scevgep159 = getelementptr i8, ptr %i.e, i64 %i.az
  %scevgep160 = getelementptr i8, ptr %i.e, i64 %i.bp
  %scevgep161 = getelementptr i8, ptr %i.e, i64 %i.bq
  %scevgep162 = getelementptr i8, ptr %i.e, i64 %i.bs
  %scevgep163 = getelementptr i8, ptr %i.g, i64 %i.bi
  %scevgep164 = getelementptr i8, ptr %i.g, i64 %i.bk
  %scevgep165 = getelementptr i8, ptr %i.g, i64 %i.bl
  %scevgep166 = getelementptr i8, ptr %i.g, i64 %i.bn
  %scevgep167 = getelementptr i8, ptr %i.g, i64 %i.az
  %scevgep168 = getelementptr i8, ptr %i.g, i64 %i.bp
  %scevgep169 = getelementptr i8, ptr %i.g, i64 %i.bq
  %scevgep170 = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bt = insertelement <8 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.bu = insertelement <8 x ptr> %i.bt, ptr %scevgep149, i64 1
  %i.bv = insertelement <8 x ptr> %i.bu, ptr %scevgep153, i64 3
  %i.bw = insertelement <8 x ptr> %i.bv, ptr %scevgep157, i64 5
  %i.bx = insertelement <8 x ptr> %i.bw, ptr %scevgep161, i64 7
  %i.by = shufflevector <8 x ptr> %i.bx, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.bz = insertelement <8 x ptr> poison, ptr %scevgep148, i64 0
  %i.ca = insertelement <8 x ptr> %i.bz, ptr %scevgep146, i64 1 ; 2 uses
  %i.cb = insertelement <8 x ptr> %i.ca, ptr %scevgep152, i64 2
  %i.cc = insertelement <8 x ptr> %i.cb, ptr %scevgep156, i64 4
  %i.cd = insertelement <8 x ptr> %i.cc, ptr %scevgep160, i64 6
  %i.ce = shufflevector <8 x ptr> %i.cd, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.cf = shufflevector <8 x ptr> %i.bt, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.cg = insertelement <8 x ptr> %i.cf, ptr %scevgep147, i64 0
  %i.ch = insertelement <8 x ptr> %i.cg, ptr %scevgep151, i64 2
  %i.ci = insertelement <8 x ptr> %i.ch, ptr %scevgep155, i64 4
  %i.cj = insertelement <8 x ptr> %i.ci, ptr %scevgep159, i64 6
  %i.ck = shufflevector <8 x ptr> %i.ca, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.cl = insertelement <8 x ptr> %i.ck, ptr %scevgep150, i64 1
  %i.cm = insertelement <8 x ptr> %i.cl, ptr %scevgep154, i64 3
  %i.cn = insertelement <8 x ptr> %i.cm, ptr %scevgep158, i64 5
  %i.co = insertelement <8 x ptr> %i.cn, ptr %scevgep162, i64 7
  %i.cp = insertelement <4 x ptr> poison, ptr %scevgep, i64 0 ; 2 uses
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %scevgep165, i64 1
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %scevgep169, i64 3
  %i.cs = shufflevector <4 x ptr> %i.cr, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.ct = insertelement <4 x ptr> poison, ptr %scevgep164, i64 0
  %i.cu = insertelement <4 x ptr> %i.ct, ptr %scevgep146, i64 1 ; 2 uses
  %i.cv = insertelement <4 x ptr> %i.cu, ptr %scevgep168, i64 2
  %i.cw = shufflevector <4 x ptr> %i.cv, <4 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.cx = shufflevector <4 x ptr> %i.cp, <4 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %scevgep163, i64 0
  %i.cz = insertelement <4 x ptr> %i.cy, ptr %scevgep167, i64 2
  %i.da = shufflevector <4 x ptr> %i.cu, <4 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 1, i32 poison>
  %i.db = insertelement <4 x ptr> %i.da, ptr %scevgep166, i64 1
  %i.dc = insertelement <4 x ptr> %i.db, ptr %scevgep170, i64 3
  %i.dd = sub i32 %i.aw, %i.au
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check = icmp eq i32 %i.aw, %i.au
  %i.dg = icmp ult <8 x ptr> %i.by, %i.ce
  %i.dh = icmp ult <8 x ptr> %i.cj, %i.co
  %i.di = and <8 x i1> %i.dh, %i.dg               ; 2 uses
  %i.dj = icmp ult <4 x ptr> %i.cs, %i.cw
  %i.dk = icmp ult <4 x ptr> %i.cz, %i.dc
  %i.dl = and <4 x i1> %i.dk, %i.dj
  %i.dm = shufflevector <4 x i1> %i.dl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = or <8 x i1> %i.di, %i.dm
  %i.do = shufflevector <8 x i1> %i.dn, <8 x i1> %i.di, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dp = bitcast <8 x i1> %i.do to i8
  %.not244 = icmp eq i8 %i.dp, 0
  %n.vec = and i64 %i.df, 8589934590              ; 3 uses
  %i.dq = add nsw i64 %n.vec, %i.ax
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br label %.lr.ph

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %.lr.ph139, %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZNK9benchmark5State13StateIteratorneERKS1_.exit unwind label %bb.e

_ZNK9benchmark5State13StateIteratorneERKS1_.exit: ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !98 ; 2 uses
  %.not.i22 = icmp eq ptr %i.ds, null
  br i1 %.not.i22, label %_ZN7ADomainD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #10
  br label %_ZN7ADomainD2Ev.exit

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZNK9benchmark5State13StateIteratorneERKS1_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void

bb.e:                                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.c
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !98 ; 2 uses
  %.not.i23 = icmp eq ptr %i.dv, null
  br i1 %.not.i23, label %_ZN7ADomainD2Ev.exit24, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.027.0138 = phi i64 [ %i.jz, %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.as, %.lr.ph.preheader ]
  %.not244.not = xor i1 %.not244, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not244.not
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.dw = add i64 %index, %i.ax                   ; 25 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dw
  %wide.load = load <2 x double>, ptr %i.dx, align 8, !tbaa !11, !alias.scope !99 ; 3 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dw
  %wide.load214 = load <2 x double>, ptr %i.dy, align 8, !tbaa !11, !alias.scope !102
  %i.dz = fsub <2 x double> %wide.load, %wide.load214 ; 3 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.dw
  %wide.load215 = load <2 x double>, ptr %i.ea, align 8, !tbaa !11, !alias.scope !104
  %i.eb = fsub <2 x double> %wide.load, %wide.load215 ; 3 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.dw
  %wide.load216 = load <2 x double>, ptr %i.ec, align 8, !tbaa !11, !alias.scope !106
  %i.ed = fsub <2 x double> %wide.load, %wide.load216 ; 3 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.dw
  %wide.load217 = load <2 x double>, ptr %i.ee, align 8, !tbaa !11, !alias.scope !104
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dw
  %wide.load218 = load <2 x double>, ptr %i.ef, align 8, !tbaa !11, !alias.scope !102 ; 3 uses
  %i.eg = fsub <2 x double> %wide.load217, %wide.load218 ; 3 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.dw
  %wide.load219 = load <2 x double>, ptr %i.eh, align 8, !tbaa !11, !alias.scope !106
  %i.ei = fsub <2 x double> %wide.load219, %wide.load218 ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.dw
  %wide.load220 = load <2 x double>, ptr %i.ej, align 8, !tbaa !11, !alias.scope !99
  %i.ek = fsub <2 x double> %wide.load220, %wide.load218 ; 3 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.dw
  %wide.load221 = load <2 x double>, ptr %i.el, align 8, !tbaa !11, !alias.scope !108 ; 3 uses
  %i.em = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.dw
  %wide.load222 = load <2 x double>, ptr %i.em, align 8, !tbaa !11, !alias.scope !110
  %i.en = fsub <2 x double> %wide.load221, %wide.load222 ; 3 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.dw
  %wide.load223 = load <2 x double>, ptr %i.eo, align 8, !tbaa !11, !alias.scope !112
  %i.ep = fsub <2 x double> %wide.load221, %wide.load223 ; 3 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.dw
  %wide.load224 = load <2 x double>, ptr %i.eq, align 8, !tbaa !11, !alias.scope !114
  %i.er = fsub <2 x double> %wide.load221, %wide.load224 ; 3 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.dw
  %wide.load225 = load <2 x double>, ptr %i.es, align 8, !tbaa !11, !alias.scope !112
  %i.et = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dw
  %wide.load226 = load <2 x double>, ptr %i.et, align 8, !tbaa !11, !alias.scope !110 ; 3 uses
  %i.eu = fsub <2 x double> %wide.load225, %wide.load226 ; 3 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.dw
  %wide.load227 = load <2 x double>, ptr %i.ev, align 8, !tbaa !11, !alias.scope !114
  %i.ew = fsub <2 x double> %wide.load227, %wide.load226 ; 3 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.dw
  %wide.load228 = load <2 x double>, ptr %i.ex, align 8, !tbaa !11, !alias.scope !108
  %i.ey = fsub <2 x double> %wide.load228, %wide.load226 ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.dw
  %wide.load229 = load <2 x double>, ptr %i.ez, align 8, !tbaa !11, !alias.scope !116 ; 3 uses
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.dw
  %wide.load230 = load <2 x double>, ptr %i.fa, align 8, !tbaa !11, !alias.scope !118
  %i.fb = fsub <2 x double> %wide.load229, %wide.load230 ; 3 uses
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.dw
  %wide.load231 = load <2 x double>, ptr %i.fc, align 8, !tbaa !11, !alias.scope !120
  %i.fd = fsub <2 x double> %wide.load229, %wide.load231 ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.dw
  %wide.load232 = load <2 x double>, ptr %i.fe, align 8, !tbaa !11, !alias.scope !122
  %i.ff = fsub <2 x double> %wide.load229, %wide.load232 ; 3 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.dw
  %wide.load233 = load <2 x double>, ptr %i.fg, align 8, !tbaa !11, !alias.scope !120
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.dw
  %wide.load234 = load <2 x double>, ptr %i.fh, align 8, !tbaa !11, !alias.scope !118 ; 3 uses
  %i.fi = fsub <2 x double> %wide.load233, %wide.load234 ; 3 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.dw
  %wide.load235 = load <2 x double>, ptr %i.fj, align 8, !tbaa !11, !alias.scope !122
  %i.fk = fsub <2 x double> %wide.load235, %wide.load234 ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.dw
  %wide.load236 = load <2 x double>, ptr %i.fl, align 8, !tbaa !11, !alias.scope !116
  %i.fm = fsub <2 x double> %wide.load236, %wide.load234 ; 3 uses
  %i.fn = fadd <2 x double> %i.dz, %i.ek
  %i.fo = fadd <2 x double> %i.en, %i.ey
  %i.fp = fadd <2 x double> %i.fb, %i.fm
  %i.fq = fneg <2 x double> %i.eu
  %i.fr = fmul <2 x double> %i.fd, %i.fq
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.fi, <2 x double> %i.fr)
  %i.ft = fneg <2 x double> %i.fi
  %i.fu = fmul <2 x double> %i.eb, %i.ft
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> %i.eg, <2 x double> %i.fu)
  %i.fw = fneg <2 x double> %i.eg
  %i.fx = fmul <2 x double> %i.ep, %i.fw
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eu, <2 x double> %i.fx)
  %i.fz = fmul <2 x double> %i.fo, %i.fv
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fs, <2 x double> %i.fz)
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fy, <2 x double> %i.ga)
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.dw
  %i.gd = fadd <2 x double> %i.eb, %i.ei
  %i.ge = fadd <2 x double> %i.ep, %i.ew
  %i.gf = fadd <2 x double> %i.fd, %i.fk
  %i.gg = fneg <2 x double> %i.ey
  %i.gh = fmul <2 x double> %i.ff, %i.gg
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.fm, <2 x double> %i.gh)
  %i.gj = fneg <2 x double> %i.fm
  %i.gk = fmul <2 x double> %i.ed, %i.gj
  %i.gl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.ek, <2 x double> %i.gk)
  %i.gm = fneg <2 x double> %i.ek
  %i.gn = fmul <2 x double> %i.er, %i.gm
  %i.go = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ey, <2 x double> %i.gn)
  %i.gp = fmul <2 x double> %i.ge, %i.gl
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %i.gi, <2 x double> %i.gp)
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.go, <2 x double> %i.gq)
  %i.gs = fadd <2 x double> %i.gb, %i.gr
  %i.gt = fadd <2 x double> %i.ed, %i.eg
  %i.gu = fadd <2 x double> %i.er, %i.eu
  %i.gv = fadd <2 x double> %i.ff, %i.fi
  %i.gw = fneg <2 x double> %i.ew
  %i.gx = fmul <2 x double> %i.fb, %i.gw
  %i.gy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.fk, <2 x double> %i.gx)
  %i.gz = fneg <2 x double> %i.fk
  %i.ha = fmul <2 x double> %i.dz, %i.gz
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.ei, <2 x double> %i.ha)
  %i.hc = fneg <2 x double> %i.ei
  %i.hd = fmul <2 x double> %i.en, %i.hc
  %i.he = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.ew, <2 x double> %i.hd)
  %i.hf = fmul <2 x double> %i.gu, %i.hb
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gy, <2 x double> %i.hf)
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gv, <2 x double> %i.he, <2 x double> %i.hg)
  %i.hi = fadd <2 x double> %i.hh, %i.gs
  %i.hj = fmul <2 x double> %i.hi, splat (double f0x3FB5555555555555)
  store <2 x double> %i.hj, ptr %i.gc, align 8, !tbaa !11, !alias.scope !124, !noalias !126
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dq, %middle.block ], [ %i.ax, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 19 uses
  %2 = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv
  %3 = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv
  %4 = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv
  %5 = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv
  %6 = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.hy = load <2 x double>, ptr %3, align 8, !tbaa !11 ; 2 uses
  %i.hz = load <2 x double>, ptr %4, align 8, !tbaa !11 ; 2 uses
  %7 = load double, ptr %2, align 8, !tbaa !11
  %8 = load double, ptr %6, align 8, !tbaa !11
  %9 = insertelement <2 x double> poison, double %7, i64 0 ; 2 uses
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = shufflevector <2 x double> %i.hy, <2 x double> %i.hz, <2 x i32> <i32 0, i32 2>
  %i.ib = fsub <2 x double> %10, %i.ia            ; 4 uses
  %i.ic = load <2 x double>, ptr %5, align 8, !tbaa !11 ; 2 uses
  %11 = shufflevector <2 x double> %i.hz, <2 x double> %9, <2 x i32> <i32 1, i32 2>
  %i.id = fsub <2 x double> %11, %i.ic            ; 4 uses
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %12 = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x double> %12, double %8, i64 1
  %i.if = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fsub <2 x double> %13, %i.if            ; 4 uses
  %14 = load <2 x double>, ptr %i.hm, align 8, !tbaa !11 ; 2 uses
  %15 = load <2 x double>, ptr %i.hn, align 8, !tbaa !11 ; 2 uses
  %16 = load double, ptr %i.hl, align 8, !tbaa !11
  %17 = load double, ptr %i.hp, align 8, !tbaa !11
  %18 = insertelement <2 x double> poison, double %16, i64 0 ; 2 uses
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = shufflevector <2 x double> %14, <2 x double> %15, <2 x i32> <i32 0, i32 2>
  %i.ii = fsub <2 x double> %19, %i.ih            ; 4 uses
  %i.ij = load <2 x double>, ptr %i.ho, align 8, !tbaa !11 ; 2 uses
  %20 = shufflevector <2 x double> %15, <2 x double> %18, <2 x i32> <i32 1, i32 2>
  %i.ik = fsub <2 x double> %20, %i.ij            ; 5 uses
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %21 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %22 = insertelement <2 x double> %21, double %17, i64 1
  %23 = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = fsub <2 x double> %22, %23                ; 4 uses
  %25 = load <2 x double>, ptr %i.hr, align 8, !tbaa !11
  %26 = load double, ptr %i.ht, align 8, !tbaa !11
  %27 = load double, ptr %i.hv, align 8, !tbaa !11
  %28 = load double, ptr %i.hs, align 8, !tbaa !11
  %29 = load double, ptr %i.hq, align 8, !tbaa !11
  %30 = load <2 x double>, ptr %i.hw, align 8, !tbaa !11 ; 2 uses
  %31 = fsub double %29, %28                      ; 2 uses
  %i.im = load <2 x double>, ptr %i.hu, align 8, !tbaa !11 ; 3 uses
  %32 = insertelement <2 x double> %30, double %27, i64 0
  %i.in = fsub <2 x double> %32, %i.im            ; 3 uses
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ip = shufflevector <2 x double> %i.im, <2 x double> %25, <2 x i32> <i32 0, i32 2>
  %i.iq = fsub <2 x double> %30, %i.ip            ; 2 uses
  %33 = extractelement <2 x double> %i.im, i64 0
  %34 = fsub double %26, %33                      ; 2 uses
  %35 = shufflevector <2 x double> %i.ig, <2 x double> %i.ib, <2 x i32> <i32 1, i32 2>
  %i.ir = fadd <2 x double> %35, %i.ie
  %36 = shufflevector <2 x double> %24, <2 x double> %i.ii, <2 x i32> <i32 1, i32 2>
  %i.is = fadd <2 x double> %36, %i.il
  %i.it = fadd <2 x double> %i.iq, %i.io
  %i.iu = fneg <2 x double> %24
  %37 = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %38 = insertelement <2 x double> %37, double %31, i64 1 ; 2 uses
  %i.iv = fmul <2 x double> %38, %i.iu
  %39 = insertelement <2 x double> %37, double %34, i64 0 ; 2 uses
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %39, <2 x double> %i.iv)
  %i.ix = fneg <2 x double> %39
  %i.iy = fmul <2 x double> %i.ib, %i.ix
  %i.iz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %38, <2 x double> %i.ig, <2 x double> %i.iy)
  %i.ja = fneg <2 x double> %i.ig
  %i.jb = fmul <2 x double> %i.ii, %i.ja
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %24, <2 x double> %i.jb)
  %i.jd = fmul <2 x double> %i.is, %i.iz
  %i.je = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.iw, <2 x double> %i.jd)
  %i.jf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.jc, <2 x double> %i.je) ; 2 uses
  %shift = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.jf, %shift
  %i.jg = extractelement <2 x double> %foldExtExtBinop, i64 0
  %shift238.a = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop239.a = fadd <2 x double> %shift238.a, %i.ig
  %shift241 = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop242 = fadd <2 x double> %shift241, %24
  %40 = fadd double %31, %34
  %i.jh = shufflevector <2 x double> %i.in, <2 x double> %i.ik, <2 x i32> <i32 0, i32 2>
  %i.ji = fneg <2 x double> %i.jh
  %i.jj = shufflevector <2 x double> %i.id, <2 x double> %i.in, <2 x i32> <i32 1, i32 3>
  %i.jk = fmul <2 x double> %i.jj, %i.ji
  %i.jl = shufflevector <2 x double> %i.id, <2 x double> %i.ik, <2 x i32> <i32 0, i32 3>
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.jl, <2 x double> %i.jk) ; 2 uses
  %i.jn = shufflevector <2 x double> %i.ik, <2 x double> %i.jm, <2 x i32> <i32 1, i32 2>
  %i.jo = fneg <2 x double> %i.ie
  %i.jp = shufflevector <2 x double> %i.jo, <2 x double> %foldExtExtBinop242, <2 x i32> <i32 1, i32 2>
  %i.jq = fmul <2 x double> %i.jn, %i.jp
  %i.jr = shufflevector <2 x double> %i.id, <2 x double> %foldExtExtBinop239.a, <2 x i32> <i32 1, i32 2>
  %i.js = shufflevector <2 x double> %i.ik, <2 x double> %i.jm, <2 x i32> <i32 0, i32 3>
  %i.jt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.js, <2 x double> %i.jq) ; 2 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 0
  %i.jv = extractelement <2 x double> %i.jt, i64 1
  %i.jw = call double @llvm.fmuladd.f64(double %40, double %i.ju, double %i.jv)
  %i.jx = fadd double %i.jw, %i.jg
  %i.jy = fmul double %i.jx, f0x3FB5555555555555
  store double %i.jy, ptr %i.hx, align 8, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ay, %lftr.wideiv
  br i1 %exitcond.not, label %"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", label %scalar.ph, !llvm.loop !128

"._Z6forallI9simd_execZL20BM_VOL3D_CALC_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge": ; preds = %scalar.ph, %middle.block
  %i.jz = add nsw i64 %.sroa.027.0138, -1         ; 2 uses
  %.not.i.not = icmp eq i64 %i.jz, 0
  br i1 %.not.i.not, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, label %.lr.ph, !prof !62

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.dv) #10
  br label %_ZN7ADomainD2Ev.exit24

_ZN7ADomainD2Ev.exit24:                           ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  resume { ptr, i32 } %i.dt
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(1616) ptr @_Z11getLoopDatav() ; 5 uses
  tail call void @_Z8loopInitj(i32 noundef 6)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !41
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  %i.o = trunc i64 %i.n to i32
  switch i32 %i.o, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.q = fmul double %i.p, 1.560000e+02
  %i.r = fptosi double %i.q to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.t = fmul double %i.s, 6.400000e+01
  %i.u = fptosi double %i.t to i32
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.v = load double, ptr @_ZN7ADomain18loop_length_factorE, align 8, !tbaa !11
  %i.w = fmul double %i.v, 8.000000e+00
  %i.x = fptosi double %i.w to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0.i24 = phi i32 [ undef, %bb.a ], [ %i.r, %bb.b ], [ %i.x, %bb.d ], [ %i.u, %bb.c ] ; 6 uses
  %i.y = add nsw i32 %.0.i24, 3                   ; 5 uses
  %i.z = mul nsw i32 %i.y, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2                ; 2 uses
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #11 ; 6 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %_ZN7ADomainC2Eii.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 -1, i64 %i.ab, i1 false), !tbaa !4
  %i.ad = icmp sgt i32 %.0.i24, 1
  br i1 %i.ad, label %.lr.ph65.i.preheader, label %_ZN7ADomainC2Eii.exit

.lr.ph65.i.preheader:                             ; preds = %._crit_edge.i
  %i.ae = add nsw i32 %.0.i24, -1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %min.iters.check = icmp ult i32 %.0.i24, 9
  %n.vec = and i64 %i.af, 4294967288              ; 4 uses
  %i.ag = trunc nuw i64 %n.vec to i32
  %i.ah = or disjoint i32 %i.ag, 2
  %cmp.n = icmp eq i64 %n.vec, %i.af
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader, %._crit_edge66.i
  %.lcssa6872.i = phi i64 [ %indvars.iv.next79.i.lcssa, %._crit_edge66.i ], [ 0, %.lr.ph65.i.preheader ] ; 3 uses
  %.04169.i = phi i32 [ %i.ap, %._crit_edge66.i ], [ 2, %.lr.ph65.i.preheader ] ; 3 uses
  %i.ai = mul nuw nsw i32 %.04169.i, %i.y         ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i
  %i.aj = add i64 %.lcssa6872.i, %n.vec           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw nsw <4 x i32> splat (i32 4), %broadcast.splat
  %i.ak = getelementptr [4 x i8], ptr %i.ac, i64 %.lcssa6872.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.al = add nuw nsw <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add nuw nsw <4 x i32> %vec.ind, %invariant.op
  %i.am = getelementptr [4 x i8], ptr %i.ak, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <4 x i32> %i.al, ptr %i.am, align 4, !tbaa !4
  store <4 x i32> %.reass, ptr %i.an, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge66.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph65.i, %middle.block
  %indvars.iv78.i.ph = phi i64 [ %.lcssa6872.i, %.lr.ph65.i ], [ %i.aj, %middle.block ]
  %.04263.i.ph = phi i32 [ 2, %.lr.ph65.i ], [ %i.ah, %middle.block ]
  br label %scalar.ph

._crit_edge66.i:                                  ; preds = %scalar.ph, %middle.block
  %indvars.iv.next79.i.lcssa = phi i64 [ %i.aj, %middle.block ], [ %indvars.iv.next79.i, %scalar.ph ] ; 2 uses
  %i.ap = add nuw nsw i32 %.04169.i, 1
  %exitcond82.not.i = icmp eq i32 %.04169.i, %.0.i24
  br i1 %exitcond82.not.i, label %.loopexit.sink.split.i, label %.lr.ph65.i, !llvm.loop !130

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i, %scalar.ph ], [ %indvars.iv78.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.04263.i = phi i32 [ %i.as, %scalar.ph ], [ %.04263.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aq = add nuw nsw i32 %.04263.i, %i.ai
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv78.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %indvars.iv.next79.i = add nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %i.as = add nuw nsw i32 %.04263.i, 1
  %exitcond81.not.i = icmp eq i32 %.04263.i, %.0.i24
  br i1 %exitcond81.not.i, label %._crit_edge66.i, label %scalar.ph, !llvm.loop !131

.loopexit.sink.split.i:                           ; preds = %._crit_edge66.i
  %i.at = trunc nsw i64 %indvars.iv.next79.i.lcssa to i32
  br label %_ZN7ADomainC2Eii.exit

_ZN7ADomainC2Eii.exit:                            ; preds = %bb.e, %._crit_edge.i, %.loopexit.sink.split.i
  %.sroa.29.0 = phi i32 [ %i.at, %.loopexit.sink.split.i ], [ 0, %._crit_edge.i ], [ 0, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.av = sext i32 %i.y to i64                    ; 6 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.av
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.av
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.av
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !13
  %.not111 = icmp eq i32 %i.be, 0
  br i1 %.not111, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7ADomainC2Eii.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i64, ptr %i.bf, align 16, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %_ZN7ADomainC2Eii.exit, %bb.f
  %i.bh = phi i64 [ %i.bg, %bb.f ], [ 0, %_ZN7ADomainC2Eii.exit ] ; 2 uses
  invoke void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN9benchmark5State3endEv.exit.preheader unwind label %_ZN7ADomainD2Ev.exit27

_ZN9benchmark5State3endEv.exit.preheader:         ; preds = %bb.g
  %.not.i.not113 = icmp ne i64 %i.bh, 0
  %i.bi = icmp sgt i32 %.sroa.29.0, 0
  %or.cond = select i1 %.not.i.not113, i1 %i.bi, i1 false, !prof !132
  br i1 %or.cond, label %.preheader.preheader, label %_ZN9benchmark5State3endEv.exit._crit_edge.split, !prof !132

.preheader.preheader:                             ; preds = %_ZN9benchmark5State3endEv.exit.preheader
  %wide.trip.count = zext nneg i32 %.sroa.29.0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge"
  %.sroa.030.0114 = phi i64 [ %i.ep, %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge" ], [ %i.bh, %.preheader.preheader ]
  br label %bb.h

_ZN9benchmark5State3endEv.exit._crit_edge.split:  ; preds = %"._Z6forallI9simd_execZL24BM_DEL_DOT_VEC_2D_LAMBDARN9benchmark5StateEE3$_0EviiT0_.exit_crit_edge", %_ZN9benchmark5State3endEv.exit.preheader
  invoke void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
          to label %_ZN7ADomainD2Ev.exit unwind label %_ZN7ADomainD2Ev.exit27

_ZN7ADomainD2Ev.exit:                             ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  ret void

_ZN7ADomainD2Ev.exit27:                           ; preds = %_ZN9benchmark5State3endEv.exit._crit_edge.split, %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.ac) #10
  resume { ptr, i32 } %i.bj
end_hunk_0
