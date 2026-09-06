Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepngL19convertFromXYZ_chrmEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCES2_j:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.q = fpext float %i.j to double
  %i.r = fpext float %i.l to double
  %i.s = fpext float %i.n to double
  %i.t = fpext float %i.o to double
  %i.u = load <2 x float>, ptr %i.p, align 4, !tbaa !58
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.y = load float, ptr %i.x, align 8, !tbaa !58
  %i.z = fpext float %i.y to double               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !58
  %i.ac = fpext float %i.ab to double             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 16, !tbaa !58
  %i.af = fpext float %i.ae to double             ; 2 uses
  %i.ag = insertelement <3 x double> poison, double %i.r, i64 0
  %i.ah = shufflevector <3 x double> %i.ag, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ai = fmul <3 x double> %i.ah, <double f0xBFB1893740000000, double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000>
  %i.aj = insertelement <3 x double> poison, double %i.q, i64 0
  %i.ak = shufflevector <3 x double> %i.aj, <3 x double> poison, <3 x i32> zeroinitializer
  %i.al = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ak, <3 x double> <double f0x3FA3EAB360000000, double f0x3FECA4A8C0000000, double f0xBFE801A360000000>, <3 x double> %i.ai)
  %i.am = insertelement <3 x double> poison, double %i.s, i64 0
  %i.an = shufflevector <3 x double> %i.am, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ao = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.an, <3 x double> <double f0x3FF0793DE0000000, double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000>, <3 x double> %i.al)
  %i.ap = fptrunc <3 x double> %i.ao to <3 x float>
  %i.aq = shufflevector <2 x double> %i.v, <2 x double> poison, <3 x i32> zeroinitializer
  %i.ar = fmul <3 x double> %i.aq, <double f0xBFB1893740000000, double f0x3FD10CB2A0000000, double f0x3FFB6A7F00000000>
  %i.as = insertelement <3 x double> poison, double %i.t, i64 0
  %i.at = shufflevector <3 x double> %i.as, <3 x double> poison, <3 x i32> zeroinitializer
  %i.au = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.at, <3 x double> <double f0x3FA3EAB360000000, double f0x3FECA4A8C0000000, double f0xBFE801A360000000>, <3 x double> %i.ar)
  %i.av = shufflevector <2 x double> %i.v, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.aw = tail call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.av, <3 x double> <double f0x3FF0793DE0000000, double f0xBFC4A8C160000000, double f0x3FA2CA57A0000000>, <3 x double> %i.au)
  %i.ax = fptrunc <3 x double> %i.aw to <3 x float>
  %i.ay = fdiv <3 x float> %i.ax, %i.ap           ; 3 uses
  %i.az = shufflevector <3 x float> %i.ay, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ba = fmul <4 x float> %i.az, <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0x3F652546>
  %i.bb = shufflevector <3 x float> %i.ay, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bc = fmul <4 x float> %i.bb, <float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float f0xBF400D1B>
  %i.bd = shufflevector <3 x float> %i.ay, <3 x float> poison, <4 x i32> zeroinitializer
  %i.be = fmul <4 x float> %i.bd, <float 3.890000e-02, float -6.850000e-02, float 1.029600e+00, float 3.890000e-02>
  %i.bf = fpext <4 x float> %i.ba to <4 x double> ; 2 uses
  %i.bg = fpext <4 x float> %i.bc to <4 x double> ; 2 uses
  %i.bh = fpext <4 x float> %i.be to <4 x double> ; 2 uses
  %i.bi = shufflevector <4 x double> %i.bg, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bj = fmul <4 x double> %i.bi, splat (double f0xBFC2D2ACE0000000)
  %i.bk = shufflevector <4 x double> %i.bf, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FEF957220000000), <4 x double> %i.bj)
  %i.bm = shufflevector <4 x double> %i.bh, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 2 uses
  %i.bn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FC479A860000000), <4 x double> %i.bl)
  %i.bo = fptrunc <4 x double> %i.bn to <4 x float>
  %i.bp = fmul <4 x double> %i.bi, splat (double f0x3FE0966860000000)
  %i.bq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bk, <4 x double> splat (double f0x3FDBAAE3E0000000), <4 x double> %i.bp)
  %i.br = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bm, <4 x double> splat (double f0x3FA93CB240000000), <4 x double> %i.bq)
  %i.bs = fptrunc <4 x double> %i.br to <4 x float>
  %i.bt = fmul <4 x double> %i.bg, splat (double f0x3FA4807D60000000)
  %i.bu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bf, <4 x double> splat (double f0xBF81777EC0000000), <4 x double> %i.bt)
  %i.bv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bh, <4 x double> splat (double f0x3FEEFDD7E0000000), <4 x double> %i.bu)
  %i.bw = fptrunc <4 x double> %i.bv to <4 x float>
  %i.bx = load <4 x float>, ptr %i.c, align 16, !tbaa !58 ; 3 uses
  %i.by = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bz = fpext <2 x float> %i.by to <2 x double> ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = load <2 x float>, ptr %i.w, align 16, !tbaa !58 ; 2 uses
  %i.cc = shufflevector <4 x float> %i.bx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ce = shufflevector <4 x float> %i.bx, <4 x float> %i.cd, <2 x i32> <i32 1, i32 4>
  %i.cf = fpext <2 x float> %i.ce to <2 x double> ; 2 uses
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> %i.cb, <2 x i32> <i32 0, i32 3>
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 2 uses
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ck = fpext <4 x float> %i.bs to <4 x double> ; 3 uses
  %i.cl = fpext <4 x float> %i.bo to <4 x double> ; 3 uses
  %i.cm = fpext <4 x float> %i.bw to <4 x double> ; 3 uses
  %i.cn = fmul <4 x double> %i.cg, %i.ck
  %i.co = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cl, <4 x double> %i.ca, <4 x double> %i.cn)
  %i.cp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cm, <4 x double> %i.cj, <4 x double> %i.co)
  %i.cq = fptrunc <4 x double> %i.cp to <4 x float>
  %i.cr = extractelement <4 x double> %i.ck, i64 2
  %i.cs = extractelement <4 x double> %i.cl, i64 2
  %i.ct = extractelement <4 x double> %i.cm, i64 2
  %i.cu = fmul double %i.cr, %i.ac
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.z, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.af, double %i.cv)
  %i.cx = fptrunc double %i.cw to float
  store <4 x float> %i.cq, ptr %i.c, align 16, !tbaa !58
  %i.cy = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x double> %i.cy, double %i.ac, i64 1
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.db = shufflevector <4 x double> %i.ck, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.dc = fmul <4 x double> %i.da, %i.db
  %i.dd = shufflevector <4 x double> %i.cl, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.de = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.df = insertelement <2 x double> %i.de, double %i.z, i64 1
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dd, <4 x double> %i.dg, <4 x double> %i.dc)
  %i.di = shufflevector <4 x double> %i.cm, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.dj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dk = insertelement <2 x double> %i.dj, double %i.af, i64 1
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.di, <4 x double> %i.dl, <4 x double> %i.dh)
  %i.dn = fptrunc <4 x double> %i.dm to <4 x float>
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.do, ptr %i.w, align 16, !tbaa !58
  store float %i.cx, ptr %i.ad, align 16, !tbaa !58
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not44 = icmp eq i32 %5, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dp = load i32, ptr %6, align 8, !tbaa !54
  %i.dq = icmp eq i32 %i.dp, 2
  %or.cond = or i1 %i.i, %i.dq
  br i1 %or.cond, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.dr = shl i64 %mul.i46, 2                     ; 5 uses
  %.not = icmp eq i64 %i.dr, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.dr, 8
  %i.ds = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ds, -32
  %or.cond85 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond85, label %.lr.ph.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.dr, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load = load <4 x float>, ptr %i.dt, align 4, !tbaa !58
  %wide.load56 = load <4 x float>, ptr %i.du, align 4, !tbaa !58
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store <4 x float> %wide.load, ptr %i.dv, align 4, !tbaa !58
  store <4 x float> %wide.load56, ptr %i.dw, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader86

.lr.ph.preheader86:                               ; preds = %.lr.ph.preheader, %middle.block
  %.14148.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not51 = icmp eq i64 %mul.i46, 0
  br i1 %.not51, label %.loopexit, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.g
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.eb = load float, ptr %i.dz, align 8, !tbaa !58
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !58
  %i.ed = load <4 x float>, ptr %i.c, align 16, !tbaa !58
  %i.ee = shufflevector <4 x float> %i.ed, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ef = fpext <2 x float> %i.ee to <2 x double> ; 2 uses
  %i.eg = load <2 x float>, ptr %i.ea, align 16, !tbaa !58 ; 2 uses
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ei = insertelement <2 x float> %i.eh, float %i.ec, i64 0
  %i.ej = fpext <2 x float> %i.ei to <2 x double> ; 2 uses
  %i.ek = insertelement <2 x float> %i.eg, float %i.eb, i64 0
  %i.el = fpext <2 x float> %i.ek to <2 x double> ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.en = load float, ptr %i.em, align 8, !tbaa !58
  %i.eo = fpext float %i.en to double             ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !58
  %i.er = fpext float %i.eq to double             ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.et = load float, ptr %i.es, align 16, !tbaa !58
  %i.eu = fpext float %i.et to double             ; 2 uses
  %min.iters.check60 = icmp eq i64 %mul.i46, 1
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.memcheck57

vector.memcheck57:                                ; preds = %.lr.ph50
  %i.ev = mul nuw i64 %i.f, %i.e
  %i.ew = shl i64 %i.ev, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ew
  %scevgep58 = getelementptr i8, ptr %1, i64 %i.ew
  %bound0 = icmp ult ptr %0, %scevgep58
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck57
  %n.vec62 = and i64 %mul.i46, -2                 ; 3 uses
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %i.eo, i64 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert75 = insertelement <2 x double> poison, double %i.er, i64 0
  %broadcast.splat76 = shufflevector <2 x double> %broadcast.splatinsert75, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %i.eu, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = shufflevector <2 x double> %i.el, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %10 = shufflevector <2 x double> %i.ef, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ex = shufflevector <2 x double> %i.ej, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph61
  %index80 = phi i64 [ 0, %vector.ph61 ], [ %index.next81, %vector.body79 ] ; 3 uses
  %i.ey = shl i64 %index80, 2                     ; 5 uses
  %i.ez = shl i64 %index80, 2                     ; 4 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ey
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load float, ptr %i.fb, align 4, !tbaa !58, !alias.scope !138
  %i.ff = load float, ptr %i.fd, align 4, !tbaa !58, !alias.scope !138
  %i.fg = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.ff, i64 1
  %i.fi = fpext <2 x float> %i.fh to <2 x double> ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ey
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  %i.fn = load float, ptr %i.fk, align 4, !tbaa !58, !alias.scope !138
  %i.fo = load float, ptr %i.fm, align 4, !tbaa !58, !alias.scope !138
  %i.fp = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fq = insertelement <2 x float> %i.fp, float %i.fo, i64 1
  %i.fr = fpext <2 x float> %i.fq to <2 x double> ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ey
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load float, ptr %i.ft, align 4, !tbaa !58, !alias.scope !138
  %i.fx = load float, ptr %i.fv, align 4, !tbaa !58, !alias.scope !138
  %i.fy = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.fx, i64 1
  %i.ga = fpext <2 x float> %i.fz to <2 x double> ; 2 uses
  %i.gb = fmul <2 x double> %broadcast.splat76, %i.fr
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %broadcast.splat74, <2 x double> %i.gb)
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ga, <2 x double> %broadcast.splat78, <2 x double> %i.gc)
  %i.ge = fptrunc <2 x double> %i.gd to <2 x float>
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ey
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 28
  %i.gj = load float, ptr %i.gg, align 4, !tbaa !58, !alias.scope !138
  %i.gk = load float, ptr %i.gi, align 4, !tbaa !58, !alias.scope !138
  %i.gl = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gk, i64 1
  %11 = shufflevector <2 x double> %i.ga, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %12 = shufflevector <2 x double> %i.fi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %13 = shufflevector <2 x double> %i.fr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = fmul <4 x double> %i.ex, %13
  %15 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %12, <4 x double> %10, <4 x double> %14)
  %i.gn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %11, <4 x double> %9, <4 x double> %15)
  %i.go = fptrunc <4 x double> %i.gn to <4 x float>
  %i.gp = shufflevector <2 x float> %i.ge, <2 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x float> %i.go, <4 x float> %i.gp, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.fa, align 4, !tbaa !58, !alias.scope !139, !noalias !138
  %index.next81 = add nuw i64 %index80, 2         ; 2 uses
  %i.gq = icmp eq i64 %index.next81, %n.vec62
  br i1 %i.gq, label %middle.block82, label %vector.body79, !llvm.loop !135

middle.block82:                                   ; preds = %vector.body79
  %cmp.n83 = icmp eq i64 %mul.i46, %n.vec62
  br i1 %cmp.n83, label %.loopexit, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %vector.memcheck57, %.lr.ph50, %middle.block82
  %.04049.ph = phi i64 [ 0, %vector.memcheck57 ], [ 0, %.lr.ph50 ], [ %n.vec62, %middle.block82 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %.04049 = phi i64 [ %i.hx, %scalar.ph59 ], [ %.04049.ph, %scalar.ph59.preheader ] ; 2 uses
  %i.gr = shl i64 %.04049, 2                      ; 5 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gr
  %i.gt = or disjoint i64 %i.gr, 2                ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gr
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gt
  %i.gz = load float, ptr %i.gx, align 4, !tbaa !58
  %i.ha = load float, ptr %i.gv, align 4, !tbaa !58
  %i.hb = load float, ptr %i.gy, align 4, !tbaa !58
  %i.hc = fpext float %i.gz to double             ; 2 uses
  %i.hd = fpext float %i.ha to double             ; 2 uses
  %i.he = fpext float %i.hb to double             ; 2 uses
  %i.hf = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fmul <2 x double> %i.hg, %i.ej
  %i.hi = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %i.ef, <2 x double> %i.hh)
  %i.hl = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hm = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> %i.el, <2 x double> %i.hk)
  %i.ho = fptrunc <2 x double> %i.hn to <2 x float>
  store <2 x float> %i.ho, ptr %i.gs, align 4, !tbaa !58
  %i.hp = fmul double %i.hc, %i.er
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hd, double %i.eo, double %i.hp)
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.he, double %i.eu, double %i.hq)
  %i.hs = fptrunc double %i.hr to float
  store float %i.hs, ptr %i.gu, align 4, !tbaa !58
  %i.ht = or disjoint i64 %i.gr, 3                ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !58
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ht
  store float %i.hv, ptr %i.hw, align 4, !tbaa !58
  %i.hx = add nuw i64 %.04049, 1                  ; 2 uses
  %exitcond53.not = icmp eq i64 %i.hx, %mul.i46
  br i1 %exitcond53.not, label %.loopexit, label %scalar.ph59, !llvm.loop !136

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader86
  %.14148 = phi i64 [ %.14148.ph, %.lr.ph.preheader86 ], [ %i.in, %.lr.ph ] ; 6 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.14148
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !58
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.14148
  store float %i.hz, ptr %i.ia, align 4, !tbaa !58
  %i.ib = or disjoint i64 %.14148, 1              ; 2 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ib
  %i.id = load float, ptr %i.ic, align 4, !tbaa !58
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ib
  store float %i.id, ptr %i.ie, align 4, !tbaa !58
  %i.if = or disjoint i64 %.14148, 2              ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !58
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.if
  store float %i.ih, ptr %i.ii, align 4, !tbaa !58
  %i.ij = or disjoint i64 %.14148, 3              ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !58
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ij
  store float %i.il, ptr %i.im, align 4, !tbaa !58
  %i.in = add nuw i64 %.14148, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.in, %i.dr
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !137

.loopexit:                                        ; preds = %.lr.ph, %scalar.ph59, %middle.block, %middle.block82, %.preheader, %bb.g, %bb.b, %bb.a
  %.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.g ], [ 1, %bb.a ], [ 0, %.preheader ], [ 0, %middle.block82 ], [ 0, %middle.block ], [ 0, %scalar.ph59 ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 93) i32 @_ZN7lodepngL20convertFromXYZ_gammaEPfjjPK11LodePNGInfojPKNS_10LodePNGICCE(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef nonnull readonly captures(none) %5) unnamed_addr #9 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = zext i32 %2 to i64
  %mul.i60 = mul nuw i64 %i.b, %i.a               ; 6 uses
  %.not52 = icmp eq i32 %4, 0
  br i1 %.not52, label %bb.z, label %.preheader64

.preheader64:                                     ; preds = %bb.a
  %.not = icmp eq i64 %mul.i60, 0
  br i1 %.not, label %.loopexit, label %.preheader63.lr.ph

.preheader63.lr.ph:                               ; preds = %.preheader64
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 128
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.lr.ph, %bb.y
  %.04469 = phi i64 [ 0, %.preheader63.lr.ph ], [ %i.dq, %bb.y ] ; 2 uses
  %.idx57 = shl i64 %.04469, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx57
  br label %bb.b

bb.b:                                             ; preds = %.preheader63, %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit
  %.068 = phi i64 [ 0, %.preheader63 ], [ %i.dp, %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit ] ; 3 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %.068 ; 26 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.068 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !58 ; 23 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !60
  switch i32 %i.h, label %bb.x [
    i32 0, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit
    i32 1, label %bb.c
    i32 2, label %bb.h
    i32 3, label %bb.j
    i32 4, label %bb.n
    i32 5, label %bb.r
    i32 6, label %bb.u
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ugt float %i.g, 0.000000e+00
  %i.j = fcmp ult float %i.g, 1.000000e+00
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.d, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !62   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  br i1 %i.m, label %.._crit_edge_crit_edge.i, label %.lr.ph.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.d
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %.._crit_edge_crit_edge.i
  %i.n = phi ptr [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ag, %bb.g ]
  %.087.lcssa.i = phi i64 [ 0, %.._crit_edge_crit_edge.i ], [ %.087..i, %bb.g ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.087.lcssa.i
  %i.p = load float, ptr %i.o, align 4, !tbaa !58
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %.0101.i = phi i64 [ %..0.i, %bb.g ], [ %i.l, %bb.d ] ; 4 uses
  %.087100.i = phi i64 [ %.087..i, %bb.g ], [ 0, %bb.d ] ; 4 uses
  %i.q = add nuw i64 %.087100.i, 1
  %i.r = icmp eq i64 %i.q, %.0101.i
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.087100.i
  %i.u = load float, ptr %i.t, align 4, !tbaa !58 ; 5 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.0101.i
  %i.w = load float, ptr %i.v, align 4, !tbaa !58 ; 3 uses
  %i.x = fcmp oeq float %i.u, %i.w
  br i1 %i.x, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = fsub float %i.g, %i.u
  %i.z = fsub float %i.w, %i.u
  %i.aa = fdiv float %i.y, %i.z                   ; 2 uses
  %i.ab = fsub float 1.000000e+00, %i.aa
  %i.ac = fmul float %i.w, %i.aa
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.u, float %i.ab, float %i.ac)
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.g:                                             ; preds = %.lr.ph.i
  %i.ae = add i64 %.087100.i, %.0101.i
  %i.af = lshr i64 %i.ae, 1                       ; 3 uses
  %i.ag = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !58
  %i.aj = fcmp ogt float %i.ai, %i.g              ; 2 uses
  %.087..i = select i1 %i.aj, i64 %.087100.i, i64 %i.af ; 3 uses
  %..0.i = select i1 %i.aj, i64 %i.af, i64 %.0101.i ; 2 uses
  %i.ak = icmp eq i64 %.087..i, %..0.i
  br i1 %i.ak, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !140

bb.h:                                             ; preds = %bb.b
  %i.al = fcmp ogt float %i.g, 0.000000e+00
  br i1 %i.al, label %bb.i, label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.an = load float, ptr %i.am, align 8, !tbaa !61
  %i.ao = fdiv float 1.000000e+00, %i.an
  %i.ap = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.g, float noundef %i.ao)
  br label %_ZN7lodepngL14iccBackwardTRCEPKNS_15LodePNGICCCurveEf.exit

end_hunk_0
