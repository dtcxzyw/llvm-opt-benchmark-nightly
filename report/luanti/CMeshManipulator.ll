Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CMeshManipulator?download=true
inline.NumInlined: 1427
inline.NumDeleted: 509
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK5scene16CMeshManipulator18recalculateNormalsEPNS_11IMeshBufferEbb:bb.a
  %i.aq = zext i32 %.0135.i to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.at = zext i16 %i.as to i32
  %i.au = load ptr, ptr %1, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i32 noundef %i.at), !inline_history !151 ; 2 uses
  %i.bc = add nuw i32 %.0135.i, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !22
  %i.bg = zext i16 %i.bf to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i32 noundef %i.bg), !inline_history !151 ; 2 uses
  %i.bp = add i32 %.0135.i, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !22
  %i.bt = zext i16 %i.bs to i32
  %i.bu = load ptr, ptr %1, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, i32 noundef %i.bt), !inline_history !151 ; 2 uses
  %i.cc = load float, ptr %i.bo, align 4, !tbaa !25
  %i.cd = load float, ptr %i.bb, align 4, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.cg = load float, ptr %i.cb, align 4, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ci = load <2 x float>, ptr %i.ce, align 4, !tbaa !26 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.cf, align 4, !tbaa !26 ; 3 uses
  %i.ck = fsub <2 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cm = insertelement <2 x float> %i.cl, float %i.cc, i64 1
  %i.cn = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %i.cd, i64 1 ; 2 uses
  %i.cp = fsub <2 x float> %i.cm, %i.co           ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ch, align 4, !tbaa !26 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.cg, i64 1
  %i.ct = fsub <2 x float> %i.cs, %i.co           ; 2 uses
  %i.cu = fsub <2 x float> %i.cq, %i.cj           ; 2 uses
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = fmul <2 x float> %i.cp, %i.cv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ct, <2 x float> %i.cw) ; 5 uses
  %i.cy = extractelement <2 x float> %i.ct, i64 1
  %i.cz = fneg float %i.cy
  %i.da = extractelement <2 x float> %i.ck, i64 0
  %i.db = fmul float %i.da, %i.cz
  %i.dc = extractelement <2 x float> %i.cp, i64 1
  %i.dd = extractelement <2 x float> %i.cu, i64 0
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dd, float %i.db) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cx, %i.cx
  %i.df = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dg = extractelement <2 x float> %i.cx, i64 0 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df)
  %i.di = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dh) ; 2 uses
  %i.dj = fcmp oeq float %i.di, 0.000000e+00
  br i1 %i.dj, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.dk = fpext float %i.di to double
  %sqrt.i.i.i.i = tail call double @llvm.sqrt.f64(double %i.dk)
  %i.dl = fdiv double 1.000000e+00, %sqrt.i.i.i.i ; 2 uses
  %i.dm = fpext <2 x float> %i.cx to <2 x double>
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.do, %i.dm
  %i.dq = fptrunc <2 x double> %i.dp to <2 x float>
  %i.dr = fpext float %i.de to double
  %i.ds = fmul double %i.dl, %i.dr
  %i.dt = fptrunc double %i.ds to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %.sroa.0117.0.i = phi <2 x float> [ %i.cx, %.lr.ph.i ], [ %i.dq, %bb.e ] ; 3 uses
  %.sroa.8122.0.i = phi float [ %i.de, %.lr.ph.i ], [ %i.dt, %bb.e ] ; 3 uses
  %i.du = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.dv = zext i16 %i.du to i32
  %i.dw = load ptr, ptr %1, align 8, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(28) %i.dz, i32 noundef %i.dv), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0117.0.i, ptr %i.ed, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %.sroa.8122.0.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !26
  %i.ee = load i16, ptr %i.be, align 2, !tbaa !22
  %i.ef = zext i16 %i.ee to i32
  %i.eg = load ptr, ptr %1, align 8, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef ptr %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.em(ptr noundef nonnull align 8 dereferenceable(28) %i.ej, i32 noundef %i.ef), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0117.0.i, ptr %i.en, align 4
  %.sroa.6.0..sroa_idx127.i = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %.sroa.8122.0.i, ptr %.sroa.6.0..sroa_idx127.i, align 4, !tbaa !26
  %i.eo = load i16, ptr %i.br, align 2, !tbaa !22
  %i.ep = zext i16 %i.eo to i32
  %i.eq = load ptr, ptr %1, align 8, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef ptr %i.es(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ew(ptr noundef nonnull align 8 dereferenceable(28) %i.et, i32 noundef %i.ep), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0117.0.i, ptr %i.ex, align 4
  %.sroa.6.0..sroa_idx129.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store float %.sroa.8122.0.i, ptr %.sroa.6.0..sroa_idx129.i, align 4, !tbaa !26
  %i.ey = add i32 %.0135.i, 3                     ; 2 uses
  %i.ez = icmp ult i32 %i.ey, %i.y
  br i1 %i.ez, label %.lr.ph.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, !llvm.loop !153

.preheader131.i:                                  ; preds = %.lr.ph138.i, %.preheader132.i
  %.not145.i = icmp eq i32 %i.y, 0
  br i1 %.not145.i, label %.preheader.i, label %.lr.ph140.i

.lr.ph138.i:                                      ; preds = %.preheader132.i, %.lr.ph138.i
  %.078137.i = phi i32 [ %i.fj, %.lr.ph138.i ], [ 0, %.preheader132.i ] ; 2 uses
  %i.fa = load ptr, ptr %1, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef ptr %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 88
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(28) %i.fd, i32 noundef %.078137.i), !inline_history !152 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.fh, align 4, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store float 0.000000e+00, ptr %i.fi, align 4, !tbaa !28
  %i.fj = add nuw i32 %.078137.i, 1               ; 2 uses
  %.not.i = icmp eq i32 %i.fj, %i.q
  br i1 %.not.i, label %.preheader131.i, label %.lr.ph138.i, !llvm.loop !154

.preheader.i:                                     ; preds = %bb.h, %.preheader131.i
  br i1 %.not136.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i

.lr.ph140.i:                                      ; preds = %.preheader131.i, %bb.h
  %.1139.i = phi i32 [ %i.lt, %bb.h ], [ 0, %.preheader131.i ] ; 4 uses
  %i.fk = zext i32 %.1139.i to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.fk ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !22
  %i.fn = zext i16 %i.fm to i32
  %i.fo = load ptr, ptr %1, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = tail call noundef ptr %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.fu(ptr noundef nonnull align 8 dereferenceable(28) %i.fr, i32 noundef %i.fn), !inline_history !151 ; 2 uses
  %i.fw = add nuw i32 %.1139.i, 1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.fx ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !22
  %i.ga = zext i16 %i.fz to i32
  %i.gb = load ptr, ptr %1, align 8, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = tail call noundef ptr %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.gh(ptr noundef nonnull align 8 dereferenceable(28) %i.ge, i32 noundef %i.ga), !inline_history !151 ; 2 uses
  %i.gj = add i32 %.1139.i, 2
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.gk ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !22
  %i.gn = zext i16 %i.gm to i32
  %i.go = load ptr, ptr %1, align 8, !tbaa !20
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = tail call noundef ptr %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !20
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(28) %i.gr, i32 noundef %i.gn), !inline_history !151 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %4 = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %5 = load <2 x float>, ptr %i.gi, align 4, !tbaa !26 ; 4 uses
  %i.gy = load float, ptr %i.fv, align 4, !tbaa !25 ; 2 uses
  %i.gz = load <2 x float>, ptr %i.gv, align 4, !tbaa !26 ; 4 uses
  %i.ha = load <2 x float>, ptr %i.gw, align 4, !tbaa !26 ; 5 uses
  %6 = load <2 x float>, ptr %i.gx, align 4, !tbaa !26 ; 5 uses
  %i.hb = fsub <2 x float> %i.ha, %6              ; 2 uses
  %i.hc = shufflevector <2 x float> %i.ha, <2 x float> %5, <2 x i32> <i32 1, i32 2>
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hd = insertelement <2 x float> %7, float %i.gy, i64 1 ; 2 uses
  %i.he = fsub <2 x float> %i.hc, %i.hd           ; 2 uses
  %i.hf = load <2 x float>, ptr %4, align 4, !tbaa !26 ; 5 uses
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> %i.gz, <2 x i32> <i32 1, i32 2>
  %i.hh = fsub <2 x float> %i.hg, %i.hd           ; 2 uses
  %i.hi = fsub <2 x float> %i.hf, %6              ; 2 uses
  %i.hj = fneg <2 x float> %i.hi
  %i.hk = fmul <2 x float> %i.he, %i.hj
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hh, <2 x float> %i.hk) ; 5 uses
  %i.hm = extractelement <2 x float> %i.hh, i64 1
  %i.hn = fneg float %i.hm
  %i.ho = extractelement <2 x float> %i.hb, i64 0
  %i.hp = fmul float %i.ho, %i.hn
  %i.hq = extractelement <2 x float> %i.he, i64 1
  %i.hr = extractelement <2 x float> %i.hi, i64 0
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hr, float %i.hp) ; 4 uses
  %foldExtExtBinop89 = fmul <2 x float> %i.hl, %i.hl
  %i.ht = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %i.hu = extractelement <2 x float> %i.hl, i64 0 ; 2 uses
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hu, float %i.ht)
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hs, float %i.hs, float %i.hv) ; 2 uses
  %i.hx = fcmp oeq float %i.hw, 0.000000e+00
  br i1 %i.hx, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph140.i
  %i.hy = fpext float %i.hw to double
  %sqrt.i.i.i83.i = tail call double @llvm.sqrt.f64(double %i.hy)
  %i.hz = fdiv double 1.000000e+00, %sqrt.i.i.i83.i ; 2 uses
  %i.ia = fpext <2 x float> %i.hl to <2 x double>
  %i.ib = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x double> %i.ic, %i.ia
  %i.ie = fptrunc <2 x double> %i.id to <2 x float>
  %i.if = fpext float %i.hs to double
  %i.ig = fmul double %i.hz, %i.if
  %i.ih = fptrunc double %i.ig to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i: ; preds = %bb.f, %.lr.ph140.i
  %.sroa.8.0.i = phi float [ %i.hs, %.lr.ph140.i ], [ %i.ih, %bb.f ] ; 3 uses
  %.sroa.0101.0.i = phi <2 x float> [ %i.hl, %.lr.ph140.i ], [ %i.ie, %bb.f ] ; 3 uses
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i
  %foldExtExtBinop91 = fsub <2 x float> %5, %i.gz
  %i.ii = extractelement <2 x float> %foldExtExtBinop91, i64 0 ; 2 uses
  %foldExtExtBinop93 = fsub <2 x float> %i.ha, %i.hf ; 2 uses
  %foldExtExtBinop95 = fsub <2 x float> %i.ha, %i.hf
  %i.ij = extractelement <2 x float> %foldExtExtBinop95, i64 1 ; 2 uses
  %foldExtExtBinop97 = fmul <2 x float> %foldExtExtBinop93, %foldExtExtBinop93
  %i.ik = extractelement <2 x float> %foldExtExtBinop97, i64 0
  %i.il = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.ii, float %i.ik)
  %i.im = tail call noundef float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.il) ; 4 uses
  %sqrt26.i.i = tail call float @llvm.sqrt.f32(float %i.im) ; 2 uses
  %8 = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.in = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = shufflevector <2 x float> %i.gz, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %i.ip = fsub <2 x float> %i.in, %i.io           ; 2 uses
  %9 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = shufflevector <2 x float> %i.gz, <2 x float> %5, <2 x i32> <i32 1, i32 3>
  %i.ir = fsub <2 x float> %9, %i.iq              ; 2 uses
  %10 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.is = shufflevector <2 x float> %i.ha, <2 x float> %i.hf, <2 x i32> <i32 3, i32 1>
  %i.it = fsub <2 x float> %10, %i.is             ; 2 uses
  %i.iu = fmul <2 x float> %i.ir, %i.ir
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.ip, <2 x float> %i.iu)
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.it, <2 x float> %i.iv) ; 2 uses
  %i.ix = extractelement <2 x float> %i.iw, i64 0 ; 4 uses
  %sqrt25.i.i = tail call float @llvm.sqrt.f32(float %i.ix)
  %i.iy = extractelement <2 x float> %i.iw, i64 1 ; 4 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.iy) ; 2 uses
  %i.iz = fadd float %i.iy, %i.ix
  %i.ja = fsub float %i.iz, %i.im
  %i.jb = fmul float %sqrt25.i.i, 2.000000e+00    ; 2 uses
  %i.jc = fmul float %sqrt.i.i, %i.jb
  %i.jd = fdiv float %i.ja, %i.jc
  %i.je = tail call float @acosf(float noundef %i.jd) #19
  %i.jf = fsub float %i.iy, %i.ix
  %i.jg = fadd float %i.im, %i.jf
  %i.jh = fmul float %sqrt26.i.i, 2.000000e+00
  %i.ji = fmul float %sqrt.i.i, %i.jh
  %i.jj = fdiv float %i.jg, %i.ji
  %i.jk = tail call float @acosf(float noundef %i.jj) #19
  %i.jl = fsub float %i.ix, %i.iy
  %i.jm = fadd float %i.im, %i.jl
  %i.jn = fmul float %sqrt26.i.i, %i.jb
  %i.jo = fdiv float %i.jm, %i.jn
  %i.jp = tail call float @acosf(float noundef %i.jo) #19
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.je, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.jk, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i
  %.sroa.7.0.i = phi float [ %i.jp, %bb.g ], [ 1.000000e+00, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i ] ; 2 uses
  %.sroa.098.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i, %bb.g ], [ splat (float 1.000000e+00), %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i ] ; 4 uses
  %.sroa.098.0.vec.extract.i = extractelement <2 x float> %.sroa.098.0.i, i64 0
  %i.jq = fmul float %.sroa.8.0.i, %.sroa.098.0.vec.extract.i
  %i.jr = load i16, ptr %i.fl, align 2, !tbaa !22
  %i.js = zext i16 %i.jr to i32
  %i.jt = load ptr, ptr %1, align 8, !tbaa !20
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = tail call noundef ptr %i.jv(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !20
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 88
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.jz(ptr noundef nonnull align 8 dereferenceable(28) %i.jw, i32 noundef %i.js), !inline_history !152 ; 3 uses
  %i.kb = shufflevector <2 x float> %.sroa.098.0.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x float> %.sroa.0101.0.i, %i.kb
  %i.kd = load <2 x float>, ptr %i.ka, align 4, !tbaa !26
  %i.ke = fadd <2 x float> %i.kc, %i.kd
  store <2 x float> %i.ke, ptr %i.ka, align 4, !tbaa !26
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !28
  %i.kh = fadd float %i.jq, %i.kg
  store float %i.kh, ptr %i.kf, align 4, !tbaa !28
  %.sroa.098.4.vec.extract.i = extractelement <2 x float> %.sroa.098.0.i, i64 1
  %i.ki = fmul float %.sroa.8.0.i, %.sroa.098.4.vec.extract.i
  %i.kj = load i16, ptr %i.fy, align 2, !tbaa !22
  %i.kk = zext i16 %i.kj to i32
  %i.kl = load ptr, ptr %1, align 8, !tbaa !20
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = tail call noundef ptr %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !20
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 88
  %i.kr = load ptr, ptr %i.kq, align 8
  %i.ks = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.kr(ptr noundef nonnull align 8 dereferenceable(28) %i.ko, i32 noundef %i.kk), !inline_history !152 ; 3 uses
  %i.kt = shufflevector <2 x float> %.sroa.098.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ku = fmul <2 x float> %.sroa.0101.0.i, %i.kt
  %i.kv = load <2 x float>, ptr %i.ks, align 4, !tbaa !26
  %i.kw = fadd <2 x float> %i.ku, %i.kv
  store <2 x float> %i.kw, ptr %i.ks, align 4, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !28
  %i.kz = fadd float %i.ki, %i.ky
  store float %i.kz, ptr %i.kx, align 4, !tbaa !28
  %i.la = fmul float %.sroa.8.0.i, %.sroa.7.0.i
  %i.lb = load i16, ptr %i.gl, align 2, !tbaa !22
  %i.lc = zext i16 %i.lb to i32
  %i.ld = load ptr, ptr %1, align 8, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = tail call noundef ptr %i.lf(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !20
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 88
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.lj(ptr noundef nonnull align 8 dereferenceable(28) %i.lg, i32 noundef %i.lc), !inline_history !152 ; 3 uses
  %i.ll = insertelement <2 x float> poison, float %.sroa.7.0.i, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = fmul <2 x float> %.sroa.0101.0.i, %i.lm
  %i.lo = load <2 x float>, ptr %i.lk, align 4, !tbaa !26
  %i.lp = fadd <2 x float> %i.ln, %i.lo
  store <2 x float> %i.lp, ptr %i.lk, align 4, !tbaa !26
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !28
  %i.ls = fadd float %i.la, %i.lr
  store float %i.ls, ptr %i.lq, align 4, !tbaa !28
  %i.lt = add i32 %.1139.i, 3                     ; 2 uses
  %i.lu = icmp ult i32 %i.lt, %i.y
  br i1 %i.lu, label %.lr.ph140.i, label %.preheader.i, !llvm.loop !155

.lr.ph143.i:                                      ; preds = %.preheader.i, %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %.2142.i = phi i32 [ %i.mv, %_ZN4core8vector3dIfE9normalizeEv.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.lv = load ptr, ptr %1, align 8, !tbaa !20
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = tail call noundef ptr %i.lx(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !20
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 88
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.mb(ptr noundef nonnull align 8 dereferenceable(28) %i.ly, i32 noundef %.2142.i), !inline_history !152 ; 3 uses
  %i.md = load <2 x float>, ptr %i.mc, align 4, !tbaa !26 ; 4 uses
  %foldExtExtBinop99 = fmul <2 x float> %i.md, %i.md
  %i.me = extractelement <2 x float> %foldExtExtBinop99, i64 1
  %i.mf = extractelement <2 x float> %i.md, i64 0 ; 2 uses
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mf, float %i.mf, float %i.me)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 2 uses
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !28 ; 3 uses
  %i.mj = tail call float @llvm.fmuladd.f32(float %i.mi, float %i.mi, float %i.mg) ; 2 uses
  %i.mk = fcmp oeq float %i.mj, 0.000000e+00
  br i1 %i.mk, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph143.i
  %i.ml = fpext float %i.mj to double
  %sqrt.i93.i = tail call double @llvm.sqrt.f64(double %i.ml)
  %i.mm = fdiv double 1.000000e+00, %sqrt.i93.i   ; 2 uses
  %i.mn = fpext <2 x float> %i.md to <2 x double>
  %i.mo = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mq = fmul <2 x double> %i.mp, %i.mn
  %i.mr = fptrunc <2 x double> %i.mq to <2 x float>
  store <2 x float> %i.mr, ptr %i.mc, align 4, !tbaa !26
  %i.ms = fpext float %i.mi to double
  %i.mt = fmul double %i.mm, %i.ms
  %i.mu = fptrunc double %i.mt to float
  store float %i.mu, ptr %i.mh, align 4, !tbaa !28
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.i, %.lr.ph143.i
  %i.mv = add nuw i32 %.2142.i, 1                 ; 2 uses
  %.not80.i = icmp eq i32 %i.mv, %i.q
  br i1 %.not80.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i, !llvm.loop !156

bb.j:                                             ; preds = %bb.b
  br i1 %i.ah, label %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv) #18
  unreachable

_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7:     ; preds = %bb.j
  %i.mw = load ptr, ptr %1, align 8, !tbaa !20
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 40
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = tail call noundef ptr %i.my(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !157 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !20
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 56
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = tail call noundef ptr %i.nc(ptr noundef nonnull align 8 dereferenceable(28) %i.mz), !inline_history !157 ; 6 uses
  br i1 %2, label %.preheader132.i23, label %.preheader133.i8

.preheader133.i8:                                 ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7
  %.not144.i9 = icmp eq i32 %i.y, 0
  br i1 %.not144.i9, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph.i10

.preheader132.i23:                                ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7
  %.not136.i24 = icmp eq i32 %i.q, 0              ; 2 uses
  br i1 %.not136.i24, label %.preheader131.i28, label %.lr.ph138.i25

.lr.ph.i10:                                       ; preds = %.preheader133.i8, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17
  %.0135.i11 = phi i32 [ %i.rg, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17 ], [ 0, %.preheader133.i8 ] ; 4 uses
  %i.ne = zext i32 %.0135.i11 to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.ne ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !29
  %i.nh = load ptr, ptr %1, align 8, !tbaa !20
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = tail call noundef ptr %i.nj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !20
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 72
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.nn(ptr noundef nonnull align 8 dereferenceable(28) %i.nk, i32 noundef %i.ng), !inline_history !158 ; 2 uses
  %i.np = add nuw i32 %.0135.i11, 1
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.nq ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !29
  %i.nt = load ptr, ptr %1, align 8, !tbaa !20
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = tail call noundef ptr %i.nv(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !20
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 72
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.nz(ptr noundef nonnull align 8 dereferenceable(28) %i.nw, i32 noundef %i.ns), !inline_history !158 ; 2 uses
  %i.ob = add i32 %.0135.i11, 2
  %i.oc = zext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.oc ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !29
  %i.of = load ptr, ptr %1, align 8, !tbaa !20
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = tail call noundef ptr %i.oh(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !20
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 72
  %i.ol = load ptr, ptr %i.ok, align 8
  %i.om = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ol(ptr noundef nonnull align 8 dereferenceable(28) %i.oi, i32 noundef %i.oe), !inline_history !158 ; 2 uses
  %i.on = load float, ptr %i.oa, align 4, !tbaa !25
  %i.oo = load float, ptr %i.no, align 4, !tbaa !25
  %i.op = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  %i.or = load float, ptr %i.om, align 4, !tbaa !25
  %i.os = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.ot = load <2 x float>, ptr %i.op, align 4, !tbaa !26 ; 2 uses
  %i.ou = load <2 x float>, ptr %i.oq, align 4, !tbaa !26 ; 3 uses
  %i.ov = fsub <2 x float> %i.ot, %i.ou           ; 2 uses
  %i.ow = shufflevector <2 x float> %i.ot, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ox = insertelement <2 x float> %i.ow, float %i.on, i64 1
  %i.oy = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oz = insertelement <2 x float> %i.oy, float %i.oo, i64 1 ; 2 uses
  %i.pa = fsub <2 x float> %i.ox, %i.oz           ; 2 uses
  %i.pb = load <2 x float>, ptr %i.os, align 4, !tbaa !26 ; 2 uses
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.pd = insertelement <2 x float> %i.pc, float %i.or, i64 1
  %i.pe = fsub <2 x float> %i.pd, %i.oz           ; 2 uses
  %i.pf = fsub <2 x float> %i.pb, %i.ou           ; 2 uses
  %i.pg = fneg <2 x float> %i.pf
  %i.ph = fmul <2 x float> %i.pa, %i.pg
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> %i.pe, <2 x float> %i.ph) ; 5 uses
  %i.pj = extractelement <2 x float> %i.pe, i64 1
  %i.pk = fneg float %i.pj
  %i.pl = extractelement <2 x float> %i.ov, i64 0
  %i.pm = fmul float %i.pl, %i.pk
  %i.pn = extractelement <2 x float> %i.pa, i64 1
  %i.po = extractelement <2 x float> %i.pf, i64 0
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.po, float %i.pm) ; 4 uses
  %foldExtExtBinop101 = fmul <2 x float> %i.pi, %i.pi
  %i.pq = extractelement <2 x float> %foldExtExtBinop101, i64 1
  %i.pr = extractelement <2 x float> %i.pi, i64 0 ; 2 uses
  %i.ps = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.pr, float %i.pq)
  %i.pt = tail call float @llvm.fmuladd.f32(float %i.pp, float %i.pp, float %i.ps) ; 2 uses
  %i.pu = fcmp oeq float %i.pt, 0.000000e+00
  br i1 %i.pu, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i10
  %i.pv = fpext float %i.pt to double
  %sqrt.i.i.i.i14 = tail call double @llvm.sqrt.f64(double %i.pv)
  %i.pw = fdiv double 1.000000e+00, %sqrt.i.i.i.i14 ; 2 uses
  %i.px = fpext <2 x float> %i.pi to <2 x double>
  %i.py = insertelement <2 x double> poison, double %i.pw, i64 0
  %i.pz = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qa = fmul <2 x double> %i.pz, %i.px
  %i.qb = fptrunc <2 x double> %i.qa to <2 x float>
  %i.qc = fpext float %i.pp to double
  %i.qd = fmul double %i.pw, %i.qc
  %i.qe = fptrunc double %i.qd to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17: ; preds = %bb.l, %.lr.ph.i10
  %.sroa.0117.0.i18 = phi <2 x float> [ %i.pi, %.lr.ph.i10 ], [ %i.qb, %bb.l ] ; 3 uses
  %.sroa.8122.0.i19 = phi float [ %i.pp, %.lr.ph.i10 ], [ %i.qe, %bb.l ] ; 3 uses
  %i.qf = load i32, ptr %i.nf, align 4, !tbaa !29
  %i.qg = load ptr, ptr %1, align 8, !tbaa !20
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = tail call noundef ptr %i.qi(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !20
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 88
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.qm(ptr noundef nonnull align 8 dereferenceable(28) %i.qj, i32 noundef %i.qf), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0117.0.i18, ptr %i.qn, align 4
  %.sroa.6.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  store float %.sroa.8122.0.i19, ptr %.sroa.6.0..sroa_idx.i20, align 4, !tbaa !26
  %i.qo = load i32, ptr %i.nr, align 4, !tbaa !29
  %i.qp = load ptr, ptr %1, align 8, !tbaa !20
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = tail call noundef ptr %i.qr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !20
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 88
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.qv(ptr noundef nonnull align 8 dereferenceable(28) %i.qs, i32 noundef %i.qo), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0117.0.i18, ptr %i.qw, align 4
  %.sroa.6.0..sroa_idx127.i21 = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  store float %.sroa.8122.0.i19, ptr %.sroa.6.0..sroa_idx127.i21, align 4, !tbaa !26
  %i.qx = load i32, ptr %i.od, align 4, !tbaa !29
  %i.qy = load ptr, ptr %1, align 8, !tbaa !20
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = tail call noundef ptr %i.ra(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !20
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 88
  %i.re = load ptr, ptr %i.rd, align 8
  %i.rf = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.re(ptr noundef nonnull align 8 dereferenceable(28) %i.rb, i32 noundef %i.qx), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0117.0.i18, ptr %i.rf, align 4
  %.sroa.6.0..sroa_idx129.i22 = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store float %.sroa.8122.0.i19, ptr %.sroa.6.0..sroa_idx129.i22, align 4, !tbaa !26
  %i.rg = add i32 %.0135.i11, 3                   ; 2 uses
  %i.rh = icmp ult i32 %i.rg, %i.y
  br i1 %i.rh, label %.lr.ph.i10, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, !llvm.loop !160

.preheader131.i28:                                ; preds = %.lr.ph138.i25, %.preheader132.i23
  %.not145.i29 = icmp eq i32 %i.y, 0
  br i1 %.not145.i29, label %.preheader.i46, label %.lr.ph140.i30

.lr.ph138.i25:                                    ; preds = %.preheader132.i23, %.lr.ph138.i25
  %.078137.i26 = phi i32 [ %i.rr, %.lr.ph138.i25 ], [ 0, %.preheader132.i23 ] ; 2 uses
  %i.ri = load ptr, ptr %1, align 8, !tbaa !20
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = tail call noundef ptr %i.rk(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !20
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 88
  %i.ro = load ptr, ptr %i.rn, align 8
  %i.rp = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ro(ptr noundef nonnull align 8 dereferenceable(28) %i.rl, i32 noundef %.078137.i26), !inline_history !159 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.rp, align 4, !tbaa !26
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  store float 0.000000e+00, ptr %i.rq, align 4, !tbaa !28
  %i.rr = add nuw i32 %.078137.i26, 1             ; 2 uses
  %.not.i27 = icmp eq i32 %i.rr, %i.q
  br i1 %.not.i27, label %.preheader131.i28, label %.lr.ph138.i25, !llvm.loop !161

.preheader.i46:                                   ; preds = %bb.o, %.preheader131.i28
  br i1 %.not136.i24, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i47

.lr.ph140.i30:                                    ; preds = %.preheader131.i28, %bb.o
  %.1139.i31 = phi i32 [ %i.xv, %bb.o ], [ 0, %.preheader131.i28 ] ; 4 uses
  %i.rs = zext i32 %.1139.i31 to i64
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.rs ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !29
  %i.rv = load ptr, ptr %1, align 8, !tbaa !20
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = tail call noundef ptr %i.rx(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !20
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 72
  %i.sb = load ptr, ptr %i.sa, align 8
  %i.sc = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.sb(ptr noundef nonnull align 8 dereferenceable(28) %i.ry, i32 noundef %i.ru), !inline_history !158 ; 2 uses
  %i.sd = add nuw i32 %.1139.i31, 1
  %i.se = zext i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.se ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !29
  %i.sh = load ptr, ptr %1, align 8, !tbaa !20
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 24
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = tail call noundef ptr %i.sj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !20
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 72
  %i.sn = load ptr, ptr %i.sm, align 8
  %i.so = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.sn(ptr noundef nonnull align 8 dereferenceable(28) %i.sk, i32 noundef %i.sg), !inline_history !158 ; 2 uses
  %i.sp = add i32 %.1139.i31, 2
  %i.sq = zext i32 %i.sp to i64
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %i.sq ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !29
  %i.st = load ptr, ptr %1, align 8, !tbaa !20
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = tail call noundef ptr %i.sv(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !20
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 72
  %i.sz = load ptr, ptr %i.sy, align 8
  %i.ta = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.sz(ptr noundef nonnull align 8 dereferenceable(28) %i.sw, i32 noundef %i.ss), !inline_history !158 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %12 = load <2 x float>, ptr %i.so, align 4, !tbaa !26 ; 4 uses
  %i.td = load float, ptr %i.sc, align 4, !tbaa !25 ; 2 uses
  %i.te = load <2 x float>, ptr %i.ta, align 4, !tbaa !26 ; 4 uses
  %i.tf = load <2 x float>, ptr %i.tb, align 4, !tbaa !26 ; 5 uses
  %13 = load <2 x float>, ptr %i.tc, align 4, !tbaa !26 ; 5 uses
  %i.tg = fsub <2 x float> %i.tf, %13             ; 2 uses
  %i.th = shufflevector <2 x float> %i.tf, <2 x float> %12, <2 x i32> <i32 1, i32 2>
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ti = insertelement <2 x float> %14, float %i.td, i64 1 ; 2 uses
  %i.tj = fsub <2 x float> %i.th, %i.ti           ; 2 uses
  %i.tk = load <2 x float>, ptr %11, align 4, !tbaa !26 ; 5 uses
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> %i.te, <2 x i32> <i32 1, i32 2>
  %i.tm = fsub <2 x float> %i.tl, %i.ti           ; 2 uses
  %i.tn = fsub <2 x float> %i.tk, %13             ; 2 uses
  %i.to = fneg <2 x float> %i.tn
  %i.tp = fmul <2 x float> %i.tj, %i.to
  %i.tq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tg, <2 x float> %i.tm, <2 x float> %i.tp) ; 5 uses
  %i.tr = extractelement <2 x float> %i.tm, i64 1
  %i.ts = fneg float %i.tr
  %i.tt = extractelement <2 x float> %i.tg, i64 0
  %i.tu = fmul float %i.tt, %i.ts
  %i.tv = extractelement <2 x float> %i.tj, i64 1
  %i.tw = extractelement <2 x float> %i.tn, i64 0
  %i.tx = tail call float @llvm.fmuladd.f32(float %i.tv, float %i.tw, float %i.tu) ; 4 uses
  %foldExtExtBinop103 = fmul <2 x float> %i.tq, %i.tq
  %i.ty = extractelement <2 x float> %foldExtExtBinop103, i64 1
  %i.tz = extractelement <2 x float> %i.tq, i64 0 ; 2 uses
  %i.ua = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.tz, float %i.ty)
  %i.ub = tail call float @llvm.fmuladd.f32(float %i.tx, float %i.tx, float %i.ua) ; 2 uses
  %i.uc = fcmp oeq float %i.ub, 0.000000e+00
  br i1 %i.uc, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37, label %bb.m

bb.m:                                             ; preds = %.lr.ph140.i30
  %i.ud = fpext float %i.ub to double
  %sqrt.i.i.i83.i34 = tail call double @llvm.sqrt.f64(double %i.ud)
  %i.ue = fdiv double 1.000000e+00, %sqrt.i.i.i83.i34 ; 2 uses
  %i.uf = fpext <2 x float> %i.tq to <2 x double>
  %i.ug = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.uh = shufflevector <2 x double> %i.ug, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = fmul <2 x double> %i.uh, %i.uf
  %i.uj = fptrunc <2 x double> %i.ui to <2 x float>
  %i.uk = fpext float %i.tx to double
  %i.ul = fmul double %i.ue, %i.uk
  %i.um = fptrunc double %i.ul to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37: ; preds = %bb.m, %.lr.ph140.i30
  %.sroa.8.0.i38 = phi float [ %i.tx, %.lr.ph140.i30 ], [ %i.um, %bb.m ] ; 3 uses
  %.sroa.0101.0.i39 = phi <2 x float> [ %i.tq, %.lr.ph140.i30 ], [ %i.uj, %bb.m ] ; 3 uses
  br i1 %3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37
  %foldExtExtBinop105 = fsub <2 x float> %12, %i.te
  %i.un = extractelement <2 x float> %foldExtExtBinop105, i64 0 ; 2 uses
  %foldExtExtBinop107 = fsub <2 x float> %i.tf, %i.tk ; 2 uses
  %foldExtExtBinop109 = fsub <2 x float> %i.tf, %i.tk
  %i.uo = extractelement <2 x float> %foldExtExtBinop109, i64 1 ; 2 uses
  %foldExtExtBinop111 = fmul <2 x float> %foldExtExtBinop107, %foldExtExtBinop107
  %i.up = extractelement <2 x float> %foldExtExtBinop111, i64 0
  %i.uq = tail call float @llvm.fmuladd.f32(float %i.un, float %i.un, float %i.up)
  %i.ur = tail call noundef float @llvm.fmuladd.f32(float %i.uo, float %i.uo, float %i.uq) ; 4 uses
  %sqrt26.i.i52 = tail call float @llvm.sqrt.f32(float %i.ur) ; 2 uses
  %15 = insertelement <2 x float> poison, float %i.td, i64 0
  %i.us = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ut = shufflevector <2 x float> %i.te, <2 x float> %12, <2 x i32> <i32 0, i32 2>
  %i.uu = fsub <2 x float> %i.us, %i.ut           ; 2 uses
  %16 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uv = shufflevector <2 x float> %i.te, <2 x float> %12, <2 x i32> <i32 1, i32 3>
  %i.uw = fsub <2 x float> %16, %i.uv             ; 2 uses
  %17 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ux = shufflevector <2 x float> %i.tf, <2 x float> %i.tk, <2 x i32> <i32 3, i32 1>
  %i.uy = fsub <2 x float> %17, %i.ux             ; 2 uses
  %i.uz = fmul <2 x float> %i.uw, %i.uw
  %i.va = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uu, <2 x float> %i.uu, <2 x float> %i.uz)
  %i.vb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.uy, <2 x float> %i.va) ; 2 uses
  %i.vc = extractelement <2 x float> %i.vb, i64 0 ; 4 uses
  %sqrt25.i.i53 = tail call float @llvm.sqrt.f32(float %i.vc)
  %i.vd = extractelement <2 x float> %i.vb, i64 1 ; 4 uses
  %sqrt.i.i54 = tail call float @llvm.sqrt.f32(float %i.vd) ; 2 uses
  %i.ve = fadd float %i.vd, %i.vc
  %i.vf = fsub float %i.ve, %i.ur
  %i.vg = fmul float %sqrt25.i.i53, 2.000000e+00  ; 2 uses
  %i.vh = fmul float %sqrt.i.i54, %i.vg
  %i.vi = fdiv float %i.vf, %i.vh
  %i.vj = tail call float @acosf(float noundef %i.vi) #19
  %i.vk = fsub float %i.vd, %i.vc
  %i.vl = fadd float %i.ur, %i.vk
  %i.vm = fmul float %sqrt26.i.i52, 2.000000e+00
  %i.vn = fmul float %sqrt.i.i54, %i.vm
  %i.vo = fdiv float %i.vl, %i.vn
  %i.vp = tail call float @acosf(float noundef %i.vo) #19
  %i.vq = fsub float %i.vc, %i.vd
  %i.vr = fadd float %i.ur, %i.vq
  %i.vs = fmul float %sqrt26.i.i52, %i.vg
  %i.vt = fdiv float %i.vr, %i.vs
  %i.vu = tail call float @acosf(float noundef %i.vt) #19
  %.sroa.0.0.vec.insert.i.i55 = insertelement <2 x float> poison, float %i.vj, i64 0
  %.sroa.0.4.vec.insert.i.i56 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i55, float %i.vp, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37
  %.sroa.7.0.i40 = phi float [ %i.vu, %bb.n ], [ 1.000000e+00, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37 ] ; 2 uses
  %.sroa.098.0.i41 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i56, %bb.n ], [ splat (float 1.000000e+00), %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37 ] ; 4 uses
  %.sroa.098.0.vec.extract.i42 = extractelement <2 x float> %.sroa.098.0.i41, i64 0
  %i.vv = fmul float %.sroa.8.0.i38, %.sroa.098.0.vec.extract.i42
  %i.vw = load i32, ptr %i.rt, align 4, !tbaa !29
  %i.vx = load ptr, ptr %1, align 8, !tbaa !20
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = tail call noundef ptr %i.vz(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !20
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 88
  %i.wd = load ptr, ptr %i.wc, align 8
  %i.we = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.wd(ptr noundef nonnull align 8 dereferenceable(28) %i.wa, i32 noundef %i.vw), !inline_history !159 ; 3 uses
  %i.wf = shufflevector <2 x float> %.sroa.098.0.i41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wg = fmul <2 x float> %.sroa.0101.0.i39, %i.wf
  %i.wh = load <2 x float>, ptr %i.we, align 4, !tbaa !26
  %i.wi = fadd <2 x float> %i.wg, %i.wh
  store <2 x float> %i.wi, ptr %i.we, align 4, !tbaa !26
  %i.wj = getelementptr inbounds nuw i8, ptr %i.we, i64 8 ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !28
  %i.wl = fadd float %i.vv, %i.wk
  store float %i.wl, ptr %i.wj, align 4, !tbaa !28
  %.sroa.098.4.vec.extract.i45 = extractelement <2 x float> %.sroa.098.0.i41, i64 1
  %i.wm = fmul float %.sroa.8.0.i38, %.sroa.098.4.vec.extract.i45
  %i.wn = load i32, ptr %i.sf, align 4, !tbaa !29
  %i.wo = load ptr, ptr %1, align 8, !tbaa !20
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wq = load ptr, ptr %i.wp, align 8
  %i.wr = tail call noundef ptr %i.wq(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !20
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 88
  %i.wu = load ptr, ptr %i.wt, align 8
  %i.wv = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.wu(ptr noundef nonnull align 8 dereferenceable(28) %i.wr, i32 noundef %i.wn), !inline_history !159 ; 3 uses
  %i.ww = shufflevector <2 x float> %.sroa.098.0.i41, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wx = fmul <2 x float> %.sroa.0101.0.i39, %i.ww
  %i.wy = load <2 x float>, ptr %i.wv, align 4, !tbaa !26
  %i.wz = fadd <2 x float> %i.wx, %i.wy
  store <2 x float> %i.wz, ptr %i.wv, align 4, !tbaa !26
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !28
  %i.xc = fadd float %i.wm, %i.xb
  store float %i.xc, ptr %i.xa, align 4, !tbaa !28
  %i.xd = fmul float %.sroa.8.0.i38, %.sroa.7.0.i40
  %i.xe = load i32, ptr %i.sr, align 4, !tbaa !29
  %i.xf = load ptr, ptr %1, align 8, !tbaa !20
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  %i.xh = load ptr, ptr %i.xg, align 8
  %i.xi = tail call noundef ptr %i.xh(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !20
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 88
  %i.xl = load ptr, ptr %i.xk, align 8
  %i.xm = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.xl(ptr noundef nonnull align 8 dereferenceable(28) %i.xi, i32 noundef %i.xe), !inline_history !159 ; 3 uses
  %i.xn = insertelement <2 x float> poison, float %.sroa.7.0.i40, i64 0
  %i.xo = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xp = fmul <2 x float> %.sroa.0101.0.i39, %i.xo
  %i.xq = load <2 x float>, ptr %i.xm, align 4, !tbaa !26
  %i.xr = fadd <2 x float> %i.xp, %i.xq
  store <2 x float> %i.xr, ptr %i.xm, align 4, !tbaa !26
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 2 uses
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !28
  %i.xu = fadd float %i.xd, %i.xt
  store float %i.xu, ptr %i.xs, align 4, !tbaa !28
  %i.xv = add i32 %.1139.i31, 3                   ; 2 uses
  %i.xw = icmp ult i32 %i.xv, %i.y
  br i1 %i.xw, label %.lr.ph140.i30, label %.preheader.i46, !llvm.loop !162

.lr.ph143.i47:                                    ; preds = %.preheader.i46, %_ZN4core8vector3dIfE9normalizeEv.exit.i50
  %.2142.i48 = phi i32 [ %i.yx, %_ZN4core8vector3dIfE9normalizeEv.exit.i50 ], [ 0, %.preheader.i46 ] ; 2 uses
  %i.xx = load ptr, ptr %1, align 8, !tbaa !20
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  %i.xz = load ptr, ptr %i.xy, align 8
  %i.ya = tail call noundef ptr %i.xz(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !20
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 88
  %i.yd = load ptr, ptr %i.yc, align 8
  %i.ye = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.yd(ptr noundef nonnull align 8 dereferenceable(28) %i.ya, i32 noundef %.2142.i48), !inline_history !159 ; 3 uses
  %i.yf = load <2 x float>, ptr %i.ye, align 4, !tbaa !26 ; 4 uses
  %foldExtExtBinop113 = fmul <2 x float> %i.yf, %i.yf
  %i.yg = extractelement <2 x float> %foldExtExtBinop113, i64 1
  %i.yh = extractelement <2 x float> %i.yf, i64 0 ; 2 uses
  %i.yi = tail call float @llvm.fmuladd.f32(float %i.yh, float %i.yh, float %i.yg)
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 2 uses
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !28 ; 3 uses
  %i.yl = tail call float @llvm.fmuladd.f32(float %i.yk, float %i.yk, float %i.yi) ; 2 uses
  %i.ym = fcmp oeq float %i.yl, 0.000000e+00
  br i1 %i.ym, label %_ZN4core8vector3dIfE9normalizeEv.exit.i50, label %bb.p

bb.p:                                             ; preds = %.lr.ph143.i47
  %i.yn = fpext float %i.yl to double
  %sqrt.i93.i49 = tail call double @llvm.sqrt.f64(double %i.yn)
  %i.yo = fdiv double 1.000000e+00, %sqrt.i93.i49 ; 2 uses
  %i.yp = fpext <2 x float> %i.yf to <2 x double>
  %i.yq = insertelement <2 x double> poison, double %i.yo, i64 0
  %i.yr = shufflevector <2 x double> %i.yq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ys = fmul <2 x double> %i.yr, %i.yp
  %i.yt = fptrunc <2 x double> %i.ys to <2 x float>
  store <2 x float> %i.yt, ptr %i.ye, align 4, !tbaa !26
  %i.yu = fpext float %i.yk to double
  %i.yv = fmul double %i.yo, %i.yu
  %i.yw = fptrunc double %i.yv to float
  store float %i.yw, ptr %i.yj, align 4, !tbaa !28
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i50

_ZN4core8vector3dIfE9normalizeEv.exit.i50:        ; preds = %bb.p, %.lr.ph143.i47
  %i.yx = add nuw i32 %.2142.i48, 1               ; 2 uses
  %.not80.i51 = icmp eq i32 %i.yx, %i.q
  br i1 %.not80.i51, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i47, !llvm.loop !163

_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit: ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17, %_ZN4core8vector3dIfE9normalizeEv.exit.i50, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i, %_ZN4core8vector3dIfE9normalizeEv.exit.i, %.preheader.i46, %.preheader133.i8, %.preheader.i, %.preheader133.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene16CMeshManipulator18recalculateNormalsEPNS_5IMeshEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene11SkinnedMesh14resetAnimationEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.016 = phi i32 [ %i.u, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.016)
  %i.r = load ptr, ptr %0, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.q, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.u = add nuw i32 %.016, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZN5scene11SkinnedMesh16updateStaticPoseEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  ret void
}

declare void @_ZN5scene11SkinnedMesh14resetAnimationEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

declare void @_ZN5scene11SkinnedMesh16updateStaticPoseEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

end_hunk_0
