Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/MSDFErrorCorrection?download=true
inline.NumInlined: 699
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7msdfgenL22hasLinearArtifactInnerINS_22BaseArtifactClassifierEEEbRKT_ffPKfS6_ff:bb.a
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 6 uses
  %i.am = fcmp ogt float %0, 5.000000e-01
  %i.an = fcmp ogt float %1, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %0, 5.000000e-01
  %i.aq = fcmp olt float %1, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = trunc nuw i8 %.8.val to i1
  br i1 %i.as, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = fcmp olt float %1, %0
  %i.au = select i1 %i.at, float %1, float %0     ; 2 uses
  %i.av = fcmp olt float %0, %1
  %i.aw = select i1 %i.av, float %1, float %0     ; 2 uses
  %i.ax = fcmp olt float %i.al, %i.aw
  %i.ay = select i1 %i.ax, float %i.al, float %i.aw ; 2 uses
  %i.az = fcmp olt float %i.au, %i.ay
  %i.ba = select i1 %i.az, float %i.ay, float %i.au
  %i.bb = fcmp une float %i.ba, %i.al
  br i1 %i.bb, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.bc = fmul double %.0.val, %i.d               ; 2 uses
  %i.bd = fpext float %i.al to double             ; 4 uses
  %i.be = fpext float %0 to double                ; 2 uses
  %i.bf = fsub double %i.be, %i.bc
  %i.bg = fcmp ugt double %i.bf, %i.bd
  %i.bh = fadd double %i.bc, %i.be
  %i.bi = fcmp ult double %i.bh, %i.bd
  %or.cond36.i = or i1 %i.bg, %i.bi
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = fmul double %.0.val, %i.i               ; 2 uses
  %i.bk = fpext float %1 to double                ; 2 uses
  %i.bl = fsub double %i.bk, %i.bj
  %i.bm = fcmp ugt double %i.bl, %i.bd
  %i.bn = fadd double %i.bj, %i.bk
  %i.bo = fcmp ult double %i.bn, %i.bd
  %or.cond38.i = or i1 %i.bm, %i.bo
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.d ], [ %or.cond38.i, %bb.g ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_22BaseArtifactClassifierEEEbRKT_ffPKfS6_S6_fffdd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(9) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fsub float %8, %7
  %i.c = fadd float %6, %i.b
  %i.d = fpext float %i.c to double
  %i.e = fsub float %7, %6
  %i.f = fsub float %i.e, %6
  %i.g = fpext float %i.f to double
  %i.h = fpext float %6 to double
  %i.i = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %i.d, double noundef %i.g, double noundef %i.h) ; 2 uses
  %.not119 = icmp sgt i32 %i.i, 0
  br i1 %.not119, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = fcmp ogt float %1, 5.000000e-01
  %i.n = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fcmp olt float %1, 5.000000e-01
  %i.p = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = fcmp olt float %2, %1
  %i.s = select i1 %i.r, float %2, float %1       ; 2 uses
  %i.t = fcmp olt float %1, %2
  %i.u = select i1 %i.t, float %2, float %1       ; 2 uses
  %i.v = fpext float %1 to double                 ; 2 uses
  %i.w = fpext float %2 to double                 ; 2 uses
  %i.x = fcmp ogt double %9, 0.000000e+00
  %i.y = fcmp olt double %9, 1.000000e+00
  %or.cond = and i1 %i.x, %i.y
  %i.z = fcmp ogt double %10, 0.000000e+00
  %i.aa = fcmp olt double %10, 1.000000e+00
  %or.cond4 = and i1 %i.z, %i.aa
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.ab = insertelement <2 x double> poison, double %10, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %9, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50 ; 13 uses
  %i.ah = fcmp ogt double %i.ag, 1.000000e-02
  %i.ai = fcmp olt double %i.ag, f0x3FEFAE147AE147AE
  %or.cond96 = and i1 %i.ah, %i.ai
  br i1 %or.cond96, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.aj = load float, ptr %5, align 4, !tbaa !30
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = load float, ptr %4, align 4, !tbaa !30
  %i.am = fpext float %i.al to double             ; 3 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.ag, double %i.ak, double %i.am)
  %i.ao = load float, ptr %3, align 4, !tbaa !30
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ag, double %i.an, double %i.ap) ; 3 uses
  %i.ar = load <2 x float>, ptr %i.j, align 4, !tbaa !30
  %i.as = fpext <2 x float> %i.ar to <2 x double> ; 3 uses
  %i.at = load <2 x float>, ptr %i.k, align 4, !tbaa !30
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 3 uses
  %i.av = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.aw = fpext <2 x float> %i.av to <2 x double> ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.as, <2 x double> %i.au)
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.aw) ; 3 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt double %i.aq, %i.bb
  %i.bd = select i1 %i.bc, double %i.bb, double %i.aq
  %i.be = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = fcmp olt <2 x double> %i.ba, %i.bf
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.ba, <2 x double> %i.bf ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bi ; 3 uses
  %i.bm = fptrunc double %i.bl to float           ; 12 uses
  %i.bn = fcmp ole double %i.bl, f0x3FE0000010000000 ; 3 uses
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = fcmp oge double %i.bl, f0x3FDFFFFFF0000000 ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.bo
  %or.cond124 = or i1 %or.cond3.i, %or.cond7.i
  br i1 %or.cond124, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fcmp ogt float %i.u, %i.bm
  %i.bs = select i1 %i.br, float %i.bm, float %i.u ; 2 uses
  %i.bt = fcmp olt float %i.s, %i.bs
  %i.bu = select i1 %i.bt, float %i.bs, float %i.s
  %i.bv = fcmp une float %i.bu, %i.bm
  br i1 %i.bv, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bw = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bx = fmul double %i.ag, %i.bw                ; 2 uses
  %i.by = fpext float %i.bm to double             ; 4 uses
  %i.bz = fsub double %i.v, %i.bx
  %i.ca = fcmp ugt double %i.bz, %i.by
  %i.cb = fadd double %i.bx, %i.v
  %i.cc = fcmp ult double %i.cb, %i.by
  %or.cond36.i = or i1 %i.ca, %i.cc
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = fsub nnan double 1.000000e+00, %i.ag
  %i.ce = fmul double %i.cd, %i.bw                ; 2 uses
  %i.cf = fsub double %i.w, %i.ce
  %i.cg = fcmp ugt double %i.cf, %i.by
  %i.ch = fadd double %i.ce, %i.w
  %i.ci = fcmp ult double %i.ch, %i.by
  %or.cond38.i = or i1 %i.cg, %i.ci
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  br i1 %or.cond, label %.cont25, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

.cont25:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %i.cj = fcmp ogt double %9, %i.ag               ; 4 uses
  %. = select i1 %i.cj, double 0.000000e+00, double %9
  %.97 = select i1 %i.cj, double %9, double 1.000000e+00
  %i.ck = call double @llvm.fmuladd.f64(double %9, double %i.ak, double %i.am)
  %i.cl = call double @llvm.fmuladd.f64(double %9, double %i.ck, double %i.ap) ; 3 uses
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.as, <2 x double> %i.au)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.cm, <2 x double> %i.aw) ; 3 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cp = fcmp olt double %i.cl, %i.co
  %i.cq = select i1 %i.cp, double %i.co, double %i.cl
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cq, i64 1 ; 2 uses
  %i.ct = fcmp olt <2 x double> %i.cn, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cn, <2 x double> %i.cs ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cu, i64 1 ; 2 uses
  %i.cx = fcmp olt double %i.cv, %i.cw
  %i.cy = select i1 %i.cx, double %i.cw, double %i.cv
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %.sroa.0.1 = select i1 %i.cj, float %1, float %i.cz ; 7 uses
  %.sroa.8.1 = select i1 %i.cj, float %i.cz, float %2 ; 7 uses
  %i.da = fcmp ogt float %.sroa.0.1, 5.000000e-01
  %i.db = fcmp ogt float %.sroa.8.1, 5.000000e-01
  %or.cond.i100 = and i1 %i.da, %i.db
  %or.cond3.i101 = and i1 %i.bn, %or.cond.i100
  br i1 %or.cond3.i101, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.cont25
  %i.dc = fcmp olt float %.sroa.0.1, 5.000000e-01
  %i.dd = fcmp olt float %.sroa.8.1, 5.000000e-01
  %or.cond5.i102 = and i1 %i.dc, %i.dd
  %or.cond7.i103 = and i1 %i.bo, %or.cond5.i102
  br i1 %or.cond7.i103, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = fcmp olt float %.sroa.8.1, %.sroa.0.1
  %i.dh = select i1 %i.dg, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.di = fcmp olt float %.sroa.0.1, %.sroa.8.1
  %i.dj = select i1 %i.di, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, %i.bm
  %i.dl = select i1 %i.dk, float %i.bm, float %i.dj ; 2 uses
  %i.dm = fcmp olt float %i.dh, %i.dl
  %i.dn = select i1 %i.dm, float %i.dl, float %i.dh
  %i.do = fcmp une float %i.dn, %i.bm
  br i1 %i.do, label %bb.k, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

bb.k:                                             ; preds = %bb.j, %bb.h, %.cont25
  %i.dp = fsub nnan double %i.ag, %.
  %i.dq = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.dr = fmul double %i.dp, %i.dq                ; 2 uses
  %i.ds = fpext float %i.bm to double             ; 4 uses
  %i.dt = fpext float %.sroa.0.1 to double        ; 2 uses
  %i.du = fsub double %i.dt, %i.dr
  %i.dv = fcmp ugt double %i.du, %i.ds
  %i.dw = fadd double %i.dr, %i.dt
  %i.dx = fcmp ult double %i.dw, %i.ds
  %or.cond36.i105 = or i1 %i.dv, %i.dx
  br i1 %or.cond36.i105, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = fsub nnan double %.97, %i.ag
  %i.dz = fmul double %i.dy, %i.dq                ; 2 uses
  %i.ea = fpext float %.sroa.8.1 to double        ; 2 uses
  %i.eb = fsub double %i.ea, %i.dz
  %i.ec = fcmp ugt double %i.eb, %i.ds
  %i.ed = fadd double %i.dz, %i.ea
  %i.ee = fcmp ult double %i.ed, %i.ds
  %or.cond38.i106 = or i1 %i.ec, %i.ee
  %spec.select.i107 = select i1 %or.cond38.i106, i32 3, i32 1
  %i.ef = or i32 %spec.select.i107, %.1.i
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i32 [ %.1.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ 3, %bb.k ], [ %.1.i, %bb.i ], [ %i.ef, %bb.l ], [ %.1.i, %bb.j ] ; 2 uses
  br i1 %or.cond4, label %.cont22, label %bb.r

.cont22:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %i.eg = fcmp ogt double %10, %i.ag              ; 4 uses
  %.98 = select i1 %i.eg, double 0.000000e+00, double %10
  %.99 = select i1 %i.eg, double %10, double 1.000000e+00
  %i.eh = call double @llvm.fmuladd.f64(double %10, double %i.ak, double %i.am)
  %i.ei = call double @llvm.fmuladd.f64(double %10, double %i.eh, double %i.ap) ; 3 uses
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.as, <2 x double> %i.au)
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ej, <2 x double> %i.aw) ; 3 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0 ; 2 uses
  %i.em = fcmp olt double %i.ei, %i.el
  %i.en = select i1 %i.em, double %i.el, double %i.ei
  %i.eo = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1 ; 2 uses
  %i.eq = fcmp olt <2 x double> %i.ek, %i.ep
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ek, <2 x double> %i.ep ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = and i32 %.1, 2
  %.not118 = icmp eq i32 %i.gd, 0
  br i1 %.not118, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !281

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

declare noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

declare noundef i32 @_ZNK7msdfgen5Shape9edgeCountEv(ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 164703072086692425
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE17_S_check_init_lenEmRKS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE17_S_check_init_lenEmRKS3_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread, label %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit

_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE17_S_check_init_lenEmRKS3_.exit
  %i.c = mul nuw nsw i64 %1, 56
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #22 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !283
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !69
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.i, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %i.d, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %.01013.i.i.i.i = phi i64 [ %i.h, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit ]
  invoke void @_ZN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56) %.014.i.i.i.i)
          to label %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = add nsw i64 %.01013.i.i.i.i, -1          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !282

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #18 ; 0 uses
  invoke void @__cxa_rethrow() #21
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #20
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread
  %i.p = phi ptr [ %i.b, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.e, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.i, %_ZSt10_ConstructIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheEJEEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.p, align 8, !tbaa !283
  ret void

.body:                                            ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !69
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #19
  br label %_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EED2Ev.exit: ; preds = %.body, %bb.g
  resume { ptr, i32 } %i.m
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

end_hunk_0
begin_hunk_1_@_ZN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !286, !nonnull !75, !align !119 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %.not35 = icmp eq ptr %i.c, %i.e
  br i1 %.not35, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  br label %.lr.ph38

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.h = tail call noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret double %i.h

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.loopexit
  %i.i = phi ptr [ %i.am, %.loopexit ], [ %i.b, %.lr.ph38.preheader ]
  %.037 = phi ptr [ %.2, %.loopexit ], [ %i.g, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.019.036 = phi ptr [ %i.al, %.loopexit ], [ %i.c, %.lr.ph38.preheader ] ; 6 uses
  %i.j = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph38
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.o = ptrtoint ptr %.sroa.019.036 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.s)
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !121  ; 2 uses
  %i.v = load ptr, ptr %.sroa.019.036, align 8, !tbaa !122 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 8
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -16
  %spec.select = select i1 %i.z, ptr %i.aa, ptr %i.v
  %i.ab = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116 ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !116
  %.not2930 = icmp eq ptr %i.af, %i.ag
  br i1 %.not2930, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.134 = phi ptr [ %i.ai, %.lr.ph ], [ %.037, %bb.b ] ; 2 uses
  %.0933 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %.01032 = phi ptr [ %.0933, %.lr.ph ], [ %i.ab, %bb.b ]
  %.sroa.011.031 = phi ptr [ %i.aj, %.lr.ph ], [ %i.af, %bb.b ] ; 2 uses
  %i.ah = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.031) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.134, i64 56 ; 2 uses
  tail call void @_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %.134, ptr noundef %.01032, ptr noundef %.0933, ptr noundef %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.011.031, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !116
  %.not29 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not29, label %.loopexit, label %.lr.ph, !llvm.loop !284

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph38
  %.2 = phi ptr [ %.037, %.lr.ph38 ], [ %.037, %bb.b ], [ %i.ai, %.lr.ph ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 24 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !286, !nonnull !75, !align !119 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %.not = icmp eq ptr %i.al, %i.ao
  br i1 %.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !285
}

declare void @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

declare void @_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef double @_ZNK7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fsub float %8, %7
  %i.c = fadd float %6, %i.b
  %i.d = fpext float %i.c to double
  %i.e = fsub float %7, %6
  %i.f = fsub float %i.e, %6
  %i.g = fpext float %i.f to double
  %i.h = fpext float %6 to double
  %i.i = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %i.d, double noundef %i.g, double noundef %i.h) ; 2 uses
  %.not118 = icmp sgt i32 %i.i, 0
  br i1 %.not118, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = fcmp ogt float %1, 5.000000e-01
  %i.n = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fcmp olt float %1, 5.000000e-01
  %i.p = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = fcmp olt float %2, %1
  %i.s = select i1 %i.r, float %2, float %1       ; 2 uses
  %i.t = fcmp olt float %1, %2
  %i.u = select i1 %i.t, float %2, float %1       ; 2 uses
  %i.v = fpext float %1 to double                 ; 2 uses
  %i.w = fpext float %2 to double                 ; 2 uses
  %i.x = fcmp ogt double %9, 0.000000e+00
  %i.y = fcmp olt double %9, 1.000000e+00
  %or.cond = and i1 %i.x, %i.y
  %i.z = fcmp ogt double %10, 0.000000e+00
  %i.aa = fcmp olt double %10, 1.000000e+00
  %or.cond4 = and i1 %i.z, %i.aa
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.ab = insertelement <2 x double> poison, double %10, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %9, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50 ; 14 uses
  %i.ah = fcmp ogt double %i.ag, 1.000000e-02
  %i.ai = fcmp olt double %i.ag, f0x3FEFAE147AE147AE
  %or.cond96 = and i1 %i.ah, %i.ai
  br i1 %or.cond96, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.aj = load float, ptr %5, align 4, !tbaa !30
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = load float, ptr %4, align 4, !tbaa !30
  %i.am = fpext float %i.al to double             ; 3 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.ag, double %i.ak, double %i.am)
  %i.ao = load float, ptr %3, align 4, !tbaa !30
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ag, double %i.an, double %i.ap) ; 3 uses
  %i.ar = load <2 x float>, ptr %i.j, align 4, !tbaa !30
  %i.as = fpext <2 x float> %i.ar to <2 x double> ; 3 uses
  %i.at = load <2 x float>, ptr %i.k, align 4, !tbaa !30
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 3 uses
  %i.av = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.aw = fpext <2 x float> %i.av to <2 x double> ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.as, <2 x double> %i.au)
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.aw) ; 3 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt double %i.aq, %i.bb
  %i.bd = select i1 %i.bc, double %i.bb, double %i.aq
  %i.be = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = fcmp olt <2 x double> %i.ba, %i.bf
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.ba, <2 x double> %i.bf ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bi ; 3 uses
  %i.bm = fptrunc double %i.bl to float           ; 13 uses
  %i.bn = fcmp ole double %i.bl, f0x3FE0000010000000 ; 3 uses
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = fcmp oge double %i.bl, f0x3FDFFFFFF0000000 ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.bo
  %or.cond123 = or i1 %or.cond3.i, %or.cond7.i
  br i1 %or.cond123, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fcmp ogt float %i.u, %i.bm
  %i.bs = select i1 %i.br, float %i.bm, float %i.u ; 2 uses
  %i.bt = fcmp olt float %i.s, %i.bs
  %i.bu = select i1 %i.bt, float %i.bs, float %i.s
  %i.bv = fcmp une float %i.bu, %i.bm
  br i1 %i.bv, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bw = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bx = fmul double %i.ag, %i.bw                ; 2 uses
  %i.by = fpext float %i.bm to double             ; 4 uses
  %i.bz = fsub double %i.v, %i.bx
  %i.ca = fcmp ugt double %i.bz, %i.by
  %i.cb = fadd double %i.bx, %i.v
  %i.cc = fcmp ult double %i.cb, %i.by
  %or.cond36.i = or i1 %i.ca, %i.cc
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = fsub nnan double 1.000000e+00, %i.ag
  %i.ce = fmul double %i.cd, %i.bw                ; 2 uses
  %i.cf = fsub double %i.w, %i.ce
  %i.cg = fcmp ugt double %i.cf, %i.by
  %i.ch = fadd double %i.ce, %i.w
  %i.ci = fcmp ult double %i.ch, %i.by
  %or.cond38.i = or i1 %i.cg, %i.ci
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  br i1 %or.cond, label %.cont25, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

.cont25:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %i.cj = fcmp ogt double %9, %i.ag               ; 4 uses
  %. = select i1 %i.cj, double 0.000000e+00, double %9
  %.97 = select i1 %i.cj, double %9, double 1.000000e+00
  %i.ck = call double @llvm.fmuladd.f64(double %9, double %i.ak, double %i.am)
  %i.cl = call double @llvm.fmuladd.f64(double %9, double %i.ck, double %i.ap) ; 3 uses
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.as, <2 x double> %i.au)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.cm, <2 x double> %i.aw) ; 3 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cp = fcmp olt double %i.cl, %i.co
  %i.cq = select i1 %i.cp, double %i.co, double %i.cl
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cq, i64 1 ; 2 uses
  %i.ct = fcmp olt <2 x double> %i.cn, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cn, <2 x double> %i.cs ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cu, i64 1 ; 2 uses
  %i.cx = fcmp olt double %i.cv, %i.cw
  %i.cy = select i1 %i.cx, double %i.cw, double %i.cv
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %.sroa.0.1 = select i1 %i.cj, float %1, float %i.cz ; 7 uses
  %.sroa.8.1 = select i1 %i.cj, float %i.cz, float %2 ; 7 uses
  %i.da = fcmp ogt float %.sroa.0.1, 5.000000e-01
  %i.db = fcmp ogt float %.sroa.8.1, 5.000000e-01
  %or.cond.i100 = and i1 %i.da, %i.db
  %or.cond3.i101 = and i1 %i.bn, %or.cond.i100
  br i1 %or.cond3.i101, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.cont25
  %i.dc = fcmp olt float %.sroa.0.1, 5.000000e-01
  %i.dd = fcmp olt float %.sroa.8.1, 5.000000e-01
  %or.cond5.i102 = and i1 %i.dc, %i.dd
  %or.cond7.i103 = and i1 %i.bo, %or.cond5.i102
  br i1 %or.cond7.i103, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = fcmp olt float %.sroa.8.1, %.sroa.0.1
  %i.dh = select i1 %i.dg, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.di = fcmp olt float %.sroa.0.1, %.sroa.8.1
  %i.dj = select i1 %i.di, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, %i.bm
  %i.dl = select i1 %i.dk, float %i.bm, float %i.dj ; 2 uses
  %i.dm = fcmp olt float %i.dh, %i.dl
  %i.dn = select i1 %i.dm, float %i.dl, float %i.dh
  %i.do = fcmp une float %i.dn, %i.bm
  br i1 %i.do, label %bb.k, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

bb.k:                                             ; preds = %bb.j, %bb.h, %.cont25
  %i.dp = fsub nnan double %i.ag, %.
  %i.dq = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.dr = fmul double %i.dp, %i.dq                ; 2 uses
  %i.ds = fpext float %i.bm to double             ; 4 uses
  %i.dt = fpext float %.sroa.0.1 to double        ; 2 uses
  %i.du = fsub double %i.dt, %i.dr
  %i.dv = fcmp ugt double %i.du, %i.ds
  %i.dw = fadd double %i.dr, %i.dt
  %i.dx = fcmp ult double %i.dw, %i.ds
  %or.cond36.i105 = or i1 %i.dv, %i.dx
  br i1 %or.cond36.i105, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = fsub nnan double %.97, %i.ag
  %i.dz = fmul double %i.dy, %i.dq                ; 2 uses
  %i.ea = fpext float %.sroa.8.1 to double        ; 2 uses
  %i.eb = fsub double %i.ea, %i.dz
  %i.ec = fcmp ugt double %i.eb, %i.ds
  %i.ed = fadd double %i.dz, %i.ea
  %i.ee = fcmp ult double %i.ed, %i.ds
  %or.cond38.i106 = or i1 %i.ec, %i.ee
  %spec.select.i107 = select i1 %or.cond38.i106, i32 3, i32 1
  %i.ef = or i32 %spec.select.i107, %.1.i
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i32 [ %.1.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ 3, %bb.k ], [ %.1.i, %bb.i ], [ %i.ef, %bb.l ], [ %.1.i, %bb.j ] ; 2 uses
  br i1 %or.cond4, label %.cont22, label %bb.r

.cont22:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %i.eg = fcmp ogt double %10, %i.ag              ; 4 uses
  %.98 = select i1 %i.eg, double 0.000000e+00, double %10
  %.99 = select i1 %i.eg, double %10, double 1.000000e+00
  %i.eh = call double @llvm.fmuladd.f64(double %10, double %i.ak, double %i.am)
  %i.ei = call double @llvm.fmuladd.f64(double %10, double %i.eh, double %i.ap) ; 3 uses
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.as, <2 x double> %i.au)
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ej, <2 x double> %i.aw) ; 3 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0 ; 2 uses
  %i.em = fcmp olt double %i.ei, %i.el
  %i.en = select i1 %i.em, double %i.el, double %i.ei
  %i.eo = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1 ; 2 uses
  %i.eq = fcmp olt <2 x double> %i.ek, %i.ep
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ek, <2 x double> %i.ep ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.ag, float noundef %i.bm, i32 noundef %.1)
  br i1 %i.gd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !287

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %3, 2
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !50
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.l, %i.j             ; 3 uses
  %i.n = load <2 x double>, ptr %i.g, align 8, !tbaa !50
  %i.o = fadd <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  call void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, double %i.p, double %i.q)
  %i.r = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m)
  %i.s = fsub <2 x double> splat (double 1.000000e+00), %i.r ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.s, %shift ; 2 uses
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !81   ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78   ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !30 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.aa = fpext float %i.z to double
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !30 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 4 uses
  %i.ad = fcmp olt float %i.ac, %i.x
  %i.ae = select i1 %i.ad, float %i.ac, float %i.x ; 2 uses
  %i.af = fcmp olt float %i.x, %i.ac
  %i.ag = select i1 %i.af, float %i.ac, float %i.x ; 2 uses
  %i.ah = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.ag
  %i.aj = select i1 %i.ai, float %i.ah, float %i.ag ; 2 uses
  %i.ak = fcmp olt float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ae ; 2 uses
  %i.am = fsub float %i.al, %i.x
  %i.an = fpext float %i.am to double
  %i.ao = call double @llvm.fmuladd.f64(double %i.t, double %i.an, double %i.aa)
  %i.ap = fptrunc double %i.ao to float           ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E:bb.a
  store float %i.ck, ptr %0, align 4, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !30
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !30
  %i.ct = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %i.cq, i64 1
  %i.cv = fpext <2 x float> %i.cu to <2 x double>
  %i.cw = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cx = insertelement <2 x float> %i.cw, float %i.cs, i64 1
  %i.cy = fpext <2 x float> %i.cx to <2 x double>
  %i.cz = fmul <2 x double> %i.by, %i.cy
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cv, <2 x double> %i.cz)
  %i.db = fptrunc <2 x double> %i.da to <2 x float>
  %i.dc = fpext <2 x float> %i.db to <2 x double> ; 2 uses
  %shift55 = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop56 = fmul <2 x double> %foldExtExtBinop53, %shift55
  %i.dd = extractelement <2 x double> %foldExtExtBinop56, i64 0
  %i.de = extractelement <2 x double> %i.dc, i64 0
  %i.df = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.de, double %i.dd)
  %i.dg = fptrunc double %i.df to float
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.dg, ptr %i.dh, align 4, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.dj = load float, ptr %i.di, align 4, !tbaa !30
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !30
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !30
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !30
  %i.dq = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dn, i64 1
  %i.ds = fpext <2 x float> %i.dr to <2 x double>
  %i.dt = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dp, i64 1
  %i.dv = fpext <2 x float> %i.du to <2 x double>
  %i.dw = fmul <2 x double> %i.by, %i.dv
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.ds, <2 x double> %i.dw)
  %i.dy = fptrunc <2 x double> %i.dx to <2 x float> ; 2 uses
  %i.dz = extractelement <2 x float> %i.dy, i64 0
  %i.ea = fpext float %i.dz to double
  %i.eb = extractelement <2 x float> %i.dy, i64 1
  %i.ec = fpext float %i.eb to double
  %i.ed = fmul double %i.ab, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.ea, double %i.ed)
  %i.ef = fptrunc double %i.ee to float
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ef, ptr %i.eg, align 4, !tbaa !30
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.em = load float, ptr %i.el, align 4, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.eo = load float, ptr %i.en, align 4, !tbaa !30
  %i.ep = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.em, i64 1
  %i.er = fpext <2 x float> %i.eq to <2 x double>
  %i.es = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.eo, i64 1
  %i.eu = fpext <2 x float> %i.et to <2 x double>
  %i.ev = fmul <2 x double> %i.by, %i.eu
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.er, <2 x double> %i.ev)
  %i.ex = fptrunc <2 x double> %i.ew to <2 x float>
  %i.ey = fpext <2 x float> %i.ex to <2 x double> ; 2 uses
  %shift58 = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fmul <2 x double> %foldExtExtBinop53, %shift58
  %i.ez = extractelement <2 x double> %foldExtExtBinop59, i64 0
  %i.fa = extractelement <2 x double> %i.ey, i64 0
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.fa, double %i.ez)
  %i.fc = fptrunc double %i.fb to float
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.fc, ptr %i.fd, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fsub float %8, %7
  %i.c = fadd float %6, %i.b
  %i.d = fpext float %i.c to double
  %i.e = fsub float %7, %6
  %i.f = fsub float %i.e, %6
  %i.g = fpext float %i.f to double
  %i.h = fpext float %6 to double
  %i.i = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %i.d, double noundef %i.g, double noundef %i.h) ; 2 uses
  %.not118 = icmp sgt i32 %i.i, 0
  br i1 %.not118, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = fcmp ogt float %1, 5.000000e-01
  %i.n = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fcmp olt float %1, 5.000000e-01
  %i.p = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = fcmp olt float %2, %1
  %i.s = select i1 %i.r, float %2, float %1       ; 2 uses
  %i.t = fcmp olt float %1, %2
  %i.u = select i1 %i.t, float %2, float %1       ; 2 uses
  %i.v = fpext float %1 to double                 ; 2 uses
  %i.w = fpext float %2 to double                 ; 2 uses
  %i.x = fcmp ogt double %9, 0.000000e+00
  %i.y = fcmp olt double %9, 1.000000e+00
  %or.cond = and i1 %i.x, %i.y
  %i.z = fcmp ogt double %10, 0.000000e+00
  %i.aa = fcmp olt double %10, 1.000000e+00
  %or.cond4 = and i1 %i.z, %i.aa
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.ab = insertelement <2 x double> poison, double %10, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %9, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50 ; 14 uses
  %i.ah = fcmp ogt double %i.ag, 1.000000e-02
  %i.ai = fcmp olt double %i.ag, f0x3FEFAE147AE147AE
  %or.cond96 = and i1 %i.ah, %i.ai
  br i1 %or.cond96, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.aj = load float, ptr %5, align 4, !tbaa !30
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = load float, ptr %4, align 4, !tbaa !30
  %i.am = fpext float %i.al to double             ; 3 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.ag, double %i.ak, double %i.am)
  %i.ao = load float, ptr %3, align 4, !tbaa !30
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ag, double %i.an, double %i.ap) ; 3 uses
  %i.ar = load <2 x float>, ptr %i.j, align 4, !tbaa !30
  %i.as = fpext <2 x float> %i.ar to <2 x double> ; 3 uses
  %i.at = load <2 x float>, ptr %i.k, align 4, !tbaa !30
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 3 uses
  %i.av = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.aw = fpext <2 x float> %i.av to <2 x double> ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.as, <2 x double> %i.au)
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.aw) ; 3 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt double %i.aq, %i.bb
  %i.bd = select i1 %i.bc, double %i.bb, double %i.aq
  %i.be = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = fcmp olt <2 x double> %i.ba, %i.bf
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.ba, <2 x double> %i.bf ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bi ; 3 uses
  %i.bm = fptrunc double %i.bl to float           ; 13 uses
  %i.bn = fcmp ole double %i.bl, f0x3FE0000010000000 ; 3 uses
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = fcmp oge double %i.bl, f0x3FDFFFFFF0000000 ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.bo
  %or.cond123 = or i1 %or.cond3.i, %or.cond7.i
  br i1 %or.cond123, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fcmp ogt float %i.u, %i.bm
  %i.bs = select i1 %i.br, float %i.bm, float %i.u ; 2 uses
  %i.bt = fcmp olt float %i.s, %i.bs
  %i.bu = select i1 %i.bt, float %i.bs, float %i.s
  %i.bv = fcmp une float %i.bu, %i.bm
  br i1 %i.bv, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bw = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bx = fmul double %i.ag, %i.bw                ; 2 uses
  %i.by = fpext float %i.bm to double             ; 4 uses
  %i.bz = fsub double %i.v, %i.bx
  %i.ca = fcmp ugt double %i.bz, %i.by
  %i.cb = fadd double %i.bx, %i.v
  %i.cc = fcmp ult double %i.cb, %i.by
  %or.cond36.i = or i1 %i.ca, %i.cc
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = fsub nnan double 1.000000e+00, %i.ag
  %i.ce = fmul double %i.cd, %i.bw                ; 2 uses
  %i.cf = fsub double %i.w, %i.ce
  %i.cg = fcmp ugt double %i.cf, %i.by
  %i.ch = fadd double %i.ce, %i.w
  %i.ci = fcmp ult double %i.ch, %i.by
  %or.cond38.i = or i1 %i.cg, %i.ci
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  br i1 %or.cond, label %.cont25, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

.cont25:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %i.cj = fcmp ogt double %9, %i.ag               ; 4 uses
  %. = select i1 %i.cj, double 0.000000e+00, double %9
  %.97 = select i1 %i.cj, double %9, double 1.000000e+00
  %i.ck = call double @llvm.fmuladd.f64(double %9, double %i.ak, double %i.am)
  %i.cl = call double @llvm.fmuladd.f64(double %9, double %i.ck, double %i.ap) ; 3 uses
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.as, <2 x double> %i.au)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.cm, <2 x double> %i.aw) ; 3 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cp = fcmp olt double %i.cl, %i.co
  %i.cq = select i1 %i.cp, double %i.co, double %i.cl
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cq, i64 1 ; 2 uses
  %i.ct = fcmp olt <2 x double> %i.cn, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cn, <2 x double> %i.cs ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cu, i64 1 ; 2 uses
  %i.cx = fcmp olt double %i.cv, %i.cw
  %i.cy = select i1 %i.cx, double %i.cw, double %i.cv
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %.sroa.0.1 = select i1 %i.cj, float %1, float %i.cz ; 7 uses
  %.sroa.8.1 = select i1 %i.cj, float %i.cz, float %2 ; 7 uses
  %i.da = fcmp ogt float %.sroa.0.1, 5.000000e-01
  %i.db = fcmp ogt float %.sroa.8.1, 5.000000e-01
  %or.cond.i100 = and i1 %i.da, %i.db
  %or.cond3.i101 = and i1 %i.bn, %or.cond.i100
  br i1 %or.cond3.i101, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.cont25
  %i.dc = fcmp olt float %.sroa.0.1, 5.000000e-01
  %i.dd = fcmp olt float %.sroa.8.1, 5.000000e-01
  %or.cond5.i102 = and i1 %i.dc, %i.dd
  %or.cond7.i103 = and i1 %i.bo, %or.cond5.i102
  br i1 %or.cond7.i103, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = fcmp olt float %.sroa.8.1, %.sroa.0.1
  %i.dh = select i1 %i.dg, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.di = fcmp olt float %.sroa.0.1, %.sroa.8.1
  %i.dj = select i1 %i.di, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, %i.bm
  %i.dl = select i1 %i.dk, float %i.bm, float %i.dj ; 2 uses
  %i.dm = fcmp olt float %i.dh, %i.dl
  %i.dn = select i1 %i.dm, float %i.dl, float %i.dh
  %i.do = fcmp une float %i.dn, %i.bm
  br i1 %i.do, label %bb.k, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

bb.k:                                             ; preds = %bb.j, %bb.h, %.cont25
  %i.dp = fsub nnan double %i.ag, %.
  %i.dq = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.dr = fmul double %i.dp, %i.dq                ; 2 uses
  %i.ds = fpext float %i.bm to double             ; 4 uses
  %i.dt = fpext float %.sroa.0.1 to double        ; 2 uses
  %i.du = fsub double %i.dt, %i.dr
  %i.dv = fcmp ugt double %i.du, %i.ds
  %i.dw = fadd double %i.dr, %i.dt
  %i.dx = fcmp ult double %i.dw, %i.ds
  %or.cond36.i105 = or i1 %i.dv, %i.dx
  br i1 %or.cond36.i105, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = fsub nnan double %.97, %i.ag
  %i.dz = fmul double %i.dy, %i.dq                ; 2 uses
  %i.ea = fpext float %.sroa.8.1 to double        ; 2 uses
  %i.eb = fsub double %i.ea, %i.dz
  %i.ec = fcmp ugt double %i.eb, %i.ds
  %i.ed = fadd double %i.dz, %i.ea
  %i.ee = fcmp ult double %i.ed, %i.ds
  %or.cond38.i106 = or i1 %i.ec, %i.ee
  %spec.select.i107 = select i1 %or.cond38.i106, i32 3, i32 1
  %i.ef = or i32 %spec.select.i107, %.1.i
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i32 [ %.1.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ 3, %bb.k ], [ %.1.i, %bb.i ], [ %i.ef, %bb.l ], [ %.1.i, %bb.j ] ; 2 uses
  br i1 %or.cond4, label %.cont22, label %bb.r

.cont22:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %i.eg = fcmp ogt double %10, %i.ag              ; 4 uses
  %.98 = select i1 %i.eg, double 0.000000e+00, double %10
  %.99 = select i1 %i.eg, double %10, double 1.000000e+00
  %i.eh = call double @llvm.fmuladd.f64(double %10, double %i.ak, double %i.am)
  %i.ei = call double @llvm.fmuladd.f64(double %10, double %i.eh, double %i.ap) ; 3 uses
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.as, <2 x double> %i.au)
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ej, <2 x double> %i.aw) ; 3 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0 ; 2 uses
  %i.em = fcmp olt double %i.ei, %i.el
  %i.en = select i1 %i.em, double %i.el, double %i.ei
  %i.eo = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1 ; 2 uses
  %i.eq = fcmp olt <2 x double> %i.ek, %i.ep
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ek, <2 x double> %i.ep ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.ag, float noundef %i.bm, i32 noundef %.1)
  br i1 %i.gd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !288

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

declare void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEC1ERKNS_5ShapeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %3, 2
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !50
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.l, %i.j             ; 3 uses
  %i.n = load <2 x double>, ptr %i.g, align 8, !tbaa !50
  %i.o = fadd <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  call void @_ZN7msdfgen11interpolateIfLi3EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, double %i.p, double %i.q)
  %i.r = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m)
  %i.s = fsub <2 x double> splat (double 1.000000e+00), %i.r ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.s, %shift ; 2 uses
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !103  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100  ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !30 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load float, ptr %i.a, align 4, !tbaa !30 ; 5 uses
  %i.aa = fpext float %i.z to double
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !30 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 4 uses
  %i.ad = fcmp olt float %i.ac, %i.x
  %i.ae = select i1 %i.ad, float %i.ac, float %i.x ; 2 uses
  %i.af = fcmp olt float %i.x, %i.ac
  %i.ag = select i1 %i.af, float %i.ac, float %i.x ; 2 uses
  %i.ah = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.ag
  %i.aj = select i1 %i.ai, float %i.ah, float %i.ag ; 2 uses
  %i.ak = fcmp olt float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ae ; 2 uses
  %i.am = fsub float %i.al, %i.x
  %i.an = fpext float %i.am to double
end_hunk_2
begin_hunk_3_@_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = load ptr, ptr %0, align 8, !tbaa !291, !nonnull !75, !align !119 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !114
  %.not35 = icmp eq ptr %i.c, %i.e
  br i1 %.not35, label %._crit_edge, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68
  br label %.lr.ph38

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %i.h = tail call noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  ret double %i.h

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.loopexit
  %i.i = phi ptr [ %i.am, %.loopexit ], [ %i.b, %.lr.ph38.preheader ]
  %.037 = phi ptr [ %.2, %.loopexit ], [ %i.g, %.lr.ph38.preheader ] ; 3 uses
  %.sroa.019.036 = phi ptr [ %i.al, %.loopexit ], [ %i.c, %.lr.ph38.preheader ] ; 6 uses
  %i.j = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 8 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph38
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !114
  %i.o = ptrtoint ptr %.sroa.019.036 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = trunc i64 %i.r to i32
  %i.t = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %i.s)
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !121  ; 2 uses
  %i.v = load ptr, ptr %.sroa.019.036, align 8, !tbaa !122 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ugt i64 %i.y, 8
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 -16
  %spec.select = select i1 %i.z, ptr %i.aa, ptr %i.v
  %i.ab = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %spec.select)
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !116
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = load ptr, ptr %.sroa.019.036, align 8, !tbaa !116 ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !116
  %.not2930 = icmp eq ptr %i.af, %i.ag
  br i1 %.not2930, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.134 = phi ptr [ %i.ai, %.lr.ph ], [ %.037, %bb.b ] ; 2 uses
  %.0933 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %.01032 = phi ptr [ %.0933, %.lr.ph ], [ %i.ab, %bb.b ]
  %.sroa.011.031 = phi ptr [ %i.aj, %.lr.ph ], [ %i.af, %bb.b ] ; 2 uses
  %i.ah = tail call noundef ptr @_ZNK7msdfgen10EdgeHoldercvPKNS_11EdgeSegmentEEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.011.031) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.134, i64 56 ; 2 uses
  tail call void @_ZN7msdfgen29PerpendicularDistanceSelector7addEdgeERNS_33PerpendicularDistanceSelectorBase9EdgeCacheEPKNS_11EdgeSegmentES6_S6_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %.134, ptr noundef %.01032, ptr noundef %.0933, ptr noundef %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.011.031, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !116
  %.not29 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not29, label %.loopexit, label %.lr.ph, !llvm.loop !289

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph38
  %.2 = phi ptr [ %.037, %.lr.ph38 ], [ %.037, %bb.b ], [ %i.ai, %.lr.ph ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.019.036, i64 24 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !291, !nonnull !75, !align !119 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %.not = icmp eq ptr %i.al, %i.ao
  br i1 %.not, label %._crit_edge, label %.lr.ph38, !llvm.loop !290
}

declare void @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE5resetERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE12edgeSelectorEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

declare noundef double @_ZNK7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEE8distanceEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fsub float %8, %7
  %i.c = fadd float %6, %i.b
  %i.d = fpext float %i.c to double
  %i.e = fsub float %7, %6
  %i.f = fsub float %i.e, %6
  %i.g = fpext float %i.f to double
  %i.h = fpext float %6 to double
  %i.i = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %i.d, double noundef %i.g, double noundef %i.h) ; 2 uses
  %.not118 = icmp sgt i32 %i.i, 0
  br i1 %.not118, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = fcmp ogt float %1, 5.000000e-01
  %i.n = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fcmp olt float %1, 5.000000e-01
  %i.p = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = fcmp olt float %2, %1
  %i.s = select i1 %i.r, float %2, float %1       ; 2 uses
  %i.t = fcmp olt float %1, %2
  %i.u = select i1 %i.t, float %2, float %1       ; 2 uses
  %i.v = fpext float %1 to double                 ; 2 uses
  %i.w = fpext float %2 to double                 ; 2 uses
  %i.x = fcmp ogt double %9, 0.000000e+00
  %i.y = fcmp olt double %9, 1.000000e+00
  %or.cond = and i1 %i.x, %i.y
  %i.z = fcmp ogt double %10, 0.000000e+00
  %i.aa = fcmp olt double %10, 1.000000e+00
  %or.cond4 = and i1 %i.z, %i.aa
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.ab = insertelement <2 x double> poison, double %10, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %9, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50 ; 14 uses
  %i.ah = fcmp ogt double %i.ag, 1.000000e-02
  %i.ai = fcmp olt double %i.ag, f0x3FEFAE147AE147AE
  %or.cond96 = and i1 %i.ah, %i.ai
  br i1 %or.cond96, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.aj = load float, ptr %5, align 4, !tbaa !30
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = load float, ptr %4, align 4, !tbaa !30
  %i.am = fpext float %i.al to double             ; 3 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.ag, double %i.ak, double %i.am)
  %i.ao = load float, ptr %3, align 4, !tbaa !30
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ag, double %i.an, double %i.ap) ; 3 uses
  %i.ar = load <2 x float>, ptr %i.j, align 4, !tbaa !30
  %i.as = fpext <2 x float> %i.ar to <2 x double> ; 3 uses
  %i.at = load <2 x float>, ptr %i.k, align 4, !tbaa !30
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 3 uses
  %i.av = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.aw = fpext <2 x float> %i.av to <2 x double> ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.as, <2 x double> %i.au)
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.aw) ; 3 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt double %i.aq, %i.bb
  %i.bd = select i1 %i.bc, double %i.bb, double %i.aq
  %i.be = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = fcmp olt <2 x double> %i.ba, %i.bf
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.ba, <2 x double> %i.bf ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bi ; 3 uses
  %i.bm = fptrunc double %i.bl to float           ; 13 uses
  %i.bn = fcmp ole double %i.bl, f0x3FE0000010000000 ; 3 uses
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = fcmp oge double %i.bl, f0x3FDFFFFFF0000000 ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.bo
  %or.cond123 = or i1 %or.cond3.i, %or.cond7.i
  br i1 %or.cond123, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fcmp ogt float %i.u, %i.bm
  %i.bs = select i1 %i.br, float %i.bm, float %i.u ; 2 uses
  %i.bt = fcmp olt float %i.s, %i.bs
  %i.bu = select i1 %i.bt, float %i.bs, float %i.s
  %i.bv = fcmp une float %i.bu, %i.bm
  br i1 %i.bv, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bw = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bx = fmul double %i.ag, %i.bw                ; 2 uses
  %i.by = fpext float %i.bm to double             ; 4 uses
  %i.bz = fsub double %i.v, %i.bx
  %i.ca = fcmp ugt double %i.bz, %i.by
  %i.cb = fadd double %i.bx, %i.v
  %i.cc = fcmp ult double %i.cb, %i.by
  %or.cond36.i = or i1 %i.ca, %i.cc
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = fsub nnan double 1.000000e+00, %i.ag
  %i.ce = fmul double %i.cd, %i.bw                ; 2 uses
  %i.cf = fsub double %i.w, %i.ce
  %i.cg = fcmp ugt double %i.cf, %i.by
  %i.ch = fadd double %i.ce, %i.w
  %i.ci = fcmp ult double %i.ch, %i.by
  %or.cond38.i = or i1 %i.cg, %i.ci
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  br i1 %or.cond, label %.cont25, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

.cont25:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %i.cj = fcmp ogt double %9, %i.ag               ; 4 uses
  %. = select i1 %i.cj, double 0.000000e+00, double %9
  %.97 = select i1 %i.cj, double %9, double 1.000000e+00
  %i.ck = call double @llvm.fmuladd.f64(double %9, double %i.ak, double %i.am)
  %i.cl = call double @llvm.fmuladd.f64(double %9, double %i.ck, double %i.ap) ; 3 uses
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.as, <2 x double> %i.au)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.cm, <2 x double> %i.aw) ; 3 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cp = fcmp olt double %i.cl, %i.co
  %i.cq = select i1 %i.cp, double %i.co, double %i.cl
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cq, i64 1 ; 2 uses
  %i.ct = fcmp olt <2 x double> %i.cn, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cn, <2 x double> %i.cs ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cu, i64 1 ; 2 uses
  %i.cx = fcmp olt double %i.cv, %i.cw
  %i.cy = select i1 %i.cx, double %i.cw, double %i.cv
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %.sroa.0.1 = select i1 %i.cj, float %1, float %i.cz ; 7 uses
  %.sroa.8.1 = select i1 %i.cj, float %i.cz, float %2 ; 7 uses
  %i.da = fcmp ogt float %.sroa.0.1, 5.000000e-01
  %i.db = fcmp ogt float %.sroa.8.1, 5.000000e-01
  %or.cond.i100 = and i1 %i.da, %i.db
  %or.cond3.i101 = and i1 %i.bn, %or.cond.i100
  br i1 %or.cond3.i101, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.cont25
  %i.dc = fcmp olt float %.sroa.0.1, 5.000000e-01
  %i.dd = fcmp olt float %.sroa.8.1, 5.000000e-01
  %or.cond5.i102 = and i1 %i.dc, %i.dd
  %or.cond7.i103 = and i1 %i.bo, %or.cond5.i102
  br i1 %or.cond7.i103, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = fcmp olt float %.sroa.8.1, %.sroa.0.1
  %i.dh = select i1 %i.dg, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.di = fcmp olt float %.sroa.0.1, %.sroa.8.1
  %i.dj = select i1 %i.di, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, %i.bm
  %i.dl = select i1 %i.dk, float %i.bm, float %i.dj ; 2 uses
  %i.dm = fcmp olt float %i.dh, %i.dl
  %i.dn = select i1 %i.dm, float %i.dl, float %i.dh
  %i.do = fcmp une float %i.dn, %i.bm
  br i1 %i.do, label %bb.k, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

bb.k:                                             ; preds = %bb.j, %bb.h, %.cont25
  %i.dp = fsub nnan double %i.ag, %.
  %i.dq = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.dr = fmul double %i.dp, %i.dq                ; 2 uses
  %i.ds = fpext float %i.bm to double             ; 4 uses
  %i.dt = fpext float %.sroa.0.1 to double        ; 2 uses
  %i.du = fsub double %i.dt, %i.dr
  %i.dv = fcmp ugt double %i.du, %i.ds
  %i.dw = fadd double %i.dr, %i.dt
  %i.dx = fcmp ult double %i.dw, %i.ds
  %or.cond36.i105 = or i1 %i.dv, %i.dx
  br i1 %or.cond36.i105, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = fsub nnan double %.97, %i.ag
  %i.dz = fmul double %i.dy, %i.dq                ; 2 uses
  %i.ea = fpext float %.sroa.8.1 to double        ; 2 uses
  %i.eb = fsub double %i.ea, %i.dz
  %i.ec = fcmp ugt double %i.eb, %i.ds
  %i.ed = fadd double %i.dz, %i.ea
  %i.ee = fcmp ult double %i.ed, %i.ds
  %or.cond38.i106 = or i1 %i.ec, %i.ee
  %spec.select.i107 = select i1 %or.cond38.i106, i32 3, i32 1
  %i.ef = or i32 %spec.select.i107, %.1.i
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i32 [ %.1.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ 3, %bb.k ], [ %.1.i, %bb.i ], [ %i.ef, %bb.l ], [ %.1.i, %bb.j ] ; 2 uses
  br i1 %or.cond4, label %.cont22, label %bb.r

.cont22:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %i.eg = fcmp ogt double %10, %i.ag              ; 4 uses
  %.98 = select i1 %i.eg, double 0.000000e+00, double %10
  %.99 = select i1 %i.eg, double %10, double 1.000000e+00
  %i.eh = call double @llvm.fmuladd.f64(double %10, double %i.ak, double %i.am)
  %i.ei = call double @llvm.fmuladd.f64(double %10, double %i.eh, double %i.ap) ; 3 uses
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.as, <2 x double> %i.au)
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ej, <2 x double> %i.aw) ; 3 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0 ; 2 uses
  %i.em = fcmp olt double %i.ei, %i.el
  %i.en = select i1 %i.em, double %i.el, double %i.ei
  %i.eo = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1 ; 2 uses
  %i.eq = fcmp olt <2 x double> %i.ek, %i.ep
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ek, <2 x double> %i.ep ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.ag, float noundef %i.bm, i32 noundef %.1)
  br i1 %i.gd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !292

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL22hasLinearArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_ff(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, float noundef %5, float noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = fpext float %5 to double
  %i.b = fsub float %5, %6
  %i.c = fpext float %i.b to double
  %i.d = fdiv double %i.a, %i.c                   ; 7 uses
  %i.e = fcmp ogt double %i.d, 1.000000e-02
  %i.f = fcmp olt double %i.d, f0x3FEFAE147AE147AE
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %3, align 4, !tbaa !30
  %i.h = load float, ptr %4, align 4, !tbaa !30
  %i.i = fsub double 1.000000e+00, %i.d           ; 3 uses
  %i.j = fpext float %i.g to double
  %i.k = fpext float %i.h to double
  %i.l = fmul double %i.d, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.i, double %i.j, double %i.l)
  %i.n = fptrunc double %i.m to float             ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load <2 x float>, ptr %i.o, align 4, !tbaa !30
  %i.r = load <2 x float>, ptr %i.p, align 4, !tbaa !30
  %i.s = fpext <2 x float> %i.q to <2 x double>
  %i.t = fpext <2 x float> %i.r to <2 x double>
  %i.u = insertelement <2 x double> poison, double %i.d, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, %i.t
  %i.x = insertelement <2 x double> poison, double %i.i, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.s, <2 x double> %i.w)
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %i.n
  %i.ad = select i1 %i.ac, float %i.ab, float %i.n
  %i.ae = insertelement <2 x float> poison, float %i.n, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ad, i64 1 ; 2 uses
  %i.ag = fcmp ogt <2 x float> %i.af, %i.aa
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.aa, <2 x float> %i.af ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0 ; 2 uses
  %i.aj = extractelement <2 x float> %i.ah, i64 1 ; 2 uses
  %i.ak = fcmp olt float %i.ai, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ai ; 7 uses
  %i.am = fcmp ogt float %1, 5.000000e-01
  %i.an = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.am, %i.an
  %i.ao = fcmp ole float %i.al, 5.000000e-01
  %or.cond3.i = and i1 %or.cond.i, %i.ao
  br i1 %or.cond3.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = fcmp olt float %1, 5.000000e-01
  %i.aq = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.ap, %i.aq
  %i.ar = fcmp oge float %i.al, 5.000000e-01
  %or.cond7.i = and i1 %or.cond5.i, %i.ar
  br i1 %or.cond7.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !46, !range !74, !noundef !75
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = fcmp olt float %2, %1
  %i.aw = select i1 %i.av, float %2, float %1     ; 2 uses
  %i.ax = fcmp olt float %1, %2
  %i.ay = select i1 %i.ax, float %2, float %1     ; 2 uses
  %i.az = fcmp olt float %i.al, %i.ay
  %i.ba = select i1 %i.az, float %i.al, float %i.ay ; 2 uses
  %i.bb = fcmp olt float %i.aw, %i.ba
  %i.bc = select i1 %i.bb, float %i.ba, float %i.aw
  %i.bd = fcmp une float %i.bc, %i.al
  br i1 %i.bd, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.b
  %i.be = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bf = fmul double %i.d, %i.be                 ; 2 uses
  %i.bg = fpext float %i.al to double             ; 4 uses
  %i.bh = fpext float %1 to double                ; 2 uses
  %i.bi = fsub double %i.bh, %i.bf
  %i.bj = fcmp ugt double %i.bi, %i.bg
  %i.bk = fadd double %i.bf, %i.bh
  %i.bl = fcmp ult double %i.bk, %i.bg
  %or.cond36.i = or i1 %i.bj, %i.bl
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = fmul double %i.i, %i.be                 ; 2 uses
  %i.bn = fpext float %2 to double                ; 2 uses
  %i.bo = fsub double %i.bn, %i.bm
  %i.bp = fcmp ugt double %i.bo, %i.bg
  %i.bq = fadd double %i.bm, %i.bn
  %i.br = fcmp ult double %i.bq, %i.bg
  %or.cond38.i = or i1 %i.bp, %i.br
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ]
  %i.bs = tail call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.d, float noundef %i.al, i32 noundef %.1.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i1 [ %i.bs, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, float noundef %2, i32 noundef %3) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %4 = alloca %"struct.msdfgen::Vector2", align 16 ; 4 uses
  %i.b = and i32 %3, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %3, 2
  %.not33 = icmp eq i32 %i.c, 0
  br i1 %.not33, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load <2 x double>, ptr %i.d, align 8, !tbaa !50
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fmul <2 x double> %i.l, %i.j             ; 3 uses
  %i.n = load <2 x double>, ptr %i.g, align 8, !tbaa !50
  %i.o = fadd <2 x double> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  call void @_ZN7msdfgen11interpolateIfLi4EEEvPT_RKNS_18BitmapConstSectionIS1_XT0_EEENS_7Vector2E(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, double %i.p, double %i.q)
  %i.r = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m)
  %i.s = fsub <2 x double> splat (double 1.000000e+00), %i.r ; 2 uses
  %shift = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.s, %shift ; 2 uses
  %i.t = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !109  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !106  ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !30 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = load float, ptr %i.a, align 16, !tbaa !30 ; 5 uses
  %i.aa = fpext float %i.z to double
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !30 ; 3 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0 ; 4 uses
  %i.ad = fcmp olt float %i.ac, %i.x
  %i.ae = select i1 %i.ad, float %i.ac, float %i.x ; 2 uses
  %i.af = fcmp olt float %i.x, %i.ac
  %i.ag = select i1 %i.af, float %i.ac, float %i.x ; 2 uses
  %i.ah = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %i.ag
  %i.aj = select i1 %i.ai, float %i.ah, float %i.ag ; 2 uses
  %i.ak = fcmp olt float %i.ae, %i.aj
  %i.al = select i1 %i.ak, float %i.aj, float %i.ae ; 2 uses
  %i.am = fsub float %i.al, %i.x
  %i.an = fpext float %i.am to double
  %i.ao = call double @llvm.fmuladd.f64(double %i.t, double %i.an, double %i.aa)
  %i.ap = fptrunc double %i.ao to float           ; 3 uses
  %i.aq = load <2 x float>, ptr %i.i, align 4, !tbaa !30 ; 3 uses
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  %i.as = insertelement <2 x float> poison, float %i.al, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fsub <2 x float> %i.at, %i.ab
  %i.av = fpext <2 x float> %i.au to <2 x double>
  %i.aw = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.av, <2 x double> %i.ar)
  %i.ay = fptrunc <2 x double> %i.ax to <2 x float> ; 3 uses
  %i.az = extractelement <2 x float> %i.aq, i64 0 ; 4 uses
  %i.ba = fcmp olt float %i.az, %i.z
  %i.bb = select i1 %i.ba, float %i.az, float %i.z ; 2 uses
  %i.bc = fcmp olt float %i.z, %i.az
  %i.bd = select i1 %i.bc, float %i.az, float %i.z ; 2 uses
  %i.be = extractelement <2 x float> %i.aq, i64 1 ; 2 uses
  %i.bf = fcmp olt float %i.be, %i.bd
  %i.bg = select i1 %i.bf, float %i.be, float %i.bd ; 2 uses
  %i.bh = fcmp olt float %i.bb, %i.bg
  %i.bi = select i1 %i.bh, float %i.bg, float %i.bb
  %i.bj = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bk = fcmp ogt float %i.bj, %i.ap
  %i.bl = select i1 %i.bk, float %i.bj, float %i.ap
  %i.bm = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bl, i64 1 ; 2 uses
  %i.bo = fcmp ogt <2 x float> %i.bn, %i.ay
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.ay, <2 x float> %i.bn ; 2 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.br = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bs = fcmp olt float %i.bq, %i.br
  %i.bt = select i1 %i.bs, float %i.br, float %i.bq
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 168
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.bw = load <2 x double>, ptr %i.u, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.by = load <2 x double>, ptr %i.bx, align 8, !tbaa !50
  %i.bz = fmul <2 x double> %i.m, %i.by
  %i.ca = fadd <2 x double> %i.bw, %i.bz
  store <2 x double> %i.ca, ptr %4, align 16
  %i.cb = call noundef double @_ZN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEE8distanceERKNS_7Vector2E(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.cc = call noundef double @_ZNK7msdfgen15DistanceMappingclEd(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, double noundef %i.cb)
  %i.cd = fptrunc double %i.cc to float           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !109
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 200
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !105
  %i.ch = fsub float %i.bt, %i.cd
  %i.ci = call float @llvm.fabs.f32(float %i.ch)
  %i.cj = fpext float %i.ci to double
  %i.ck = fmul double %i.cg, %i.cj
  %i.cl = fsub float %i.bi, %i.cd
  %i.cm = call float @llvm.fabs.f32(float %i.cl)
  %i.cn = fpext float %i.cm to double
  %i.co = fcmp olt double %i.ck, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.b ], [ %i.co, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN7msdfgenL24hasDiagonalArtifactInnerINS_20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierEEEbRKT_ffPKfS9_S9_fffdd(ptr noundef nonnull align 8 dereferenceable(40) %0, float noundef %1, float noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, float noundef %6, float noundef %7, float noundef %8, double noundef %9, double noundef %10) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fsub float %8, %7
  %i.c = fadd float %6, %i.b
  %i.d = fpext float %i.c to double
  %i.e = fsub float %7, %6
  %i.f = fsub float %i.e, %6
  %i.g = fpext float %i.f to double
  %i.h = fpext float %6 to double
  %i.i = call noundef i32 @_ZN7msdfgen14solveQuadraticEPdddd(ptr noundef nonnull %i.a, double noundef %i.d, double noundef %i.g, double noundef %i.h) ; 2 uses
  %.not118 = icmp sgt i32 %i.i, 0
  br i1 %.not118, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.m = fcmp ogt float %1, 5.000000e-01
  %i.n = fcmp ogt float %2, 5.000000e-01
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = fcmp olt float %1, 5.000000e-01
  %i.p = fcmp olt float %2, 5.000000e-01
  %or.cond5.i = and i1 %i.o, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = fcmp olt float %2, %1
  %i.s = select i1 %i.r, float %2, float %1       ; 2 uses
  %i.t = fcmp olt float %1, %2
  %i.u = select i1 %i.t, float %2, float %1       ; 2 uses
  %i.v = fpext float %1 to double                 ; 2 uses
  %i.w = fpext float %2 to double                 ; 2 uses
  %i.x = fcmp ogt double %9, 0.000000e+00
  %i.y = fcmp olt double %9, 1.000000e+00
  %or.cond = and i1 %i.x, %i.y
  %i.z = fcmp ogt double %10, 0.000000e+00
  %i.aa = fcmp olt double %10, 1.000000e+00
  %or.cond4 = and i1 %i.z, %i.aa
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.ab = insertelement <2 x double> poison, double %10, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = insertelement <2 x double> poison, double %9, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !50 ; 14 uses
  %i.ah = fcmp ogt double %i.ag, 1.000000e-02
  %i.ai = fcmp olt double %i.ag, f0x3FEFAE147AE147AE
  %or.cond96 = and i1 %i.ah, %i.ai
  br i1 %or.cond96, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.aj = load float, ptr %5, align 4, !tbaa !30
  %i.ak = fpext float %i.aj to double             ; 3 uses
  %i.al = load float, ptr %4, align 4, !tbaa !30
  %i.am = fpext float %i.al to double             ; 3 uses
  %i.an = call double @llvm.fmuladd.f64(double %i.ag, double %i.ak, double %i.am)
  %i.ao = load float, ptr %3, align 4, !tbaa !30
  %i.ap = fpext float %i.ao to double             ; 3 uses
  %i.aq = call double @llvm.fmuladd.f64(double %i.ag, double %i.an, double %i.ap) ; 3 uses
  %i.ar = load <2 x float>, ptr %i.j, align 4, !tbaa !30
  %i.as = fpext <2 x float> %i.ar to <2 x double> ; 3 uses
  %i.at = load <2 x float>, ptr %i.k, align 4, !tbaa !30
  %i.au = fpext <2 x float> %i.at to <2 x double> ; 3 uses
  %i.av = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.aw = fpext <2 x float> %i.av to <2 x double> ; 3 uses
  %i.ax = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.as, <2 x double> %i.au)
  %i.ba = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.az, <2 x double> %i.aw) ; 3 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0 ; 2 uses
  %i.bc = fcmp olt double %i.aq, %i.bb
  %i.bd = select i1 %i.bc, double %i.bb, double %i.aq
  %i.be = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1 ; 2 uses
  %i.bg = fcmp olt <2 x double> %i.ba, %i.bf
  %i.bh = select <2 x i1> %i.bg, <2 x double> %i.ba, <2 x double> %i.bf ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bi ; 3 uses
  %i.bm = fptrunc double %i.bl to float           ; 13 uses
  %i.bn = fcmp ole double %i.bl, f0x3FE0000010000000 ; 3 uses
  %or.cond3.i = and i1 %or.cond.i, %i.bn
  %i.bo = fcmp oge double %i.bl, f0x3FDFFFFFF0000000 ; 3 uses
  %or.cond7.i = and i1 %or.cond5.i, %i.bo
  %or.cond123 = or i1 %or.cond3.i, %or.cond7.i
  br i1 %or.cond123, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.br = fcmp ogt float %i.u, %i.bm
  %i.bs = select i1 %i.br, float %i.bm, float %i.u ; 2 uses
  %i.bt = fcmp olt float %i.s, %i.bs
  %i.bu = select i1 %i.bt, float %i.bs, float %i.s
  %i.bv = fcmp une float %i.bu, %i.bm
  br i1 %i.bv, label %bb.f, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.bw = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.bx = fmul double %i.ag, %i.bw                ; 2 uses
  %i.by = fpext float %i.bm to double             ; 4 uses
  %i.bz = fsub double %i.v, %i.bx
  %i.ca = fcmp ugt double %i.bz, %i.by
  %i.cb = fadd double %i.bx, %i.v
  %i.cc = fcmp ult double %i.cb, %i.by
  %or.cond36.i = or i1 %i.ca, %i.cc
  br i1 %or.cond36.i, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = fsub nnan double 1.000000e+00, %i.ag
  %i.ce = fmul double %i.cd, %i.bw                ; 2 uses
  %i.cf = fsub double %i.w, %i.ce
  %i.cg = fcmp ugt double %i.cf, %i.by
  %i.ch = fadd double %i.ce, %i.w
  %i.ci = fcmp ult double %i.ch, %i.by
  %or.cond38.i = or i1 %i.cg, %i.ci
  %spec.select.i = select i1 %or.cond38.i, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i32 [ 3, %bb.f ], [ 0, %bb.d ], [ %spec.select.i, %bb.g ], [ 0, %bb.e ] ; 4 uses
  br i1 %or.cond, label %.cont25, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

.cont25:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %i.cj = fcmp ogt double %9, %i.ag               ; 4 uses
  %. = select i1 %i.cj, double 0.000000e+00, double %9
  %.97 = select i1 %i.cj, double %9, double 1.000000e+00
  %i.ck = call double @llvm.fmuladd.f64(double %9, double %i.ak, double %i.am)
  %i.cl = call double @llvm.fmuladd.f64(double %9, double %i.ck, double %i.ap) ; 3 uses
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.as, <2 x double> %i.au)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.cm, <2 x double> %i.aw) ; 3 uses
  %i.co = extractelement <2 x double> %i.cn, i64 0 ; 2 uses
  %i.cp = fcmp olt double %i.cl, %i.co
  %i.cq = select i1 %i.cp, double %i.co, double %i.cl
  %i.cr = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cq, i64 1 ; 2 uses
  %i.ct = fcmp olt <2 x double> %i.cn, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x double> %i.cn, <2 x double> %i.cs ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 0 ; 2 uses
  %i.cw = extractelement <2 x double> %i.cu, i64 1 ; 2 uses
  %i.cx = fcmp olt double %i.cv, %i.cw
  %i.cy = select i1 %i.cx, double %i.cw, double %i.cv
  %i.cz = fptrunc double %i.cy to float           ; 2 uses
  %.sroa.0.1 = select i1 %i.cj, float %1, float %i.cz ; 7 uses
  %.sroa.8.1 = select i1 %i.cj, float %i.cz, float %2 ; 7 uses
  %i.da = fcmp ogt float %.sroa.0.1, 5.000000e-01
  %i.db = fcmp ogt float %.sroa.8.1, 5.000000e-01
  %or.cond.i100 = and i1 %i.da, %i.db
  %or.cond3.i101 = and i1 %i.bn, %or.cond.i100
  br i1 %or.cond3.i101, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.cont25
  %i.dc = fcmp olt float %.sroa.0.1, 5.000000e-01
  %i.dd = fcmp olt float %.sroa.8.1, 5.000000e-01
  %or.cond5.i102 = and i1 %i.dc, %i.dd
  %or.cond7.i103 = and i1 %i.bo, %or.cond5.i102
  br i1 %or.cond7.i103, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dg = fcmp olt float %.sroa.8.1, %.sroa.0.1
  %i.dh = select i1 %i.dg, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.di = fcmp olt float %.sroa.0.1, %.sroa.8.1
  %i.dj = select i1 %i.di, float %.sroa.8.1, float %.sroa.0.1 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, %i.bm
  %i.dl = select i1 %i.dk, float %i.bm, float %i.dj ; 2 uses
  %i.dm = fcmp olt float %i.dh, %i.dl
  %i.dn = select i1 %i.dm, float %i.dl, float %i.dh
  %i.do = fcmp une float %i.dn, %i.bm
  br i1 %i.do, label %bb.k, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

bb.k:                                             ; preds = %bb.j, %bb.h, %.cont25
  %i.dp = fsub nnan double %i.ag, %.
  %i.dq = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.dr = fmul double %i.dp, %i.dq                ; 2 uses
  %i.ds = fpext float %i.bm to double             ; 4 uses
  %i.dt = fpext float %.sroa.0.1 to double        ; 2 uses
  %i.du = fsub double %i.dt, %i.dr
  %i.dv = fcmp ugt double %i.du, %i.ds
  %i.dw = fadd double %i.dr, %i.dt
  %i.dx = fcmp ult double %i.dw, %i.ds
  %or.cond36.i105 = or i1 %i.dv, %i.dx
  br i1 %or.cond36.i105, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dy = fsub nnan double %.97, %i.ag
  %i.dz = fmul double %i.dy, %i.dq                ; 2 uses
  %i.ea = fpext float %.sroa.8.1 to double        ; 2 uses
  %i.eb = fsub double %i.ea, %i.dz
  %i.ec = fcmp ugt double %i.eb, %i.ds
  %i.ed = fadd double %i.dz, %i.ea
  %i.ee = fcmp ult double %i.ed, %i.ds
  %or.cond38.i106 = or i1 %i.ec, %i.ee
  %spec.select.i107 = select i1 %or.cond38.i106, i32 3, i32 1
  %i.ef = or i32 %spec.select.i107, %.1.i
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit
  %.0 = phi i32 [ %.1.i, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit ], [ 3, %bb.k ], [ %.1.i, %bb.i ], [ %i.ef, %bb.l ], [ %.1.i, %bb.j ] ; 2 uses
  br i1 %or.cond4, label %.cont22, label %bb.r

.cont22:                                          ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %i.eg = fcmp ogt double %10, %i.ag              ; 4 uses
  %.98 = select i1 %i.eg, double 0.000000e+00, double %10
  %.99 = select i1 %i.eg, double %10, double 1.000000e+00
  %i.eh = call double @llvm.fmuladd.f64(double %10, double %i.ak, double %i.am)
  %i.ei = call double @llvm.fmuladd.f64(double %10, double %i.eh, double %i.ap) ; 3 uses
  %i.ej = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.as, <2 x double> %i.au)
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ej, <2 x double> %i.aw) ; 3 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0 ; 2 uses
  %i.em = fcmp olt double %i.ei, %i.el
  %i.en = select i1 %i.em, double %i.el, double %i.ei
  %i.eo = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1 ; 2 uses
  %i.eq = fcmp olt <2 x double> %i.ek, %i.ep
  %i.er = select <2 x i1> %i.eq, <2 x double> %i.ek, <2 x double> %i.ep ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  %i.et = extractelement <2 x double> %i.er, i64 1 ; 2 uses
  %i.eu = fcmp olt double %i.es, %i.et
  %i.ev = select i1 %i.eu, double %i.et, double %i.es
  %i.ew = fptrunc double %i.ev to float           ; 2 uses
  %.sroa.0.0 = select i1 %i.eg, float %1, float %i.ew ; 7 uses
  %.sroa.8.0 = select i1 %i.eg, float %i.ew, float %2 ; 7 uses
  %i.ex = fcmp ogt float %.sroa.0.0, 5.000000e-01
  %i.ey = fcmp ogt float %.sroa.8.0, 5.000000e-01
  %or.cond.i109 = and i1 %i.ex, %i.ey
  %or.cond3.i110 = and i1 %i.bn, %or.cond.i109
  br i1 %or.cond3.i110, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.cont22
  %i.ez = fcmp olt float %.sroa.0.0, 5.000000e-01
  %i.fa = fcmp olt float %.sroa.8.0, 5.000000e-01
  %or.cond5.i111 = and i1 %i.ez, %i.fa
  %or.cond7.i112 = and i1 %i.bo, %or.cond5.i111
  br i1 %or.cond7.i112, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fb = load i8, ptr %i.q, align 8, !tbaa !46, !range !74, !noundef !75
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = fcmp olt float %.sroa.8.0, %.sroa.0.0
  %i.fe = select i1 %i.fd, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.ff = fcmp olt float %.sroa.0.0, %.sroa.8.0
  %i.fg = select i1 %i.ff, float %.sroa.8.0, float %.sroa.0.0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %i.bm
  %i.fi = select i1 %i.fh, float %i.bm, float %i.fg ; 2 uses
  %i.fj = fcmp olt float %i.fe, %i.fi
  %i.fk = select i1 %i.fj, float %i.fi, float %i.fe
  %i.fl = fcmp une float %i.fk, %i.bm
  br i1 %i.fl, label %bb.p, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

bb.p:                                             ; preds = %bb.o, %bb.m, %.cont22
  %i.fm = fsub nnan double %i.ag, %.98
  %i.fn = load double, ptr %0, align 8, !tbaa !45 ; 2 uses
  %i.fo = fmul double %i.fm, %i.fn                ; 2 uses
  %i.fp = fpext float %i.bm to double             ; 4 uses
  %i.fq = fpext float %.sroa.0.0 to double        ; 2 uses
  %i.fr = fsub double %i.fq, %i.fo
  %i.fs = fcmp ugt double %i.fr, %i.fp
  %i.ft = fadd double %i.fo, %i.fq
  %i.fu = fcmp ult double %i.ft, %i.fp
  %or.cond36.i114 = or i1 %i.fs, %i.fu
  br i1 %or.cond36.i114, label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = fsub nnan double %.99, %i.ag
  %i.fw = fmul double %i.fv, %i.fn                ; 2 uses
  %i.fx = fpext float %.sroa.8.0 to double        ; 2 uses
  %i.fy = fsub double %i.fx, %i.fw
  %i.fz = fcmp ugt double %i.fy, %i.fp
  %i.ga = fadd double %i.fw, %i.fx
  %i.gb = fcmp ult double %i.ga, %i.fp
  %or.cond38.i115 = or i1 %i.fz, %i.gb
  %spec.select.i116 = select i1 %or.cond38.i115, i32 3, i32 1
  br label %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117

_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.1.i113 = phi i32 [ 3, %bb.p ], [ 0, %bb.n ], [ %spec.select.i116, %bb.q ], [ 0, %bb.o ]
  %i.gc = or i32 %.1.i113, %.0
  br label %bb.r

bb.r:                                             ; preds = %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108
  %.1 = phi i32 [ %i.gc, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit117 ], [ %.0, %_ZNK7msdfgen22BaseArtifactClassifier9rangeTestEdddfff.exit108 ]
  %i.gd = call noundef zeroext i1 @_ZNK7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifier8evaluateEdfi(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %i.ag, float noundef %i.bm, i32 noundef %.1)
  br i1 %i.gd, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.b, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !293

.critedge:                                        ; preds = %bb.r, %bb.s, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.s ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i1 %.not.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 float", !8, i64 0}
!10 = !{!"_ZTSN7msdfgen16YAxisOrientationE", !4, i64 0}
!11 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi3EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!12 = !{!11, !10, i64 20}
!13 = !{!"p1 omnipotent char", !8, i64 0}
!14 = !{!"_ZTSN7msdfgen13BitmapSectionIhLi1EEE", !13, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!15 = !{!14, !10, i64 20}
!16 = !{!14, !5, i64 16}
!17 = !{!14, !5, i64 12}
!18 = !{!14, !13, i64 0}
!19 = !{!"double", !4, i64 0}
!20 = !{!"_ZTSN7msdfgen7Vector2E", !19, i64 0, !19, i64 8}
!21 = !{!20, !19, i64 0}
!22 = !{!20, !19, i64 8}
!23 = !{!11, !5, i64 12}
!24 = !{!11, !5, i64 8}
!25 = !{!11, !9, i64 0}
!26 = !{!11, !5, i64 16}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.unswitch.partial.disable"}
!29 = !{!"float", !4, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!4, !4, i64 0}
!32 = !{!"_ZTSN7msdfgen18BitmapConstSectionIfLi4EEE", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !10, i64 20}
!33 = !{!32, !10, i64 20}
!34 = !{!32, !5, i64 12}
!35 = !{!32, !5, i64 8}
!36 = !{!32, !9, i64 0}
!37 = !{!32, !5, i64 16}
!38 = !{!"_ZTSN7msdfgen10ProjectionE", !20, i64 0, !20, i64 16}
!39 = !{!"_ZTSN7msdfgen15DistanceMappingE", !19, i64 0, !19, i64 8}
!40 = !{!"_ZTSN7msdfgen17SDFTransformationE", !38, i64 0, !39, i64 32}
!41 = !{!"_ZTSN7msdfgen19MSDFErrorCorrectionE", !14, i64 0, !40, i64 24, !19, i64 72, !19, i64 80}
!42 = !{!41, !19, i64 72}
!43 = !{!"bool", !4, i64 0}
!44 = !{!"_ZTSN7msdfgen22BaseArtifactClassifierE", !19, i64 0, !43, i64 8}
!45 = !{!44, !19, i64 0}
!46 = !{!44, !43, i64 8}
!47 = !{!41, !19, i64 80}
!48 = !{!"p1 _ZTSN7msdfgen5ShapeE", !8, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!19, !19, i64 0}
!51 = !{!9, !9, i64 0}
!52 = !{!5, !5, i64 0}
!53 = !{!10, !10, i64 0}
!54 = !{i64 0, i64 8, !51, i64 8, i64 4, !52, i64 12, i64 4, !52, i64 16, i64 4, !52, i64 20, i64 4, !53}
!55 = !{!"_ZTSN7msdfgen14SignedDistanceE", !19, i64 0, !19, i64 8}
!56 = !{!"p1 _ZTSN7msdfgen11EdgeSegmentE", !8, i64 0}
!57 = !{!"_ZTSN7msdfgen33PerpendicularDistanceSelectorBaseE", !55, i64 0, !19, i64 16, !19, i64 24, !56, i64 32, !19, i64 40}
!58 = !{!"_ZTSN7msdfgen29PerpendicularDistanceSelectorE", !57, i64 0, !20, i64 48}
!59 = !{!"_ZTSN7msdfgen21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEE", !58, i64 0}
!60 = !{!"p1 _ZTSN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheE", !8, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIN7msdfgen33PerpendicularDistanceSelectorBase9EdgeCacheESaIS2_EE", !63, i64 0}
!65 = !{!"_ZTSN7msdfgen19ShapeDistanceFinderINS_21SimpleContourCombinerINS_29PerpendicularDistanceSelectorEEEEE", !48, i64 0, !59, i64 8, !64, i64 72}
!66 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEE", !20, i64 0, !20, i64 16, !9, i64 32, !43, i64 40, !65, i64 48, !11, i64 144, !39, i64 168, !20, i64 184, !19, i64 200}
!67 = !{!66, !19, i64 200}
!68 = !{!61, !60, i64 0}
!69 = !{!61, !60, i64 16}
!70 = !{!66, !9, i64 32}
!71 = !{!"p1 _ZTSN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EEE", !8, i64 0}
!72 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi3EE18ArtifactClassifierE", !44, i64 0, !71, i64 16, !20, i64 24}
!73 = !{!72, !71, i64 16}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEE", !20, i64 0, !20, i64 16, !9, i64 32, !43, i64 40, !65, i64 48, !32, i64 144, !39, i64 168, !20, i64 184, !19, i64 200}
!77 = !{!76, !19, i64 200}
!78 = !{!76, !9, i64 32}
!79 = !{!"p1 _ZTSN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EEE", !8, i64 0}
!80 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_21SimpleContourCombinerELi4EE18ArtifactClassifierE", !44, i64 0, !79, i64 16, !20, i64 24}
!81 = !{!80, !79, i64 16}
!82 = !{!"p1 int", !8, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !82, i64 0, !82, i64 8, !82, i64 16}
!84 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !83, i64 0}
!85 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !84, i64 0}
!86 = !{!"_ZTSSt6vectorIiSaIiEE", !85, i64 0}
!87 = !{!"p1 _ZTSN7msdfgen29PerpendicularDistanceSelectorE", !8, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN7msdfgen29PerpendicularDistanceSelectorESaIS1_EE", !90, i64 0}
!92 = !{!"_ZTSN7msdfgen26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEE", !20, i64 0, !86, i64 16, !91, i64 40}
!93 = !{!"_ZTSN7msdfgen19ShapeDistanceFinderINS_26OverlappingContourCombinerINS_29PerpendicularDistanceSelectorEEEEE", !48, i64 0, !92, i64 8, !64, i64 72}
!94 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEE", !20, i64 0, !20, i64 16, !9, i64 32, !43, i64 40, !93, i64 48, !11, i64 144, !39, i64 168, !20, i64 184, !19, i64 200}
!95 = !{!94, !19, i64 200}
!96 = !{!88, !87, i64 0}
!97 = !{!88, !87, i64 16}
!98 = !{!83, !82, i64 0}
!99 = !{!83, !82, i64 16}
!100 = !{!94, !9, i64 32}
!101 = !{!"p1 _ZTSN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EEE", !8, i64 0}
!102 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi3EE18ArtifactClassifierE", !44, i64 0, !101, i64 16, !20, i64 24}
!103 = !{!102, !101, i64 16}
!104 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEE", !20, i64 0, !20, i64 16, !9, i64 32, !43, i64 40, !93, i64 48, !32, i64 144, !39, i64 168, !20, i64 184, !19, i64 200}
!105 = !{!104, !19, i64 200}
!106 = !{!104, !9, i64 32}
!107 = !{!"p1 _ZTSN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EEE", !8, i64 0}
!108 = !{!"_ZTSN7msdfgen20ShapeDistanceCheckerINS_26OverlappingContourCombinerELi4EE18ArtifactClassifierE", !44, i64 0, !107, i64 16, !20, i64 24}
!109 = !{!108, !107, i64 16}
!110 = !{!41, !10, i64 20}
!111 = !{!41, !5, i64 16}
!112 = !{!41, !13, i64 0}
!113 = !{!"p1 _ZTSN7msdfgen7ContourE", !8, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!"p1 _ZTSN7msdfgen10EdgeHolderE", !8, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!41, !5, i64 8}
!118 = !{!41, !5, i64 12}
!119 = !{i64 8}
end_hunk_3
