Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_double?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 33
begin_hunk_0_@ff_tx_fft16_ns_double_c:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.aa = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_double, i64 16), align 16, !tbaa !24 ; 8 uses
  tail call void @ff_tx_fft8_ns_double_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.ab = load <2 x double>, ptr %i.c, align 8, !tbaa !24
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ad = load <2 x double>, ptr %i.d, align 8, !tbaa !24
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.af = fadd nsz <4 x double> %i.ac, %i.ae      ; 3 uses
  %i.ag = fsub nsz <4 x double> %i.ac, %i.ae      ; 3 uses
  %i.ah = shufflevector <4 x double> %i.af, <4 x double> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = load <2 x double>, ptr %i.e, align 8, !tbaa !24
  %i.aj = load <3 x double>, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.ak = shufflevector <3 x double> %i.aj, <3 x double> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.al = shufflevector <3 x double> %i.aj, <3 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.am = shufflevector <2 x double> %i.ai, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.an = shufflevector <4 x double> %i.am, <4 x double> %i.al, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.ao = fadd nsz <4 x double> %i.ak, %i.an      ; 3 uses
  %i.ap = fsub nsz <4 x double> %i.ak, %i.an      ; 3 uses
  %i.aq = shufflevector <4 x double> %i.ao, <4 x double> %i.ap, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ar = shufflevector <4 x double> %i.af, <4 x double> %i.ag, <2 x i32> <i32 0, i32 7>
  %i.as = shufflevector <4 x double> %i.ao, <4 x double> %i.ap, <2 x i32> <i32 0, i32 7>
  %i.at = fsub nsz <2 x double> %i.ar, %i.as      ; 3 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  store double %i.au, ptr %i.f, align 8, !tbaa !29
  %i.av = extractelement <2 x double> %i.at, i64 1
  store double %i.av, ptr %i.i, align 8, !tbaa !30
  %i.aw = fadd nsz <4 x double> %i.ah, %i.aq      ; 4 uses
  store <4 x double> %i.aw, ptr %i.b, align 8, !tbaa !24
  %i.ax = fneg nsz <2 x double> %i.aa             ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ba = shufflevector <4 x double> %i.af, <4 x double> %i.ag, <2 x i32> <i32 1, i32 6>
  %i.bb = shufflevector <4 x double> %i.ao, <4 x double> %i.ap, <2 x i32> <i32 1, i32 6>
  %i.bc = fsub nsz <2 x double> %i.ba, %i.bb      ; 2 uses
  store <2 x double> %i.bc, ptr %i.k, align 8, !tbaa !24
  %i.bd = load double, ptr %i.o, align 8, !tbaa !29
  %i.be = load double, ptr %i.r, align 8, !tbaa !30
  %i.bf = load <2 x double>, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.bg = load <2 x double>, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.bh = load <2 x double>, ptr %i.q, align 8, !tbaa !24 ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x double> %i.aa, %i.bc
  %i.bi = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x double> %i.ax, <2 x double> %i.aa, <2 x i32> <i32 2, i32 0>
  %i.bk = shufflevector <2 x double> %foldExtExtBinop, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.bk) ; 3 uses
  %i.bm = load <2 x double>, ptr %i.y, align 8, !tbaa !24 ; 2 uses
  %i.bn = fsub nsz <2 x double> %i.bf, %i.bg      ; 2 uses
  %i.bo = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bd, i64 1 ; 2 uses
  %i.bq = fsub nsz <2 x double> %i.bh, %i.bp      ; 2 uses
  %i.br = fsub nsz <2 x double> %i.bn, %i.bq
  store <2 x double> %i.br, ptr %i.s, align 8, !tbaa !24
  %i.bs = fadd nsz <2 x double> %i.bq, %i.bn      ; 2 uses
  %i.bt = load <2 x double>, ptr %1, align 8, !tbaa !24 ; 3 uses
  %i.bu = fadd nsz <2 x double> %i.bf, %i.bg      ; 3 uses
  %i.bv = fadd nsz <2 x double> %i.bh, %i.bp
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %foldExtExtBinop213 = fsub nsz <2 x double> %i.bu, %i.bw
  %foldExtExtBinop215 = fsub nsz <2 x double> %i.bu, %i.bw
  %i.bx = fadd nsz <2 x double> %i.bu, %i.bw      ; 2 uses
  %i.by = shufflevector <4 x double> %i.aw, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.bz = fadd nsz <2 x double> %i.by, %i.bx      ; 3 uses
  %foldExtExtBinop217 = fadd nsz <2 x double> %i.bz, %i.bt
  %i.ca = extractelement <2 x double> %foldExtExtBinop217, i64 0
  store double %i.ca, ptr %1, align 8, !tbaa !29
  %i.cb = load <2 x double>, ptr %i.w, align 8, !tbaa !24 ; 3 uses
  %i.cc = shufflevector <2 x double> %i.bx, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cd = shufflevector <4 x double> %i.aw, <4 x double> %i.cc, <2 x i32> <i32 1, i32 4>
  %i.ce = shufflevector <4 x double> %i.cc, <4 x double> %i.aw, <2 x i32> <i32 1, i32 4>
  %i.cf = fsub nsz <2 x double> %i.cd, %i.ce      ; 3 uses
  %foldExtExtBinop219 = fadd nsz <2 x double> %i.cf, %i.cb
  %i.cg = extractelement <2 x double> %foldExtExtBinop219, i64 1
  store double %i.cg, ptr %i.x, align 8, !tbaa !30
  %i.ch = fsub nsz <2 x double> %i.cb, %i.cf
  store <2 x double> %i.ch, ptr %i.l, align 8, !tbaa !24
  %foldExtExtBinop221 = fadd nsz <2 x double> %i.cf, %i.cb
  %i.ci = extractelement <2 x double> %foldExtExtBinop221, i64 0
  store double %i.ci, ptr %i.w, align 8, !tbaa !29
  %i.cj = fsub nsz <2 x double> %i.bt, %i.bz
  store <2 x double> %i.cj, ptr %i.b, align 8, !tbaa !24
  %foldExtExtBinop223 = fadd nsz <2 x double> %i.bz, %i.bt
  %i.ck = extractelement <2 x double> %foldExtExtBinop223, i64 1
  store double %i.ck, ptr %i.v, align 8, !tbaa !30
  %shift = shufflevector <2 x double> %foldExtExtBinop215, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop225 = fmul nsz <2 x double> %i.aa, %shift ; 2 uses
  %i.cl = extractelement <2 x double> %foldExtExtBinop225, i64 0
  %i.cm = fneg nsz double %i.cl
  %i.cn = shufflevector <2 x double> %foldExtExtBinop213, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> %foldExtExtBinop225, <2 x i32> <i32 0, i32 2>
  %i.cr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.co, <2 x double> %i.cq) ; 3 uses
  %i.cs = fadd nsz <2 x double> %i.bl, %i.cr      ; 2 uses
  %i.ct = load <2 x double>, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.cu = shufflevector <2 x double> %i.bl, <2 x double> %i.cr, <2 x i32> <i32 1, i32 2>
  %i.cv = shufflevector <2 x double> %i.cr, <2 x double> %i.bl, <2 x i32> <i32 1, i32 2>
  %i.cw = fsub nsz <2 x double> %i.cu, %i.cv      ; 2 uses
  %i.cx = fsub nsz <2 x double> %i.ct, %i.cw
  store <2 x double> %i.cx, ptr %i.p, align 8, !tbaa !24
  %i.cy = fadd nsz <2 x double> %i.ct, %i.cw
  store <2 x double> %i.cy, ptr %i.z, align 8, !tbaa !24
  %i.cz = fsub nsz <2 x double> %i.bm, %i.cs
  store <2 x double> %i.cz, ptr %i.f, align 8, !tbaa !24
  %i.da = fadd nsz <2 x double> %i.bm, %i.cs
  store <2 x double> %i.da, ptr %i.y, align 8, !tbaa !24
  %i.db = load <2 x double>, ptr %i.j, align 8, !tbaa !24 ; 2 uses
  %i.dc = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x double> %i.dc, double %i.a, i64 1 ; 3 uses
  %i.de = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.df = fmul nsz <2 x double> %i.dd, %i.de
  %i.dg = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = insertelement <2 x double> %i.ax, double %i.a, i64 0 ; 2 uses
  %i.di = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.dh, <2 x double> %i.df) ; 3 uses
  %i.dj = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dk = fmul nsz <2 x double> %i.dj, %i.dh
  %i.dl = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dd, <2 x double> %i.dk) ; 3 uses
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.do = load <2 x double>, ptr %i.ay, align 8, !tbaa !24 ; 2 uses
  %i.dp = fadd nsz <2 x double> %i.di, %i.dn      ; 2 uses
  %i.dq = load <2 x double>, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %i.dr = shufflevector <2 x double> %i.di, <2 x double> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.ds = shufflevector <2 x double> %i.dm, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.dt = fsub nsz <2 x double> %i.dr, %i.ds      ; 2 uses
  %i.du = fsub nsz <2 x double> %i.dq, %i.dt
  store <2 x double> %i.du, ptr %i.u, align 8, !tbaa !24
  %i.dv = fadd nsz <2 x double> %i.dq, %i.dt
  store <2 x double> %i.dv, ptr %i.az, align 8, !tbaa !24
  %i.dw = fsub nsz <2 x double> %i.do, %i.dp
  store <2 x double> %i.dw, ptr %i.j, align 8, !tbaa !24
  %i.dx = fadd nsz <2 x double> %i.do, %i.dp
  store <2 x double> %i.dx, ptr %i.ay, align 8, !tbaa !24
  %i.dy = load double, ptr %i.h, align 8, !tbaa !29
  %i.dz = load double, ptr %i.i, align 8, !tbaa !30
  %i.ea = fneg nsz double %i.a
  %i.eb = load <2 x double>, ptr %i.s, align 8
  %i.ec = load double, ptr %i.t, align 8, !tbaa !30
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ef = insertelement <2 x double> %i.aa, double %i.a, i64 0
  %i.eg = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul nsz <2 x double> %i.ef, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.em = insertelement <2 x double> %i.el, double %i.ea, i64 1 ; 2 uses
  %i.en = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.em, <2 x double> %i.ei) ; 3 uses
  %i.eo = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.er = fmul nsz <2 x double> %i.ep, %i.eq
  %i.es = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.dd, <2 x double> %i.er) ; 3 uses
  %i.eu = load <2 x double>, ptr %i.ed, align 8, !tbaa !24 ; 2 uses
  %i.ev = fadd nsz <2 x double> %i.en, %i.et      ; 2 uses
  %i.ew = load <2 x double>, ptr %i.ee, align 8, !tbaa !24 ; 2 uses
  %i.ex = shufflevector <2 x double> %i.en, <2 x double> %i.et, <2 x i32> <i32 1, i32 2>
  %i.ey = shufflevector <2 x double> %i.et, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ez = fsub nsz <2 x double> %i.ex, %i.ey      ; 2 uses
  %i.fa = fsub nsz <2 x double> %i.ew, %i.ez
  store <2 x double> %i.fa, ptr %i.s, align 8, !tbaa !24
  %i.fb = fadd nsz <2 x double> %i.ew, %i.ez
  store <2 x double> %i.fb, ptr %i.ee, align 8, !tbaa !24
  %i.fc = fsub nsz <2 x double> %i.eu, %i.ev
  store <2 x double> %i.fc, ptr %i.h, align 8, !tbaa !24
  %i.fd = fadd nsz <2 x double> %i.eu, %i.ev
  store <2 x double> %i.fd, ptr %i.ed, align 8, !tbaa !24
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
  %i.g = shl nsw i32 %2, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0560 = phi i32 [ 0, %.lr.ph ], [ %i.mh, %bb.b ]
  %.0554559 = phi ptr [ %i.e, %.lr.ph ], [ %i.mg, %bb.b ] ; 9 uses
  %.0555558 = phi ptr [ %0, %.lr.ph ], [ %i.me, %bb.b ] ; 13 uses
  %.0556557 = phi ptr [ %1, %.lr.ph ], [ %i.mf, %bb.b ] ; 9 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0555558, i64 %i.h ; 17 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !29
  %i.l = load double, ptr %.0556557, align 8, !tbaa !24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
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
  %i.ar = load <2 x double>, ptr %i.v, align 8, !tbaa !24 ; 2 uses
  %i.as = shufflevector <2 x double> %i.af, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.at = shufflevector <2 x double> %i.ao, <2 x double> %i.af, <2 x i32> <i32 1, i32 2>
  %3 = fsub nsz <2 x double> %i.as, %i.at         ; 2 uses
  %i.au = fsub nsz <2 x double> %i.ar, %3
  %4 = fadd nsz <2 x double> %i.ar, %3
  %i.av = fsub nsz <2 x double> %i.ap, %i.aq      ; 2 uses
  %5 = extractelement <2 x double> %i.av, i64 0
  store double %5, ptr %i.j, align 8, !tbaa !29
  store <2 x double> %i.au, ptr %i.r, align 8, !tbaa !24
  store <2 x double> %4, ptr %i.v, align 8, !tbaa !24
  %6 = extractelement <2 x double> %i.av, i64 1
  store double %6, ptr %i.m, align 8, !tbaa !30
  %i.aw = fadd nsz <2 x double> %i.ap, %i.aq
  store <2 x double> %i.aw, ptr %.0555558, align 8, !tbaa !24
  %i.ax = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !29
  %i.az = getelementptr inbounds nuw i8, ptr %.0556557, i64 16
  %i.ba = load double, ptr %i.az, align 8, !tbaa !24 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.j, i64 40      ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30
  %i.bd = getelementptr inbounds nuw i8, ptr %.0554559, i64 40
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24 ; 3 uses
  %i.bf = fneg nsz double %i.be
  %i.bg = getelementptr i8, ptr %i.r, i64 32      ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !29
  %i.bi = getelementptr i8, ptr %i.r, i64 40
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %.0555558, i64 32 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.v, i64 32      ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.ba, i64 1
  %i.bo = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = fmul nsz <2 x double> %i.bn, %i.bp
  %i.br = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bf, i64 1 ; 2 uses
  %i.bv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.bu, <2 x double> %i.bq) ; 3 uses
  %i.bw = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = fmul nsz <2 x double> %i.bx, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.be, i64 1
  %i.ce = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cd, <2 x double> %i.bz) ; 3 uses
  %i.cf = load <2 x double>, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %i.cg = fadd nsz <2 x double> %i.bv, %i.ce      ; 2 uses
  %i.ch = load <2 x double>, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.ci = shufflevector <2 x double> %i.bv, <2 x double> %i.ce, <2 x i32> <i32 1, i32 2>
  %i.cj = shufflevector <2 x double> %i.ce, <2 x double> %i.bv, <2 x i32> <i32 1, i32 2>
  %7 = fsub nsz <2 x double> %i.ci, %i.cj         ; 2 uses
  %i.ck = fsub nsz <2 x double> %i.ch, %7
  %8 = fadd nsz <2 x double> %i.ch, %7
  %i.cl = fsub nsz <2 x double> %i.cf, %i.cg      ; 2 uses
  %9 = extractelement <2 x double> %i.cl, i64 0
  store double %9, ptr %i.ax, align 8, !tbaa !29
  store <2 x double> %i.ck, ptr %i.bg, align 8, !tbaa !24
  store <2 x double> %8, ptr %i.bl, align 8, !tbaa !24
  %10 = extractelement <2 x double> %i.cl, i64 1
  store double %10, ptr %i.bb, align 8, !tbaa !30
  %i.cm = fadd nsz <2 x double> %i.cf, %i.cg
  store <2 x double> %i.cm, ptr %i.bk, align 8, !tbaa !24
  %i.cn = getelementptr i8, ptr %i.j, i64 64      ; 2 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !29
  %i.cp = getelementptr inbounds nuw i8, ptr %.0556557, i64 32
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24 ; 3 uses
  %i.cr = getelementptr i8, ptr %i.j, i64 72      ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !30
  %i.ct = getelementptr inbounds nuw i8, ptr %.0554559, i64 24
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !24 ; 3 uses
  %i.cv = fneg nsz double %i.cu
  %i.cw = getelementptr i8, ptr %i.r, i64 64      ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !29
  %i.cy = getelementptr i8, ptr %i.r, i64 72
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !30
  %i.da = getelementptr inbounds nuw i8, ptr %.0555558, i64 64 ; 2 uses
  %i.db = getelementptr i8, ptr %i.v, i64 64      ; 2 uses
  %i.dc = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.cq, i64 1
  %i.de = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = fmul nsz <2 x double> %i.dd, %i.df
  %i.dh = insertelement <2 x double> poison, double %i.co, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.cv, i64 1 ; 2 uses
  %i.dl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dk, <2 x double> %i.dg) ; 3 uses
  %i.dm = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = fmul nsz <2 x double> %i.dn, %i.do
  %i.dq = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.cu, i64 1
  %i.du = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dt, <2 x double> %i.dp) ; 3 uses
  %i.dv = load <2 x double>, ptr %i.da, align 8, !tbaa !24 ; 2 uses
  %i.dw = fadd nsz <2 x double> %i.dl, %i.du      ; 2 uses
  %i.dx = load <2 x double>, ptr %i.db, align 8, !tbaa !24 ; 2 uses
  %i.dy = shufflevector <2 x double> %i.dl, <2 x double> %i.du, <2 x i32> <i32 1, i32 2>
  %i.dz = shufflevector <2 x double> %i.du, <2 x double> %i.dl, <2 x i32> <i32 1, i32 2>
  %11 = fsub nsz <2 x double> %i.dy, %i.dz        ; 2 uses
  %i.ea = fsub nsz <2 x double> %i.dx, %11
  %12 = fadd nsz <2 x double> %i.dx, %11
  %i.eb = fsub nsz <2 x double> %i.dv, %i.dw      ; 2 uses
  %13 = extractelement <2 x double> %i.eb, i64 0
  store double %13, ptr %i.cn, align 8, !tbaa !29
  store <2 x double> %i.ea, ptr %i.cw, align 8, !tbaa !24
  store <2 x double> %12, ptr %i.db, align 8, !tbaa !24
  %14 = extractelement <2 x double> %i.eb, i64 1
  store double %14, ptr %i.cr, align 8, !tbaa !30
  %i.ec = fadd nsz <2 x double> %i.dv, %i.dw
  store <2 x double> %i.ec, ptr %i.da, align 8, !tbaa !24
  %i.ed = getelementptr i8, ptr %i.j, i64 96      ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %.0556557, i64 48
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !24 ; 3 uses
  %i.eh = getelementptr i8, ptr %i.j, i64 104     ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %.0554559, i64 8
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !24 ; 3 uses
  %i.el = fneg nsz double %i.ek
  %i.em = getelementptr i8, ptr %i.r, i64 96      ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !29
  %i.eo = getelementptr i8, ptr %i.r, i64 104
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw i8, ptr %.0555558, i64 96 ; 2 uses
  %i.er = getelementptr i8, ptr %i.v, i64 96      ; 2 uses
  %i.es = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.eg, i64 1
  %i.eu = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ew = fmul nsz <2 x double> %i.et, %i.ev
  %i.ex = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.el, i64 1 ; 2 uses
  %i.fb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.ew) ; 3 uses
  %i.fc = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fe = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fmul nsz <2 x double> %i.fd, %i.fe
  %i.fg = insertelement <2 x double> poison, double %i.en, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.ek, i64 1
  %i.fk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fj, <2 x double> %i.ff) ; 3 uses
  %i.fl = load <2 x double>, ptr %i.eq, align 8, !tbaa !24 ; 2 uses
  %i.fm = fadd nsz <2 x double> %i.fb, %i.fk      ; 2 uses
  %i.fn = load <2 x double>, ptr %i.er, align 8, !tbaa !24 ; 2 uses
  %i.fo = shufflevector <2 x double> %i.fb, <2 x double> %i.fk, <2 x i32> <i32 1, i32 2>
  %i.fp = shufflevector <2 x double> %i.fk, <2 x double> %i.fb, <2 x i32> <i32 1, i32 2>
  %15 = fsub nsz <2 x double> %i.fo, %i.fp        ; 2 uses
  %i.fq = fsub nsz <2 x double> %i.fn, %15
  %16 = fadd nsz <2 x double> %i.fn, %15
  %i.fr = fsub nsz <2 x double> %i.fl, %i.fm      ; 2 uses
  %17 = extractelement <2 x double> %i.fr, i64 0
  store double %17, ptr %i.ed, align 8, !tbaa !29
  store <2 x double> %i.fq, ptr %i.em, align 8, !tbaa !24
  store <2 x double> %16, ptr %i.er, align 8, !tbaa !24
  %18 = extractelement <2 x double> %i.fr, i64 1
  store double %18, ptr %i.eh, align 8, !tbaa !30
  %i.fs = fadd nsz <2 x double> %i.fl, %i.fm
  store <2 x double> %i.fs, ptr %i.eq, align 8, !tbaa !24
  %i.ft = getelementptr i8, ptr %i.j, i64 16      ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !29
  %i.fv = getelementptr inbounds nuw i8, ptr %.0556557, i64 8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24 ; 3 uses
  %i.fx = getelementptr i8, ptr %i.j, i64 24      ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !30
  %i.fz = getelementptr inbounds nuw i8, ptr %.0554559, i64 48
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !24 ; 3 uses
  %i.gb = fneg nsz double %i.ga
  %i.gc = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !29
  %i.ge = getelementptr i8, ptr %i.r, i64 24
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %.0555558, i64 16 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.gi = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.fw, i64 1
  %i.gk = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fmul nsz <2 x double> %i.gj, %i.gl
  %i.gn = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gp = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gq = insertelement <2 x double> %i.gp, double %i.gb, i64 1 ; 2 uses
  %i.gr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gq, <2 x double> %i.gm) ; 3 uses
  %i.gs = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gv = fmul nsz <2 x double> %i.gt, %i.gu
  %i.gw = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.ga, i64 1
  %i.ha = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.gz, <2 x double> %i.gv) ; 3 uses
  %i.hb = load <2 x double>, ptr %i.gg, align 8, !tbaa !24 ; 2 uses
  %i.hc = fadd nsz <2 x double> %i.gr, %i.ha      ; 2 uses
  %i.hd = load <2 x double>, ptr %i.gh, align 8, !tbaa !24 ; 2 uses
  %i.he = shufflevector <2 x double> %i.gr, <2 x double> %i.ha, <2 x i32> <i32 1, i32 2>
  %i.hf = shufflevector <2 x double> %i.ha, <2 x double> %i.gr, <2 x i32> <i32 1, i32 2>
  %19 = fsub nsz <2 x double> %i.he, %i.hf        ; 2 uses
  %i.hg = fsub nsz <2 x double> %i.hd, %19
  %20 = fadd nsz <2 x double> %i.hd, %19
  %i.hh = fsub nsz <2 x double> %i.hb, %i.hc      ; 2 uses
  %21 = extractelement <2 x double> %i.hh, i64 0
  store double %21, ptr %i.ft, align 8, !tbaa !29
  store <2 x double> %i.hg, ptr %i.gc, align 8, !tbaa !24
  store <2 x double> %20, ptr %i.gh, align 8, !tbaa !24
  %22 = extractelement <2 x double> %i.hh, i64 1
  store double %22, ptr %i.fx, align 8, !tbaa !30
  %i.hi = fadd nsz <2 x double> %i.hb, %i.hc
  store <2 x double> %i.hi, ptr %i.gg, align 8, !tbaa !24
  %i.hj = getelementptr i8, ptr %i.j, i64 48      ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !29
  %i.hl = getelementptr inbounds nuw i8, ptr %.0556557, i64 24
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !24 ; 3 uses
  %i.hn = getelementptr i8, ptr %i.j, i64 56      ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !30
  %i.hp = getelementptr inbounds nuw i8, ptr %.0554559, i64 32
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !24 ; 3 uses
  %i.hr = fneg nsz double %i.hq
  %i.hs = getelementptr i8, ptr %i.r, i64 48      ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !29
  %i.hu = getelementptr i8, ptr %i.r, i64 56
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !30
  %i.hw = getelementptr inbounds nuw i8, ptr %.0555558, i64 48 ; 2 uses
  %i.hx = getelementptr i8, ptr %i.v, i64 48      ; 2 uses
  %i.hy = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.hz = insertelement <2 x double> %i.hy, double %i.hm, i64 1
  %i.ia = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = fmul nsz <2 x double> %i.hz, %i.ib
  %i.id = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.hr, i64 1 ; 2 uses
  %i.ih = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.ig, <2 x double> %i.ic) ; 3 uses
  %i.ii = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ik = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.il = fmul nsz <2 x double> %i.ij, %i.ik
  %i.im = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.ip = insertelement <2 x double> %i.io, double %i.hq, i64 1
  %i.iq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.in, <2 x double> %i.ip, <2 x double> %i.il) ; 3 uses
  %i.ir = load <2 x double>, ptr %i.hw, align 8, !tbaa !24 ; 2 uses
  %i.is = fadd nsz <2 x double> %i.ih, %i.iq      ; 2 uses
  %i.it = load <2 x double>, ptr %i.hx, align 8, !tbaa !24 ; 2 uses
  %i.iu = shufflevector <2 x double> %i.ih, <2 x double> %i.iq, <2 x i32> <i32 1, i32 2>
  %i.iv = shufflevector <2 x double> %i.iq, <2 x double> %i.ih, <2 x i32> <i32 1, i32 2>
  %23 = fsub nsz <2 x double> %i.iu, %i.iv        ; 2 uses
  %i.iw = fsub nsz <2 x double> %i.it, %23
  %24 = fadd nsz <2 x double> %i.it, %23
  %i.ix = fsub nsz <2 x double> %i.ir, %i.is      ; 2 uses
  %25 = extractelement <2 x double> %i.ix, i64 0
  store double %25, ptr %i.hj, align 8, !tbaa !29
  store <2 x double> %i.iw, ptr %i.hs, align 8, !tbaa !24
  store <2 x double> %24, ptr %i.hx, align 8, !tbaa !24
  %26 = extractelement <2 x double> %i.ix, i64 1
  store double %26, ptr %i.hn, align 8, !tbaa !30
  %i.iy = fadd nsz <2 x double> %i.ir, %i.is
  store <2 x double> %i.iy, ptr %i.hw, align 8, !tbaa !24
  %i.iz = getelementptr i8, ptr %i.j, i64 80      ; 2 uses
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !29
  %i.jb = getelementptr inbounds nuw i8, ptr %.0556557, i64 40
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !24 ; 3 uses
  %i.jd = getelementptr i8, ptr %i.j, i64 88      ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !30
  %i.jf = getelementptr inbounds nuw i8, ptr %.0554559, i64 16
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !24 ; 3 uses
  %i.jh = fneg nsz double %i.jg
  %i.ji = getelementptr i8, ptr %i.r, i64 80      ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !29
  %i.jk = getelementptr i8, ptr %i.r, i64 88
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !30
  %i.jm = getelementptr inbounds nuw i8, ptr %.0555558, i64 80 ; 2 uses
  %i.jn = getelementptr i8, ptr %i.v, i64 80      ; 2 uses
  %i.jo = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jp = insertelement <2 x double> %i.jo, double %i.jc, i64 1
  %i.jq = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = fmul nsz <2 x double> %i.jp, %i.jr
  %i.jt = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %i.jh, i64 1 ; 2 uses
  %i.jx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ju, <2 x double> %i.jw, <2 x double> %i.js) ; 3 uses
  %i.jy = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kb = fmul nsz <2 x double> %i.jz, %i.ka
  %i.kc = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.jg, i64 1
  %i.kg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.kf, <2 x double> %i.kb) ; 3 uses
  %i.kh = load <2 x double>, ptr %i.jm, align 8, !tbaa !24 ; 2 uses
  %i.ki = fadd nsz <2 x double> %i.jx, %i.kg      ; 2 uses
  %i.kj = load <2 x double>, ptr %i.jn, align 8, !tbaa !24 ; 2 uses
  %i.kk = shufflevector <2 x double> %i.jx, <2 x double> %i.kg, <2 x i32> <i32 1, i32 2>
  %i.kl = shufflevector <2 x double> %i.kg, <2 x double> %i.jx, <2 x i32> <i32 1, i32 2>
  %27 = fsub nsz <2 x double> %i.kk, %i.kl        ; 2 uses
  %i.km = fsub nsz <2 x double> %i.kj, %27
  %28 = fadd nsz <2 x double> %i.kj, %27
  %i.kn = fsub nsz <2 x double> %i.kh, %i.ki      ; 2 uses
  %29 = extractelement <2 x double> %i.kn, i64 0
  store double %29, ptr %i.iz, align 8, !tbaa !29
  store <2 x double> %i.km, ptr %i.ji, align 8, !tbaa !24
  store <2 x double> %28, ptr %i.jn, align 8, !tbaa !24
  %30 = extractelement <2 x double> %i.kn, i64 1
  store double %30, ptr %i.jd, align 8, !tbaa !30
  %i.ko = fadd nsz <2 x double> %i.kh, %i.ki
  store <2 x double> %i.ko, ptr %i.jm, align 8, !tbaa !24
  %i.kp = getelementptr i8, ptr %i.j, i64 112     ; 2 uses
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !29
  %i.kr = getelementptr inbounds nuw i8, ptr %.0556557, i64 56
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !24 ; 3 uses
  %i.kt = getelementptr i8, ptr %i.j, i64 120     ; 2 uses
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !30
  %i.kv = load double, ptr %.0554559, align 8, !tbaa !24 ; 3 uses
  %i.kw = fneg nsz double %i.kv
  %i.kx = getelementptr i8, ptr %i.r, i64 112     ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !29
  %i.kz = getelementptr i8, ptr %i.r, i64 120
  %i.la = load double, ptr %i.kz, align 8, !tbaa !30
  %i.lb = getelementptr inbounds nuw i8, ptr %.0555558, i64 112 ; 2 uses
  %i.lc = getelementptr i8, ptr %i.v, i64 112     ; 2 uses
  %i.ld = insertelement <2 x double> poison, double %i.kv, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.ks, i64 1
  %i.lf = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fmul nsz <2 x double> %i.le, %i.lg
  %i.li = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lk = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.ll = insertelement <2 x double> %i.lk, double %i.kw, i64 1 ; 2 uses
  %i.lm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.ll, <2 x double> %i.lh) ; 3 uses
  %i.ln = insertelement <2 x double> poison, double %i.la, i64 0
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lq = fmul nsz <2 x double> %i.lo, %i.lp
  %i.lr = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.kv, i64 1
  %i.lv = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.lu, <2 x double> %i.lq) ; 3 uses
  %i.lw = load <2 x double>, ptr %i.lb, align 8, !tbaa !24 ; 2 uses
  %i.lx = fadd nsz <2 x double> %i.lm, %i.lv      ; 2 uses
  %i.ly = load <2 x double>, ptr %i.lc, align 8, !tbaa !24 ; 2 uses
  %i.lz = shufflevector <2 x double> %i.lm, <2 x double> %i.lv, <2 x i32> <i32 1, i32 2>
  %i.ma = shufflevector <2 x double> %i.lv, <2 x double> %i.lm, <2 x i32> <i32 1, i32 2>
  %31 = fsub nsz <2 x double> %i.lz, %i.ma        ; 2 uses
  %i.mb = fsub nsz <2 x double> %i.ly, %31
  %32 = fadd nsz <2 x double> %i.ly, %31
  %i.mc = fsub nsz <2 x double> %i.lw, %i.lx      ; 2 uses
  %33 = extractelement <2 x double> %i.mc, i64 0
  store double %33, ptr %i.kp, align 8, !tbaa !29
  store <2 x double> %i.mb, ptr %i.kx, align 8, !tbaa !24
  store <2 x double> %32, ptr %i.lc, align 8, !tbaa !24
  %34 = extractelement <2 x double> %i.mc, i64 1
  store double %34, ptr %i.kt, align 8, !tbaa !30
  %i.md = fadd nsz <2 x double> %i.lw, %i.lx
  store <2 x double> %i.md, ptr %i.lb, align 8, !tbaa !24
  %i.me = getelementptr inbounds nuw i8, ptr %.0555558, i64 128
  %i.mf = getelementptr inbounds nuw i8, ptr %.0556557, i64 64
  %i.mg = getelementptr inbounds i8, ptr %.0554559, i64 -64
  %i.mh = add nuw nsw i32 %.0560, 4               ; 2 uses
  %i.mi = icmp slt i32 %i.mh, %2
  br i1 %i.mi, label %bb.b, label %._crit_edge, !llvm.loop !64
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
begin_hunk_1_@ff_tx_mdct_init_double_c:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = sext i32 %i.h to i64
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  %i.n = call noalias ptr @av_malloc(i64 noundef %i.m) #16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !34
  %.not50 = icmp eq ptr %i.n, null
  br i1 %.not50, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = and i64 %i.s, 2305843009213693952
  %.not51 = icmp eq i64 %i.t, 0
  br i1 %.not51, label %.preheader53, label %bb.e

.preheader53:                                     ; preds = %bb.d
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.loopexit54

.lr.ph.preheader:                                 ; preds = %.preheader53
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.w, i64 %i.m, i1 false)
  br label %.loopexit54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit54, label %.lr.ph, !llvm.loop !86

.loopexit54:                                      ; preds = %.lr.ph, %.preheader53, %bb.e
  %spec.select = select i1 %.not, ptr null, ptr %i.n
  %i.z = call i32 @ff_tx_mdct_gen_exp_double(ptr noundef nonnull %0, ptr noundef %spec.select) ; 2 uses
  %.not52 = icmp ne i32 %i.z, 0
  %brmerge = or i1 %.not, %.not52
  br i1 %brmerge, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit54
  %i.aa = load i32, ptr %0, align 8, !tbaa !21
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv59 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next60, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv59 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = shl i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !21
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next60, %i.ai
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !87

.loopexit:                                        ; preds = %bb.f, %.preheader, %.loopexit54, %bb.c, %bb.b
  %.044 = phi i32 [ %i.k, %bb.b ], [ -12, %bb.c ], [ %i.z, %.loopexit54 ], [ 0, %.preheader ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_double_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = lshr i64 %3, 3                           ; 3 uses
  %i.i = and i32 %i.c, -2
  %i.j = add nsw i32 %i.i, -1
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  tail call void %i.p(ptr noundef %i.r, ptr noundef %1, ptr noundef %1, i64 noundef 16) #16
  %i.s = sext i32 %i.d to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = icmp sgt i32 %i.e, 0
  br i1 %i.u, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %._crit_edge
  %i.v = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count100 = zext nneg i32 %i.e to i64
  br label %.lr.ph94

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.h, %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = sext i32 %i.x to i64
  %i.ae = mul nsw i64 %i.h, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = fneg nsz double %i.ak
  %i.am = fmul nsz double %i.ag, %i.al
  %i.an = tail call nsz double @llvm.fmuladd.f64(double %i.ac, double %i.ai, double %i.am)
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store double %i.an, ptr %i.ao, align 8, !tbaa !29
  %i.ap = load double, ptr %i.ah, align 8, !tbaa !29
  %i.aq = fmul nsz double %i.ag, %i.ap
  %i.ar = tail call nsz double @llvm.fmuladd.f64(double %i.ac, double %i.ak, double %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store double %i.ar, ptr %i.as, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88

._crit_edge95:                                    ; preds = %.lr.ph94, %._crit_edge
  ret void

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv97 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next98, %.lr.ph94 ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv97, %i.v     ; 2 uses
  %i.au = xor i64 %indvars.iv97, -1
  %i.av = add nsw i64 %i.v, %i.au                 ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %1, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !30 ; 2 uses
  %i.az = load double, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.at ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !30 ; 2 uses
  %i.bd = load double, ptr %i.ba, align 8, !tbaa !29 ; 2 uses
  %i.be = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.av ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %i.bh = load double, ptr %i.be, align 8, !tbaa !29
  %i.bi = fneg nsz double %i.bh
  %i.bj = fmul nsz double %i.az, %i.bi
  %i.bk = tail call nsz double @llvm.fmuladd.f64(double %i.ay, double %i.bg, double %i.bj)
  store double %i.bk, ptr %i.aw, align 8, !tbaa !29
  %i.bl = load double, ptr %i.be, align 8, !tbaa !29
  %i.bm = fmul nsz double %i.az, %i.bg
  %i.bn = tail call nsz double @llvm.fmuladd.f64(double %i.ay, double %i.bl, double %i.bm)
  store double %i.bn, ptr %i.bb, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.at ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %i.br = load double, ptr %i.bo, align 8, !tbaa !29
  %i.bs = fneg nsz double %i.br
  %i.bt = fmul nsz double %i.bd, %i.bs
  %i.bu = tail call nsz double @llvm.fmuladd.f64(double %i.bc, double %i.bq, double %i.bt)
  store double %i.bu, ptr %i.ba, align 8, !tbaa !29
  %i.bv = load double, ptr %i.bo, align 8, !tbaa !29
  %i.bw = fmul nsz double %i.bd, %i.bq
  %i.bx = tail call nsz double @llvm.fmuladd.f64(double %i.bc, double %i.bv, double %i.bw)
  store double %i.bx, ptr %i.ax, align 8, !tbaa !30
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !89
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 3                      ; 13 uses
  %i.g = mul nsw i32 %i.e, 9                      ; 9 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 4 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 15                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.u, 5
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 3           ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.j, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.j ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ah = sext i32 %i.e to i64                    ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx = shl nsw i64 %i.ah, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = icmp sgt i32 %i.i, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.as = add i32 %i.f, %i.ad
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !24
  %i.aw = fsub nsz double %i.av, %i.ac
  %i.ax = add nsw i32 %i.x, %i.g
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !24
  %i.bb = add i32 %i.g, %i.ad
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24
  %i.bf = fadd nsz double %i.ba, %i.be
  %i.bg = fneg nsz double %i.bf
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bh = add i32 %i.r, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24
  %i.bl = fadd nsz double %i.ac, %i.bk
  %i.bm = fneg nsz double %i.bl
  %i.bn = sub nuw nsw i32 %i.x, %i.f
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !24
  %i.br = add i32 %i.g, %i.ad
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !24
  %i.bv = fsub nsz double %i.bq, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz double [ %i.aw, %bb.b ], [ %i.bm, %bb.c ]
  %.sroa.6.0 = phi nsz double [ %i.bg, %bb.b ], [ %i.bv, %bb.c ]
  %i.bw = ashr i32 %i.x, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.bx
  %i.bz = load <2 x double>, ptr %i.by, align 8, !tbaa !24 ; 2 uses
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fneg nsz <2 x double> %i.ca
  %i.ce = shufflevector <2 x double> %i.bz, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul nsz <2 x double> %i.cc, %i.ce
  %i.cg = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ca, <2 x double> %i.cf) ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !12 ; 6 uses
  %i.cm = icmp slt i32 %i.cl, %i.f
  %i.cn = add nsw i32 %i.cl, %i.f
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %i.cr = xor i32 %i.cl, -1                       ; 4 uses
  br i1 %i.cm, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = add i32 %i.r, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !24
  %i.cw = fadd nsz double %i.cq, %i.cv
  %i.cx = fneg nsz double %i.cw
  %i.cy = sub nuw nsw i32 %i.cl, %i.f
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = add i32 %i.g, %i.cr
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !24
  %i.dg = fsub nsz double %i.db, %i.df
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dh = add i32 %i.f, %i.cr
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !24
  %i.dl = fsub nsz double %i.dk, %i.cq
  %i.dm = add nsw i32 %i.cl, %i.g
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !24
  %i.dq = add i32 %i.g, %i.cr
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !24
  %i.du = fadd nsz double %i.dp, %i.dt
  %i.dv = fneg nsz double %i.du
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz double [ %i.dl, %bb.f ], [ %i.cx, %bb.e ]
  %.sroa.6.0.1 = phi nsz double [ %i.dv, %bb.f ], [ %i.dg, %bb.e ]
  %i.dw = ashr i32 %i.cl, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.dx
  %i.dz = load <2 x double>, ptr %i.dy, align 8, !tbaa !24 ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eb = insertelement <2 x double> poison, double %.sroa.6.0.1, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fneg nsz <2 x double> %i.ea
  %i.ee = shufflevector <2 x double> %i.dz, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2>
  %i.ef = fmul nsz <2 x double> %i.ec, %i.ee
  %i.eg = insertelement <2 x double> poison, double %.sroa.077.0.1, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ea, <2 x double> %i.ef) ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !12 ; 6 uses
  %i.em = icmp slt i32 %i.el, %i.f
  %i.en = add nsw i32 %i.el, %i.f
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !24 ; 2 uses
  %i.er = xor i32 %i.el, -1                       ; 4 uses
  br i1 %i.em, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.es = add i32 %i.r, %i.er
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ew = fadd nsz double %i.eq, %i.ev
  %i.ex = fneg nsz double %i.ew
  %i.ey = sub nuw nsw i32 %i.el, %i.f
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !24
  %i.fc = add i32 %i.g, %i.er
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_3xM_fwd_double_c:bb.a
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !29 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !30 ; 2 uses
  %i.hr = sext i32 %i.hj to i64
  %i.hs = getelementptr inbounds [16 x i8], ptr %i.hd, i64 %i.hr ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !29 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !30 ; 2 uses
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.hf ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !30
  %i.hz = load double, ptr %i.hw, align 8, !tbaa !29
  %i.ia = fneg nsz double %i.hz
  %i.ib = fmul nsz double %i.hv, %i.ia
  %i.ic = tail call nsz double @llvm.fmuladd.f64(double %i.ht, double %i.hy, double %i.ib)
  %i.id = shl nsw i64 %i.hh, 1
  %i.ie = mul nsw i64 %i.p, %i.id
  %i.if = getelementptr [8 x i8], ptr %1, i64 %i.ie ; 2 uses
  %i.ig = getelementptr [8 x i8], ptr %i.if, i64 %i.p
  store double %i.ic, ptr %i.ig, align 8, !tbaa !24
  %i.ih = load double, ptr %i.hw, align 8, !tbaa !29
  %i.ii = load double, ptr %i.hx, align 8, !tbaa !30
  %i.ij = fmul nsz double %i.hv, %i.ii
  %i.ik = tail call nsz double @llvm.fmuladd.f64(double %i.ht, double %i.ih, double %i.ij)
  %i.il = shl nuw nsw i64 %i.hf, 1
  %i.im = mul nuw nsw i64 %i.p, %i.il
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.im ; 2 uses
  store double %i.ik, ptr %i.in, align 8, !tbaa !24
  %i.io = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.hh ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !30
  %i.ir = load double, ptr %i.io, align 8, !tbaa !29
  %i.is = fneg nsz double %i.ir
  %i.it = fmul nsz double %i.hq, %i.is
  %i.iu = tail call nsz double @llvm.fmuladd.f64(double %i.ho, double %i.iq, double %i.it)
  %i.iv = getelementptr [8 x i8], ptr %i.in, i64 %i.p
  store double %i.iu, ptr %i.iv, align 8, !tbaa !24
  %i.iw = load double, ptr %i.io, align 8, !tbaa !29
  %i.ix = load double, ptr %i.ip, align 8, !tbaa !30
  %i.iy = fmul nsz double %i.hq, %i.ix
  %i.iz = tail call nsz double @llvm.fmuladd.f64(double %i.ho, double %i.iw, double %i.iy)
  store double %i.iz, ptr %i.if, align 8, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.k, !llvm.loop !91
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_pfa_init_double_c(ptr noundef initializes((140, 152)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 2, ptr %7, align 4
  %i.b = ashr i32 %4, 1                           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = sdiv i32 %i.b, %i.d                      ; 3 uses
  %i.f = load double, ptr %6, align 8, !tbaa !24  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.f, ptr %i.g, align 8, !tbaa !22
  %i.h = fptrunc nsz double %i.f to float
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.h, ptr %i.i, align 4, !tbaa !39
  %i.j = and i64 %2, 6917529027641081854
  %i.k = or disjoint i64 %i.j, 2305843009213693953
  %i.l = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 2, i64 noundef %i.k, ptr noundef nonnull %7, i32 noundef %i.e, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !38
  %i.o = load i32, ptr %i.c, align 8, !tbaa !12
  %i.p = call i32 @ff_tx_gen_compound_mapping(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.e) #16 ; 2 uses
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 8, !tbaa !12
  %i.r = icmp eq i32 %i.q, 15
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %i.v = zext nneg i32 %i.b to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv75 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next76, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.a, ptr noundef nonnull align 4 dereferenceable(60) %i.w, i64 60, i1 false)
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  br label %.preheader63

.preheader63:                                     ; preds = %bb.e, %bb.g
  %indvars.iv71 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next72, %bb.g ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv71, 3         ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.x
  br label %bb.h

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 15 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next76, %i.v
  br i1 %i.y, label %bb.e, label %._crit_edge, !llvm.loop !92

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 5
  br i1 %exitcond74.not, label %bb.f, label %.preheader63, !llvm.loop !93

bb.h:                                             ; preds = %.preheader63, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader63 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv, 5
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = urem i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !94

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %.not60 = icmp eq i32 %5, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ]
  %i.ak = call i32 @ff_tx_mdct_gen_exp_double(ptr noundef nonnull %0, ptr noundef %i.aj) ; 2 uses
  %.not61 = icmp eq i32 %i.ak, 0
  br i1 %.not61, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  %i.al = icmp sgt i32 %i.b, 0
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !34
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.l

._crit_edge69:                                    ; preds = %bb.l, %.preheader
  %i.ao = sext i32 %i.b to i64
  %i.ap = shl nsw i64 %i.ao, 4
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !32
  %.not62 = icmp eq ptr %i.aq, null
  br i1 %.not62, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.lr.ph68, %bb.l
  %indvars.iv78 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next79, %bb.l ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv78 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = shl i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !12
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge69, label %bb.l, !llvm.loop !95

bb.m:                                             ; preds = %._crit_edge69
  %i.av = sdiv i32 %i.b, %i.e
  call void @ff_tx_init_tabs_double(i32 noundef %i.av) #17
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge69, %bb.k, %bb.b, %bb.a, %bb.m
  %.054 = phi i32 [ %i.ak, %bb.k ], [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ 0, %bb.m ], [ -12, %._crit_edge69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_5xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 5                      ; 21 uses
  %i.g = mul nsw i32 %i.e, 15                     ; 15 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 6 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !32
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 25                 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx88.i = mul nuw nsw i64 %i.u, 48
  %.idx89.i = shl nuw nsw i64 %i.u, 6
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 5           ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !24 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.p, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.p ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ah = sext i32 %i.e to i64                    ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx = shl nsw i64 %i.ah, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx165 = mul nsw i64 %i.ah, 48
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx165 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 16) #16
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !32
  %.idx166 = shl nsw i64 %i.ah, 6
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx166 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 16) #16
  %i.az = icmp sgt i32 %i.i, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.ba = add i32 %i.f, %i.ad
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = fsub nsz double %i.bd, %i.ac
  %i.bf = add nsw i32 %i.x, %i.g
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !24
  %i.bj = add i32 %i.g, %i.ad
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !24
  %i.bn = fadd nsz double %i.bi, %i.bm
  %i.bo = fneg nsz double %i.bn
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bp = add i32 %i.r, %i.ad
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !24
  %i.bt = fadd nsz double %i.ac, %i.bs
  %i.bu = fneg nsz double %i.bt
  %i.bv = sub nuw nsw i32 %i.x, %i.f
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !24
  %i.bz = add i32 %i.g, %i.ad
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ca
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !24
  %i.cd = fsub nsz double %i.by, %i.cc
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz double [ %i.be, %bb.b ], [ %i.bu, %bb.c ]
  %.sroa.6.0 = phi nsz double [ %i.bo, %bb.b ], [ %i.cd, %bb.c ]
  %i.ce = ashr i32 %i.x, 1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.cf
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !24 ; 2 uses
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fneg nsz <2 x double> %i.ci
  %i.cm = shufflevector <2 x double> %i.ch, <2 x double> %i.cl, <2 x i32> <i32 0, i32 2>
  %i.cn = fmul nsz <2 x double> %i.ck, %i.cm
  %i.co = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.ci, <2 x double> %i.cn) ; 5 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !12 ; 6 uses
  %i.cu = icmp slt i32 %i.ct, %i.f
  %i.cv = add nsw i32 %i.ct, %i.f
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !24 ; 2 uses
  %i.cz = xor i32 %i.ct, -1                       ; 4 uses
  br i1 %i.cu, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.da = add i32 %i.r, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = fadd nsz double %i.cy, %i.dd
  %i.df = fneg nsz double %i.de
  %i.dg = sub nuw nsw i32 %i.ct, %i.f
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !24
  %i.dk = add i32 %i.g, %i.cz
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !24
  %i.do = fsub nsz double %i.dj, %i.dn
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dp = add i32 %i.f, %i.cz
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24
  %i.dt = fsub nsz double %i.ds, %i.cy
  %i.du = add nsw i32 %i.ct, %i.g
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24
  %i.dy = add i32 %i.g, %i.cz
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !24
  %i.ec = fadd nsz double %i.dx, %i.eb
  %i.ed = fneg nsz double %i.ec
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz double [ %i.dt, %bb.f ], [ %i.df, %bb.e ]
  %.sroa.6.0.1 = phi nsz double [ %i.ed, %bb.f ], [ %i.do, %bb.e ]
  %i.ee = ashr i32 %i.ct, 1
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ef
  %i.eh = load <2 x double>, ptr %i.eg, align 8, !tbaa !24 ; 2 uses
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ej = insertelement <2 x double> poison, double %.sroa.6.0.1, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fneg nsz <2 x double> %i.ei
  %i.em = shufflevector <2 x double> %i.eh, <2 x double> %i.el, <2 x i32> <i32 0, i32 2>
  %i.en = fmul nsz <2 x double> %i.ek, %i.em
  %i.eo = insertelement <2 x double> poison, double %.sroa.077.0.1, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.ei, <2 x double> %i.en) ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !12 ; 6 uses
  %i.eu = icmp slt i32 %i.et, %i.f
  %i.ev = add nsw i32 %i.et, %i.f
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !24 ; 2 uses
  %i.ez = xor i32 %i.et, -1                       ; 4 uses
  br i1 %i.eu, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_2
begin_hunk_3_@ff_tx_mdct_pfa_5xM_fwd_double_c:bb.a
  %i.io = insertelement <2 x double> poison, double %.sroa.077.0.3, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ii, <2 x double> %i.in) ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !12 ; 6 uses
  %i.iu = icmp slt i32 %i.it, %i.f
  %i.iv = add nsw i32 %i.it, %i.f
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %2, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !24 ; 2 uses
  %i.iz = xor i32 %i.it, -1                       ; 4 uses
  br i1 %i.iu, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ja = add i32 %i.r, %i.iz
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !24
  %i.je = fadd nsz double %i.iy, %i.jd
  %i.jf = fneg nsz double %i.je
  %i.jg = sub nuw nsw i32 %i.it, %i.f
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !24
  %i.jk = add i32 %i.g, %i.iz
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jl
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !24
  %i.jo = fsub nsz double %i.jj, %i.jn
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jp = add i32 %i.f, %i.iz
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !24
  %i.jt = fsub nsz double %i.js, %i.iy
  %i.ju = add nsw i32 %i.it, %i.g
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !24
  %i.jy = add i32 %i.g, %i.iz
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jz
  %i.kb = load double, ptr %i.ka, align 8, !tbaa !24
  %i.kc = fadd nsz double %i.jx, %i.kb
  %i.kd = fneg nsz double %i.kc
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz double [ %i.jt, %bb.o ], [ %i.jf, %bb.n ]
  %.sroa.6.0.4 = phi nsz double [ %i.kd, %bb.o ], [ %i.jo, %bb.n ]
  %i.ke = ashr i32 %i.it, 1
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !12
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.kj ; 5 uses
  %i.kl = fsub nsz <2 x double> %i.gq, %i.iq      ; 2 uses
  %i.km = fadd nsz <2 x double> %i.gq, %i.iq      ; 3 uses
  %i.kn = getelementptr inbounds nuw [16 x i8], ptr %i.kk, i64 %i.u
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx88.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 %.idx89.i
  %i.kr = load <2 x double>, ptr %i.kg, align 8, !tbaa !24 ; 2 uses
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.kt = insertelement <2 x double> poison, double %.sroa.6.0.4, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kv = fneg nsz <2 x double> %i.ks
  %i.kw = shufflevector <2 x double> %i.kr, <2 x double> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.kx = fmul nsz <2 x double> %i.ku, %i.kw
  %i.ky = insertelement <2 x double> poison, double %.sroa.077.0.4, i64 0
  %i.kz = shufflevector <2 x double> %i.ky, <2 x double> poison, <2 x i32> zeroinitializer
  %i.la = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> %i.ks, <2 x double> %i.kx) ; 2 uses
  %i.lb = fsub nsz <2 x double> %i.eq, %i.la      ; 2 uses
  %i.lc = fadd nsz <2 x double> %i.eq, %i.la      ; 3 uses
  %i.ld = fadd nsz <2 x double> %i.cq, %i.lc
  %i.le = fadd nsz <2 x double> %i.ld, %i.km
  store <2 x double> %i.le, ptr %i.kk, align 8, !tbaa !24
  %i.lf = load <2 x double>, ptr @ff_tx_tab_53_double, align 16
  %i.lg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 16), align 16
  %i.lh = fneg nsz <2 x double> %i.km
  %i.li = shufflevector <2 x double> %i.lg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lj = fmul nsz <2 x double> %i.li, %i.lh
  %i.lk = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ll = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.lc, <2 x double> %i.lj) ; 2 uses
  %i.lm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 32), align 16
  %i.ln = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 48), align 16
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lp = fmul nsz <2 x double> %i.kl, %i.lo
  %i.lq = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.lb, <2 x double> %i.lp)
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lt = fsub nsz <2 x double> %i.ll, %i.ls      ; 2 uses
  %i.lu = fadd nsz <2 x double> %i.ll, %i.ls      ; 2 uses
  %i.lv = shufflevector <2 x double> %i.lt, <2 x double> %i.lu, <2 x i32> <i32 0, i32 3>
  %i.lw = shufflevector <2 x double> %i.lu, <2 x double> %i.lt, <2 x i32> <i32 0, i32 3>
  %i.lx = fadd nsz <2 x double> %i.cq, %i.lw
  store <2 x double> %i.lx, ptr %i.kn, align 8, !tbaa !24
  %i.ly = fneg nsz <2 x double> %i.lc
  %i.lz = fmul nsz <2 x double> %i.li, %i.ly
  %i.ma = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lk, <2 x double> %i.km, <2 x double> %i.lz) ; 2 uses
  %i.mb = fneg nsz <2 x double> %i.lb
  %i.mc = fmul nsz <2 x double> %i.lo, %i.mb
  %i.md = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.kl, <2 x double> %i.mc)
  %i.me = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mf = fadd nsz <2 x double> %i.ma, %i.me      ; 2 uses
  %i.mg = fsub nsz <2 x double> %i.ma, %i.me      ; 2 uses
  %i.mh = shufflevector <2 x double> %i.mf, <2 x double> %i.mg, <2 x i32> <i32 0, i32 3>
  %i.mi = shufflevector <2 x double> %i.mg, <2 x double> %i.mf, <2 x i32> <i32 0, i32 3>
  %i.mj = fadd nsz <2 x double> %i.cq, %i.mi
  store <2 x double> %i.mj, ptr %i.ko, align 8, !tbaa !24
  %i.mk = fadd nsz <2 x double> %i.cq, %i.mh
  store <2 x double> %i.mk, ptr %i.kp, align 8, !tbaa !24
  %i.ml = fadd nsz <2 x double> %i.cq, %i.lv
  store <2 x double> %i.ml, ptr %i.kq, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !96

.lr.ph:                                           ; preds = %.preheader136
  %i.mm = load ptr, ptr %i.ag, align 8, !tbaa !32 ; 2 uses
  %i.mn = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %.preheader136
  ret void

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.q ] ; 3 uses
  %i.mo = add nuw nsw i64 %indvars.iv148, %i.mn   ; 3 uses
  %i.mp = xor i64 %indvars.iv148, -1
  %i.mq = add nsw i64 %i.mn, %i.mp                ; 3 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mo
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !12
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.mq
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !12
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [16 x i8], ptr %i.mm, i64 %i.mv ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !29 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.mz = load double, ptr %i.my, align 8, !tbaa !30 ; 2 uses
  %i.na = sext i32 %i.ms to i64
  %i.nb = getelementptr inbounds [16 x i8], ptr %i.mm, i64 %i.na ; 2 uses
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !29 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !30 ; 2 uses
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.mo ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 2 uses
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !30
  %i.ni = load double, ptr %i.nf, align 8, !tbaa !29
  %i.nj = fneg nsz double %i.ni
  %i.nk = fmul nsz double %i.ne, %i.nj
  %i.nl = tail call nsz double @llvm.fmuladd.f64(double %i.nc, double %i.nh, double %i.nk)
  %i.nm = shl nsw i64 %i.mq, 1
  %i.nn = mul nsw i64 %i.p, %i.nm
  %i.no = getelementptr [8 x i8], ptr %1, i64 %i.nn ; 2 uses
  %i.np = getelementptr [8 x i8], ptr %i.no, i64 %i.p
  store double %i.nl, ptr %i.np, align 8, !tbaa !24
  %i.nq = load double, ptr %i.nf, align 8, !tbaa !29
  %i.nr = load double, ptr %i.ng, align 8, !tbaa !30
  %i.ns = fmul nsz double %i.ne, %i.nr
  %i.nt = tail call nsz double @llvm.fmuladd.f64(double %i.nc, double %i.nq, double %i.ns)
  %i.nu = shl nuw nsw i64 %i.mo, 1
  %i.nv = mul nuw nsw i64 %i.p, %i.nu
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nv ; 2 uses
  store double %i.nt, ptr %i.nw, align 8, !tbaa !24
  %i.nx = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.mq ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !30
  %i.oa = load double, ptr %i.nx, align 8, !tbaa !29
  %i.ob = fneg nsz double %i.oa
  %i.oc = fmul nsz double %i.mz, %i.ob
  %i.od = tail call nsz double @llvm.fmuladd.f64(double %i.mx, double %i.nz, double %i.oc)
  %i.oe = getelementptr [8 x i8], ptr %i.nw, i64 %i.p
  store double %i.od, ptr %i.oe, align 8, !tbaa !24
  %i.of = load double, ptr %i.nx, align 8, !tbaa !29
  %i.og = load double, ptr %i.ny, align 8, !tbaa !30
  %i.oh = fmul nsz double %i.mz, %i.og
  %i.oi = tail call nsz double @llvm.fmuladd.f64(double %i.mx, double %i.of, double %i.oh)
  store double %i.oi, ptr %i.no, align 8, !tbaa !24
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.q, !llvm.loop !97
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %.sroa.6 = alloca [4 x %struct.AVComplexDouble], align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 7                      ; 29 uses
  %i.g = mul nsw i32 %i.e, 21                     ; 21 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 35                 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 7 uses
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx163.i = mul nuw nsw i64 %i.u, 48
  %.idx164.i = shl nuw nsw i64 %i.u, 6
  %.idx165.i = mul nuw nsw i64 %i.u, 80
  %.idx166.i = mul nuw nsw i64 %i.u, 96
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 16
  %.sroa.6.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 32
  %.sroa.6.48..sroa_idx168 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 48
  %.sroa.6.48..sroa_idx167 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 48
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 8
  %.sroa.6.40..sroa_idx166 = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 40
  %.sroa.6.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 24
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.v
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.v ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 7 uses
  %i.v = load i32, ptr %invariant.gep, align 4, !tbaa !12 ; 6 uses
  %i.w = icmp slt i32 %i.v, %i.f
  %i.x = add nsw i32 %i.v, %i.f
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !24 ; 2 uses
  %i.ab = xor i32 %i.v, -1                        ; 4 uses
  br i1 %i.w, label %bb.b, label %bb.c

.preheader136.loopexit:                           ; preds = %bb.v
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ac = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.af = sext i32 %i.e to i64                    ; 6 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ag(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %i.ah, i64 noundef 16) #16
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.al = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.af ; 2 uses
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.al, i64 noundef 16) #16
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx160 = shl nsw i64 %i.af, 5
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx160 ; 2 uses
  tail call void %i.am(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ap, i64 noundef 16) #16
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %i.af, 48
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.idx161 ; 2 uses
  tail call void %i.aq(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.at, i64 noundef 16) #16
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx162 = shl nsw i64 %i.af, 6
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx162 ; 2 uses
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.ax, i64 noundef 16) #16
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx163 = mul nsw i64 %i.af, 80
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx163 ; 2 uses
  tail call void %i.ay(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bb, i64 noundef 16) #16
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !32
  %.idx164 = mul nsw i64 %i.af, 96
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.idx164 ; 2 uses
  tail call void %i.bc(ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bf, i64 noundef 16) #16
  %i.bg = icmp sgt i32 %i.i, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.bh = add i32 %i.f, %i.ab
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24
  %i.bl = fsub nsz double %i.bk, %i.aa
  %i.bm = add nsw i32 %i.v, %i.g
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24
  %i.bq = add i32 %i.g, %i.ab
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !24
  %i.bu = fadd nsz double %i.bp, %i.bt
  %i.bv = fneg nsz double %i.bu
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bw = add i32 %i.r, %i.ab
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !24
  %i.ca = fadd nsz double %i.aa, %i.bz
  %i.cb = fneg nsz double %i.ca
  %i.cc = sub nuw nsw i32 %i.v, %i.f
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !24
  %i.cg = add i32 %i.g, %i.ab
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !24
  %i.ck = fsub nsz double %i.cf, %i.cj
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz double [ %i.bl, %bb.b ], [ %i.cb, %bb.c ]
  %.sroa.6.0 = phi nsz double [ %i.bv, %bb.b ], [ %i.ck, %bb.c ]
  %i.cl = ashr i32 %i.v, 1
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.cm
  %i.co = load <2 x double>, ptr %i.cn, align 8, !tbaa !24 ; 2 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fneg nsz <2 x double> %i.cp
  %i.ct = shufflevector <2 x double> %i.co, <2 x double> %i.cs, <2 x i32> <i32 0, i32 2>
  %i.cu = fmul nsz <2 x double> %i.cr, %i.ct
  %i.cv = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.cw = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cp, <2 x double> %i.cu) ; 7 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cy = load i32, ptr %gep.1, align 4, !tbaa !12 ; 6 uses
  %i.cz = icmp slt i32 %i.cy, %i.f
  %i.da = add nsw i32 %i.cy, %i.f
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24 ; 2 uses
  %i.de = xor i32 %i.cy, -1                       ; 4 uses
  br i1 %i.cz, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = add i32 %i.r, %i.de
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !24
  %i.dj = fadd nsz double %i.dd, %i.di
  %i.dk = fneg nsz double %i.dj
  %i.dl = sub nuw nsw i32 %i.cy, %i.f
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !24
  %i.dp = add i32 %i.g, %i.de
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !24
  %i.dt = fsub nsz double %i.do, %i.ds
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.du = add i32 %i.f, %i.de
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24
  %i.dy = fsub nsz double %i.dx, %i.dd
  %i.dz = add nsw i32 %i.cy, %i.g
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !24
  %i.ed = add i32 %i.g, %i.de
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ee
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !24
  %i.eh = fadd nsz double %i.ec, %i.eg
  %i.ei = fneg nsz double %i.eh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz double [ %i.dy, %bb.f ], [ %i.dk, %bb.e ]
  %.sroa.6.0.1 = phi nsz double [ %i.ei, %bb.f ], [ %i.dt, %bb.e ]
  %i.ej = ashr i32 %i.cy, 1
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.ek
  %i.em = load <2 x double>, ptr %i.el, align 8, !tbaa !24 ; 2 uses
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
end_hunk_3
begin_hunk_4_@ff_tx_mdct_pfa_7xM_fwd_double_c:bb.a
  %i.oj = insertelement <2 x double> poison, double %.sroa.077.0.6, i64 0
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ok, <2 x double> %i.od, <2 x double> %i.oi) ; 3 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.on = load i32, ptr %i.om, align 4, !tbaa !12
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.oo ; 7 uses
  %i.oq = getelementptr inbounds nuw [16 x i8], ptr %i.op, i64 %i.u
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx163.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx164.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx165.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.op, i64 %.idx166.i
  %i.ow = fadd nsz <2 x double> %i.ev, %i.ol      ; 3 uses
  %.sroa.6.0..sroa.6.32. = load <2 x double>, ptr %.sroa.6, align 16, !tbaa !24 ; 2 uses
  %.sroa.6.48..sroa.6.80. = load <2 x double>, ptr %.sroa.6.48..sroa_idx167, align 16, !tbaa !24 ; 2 uses
  %.sroa.6.8..sroa.6.40. = load <2 x double>, ptr %.sroa.6.8..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %.sroa.6.40..sroa.6.72. = load <2 x double>, ptr %.sroa.6.40..sroa_idx166, align 8, !tbaa !24 ; 2 uses
  %i.ox = fsub nsz <2 x double> %.sroa.6.0..sroa.6.32., %.sroa.6.48..sroa.6.80. ; 4 uses
  %.sroa.6.24..sroa.6.56. = load <2 x double>, ptr %.sroa.6.24..sroa_idx, align 8, !tbaa !24 ; 4 uses
  %i.oy = shufflevector <2 x double> %i.ev, <2 x double> %.sroa.6.8..sroa.6.40., <2 x i32> <i32 1, i32 3>
  %i.oz = shufflevector <2 x double> %i.ol, <2 x double> %.sroa.6.24..sroa.6.56., <2 x i32> <i32 1, i32 3>
  %i.pa = fsub nsz <2 x double> %i.oy, %i.oz      ; 4 uses
  %i.pb = shufflevector <2 x double> %.sroa.6.48..sroa.6.80., <2 x double> %.sroa.6.24..sroa.6.56., <2 x i32> <i32 1, i32 3>
  %i.pc = fadd nsz <2 x double> %.sroa.6.8..sroa.6.40., %i.pb ; 3 uses
  %i.pd = shufflevector <2 x double> %.sroa.6.24..sroa.6.56., <2 x double> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.pe = shufflevector <2 x double> %.sroa.6.40..sroa.6.72., <2 x double> %i.ol, <2 x i32> <i32 0, i32 2>
  %i.pf = fsub nsz <2 x double> %i.pd, %i.pe      ; 4 uses
  %i.pg = shufflevector <2 x double> %.sroa.6.24..sroa.6.56., <2 x double> %.sroa.6.0..sroa.6.32., <2 x i32> <i32 2, i32 0>
  %i.ph = shufflevector <2 x double> %.sroa.6.40..sroa.6.72., <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pi = fadd nsz <2 x double> %i.pg, %i.ph      ; 3 uses
  %i.pj = fadd nsz <2 x double> %i.cx, %i.ow
  %i.pk = shufflevector <2 x double> %i.pi, <2 x double> %i.pc, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.pl = fadd nsz <2 x double> %i.pj, %i.pk
  %i.pm = shufflevector <2 x double> %i.pc, <2 x double> %i.pi, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.pn = fadd nsz <2 x double> %i.pl, %i.pm
  store <2 x double> %i.pn, ptr %i.op, align 8, !tbaa !24
  %i.po = load <2 x double>, ptr @ff_tx_tab_7_double, align 16
  %i.pp = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 8), align 8, !tbaa !24 ; 6 uses
  %i.pq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 16), align 16
  %i.pr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 32), align 16, !tbaa !24 ; 4 uses
  %i.ps = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 40), align 8, !tbaa !30 ; 3 uses
  %i.pt = shufflevector <2 x double> %i.pp, <2 x double> %i.pr, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pu = fneg nsz <2 x double> %i.pt             ; 3 uses
  %i.pv = fneg nsz <2 x double> %i.pc
  %i.pw = fmul nsz <2 x double> %i.pt, %i.pv
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.py = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.pz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.ow, <2 x double> %i.px)
  %i.qa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.pi, <2 x double> %i.pz) ; 2 uses
  %i.qb = load double, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_double, i64 24), align 8, !tbaa !30 ; 2 uses
  %i.qc = extractelement <2 x double> %i.pp, i64 0
  %i.qd = fneg nsz double %i.qc
  %i.qe = shufflevector <2 x double> %i.ox, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qf = fneg nsz double %i.qb
  %i.qg = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qi = fmul nsz <2 x double> %i.ox, %i.qh
  %i.qj = shufflevector <2 x double> %i.qi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qk = shufflevector <2 x double> %i.pr, <2 x double> %i.pp, <2 x i32> <i32 1, i32 2>
  %i.ql = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qk, <2 x double> %i.pf, <2 x double> %i.qj)
  %i.qm = shufflevector <2 x double> %i.pp, <2 x double> %i.pr, <2 x i32> <i32 0, i32 3>
  %i.qn = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qm, <2 x double> %i.pa, <2 x double> %i.ql) ; 2 uses
  %i.qo = fsub nsz <2 x double> %i.qa, %i.qn      ; 2 uses
  %i.qp = fadd nsz <2 x double> %i.qa, %i.qn      ; 2 uses
  %i.qq = shufflevector <2 x double> %i.qo, <2 x double> %i.qp, <2 x i32> <i32 0, i32 3>
  %i.qr = shufflevector <2 x double> %i.qp, <2 x double> %i.qo, <2 x i32> <i32 0, i32 3>
  %i.qs = fadd nsz <2 x double> %i.cx, %i.qr
  store <2 x double> %i.qs, ptr %i.oq, align 8, !tbaa !24
  %i.qt = fneg nsz <2 x double> %i.ow             ; 2 uses
  %i.qu = shufflevector <2 x double> %i.pq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qv = fmul nsz <2 x double> %i.qu, %i.qt
  %i.qw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.pm, <2 x double> %i.qv)
  %i.qx = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qy = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qx, <2 x double> %i.pk, <2 x double> %i.qw) ; 2 uses
  %i.qz = shufflevector <2 x double> %i.ox, <2 x double> %i.pa, <2 x i32> <i32 1, i32 3>
  %i.ra = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.rb = insertelement <2 x double> %i.ra, double %i.ps, i64 0
  %i.rc = fmul nsz <2 x double> %i.qz, %i.rb
  %i.rd = insertelement <2 x double> %i.pp, double %i.ps, i64 1
  %i.re = shufflevector <2 x double> %i.pf, <2 x double> %i.ox, <2 x i32> <i32 0, i32 2>
  %i.rf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rd, <2 x double> %i.re, <2 x double> %i.rc)
  %i.rg = insertelement <2 x double> poison, double %i.qf, i64 0
  %i.rh = shufflevector <2 x double> %i.rg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ri = shufflevector <2 x double> %i.pa, <2 x double> %i.pf, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.rj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rh, <2 x double> %i.ri, <2 x double> %i.rf) ; 2 uses
  %i.rk = fadd nsz <2 x double> %i.qy, %i.rj      ; 2 uses
  %i.rl = fsub nsz <2 x double> %i.qy, %i.rj      ; 2 uses
  %i.rm = shufflevector <2 x double> %i.rk, <2 x double> %i.rl, <2 x i32> <i32 0, i32 3>
  %i.rn = shufflevector <2 x double> %i.rl, <2 x double> %i.rk, <2 x i32> <i32 0, i32 3>
  %i.ro = fadd nsz <2 x double> %i.cx, %i.rn
  store <2 x double> %i.ro, ptr %i.or, align 8, !tbaa !24
  %i.rp = shufflevector <2 x double> %i.pf, <2 x double> %i.pa, <2 x i32> <i32 0, i32 3>
  %i.rq = fmul nsz <2 x double> %i.rp, %i.qh
  %i.rr = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rs, <2 x double> %i.ri, <2 x double> %i.rq)
  %i.ru = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rw = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.qe, <2 x double> %i.rt) ; 2 uses
  %i.rx = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ry = fmul nsz <2 x double> %i.rx, %i.qt
  %i.rz = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.py, <2 x double> %i.pk, <2 x double> %i.ry)
  %i.sa = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sa, <2 x double> %i.pm, <2 x double> %i.rz) ; 2 uses
  %i.sc = fsub nsz <2 x double> %i.sb, %i.rw      ; 2 uses
  %i.sd = fadd nsz <2 x double> %i.sb, %i.rw      ; 2 uses
  %i.se = shufflevector <2 x double> %i.sc, <2 x double> %i.sd, <2 x i32> <i32 0, i32 3>
  %i.sf = shufflevector <2 x double> %i.sd, <2 x double> %i.sc, <2 x i32> <i32 0, i32 3>
  %i.sg = fadd nsz <2 x double> %i.cx, %i.sf
  store <2 x double> %i.sg, ptr %i.os, align 8, !tbaa !24
  %i.sh = fadd nsz <2 x double> %i.cx, %i.se
  store <2 x double> %i.sh, ptr %i.ot, align 8, !tbaa !24
  %i.si = fadd nsz <2 x double> %i.cx, %i.rm
  store <2 x double> %i.si, ptr %i.ou, align 8, !tbaa !24
  %i.sj = fadd nsz <2 x double> %i.cx, %i.qq
  store <2 x double> %i.sj, ptr %i.ov, align 8, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !98

.lr.ph:                                           ; preds = %.preheader136
  %i.sk = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %i.sl = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.w

._crit_edge:                                      ; preds = %bb.w, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.w:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.w ] ; 3 uses
  %i.sm = add nuw nsw i64 %indvars.iv151, %i.sl   ; 3 uses
  %i.sn = xor i64 %indvars.iv151, -1
  %i.so = add nsw i64 %i.sl, %i.sn                ; 3 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.sm
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !12
  %i.sr = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.so
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !12
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [16 x i8], ptr %i.sk, i64 %i.st ; 2 uses
  %i.sv = load double, ptr %i.su, align 8, !tbaa !29 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !30 ; 2 uses
  %i.sy = sext i32 %i.sq to i64
  %i.sz = getelementptr inbounds [16 x i8], ptr %i.sk, i64 %i.sy ; 2 uses
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !29 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tc = load double, ptr %i.tb, align 8, !tbaa !30 ; 2 uses
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.sm ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8 ; 2 uses
  %i.tf = load double, ptr %i.te, align 8, !tbaa !30
  %i.tg = load double, ptr %i.td, align 8, !tbaa !29
  %i.th = fneg nsz double %i.tg
  %i.ti = fmul nsz double %i.tc, %i.th
  %i.tj = tail call nsz double @llvm.fmuladd.f64(double %i.ta, double %i.tf, double %i.ti)
  %i.tk = shl nsw i64 %i.so, 1
  %i.tl = mul nsw i64 %i.p, %i.tk
  %i.tm = getelementptr [8 x i8], ptr %1, i64 %i.tl ; 2 uses
  %i.tn = getelementptr [8 x i8], ptr %i.tm, i64 %i.p
  store double %i.tj, ptr %i.tn, align 8, !tbaa !24
  %i.to = load double, ptr %i.td, align 8, !tbaa !29
  %i.tp = load double, ptr %i.te, align 8, !tbaa !30
  %i.tq = fmul nsz double %i.tc, %i.tp
  %i.tr = tail call nsz double @llvm.fmuladd.f64(double %i.ta, double %i.to, double %i.tq)
  %i.ts = shl nuw nsw i64 %i.sm, 1
  %i.tt = mul nuw nsw i64 %i.p, %i.ts
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.tt ; 2 uses
  store double %i.tr, ptr %i.tu, align 8, !tbaa !24
  %i.tv = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.so ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !30
  %i.ty = load double, ptr %i.tv, align 8, !tbaa !29
  %i.tz = fneg nsz double %i.ty
  %i.ua = fmul nsz double %i.sx, %i.tz
  %i.ub = tail call nsz double @llvm.fmuladd.f64(double %i.sv, double %i.tx, double %i.ua)
  %i.uc = getelementptr [8 x i8], ptr %i.tu, i64 %i.p
  store double %i.ub, ptr %i.uc, align 8, !tbaa !24
  %i.ud = load double, ptr %i.tv, align 8, !tbaa !29
  %i.ue = load double, ptr %i.tw, align 8, !tbaa !30
  %i.uf = fmul nsz double %i.sx, %i.ue
  %i.ug = tail call nsz double @llvm.fmuladd.f64(double %i.sv, double %i.ud, double %i.uf)
  store double %i.ug, ptr %i.tm, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.w, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexDouble], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nsw i32 %i.e, 27                     ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.idx.i = shl nuw nsw i64 %i.u, 5
  %.idx196.i = mul nuw nsw i64 %i.u, 48
  %.idx197.i = shl nuw nsw i64 %i.u, 6
  %.idx198.i = mul nuw nsw i64 %i.u, 80
  %.idx199.i = mul nuw nsw i64 %i.u, 96
  %.idx200.i = mul nuw nsw i64 %i.u, 112
  %.idx201.i = shl nuw nsw i64 %i.u, 7
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ag = sext i32 %i.e to i64                    ; 8 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  tail call void %i.ah(ptr noundef %i.ad, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 16) #16
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.am = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 16) #16
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx160 = shl nsw i64 %i.ag, 5
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx160 ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 16) #16
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx161 = mul nsw i64 %i.ag, 48
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx161 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 16) #16
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx162 = shl nsw i64 %i.ag, 6
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx162 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 16) #16
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx163 = mul nsw i64 %i.ag, 80
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx163 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 16) #16
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx164 = mul nsw i64 %i.ag, 96
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx164 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 16) #16
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx165 = mul nsw i64 %i.ag, 112
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx165 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 16) #16
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !32
  %.idx166 = shl nsw i64 %i.ag, 7
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx166 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 16) #16
  %i.bp = icmp sgt i32 %i.i, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.bs ; 9 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx196.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx197.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx198.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx199.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx200.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx201.i
  %i.cc = load <2 x double>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.cd = load <2 x double>, ptr %i.v, align 16, !tbaa !24 ; 2 uses
  %i.ce = load <2 x double>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.cf = fsub nsz <2 x double> %i.cd, %i.ce      ; 2 uses
  %i.cg = fadd nsz <2 x double> %i.cd, %i.ce      ; 2 uses
  %i.ch = load <2 x double>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.ci = load <2 x double>, ptr %i.y, align 16, !tbaa !24 ; 2 uses
  %i.cj = fsub nsz <2 x double> %i.ch, %i.ci      ; 2 uses
  %i.ck = fadd nsz <2 x double> %i.ch, %i.ci      ; 2 uses
  %i.cl = load <2 x double>, ptr %i.z, align 16, !tbaa !24 ; 2 uses
  %i.cm = load <2 x double>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.cn = fsub nsz <2 x double> %i.cl, %i.cm
  %i.co = fadd nsz <2 x double> %i.cl, %i.cm      ; 2 uses
  %i.cp = load <2 x double>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.cq = load <2 x double>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.cr = fsub nsz <2 x double> %i.cp, %i.cq      ; 3 uses
  %i.cs = fadd nsz <2 x double> %i.cp, %i.cq      ; 3 uses
  %i.ct = fsub nsz <2 x double> %i.cg, %i.cs      ; 2 uses
  %i.cu = fsub nsz <2 x double> %i.ck, %i.cs      ; 2 uses
  %i.cv = fsub nsz <2 x double> %i.cf, %i.cr      ; 2 uses
  %i.cw = fadd nsz <2 x double> %i.cj, %i.cr      ; 2 uses
  %i.cx = fneg nsz <2 x double> %i.cu
  %i.cy = fneg nsz <2 x double> %i.cw
  %i.cz = fadd nsz <2 x double> %i.cc, %i.co      ; 2 uses
  %i.da = fadd nsz <2 x double> %i.cg, %i.ck
  %i.db = fadd nsz <2 x double> %i.da, %i.cs      ; 2 uses
  %i.dc = fadd nsz <2 x double> %i.cz, %i.db
  store <2 x double> %i.dc, ptr %i.bt, align 8, !tbaa !24
  %i.dd = load <6 x double>, ptr @ff_tx_tab_9_double, align 16, !tbaa !24 ; 6 uses
  %i.de = fsub nsz <2 x double> %i.cf, %i.cj
  %i.df = fadd nsz <2 x double> %i.de, %i.cr
  %i.dg = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dh = fmul nsz <2 x double> %i.df, %i.dg
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dj = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.db, <2 x double> %i.cz) ; 2 uses
  %i.dl = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.co, <2 x double> %i.cc) ; 3 uses
  %i.dm = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.dn = fmul nsz <2 x double> %i.cu, %i.dm
  %i.do = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.dp = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.ct, <2 x double> %i.dn) ; 2 uses
  %i.dq = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.dr = fmul nsz <2 x double> %i.cw, %i.dq
  %i.ds = shufflevector <6 x double> %i.dd, <6 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.dt = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.cv, <2 x double> %i.dr) ; 2 uses
  %i.du = fmul nsz <2 x double> %i.cn, %i.dg      ; 3 uses
  %i.dv = fadd nsz <2 x double> %i.dl, %i.dp      ; 2 uses
  %i.dw = fadd nsz <2 x double> %i.du, %i.dt
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = fsub nsz <2 x double> %i.dk, %i.di      ; 2 uses
  %i.dz = fadd nsz <2 x double> %i.dk, %i.di      ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.eb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_double, i64 48), align 16, !tbaa !24 ; 2 uses
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = fmul nsz <2 x double> %i.ec, %i.cx
  %i.ee = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.ct, <2 x double> %i.ed) ; 2 uses
  %i.ef = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = fmul nsz <2 x double> %i.ef, %i.cy
  %i.eh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.cv, <2 x double> %i.eg) ; 2 uses
  %i.ei = fadd nsz <2 x double> %i.dl, %i.ee      ; 2 uses
  %i.ej = fsub nsz <2 x double> %i.eh, %i.du
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = fadd nsz <2 x double> %i.dv, %i.dx      ; 2 uses
  %i.em = fsub nsz <2 x double> %i.dv, %i.dx      ; 2 uses
  %i.en = shufflevector <2 x double> %i.el, <2 x double> %i.em, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.en, ptr %i.bu, align 8, !tbaa !24
  %i.eo = fadd nsz <2 x double> %i.ei, %i.ek      ; 2 uses
  %i.ep = fsub nsz <2 x double> %i.ei, %i.ek      ; 2 uses
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.eq, ptr %i.bv, align 8, !tbaa !24
  %i.er = shufflevector <2 x double> %i.dz, <2 x double> %i.dy, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.er, ptr %i.bw, align 8, !tbaa !24
  %i.es = fadd nsz <2 x double> %i.dp, %i.ee
  %i.et = fsub nsz <2 x double> %i.dl, %i.es      ; 2 uses
  %i.eu = fsub nsz <2 x double> %i.eh, %i.dt
  %i.ev = fadd nsz <2 x double> %i.du, %i.eu
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = fadd nsz <2 x double> %i.et, %i.ew      ; 2 uses
  %i.ey = fsub nsz <2 x double> %i.et, %i.ew      ; 2 uses
  %i.ez = shufflevector <2 x double> %i.ex, <2 x double> %i.ey, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ez, ptr %i.bx, align 8, !tbaa !24
  %i.fa = shufflevector <2 x double> %i.ey, <2 x double> %i.ex, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fa, ptr %i.by, align 8, !tbaa !24
  store <2 x double> %i.ea, ptr %i.bz, align 8, !tbaa !24
  %i.fb = shufflevector <2 x double> %i.ep, <2 x double> %i.eo, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fb, ptr %i.ca, align 8, !tbaa !24
  %i.fc = shufflevector <2 x double> %i.em, <2 x double> %i.el, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.fc, ptr %i.cb, align 8, !tbaa !24
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !100

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fd = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.fe = icmp slt i32 %i.fd, %i.f
  %i.ff = add nsw i32 %i.fd, %i.f
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fg
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !24 ; 2 uses
  %i.fj = xor i32 %i.fd, -1                       ; 4 uses
  br i1 %i.fe, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fk = add i32 %i.f, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !24
  %i.fo = fsub nsz double %i.fn, %i.fi
  %i.fp = add nsw i32 %i.fd, %i.g
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24
  %i.ft = add i32 %i.g, %i.fj
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fu
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !24
  %i.fx = fadd nsz double %i.fs, %i.fw
  %i.fy = fneg nsz double %i.fx
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.fz = add i32 %i.r, %i.fj
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !24
  %i.gd = fadd nsz double %i.fi, %i.gc
  %i.ge = fneg nsz double %i.gd
  %i.gf = sub nuw nsw i32 %i.fd, %i.f
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.gg
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !24
  %i.gj = add i32 %i.g, %i.fj
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.gk
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !24
  %i.gn = fsub nsz double %i.gi, %i.gm
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz double [ %i.fo, %bb.d ], [ %i.ge, %bb.e ]
  %.sroa.6.0 = phi nsz double [ %i.fy, %bb.d ], [ %i.gn, %bb.e ]
  %i.go = ashr i32 %i.fd, 1
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv
  %i.gs = load <2 x double>, ptr %i.gq, align 8, !tbaa !24 ; 2 uses
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gu = insertelement <2 x double> poison, double %.sroa.6.0, i64 0
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gw = fneg nsz <2 x double> %i.gt
  %i.gx = shufflevector <2 x double> %i.gs, <2 x double> %i.gw, <2 x i32> <i32 0, i32 2>
  %i.gy = fmul nsz <2 x double> %i.gv, %i.gx
  %i.gz = insertelement <2 x double> poison, double %.sroa.077.0, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.gt, <2 x double> %i.gy)
  store <2 x double> %i.hb, ptr %i.gr, align 16, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101

.lr.ph:                                           ; preds = %.preheader136
  %i.hc = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.hd = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.he = add nuw nsw i64 %indvars.iv151, %i.hd   ; 3 uses
  %i.hf = xor i64 %indvars.iv151, -1
  %i.hg = add nsw i64 %i.hd, %i.hf                ; 3 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.he
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !12
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [16 x i8], ptr %i.hc, i64 %i.hl ; 2 uses
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !29 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !30 ; 2 uses
  %i.hq = sext i32 %i.hi to i64
  %i.hr = getelementptr inbounds [16 x i8], ptr %i.hc, i64 %i.hq ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !29 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !30 ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.he ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !30
  %i.hy = load double, ptr %i.hv, align 8, !tbaa !29
  %i.hz = fneg nsz double %i.hy
  %i.ia = fmul nsz double %i.hu, %i.hz
  %i.ib = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.hx, double %i.ia)
  %i.ic = shl nsw i64 %i.hg, 1
  %i.id = mul nsw i64 %i.p, %i.ic
  %i.ie = getelementptr [8 x i8], ptr %1, i64 %i.id ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %i.p
  store double %i.ib, ptr %i.if, align 8, !tbaa !24
  %i.ig = load double, ptr %i.hv, align 8, !tbaa !29
  %i.ih = load double, ptr %i.hw, align 8, !tbaa !30
  %i.ii = fmul nsz double %i.hu, %i.ih
  %i.ij = tail call nsz double @llvm.fmuladd.f64(double %i.hs, double %i.ig, double %i.ii)
  %i.ik = shl nuw nsw i64 %i.he, 1
  %i.il = mul nuw nsw i64 %i.p, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.il ; 2 uses
  store double %i.ij, ptr %i.im, align 8, !tbaa !24
  %i.in = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.hg ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !30
  %i.iq = load double, ptr %i.in, align 8, !tbaa !29
  %i.ir = fneg nsz double %i.iq
  %i.is = fmul nsz double %i.hp, %i.ir
  %i.it = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.ip, double %i.is)
  %i.iu = getelementptr [8 x i8], ptr %i.im, i64 %i.p
  store double %i.it, ptr %i.iu, align 8, !tbaa !24
  %i.iv = load double, ptr %i.in, align 8, !tbaa !29
  %i.iw = load double, ptr %i.io, align 8, !tbaa !30
  %i.ix = fmul nsz double %i.hp, %i.iw
  %i.iy = tail call nsz double @llvm.fmuladd.f64(double %i.hn, double %i.iv, double %i.ix)
  store double %i.iy, ptr %i.ie, align 8, !tbaa !24
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_double_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexDouble], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nsw i32 %i.e, 45                     ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.p = lshr i64 %3, 3                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader151.lr.ph, label %.preheader150

.preheader151.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 96
  %.idx88.i = mul nuw nsw i64 %i.u, 192
  %.idx89.i = mul nuw nsw i64 %i.u, 48
  %.idx90.i = mul nuw nsw i64 %i.u, 144
  %.idx.i139 = mul nuw nsw i64 %i.u, 160
  %.idx88.i140 = mul nuw nsw i64 %i.u, 112
  %.idx89.i141 = mul nuw nsw i64 %i.u, 208
  %.idx90.i142 = shl nuw nsw i64 %i.u, 6
  %.idx.i146 = mul nuw nsw i64 %i.u, 80
  %.idx88.i147 = mul nuw nsw i64 %i.u, 176
  %.idx89.i148 = shl nuw nsw i64 %i.u, 5
  %.idx90.i149 = shl nuw nsw i64 %i.u, 7
  %.idx91.i = mul nuw nsw i64 %i.u, 224
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 176
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 224
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph, %fft15.exit
  %indvars.iv162 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next163, %fft15.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv162, 60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.b

.preheader150.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !33
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %bb.a
  %i.aj = phi ptr [ %.pre, %.preheader150.loopexit ], [ %i.d, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.am = sext i32 %i.e to i64                    ; 14 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  tail call void %i.an(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %i.ao, i64 noundef 16) #16
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ar, i64 %i.am ; 2 uses
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.as, i64 noundef 16) #16
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx179 = shl nsw i64 %i.am, 5
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %.idx179 ; 2 uses
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.aw, i64 noundef 16) #16
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx180 = mul nsw i64 %i.am, 48
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.idx180 ; 2 uses
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.ba, i64 noundef 16) #16
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx181 = shl nsw i64 %i.am, 6
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %.idx181 ; 2 uses
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.be, i64 noundef 16) #16
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx182 = mul nsw i64 %i.am, 80
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.idx182 ; 2 uses
  tail call void %i.bf(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef 16) #16
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx183 = mul nsw i64 %i.am, 96
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx183 ; 2 uses
  tail call void %i.bj(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm, i64 noundef 16) #16
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx184 = mul nsw i64 %i.am, 112
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx184 ; 2 uses
  tail call void %i.bn(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bq, i64 noundef 16) #16
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx185 = shl nsw i64 %i.am, 7
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.idx185 ; 2 uses
  tail call void %i.br(ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef %i.bu, i64 noundef 16) #16
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx186 = mul nsw i64 %i.am, 144
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx186 ; 2 uses
  tail call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.by, i64 noundef 16) #16
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx187 = mul nsw i64 %i.am, 160
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.idx187 ; 2 uses
  tail call void %i.bz(ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.cc, i64 noundef 16) #16
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx188 = mul nsw i64 %i.am, 176
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.idx188 ; 2 uses
  tail call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.cg, i64 noundef 16) #16
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cj = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx189 = mul nsw i64 %i.am, 192
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.idx189 ; 2 uses
  tail call void %i.ch(ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.ck, i64 noundef 16) #16
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx190 = mul nsw i64 %i.am, 208
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.idx190 ; 2 uses
  tail call void %i.cl(ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.co, i64 noundef 16) #16
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !32
  %.idx191 = mul nsw i64 %i.am, 224
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.idx191 ; 2 uses
  tail call void %i.cp(ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cs, i64 noundef 16) #16
  %i.ct = icmp sgt i32 %i.i, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv162
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !12
  %i.cw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 80), align 16
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [16 x i8], ptr %i.t, i64 %i.cx ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i139
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i140
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i141
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i142
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i146
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i147
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i149
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx91.i
  %i.dn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_double, i64 64), align 16, !tbaa !24 ; 5 uses
  %i.do = load <2 x double>, ptr %4, align 16, !tbaa !24 ; 2 uses
  %i.dp = load <2 x double>, ptr %i.v, align 16, !tbaa !24 ; 2 uses
  %i.dq = load <2 x double>, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.dr = fsub nsz <2 x double> %i.dp, %i.dq
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dt = fadd nsz <2 x double> %i.dp, %i.dq      ; 2 uses
  %i.du = fmul nsz <2 x double> %i.ds, %i.dn      ; 2 uses
  %i.dv = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dw = fmul nsz <2 x double> %i.dt, %i.dv
  %i.dx = fsub nsz <2 x double> %i.do, %i.dw      ; 2 uses
  %i.dy = fsub nsz <2 x double> %i.dx, %i.du      ; 2 uses
  %i.dz = fadd nsz <2 x double> %i.dx, %i.du      ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> %i.dz, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.eb = load <2 x double>, ptr %i.x, align 16, !tbaa !24 ; 2 uses
  %i.ec = load <2 x double>, ptr %i.y, align 16, !tbaa !24 ; 2 uses
  %i.ed = load <2 x double>, ptr %i.z, align 16, !tbaa !24 ; 2 uses
  %i.ee = fsub nsz <2 x double> %i.ec, %i.ed
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.eg = fadd nsz <2 x double> %i.ec, %i.ed      ; 2 uses
  %i.eh = fmul nsz <2 x double> %i.ef, %i.dn      ; 2 uses
  %i.ei = fmul nsz <2 x double> %i.eg, %i.dv
  %i.ej = fsub nsz <2 x double> %i.eb, %i.ei      ; 2 uses
  %i.ek = fsub nsz <2 x double> %i.ej, %i.eh      ; 4 uses
  %i.el = fadd nsz <2 x double> %i.ej, %i.eh      ; 4 uses
  %i.em = shufflevector <2 x double> %i.ek, <2 x double> %i.el, <2 x i32> <i32 0, i32 3>
  %i.en = load <2 x double>, ptr %i.aa, align 16, !tbaa !24 ; 2 uses
  %i.eo = load <2 x double>, ptr %i.ab, align 16, !tbaa !24 ; 2 uses
  %i.ep = load <2 x double>, ptr %i.ac, align 16, !tbaa !24 ; 2 uses
  %i.eq = fsub nsz <2 x double> %i.eo, %i.ep
end_hunk_4
