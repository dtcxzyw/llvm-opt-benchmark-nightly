Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/degeneracy?download=true
inline.NumInlined: 1686
inline.NumDeleted: 654
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv4usac29FundamentalDegeneracyViaEImpl19recoverIfDegenerateERKSt6vectorIiSaIiEERKNS_3MatERKNS0_5ScoreERS7_RSA_:bb.a
.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge46, %.preheader.lr.ph
  %.sroa.036.048 = phi ptr [ %i.b, %.preheader.lr.ph ], [ %i.bn, %._crit_edge46 ] ; 2 uses
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !113
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.as = load ptr, ptr %.sroa.036.048, align 8, !tbaa !72
  %i.at = load ptr, ptr %1, align 8, !tbaa !72
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !72
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !115 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef i32 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h) ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.az to i64
  br label %.lr.ph45

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !31
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.e, align 8, !tbaa !113
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !298

._crit_edge46:                                    ; preds = %bb.o, %._crit_edge
  %i.bk = load float, ptr %.sroa_idx39, align 4, !tbaa !126
  %i.bl = load float, ptr %i.ap, align 4, !tbaa !126
  %i.bm = fcmp olt float %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.036.048, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bn, %i.d
  %or.cond = select i1 %i.bm, i1 true, i1 %.not
  br i1 %or.cond, label %._crit_edge49, label %.preheader

.lr.ph45:                                         ; preds = %.lr.ph45.preheader, %bb.o
  %indvars.iv52 = phi i64 [ 0, %.lr.ph45.preheader ], [ %indvars.iv.next53, %bb.o ] ; 3 uses
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !119 ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.bq = getelementptr inbounds nuw [208 x i8], ptr %i.bp, i64 %indvars.iv52
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef zeroext i1 %i.bt(ptr noundef nonnull align 8 dereferenceable(216) %i.bo, ptr noundef nonnull align 8 dereferenceable(208) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
  br i1 %i.bu, label %bb.c, label %bb.o

bb.c:                                             ; preds = %.lr.ph45
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bv = load i8, ptr %i.j, align 8, !tbaa !114, !range !117, !noundef !118
  %i.bw = trunc nuw i8 %i.bv to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !121
  %i.by = getelementptr inbounds nuw [208 x i8], ptr %i.bx, i64 %indvars.iv52 ; 2 uses
  br i1 %i.bw, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %10, ptr noundef nonnull align 8 dereferenceable(208) %i.by)
  %i.bz = load <2 x double>, ptr %i.k, align 8, !tbaa !25, !noalias !304 ; 4 uses
  %i.ca = load <2 x double>, ptr %10, align 16, !tbaa !25, !noalias !304 ; 4 uses
  %i.cb = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.ca, <2 x double> zeroinitializer) ; 2 uses
  %i.cd = load <2 x double>, ptr %i.o, align 16   ; 2 uses
  %i.ce = insertelement <2 x double> %i.cc, double 0.000000e+00, i64 0
  %i.cf = load double, ptr %i.p, align 8, !tbaa !25, !noalias !304 ; 3 uses
  %i.cg = load double, ptr %i.q, align 16, !tbaa !25, !noalias !304 ; 2 uses
  %i.ch = load <2 x double>, ptr %i.m, align 8, !tbaa !25, !noalias !304 ; 5 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = shufflevector <2 x double> %i.bz, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.ck = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> %i.ca, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cm = load double, ptr %i.r, align 8, !tbaa !25, !noalias !304 ; 2 uses
  %i.cn = load <2 x double>, ptr %i.s, align 8, !tbaa !25, !noalias !304 ; 4 uses
  %i.co = shufflevector <2 x double> %i.ch, <2 x double> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cp = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cp, <2 x double> zeroinitializer) ; 2 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0
  %i.cs = call double @llvm.fmuladd.f64(double %i.cm, double %i.cf, double %i.cr)
  %i.ct = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cs, i64 0
  %i.cu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cl, <2 x double> %i.ct) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.cv = load double, ptr %i.y, align 8, !tbaa !25, !noalias !305 ; 3 uses
  %i.cw = load double, ptr %i.z, align 8, !tbaa !25, !noalias !305 ; 3 uses
  %i.cx = load double, ptr %i.aa, align 8, !tbaa !25, !noalias !305 ; 2 uses
  %i.cy = load <2 x double>, ptr %i.l, align 8, !tbaa !25, !noalias !304 ; 4 uses
  %i.cz = load <2 x double>, ptr %i.n, align 16, !tbaa !25, !noalias !304 ; 4 uses
  %i.da = shufflevector <2 x double> %i.cd, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3>
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.da, <2 x double> %i.ce)
  %i.dc = insertelement <2 x double> %i.cz, double %i.cf, i64 0
  %i.dd = extractelement <2 x double> %i.cz, i64 0
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.dc, <2 x double> %i.db) ; 3 uses
  %i.df = insertelement <2 x double> %i.de, double 0.000000e+00, i64 1
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cl, <2 x double> %i.df) ; 3 uses
  %i.dh = shufflevector <2 x double> %i.bz, <2 x double> %i.ch, <2 x i32> <i32 1, i32 3>
  %i.di = shufflevector <2 x double> %i.cy, <2 x double> %i.ca, <2 x i32> <i32 0, i32 3>
  %i.dj = insertelement <2 x double> %i.cc, double 0.000000e+00, i64 1
  %i.dk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.di, <2 x double> %i.dj) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = shufflevector <2 x double> %i.dg, <2 x double> %i.dk, <2 x i32> <i32 1, i32 3>
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.cy, <2 x double> %i.do)
  %i.dq = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.cz, <2 x double> %i.dp) ; 4 uses
  %i.ds = extractelement <2 x double> %i.de, i64 1
  %i.dt = extractelement <2 x double> %i.dr, i64 1
  %i.du = shufflevector <2 x double> %i.dr, <2 x double> %i.cu, <2 x i32> <i32 1, i32 2>
  %i.dv = load double, ptr %i.t, align 8, !tbaa !25, !noalias !304 ; 2 uses
  %i.dw = load double, ptr %i.u, align 8, !tbaa !25, !noalias !304 ; 2 uses
  %i.dx = call double @llvm.fmuladd.f64(double %i.ci, double %i.dd, double %i.dl) ; 2 uses
  %i.dy = call double @llvm.fmuladd.f64(double %i.dx, double %i.cv, double 0.000000e+00)
  %i.dz = call double @llvm.fmuladd.f64(double %i.ds, double %i.cw, double %i.dy)
  %i.ea = shufflevector <2 x double> %i.dg, <2 x double> %i.cn, <2 x i32> <i32 0, i32 3>
  %i.eb = insertelement <2 x double> %i.ca, double %i.cx, i64 0
  %i.ec = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.dz, i64 0
  %i.ed = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ea, <2 x double> %i.eb, <2 x double> %i.ec) ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  store double %i.ee, ptr %i.ab, align 16, !tbaa !25, !alias.scope !305
  %i.ef = extractelement <2 x double> %i.cq, i64 1
  %i.eg = call double @llvm.fmuladd.f64(double %i.dv, double %i.cf, double %i.ef)
  %i.eh = call double @llvm.fmuladd.f64(double %i.dw, double %i.cg, double %i.eg) ; 2 uses
  %i.ei = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ek = shufflevector <2 x double> %i.cu, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.cy, <2 x double> %i.ek)
  %i.em = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.cz, <2 x double> %i.el) ; 4 uses
  %i.ep = load <2 x double>, ptr %i.w, align 8, !tbaa !25, !noalias !305 ; 3 uses
  %i.eq = load <2 x double>, ptr %i.x, align 8, !tbaa !25, !noalias !305 ; 3 uses
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> %i.ep, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.es = load <2 x double>, ptr %i.v, align 8, !tbaa !25, !noalias !305 ; 4 uses
  %i.et = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.es, <2 x double> zeroinitializer)
  %i.ew = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.ep, <2 x double> %i.ev)
  %i.ey = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.eq, <2 x double> %i.ex)
  store <2 x double> %i.ez, ptr %9, align 16, !tbaa !25, !alias.scope !305
  %i.fa = extractelement <2 x double> %i.es, i64 0
  %i.fb = shufflevector <2 x double> %i.ep, <2 x double> %i.es, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.fc = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = insertelement <2 x double> %i.es, double %i.cv, i64 1
  %i.fe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %i.fd, <2 x double> zeroinitializer) ; 2 uses
  %12 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.fe, <2 x i32> <i32 0, i32 2>
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.fb, <2 x double> %12)
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.er, <2 x double> %i.ff) ; 2 uses
  %i.fh = extractelement <2 x double> %i.fg, i64 1
  store double %i.fh, ptr %i.ac, align 8, !tbaa !25, !alias.scope !305
  %i.fi = extractelement <2 x double> %i.fe, i64 1
  %i.fj = call double @llvm.fmuladd.f64(double %i.dt, double %i.cw, double %i.fi)
  %i.fk = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fm = insertelement <2 x double> %i.fl, double %i.cx, i64 1 ; 2 uses
  %i.fn = insertelement <2 x double> %i.fg, double %i.fj, i64 1
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.fm, <2 x double> %i.fn)
  store <2 x double> %i.fo, ptr %i.ad, align 16, !tbaa !25, !alias.scope !305
  %i.fp = extractelement <2 x double> %i.eo, i64 0 ; 2 uses
  %i.fq = call double @llvm.fmuladd.f64(double %i.fp, double %i.fa, double 0.000000e+00)
  %i.fr = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.fq, i64 1
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.fb, <2 x double> %i.fr)
  %i.ft = extractelement <2 x double> %i.eo, i64 1
  %i.fu = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fv = insertelement <2 x double> %i.fu, double %i.eh, i64 1
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.er, <2 x double> %i.fs) ; 2 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1
  store double %i.fx, ptr %i.ae, align 16, !tbaa !25, !alias.scope !305
  %i.fy = call double @llvm.fmuladd.f64(double %i.fp, double %i.cv, double 0.000000e+00)
  %i.fz = call double @llvm.fmuladd.f64(double %i.ft, double %i.cw, double %i.fy)
  %i.ga = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = insertelement <2 x double> %i.fw, double %i.fz, i64 1
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.fm, <2 x double> %i.gc)
  store <2 x double> %i.gd, ptr %i.af, align 8, !tbaa !25, !alias.scope !305
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %8, align 16, !tbaa !31
  store i32 153, ptr %i.ag, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i8 0, i64 48, i1 false)
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ai, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aj, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %9, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 0, ptr %i.al, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !29
  store ptr %8, ptr %i.ak, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN2cv3MatC2IdLi3ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.n, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ge, %bb.e ], [ %.pn.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

_ZN2cv3MatC2IdLi3ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.by)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2cv3MatC2IdLi3ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.gf = load ptr, ptr %i.am, align 8, !tbaa !127 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !51
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = invoke i64 %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull align 8 dereferenceable(208) %8)
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.sroa.5.0.extract.shift = lshr i64 %i.gj, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.gk = bitcast i32 %.sroa.5.0.extract.trunc to float
  %i.gl = load float, ptr %.sroa_idx39, align 4, !tbaa !126
  %i.gm = fcmp ogt float %i.gl, %i.gk
  br i1 %i.gm, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  store i64 %i.gj, ptr %5, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store i64 0, ptr %i.ao, align 8
  store i32 33619968, ptr %11, align 8, !tbaa !29
  store ptr %4, ptr %i.an, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.go, %bb.l ], [ %i.gn, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume

bb.o:                                             ; preds = %.lr.ph45, %bb.m
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge46, label %.lr.ph45, !llvm.loop !303

._crit_edge49:                                    ; preds = %._crit_edge46, %bb.a
  ret i1 true
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIPKSt6vectorIiSaIiEEPS2_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.019 = phi ptr [ %i.w, %bb.f ], [ %2, %bb.a ]  ; 6 uses
  %.01218 = phi ptr [ %i.v, %bb.f ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01218, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = load ptr, ptr %.01218, align 8, !tbaa !72 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.019, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc13, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !116

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %.019, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !79
  %i.m = load ptr, ptr %.01218, align 8, !tbaa !128 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !128
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.c, label %bb.d, !prof !307

bb.c:                                             ; preds = %.noexc13
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc13
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.m, align 4, !tbaa !31
  store i32 %i.t, ptr %i.i, align 4, !tbaa !31
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %.01218, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2cv4usac25FundamentalDegeneracyImpl17verifyFundamentalERKNS_3MatERKNS0_5ScoreERKSt6vectorIbSaIbEERS2_RS5_:bb.a
  %27 = alloca %"class.cv::usac::Score", align 8  ; 7 uses
  %28 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %29 = alloca %"class.cv::Matx", align 8         ; 5 uses
  %30 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162  ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc81

.noexc81:                                         ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.e = shl nuw nsw i64 %i.c, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #20 ; 5 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.c ; 2 uses
  store i32 0, ptr %i.f, align 4, !tbaa !31
  %i.h = add nsw i64 %i.c, -1                     ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc81
  %i.j = getelementptr i8, ptr %i.f, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc81, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi ptr [ %i.g, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.g, %.noexc81 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0114.0 = phi ptr [ %i.f, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.f, %.noexc81 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.k = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #20
          to label %bb.b unwind label %bb.d       ; 4 uses

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  store ptr %i.k, ptr %10, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !79
  store i32 0, ptr %i.k, align 4, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i64 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !80
  %i.p = load i32, ptr %i.a, align 8, !tbaa !162  ; 5 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.r = load ptr, ptr %3, align 8, !tbaa !349    ; 2 uses
  %xtraiter = and i32 %i.p, 1
  %i.s = icmp eq i32 %i.p, 1
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.p, 2147483646
  br label %bb.e

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.030128.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.aw, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.051127.epil.init = phi i32 [ 0, %.lr.ph ], [ %.152.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod150 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod150)
  %i.t = lshr i32 %.030128.epil.init, 6
  %.zext.epil = zext nneg i32 %i.t to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.zext.epil
  %i.v = and i32 %.030128.epil.init, 63
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = load i64, ptr %i.u, align 8, !tbaa !56
  %i.z = and i64 %i.y, %i.x
  %.not.epil = icmp eq i64 %i.z, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.epil.preheader
  %i.aa = add nsw i32 %.051127.epil.init, 1
  %i.ab = sext i32 %.051127.epil.init to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0114.0, i64 %i.ab
  store i32 %.030128.epil.init, ptr %i.ac, align 4, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %.epil.preheader, %bb.b
  %.051.lcssa = phi i32 [ 0, %bb.b ], [ %.152.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %bb.c ], [ %.051127.epil.init, %.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke void @_ZN2cv4usac14UniformSampler6createEiii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.147") align 8 %11, i32 noundef 0, i32 noundef 3, i32 noundef %.051.lcssa)
          to label %bb.j unwind label %bb.o

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit105

bb.e:                                             ; preds = %bb.i, %.lr.ph.new
  %.030128 = phi i32 [ 0, %.lr.ph.new ], [ %i.aw, %bb.i ] ; 5 uses
  %.051127 = phi i32 [ 0, %.lr.ph.new ], [ %.152.1, %bb.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.i ]
  %i.ae = lshr i32 %.030128, 6
  %.zext = zext nneg i32 %i.ae to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.zext
  %i.ag = and i32 %.030128, 62
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 1, %i.ah
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %i.ak = and i64 %i.aj, %i.ai
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = add nsw i32 %.051127, 1
  %i.am = sext i32 %.051127 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0114.0, i64 %i.am
  store i32 %.030128, ptr %i.an, align 4, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.152 = phi i32 [ %i.al, %bb.f ], [ %.051127, %bb.e ] ; 3 uses
  %i.ao = or disjoint i32 %.030128, 1             ; 2 uses
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.aj, %i.ar
  %.not.1 = icmp eq i64 %i.as, 0
  br i1 %.not.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = add nsw i32 %.152, 1
  %i.au = sext i32 %.152 to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0114.0, i64 %i.au
  store i32 %i.ao, ptr %i.av, align 4, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.152.1 = phi i32 [ %i.at, %bb.h ], [ %.152, %bb.g ] ; 3 uses
  %i.aw = add nuw nsw i32 %.030128, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.e, !llvm.loop !342

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN2cv4usac5Utils14getLeftEpipoleERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec") align 8 %12, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %15, ptr noundef nonnull align 8 dereferenceable(208) %1)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.ax = load double, ptr %15, align 8, !tbaa !25, !noalias !350 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bd = load <2 x double>, ptr %14, align 16, !tbaa !25, !noalias !350 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.bf = load double, ptr %i.be, align 8, !tbaa !25, !noalias !350 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !25, !noalias !350 ; 2 uses
  %i.bi = load <2 x double>, ptr %i.az, align 16, !tbaa !25, !noalias !350 ; 5 uses
  %i.bj = shufflevector <2 x double> %i.bd, <2 x double> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.bk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.ax, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.bn = load double, ptr %i.bm, align 16, !tbaa !25, !noalias !350 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.br = load <2 x double>, ptr %i.bo, align 8, !tbaa !25, !noalias !350 ; 4 uses
  %i.bs = load <2 x double>, ptr %i.ay, align 8, !tbaa !25, !noalias !350 ; 4 uses
  %i.bt = load <2 x double>, ptr %i.ba, align 8, !tbaa !25, !noalias !350 ; 4 uses
  %i.bu = insertelement <2 x double> %i.bt, double %i.bf, i64 0
  %i.bv = shufflevector <2 x double> %i.bd, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.bw = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.cb = load <2 x double>, ptr %i.bb, align 8, !tbaa !25, !noalias !350 ; 4 uses
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.cd, <2 x double> zeroinitializer) ; 2 uses
  %31 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.cc, <2 x double> %31)
  %i.cg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bu, <2 x double> %i.cf) ; 2 uses
  %i.ch = insertelement <2 x double> %i.cg, double 0.000000e+00, i64 1
  %i.ci = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bl, <2 x double> %i.ch) ; 2 uses
  %i.cj = shufflevector <2 x double> %i.cg, <2 x double> %i.ci, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.cj, ptr %i.bc, align 8, !tbaa !25, !alias.scope !350
  %i.ck = shufflevector <2 x double> %i.ci, <2 x double> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.cl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bs, <2 x double> %i.ck)
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.bt, <2 x double> %i.cl)
  store <2 x double> %i.cm, ptr %i.bp, align 8, !tbaa !25, !alias.scope !350
  %i.cn = shufflevector <2 x double> %i.br, <2 x double> %i.bi, <2 x i32> <i32 1, i32 3>
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.cb, <2 x double> zeroinitializer) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 1
  %i.cq = call double @llvm.fmuladd.f64(double %i.bn, double %i.bf, double %i.cp)
  %i.cr = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.cq, i64 0
  %i.cs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bl, <2 x double> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  store double %i.ct, ptr %i.bq, align 8, !tbaa !25, !alias.scope !350
  %i.cu = shufflevector <2 x double> %i.cs, <2 x double> %i.co, <2 x i32> <i32 1, i32 2>
  %i.cv = load <2 x double>, ptr %i.bz, align 8, !tbaa !25, !noalias !350 ; 4 uses
  %i.cw = shufflevector <2 x double> %i.bd, <2 x double> %i.br, <2 x i32> <i32 0, i32 3>
  %i.cx = insertelement <2 x double> %i.cb, double %i.ax, i64 0
  %i.cy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cx, <2 x double> zeroinitializer)
  %i.cz = shufflevector <2 x double> %i.bd, <2 x double> %i.cv, <2 x i32> <i32 1, i32 2>
  %i.da = insertelement <2 x double> %i.bs, double %i.bf, i64 1
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.da, <2 x double> %i.cy)
  %i.dc = shufflevector <2 x double> %i.bi, <2 x double> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.dd = insertelement <2 x double> %i.bt, double %i.bh, i64 1
  %i.de = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.dd, <2 x double> %i.db) ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  store double %i.df, ptr %13, align 8, !tbaa !25, !alias.scope !350
  %i.dg = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.bs, <2 x double> %i.cu)
  %i.di = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.bt, <2 x double> %i.dh)
  store <2 x double> %i.dj, ptr %i.ca, align 8, !tbaa !25, !alias.scope !350
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.dl = extractelement <2 x double> %i.de, i64 1
  store double %i.dl, ptr %i.dk, align 8, !tbaa !25, !alias.scope !350
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store i32 0, ptr %16, align 8, !tbaa !185
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  store float f0x7F7FFFFF, ptr %i.dm, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #19
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.do = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.dr = getelementptr inbounds nuw i8, ptr %19, i64 128
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %20, i64 72
  %i.dx = getelementptr inbounds nuw i8, ptr %20, i64 128
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.t

bb.n:                                             ; preds = %bb.aj
  %i.ea = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %17)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %._crit_edge
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.p:                                             ; preds = %bb.j
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.q:                                             ; preds = %bb.k
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.l
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.r ], [ %i.ed, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.ci

bb.t:                                             ; preds = %bb.m, %bb.aj
  %.029129 = phi i32 [ 0, %bb.m ], [ %i.fs, %bb.aj ]
  %i.ef = load ptr, ptr %11, align 8, !tbaa !353  ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !51
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 72
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, i8 0, i64 72, i1 false), !tbaa !25
  %i.ej = load ptr, ptr %10, align 8, !tbaa !72   ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !31
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0114.0, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !31
  %i.eo = shl nsw i32 %i.en, 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !31
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0114.0, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !31
  %i.eu = shl nsw i32 %i.et, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !31
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0114.0, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !31
  %i.fa = shl nsw i32 %i.ez, 2
  %i.fb = invoke noundef zeroext i1 @_ZN2cv4usac25FundamentalDegeneracyImpl4getHERKNS_4MatxIdLi3ELi3EEERKNS_3VecIdLi3EEEiiiRS3_(ptr noundef nonnull align 8 dereferenceable(2018) %0, ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef %i.eo, i32 noundef %i.eu, i32 noundef %i.fa, ptr noundef nonnull align 8 dereferenceable(72) %18)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  br i1 %i.fb, label %bb.x, label %bb.aj

bb.w:                                             ; preds = %bb.u
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.x:                                             ; preds = %bb.v
  %i.fd = load ptr, ptr %i.dn, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %19, align 16, !tbaa !31
  store i32 153, ptr %i.do, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.dq, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc87 unwind label %bb.af

.noexc87:                                         ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.dr, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %18, i64 noundef 0)
          to label %.noexc88 unwind label %bb.af

.noexc88:                                         ; preds = %.noexc87
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i64 0, ptr %i.dt, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !29
  store ptr %19, ptr %i.ds, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %.noexc88
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

bb.z:                                             ; preds = %.noexc88
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = invoke i64 %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.aa unwind label %bb.ag     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %.sroa.5.0.extract.shift = lshr i64 %i.fi, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.fj = bitcast i32 %.sroa.5.0.extract.trunc to float
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.fk = load float, ptr %i.dm, align 4, !tbaa !126
  %i.fl = fcmp ogt float %i.fk, %i.fj
  br i1 %i.fl, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.fi, ptr %16, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %20, align 16, !tbaa !31
  store i32 153, ptr %i.du, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.dw, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc89 unwind label %bb.ah

.noexc89:                                         ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.dx, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %18, i64 noundef 0)
          to label %.noexc90 unwind label %bb.ah

.noexc90:                                         ; preds = %.noexc89
end_hunk_1
begin_hunk_2_@_ZN2cv4usac25FundamentalDegeneracyImpl17verifyFundamentalERKNS_3MatERKNS0_5ScoreERKSt6vectorIbSaIbEERS2_RS5_:bb.a
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.o
  %.pn68.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn, %bb.cj ], [ %i.eb, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.lg = load ptr, ptr %10, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i104 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i104, label %_ZNSt6vectorIiSaIiEED2Ev.exit105, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lh = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.li = ptrtoint ptr %i.lh to i64
  %i.lj = ptrtoint ptr %i.lg to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.lk) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit105

_ZNSt6vectorIiSaIiEED2Ev.exit105:                 ; preds = %bb.cl, %bb.ck, %bb.d
  %.pn77.pn = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn, %bb.ck ], [ %.pn68.pn.pn.pn.pn.pn.pn.pn, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %.not.i.i.i106 = icmp eq ptr %.sroa.0114.0, null
  br i1 %.not.i.i.i106, label %_ZNSt6vectorIiSaIiEED2Ev.exit107, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit105
  %i.ll = ptrtoint ptr %.sroa.13.0 to i64
  %i.lm = ptrtoint ptr %.sroa.0114.0 to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0, i64 noundef %i.ln) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit107

_ZNSt6vectorIiSaIiEED2Ev.exit107:                 ; preds = %bb.cm, %_ZNSt6vectorIiSaIiEED2Ev.exit105
  resume { ptr, i32 } %.pn77.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IiSaIiEESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !83     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
  unreachable

_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #20 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !128
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !128
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !79
  store ptr %i.u, ptr %i.s, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.v = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !128, !alias.scope !362
  store <2 x ptr> %i.v, ptr %.012.i.i.i, align 8, !tbaa !128, !alias.scope !361
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !79, !alias.scope !362
  store ptr %i.y, ptr %i.w, align 8, !tbaa !79, !alias.scope !361
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !362
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !357

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIS_IiSaIiEESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %.lr.ph.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ab, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %i.ac = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !128, !alias.scope !364
  store <2 x ptr> %i.ac, ptr %.012.i.i.i18, align 8, !tbaa !128, !alias.scope !363
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !79, !alias.scope !364
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !79, !alias.scope !363
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !364
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !357

_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ab, %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #21
  br label %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_IiSaIiEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !83
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv4usac25FundamentalDegeneracyImpl20estimateHfrom3PointsERKNS_3MatERKSt6vectorIiSaIiEERS2_(ptr noundef nonnull align 8 dereferenceable(2018) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %9 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %10 = alloca %"class.cv::usac::Score", align 8  ; 9 uses
  %11 = alloca %"class.cv::Vec", align 8          ; 6 uses
  %12 = alloca %"class.cv::Matx", align 8         ; 10 uses
  %13 = alloca %"class.cv::Matx", align 16        ; 8 uses
  %14 = alloca %"class.cv::Matx", align 8         ; 9 uses
  %15 = alloca %"class.cv::Matx", align 8         ; 8 uses
  %16 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %17 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %18 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %19 = alloca %"class.cv::_OutputArray", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 0, ptr %10, align 8, !tbaa !185
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 3 uses
  store float f0x7F7FFFFF, ptr %i.a, align 4, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZN2cv4usac5Utils14getLeftEpipoleERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec") align 8 %11, ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %14, ptr noundef nonnull align 8 dereferenceable(208) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.b = load double, ptr %14, align 8, !tbaa !25, !noalias !367 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.h = load <2 x double>, ptr %13, align 16, !tbaa !25, !noalias !367 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.j = load double, ptr %i.i, align 8, !tbaa !25, !noalias !367 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.l = load double, ptr %i.k, align 8, !tbaa !25, !noalias !367 ; 2 uses
  %i.m = load <2 x double>, ptr %i.d, align 16, !tbaa !25, !noalias !367 ; 5 uses
  %i.n = shufflevector <2 x double> %i.h, <2 x double> %i.m, <2 x i32> <i32 1, i32 2>
  %i.o = insertelement <2 x double> poison, double %i.l, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.b, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.r = load double, ptr %i.q, align 16, !tbaa !25, !noalias !367 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.v = load <2 x double>, ptr %i.s, align 8, !tbaa !25, !noalias !367 ; 4 uses
  %i.w = load <2 x double>, ptr %i.c, align 8, !tbaa !25, !noalias !367 ; 4 uses
  %i.x = load <2 x double>, ptr %i.e, align 8, !tbaa !25, !noalias !367 ; 4 uses
  %i.y = insertelement <2 x double> %i.x, double %i.j, i64 0
  %i.z = shufflevector <2 x double> %i.h, <2 x double> %i.m, <2 x i32> <i32 0, i32 3>
  %i.aa = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.af = load <2 x double>, ptr %i.f, align 8, !tbaa !25, !noalias !367 ; 4 uses
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> %i.w, <2 x i32> <i32 1, i32 3>
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ah, <2 x double> zeroinitializer) ; 2 uses
  %20 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.ag, <2 x double> %20)
  %i.ak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.y, <2 x double> %i.aj) ; 2 uses
  %i.al = insertelement <2 x double> %i.ak, double 0.000000e+00, i64 1
  %i.am = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.p, <2 x double> %i.al) ; 2 uses
  %i.an = shufflevector <2 x double> %i.ak, <2 x double> %i.am, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.an, ptr %i.g, align 8, !tbaa !25, !alias.scope !367
  %i.ao = shufflevector <2 x double> %i.am, <2 x double> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.ap = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.w, <2 x double> %i.ao)
  %i.aq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.x, <2 x double> %i.ap)
  store <2 x double> %i.aq, ptr %i.t, align 8, !tbaa !25, !alias.scope !367
  %i.ar = shufflevector <2 x double> %i.v, <2 x double> %i.m, <2 x i32> <i32 1, i32 3>
  %i.as = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.af, <2 x double> zeroinitializer) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 1
  %i.au = call double @llvm.fmuladd.f64(double %i.r, double %i.j, double %i.at)
  %i.av = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.au, i64 0
  %i.aw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.p, <2 x double> %i.av) ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  store double %i.ax, ptr %i.u, align 8, !tbaa !25, !alias.scope !367
  %i.ay = shufflevector <2 x double> %i.aw, <2 x double> %i.as, <2 x i32> <i32 1, i32 2>
  %i.az = load <2 x double>, ptr %i.ad, align 8, !tbaa !25, !noalias !367 ; 4 uses
  %i.ba = shufflevector <2 x double> %i.h, <2 x double> %i.v, <2 x i32> <i32 0, i32 3>
  %i.bb = insertelement <2 x double> %i.af, double %i.b, i64 0
  %i.bc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.bb, <2 x double> zeroinitializer)
  %i.bd = shufflevector <2 x double> %i.h, <2 x double> %i.az, <2 x i32> <i32 1, i32 2>
  %i.be = insertelement <2 x double> %i.w, double %i.j, i64 1
  %i.bf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.be, <2 x double> %i.bc)
  %i.bg = shufflevector <2 x double> %i.m, <2 x double> %i.az, <2 x i32> <i32 0, i32 3>
  %i.bh = insertelement <2 x double> %i.x, double %i.l, i64 1
  %i.bi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bh, <2 x double> %i.bf) ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  store double %i.bj, ptr %12, align 8, !tbaa !25, !alias.scope !367
  %i.bk = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.w, <2 x double> %i.ay)
  %i.bm = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.x, <2 x double> %i.bl)
  store <2 x double> %i.bn, ptr %i.ae, align 8, !tbaa !25, !alias.scope !367
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.bp = extractelement <2 x double> %i.bi, i64 1
  store double %i.bp, ptr %i.bo, align 8, !tbaa !25, !alias.scope !367
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !124 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !124 ; 2 uses
  %.not7790 = icmp eq ptr %i.br, %i.bt
  br i1 %.not7790, label %_ZN2cv4usac25FundamentalDegeneracyImpl12getOutliersHERKNS_3MatE.exit, label %.lr.ph95

.lr.ph95:                                         ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cf = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.b

._crit_edge96:                                    ; preds = %bb.p
  br i1 %.251, label %bb.r, label %_ZN2cv4usac25FundamentalDegeneracyImpl12getOutliersHERKNS_3MatE.exit

bb.b:                                             ; preds = %.lr.ph95, %bb.p
  %i.cr = phi float [ f0x7F7FFFFF, %.lr.ph95 ], [ %i.fa, %bb.p ] ; 4 uses
  %indvars.iv = phi i64 [ -1, %.lr.ph95 ], [ %indvars.iv.next, %bb.p ]
  %.04992 = phi i1 [ false, %.lr.ph95 ], [ %.251, %bb.p ] ; 2 uses
  %.sroa.071.091 = phi ptr [ %i.br, %.lr.ph95 ], [ %i.fb, %bb.p ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %15, i8 0, i64 72, i1 false), !tbaa !25
  %i.cs = load ptr, ptr %.sroa.071.091, align 8, !tbaa !72 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !31
  %i.cu = sext i32 %i.ct to i64
  %i.cv = load ptr, ptr %2, align 8, !tbaa !72    ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cu
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !31
  %i.cy = shl nsw i32 %i.cx, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !31
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !31
  %i.de = shl nsw i32 %i.dd, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !31
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !31
  %i.dk = shl nsw i32 %i.dj, 2
  %i.dl = call noundef zeroext i1 @_ZN2cv4usac25FundamentalDegeneracyImpl4getHERKNS_4MatxIdLi3ELi3EEERKNS_3VecIdLi3EEEiiiRS3_(ptr noundef nonnull align 8 dereferenceable(2018) %0, ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %i.cy, i32 noundef %i.de, i32 noundef %i.dk, ptr noundef nonnull align 8 dereferenceable(72) %15)
  br i1 %i.dl, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.dm = load ptr, ptr %i.bu, align 8, !tbaa !188 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %16, align 16, !tbaa !31
  store i32 153, ptr %i.bv, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i8 0, i64 48, i1 false)
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.bx, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.by, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %15, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i64 0, ptr %i.ca, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !29
  store ptr %16, ptr %i.bz, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN2cv3MatC2IdLi3ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit unwind label %bb.d

common.resume:                                    ; preds = %bb.ad, %bb.l, %bb.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.dn, %bb.d ], [ %i.ep, %bb.i ], [ %i.ew, %bb.l ], [ %.pn.pn.pn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %common.resume

_ZN2cv3MatC2IdLi3ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dq = load ptr, ptr %i.dp, align 8
  invoke void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN2cv3MatC2IdLi3ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.dr = load ptr, ptr %i.cb, align 8, !tbaa !83
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %indvars.iv.next ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !128 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !128 ; 2 uses
  %.not7885 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not7885, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_ZN2cv3MatC2IdLi3ELi3EEERKNS_4MatxIT_XT0_EXT1_EEEb.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.q

.lr.ph:                                           ; preds = %bb.e, %.thread
  %.03787 = phi i32 [ %.276, %.thread ], [ 3, %bb.e ] ; 2 uses
  %.sroa.067.086 = phi ptr [ %i.em, %.thread ], [ %i.dt, %bb.e ] ; 2 uses
  %i.dx = load i32, ptr %.sroa.067.086, align 4, !tbaa !31
  %i.dy = load ptr, ptr %i.bu, align 8, !tbaa !188 ; 2 uses
  %i.dz = sext i32 %i.dx to i64
  %i.ea = load ptr, ptr %2, align 8, !tbaa !72
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !31
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !51
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call noundef float %i.ef(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, i32 noundef %i.ec)
  %i.eh = fpext float %i.eg to double
  %i.ei = load double, ptr %i.cc, align 8, !tbaa !159
  %i.ej = fcmp ogt double %i.ei, %i.eh
  br i1 %i.ej, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph
  %i.ek = add nsw i32 %.03787, 1                  ; 3 uses
  %i.el = load i32, ptr %i.cd, align 8, !tbaa !168
  %.not = icmp slt i32 %i.ek, %i.el
  br i1 %.not, label %.thread, label %._crit_edge

.thread:                                          ; preds = %.lr.ph, %bb.g
  %.276 = phi i32 [ %i.ek, %bb.g ], [ %.03787, %.lr.ph ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.067.086, i64 4 ; 2 uses
  %.not78 = icmp eq ptr %i.em, %i.dv
  br i1 %.not78, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %.thread, %bb.e
  %.3 = phi i32 [ 3, %bb.e ], [ %.276, %.thread ], [ %i.ek, %bb.g ]
  %i.en = load i32, ptr %i.cd, align 8, !tbaa !168
  %.not55 = icmp slt i32 %.3, %i.en
  br i1 %.not55, label %bb.p, label %bb.h

end_hunk_2
begin_hunk_3_@_ZN2cv4usac25FundamentalDegeneracyImpl20estimateHfrom3PointsERKNS_3MatERKSt6vectorIiSaIiEERS2_:bb.a
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !162
  %i.hl = icmp sgt i32 %i.hk, 0
  br i1 %i.hl, label %.lr.ph.i, label %_ZN2cv4usac25FundamentalDegeneracyImpl12getOutliersHERKNS_3MatE.exit

.lr.ph.i:                                         ; preds = %.critedge
  %i.hm = load ptr, ptr %i.hi, align 8, !tbaa !191
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !192
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 1144
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ac ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv.i
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !74
  %i.hu = fpext float %i.ht to double             ; 2 uses
  %i.hv = fcmp olt double %i.ho, %i.hu
  br i1 %i.hv, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.hw = load i32, ptr %i.hb, align 8, !tbaa !172 ; 2 uses
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hb, align 8, !tbaa !172
  %i.hy = sext i32 %i.hw to i64
  %i.hz = load ptr, ptr %i.hp, align 8, !tbaa !72
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.hy
  %i.ib = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !31
  %i.ic = load double, ptr %i.hq, align 8, !tbaa !160
  %i.id = fcmp olt double %i.ic, %i.hu
  br i1 %i.id, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ie = load i32, ptr %i.hc, align 4, !tbaa !173 ; 2 uses
  %i.if = add nsw i32 %i.ie, 1
  store i32 %i.if, ptr %i.hc, align 4, !tbaa !173
  %i.ig = sext i32 %i.ie to i64
  %i.ih = load ptr, ptr %i.hr, align 8, !tbaa !72
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ig
  store i32 %i.ib, ptr %i.ii, align 4, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ij = load i32, ptr %i.hj, align 8, !tbaa !162
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next.i, %i.ik
  br i1 %i.il, label %bb.z, label %_ZN2cv4usac25FundamentalDegeneracyImpl12getOutliersHERKNS_3MatE.exit, !llvm.loop !13

_ZN2cv4usac25FundamentalDegeneracyImpl12getOutliersHERKNS_3MatE.exit: ; preds = %bb.ac, %bb.a, %.critedge, %._crit_edge96
  %.049.lcssa110 = phi i1 [ false, %bb.a ], [ false, %._crit_edge96 ], [ true, %.critedge ], [ true, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret i1 %.049.lcssa110

bb.ad:                                            ; preds = %bb.u, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.ga, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv4usac25FundamentalDegeneracyImpl13getFfromTrueKERKNS_4MatxIdLi3ELi3EEERNS_3MatERNS0_5ScoreE(ptr noundef nonnull align 8 dereferenceable(2018) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.std::vector.127", align 8   ; 11 uses
  %9 = alloca %"class.std::vector.132", align 8   ; 11 uses
  %10 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %11 = alloca %"class.cv::Matx", align 16        ; 10 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %13 = alloca %"class.cv::Matx", align 8         ; 8 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Mat", align 16         ; 13 uses
  %17 = alloca %"class.cv::Matx", align 8         ; 9 uses
  %18 = alloca %"class.cv::Matx", align 16        ; 10 uses
  %19 = alloca %"class.cv::Mat", align 16         ; 13 uses
  %20 = alloca %"class.cv::Matx", align 8         ; 9 uses
  %21 = alloca %"class.cv::Matx", align 16        ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load <2 x double>, ptr %i.a, align 8, !tbaa !25, !noalias !386 ; 4 uses
  %i.g = load <2 x double>, ptr %1, align 8, !tbaa !25, !noalias !386 ; 4 uses
  %i.h = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.i = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.g, <2 x double> zeroinitializer) ; 2 uses
  %i.j = load <2 x double>, ptr %i.e, align 8     ; 2 uses
  %i.k = insertelement <2 x double> %i.i, double 0.000000e+00, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !25, !noalias !386 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load double, ptr %i.n, align 8, !tbaa !25, !noalias !386 ; 2 uses
  %i.p = load <2 x double>, ptr %i.c, align 8, !tbaa !25, !noalias !386 ; 5 uses
  %i.q = extractelement <2 x double> %i.p, i64 0
  %i.r = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 1, i32 2>
  %i.s = insertelement <2 x double> poison, double %i.o, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> %i.g, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1680
  %i.v = load double, ptr %i.u, align 8, !tbaa !25, !noalias !386 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.x = load <2 x double>, ptr %i.w, align 8, !tbaa !25, !noalias !386 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.aa = shufflevector <2 x double> %i.p, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ab = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ab, <2 x double> zeroinitializer) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.v, double %i.m, double %i.ad)
  %i.af = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ae, i64 0
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.t, <2 x double> %i.af) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1864
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.al = load double, ptr %i.ak, align 8, !tbaa !25, !noalias !387 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.an = load double, ptr %i.am, align 8, !tbaa !25, !noalias !387 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !25, !noalias !387 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.as = load <2 x double>, ptr %i.b, align 8, !tbaa !25, !noalias !386 ; 4 uses
  %i.at = load <2 x double>, ptr %i.d, align 8, !tbaa !25, !noalias !386 ; 4 uses
  %i.au = shufflevector <2 x double> %i.j, <2 x double> %i.as, <2 x i32> <i32 0, i32 3>
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> %i.au, <2 x double> %i.k)
  %i.aw = insertelement <2 x double> %i.at, double %i.m, i64 0
  %i.ax = extractelement <2 x double> %i.at, i64 0
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.aw, <2 x double> %i.av) ; 3 uses
  %i.az = insertelement <2 x double> %i.ay, double 0.000000e+00, i64 1
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.t, <2 x double> %i.az) ; 3 uses
  %i.bb = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 1, i32 3>
  %i.bc = shufflevector <2 x double> %i.as, <2 x double> %i.g, <2 x i32> <i32 0, i32 3>
  %i.bd = insertelement <2 x double> %i.i, double 0.000000e+00, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bc, <2 x double> %i.bd) ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = insertelement <2 x double> poison, double %i.v, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x double> %i.ba, <2 x double> %i.be, <2 x i32> <i32 1, i32 3>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.as, <2 x double> %i.bi)
  %i.bk = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.at, <2 x double> %i.bj) ; 4 uses
  %i.bm = extractelement <2 x double> %i.ay, i64 1
  %i.bn = shufflevector <2 x double> %i.bl, <2 x double> %i.ag, <2 x i32> <i32 1, i32 2>
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bq = load double, ptr %i.y, align 8, !tbaa !25, !noalias !386 ; 2 uses
  %i.br = load double, ptr %i.z, align 8, !tbaa !25, !noalias !386 ; 2 uses
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.q, double %i.ax, double %i.bf) ; 2 uses
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.al, double 0.000000e+00)
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bm, double %i.an, double %i.bt)
  %i.bv = shufflevector <2 x double> %i.ba, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.bw = insertelement <2 x double> %i.g, double %i.ap, i64 0
  %i.bx = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bu, i64 0
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bw, <2 x double> %i.bx) ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  store double %i.bz, ptr %i.aq, align 16, !tbaa !25, !alias.scope !387
  %i.ca = extractelement <2 x double> %i.ac, i64 1
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.m, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.br, double %i.o, double %i.cb) ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x double> %i.ag, <2 x double> %i.by, <2 x i32> <i32 1, i32 3>
  %i.cg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.as, <2 x double> %i.cf)
  %i.ch = insertelement <2 x double> poison, double %i.br, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.at, <2 x double> %i.cg) ; 5 uses
  %i.ck = load <2 x double>, ptr %i.ai, align 8, !tbaa !25, !noalias !387 ; 3 uses
  %i.cl = load <2 x double>, ptr %i.aj, align 8, !tbaa !25, !noalias !387 ; 3 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> %i.ck, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.cn = load <2 x double>, ptr %i.ah, align 8, !tbaa !25, !noalias !387 ; 4 uses
  %i.co = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cn, <2 x double> zeroinitializer)
  %i.cr = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.ck, <2 x double> %i.cq)
  %i.ct = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cl, <2 x double> %i.cs)
  store <2 x double> %i.cu, ptr %11, align 16, !tbaa !25, !alias.scope !387
  %i.cv = shufflevector <2 x double> %i.ck, <2 x double> %i.cn, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.cw = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = insertelement <2 x double> %i.cn, double %i.al, i64 1
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cx, <2 x double> zeroinitializer) ; 2 uses
  %22 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.cy, <2 x i32> <i32 0, i32 2>
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.cv, <2 x double> %22)
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.cm, <2 x double> %i.cz) ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 1
  store double %i.db, ptr %i.ar, align 8, !tbaa !25, !alias.scope !387
  %i.dc = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.de = insertelement <2 x double> %i.dd, double %i.ap, i64 1 ; 2 uses
  %i.df = extractelement <2 x double> %i.cj, i64 0
  %i.dg = shufflevector <2 x double> %i.bl, <2 x double> %i.cj, <2 x i32> <i32 1, i32 2>
  %i.dh = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.di = insertelement <2 x double> %i.dh, double %i.an, i64 0
  %i.dj = shufflevector <2 x double> %i.cy, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.di, <2 x double> %i.dj) ; 2 uses
  %i.dl = shufflevector <2 x double> %i.da, <2 x double> %i.dk, <2 x i32> <i32 0, i32 2>
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.de, <2 x double> %i.dl)
  store <2 x double> %i.dm, ptr %i.bo, align 16, !tbaa !25, !alias.scope !387
  %i.dn = insertelement <2 x double> %i.dk, double 0.000000e+00, i64 0
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.cv, <2 x double> %i.dn)
  %i.dp = extractelement <2 x double> %i.cj, i64 1
  %i.dq = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = insertelement <2 x double> %i.dq, double %i.cc, i64 1
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.cm, <2 x double> %i.do) ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 1
  store double %i.dt, ptr %i.bp, align 16, !tbaa !25, !alias.scope !387
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.df, double %i.al, double 0.000000e+00)
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.an, double %i.dv)
  %i.dx = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = insertelement <2 x double> %i.ds, double %i.dw, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.de, <2 x double> %i.dz)
  store <2 x double> %i.ea, ptr %i.du, align 8, !tbaa !25, !alias.scope !387
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 -1056833530, ptr %10, align 8, !tbaa !29
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %11, ptr %i.ec, align 8, !tbaa !30
  store i64 12884901891, ptr %i.eb, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ed, i8 0, i64 56, i1 false), !tbaa !25, !alias.scope !388
  store double 1.000000e+00, ptr %13, align 8, !tbaa !25, !alias.scope !388
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 32
  store double 1.000000e+00, ptr %i.ee, align 8, !tbaa !25, !alias.scope !388
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 64
  store double 1.000000e+00, ptr %i.ef, align 8, !tbaa !25, !alias.scope !388
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 -1056833530, ptr %12, align 8, !tbaa !29
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %13, ptr %i.eh, align 8, !tbaa !30
  store i64 12884901891, ptr %i.eg, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i64 0, ptr %i.ej, align 8
  store i32 -2113732346, ptr %14, align 8, !tbaa !29
  store ptr %8, ptr %i.ei, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 0, ptr %i.el, align 8
  store i32 -2113732538, ptr %15, align 8, !tbaa !29
  store ptr %9, ptr %i.ek, align 8, !tbaa !30
  %i.em = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.en = invoke noundef i32 @_ZN2cv22decomposeHomographyMatERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.eo = icmp ne i32 %i.en, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br i1 %i.eo, label %bb.e, label %bb.w

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.er = load ptr, ptr %9, align 8, !tbaa !391
  invoke void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ew = load <2 x double>, ptr %i.eq, align 8, !tbaa !25, !noalias !392 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.ey = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.ez = load double, ptr %i.ey, align 16, !tbaa !25, !noalias !392 ; 2 uses
  %i.fa = load <2 x double>, ptr %i.et, align 8, !tbaa !25, !noalias !392 ; 5 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 0
  %i.fc = shufflevector <2 x double> %i.ew, <2 x double> %i.fa, <2 x i32> <i32 1, i32 2>
  %i.fd = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1752 ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !25, !noalias !392 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.fh = load <2 x double>, ptr %i.fg, align 8, !tbaa !25, !noalias !392 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 2 uses
  %i.fk = load ptr, ptr %8, align 8, !tbaa !395   ; 8 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !25, !noalias !396 ; 3 uses
  %i.fm = load <2 x double>, ptr %18, align 16, !tbaa !25, !noalias !392 ; 4 uses
  %i.fn = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fm, <2 x double> zeroinitializer) ; 2 uses
  %i.fp = insertelement <2 x double> %i.fo, double 0.000000e+00, i64 0
  %i.fq = shufflevector <2 x double> %i.fd, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fr = load <2 x double>, ptr %i.ev, align 16  ; 2 uses
  %i.fs = load <2 x double>, ptr %i.ex, align 8, !tbaa !25, !noalias !392 ; 3 uses
  %i.ft = shufflevector <2 x double> %i.fa, <2 x double> %i.fh, <2 x i32> <i32 1, i32 3>
  %i.fu = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.fu, <2 x double> zeroinitializer) ; 2 uses
  %i.fw = insertelement <2 x double> %i.fs, double %i.fl, i64 1
  %23 = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.fv, <2 x i32> <i32 3, i32 1>
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !25, !noalias !396 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !25, !noalias !396 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !25, !noalias !396 ; 2 uses
  %i.gh = insertelement <2 x double> %i.fa, double %i.ff, i64 0
  %i.gi = shufflevector <2 x double> %i.fs, <2 x double> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.gj = insertelement <2 x double> %i.fv, double 0.000000e+00, i64 1
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.gi, <2 x double> %i.gj) ; 2 uses
  %i.gl = insertelement <2 x double> %i.gk, double 0.000000e+00, i64 1
  %i.gm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fq, <2 x double> %i.gl) ; 4 uses
  %i.gn = load <2 x double>, ptr %i.es, align 8, !tbaa !25, !noalias !392 ; 4 uses
  %i.go = shufflevector <2 x double> %i.fr, <2 x double> %i.gn, <2 x i32> <i32 0, i32 3>
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> %i.go, <2 x double> %i.fp)
  %i.gq = load <2 x double>, ptr %i.eu, align 16, !tbaa !25, !noalias !392 ; 4 uses
  %i.gr = shufflevector <2 x double> %i.fs, <2 x double> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gs = extractelement <2 x double> %i.gq, i64 0
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %i.gr, <2 x double> %i.gp) ; 4 uses
  %i.gu = insertelement <2 x double> %i.gt, double 0.000000e+00, i64 1
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fq, <2 x double> %i.gu) ; 3 uses
  %i.gw = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = shufflevector <2 x double> %i.gv, <2 x double> %i.gk, <2 x i32> <i32 1, i32 3>
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gn, <2 x double> %i.gy)
  %i.ha = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gq, <2 x double> %i.gz) ; 5 uses
  %i.hc = extractelement <2 x double> %i.gt, i64 1
  %i.hd = shufflevector <2 x double> %i.hb, <2 x double> %i.gm, <2 x i32> <i32 1, i32 2>
  %i.he = load double, ptr %i.fj, align 8, !tbaa !25, !noalias !392 ; 2 uses
  %i.hf = shufflevector <2 x double> %i.ew, <2 x double> %i.fh, <2 x i32> <i32 1, i32 3>
  %i.hg = shufflevector <2 x double> %i.gn, <2 x double> %i.fm, <2 x i32> <i32 0, i32 3>
  %i.hh = insertelement <2 x double> %i.fo, double 0.000000e+00, i64 1
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hg, <2 x double> %i.hh) ; 2 uses
  %i.hj = load <1 x double>, ptr %i.fi, align 8   ; 2 uses
  %i.hk = shufflevector <1 x double> %i.hj, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.hl = shufflevector <1 x double> %i.hj, <1 x double> poison, <2 x i32> zeroinitializer
  %i.hm = shufflevector <2 x double> %i.gm, <2 x double> %i.hi, <2 x i32> <i32 1, i32 3>
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.gn, <2 x double> %i.hm)
  %i.ho = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.gq, <2 x double> %i.hn) ; 5 uses
  %i.hr = insertelement <2 x double> %i.gt, double %i.he, i64 0
  %i.hs = load double, ptr %i.fz, align 8, !tbaa !25, !noalias !396 ; 2 uses
  %i.ht = extractelement <2 x double> %i.hq, i64 0
  %i.hu = extractelement <2 x double> %i.hq, i64 1
  %i.hv = shufflevector <2 x double> %i.hb, <2 x double> %i.hq, <2 x i32> <i32 0, i32 2>
  %i.hw = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hx, <2 x double> zeroinitializer) ; 2 uses
  %24 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.hy, <2 x i32> <i32 0, i32 2>
  %i.hz = insertelement <2 x double> %i.hy, double 0.000000e+00, i64 0
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1792 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !25, !noalias !397 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 1816 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 1800 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ig = load <2 x double>, ptr %i.fy, align 8, !tbaa !25, !noalias !396 ; 4 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0
  %i.ii = insertelement <2 x double> %i.ig, double %i.ge, i64 0 ; 2 uses
  %i.ij = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 1832 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !25, !noalias !397 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 1856 ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !25, !noalias !397 ; 3 uses
  %i.io = load <2 x double>, ptr %i.gc, align 8, !tbaa !25, !noalias !396 ; 4 uses
  %i.ip = load double, ptr %i.fx, align 8, !tbaa !25, !noalias !396
  %i.iq = insertelement <2 x double> %i.io, double %i.ez, i64 0
  %i.ir = extractelement <2 x double> %i.hi, i64 0
  %i.is = call double @llvm.fmuladd.f64(double %i.fb, double %i.gs, double %i.ir) ; 3 uses
  %i.it = insertelement <2 x double> %i.hk, double %i.is, i64 1
  %i.iu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.it, <2 x double> %i.fw, <2 x double> %23)
  %i.iv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.iq, <2 x double> %i.iu) ; 4 uses
  %i.iw = call double @llvm.fmuladd.f64(double %i.is, double %i.hs, double 0.000000e+00)
  %i.ix = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.iy = insertelement <2 x double> %i.ix, double %i.is, i64 0
  %i.iz = insertelement <2 x double> %i.io, double %i.fl, i64 1
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.iz, <2 x double> zeroinitializer)
  %i.jb = shufflevector <2 x double> %i.gt, <2 x double> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.jc = insertelement <2 x double> %i.io, double %i.ge, i64 0
  %i.jd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.jc, <2 x double> %i.ja)
  %i.je = insertelement <2 x double> %i.io, double %i.gb, i64 1 ; 2 uses
  %i.jf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.je, <2 x double> %24)
  %i.jg = extractelement <2 x double> %i.iv, i64 0
  %i.jh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> %i.je, <2 x double> %i.hz)
  %i.ji = shufflevector <2 x double> %i.hq, <2 x double> %i.iv, <2 x i32> <i32 1, i32 2>
  %i.jj = shufflevector <2 x double> %i.gv, <2 x double> %i.gm, <2 x i32> <i32 0, i32 2>
  %i.jk = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.jl = insertelement <2 x double> %i.jk, double %i.gg, i64 0
  %i.jm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.jl, <2 x double> %i.jd) ; 5 uses
  %i.jn = call double @llvm.fmuladd.f64(double %i.hc, double %i.gb, double %i.iw)
  %i.jo = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.jp = insertelement <2 x double> %i.jo, double %i.jn, i64 1
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %i.ig, <2 x double> %i.jp) ; 5 uses
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %i.ii, <2 x double> %i.jf) ; 3 uses
  %i.js = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.ii, <2 x double> %i.jh) ; 3 uses
  %i.jt = extractelement <2 x double> %i.jq, i64 0
  %i.ju = call double @llvm.fmuladd.f64(double %i.jt, double %i.ib, double 0.000000e+00)
  %i.jv = extractelement <2 x double> %i.jq, i64 1
  %i.jw = extractelement <2 x double> %i.jm, i64 0
  %i.jx = shufflevector <2 x double> %i.jq, <2 x double> %i.jm, <2 x i32> <i32 1, i32 2>
  %i.jy = insertelement <2 x double> poison, double %i.in, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.ib, i64 1
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.kb = load <2 x double>, ptr %i.ic, align 8, !tbaa !25, !noalias !397 ; 4 uses
  %i.kc = load <2 x double>, ptr %i.id, align 8, !tbaa !25, !noalias !397 ; 4 uses
  %i.kd = insertelement <2 x double> %i.kc, double %i.il, i64 0
  %i.ke = extractelement <2 x double> %i.kb, i64 0
  %i.kf = call double @llvm.fmuladd.f64(double %i.jv, double %i.ke, double %i.ju)
  %i.kg = extractelement <2 x double> %i.kc, i64 0
  %i.kh = call double @llvm.fmuladd.f64(double %i.jw, double %i.kg, double %i.kf)
  store double %i.kh, ptr %17, align 8, !tbaa !25, !alias.scope !397
  %i.ki = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kj = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.kk = call double @llvm.fmuladd.f64(double %i.ht, double %i.fl, double 0.000000e+00)
  %i.kl = call double @llvm.fmuladd.f64(double %i.hu, double %i.ip, double %i.kk)
  %i.km = call double @llvm.fmuladd.f64(double %i.jg, double %i.ih, double %i.kl) ; 2 uses
  %i.kn = shufflevector <2 x double> %i.gm, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.ko = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = shufflevector <2 x double> %i.jr, <2 x double> %i.js, <2 x i32> <i32 0, i32 2>
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kn, <2 x double> %i.kp, <2 x double> %i.kq) ; 3 uses
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ku = insertelement <2 x double> %i.kt, double %i.km, i64 1
  %i.kv = shufflevector <2 x double> %i.jr, <2 x double> %i.js, <2 x i32> <i32 1, i32 3>
  %i.kw = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kx = insertelement <2 x double> %i.kw, double %i.il, i64 0
  %i.ky = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kz = insertelement <2 x double> %i.ky, double %i.in, i64 0
  %i.la = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.lb = load <2 x double>, ptr %i.ie, align 8, !tbaa !25, !noalias !397 ; 4 uses
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ld = shufflevector <2 x double> %i.lb, <2 x double> %i.kb, <2 x i32> <i32 1, i32 3>
  %i.le = shufflevector <2 x double> %i.jq, <2 x double> %i.jm, <2 x i32> <i32 0, i32 3>
  %i.lf = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lf, <2 x double> zeroinitializer) ; 2 uses
  %25 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.lg, <2 x i32> <i32 0, i32 2>
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jq, <2 x double> %i.ld, <2 x double> %25)
  %i.li = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.kd, <2 x double> %i.lh) ; 2 uses
  %i.lj = insertelement <2 x double> %i.li, double 0.000000e+00, i64 1
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jz, <2 x double> %i.lj) ; 2 uses
  %i.ll = shufflevector <2 x double> %i.li, <2 x double> %i.lk, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ll, ptr %i.if, align 8, !tbaa !25, !alias.scope !397
  %i.lm = shufflevector <2 x double> %i.lk, <2 x double> %i.lg, <2 x i32> <i32 1, i32 3>
  %i.ln = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> %i.kb, <2 x double> %i.lm)
  %i.lo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.kc, <2 x double> %i.ln)
  store <2 x double> %i.lo, ptr %i.ka, align 8, !tbaa !25, !alias.scope !397
  %i.lp = insertelement <2 x double> %i.lc, double %i.ib, i64 1
  %i.lq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> %i.lp, <2 x double> zeroinitializer)
  %i.lr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.kx, <2 x double> %i.lq)
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> %i.kz, <2 x double> %i.lr)
  store <2 x double> %i.ls, ptr %i.kj, align 8, !tbaa !25, !alias.scope !397
  %i.lt = insertelement <2 x double> poison, double %i.km, i64 0
  %i.lu = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lb, <2 x double> zeroinitializer)
  %i.lw = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lx = insertelement <2 x double> %i.kw, double %i.il, i64 1
  %i.ly = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lx, <2 x double> %i.lv)
  %i.lz = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ma = insertelement <2 x double> %i.ky, double %i.in, i64 1
  %i.mb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.ma, <2 x double> %i.ly)
  store <2 x double> %i.mb, ptr %i.la, align 8, !tbaa !25, !alias.scope !397
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %16, align 16, !tbaa !31
  %i.mc = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 153, ptr %i.mc, align 16, !tbaa !39
  %i.md = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.me = getelementptr inbounds nuw i8, ptr %16, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.md, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.me, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.f
  %i.mf = getelementptr inbounds nuw i8, ptr %16, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.mf, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %17, i64 noundef 0)
          to label %.noexc26 unwind label %bb.q

.noexc26:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.mg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.mh, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !29
  store ptr %16, ptr %i.mg, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.noexc26
  %i.mi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

bb.h:                                             ; preds = %.noexc26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  %i.mj = load ptr, ptr %9, align 8, !tbaa !391
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  invoke void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %i.mk)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ml = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.mm = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.mn = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.mo = load <2 x double>, ptr %i.eq, align 8, !tbaa !25, !noalias !398 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.mq = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.mr = load double, ptr %i.mq, align 16, !tbaa !25, !noalias !398 ; 2 uses
  %i.ms = load <2 x double>, ptr %i.et, align 8, !tbaa !25, !noalias !398 ; 5 uses
  %i.mt = extractelement <2 x double> %i.ms, i64 0
  %i.mu = shufflevector <2 x double> %i.mo, <2 x double> %i.ms, <2 x i32> <i32 1, i32 2>
  %i.mv = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mw = load double, ptr %i.fe, align 8, !tbaa !25, !noalias !398 ; 2 uses
  %i.mx = load <2 x double>, ptr %i.fg, align 8, !tbaa !25, !noalias !398 ; 4 uses
  %i.my = load ptr, ptr %8, align 8, !tbaa !395   ; 8 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 72
  %i.na = load double, ptr %i.mz, align 8, !tbaa !25, !noalias !399 ; 3 uses
  %i.nb = load <2 x double>, ptr %21, align 16, !tbaa !25, !noalias !398 ; 4 uses
  %i.nc = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nc, <2 x double> %i.nb, <2 x double> zeroinitializer) ; 2 uses
  %i.ne = insertelement <2 x double> %i.nd, double 0.000000e+00, i64 0
  %i.nf = shufflevector <2 x double> %i.mv, <2 x double> %i.nb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ng = load <2 x double>, ptr %i.mn, align 16  ; 2 uses
  %i.nh = load <2 x double>, ptr %i.mp, align 8, !tbaa !25, !noalias !398 ; 3 uses
  %i.ni = shufflevector <2 x double> %i.ms, <2 x double> %i.mx, <2 x i32> <i32 1, i32 3>
  %i.nj = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.nj, <2 x double> zeroinitializer) ; 2 uses
  %i.nl = insertelement <2 x double> %i.nh, double %i.na, i64 1
  %26 = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.nk, <2 x i32> <i32 3, i32 1>
  %i.nm = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  %i.nn = getelementptr inbounds nuw i8, ptr %i.my, i64 120
  %i.no = getelementptr inbounds nuw i8, ptr %i.my, i64 80
  %i.np = getelementptr inbounds nuw i8, ptr %i.my, i64 104
  %i.nq = load double, ptr %i.np, align 8, !tbaa !25, !noalias !399 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.my, i64 88
  %i.ns = getelementptr inbounds nuw i8, ptr %i.my, i64 112
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !25, !noalias !399 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.my, i64 136
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !25, !noalias !399 ; 2 uses
  %i.nw = insertelement <2 x double> %i.ms, double %i.mw, i64 0
  %i.nx = shufflevector <2 x double> %i.nh, <2 x double> %i.nb, <2 x i32> <i32 0, i32 3>
  %i.ny = insertelement <2 x double> %i.nk, double 0.000000e+00, i64 1
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nw, <2 x double> %i.nx, <2 x double> %i.ny) ; 2 uses
  %i.oa = insertelement <2 x double> %i.nz, double 0.000000e+00, i64 1
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.nf, <2 x double> %i.oa) ; 4 uses
  %i.oc = load <2 x double>, ptr %i.ml, align 8, !tbaa !25, !noalias !398 ; 4 uses
  %i.od = shufflevector <2 x double> %i.ng, <2 x double> %i.oc, <2 x i32> <i32 0, i32 3>
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mo, <2 x double> %i.od, <2 x double> %i.ne)
  %i.of = load <2 x double>, ptr %i.mm, align 16, !tbaa !25, !noalias !398 ; 4 uses
  %i.og = shufflevector <2 x double> %i.nh, <2 x double> %i.of, <2 x i32> <i32 0, i32 3>
  %i.oh = extractelement <2 x double> %i.of, i64 0
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.og, <2 x double> %i.oe) ; 4 uses
  %i.oj = insertelement <2 x double> %i.oi, double 0.000000e+00, i64 1
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.nf, <2 x double> %i.oj) ; 3 uses
  %i.ol = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.om = shufflevector <2 x double> %i.ol, <2 x double> poison, <2 x i32> zeroinitializer
  %i.on = shufflevector <2 x double> %i.ok, <2 x double> %i.nz, <2 x i32> <i32 1, i32 3>
  %i.oo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.om, <2 x double> %i.oc, <2 x double> %i.on)
  %i.op = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.of, <2 x double> %i.oo) ; 5 uses
  %i.or = extractelement <2 x double> %i.oi, i64 1
  %i.os = shufflevector <2 x double> %i.oq, <2 x double> %i.ob, <2 x i32> <i32 1, i32 2>
  %i.ot = load double, ptr %i.fj, align 8, !tbaa !25, !noalias !398 ; 2 uses
  %i.ou = shufflevector <2 x double> %i.mo, <2 x double> %i.mx, <2 x i32> <i32 1, i32 3>
  %i.ov = shufflevector <2 x double> %i.oc, <2 x double> %i.nb, <2 x i32> <i32 0, i32 3>
  %i.ow = insertelement <2 x double> %i.nd, double 0.000000e+00, i64 1
  %i.ox = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.ov, <2 x double> %i.ow) ; 2 uses
  %i.oy = load <1 x double>, ptr %i.fi, align 8   ; 2 uses
  %i.oz = shufflevector <1 x double> %i.oy, <1 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.pa = shufflevector <1 x double> %i.oy, <1 x double> poison, <2 x i32> zeroinitializer
  %i.pb = shufflevector <2 x double> %i.ob, <2 x double> %i.ox, <2 x i32> <i32 1, i32 3>
  %i.pc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> %i.oc, <2 x double> %i.pb)
  %i.pd = insertelement <2 x double> poison, double %i.ot, i64 0
  %i.pe = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pe, <2 x double> %i.of, <2 x double> %i.pc) ; 5 uses
  %i.pg = insertelement <2 x double> %i.oi, double %i.ot, i64 0
  %i.ph = load double, ptr %i.no, align 8, !tbaa !25, !noalias !399 ; 2 uses
  %i.pi = extractelement <2 x double> %i.pf, i64 0
  %i.pj = extractelement <2 x double> %i.pf, i64 1
  %i.pk = shufflevector <2 x double> %i.oq, <2 x double> %i.pf, <2 x i32> <i32 0, i32 2>
  %i.pl = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.pm = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.pm, <2 x double> zeroinitializer) ; 2 uses
  %27 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.pn, <2 x i32> <i32 0, i32 2>
  %i.po = insertelement <2 x double> %i.pn, double 0.000000e+00, i64 0
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.pp = load double, ptr %i.ia, align 8, !tbaa !25, !noalias !400 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.pr = load <2 x double>, ptr %i.nn, align 8, !tbaa !25, !noalias !399 ; 4 uses
  %i.ps = extractelement <2 x double> %i.pr, i64 0
  %i.pt = insertelement <2 x double> %i.pr, double %i.nt, i64 0 ; 2 uses
  %i.pu = shufflevector <2 x double> %i.ok, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pv = load double, ptr %i.ik, align 8, !tbaa !25, !noalias !400 ; 3 uses
  %i.pw = load double, ptr %i.im, align 8, !tbaa !25, !noalias !400 ; 3 uses
  %i.px = load <2 x double>, ptr %i.nr, align 8, !tbaa !25, !noalias !399 ; 4 uses
  %i.py = load double, ptr %i.nm, align 8, !tbaa !25, !noalias !399
  %i.pz = insertelement <2 x double> %i.px, double %i.mr, i64 0
  %i.qa = extractelement <2 x double> %i.ox, i64 0
  %i.qb = call double @llvm.fmuladd.f64(double %i.mt, double %i.oh, double %i.qa) ; 3 uses
  %i.qc = insertelement <2 x double> %i.oz, double %i.qb, i64 1
  %i.qd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.nl, <2 x double> %26)
  %i.qe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pg, <2 x double> %i.pz, <2 x double> %i.qd) ; 4 uses
  %i.qf = call double @llvm.fmuladd.f64(double %i.qb, double %i.ph, double 0.000000e+00)
  %i.qg = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qh = insertelement <2 x double> %i.qg, double %i.qb, i64 0
  %i.qi = insertelement <2 x double> %i.px, double %i.na, i64 1
  %i.qj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.qi, <2 x double> zeroinitializer)
  %i.qk = shufflevector <2 x double> %i.oi, <2 x double> %i.oq, <2 x i32> <i32 1, i32 3>
  %i.ql = insertelement <2 x double> %i.px, double %i.nt, i64 0
  %i.qm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.ql, <2 x double> %i.qj)
  %i.qn = insertelement <2 x double> %i.px, double %i.nq, i64 1 ; 2 uses
  %i.qo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.qn, <2 x double> %27)
  %i.qp = extractelement <2 x double> %i.qe, i64 0
  %i.qq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.qn, <2 x double> %i.po)
  %i.qr = shufflevector <2 x double> %i.pf, <2 x double> %i.qe, <2 x i32> <i32 1, i32 2>
  %i.qs = shufflevector <2 x double> %i.ok, <2 x double> %i.ob, <2 x i32> <i32 0, i32 2>
  %i.qt = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.qu = insertelement <2 x double> %i.qt, double %i.nv, i64 0
  %i.qv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qs, <2 x double> %i.qu, <2 x double> %i.qm) ; 5 uses
  %i.qw = call double @llvm.fmuladd.f64(double %i.or, double %i.nq, double %i.qf)
  %i.qx = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.qy = insertelement <2 x double> %i.qx, double %i.qw, i64 1
  %i.qz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.pr, <2 x double> %i.qy) ; 5 uses
  %i.ra = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.pt, <2 x double> %i.qo) ; 3 uses
  %i.rb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qr, <2 x double> %i.pt, <2 x double> %i.qq) ; 3 uses
  %i.rc = extractelement <2 x double> %i.qz, i64 0
  %i.rd = call double @llvm.fmuladd.f64(double %i.rc, double %i.pp, double 0.000000e+00)
  %i.re = extractelement <2 x double> %i.qz, i64 1
  %i.rf = extractelement <2 x double> %i.qv, i64 0
  %i.rg = shufflevector <2 x double> %i.qz, <2 x double> %i.qv, <2 x i32> <i32 1, i32 2>
  %i.rh = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.pp, i64 1
  %i.rj = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.rk = load <2 x double>, ptr %i.ic, align 8, !tbaa !25, !noalias !400 ; 4 uses
  %i.rl = load <2 x double>, ptr %i.id, align 8, !tbaa !25, !noalias !400 ; 4 uses
  %i.rm = insertelement <2 x double> %i.rl, double %i.pv, i64 0
  %i.rn = extractelement <2 x double> %i.rk, i64 0
  %i.ro = call double @llvm.fmuladd.f64(double %i.re, double %i.rn, double %i.rd)
  %i.rp = extractelement <2 x double> %i.rl, i64 0
  %i.rq = call double @llvm.fmuladd.f64(double %i.rf, double %i.rp, double %i.ro)
  store double %i.rq, ptr %20, align 8, !tbaa !25, !alias.scope !400
  %i.rr = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rs = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.rt = call double @llvm.fmuladd.f64(double %i.pi, double %i.na, double 0.000000e+00)
  %i.ru = call double @llvm.fmuladd.f64(double %i.pj, double %i.py, double %i.rt)
  %i.rv = call double @llvm.fmuladd.f64(double %i.qp, double %i.ps, double %i.ru) ; 2 uses
  %i.rw = shufflevector <2 x double> %i.ob, <2 x double> %i.qe, <2 x i32> <i32 0, i32 2>
  %i.rx = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.ry = shufflevector <2 x double> %i.rx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rz = shufflevector <2 x double> %i.ra, <2 x double> %i.rb, <2 x i32> <i32 0, i32 2>
  %i.sa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rw, <2 x double> %i.ry, <2 x double> %i.rz) ; 3 uses
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sc = shufflevector <2 x double> %i.qv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sd = insertelement <2 x double> %i.sc, double %i.rv, i64 1
  %i.se = shufflevector <2 x double> %i.ra, <2 x double> %i.rb, <2 x i32> <i32 1, i32 3>
  %i.sf = shufflevector <2 x double> %i.rk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.sg = insertelement <2 x double> %i.sf, double %i.pv, i64 0
  %i.sh = shufflevector <2 x double> %i.rl, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.si = insertelement <2 x double> %i.sh, double %i.pw, i64 0
  %i.sj = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.sk = load <2 x double>, ptr %i.ie, align 8, !tbaa !25, !noalias !400 ; 4 uses
  %i.sl = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sm = shufflevector <2 x double> %i.sk, <2 x double> %i.rk, <2 x i32> <i32 1, i32 3>
  %i.sn = shufflevector <2 x double> %i.qz, <2 x double> %i.qv, <2 x i32> <i32 0, i32 3>
  %i.so = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sn, <2 x double> %i.so, <2 x double> zeroinitializer) ; 2 uses
  %28 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.sp, <2 x i32> <i32 0, i32 2>
  %i.sq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> %i.sm, <2 x double> %28)
  %i.sr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rg, <2 x double> %i.rm, <2 x double> %i.sq) ; 2 uses
  %i.ss = insertelement <2 x double> %i.sr, double 0.000000e+00, i64 1
  %i.st = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.ri, <2 x double> %i.ss) ; 2 uses
  %i.su = shufflevector <2 x double> %i.sr, <2 x double> %i.st, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.su, ptr %i.pq, align 8, !tbaa !25, !alias.scope !400
  %i.sv = shufflevector <2 x double> %i.st, <2 x double> %i.sp, <2 x i32> <i32 1, i32 3>
  %i.sw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rr, <2 x double> %i.rk, <2 x double> %i.sv)
  %i.sx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.rl, <2 x double> %i.sw)
  store <2 x double> %i.sx, ptr %i.rj, align 8, !tbaa !25, !alias.scope !400
  %i.sy = insertelement <2 x double> %i.sl, double %i.pp, i64 1
  %i.sz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sd, <2 x double> %i.sy, <2 x double> zeroinitializer)
  %i.ta = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.se, <2 x double> %i.sg, <2 x double> %i.sz)
  %i.tb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.si, <2 x double> %i.ta)
  store <2 x double> %i.tb, ptr %i.rs, align 8, !tbaa !25, !alias.scope !400
  %i.tc = insertelement <2 x double> poison, double %i.rv, i64 0
  %i.td = shufflevector <2 x double> %i.tc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.te = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.td, <2 x double> %i.sk, <2 x double> zeroinitializer)
  %i.tf = shufflevector <2 x double> %i.rb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tg = insertelement <2 x double> %i.sf, double %i.pv, i64 1
  %i.th = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.tg, <2 x double> %i.te)
  %i.ti = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tj = insertelement <2 x double> %i.sh, double %i.pw, i64 1
  %i.tk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ti, <2 x double> %i.tj, <2 x double> %i.th)
  store <2 x double> %i.tk, ptr %i.sj, align 8, !tbaa !25, !alias.scope !400
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %19, align 16, !tbaa !31
  %i.tl = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i32 153, ptr %i.tl, align 16, !tbaa !39
  %i.tm = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.tn = getelementptr inbounds nuw i8, ptr %19, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tm, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.tn, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc27 unwind label %bb.r

.noexc27:                                         ; preds = %bb.i
  %i.to = getelementptr inbounds nuw i8, ptr %19, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.to, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %20, i64 noundef 0)
          to label %.noexc28 unwind label %bb.r

.noexc28:                                         ; preds = %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.tp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.tq, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !29
  store ptr %19, ptr %i.tp, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %.noexc28
  %i.tr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %.body29

bb.k:                                             ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !127 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !186 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !51
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 80
  %i.ty = load ptr, ptr %i.tx, align 8
  %i.tz = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ty(ptr noundef nonnull align 8 dereferenceable(8) %i.tv, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.ua = load ptr, ptr %i.tt, align 8, !tbaa !51
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 72
  %i.uc = load ptr, ptr %i.ub, align 8
  %i.ud = invoke i64 %i.uc(ptr noundef nonnull align 8 dereferenceable(8) %i.tt, ptr noundef nonnull align 8 dereferenceable(24) %i.tz)
          to label %bb.m unwind label %bb.s       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.ue = load ptr, ptr %i.ts, align 8, !tbaa !127 ; 2 uses
  %i.uf = load ptr, ptr %i.tu, align 8, !tbaa !186 ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !51
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 80
  %i.ui = load ptr, ptr %i.uh, align 8
  %i.uj = lshr i64 %i.ud, 32
  %i.uk = trunc nuw i64 %i.uj to i32
  %i.ul = bitcast i32 %i.uk to float
  %i.um = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.ui(ptr noundef nonnull align 8 dereferenceable(8) %i.uf, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.un = load ptr, ptr %i.ue, align 8, !tbaa !51
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 72
  %i.up = load ptr, ptr %i.uo, align 8
  %i.uq = invoke i64 %i.up(ptr noundef nonnull align 8 dereferenceable(8) %i.ue, ptr noundef nonnull align 8 dereferenceable(24) %i.um)
          to label %bb.o unwind label %bb.s       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ur = lshr i64 %i.uq, 32
  %i.us = trunc nuw i64 %i.ur to i32
  %i.ut = bitcast i32 %i.us to float
  %i.uu = fcmp olt float %i.ul, %i.ut
  br i1 %i.uu, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.uv = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %._crit_edge unwind label %bb.s ; 0 uses

bb.q:                                             ; preds = %.noexc, %bb.f, %bb.e
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.uw, %bb.q ], [ %i.mi, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.v

bb.r:                                             ; preds = %.noexc27, %bb.i, %bb.h
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %.body29

.body29:                                          ; preds = %bb.j, %bb.r
  %eh.lpad-body30 = phi { ptr, i32 } [ %i.ux, %bb.r ], [ %i.tr, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.u

bb.s:                                             ; preds = %bb.k, %bb.l, %bb.t, %bb.p, %bb.n, %bb.m
  %i.uy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.uz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %._crit_edge unwind label %bb.s ; 0 uses

._crit_edge:                                      ; preds = %bb.p, %bb.t
  %storemerge = phi i64 [ %i.uq, %bb.t ], [ %i.ud, %bb.p ]
  store i64 %storemerge, ptr %3, align 4
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.w

bb.u:                                             ; preds = %bb.s, %.body29
  %.pn21.pn = phi { ptr, i32 } [ %i.uy, %bb.s ], [ %eh.lpad-body30, %.body29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.body
  %.pn21.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %bb.u ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.z

bb.w:                                             ; preds = %bb.c, %._crit_edge
  %i.va = load ptr, ptr %9, align 8, !tbaa !391   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.vb = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !401
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.va to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.vf) #21
  br label %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit:   ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.vg = load ptr, ptr %8, align 8, !tbaa !395   ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.vg, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit
  %i.vh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !402
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = ptrtoint ptr %i.vg to i64
  %i.vl = sub i64 %i.vj, %i.vk
  call void @_ZdlPvm(ptr noundef nonnull %i.vg, i64 noundef %i.vl) #21
  br label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN2cv3VecIdLi3EEESaIS2_EED2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret i1 %i.eo

bb.z:                                             ; preds = %bb.v, %bb.d
  %.pn21.pn.pn.pn = phi { ptr, i32 } [ %.pn21.pn.pn, %bb.v ], [ %i.ep, %bb.d ]
  %i.vm = load ptr, ptr %9, align 8, !tbaa !391   ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN2cv4usac25FundamentalDegeneracyImpl13calibDegensacERKNS_4MatxIdLi3ELi3EEERNS_3MatERNS0_5ScoreEiRKS8_:bb.a
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = insertelement <2 x double> poison, double %i.fu, i64 0 ; 2 uses
  %i.gc = insertelement <2 x double> poison, double %indvar.conv, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.fd, i64 1
  %i.ge = load <2 x double>, ptr %i.bq, align 8, !tbaa !25, !noalias !429 ; 4 uses
  %i.gf = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = insertelement <2 x double> poison, double %i.fl, i64 0 ; 2 uses
  %i.gi = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gj = insertelement <2 x double> poison, double %i.ft, i64 0 ; 2 uses
  %i.gk = insertelement <2 x double> %i.gb, double %indvar.conv, i64 1
  %i.gl = insertelement <2 x double> %i.fr, double %i.fn, i64 0
  %i.gm = insertelement <2 x double> %i.fp, double %i.fc, i64 0
  %i.gn = insertelement <2 x double> %i.gh, double %i.fo, i64 1
  %i.go = extractelement <2 x double> %i.ge, i64 0
  %i.gp = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gq = insertelement <2 x double> %i.gp, double %indvar.conv, i64 1
  %i.gr = load <2 x double>, ptr %i.bp, align 8, !tbaa !25 ; 5 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 1 ; 2 uses
  %i.gt = fneg double %i.gs
  %i.gu = fmul double %i.fc, %i.gt
  store double %i.gu, ptr %i.au, align 8, !tbaa !25
  %i.gv = load double, ptr %i.bj, align 8, !tbaa !25, !noalias !428 ; 2 uses
  %i.gw = load <4 x double>, ptr %i.bg, align 8, !tbaa !25, !noalias !428 ; 5 uses
  %i.gx = load double, ptr %i.bh, align 8, !tbaa !25, !noalias !428 ; 2 uses
  %i.gy = load <2 x double>, ptr %i.bi, align 8
  %i.gz = load <4 x double>, ptr %1, align 8, !tbaa !25, !noalias !428 ; 3 uses
  %i.ha = load double, ptr %i.be, align 8, !tbaa !25, !noalias !428 ; 2 uses
  %i.hb = load double, ptr %i.bf, align 8, !tbaa !25, !noalias !428 ; 3 uses
  %i.hc = call double @llvm.fmuladd.f64(double %i.fc, double %i.hb, double 0.000000e+00)
  %i.hd = extractelement <4 x double> %i.gw, i64 0
  %i.he = call double @llvm.fmuladd.f64(double %i.fm, double %i.hd, double %i.hc)
  %i.hf = call double @llvm.fmuladd.f64(double %i.fi, double %i.gx, double %i.he) ; 2 uses
  %i.hg = shufflevector <4 x double> %i.gz, <4 x double> poison, <2 x i32> <i32 2, i32 0> ; 3 uses
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.hg, <2 x double> zeroinitializer)
  %i.hi = shufflevector <4 x double> %i.gw, <4 x double> %i.gz, <2 x i32> <i32 1, i32 7>
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.hi, <2 x double> %i.hh)
  %i.hk = shufflevector <4 x double> %i.gw, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.hl = insertelement <2 x double> %i.hk, double %i.gv, i64 0 ; 2 uses
  %i.hm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.hl, <2 x double> %i.hj) ; 3 uses
  %i.hn = call double @llvm.fmuladd.f64(double %i.fq, double %i.hb, double 0.000000e+00)
  %i.ho = shufflevector <4 x double> %i.gz, <4 x double> %i.gw, <2 x i32> <i32 2, i32 4>
  %i.hp = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.hn, i64 1
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.ho, <2 x double> %i.hp)
  %i.hr = shufflevector <4 x double> %i.gw, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.hs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.hr, <2 x double> %i.hq) ; 3 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 0
  %i.hu = call double @llvm.fmuladd.f64(double %i.fo, double %i.gv, double %i.ht) ; 2 uses
  %i.hv = extractelement <2 x double> %i.hm, i64 1 ; 2 uses
  %i.hw = call double @llvm.fmuladd.f64(double %i.hv, double %indvar.conv, double 0.000000e+00)
  %i.hx = call double @llvm.fmuladd.f64(double %i.hf, double %i.ft, double %i.hw)
  %i.hy = shufflevector <2 x double> %i.gb, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  %i.hz = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hx, i64 0
  %i.ia = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.hy, <2 x double> %i.hz) ; 2 uses
  %i.ib = extractelement <2 x double> %i.ia, i64 0
  store double %i.ib, ptr %14, align 8, !tbaa !25, !alias.scope !429
  %i.ic = call double @llvm.fmuladd.f64(double %i.hv, double %i.gs, double 0.000000e+00)
  %i.id = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ig = insertelement <2 x double> %i.if, double %i.ic, i64 1
  %i.ih = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.gd, <2 x double> %i.ig)
  %i.ii = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ge, <2 x double> %i.ih)
  store <2 x double> %i.ij, ptr %i.br, align 8, !tbaa !25, !alias.scope !429
  %i.ik = insertelement <2 x double> %i.hg, double %i.hb, i64 0
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.ik, <2 x double> zeroinitializer)
  %i.im = insertelement <2 x double> %i.hk, double %i.ha, i64 1
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.im, <2 x double> %i.il)
  %i.io = insertelement <2 x double> %i.hk, double %i.gx, i64 0
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.io, <2 x double> %i.in) ; 5 uses
  %i.iq = extractelement <2 x double> %i.ip, i64 1
  %i.ir = call double @llvm.fmuladd.f64(double %i.iq, double %indvar.conv, double 0.000000e+00)
  %i.is = shufflevector <2 x double> %i.gj, <2 x double> %i.gr, <2 x i32> <i32 0, i32 2>
  %i.it = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ir, i64 0
  %i.iu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.is, <2 x double> %i.it)
  %i.iv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.hg, <2 x double> zeroinitializer)
  %i.iw = insertelement <2 x double> %i.gy, double %i.ha, i64 1
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.iw, <2 x double> %i.iv)
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.hl, <2 x double> %i.ix) ; 5 uses
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> %i.ip, <2 x i32> <i32 0, i32 2>
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iz, <2 x double> %i.gk, <2 x double> %i.iu) ; 2 uses
  %i.jb = extractelement <2 x double> %i.ja, i64 0
  store double %i.jb, ptr %i.bs, align 8, !tbaa !25, !alias.scope !429
  %i.jc = extractelement <2 x double> %i.ja, i64 1
  %i.jd = extractelement <2 x double> %i.iy, i64 0
  %i.je = call double @llvm.fmuladd.f64(double %i.jd, double %i.go, double %i.jc)
  store double %i.je, ptr %i.bt, align 8, !tbaa !25, !alias.scope !429
  %i.jf = shufflevector <2 x double> %i.iy, <2 x double> %i.ip, <2 x i32> <i32 1, i32 3>
  %i.jg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> %i.gr, <2 x double> zeroinitializer) ; 2 uses
  %i.jh = extractelement <2 x double> %i.hs, i64 1
  %i.ji = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = insertelement <2 x double> %i.gj, double %indvar.conv, i64 1
  %i.jk = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = insertelement <2 x double> %i.gp, double %i.fu, i64 0
  %i.jn = shufflevector <2 x double> %i.ip, <2 x double> %i.iy, <2 x i32> <i32 0, i32 3>
  %i.jo = insertelement <2 x double> %i.gr, double %i.fd, i64 0
  %i.jp = shufflevector <2 x double> %i.jg, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.jq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.jo, <2 x double> %i.jp) ; 2 uses
  %i.jr = insertelement <2 x double> %i.jq, double 0.000000e+00, i64 1
  %i.js = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %i.gq, <2 x double> %i.jr) ; 2 uses
  %i.jt = extractelement <2 x double> %i.js, i64 0
  store double %i.jt, ptr %i.bu, align 8, !tbaa !25, !alias.scope !429
  %i.ju = shufflevector <2 x double> %i.js, <2 x double> %i.jg, <2 x i32> <i32 1, i32 2>
  %i.jv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.jj, <2 x double> %i.ju)
  %i.jw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jm, <2 x double> %i.jv)
  store <2 x double> %i.jw, ptr %i.bv, align 8, !tbaa !25, !alias.scope !429
  %i.jx = extractelement <2 x double> %i.jq, i64 1
  %i.jy = call double @llvm.fmuladd.f64(double %i.jh, double %i.fd, double %i.jx)
  %i.jz = extractelement <2 x double> %i.ge, i64 1
  %i.ka = call double @llvm.fmuladd.f64(double %i.hu, double %i.jz, double %i.jy)
  store double %i.ka, ptr %i.bw, align 8, !tbaa !25, !alias.scope !429
  store i32 -1056833530, ptr %13, align 8, !tbaa !29
  store ptr %14, ptr %i.by, align 8, !tbaa !30
  store i64 12884901891, ptr %i.bx, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, i8 0, i64 56, i1 false), !tbaa !25, !alias.scope !430
  store double 1.000000e+00, ptr %16, align 8, !tbaa !25, !alias.scope !430
  store double 1.000000e+00, ptr %i.ca, align 8, !tbaa !25, !alias.scope !430
  store double 1.000000e+00, ptr %i.cb, align 8, !tbaa !25, !alias.scope !430
  store i32 -1056833530, ptr %15, align 8, !tbaa !29
  store ptr %16, ptr %i.cd, align 8, !tbaa !30
  store i64 12884901891, ptr %i.cc, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store i64 0, ptr %i.cf, align 8
  store i32 33882112, ptr %17, align 8, !tbaa !29
  store ptr %10, ptr %i.ce, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  store i64 0, ptr %i.ch, align 8
  store i32 33882112, ptr %18, align 8, !tbaa !29
  store ptr %11, ptr %i.cg, align 8, !tbaa !30
  %i.kb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.kc = invoke noundef i32 @_ZN2cv22decomposeHomographyMatERKNS_11_InputArrayES2_RKNS_12_OutputArrayES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.kb)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.kd = icmp eq i32 %i.kc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br i1 %i.kd, label %bb.ay, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.bo

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  %i.kf = load ptr, ptr %11, align 8, !tbaa !121
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec") align 8 %22, ptr noundef nonnull align 8 dereferenceable(208) %i.kf)
          to label %bb.i unwind label %bb.z

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %22)
          to label %bb.j unwind label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.kg = load <2 x double>, ptr %i.ao, align 8, !tbaa !25, !noalias !431 ; 4 uses
  %i.kh = load <2 x double>, ptr %i.ci, align 8
  %i.ki = load double, ptr %i.cj, align 8, !tbaa !25, !noalias !431 ; 2 uses
  %i.kj = load double, ptr %i.ck, align 16, !tbaa !25, !noalias !431
  %i.kk = load double, ptr %i.cm, align 16, !tbaa !25, !noalias !431
  %i.kl = load double, ptr %i.cn, align 8, !tbaa !25, !noalias !431
  %i.km = load double, ptr %i.co, align 8, !tbaa !25, !noalias !431 ; 3 uses
  %i.kn = load double, ptr %i.cp, align 16, !tbaa !25, !noalias !431
  %i.ko = load <2 x double>, ptr %i.cq, align 8, !tbaa !25, !noalias !431 ; 4 uses
  %i.kp = load double, ptr %i.cr, align 8, !tbaa !25, !noalias !431 ; 2 uses
  %i.kq = load <2 x double>, ptr %21, align 16, !tbaa !25, !noalias !431
  %i.kr = load <2 x double>, ptr %i.cl, align 8, !tbaa !25, !noalias !431 ; 4 uses
  %i.ks = load <2 x double>, ptr %i.az, align 8, !tbaa !25, !noalias !431 ; 4 uses
  %i.kt = load double, ptr %i.cs, align 8, !tbaa !25, !noalias !431 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  %i.ku = load ptr, ptr %10, align 8, !tbaa !121
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %23, ptr noundef nonnull align 8 dereferenceable(208) %i.ku)
          to label %bb.k unwind label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.kv = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.kr, <2 x double> zeroinitializer) ; 2 uses
  %i.kx = insertelement <2 x double> %i.kq, double %i.kk, i64 1 ; 3 uses
  %31 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.kw, <2 x i32> <i32 0, i32 2>
  %i.ky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.kx, <2 x double> %31)
  %i.kz = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.la = insertelement <2 x double> %i.kz, double %i.kt, i64 1
  %i.lb = insertelement <2 x double> %i.kh, double %i.kl, i64 1 ; 3 uses
  %i.lc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.lb, <2 x double> %i.ky) ; 4 uses
  %i.ld = shufflevector <2 x double> %i.ks, <2 x double> %i.ko, <2 x i32> <i32 1, i32 2>
  %i.le = insertelement <2 x double> %i.kr, double %i.km, i64 0
  %i.lf = shufflevector <2 x double> %i.kw, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.lg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ld, <2 x double> %i.le, <2 x double> %i.lf) ; 2 uses
  %i.lh = insertelement <2 x double> %i.kr, double %i.km, i64 1
  %i.li = insertelement <2 x double> %i.lg, double 0.000000e+00, i64 0
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.lh, <2 x double> %i.li) ; 2 uses
  %32 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.lj, <2 x i32> <i32 0, i32 2>
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.kx, <2 x double> %32)
  %i.ll = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lm = insertelement <2 x double> %i.ll, double %i.kp, i64 1
  %i.ln = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.lb, <2 x double> %i.lk) ; 4 uses
  %i.lo = extractelement <2 x double> %i.kg, i64 1
  %i.lp = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> %i.kr, <2 x double> zeroinitializer) ; 2 uses
  %i.lr = extractelement <2 x double> %i.lq, i64 1
  %i.ls = call double @llvm.fmuladd.f64(double %i.lo, double %i.km, double %i.lr)
  %33 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.lq, <2 x i32> <i32 0, i32 2>
  %i.lt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kg, <2 x double> %i.kx, <2 x double> %33)
  %i.lu = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lv = insertelement <2 x double> %i.lu, double %i.ki, i64 1
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.lb, <2 x double> %i.lt) ; 4 uses
  %i.lx = extractelement <2 x double> %i.lw, i64 1
  %i.ly = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ma = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.mb = insertelement <2 x double> %i.ma, double %i.kj, i64 1 ; 3 uses
  %i.mc = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.md = insertelement <2 x double> %i.mc, double %i.ls, i64 0
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.mb, <2 x double> %i.md) ; 4 uses
  %i.mf = extractelement <2 x double> %i.me, i64 1
  %i.mg = load double, ptr %i.cw, align 8, !tbaa !25, !noalias !432 ; 2 uses
  %i.mh = load double, ptr %i.cx, align 16, !tbaa !25, !noalias !432
  %i.mi = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.mj = shufflevector <2 x double> %i.mi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mk = shufflevector <2 x double> %i.lj, <2 x double> %i.ln, <2 x i32> <i32 1, i32 2>
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mj, <2 x double> %i.mb, <2 x double> %i.mk) ; 5 uses
  %i.mm = load double, ptr %i.cv, align 16, !tbaa !25, !noalias !432 ; 3 uses
  %i.mn = extractelement <2 x double> %i.lc, i64 1
  %i.mo = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = shufflevector <2 x double> %i.lg, <2 x double> %i.lc, <2 x i32> <i32 0, i32 2>
  %i.mr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.mb, <2 x double> %i.mq) ; 5 uses
  %i.ms = call double @llvm.fmuladd.f64(double %i.mf, double %i.mm, double 0.000000e+00)
  %i.mt = call double @llvm.fmuladd.f64(double %i.lx, double %i.mg, double %i.ms)
  %i.mu = insertelement <2 x double> poison, double %i.mh, i64 0 ; 2 uses
  %i.mv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.mt, i64 0
  %i.mw = load <2 x double>, ptr %23, align 16, !tbaa !25, !noalias !432 ; 4 uses
  %i.mx = shufflevector <2 x double> %i.mu, <2 x double> %i.mw, <2 x i32> <i32 0, i32 2>
  %i.my = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.mx, <2 x double> %i.mv) ; 3 uses
  %i.mz = shufflevector <2 x double> %i.mr, <2 x double> %i.ml, <2 x i32> <i32 1, i32 3>
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.mw, <2 x double> zeroinitializer)
  %i.nb = extractelement <2 x double> %i.mr, i64 0
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.nc = load double, ptr %i.au, align 8, !tbaa !25, !noalias !433 ; 3 uses
  %i.nd = load double, ptr %i.da, align 8, !tbaa !25, !noalias !433 ; 3 uses
  %i.ne = load <2 x double>, ptr %i.cu, align 16, !tbaa !25, !noalias !432 ; 4 uses
  %i.nf = load <2 x double>, ptr %i.ct, align 8, !tbaa !25, !noalias !432 ; 4 uses
  %i.ng = shufflevector <2 x double> %i.ne, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nh = insertelement <2 x double> %i.ng, double %i.mm, i64 1
  %i.ni = shufflevector <2 x double> %i.ne, <2 x double> %i.mw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.nj = shufflevector <2 x double> %i.lw, <2 x double> %i.ml, <2 x i32> <i32 1, i32 3>
  %i.nk = shufflevector <2 x double> %i.nf, <2 x double> %i.mw, <2 x i32> <i32 0, i32 2>
  %i.nl = shufflevector <2 x double> %i.my, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.nk, <2 x double> %i.nl) ; 2 uses
  %i.nn = insertelement <2 x double> %i.nm, double 0.000000e+00, i64 1
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.ni, <2 x double> %i.nn) ; 3 uses
  %i.np = shufflevector <2 x double> %i.ln, <2 x double> %i.lw, <2 x i32> <i32 1, i32 3>
  %i.nq = shufflevector <2 x double> %i.no, <2 x double> %i.nm, <2 x i32> <i32 3, i32 1>
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.nf, <2 x double> %i.nq)
  %i.ns = shufflevector <2 x double> %i.ml, <2 x double> %i.me, <2 x i32> <i32 0, i32 2>
  %i.nt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> %i.ne, <2 x double> %i.nr) ; 4 uses
  %i.nu = extractelement <2 x double> %i.nf, i64 1
  %i.nv = shufflevector <2 x double> %i.lc, <2 x double> %i.ln, <2 x i32> <i32 1, i32 3>
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.nf, <2 x double> %i.na) ; 2 uses
  %34 = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.nw, <2 x i32> <i32 3, i32 1>
  %i.nx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.nh, <2 x double> %34) ; 4 uses
  %i.ny = insertelement <2 x double> %i.nw, double 0.000000e+00, i64 1
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.ni, <2 x double> %i.ny) ; 3 uses
  %i.oa = extractelement <2 x double> %i.nz, i64 1
  %i.ob = extractelement <2 x double> %i.ne, i64 1
  %i.oc = load <2 x double>, ptr %i.as, align 8, !tbaa !25, !noalias !433 ; 4 uses
  %i.od = load <2 x double>, ptr %i.cy, align 8, !tbaa !25, !noalias !433 ; 4 uses
  %i.oe = load <2 x double>, ptr %i.cz, align 8, !tbaa !25, !noalias !433 ; 3 uses
  %i.of = shufflevector <2 x double> %i.no, <2 x double> poison, <2 x i32> zeroinitializer
  %i.og = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.of, <2 x double> %i.oc, <2 x double> zeroinitializer)
  %i.oh = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.od, <2 x double> %i.og)
  %i.oj = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oj, <2 x double> %i.oe, <2 x double> %i.oi)
  store <2 x double> %i.ok, ptr %20, align 16, !tbaa !25, !alias.scope !433
  %i.ol = shufflevector <2 x double> %i.nx, <2 x double> %i.my, <2 x i32> <i32 0, i32 2>
  %i.om = insertelement <2 x double> %i.od, double %i.nd, i64 1
  %i.on = shufflevector <2 x double> %i.no, <2 x double> %i.nt, <2 x i32> <i32 0, i32 2>
  %i.oo = insertelement <2 x double> %i.oc, double %i.nc, i64 0
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.on, <2 x double> %i.oo, <2 x double> zeroinitializer) ; 2 uses
  %35 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.op, <2 x i32> <i32 0, i32 2>
  %i.oq = shufflevector <2 x double> %i.nx, <2 x double> %i.mr, <2 x i32> <i32 0, i32 3>
  %i.or = shufflevector <2 x double> %i.od, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.os = insertelement <2 x double> %i.or, double %i.mm, i64 1
  %i.ot = shufflevector <2 x double> %i.op, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oq, <2 x double> %i.os, <2 x double> %i.ot) ; 2 uses
  %i.ov = load double, ptr %i.aw, align 8, !tbaa !25, !noalias !433 ; 3 uses
  %i.ow = shufflevector <2 x double> %i.ln, <2 x double> %i.lc, <2 x i32> <i32 1, i32 3>
  %i.ox = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.oy = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oz = shufflevector <2 x double> %i.nx, <2 x double> %i.ou, <2 x i32> <i32 1, i32 3>
  %i.pa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.oy, <2 x double> %i.oz)
  %i.pb = shufflevector <2 x double> %i.ml, <2 x double> %i.mr, <2 x i32> <i32 0, i32 2>
  %i.pc = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pb, <2 x double> %i.pc, <2 x double> %i.pa) ; 3 uses
  %i.pe = call double @llvm.fmuladd.f64(double %i.mn, double %i.nu, double %i.oa)
  %i.pf = call double @llvm.fmuladd.f64(double %i.nb, double %i.ob, double %i.pe) ; 2 uses
  %i.pg = insertelement <2 x double> %i.oc, double %i.ov, i64 1
  %i.ph = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.pg, <2 x double> %35)
  %i.pi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ol, <2 x double> %i.om, <2 x double> %i.ph) ; 2 uses
  %i.pj = extractelement <2 x double> %i.pi, i64 1
  store double %i.pj, ptr %i.db, align 16, !tbaa !25, !alias.scope !433
  %i.pk = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pl = shufflevector <2 x double> %i.pi, <2 x double> %i.ou, <2 x i32> <i32 0, i32 2>
  %i.pm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.oe, <2 x double> %i.pl)
  store <2 x double> %i.pm, ptr %i.dc, align 8, !tbaa !25, !alias.scope !433
  %i.pn = shufflevector <2 x double> %i.nt, <2 x double> %i.nz, <2 x i32> <i32 0, i32 2>
  %i.po = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pp = insertelement <2 x double> %i.po, double %i.nc, i64 0
  %i.pq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.pp, <2 x double> zeroinitializer)
  %i.pr = shufflevector <2 x double> %i.nx, <2 x double> %i.od, <2 x i32> <i32 0, i32 2>
  %i.ps = insertelement <2 x double> poison, double %i.ov, i64 0
  %i.pt = insertelement <2 x double> %i.ps, double %i.pf, i64 1
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pr, <2 x double> %i.pt, <2 x double> %i.pq)
  %i.pv = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pw = insertelement <2 x double> %i.pv, double %i.nd, i64 0
  %i.px = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.pw, <2 x double> %i.pu)
  store <2 x double> %i.px, ptr %i.dd, align 8, !tbaa !25, !alias.scope !433
  %i.py = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pz = insertelement <2 x double> %i.po, double %i.nc, i64 1
  %i.qa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.pz, <2 x double> zeroinitializer)
  %i.qb = insertelement <2 x double> poison, double %i.pf, i64 0
  %i.qc = shufflevector <2 x double> %i.qb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qd = insertelement <2 x double> %i.or, double %i.ov, i64 1
  %i.qe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.qd, <2 x double> %i.qa)
  %i.qf = shufflevector <2 x double> %i.pd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qg = insertelement <2 x double> %i.pv, double %i.nd, i64 1
  %i.qh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qf, <2 x double> %i.qg, <2 x double> %i.qe)
  store <2 x double> %i.qh, ptr %i.de, align 8, !tbaa !25, !alias.scope !433
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %19, align 16, !tbaa !31
  store i32 153, ptr %i.df, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.dh, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.di, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %8, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %20, i64 noundef 0)
          to label %.noexc120 unwind label %bb.aa

.noexc120:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i64 0, ptr %i.dk, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !29
  store ptr %19, ptr %i.dj, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc120
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.body

bb.m:                                             ; preds = %.noexc120
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  %i.qj = load ptr, ptr %11, align 8, !tbaa !121
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 416
  invoke void @_ZNK2cv3MatcvNS_3VecIT_XT0_EEEIdLi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Vec") align 8 %27, ptr noundef nonnull align 8 dereferenceable(208) %i.qk)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.ql = load <2 x double>, ptr %i.ao, align 8, !tbaa !25, !noalias !434 ; 4 uses
  %i.qm = load <2 x double>, ptr %i.dl, align 8
  %i.qn = load double, ptr %i.cj, align 8, !tbaa !25, !noalias !434 ; 2 uses
  %i.qo = load double, ptr %i.dm, align 16, !tbaa !25, !noalias !434
  %i.qp = load double, ptr %i.do, align 16, !tbaa !25, !noalias !434
  %i.qq = load double, ptr %i.dp, align 8, !tbaa !25, !noalias !434
  %i.qr = load double, ptr %i.dq, align 8, !tbaa !25, !noalias !434 ; 3 uses
  %i.qs = load double, ptr %i.dr, align 16, !tbaa !25, !noalias !434
  %i.qt = load <2 x double>, ptr %i.cq, align 8, !tbaa !25, !noalias !434 ; 4 uses
  %i.qu = load double, ptr %i.cr, align 8, !tbaa !25, !noalias !434 ; 2 uses
  %i.qv = load <2 x double>, ptr %26, align 16, !tbaa !25, !noalias !434
  %i.qw = load <2 x double>, ptr %i.dn, align 8, !tbaa !25, !noalias !434 ; 4 uses
  %i.qx = load <2 x double>, ptr %i.az, align 8, !tbaa !25, !noalias !434 ; 4 uses
  %i.qy = load double, ptr %i.cs, align 8, !tbaa !25, !noalias !434 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  %i.qz = load ptr, ptr %10, align 8, !tbaa !121
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 416
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %28, ptr noundef nonnull align 8 dereferenceable(208) %i.ra)
          to label %bb.p unwind label %bb.ad

bb.p:                                             ; preds = %bb.o
  %i.rb = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rb, <2 x double> %i.qw, <2 x double> zeroinitializer) ; 2 uses
  %i.rd = insertelement <2 x double> %i.qv, double %i.qp, i64 1 ; 3 uses
  %36 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.rc, <2 x i32> <i32 0, i32 2>
  %i.re = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qx, <2 x double> %i.rd, <2 x double> %36)
  %i.rf = shufflevector <2 x double> %i.qx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rg = insertelement <2 x double> %i.rf, double %i.qy, i64 1
  %i.rh = insertelement <2 x double> %i.qm, double %i.qq, i64 1 ; 3 uses
  %i.ri = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rg, <2 x double> %i.rh, <2 x double> %i.re) ; 4 uses
  %i.rj = shufflevector <2 x double> %i.qx, <2 x double> %i.qt, <2 x i32> <i32 1, i32 2>
  %i.rk = insertelement <2 x double> %i.qw, double %i.qr, i64 0
  %i.rl = shufflevector <2 x double> %i.rc, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.rm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rj, <2 x double> %i.rk, <2 x double> %i.rl) ; 2 uses
  %i.rn = insertelement <2 x double> %i.qw, double %i.qr, i64 1
  %i.ro = insertelement <2 x double> %i.rm, double 0.000000e+00, i64 0
  %i.rp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> %i.rn, <2 x double> %i.ro) ; 2 uses
  %37 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.rp, <2 x i32> <i32 0, i32 2>
  %i.rq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> %i.rd, <2 x double> %37)
  %i.rr = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.rs = insertelement <2 x double> %i.rr, double %i.qu, i64 1
  %i.rt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.rh, <2 x double> %i.rq) ; 4 uses
  %i.ru = extractelement <2 x double> %i.ql, i64 1
  %i.rv = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.qw, <2 x double> zeroinitializer) ; 2 uses
  %i.rx = extractelement <2 x double> %i.rw, i64 1
  %i.ry = call double @llvm.fmuladd.f64(double %i.ru, double %i.qr, double %i.rx)
  %38 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.rw, <2 x i32> <i32 0, i32 2>
  %i.rz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ql, <2 x double> %i.rd, <2 x double> %38)
  %i.sa = shufflevector <2 x double> %i.ql, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sb = insertelement <2 x double> %i.sa, double %i.qn, i64 1
  %i.sc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sb, <2 x double> %i.rh, <2 x double> %i.rz) ; 4 uses
  %i.sd = extractelement <2 x double> %i.sc, i64 1
  %i.se = insertelement <2 x double> poison, double %i.qn, i64 0
  %i.sf = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sg = insertelement <2 x double> poison, double %i.qs, i64 0
  %i.sh = insertelement <2 x double> %i.sg, double %i.qo, i64 1 ; 3 uses
  %i.si = shufflevector <2 x double> %i.sc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.sj = insertelement <2 x double> %i.si, double %i.ry, i64 0
  %i.sk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sf, <2 x double> %i.sh, <2 x double> %i.sj) ; 4 uses
  %i.sl = extractelement <2 x double> %i.sk, i64 1
  %i.sm = load double, ptr %i.dv, align 8, !tbaa !25, !noalias !435 ; 2 uses
  %i.sn = load double, ptr %i.dw, align 16, !tbaa !25, !noalias !435
  %i.so = insertelement <2 x double> poison, double %i.qu, i64 0
  %i.sp = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sq = shufflevector <2 x double> %i.rp, <2 x double> %i.rt, <2 x i32> <i32 1, i32 2>
  %i.sr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sp, <2 x double> %i.sh, <2 x double> %i.sq) ; 5 uses
  %i.ss = load double, ptr %i.du, align 16, !tbaa !25, !noalias !435 ; 3 uses
  %i.st = extractelement <2 x double> %i.ri, i64 1
  %i.su = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sw = shufflevector <2 x double> %i.rm, <2 x double> %i.ri, <2 x i32> <i32 0, i32 2>
  %i.sx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.sh, <2 x double> %i.sw) ; 5 uses
  %i.sy = call double @llvm.fmuladd.f64(double %i.sl, double %i.ss, double 0.000000e+00)
  %i.sz = call double @llvm.fmuladd.f64(double %i.sd, double %i.sm, double %i.sy)
  %i.ta = insertelement <2 x double> poison, double %i.sn, i64 0 ; 2 uses
  %i.tb = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.sz, i64 0
  %i.tc = load <2 x double>, ptr %28, align 16, !tbaa !25, !noalias !435 ; 4 uses
  %i.td = shufflevector <2 x double> %i.ta, <2 x double> %i.tc, <2 x i32> <i32 0, i32 2>
  %i.te = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.td, <2 x double> %i.tb) ; 3 uses
  %i.tf = shufflevector <2 x double> %i.sx, <2 x double> %i.sr, <2 x i32> <i32 1, i32 3>
  %i.tg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.tc, <2 x double> zeroinitializer)
  %i.th = extractelement <2 x double> %i.sx, i64 0
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.ti = load double, ptr %i.au, align 8, !tbaa !25, !noalias !436 ; 3 uses
  %i.tj = load double, ptr %i.da, align 8, !tbaa !25, !noalias !436 ; 3 uses
  %i.tk = load <2 x double>, ptr %i.dt, align 16, !tbaa !25, !noalias !435 ; 4 uses
  %i.tl = load <2 x double>, ptr %i.ds, align 8, !tbaa !25, !noalias !435 ; 4 uses
  %i.tm = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.tn = insertelement <2 x double> %i.tm, double %i.ss, i64 1
  %i.to = shufflevector <2 x double> %i.tk, <2 x double> %i.tc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.tp = shufflevector <2 x double> %i.sc, <2 x double> %i.sr, <2 x i32> <i32 1, i32 3>
  %i.tq = shufflevector <2 x double> %i.tl, <2 x double> %i.tc, <2 x i32> <i32 0, i32 2>
  %i.tr = shufflevector <2 x double> %i.te, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ts = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tp, <2 x double> %i.tq, <2 x double> %i.tr) ; 2 uses
  %i.tt = insertelement <2 x double> %i.ts, double 0.000000e+00, i64 1
  %i.tu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.to, <2 x double> %i.tt) ; 3 uses
  %i.tv = shufflevector <2 x double> %i.rt, <2 x double> %i.sc, <2 x i32> <i32 1, i32 3>
  %i.tw = shufflevector <2 x double> %i.tu, <2 x double> %i.ts, <2 x i32> <i32 3, i32 1>
  %i.tx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tv, <2 x double> %i.tl, <2 x double> %i.tw)
  %i.ty = shufflevector <2 x double> %i.sr, <2 x double> %i.sk, <2 x i32> <i32 0, i32 2>
  %i.tz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ty, <2 x double> %i.tk, <2 x double> %i.tx) ; 4 uses
  %i.ua = extractelement <2 x double> %i.tl, i64 1
  %i.ub = shufflevector <2 x double> %i.ri, <2 x double> %i.rt, <2 x i32> <i32 1, i32 3>
  %i.uc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> %i.tl, <2 x double> %i.tg) ; 2 uses
  %39 = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.uc, <2 x i32> <i32 3, i32 1>
  %i.ud = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> %i.tn, <2 x double> %39) ; 4 uses
  %i.ue = insertelement <2 x double> %i.uc, double 0.000000e+00, i64 1
  %i.uf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sx, <2 x double> %i.to, <2 x double> %i.ue) ; 3 uses
  %i.ug = extractelement <2 x double> %i.uf, i64 1
  %i.uh = extractelement <2 x double> %i.tk, i64 1
  %i.ui = load <2 x double>, ptr %i.as, align 8, !tbaa !25, !noalias !436 ; 4 uses
  %i.uj = load <2 x double>, ptr %i.cy, align 8, !tbaa !25, !noalias !436 ; 4 uses
  %i.uk = load <2 x double>, ptr %i.cz, align 8, !tbaa !25, !noalias !436 ; 3 uses
  %i.ul = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.um = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ul, <2 x double> %i.ui, <2 x double> zeroinitializer)
  %i.un = shufflevector <2 x double> %i.tz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.uo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.un, <2 x double> %i.uj, <2 x double> %i.um)
  %i.up = shufflevector <2 x double> %i.te, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> %i.uk, <2 x double> %i.uo)
  store <2 x double> %i.uq, ptr %25, align 16, !tbaa !25, !alias.scope !436
  %i.ur = shufflevector <2 x double> %i.ud, <2 x double> %i.te, <2 x i32> <i32 0, i32 2>
  %i.us = insertelement <2 x double> %i.uj, double %i.tj, i64 1
  %i.ut = shufflevector <2 x double> %i.tu, <2 x double> %i.tz, <2 x i32> <i32 0, i32 2>
  %i.uu = insertelement <2 x double> %i.ui, double %i.ti, i64 0
  %i.uv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ut, <2 x double> %i.uu, <2 x double> zeroinitializer) ; 2 uses
  %40 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.uv, <2 x i32> <i32 0, i32 2>
  %i.uw = shufflevector <2 x double> %i.ud, <2 x double> %i.sx, <2 x i32> <i32 0, i32 3>
  %i.ux = shufflevector <2 x double> %i.uj, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.uy = insertelement <2 x double> %i.ux, double %i.ss, i64 1
  %i.uz = shufflevector <2 x double> %i.uv, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.va = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uw, <2 x double> %i.uy, <2 x double> %i.uz) ; 2 uses
  %i.vb = load double, ptr %i.aw, align 8, !tbaa !25, !noalias !436 ; 3 uses
  %i.vc = shufflevector <2 x double> %i.rt, <2 x double> %i.ri, <2 x i32> <i32 1, i32 3>
  %i.vd = insertelement <2 x double> poison, double %i.sm, i64 0
  %i.ve = shufflevector <2 x double> %i.vd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vf = shufflevector <2 x double> %i.ud, <2 x double> %i.va, <2 x i32> <i32 1, i32 3>
  %i.vg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %i.ve, <2 x double> %i.vf)
  %i.vh = shufflevector <2 x double> %i.sr, <2 x double> %i.sx, <2 x i32> <i32 0, i32 2>
  %i.vi = shufflevector <2 x double> %i.ta, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %i.vi, <2 x double> %i.vg) ; 3 uses
  %i.vk = call double @llvm.fmuladd.f64(double %i.st, double %i.ua, double %i.ug)
  %i.vl = call double @llvm.fmuladd.f64(double %i.th, double %i.uh, double %i.vk) ; 2 uses
  %i.vm = insertelement <2 x double> %i.ui, double %i.vb, i64 1
  %i.vn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tz, <2 x double> %i.vm, <2 x double> %40)
  %i.vo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ur, <2 x double> %i.us, <2 x double> %i.vn) ; 2 uses
  %i.vp = extractelement <2 x double> %i.vo, i64 1
  store double %i.vp, ptr %i.dx, align 16, !tbaa !25, !alias.scope !436
  %i.vq = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vr = shufflevector <2 x double> %i.vo, <2 x double> %i.va, <2 x i32> <i32 0, i32 2>
  %i.vs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vq, <2 x double> %i.uk, <2 x double> %i.vr)
  store <2 x double> %i.vs, ptr %i.dy, align 8, !tbaa !25, !alias.scope !436
  %i.vt = shufflevector <2 x double> %i.tz, <2 x double> %i.uf, <2 x i32> <i32 0, i32 2>
  %i.vu = shufflevector <2 x double> %i.ui, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vv = insertelement <2 x double> %i.vu, double %i.ti, i64 0
  %i.vw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vt, <2 x double> %i.vv, <2 x double> zeroinitializer)
  %i.vx = shufflevector <2 x double> %i.ud, <2 x double> %i.uj, <2 x i32> <i32 0, i32 2>
  %i.vy = insertelement <2 x double> poison, double %i.vb, i64 0
  %i.vz = insertelement <2 x double> %i.vy, double %i.vl, i64 1
  %i.wa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vx, <2 x double> %i.vz, <2 x double> %i.vw)
  %i.wb = shufflevector <2 x double> %i.uk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wc = insertelement <2 x double> %i.wb, double %i.tj, i64 0
  %i.wd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> %i.wc, <2 x double> %i.wa)
  store <2 x double> %i.wd, ptr %i.dz, align 8, !tbaa !25, !alias.scope !436
  %i.we = shufflevector <2 x double> %i.uf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wf = insertelement <2 x double> %i.vu, double %i.ti, i64 1
  %i.wg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.we, <2 x double> %i.wf, <2 x double> zeroinitializer)
  %i.wh = insertelement <2 x double> poison, double %i.vl, i64 0
  %i.wi = shufflevector <2 x double> %i.wh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wj = insertelement <2 x double> %i.ux, double %i.vb, i64 1
  %i.wk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wi, <2 x double> %i.wj, <2 x double> %i.wg)
  %i.wl = shufflevector <2 x double> %i.vj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wm = insertelement <2 x double> %i.wb, double %i.tj, i64 1
  %i.wn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wl, <2 x double> %i.wm, <2 x double> %i.wk)
  store <2 x double> %i.wn, ptr %i.ea, align 8, !tbaa !25, !alias.scope !436
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %24, align 16, !tbaa !31
  store i32 153, ptr %i.eb, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ed, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc121 unwind label %bb.ad

.noexc121:                                        ; preds = %bb.p
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ee, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %25, i64 noundef 0)
          to label %.noexc122 unwind label %bb.ad

.noexc122:                                        ; preds = %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store i64 0, ptr %i.eg, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !29
  store ptr %24, ptr %i.ef, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.noexc122
  %i.wo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body123

bb.r:                                             ; preds = %.noexc122
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.wp = load ptr, ptr %i.eh, align 8, !tbaa !186 ; 2 uses
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !51
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 64
  %i.ws = load ptr, ptr %i.wr, align 8
  invoke void %i.ws(ptr noundef nonnull align 8 dereferenceable(8) %i.wp, ptr noundef nonnull align 8 dereferenceable(208) %19)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !187

.noexc126:                                        ; preds = %bb.r
  %i.wt = load i32, ptr %i.ei, align 4, !tbaa !173 ; 2 uses
  %i.wu = sub nsw i32 %.086322, %i.wt
  %i.wv = icmp sgt i32 %i.wt, 0
  br i1 %i.wv, label %.lr.ph24.i, label %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit

.lr.ph24.i:                                       ; preds = %.noexc126, %bb.u
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %bb.u ], [ 0, %.noexc126 ] ; 3 uses
  %.01721.i = phi i32 [ %.1.i, %bb.u ], [ 0, %.noexc126 ] ; 4 uses
  %i.ww = load ptr, ptr %i.eh, align 8, !tbaa !186 ; 2 uses
  %i.wx = load ptr, ptr %i.ej, align 8, !tbaa !72
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %indvars.iv29.i
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !31
  %i.xa = load ptr, ptr %i.ww, align 8, !tbaa !51
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 72
  %i.xc = load ptr, ptr %i.xb, align 8
  %i.xd = invoke noundef float %i.xc(ptr noundef nonnull align 8 dereferenceable(8) %i.ww, i32 noundef %i.wz)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !187

.noexc127:                                        ; preds = %.lr.ph24.i
  %i.xe = fpext float %i.xd to double
  %i.xf = load double, ptr %i.ek, align 8, !tbaa !174
  %i.xg = fcmp ogt double %i.xf, %i.xe
  br i1 %i.xg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc127
  %i.xh = add nsw i32 %.01721.i, 1
  br label %bb.u

bb.t:                                             ; preds = %.noexc127
  %i.xi = trunc nuw nsw i64 %indvars.iv29.i to i32
  %i.xj = sub nsw i32 %.01721.i, %i.xi
  %i.xk = icmp slt i32 %i.xj, %i.wu
  br i1 %i.xk, label %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i = phi i32 [ %i.xh, %bb.s ], [ %.01721.i, %bb.t ] ; 2 uses
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.xl = load i32, ptr %i.ei, align 4, !tbaa !173
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next30.i, %i.xm
  br i1 %i.xn, label %.lr.ph24.i, label %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit, !llvm.loop !14

_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit: ; preds = %bb.u, %bb.t, %.noexc126
  %.4.i = phi i32 [ 0, %.noexc126 ], [ %.1.i, %bb.u ], [ %.01721.i, %bb.t ] ; 2 uses
  %i.xo = load ptr, ptr %i.eh, align 8, !tbaa !186 ; 2 uses
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !51
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  %i.xr = load ptr, ptr %i.xq, align 8
  invoke void %i.xr(ptr noundef nonnull align 8 dereferenceable(8) %i.xo, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !187

.noexc134:                                        ; preds = %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit
  %i.xs = load i32, ptr %i.ei, align 4, !tbaa !173 ; 2 uses
  %i.xt = sub nsw i32 %.086322, %i.xs
  %i.xu = icmp sgt i32 %i.xs, 0
  br i1 %i.xu, label %.lr.ph24.i129, label %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit136

.lr.ph24.i129:                                    ; preds = %.noexc134, %bb.x
  %indvars.iv29.i130 = phi i64 [ %indvars.iv.next30.i133, %bb.x ], [ 0, %.noexc134 ] ; 3 uses
  %.01721.i131 = phi i32 [ %.1.i132, %bb.x ], [ 0, %.noexc134 ] ; 4 uses
  %i.xv = load ptr, ptr %i.eh, align 8, !tbaa !186 ; 2 uses
  %i.xw = load ptr, ptr %i.ej, align 8, !tbaa !72
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %indvars.iv29.i130
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !31
  %i.xz = load ptr, ptr %i.xv, align 8, !tbaa !51
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 72
  %i.yb = load ptr, ptr %i.ya, align 8
  %i.yc = invoke noundef float %i.yb(ptr noundef nonnull align 8 dereferenceable(8) %i.xv, i32 noundef %i.xy)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp, !inline_history !187

.noexc135:                                        ; preds = %.lr.ph24.i129
  %i.yd = fpext float %i.yc to double
  %i.ye = load double, ptr %i.ek, align 8, !tbaa !174
  %i.yf = fcmp ogt double %i.ye, %i.yd
  br i1 %i.yf, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc135
  %i.yg = add nsw i32 %.01721.i131, 1
  br label %bb.x

bb.w:                                             ; preds = %.noexc135
  %i.yh = trunc nuw nsw i64 %indvars.iv29.i130 to i32
  %i.yi = sub nsw i32 %.01721.i131, %i.yh
  %i.yj = icmp slt i32 %i.yi, %i.xt
  br i1 %i.yj, label %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit136, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i132 = phi i32 [ %i.yg, %bb.v ], [ %.01721.i131, %bb.w ] ; 2 uses
  %indvars.iv.next30.i133 = add nuw nsw i64 %indvars.iv29.i130, 1 ; 2 uses
  %i.yk = load i32, ptr %i.ei, align 4, !tbaa !173
  %i.yl = sext i32 %i.yk to i64
  %i.ym = icmp slt i64 %indvars.iv.next30.i133, %i.yl
  br i1 %i.ym, label %.lr.ph24.i129, label %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit136, !llvm.loop !14

_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit136: ; preds = %bb.x, %bb.w, %.noexc134
  %.4.i128 = phi i32 [ 0, %.noexc134 ], [ %.1.i132, %bb.x ], [ %.01721.i131, %bb.w ] ; 2 uses
  %i.yn = icmp slt i32 %.4.i, %.4.i128
  br i1 %i.yn, label %bb.y, label %bb.af

bb.y:                                             ; preds = %_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi.exit136
  %i.yo = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %19, ptr noundef nonnull align 8 dereferenceable(208) %24)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

bb.z:                                             ; preds = %bb.i, %bb.h
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

end_hunk_4
begin_hunk_5_@_ZN2cv4usac25FundamentalDegeneracyImpl22planeAndParallaxRANSACERKNS_4MatxIdLi3ELi3EEERSt6vectorIiSaIiEEiibRKNS0_5ScoreEiRNS_3MatERSA_:bb.a
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %13 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::Vec", align 8          ; 7 uses
  %19 = alloca %"class.cv::Matx", align 8         ; 16 uses
  %20 = alloca %"class.cv::Matx", align 16        ; 10 uses
  %21 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %22 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %23 = alloca [1 x %"class.cv::Matx"], align 8   ; 7 uses
  %24 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %25 = alloca %"class.cv::Mat", align 16         ; 12 uses
  %i.a = icmp slt i32 %3, 2
  br i1 %i.a, label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1260 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !166
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 2 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph310, label %._crit_edge311.thread

._crit_edge311.thread:                            ; preds = %bb.b
  store i32 0, ptr %9, align 4
  %.sroa_idx184368 = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 2139095039, ptr %.sroa_idx184368, align 4
  br label %._crit_edge320

.lr.ph310:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %20, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1276
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ai = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.aq = uitofp nneg i32 %3 to double
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph310, %bb.ag
  %.091308 = phi i32 [ %4, %.lr.ph310 ], [ %.4, %bb.ag ] ; 9 uses
  %.0114307 = phi i32 [ 0, %.lr.ph310 ], [ %i.lh, %bb.ag ]
  %.0115306 = phi i32 [ 0, %.lr.ph310 ], [ %.3118, %bb.ag ] ; 9 uses
  %.sroa.0209.0305 = phi ptr [ null, %.lr.ph310 ], [ %.sroa.0209.2, %bb.ag ] ; 18 uses
  %.sroa.12.0304 = phi ptr [ null, %.lr.ph310 ], [ %.sroa.12.2, %bb.ag ] ; 15 uses
  %.sroa.23.0303 = phi ptr [ null, %.lr.ph310 ], [ %.sroa.23.2, %bb.ag ] ; 13 uses
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !131 ; 2 uses
  %i.as = and i64 %i.ar, 4294967295
  %i.at = mul nuw i64 %i.as, 4164903690
  %i.au = lshr i64 %i.ar, 32
  %i.av = add nuw i64 %i.at, %i.au                ; 4 uses
  store i64 %i.av, ptr %i.f, align 8, !tbaa !131
  %i.aw = trunc i64 %i.av to i32
  %i.ax = urem i32 %i.aw, %3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = load ptr, ptr %2, align 8, !tbaa !72    ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !31
  %i.bc = shl nsw i32 %i.bb, 2                    ; 3 uses
  %i.bd = and i64 %i.av, 4294967295
  %i.be = mul nuw i64 %i.bd, 4164903690
  %i.bf = lshr i64 %i.av, 32
  %i.bg = add nuw i64 %i.be, %i.bf                ; 3 uses
  %.pn228295 = trunc i64 %i.bg to i32
  %.pn227.in296 = urem i32 %.pn228295, %3
  %.pn227297 = zext nneg i32 %.pn227.in296 to i64
  %.093.in.in298 = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.pn227297
  %.093.in299 = load i32, ptr %.093.in.in298, align 4, !tbaa !31
  %.093300 = shl nsw i32 %.093.in299, 2           ; 2 uses
  %i.bh = icmp eq i32 %i.bc, %.093300
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.pn228.in301 = phi i64 [ %i.bl, %.lr.ph ], [ %i.bg, %bb.c ] ; 2 uses
  %i.bi = and i64 %.pn228.in301, 4294967295
  %i.bj = mul nuw i64 %i.bi, 4164903690
  %i.bk = lshr i64 %.pn228.in301, 32
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 3 uses
  %.pn228 = trunc i64 %i.bl to i32
  %.pn227.in = urem i32 %.pn228, %3
  %.pn227 = zext nneg i32 %.pn227.in to i64
  %.093.in.in = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.pn227
  %.093.in = load i32, ptr %.093.in.in, align 4, !tbaa !31
  %.093 = shl nsw i32 %.093.in, 2                 ; 2 uses
  %i.bm = icmp eq i32 %i.bc, %.093
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !437

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.pn228.in.lcssa = phi i64 [ %i.bg, %bb.c ], [ %i.bl, %.lr.ph ]
  %.093.lcssa = phi i32 [ %.093300, %bb.c ], [ %.093, %.lr.ph ]
  store i64 %.pn228.in.lcssa, ptr %i.f, align 8, !tbaa !131
  %i.bn = sext i32 %i.bc to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bn ; 3 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !74 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bo, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !74 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bo, i64 8
  %i.bt = sext i32 %.093.lcssa to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bt ; 2 uses
  %i.bv = load <2 x float>, ptr %i.bu, align 4, !tbaa !74 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 8
  %i.bx = load <2 x float>, ptr %i.bs, align 4, !tbaa !74 ; 3 uses
  %i.by = load <2 x float>, ptr %i.bw, align 4, !tbaa !74 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.bx, %i.by
  %i.bz = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ca = call float @llvm.fabs.f32(float %i.bz)
  %i.cb = fcmp olt float %i.ca, 1.000000e+00
  br i1 %i.cb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %foldExtExtBinop464 = fsub <2 x float> %i.bx, %i.by
  %i.cc = extractelement <2 x float> %foldExtExtBinop464, i64 1
  %i.cd = call float @llvm.fabs.f32(float %i.cc)
  %i.ce = fcmp olt float %i.cd, 1.000000e+00
  br i1 %i.ce, label %bb.ag, label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.cf = extractelement <2 x float> %i.bv, i64 0
  %i.cg = fsub float %i.bp, %i.cf
  %i.ch = call float @llvm.fabs.f32(float %i.cg)
  %i.ci = fcmp olt float %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cj = extractelement <2 x float> %i.bv, i64 1
  %i.ck = fsub float %i.br, %i.cj
  %i.cl = call float @llvm.fabs.f32(float %i.ck)
  %i.cm = fcmp olt float %i.cl, 1.000000e+00
  br i1 %i.cm, label %bb.ag, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.cn = fpext <2 x float> %i.bx to <2 x double> ; 4 uses
  %i.co = fpext float %i.bp to double             ; 3 uses
  %i.cp = fpext float %i.br to double             ; 3 uses
  %i.cq = load double, ptr %i.h, align 8, !tbaa !25, !noalias !452 ; 2 uses
  %i.cr = load double, ptr %i.i, align 8, !tbaa !25, !noalias !452 ; 2 uses
  %i.cs = insertelement <2 x double> poison, double %i.co, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = load double, ptr %i.m, align 8, !tbaa !25, !noalias !452 ; 2 uses
  %i.cx = fpext <2 x float> %i.by to <2 x double> ; 4 uses
  %i.cy = fpext <2 x float> %i.bv to <2 x double> ; 6 uses
  %i.cz = load <2 x double>, ptr %1, align 8      ; 2 uses
  %i.da = load double, ptr %i.g, align 8, !tbaa !25, !noalias !452 ; 2 uses
  %i.db = insertelement <2 x double> %i.cz, double %i.cr, i64 1
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.ct, <2 x double> zeroinitializer)
  %i.dd = insertelement <2 x double> poison, double %i.da, i64 0
  %i.de = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.da, i64 1
  %i.dg = load double, ptr %i.j, align 8, !tbaa !25, !noalias !452 ; 2 uses
  %i.dh = load double, ptr %i.k, align 8, !tbaa !25, !noalias !452 ; 2 uses
  %i.di = insertelement <2 x double> %i.cy, double %i.co, i64 1
  %i.dj = extractelement <2 x double> %i.cn, i64 0
  %i.dk = insertelement <2 x double> %i.dd, double %i.dg, i64 1
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.cv, <2 x double> %i.dc)
  %i.dm = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dh, i64 1
  %i.do = fadd <2 x double> %i.dn, %i.dl          ; 3 uses
  %i.dp = fneg <2 x double> %i.do                 ; 2 uses
  %i.dq = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dr = load <2 x double>, ptr %i.l, align 8, !tbaa !25, !noalias !452 ; 3 uses
  %i.ds = shufflevector <2 x double> %i.cz, <2 x double> %i.dr, <2 x i32> <i32 0, i32 2>
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.di, <2 x double> zeroinitializer) ; 2 uses
  %26 = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.du = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cy, <2 x double> %26) ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 1
  %i.dw = fadd double %i.cq, %i.dv                ; 2 uses
  %i.dx = fneg double %i.dw
  %i.dy = shufflevector <2 x double> %i.cn, <2 x double> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.dz = insertelement <2 x double> %i.dp, double %i.dx, i64 1
  %i.ea = fmul <2 x double> %i.dy, %i.dz          ; 2 uses
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> %i.dp, <2 x i32> <i32 0, i32 3>
  %i.ec = insertelement <2 x double> %i.cy, double %i.cp, i64 1
  %i.ed = insertelement <2 x double> %i.dt, double 0.000000e+00, i64 0
  %i.ee = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.ec, <2 x double> %i.ed) ; 2 uses
  %i.ef = extractelement <2 x double> %i.ee, i64 1
  %i.eg = fadd double %i.cw, %i.ef                ; 2 uses
  %i.eh = fmul double %i.eg, %i.dj
  %i.ei = extractelement <2 x double> %i.do, i64 0
  %i.ej = fsub double %i.ei, %i.eh                ; 2 uses
  %i.ek = insertelement <2 x double> %i.dq, double %i.eg, i64 1
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.ek, <2 x double> %i.eb) ; 3 uses
  %i.em = insertelement <2 x double> %i.dr, double %i.dg, i64 0
  %i.en = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = shufflevector <2 x double> %i.du, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.ep = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.en, <2 x double> %i.eo)
  %i.eq = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.cw, i64 1
  %i.es = fadd <2 x double> %i.er, %i.ep          ; 3 uses
  %shift = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop466 = fmul <2 x double> %shift, %i.cx
  %i.et = extractelement <2 x double> %foldExtExtBinop466, i64 0
  %i.eu = fsub double %i.dw, %i.et                ; 2 uses
  %i.ev = fneg <2 x double> %i.es
  %i.ew = shufflevector <2 x double> %i.ea, <2 x double> %i.ev, <2 x i32> <i32 1, i32 2>
  %i.ex = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.es, <2 x double> %i.ew) ; 3 uses
  %i.ey = fneg double %i.eu
  %i.ez = extractelement <2 x double> %i.el, i64 0
  %i.fa = fmul double %i.ez, %i.ey
  %i.fb = extractelement <2 x double> %i.ex, i64 0
  %i.fc = call double @llvm.fmuladd.f64(double %i.ej, double %i.fb, double %i.fa)
  %i.fd = fneg <2 x double> %i.ex
  %i.fe = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x double> %i.fe, double %i.ej, i64 1
  %i.fg = fmul <2 x double> %i.ff, %i.fd
  %i.fh = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fi = insertelement <2 x double> %i.fh, double %i.eu, i64 1
  %i.fj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.fi, <2 x double> %i.fg)
  store double %i.fc, ptr %18, align 8, !tbaa !25, !alias.scope !453
  store <2 x double> %i.fj, ptr %i.n, align 8, !tbaa !25, !alias.scope !453
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZN2cv4usac4Math16getSkewSymmetricERKNS_3VecIdLi3EEE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.fk = load <2 x double>, ptr %20, align 16, !tbaa !25, !noalias !454 ; 4 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 1
  %i.fm = load double, ptr %i.m, align 8, !tbaa !25, !noalias !454 ; 2 uses
  %i.fn = load <2 x double>, ptr %i.p, align 16, !tbaa !25, !noalias !454 ; 4 uses
  %i.fo = shufflevector <2 x double> %i.fk, <2 x double> %i.fn, <2 x i32> <i32 1, i32 2>
  %i.fp = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fq = load double, ptr %i.s, align 16, !tbaa !25, !noalias !454 ; 2 uses
  %i.fr = extractelement <2 x double> %i.fn, i64 1
  %i.fs = load <2 x double>, ptr %i.t, align 8, !tbaa !25, !noalias !454 ; 3 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 1 ; 2 uses
  %i.fu = load <2 x double>, ptr %1, align 8, !tbaa !25, !noalias !454 ; 3 uses
  %i.fv = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.fu, <2 x double> zeroinitializer) ; 2 uses
  %i.fx = insertelement <2 x double> %i.fw, double 0.000000e+00, i64 0
  %i.fy = shufflevector <2 x double> %i.fp, <2 x double> %i.fu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fz = load double, ptr %i.h, align 8, !tbaa !25, !noalias !454 ; 3 uses
  %i.ga = load <2 x double>, ptr %i.k, align 8, !tbaa !25, !noalias !454 ; 3 uses
  %i.gb = extractelement <2 x double> %i.fu, i64 1 ; 2 uses
  %i.gc = call double @llvm.fmuladd.f64(double %i.fr, double %i.gb, double 0.000000e+00)
  %i.gd = load <2 x double>, ptr %i.i, align 8, !tbaa !25, !noalias !454 ; 4 uses
  %i.ge = extractelement <2 x double> %i.gd, i64 0
  %i.gf = extractelement <2 x double> %i.fw, i64 0
  %i.gg = insertelement <2 x double> %i.gd, double %i.fz, i64 0
  %i.gh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.gg, <2 x double> %i.fx)
  %i.gi = load <2 x double>, ptr %i.l, align 8, !tbaa !25, !noalias !454 ; 4 uses
  %i.gj = shufflevector <2 x double> %i.ga, <2 x double> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fo, <2 x double> %i.gj, <2 x double> %i.gh) ; 3 uses
  %i.gl = extractelement <2 x double> %i.gk, i64 1 ; 2 uses
  store double %i.gl, ptr %i.q, align 8, !tbaa !25, !alias.scope !454
  %i.gm = insertelement <2 x double> %i.gk, double 0.000000e+00, i64 1
  %i.gn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fy, <2 x double> %i.gm) ; 3 uses
  %i.go = extractelement <2 x double> %i.gn, i64 0 ; 2 uses
  store double %i.go, ptr %i.r, align 8, !tbaa !25, !alias.scope !454
  %i.gp = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = insertelement <2 x double> %i.gr, double %i.gc, i64 1
  %i.gt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gd, <2 x double> %i.gs)
  %i.gu = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.gi, <2 x double> %i.gt)
  store <2 x double> %i.gv, ptr %i.u, align 8, !tbaa !25, !alias.scope !454
  %i.gw = call double @llvm.fmuladd.f64(double %i.fl, double %i.ge, double %i.gf)
  %i.gx = insertelement <2 x double> %i.gi, double %i.fz, i64 1
  %i.gy = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.gw, i64 0
  %i.gz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.gx, <2 x double> %i.gy) ; 3 uses
  %i.ha = extractelement <2 x double> %i.gz, i64 0 ; 2 uses
  store double %i.ha, ptr %19, align 8, !tbaa !25, !alias.scope !454
  %i.hb = extractelement <2 x double> %i.ga, i64 0
  %i.hc = extractelement <2 x double> %i.gz, i64 1
  %i.hd = call double @llvm.fmuladd.f64(double %i.fq, double %i.hb, double %i.hc)
  %i.he = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.hd, i64 0
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.fy, <2 x double> %i.he) ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  store double %i.hg, ptr %i.v, align 8, !tbaa !25, !alias.scope !454
  %i.hh = load double, ptr %i.x, align 16, !tbaa !25, !noalias !454 ; 2 uses
  %i.hi = call double @llvm.fmuladd.f64(double %i.ft, double %i.gb, double 0.000000e+00)
  %i.hj = load <2 x double>, ptr %i.w, align 8    ; 2 uses
  %i.hk = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hl = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.hm = insertelement <2 x double> %i.hl, double %i.hi, i64 1
  %i.hn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %i.gd, <2 x double> %i.hm)
  %i.ho = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.gi, <2 x double> %i.hn)
  store <2 x double> %i.hq, ptr %i.y, align 8, !tbaa !25, !alias.scope !454
  %i.hr = call double @llvm.fmuladd.f64(double %i.ft, double %i.fz, double 0.000000e+00)
  %i.hs = fmul double %i.gl, %i.cp
  %i.ht = shufflevector <2 x double> %i.hj, <2 x double> %i.gz, <2 x i32> <i32 0, i32 2>
  %i.hu = insertelement <2 x double> %i.ga, double %i.co, i64 1
  %i.hv = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.hs, i64 1
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hu, <2 x double> %i.hw) ; 2 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 0
  %i.hz = call double @llvm.fmuladd.f64(double %i.hh, double %i.fm, double %i.hy)
  store double %i.hz, ptr %i.z, align 8, !tbaa !25, !alias.scope !454
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %shift468 = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop469 = fadd <2 x double> %shift468, %i.gn
  %i.ia = extractelement <2 x double> %foldExtExtBinop469, i64 0
  %i.ib = load double, ptr %i.n, align 8, !tbaa !25 ; 2 uses
  %i.ic = load double, ptr %i.o, align 8, !tbaa !25
  %i.id = fneg double %i.ic                       ; 2 uses
  %i.ie = extractelement <2 x double> %i.cn, i64 1
  %i.if = call double @llvm.fmuladd.f64(double %i.id, double %i.ie, double %i.ib)
  %i.ig = fmul double %i.ia, %i.if
  %foldExtExtBinop471 = fmul <2 x double> %i.gk, %i.cy
  %i.ih = extractelement <2 x double> %foldExtExtBinop471, i64 1
  %i.ii = extractelement <2 x double> %i.cy, i64 0
  %i.ij = call double @llvm.fmuladd.f64(double %i.ha, double %i.ii, double %i.ih)
  %i.ik = fadd double %i.ij, %i.go
  %i.il = fmul double %i.ik, %i.ig
  %i.im = extractelement <2 x double> %i.cx, i64 1
  %i.in = call double @llvm.fmuladd.f64(double %i.id, double %i.im, double %i.ib)
  %i.io = fmul double %i.in, %i.il
  %i.ip = fcmp ogt double %i.io, 0.000000e+00
  br i1 %i.ip, label %bb.j, label %_ZNSt6vectorIN2cv4MatxIdLi3ELi3EEESaIS2_EE12emplace_backIJRKS2_EEERS2_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %bb.ah

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store <4 x i32> <i32 1124024326, i32 2, i32 3, i32 3>, ptr %21, align 16, !tbaa !31
  store i32 153, ptr %i.aa, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ac, i64 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ad, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(72) %19, i64 noundef 0)
          to label %.noexc149 unwind label %bb.r

.noexc149:                                        ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  store i64 0, ptr %i.af, align 8
  store i32 33619968, ptr %17, align 8, !tbaa !29
  store ptr %21, ptr %i.ae, align 8, !tbaa !30
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %16, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %.noexc149
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %.body

bb.l:                                             ; preds = %.noexc149
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.is = load i32, ptr %i.b, align 4, !tbaa !166
  %i.it = load i32, ptr %i.ag, align 4, !tbaa !167
  %i.iu = icmp sge i32 %i.is, %i.it
  %i.iv = invoke noundef i32 @_ZN2cv4usac25FundamentalDegeneracyImpl19getNonPlanarSupportERKNS_3MatEbi(ptr noundef nonnull align 8 dereferenceable(2018) %0, ptr noundef nonnull align 8 dereferenceable(208) %21, i1 noundef zeroext %i.iu, i32 noundef %.0115306)
          to label %bb.m unwind label %bb.s       ; 3 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.iw = icmp slt i32 %.0115306, %i.iv
end_hunk_5
