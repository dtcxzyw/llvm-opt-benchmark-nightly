Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Maps?download=true
inline.NumInlined: 2144
inline.NumDeleted: 479
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZNK7openvdb5v13_04math4Mat4IdE3detEv:.split.us.3.3
  %.sroa.0.32..sroa.0.32.126 = load <2 x double>, ptr %.sroa.0.32..sroa_idx160, align 16, !tbaa !19 ; 3 uses
  %.sroa.0.48..sroa_idx165 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.132 = load <2 x double>, ptr %.sroa.0.48..sroa_idx165, align 16, !tbaa !19 ; 3 uses
  %.sroa.0.56..sroa_idx171 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56.140 = load double, ptr %.sroa.0.56..sroa_idx171, align 8, !tbaa !19
  %.sroa.0.32..sroa_idx158 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  store <4 x double> %i.at, ptr %.sroa.0.32..sroa_idx158, align 16, !tbaa !19
  %.sroa.0.40..sroa_idx163 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 40
  %.sroa.0.40..sroa.0.40. = load double, ptr %.sroa.0.40..sroa_idx163, align 8, !tbaa !19
  %.sroa.0.32..sroa_idx159 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32. = load <2 x double>, ptr %.sroa.0.32..sroa_idx159, align 16, !tbaa !19
  %.sroa.0.48..sroa_idx164 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48. = load <2 x double>, ptr %.sroa.0.48..sroa_idx164, align 16, !tbaa !19 ; 3 uses
  %.sroa.0.24..sroa_idx153 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24. = load <2 x double>, ptr %.sroa.0.24..sroa_idx153, align 8, !tbaa !19 ; 2 uses
  %.sroa.0.16..sroa_idx147 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  store <4 x double> %i.bm, ptr %.sroa.0.16..sroa_idx147, align 16, !tbaa !19
  %.sroa.0.48..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  store <2 x double> %i.bn, ptr %.sroa.0.48..sroa_idx168, align 16, !tbaa !19
  %i.br = fneg <2 x double> %.sroa.0.48..sroa.0.48.
  %i.bs = fmul <2 x double> %.sroa.0.32..sroa.0.32., %i.br
  %i.bt = shufflevector <2 x double> %.sroa.0.48..sroa.0.48., <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x double> %i.bt, double %i.av, i64 1
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.24..sroa.0.24., <2 x double> %i.bu, <2 x double> %i.bs) ; 2 uses
  %i.bw = extractelement <2 x double> %.sroa.0.24..sroa.0.24., i64 0
  %i.bx = fmul double %i.bw, %i.be
  %i.by = extractelement <2 x double> %.sroa.0.48..sroa.0.48., i64 0
  %i.bz = tail call double @llvm.fmuladd.f64(double %.sroa.0.40..sroa.0.40., double %i.by, double %i.bx)
  %i.ca = fmul double %.sroa.0.8..sroa.0.8.107, %i.bz
  %i.cb = extractelement <2 x double> %i.bv, i64 1
  %i.cc = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.105, double %i.cb, double %i.ca)
  %i.cd = extractelement <2 x double> %i.bv, i64 0
  %i.ce = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.114, double %i.cd, double %i.cc)
  %i.cf = extractelement <2 x double> %.sroa.0.48..sroa.0.48.132, i64 0
  %i.cg = fneg double %i.cf
  %i.ch = extractelement <2 x double> %.sroa.0.32..sroa.0.32.126, i64 0
  %i.ci = fmul double %i.ch, %i.cg
  %i.cj = tail call double @llvm.fmuladd.f64(double %.sroa.0.24..sroa.0.24.120, double %.sroa.0.56..sroa.0.56.140, double %i.ci)
  %i.ck = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.132, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cl = insertelement <2 x double> %i.ck, double %i.ae, i64 1 ; 2 uses
  %i.cm = fneg <2 x double> %i.cl
  %i.cn = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.126, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x double> %i.cn, double %.sroa.0.24..sroa.0.24.120, i64 1
  %i.cp = fmul <2 x double> %i.co, %i.cm
  %i.cq = shufflevector <2 x double> %i.cl, <2 x double> %.sroa.0.48..sroa.0.48.132, <2 x i32> <i32 1, i32 2>
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.126, <2 x double> %i.cq, <2 x double> %i.cp) ; 2 uses
  %i.cs = fneg <2 x double> %.sroa.0.48..sroa.0.48.134
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 1, i32 2>
  %i.cu = fmul <2 x double> %i.bp, %i.ct
  %i.cv = shufflevector <2 x double> %i.cr, <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x i32> <i32 0, i32 3>
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.cv, <2 x double> %i.cu) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.112, double %i.cj, double %i.cx)
  %i.cz = shufflevector <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.da = insertelement <2 x double> %i.cz, double %i.i, i64 1 ; 2 uses
  %i.db = fneg <2 x double> %i.da
  %i.dc = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.128, <2 x double> %.sroa.0.24..sroa.0.24.118, <2 x i32> <i32 1, i32 2>
  %i.dd = fmul <2 x double> %i.dc, %i.db
  %i.de = shufflevector <2 x double> %i.da, <2 x double> %.sroa.0.48..sroa.0.48.134, <2 x i32> <i32 1, i32 2>
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.128, <2 x double> %i.de, <2 x double> %i.dd) ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1
  %i.dh = fmul double %.sroa.0.8..sroa.0.8., %i.dg
  %i.di = extractelement <2 x double> %i.df, i64 0
  %i.dj = tail call double @llvm.fmuladd.f64(double %.sroa.0.0..sroa.0.0.104, double %i.di, double %i.dh)
  %i.dk = extractelement <2 x double> %i.cw, i64 1
  %i.dl = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16., double %i.dk, double %i.dj)
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.j, double %i.dl, double 0.000000e+00)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.cy, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ce, double %i.dn)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !19
  %i.dr = fneg double %i.dq
  %.sroa.0.48..sroa_idx169 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 48
  %.sroa.0.48..sroa.0.48.138 = load double, ptr %.sroa.0.48..sroa_idx169, align 16, !tbaa !19 ; 2 uses
  %.sroa.0.24..sroa_idx156 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  %.sroa.0.24..sroa.0.24.122 = load double, ptr %.sroa.0.24..sroa_idx156, align 8, !tbaa !19 ; 2 uses
  %.sroa.0.32..sroa_idx162 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 32
  %.sroa.0.32..sroa.0.32.130 = load <2 x double>, ptr %.sroa.0.32..sroa_idx162, align 16, !tbaa !19 ; 3 uses
  %.sroa.0.56..sroa_idx170 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 56
  %.sroa.0.56..sroa.0.56. = load <2 x double>, ptr %.sroa.0.56..sroa_idx170, align 8, !tbaa !19 ; 3 uses
  %i.ds = fneg <2 x double> %.sroa.0.56..sroa.0.56.
  %i.dt = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = insertelement <2 x double> %i.dt, double %.sroa.0.24..sroa.0.24.122, i64 1
  %i.dv = fmul <2 x double> %i.du, %i.ds
  %i.dw = shufflevector <2 x double> %.sroa.0.56..sroa.0.56., <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dx = insertelement <2 x double> %i.dw, double %.sroa.0.48..sroa.0.48.138, i64 1
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> %i.dx, <2 x double> %i.dv) ; 2 uses
  %i.dz = fneg double %.sroa.0.48..sroa.0.48.138
  %.sroa.0.0..sroa.0.0.103 = load <2 x double>, ptr %.sroa.0, align 16, !tbaa !19 ; 2 uses
  %i.ea = shufflevector <2 x double> %.sroa.0.32..sroa.0.32.130, <2 x double> %i.dy, <2 x i32> <i32 0, i32 3>
  %i.eb = insertelement <2 x double> %.sroa.0.0..sroa.0.0.103, double %i.dz, i64 0
  %i.ec = fmul <2 x double> %i.ea, %i.eb
  %i.ed = shufflevector <2 x double> %.sroa.0.0..sroa.0.0.103, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ee = insertelement <2 x double> %i.ed, double %.sroa.0.24..sroa.0.24.122, i64 0
  %i.ef = shufflevector <2 x double> %.sroa.0.56..sroa.0.56., <2 x double> %i.dy, <2 x i32> <i32 0, i32 2>
  %i.eg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.ef, <2 x double> %i.ec) ; 2 uses
  %.sroa.0.16..sroa_idx152 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  %.sroa.0.16..sroa.0.16.116 = load double, ptr %.sroa.0.16..sroa_idx152, align 16, !tbaa !19
  %i.eh = extractelement <2 x double> %i.eg, i64 0
  %i.ei = extractelement <2 x double> %i.eg, i64 1
  %i.ej = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0.16..sroa.0.16.116, double %i.eh, double %i.ei)
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.ej, double %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret double %i.ek
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_04math4Mat4IdE7inverseEd(ptr dead_on_unwind noalias writable sret(%"class.openvdb::v13_0::math::Mat4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, double noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !19 ; 8 uses
  %i.e = load <2 x double>, ptr %i.a, align 8, !tbaa !19 ; 6 uses
  %i.f = load double, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  %i.g = extractelement <2 x double> %i.e, i64 0  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load <2 x double>, ptr %i.i, align 8, !tbaa !19 ; 3 uses
  %i.l = extractelement <2 x double> %i.k, i64 0  ; 4 uses
  %i.m = load <2 x double>, ptr %i.j, align 8, !tbaa !19 ; 7 uses
  %i.n = extractelement <2 x double> %i.m, i64 0  ; 3 uses
  %i.o = fneg double %i.n                         ; 2 uses
  %i.p = extractelement <2 x double> %i.m, i64 1  ; 3 uses
  %i.q = fneg double %i.l                         ; 2 uses
  %i.r = load <2 x double>, ptr %1, align 8, !tbaa !19 ; 6 uses
  %i.s = extractelement <2 x double> %i.r, i64 1  ; 6 uses
  %i.t = extractelement <2 x double> %i.r, i64 0  ; 5 uses
  %i.u = fmul double %i.t, %i.d                   ; 2 uses
  %i.v = fmul double %i.t, %i.f                   ; 2 uses
  %i.w = fmul double %i.s, %i.g                   ; 2 uses
  %i.x = load <2 x double>, ptr %i.h, align 8, !tbaa !19 ; 8 uses
  %i.y = extractelement <2 x double> %i.x, i64 0  ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.e, %i.x
  %i.z = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.aa = fmul double %i.s, %i.l                  ; 2 uses
  %i.ab = fmul double %i.u, %i.o
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.v, double %i.p, double %i.ab)
  %i.ad = fneg double %i.w
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.p, double %i.ac)
  %i.af = tail call double @llvm.fmuladd.f64(double %i.z, double %i.n, double %i.ae)
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.d, double %i.af)
  %i.ah = fmul double %i.y, %i.q                  ; 2 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.f, double %i.ag) ; 4 uses
  %i.aj = extractelement <2 x double> %i.x, i64 1
  %i.ak = fcmp oeq double %i.aj, 0.000000e+00
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load double, ptr %i.al, align 8, !tbaa !19 ; 4 uses
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  %or.cond = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !19 ; 2 uses
  %i.aq = fcmp oeq double %i.ap, 0.000000e+00
  br i1 %i.aq, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.as = load double, ptr %i.ar, align 8, !tbaa !19
  %i.at = fcmp une double %i.as, 1.000000e+00
  br i1 %i.at, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aw = load <2 x double>, ptr %i.au, align 8, !tbaa !19 ; 3 uses
  %i.ax = load <2 x double>, ptr %i.av, align 8, !tbaa !19 ; 4 uses
  %i.ay = fneg <2 x double> %i.aw                 ; 2 uses
  %i.az = fmul <2 x double> %i.k, %i.ay
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.ax, <2 x double> %i.az) ; 2 uses
  %i.bb = extractelement <2 x double> %i.ax, i64 0 ; 3 uses
  %i.bc = fneg double %i.bb                       ; 2 uses
  %i.bd = extractelement <2 x double> %i.aw, i64 1 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bc, i64 1
  %i.bg = shufflevector <2 x double> %i.ba, <2 x double> %i.m, <2 x i32> <i32 0, i32 3>
  %i.bh = fmul <2 x double> %i.bf, %i.bg
  %i.bi = shufflevector <2 x double> %i.e, <2 x double> %i.k, <2 x i32> <i32 0, i32 2>
  %i.bj = shufflevector <2 x double> %i.ba, <2 x double> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.bh) ; 2 uses
  %i.bl = extractelement <2 x double> %i.ax, i64 1
  %i.bm = insertelement <2 x double> poison, double %i.f, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> %i.ax, <2 x i32> <i32 1, i32 3>
  %i.bp = fmul <2 x double> %i.r, %i.ay           ; 2 uses
  %i.bq = shufflevector <2 x double> %i.bk, <2 x double> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bo, <2 x double> %i.bq) ; 2 uses
  %i.bs = extractelement <2 x double> %i.bp, i64 0
  %i.bt = tail call noundef double @llvm.fmuladd.f64(double %i.s, double %i.bb, double %i.bs)
  %i.bu = fmul double %i.p, %i.bt
  %i.bv = extractelement <2 x double> %i.br, i64 1
  %i.bw = fmul double %i.y, %i.bc
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.by = load double, ptr %i.bx, align 8, !tbaa !19 ; 2 uses
  %6 = tail call double @llvm.fmuladd.f64(double %i.l, double %i.bv, double %i.bu)
  %i.bz = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.bd, double %i.bw)
  %i.ca = tail call noundef double @llvm.fmuladd.f64(double %i.n, double %i.bz, double %6)
  %7 = fneg double %i.d
  %i.cb = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.am, i64 1
  %i.cd = insertelement <2 x double> poison, double %7, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.ca, i64 1
  %i.cf = fmul <2 x double> %i.cc, %i.ce
  %i.cg = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ch = insertelement <2 x double> %i.cg, double %i.f, i64 0
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.ch, <2 x double> %i.cf) ; 2 uses
  %i.cj = fneg double %i.f
  %i.ck = fmul double %i.t, %i.cj
  %i.cl = tail call noundef double @llvm.fmuladd.f64(double %i.s, double %i.g, double %i.ck)
  %i.cm = fmul double %i.bd, %i.cl
  %i.cn = extractelement <2 x double> %i.ci, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.cn, double %i.cm)
  %i.cp = fneg double %i.g
  %i.cq = fmul double %i.y, %i.cp
  %i.cr = tail call noundef double @llvm.fmuladd.f64(double %i.t, double %i.d, double %i.cq)
  %i.cs = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.cr, double %i.co)
  %i.ct = extractelement <2 x double> %i.ci, i64 1
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cs, double %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !19 ; 2 uses
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ai, double %i.cu)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.cy = phi double [ %i.cw, %.thread ], [ 1.000000e+00, %bb.c ]
  %i.cz = phi double [ %i.by, %.thread ], [ %i.ap, %bb.c ] ; 2 uses
  %i.da = phi i1 [ true, %.thread ], [ false, %bb.c ]
  %storemerge = phi double [ %i.cx, %.thread ], [ %i.ai, %bb.c ]
  %i.db = tail call noundef double @llvm.fabs.f64(double %storemerge)
  %i.dc = fcmp ule double %i.db, %2
  br i1 %i.dc, label %.critedge107, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dd = tail call noundef double @llvm.fabs.f64(double %i.ai)
  %i.de = fcmp ule double %i.dd, 1.000000e-08
  br i1 %i.de, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.df = fdiv double 1.000000e+00, %i.ai         ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.d, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.di = insertelement <2 x double> poison, double %i.o, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> %i.m, <2 x i32> <i32 0, i32 2>
  %i.dk = fmul <2 x double> %i.dh, %i.dj
  %i.dl = fneg double %i.f
  %i.dm = fmul double %i.y, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.s, double %i.d, double %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dp = fmul double %i.d, %i.l
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dr = fsub double %i.z, %i.u
  %i.ds = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1
  %i.du = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.dw = fmul <2 x double> %i.dt, %i.dv          ; 5 uses
  %i.dx = extractelement <2 x double> %i.dw, i64 0 ; 3 uses
  store double %i.dx, ptr %i.do, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dz = extractelement <2 x double> %i.dw, i64 1 ; 3 uses
  store double %i.dz, ptr %i.dy, align 8, !tbaa !19
  %i.ea = fmul double %i.f, %i.q
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ec = fneg <2 x double> %i.r
  %i.ed = shufflevector <2 x double> %i.e, <2 x double> %i.ec, <2 x i32> <i32 1, i32 3>
  %i.ee = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.dk)
  %i.eg = fmul <2 x double> %i.ef, %i.dv          ; 6 uses
  store <2 x double> %i.eg, ptr %0, align 8, !tbaa !19
  %i.eh = fneg <2 x double> %i.e
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.ej = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ah, i64 1
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ee, <2 x double> %i.ek)
  %i.em = fmul <2 x double> %i.el, %i.dv          ; 6 uses
  store <2 x double> %i.em, ptr %i.dq, align 8, !tbaa !19
  %i.en = fneg <2 x double> %i.r
  %i.eo = shufflevector <2 x double> %i.e, <2 x double> %i.en, <2 x i32> <i32 0, i32 2>
  %i.ep = shufflevector <2 x double> %i.m, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.aa, i64 1
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.er)
  %i.et = fmul <2 x double> %i.es, %i.dv          ; 6 uses
  store <2 x double> %i.et, ptr %i.eb, align 8, !tbaa !19
  %i.eu = fsub double %i.v, %i.w
  %i.ev = fmul double %i.eu, %i.df                ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store double %i.ev, ptr %i.ew, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ez = load <2 x double>, ptr %i.ex, align 8, !tbaa !19 ; 7 uses
  %i.fa = load double, ptr %i.ey, align 8, !tbaa !19 ; 3 uses
  br i1 %i.da, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !19 ; 3 uses
  %i.fd = shufflevector <2 x double> %i.eg, <2 x double> %i.em, <2 x i32> <i32 1, i32 3>
  %i.fe = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ff = shufflevector <2 x double> %i.fe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x double> %i.fd, %i.ff
  %i.fh = shufflevector <2 x double> %i.eg, <2 x double> %i.em, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fi, <2 x double> %i.fg)
  %i.fk = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.fl, <2 x double> %i.fj) ; 4 uses
  %i.fn = shufflevector <2 x double> %i.et, <2 x double> %i.fm, <2 x i32> <i32 1, i32 3>
  %i.fo = insertelement <2 x double> %i.ez, double %i.am, i64 0
  %i.fp = fmul <2 x double> %i.fn, %i.fo
  %i.fq = shufflevector <2 x double> %i.et, <2 x double> %i.fm, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x double> %i.x, <2 x double> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.fr, <2 x double> %i.fp) ; 2 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.cz, double %i.ft) ; 3 uses
  %i.fv = extractelement <2 x double> %i.fs, i64 1
  %i.fw = tail call noundef double @llvm.fmuladd.f64(double %i.fu, double %i.fc, double %i.fv)
  %i.fx = fsub double %i.cy, %i.fw                ; 2 uses
  %i.fy = tail call noundef double @llvm.fabs.f64(double %i.fx)
  %i.fz = fcmp ule double %i.fy, %2
  br i1 %i.fz, label %.critedge107, label %.split.thread

.split.thread:                                    ; preds = %bb.g
  %i.ga = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = shufflevector <2 x double> %i.fm, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <2 x double> %i.fm, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.gd = fmul double %i.dz, %i.fa
  %i.ge = extractelement <2 x double> %i.ez, i64 0
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.dx, double %i.gd)
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.ev, double %i.gf) ; 4 uses
  %i.gh = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x double> %i.em, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %i.eg, <2 x double> %i.gi)
  %i.gm = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %i.et, <2 x double> %i.gl) ; 3 uses
  %i.gp = fdiv double 1.000000e+00, %i.fx         ; 4 uses
  store double %i.gp, ptr %i.gj, align 8, !tbaa !19
  %i.gq = fneg double %i.gp                       ; 4 uses
  %i.gr = fmul double %i.gg, %i.gq
  store double %i.gr, ptr %i.gk, align 8, !tbaa !19
  %i.gs = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %i.gp, i64 0
  %i.gt = shufflevector <4 x double> %i.gs, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gu = fmul <4 x double> %i.gc, %i.gt          ; 3 uses
  %i.gv = fmul double %i.fu, %i.gp                ; 2 uses
  %i.gw = shufflevector <4 x double> %i.gu, <4 x double> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.go, <2 x double> %i.eg)
  store <2 x double> %i.gx, ptr %0, align 8, !tbaa !19
  %i.gy = shufflevector <2 x double> %i.go, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1> ; 2 uses
  %i.gz = insertelement <4 x double> %i.gy, double %i.gg, i64 0
  %i.ha = insertelement <4 x double> %i.gz, double %i.gq, i64 1
  %i.hb = shufflevector <2 x double> %i.em, <2 x double> %i.dw, <4 x i32> <i32 2, i32 poison, i32 0, i32 1>
  %i.hc = insertelement <4 x double> %i.hb, double -0.000000e+00, i64 1
  %i.hd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gu, <4 x double> %i.ha, <4 x double> %i.hc)
  store <4 x double> %i.hd, ptr %i.do, align 8, !tbaa !19
  %i.he = shufflevector <4 x double> %i.gu, <4 x double> %i.gb, <2 x i32> <i32 2, i32 5>
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> %i.go, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hg = insertelement <4 x double> poison, double %i.gg, i64 0
  %i.hh = insertelement <4 x double> %i.hg, double %i.gq, i64 1
  %i.hi = insertelement <4 x double> %i.hh, double %i.gv, i64 2
  %i.hj = shufflevector <4 x double> %i.hi, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hk = shufflevector <2 x double> %i.dw, <2 x double> %i.et, <4 x i32> <i32 1, i32 poison, i32 2, i32 3>
  %i.hl = insertelement <4 x double> %i.hk, double -0.000000e+00, i64 1
  %i.hm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.hf, <4 x double> %i.hj, <4 x double> %i.hl)
  store <4 x double> %i.hm, ptr %i.dy, align 8, !tbaa !19
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gg, double %i.ev)
  %i.ho = insertelement <4 x double> %i.gy, double %i.hn, i64 0
  %i.hp = insertelement <4 x double> %i.ho, double %i.fu, i64 1
  %i.hq = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %i.gq, i64 1
  %i.hr = shufflevector <4 x double> %i.hq, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.hs = fmul <4 x double> %i.hp, %i.hr
  store <4 x double> %i.hs, ptr %i.ew, align 8, !tbaa !19
  br label %bb.r

.critedge:                                        ; preds = %bb.f
  %i.ht = extractelement <2 x double> %i.ez, i64 0
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !19 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hx = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.em, %i.hy
  %i.ia = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ia, <2 x double> %i.eg, <2 x double> %i.hz)
  %i.ic = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.et, <2 x double> %i.ib)
  %i.if = fneg <2 x double> %i.ie
  store <2 x double> %i.if, ptr %i.hw, align 8, !tbaa !19
  %i.ig = fmul double %i.dz, %i.fa
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.dx, double %i.ig)
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.ev, double %i.ih)
  %i.ij = fneg double %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %i.ij, ptr %i.ik, align 8, !tbaa !19
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.il, align 8, !tbaa !19
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double 0.000000e+00, ptr %i.im, align 8, !tbaa !19
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_08KeyErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !41
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30, !inline_history !133
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !133
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_015ArithmeticErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !41
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30, !inline_history !133
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #26, !inline_history !133
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math9AffineMapC2Ev(ptr noundef nonnull align 8 dereferenceable(376) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math9AffineMapE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit, !prof !46

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #26
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 8), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 48), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 80), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 88), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 120), align 8, !tbaa !19
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 128, ptr nonnull @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit:   ; preds = %bb.c, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 128, i1 false)
  %i.f = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3, !prof !46

bb.d:                                             ; preds = %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #26
  %.not.i2 = icmp eq i32 %i.h, 0
  br i1 %.not.i2, label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 8), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 48), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 80), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 88), i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 120), align 8, !tbaa !19
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 128, ptr nonnull @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3

_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3:  ; preds = %bb.e, %bb.d, %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef nonnull align 8 dereferenceable(128) @_ZZN7openvdb5v13_04math4Mat4IdE8identityEvE9sIdentity, i64 128, i1 false)
  %i.k = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, !prof !46

bb.f:                                             ; preds = %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3
  %i.m = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  %.not.i4 = icmp eq i32 %i.m, 0
  br i1 %.not.i4, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !19
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.g, %bb.f, %_ZN7openvdb5v13_04math4Mat4IdE8identityEv.exit3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  store <2 x double> splat (double 1.000000e+00), ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  store <2 x double> splat (double 1.000000e+00), ptr %i.q, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 1, ptr %i.r, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 1, ptr %i.s, align 1, !tbaa !76
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_04math9isUnitaryINS1_4Mat3IdEEEEbRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load <2 x double>, ptr %i.b, align 8, !tbaa !19 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load <2 x double>, ptr %i.e, align 8, !tbaa !19 ; 5 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !19 ; 5 uses
  %i.h = load <2 x double>, ptr %i.c, align 8, !tbaa !19 ; 7 uses
  %i.i = fneg <2 x double> %i.h
  %i.j = shufflevector <2 x double> %i.d, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.k = fmul <2 x double> %i.j, %i.i
  %i.l = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.m = insertelement <2 x double> %i.l, double %i.g, i64 0
  %i.n = shufflevector <2 x double> %i.d, <2 x double> %i.h, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.n, <2 x double> %i.k) ; 2 uses
  %i.p = load <2 x double>, ptr %0, align 8, !tbaa !19 ; 7 uses
  %i.q = insertelement <2 x double> %i.p, double %i.g, i64 0
  %i.r = fneg <2 x double> %i.d
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.r, <2 x i32> <i32 3, i32 1>
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 0, i32 2>
  %i.v = shufflevector <2 x double> %i.h, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.v, <2 x double> %i.t) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load double, ptr %i.x, align 8, !tbaa !19 ; 3 uses
  %i.z = extractelement <2 x double> %i.w, i64 0
  %i.aa = extractelement <2 x double> %i.w, i64 1
  %i.ab = tail call noundef double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.aa)
  %i.ac = tail call noundef double @llvm.fabs.f64(double %i.ab)
  %i.ad = fadd double %i.ac, -1.000000e+00
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.ad)
  %i.af = fcmp ule double %i.ae, 1.000000e-15
  br i1 %i.af, label %bb.b, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.b:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !19
  %i.ai = extractelement <2 x double> %i.d, i64 1 ; 2 uses
  %i.aj = shufflevector <2 x double> %i.f, <2 x double> %i.p, <2 x i32> <i32 3, i32 1>
  %i.ak = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fmul <2 x double> %i.aj, %i.ak
  %i.am = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = shufflevector <2 x double> %i.p, <2 x double> %i.f, <2 x i32> <i32 0, i32 2>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.an, <2 x double> %i.al)
  %i.ap = insertelement <2 x double> poison, double %i.y, i64 0 ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = shufflevector <2 x double> %i.ap, <2 x double> %i.d, <2 x i32> <i32 0, i32 2>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ar, <2 x double> %i.ao) ; 2 uses
  %i.at = extractelement <2 x double> %i.h, i64 0 ; 2 uses
  %i.au = fmul double %i.at, %i.ah
  %i.av = extractelement <2 x double> %i.p, i64 0
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ai, double %i.au)
  %i.ax = extractelement <2 x double> %i.h, i64 1 ; 3 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ax, double %i.aw) ; 2 uses
  %i.az = fmul double %i.g, %i.g
  %i.ba = extractelement <2 x double> %i.f, i64 0 ; 3 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.az)
  %i.bc = extractelement <2 x double> %i.d, i64 0 ; 2 uses
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.bb)
  %i.be = fmul double %i.g, %i.at
  %1 = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ai, double %i.be)
  %foldExtExtBinop = fmul <2 x double> %i.h, %i.h
  %i.bf = insertelement <2 x double> poison, double %1, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> %i.n, <2 x double> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 1
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %i.bi)
  %i.bk = load atomic i8, ptr @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity acquire, align 8
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.bm = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  %.not.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i, label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !19
  %i.bn = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity) #26
  br label %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit

_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit:   ; preds = %bb.b, %bb.c, %bb.d
  %i.bo = load double, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, align 8, !tbaa !19
  %i.bp = extractelement <2 x double> %i.as, i64 0
  %i.bq = fsub double %i.bp, %i.bo
  %i.br = tail call noundef double @llvm.fabs.f64(double %i.bq)
  %i.bs = fcmp ule double %i.br, 1.000000e-08
  br i1 %i.bs, label %bb.e, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.e:                                             ; preds = %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit
  %i.bt = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 8), align 8, !tbaa !19
  %i.bu = extractelement <2 x double> %i.as, i64 1 ; 2 uses
  %i.bv = fsub double %i.bu, %i.bt
  %i.bw = tail call noundef double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ule double %i.bw, 1.000000e-08
  br i1 %i.bx, label %bb.f, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.f:                                             ; preds = %bb.e
  %i.by = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 16), align 8, !tbaa !19
  %i.bz = fsub double %i.ay, %i.by
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz)
  %i.cb = fcmp ule double %i.ca, 1.000000e-08
  br i1 %i.cb, label %bb.g, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.g:                                             ; preds = %bb.f
  %i.cc = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 24), align 8, !tbaa !19
  %i.cd = fsub double %i.bu, %i.cc
  %i.ce = tail call noundef double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp ule double %i.ce, 1.000000e-08
  br i1 %i.cf, label %bb.h, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.h:                                             ; preds = %bb.g
  %i.cg = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 32), align 8, !tbaa !19
  %i.ch = fsub double %i.bd, %i.cg
  %i.ci = tail call noundef double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp ule double %i.ci, 1.000000e-08
  br i1 %i.cj, label %bb.i, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.i:                                             ; preds = %bb.h
  %i.ck = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 40), align 8, !tbaa !19
  %i.cl = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.cm = fsub double %i.cl, %i.ck
  %i.cn = tail call noundef double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp ule double %i.cn, 1.000000e-08
  br i1 %i.co, label %bb.j, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.j:                                             ; preds = %bb.i
  %i.cp = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 48), align 8, !tbaa !19
  %i.cq = fsub double %i.ay, %i.cp
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq)
  %i.cs = fcmp ule double %i.cr, 1.000000e-08
  br i1 %i.cs, label %bb.k, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.k:                                             ; preds = %bb.j
  %i.ct = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 56), align 8, !tbaa !19
  %i.cu = fsub double %i.cl, %i.ct
  %i.cv = tail call noundef double @llvm.fabs.f64(double %i.cu)
  %i.cw = fcmp ule double %i.cv, 1.000000e-08
  br i1 %i.cw, label %bb.l, label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

bb.l:                                             ; preds = %bb.k
  %i.cx = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZZN7openvdb5v13_04math4Mat3IdE8identityEvE9sIdentity, i64 64), align 8, !tbaa !19
  %i.cy = fsub double %i.bj, %i.cx
  %i.cz = tail call noundef double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp ule double %i.cz, 1.000000e-08
  br label %_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit

_ZNK7openvdb5v13_04math4Mat3IdE2eqERKS3_d.exit:   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %_ZN7openvdb5v13_04math4Mat3IdE8identityEv.exit ], [ %i.da, %bb.l ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04math9AffineMapC2ERKNS1_4Mat4IdEE(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN7openvdb5v13_04math9AffineMapE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load double, ptr %i.b, align 8, !tbaa !19, !noalias !420
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load double, ptr %i.d, align 8, !tbaa !19, !noalias !420
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load double, ptr %i.f, align 8, !tbaa !19, !noalias !420
  %i.h = fcmp oeq double %i.c, 0.000000e+00
  %i.i = fcmp oeq double %i.e, 0.000000e+00
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  %i.j = fcmp oeq double %i.g, 0.000000e+00
  %or.cond5.i = select i1 %or.cond.i, i1 %i.j, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.l = load double, ptr %i.k, align 8
  %i.m = fcmp oeq double %i.l, 1.000000e+00
  %or.cond = select i1 %or.cond5.i, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.k, label %_ZN7openvdb5v13_04math8isAffineIdEEbRKNS1_4Mat4IT_EE.exit.thread

_ZN7openvdb5v13_04math8isAffineIdEEbRKNS1_4Mat4IT_EE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.n, ptr %2, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !40
  store i8 0, ptr %i.n, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7openvdb5v13_04math8isAffineIdEEbRKNS1_4Mat4IT_EE.exit.thread
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.26, i64 noundef 68)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) #26 ; 0 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !41
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.i

bb.d:                                             ; preds = %_ZN7openvdb5v13_04math8isAffineIdEEbRKNS1_4Mat4IT_EE.exit.thread
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.y, %bb.f ], [ %i.x, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.g ], [ %i.w, %bb.d ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.z = call ptr @__cxa_begin_catch(ptr %.1) #26 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, ptr noundef nonnull @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_015ArithmeticErrorE, i64 16), ptr %i.aa, align 8, !tbaa !28
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTIN7openvdb5v13_015ArithmeticErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #28
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !42    ; 2 uses
end_hunk_1
