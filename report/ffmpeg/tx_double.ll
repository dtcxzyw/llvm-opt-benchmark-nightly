Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_double?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@ff_tx_fft16_ns_double_c:bb.a
  %i.aw = shufflevector <4 x double> %i.as, <4 x double> %i.at, <2 x i32> <i32 0, i32 7>
  %i.ax = fsub nsz <2 x double> %i.av, %i.aw      ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  store double %i.ay, ptr %i.e, align 8, !tbaa !29
  %i.az = extractelement <2 x double> %i.ax, i64 1
  store double %i.az, ptr %i.h, align 8, !tbaa !30
  %i.ba = shufflevector <4 x double> %i.aj, <4 x double> %i.ak, <2 x i32> <i32 1, i32 6>
  %i.bb = shufflevector <4 x double> %i.as, <4 x double> %i.at, <2 x i32> <i32 1, i32 6>
  %i.bc = fsub nsz <2 x double> %i.ba, %i.bb      ; 2 uses
  store <2 x double> %i.bc, ptr %i.k, align 8, !tbaa !24
  %i.bd = fadd nsz <4 x double> %i.al, %i.au      ; 5 uses
  store <4 x double> %i.bd, ptr %i.a, align 8, !tbaa !24
  %i.be = load double, ptr %i.n, align 8, !tbaa !29 ; 2 uses
  %i.bf = load double, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.bg = fsub nsz double %i.be, %i.bf            ; 2 uses
  %i.bh = fadd nsz double %i.be, %i.bf            ; 2 uses
  %i.bi = load double, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %i.bj = load double, ptr %i.q, align 8, !tbaa !29 ; 2 uses
  %i.bk = fsub nsz double %i.bi, %i.bj            ; 2 uses
  %i.bl = fadd nsz double %i.bi, %i.bj            ; 2 uses
  %i.bm = fsub nsz double %i.bh, %i.bl
  %i.bn = fadd nsz double %i.bh, %i.bl            ; 2 uses
  %i.bo = load double, ptr %i.s, align 8, !tbaa !30 ; 2 uses
  %i.bp = load double, ptr %i.t, align 8, !tbaa !30 ; 2 uses
  %i.bq = fsub nsz double %i.bo, %i.bp            ; 2 uses
  %i.br = fadd nsz double %i.bo, %i.bp            ; 2 uses
  %i.bs = load double, ptr %i.u, align 8, !tbaa !30 ; 2 uses
  %i.bt = load double, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.bu = fsub nsz double %i.bs, %i.bt            ; 2 uses
  %i.bv = fadd nsz double %i.bs, %i.bt            ; 2 uses
  %i.bw = fsub nsz double %i.bq, %i.bk
  store double %i.bw, ptr %i.x, align 8, !tbaa !30
  %i.bx = fadd nsz double %i.bk, %i.bq
  %i.by = fsub nsz double %i.bg, %i.bu
  store double %i.by, ptr %i.w, align 8, !tbaa !29
  %i.bz = fadd nsz double %i.bg, %i.bu
  %i.ca = fsub nsz double %i.br, %i.bv
  %i.cb = fadd nsz double %i.br, %i.bv            ; 2 uses
  %i.cc = load double, ptr %i.e, align 8, !tbaa !29
  %i.cd = extractelement <3 x double> %i.ad, i64 1 ; 2 uses
  %i.ce = fneg nsz double %i.cd
  %i.cf = fmul nsz double %i.cd, %i.ca            ; 2 uses
  %i.cg = fneg nsz double %i.cf
  %i.ch = load <2 x double>, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.ci = extractelement <3 x double> %i.ad, i64 0
  %i.cj = fneg nsz double %i.ci                   ; 2 uses
  %i.ck = shufflevector <2 x double> %i.bc, <2 x double> %i.ch, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.cl = fmul nsz <4 x double> %i.ae, %i.ck
  %i.cm = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cn = insertelement <2 x double> %i.cm, double %i.cc, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cp = shufflevector <3 x double> %i.ad, <3 x double> poison, <4 x i32> <i32 1, i32 poison, i32 2, i32 poison> ; 2 uses
  %i.cq = insertelement <4 x double> %i.cp, double %i.ce, i64 1
  %i.cr = insertelement <4 x double> %i.cq, double %i.cj, i64 3
  %i.cs = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.co, <4 x double> %i.cr, <4 x double> %i.cl) ; 3 uses
  %i.ct = load double, ptr %i.w, align 8, !tbaa !29
  %i.cu = load double, ptr %i.x, align 8, !tbaa !30 ; 2 uses
  %i.cv = fmul nsz double %i.cu, %i.cj
  %i.cw = fmul nsz double %i.ac, %i.cu
  %i.cx = insertelement <4 x double> poison, double %i.bm, i64 0
  %i.cy = insertelement <4 x double> %i.cx, double %i.ct, i64 2
  %i.cz = shufflevector <4 x double> %i.cy, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.da = shufflevector <3 x double> %i.ad, <3 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.db = shufflevector <4 x double> %i.cp, <4 x double> %i.da, <4 x i32> <i32 0, i32 0, i32 2, i32 4>
  %i.dc = insertelement <4 x double> poison, double %i.cg, i64 0
  %i.dd = insertelement <4 x double> %i.dc, double %i.cf, i64 1
  %i.de = insertelement <4 x double> %i.dd, double %i.cv, i64 2
  %i.df = insertelement <4 x double> %i.de, double %i.cw, i64 3
  %i.dg = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cz, <4 x double> %i.db, <4 x double> %i.df) ; 3 uses
  %i.dh = load <4 x double>, ptr %i.aa, align 8, !tbaa !24 ; 4 uses
  %i.di = fadd nsz <4 x double> %i.cs, %i.dg      ; 4 uses
  %i.dj = extractelement <4 x double> %i.dh, i64 1
  %i.dk = extractelement <4 x double> %i.di, i64 1
  %i.dl = fsub nsz double %i.dj, %i.dk
  store double %i.dl, ptr %i.k, align 8, !tbaa !30
  %i.dm = load double, ptr %i.i, align 8, !tbaa !29
  %i.dn = load double, ptr %i.j, align 8, !tbaa !30
  %i.do = fneg nsz double %i.ac
  %i.dp = shufflevector <3 x double> %i.ad, <3 x double> poison, <2 x i32> <i32 2, i32 0>
  %i.dq = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = fmul nsz <2 x double> %i.dp, %i.dr
  %i.dt = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <3 x double> %i.ad, <3 x double> poison, <2 x i32> <i32 0, i32 poison>
  %i.dw = insertelement <2 x double> %i.dv, double %i.do, i64 1 ; 2 uses
  %i.dx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dw, <2 x double> %i.ds) ; 3 uses
  %i.dy = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = fmul nsz <2 x double> %i.dz, %i.ea
  %i.ec = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <3 x double> %i.ad, <3 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.ef = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.eb) ; 3 uses
  %i.eg = load <4 x double>, ptr %1, align 8, !tbaa !24 ; 4 uses
  %i.eh = insertelement <4 x double> %i.bd, double %i.cb, i64 1
  %i.ei = shufflevector <2 x double> %i.dx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x double> %i.eh, <4 x double> %i.ei, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ek = insertelement <4 x double> %i.bd, double %i.bn, i64 0
  %i.el = shufflevector <2 x double> %i.ef, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.em = shufflevector <4 x double> %i.ek, <4 x double> %i.el, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.en = fadd nsz <4 x double> %i.ej, %i.em      ; 4 uses
  %i.eo = extractelement <4 x double> %i.en, i64 0
  %i.ep = extractelement <4 x double> %i.eg, i64 0
  %i.eq = fsub nsz double %i.ep, %i.eo
  store double %i.eq, ptr %i.a, align 8, !tbaa !29
  %i.er = shufflevector <4 x double> %i.eg, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.es = shufflevector <4 x double> %i.en, <4 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.et = fsub nsz <2 x double> %i.er, %i.es
  store <2 x double> %i.et, ptr %i.l, align 8, !tbaa !24
  %i.eu = load <4 x double>, ptr %i.z, align 8, !tbaa !24 ; 3 uses
  %i.ev = shufflevector <2 x double> %i.dx, <2 x double> %i.ef, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ew = shufflevector <4 x double> %i.ev, <4 x double> %i.bd, <4 x i32> <i32 5, i32 poison, i32 0, i32 1>
  %i.ex = insertelement <4 x double> %i.ew, double %i.bn, i64 1
  %i.ey = shufflevector <2 x double> %i.ef, <2 x double> %i.dx, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.ez = insertelement <4 x double> %i.ey, double %i.cb, i64 0
  %i.fa = shufflevector <4 x double> %i.ez, <4 x double> %i.bd, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.fb = fsub nsz <4 x double> %i.ex, %i.fa      ; 3 uses
  %i.fc = shufflevector <4 x double> %i.eu, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.fd = shufflevector <4 x double> %i.fb, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.fe = fsub nsz <2 x double> %i.fc, %i.fd
  store <2 x double> %i.fe, ptr %i.m, align 8, !tbaa !24
  %i.ff = shufflevector <4 x double> %i.eu, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.fg = shufflevector <4 x double> %i.fb, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.fh = fsub nsz <2 x double> %i.ff, %i.fg
  store <2 x double> %i.fh, ptr %i.y, align 8, !tbaa !24
  %i.fi = fadd nsz <4 x double> %i.eu, %i.fb
  store <4 x double> %i.fi, ptr %i.z, align 8, !tbaa !24
  %i.fj = shufflevector <4 x double> %i.eg, <4 x double> %i.dh, <2 x i32> <i32 3, i32 4>
  %i.fk = shufflevector <4 x double> %i.en, <4 x double> %i.di, <2 x i32> <i32 3, i32 4>
  %i.fl = fsub nsz <2 x double> %i.fj, %i.fk
  store <2 x double> %i.fl, ptr %i.j, align 8, !tbaa !24
  %i.fm = fadd nsz <4 x double> %i.en, %i.eg
  store <4 x double> %i.fm, ptr %1, align 8, !tbaa !24
  %i.fn = load <4 x double>, ptr %i.ab, align 8, !tbaa !24 ; 3 uses
  %i.fo = shufflevector <4 x double> %i.cs, <4 x double> %i.dg, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.fp = shufflevector <4 x double> %i.dg, <4 x double> %i.cs, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.fq = fsub nsz <4 x double> %i.fo, %i.fp      ; 3 uses
  %i.fr = shufflevector <4 x double> %i.fn, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.fs = shufflevector <4 x double> %i.fq, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ft = fsub nsz <2 x double> %i.fr, %i.fs
  store <2 x double> %i.ft, ptr %i.r, align 8, !tbaa !24
  %i.fu = shufflevector <4 x double> %i.fn, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.fv = shufflevector <4 x double> %i.fq, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.fw = fsub nsz <2 x double> %i.fu, %i.fv
  store <2 x double> %i.fw, ptr %i.w, align 8, !tbaa !24
  %i.fx = fadd nsz <4 x double> %i.fn, %i.fq
  store <4 x double> %i.fx, ptr %i.ab, align 8, !tbaa !24
  %i.fy = shufflevector <4 x double> %i.dh, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.fz = shufflevector <4 x double> %i.di, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ga = fsub nsz <2 x double> %i.fy, %i.fz
  store <2 x double> %i.ga, ptr %i.g, align 8, !tbaa !24
  %i.gb = fadd nsz <4 x double> %i.dh, %i.di
  store <4 x double> %i.gb, ptr %i.aa, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft32_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 256
  tail call void @ff_tx_fft8_ns_double_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 384
  tail call void @ff_tx_fft8_ns_double_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_double, i32 noundef 4)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ff_tx_fft_sr_combine_double_c(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = shl nsw i32 %2, 1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.b
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -56
  %i.f = mul nuw nsw i32 %2, 6
  %i.g = shl nuw nsw i32 %2, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0560 = phi i32 [ 0, %.lr.ph ], [ %i.lz, %bb.b ]
  %.0554559 = phi ptr [ %i.e, %.lr.ph ], [ %i.ly, %bb.b ] ; 9 uses
  %.0555558 = phi ptr [ %0, %.lr.ph ], [ %i.lw, %bb.b ] ; 13 uses
  %.0556557 = phi ptr [ %1, %.lr.ph ], [ %i.lx, %bb.b ] ; 9 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0555558, i64 %i.h ; 17 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !29
  %i.l = load double, ptr %.0556557, align 8, !tbaa !24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load double, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %.0554559, i64 56
  %i.p = load double, ptr %i.o, align 8, !tbaa !24 ; 3 uses
  %i.q = fneg nsz double %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.0555558, i64 %i.i ; 17 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load double, ptr %i.t, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.0555558, i64 %i.b ; 9 uses
  %i.w = insertelement <2 x double> poison, double %i.p, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.l, i64 1
  %i.y = insertelement <2 x double> poison, double %i.n, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fmul nsz <2 x double> %i.x, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.q, i64 1 ; 2 uses
  %i.af = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ae, <2 x double> %i.aa) ; 3 uses
  %i.ag = insertelement <2 x double> poison, double %i.u, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul nsz <2 x double> %i.ah, %i.ai
  %i.ak = insertelement <2 x double> poison, double %i.s, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %i.l, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.p, i64 1
  %i.ao = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.aj) ; 3 uses
  %i.ap = load <2 x double>, ptr %.0555558, align 8, !tbaa !24 ; 2 uses
  %i.aq = fadd nsz <2 x double> %i.af, %i.ao      ; 2 uses
  %3 = load <2 x double>, ptr %i.v, align 8, !tbaa !24 ; 2 uses
  %i.ar = shufflevector <2 x double> %i.af, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2>
  %4 = shufflevector <2 x double> %i.ao, <2 x double> %i.af, <2 x i32> <i32 1, i32 2>
  %i.as = fsub nsz <2 x double> %i.ar, %4         ; 2 uses
  %i.at = fsub nsz <2 x double> %3, %i.as
  store <2 x double> %i.at, ptr %i.r, align 8, !tbaa !24
  %i.au = fadd nsz <2 x double> %3, %i.as
  %5 = fsub nsz <2 x double> %i.ap, %i.aq
  store <2 x double> %5, ptr %i.j, align 8, !tbaa !24
  store <2 x double> %i.au, ptr %i.v, align 8, !tbaa !24
  %i.av = fadd nsz <2 x double> %i.ap, %i.aq
  store <2 x double> %i.av, ptr %.0555558, align 8, !tbaa !24
  %i.aw = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %.0556557, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !24 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.j, i64 40
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %.0554559, i64 40
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24 ; 3 uses
  %i.be = fneg nsz double %i.bd
  %i.bf = getelementptr i8, ptr %i.r, i64 32      ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !29
  %i.bh = getelementptr i8, ptr %i.r, i64 40
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %.0555558, i64 32 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.v, i64 32      ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.az, i64 1
  %i.bn = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul nsz <2 x double> %i.bm, %i.bo
  %i.bq = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.be, i64 1 ; 2 uses
  %i.bu = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bt, <2 x double> %i.bp) ; 3 uses
  %i.bv = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.by = fmul nsz <2 x double> %i.bw, %i.bx
  %i.bz = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x double> poison, double %i.az, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bd, i64 1
  %i.cd = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> %i.by) ; 3 uses
  %i.ce = load <2 x double>, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %i.cf = fadd nsz <2 x double> %i.bu, %i.cd      ; 2 uses
  %6 = load <2 x double>, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %i.cg = shufflevector <2 x double> %i.bu, <2 x double> %i.cd, <2 x i32> <i32 1, i32 2>
  %7 = shufflevector <2 x double> %i.cd, <2 x double> %i.bu, <2 x i32> <i32 1, i32 2>
  %i.ch = fsub nsz <2 x double> %i.cg, %7         ; 2 uses
  %i.ci = fsub nsz <2 x double> %6, %i.ch
  store <2 x double> %i.ci, ptr %i.bf, align 8, !tbaa !24
  %i.cj = fadd nsz <2 x double> %6, %i.ch
  %8 = fsub nsz <2 x double> %i.ce, %i.cf
  store <2 x double> %8, ptr %i.aw, align 8, !tbaa !24
  store <2 x double> %i.cj, ptr %i.bk, align 8, !tbaa !24
  %i.ck = fadd nsz <2 x double> %i.ce, %i.cf
  store <2 x double> %i.ck, ptr %i.bj, align 8, !tbaa !24
  %i.cl = getelementptr i8, ptr %i.j, i64 64      ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %.0556557, i64 32
  %i.co = load double, ptr %i.cn, align 8, !tbaa !24 ; 3 uses
  %i.cp = getelementptr i8, ptr %i.j, i64 72
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !30
  %i.cr = getelementptr inbounds nuw i8, ptr %.0554559, i64 24
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !24 ; 3 uses
  %i.ct = fneg nsz double %i.cs
  %i.cu = getelementptr i8, ptr %i.r, i64 64      ; 2 uses
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !29
  %i.cw = getelementptr i8, ptr %i.r, i64 72
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %.0555558, i64 64 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.v, i64 64      ; 2 uses
  %i.da = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.co, i64 1
  %i.dc = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = fmul nsz <2 x double> %i.db, %i.dd
  %i.df = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = insertelement <2 x double> poison, double %i.co, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.ct, i64 1 ; 2 uses
  %i.dj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.di, <2 x double> %i.de) ; 3 uses
  %i.dk = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = fmul nsz <2 x double> %i.dl, %i.dm
  %i.do = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = insertelement <2 x double> poison, double %i.co, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.cs, i64 1
  %i.ds = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dr, <2 x double> %i.dn) ; 3 uses
  %i.dt = load <2 x double>, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.du = fadd nsz <2 x double> %i.dj, %i.ds      ; 2 uses
  %9 = load <2 x double>, ptr %i.cz, align 8, !tbaa !24 ; 2 uses
  %i.dv = shufflevector <2 x double> %i.dj, <2 x double> %i.ds, <2 x i32> <i32 1, i32 2>
  %10 = shufflevector <2 x double> %i.ds, <2 x double> %i.dj, <2 x i32> <i32 1, i32 2>
  %i.dw = fsub nsz <2 x double> %i.dv, %10        ; 2 uses
  %i.dx = fsub nsz <2 x double> %9, %i.dw
  store <2 x double> %i.dx, ptr %i.cu, align 8, !tbaa !24
  %i.dy = fadd nsz <2 x double> %9, %i.dw
  %11 = fsub nsz <2 x double> %i.dt, %i.du
  store <2 x double> %11, ptr %i.cl, align 8, !tbaa !24
  store <2 x double> %i.dy, ptr %i.cz, align 8, !tbaa !24
  %i.dz = fadd nsz <2 x double> %i.dt, %i.du
  store <2 x double> %i.dz, ptr %i.cy, align 8, !tbaa !24
  %i.ea = getelementptr i8, ptr %i.j, i64 96      ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !29
  %i.ec = getelementptr inbounds nuw i8, ptr %.0556557, i64 48
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !24 ; 3 uses
  %i.ee = getelementptr i8, ptr %i.j, i64 104
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %.0554559, i64 8
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24 ; 3 uses
  %i.ei = fneg nsz double %i.eh
  %i.ej = getelementptr i8, ptr %i.r, i64 96      ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !29
  %i.el = getelementptr i8, ptr %i.r, i64 104
  %i.em = load double, ptr %i.el, align 8, !tbaa !30
  %i.en = getelementptr inbounds nuw i8, ptr %.0555558, i64 96 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.v, i64 96      ; 2 uses
  %i.ep = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.ed, i64 1
  %i.er = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul nsz <2 x double> %i.eq, %i.es
  %i.eu = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.ei, i64 1 ; 2 uses
  %i.ey = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.ex, <2 x double> %i.et) ; 3 uses
  %i.ez = insertelement <2 x double> poison, double %i.em, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fc = fmul nsz <2 x double> %i.fa, %i.fb
  %i.fd = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.eh, i64 1
  %i.fh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.fg, <2 x double> %i.fc) ; 3 uses
  %i.fi = load <2 x double>, ptr %i.en, align 8, !tbaa !24 ; 2 uses
  %i.fj = fadd nsz <2 x double> %i.ey, %i.fh      ; 2 uses
  %12 = load <2 x double>, ptr %i.eo, align 8, !tbaa !24 ; 2 uses
  %i.fk = shufflevector <2 x double> %i.ey, <2 x double> %i.fh, <2 x i32> <i32 1, i32 2>
  %13 = shufflevector <2 x double> %i.fh, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.fl = fsub nsz <2 x double> %i.fk, %13        ; 2 uses
  %i.fm = fsub nsz <2 x double> %12, %i.fl
  store <2 x double> %i.fm, ptr %i.ej, align 8, !tbaa !24
  %i.fn = fadd nsz <2 x double> %12, %i.fl
  %14 = fsub nsz <2 x double> %i.fi, %i.fj
  store <2 x double> %14, ptr %i.ea, align 8, !tbaa !24
  store <2 x double> %i.fn, ptr %i.eo, align 8, !tbaa !24
  %i.fo = fadd nsz <2 x double> %i.fi, %i.fj
  store <2 x double> %i.fo, ptr %i.en, align 8, !tbaa !24
  %i.fp = getelementptr i8, ptr %i.j, i64 16      ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !29
  %i.fr = getelementptr inbounds nuw i8, ptr %.0556557, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24 ; 3 uses
  %i.ft = getelementptr i8, ptr %i.j, i64 24
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !30
  %i.fv = getelementptr inbounds nuw i8, ptr %.0554559, i64 48
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24 ; 3 uses
  %i.fx = fneg nsz double %i.fw
  %i.fy = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !29
  %i.ga = getelementptr i8, ptr %i.r, i64 24
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !30
  %i.gc = getelementptr inbounds nuw i8, ptr %.0555558, i64 16 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.ge = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fs, i64 1
  %i.gg = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = fmul nsz <2 x double> %i.gf, %i.gh
  %i.gj = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.gk = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gl = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.fx, i64 1 ; 2 uses
  %i.gn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> %i.gm, <2 x double> %i.gi) ; 3 uses
  %i.go = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gq = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = fmul nsz <2 x double> %i.gp, %i.gq
  %i.gs = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.fw, i64 1
  %i.gw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %i.gv, <2 x double> %i.gr) ; 3 uses
  %i.gx = load <2 x double>, ptr %i.gc, align 8, !tbaa !24 ; 2 uses
  %i.gy = fadd nsz <2 x double> %i.gn, %i.gw      ; 2 uses
  %15 = load <2 x double>, ptr %i.gd, align 8, !tbaa !24 ; 2 uses
  %i.gz = shufflevector <2 x double> %i.gn, <2 x double> %i.gw, <2 x i32> <i32 1, i32 2>
  %16 = shufflevector <2 x double> %i.gw, <2 x double> %i.gn, <2 x i32> <i32 1, i32 2>
  %i.ha = fsub nsz <2 x double> %i.gz, %16        ; 2 uses
  %i.hb = fsub nsz <2 x double> %15, %i.ha
  store <2 x double> %i.hb, ptr %i.fy, align 8, !tbaa !24
  %i.hc = fadd nsz <2 x double> %15, %i.ha
  %17 = fsub nsz <2 x double> %i.gx, %i.gy
  store <2 x double> %17, ptr %i.fp, align 8, !tbaa !24
  store <2 x double> %i.hc, ptr %i.gd, align 8, !tbaa !24
  %i.hd = fadd nsz <2 x double> %i.gx, %i.gy
  store <2 x double> %i.hd, ptr %i.gc, align 8, !tbaa !24
  %i.he = getelementptr i8, ptr %i.j, i64 48      ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !29
  %i.hg = getelementptr inbounds nuw i8, ptr %.0556557, i64 24
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !24 ; 3 uses
  %i.hi = getelementptr i8, ptr %i.j, i64 56
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !30
  %i.hk = getelementptr inbounds nuw i8, ptr %.0554559, i64 32
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !24 ; 3 uses
  %i.hm = fneg nsz double %i.hl
  %i.hn = getelementptr i8, ptr %i.r, i64 48      ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !29
  %i.hp = getelementptr i8, ptr %i.r, i64 56
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !30
  %i.hr = getelementptr inbounds nuw i8, ptr %.0555558, i64 48 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.v, i64 48      ; 2 uses
  %i.ht = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hh, i64 1
  %i.hv = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul nsz <2 x double> %i.hu, %i.hw
  %i.hy = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %i.hm, i64 1 ; 2 uses
  %i.ic = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hz, <2 x double> %i.ib, <2 x double> %i.hx) ; 3 uses
  %i.id = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ig = fmul nsz <2 x double> %i.ie, %i.if
  %i.ih = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.ik = insertelement <2 x double> %i.ij, double %i.hl, i64 1
  %i.il = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.ik, <2 x double> %i.ig) ; 3 uses
  %i.im = load <2 x double>, ptr %i.hr, align 8, !tbaa !24 ; 2 uses
  %i.in = fadd nsz <2 x double> %i.ic, %i.il      ; 2 uses
  %18 = load <2 x double>, ptr %i.hs, align 8, !tbaa !24 ; 2 uses
  %i.io = shufflevector <2 x double> %i.ic, <2 x double> %i.il, <2 x i32> <i32 1, i32 2>
  %19 = shufflevector <2 x double> %i.il, <2 x double> %i.ic, <2 x i32> <i32 1, i32 2>
  %i.ip = fsub nsz <2 x double> %i.io, %19        ; 2 uses
  %i.iq = fsub nsz <2 x double> %18, %i.ip
  store <2 x double> %i.iq, ptr %i.hn, align 8, !tbaa !24
  %i.ir = fadd nsz <2 x double> %18, %i.ip
  %20 = fsub nsz <2 x double> %i.im, %i.in
  store <2 x double> %20, ptr %i.he, align 8, !tbaa !24
  store <2 x double> %i.ir, ptr %i.hs, align 8, !tbaa !24
  %i.is = fadd nsz <2 x double> %i.im, %i.in
  store <2 x double> %i.is, ptr %i.hr, align 8, !tbaa !24
  %i.it = getelementptr i8, ptr %i.j, i64 80      ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !29
  %i.iv = getelementptr inbounds nuw i8, ptr %.0556557, i64 40
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !24 ; 3 uses
  %i.ix = getelementptr i8, ptr %i.j, i64 88
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !30
  %i.iz = getelementptr inbounds nuw i8, ptr %.0554559, i64 16
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !24 ; 3 uses
  %i.jb = fneg nsz double %i.ja
  %i.jc = getelementptr i8, ptr %i.r, i64 80      ; 2 uses
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !29
  %i.je = getelementptr i8, ptr %i.r, i64 88
  %i.jf = load double, ptr %i.je, align 8, !tbaa !30
  %i.jg = getelementptr inbounds nuw i8, ptr %.0555558, i64 80 ; 2 uses
  %i.jh = getelementptr i8, ptr %i.v, i64 80      ; 2 uses
  %i.ji = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %i.iw, i64 1
  %i.jk = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fmul nsz <2 x double> %i.jj, %i.jl
  %i.jn = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %i.jb, i64 1 ; 2 uses
  %i.jr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jq, <2 x double> %i.jm) ; 3 uses
  %i.js = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jv = fmul nsz <2 x double> %i.jt, %i.ju
  %i.jw = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.jz = insertelement <2 x double> %i.jy, double %i.ja, i64 1
  %i.ka = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.jz, <2 x double> %i.jv) ; 3 uses
  %i.kb = load <2 x double>, ptr %i.jg, align 8, !tbaa !24 ; 2 uses
  %i.kc = fadd nsz <2 x double> %i.jr, %i.ka      ; 2 uses
  %21 = load <2 x double>, ptr %i.jh, align 8, !tbaa !24 ; 2 uses
  %i.kd = shufflevector <2 x double> %i.jr, <2 x double> %i.ka, <2 x i32> <i32 1, i32 2>
  %22 = shufflevector <2 x double> %i.ka, <2 x double> %i.jr, <2 x i32> <i32 1, i32 2>
  %i.ke = fsub nsz <2 x double> %i.kd, %22        ; 2 uses
  %i.kf = fsub nsz <2 x double> %21, %i.ke
  store <2 x double> %i.kf, ptr %i.jc, align 8, !tbaa !24
  %i.kg = fadd nsz <2 x double> %21, %i.ke
  %23 = fsub nsz <2 x double> %i.kb, %i.kc
  store <2 x double> %23, ptr %i.it, align 8, !tbaa !24
  store <2 x double> %i.kg, ptr %i.jh, align 8, !tbaa !24
  %i.kh = fadd nsz <2 x double> %i.kb, %i.kc
  store <2 x double> %i.kh, ptr %i.jg, align 8, !tbaa !24
  %i.ki = getelementptr i8, ptr %i.j, i64 112     ; 2 uses
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !29
  %i.kk = getelementptr inbounds nuw i8, ptr %.0556557, i64 56
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !24 ; 3 uses
  %i.km = getelementptr i8, ptr %i.j, i64 120
  %i.kn = load double, ptr %i.km, align 8, !tbaa !30
  %i.ko = load double, ptr %.0554559, align 8, !tbaa !24 ; 3 uses
  %i.kp = fneg nsz double %i.ko
  %i.kq = getelementptr i8, ptr %i.r, i64 112     ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !29
  %i.ks = getelementptr i8, ptr %i.r, i64 120
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !30
  %i.ku = getelementptr inbounds nuw i8, ptr %.0555558, i64 112 ; 2 uses
  %i.kv = getelementptr i8, ptr %i.v, i64 112     ; 2 uses
  %i.kw = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kx = insertelement <2 x double> %i.kw, double %i.kl, i64 1
  %i.ky = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = fmul nsz <2 x double> %i.kx, %i.kz
  %i.lb = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ld = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.kp, i64 1 ; 2 uses
  %i.lf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> %i.le, <2 x double> %i.la) ; 3 uses
  %i.lg = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.lh = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.li = shufflevector <2 x double> %i.le, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lj = fmul nsz <2 x double> %i.lh, %i.li
  %i.lk = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lm = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ln = insertelement <2 x double> %i.lm, double %i.ko, i64 1
  %i.lo = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> %i.ln, <2 x double> %i.lj) ; 3 uses
  %i.lp = load <2 x double>, ptr %i.ku, align 8, !tbaa !24 ; 2 uses
  %i.lq = fadd nsz <2 x double> %i.lf, %i.lo      ; 2 uses
  %24 = load <2 x double>, ptr %i.kv, align 8, !tbaa !24 ; 2 uses
  %i.lr = shufflevector <2 x double> %i.lf, <2 x double> %i.lo, <2 x i32> <i32 1, i32 2>
  %25 = shufflevector <2 x double> %i.lo, <2 x double> %i.lf, <2 x i32> <i32 1, i32 2>
  %i.ls = fsub nsz <2 x double> %i.lr, %25        ; 2 uses
  %i.lt = fsub nsz <2 x double> %24, %i.ls
  store <2 x double> %i.lt, ptr %i.kq, align 8, !tbaa !24
  %i.lu = fadd nsz <2 x double> %24, %i.ls
  %26 = fsub nsz <2 x double> %i.lp, %i.lq
  store <2 x double> %26, ptr %i.ki, align 8, !tbaa !24
  store <2 x double> %i.lu, ptr %i.kv, align 8, !tbaa !24
  %i.lv = fadd nsz <2 x double> %i.lp, %i.lq
  store <2 x double> %i.lv, ptr %i.ku, align 8, !tbaa !24
  %i.lw = getelementptr inbounds nuw i8, ptr %.0555558, i64 128
  %i.lx = getelementptr inbounds nuw i8, ptr %.0556557, i64 64
  %i.ly = getelementptr inbounds i8, ptr %.0554559, i64 -64
  %i.lz = add nuw nsw i32 %.0560, 4               ; 2 uses
  %i.ma = icmp slt i32 %i.lz, %2
  br i1 %i.ma, label %bb.b, label %._crit_edge, !llvm.loop !64
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft64_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 256
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 384
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_double, i32 noundef 4)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 512
  tail call void @ff_tx_fft16_ns_double_c(ptr poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 768
  tail call void @ff_tx_fft16_ns_double_c(ptr poison, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_64_double, i32 noundef 8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft128_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 256
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 384
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_double, i32 noundef 4)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 512
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 768
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_64_double, i32 noundef 8)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1024
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1280
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1408
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.i, ptr noundef nonnull @ff_tx_tab_32_double, i32 noundef 4)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1536
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1792
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1920
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1920
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.o, ptr noundef nonnull @ff_tx_tab_32_double, i32 noundef 4)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_128_double, i32 noundef 16)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft256_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft128_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2048
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 2304
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2432
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2432
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_32_double, i32 noundef 4)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2560
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2560
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2816
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2816
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_64_double, i32 noundef 8)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3072 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 3328
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 3328
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3456
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 3456
  tail call void @ff_tx_fft8_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_32_double, i32 noundef 4)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3584
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 3584
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 3840
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 3840
  tail call void @ff_tx_fft16_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_64_double, i32 noundef 8)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_256_double, i32 noundef 32)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft512_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft256_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4096
  tail call void @ff_tx_fft128_ns_double_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6144
  tail call void @ff_tx_fft128_ns_double_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft1024_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4096
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6144
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8192
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8192
  tail call void @ff_tx_fft256_ns_double_c(ptr poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12288
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12288
  tail call void @ff_tx_fft256_ns_double_c(ptr poison, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_1024_double, i32 noundef 128)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft2048_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4096
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 6144
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8192
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8192
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12288
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12288
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_1024_double, i32 noundef 128)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16384 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16384
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20480
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 20480
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 22528
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 22528
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.i, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24576 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24576
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28672
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 28672
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 30720
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 30720
  tail call void @ff_tx_fft128_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef nonnull %i.o, ptr noundef nonnull @ff_tx_tab_512_double, i32 noundef 64)
  tail call fastcc void @ff_tx_fft_sr_combine_double_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_2048_double, i32 noundef 256)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft4096_ns_double_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 256)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft2048_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32768 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32768
  tail call void @ff_tx_fft256_ns_double_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36864
end_hunk_0
