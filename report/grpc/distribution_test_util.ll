begin_hunk_0_@log
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #2

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal14BetaIncompleteEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fcmp olt double %2, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  %i.c = fcmp olt double %0, 0.000000e+00
  %or.cond3 = or i1 %i.c, %or.cond
  %i.d = fcmp ogt double %0, 1.000000e+00
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %0, 0.000000e+00
  %i.f = fcmp oeq double %0, 1.000000e+00
  %or.cond7 = or i1 %i.e, %i.f
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @lgamma(double noundef %1) #13
  %i.h = tail call double @lgamma(double noundef %2) #13
  %i.i = fadd double %i.g, %i.h
  %i.j = fadd double %1, %2
  %i.k = tail call double @lgamma(double noundef %i.j) #13
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %0, %bb.b ], [ %i.m, %bb.c ], [ +inf, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = fadd double %1, %2                       ; 3 uses
  %i.b = fmul double %0, %i.a
  %i.c = fcmp olt double %1, %i.b
  %i.d = fsub double 1.000000e+00, %0             ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

common.ret73:                                     ; preds = %bb.b, %._crit_edge
  %common.ret73.op = phi double [ %i.ag, %._crit_edge ], [ %i.f, %bb.b ]
  ret double %common.ret73.op

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %i.d, double noundef %2, double noundef %1, double noundef %3)
  %i.f = fsub double 1.000000e+00, %i.e
  br label %common.ret73

bb.c:                                             ; preds = %bb.a
  %i.g = tail call double @log(double noundef %0) #13
  %i.h = fadd double %2, -1.000000e+00            ; 2 uses
  %i.i = tail call double @log(double noundef %i.d) #13
  %i.j = fmul double %i.h, %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %1, double %i.g, double %i.j)
  %i.l = fsub double %i.k, %3
  %i.m = tail call double @exp(double noundef %i.l) #13
  %i.n = tail call double @llvm.fmuladd.f64(double %i.d, double %i.a, double %2)
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = insertelement <2 x double> poison, double %i.m, i64 0
  %i.r = insertelement <2 x double> %i.q, double %0, i64 1
  %i.s = insertelement <2 x double> poison, double %1, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.d, i64 1
  %i.u = fdiv <2 x double> %i.r, %i.t             ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 1
  %i.w = select i1 %i.p, double %0, double %i.v   ; 2 uses
  %i.x = fmul double %i.w, %i.h
  %i.y = fadd double %1, 1.000000e+00
  %i.z = fdiv double %i.x, %i.y                   ; 3 uses
  %i.aa = fadd double %i.z, 1.000000e+00          ; 3 uses
  %i.ab = tail call double @llvm.fabs.f64(double %i.z) ; 2 uses
  %i.ac = fcmp olt double %i.ab, f0x3D06849B86A12B9B
  %i.ad = fmul double %i.aa, f0x3D06849B86A12B9B
  %i.ae = fcmp olt double %i.ab, %i.ad
  %or.cond62 = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond62, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %.lcssa = phi double [ %i.aa, %bb.c ], [ %i.at, %bb.g ]
  %i.af = extractelement <2 x double> %i.u, i64 0
  %i.ag = fmul double %i.af, %.lcssa
  br label %common.ret73

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %i.ah = phi double [ %i.at, %bb.g ], [ %i.aa, %bb.c ]
  %i.ai = phi double [ %i.as, %bb.g ], [ %i.z, %bb.c ]
  %.04866 = phi double [ %.149, %bb.g ], [ %i.w, %bb.c ] ; 2 uses
  %.05065 = phi i32 [ %i.ak, %bb.g ], [ %i.o, %bb.c ] ; 2 uses
  %.05264 = phi double [ %i.aj, %bb.g ], [ 1.000000e+00, %bb.c ]
  %.05563 = phi double [ %.156, %bb.g ], [ %i.a, %bb.c ] ; 4 uses
  %i.aj = fadd double %.05264, 1.000000e+00       ; 3 uses
  %i.ak = add nsw i32 %.05065, -1                 ; 2 uses
  %i.al = icmp sgt i32 %.05065, 0
  br i1 %i.al, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.am = fsub double %2, %i.aj                   ; 2 uses
  %i.an = icmp eq i32 %i.ak, 0
  br i1 %i.an, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ao = fadd double %.05563, 1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.156 = phi double [ %.05563, %bb.e ], [ %.05563, %bb.d ], [ %i.ao, %bb.f ]
  %.149 = phi double [ %0, %bb.e ], [ %.04866, %bb.d ], [ %.04866, %bb.f ] ; 2 uses
  %.1 = phi double [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %.05563, %bb.f ]
  %i.ap = fmul double %i.ai, %.1
  %i.aq = fmul double %.149, %i.ap
  %i.ar = fadd double %1, %i.aj
  %i.as = fdiv double %i.aq, %i.ar                ; 3 uses
  %i.at = fadd double %i.ah, %i.as                ; 3 uses
  %i.au = tail call double @llvm.fabs.f64(double %i.as) ; 2 uses
  %i.av = fcmp olt double %i.au, f0x3D06849B86A12B9B
  %i.aw = fmul double %i.at, f0x3D06849B86A12B9B
  %i.ax = fcmp olt double %i.au, %i.aw
  %or.cond = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !36
}

; Function Attrs: mustprogress nounwind uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal17BetaIncompleteInvEddd(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  %i.b = fcmp olt double %1, 0.000000e+00
  %or.cond = or i1 %i.a, %i.b
  %i.c = fcmp olt double %2, 0.000000e+00
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = fcmp ogt double %2, 1.000000e+00
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq double %2, 0.000000e+00
  %i.f = fcmp oeq double %2, 1.000000e+00
  %or.cond7 = or i1 %i.e, %i.f
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @lgamma(double noundef %0) #13
  %i.h = tail call double @lgamma(double noundef %1) #13
  %i.i = fadd double %i.g, %i.h
  %i.j = fadd double %0, %1
  %i.k = tail call double @lgamma(double noundef %i.j) #13
  %i.l = fsub double %i.i, %i.k
  %i.m = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %0, double noundef %1, double noundef %i.l, double noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %2, %bb.b ], [ %i.m, %bb.c ], [ +inf, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(errnomem: write) uwtable
define internal fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #9 {
bb.a:
  %i.a = fcmp olt double %3, 5.000000e-01
  br i1 %i.a, label %bb.b, label %bb.c

common.ret201:                                    ; preds = %bb.j, %bb.n, %.loopexit, %bb.k, %bb.l, %bb.b
  %common.ret201.op = phi double [ %i.d, %bb.b ], [ %.1145162, %bb.n ], [ +inf, %bb.j ], [ %i.cc, %bb.k ], [ %.1145162, %bb.l ], [ +inf, %.loopexit ]
  ret double %common.ret201.op

bb.b:                                             ; preds = %bb.a
  %i.b = fsub double 1.000000e+00, %3
  %i.c = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd(double noundef %1, double noundef %0, double noundef %2, double noundef %i.b)
  %i.d = fsub double 1.000000e+00, %i.c
  br label %common.ret201

bb.c:                                             ; preds = %bb.a
  %i.e = fmul double %3, %3
  %i.f = tail call double @log(double noundef %i.e) #13
  %i.g = fneg double %i.f
  %i.h = tail call double @sqrt(double noundef %i.g) #13 ; 4 uses
  %i.i = tail call double @llvm.fma.f64(double %i.h, double 2.706100e-01, double 2.307530e+00)
  %i.j = tail call double @llvm.fma.f64(double %i.h, double 4.481000e-02, double 9.922900e-01)
  %i.k = tail call double @llvm.fma.f64(double %i.h, double %i.j, double 1.000000e+00)
  %i.l = fdiv double %i.i, %i.k
  %i.m = fsub double %i.h, %i.l                   ; 4 uses
  %i.n = fcmp ogt double %0, 1.000000e+00
  %i.o = fcmp ogt double %1, 1.000000e+00
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = insertelement <2 x double> poison, double %1, i64 0
  %i.q = insertelement <2 x double> %i.p, double %0, i64 1 ; 2 uses
  %i.r = fadd <2 x double> %i.q, %i.q
  %i.s = fadd <2 x double> %i.r, splat (double -1.000000e+00)
  %i.t = fdiv <2 x double> splat (double 1.000000e+00), %i.s ; 5 uses
  %shift = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.t, %shift
  %4 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.u = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double -3.000000e+00)
  %i.v = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.t, double 6.000000e+00, i64 0
  %i.x = fdiv <2 x double> %i.v, %i.w             ; 2 uses
  %i.y = shufflevector <2 x double> <double f0x3FEAAAAAAAAAAAAB, double poison>, <2 x double> %i.t, <2 x i32> <i32 0, i32 2>
  %i.z = fadd <2 x double> %i.x, %i.y             ; 4 uses
  %shift190 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop191 = fadd <2 x double> %shift190, %i.x
  %i.aa = extractelement <2 x double> %foldExtExtBinop191, i64 0
  %i.ab = tail call double @sqrt(double noundef %i.aa) #13
  %i.ac = fmul double %i.m, %i.ab
  %i.ad = fmul <2 x double> %i.z, <double poison, double 3.000000e+00>
  %i.ae = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.af = insertelement <2 x double> %i.ae, double %i.ac, i64 0
  %i.ag = shufflevector <2 x double> %i.z, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ah = fdiv <2 x double> %i.af, %i.ag          ; 2 uses
  %shift193 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop194 = fsub <2 x double> %i.z, %shift193
  %i.ai = extractelement <2 x double> %foldExtExtBinop194, i64 0
  %i.aj = fneg double %4
  %i.ak = extractelement <2 x double> %i.ah, i64 0
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ai, double %i.ak) ; 2 uses
  %i.am = fadd double %i.al, %i.al
  %i.an = tail call double @exp(double noundef %i.am) #13
  %i.ao = tail call double @llvm.fmuladd.f64(double %1, double %i.an, double %0)
  %i.ap = fdiv double %0, %i.ao
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.aq = fadd double %1, %1                      ; 2 uses
  %i.ar = fmul double %1, 9.000000e+00
  %i.as = fdiv double 1.000000e+00, %i.ar         ; 2 uses
  %i.at = fsub double 1.000000e+00, %i.as
  %i.au = tail call double @sqrt(double noundef %i.as) #13
  %i.av = tail call double @llvm.fmuladd.f64(double %i.m, double %i.au, double %i.at) ; 3 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = fmul double %i.av, %i.aw
  %i.ay = fmul double %i.aq, %i.ax                ; 2 uses
  %i.az = fcmp ugt double %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = fsub double 1.000000e+00, %3
  %i.bb = fmul double %1, %i.ba
  %i.bc = tail call double @log(double noundef %i.bb) #13
  %i.bd = fadd double %2, %i.bc
  %i.be = fdiv double %i.bd, %1
  %i.bf = tail call double @exp(double noundef %i.be) #13
  %i.bg = fsub double 1.000000e+00, %i.bf
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bh = tail call double @llvm.fmuladd.f64(double %0, double 4.000000e+00, double %i.aq)
  %i.bi = fadd double %i.bh, -2.000000e+00
  %i.bj = fdiv double %i.bi, %i.ay                ; 2 uses
  %i.bk = fcmp ugt double %i.bj, 1.000000e+00
  br i1 %i.bk, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = fmul double %0, %3
  %i.bm = tail call double @log(double noundef %i.bl) #13
  %i.bn = fadd double %2, %i.bm
  %i.bo = fdiv double %i.bn, %0
  %i.bp = tail call double @exp(double noundef %i.bo) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bq = fadd double %i.bj, 1.000000e+00
  %i.br = fdiv double 2.000000e+00, %i.bq
  %i.bs = fsub double 1.000000e+00, %i.br
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.0144 = phi double [ %i.ap, %bb.d ], [ %i.bs, %bb.i ], [ %i.bp, %bb.h ], [ %i.bg, %bb.f ] ; 2 uses
  %i.bt = fcmp olt double %.0144, f0x3D06849B86A12B9B
  %.sroa.speculated141 = select i1 %i.bt, double f0x3D06849B86A12B9B, double %.0144 ; 2 uses
  %i.bu = fcmp ogt double %.sroa.speculated141, f0x3FEFFFFFFFFFFFA6
  %.sroa.speculated132 = select i1 %i.bu, double f0x3FEFFFFFFFFFFFA6, double %.sroa.speculated141 ; 3 uses
  %i.bv = fsub double 1.000000e+00, %0
  %i.bw = fsub double 1.000000e+00, %1
  %i.bx = fcmp olt double %.sroa.speculated132, 0.000000e+00
  %i.by = fcmp ogt double %.sroa.speculated132, 1.000000e+00
  %or.cond3161 = or i1 %i.bx, %i.by
  br i1 %or.cond3161, label %common.ret201, label %.lr.ph

.loopexit:                                        ; preds = %bb.o
  %i.bz = fcmp ogt double %i.cs, 1.000000e+00
  br i1 %i.bz, label %common.ret201, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.loopexit
  %.1145162 = phi double [ %i.cs, %.loopexit ], [ %.sroa.speculated132, %bb.j ] ; 10 uses
  %i.ca = fcmp oeq double %.1145162, 0.000000e+00
  %i.cb = fcmp oeq double %.1145162, 1.000000e+00
  %or.cond5 = or i1 %i.ca, %i.cb
  br i1 %or.cond5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.cc = tail call fastcc noundef double @_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_118BetaIncompleteImplEdddd(double noundef %.1145162, double noundef %0, double noundef %1, double noundef %2) ; 3 uses
  %i.cd = tail call double @llvm.fabs.f64(double %i.cc)
  %i.ce = fcmp ueq double %i.cd, +inf
  br i1 %i.ce, label %common.ret201, label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.0116 = phi double [ %i.cc, %bb.k ], [ %.1145162, %.lr.ph ]
  %i.cf = fsub double %.0116, %3
  %i.cg = tail call double @log(double noundef %.1145162) #13
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.cg, double %2)
  %i.ci = fsub double 1.000000e+00, %.1145162
  %i.cj = tail call double @log(double noundef %i.ci) #13
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.cj, double %i.ch)
  %i.cl = tail call double @exp(double noundef %i.ck) #13
  %i.cm = fmul double %i.cf, %i.cl
  %.fr179 = freeze double %i.cm                   ; 3 uses
  %i.cn = fmul double %.fr179, %.fr179
  %i.co = fcmp olt double %i.cn, f0x3D06849B86A12B9B
  br i1 %i.co, label %common.ret201, label %.split

.split:                                           ; preds = %bb.l, %bb.p
  %.0104 = phi double [ %i.cy, %bb.p ], [ 1.000000e+00, %bb.l ] ; 2 uses
  %i.cp = fmul double %.fr179, %.0104             ; 3 uses
  %i.cq = fmul double %i.cp, %i.cp
  %i.cr = fcmp ult double %i.cq, 1.000000e+00
  br i1 %i.cr, label %bb.m, label %bb.p, !llvm.loop !38

bb.m:                                             ; preds = %.split
  %i.cs = fsub double %.1145162, %i.cp            ; 7 uses
  %i.ct = fcmp olt double %i.cs, 0.000000e+00
  %i.cu = fcmp ogt double %i.cs, 1.000000e+00
  %or.cond7 = or i1 %i.ct, %i.cu
  br i1 %or.cond7, label %bb.p, label %bb.n, !llvm.loop !38

bb.n:                                             ; preds = %bb.m
  %i.cv = fcmp oeq double %i.cs, %.1145162
  br i1 %i.cv, label %common.ret201, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = fcmp oeq double %i.cs, 0.000000e+00
  %i.cx = fcmp oeq double %i.cs, 1.000000e+00
  %or.cond9 = or i1 %i.cw, %i.cx
  br i1 %or.cond9, label %bb.p, label %.loopexit, !llvm.loop !38

bb.p:                                             ; preds = %bb.o, %bb.m, %.split
  %i.cy = fdiv double %.0104, 3.000000e+00
  br label %.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal26RequiredSuccessProbabilityEdi(double noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = fsub double 1.000000e+00, %0
  %i.b = tail call double @log(double noundef %i.a) #13
  %i.c = sitofp i32 %1 to double
  %i.d = fdiv double %i.b, %i.c
  %i.e = tail call double @exp(double noundef %i.d) #13
  ret double %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal6ZScoreEdRKNS1_19DistributionMomentsE(double noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !12
  %i.c = fsub double %i.b, %0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !15
  %i.f = tail call double @sqrt(double noundef %i.e) #13
  %i.g = load i64, ptr %1, align 8, !tbaa !39
  %i.h = uitofp i64 %i.g to double
  %sqrt = tail call double @llvm.sqrt.f64(double %i.h)
  %i.i = fdiv double %i.f, %sqrt
  %i.j = fdiv double %i.c, %i.i
  ret double %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define noundef double @_ZN4absl12lts_2025051215random_internal17MaxErrorToleranceEd(double noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = fsub double 1.000000e+00, %0
  %i.b = fmul double %i.a, 5.000000e-01
  %i.c = tail call double @llvm.fmuladd.f64(double %i.b, double 2.000000e+00, double -1.000000e+00)
  %i.d = tail call noundef double @_ZN4absl12lts_2025051215random_internal6erfinvEd(double noundef %i.c)
  %i.e = fmul double %i.d, f0xBFF6A09E667F3BCD
  ret double %i.e
}

declare noundef i64 @_ZN4absl12lts_2025051216numbers_internal17SixDigitsToBufferEdPc(double noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #4 align 2

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
end_hunk_0
