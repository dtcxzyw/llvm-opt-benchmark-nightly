Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/optimizable_graph?download=true
inline.NumInlined: 8546
inline.NumDeleted: 4116
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5Eigen8internal27computeFromTridiagonal_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEES4_EENS_15ComputationInfoERT0_RT1_lbRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !218  ; 11 uses
  %i.c = add i64 %i.b, -1                         ; 5 uses
  %i.d = icmp sgt i64 %i.b, 1
  br i1 %i.d, label %.preheader96.lr.ph, label %.critedge.thread.thread

.preheader96.lr.ph:                               ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 5 uses
  %i.f = mul i64 %i.b, %2                         ; 2 uses
  %i.g = load ptr, ptr %0, align 8                ; 5 uses
  %i.h = load ptr, ptr %4, align 8
  %smax = tail call i64 @llvm.smax.i64(i64 %i.f, i64 0) ; 2 uses
  %i.i = add nuw i64 %smax, 1
  %spec.select = select i1 %3, ptr %i.h, ptr null ; 3 uses
  %.not.i = icmp eq ptr %spec.select, null
  %i.j = load ptr, ptr %1, align 8                ; 2 uses
  %n.vec = and i64 %i.b, 9223372036854775806      ; 4 uses
  %i.k = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br label %.preheader96

.preheader96:                                     ; preds = %.preheader96.backedge, %.preheader96.lr.ph
  %.065103 = phi i64 [ 0, %.preheader96.lr.ph ], [ %i.af, %.preheader96.backedge ] ; 4 uses
  %.066102 = phi i64 [ 0, %.preheader96.lr.ph ], [ %.167.lcssa, %.preheader96.backedge ] ; 2 uses
  %.068101 = phi i64 [ %i.c, %.preheader96.lr.ph ], [ %.169142, %.preheader96.backedge ] ; 4 uses
  %i.l = icmp slt i64 %.066102, %.068101
  br i1 %i.l, label %.lr.ph, label %.preheader95

.preheader95:                                     ; preds = %bb.c, %.preheader96
  %i.m = icmp sgt i64 %.068101, 0
  br i1 %i.m, label %.lr.ph143, label %.critedge.thread

.lr.ph:                                           ; preds = %.preheader96, %bb.c
  %.064100 = phi i64 [ %i.z, %bb.c ], [ %.066102, %.preheader96 ] ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.064100 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !210 ; 2 uses
  %i.p = tail call noundef double @llvm.fabs.f64(double %i.o)
  %i.q = fcmp olt double %i.p, f0x0010000000000000
  br i1 %i.q, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = fmul double %i.o, f0x4330000000000000    ; 2 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = load ptr, ptr %0, align 8, !tbaa !211
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %.064100
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !210
  %i.w = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v) ; 2 uses
  %shift = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.w, %shift
  %i.x = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.y = fcmp ugt double %i.s, %i.x
  br i1 %i.y, label %bb.c, label %.sink.split

.sink.split:                                      ; preds = %bb.b, %.lr.ph
  store double 0.000000e+00, ptr %i.n, align 8, !tbaa !210
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %i.z = add nsw i64 %.064100, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %.068101
  br i1 %exitcond.not, label %.preheader95, label %.lr.ph, !llvm.loop !414

bb.d:                                             ; preds = %.lr.ph143
  %i.aa = icmp sgt i64 %.169142, 1
  br i1 %i.aa, label %.lr.ph143, label %.critedge.thread, !llvm.loop !415

.lr.ph143:                                        ; preds = %.preheader95, %bb.d
  %.169142 = phi i64 [ %i.ab, %bb.d ], [ %.068101, %.preheader95 ] ; 7 uses
  %i.ab = add nsw i64 %.169142, -1                ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !210
  %i.ae = fcmp oeq double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.d, label %.critedge, !llvm.loop !415

.critedge:                                        ; preds = %.lr.ph143
  %i.af = add nuw i64 %.065103, 1
  %exitcond110.not = icmp eq i64 %.065103, %smax
  br i1 %exitcond110.not, label %.critedge.thread, label %.preheader94.preheader

.preheader94.preheader:                           ; preds = %.critedge
  %i.ag = icmp samesign ugt i64 %.169142, 1
  br i1 %i.ag, label %.lr.ph146, label %.critedge2

.preheader94:                                     ; preds = %.lr.ph146
  %i.ah = icmp sgt i64 %.167.in145, 2
  br i1 %i.ah, label %.lr.ph146, label %.critedge2, !llvm.loop !416

.lr.ph146:                                        ; preds = %.preheader94.preheader, %.preheader94
  %.167.in145 = phi i64 [ %.167, %.preheader94 ], [ %.169142, %.preheader94.preheader ] ; 3 uses
  %.167 = add nsw i64 %.167.in145, -1             ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %.167.in145
  %i.aj = getelementptr i8, ptr %i.ai, i64 -16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !210
  %i.al = fcmp une double %i.ak, 0.000000e+00
  br i1 %i.al, label %.preheader94, label %..critedge2_crit_edge, !llvm.loop !416

..critedge2_crit_edge:                            ; preds = %.lr.ph146
  br label %.critedge2, !llvm.loop !416

.critedge2:                                       ; preds = %.preheader94, %..critedge2_crit_edge, %.preheader94.preheader
  %.167.lcssa = phi i64 [ 0, %.preheader94.preheader ], [ %.167, %..critedge2_crit_edge ], [ 0, %.preheader94 ] ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ab
  %i.an = load double, ptr %i.am, align 8, !tbaa !210
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.169142
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !210 ; 4 uses
  %i.aq = fsub double %i.an, %i.ap
  %i.ar = fmul double %i.aq, 5.000000e-01         ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ab
  %i.at = load double, ptr %i.as, align 8, !tbaa !210 ; 7 uses
  %i.au = fcmp oeq double %i.ar, 0.000000e+00
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge2
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.at)
  %i.aw = fsub double %i.ap, %i.av
  br label %bb.j

bb.f:                                             ; preds = %.critedge2
  %i.ax = fcmp une double %i.at, 0.000000e+00
  br i1 %i.ax, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ay = fmul double %i.at, %i.at                ; 2 uses
  %i.az = tail call noundef double @llvm.fabs.f64(double %i.ar) ; 5 uses
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.at) ; 5 uses
  %i.bb = fcmp oeq double %i.az, +inf
  %i.bc = fcmp oeq double %i.ba, +inf
  %or.cond.i.i.i = or i1 %i.bc, %i.bb
  br i1 %or.cond.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %or.cond.i.i.i.i = fcmp uno double %i.az, %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = fcmp olt double %i.az, %i.ba            ; 2 uses
  %i.be = select i1 %i.bd, double %i.ba, double %i.az ; 2 uses
  %i.bf = select i1 %i.bd, double %i.az, double %i.ba
  %i.bg = fdiv double %i.bf, %i.be                ; 2 uses
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bg, double 1.000000e+00)
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.bh)
  %i.bi = fmul double %i.be, %sqrt.i.i.i.i
  br label %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i

_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.1.i.i.i.i = phi double [ +qnan, %bb.h ], [ +inf, %bb.g ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bj = fcmp oeq double %i.ay, 0.000000e+00
  %i.bk = fcmp ogt double %i.ar, 0.000000e+00
  %i.bl = fneg double %.1.i.i.i.i
  %i.bm = select i1 %i.bk, double %.1.i.i.i.i, double %i.bl
  %i.bn = fadd double %i.ar, %i.bm                ; 2 uses
  %i.bo = fdiv double %i.bn, %i.at
  %i.bp = fdiv double %i.at, %i.bo
  %i.bq = fdiv double %i.ay, %i.bn
  %.pn.i = select i1 %i.bj, double %i.bp, double %i.bq
  %.073.i = fsub double %i.ap, %.pn.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i, %bb.f, %bb.e
  %.1.i = phi double [ %i.aw, %bb.e ], [ %.073.i, %_ZN5Eigen6numext5hypotIdEENS_8internal12hypot_retvalINS2_36global_math_functions_filtering_baseIT_vE4typeEE4typeERKS5_SB_.exit.i ], [ %i.ap, %bb.f ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.167.lcssa
  %i.bs = load double, ptr %i.br, align 8, !tbaa !210 ; 2 uses
  %i.bt = fcmp une double %i.bs, 0.000000e+00
  br i1 %i.bt, label %.lr.ph.i, label %.preheader96.backedge

.preheader96.backedge:                            ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, %bb.j
  br label %.preheader96

.lr.ph.i:                                         ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.167.lcssa
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !210
  %i.bw = fsub double %i.bv, %.1.i
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, %.lr.ph.i
  %.0112.i = phi i64 [ %.167.lcssa, %.lr.ph.i ], [ %i.db, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 6 uses
  %.0107111.i = phi double [ %i.bs, %.lr.ph.i ], [ %.1108.i, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 7 uses
  %.0109110.i = phi double [ %i.bw, %.lr.ph.i ], [ %i.dt, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i ] ; 5 uses
  %i.bx = fcmp oeq double %.0109110.i, 0.000000e+00
  br i1 %i.bx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.by = fcmp olt double %.0107111.i, 0.000000e+00
  %i.bz = select i1 %i.by, double 1.000000e+00, double -1.000000e+00
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ca = tail call noundef double @llvm.fabs.f64(double %.0109110.i)
  %i.cb = tail call noundef double @llvm.fabs.f64(double %.0107111.i)
  %i.cc = fcmp ogt double %i.ca, %i.cb
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = fdiv double %.0107111.i, %.0109110.i    ; 3 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = fadd double %i.ce, 1.000000e+00
  %i.cg = tail call double @llvm.sqrt.f64(double %i.cf) ; 2 uses
  %i.ch = fcmp olt double %.0109110.i, 0.000000e+00
  %i.ci = fneg double %i.cg
  %spec.select.i.i.i = select i1 %i.ch, double %i.ci, double %i.cg
  %i.cj = fdiv double 1.000000e+00, %spec.select.i.i.i ; 2 uses
  %i.ck = fneg double %i.cd
  %i.cl = fmul double %i.cj, %i.ck
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cm = fdiv double %.0109110.i, %.0107111.i    ; 3 uses
  %i.cn = fmul double %i.cm, %i.cm
  %i.co = fadd double %i.cn, 1.000000e+00
  %i.cp = tail call double @llvm.sqrt.f64(double %i.co) ; 2 uses
  %i.cq = fcmp olt double %.0107111.i, 0.000000e+00
  %i.cr = fneg double %i.cp
  %spec.select37.i.i.i = select i1 %i.cq, double %i.cr, double %i.cp
  %i.cs = fdiv double -1.000000e+00, %spec.select37.i.i.i ; 2 uses
  %i.ct = fneg double %i.cm
  %i.cu = fmul double %i.cs, %i.ct
  br label %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i

_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i: ; preds = %bb.o, %bb.n, %bb.l
  %.sroa.16.0.i = phi double [ %i.cs, %bb.o ], [ %i.bz, %bb.l ], [ %i.cl, %bb.n ] ; 13 uses
  %.sroa.077.0.i = phi double [ %i.cu, %bb.o ], [ 0.000000e+00, %bb.l ], [ %i.cj, %bb.n ] ; 13 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.0112.i ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !210 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.0112.i ; 3 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !210 ; 4 uses
  %i.cz = fmul double %.sroa.077.0.i, %i.cy
  %i.da = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cw, double %i.cz) ; 2 uses
  %i.db = add nuw nsw i64 %.0112.i, 1             ; 5 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.db ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !210 ; 2 uses
  %i.de = fmul double %.sroa.077.0.i, %i.dd
  %i.df = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.cy, double %i.de) ; 2 uses
  %i.dg = fneg double %i.cy
  %i.dh = fmul double %.sroa.16.0.i, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cw, double %i.dh)
  %i.dj = fneg double %i.dd
  %i.dk = fmul double %.sroa.16.0.i, %i.dj
  %i.dl = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.cy, double %i.dk)
  %i.dm = fneg double %i.dl
  %i.dn = fmul double %.sroa.16.0.i, %i.dm
  %i.do = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.di, double %i.dn)
  store double %i.do, ptr %i.cv, align 8, !tbaa !210
  %i.dp = fmul double %.sroa.077.0.i, %i.df
  %i.dq = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.da, double %i.dp)
  store double %i.dq, ptr %i.dc, align 8, !tbaa !210
  %i.dr = fneg double %i.df
  %i.ds = fmul double %.sroa.16.0.i, %i.dr
  %i.dt = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.da, double %i.ds) ; 2 uses
  store double %i.dt, ptr %i.cx, align 8, !tbaa !210
  %i.du = icmp samesign ugt i64 %.0112.i, %.167.lcssa
  br i1 %i.du, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i
  %i.dv = getelementptr i8, ptr %i.cx, i64 -8     ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !210
  %i.dx = fneg double %.0107111.i
  %i.dy = fmul double %.sroa.16.0.i, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.dw, double %i.dy)
  store double %i.dz, ptr %i.dv, align 8, !tbaa !210
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN5Eigen14JacobiRotationIdE10makeGivensERKdS3_Pd.exit.i
  %i.ea = icmp samesign ult i64 %.0112.i, %i.ab
  br i1 %i.ea, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eb = fneg double %.sroa.16.0.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.db ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !210 ; 2 uses
  %i.ee = fmul double %i.ed, %i.eb
  %i.ef = fmul double %.sroa.077.0.i, %i.ed
  store double %i.ef, ptr %i.ec, align 8, !tbaa !210
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1108.i = phi double [ %i.ee, %bb.r ], [ %.0107111.i, %bb.q ] ; 2 uses
  br i1 %.not.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eg = fneg double %.sroa.16.0.i               ; 2 uses
  %i.eh = fcmp une double %.sroa.077.0.i, 1.000000e+00
  %i.ei = fcmp une double %.sroa.16.0.i, 0.000000e+00
  %or.cond.not18.i.i.i = or i1 %i.ei, %i.eh
  br i1 %or.cond.not18.i.i.i, label %.lr.ph.i.i.preheader.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.t
  %i.ej = mul nuw nsw i64 %i.db, %i.b
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.ej ; 2 uses
  %i.el = mul nuw nsw i64 %.0112.i, %i.b
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.el ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 %i.k
  %i.eo = getelementptr i8, ptr %i.ek, i64 %i.k
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %.sroa.077.0.i, i64 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %.sroa.16.0.i, i64 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.i.i.preheader.i.i
  %index = phi i64 [ 0, %.lr.ph.i.i.preheader.i.i ], [ %index.next, %vector.body ] ; 2 uses
  %i.ep = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.em, i64 %i.ep ; 2 uses
  %next.gep153 = getelementptr i8, ptr %i.ek, i64 %i.ep ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !210 ; 2 uses
  %wide.load154 = load <2 x double>, ptr %next.gep153, align 8, !tbaa !210 ; 2 uses
  %i.eq = fmul <2 x double> %wide.load154, %broadcast.splat
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat150, <2 x double> %wide.load, <2 x double> %i.eq)
  store <2 x double> %i.er, ptr %next.gep, align 8, !tbaa !210
  %i.es = fmul <2 x double> %broadcast.splat150, %wide.load154
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat152, <2 x double> %wide.load, <2 x double> %i.es)
  store <2 x double> %i.et, ptr %next.gep153, align 8, !tbaa !210
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %middle.block, %.lr.ph.i.i.i.i
  %.021.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i ], [ %i.en, %middle.block ] ; 3 uses
  %.01420.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.eo, %middle.block ] ; 3 uses
  %.01519.i.i.i.i = phi i64 [ %i.fd, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ]
  %i.ev = load double, ptr %.021.i.i.i.i, align 8, !tbaa !210 ; 2 uses
  %i.ew = load double, ptr %.01420.i.i.i.i, align 8, !tbaa !210 ; 2 uses
  %i.ex = fmul double %i.ew, %i.eg
  %i.ey = tail call double @llvm.fmuladd.f64(double %.sroa.077.0.i, double %i.ev, double %i.ex)
  store double %i.ey, ptr %.021.i.i.i.i, align 8, !tbaa !210
  %i.ez = fmul double %.sroa.077.0.i, %i.ew
  %i.fa = tail call double @llvm.fmuladd.f64(double %.sroa.16.0.i, double %i.ev, double %i.ez)
  store double %i.fa, ptr %.01420.i.i.i.i, align 8, !tbaa !210
  %i.fb = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.01420.i.i.i.i, i64 8
  %i.fd = add nuw nsw i64 %.01519.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fd, %i.b
  br i1 %exitcond.not.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !418

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_6StrideILi0ELi0EEEEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.t, %bb.s
  %i.fe = icmp samesign ult i64 %i.db, %.169142
  %i.ff = fcmp une double %.1108.i, 0.000000e+00
  %i.fg = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %i.fg, label %bb.k, label %.preheader96.backedge, !llvm.loop !419

.critedge.thread:                                 ; preds = %.critedge, %.preheader95, %bb.d
  %.1 = phi i64 [ %.065103, %bb.d ], [ %i.i, %.critedge ], [ %.065103, %.preheader95 ]
  %.not73.not = icmp sgt i64 %.1, %i.f            ; 2 uses
  %.mux = select i1 %.not73.not, i32 2, i32 0
  br i1 %.not73.not, label %.loopexit, label %.lr.ph.i.i.i.i74.preheader.lr.ph

.critedge.thread.thread:                          ; preds = %bb.a
  %.pre = mul nsw i64 %i.b, %2
  %.not73.not130 = icmp slt i64 %.pre, 0
  %spec.select136 = select i1 %.not73.not130, i32 2, i32 0
  br label %.loopexit

.lr.ph.i.i.i.i74.preheader.lr.ph:                 ; preds = %.critedge.thread
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %3, label %.lr.ph.i.i.i.i74.preheader.us.preheader, label %.lr.ph.i.i.i.i74.preheader.preheader

.lr.ph.i.i.i.i74.preheader.us.preheader:          ; preds = %.lr.ph.i.i.i.i74.preheader.lr.ph
  %i.fi = add nsw i64 %i.b, -2
  br label %.lr.ph.i.i.i.i74.preheader.us

.lr.ph.i.i.i.i74.preheader.preheader:             ; preds = %.lr.ph.i.i.i.i74.preheader.lr.ph
  %.pre115 = load ptr, ptr %0, align 8, !tbaa !211, !noalias !439 ; 2 uses
  %i.fj = add nsw i64 %i.b, -2
  br label %.lr.ph.i.i.i.i74.preheader

.lr.ph.i.i.i.i74.preheader.us:                    ; preds = %.lr.ph.i.i.i.i74.preheader.us.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit.us
  %.0105.us = phi i64 [ %i.kh, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit.us ], [ 0, %.lr.ph.i.i.i.i74.preheader.us.preheader ] ; 9 uses
  %i.fk = sub i64 %i.c, %.0105.us                 ; 2 uses
  %i.fl = sub i64 %i.fi, %.0105.us
  %i.fm = shl i64 %.0105.us, 3
  %i.fn = shl i64 %.0105.us, 3                    ; 2 uses
  %i.fo = add i64 %i.fn, 8
  %i.fp = add nuw i64 %.0105.us, 1
  %i.fq = load ptr, ptr %0, align 8, !tbaa !211, !noalias !439 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.0105.us ; 7 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !210 ; 3 uses
  %xtraiter207 = and i64 %i.fk, 3                 ; 3 uses
  %i.ft = icmp ult i64 %i.fl, 3
  br i1 %i.ft, label %.lr.ph.i.i.i.i74.us.epil.preheader, label %.lr.ph.i.i.i.i74.preheader.us.new

.lr.ph.i.i.i.i74.preheader.us.new:                ; preds = %.lr.ph.i.i.i.i74.preheader.us
  %unroll_iter214 = and i64 %i.fk, -4
  br label %.lr.ph.i.i.i.i74.us

.lr.ph.i.i.i.i74.us:                              ; preds = %.lr.ph.i.i.i.i74.us, %.lr.ph.i.i.i.i74.preheader.us.new
  %.sroa.0.0.i.i.us = phi i64 [ 0, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %.sroa.0.1.i.i.us.3, %.lr.ph.i.i.i.i74.us ]
  %.02123.i.i.i.i.us = phi i64 [ 1, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %i.go, %.lr.ph.i.i.i.i74.us ] ; 6 uses
  %i.fu = phi double [ %i.fs, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %i.gn, %.lr.ph.i.i.i.i74.us ] ; 2 uses
  %niter215 = phi i64 [ 0, %.lr.ph.i.i.i.i74.preheader.us.new ], [ %niter215.next.3, %.lr.ph.i.i.i.i74.us ]
  %i.fv = getelementptr [8 x i8], ptr %i.fr, i64 %.02123.i.i.i.i.us
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !210 ; 2 uses
  %i.fx = fcmp olt double %i.fw, %i.fu            ; 2 uses
  %.sroa.0.1.i.i.us = select i1 %i.fx, i64 %.02123.i.i.i.i.us, i64 %.sroa.0.0.i.i.us
  %i.fy = select i1 %i.fx, double %i.fw, double %i.fu ; 2 uses
  %i.fz = add nuw nsw i64 %.02123.i.i.i.i.us, 1   ; 2 uses
  %i.ga = getelementptr [8 x i8], ptr %i.fr, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !210 ; 2 uses
  %i.gc = fcmp olt double %i.gb, %i.fy            ; 2 uses
  %.sroa.0.1.i.i.us.1 = select i1 %i.gc, i64 %i.fz, i64 %.sroa.0.1.i.i.us
  %i.gd = select i1 %i.gc, double %i.gb, double %i.fy ; 2 uses
  %i.ge = add nuw nsw i64 %.02123.i.i.i.i.us, 2   ; 2 uses
  %i.gf = getelementptr [8 x i8], ptr %i.fr, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !210 ; 2 uses
  %i.gh = fcmp olt double %i.gg, %i.gd            ; 2 uses
  %.sroa.0.1.i.i.us.2 = select i1 %i.gh, i64 %i.ge, i64 %.sroa.0.1.i.i.us.1
  %i.gi = select i1 %i.gh, double %i.gg, double %i.gd ; 2 uses
end_hunk_0
