Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ap3p?download=true
inline.NumInlined: 292
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv4ap3pC2ENS_3MatE:bb.a
  %.sink.i8.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i7.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sink.i8.i, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !22
  %i.x = fpext float %i.w to double
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.z, ptr %i.aa, align 8, !tbaa !24
  %i.ab = icmp slt i32 %i.e, 2                    ; 2 uses
  %i.ac = load i64, ptr %i.h, align 8
  %.sink.idx.i.i1 = select i1 %i.ab, i64 0, i64 %i.ac
  %.sink.i.i2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i.i1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i.i2, i64 16
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !9 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.af, align 8, !tbaa !25
  %i.ag = load double, ptr %i.g, align 8, !tbaa !9 ; 2 uses
  store double %i.ag, ptr %0, align 8, !tbaa !26
  %i.ah = load i64, ptr %i.h, align 8
  %.sink.idx.i7.i3 = select i1 %i.ab, i64 0, i64 %i.ah
  %.sink.i8.i4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i7.i3
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i8.i4, i64 8
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ak = phi double [ %i.q, %bb.b ], [ %i.ae, %bb.c ]
  %i.al = phi double [ %i.k, %bb.b ], [ %i.z, %bb.c ]
  %i.am = phi double [ %i.t, %bb.b ], [ %i.ag, %bb.c ]
  %.sink = phi double [ %i.x, %bb.b ], [ %i.aj, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sink, ptr %i.an, align 8, !tbaa !27
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %.sink, i64 1 ; 2 uses
  %i.aq = fdiv <2 x double> splat (double 1.000000e+00), %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !9
  %i.as = insertelement <2 x double> poison, double %i.al, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ak, i64 1
  %i.au = fdiv <2 x double> %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.au, ptr %i.av, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv4ap3pC2Edddd(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) unnamed_addr #2 align 2 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.c, align 8, !tbaa !25
  %i.d = insertelement <2 x double> poison, double %1, i64 0
  %i.e = insertelement <2 x double> %i.d, double %2, i64 1 ; 2 uses
  %i.f = fdiv <2 x double> splat (double 1.000000e+00), %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.f, ptr %i.g, align 8, !tbaa !9
  %i.h = insertelement <2 x double> poison, double %3, i64 0
  %i.i = insertelement <2 x double> %i.h, double %4, i64 1
  %i.j = fdiv <2 x double> %i.i, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %i.j, ptr %i.k, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 11 uses
  %i.b = alloca [4 x double], align 16            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load double, ptr %i.h, align 8, !tbaa !9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load double, ptr %i.q, align 8, !tbaa !9 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = load double, ptr %i.s, align 8, !tbaa !9 ; 3 uses
  %i.u = load <2 x double>, ptr %1, align 8, !tbaa !9 ; 6 uses
  %i.v = load <2 x double>, ptr %i.m, align 8, !tbaa !9 ; 7 uses
  %i.w = load double, ptr %i.o, align 8, !tbaa !9 ; 3 uses
  %i.x = load <2 x double>, ptr %2, align 8, !tbaa !9 ; 3 uses
  %i.y = load <2 x double>, ptr %i.c, align 8, !tbaa !9 ; 3 uses
  %i.z = shufflevector <2 x double> %i.y, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> %i.x, <2 x i32> <i32 1, i32 3>
  %i.ab = fsub <2 x double> %i.z, %i.aa           ; 5 uses
  %i.ac = extractelement <2 x double> %i.x, i64 0
  %i.ad = fsub double %i.ac, %i.g
  %i.ae = load double, ptr %i.p, align 8, !tbaa !9 ; 3 uses
  %i.af = fneg double %i.r
  %i.ag = fneg double %i.ae
  %i.ah = load double, ptr %i.n, align 8, !tbaa !9 ; 2 uses
  %i.ai = load <2 x double>, ptr %i.l, align 8, !tbaa !9 ; 8 uses
  %i.aj = insertelement <2 x double> %i.v, double %i.w, i64 1 ; 2 uses
  %i.ak = insertelement <2 x double> poison, double %i.af, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.aj, %i.al
  %i.an = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ao, <2 x double> %i.am) ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = fmul <2 x double> %i.aj, %i.ar
  %i.at = insertelement <2 x double> %i.u, double %i.ah, i64 1 ; 2 uses
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.ao, <2 x double> %i.as) ; 2 uses
  %i.av = fneg <2 x double> %i.au                 ; 2 uses
  %i.aw = fmul <2 x double> %i.ai, %i.ar
  %i.ax = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.ay, <2 x double> %i.aw) ; 2 uses
  %i.ba = shufflevector <2 x double> %i.ai, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.bb = shufflevector <2 x double> %i.u, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bc = load double, ptr %i.d, align 8, !tbaa !9 ; 2 uses
  %i.bd = load double, ptr %i.e, align 8, !tbaa !9
  %i.be = fsub double %i.bc, %i.bd
  %i.bf = shufflevector <2 x double> %i.ab, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.bg = shufflevector <2 x double> %i.ab, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.bh = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bi = insertelement <2 x double> %i.bh, double %i.w, i64 1
  %i.bj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bk = insertelement <2 x double> %i.bj, double %i.ah, i64 1
  %i.bl = fneg <2 x double> %i.bk                 ; 2 uses
  %i.bm = shufflevector <2 x double> %i.ab, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bn = fmul <2 x double> %i.bf, %i.bm
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bi, <2 x double> %i.bn) ; 3 uses
  %i.bp = shufflevector <2 x double> %i.v, <2 x double> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.bq = fmul <2 x double> %i.bp, %i.bl
  %i.br = extractelement <2 x double> %i.bo, i64 1 ; 2 uses
  %i.bs = fmul double %i.br, %i.br
  %i.bt = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = insertelement <2 x double> %i.bt, double %i.w, i64 0
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.bu, <2 x double> %i.bq) ; 3 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %i.bs)
  %i.by = insertelement <2 x double> %i.bv, double %i.be, i64 0 ; 3 uses
  %i.bz = insertelement <2 x double> %i.bo, double %i.bx, i64 1
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.by, <2 x double> %i.bz)
  %i.cb = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ca) ; 5 uses
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fdiv <2 x double> %i.ab, %i.cc          ; 10 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = extractelement <2 x double> %i.cd, i64 1 ; 2 uses
  %i.cg = fdiv <2 x double> %i.by, %i.cb          ; 10 uses
  %i.ch = fneg <2 x double> %i.bo
  %i.ci = shufflevector <2 x double> %i.bv, <2 x double> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cj = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ck = fdiv <2 x double> %i.ci, %i.cj          ; 11 uses
  %i.cl = shufflevector <2 x double> %i.cd, <2 x double> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.cm = insertelement <2 x double> poison, double %i.ad, i64 0 ; 2 uses
  %i.cn = insertelement <2 x double> %i.cm, double %i.ae, i64 1
  %i.co = shufflevector <2 x double> %i.cd, <2 x double> %i.ck, <2 x i32> <i32 1, i32 2>
  %i.cp = fneg double %i.ce
  %i.cq = extractelement <2 x double> %i.cg, i64 0
  %i.cr = fneg double %i.cf
  %i.cs = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ct = insertelement <2 x double> %i.cs, double %i.bc, i64 0
  %i.cu = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.cv = insertelement <2 x double> %i.cu, double %i.i, i64 1
  %i.cw = fsub <2 x double> %i.ct, %i.cv          ; 5 uses
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x double> %i.cx, double %i.r, i64 1
  %i.cz = fmul <2 x double> %i.cy, %i.cl
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.co, <2 x double> %i.cz)
  %i.db = insertelement <2 x double> %i.cw, double %i.t, i64 1
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.db, <2 x double> %i.da) ; 4 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 0
  %i.de = fneg double %i.dd
  %i.df = extractelement <2 x double> %i.cw, i64 0
  %i.dg = fmul double %i.df, %i.cp
  %i.dh = extractelement <2 x double> %i.cw, i64 1
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cq, double %i.dg) ; 3 uses
  %i.dj = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x double> %i.cw, %i.dk
  %i.dm = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = shufflevector <2 x double> %i.cg, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> %i.dl) ; 4 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = fneg double %i.dp
  %foldExtExtBinop = fmul <2 x double> %i.do, %i.do
  %i.dr = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.di, double %i.di, double %i.dr)
  %i.dt = extractelement <2 x double> %i.do, i64 1 ; 3 uses
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dt, double %i.ds)
  %sqrt.i236 = tail call noundef double @llvm.sqrt.f64(double %i.du) ; 6 uses
  %i.dv = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.di, i64 1
  %i.dx = insertelement <2 x double> poison, double %sqrt.i236, i64 0 ; 3 uses
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fdiv <2 x double> %i.dw, %i.dy          ; 5 uses
  %i.ea = fdiv double %i.dt, %sqrt.i236           ; 2 uses
  %i.eb = fsub <2 x double> %i.dc, %i.cb
  %i.ec = fmul <2 x double> %i.dc, %i.cb
  %i.ed = extractelement <2 x double> %i.eb, i64 0 ; 2 uses
  %i.ee = fneg double %i.ed
  %i.ef = fneg double %sqrt.i236
  %i.eg = fneg <2 x double> %i.ck                 ; 2 uses
  %i.eh = extractelement <2 x double> %i.cg, i64 1 ; 2 uses
  %i.ei = fmul <2 x double> %i.ba, %i.eg
  %i.ej = shufflevector <2 x double> %i.ck, <2 x double> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.ej, <2 x double> %i.ei) ; 5 uses
  %i.el = extractelement <2 x double> %i.dc, i64 1 ; 4 uses
  %i.em = fmul double %i.el, %i.de                ; 3 uses
  %i.en = fmul double %sqrt.i236, %i.el           ; 3 uses
  %i.eo = shufflevector <2 x double> %i.ck, <2 x double> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.ep = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eq = shufflevector <2 x double> %i.cg, <2 x double> %i.ek, <2 x i32> <i32 1, i32 2>
  %i.er = shufflevector <2 x double> %i.v, <2 x double> %i.ck, <2 x i32> <i32 0, i32 3>
  %i.es = shufflevector <2 x double> %i.eg, <2 x double> %i.av, <2 x i32> <i32 0, i32 3>
  %i.et = fmul <2 x double> %i.er, %i.es
  %i.eu = shufflevector <2 x double> %i.u, <2 x double> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.ev = shufflevector <2 x double> %i.cg, <2 x double> %i.ap, <2 x i32> <i32 1, i32 3>
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.ev, <2 x double> %i.et) ; 3 uses
  %i.ex = extractelement <2 x double> %i.ew, i64 0
  %i.ey = fneg double %i.ex                       ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ck, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x double> %i.av, <2 x double> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.fb = fmul <2 x double> %i.ez, %i.fa
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ap, <2 x double> %i.fb)
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.az, <2 x double> %i.fc) ; 2 uses
  %i.fe = extractelement <2 x double> %i.az, i64 1
  %i.ff = extractelement <2 x double> %i.ew, i64 1
  %i.fg = tail call noundef double @llvm.fmuladd.f64(double %i.eh, double %i.fe, double %i.ff)
  %i.fh = extractelement <2 x double> %i.ec, i64 1 ; 2 uses
  %i.fi = fmul double %i.ed, %i.fh
  %i.fj = extractelement <2 x double> %i.fd, i64 1
  %i.fk = fmul double %i.fj, %i.ee                ; 2 uses
  %i.fl = fmul double %sqrt.i236, %i.fh           ; 2 uses
  %i.fm = insertelement <2 x double> %i.dx, double %i.ef, i64 1
  %i.fn = fmul <2 x double> %i.fm, %i.fd          ; 5 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 0 ; 2 uses
  %i.fp = fmul double %i.fo, %i.fl                ; 6 uses
  %i.fq = extractelement <2 x double> %i.fn, i64 1
  %i.fr = fmul double %i.em, %i.fq
  %6 = fneg double %i.fp
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.en, double %i.fk, double %i.fr) ; 5 uses
  %i.ft = insertelement <2 x double> %i.fn, double %i.em, i64 1
  %i.fu = fneg <2 x double> %i.ft
  %i.fv = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x double> %i.fw, %i.fu          ; 6 uses
  %7 = extractelement <2 x double> %i.fx, i64 1   ; 4 uses
  %8 = insertelement <2 x double> %i.fx, double %i.fs, i64 1
  %i.fy = extractelement <2 x double> %i.fx, i64 0 ; 3 uses
  %i.fz = fneg double %i.fy
  %9 = insertelement <2 x double> %i.dx, double %i.en, i64 1
  %10 = insertelement <2 x double> poison, double %i.fg, i64 0
  %11 = insertelement <2 x double> %10, double %i.fl, i64 1
  %12 = fmul <2 x double> %9, %11                 ; 5 uses
  %i.ga = extractelement <2 x double> %12, i64 0
  %i.gb = fneg double %i.ga
  %13 = fmul double %i.em, %i.gb
  %14 = insertelement <2 x double> %i.fn, double %i.fp, i64 1
  %15 = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x double> %15, double %i.fp, i64 1
  %17 = fmul <2 x double> %14, %16
  %18 = extractelement <2 x double> %12, i64 1    ; 2 uses
  %19 = fmul double %18, 2.000000e+00
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fk, double %13) ; 6 uses
  %i.gd = fmul double %i.fp, %i.gc                ; 2 uses
  %20 = tail call double @llvm.fmuladd.f64(double %18, double %i.fs, double %i.gd)
  %i.ge = fmul double %7, %19
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.ge)
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gc, double %i.gc, double %i.gf)
  %i.gh = fneg double %i.gd
  %i.gi = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gh, i64 1
  %21 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.fx, <2 x double> %i.gj) ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  %23 = tail call double @llvm.fmuladd.f64(double %6, double %i.fp, double %22)
  %24 = fneg double %i.gc
  %25 = fmul double %i.gc, %24
  %26 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %25)
  %i.gk = insertelement <2 x double> %12, double %i.en, i64 0
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %12, <2 x double> %17) ; 4 uses
  %28 = extractelement <2 x double> %27, i64 0    ; 4 uses
  %29 = extractelement <2 x double> %27, i64 1
  %i.gl = tail call double @llvm.fmuladd.f64(double %28, double %28, double %29) ; 6 uses
  %i.gm = tail call double @llvm.fmuladd.f64(double %28, double %i.fy, double %20)
  %30 = fmul double %i.gm, 2.000000e+00           ; 6 uses
  %i.gn = fneg double %28
  %i.go = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = shufflevector <2 x double> %27, <2 x double> %i.fx, <2 x i32> <i32 0, i32 2>
  %i.gq = insertelement <2 x double> %21, double %23, i64 0
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %31, <2 x double> %i.gq) ; 6 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 0 ; 2 uses
  %i.gt = extractelement <2 x double> %i.gr, i64 1
  %i.gu = fmul double %i.gt, 2.000000e+00         ; 7 uses
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.fz, double %i.fy, double %26) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gz = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %i.gl, double noundef %30, double noundef %i.gs, double noundef %i.gu, double noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.gy) ; 5 uses
  %i.ha = icmp sgt i32 %i.gz, 0                   ; 2 uses
  br i1 %i.ha, label %.preheader.preheader.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.gz to i64 ; 6 uses
  %i.hb = fmul double %i.gl, 4.000000e+00         ; 4 uses
  %i.hc = fmul double %30, 3.000000e+00           ; 4 uses
  %i.hd = fmul double %i.gs, 2.000000e+00         ; 4 uses
  %min.iters.check = icmp eq i32 %i.gz, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.hb, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert549 = insertelement <2 x double> poison, double %i.hc, i64 0
  %broadcast.splat550 = shufflevector <2 x double> %broadcast.splatinsert549, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert551 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat552 = shufflevector <2 x double> %broadcast.splatinsert551, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert553 = insertelement <2 x double> poison, double %i.gl, i64 0
  %broadcast.splat554 = shufflevector <2 x double> %broadcast.splatinsert553, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert555 = insertelement <2 x double> poison, double %30, i64 0
  %broadcast.splat556 = shufflevector <2 x double> %broadcast.splatinsert555, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat558 = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <2 x double> poison, double %i.gu, i64 0
  %broadcast.splat560 = shufflevector <2 x double> %broadcast.splatinsert559, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert561 = insertelement <2 x double> poison, double %i.gv, i64 0
  %broadcast.splat562 = shufflevector <2 x double> %broadcast.splatinsert561, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.he, align 16, !tbaa !9 ; 8 uses
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat554, <2 x double> %wide.load, <2 x double> %broadcast.splat556)
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %wide.load, <2 x double> %broadcast.splat558)
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> %wide.load, <2 x double> %broadcast.splat562)
  %i.hj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %broadcast.splat550)
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> %wide.load, <2 x double> %broadcast.splat552)
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hk, <2 x double> %wide.load, <2 x double> %broadcast.splat560)
  %i.hm = fdiv <2 x double> %i.hi, %i.hl
  %i.hn = fsub <2 x double> %wide.load, %i.hm
  store <2 x double> %i.hn, ptr %i.he, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.preheader.i ], [ %n.vec, %middle.block ]
  %i.hp = insertelement <2 x double> poison, double %i.hb, i64 1
  %i.hq = insertelement <2 x double> %i.gr, double %i.hc, i64 1
  %i.hr = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.hd, i64 1
  %i.ht = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.gu, i64 1
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader599, %._crit_edge.i
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %._crit_edge.i ], [ %indvars.iv.1.i.ph, %._crit_edge.i.preheader599 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.1.i ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !9 ; 3 uses
  %i.hx = call double @llvm.fmuladd.f64(double %i.gl, double %i.hw, double %30)
  %i.hy = insertelement <2 x double> %i.jg, double %i.hx, i64 0
  %i.hz = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ib = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hy, <2 x double> %i.ia, <2 x double> %i.jh)
  %i.ic = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.ia, <2 x double> %i.jj)
  %i.id = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ic, <2 x double> %i.ia, <2 x double> %i.jl) ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0
  %i.if = extractelement <2 x double> %i.id, i64 1
  %i.ig = fdiv double %i.ie, %i.if
  %i.ih = fsub double %i.hw, %i.ig
  store double %i.ih, ptr %i.hv, align 8, !tbaa !9
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i, !llvm.loop !64

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !9 ; 3 uses
  %i.ik = call double @llvm.fmuladd.f64(double %i.gl, double %i.ij, double %30)
  %i.il = insertelement <2 x double> %i.hp, double %i.ik, i64 0
  %i.im = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.io = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.in, <2 x double> %i.hq)
  %i.ip = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.io, <2 x double> %i.in, <2 x double> %i.hs)
  %i.iq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.in, <2 x double> %i.hu) ; 2 uses
  %i.ir = extractelement <2 x double> %i.iq, i64 0
  %i.is = extractelement <2 x double> %i.iq, i64 1
  %i.it = fdiv double %i.ir, %i.is
  %i.iu = fsub double %i.ij, %i.it
  store double %i.iu, ptr %i.ii, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.preheader, label %scalar.ph, !llvm.loop !65

._crit_edge.i.preheader:                          ; preds = %scalar.ph, %middle.block
  %min.iters.check564 = icmp eq i32 %i.gz, 1
  br i1 %min.iters.check564, label %._crit_edge.i.preheader599, label %vector.ph565

vector.ph565:                                     ; preds = %._crit_edge.i.preheader
  %n.vec566 = and i64 %wide.trip.count.i, 2147483646 ; 3 uses
  %broadcast.splatinsert567 = insertelement <2 x double> poison, double %i.gl, i64 0
  %broadcast.splat568 = shufflevector <2 x double> %broadcast.splatinsert567, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert569 = insertelement <2 x double> poison, double %30, i64 0
  %broadcast.splat570 = shufflevector <2 x double> %broadcast.splatinsert569, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat572 = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert573 = insertelement <2 x double> poison, double %i.gu, i64 0
  %broadcast.splat574 = shufflevector <2 x double> %broadcast.splatinsert573, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <2 x double> poison, double %i.gv, i64 0
  %broadcast.splat576 = shufflevector <2 x double> %broadcast.splatinsert575, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.hb, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.hc, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <2 x double> poison, double %i.hd, i64 0
  %broadcast.splat582 = shufflevector <2 x double> %broadcast.splatinsert581, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph565
  %index584 = phi i64 [ 0, %vector.ph565 ], [ %index.next586, %vector.body583 ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index584 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.iv, align 16, !tbaa !9 ; 8 uses
  %i.iw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat568, <2 x double> %wide.load585, <2 x double> %broadcast.splat570)
  %i.ix = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %wide.load585, <2 x double> %broadcast.splat572)
  %i.iy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ix, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.iz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iy, <2 x double> %wide.load585, <2 x double> %broadcast.splat576)
  %i.ja = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat578, <2 x double> %wide.load585, <2 x double> %broadcast.splat580)
  %i.jb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ja, <2 x double> %wide.load585, <2 x double> %broadcast.splat582)
  %i.jc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %wide.load585, <2 x double> %broadcast.splat574)
  %i.jd = fdiv <2 x double> %i.iz, %i.jc
  %i.je = fsub <2 x double> %wide.load585, %i.jd
  store <2 x double> %i.je, ptr %i.iv, align 16, !tbaa !9
  %index.next586 = add nuw i64 %index584, 2       ; 2 uses
  %i.jf = icmp eq i64 %index.next586, %n.vec566
  br i1 %i.jf, label %middle.block587, label %vector.body583, !llvm.loop !66

middle.block587:                                  ; preds = %vector.body583
  %cmp.n588 = icmp eq i64 %n.vec566, %wide.trip.count.i
  br i1 %cmp.n588, label %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit, label %._crit_edge.i.preheader599

._crit_edge.i.preheader599:                       ; preds = %._crit_edge.i.preheader, %middle.block587
  %indvars.iv.1.i.ph = phi i64 [ 0, %._crit_edge.i.preheader ], [ %n.vec566, %middle.block587 ]
  %i.jg = insertelement <2 x double> poison, double %i.hb, i64 1
  %i.jh = insertelement <2 x double> %i.gr, double %i.hc, i64 1
  %i.ji = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %i.hd, i64 1
  %i.jk = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.jl = insertelement <2 x double> %i.jk, double %i.gu, i64 1
  br label %._crit_edge.i

_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit: ; preds = %._crit_edge.i, %middle.block587, %bb.a
  %i.jm = fneg <2 x double> %i.dz                 ; 2 uses
  %i.jn = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = fmul <2 x double> %i.jn, %i.jm
  %i.jp = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.jq, <2 x double> %i.jo) ; 2 uses
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jt = fdiv double %sqrt.i236, %i.el           ; 2 uses
  %i.ju = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.jv = insertelement <2 x double> %i.ju, double %i.r, i64 1
  %i.jw = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x double> %i.jv, %i.jx
  %i.jz = fmul double %i.t, %i.jt
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !9 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !9 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !9 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !9
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  br i1 %i.ha, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN12_GLOBAL__N_118polishQuarticRootsEPKdPdi.exit
  %i.kk = extractelement <2 x double> %i.dz, i64 0
  %shift596 = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop597 = fmul <2 x double> %i.cd, %shift596
  %i.kl = extractelement <2 x double> %foldExtExtBinop597, i64 0
  %i.km = call double @llvm.fmuladd.f64(double %i.cf, double %i.kk, double %i.kl)
  %i.kn = fcmp ogt double %i.el, 0.000000e+00
  %wide.trip.count = zext nneg i32 %i.gz to i64
  %i.ko = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = shufflevector <2 x double> %i.u, <2 x double> %i.v, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.kr = insertelement <2 x double> poison, double %i.kb, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = extractelement <2 x double> %i.v, i64 0
  %i.kw = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = fneg <2 x double> %i.js
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> %i.jr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.lb = insertelement <3 x double> poison, double %i.km, i64 0
  %i.lc = shufflevector <3 x double> %i.lb, <3 x double> poison, <3 x i32> zeroinitializer
  %i.ld = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.le = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.lf = insertelement <3 x double> poison, double %i.ea, i64 0
  %i.lg = shufflevector <3 x double> %i.lf, <3 x double> poison, <3 x i32> zeroinitializer
  %i.lh = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = insertelement <2 x double> poison, double %i.g, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = extractelement <2 x double> %i.ek, i64 0
  %i.ln = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.lo = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fs, i64 1
  %i.lp = shufflevector <2 x double> %i.ck, <2 x double> %i.cg, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.lq = shufflevector <2 x double> %i.le, <2 x double> %i.fx, <2 x i32> <i32 0, i32 2>
  %32 = shufflevector <2 x double> %i.ld, <2 x double> %27, <2 x i32> <i32 0, i32 2>
  %i.lr = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ls = shufflevector <2 x double> %i.cg, <2 x double> poison, <3 x i32> zeroinitializer
  %i.lt = insertelement <2 x double> %i.ln, double %i.ey, i64 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.f
  %i.lu = icmp sgt i32 %.1, 1
  %or.cond = select i1 %5, i1 %i.lu, i1 false
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %wide.trip.count542 = zext nneg i32 %.1 to i64
  br label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.0234531 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !9 ; 5 uses
  %i.lx = call noundef double @llvm.fabs.f64(double %i.lw)
  %i.ly = fcmp ogt double %i.lx, 1.000000e+00
  br i1 %i.ly, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.lz = fneg double %i.lw
  %i.ma = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %i.mb, <2 x double> %i.lq)
  %i.md = insertelement <2 x double> %12, double %i.lz, i64 0
  %i.me = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> %i.mb, <2 x double> %i.lo) ; 2 uses
  %i.mf = extractelement <2 x double> %i.me, i64 0
  %i.mg = call double @sqrt(double noundef %i.mf) #17 ; 2 uses
  %i.mh = fneg double %i.mg
  %i.mi = select i1 %i.kn, double %i.mg, double %i.mh ; 4 uses
  %i.mj = extractelement <2 x double> %i.me, i64 1
  %i.mk = call double @llvm.fmuladd.f64(double %i.mj, double %i.lw, double %7)
  %i.ml = fdiv double %i.mi, %i.mk
  %i.mm = fneg double %i.mi                       ; 2 uses
  %i.mn = fmul <2 x double> %i.dz, %i.mb
  %i.mo = fmul double %i.jz, %i.mi
  %i.mp = sext i32 %.0234531 to i64               ; 3 uses
  %i.mq = getelementptr inbounds [24 x i8], ptr %4, i64 %i.mp ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 16 ; 2 uses
  %i.ms = getelementptr inbounds [72 x i8], ptr %3, i64 %i.mp ; 8 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> zeroinitializer, <2 x double> %i.mn)
  %i.mx = insertelement <2 x double> poison, double %i.mi, i64 0 ; 2 uses
  %i.my = insertelement <2 x double> %i.mx, double %i.mm, i64 1
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.my, <2 x double> %i.mw) ; 3 uses
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.nb = fmul <2 x double> %i.lp, %i.na
  %i.nc = fmul <2 x double> %i.lr, %i.mz
  %i.nd = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ne = fmul <2 x double> %i.lp, %i.nd
  %i.nf = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.ng = shufflevector <2 x double> %i.nf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nh = fmul <2 x double> %i.mc, %i.ng          ; 5 uses
  %i.ni = extractelement <2 x double> %i.nh, i64 1
  %i.nj = fneg double %i.ni                       ; 2 uses
  %i.nk = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nl = fmul <2 x double> %i.nk, %i.nh          ; 3 uses
  %i.nm = fmul <2 x double> %i.mb, %i.nh          ; 3 uses
  %i.nn = shufflevector <2 x double> %i.nl, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.no = insertelement <3 x double> %i.nn, double %i.lw, i64 2
  %i.np = fmul <3 x double> %i.lg, %i.no
  %i.nq = shufflevector <2 x double> %i.nh, <2 x double> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.nr = insertelement <3 x double> %i.nq, double 0.000000e+00, i64 2
  %i.ns = insertelement <3 x double> %i.nr, double %i.nj, i64 0
  %i.nt = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.ls, <3 x double> %i.ns, <3 x double> %i.np)
  %i.nu = shufflevector <2 x double> %i.nm, <2 x double> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.nv = insertelement <3 x double> %i.nu, double %i.mm, i64 2
  %i.nw = call <3 x double> @llvm.fmuladd.v3f64(<3 x double> %i.lc, <3 x double> %i.nv, <3 x double> %i.nt) ; 6 uses
  %i.nx = shufflevector <3 x double> %i.nw, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ny = fmul <2 x double> %i.ck, %i.nx
  %i.nz = shufflevector <3 x double> %i.nw, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nz, <2 x double> %i.bb, <2 x double> %i.ny)
  %i.ob = shufflevector <3 x double> %i.nw, <3 x double> poison, <2 x i32> zeroinitializer
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.lt, <2 x double> %i.oa) ; 4 uses
  %i.od = extractelement <3 x double> %i.nw, i64 2
  %i.oe = fmul double %i.eh, %i.od
  %i.of = extractelement <3 x double> %i.nw, i64 1
  %i.og = call double @llvm.fmuladd.f64(double %i.of, double %i.kv, double %i.oe)
  %i.oh = extractelement <3 x double> %i.nw, i64 0
  %i.oi = call double @llvm.fmuladd.f64(double %i.oh, double %i.lm, double %i.og) ; 3 uses
  %i.oj = fmul <2 x double> %i.jy, %i.nk
  %i.ok = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ol = fmul <2 x double> %i.dz, %i.ok
  %i.om = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.on = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.om, <2 x double> %i.ol)
  %i.oo = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.oo, <2 x double> %i.on) ; 3 uses
  %i.oq = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.or = fmul <2 x double> %i.dz, %i.oq
  %i.os = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ou = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.ot, <2 x double> %i.or)
  %i.ov = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ow = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.ov, <2 x double> %i.ou) ; 3 uses
  %i.ox = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.kq, <2 x double> %i.nb)
  %i.oz = shufflevector <2 x double> %i.ow, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oz, <2 x double> %i.ep, <2 x double> %i.oy) ; 4 uses
  %i.pb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.ky, <2 x double> %i.nc)
  %i.pc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.kx, <2 x double> %i.pb) ; 5 uses
  %i.pd = shufflevector <2 x double> %i.op, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.kq, <2 x double> %i.ne)
  %i.pf = shufflevector <2 x double> %i.ow, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.ep, <2 x double> %i.pe) ; 4 uses
  %i.ph = extractelement <2 x double> %i.pg, i64 0
  %i.pi = extractelement <2 x double> %i.pa, i64 0
  %i.pj = shufflevector <2 x double> %i.pg, <2 x double> %i.pc, <2 x i32> <i32 0, i32 2>
  %i.pk = fmul <2 x double> %i.ll, %i.pj
  %i.pl = shufflevector <2 x double> %i.pa, <2 x double> %i.pc, <2 x i32> <i32 0, i32 3>
  %i.pm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.pl, <2 x double> %i.pk)
  %i.pn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.oc, <2 x double> %i.pm)
  %i.po = extractelement <2 x double> %i.pg, i64 1 ; 2 uses
  %i.pp = fmul double %i.i, %i.po
  %i.pq = extractelement <2 x double> %i.pa, i64 1 ; 2 uses
  %i.pr = call double @llvm.fmuladd.f64(double %i.g, double %i.pq, double %i.pp)
  %i.ps = call double @llvm.fmuladd.f64(double %i.k, double %i.oi, double %i.pr)
  %i.pt = fsub <2 x double> %i.oj, %i.pn
  store <2 x double> %i.pt, ptr %i.mq, align 8, !tbaa !9
  %i.pu = fsub double %i.mo, %i.ps
  store double %i.pu, ptr %i.mr, align 8, !tbaa !9
  store double %i.pi, ptr %i.ms, align 8, !tbaa !9
  store double %i.pq, ptr %i.mu, align 8, !tbaa !9
  store double %i.ph, ptr %i.mv, align 8, !tbaa !9
  %i.pv = shufflevector <2 x double> %i.pc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.pv, ptr %i.mt, align 8, !tbaa !9
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ms, i64 56
  store double %i.po, ptr %i.pw, align 8, !tbaa !9
  %i.px = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.py = extractelement <2 x double> %i.oc, i64 0
  store double %i.py, ptr %i.px, align 8, !tbaa !9
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ms, i64 40
  %i.qa = extractelement <2 x double> %i.oc, i64 1 ; 2 uses
  store double %i.qa, ptr %i.pz, align 8, !tbaa !9
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  store double %i.oi, ptr %i.qb, align 8, !tbaa !9
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.qc = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.qd = fmul <2 x double> %i.ku, %i.pg
  %i.qe = load double, ptr %i.mq, align 8, !tbaa !9
  %i.qf = extractelement <2 x double> %i.pc, i64 0
  %i.qg = fmul double %i.kd, %i.qf
  %i.qh = extractelement <2 x double> %i.pc, i64 1
  %i.qi = call double @llvm.fmuladd.f64(double %i.qh, double %i.kb, double %i.qg)
  %i.qj = call double @llvm.fmuladd.f64(double %i.qa, double %i.kf, double %i.qi)
  %i.qk = load double, ptr %i.qc, align 8, !tbaa !9
  %i.ql = fadd double %i.qj, %i.qk
  %i.qm = load double, ptr %i.mr, align 8, !tbaa !9
  %i.qn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> %i.ks, <2 x double> %i.qd)
  %i.qo = insertelement <2 x double> %i.oc, double %i.oi, i64 1
  %i.qp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.kp, <2 x double> %i.qn)
  %i.qq = insertelement <2 x double> poison, double %i.qe, i64 0
  %i.qr = insertelement <2 x double> %i.qq, double %i.qm, i64 1
  %i.qs = fadd <2 x double> %i.qp, %i.qr          ; 2 uses
  %i.qt = insertelement <2 x double> %i.qs, double %i.ql, i64 1
  %i.qu = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qv = fdiv <2 x double> %i.qt, %i.qu          ; 2 uses
  %i.qw = extractelement <2 x double> %i.qv, i64 0
  %i.qx = fsub double %i.qw, %i.kh                ; 2 uses
  %i.qy = extractelement <2 x double> %i.qv, i64 1
  %i.qz = fsub double %i.qy, %i.kj                ; 2 uses
  %i.ra = fmul double %i.qz, %i.qz
  %i.rb = call double @llvm.fmuladd.f64(double %i.qx, double %i.qx, double %i.ra)
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.mp
  store double %i.rb, ptr %i.rc, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.rd = add nsw i32 %.0234531, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i32 [ %i.rd, %bb.e ], [ %.0234531, %bb.b ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !67

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %indvars.iv536 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next537, %.critedge ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv536
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.h
  %indvars.iv538 = phi i64 [ %indvars.iv536, %.preheader ], [ %indvars.iv.next539, %bb.h ] ; 5 uses
  %indvars.iv.next539 = add nsw i64 %indvars.iv538, -1 ; 4 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next539 ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !9 ; 2 uses
  %i.rg = fcmp ogt double %i.rf, %.pre
  br i1 %i.rg, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.g
  %indvars.iv.next537 = add nuw nsw i64 %indvars.iv536, 1 ; 2 uses
  %exitcond543.not = icmp eq i64 %indvars.iv.next537, %wide.trip.count542
  br i1 %exitcond543.not, label %.loopexit, label %.preheader, !llvm.loop !68

bb.h:                                             ; preds = %bb.g
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv538
  store double %i.rf, ptr %i.rh, align 8, !tbaa !9
  store double %.pre, ptr %i.re, align 8, !tbaa !9
  %i.ri = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv538 ; 7 uses
  %i.rj = getelementptr inbounds nuw [72 x i8], ptr %3, i64 %indvars.iv.next539 ; 9 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !9
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rm = load <2 x double>, ptr %i.ri, align 8, !tbaa !9
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rr = load <2 x double>, ptr %i.rn, align 8, !tbaa !9
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %i.ru = load <2 x double>, ptr %i.rs, align 8, !tbaa !9
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ri, i64 48
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rj, i64 56
  %i.rz = load <2 x double>, ptr %i.rv, align 8, !tbaa !9
  %i.sa = load <4 x double>, ptr %i.rq, align 8, !tbaa !9
  store <2 x double> %i.ru, ptr %i.rt, align 8, !tbaa !9
  store <4 x double> %i.sa, ptr %i.rp, align 8, !tbaa !9
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ri, i64 64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rj, i64 64
  %i.sd = load double, ptr %i.sb, align 8, !tbaa !9
  %i.se = load <2 x double>, ptr %i.ry, align 8, !tbaa !9
  store <2 x double> %i.rz, ptr %i.rw, align 8, !tbaa !9
  store <2 x double> %i.se, ptr %i.rx, align 8, !tbaa !9
  %i.sf = load <2 x double>, ptr %i.rl, align 8, !tbaa !9
  store <2 x double> %i.rm, ptr %i.rj, align 8, !tbaa !9
end_hunk_0
