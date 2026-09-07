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
  %i.fl = extractelement <2 x i32> %i.fk, i64 1   ; 17 uses
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
  %i.hq = extractelement <2 x i32> %i.fk, i64 0   ; 16 uses
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
  %i.ie = zext nneg i32 %i.fl to i64              ; 10 uses
  %i.if = shl nuw nsw i64 %i.ie, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.id, i8 0, i64 %i.if, i1 false), !tbaa !45
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !136 ; 4 uses
  %i.ii = zext nneg i32 %i.hq to i64              ; 10 uses
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
  %2 = add nsw i64 %i.ie, -1                      ; 2 uses
  %xtraiter = and i64 %i.ie, 1
  %i.lv = icmp eq i64 %2, 0
  br i1 %i.lv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ap
  %unroll_iter = and i64 %i.ie, 30
  br label %bb.aq

.critedge505.preheader.unr-lcssa:                 ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge505.preheader, label %.epil.preheader

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
  %3 = add nsw i64 %i.ii, -1                      ; 2 uses
  %xtraiter1213 = and i64 %i.ii, 1
  %i.mf = icmp eq i64 %3, 0
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
  %lcmp.mod1214.not = icmp eq i64 %xtraiter1213, 0
  br i1 %lcmp.mod1214.not, label %.critedge507, label %.epil.preheader1212

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
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.qj, align 4, !tbaa !45
  %wide.load1174.1 = load <4 x i32>, ptr %i.qk, align 4, !tbaa !45
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qc, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qc, i64 48
  store <4 x i32> %wide.load.1, ptr %i.ql, align 4, !tbaa !45
  store <4 x i32> %wide.load1174.1, ptr %i.qm, align 4, !tbaa !45
  %i.qn = icmp eq i64 %n.vec, 16
  br i1 %i.qn, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qa, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.qo, align 4, !tbaa !45
  %wide.load1174.2 = load <4 x i32>, ptr %i.qp, align 4, !tbaa !45
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qc, i64 64
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qc, i64 80
  store <4 x i32> %wide.load.2, ptr %i.qq, align 4, !tbaa !45
  store <4 x i32> %wide.load1174.2, ptr %i.qr, align 4, !tbaa !45
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.ie
  br i1 %cmp.n, label %.preheader859, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit585, %middle.block
  %indvars.iv997.ph = phi i64 [ 0, %_ZN11hb_vector_tIjLb0EE6resizeEi.exit585 ], [ %n.vec, %middle.block ] ; 3 uses
  %4 = sub nsw i64 %2, %indvars.iv997.ph
  %xtraiter1219 = and i64 %i.ie, 3                ; 2 uses
  %lcmp.mod1220.not = icmp eq i64 %xtraiter1219, 0
  br i1 %lcmp.mod1220.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv997.prol = phi i64 [ %indvars.iv.next998.prol, %scalar.ph.prol ], [ %indvars.iv997.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv997.prol
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !45
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv997.prol
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !45
  %indvars.iv.next998.prol = add nuw nsw i64 %indvars.iv997.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1219
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv997.unr = phi i64 [ %indvars.iv997.ph, %scalar.ph.preheader ], [ %indvars.iv.next998.prol, %scalar.ph.prol ]
  %5 = icmp ult i64 %4, 3
  br i1 %5, label %.preheader859, label %scalar.ph

.preheader859:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.qv = load ptr, ptr %i.mc, align 8, !tbaa !144 ; 12 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !147 ; 13 uses
  %min.iters.check1178 = icmp samesign ult i32 %i.hq, 8
  %i.qy = ptrtoaddr ptr %i.qx to i64
  %i.qz = ptrtoaddr ptr %i.qv to i64
  %i.ra = sub i64 %i.qz, %i.qy
  %diff.check1176 = icmp ugt i64 %i.ra, -32
  %or.cond1195 = select i1 %min.iters.check1178, i1 true, i1 %diff.check1176
  br i1 %or.cond1195, label %scalar.ph1177.preheader, label %vector.ph1179

vector.ph1179:                                    ; preds = %.preheader859
  %n.vec1180 = and i64 %i.ii, 24                  ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %wide.load1183 = load <4 x i32>, ptr %i.qv, align 4, !tbaa !45
  %wide.load1184 = load <4 x i32>, ptr %i.rb, align 4, !tbaa !45
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  store <4 x i32> %wide.load1183, ptr %i.qx, align 4, !tbaa !45
  store <4 x i32> %wide.load1184, ptr %i.rc, align 4, !tbaa !45
  %i.rd = icmp eq i64 %n.vec1180, 8
  br i1 %i.rd, label %middle.block1186, label %vector.body1181.1

vector.body1181.1:                                ; preds = %vector.ph1179
  %i.re = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qv, i64 48
  %wide.load1183.1 = load <4 x i32>, ptr %i.re, align 4, !tbaa !45
  %wide.load1184.1 = load <4 x i32>, ptr %i.rf, align 4, !tbaa !45
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qx, i64 32
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qx, i64 48
  store <4 x i32> %wide.load1183.1, ptr %i.rg, align 4, !tbaa !45
  store <4 x i32> %wide.load1184.1, ptr %i.rh, align 4, !tbaa !45
  %i.ri = icmp eq i64 %n.vec1180, 16
  br i1 %i.ri, label %middle.block1186, label %vector.body1181.2

vector.body1181.2:                                ; preds = %vector.body1181.1
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qv, i64 64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qv, i64 80
  %wide.load1183.2 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !45
  %wide.load1184.2 = load <4 x i32>, ptr %i.rk, align 4, !tbaa !45
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qx, i64 80
  store <4 x i32> %wide.load1183.2, ptr %i.rl, align 4, !tbaa !45
  store <4 x i32> %wide.load1184.2, ptr %i.rm, align 4, !tbaa !45
  br label %middle.block1186

middle.block1186:                                 ; preds = %vector.body1181.2, %vector.body1181.1, %vector.ph1179
  %cmp.n1187 = icmp eq i64 %n.vec1180, %i.ii
  br i1 %cmp.n1187, label %.preheader858, label %scalar.ph1177.preheader

scalar.ph1177.preheader:                          ; preds = %.preheader859, %middle.block1186
  %indvars.iv1002.ph = phi i64 [ 0, %.preheader859 ], [ %n.vec1180, %middle.block1186 ] ; 3 uses
  %6 = sub nsw i64 %3, %indvars.iv1002.ph
  %xtraiter1221 = and i64 %i.ii, 3                ; 2 uses
  %lcmp.mod1222.not = icmp eq i64 %xtraiter1221, 0
  br i1 %lcmp.mod1222.not, label %scalar.ph1177.prol.loopexit, label %scalar.ph1177.prol

scalar.ph1177.prol:                               ; preds = %scalar.ph1177.preheader, %scalar.ph1177.prol
  %indvars.iv1002.prol = phi i64 [ %indvars.iv.next1003.prol, %scalar.ph1177.prol ], [ %indvars.iv1002.ph, %scalar.ph1177.preheader ] ; 3 uses
  %prol.iter1223 = phi i64 [ %prol.iter1223.next, %scalar.ph1177.prol ], [ 0, %scalar.ph1177.preheader ]
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv1002.prol
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !45
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv1002.prol
  store i32 %i.ro, ptr %i.rp, align 4, !tbaa !45
  %indvars.iv.next1003.prol = add nuw nsw i64 %indvars.iv1002.prol, 1 ; 2 uses
  %prol.iter1223.next = add i64 %prol.iter1223, 1 ; 2 uses
  %prol.iter1223.cmp.not = icmp eq i64 %prol.iter1223.next, %xtraiter1221
  br i1 %prol.iter1223.cmp.not, label %scalar.ph1177.prol.loopexit, label %scalar.ph1177.prol, !llvm.loop !94

scalar.ph1177.prol.loopexit:                      ; preds = %scalar.ph1177.prol, %scalar.ph1177.preheader
  %indvars.iv1002.unr = phi i64 [ %indvars.iv1002.ph, %scalar.ph1177.preheader ], [ %indvars.iv.next1003.prol, %scalar.ph1177.prol ]
  %7 = icmp ult i64 %6, 3
  br i1 %7, label %.preheader858, label %scalar.ph1177

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv997 = phi i64 [ %indvars.iv.next998.3, %scalar.ph ], [ %indvars.iv997.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv997
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !45
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv997
  store i32 %i.rr, ptr %i.rs, align 4, !tbaa !45
  %indvars.iv.next998 = add nuw nsw i64 %indvars.iv997, 1 ; 2 uses
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.next998
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !45
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv.next998
  store i32 %i.ru, ptr %i.rv, align 4, !tbaa !45
  %indvars.iv.next998.1 = add nuw nsw i64 %indvars.iv997, 2 ; 2 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.next998.1
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !45
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv.next998.1
  store i32 %i.rx, ptr %i.ry, align 4, !tbaa !45
  %indvars.iv.next998.2 = add nuw nsw i64 %indvars.iv997, 3 ; 2 uses
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qa, i64 %indvars.iv.next998.2
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !45
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %indvars.iv.next998.2
  store i32 %i.sa, ptr %i.sb, align 4, !tbaa !45
  %indvars.iv.next998.3 = add nuw nsw i64 %indvars.iv997, 4 ; 2 uses
  %exitcond1001.not.3 = icmp eq i64 %indvars.iv.next998.3, %i.ie
  br i1 %exitcond1001.not.3, label %.preheader859, label %scalar.ph, !llvm.loop !95

.preheader858:                                    ; preds = %scalar.ph1177.prol.loopexit, %scalar.ph1177, %middle.block1186
  %i.sc = load ptr, ptr %i.et, align 8, !tbaa !133 ; 13 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  br label %bb.br

scalar.ph1177:                                    ; preds = %scalar.ph1177.prol.loopexit, %scalar.ph1177
  %indvars.iv1002 = phi i64 [ %indvars.iv.next1003.3, %scalar.ph1177 ], [ %indvars.iv1002.unr, %scalar.ph1177.prol.loopexit ] ; 6 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv1002
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !45
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv1002
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !45
  %indvars.iv.next1003 = add nuw nsw i64 %indvars.iv1002, 1 ; 2 uses
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv.next1003
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !45
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next1003
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !45
  %indvars.iv.next1003.1 = add nuw nsw i64 %indvars.iv1002, 2 ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv.next1003.1
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !45
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next1003.1
  store i32 %i.so, ptr %i.sp, align 4, !tbaa !45
  %indvars.iv.next1003.2 = add nuw nsw i64 %indvars.iv1002, 3 ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv.next1003.2
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !45
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv.next1003.2
  store i32 %i.sr, ptr %i.ss, align 4, !tbaa !45
  %indvars.iv.next1003.3 = add nuw nsw i64 %indvars.iv1002, 4 ; 2 uses
  %exitcond1007.not.3 = icmp eq i64 %indvars.iv.next1003.3, %i.ii
  br i1 %exitcond1007.not.3, label %.preheader858, label %scalar.ph1177, !llvm.loop !96

bb.br:                                            ; preds = %.preheader858, %._crit_edge888
  %indvars.iv1014 = phi i64 [ 0, %.preheader858 ], [ %indvars.iv.next1015, %._crit_edge888 ] ; 4 uses
  %i.st = getelementptr inbounds nuw [56 x i8], ptr %i.sc, i64 %indvars.iv1014 ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 36
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !139 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 40 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !138
  %.not496881 = icmp sgt i32 %i.sv, %i.sx
  br i1 %.not496881, label %._crit_edge, label %.lr.ph883

.lr.ph883:                                        ; preds = %bb.br
  %i.sy = load ptr, ptr %i.sd, align 8, !tbaa !149
  %i.sz = load ptr, ptr %i.se, align 8, !tbaa !150
  %i.ta = sext i32 %i.sv to i64
  %i.tb = trunc nuw i64 %indvars.iv1014 to i32    ; 2 uses
  br label %bb.bs

._crit_edge:                                      ; preds = %bb.bs, %bb.br
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 44
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !142 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.st, i64 48 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !141
  %.not497884 = icmp sgt i32 %i.td, %i.tf
  br i1 %.not497884, label %._crit_edge888, label %.lr.ph887

.lr.ph887:                                        ; preds = %._crit_edge
  %i.tg = load ptr, ptr %i.sf, align 8, !tbaa !151
  %i.th = load ptr, ptr %i.sg, align 8, !tbaa !152
  %i.ti = sext i32 %i.td to i64
  %i.tj = trunc nuw i64 %indvars.iv1014 to i32    ; 2 uses
  br label %bb.bt

bb.bs:                                            ; preds = %.lr.ph883, %bb.bs
  %indvars.iv1008 = phi i64 [ %i.ta, %.lr.ph883 ], [ %indvars.iv.next1009, %bb.bs ] ; 3 uses
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %indvars.iv1008 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !45 ; 2 uses
  %i.tm = add i32 %i.tl, 1
  store i32 %i.tm, ptr %i.tk, align 4, !tbaa !45
  %i.tn = zext i32 %i.tl to i64                   ; 2 uses
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.tn
  store i32 %i.tb, ptr %i.to, align 4, !tbaa !45
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %i.tn
  store i32 %i.tb, ptr %i.tp, align 4, !tbaa !45
  %indvars.iv.next1009 = add nsw i64 %indvars.iv1008, 1
  %i.tq = load i32, ptr %i.sw, align 8, !tbaa !138
  %i.tr = sext i32 %i.tq to i64
  %.not496.not = icmp slt i64 %indvars.iv1008, %i.tr
  br i1 %.not496.not, label %bb.bs, label %._crit_edge, !llvm.loop !97

._crit_edge888:                                   ; preds = %bb.bt, %._crit_edge
  %indvars.iv.next1015 = add nuw nsw i64 %indvars.iv1014, 1 ; 2 uses
  %exitcond1019.not = icmp eq i64 %indvars.iv.next1015, %wide.trip.count
  br i1 %exitcond1019.not, label %.preheader, label %bb.br, !llvm.loop !98

bb.bt:                                            ; preds = %.lr.ph887, %bb.bt
  %indvars.iv1011 = phi i64 [ %i.ti, %.lr.ph887 ], [ %indvars.iv.next1012, %bb.bt ] ; 3 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.qx, i64 %indvars.iv1011 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !45 ; 2 uses
  %i.tu = add i32 %i.tt, 1
  store i32 %i.tu, ptr %i.ts, align 4, !tbaa !45
  %i.tv = zext i32 %i.tt to i64                   ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.tv
  store i32 %i.tj, ptr %i.tw, align 4, !tbaa !45
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %i.tv
  store i32 %i.tj, ptr %i.tx, align 4, !tbaa !45
  %indvars.iv.next1012 = add nsw i64 %indvars.iv1011, 1
  %i.ty = load i32, ptr %i.te, align 8, !tbaa !141
  %i.tz = sext i32 %i.ty to i64
  %.not497.not = icmp slt i64 %indvars.iv1011, %i.tz
  br i1 %.not497.not, label %bb.bt, label %._crit_edge888, !llvm.loop !99

.preheader:                                       ; preds = %._crit_edge888, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit"
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit" ], [ 0, %._crit_edge888 ] ; 3 uses
  %i.ua = load ptr, ptr %i.ls, align 8, !tbaa !143
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %indvars.iv1020
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !45 ; 3 uses
  %i.ud = load ptr, ptr %i.ic, align 8, !tbaa !135
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv1020
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !45 ; 2 uses
  %i.ug = load ptr, ptr %i.sd, align 8, !tbaa !52
  %i.uh = load i32, ptr %i.nm, align 4, !tbaa !49
  %storemerge.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.uh, i32 %i.uc)
  %.sroa.speculated.i.i586 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i, i32 %i.uf) ; 3 uses
  %i.ui = zext i32 %i.uc to i64                   ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %i.ui ; 4 uses
  %.not.i589 = icmp eq i32 %.sroa.speculated.i.i586, 0
  br i1 %.not.i589, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", label %bb.bu, !prof !38

bb.bu:                                            ; preds = %.preheader
  %.sroa.3.8.insert.ext.i.i = zext i32 %.sroa.speculated.i.i586 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_1EvPT_mT0_"(ptr noundef %i.uj, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i, ptr %i.sc)
  %.idx.i.i = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 2
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 %.idx.i.i
  %.not2.i = icmp eq i32 %.sroa.speculated.i.i586, 1
  br i1 %.not2.i, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.bu
  %.01519.i.i = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.loopexit.i, %.preheader.preheader.i.i
  %.01520.i.i = phi ptr [ %.015.i.i, %.critedge.i.loopexit.i ], [ %.01519.i.i, %.preheader.preheader.i.i ] ; 3 uses
  %.0.val.pre.i.i = load i32, ptr %.01520.i.i, align 4, !tbaa !45 ; 2 uses
  %.phi.trans.insert.i.i = zext i32 %.0.val.pre.i.i to i64
  %.phi.trans.insert22.i.i = getelementptr inbounds nuw [56 x i8], ptr %i.sc, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert23.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.i.i, i64 8
  %.pre.i.i = load double, ptr %.phi.trans.insert23.i.i, align 8, !tbaa !54
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bv, %.preheader.i.i
  %.017.i.i = phi ptr [ %i.ul, %bb.bv ], [ %.01520.i.i, %.preheader.i.i ] ; 2 uses
  %i.ul = getelementptr inbounds i8, ptr %.017.i.i, i64 -4 ; 4 uses
  %.val16.i.i = load i32, ptr %i.ul, align 4, !tbaa !45 ; 2 uses
  %i.um = zext i32 %.val16.i.i to i64
  %i.un = getelementptr inbounds nuw [56 x i8], ptr %i.sc, i64 %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load double, ptr %i.uo, align 8, !tbaa !54
  %i.uq = fcmp olt double %i.up, %.pre.i.i
  br i1 %i.uq, label %bb.bv, label %.critedge.i.loopexit.i

.critedge.i.loopexit.i:                           ; preds = %bb.bv, %.lr.ph.i.i
  %.015.i.i = getelementptr inbounds nuw i8, ptr %.01520.i.i, i64 4 ; 2 uses
  %i.ur = icmp ult ptr %.015.i.i, %i.uk
  br i1 %i.ur, label %.preheader.i.i, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", !llvm.loop !100

bb.bv:                                            ; preds = %.lr.ph.i.i
  store i32 %.0.val.pre.i.i, ptr %i.ul, align 4, !tbaa !45
  store i32 %.val16.i.i, ptr %.017.i.i, align 4, !tbaa !45
  %i.us = icmp ugt ptr %i.ul, %i.uj
  br i1 %i.us, label %.lr.ph.i.i, label %.critedge.i.loopexit.i, !llvm.loop !101

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.loopexit.i, %.preheader, %bb.bu
  %i.ut = load ptr, ptr %i.se, align 8, !tbaa !52
  %i.uu = load i32, ptr %i.nx, align 4, !tbaa !49
  %storemerge.i.i593 = tail call i32 @llvm.usub.sat.i32(i32 %i.uu, i32 %i.uc)
  %.sroa.speculated.i.i594 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i593, i32 %i.uf) ; 3 uses
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.ut, i64 %i.ui ; 4 uses
  %.not.i598 = icmp eq i32 %.sroa.speculated.i.i594, 0
  br i1 %.not.i598, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", label %bb.bw, !prof !38

bb.bw:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit"
end_hunk_0
