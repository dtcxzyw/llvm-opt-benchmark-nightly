Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bundle?download=true
inline.NumInlined: 411
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK2cv4usac31RelativePoseJacobianAccumulator8residualERKNS0_10CameraPoseE:bb.a
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double 0.000000e+00, double 0.000000e+00)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load double, ptr %i.k, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load double, ptr %i.m, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.o = load <2 x double>, ptr %i.c, align 8, !tbaa !9, !noalias !86 ; 3 uses
  %i.p = load double, ptr %i.b, align 8, !tbaa !9, !noalias !86 ; 3 uses
  %i.q = fneg double %i.p                         ; 2 uses
  %i.r = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.s = fneg double %i.r                         ; 3 uses
  %i.t = load <2 x double>, ptr %1, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.v = load <2 x double>, ptr %i.f, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.x = load <2 x double>, ptr %i.g, align 8, !tbaa !9, !noalias !87 ; 3 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.z = tail call double @llvm.fmuladd.f64(double %i.q, double %i.l, double %i.j)
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.r, double %i.n, double %i.z)
  %i.ab = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 poison>
  %i.ac = shufflevector <4 x double> <double 0.000000e+00, double 0.000000e+00, double poison, double 0.000000e+00>, <4 x double> %i.ab, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.ad = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.u, <4 x double> %i.ac, <4 x double> zeroinitializer)
  %i.ae = insertelement <4 x double> <double poison, double 0.000000e+00, double poison, double poison>, double %i.q, i64 0
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.ag = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.af, <4 x double> %i.w, <4 x double> %i.ad)
  %i.ah = insertelement <2 x double> %i.o, double %i.e, i64 1
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.aj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ai, <4 x double> %i.y, <4 x double> %i.ag)
  %i.ak = extractelement <2 x double> %i.t, i64 1 ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.p, double %i.ak, double 0.000000e+00)
  %i.am = extractelement <2 x double> %i.v, i64 1 ; 2 uses
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double 0.000000e+00, double %i.al)
  %i.ao = extractelement <2 x double> %i.x, i64 1 ; 2 uses
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ao, double %i.an)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.p, double %i.i, double 0.000000e+00)
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.l, double 0.000000e+00, double %i.aq)
  %i.as = tail call double @llvm.fmuladd.f64(double %i.e, double %i.n, double %i.ar)
  %i.at = extractelement <2 x double> %i.t, i64 0
  %i.au = tail call double @llvm.fmuladd.f64(double %i.s, double %i.at, double 0.000000e+00)
  %i.av = extractelement <2 x double> %i.v, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.d, double %i.av, double %i.au)
  %i.ax = extractelement <2 x double> %i.x, i64 0
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double 0.000000e+00, double %i.aw)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.s, double %i.ak, double 0.000000e+00)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.d, double %i.am, double %i.az)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ao, double 0.000000e+00, double %i.ba)
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.s, double %i.i, double 0.000000e+00)
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.d, double %i.l, double %i.bc)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.n, double 0.000000e+00, double %i.bd)
  %i.bf = fptrunc double %i.aa to float           ; 2 uses
  %i.bg = fptrunc <4 x double> %i.aj to <4 x float> ; 4 uses
  %i.bh = fptrunc double %i.ap to float           ; 2 uses
  %i.bi = fptrunc double %i.as to float           ; 2 uses
  %i.bj = fptrunc double %i.ay to float           ; 4 uses
  %i.bk = fptrunc double %i.bb to float           ; 4 uses
  %i.bl = fptrunc double %i.be to float           ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !20 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !42 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43, !nonnull !38, !align !39 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cd = load double, ptr %i.cc, align 8         ; 2 uses
  %wide.trip.count67 = zext nneg i32 %i.bq to i64 ; 2 uses
  br i1 %i.bx, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ce = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.cf = shufflevector <4 x float> %i.bg, <4 x float> %i.ce, <4 x i32> <i32 3, i32 2, i32 4, i32 4>
  %i.cg = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.ch = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.ci = shufflevector <4 x float> %i.bg, <4 x float> %i.ch, <4 x i32> <i32 3, i32 2, i32 4, i32 4>
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %.05759.us = phi double [ %i.dx, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph.split.us.preheader ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv64
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !26
  %i.cl = shl nsw i32 %i.ck, 2
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.cm ; 4 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  %i.cq = getelementptr i8, ptr %i.cn, i64 12
  %i.cr = load <4 x float>, ptr %i.cn, align 4, !tbaa !45 ; 3 uses
  %i.cs = load float, ptr %i.cq, align 4, !tbaa !45
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !45
  %i.cu = load float, ptr %i.co, align 4, !tbaa !45
  %i.cv = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.cw = fmul <4 x float> %i.cv, %i.ci
  %i.cx = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.cx, <4 x float> %i.cw) ; 4 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 0
  %i.da = fadd float %i.cz, %i.bf                 ; 3 uses
  %i.db = extractelement <4 x float> %i.cy, i64 2
  %i.dc = fadd float %i.db, %i.bi                 ; 3 uses
  %i.dd = extractelement <4 x float> %i.cy, i64 1
  %i.de = fadd float %i.dd, %i.bj                 ; 2 uses
  %i.df = extractelement <4 x float> %i.cy, i64 3
  %i.dg = fadd float %i.df, %i.bk                 ; 2 uses
  %i.dh = fmul float %i.cs, %i.dc
  %i.di = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.da, float %i.dh)
  %i.dj = extractelement <4 x float> %i.cr, i64 0
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.dj, float %i.di)
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.cu, float %i.dk)
  %i.dm = fadd float %i.dl, %i.bl                 ; 2 uses
  %i.dn = fmul float %i.dm, %i.dm
  %i.do = fmul float %i.dc, %i.dc
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.do)
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dp)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.dq)
  %i.ds = fdiv float %i.dn, %i.dr
  %i.dt = fpext float %i.ds to double             ; 2 uses
  %i.du = fcmp ogt double %i.cb, %i.dt
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.cd, double -1.000000e+00)
  %i.dw = select i1 %i.du, double %i.dv, double 0.000000e+00
  %i.dx = fadd double %.05759.us, %i.dw           ; 2 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.057.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.dx, %.lr.ph.split.us ], [ %i.fo, %.lr.ph.split ]
  ret double %.057.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.05759 = phi double [ %i.fo, %.lr.ph.split ], [ 0.000000e+00, %.lr.ph.split.preheader ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !26
  %i.ea = shl nsw i32 %i.dz, 2
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.eb ; 4 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 4
  %i.ee = getelementptr i8, ptr %i.ec, i64 8
  %i.ef = getelementptr i8, ptr %i.ec, i64 12
  %i.eg = load <4 x float>, ptr %i.ec, align 4, !tbaa !45 ; 3 uses
  %i.eh = load float, ptr %i.ef, align 4, !tbaa !45
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !45
  %i.ej = load float, ptr %i.ed, align 4, !tbaa !45
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.el = fmul <4 x float> %i.ek, %i.cf
  %i.em = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.en = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cg, <4 x float> %i.em, <4 x float> %i.el) ; 4 uses
  %i.eo = extractelement <4 x float> %i.en, i64 0
  %i.ep = fadd float %i.eo, %i.bf                 ; 3 uses
  %i.eq = extractelement <4 x float> %i.en, i64 2
  %i.er = fadd float %i.eq, %i.bi                 ; 3 uses
  %i.es = extractelement <4 x float> %i.en, i64 1
  %i.et = fadd float %i.es, %i.bj                 ; 2 uses
  %i.eu = extractelement <4 x float> %i.en, i64 3
  %i.ev = fadd float %i.eu, %i.bk                 ; 2 uses
  %i.ew = fmul float %i.eh, %i.er
  %i.ex = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ep, float %i.ew)
  %i.ey = extractelement <4 x float> %i.eg, i64 0
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.ey, float %i.ex)
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.ej, float %i.ez)
  %i.fb = fadd float %i.fa, %i.bl                 ; 2 uses
  %i.fc = fmul float %i.fb, %i.fb
  %i.fd = fmul float %i.er, %i.er
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.fd)
  %i.ff = tail call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fe)
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.ff)
  %i.fh = fdiv float %i.fc, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !9
  %i.fk = fpext float %i.fh to double             ; 2 uses
  %i.fl = fcmp ogt double %i.cb, %i.fk
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.cd, double -1.000000e+00)
  %i.fn = select i1 %i.fl, double %i.fm, double 0.000000e+00
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fn, double %.05759) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !85
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv4usac31RelativePoseJacobianAccumulator10accumulateERKNS0_10CameraPoseERNS_4MatxIdLi5ELi5EEERNS5_IdLi5ELi1EEERNS5_IdLi3ELi2EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !9 ; 6 uses
  %i.g = extractelement <2 x double> %i.f, i64 0  ; 6 uses
  %i.h = tail call noundef double @llvm.fabs.f64(double %i.g) ; 2 uses
  %i.i = load <2 x double>, ptr %i.e, align 8, !tbaa !9 ; 10 uses
  %i.j = extractelement <2 x double> %i.i, i64 0  ; 4 uses
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.j) ; 2 uses
  %i.l = fcmp olt double %i.h, %i.k
  %i.m = extractelement <2 x double> %i.i, i64 1  ; 5 uses
  %i.n = tail call noundef double @llvm.fabs.f64(double %i.m) ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = fcmp olt double %i.h, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = fmul double %i.m, -0.000000e+00
  %i.q = fmul double %i.g, 0.000000e+00
  %i.r = fsub double %i.m, %i.q
  %i.s = fneg double %i.j
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.p, i64 1
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> zeroinitializer, <2 x double> %i.u) ; 2 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x double> %i.w, double %i.r, i64 1
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = fneg double %i.g
  %i.z = fmul <2 x double> %i.i, <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %shift = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.i, %shift ; 2 uses
  %i.aa = shufflevector <2 x double> %i.i, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> zeroinitializer, <2 x double> %i.ac) ; 2 uses
  %i.ae = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.ad, <2 x i32> <i32 0, i32 2>
  %i.af = shufflevector <2 x double> %i.ad, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

bb.e:                                             ; preds = %bb.a
  %i.ag = fcmp olt double %i.k, %i.n
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = fneg double %i.m
  %i.ai = fmul double %i.g, -0.000000e+00
  %i.aj = fmul double %i.j, 0.000000e+00
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> zeroinitializer, <2 x double> %i.al) ; 2 uses
  %i.an = fsub double %i.g, %i.aj
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 0
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = fneg double %i.g
  %i.ar = fmul <2 x double> %i.i, <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %shift394 = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop395 = fsub <2 x double> %i.i, %shift394 ; 2 uses
  %i.as = shufflevector <2 x double> %i.i, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  %i.at = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> %i.ar, <2 x i32> <i32 0, i32 2>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> zeroinitializer, <2 x double> %i.au) ; 2 uses
  %i.aw = shufflevector <2 x double> %foldExtExtBinop395, <2 x double> %i.av, <2 x i32> <i32 0, i32 2>
  %i.ax = shufflevector <2 x double> %i.av, <2 x double> %foldExtExtBinop395, <2 x i32> <i32 1, i32 2>
  br label %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit

_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit: ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.ay = phi <2 x double> [ %i.x, %bb.c ], [ %i.ae, %bb.d ], [ %i.am, %bb.f ], [ %i.aw, %bb.g ] ; 3 uses
  %i.az = phi <2 x double> [ %i.v, %bb.c ], [ %i.af, %bb.d ], [ %i.ap, %bb.f ], [ %i.ax, %bb.g ] ; 2 uses
  %i.ba = extractelement <2 x double> %i.ay, i64 0 ; 2 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double 0.000000e+00)
  %i.bc = extractelement <2 x double> %i.ay, i64 1 ; 2 uses
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.bb)
  %i.be = extractelement <2 x double> %i.az, i64 0 ; 2 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.bd)
  %sqrt321 = tail call double @llvm.sqrt.f64(double %i.bf)
  %i.bg = fdiv double 1.000000e+00, %sqrt321
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bi = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bk = fmul <2 x double> %i.ay, %i.bj          ; 10 uses
  %i.bl = fmul <2 x double> %i.az, %i.bj          ; 6 uses
  %i.bm = extractelement <2 x double> %i.bk, i64 1 ; 3 uses
  %i.bn = fneg double %i.bm
  %i.bo = fmul double %i.m, %i.bn
  %i.bp = extractelement <2 x double> %i.bl, i64 0 ; 2 uses
  %i.bq = fneg <2 x double> %i.bl
  %i.br = fmul <2 x double> %i.f, %i.bq
  %i.bs = shufflevector <2 x double> %i.i, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bk, <2 x double> %i.br) ; 3 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.bv = extractelement <2 x double> %i.bt, i64 1 ; 2 uses
  %i.bw = extractelement <2 x double> %i.bk, i64 0
  store double %i.bw, ptr %4, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.bm, ptr %i.by, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %i.bp, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %5 = insertelement <2 x double> %i.bk, double 0.000000e+00, i64 1
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.j, double %i.bp, double %i.bo) ; 3 uses
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double 0.000000e+00)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.ci)
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bv, double %i.cj)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ck)
  %i.cl = fdiv double 1.000000e+00, %sqrt         ; 2 uses
  %i.cm = fmul double %i.ch, %i.cl                ; 5 uses
  %i.cn = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.bt, %i.co          ; 9 uses
  store double %i.cm, ptr %i.bx, align 8, !tbaa !9
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  store double %i.cq, ptr %i.bz, align 8, !tbaa !9
  %i.cr = extractelement <2 x double> %i.cp, i64 1
  store double %i.cr, ptr %i.cb, align 8, !tbaa !9
  %6 = load <4 x double>, ptr %i.cg, align 8, !tbaa !9, !noalias !93 ; 6 uses
  %7 = load double, ptr %i.bh, align 8, !tbaa !9, !noalias !93 ; 3 uses
  %i.cs = load double, ptr %i.d, align 8, !tbaa !9, !noalias !93 ; 2 uses
  %8 = fneg double %i.cs                          ; 3 uses
  %9 = extractelement <4 x double> %6, i64 2
  %10 = fneg double %9                            ; 2 uses
  %11 = shufflevector <4 x double> %6, <4 x double> poison, <2 x i32> <i32 2, i32 poison> ; 3 uses
  %12 = insertelement <2 x double> %11, double 0.000000e+00, i64 1
  %13 = shufflevector <4 x double> %6, <4 x double> poison, <2 x i32> <i32 0, i32 poison> ; 3 uses
  %14 = insertelement <2 x double> %13, double -0.000000e+00, i64 1 ; 2 uses
  %15 = shufflevector <4 x double> %6, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %16 = insertelement <2 x double> %15, double 0.000000e+00, i64 1
  %17 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %8, i64 0
  %i.ct = insertelement <2 x double> %13, double 0.000000e+00, i64 1
  %18 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %10, i64 0
  %19 = shufflevector <4 x double> %6, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x double> %19, double 0.000000e+00, i64 1
  %20 = insertelement <2 x double> poison, double %8, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2>
  %22 = fneg double %7                            ; 3 uses
  %23 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %22, i64 0
  %24 = load <2 x double>, ptr %i.cd, align 8, !tbaa !9, !noalias !94 ; 8 uses
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cv = extractelement <2 x double> %24, i64 0
  %26 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %22, i64 0
  %27 = insertelement <2 x double> %11, double %8, i64 1
  %28 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = shufflevector <2 x double> %11, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3>
  %30 = load <2 x double>, ptr %i.cc, align 8, !tbaa !9, !noalias !94 ; 9 uses
  %31 = shufflevector <2 x double> %30, <2 x double> %24, <2 x i32> <i32 0, i32 2>
  %32 = fneg <2 x double> %31                     ; 3 uses
  %shift397 = shufflevector <2 x double> %32, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop398 = fmul <2 x double> %i.bk, %shift397
  %33 = load double, ptr %i.ce, align 8, !tbaa !9, !noalias !94 ; 3 uses
  %i.cw = insertelement <2 x double> <double poison, double -0.000000e+00>, double %33, i64 0 ; 3 uses
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %34 = load double, ptr %i.cf, align 8, !tbaa !9, !noalias !94 ; 4 uses
  %i.cy = insertelement <2 x double> <double poison, double 0.000000e+00>, double %34, i64 0 ; 2 uses
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %i.cw, <2 x double> zeroinitializer)
  %i.cz = insertelement <2 x double> %i.cy, double -0.000000e+00, i64 1 ; 2 uses
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> zeroinitializer, <2 x double> %35)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %i.ct, <2 x double> %36) ; 3 uses
  %i.db = insertelement <2 x double> %i.cw, double 0.000000e+00, i64 1
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.db, <2 x double> zeroinitializer)
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> %i.cz, <2 x double> %37)
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %14, <2 x double> zeroinitializer, <2 x double> %38) ; 3 uses
  %39 = extractelement <2 x double> %i.dc, i64 0
  %i.dd = insertelement <2 x double> %13, double %33, i64 1 ; 2 uses
  %40 = fneg <2 x double> %i.dd                   ; 3 uses
  %41 = load <2 x double>, ptr %1, align 8, !tbaa !9, !noalias !94 ; 10 uses
  %42 = extractelement <2 x double> %41, i64 1
  %i.de = insertelement <2 x double> poison, double %10, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %41, <2 x double> zeroinitializer)
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %23, <2 x double> %i.cy, <2 x double> %i.cx)
  %43 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %14, <2 x double> %i.dh) ; 3 uses
  %44 = insertelement <2 x double> %41, double %7, i64 1
  %45 = shufflevector <2 x double> %41, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.di = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %44, <2 x double> %45, <2 x double> zeroinitializer)
  %46 = tail call double @llvm.fmuladd.f64(double %7, double %42, double 0.000000e+00)
  %i.dj = insertelement <2 x double> <double 0.000000e+00, double poison>, double %46, i64 1
  %47 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> zeroinitializer
  %48 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> %47, <2 x double> %i.di)
  %49 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> %28, <2 x double> %48) ; 6 uses
  %50 = shufflevector <2 x double> %41, <2 x double> %30, <2 x i32> <i32 1, i32 3>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %50, <2 x double> zeroinitializer, <2 x double> %i.dj) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %51 = extractelement <2 x double> %30, i64 1
  %i.dm = tail call double @llvm.fmuladd.f64(double %22, double %51, double %i.dl)
  %i.dn = insertelement <2 x double> poison, double %i.cs, i64 0
  %52 = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %30, <2 x double> %i.dg) ; 2 uses
  %i.do = extractelement <2 x double> %53, i64 0
  %54 = tail call double @llvm.fmuladd.f64(double %i.cv, double 0.000000e+00, double %i.do) ; 4 uses
  %55 = fneg <2 x double> %49                     ; 2 uses
  %foldExtExtBinop400 = fmul <2 x double> %i.bl, %32
  %i.dp = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> %foldExtExtBinop400, <2 x i32> <i32 0, i32 2>
  %56 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %25, <2 x double> %i.dq) ; 4 uses
  %i.dr = shufflevector <2 x double> %24, <2 x double> %41, <2 x i32> <i32 1, i32 2>
  %i.ds = shufflevector <2 x double> %i.dk, <2 x double> %foldExtExtBinop398, <2 x i32> <i32 1, i32 2>
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %i.dr, <2 x double> %i.ds) ; 4 uses
  %57 = shufflevector <2 x double> %30, <2 x double> %24, <2 x i32> <i32 0, i32 3> ; 2 uses
  %58 = shufflevector <2 x double> %41, <2 x double> %30, <2 x i32> <i32 0, i32 3>
  %59 = fneg <2 x double> %58                     ; 3 uses
  %60 = extractelement <2 x double> %59, i64 0
  %61 = fmul double %i.bm, %60
  %62 = insertelement <2 x double> %53, double %61, i64 0
  %63 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %57, <2 x double> %62) ; 3 uses
  %64 = shufflevector <2 x double> %63, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.du = shufflevector <2 x double> %24, <2 x double> %41, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dv = fneg <2 x double> %i.du                 ; 3 uses
  %65 = fmul <2 x double> %i.bk, %i.dv
  %66 = shufflevector <2 x double> %i.bl, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dw = shufflevector <2 x double> %41, <2 x double> %30, <2 x i32> <i32 1, i32 3>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> %i.dw, <2 x double> %65) ; 2 uses
  %shift400 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop401 = fmul <2 x double> %i.cp, %shift400
  %i.dy = extractelement <2 x double> %foldExtExtBinop401, i64 0
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.cm, double %34, double %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !20 ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit
  %67 = shufflevector <2 x double> %i.cp, <2 x double> %40, <2 x i32> <i32 1, i32 2>
  %68 = fneg double %34                           ; 2 uses
  %i.ed = insertelement <2 x double> poison, double %68, i64 0
  %69 = insertelement <2 x double> %i.ed, double %i.cm, i64 1
  %70 = fmul <2 x double> %67, %69
  %71 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.dd, <2 x double> %70) ; 2 uses
  %72 = insertelement <2 x double> poison, double %33, i64 0
  %i.ee = insertelement <2 x double> %72, double %34, i64 1
  %i.ef = fmul <2 x double> %i.bk, %40
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %66, <2 x double> %i.ee, <2 x double> %i.ef) ; 2 uses
  %i.eh = insertelement <2 x double> %i.bk, double %i.cm, i64 0 ; 2 uses
  %73 = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %74 = shufflevector <4 x double> %73, <4 x double> %6, <2 x i32> <i32 1, i32 4>
  %i.ei = shufflevector <2 x double> %i.cp, <2 x double> %i.bl, <2 x i32> <i32 0, i32 2> ; 2 uses
  %75 = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %76 = insertelement <2 x double> %75, double %68, i64 1
  %i.ej = fmul <2 x double> %i.ei, %76
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %74, <2 x double> %i.ej) ; 2 uses
  %77 = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %78 = insertelement <2 x double> %77, double %i.cm, i64 1 ; 2 uses
  %i.el = shufflevector <2 x double> %59, <2 x double> %i.dv, <2 x i32> <i32 1, i32 2>
  %79 = fmul <2 x double> %78, %i.el
  %80 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.du, <2 x double> %79) ; 2 uses
  %81 = fmul <2 x double> %i.ei, %59
  %82 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %57, <2 x double> %81) ; 2 uses
  %i.em = shufflevector <2 x double> %i.dt, <2 x double> %63, <2 x i32> <i32 0, i32 3>
  %83 = fneg <2 x double> %i.em                   ; 2 uses
  %84 = shufflevector <2 x double> %24, <2 x double> %41, <2 x i32> <i32 0, i32 2>
  %i.en = fmul <2 x double> %78, %32
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %84, <2 x double> %i.en) ; 2 uses
  %85 = extractelement <2 x double> %56, i64 0
  %86 = fneg double %85
  %87 = fneg double %54
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !37, !nonnull !38, !align !39
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !42
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !43, !nonnull !38, !align !39 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = uitofp nneg i32 %i.eb to double
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.eb to i64
  %88 = insertelement <2 x double> poison, double %86, i64 0
  %89 = fneg <2 x double> %i.dc
  %90 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %89, <2 x i32> <i32 0, i32 2>
  %i.fh = fneg <2 x double> %i.da
  %i.fi = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.fh, <2 x i32> <i32 0, i32 2>
  %91 = fneg <2 x double> %43
  %92 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %91, <2 x i32> <i32 0, i32 2>
  %i.fj = extractelement <2 x double> %63, i64 1  ; 2 uses
  %i.fk = extractelement <2 x double> %i.dt, i64 0
  %i.fl = shufflevector <2 x double> %43, <2 x double> %i.da, <2 x i32> <i32 0, i32 2>
  %93 = shufflevector <2 x double> %56, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %94 = shufflevector <2 x double> %88, <2 x double> %49, <2 x i32> <i32 0, i32 2>
  %i.fm = shufflevector <2 x double> %83, <2 x double> %49, <2 x i32> <i32 0, i32 3>
  %i.fn = shufflevector <2 x double> %56, <2 x double> %49, <2 x i32> <i32 0, i32 3>
  %95 = extractelement <2 x double> %i.eo, i64 0
  %96 = extractelement <2 x double> %i.eo, i64 1
  %i.fo = extractelement <2 x double> %82, i64 0
  %97 = shufflevector <2 x double> %55, <2 x double> %82, <2 x i32> <i32 0, i32 3>
  %98 = insertelement <2 x double> %i.dx, double %87, i64 0
  %i.fp = extractelement <2 x double> %80, i64 0
  %99 = extractelement <2 x double> %80, i64 1
  %i.fq = extractelement <2 x double> %i.ek, i64 0
  %i.fr = insertelement <2 x double> %i.ek, double 0.000000e+00, i64 0
  %i.fs = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.ft = insertelement <2 x double> %i.eg, double 0.000000e+00, i64 0
  %i.fu = extractelement <2 x double> %71, i64 0
  %i.fv = extractelement <2 x double> %71, i64 1
  %100 = shufflevector <2 x double> %83, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fw = insertelement <2 x double> %100, double %54, i64 1
  %i.fx = shufflevector <2 x double> %55, <2 x double> %i.dx, <2 x i32> <i32 1, i32 2>
  br label %bb.h

._crit_edge:                                      ; preds = %bb.m, %_ZN2cv4MatxIdLi9ELi3EEC2ESt16initializer_listIdE.exit
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !26
  %i.ga = shl nsw i32 %i.fz, 2
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.gb ; 3 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %i.ge = getelementptr i8, ptr %i.gc, i64 8
  %i.gf = load float, ptr %i.gc, align 4, !tbaa !45
  %i.gg = fpext float %i.gf to double             ; 5 uses
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !45
  %i.gi = fpext float %i.gh to double             ; 6 uses
  %i.gj = load <2 x float>, ptr %i.ge, align 4, !tbaa !45
  %101 = fpext <2 x float> %i.gj to <2 x double>  ; 8 uses
  %i.gk = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %49, <2 x double> %i.gl, <2 x double> zeroinitializer)
  %i.gn = insertelement <2 x double> poison, double %i.gi, i64 0 ; 2 uses
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %93, <2 x double> %i.go, <2 x double> %i.gm)
  %102 = fadd <2 x double> %i.fl, %i.gp           ; 6 uses
  %i.gq = tail call double @llvm.fmuladd.f64(double %54, double %i.gg, double 0.000000e+00)
  %103 = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.gi, double %i.gq)
  %104 = fadd double %39, %103
  %i.gr = extractelement <2 x double> %102, i64 0 ; 3 uses
  %i.gs = extractelement <2 x double> %102, i64 1 ; 3 uses
  %i.gt = extractelement <2 x double> %101, i64 1 ; 4 uses
  %i.gu = shufflevector <2 x double> %101, <2 x double> %49, <2 x i32> <i32 0, i32 2>
  %i.gv = shufflevector <2 x double> %102, <2 x double> %101, <2 x i32> <i32 0, i32 2>
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gv, <2 x double> zeroinitializer) ; 2 uses
  %i.gx = extractelement <2 x double> %i.gw, i64 0
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.gs, double %i.gx)
  %i.gz = fadd double %104, %i.gy                 ; 2 uses
  %i.ha = insertelement <2 x double> %i.gw, double 0.000000e+00, i64 0
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %101, <2 x double> %i.ha) ; 2 uses
  %105 = extractelement <2 x double> %i.hb, i64 1
  %106 = fadd double %54, %105                    ; 4 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.fk, double %i.gt, double %i.hc)
  %i.he = fadd double %i.fj, %i.hd                ; 5 uses
  %i.hf = tail call double @llvm.fmuladd.f64(double %106, double %106, double 0.000000e+00)
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.he, double %i.he, double %i.hf)
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.gr, double %i.hg)
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.gs, double %i.gs, double %i.hh)
  %sqrt322 = tail call double @llvm.sqrt.f64(double %i.hi)
  %i.hj = fdiv double 1.000000e+00, %sqrt322      ; 13 uses
  %i.hk = fmul double %i.gz, %i.hj                ; 3 uses
  %i.hl = fmul double %i.hk, %i.hk                ; 2 uses
  %i.hm = load double, ptr %i.et, align 8, !tbaa !11
  %i.hn = fcmp ogt double %i.hl, %i.hm
  br i1 %i.hn, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ho = load double, ptr %i.eu, align 8, !tbaa !95
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.hl, double %i.ho, double 1.000000e+00)
  %i.hq = fdiv double 1.000000e+00, %i.hp
  %i.hr = fdiv double %i.hq, %i.ev                ; 2 uses
  %i.hs = load ptr, ptr %i.ew, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %i.hs, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !9
  %i.hv = fmul double %i.hr, %i.hu
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi double [ %i.hv, %bb.j ], [ %i.hr, %bb.i ] ; 4 uses
  %i.hw = fcmp olt double %.0, f0x3CB0000000000000
  br i1 %i.hw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hx = extractelement <2 x double> %101, i64 0 ; 2 uses
  %i.hy = fmul double %i.hx, %i.gg
  %i.hz = fmul double %i.gt, %i.gg
  %i.ia = fmul double %i.gt, %i.gi
  %107 = insertelement <2 x double> poison, double %106, i64 0
  %i.ib = shufflevector <2 x double> %107, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x double> %i.ib, %101
  %i.id = fneg double %i.hj
  %i.ie = fmul double %i.he, %i.hx
  %i.if = fmul double %i.gz, %.0
  %108 = fmul double %i.hj, %i.if                 ; 2 uses
  %109 = load double, ptr %i.ey, align 8, !tbaa !9
  %i.ig = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %110 = insertelement <2 x double> poison, double %.0, i64 0
  %111 = shufflevector <2 x double> %110, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %102, <2 x double> %i.gl, <2 x double> %i.ic) ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  %i.ik = extractelement <2 x double> %i.ii, i64 1
  %112 = fmul double %i.hk, %i.id                 ; 7 uses
  %i.il = insertelement <2 x double> %i.gn, double %i.he, i64 1
  %i.im = fmul <2 x double> %i.il, %101
  %i.in = tail call double @llvm.fmuladd.f64(double %112, double %i.ij, double %i.hy)
  %i.io = tail call double @llvm.fmuladd.f64(double %112, double %i.ik, double %i.hz)
  %i.ip = tail call double @llvm.fmuladd.f64(double %112, double %106, double %i.gg)
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.gi, double %i.ie)
  %i.ir = insertelement <2 x double> %102, double %112, i64 0
  %i.is = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.gi, i64 1
  %i.iu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ir, <2 x double> %i.it, <2 x double> %i.im) ; 2 uses
  %i.iv = extractelement <2 x double> %i.iu, i64 1
  %i.iw = tail call double @llvm.fmuladd.f64(double %112, double %i.iv, double %i.ia)
  %i.ix = tail call double @llvm.fmuladd.f64(double %112, double %i.he, double %i.gi)
  %i.iy = insertelement <2 x double> poison, double %112, i64 0
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %102, <2 x double> %101) ; 2 uses
  %i.jb = fmul double %i.hj, %i.in                ; 2 uses
  %i.jc = fmul double %i.hj, %i.io                ; 2 uses
  %i.jd = fmul double %i.hj, %i.ip                ; 2 uses
  %i.je = extractelement <2 x double> %i.iu, i64 0
  %i.jf = fmul double %i.hj, %i.je                ; 2 uses
  %i.jg = fmul double %i.hj, %i.iw                ; 2 uses
  %i.jh = fmul double %i.hj, %i.ix                ; 2 uses
  %i.ji = extractelement <2 x double> %i.ja, i64 0
  %i.jj = fmul double %i.hj, %i.ji                ; 2 uses
  %i.jk = extractelement <2 x double> %i.ja, i64 1
  %i.jl = fmul double %i.hj, %i.jk                ; 2 uses
  %i.jm = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %92, <2 x double> zeroinitializer)
  %i.jp = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %i.fi, <2 x double> %i.jo)
  %i.js = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %90, <2 x double> %i.jr)
  %i.jv = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %43, <2 x double> %i.ju)
  %i.jy = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.da, <2 x double> %i.jx)
  %i.kb = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.dc, <2 x double> %i.ka)
  %i.ke = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %94, <2 x double> %i.kd)
  %i.kh = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.fm, <2 x double> %i.kg)
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.fw, <2 x double> %i.kj) ; 8 uses
  %i.kl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %56, <2 x double> zeroinitializer)
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %i.dt, <2 x double> %i.kl)
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %64, <2 x double> %i.km)
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %97, <2 x double> %i.kn)
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.fx, <2 x double> %i.ko)
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %98, <2 x double> %i.kp)
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> %i.fr, <2 x double> %i.kq)
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.fs, <2 x double> %i.kr)
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.ft, <2 x double> %i.ks) ; 7 uses
  %113 = load <2 x double>, ptr %3, align 8, !tbaa !9
  %i.ku = insertelement <2 x double> poison, double %108, i64 0
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kw = fmul <2 x double> %i.kv, %i.kk
  %i.kx = fadd <2 x double> %i.kw, %113
  store <2 x double> %i.kx, ptr %3, align 8, !tbaa !9
  %i.ky = load <2 x double>, ptr %i.ex, align 8, !tbaa !9
  %114 = fmul <2 x double> %i.kv, %i.kt
  %115 = fadd <2 x double> %114, %i.ky
  store <2 x double> %115, ptr %i.ex, align 8, !tbaa !9
  %foldExtExtBinop406 = fmul <2 x double> %i.kk, %i.kk
  %i.kz = extractelement <2 x double> %foldExtExtBinop406, i64 0
  %i.la = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lb = fmul <2 x double> %i.la, %i.kk
  %i.lc = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %116 = fmul <2 x double> %i.kk, %i.lc
  %117 = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ld = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.le = fmul <2 x double> %i.kk, %i.ld
  %i.lf = fmul <2 x double> %117, %i.kt
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.jb, double %95, double 0.000000e+00)
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.jc, double %96, double %i.lg)
  %i.li = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.fo, double %i.lh)
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.fp, double %i.li)
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.jg, double %99, double %i.lj)
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.fq, double %i.lk)
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.jj, double %i.fu, double %i.ll)
  %i.ln = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.fv, double %i.lm)
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.hj, double %i.dz, double %i.ln) ; 3 uses
  %i.lp = fmul double %108, %i.lo
  %i.lq = fadd double %i.lp, %109
  store double %i.lq, ptr %i.ey, align 8, !tbaa !9
  %i.lr = load double, ptr %2, align 8, !tbaa !9
  %i.ls = tail call double @llvm.fmuladd.f64(double %.0, double %i.kz, double %i.lr)
  store double %i.ls, ptr %2, align 8, !tbaa !9
  %i.lt = load <2 x double>, ptr %i.ez, align 8, !tbaa !9
  %i.lu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %i.lb, <2 x double> %i.lt)
  store <2 x double> %i.lu, ptr %i.ez, align 8, !tbaa !9
  %i.lv = load <2 x double>, ptr %i.fa, align 8, !tbaa !9
  %i.lw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %116, <2 x double> %i.lv)
  store <2 x double> %i.lw, ptr %i.fa, align 8, !tbaa !9
  %i.lx = load double, ptr %i.fb, align 8, !tbaa !9
  %i.ly = insertelement <2 x double> %i.kt, double %i.lo, i64 1 ; 2 uses
  %i.lz = fmul <2 x double> %i.ly, %i.ly
  %i.ma = load double, ptr %i.fg, align 8, !tbaa !9
  %i.mb = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.ma, i64 1
  %i.md = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %i.lz, <2 x double> %i.mc) ; 2 uses
  %i.me = extractelement <2 x double> %i.md, i64 0
  store double %i.me, ptr %i.fb, align 8, !tbaa !9
  %i.mf = load <2 x double>, ptr %i.fc, align 8, !tbaa !9
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %i.le, <2 x double> %i.mf)
  store <2 x double> %i.mg, ptr %i.fc, align 8, !tbaa !9
  %i.mh = load <2 x double>, ptr %i.fd, align 8, !tbaa !9
  %i.mi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %i.lf, <2 x double> %i.mh)
  store <2 x double> %i.mi, ptr %i.fd, align 8, !tbaa !9
  %i.mj = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ml = fmul <2 x double> %i.kk, %i.mk
  %i.mm = load <2 x double>, ptr %i.fe, align 8, !tbaa !9
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %i.ml, <2 x double> %i.mm)
  store <2 x double> %i.mn, ptr %i.fe, align 8, !tbaa !9
  %i.mo = fmul <2 x double> %i.kt, %i.mk
  %i.mp = load <2 x double>, ptr %i.ff, align 8, !tbaa !9
  %i.mq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %111, <2 x double> %i.mo, <2 x double> %i.mp)
  store <2 x double> %i.mq, ptr %i.ff, align 8, !tbaa !9
  %i.mr = extractelement <2 x double> %i.md, i64 1
  store double %i.mr, ptr %i.fg, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !92
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef zeroext i1 @_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind noalias writable sret(%"class.cv::Vec") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.15", align 1 ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp slt i32 %i.d, 3
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96   ; 3 uses
  %i.h = icmp eq i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 1
  %or.cond13 = select i1 %i.h, i1 true, i1 %i.k
  %i.l = add nsw i32 %i.j, %i.g
  %i.m = icmp eq i32 %i.l, 4
  %or.cond15 = select i1 %or.cond13, i1 %i.m, i1 false
  br i1 %or.cond15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %1, align 8, !tbaa !97     ; 2 uses
  %i.o = and i32 %i.n, 4064
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv, ptr noundef nonnull @.str.1, i32 noundef 1301) #14
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !27
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  %i.x = and i32 %i.n, 16415
  %or.cond17 = icmp eq i32 %i.x, 16390
  br i1 %or.cond17, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = load double, ptr %i.b, align 8, !tbaa !9
  store double %i.y, ptr %0, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = load double, ptr %i.z, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.aa, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ad, ptr %i.ae, align 8, !tbaa !9
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %i.g, i32 noundef %i.j, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.ag, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !24
  store ptr %4, ptr %i.af, align 8, !tbaa !25
  %i.ah = load i32, ptr %4, align 8, !tbaa !97
  %i.ai = and i32 %i.ah, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ai, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j
  ret void

bb.o:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52), i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #4

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !98
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.2) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.d, ptr %i.a, align 8, !tbaa !99
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !49
  %i.g = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.g, ptr %i.b, align 8, !tbaa !27
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
end_hunk_0
