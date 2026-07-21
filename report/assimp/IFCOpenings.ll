inline.NumInlined: 3958
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_:bb.a
bb.g:                                             ; preds = %bb.f
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.bo = insertelement <2 x double> poison, double %i.h, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fdiv <2 x double> %i.z, %i.bp           ; 3 uses
  %i.br = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bq)
  %i.bs = fcmp oeq <2 x double> %i.br, splat (double +inf) ; 2 uses
  %i.bt = extractelement <2 x i1> %i.bs, i64 1
  %i.bu = extractelement <2 x double> %i.bq, i64 1
  %i.bv = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.z)
  %i.bw = fcmp olt <2 x double> %i.bv, splat (double f0x3E112E0BE0000000) ; 2 uses
  %i.bx = extractelement <2 x i1> %i.bw, i64 1
  %or.cond102 = select i1 %i.bt, i1 %i.bx, i1 false
  %.196 = select i1 %or.cond102, double 0.000000e+00, double %i.bu ; 2 uses
  %i.by = extractelement <2 x i1> %i.bs, i64 0
  %i.bz = extractelement <2 x i1> %i.bw, i64 0
  %or.cond20 = select i1 %i.by, i1 %i.bz, i1 false
  %i.ca = extractelement <2 x double> %i.bq, i64 0
  br i1 %or.cond20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.097 = phi double [ 0.000000e+00, %bb.g ], [ %i.bn, %bb.f ], [ 0.000000e+00, %bb.i ], [ %i.ca, %bb.h ] ; 3 uses
  %.2 = phi double [ %.0, %bb.g ], [ %.0, %bb.f ], [ %.196, %bb.i ], [ %.196, %bb.h ] ; 3 uses
  %i.cb = fcmp olt double %.097, %.2              ; 2 uses
  %.198 = select i1 %i.cb, double %.2, double %.097 ; 2 uses
  %.3 = select i1 %i.cb, double %.097, double %.2 ; 2 uses
  %i.cc = fcmp ogt double %.3, 0.000000e+00
  %.sroa.speculated52 = select i1 %i.cc, double %.3, double 0.000000e+00 ; 2 uses
  %i.cd = fcmp ogt double %.198, 0.000000e+00
  %.sroa.speculated48 = select i1 %i.cd, double %.198, double 0.000000e+00 ; 2 uses
  %i.ce = fcmp olt double %.sroa.speculated52, 1.000000e+00
  %.sroa.speculated44 = select i1 %i.ce, double %.sroa.speculated52, double 1.000000e+00 ; 3 uses
  %i.cf = fcmp olt double %.sroa.speculated48, 1.000000e+00
  %.sroa.speculated = select i1 %i.cf, double %.sroa.speculated48, double 1.000000e+00 ; 3 uses
  %i.cg = fsub double %.sroa.speculated, %.sroa.speculated44
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fcmp uge double %i.ch, f0x3EE4F8B580000000
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cj = fmul double %i.c, %.sroa.speculated44
  %i.ck = fmul double %i.h, %.sroa.speculated44
  %i.cl = fadd double %i.b, %i.cj
  %i.cm = fadd double %i.g, %i.ck
  store double %i.cl, ptr %4, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.cm, ptr %.sroa.42.0..sroa_idx, align 8
  %i.cn = fmul double %i.c, %.sroa.speculated
  %i.co = fmul double %i.h, %.sroa.speculated
  %i.cp = load double, ptr %0, align 8
  %i.cq = fadd double %i.cn, %i.cp
  %i.cr = load double, ptr %i.f, align 8
  %i.cs = fadd double %i.co, %i.cr
  store double %i.cq, ptr %5, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.cs, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.j ], [ true, %bb.k ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_(ptr %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not192 = icmp eq ptr %i.c, %i.e
  br i1 %.not192, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.b

._crit_edge197:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph196, %.loopexit
  %.sroa.0165.0193 = phi ptr [ %i.c, %.lr.ph196 ], [ %i.kv, %.loopexit ] ; 14 uses
  %i.m = load ptr, ptr %.sroa.0165.0193, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq ptr %.sroa.0165.0193, %0         ; 2 uses
  br i1 %i.q, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 24
  %i.s = load double, ptr %i.f, align 8           ; 3 uses
  %i.t = load double, ptr %i.r, align 8           ; 3 uses
  %i.u = fsub double %i.s, %i.t
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp olt double %i.v, f0x3E80000000000000
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %i.g, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fcmp ugt double %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load double, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fcmp ult double %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.af = load double, ptr %i.a, align 8          ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 40
  %i.ah = load double, ptr %i.ag, align 8         ; 3 uses
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp olt double %i.aj, f0x3E80000000000000
  br i1 %i.ak, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load double, ptr %i.h, align 8
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %.pre32.i = load double, ptr %.phi.trans.insert31.i, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %i.am = load double, ptr %i.al, align 8         ; 3 uses
  %i.an = load double, ptr %i.h, align 8          ; 3 uses
  %i.ao = fcmp ugt double %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = load double, ptr %i.g, align 8
  %i.as = fcmp ult double %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i
  %i.at = phi double [ %.pre32.i, %._crit_edge.i ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.au = phi double [ %.pre.i, %._crit_edge.i ], [ %i.an, %bb.i ], [ %i.an, %bb.h ]
  %i.av = fsub double %i.au, %i.at
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp uge double %i.aw, f0x3E80000000000000
  %i.ay = fcmp ugt double %i.af, %i.ah
  %or.cond.i = select i1 %i.ax, i1 true, i1 %i.ay
  %i.az = fcmp ult double %i.s, %i.t
  %or.cond28.i = select i1 %or.cond.i, i1 true, i1 %i.az
  br i1 %or.cond28.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit: ; preds = %bb.j
  %i.ba = load double, ptr %i.g, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = fsub double %i.ba, %i.bc
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp olt double %i.be, f0x3E80000000000000
  %i.bg = fcmp ole double %i.t, %i.s
  %or.cond29.not.i = select i1 %i.bf, i1 %i.bg, i1 false
  %i.bh = fcmp oge double %i.ah, %i.af
  %spec.select.i = select i1 %or.cond29.not.i, i1 %i.bh, i1 false
  br i1 %spec.select.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, label %.loopexit

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread: ; preds = %bb.f, %bb.i, %bb.j, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, %bb.c
  %i.bi = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.bj = load ptr, ptr %0, align 8               ; 3 uses
  %.not198 = icmp eq ptr %i.bi, %i.bj
  br i1 %.not198, label %.loopexit, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 4
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %._crit_edge
  %i.bo = phi ptr [ %i.cg, %._crit_edge ], [ %i.bj, %.lr.ph191.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.ch, %._crit_edge ], [ %i.bi, %.lr.ph191.preheader ]
  %i.bq = phi i64 [ %i.cl, %._crit_edge ], [ %i.bn, %.lr.ph191.preheader ]
  %.0190 = phi i64 [ %.pre-phi, %._crit_edge ], [ 0, %.lr.ph191.preheader ] ; 4 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.0190
  %i.bs = add nuw i64 %.0190, 1                   ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.bq
  %i.bu = select i1 %i.bt, i64 0, i64 %i.bs
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bu
  %2 = load <2 x double>, ptr %i.br, align 8      ; 7 uses
  %3 = load <2 x double>, ptr %i.bv, align 8      ; 5 uses
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph191
  %i.bw = load ptr, ptr %i.n, align 8
  %i.bx = load ptr, ptr %.sroa.0165.0193, align 8
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph191, %bb.k
  %i.cc = phi i64 [ %i.cb, %bb.k ], [ %.0190, %.lr.ph191 ] ; 2 uses
  %.not199 = icmp eq i64 %i.cc, 0
  br i1 %.not199, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %4 = fsub <2 x double> %3, %2                   ; 7 uses
  %5 = extractelement <2 x double> %4, i64 1      ; 4 uses
  %i.cd = fmul double %5, %5
  %6 = extractelement <2 x double> %4, i64 0      ; 4 uses
  %7 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %i.cd)
  %i.ce = tail call double @llvm.sqrt.f64(double %7) ; 2 uses
  %8 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %4) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = extractelement <2 x double> %8, i64 1
  %11 = fcmp ogt double %9, %10
  %12 = extractelement <2 x double> %3, i64 0
  %13 = extractelement <2 x double> %3, i64 1
  %14 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %16 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.pre = load ptr, ptr %i.i, align 8
  %.pre203 = load ptr, ptr %0, align 8
  %.pre204 = add i64 %.3, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i64 [ %.pre204, %._crit_edge.loopexit ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cg = phi ptr [ %.pre203, %._crit_edge.loopexit ], [ %i.bo, %bb.l ] ; 2 uses
  %i.ch = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bp, %bb.l ] ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 4                 ; 2 uses
  %i.cm = icmp ult i64 %.pre-phi, %i.cl
  br i1 %i.cm, label %.lr.ph191, label %.loopexit, !llvm.loop !117

bb.m:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread
  %.1189 = phi i64 [ %.0190, %.lr.ph ], [ %.3, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 10 uses
  %.058188 = phi i64 [ 0, %.lr.ph ], [ %i.cp, %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.0165.0193, align 8 ; 3 uses
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %.058188 ; 2 uses
  %.sroa.0153.0.copyload = load double, ptr %i.co, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.4154.0.copyload = load double, ptr %.sroa.4154.0..sroa_idx, align 8
  %i.cp = add nuw i64 %.058188, 1                 ; 3 uses
  %i.cq = load ptr, ptr %i.n, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cn to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 4
  %i.cv = urem i64 %i.cp, %i.cu
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cv ; 2 uses
  %.sroa.0151.0.copyload = load double, ptr %i.cw, align 8 ; 2 uses
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.4152.0.copyload = load double, ptr %.sroa.4152.0..sroa_idx, align 8 ; 2 uses
  %i.cx = fsub double %.sroa.0151.0.copyload, %12 ; 3 uses
  %i.cy = fsub double %.sroa.4152.0.copyload, %13 ; 3 uses
  %i.cz = insertelement <2 x double> poison, double %.sroa.0151.0.copyload, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %.sroa.0153.0.copyload, i64 1
  %i.db = fsub <2 x double> %i.da, %14            ; 3 uses
  %i.dc = insertelement <2 x double> poison, double %.sroa.4152.0.copyload, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %.sroa.4154.0.copyload, i64 1
  %i.de = fsub <2 x double> %i.dd, %15            ; 3 uses
  %i.df = extractelement <2 x double> %i.de, i64 1 ; 3 uses
  %i.dg = fmul double %i.df, %i.df
  %i.dh = extractelement <2 x double> %i.db, i64 1 ; 3 uses
  %i.di = tail call noundef double @llvm.fmuladd.f64(double %i.dh, double %i.dh, double %i.dg) ; 2 uses
  %i.dj = fcmp olt double %i.di, f0x3DDB7CDFC28AE400
  br i1 %i.dj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dk = fmul double %5, %i.df
  %i.dl = tail call noundef double @llvm.fmuladd.f64(double %i.dh, double %6, double %i.dk)
  %i.dm = tail call double @llvm.fabs.f64(double %i.dl)
  %sqrt.i.i = tail call noundef double @llvm.sqrt.f64(double %i.di)
  %i.dn = fmul double %i.ce, %sqrt.i.i
  %i.do = fdiv double %i.dm, %i.dn
  %i.dp = fcmp ogt double %i.do, 9.999900e-01
  br i1 %i.dp, label %bb.o, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dq = fmul double %i.cy, %i.cy
  %i.dr = tail call noundef double @llvm.fmuladd.f64(double %i.cx, double %i.cx, double %i.dq) ; 2 uses
  %i.ds = fcmp olt double %i.dr, f0x3DDB7CDFC28AE400
  br i1 %i.ds, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = fmul double %5, %i.cy
  %i.du = tail call noundef double @llvm.fmuladd.f64(double %i.cx, double %6, double %i.dt)
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %sqrt.i28.i = tail call noundef double @llvm.sqrt.f64(double %i.dr)
  %i.dw = fmul double %i.ce, %sqrt.i28.i
  %i.dx = fdiv double %i.dv, %i.dw
  %i.dy = fcmp ogt double %i.dx, 9.999900e-01
  br i1 %i.dy, label %bb.q, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %11, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.dz = fdiv <2 x double> %i.db, %i.cf          ; 3 uses
  %i.ea = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dz)
  %i.eb = fcmp oeq <2 x double> %i.ea, splat (double +inf) ; 2 uses
  %i.ec = extractelement <2 x i1> %i.eb, i64 1
  %i.ed = extractelement <2 x double> %i.dz, i64 1
  %i.ee = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.db)
  %i.ef = fcmp olt <2 x double> %i.ee, splat (double f0x3E112E0BE0000000) ; 2 uses
  %i.eg = extractelement <2 x i1> %i.ef, i64 1
  %or.cond100.i = select i1 %i.ec, i1 %i.eg, i1 false
  %.0.i = select i1 %or.cond100.i, double 0.000000e+00, double %i.ed ; 2 uses
  %i.eh = extractelement <2 x i1> %i.eb, i64 0
  %i.ei = extractelement <2 x i1> %i.ef, i64 0
  %or.cond.i59 = select i1 %i.eh, i1 %i.ei, i1 false
  %i.ej = extractelement <2 x double> %i.dz, i64 0
  br i1 %or.cond.i59, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br label %bb.v

bb.t:                                             ; preds = %bb.q
  %i.ek = fdiv <2 x double> %i.de, %16            ; 3 uses
  %i.el = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ek)
  %i.em = fcmp oeq <2 x double> %i.el, splat (double +inf) ; 2 uses
  %i.en = extractelement <2 x i1> %i.em, i64 1
  %i.eo = extractelement <2 x double> %i.ek, i64 1
  %i.ep = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.de)
  %i.eq = fcmp olt <2 x double> %i.ep, splat (double f0x3E112E0BE0000000) ; 2 uses
  %i.er = extractelement <2 x i1> %i.eq, i64 1
  %or.cond102.i = select i1 %i.en, i1 %i.er, i1 false
  %.196.i = select i1 %or.cond102.i, double 0.000000e+00, double %i.eo ; 2 uses
  %i.es = extractelement <2 x i1> %i.em, i64 0
  %i.et = extractelement <2 x i1> %i.eq, i64 0
  %or.cond20.i = select i1 %i.es, i1 %i.et, i1 false
  %i.eu = extractelement <2 x double> %i.ek, i64 0
  br i1 %or.cond20.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %.097.i = phi double [ 0.000000e+00, %bb.s ], [ %i.ej, %bb.r ], [ 0.000000e+00, %bb.u ], [ %i.eu, %bb.t ] ; 3 uses
  %.2.i = phi double [ %.0.i, %bb.s ], [ %.0.i, %bb.r ], [ %.196.i, %bb.u ], [ %.196.i, %bb.t ] ; 3 uses
  %i.ev = fcmp olt double %.097.i, %.2.i          ; 2 uses
  %.198.i = select i1 %i.ev, double %.2.i, double %.097.i ; 2 uses
  %.3.i = select i1 %i.ev, double %.097.i, double %.2.i ; 2 uses
  %i.ew = fcmp ogt double %.3.i, 0.000000e+00
  %.sroa.speculated52.i = select i1 %i.ew, double %.3.i, double 0.000000e+00 ; 2 uses
  %i.ex = fcmp ogt double %.198.i, 0.000000e+00
  %.sroa.speculated48.i = select i1 %i.ex, double %.198.i, double 0.000000e+00 ; 2 uses
  %i.ey = fcmp olt double %.sroa.speculated52.i, 1.000000e+00
  %.sroa.speculated44.i = select i1 %i.ey, double %.sroa.speculated52.i, double 1.000000e+00 ; 2 uses
  %i.ez = fcmp olt double %.sroa.speculated48.i, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ez, double %.sroa.speculated48.i, double 1.000000e+00 ; 2 uses
  %i.fa = fsub double %.sroa.speculated.i, %.sroa.speculated44.i
  %i.fb = tail call double @llvm.fabs.f64(double %i.fa)
  %i.fc = fcmp uge double %i.fb, f0x3EE4F8B580000000
  br i1 %i.fc, label %bb.w, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.w:                                             ; preds = %bb.v
  %17 = insertelement <2 x double> poison, double %.sroa.speculated44.i, i64 0
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> zeroinitializer
  %19 = fmul <2 x double> %4, %18
  %20 = fadd <2 x double> %2, %19                 ; 5 uses
  %21 = insertelement <2 x double> poison, double %.sroa.speculated.i, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer
  %23 = fmul <2 x double> %4, %22
  %24 = fadd <2 x double> %2, %23                 ; 5 uses
  %foldExtExtBinop = fsub <2 x double> %20, %2
  %25 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop242 = fsub <2 x double> %20, %2 ; 2 uses
  %foldExtExtBinop244 = fmul <2 x double> %foldExtExtBinop242, %foldExtExtBinop242
  %26 = extractelement <2 x double> %foldExtExtBinop244, i64 1
  %i.fd = tail call noundef double @llvm.fmuladd.f64(double %25, double %25, double %26)
  %i.fe = fcmp ogt double %i.fd, f0x3E80000000000000
  br i1 %i.fe, label %bb.x, label %bb.am

bb.x:                                             ; preds = %bb.w
  %i.ff = add i64 %.1189, 1                       ; 8 uses
  %i.fg = load ptr, ptr %0, align 8               ; 7 uses
  %.idx180 = shl nsw i64 %i.ff, 4                 ; 2 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.idx180 ; 8 uses
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = load ptr, ptr %i.i, align 8             ; 8 uses
  %i.fk = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.fj, %i.fk
  br i1 %.not.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  %i.fl = icmp eq ptr %i.fh, %i.fj
  br i1 %i.fl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store <2 x double> %20, ptr %i.fj, align 8
  %i.fm = load ptr, ptr %i.i, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store ptr %i.fn, ptr %i.i, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.aa:                                            ; preds = %bb.y
  %i.fo = getelementptr inbounds i8, ptr %i.fj, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 16, i1 false)
  %i.fp = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr %i.fq, ptr %i.i, align 8
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -16 ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = sub i64 %i.fs, %i.fi                    ; 3 uses
  %i.fu = ashr exact i64 %i.ft, 4                 ; 2 uses
  %i.fv = icmp sgt i64 %i.fu, 1
  br i1 %i.fv, label %bb.ab, label %bb.ac, !prof !118

bb.ab:                                            ; preds = %bb.aa
  %i.fw = sub nsw i64 0, %i.fu
  %i.fx = getelementptr inbounds [16 x i8], ptr %i.fp, i64 %i.fw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr nonnull align 8 %i.fh, i64 %i.ft, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  %i.fy = icmp eq i64 %i.ft, 16
  br i1 %i.fy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 16, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  store <2 x double> %20, ptr %i.fh, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

bb.af:                                            ; preds = %bb.x
  %i.fz = ptrtoint ptr %i.fg to i64
  %i.ga = ptrtoint ptr %i.fj to i64
  %i.gb = sub i64 %i.ga, %i.fz                    ; 3 uses
  %i.gc = icmp eq i64 %i.gb, 9223372036854775792
  br i1 %i.gc, label %bb.ag, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.af
  %i.gd = ashr exact i64 %i.gb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gd, i64 1)
  %i.ge = add nsw i64 %.sroa.speculated.i.i.i, %i.gd ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %i.gd
  %i.gg = tail call i64 @llvm.umin.i64(i64 %i.ge, i64 576460752303423487)
  %i.gh = select i1 %i.gf, i64 576460752303423487, i64 %i.gg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gi = shl nuw nsw i64 %i.gh, 4
  %i.gj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gi) #25 ; 6 uses
  %.sroa.9148.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx180
  store <2 x double> %20, ptr %.sroa.9148.0..sroa_idx149, align 8
  %.not10.i.i.i.i.i = icmp eq i64 %i.ff, 0
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.gk = and i64 %.1189, 1152921504606846975
  %i.gl = add i64 %.1189, 1
  %xtraiter = and i64 %i.gl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.gn, %.lr.ph.i.i.i.i.i.prol ], [ %i.gj, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.prol = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i.prol ], [ %i.fg, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.prol, i64 16, i1 false), !alias.scope !119
  %i.gm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !123

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gn, %.lr.ph.i.i.i.i.i.prol ]
  %.012.i.i.i.i.i.unr = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gn, %.lr.ph.i.i.i.i.i.prol ]
  %.0911.i.i.i.i.i.unr = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.gm, %.lr.ph.i.i.i.i.i.prol ]
  %i.go = icmp samesign ult i64 %i.gk, 3
  br i1 %i.go, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !119
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !alias.scope !119
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32
  %i.gs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i64 16, i1 false), !alias.scope !119
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48
  %i.gu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i64 16, i1 false), !alias.scope !119
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 64 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.gv, %i.fh
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gj, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.gw, %.lr.ph.i.i.i.i.i ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16.i.i = icmp eq ptr %i.fh, %i.fj
  br i1 %.not10.i.i.i16.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i

.lr.ph.i.i.i17.i.i:                               ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i, %.lr.ph.i.i.i17.i.i
  %.012.i.i.i18.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i17.i.i ], [ %i.gx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  %.0911.i.i.i19.i.i = phi ptr [ %i.gy, %.lr.ph.i.i.i17.i.i ], [ %i.fh, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i, i64 16, i1 false), !alias.scope !125
  %i.gy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i, i64 16 ; 2 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.gy, %i.fj
  br i1 %.not.i.i.i20.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i17.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i17.i.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i
  %.0.lcssa.i.i.i21.i.i = phi ptr [ %i.gx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i ], [ %i.gz, %.lr.ph.i.i.i17.i.i ]
  %.not.i23.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.gb) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ah, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.gj, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21.i.i, ptr %i.i, align 8
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gh
  store ptr %i.ha, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit: ; preds = %bb.z, %bb.ae, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.hb = load ptr, ptr %i.b, align 8
  %i.hc = sdiv i64 %i.ff, 64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.hc
  %i.he = and i64 %i.ff, -9223372036854775745
  %i.hf = icmp ugt i64 %i.he, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.hf, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.hd, i64 %storemerge.idx.i.i.i ; 2 uses
  %i.hg = trunc i64 %i.ff to i32
  %i.hh = and i32 %i.hg, 63                       ; 4 uses
  %i.hi = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.hj = load ptr, ptr %i.l, align 8
  %.not.i65 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not.i65, label %.critedge.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.hk = icmp eq ptr %storemerge.i.i.i, %i.hi
  %i.hl = icmp eq i32 %i.hh, %.sroa.2.0.copyload.i.i
  %i.hm = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %i.hm, label %bb.aj, label %.critedge.i

bb.aj:                                            ; preds = %bb.ai
  %i.hn = add nuw nsw i32 %i.hh, 1
  store i32 %i.hn, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ho = icmp eq i32 %i.hh, 63
  br i1 %i.ho, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %i.hp, ptr %i.k, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.hq = and i64 %i.ff, 63
  %i.hr = shl nuw i64 1, %i.hq
  %i.hs = load i64, ptr %i.hi, align 8
  %i.ht = or i64 %i.hs, %i.hr
  store i64 %i.ht, ptr %i.hi, align 8
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

.critedge.i:                                      ; preds = %bb.ai, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %storemerge.i.i.i, i32 %i.hh, i1 noundef zeroext true)
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

bb.am:                                            ; preds = %bb.w
  %i.hu = load ptr, ptr %i.b, align 8
  %i.hv = sdiv i64 %.1189, 64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hv
  %i.hx = and i64 %.1189, -9223372036854775745
  %i.hy = icmp ugt i64 %i.hx, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.hy, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hw, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.hz = and i64 %.1189, 63
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.ic = or i64 %i.ib, %i.ia
  store i64 %i.ic, ptr %storemerge.i.i.i.i.i, align 8
  br label %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit

_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit: ; preds = %.critedge.i, %bb.al, %bb.am
  %.2 = phi i64 [ %.1189, %bb.am ], [ %i.ff, %bb.al ], [ %i.ff, %.critedge.i ] ; 4 uses
  %foldExtExtBinop246 = fsub <2 x double> %24, %3
  %27 = extractelement <2 x double> %foldExtExtBinop246, i64 0 ; 2 uses
  %foldExtExtBinop248 = fsub <2 x double> %24, %3 ; 2 uses
  %foldExtExtBinop250 = fmul <2 x double> %foldExtExtBinop248, %foldExtExtBinop248
  %28 = extractelement <2 x double> %foldExtExtBinop250, i64 1
  %i.id = tail call noundef double @llvm.fmuladd.f64(double %27, double %27, double %28)
  %i.ie = fcmp ogt double %i.id, f0x3E80000000000000
  br i1 %i.ie, label %bb.an, label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

bb.an:                                            ; preds = %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit
  %i.if = add i64 %.2, 1                          ; 8 uses
  %i.ig = load ptr, ptr %0, align 8               ; 7 uses
  %.idx182 = shl nsw i64 %i.if, 4                 ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 %.idx182 ; 8 uses
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = load ptr, ptr %i.i, align 8             ; 8 uses
  %i.ik = load ptr, ptr %i.j, align 8
  %.not.i70 = icmp eq ptr %i.ij, %i.ik
  br i1 %.not.i70, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ig) ]
  %i.il = icmp eq ptr %i.ih, %i.ij
  br i1 %i.il, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store <2 x double> %24, ptr %i.ij, align 8
  %i.im = load ptr, ptr %i.i, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %i.in, ptr %i.i, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

bb.aq:                                            ; preds = %bb.ao
  %i.io = getelementptr inbounds i8, ptr %i.ij, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false)
  %i.ip = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store ptr %i.iq, ptr %i.i, align 8
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 -16 ; 2 uses
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.ii                    ; 3 uses
  %i.iu = ashr exact i64 %i.it, 4                 ; 2 uses
  %i.iv = icmp sgt i64 %i.iu, 1
  br i1 %i.iv, label %bb.ar, label %bb.as, !prof !118

bb.ar:                                            ; preds = %bb.aq
  %i.iw = sub nsw i64 0, %i.iu
  %i.ix = getelementptr inbounds [16 x i8], ptr %i.ip, i64 %i.iw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ix, ptr nonnull align 8 %i.ih, i64 %i.it, i1 false)
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %i.iy = icmp eq i64 %i.it, 16
  br i1 %i.iy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.ih, i64 16, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  store <2 x double> %24, ptr %i.ih, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

bb.av:                                            ; preds = %bb.an
  %i.iz = ptrtoint ptr %i.ig to i64
  %i.ja = ptrtoint ptr %i.ij to i64
  %i.jb = sub i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = icmp eq i64 %i.jb, 9223372036854775792
  br i1 %i.jc, label %bb.aw, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74

bb.aw:                                            ; preds = %bb.av
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74: ; preds = %bb.av
  %i.jd = ashr exact i64 %i.jb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i75 = tail call i64 @llvm.umax.i64(i64 %i.jd, i64 1)
  %i.je = add nsw i64 %.sroa.speculated.i.i.i75, %i.jd ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.jd
  %i.jg = tail call i64 @llvm.umin.i64(i64 %i.je, i64 576460752303423487)
  %i.jh = select i1 %i.jf, i64 576460752303423487, i64 %i.jg ; 3 uses
  %.not.i.i.i76 = icmp ne i64 %i.jh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i76)
  %i.ji = shl nuw nsw i64 %i.jh, 4
  %i.jj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #25 ; 6 uses
  %.sroa.9.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.idx182
  store <2 x double> %24, ptr %.sroa.9.0..sroa_idx144, align 8
  %.not10.i.i.i.i.i77 = icmp eq i64 %i.if, 0
  br i1 %.not10.i.i.i.i.i77, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78.preheader

.lr.ph.i.i.i.i.i78.preheader:                     ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74
  %i.jk = and i64 %.2, 1152921504606846975
  %i.jl = add i64 %.2, 1
  %xtraiter244 = and i64 %i.jl, 3                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.lr.ph.i.i.i.i.i78.prol.loopexit, label %.lr.ph.i.i.i.i.i78.prol

.lr.ph.i.i.i.i.i78.prol:                          ; preds = %.lr.ph.i.i.i.i.i78.preheader, %.lr.ph.i.i.i.i.i78.prol
  %.012.i.i.i.i.i79.prol = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i78.prol ], [ %i.jj, %.lr.ph.i.i.i.i.i78.preheader ] ; 2 uses
  %.0911.i.i.i.i.i80.prol = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i78.prol ], [ %i.ig, %.lr.ph.i.i.i.i.i78.preheader ] ; 2 uses
  %prol.iter246 = phi i64 [ %prol.iter246.next, %.lr.ph.i.i.i.i.i78.prol ], [ 0, %.lr.ph.i.i.i.i.i78.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i79.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i80.prol, i64 16, i1 false), !alias.scope !129
  %i.jm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80.prol, i64 16 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79.prol, i64 16 ; 3 uses
  %prol.iter246.next = add i64 %prol.iter246, 1   ; 2 uses
  %prol.iter246.cmp.not = icmp eq i64 %prol.iter246.next, %xtraiter244
  br i1 %prol.iter246.cmp.not, label %.lr.ph.i.i.i.i.i78.prol.loopexit, label %.lr.ph.i.i.i.i.i78.prol, !llvm.loop !133

.lr.ph.i.i.i.i.i78.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i78.prol, %.lr.ph.i.i.i.i.i78.preheader
  %.lcssa242.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.jn, %.lr.ph.i.i.i.i.i78.prol ]
  %.012.i.i.i.i.i79.unr = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.jn, %.lr.ph.i.i.i.i.i78.prol ]
  %.0911.i.i.i.i.i80.unr = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i78.preheader ], [ %i.jm, %.lr.ph.i.i.i.i.i78.prol ]
  %i.jo = icmp samesign ult i64 %i.jk, 3
  br i1 %i.jo, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78

.lr.ph.i.i.i.i.i78:                               ; preds = %.lr.ph.i.i.i.i.i78.prol.loopexit, %.lr.ph.i.i.i.i.i78
  %.012.i.i.i.i.i79 = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i78 ], [ %.012.i.i.i.i.i79.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i80 = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i78 ], [ %.0911.i.i.i.i.i80.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i79, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i80, i64 16, i1 false), !alias.scope !129
  %i.jp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 16
  %i.jq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i64 16, i1 false), !alias.scope !129
  %i.jr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i64 16, i1 false), !alias.scope !129
  %i.jt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 48
  %i.ju = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i64 16, i1 false), !alias.scope !129
  %i.jv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i80, i64 64 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i79, i64 64 ; 2 uses
  %.not.i.i.i.i.i81.3 = icmp eq ptr %i.jv, %i.ih
  br i1 %.not.i.i.i.i.i81.3, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, label %.lr.ph.i.i.i.i.i78, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82: ; preds = %.lr.ph.i.i.i.i.i78.prol.loopexit, %.lr.ph.i.i.i.i.i78, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74
  %.0.lcssa.i.i.i.i.i83 = phi ptr [ %i.jj, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i74 ], [ %.lcssa242.unr, %.lr.ph.i.i.i.i.i78.prol.loopexit ], [ %i.jw, %.lr.ph.i.i.i.i.i78 ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i83, i64 16 ; 2 uses
  %.not10.i.i.i16.i.i84 = icmp eq ptr %i.ih, %i.ij
  br i1 %.not10.i.i.i16.i.i84, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89, label %.lr.ph.i.i.i17.i.i85

.lr.ph.i.i.i17.i.i85:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82, %.lr.ph.i.i.i17.i.i85
  %.012.i.i.i18.i.i86 = phi ptr [ %i.jz, %.lr.ph.i.i.i17.i.i85 ], [ %i.jx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ] ; 2 uses
  %.0911.i.i.i19.i.i87 = phi ptr [ %i.jy, %.lr.ph.i.i.i17.i.i85 ], [ %i.ih, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18.i.i86, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19.i.i87, i64 16, i1 false), !alias.scope !134
  %i.jy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19.i.i87, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.012.i.i.i18.i.i86, i64 16 ; 2 uses
  %.not.i.i.i20.i.i88 = icmp eq ptr %i.jy, %i.ij
  br i1 %.not.i.i.i20.i.i88, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89, label %.lr.ph.i.i.i17.i.i85, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89: ; preds = %.lr.ph.i.i.i17.i.i85, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82
  %.0.lcssa.i.i.i21.i.i90 = phi ptr [ %i.jx, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i82 ], [ %i.jz, %.lr.ph.i.i.i17.i.i85 ]
  %.not.i23.i.i91 = icmp eq ptr %i.ig, null
  br i1 %.not.i23.i.i91, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ig, i64 noundef %i.jb) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92: ; preds = %bb.ax, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i89
  store ptr %i.jj, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21.i.i90, ptr %i.i, align 8
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %i.jh
  store ptr %i.ka, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93

_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93: ; preds = %bb.ap, %bb.au, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i92
  %i.kb = load ptr, ptr %i.b, align 8
  %i.kc = sdiv i64 %i.if, 64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.kb, i64 %i.kc
  %i.ke = and i64 %i.if, -9223372036854775745
  %i.kf = icmp ugt i64 %i.ke, -9223372036854775808
  %storemerge.idx.i.i.i99 = select i1 %i.kf, i64 -8, i64 0
  %storemerge.i.i.i100 = getelementptr inbounds i8, ptr %i.kd, i64 %storemerge.idx.i.i.i99 ; 2 uses
  %i.kg = trunc i64 %i.if to i32
  %i.kh = and i32 %i.kg, 63                       ; 4 uses
  %i.ki = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.kj = load ptr, ptr %i.l, align 8
  %.not.i103 = icmp eq ptr %i.ki, %i.kj
  br i1 %.not.i103, label %.critedge.i106, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93
  %.sroa.2.0.copyload.i.i105 = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.kk = icmp eq ptr %storemerge.i.i.i100, %i.ki
  %i.kl = icmp eq i32 %i.kh, %.sroa.2.0.copyload.i.i105
  %i.km = select i1 %i.kk, i1 %i.kl, i1 false
  br i1 %i.km, label %bb.az, label %.critedge.i106

bb.az:                                            ; preds = %bb.ay
  %i.kn = add nuw nsw i32 %i.kh, 1
  store i32 %i.kn, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.ko = icmp eq i32 %i.kh, 63
  br i1 %i.ko, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store ptr %i.kp, ptr %i.k, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %i.kq = and i64 %i.if, 63
  %i.kr = shl nuw i64 1, %i.kq
  %i.ks = xor i64 %i.kr, -1
  %i.kt = load i64, ptr %i.ki, align 8
  %i.ku = and i64 %i.kt, %i.ks
  store i64 %i.ku, ptr %i.ki, align 8
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

.critedge.i106:                                   ; preds = %bb.ay, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_.exit93
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %storemerge.i.i.i100, i32 %i.kh, i1 noundef zeroext false)
  br label %_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread

_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_.exit.thread: ; preds = %.critedge.i106, %bb.bb, %bb.v, %bb.n, %bb.p, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit
  %.3 = phi i64 [ %.1189, %bb.v ], [ %.2, %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit ], [ %.1189, %bb.p ], [ %.1189, %bb.n ], [ %i.if, %bb.bb ], [ %i.if, %.critedge.i106 ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.cc
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.m, !llvm.loop !138

.loopexit:                                        ; preds = %._crit_edge, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, %bb.b
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.kv, %i.e
  br i1 %.not, label %._crit_edge197, label %bb.b, !llvm.loop !139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC18FindBorderContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nofree readonly captures(none) %0) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %.not50 = icmp eq ptr %i.b, %i.d
  br i1 %.not50, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = load double, ptr %i.b, align 8           ; 4 uses
  %i.g = fcmp ugt double %i.f, 1.000000e-04
  %i.h = fcmp ult double %i.f, 9.999000e-01
  %or.cond18.peel = and i1 %i.g, %i.h
  br i1 %or.cond18.peel, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8           ; 3 uses
  %i.k = fcmp ugt double %i.j, 1.000000e-04
  %i.l = fcmp ult double %i.j, 9.999000e-01
  %or.cond19.peel = and i1 %i.k, %i.l
  br i1 %or.cond19.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader, %bb.b
  %.sroa.6.0..sroa.032.0.33.sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.peel.pre = load double, ptr %.sroa.6.0..sroa.032.0.33.sroa_idx.peel.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0.copyload.peel = phi double [ %i.j, %bb.b ], [ %.sroa.6.0.copyload.peel.pre, %bb.c ] ; 2 uses
  %.2.peel = phi i1 [ false, %bb.b ], [ true, %bb.c ]
  %.1.peel = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.m, %i.d
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.d
  %.1.lcssa = phi i8 [ %.1.peel, %bb.d ], [ %.1, %bb.i ]
  %.sroa.041.0.copyload.lcssa = phi double [ %i.f, %bb.d ], [ %.sroa.041.0.copyload, %bb.i ]
  %.sroa.6.0.copyload.lcssa = phi double [ %.sroa.6.0.copyload.peel, %bb.d ], [ %.sroa.6.0.copyload, %bb.i ]
  %i.n = trunc nuw i8 %.1.lcssa to i1
  %i.o = and i1 %.2.peel, %i.n
  br i1 %i.o, label %bb.j, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.d, %bb.i
  %.055 = phi i8 [ %.1, %bb.i ], [ %.1.peel, %bb.d ]
  %.sroa.041.053 = phi double [ %.sroa.041.0.copyload, %bb.i ], [ %i.f, %bb.d ]
  %.sroa.6.052 = phi double [ %.sroa.6.0.copyload, %bb.i ], [ %.sroa.6.0.copyload.peel, %bb.d ]
  %.sroa.032.051 = phi ptr [ %i.ar, %bb.i ], [ %i.m, %bb.d ] ; 7 uses
  %i.p = load double, ptr %.sroa.032.051, align 8 ; 6 uses
  %i.q = fcmp ugt double %i.p, 1.000000e-04
  %i.r = fcmp ult double %i.p, 9.999000e-01
  %or.cond18 = and i1 %i.q, %i.r
  br i1 %or.cond18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  %i.u = fcmp ugt double %i.t, 1.000000e-04
  %i.v = fcmp ult double %i.t, 9.999000e-01
  %or.cond19 = and i1 %i.u, %i.v
  br i1 %or.cond19, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.w = trunc nuw i8 %.055 to i1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = fsub double %i.p, %.sroa.041.053
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fsub double %i.z, %.sroa.6.052
  %i.ab = fmul double %i.x, %i.aa
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp olt double %i.ac, f0x3E80000000000000
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %.sroa.032.051 to i64
  %i.af = sub i64 %i.ae, %i.e
  %i.ag = ashr exact i64 %i.af, 4
  %i.ah = add nsw i64 %i.ag, -1                   ; 3 uses
  %i.ai = load ptr, ptr %i.a, align 8
  %i.aj = sdiv i64 %i.ah, 64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.aj
  %i.al = and i64 %i.ah, -9223372036854775745
  %i.am = icmp ugt i64 %i.al, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.am, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ak, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.an = and i64 %i.ah, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.aq = or i64 %i.ap, %i.ao
  store i64 %i.aq, ptr %storemerge.i.i.i.i.i, align 8
  %.sroa.041.0.copyload.pre = load double, ptr %.sroa.032.051, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.h, %bb.g
  %.sroa.041.0.copyload = phi double [ %i.p, %bb.e ], [ %.sroa.041.0.copyload.pre, %bb.h ], [ %i.p, %bb.g ], [ %i.p, %bb.f ] ; 2 uses
  %.1 = phi i8 [ 0, %bb.e ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %.sroa.6.0..sroa.032.0.33.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa.032.0.33.sroa_idx, align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.032.051, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ar, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !140

bb.j:                                             ; preds = %._crit_edge
  %i.as = load double, ptr %i.b, align 8
  %i.at = fsub double %i.as, %.sroa.041.0.copyload.lcssa
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load double, ptr %i.au, align 8
  %i.aw = fsub double %i.av, %.sroa.6.0.copyload.lcssa
  %i.ax = fmul double %i.at, %i.aw
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp olt double %i.ay, f0x3E80000000000000
  br i1 %i.az, label %bb.k, label %._crit_edge.thread

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bd = load i32, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.bh, 3
  %i.bj = zext i32 %i.bd to i64
  %i.bk = add nsw i64 %i.bj, -1
  %i.bl = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = sdiv i64 %i.bl, 64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bm
  %i.bo = and i64 %i.bl, -9223372036854775745
  %i.bp = icmp ugt i64 %i.bo, -9223372036854775808
  %storemerge.idx.i.i.i.i.i22 = select i1 %i.bp, i64 -8, i64 0
  %storemerge.i.i.i.i.i23 = getelementptr inbounds i8, ptr %i.bn, i64 %storemerge.idx.i.i.i.i.i22 ; 2 uses
  %i.bq = and i64 %i.bl, 63
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = load i64, ptr %storemerge.i.i.i.i.i23, align 8
  %i.bt = or i64 %i.br, %i.bs
  store i64 %i.bt, ptr %storemerge.i.i.i.i.i23, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.j, %bb.k, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC23FindLikelyCrossingLinesEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nofree readonly captures(none) %0) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %.not38 = icmp eq ptr %i.b, %i.d
  %.pre46 = load double, ptr %i.b, align 8        ; 4 uses
  br i1 %.not38, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa.019.0.20.sroa_idx.peel.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0.copyload.peel.pre = load double, ptr %.sroa.6.0..sroa.019.0.20.sroa_idx.peel.phi.trans.insert, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.f, %i.d
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph.peel.next.preheader

.lr.ph.peel.next.preheader:                       ; preds = %bb.b
  %1 = insertelement <2 x double> poison, double %.pre46, i64 0
  %2 = insertelement <2 x double> %1, double %.sroa.6.0.copyload.peel.pre, i64 1
  br label %.lr.ph.peel.next

._crit_edge.loopexit.loopexit:                    ; preds = %bb.d
  %.pre.pre = load double, ptr %i.b, align 8
  %3 = extractelement <2 x double> %11, i64 0
  %4 = extractelement <2 x double> %11, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit.loopexit, %bb.a
  %i.g = phi double [ %.pre46, %bb.a ], [ %.pre46, %bb.b ], [ %.pre.pre, %._crit_edge.loopexit.loopexit ]
  %.sroa.6.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.sroa.6.0.copyload.peel.pre, %bb.b ], [ %4, %._crit_edge.loopexit.loopexit ]
  %.sroa.028.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.pre46, %bb.b ], [ %3, %._crit_edge.loopexit.loopexit ]
  %i.h = fsub double %i.g, %.sroa.028.0.lcssa
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8
  %i.k = fsub double %i.j, %.sroa.6.0.lcssa
  %i.l = tail call double @llvm.fabs.f64(double %i.h) ; 3 uses
  %i.m = tail call double @llvm.fabs.f64(double %i.k) ; 3 uses
  %i.n = fsub double %i.l, %i.m
  %i.o = tail call double @llvm.fabs.f64(double %i.n)
  %i.p = fcmp olt double %i.l, %i.m
  %.sroa.speculated.i = select i1 %i.p, double %i.m, double %i.l
  %i.q = fmul double %.sroa.speculated.i, 8.000000e-01
  %i.r = fcmp olt double %i.o, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

.lr.ph.peel.next:                                 ; preds = %.lr.ph.peel.next.preheader, %bb.d
  %.sroa.019.039 = phi ptr [ %i.ak, %bb.d ], [ %i.f, %.lr.ph.peel.next.preheader ] ; 4 uses
  %5 = phi <2 x double> [ %11, %bb.d ], [ %2, %.lr.ph.peel.next.preheader ]
  %6 = load <2 x double>, ptr %.sroa.019.039, align 8
  %7 = fsub <2 x double> %6, %5
  %8 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %7) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0      ; 3 uses
  %10 = extractelement <2 x double> %8, i64 1     ; 3 uses
  %i.s = fsub double %9, %10
  %i.t = tail call double @llvm.fabs.f64(double %i.s)
  %i.u = fcmp olt double %9, %10
  %.sroa.speculated.i12 = select i1 %i.u, double %10, double %9
  %i.v = fmul double %.sroa.speculated.i12, 8.000000e-01
  %i.w = fcmp olt double %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.peel.next
  %i.x = ptrtoint ptr %.sroa.019.039 to i64
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 4
  %i.aa = add nsw i64 %i.z, -1                    ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = sdiv i64 %i.aa, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = and i64 %i.aa, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.ag = and i64 %i.aa, 63
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.aj = or i64 %i.ai, %i.ah
  store i64 %i.aj, ptr %storemerge.i.i.i.i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.peel.next, %bb.c
  %11 = load <2 x double>, ptr %.sroa.019.039, align 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.019.039, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ak, %i.d
  br i1 %.not, label %._crit_edge.loopexit.loopexit, label %.lr.ph.peel.next, !llvm.loop !142

bb.e:                                             ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = shl nsw i64 %i.as, 3
  %i.au = zext i32 %i.ao to i64
  %i.av = add nsw i64 %i.au, -1
  %i.aw = add i64 %i.av, %i.at                    ; 3 uses
  %i.ax = sdiv i64 %i.aw, 64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ax
  %i.az = and i64 %i.aw, -9223372036854775745
  %i.ba = icmp ugt i64 %i.az, -9223372036854775808
  %storemerge.idx.i.i.i.i.i13 = select i1 %i.ba, i64 -8, i64 0
  %storemerge.i.i.i.i.i14 = getelementptr inbounds i8, ptr %i.ay, i64 %storemerge.idx.i.i.i.i.i13 ; 2 uses
  %i.bb = and i64 %i.aw, 63
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = load i64, ptr %storemerge.i.i.i.i.i14, align 8
  %i.be = or i64 %i.bc, %i.bd
  store i64 %i.be, ptr %storemerge.i.i.i.i.i14, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp3IFC12CloseWindowsERSt6vectorINS0_22ProjectedWindowContourESaIS2_EERK12aiMatrix4x4tIdERS1_IS1_IPNS0_11TempOpeningESaISB_EESaISD_EERNS0_8TempMeshE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.aiVector3t, align 8          ; 7 uses
  %5 = alloca %class.aiVector3t, align 8          ; 7 uses
  %6 = alloca %class.aiVector3t, align 8          ; 7 uses
  %7 = alloca %class.aiVector3t, align 8          ; 7 uses
  %8 = alloca %class.aiVector3t, align 8          ; 10 uses
  %9 = alloca %class.aiVector3t, align 16         ; 10 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not348434 = icmp eq ptr %i.a, %i.c
  br i1 %.not348434, label %._crit_edge443, label %.lr.ph442

.lr.ph442:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.b

._crit_edge443:                                   ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.692, %.loopexit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph442, %.loopexit
  %.0439 = phi i64 [ 0, %.lr.ph442 ], [ %.692, %.loopexit ] ; 5 uses
  %.sroa.0327.0435 = phi ptr [ %i.a, %.lr.ph442 ], [ %i.rt, %.loopexit ] ; 16 uses
  %i.r = load ptr, ptr %.sroa.0327.0435, align 8  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 8 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %0, align 8
  %i.w = ptrtoint ptr %.sroa.0327.0435 to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 104
  %i.aa = load ptr, ptr %2, align 8
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.z ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not349.not401 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not349.not401, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0323.0402, i64 8 ; 2 uses
  %.not349.not = icmp eq ptr %i.af, %i.ae
  br i1 %.not349.not, label %.lr.ph433, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0323.0402 = phi ptr [ %i.af, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.0323.0402, align 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 56 ; 3 uses
  %i.an = ptrtoint ptr %i.t to i64
  %i.ao = ptrtoint ptr %i.r to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 4                 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 72 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 80 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = shl nsw i64 %i.ay, 3
  %i.ba = zext i32 %i.au to i64
  %i.bb = add nsw i64 %i.az, %i.ba                ; 2 uses
  %i.bc = icmp ult i64 %i.aq, %i.bb
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = sdiv i64 %i.aq, 64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.bd
  %i.bf = and i64 %i.aq, -9223372036854775745
  %i.bg = icmp ugt i64 %i.bf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.bg, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.be, i64 %storemerge.idx.i.i.i.i.i
  %i.bh = trunc i64 %i.aq to i32
  %i.bi = and i32 %i.bh, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.ar, align 8
  store i32 %i.bi, ptr %i.at, align 8
  br label %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit

bb.g:                                             ; preds = %bb.e
  %i.bj = sub nuw i64 %i.aq, %i.bb
  call void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr %i.as, i32 %i.au, i64 noundef %i.bj, i1 noundef zeroext false)
  br label %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit

_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit: ; preds = %bb.g, %bb.f
  call void @_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_(ptr nonnull %.sroa.0327.0435, ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @_ZN6Assimp3IFC18FindBorderContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nonnull %.sroa.0327.0435)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0327.0435, i64 96
  %i.bl = load i8, ptr %i.bk, align 8, !range !143, !noundef !144
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit
  call void @_ZN6Assimp3IFC23FindLikelyCrossingLinesEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEE(ptr nonnull %.sroa.0327.0435)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6Assimp3IFC22ProjectedWindowContour15PrepareSkiplistEv.exit
  %i.bn = load ptr, ptr %i.am, align 8
  %i.bo = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.bp = load ptr, ptr %3, align 8               ; 5 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 2 uses
  %i.bt = sdiv exact i64 %i.bs, 24
  %i.bu = load ptr, ptr %i.s, align 8
  %i.bv = load ptr, ptr %.sroa.0327.0435, align 8
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = ashr exact i64 %i.by, 2
  %i.ca = add nsw i64 %i.bz, %i.bt                ; 4 uses
  %i.cb = icmp ugt i64 %i.ca, 384307168202282325
  br i1 %i.cb, label %.noexc130, label %bb.j

.noexc130:                                        ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #24
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.cc = load ptr, ptr %i.e, align 8
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.br                    ; 2 uses
  %i.cf = sdiv exact i64 %i.ce, 24
  %i.cg = icmp ult i64 %i.cf, %i.ca
  br i1 %i.cg, label %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.j
  %i.ch = mul nuw nsw i64 %i.ca, 24
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #25 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bp, %i.bo
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %i.ci, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.bp, %_ZNSt12_Vector_baseI10aiVector3tIdESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !145
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
end_hunk_0
