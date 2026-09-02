Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-draw?download=true
inline.NumInlined: 467
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hb_gpu_draw_encode:bb.a
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i523
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !48 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524
  %i.bu = xor i32 %i.bs, -1
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.bv, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !48 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526
  %i.bz = xor i32 %i.bx, -1
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !48
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.ca, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !48 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528
  %i.ce = xor i32 %i.cc, -1
  store i32 %i.ce, ptr %i.cb, align 8, !tbaa !48
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.cf, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !48 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530
  %i.cj = xor i32 %i.ch, -1
  store i32 %i.cj, ptr %i.cg, align 8, !tbaa !48
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.ck, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !48 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i533, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i533:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532
  %i.co = xor i32 %i.cm, -1
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 0, ptr %i.cp, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i533
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !48 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i535, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i535:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534
  %i.ct = xor i32 %i.cr, -1
  store i32 %i.ct, ptr %i.cq, align 8, !tbaa !48
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 0, ptr %i.cu, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i535
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !48 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i537, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i537:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536
  %i.cy = xor i32 %i.cw, -1
  store i32 %i.cy, ptr %i.cv, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.cz, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i537
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !48 ; 2 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i539, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540, !prof !38

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i539:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538
  %i.dd = xor i32 %i.db, -1
  store i32 %i.dd, ptr %i.da, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %i.de, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i539
  %i.df = icmp slt i32 %i.au, 0
  br i1 %i.df, label %.critedge501, label %bb.k, !prof !38

bb.k:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540
  %i.dg = tail call noundef zeroext i1 @_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i32 noundef %i.au, i1 noundef zeroext false)
  br i1 %i.dg, label %bb.l, label %.critedge501, !prof !132

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !47 ; 3 uses
  %i.dj = icmp ugt i32 %i.au, %i.di
  br i1 %i.dj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dk = sub nuw nsw i32 %i.au, %i.di
  %i.dl = mul i32 %i.dk, 56                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !prof !38

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !50
  %i.do = zext nneg i32 %i.di to i64
  %i.dp = getelementptr inbounds nuw [56 x i8], ptr %i.dn, i64 %i.do
  %i.dq = zext i32 %i.dl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dp, i8 0, i64 %i.dq, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  store i32 %i.au, ptr %i.dh, align 4, !tbaa !47
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !123
  %i.dt = fmul double %i.ds, 4.000000e+00
  %i.du = tail call double @llvm.floor.f64(double %i.dt) ; 3 uses
  %i.dv = fcmp oge double %i.du, -3.276800e+04
  %i.dw = fcmp ole double %i.du, 3.276700e+04
  %i.dx = and i1 %i.dv, %i.dw
  br i1 %i.dx, label %bb.p, label %.critedge501

bb.p:                                             ; preds = %bb.o
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !124
  %i.ea = fmul double %i.dz, 4.000000e+00
  %i.eb = tail call double @llvm.floor.f64(double %i.ea) ; 3 uses
  %i.ec = fcmp oge double %i.eb, -3.276800e+04
  %i.ed = fcmp ole double %i.eb, 3.276700e+04
  %i.ee = and i1 %i.ec, %i.ed
  br i1 %i.ee, label %bb.q, label %.critedge501

bb.q:                                             ; preds = %bb.p
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !125
  %i.eh = fmul double %i.eg, 4.000000e+00
  %i.ei = tail call double @llvm.ceil.f64(double %i.eh) ; 3 uses
  %i.ej = fcmp oge double %i.ei, -3.276800e+04
  %i.ek = fcmp ole double %i.ei, 3.276700e+04
  %i.el = and i1 %i.ej, %i.ek
  br i1 %i.el, label %bb.r, label %.critedge501

bb.r:                                             ; preds = %bb.q
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.en = load double, ptr %i.em, align 8, !tbaa !126
  %i.eo = fmul double %i.en, 4.000000e+00
  %i.ep = tail call double @llvm.ceil.f64(double %i.eo) ; 3 uses
  %i.eq = fcmp oge double %i.ep, -3.276800e+04
  %i.er = fcmp ole double %i.ep, 3.276700e+04
  %i.es = and i1 %i.eq, %i.er
  br i1 %i.es, label %bb.s, label %.critedge501

bb.s:                                             ; preds = %bb.r
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !133
  %wide.trip.count = zext nneg i32 %i.au to i64   ; 5 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %i.ev = insertelement <4 x double> poison, double %i.du, i64 0
  %i.ew = insertelement <4 x double> %i.ev, double %i.eb, i64 1
  %i.ex = insertelement <4 x double> %i.ew, double %i.ei, i64 2
  %i.ey = insertelement <4 x double> %i.ex, double %i.ep, i64 3
  %i.ez = fptosi <4 x double> %i.ey to <4 x i16>  ; 3 uses
  %.sroa.speculated793 = tail call i32 @llvm.umin.i32(i32 %i.au, i32 16)
  %i.fa = shufflevector <4 x i16> %i.ez, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.fb = sitofp <2 x i16> %i.fa to <2 x double>
  %i.fc = fmul nnan <2 x double> %i.fb, splat (double 2.500000e-01) ; 5 uses
  %i.fd = shufflevector <4 x i16> %i.ez, <4 x i16> poison, <2 x i32> <i32 2, i32 3>
  %i.fe = sitofp <2 x i16> %i.fd to <2 x double>
  %i.ff = fmul nnan <2 x double> %i.fe, splat (double 2.500000e-01) ; 3 uses
  %i.fg = fsub <2 x double> %i.ff, %i.fc          ; 4 uses
  %i.fh = fcmp ugt <2 x double> %i.fg, zeroinitializer
  %i.fi = insertelement <2 x i32> poison, i32 %.sroa.speculated793, i64 0
  %i.fj = shufflevector <2 x i32> %i.fi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fk = select <2 x i1> %i.fh, <2 x i32> %i.fj, <2 x i32> splat (i32 1) ; 5 uses
  %i.fl = extractelement <2 x i32> %i.fk, i64 1   ; 19 uses
  %i.fm = uitofp nneg <2 x i32> %i.fk to <2 x double>
  %i.fn = fdiv <2 x double> %i.fg, %i.fm          ; 2 uses
  %i.fo = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i32 noundef %i.fl, i1 noundef zeroext false)
  br i1 %i.fo, label %bb.v, label %.critedge501

bb.u:                                             ; preds = %bb.s, %bb.u
  %indvars.iv = phi i64 [ 0, %bb.s ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.fp = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fs = getelementptr inbounds nuw [56 x i8], ptr %i.eu, i64 %indvars.iv ; 5 uses
  %.sroa.5812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.ft = load <2 x double>, ptr %i.fq, align 8, !tbaa !42, !noalias !134
  %i.fu = fmul <2 x double> %i.ft, splat (double 4.000000e+00)
  %i.fv = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.fu)
  %i.fw = fptosi <2 x double> %i.fv to <2 x i16>  ; 4 uses
  %i.fx = extractelement <2 x i16> %i.fw, i64 0
  %i.fy = sext i16 %i.fx to i32                   ; 2 uses
  %i.fz = load <2 x double>, ptr %i.fp, align 8, !tbaa !42, !noalias !134
  %i.ga = extractelement <2 x i16> %i.fw, i64 1
  %i.gb = sext i16 %i.ga to i32                   ; 2 uses
  %i.gc = load <2 x double>, ptr %i.fr, align 8, !tbaa !42, !noalias !134
  %i.gd = fmul <2 x double> %i.gc, splat (double 4.000000e+00)
  %i.ge = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.gd)
  %i.gf = fptosi <2 x double> %i.ge to <2 x i16>  ; 3 uses
  %i.gg = extractelement <2 x i16> %i.gf, i64 0
  %i.gh = sext i16 %i.gg to i32                   ; 2 uses
  %i.gi = fmul <2 x double> %i.fz, splat (double 4.000000e+00)
  %i.gj = tail call <2 x double> @llvm.round.v2f64(<2 x double> %i.gi)
  %i.gk = fptosi <2 x double> %i.gj to <2 x i16>  ; 3 uses
  %i.gl = extractelement <2 x i16> %i.gk, i64 0
  %i.gm = sext i16 %i.gl to i32                   ; 2 uses
  %.sroa.speculated56.i = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 %i.fy)
  %.sroa.speculated44.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated56.i, i32 %i.gh)
  %.sroa.speculated59.i = tail call i32 @llvm.smin.i32(i32 %i.gm, i32 %i.fy)
  %.sroa.speculated47.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated59.i, i32 %i.gh)
  %i.gn = insertelement <2 x i32> poison, i32 %.sroa.speculated47.i, i64 0
  %i.go = insertelement <2 x i32> %i.gn, i32 %.sroa.speculated44.i, i64 1
  %i.gp = sitofp <2 x i32> %i.go to <2 x double>
  %i.gq = fmul nnan <2 x double> %i.gp, splat (double 2.500000e-01)
  store <2 x double> %i.gq, ptr %i.fs, align 8, !tbaa !42
  %i.gr = extractelement <2 x i16> %i.gf, i64 1
  %i.gs = sext i16 %i.gr to i32                   ; 2 uses
  %i.gt = extractelement <2 x i16> %i.gk, i64 1
  %i.gu = sext i16 %i.gt to i32                   ; 2 uses
  %.sroa.speculated24.i = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 %i.gb)
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated24.i, i32 %i.gs)
  %.sroa.speculated27.i = tail call i32 @llvm.smin.i32(i32 %i.gu, i32 %i.gb)
  %.sroa.speculated17.i = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated27.i, i32 %i.gs)
  %i.gv = insertelement <2 x i32> poison, i32 %.sroa.speculated17.i, i64 0
  %i.gw = insertelement <2 x i32> %i.gv, i32 %.sroa.speculated.i, i64 1
  %i.gx = sitofp <2 x i32> %i.gw to <2 x double>
  %i.gy = fmul nnan <2 x double> %i.gx, splat (double 2.500000e-01)
  %i.gz = icmp eq <2 x i16> %i.gk, %i.fw
  %i.ha = icmp eq <2 x i16> %i.fw, %i.gf
  %i.hb = select <2 x i1> %i.gz, <2 x i1> %i.ha, <2 x i1> zeroinitializer ; 2 uses
  store <2 x double> %i.gy, ptr %.sroa.5812.0..sroa_idx, align 8, !tbaa !42
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  %i.hc = extractelement <2 x i1> %i.hb, i64 1
  %i.hd = zext i1 %i.hc to i8
  store i8 %i.hd, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !43
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 33
  %i.he = extractelement <2 x i1> %i.hb, i64 0
  %i.hf = zext i1 %i.he to i8
  store i8 %i.hf, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !43
  %.sroa.9813.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 -1>, ptr %.sroa.9813.0..sroa_idx, align 4, !tbaa !45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.t, label %bb.u, !llvm.loop !87

bb.v:                                             ; preds = %bb.t
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !49 ; 3 uses
  %i.hi = icmp ugt i32 %i.fl, %i.hh
  br i1 %i.hi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hj = sub nuw nsw i32 %i.fl, %i.hh
  %i.hk = shl nuw nsw i32 %i.hj, 2
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !52
  %i.hn = zext nneg i32 %i.hh to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hn
  %i.hp = zext nneg i32 %i.hk to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ho, i8 0, i64 %i.hp, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.fl, ptr %i.hg, align 4, !tbaa !49
  %i.hq = extractelement <2 x i32> %i.fk, i64 0   ; 18 uses
  %i.hr = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i32 noundef %i.hq, i1 noundef zeroext false)
  br i1 %i.hr, label %bb.y, label %.critedge501

bb.y:                                             ; preds = %bb.x
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !49 ; 3 uses
  %i.hu = icmp ugt i32 %i.hq, %i.ht
  br i1 %i.hu, label %bb.z, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit549

bb.z:                                             ; preds = %bb.y
  %i.hv = sub nuw nsw i32 %i.hq, %i.ht
  %i.hw = shl nuw nsw i32 %i.hv, 2
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !52
  %i.hz = zext nneg i32 %i.ht to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = zext nneg i32 %i.hw to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ia, i8 0, i64 %i.ib, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit549

_ZN11hb_vector_tIjLb0EE6resizeEi.exit549:         ; preds = %bb.y, %bb.z
  store i32 %i.hq, ptr %i.hs, align 4, !tbaa !49
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !135 ; 4 uses
  %i.ie = zext nneg i32 %i.fl to i64              ; 9 uses
  %i.if = shl nuw nsw i64 %i.ie, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.id, i8 0, i64 %i.if, i1 false), !tbaa !45
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !136 ; 4 uses
  %i.ii = zext nneg i32 %i.hq to i64              ; 9 uses
  %i.ij = shl nuw nsw i64 %i.ii, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ih, i8 0, i64 %i.ij, i1 false), !tbaa !45
  %i.ik = load ptr, ptr %i.et, align 8, !tbaa !133
  %i.il = extractelement <2 x double> %i.fg, i64 1
  %i.im = fcmp ogt double %i.il, 0.000000e+00
  %i.in = extractelement <2 x double> %i.fg, i64 0
  %i.io = fcmp ogt double %i.in, 0.000000e+00
  %i.ip = add nsw <2 x i32> %i.fk, splat (i32 -1) ; 2 uses
  %i.iq = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.it = shufflevector <2 x i32> <i32 2147483647, i32 poison>, <2 x i32> %i.ip, <2 x i32> <i32 0, i32 2>
  %i.iu = insertelement <2 x i32> %i.ip, i32 2147483647, i64 0
  %i.iv = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.ad

bb.aa:                                            ; preds = %.loopexit
  %i.iw = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i32 noundef %i.fl, i1 noundef zeroext false)
  br i1 %i.iw, label %bb.ab, label %.critedge501

bb.ab:                                            ; preds = %bb.aa
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !49 ; 3 uses
  %i.iz = icmp ugt i32 %i.fl, %i.iy
  br i1 %i.iz, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %bb.ab
  %i.ja = sub nuw nsw i32 %i.fl, %i.iy
  %i.jb = shl nuw nsw i32 %i.ja, 2
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !52
  %i.je = zext nneg i32 %i.iy to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.je
  %i.jg = zext nneg i32 %i.jb to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jf, i8 0, i64 %i.jg, i1 false)
  br label %bb.am

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit549, %.loopexit
  %indvars.iv979 = phi i64 [ 0, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit549 ], [ %indvars.iv.next980, %.loopexit ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [56 x i8], ptr %i.ik, i64 %indvars.iv979 ; 12 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load i8, ptr %i.ji, align 8, !tbaa !137, !range !29, !noundef !30
  %i.jk = trunc nuw i8 %i.jj to i1
  br i1 %i.jk, label %.loopexit861, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.im, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 36
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jo = load <2 x double>, ptr %i.jl, align 8, !tbaa !42
  %i.jp = fsub <2 x double> %i.jo, %i.is
  %i.jq = fdiv <2 x double> %i.jp, %i.iv
  %i.jr = fadd <2 x double> %i.jq, <double f0xBF50000000000000, double f0x3F50000000000000>
  %i.js = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.jr)
  %i.jt = fptosi <2 x double> %i.js to <2 x i32>
  %i.ju = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.iu, <2 x i32> %i.jt) ; 2 uses
  %i.jv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ju, <2 x i32> <i32 0, i32 -2147483648>) ; 3 uses
  store <2 x i32> %i.jv, ptr %i.jm, align 4, !tbaa !45
  %shift = shufflevector <2 x i32> %i.ju, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.jw = icmp sgt <2 x i32> %i.jv, %shift
  %.not498869 = extractelement <2 x i1> %i.jw, i64 0
  br i1 %.not498869, label %.loopexit861, label %.lr.ph

.lr.ph:                                           ; preds = %bb.af
  %i.jx = extractelement <2 x i32> %i.jv, i64 0
  %i.jy = zext nneg i32 %i.jx to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.ag
  %indvars.iv973 = phi i64 [ %i.jy, %.lr.ph ], [ %indvars.iv.next974, %bb.ag ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv973 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !45
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !45
  %indvars.iv.next974 = add nuw nsw i64 %indvars.iv973, 1
  %i.kc = load i32, ptr %i.jn, align 8, !tbaa !138
  %i.kd = sext i32 %i.kc to i64
  %.not498.not = icmp slt i64 %indvars.iv973, %i.kd
  br i1 %.not498.not, label %bb.ag, label %.loopexit861, !llvm.loop !88

bb.ah:                                            ; preds = %bb.ae
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jh, i64 36
  store i32 0, ptr %i.ke, align 4, !tbaa !139
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  store i32 0, ptr %i.kf, align 8, !tbaa !138
  %i.kg = load i32, ptr %i.id, align 4, !tbaa !45
  %i.kh = add i32 %i.kg, 1
  store i32 %i.kh, ptr %i.id, align 4, !tbaa !45
  br label %.loopexit861

.loopexit861:                                     ; preds = %bb.ag, %bb.af, %bb.ah, %bb.ad
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jh, i64 33
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !140, !range !29, !noundef !30
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.loopexit861
  br i1 %i.io, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jh, i64 44
  %i.km = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.kn = load <2 x double>, ptr %i.jh, align 8, !tbaa !42
  %i.ko = fsub <2 x double> %i.kn, %i.iq
  %i.kp = fdiv <2 x double> %i.ko, %i.ir
  %i.kq = fadd <2 x double> %i.kp, <double f0xBF50000000000000, double f0x3F50000000000000>
  %i.kr = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.kq)
  %i.ks = fptosi <2 x double> %i.kr to <2 x i32>
  %i.kt = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.it, <2 x i32> %i.ks) ; 2 uses
  %i.ku = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kt, <2 x i32> <i32 0, i32 -2147483648>) ; 3 uses
  store <2 x i32> %i.ku, ptr %i.kl, align 4, !tbaa !45
  %shift1196 = shufflevector <2 x i32> %i.kt, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.kv = icmp sgt <2 x i32> %i.ku, %shift1196
  %.not499871 = extractelement <2 x i1> %i.kv, i64 0
  br i1 %.not499871, label %.loopexit, label %.lr.ph873

.lr.ph873:                                        ; preds = %bb.aj
  %i.kw = extractelement <2 x i32> %i.ku, i64 0
  %i.kx = zext nneg i32 %i.kw to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph873, %bb.ak
  %indvars.iv976 = phi i64 [ %i.kx, %.lr.ph873 ], [ %indvars.iv.next977, %bb.ak ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %indvars.iv976 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !45
  %i.la = add i32 %i.kz, 1
  store i32 %i.la, ptr %i.ky, align 4, !tbaa !45
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1
  %i.lb = load i32, ptr %i.km, align 8, !tbaa !141
  %i.lc = sext i32 %i.lb to i64
  %.not499.not = icmp slt i64 %indvars.iv976, %i.lc
  br i1 %.not499.not, label %bb.ak, label %.loopexit, !llvm.loop !89

bb.al:                                            ; preds = %bb.ai
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jh, i64 44
  store i32 0, ptr %i.ld, align 4, !tbaa !142
  %i.le = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  store i32 0, ptr %i.le, align 8, !tbaa !141
  %i.lf = load i32, ptr %i.ih, align 4, !tbaa !45
  %i.lg = add i32 %i.lf, 1
  store i32 %i.lg, ptr %i.ih, align 4, !tbaa !45
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %bb.aj, %bb.al, %.loopexit861
  %indvars.iv.next980 = add nuw nsw i64 %indvars.iv979, 1 ; 2 uses
  %exitcond984.not = icmp eq i64 %indvars.iv.next980, %wide.trip.count
  br i1 %exitcond984.not, label %bb.aa, label %bb.ad, !llvm.loop !90

bb.am:                                            ; preds = %bb.ac, %bb.ab
  store i32 %i.fl, ptr %i.ix, align 4, !tbaa !49
  %i.lh = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.br, i32 noundef %i.hq, i1 noundef zeroext false)
  br i1 %i.lh, label %bb.an, label %.critedge501

bb.an:                                            ; preds = %bb.am
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !49 ; 3 uses
  %i.lk = icmp ugt i32 %i.hq, %i.lj
  br i1 %i.lk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ll = sub nuw nsw i32 %i.hq, %i.lj
  %i.lm = shl nuw nsw i32 %i.ll, 2
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !52
  %i.lp = zext nneg i32 %i.lj to i64
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = zext nneg i32 %i.lm to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.lq, i8 0, i64 %i.lr, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i32 %i.hq, ptr %i.li, align 4, !tbaa !49
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !143 ; 3 uses
  %i.lu = load ptr, ptr %i.ic, align 8, !tbaa !135 ; 3 uses
  %i.lv = icmp eq i32 %i.fl, 1
  br i1 %i.lv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ap
  %unroll_iter = and i64 %i.ie, 30
  br label %bb.aq

.critedge505.preheader.unr-lcssa:                 ; preds = %bb.as
  %2 = trunc i32 %i.fl to i1
  br i1 %2, label %.epil.preheader, label %.critedge505.preheader

.epil.preheader:                                  ; preds = %.critedge505.preheader.unr-lcssa, %bb.ap
  %indvars.iv985.epil.init = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next986.1, %.critedge505.preheader.unr-lcssa ] ; 2 uses
  %.0835875.epil.init = phi i32 [ 0, %bb.ap ], [ %i.mr, %.critedge505.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod1211 = trunc i32 %i.fl to i1
  tail call void @llvm.assume(i1 %lcmp.mod1211)
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv985.epil.init
  store i32 %.0835875.epil.init, ptr %i.lw, align 4, !tbaa !45
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv985.epil.init
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !45
  %i.lz = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0835875.epil.init, i32 %i.ly) ; 2 uses
  %i.ma = extractvalue { i32, i1 } %i.lz, 1
  br i1 %i.ma, label %.critedge501, label %.critedge505.preheader.epilog-lcssa, !prof !38

.critedge505.preheader.epilog-lcssa:              ; preds = %.epil.preheader
  %i.mb = extractvalue { i32, i1 } %i.lz, 0
  br label %.critedge505.preheader

.critedge505.preheader:                           ; preds = %.critedge505.preheader.unr-lcssa, %.critedge505.preheader.epilog-lcssa
  %.lcssa1209 = phi i32 [ %i.mr, %.critedge505.preheader.unr-lcssa ], [ %i.mb, %.critedge505.preheader.epilog-lcssa ] ; 10 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !144 ; 3 uses
  %i.me = load ptr, ptr %i.ig, align 8, !tbaa !136 ; 3 uses
  %i.mf = icmp eq i32 %i.hq, 1
  br i1 %i.mf, label %.epil.preheader1212, label %.critedge505.preheader.new

.critedge505.preheader.new:                       ; preds = %.critedge505.preheader
  %unroll_iter1217 = and i64 %i.ii, 30
  br label %bb.at

bb.aq:                                            ; preds = %bb.as, %.new
  %indvars.iv985 = phi i64 [ 0, %.new ], [ %indvars.iv.next986.1, %bb.as ] ; 4 uses
  %.0835875 = phi i32 [ 0, %.new ], [ %i.mr, %bb.as ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.as ]
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv985
  store i32 %.0835875, ptr %i.mg, align 4, !tbaa !45
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv985
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !45
  %i.mj = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0835875, i32 %i.mi) ; 2 uses
  %i.mk = extractvalue { i32, i1 } %i.mj, 1
  br i1 %i.mk, label %.critedge501, label %bb.ar, !prof !38

bb.ar:                                            ; preds = %bb.aq
  %i.ml = extractvalue { i32, i1 } %i.mj, 0       ; 2 uses
  %indvars.iv.next986 = or disjoint i64 %indvars.iv985, 1 ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv.next986
  store i32 %i.ml, ptr %i.mm, align 4, !tbaa !45
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv.next986
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !45
  %i.mp = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ml, i32 %i.mo) ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.mp, 1
  br i1 %i.mq, label %.critedge501, label %bb.as, !prof !38

bb.as:                                            ; preds = %bb.ar
  %i.mr = extractvalue { i32, i1 } %i.mp, 0       ; 3 uses
  %indvars.iv.next986.1 = add nuw nsw i64 %indvars.iv985, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge505.preheader.unr-lcssa, label %bb.aq, !llvm.loop !91

bb.at:                                            ; preds = %.critedge505.1, %.critedge505.preheader.new
  %indvars.iv991 = phi i64 [ 0, %.critedge505.preheader.new ], [ %indvars.iv.next992.1, %.critedge505.1 ] ; 4 uses
  %.0833877 = phi i32 [ 0, %.critedge505.preheader.new ], [ %i.nd, %.critedge505.1 ] ; 2 uses
  %niter1218 = phi i64 [ 0, %.critedge505.preheader.new ], [ %niter1218.next.1, %.critedge505.1 ]
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv991
  store i32 %.0833877, ptr %i.ms, align 4, !tbaa !45
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv991
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !45
  %i.mv = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0833877, i32 %i.mu) ; 2 uses
  %i.mw = extractvalue { i32, i1 } %i.mv, 1
  br i1 %i.mw, label %.critedge501, label %.critedge505, !prof !38

.critedge505:                                     ; preds = %bb.at
  %i.mx = extractvalue { i32, i1 } %i.mv, 0       ; 2 uses
  %indvars.iv.next992 = or disjoint i64 %indvars.iv991, 1 ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next992
  store i32 %i.mx, ptr %i.my, align 4, !tbaa !45
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.next992
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !45
  %i.nb = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.mx, i32 %i.na) ; 2 uses
  %i.nc = extractvalue { i32, i1 } %i.nb, 1
  br i1 %i.nc, label %.critedge501, label %.critedge505.1, !prof !38

.critedge505.1:                                   ; preds = %.critedge505
  %i.nd = extractvalue { i32, i1 } %i.nb, 0       ; 3 uses
  %indvars.iv.next992.1 = add nuw nsw i64 %indvars.iv991, 2 ; 2 uses
  %niter1218.next.1 = add i64 %niter1218, 2       ; 2 uses
  %niter1218.ncmp.1 = icmp eq i64 %niter1218.next.1, %unroll_iter1217
  br i1 %niter1218.ncmp.1, label %.critedge507.unr-lcssa, label %bb.at, !llvm.loop !92

.critedge507.unr-lcssa:                           ; preds = %.critedge505.1
  %3 = trunc i32 %i.hq to i1
  br i1 %3, label %.epil.preheader1212, label %.critedge507

.epil.preheader1212:                              ; preds = %.critedge507.unr-lcssa, %.critedge505.preheader
  %indvars.iv991.epil.init = phi i64 [ 0, %.critedge505.preheader ], [ %indvars.iv.next992.1, %.critedge507.unr-lcssa ] ; 2 uses
  %.0833877.epil.init = phi i32 [ 0, %.critedge505.preheader ], [ %i.nd, %.critedge507.unr-lcssa ] ; 2 uses
  %lcmp.mod1216 = trunc i32 %i.hq to i1
  tail call void @llvm.assume(i1 %lcmp.mod1216)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv991.epil.init
  store i32 %.0833877.epil.init, ptr %i.ne, align 4, !tbaa !45
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv991.epil.init
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !45
  %i.nh = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %.0833877.epil.init, i32 %i.ng) ; 2 uses
  %i.ni = extractvalue { i32, i1 } %i.nh, 1
  br i1 %i.ni, label %.critedge501, label %.critedge505.epil, !prof !38

.critedge505.epil:                                ; preds = %.epil.preheader1212
  %i.nj = extractvalue { i32, i1 } %i.nh, 0
  br label %.critedge507

.critedge507:                                     ; preds = %.critedge507.unr-lcssa, %.critedge505.epil
  %.lcssa1207 = phi i32 [ %i.nd, %.critedge507.unr-lcssa ], [ %i.nj, %.critedge505.epil ] ; 10 uses
  %i.nk = icmp slt i32 %.lcssa1209, 0
  br i1 %i.nk, label %.critedge501, label %bb.au, !prof !38

bb.au:                                            ; preds = %.critedge507
  %i.nl = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i32 noundef %.lcssa1209, i1 noundef zeroext false)
  br i1 %i.nl, label %bb.av, label %.critedge501, !prof !132

bb.av:                                            ; preds = %bb.au
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !49 ; 3 uses
  %i.no = icmp ugt i32 %.lcssa1209, %i.nn
  br i1 %i.no, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.np = sub nuw nsw i32 %.lcssa1209, %i.nn
  %i.nq = shl i32 %i.np, 2                        ; 2 uses
  %.not.i.i.i.i564 = icmp eq i32 %i.nq, 0
  br i1 %.not.i.i.i.i564, label %bb.ay, label %bb.ax, !prof !38

bb.ax:                                            ; preds = %bb.aw
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !52
  %i.nt = zext nneg i32 %i.nn to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nt
  %i.nv = zext i32 %i.nq to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.nu, i8 0, i64 %i.nv, i1 false)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  store i32 %.lcssa1209, ptr %i.nm, align 4, !tbaa !49
  %i.nw = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i32 noundef %.lcssa1209, i1 noundef zeroext false)
  br i1 %i.nw, label %bb.az, label %.critedge501

bb.az:                                            ; preds = %bb.ay
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !49 ; 3 uses
  %i.nz = icmp ugt i32 %.lcssa1209, %i.ny
  br i1 %i.nz, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.oa = sub nuw nsw i32 %.lcssa1209, %i.ny
  %i.ob = shl i32 %i.oa, 2                        ; 2 uses
  %.not.i.i.i.i568 = icmp eq i32 %i.ob, 0
  br i1 %.not.i.i.i.i568, label %bb.bc, label %bb.bb, !prof !38

bb.bb:                                            ; preds = %bb.ba
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !52
  %i.oe = zext nneg i32 %i.ny to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.oe
  %i.og = zext i32 %i.ob to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.of, i8 0, i64 %i.og, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.ba, %bb.bb
  store i32 %.lcssa1209, ptr %i.nx, align 4, !tbaa !49
  %i.oh = icmp slt i32 %.lcssa1207, 0
  br i1 %i.oh, label %.critedge501, label %bb.bd, !prof !38

bb.bd:                                            ; preds = %bb.bc
  %i.oi = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i32 noundef %.lcssa1207, i1 noundef zeroext false)
  br i1 %i.oi, label %bb.be, label %.critedge501, !prof !132

bb.be:                                            ; preds = %bb.bd
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !49 ; 3 uses
  %i.ol = icmp ugt i32 %.lcssa1207, %i.ok
  br i1 %i.ol, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.om = sub nuw nsw i32 %.lcssa1207, %i.ok
  %i.on = shl i32 %i.om, 2                        ; 2 uses
  %.not.i.i.i.i572 = icmp eq i32 %i.on, 0
  br i1 %.not.i.i.i.i572, label %bb.bh, label %bb.bg, !prof !38

bb.bg:                                            ; preds = %bb.bf
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !52
  %i.oq = zext nneg i32 %i.ok to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.oq
  %i.os = zext i32 %i.on to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.or, i8 0, i64 %i.os, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.be, %bb.bf, %bb.bg
  store i32 %.lcssa1207, ptr %i.oj, align 4, !tbaa !49
  %i.ot = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i32 noundef %.lcssa1207, i1 noundef zeroext false)
  br i1 %i.ot, label %bb.bi, label %.critedge501

bb.bi:                                            ; preds = %bb.bh
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 3 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !49 ; 3 uses
  %i.ow = icmp ugt i32 %.lcssa1207, %i.ov
  br i1 %i.ow, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ox = sub nuw nsw i32 %.lcssa1207, %i.ov
  %i.oy = shl i32 %i.ox, 2                        ; 2 uses
  %.not.i.i.i.i576 = icmp eq i32 %i.oy, 0
  br i1 %.not.i.i.i.i576, label %bb.bl, label %bb.bk, !prof !38

bb.bk:                                            ; preds = %bb.bj
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !52
  %i.pb = zext nneg i32 %i.ov to i64
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.pb
  %i.pd = zext i32 %i.oy to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.pc, i8 0, i64 %i.pd, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  store i32 %.lcssa1207, ptr %i.ou, align 4, !tbaa !49
  %i.pe = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i32 noundef %i.fl, i1 noundef zeroext false)
  br i1 %i.pe, label %bb.bm, label %.critedge501

bb.bm:                                            ; preds = %bb.bl
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !49 ; 3 uses
  %i.ph = icmp ugt i32 %i.fl, %i.pg
  br i1 %i.ph, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.pi = sub nuw nsw i32 %i.fl, %i.pg
  %i.pj = shl nuw nsw i32 %i.pi, 2
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !52
  %i.pm = zext nneg i32 %i.pg to i64
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.pm
  %i.po = zext nneg i32 %i.pj to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.pn, i8 0, i64 %i.po, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  store i32 %i.fl, ptr %i.pf, align 4, !tbaa !49
  %i.pp = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i32 noundef %i.hq, i1 noundef zeroext false)
  br i1 %i.pp, label %bb.bp, label %.critedge501

bb.bp:                                            ; preds = %bb.bo
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !49 ; 3 uses
  %i.ps = icmp ugt i32 %i.hq, %i.pr
  br i1 %i.ps, label %bb.bq, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit585

bb.bq:                                            ; preds = %bb.bp
  %i.pt = sub nuw nsw i32 %i.hq, %i.pr
  %i.pu = shl nuw nsw i32 %i.pt, 2
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !52
  %i.px = zext nneg i32 %i.pr to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.px
  %i.pz = zext nneg i32 %i.pu to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.py, i8 0, i64 %i.pz, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit585

_ZN11hb_vector_tIjLb0EE6resizeEi.exit585:         ; preds = %bb.bp, %bb.bq
  store i32 %i.hq, ptr %i.pq, align 4, !tbaa !49
  %i.qa = load ptr, ptr %i.ls, align 8, !tbaa !143 ; 12 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !145 ; 13 uses
  %min.iters.check = icmp samesign ult i32 %i.fl, 8
  %i.qd = ptrtoaddr ptr %i.qc to i64
  %i.qe = ptrtoaddr ptr %i.qa to i64
  %i.qf = sub i64 %i.qe, %i.qd
  %diff.check = icmp ugt i64 %i.qf, -32
  %or.cond1192 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1192, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit585
  %n.vec = and i64 %i.ie, 24                      ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  %wide.load = load <4 x i32>, ptr %i.qa, align 4, !tbaa !45
  %wide.load1174 = load <4 x i32>, ptr %i.qg, align 4, !tbaa !45
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store <4 x i32> %wide.load, ptr %i.qc, align 4, !tbaa !45
  store <4 x i32> %wide.load1174, ptr %i.qh, align 4, !tbaa !45
  %i.qi = icmp eq i64 %n.vec, 8
  br i1 %i.qi, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
end_hunk_0
begin_hunk_1_@hb_gpu_draw_encode:bb.a
  %spec.select = add i32 %.0464892, %i.xb
  %i.xc = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 104
  %i.xe = load i8, ptr %i.xd, align 8, !tbaa !154, !range !29, !noundef !30
  %i.xf = zext nneg i8 %i.xe to i32
  %spec.select.1 = add i32 %spec.select, %i.xf
  %i.xg = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 160
  %i.xi = load i8, ptr %i.xh, align 8, !tbaa !154, !range !29, !noundef !30
  %i.xj = zext nneg i8 %i.xi to i32
  %spec.select.2 = add i32 %spec.select.1, %i.xj
  %i.xk = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1030
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 216
  %i.xm = load i8, ptr %i.xl, align 8, !tbaa !154, !range !29, !noundef !30
  %i.xn = zext nneg i8 %i.xm to i32
  %spec.select.3 = add i32 %spec.select.2, %i.xn  ; 3 uses
  %indvars.iv.next1031.3 = add nuw nsw i64 %indvars.iv1030, 4 ; 2 uses
  %niter1229.next.3 = add nuw i64 %niter1229, 4   ; 2 uses
  %niter1229.ncmp.3 = icmp eq i64 %niter1229.next.3, %unroll_iter1228
  br i1 %niter1229.ncmp.3, label %._crit_edge894.loopexit.unr-lcssa, label %.lr.ph893, !llvm.loop !111

bb.cd:                                            ; preds = %._crit_edge894
  %i.xo = extractvalue { i32, i1 } %i.ww, 0
  %i.xp = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xo, i32 1) ; 2 uses
  %i.xq = extractvalue { i32, i1 } %i.xp, 1
  %i.xr = extractvalue { i32, i1 } %i.xp, 0
  br i1 %i.xq, label %.critedge501, label %bb.ce, !prof !38

bb.ce:                                            ; preds = %bb.cd
  %i.xs = add nuw nsw i32 %i.fl, %i.hq
  %i.xt = add nuw nsw i32 %i.xs, 2                ; 2 uses
  %i.xu = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xt, i32 %i.wo) ; 2 uses
  %i.xv = extractvalue { i32, i1 } %i.xu, 1
  %i.xw = extractvalue { i32, i1 } %i.xu, 0       ; 2 uses
  br i1 %i.xv, label %.critedge501, label %bb.cf, !prof !38

bb.cf:                                            ; preds = %bb.ce
  %i.xx = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xw, i32 %i.xr) ; 2 uses
  %i.xy = extractvalue { i32, i1 } %i.xx, 1
  %i.xz = extractvalue { i32, i1 } %i.xx, 0       ; 2 uses
  %i.ya = icmp ugt i32 %i.xz, 65536
  %or.cond = or i1 %i.xy, %i.ya
  br i1 %or.cond, label %.critedge501, label %bb.cg, !prof !44

bb.cg:                                            ; preds = %bb.cf
  %i.yb = shl nuw nsw i32 %i.xz, 3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !59
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !60
  %i.ye = call noundef ptr @_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc(ptr noundef %i.yd, i32 noundef %i.yb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 23 uses
  %.not493 = icmp eq ptr %i.ye, null
  br i1 %.not493, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, label %.cont701, !prof !38

.cont701:                                         ; preds = %bb.cg
  store <4 x i16> %i.ez, ptr %i.ye, align 2, !tbaa !156
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = shufflevector <2 x i32> %i.fk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.yh = trunc nuw nsw <2 x i32> %i.yg to <2 x i16>
  store <2 x i16> %i.yh, ptr %i.yf, align 2, !tbaa !156
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  %i.yk = load <2 x i32>, ptr %i.yi, align 8, !tbaa !45
  %i.yl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yk, <2 x i32> splat (i32 -32768))
  %i.ym = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.yl, <2 x i32> splat (i32 32767))
  %i.yn = trunc nsw <2 x i32> %i.ym to <2 x i16>
  store <2 x i16> %i.yn, ptr %i.yj, align 2, !tbaa !156
  %i.yo = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i32 noundef %i.au)
  br i1 %i.yo, label %.preheader855, label %bb.ch, !prof !31

.preheader855:                                    ; preds = %.cont701
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.cm

bb.ch:                                            ; preds = %.cont701
  %i.yq = load ptr, ptr %i.yc, align 8, !tbaa !60 ; 3 uses
  %.not9.i682 = icmp eq ptr %i.yq, null
  br i1 %.not9.i682, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 40
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !63
  %i.yt = icmp eq ptr %i.ys, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.yt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !64
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !66
  %.not10.i683 = icmp eq ptr %i.ye, %i.yw
  br i1 %.not10.i683, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  call void @hb_free(ptr noundef nonnull %i.ye) #16
  br label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684

bb.cl:                                            ; preds = %bb.ct
  %i.yx = load ptr, ptr %i.ls, align 8, !tbaa !143
  %i.yy = load ptr, ptr %i.ic, align 8, !tbaa !135
  %foldExtExtBinop = fadd nnan <2 x double> %i.fc, %i.ff
  %i.yz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.za = fmul nnan double %i.yz, 5.000000e-01    ; 2 uses
  %i.zb = fmul nnan double %i.za, 4.000000e+00
  %i.zc = call double @llvm.round.f64(double %i.zb)
  br label %bb.cu

bb.cm:                                            ; preds = %.preheader855, %bb.ct
  %indvars.iv1036 = phi i64 [ 0, %.preheader855 ], [ %indvars.iv.next1037, %bb.ct ] ; 4 uses
  %.0461895 = phi i32 [ %i.xw, %.preheader855 ], [ %i.aaq, %bb.ct ] ; 5 uses
  %i.zd = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1036 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 48
  %i.zf = load i8, ptr %i.ze, align 8, !tbaa !154, !range !29, !noundef !30
  %i.zg = trunc nuw i8 %i.zf to i1
  br i1 %i.zg, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.zh = load ptr, ptr %i.yp, align 8, !tbaa !157 ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv1036
  store i32 %.0461895, ptr %i.zi, align 4, !tbaa !45
  %i.zj = zext i32 %.0461895 to i64
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.zj
  %i.zl = load <4 x double>, ptr %i.zd, align 8, !tbaa !42
  %i.zm = fmul <4 x double> %i.zl, splat (double 4.000000e+00)
  %i.zn = call <4 x double> @llvm.round.v4f64(<4 x double> %i.zm)
  %i.zo = fptosi <4 x double> %i.zn to <4 x i16>
  store <4 x i16> %i.zo, ptr %i.zk, align 2, !tbaa !156
  %i.zp = add i32 %.0461895, 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.zq = add i32 %.0461895, -1
  %i.zr = load ptr, ptr %i.yp, align 8, !tbaa !157 ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv1036
  store i32 %i.zq, ptr %i.zs, align 4, !tbaa !45
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.zt = phi ptr [ %i.zh, %bb.cn ], [ %i.zr, %bb.co ] ; 12 uses
  %.1462 = phi i32 [ %i.zp, %bb.cn ], [ %.0461895, %bb.co ] ; 2 uses
  %indvars.iv.next1037 = add nuw nsw i64 %indvars.iv1036, 1 ; 5 uses
  %i.zu = icmp samesign ult i64 %indvars.iv.next1037, %wide.trip.count
  br i1 %i.zu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.zv = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv.next1037
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 48
  %i.zx = load i8, ptr %i.zw, align 8, !tbaa !154, !range !29, !noundef !30
  %i.zy = trunc nuw i8 %i.zx to i1
  %i.zz = xor i1 %i.zy, true
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.aaa = phi i1 [ false, %bb.cp ], [ %i.zz, %bb.cq ]
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zd, i64 32
  %i.aac = zext i32 %.1462 to i64
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aac ; 2 uses
  %i.aae = load <2 x double>, ptr %i.aab, align 8, !tbaa !42
  %i.aaf = fmul <2 x double> %i.aae, splat (double 4.000000e+00)
  %i.aag = call <2 x double> @llvm.round.v2f64(<2 x double> %i.aaf)
  %i.aah = fptosi <2 x double> %i.aag to <2 x i16>
  store <2 x i16> %i.aah, ptr %i.aad, align 2, !tbaa !156
  br i1 %i.aaa, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.aai = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv.next1037
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aak = load <2 x double>, ptr %i.aaj, align 8, !tbaa !42
  %i.aal = fmul <2 x double> %i.aak, splat (double 4.000000e+00)
  %i.aam = call <2 x double> @llvm.round.v2f64(<2 x double> %i.aal)
  %i.aan = fptosi <2 x double> %i.aam to <2 x i16>
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.aao = phi <2 x i16> [ %i.aan, %bb.cs ], [ zeroinitializer, %bb.cr ]
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  store <2 x i16> %i.aao, ptr %i.aap, align 2, !tbaa !156
  %i.aaq = add i32 %.1462, 1
  %exitcond1040.not = icmp eq i64 %indvars.iv.next1037, %wide.trip.count
  br i1 %exitcond1040.not, label %bb.cl, label %bb.cm, !llvm.loop !112

.preheader853:                                    ; preds = %._crit_edge920
  %i.aar = load ptr, ptr %i.mc, align 8, !tbaa !144
  %i.aas = load ptr, ptr %i.ig, align 8, !tbaa !136
  %foldExtExtBinop1198 = fadd nnan <2 x double> %i.fc, %i.ff
  %i.aat = extractelement <2 x double> %foldExtExtBinop1198, i64 1
  %i.aau = fmul nnan double %i.aat, 5.000000e-01  ; 2 uses
  %i.aav = fmul nnan double %i.aau, 4.000000e+00
  %i.aaw = call double @llvm.round.f64(double %i.aav)
  %i.aax = zext nneg i32 %i.fl to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aax
  br label %bb.db

bb.cu:                                            ; preds = %bb.cl, %._crit_edge920
  %indvars.iv1062 = phi i64 [ 0, %bb.cl ], [ %indvars.iv.next1063, %._crit_edge920 ] ; 4 uses
  %.0454922 = phi i32 [ %i.xt, %bb.cl ], [ %.2456.lcssa, %._crit_edge920 ] ; 5 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv1062
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !45 ; 8 uses
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv1062
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !45 ; 9 uses
  %.not952 = icmp eq i32 %i.abb, 0
  br i1 %.not952, label %._crit_edge920, label %.lr.ph909

.lr.ph909:                                        ; preds = %bb.cu
  %i.abc = load ptr, ptr %i.et, align 8, !tbaa !133 ; 2 uses
  %i.abd = load ptr, ptr %i.sh, align 8, !tbaa !149
  %i.abe = add i32 %i.aaz, -1
  %wide.trip.count1048 = zext i32 %i.abb to i64   ; 4 uses
  br label %bb.cv

._crit_edge910:                                   ; preds = %.critedge
  %i.abf = fmul double %.1450, 4.000000e+00
  %i.abg = call double @llvm.round.f64(double %i.abf) ; 2 uses
  %i.abh = load ptr, ptr %i.sh, align 8, !tbaa !149 ; 3 uses
  %i.abi = add nsw i64 %wide.trip.count1048, -1   ; 2 uses
  %i.abj = icmp eq i64 %i.abi, 0
  br i1 %i.abj, label %.epil.preheader1230, label %._crit_edge910.new

._crit_edge910.new:                               ; preds = %._crit_edge910
  %unroll_iter1236 = and i64 %wide.trip.count1048, 4294967294
  br label %bb.cy

bb.cv:                                            ; preds = %.lr.ph909, %.critedge
  %indvars.iv1044 = phi i64 [ 0, %.lr.ph909 ], [ %indvars.iv.next1045, %.critedge ] ; 2 uses
  %.0449906 = phi double [ %i.za, %.lr.ph909 ], [ %.1450, %.critedge ]
  %.0451905 = phi i32 [ %i.abb, %.lr.ph909 ], [ %.1452, %.critedge ] ; 2 uses
  %.0831904 = phi i32 [ %i.abb, %.lr.ph909 ], [ %.1832.lcssa, %.critedge ] ; 2 uses
  %i.abk = trunc nuw i64 %indvars.iv1044 to i32
  %i.abl = add i32 %i.aaz, %i.abk
  %i.abm = zext i32 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.abd, i64 %i.abm
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !45
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [56 x i8], ptr %i.abc, i64 %i.abp
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abs = load double, ptr %i.abr, align 8, !tbaa !54 ; 2 uses
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 3 uses
  %.not495897 = icmp eq i32 %.0831904, 0
  br i1 %.not495897, label %.critedge, label %.lr.ph900

.lr.ph900:                                        ; preds = %bb.cv
  %i.abt = load ptr, ptr %i.si, align 8, !tbaa !150
  %i.abu = zext i32 %.0831904 to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph900, %bb.cx
  %indvars.iv1041 = phi i64 [ %i.abu, %.lr.ph900 ], [ %indvars.iv.next1042, %bb.cx ] ; 2 uses
  %i.abv = trunc nuw i64 %indvars.iv1041 to i32   ; 2 uses
  %i.abw = add i32 %i.abe, %i.abv
  %i.abx = zext i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.abx
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !45
  %i.aca = zext i32 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [56 x i8], ptr %i.abc, i64 %i.aca
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !55
  %i.acd = fcmp ogt double %i.acc, %i.abs
  br i1 %i.acd, label %bb.cx, label %.critedge

bb.cx:                                            ; preds = %bb.cw
  %indvars.iv.next1042 = add nsw i64 %indvars.iv1041, -1 ; 2 uses
  %i.ace = and i64 %indvars.iv.next1042, 4294967295
  %.not495 = icmp eq i64 %i.ace, 0
  br i1 %.not495, label %.critedge, label %bb.cw, !llvm.loop !113

.critedge:                                        ; preds = %bb.cw, %bb.cx, %bb.cv
  %.1832.lcssa = phi i32 [ 0, %bb.cv ], [ 0, %bb.cx ], [ %i.abv, %bb.cw ] ; 2 uses
  %i.acf = trunc nuw i64 %indvars.iv.next1045 to i32
  %.sroa.speculated691 = call i32 @llvm.umax.i32(i32 %i.acf, i32 %.1832.lcssa) ; 2 uses
  %i.acg = icmp ult i32 %.sroa.speculated691, %.0451905
  %.1452 = call i32 @llvm.umin.i32(i32 %.sroa.speculated691, i32 %.0451905)
  %.1450 = select i1 %i.acg, double %i.abs, double %.0449906 ; 2 uses
  %exitcond1049.not = icmp eq i64 %indvars.iv.next1045, %wide.trip.count1048
  br i1 %exitcond1049.not, label %._crit_edge910, label %bb.cv, !llvm.loop !114

.lr.ph919.unr-lcssa:                              ; preds = %bb.cy
  %4 = trunc i32 %i.abb to i1
  br i1 %4, label %.epil.preheader1230, label %.lr.ph919

.epil.preheader1230:                              ; preds = %.lr.ph919.unr-lcssa, %._crit_edge910
  %indvars.iv1050.epil.init = phi i64 [ 0, %._crit_edge910 ], [ %indvars.iv.next1051.1, %.lr.ph919.unr-lcssa ]
  %.1455912.epil.init = phi i32 [ %.0454922, %._crit_edge910 ], [ %i.adw, %.lr.ph919.unr-lcssa ] ; 2 uses
  %lcmp.mod1235 = trunc i32 %i.abb to i1
  call void @llvm.assume(i1 %lcmp.mod1235)
  %i.ach = trunc nuw i64 %indvars.iv1050.epil.init to i32
  %i.aci = add i32 %i.aaz, %i.ach
  %i.acj = zext i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %i.acj
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !45
  %i.acm = zext i32 %i.acl to i64
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !45
  %i.acp = trunc i32 %i.aco to i16
  %i.acq = zext i32 %.1455912.epil.init to i64
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.acq
  %.scalar.epil = xor i16 %i.acp, -32768
  %i.acs = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar.epil, i64 0
  store <4 x i16> %i.acs, ptr %i.acr, align 2, !tbaa !156
  %i.act = add i32 %.1455912.epil.init, 1
  br label %.lr.ph919

.lr.ph919:                                        ; preds = %.lr.ph919.unr-lcssa, %.epil.preheader1230
  %.lcssa1204 = phi i32 [ %i.adw, %.lr.ph919.unr-lcssa ], [ %i.act, %.epil.preheader1230 ] ; 4 uses
  %i.acu = load ptr, ptr %i.si, align 8, !tbaa !150 ; 3 uses
  %i.acv = icmp eq i64 %i.abi, 0
  br i1 %i.acv, label %.epil.preheader1238, label %.lr.ph919.new

.lr.ph919.new:                                    ; preds = %.lr.ph919
  %unroll_iter1244 = and i64 %wide.trip.count1048, 4294967294
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cy, %._crit_edge910.new
  %indvars.iv1050 = phi i64 [ 0, %._crit_edge910.new ], [ %indvars.iv.next1051.1, %bb.cy ] ; 3 uses
  %.1455912 = phi i32 [ %.0454922, %._crit_edge910.new ], [ %i.adw, %bb.cy ] ; 3 uses
  %niter1237 = phi i64 [ 0, %._crit_edge910.new ], [ %niter1237.next.1, %bb.cy ]
  %i.acw = trunc nuw i64 %indvars.iv1050 to i32
  %i.acx = add i32 %i.aaz, %i.acw
  %i.acy = zext i32 %i.acx to i64
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %i.acy
  %i.ada = load i32, ptr %i.acz, align 4, !tbaa !45
  %i.adb = zext i32 %i.ada to i64
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.adb
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !45
  %i.ade = trunc i32 %i.add to i16
  %i.adf = zext i32 %.1455912 to i64
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.adf
  %.scalar = xor i16 %i.ade, -32768
  %i.adh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar, i64 0
  store <4 x i16> %i.adh, ptr %i.adg, align 2, !tbaa !156
  %i.adi = add i32 %.1455912, 1
  %i.adj = trunc i64 %indvars.iv1050 to i32
  %i.adk = or disjoint i32 %i.adj, 1
  %i.adl = add i32 %i.aaz, %i.adk
  %i.adm = zext i32 %i.adl to i64
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %i.abh, i64 %i.adm
  %i.ado = load i32, ptr %i.adn, align 4, !tbaa !45
  %i.adp = zext i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !45
  %i.ads = trunc i32 %i.adr to i16
  %i.adt = zext i32 %i.adi to i64
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.adt
  %.scalar.1 = xor i16 %i.ads, -32768
  %i.adv = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar.1, i64 0
  store <4 x i16> %i.adv, ptr %i.adu, align 2, !tbaa !156
  %i.adw = add i32 %.1455912, 2                   ; 3 uses
  %indvars.iv.next1051.1 = add nuw nsw i64 %indvars.iv1050, 2 ; 2 uses
  %niter1237.next.1 = add i64 %niter1237, 2       ; 2 uses
  %niter1237.ncmp.1 = icmp eq i64 %niter1237.next.1, %unroll_iter1236
  br i1 %niter1237.ncmp.1, label %.lr.ph919.unr-lcssa, label %bb.cy, !llvm.loop !115

._crit_edge920.loopexit.unr-lcssa:                ; preds = %bb.cz
  %5 = trunc i32 %i.abb to i1
  br i1 %5, label %.epil.preheader1238, label %._crit_edge920

.epil.preheader1238:                              ; preds = %._crit_edge920.loopexit.unr-lcssa, %.lr.ph919
  %indvars.iv1056.epil.init = phi i64 [ 0, %.lr.ph919 ], [ %indvars.iv.next1057.1, %._crit_edge920.loopexit.unr-lcssa ]
  %.2456917.epil.init = phi i32 [ %.lcssa1204, %.lr.ph919 ], [ %i.afv, %._crit_edge920.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1243 = trunc i32 %i.abb to i1
  call void @llvm.assume(i1 %lcmp.mod1243)
  %i.adx = trunc nuw i64 %indvars.iv1056.epil.init to i32
  %i.ady = add i32 %i.aaz, %i.adx
  %i.adz = zext i32 %i.ady to i64
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.adz
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !45
  %i.aec = zext i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.aec
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !45
  %i.aef = trunc i32 %i.aee to i16
  %i.aeg = zext i32 %.2456917.epil.init to i64
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aeg
  %.scalar1200.epil = xor i16 %i.aef, -32768
  %i.aei = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1200.epil, i64 0
  store <4 x i16> %i.aei, ptr %i.aeh, align 2, !tbaa !156
  %i.aej = add i32 %.2456917.epil.init, 1
  br label %._crit_edge920

._crit_edge920:                                   ; preds = %.epil.preheader1238, %._crit_edge920.loopexit.unr-lcssa, %bb.cu
  %.1455.lcssa1155 = phi i32 [ %.0454922, %bb.cu ], [ %.lcssa1204, %._crit_edge920.loopexit.unr-lcssa ], [ %.lcssa1204, %.epil.preheader1238 ]
  %.in = phi double [ %i.zc, %bb.cu ], [ %i.abg, %._crit_edge920.loopexit.unr-lcssa ], [ %i.abg, %.epil.preheader1238 ]
  %.2456.lcssa = phi i32 [ %.0454922, %bb.cu ], [ %i.afv, %._crit_edge920.loopexit.unr-lcssa ], [ %i.aej, %.epil.preheader1238 ] ; 2 uses
  %i.aek = fptosi double %.in to i16
  %i.ael = trunc i32 %i.abb to i16
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %indvars.iv1062 ; 4 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  store i16 %i.ael, ptr %i.aen, align 2, !tbaa !159
  %i.aeo = trunc i32 %.0454922 to i16
  %i.aep = xor i16 %i.aeo, -32768
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aem, i64 18
  store i16 %i.aep, ptr %i.aeq, align 2, !tbaa !160
  %i.aer = trunc i32 %.1455.lcssa1155 to i16
  %i.aes = xor i16 %i.aer, -32768
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aem, i64 20
  store i16 %i.aes, ptr %i.aet, align 2, !tbaa !161
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aem, i64 22
  store i16 %i.aek, ptr %i.aeu, align 2, !tbaa !162
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1 ; 2 uses
  %exitcond1067.not = icmp eq i64 %indvars.iv.next1063, %i.ie
  br i1 %exitcond1067.not, label %.preheader853, label %bb.cu, !llvm.loop !116

bb.cz:                                            ; preds = %bb.cz, %.lr.ph919.new
  %indvars.iv1056 = phi i64 [ 0, %.lr.ph919.new ], [ %indvars.iv.next1057.1, %bb.cz ] ; 3 uses
  %.2456917 = phi i32 [ %.lcssa1204, %.lr.ph919.new ], [ %i.afv, %bb.cz ] ; 3 uses
  %niter1245 = phi i64 [ 0, %.lr.ph919.new ], [ %niter1245.next.1, %bb.cz ]
  %i.aev = trunc nuw i64 %indvars.iv1056 to i32
  %i.aew = add i32 %i.aaz, %i.aev
  %i.aex = zext i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !45
  %i.afa = zext i32 %i.aez to i64
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.afa
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !45
  %i.afd = trunc i32 %i.afc to i16
  %i.afe = zext i32 %.2456917 to i64
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.afe
  %.scalar1200 = xor i16 %i.afd, -32768
  %i.afg = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1200, i64 0
  store <4 x i16> %i.afg, ptr %i.aff, align 2, !tbaa !156
  %i.afh = add i32 %.2456917, 1
  %i.afi = trunc i64 %indvars.iv1056 to i32
  %i.afj = or disjoint i32 %i.afi, 1
  %i.afk = add i32 %i.aaz, %i.afj
  %i.afl = zext i32 %i.afk to i64
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.acu, i64 %i.afl
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !45
  %i.afo = zext i32 %i.afn to i64
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.afo
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !45
  %i.afr = trunc i32 %i.afq to i16
  %i.afs = zext i32 %i.afh to i64
  %i.aft = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.afs
  %.scalar1200.1 = xor i16 %i.afr, -32768
  %i.afu = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1200.1, i64 0
  store <4 x i16> %i.afu, ptr %i.aft, align 2, !tbaa !156
  %i.afv = add i32 %.2456917, 2                   ; 3 uses
  %indvars.iv.next1057.1 = add nuw nsw i64 %indvars.iv1056, 2 ; 2 uses
  %niter1245.next.1 = add i64 %niter1245, 2       ; 2 uses
  %niter1245.ncmp.1 = icmp eq i64 %niter1245.next.1, %unroll_iter1244
  br i1 %niter1245.ncmp.1, label %._crit_edge920.loopexit.unr-lcssa, label %bb.cz, !llvm.loop !117

bb.da:                                            ; preds = %._crit_edge947
  %i.afw = load ptr, ptr %i.yc, align 8, !tbaa !60
  store ptr null, ptr %i.yc, align 8, !tbaa !60
  %i.afx = load i32, ptr %i.a, align 4, !tbaa !45
  %i.afy = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.afz = call noundef ptr @_ZN9hb_blob_t16recycle_finalizeEPcjjPS_S0_(ptr noundef nonnull %i.ye, i32 noundef %i.afx, i32 noundef %i.yb, ptr noundef %i.afw, ptr noundef %i.afy)
  br label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684

bb.db:                                            ; preds = %.preheader853, %._crit_edge947
  %indvars.iv1090 = phi i64 [ 0, %.preheader853 ], [ %indvars.iv.next1091, %._crit_edge947 ] ; 4 uses
  %.3457949 = phi i32 [ %.2456.lcssa, %.preheader853 ], [ %.5459.lcssa, %._crit_edge947 ] ; 5 uses
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %indvars.iv1090
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !45 ; 8 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %indvars.iv1090
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !45 ; 9 uses
  %.not955 = icmp eq i32 %i.agd, 0
  br i1 %.not955, label %._crit_edge947, label %.lr.ph936

.lr.ph936:                                        ; preds = %bb.db
  %i.age = load ptr, ptr %i.et, align 8, !tbaa !133 ; 2 uses
  %i.agf = load ptr, ptr %i.sj, align 8, !tbaa !151
  %i.agg = add i32 %i.agb, -1
  %wide.trip.count1076 = zext i32 %i.agd to i64   ; 4 uses
  br label %bb.dc

._crit_edge937:                                   ; preds = %.critedge3
  %i.agh = fmul double %.1442, 4.000000e+00
  %i.agi = call double @llvm.round.f64(double %i.agh) ; 2 uses
  %i.agj = load ptr, ptr %i.sj, align 8, !tbaa !151 ; 3 uses
  %i.agk = add nsw i64 %wide.trip.count1076, -1   ; 2 uses
  %i.agl = icmp eq i64 %i.agk, 0
  br i1 %i.agl, label %.epil.preheader1246, label %._crit_edge937.new

._crit_edge937.new:                               ; preds = %._crit_edge937
  %unroll_iter1252 = and i64 %wide.trip.count1076, 4294967294
  br label %bb.df

bb.dc:                                            ; preds = %.lr.ph936, %.critedge3
  %indvars.iv1072 = phi i64 [ 0, %.lr.ph936 ], [ %indvars.iv.next1073, %.critedge3 ] ; 2 uses
  %.0441933 = phi double [ %i.aau, %.lr.ph936 ], [ %.1442, %.critedge3 ]
  %.0443932 = phi i32 [ %i.agd, %.lr.ph936 ], [ %.1444, %.critedge3 ] ; 2 uses
  %.0931 = phi i32 [ %i.agd, %.lr.ph936 ], [ %.1.lcssa, %.critedge3 ] ; 2 uses
  %i.agm = trunc nuw i64 %indvars.iv1072 to i32
  %i.agn = add i32 %i.agb, %i.agm
  %i.ago = zext i32 %i.agn to i64
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %i.ago
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !45
  %i.agr = zext i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw [56 x i8], ptr %i.age, i64 %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !56 ; 2 uses
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 1 ; 3 uses
  %.not494924 = icmp eq i32 %.0931, 0
  br i1 %.not494924, label %.critedge3, label %.lr.ph927

.lr.ph927:                                        ; preds = %bb.dc
  %i.agv = load ptr, ptr %i.sk, align 8, !tbaa !152
  %i.agw = zext i32 %.0931 to i64
  br label %bb.dd

bb.dd:                                            ; preds = %.lr.ph927, %bb.de
  %indvars.iv1068 = phi i64 [ %i.agw, %.lr.ph927 ], [ %indvars.iv.next1069, %bb.de ] ; 2 uses
  %i.agx = trunc nuw i64 %indvars.iv1068 to i32   ; 2 uses
  %i.agy = add i32 %i.agg, %i.agx
  %i.agz = zext i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.agv, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !45
  %i.ahc = zext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [56 x i8], ptr %i.age, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !57
  %i.ahg = fcmp ogt double %i.ahf, %i.agu
  br i1 %i.ahg, label %bb.de, label %.critedge3

bb.de:                                            ; preds = %bb.dd
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -1 ; 2 uses
  %i.ahh = and i64 %indvars.iv.next1069, 4294967295
  %.not494 = icmp eq i64 %i.ahh, 0
  br i1 %.not494, label %.critedge3, label %bb.dd, !llvm.loop !118

.critedge3:                                       ; preds = %bb.dd, %bb.de, %bb.dc
  %.1.lcssa = phi i32 [ 0, %bb.dc ], [ 0, %bb.de ], [ %i.agx, %bb.dd ] ; 2 uses
  %i.ahi = trunc nuw i64 %indvars.iv.next1073 to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.ahi, i32 %.1.lcssa) ; 2 uses
  %i.ahj = icmp ult i32 %.sroa.speculated, %.0443932
  %.1444 = call i32 @llvm.umin.i32(i32 %.sroa.speculated, i32 %.0443932)
  %.1442 = select i1 %i.ahj, double %i.agu, double %.0441933 ; 2 uses
  %exitcond1077.not = icmp eq i64 %indvars.iv.next1073, %wide.trip.count1076
  br i1 %exitcond1077.not, label %._crit_edge937, label %bb.dc, !llvm.loop !119

.lr.ph946.unr-lcssa:                              ; preds = %bb.df
  %6 = trunc i32 %i.agd to i1
  br i1 %6, label %.epil.preheader1246, label %.lr.ph946

.epil.preheader1246:                              ; preds = %.lr.ph946.unr-lcssa, %._crit_edge937
  %indvars.iv1078.epil.init = phi i64 [ 0, %._crit_edge937 ], [ %indvars.iv.next1079.1, %.lr.ph946.unr-lcssa ]
  %.4458939.epil.init = phi i32 [ %.3457949, %._crit_edge937 ], [ %i.aiz, %.lr.ph946.unr-lcssa ] ; 2 uses
  %lcmp.mod1251 = trunc i32 %i.agd to i1
  call void @llvm.assume(i1 %lcmp.mod1251)
  %i.ahk = trunc nuw i64 %indvars.iv1078.epil.init to i32
  %i.ahl = add i32 %i.agb, %i.ahk
  %i.ahm = zext i32 %i.ahl to i64
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.ahm
  %i.aho = load i32, ptr %i.ahn, align 4, !tbaa !45
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.ahp
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !45
  %i.ahs = trunc i32 %i.ahr to i16
  %i.aht = zext i32 %.4458939.epil.init to i64
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aht
  %.scalar1201.epil = xor i16 %i.ahs, -32768
  %i.ahv = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1201.epil, i64 0
  store <4 x i16> %i.ahv, ptr %i.ahu, align 2, !tbaa !156
  %i.ahw = add i32 %.4458939.epil.init, 1
  br label %.lr.ph946

.lr.ph946:                                        ; preds = %.lr.ph946.unr-lcssa, %.epil.preheader1246
  %.lcssa = phi i32 [ %i.aiz, %.lr.ph946.unr-lcssa ], [ %i.ahw, %.epil.preheader1246 ] ; 4 uses
  %i.ahx = load ptr, ptr %i.sk, align 8, !tbaa !152 ; 3 uses
  %i.ahy = icmp eq i64 %i.agk, 0
  br i1 %i.ahy, label %.epil.preheader1254, label %.lr.ph946.new

.lr.ph946.new:                                    ; preds = %.lr.ph946
  %unroll_iter1260 = and i64 %wide.trip.count1076, 4294967294
  br label %bb.dg

bb.df:                                            ; preds = %bb.df, %._crit_edge937.new
  %indvars.iv1078 = phi i64 [ 0, %._crit_edge937.new ], [ %indvars.iv.next1079.1, %bb.df ] ; 3 uses
  %.4458939 = phi i32 [ %.3457949, %._crit_edge937.new ], [ %i.aiz, %bb.df ] ; 3 uses
  %niter1253 = phi i64 [ 0, %._crit_edge937.new ], [ %niter1253.next.1, %bb.df ]
  %i.ahz = trunc nuw i64 %indvars.iv1078 to i32
  %i.aia = add i32 %i.agb, %i.ahz
  %i.aib = zext i32 %i.aia to i64
  %i.aic = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.aib
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !45
  %i.aie = zext i32 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.aie
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !45
  %i.aih = trunc i32 %i.aig to i16
  %i.aii = zext i32 %.4458939 to i64
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aii
  %.scalar1201 = xor i16 %i.aih, -32768
  %i.aik = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1201, i64 0
  store <4 x i16> %i.aik, ptr %i.aij, align 2, !tbaa !156
  %i.ail = add i32 %.4458939, 1
  %i.aim = trunc i64 %indvars.iv1078 to i32
  %i.ain = or disjoint i32 %i.aim, 1
  %i.aio = add i32 %i.agb, %i.ain
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %i.aip
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !45
  %i.ais = zext i32 %i.air to i64
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.ais
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !45
  %i.aiv = trunc i32 %i.aiu to i16
  %i.aiw = zext i32 %i.ail to i64
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aiw
  %.scalar1201.1 = xor i16 %i.aiv, -32768
  %i.aiy = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1201.1, i64 0
  store <4 x i16> %i.aiy, ptr %i.aix, align 2, !tbaa !156
  %i.aiz = add i32 %.4458939, 2                   ; 3 uses
  %indvars.iv.next1079.1 = add nuw nsw i64 %indvars.iv1078, 2 ; 2 uses
  %niter1253.next.1 = add i64 %niter1253, 2       ; 2 uses
  %niter1253.ncmp.1 = icmp eq i64 %niter1253.next.1, %unroll_iter1252
  br i1 %niter1253.ncmp.1, label %.lr.ph946.unr-lcssa, label %bb.df, !llvm.loop !120

._crit_edge947.loopexit.unr-lcssa:                ; preds = %bb.dg
  %7 = trunc i32 %i.agd to i1
  br i1 %7, label %.epil.preheader1254, label %._crit_edge947

.epil.preheader1254:                              ; preds = %._crit_edge947.loopexit.unr-lcssa, %.lr.ph946
  %indvars.iv1084.epil.init = phi i64 [ 0, %.lr.ph946 ], [ %indvars.iv.next1085.1, %._crit_edge947.loopexit.unr-lcssa ]
  %.5459944.epil.init = phi i32 [ %.lcssa, %.lr.ph946 ], [ %i.akx, %._crit_edge947.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1259 = trunc i32 %i.agd to i1
  call void @llvm.assume(i1 %lcmp.mod1259)
  %i.aja = trunc nuw i64 %indvars.iv1084.epil.init to i32
  %i.ajb = add i32 %i.agb, %i.aja
  %i.ajc = zext i32 %i.ajb to i64
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !45
  %i.ajf = zext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.ajf
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !45
  %i.aji = trunc i32 %i.ajh to i16
  %i.ajj = zext i32 %.5459944.epil.init to i64
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.ajj
  %.scalar1202.epil = xor i16 %i.aji, -32768
  %i.ajl = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1202.epil, i64 0
  store <4 x i16> %i.ajl, ptr %i.ajk, align 2, !tbaa !156
  %i.ajm = add i32 %.5459944.epil.init, 1
  br label %._crit_edge947

._crit_edge947:                                   ; preds = %.epil.preheader1254, %._crit_edge947.loopexit.unr-lcssa, %bb.db
  %.4458.lcssa1159 = phi i32 [ %.3457949, %bb.db ], [ %.lcssa, %._crit_edge947.loopexit.unr-lcssa ], [ %.lcssa, %.epil.preheader1254 ]
  %.in1189 = phi double [ %i.aaw, %bb.db ], [ %i.agi, %._crit_edge947.loopexit.unr-lcssa ], [ %i.agi, %.epil.preheader1254 ]
  %.5459.lcssa = phi i32 [ %.3457949, %bb.db ], [ %i.akx, %._crit_edge947.loopexit.unr-lcssa ], [ %i.ajm, %.epil.preheader1254 ]
  %i.ajn = fptosi double %.in1189 to i16
  %i.ajo = trunc i32 %i.agd to i16
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv1090 ; 4 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store i16 %i.ajo, ptr %i.ajp, align 2, !tbaa !159
  %i.ajq = trunc i32 %.3457949 to i16
  %i.ajr = xor i16 %i.ajq, -32768
  %i.ajs = getelementptr inbounds nuw i8, ptr %gep, i64 18
  store i16 %i.ajr, ptr %i.ajs, align 2, !tbaa !160
  %i.ajt = trunc i32 %.4458.lcssa1159 to i16
  %i.aju = xor i16 %i.ajt, -32768
  %i.ajv = getelementptr inbounds nuw i8, ptr %gep, i64 20
  store i16 %i.aju, ptr %i.ajv, align 2, !tbaa !161
  %i.ajw = getelementptr inbounds nuw i8, ptr %gep, i64 22
  store i16 %i.ajn, ptr %i.ajw, align 2, !tbaa !162
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 1 ; 2 uses
  %exitcond1095.not = icmp eq i64 %indvars.iv.next1091, %i.ii
  br i1 %exitcond1095.not, label %bb.da, label %bb.db, !llvm.loop !121

bb.dg:                                            ; preds = %bb.dg, %.lr.ph946.new
  %indvars.iv1084 = phi i64 [ 0, %.lr.ph946.new ], [ %indvars.iv.next1085.1, %bb.dg ] ; 3 uses
  %.5459944 = phi i32 [ %.lcssa, %.lr.ph946.new ], [ %i.akx, %bb.dg ] ; 3 uses
  %niter1261 = phi i64 [ 0, %.lr.ph946.new ], [ %niter1261.next.1, %bb.dg ]
  %i.ajx = trunc nuw i64 %indvars.iv1084 to i32
  %i.ajy = add i32 %i.agb, %i.ajx
  %i.ajz = zext i32 %i.ajy to i64
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.ajz
  %i.akb = load i32, ptr %i.aka, align 4, !tbaa !45
  %i.akc = zext i32 %i.akb to i64
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.akc
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !45
  %i.akf = trunc i32 %i.ake to i16
  %i.akg = zext i32 %.5459944 to i64
  %i.akh = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.akg
  %.scalar1202 = xor i16 %i.akf, -32768
  %i.aki = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1202, i64 0
  store <4 x i16> %i.aki, ptr %i.akh, align 2, !tbaa !156
  %i.akj = add i32 %.5459944, 1
  %i.akk = trunc i64 %indvars.iv1084 to i32
  %i.akl = or disjoint i32 %i.akk, 1
  %i.akm = add i32 %i.agb, %i.akl
  %i.akn = zext i32 %i.akm to i64
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.ahx, i64 %i.akn
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !45
  %i.akq = zext i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.akq
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !45
  %i.akt = trunc i32 %i.aks to i16
  %i.aku = zext i32 %i.akj to i64
  %i.akv = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.aku
  %.scalar1202.1 = xor i16 %i.akt, -32768
  %i.akw = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %.scalar1202.1, i64 0
  store <4 x i16> %i.akw, ptr %i.akv, align 2, !tbaa !156
  %i.akx = add i32 %.5459944, 2                   ; 3 uses
  %indvars.iv.next1085.1 = add nuw nsw i64 %indvars.iv1084, 2 ; 2 uses
  %niter1261.next.1 = add i64 %niter1261, 2       ; 2 uses
  %niter1261.ncmp.1 = icmp eq i64 %niter1261.next.1, %unroll_iter1260
  br i1 %niter1261.ncmp.1, label %._crit_edge947.loopexit.unr-lcssa, label %bb.dg, !llvm.loop !122

_ZN9hb_blob_t13recycle_abortEPcPS_.exit684:       ; preds = %bb.da, %bb.cj, %bb.ck, %bb.cg
  %.3 = phi ptr [ null, %bb.cg ], [ %i.afz, %bb.da ], [ null, %bb.cj ], [ null, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.critedge501

.critedge501:                                     ; preds = %.epil.preheader, %bb.ar, %bb.aq, %.epil.preheader1212, %.critedge505, %bb.at, %bb.bo, %bb.bd, %bb.bc, %bb.au, %.critedge507, %bb.am, %bb.x, %bb.k, %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540, %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit, %bb.t, %bb.aa, %bb.cc, %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, %bb.ce, %bb.cf, %._crit_edge894, %bb.cd, %bb.bl, %bb.bh, %bb.ay, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i
  %.13 = phi ptr [ null, %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit ], [ %i.aw, %bb.i ], [ null, %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540 ], [ null, %bb.o ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.aa ], [ null, %bb.k ], [ null, %bb.x ], [ null, %bb.t ], [ null, %bb.bh ], [ null, %bb.bl ], [ null, %.epil.preheader1212 ], [ null, %bb.bd ], [ null, %bb.am ], [ %.3, %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684 ], [ null, %bb.au ], [ null, %bb.ay ], [ null, %bb.bo ], [ null, %bb.cc ], [ null, %._crit_edge894 ], [ null, %bb.cd ], [ null, %bb.bc ], [ null, %.critedge507 ], [ null, %bb.cf ], [ null, %bb.ce ], [ null, %bb.at ], [ null, %.critedge505 ], [ null, %bb.aq ], [ null, %bb.ar ], [ null, %.epil.preheader ]
  %i.aky = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.akz = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aky, i8 0, i64 32, i1 false)
  store i8 1, ptr %i.akz, align 8, !tbaa !32
  %i.ala = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.ala, align 4, !tbaa !37
  store i8 1, ptr %i.ao, align 8, !tbaa !28
  %i.alb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !40 ; 2 uses
  %i.ald = icmp slt i32 %i.alc, 0
  br i1 %i.ald, label %bb.dh, label %"_ZN16hb_scope_guard_tIZ18hb_gpu_draw_encodeE3$_0ED2Ev.exit", !prof !38

bb.dh:                                            ; preds = %.critedge501
  %i.ale = xor i32 %i.alc, -1
  store i32 %i.ale, ptr %i.alb, align 8, !tbaa !40
  br label %"_ZN16hb_scope_guard_tIZ18hb_gpu_draw_encodeE3$_0ED2Ev.exit"

"_ZN16hb_scope_guard_tIZ18hb_gpu_draw_encodeE3$_0ED2Ev.exit": ; preds = %.critedge501, %bb.dh
  %i.alf = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.alf, align 4, !tbaa !39
  %i.alg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> splat (double +inf), ptr %i.alg, align 8, !tbaa !42
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> splat (double -inf), ptr %i.alh, align 8, !tbaa !42
  ret ptr %.13
}

declare ptr @hb_blob_get_empty() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext false)
  br i1 %i.b, label %bb.c, label %_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49   ; 3 uses
  %i.e = icmp ugt i32 %1, %i.d
  br i1 %i.e, label %bb.d, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = sub nuw nsw i32 %1, %i.d
  %i.g = shl i32 %i.f, 2                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i, label %bb.e, !prof !38

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = zext i32 %i.g to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.l, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  store i32 %1, ptr %i.c, align 4, !tbaa !49
  br label %_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit

_ZN11hb_vector_tIjLb0EE11resize_fullEibb.exit:    ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i
  %.1.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i ]
  ret i1 %.1.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr null, ptr %3, align 8, !tbaa !59
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = icmp eq ptr %i.b, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.c, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !64   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %.not34 = icmp ult i32 %i.g, %1
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.g, ptr %2, align 4, !tbaa !45
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !66
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.i = lshr i32 %1, 1
  %i.j = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %i.i) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  %i.l = extractvalue { i32, i1 } %i.j, 0
end_hunk_1
