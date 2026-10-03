Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_fft16_ns_float_c:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 4), align 4, !tbaa !24 ; 5 uses
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 2> ; 4 uses
  %i.x = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 4), align 4, !tbaa !24
  tail call void @ff_tx_fft8_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.y = load <2 x float>, ptr %i.b, align 4, !tbaa !24
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aa = load <2 x float>, ptr %i.c, align 4, !tbaa !24
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ac = fadd nsz <4 x float> %i.z, %i.ab
  %i.ad = fsub nsz <4 x float> %i.z, %i.ab
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.af = load <2 x float>, ptr %i.d, align 4, !tbaa !24
  %i.ag = load <3 x float>, ptr %i.f, align 4, !tbaa !24 ; 2 uses
  %i.ah = shufflevector <3 x float> %i.ag, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.ai = shufflevector <3 x float> %i.ag, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.al = fadd nsz <4 x float> %i.ah, %i.ak
  %i.am = fsub nsz <4 x float> %i.ah, %i.ak
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ao = fsub nsz <4 x float> %i.ae, %i.an       ; 2 uses
  store <4 x float> %i.ao, ptr %i.e, align 4, !tbaa !24
  %i.ap = fadd nsz <4 x float> %i.ae, %i.an       ; 5 uses
  store <4 x float> %i.ap, ptr %i.a, align 4, !tbaa !24
  %i.aq = load <2 x float>, ptr %i.l, align 4, !tbaa !24
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.as = load <2 x float>, ptr %i.m, align 4, !tbaa !24
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.au = fadd nsz <4 x float> %i.ar, %i.at
  %i.av = fsub nsz <4 x float> %i.ar, %i.at       ; 2 uses
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %i.ax = load <4 x float>, ptr %i.n, align 4, !tbaa !24 ; 3 uses
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.az = fadd nsz <4 x float> %i.ax, %i.ay
  %i.ba = fsub nsz <4 x float> %i.ax, %i.ay       ; 2 uses
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 6, i32 5, i32 3> ; 3 uses
  %foldExtExtBinop = fadd nsz <4 x float> %i.aw, %i.bb ; 2 uses
  %i.bc = fsub nsz <4 x float> %i.aw, %i.bb       ; 4 uses
  %i.bd = extractelement <4 x float> %i.bc, i64 1
  store float %i.bd, ptr %i.p, align 4, !tbaa !29
  %i.be = extractelement <4 x float> %i.bc, i64 2
  store float %i.be, ptr %i.o, align 4, !tbaa !28
  %i.bf = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.bh = fadd nsz <2 x float> %i.bf, %i.bg       ; 2 uses
  %foldExtExtBinop213 = fadd nsz <4 x float> %i.aw, %i.bb ; 2 uses
  %i.bi = load float, ptr %i.e, align 4, !tbaa !28
  %shift = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop215 = fmul nsz <4 x float> %i.w, %shift ; 2 uses
  %i.bj = extractelement <4 x float> %foldExtExtBinop215, i64 0
  %i.bk = fneg nsz float %i.bj
  %i.bl = load <2 x float>, ptr %i.g, align 4, !tbaa !24 ; 2 uses
  %i.bm = fneg nsz float %i.x                     ; 2 uses
  %i.bn = shufflevector <2 x float> %i.bl, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.ao, <4 x float> %i.bn, <4 x i32> <i32 1, i32 1, i32 5, i32 5>
  %i.bp = fmul nsz <4 x float> %i.w, %i.bo
  %i.bq = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x float> %i.bq, float %i.bi, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bt = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 2, i32 0> ; 2 uses
  %i.bu = fneg nsz <4 x float> %i.w
  %i.bv = shufflevector <4 x float> %i.bt, <4 x float> %i.bu, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.bw = insertelement <4 x float> %i.bv, float %i.bm, i64 3
  %i.bx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bw, <4 x float> %i.bp) ; 3 uses
  %i.by = load float, ptr %i.o, align 4, !tbaa !28
  %i.bz = load float, ptr %i.p, align 4, !tbaa !29
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cc = insertelement <2 x float> %i.cb, float %i.bm, i64 0
  %i.cd = insertelement <4 x float> %i.bc, float %i.by, i64 1
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cf = insertelement <4 x float> poison, float %i.bk, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> %foldExtExtBinop215, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ci = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cj = fmul nsz <4 x float> %i.ch, %i.ci
  %i.ck = shufflevector <4 x float> %i.cg, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ce, <4 x float> %i.bt, <4 x float> %i.ck) ; 3 uses
  %i.cm = load <4 x float>, ptr %i.t, align 4, !tbaa !24 ; 3 uses
  %i.cn = fadd nsz <4 x float> %i.bx, %i.cl       ; 3 uses
  %i.co = load float, ptr %i.h, align 4, !tbaa !28
  %i.cp = load float, ptr %i.i, align 4, !tbaa !29
  %i.cq = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul nsz <2 x float> %i.cq, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = shufflevector <3 x float> %i.v, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cx = fneg nsz <4 x float> %i.w
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.da = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cv, <2 x float> %i.cz, <2 x float> %i.ct) ; 3 uses
  %i.db = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dd = fmul nsz <2 x float> %i.db, %i.dc
  %i.de = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.df = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.cb, <2 x float> %i.dd) ; 3 uses
  %i.dg = load <4 x float>, ptr %1, align 4, !tbaa !24 ; 3 uses
  %i.dh = shufflevector <4 x float> %i.ap, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.di = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dn = fadd nsz <4 x float> %i.dj, %i.dm       ; 3 uses
  %foldExtExtBinop217 = fsub nsz <4 x float> %i.dg, %i.dn
  %i.do = extractelement <4 x float> %foldExtExtBinop217, i64 0
  store float %i.do, ptr %i.a, align 4, !tbaa !28
  %i.dp = load <4 x float>, ptr %i.s, align 4, !tbaa !24 ; 3 uses
  %i.dq = shufflevector <2 x float> %i.da, <2 x float> %i.df, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> %i.ap, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dt = shufflevector <2 x float> %i.df, <2 x float> %i.da, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 7, i32 poison, i32 2, i32 3>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dw = fsub nsz <4 x float> %i.ds, %i.dv       ; 3 uses
  %i.dx = fadd nsz <4 x float> %i.dp, %i.dw
  store <4 x float> %i.dx, ptr %i.s, align 4, !tbaa !24
  %i.dy = shufflevector <4 x float> %i.dg, <4 x float> %i.cm, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dz = shufflevector <4 x float> %i.dn, <4 x float> %i.cn, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ea = fsub nsz <4 x float> %i.dy, %i.dz
  store <4 x float> %i.ea, ptr %i.k, align 4, !tbaa !24
  %i.eb = fadd nsz <4 x float> %i.dn, %i.dg
  store <4 x float> %i.eb, ptr %1, align 4, !tbaa !24
  %i.ec = load <4 x float>, ptr %i.u, align 4, !tbaa !24 ; 4 uses
  %i.ed = shufflevector <4 x float> %i.bx, <4 x float> %i.cl, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ee = shufflevector <4 x float> %i.cl, <4 x float> %i.bx, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ef = fsub nsz <4 x float> %i.ed, %i.ee       ; 4 uses
  %foldExtExtBinop219 = fsub nsz <4 x float> %i.ec, %i.ef
  %i.eg = extractelement <4 x float> %foldExtExtBinop219, i64 1
  store float %i.eg, ptr %i.q, align 4, !tbaa !29
  %i.eh = shufflevector <4 x float> %i.dp, <4 x float> %i.ec, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ei = shufflevector <4 x float> %i.dw, <4 x float> %i.ef, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ej = fsub nsz <4 x float> %i.eh, %i.ei
  store <4 x float> %i.ej, ptr %i.r, align 4, !tbaa !24
  %i.ek = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.el = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.em = fsub nsz <2 x float> %i.ek, %i.el
  store <2 x float> %i.em, ptr %i.o, align 4, !tbaa !24
  %i.en = fadd nsz <4 x float> %i.ec, %i.ef
  store <4 x float> %i.en, ptr %i.u, align 4, !tbaa !24
  %i.eo = shufflevector <4 x float> %i.cm, <4 x float> %i.dp, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ep = shufflevector <4 x float> %i.cn, <4 x float> %i.dw, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.eq = fsub nsz <4 x float> %i.eo, %i.ep
  store <4 x float> %i.eq, ptr %i.j, align 4, !tbaa !24
  %i.er = fadd nsz <4 x float> %i.cm, %i.cn
  store <4 x float> %i.er, ptr %i.t, align 4, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft32_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @ff_tx_fft8_ns_float_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @ff_tx_fft8_ns_float_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ff_tx_fft_sr_combine_float_c(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = shl nsw i32 %2, 1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -28
  %i.f = mul nuw nsw i32 %2, 6
  %i.g = shl nuw nsw i32 %2, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0560 = phi i32 [ 0, %.lr.ph ], [ %i.mr, %bb.b ]
  %.0554559 = phi ptr [ %i.e, %.lr.ph ], [ %i.mq, %bb.b ] ; 9 uses
  %.0555558 = phi ptr [ %0, %.lr.ph ], [ %i.mo, %bb.b ] ; 13 uses
  %.0556557 = phi ptr [ %1, %.lr.ph ], [ %i.mp, %bb.b ] ; 9 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0555558, i64 %i.h ; 17 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !28
  %i.l = load float, ptr %.0556557, align 4, !tbaa !24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %.0554559, i64 28
  %i.p = load float, ptr %i.o, align 4, !tbaa !24 ; 3 uses
  %i.q = fneg nsz float %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0555558, i64 %i.i ; 17 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !29
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0555558, i64 %i.b ; 9 uses
  %i.w = insertelement <2 x float> poison, float %i.p, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = insertelement <2 x float> poison, float %i.n, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul nsz <2 x float> %i.x, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.q, i64 1 ; 2 uses
  %i.af = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.aa) ; 3 uses
  %i.ag = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = fmul nsz <2 x float> %i.ah, %i.ai
  %i.ak = insertelement <2 x float> poison, float %i.s, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x float> poison, float %i.l, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.p, i64 1
  %i.ao = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.an, <2 x float> %i.aj) ; 3 uses
  %i.ap = load <2 x float>, ptr %.0555558, align 4, !tbaa !24 ; 3 uses
  %i.aq = fadd nsz <2 x float> %i.af, %i.ao       ; 3 uses
  %foldExtExtBinop = fsub nsz <2 x float> %i.ap, %i.aq
  %3 = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %3, ptr %i.j, align 4, !tbaa !28
  %i.ar = load <2 x float>, ptr %i.v, align 4, !tbaa !24 ; 2 uses
  %i.as = shufflevector <2 x float> %i.af, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> %i.af, <2 x i32> <i32 1, i32 2>
  %i.au = fsub nsz <2 x float> %i.as, %i.at       ; 2 uses
  %i.av = fsub nsz <2 x float> %i.ar, %i.au
  store <2 x float> %i.av, ptr %i.r, align 4, !tbaa !24
  %i.aw = fadd nsz <2 x float> %i.ar, %i.au
  store <2 x float> %i.aw, ptr %i.v, align 4, !tbaa !24
  %i.ax = fsub nsz <2 x float> %i.ap, %i.aq
  %4 = extractelement <2 x float> %i.ax, i64 1
  store float %4, ptr %i.m, align 4, !tbaa !29
  %i.ay = fadd nsz <2 x float> %i.ap, %i.aq
  store <2 x float> %i.ay, ptr %.0555558, align 4, !tbaa !24
  %i.az = getelementptr i8, ptr %i.j, i64 16      ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %.0556557, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !24 ; 3 uses
  %i.bd = getelementptr i8, ptr %i.j, i64 20
  %i.be = load float, ptr %i.bd, align 4, !tbaa !29
  %i.bf = getelementptr inbounds nuw i8, ptr %.0554559, i64 20
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !24 ; 3 uses
  %i.bh = fneg nsz float %i.bg
  %i.bi = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !28
  %i.bk = getelementptr i8, ptr %i.r, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.0555558, i64 16 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.bo = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bc, i64 1
  %i.bq = insertelement <2 x float> poison, float %i.be, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul nsz <2 x float> %i.bp, %i.br
  %i.bt = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bh, i64 1 ; 2 uses
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bw, <2 x float> %i.bs) ; 3 uses
  %i.by = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = fmul nsz <2 x float> %i.bz, %i.ca
  %i.cc = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bg, i64 1
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.cf, <2 x float> %i.cb) ; 3 uses
  %i.ch = load <2 x float>, ptr %i.bm, align 4, !tbaa !24 ; 2 uses
  %i.ci = fadd nsz <2 x float> %i.bx, %i.cg       ; 2 uses
  %i.cj = load <2 x float>, ptr %i.bn, align 4, !tbaa !24 ; 2 uses
  %i.ck = shufflevector <2 x float> %i.bx, <2 x float> %i.cg, <2 x i32> <i32 1, i32 2>
  %i.cl = shufflevector <2 x float> %i.cg, <2 x float> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.cm = fsub nsz <2 x float> %i.ck, %i.cl       ; 2 uses
  %i.cn = fsub nsz <2 x float> %i.cj, %i.cm
  store <2 x float> %i.cn, ptr %i.bi, align 4, !tbaa !24
  %i.co = fadd nsz <2 x float> %i.cj, %i.cm
  store <2 x float> %i.co, ptr %i.bn, align 4, !tbaa !24
  %5 = fsub nsz <2 x float> %i.ch, %i.ci
  store <2 x float> %5, ptr %i.az, align 4, !tbaa !24
  %i.cp = fadd nsz <2 x float> %i.ch, %i.ci
  store <2 x float> %i.cp, ptr %i.bm, align 4, !tbaa !24
  %i.cq = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !28
  %i.cs = getelementptr inbounds nuw i8, ptr %.0556557, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !24 ; 3 uses
  %i.cu = getelementptr i8, ptr %i.j, i64 36
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !29
  %i.cw = getelementptr inbounds nuw i8, ptr %.0554559, i64 12
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !24 ; 3 uses
  %i.cy = fneg nsz float %i.cx
  %i.cz = getelementptr i8, ptr %i.r, i64 32      ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !28
  %i.db = getelementptr i8, ptr %i.r, i64 36
  %i.dc = load float, ptr %i.db, align 4, !tbaa !29
  %i.dd = getelementptr inbounds nuw i8, ptr %.0555558, i64 32 ; 2 uses
  %i.de = getelementptr i8, ptr %i.v, i64 32      ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.ct, i64 1
  %i.dh = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul nsz <2 x float> %i.dg, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cy, i64 1 ; 2 uses
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dn, <2 x float> %i.dj) ; 3 uses
  %i.dp = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ds = fmul nsz <2 x float> %i.dq, %i.dr
  %i.dt = insertelement <2 x float> poison, float %i.da, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.cx, i64 1
  %i.dx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.du, <2 x float> %i.dw, <2 x float> %i.ds) ; 3 uses
  %i.dy = load <2 x float>, ptr %i.dd, align 4, !tbaa !24 ; 2 uses
  %i.dz = fadd nsz <2 x float> %i.do, %i.dx       ; 2 uses
  %i.ea = load <2 x float>, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %i.eb = shufflevector <2 x float> %i.do, <2 x float> %i.dx, <2 x i32> <i32 1, i32 2>
  %i.ec = shufflevector <2 x float> %i.dx, <2 x float> %i.do, <2 x i32> <i32 1, i32 2>
  %i.ed = fsub nsz <2 x float> %i.eb, %i.ec       ; 2 uses
  %i.ee = fsub nsz <2 x float> %i.ea, %i.ed
  store <2 x float> %i.ee, ptr %i.cz, align 4, !tbaa !24
  %i.ef = fadd nsz <2 x float> %i.ea, %i.ed
  store <2 x float> %i.ef, ptr %i.de, align 4, !tbaa !24
  %6 = fsub nsz <2 x float> %i.dy, %i.dz
  store <2 x float> %6, ptr %i.cq, align 4, !tbaa !24
  %i.eg = fadd nsz <2 x float> %i.dy, %i.dz
  store <2 x float> %i.eg, ptr %i.dd, align 4, !tbaa !24
  %i.eh = getelementptr i8, ptr %i.j, i64 48      ; 2 uses
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %.0556557, i64 24
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !24 ; 3 uses
  %i.el = getelementptr i8, ptr %i.j, i64 52
  %i.em = load float, ptr %i.el, align 4, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %.0554559, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !24 ; 3 uses
  %i.ep = fneg nsz float %i.eo
  %i.eq = getelementptr i8, ptr %i.r, i64 48      ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !28
  %i.es = getelementptr i8, ptr %i.r, i64 52
  %i.et = load float, ptr %i.es, align 4, !tbaa !29
  %i.eu = getelementptr inbounds nuw i8, ptr %.0555558, i64 48 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.v, i64 48      ; 2 uses
  %i.ew = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.ek, i64 1
  %i.ey = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul nsz <2 x float> %i.ex, %i.ez
  %i.fb = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.ep, i64 1 ; 2 uses
  %i.ff = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fe, <2 x float> %i.fa) ; 3 uses
  %i.fg = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fj = fmul nsz <2 x float> %i.fh, %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.eo, i64 1
  %i.fo = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fn, <2 x float> %i.fj) ; 3 uses
  %i.fp = load <2 x float>, ptr %i.eu, align 4, !tbaa !24 ; 2 uses
  %i.fq = fadd nsz <2 x float> %i.ff, %i.fo       ; 2 uses
  %i.fr = load <2 x float>, ptr %i.ev, align 4, !tbaa !24 ; 2 uses
  %i.fs = shufflevector <2 x float> %i.ff, <2 x float> %i.fo, <2 x i32> <i32 1, i32 2>
  %i.ft = shufflevector <2 x float> %i.fo, <2 x float> %i.ff, <2 x i32> <i32 1, i32 2>
  %i.fu = fsub nsz <2 x float> %i.fs, %i.ft       ; 2 uses
  %i.fv = fsub nsz <2 x float> %i.fr, %i.fu
  store <2 x float> %i.fv, ptr %i.eq, align 4, !tbaa !24
  %i.fw = fadd nsz <2 x float> %i.fr, %i.fu
  %7 = fsub nsz <2 x float> %i.fp, %i.fq
  store <2 x float> %7, ptr %i.eh, align 4, !tbaa !24
  store <2 x float> %i.fw, ptr %i.ev, align 4, !tbaa !24
  %i.fx = fadd nsz <2 x float> %i.fp, %i.fq
  store <2 x float> %i.fx, ptr %i.eu, align 4, !tbaa !24
  %i.fy = getelementptr i8, ptr %i.j, i64 8       ; 2 uses
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !28
  %i.ga = getelementptr inbounds nuw i8, ptr %.0556557, i64 4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !24 ; 3 uses
  %i.gc = getelementptr i8, ptr %i.j, i64 12
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !29
  %i.ge = getelementptr inbounds nuw i8, ptr %.0554559, i64 24
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !24 ; 3 uses
  %i.gg = fneg nsz float %i.gf
  %i.gh = getelementptr i8, ptr %i.r, i64 8       ; 2 uses
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !28
  %i.gj = getelementptr i8, ptr %i.r, i64 12
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !29
  %i.gl = getelementptr inbounds nuw i8, ptr %.0555558, i64 8 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.gn = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.gb, i64 1
  %i.gp = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul nsz <2 x float> %i.go, %i.gq
  %i.gs = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gg, i64 1 ; 2 uses
  %i.gw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gv, <2 x float> %i.gr) ; 3 uses
  %i.gx = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ha = fmul nsz <2 x float> %i.gy, %i.gz
  %i.hb = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.he = insertelement <2 x float> %i.hd, float %i.gf, i64 1
  %i.hf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hc, <2 x float> %i.he, <2 x float> %i.ha) ; 3 uses
  %i.hg = load <2 x float>, ptr %i.gl, align 4, !tbaa !24 ; 2 uses
  %i.hh = fadd nsz <2 x float> %i.gw, %i.hf       ; 2 uses
  %i.hi = load <2 x float>, ptr %i.gm, align 4, !tbaa !24 ; 2 uses
  %i.hj = shufflevector <2 x float> %i.gw, <2 x float> %i.hf, <2 x i32> <i32 1, i32 2>
  %i.hk = shufflevector <2 x float> %i.hf, <2 x float> %i.gw, <2 x i32> <i32 1, i32 2>
  %i.hl = fsub nsz <2 x float> %i.hj, %i.hk       ; 2 uses
  %i.hm = fsub nsz <2 x float> %i.hi, %i.hl
  store <2 x float> %i.hm, ptr %i.gh, align 4, !tbaa !24
  %i.hn = fadd nsz <2 x float> %i.hi, %i.hl
  store <2 x float> %i.hn, ptr %i.gm, align 4, !tbaa !24
  %8 = fsub nsz <2 x float> %i.hg, %i.hh
  store <2 x float> %8, ptr %i.fy, align 4, !tbaa !24
  %i.ho = fadd nsz <2 x float> %i.hg, %i.hh
  store <2 x float> %i.ho, ptr %i.gl, align 4, !tbaa !24
  %i.hp = getelementptr i8, ptr %i.j, i64 24      ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %.0556557, i64 12
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !24 ; 3 uses
  %i.ht = getelementptr i8, ptr %i.j, i64 28      ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !29
  %i.hv = getelementptr inbounds nuw i8, ptr %.0554559, i64 16
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !24 ; 3 uses
  %i.hx = fneg nsz float %i.hw
  %i.hy = getelementptr i8, ptr %i.r, i64 24      ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !28
  %i.ia = getelementptr i8, ptr %i.r, i64 28
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !29
  %i.ic = getelementptr inbounds nuw i8, ptr %.0555558, i64 24 ; 2 uses
  %i.id = getelementptr i8, ptr %i.v, i64 24      ; 2 uses
  %i.ie = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.hs, i64 1
  %i.ig = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = fmul nsz <2 x float> %i.if, %i.ih
  %i.ij = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.hx, i64 1 ; 2 uses
  %i.in = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.im, <2 x float> %i.ii) ; 3 uses
  %i.io = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iq = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ir = fmul nsz <2 x float> %i.ip, %i.iq
  %i.is = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.iv = insertelement <2 x float> %i.iu, float %i.hw, i64 1
  %i.iw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.ir) ; 3 uses
  %i.ix = load <2 x float>, ptr %i.ic, align 4, !tbaa !24 ; 3 uses
  %i.iy = fadd nsz <2 x float> %i.in, %i.iw       ; 3 uses
  %foldExtExtBinop.a = fsub nsz <2 x float> %i.ix, %i.iy
  %i.iz = extractelement <2 x float> %foldExtExtBinop.a, i64 0
  store float %i.iz, ptr %i.hp, align 4, !tbaa !28
  %i.ja = load <2 x float>, ptr %i.id, align 4, !tbaa !24 ; 2 uses
  %i.jb = shufflevector <2 x float> %i.in, <2 x float> %i.iw, <2 x i32> <i32 1, i32 2>
  %i.jc = shufflevector <2 x float> %i.iw, <2 x float> %i.in, <2 x i32> <i32 1, i32 2>
  %i.jd = fsub nsz <2 x float> %i.jb, %i.jc       ; 2 uses
  %i.je = fsub nsz <2 x float> %i.ja, %i.jd
  store <2 x float> %i.je, ptr %i.hy, align 4, !tbaa !24
  %i.jf = fadd nsz <2 x float> %i.ja, %i.jd
  store <2 x float> %i.jf, ptr %i.id, align 4, !tbaa !24
  %foldExtExtBinop562 = fsub nsz <2 x float> %i.ix, %i.iy
  %i.jg = extractelement <2 x float> %foldExtExtBinop562, i64 1
  store float %i.jg, ptr %i.ht, align 4, !tbaa !29
  %i.jh = fadd nsz <2 x float> %i.ix, %i.iy
  store <2 x float> %i.jh, ptr %i.ic, align 4, !tbaa !24
  %i.ji = getelementptr i8, ptr %i.j, i64 40      ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !28
  %i.jk = getelementptr inbounds nuw i8, ptr %.0556557, i64 20
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !24 ; 3 uses
  %i.jm = getelementptr i8, ptr %i.j, i64 44      ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !29
  %i.jo = getelementptr inbounds nuw i8, ptr %.0554559, i64 8
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !24 ; 3 uses
  %i.jq = fneg nsz float %i.jp
  %i.jr = getelementptr i8, ptr %i.r, i64 40      ; 2 uses
  %i.js = load float, ptr %i.jr, align 4, !tbaa !28
  %i.jt = getelementptr i8, ptr %i.r, i64 44
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !29
  %i.jv = getelementptr inbounds nuw i8, ptr %.0555558, i64 40 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.v, i64 40      ; 2 uses
  %i.jx = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %i.jl, i64 1
  %i.jz = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul nsz <2 x float> %i.jy, %i.ka
  %i.kc = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.jq, i64 1 ; 2 uses
  %i.kg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.kf, <2 x float> %i.kb) ; 3 uses
  %i.kh = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = fmul nsz <2 x float> %i.ki, %i.kj
  %i.kl = insertelement <2 x float> poison, float %i.js, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.ko = insertelement <2 x float> %i.kn, float %i.jp, i64 1
  %i.kp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.km, <2 x float> %i.ko, <2 x float> %i.kk) ; 3 uses
  %i.kq = load <2 x float>, ptr %i.jv, align 4, !tbaa !24 ; 3 uses
  %i.kr = fadd nsz <2 x float> %i.kg, %i.kp       ; 3 uses
  %foldExtExtBinop564 = fsub nsz <2 x float> %i.kq, %i.kr
  %i.ks = extractelement <2 x float> %foldExtExtBinop564, i64 0
  store float %i.ks, ptr %i.ji, align 4, !tbaa !28
  %i.kt = load <2 x float>, ptr %i.jw, align 4, !tbaa !24 ; 2 uses
  %i.ku = shufflevector <2 x float> %i.kg, <2 x float> %i.kp, <2 x i32> <i32 1, i32 2>
  %i.kv = shufflevector <2 x float> %i.kp, <2 x float> %i.kg, <2 x i32> <i32 1, i32 2>
  %i.kw = fsub nsz <2 x float> %i.ku, %i.kv       ; 2 uses
  %i.kx = fsub nsz <2 x float> %i.kt, %i.kw
  store <2 x float> %i.kx, ptr %i.jr, align 4, !tbaa !24
  %i.ky = fadd nsz <2 x float> %i.kt, %i.kw
  store <2 x float> %i.ky, ptr %i.jw, align 4, !tbaa !24
  %foldExtExtBinop566 = fsub nsz <2 x float> %i.kq, %i.kr
  %i.kz = extractelement <2 x float> %foldExtExtBinop566, i64 1
  store float %i.kz, ptr %i.jm, align 4, !tbaa !29
  %i.la = fadd nsz <2 x float> %i.kq, %i.kr
  store <2 x float> %i.la, ptr %i.jv, align 4, !tbaa !24
  %i.lb = getelementptr i8, ptr %i.j, i64 56      ; 2 uses
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !28
  %i.ld = getelementptr inbounds nuw i8, ptr %.0556557, i64 28
  %i.le = load float, ptr %i.ld, align 4, !tbaa !24 ; 3 uses
  %i.lf = getelementptr i8, ptr %i.j, i64 60      ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !29
  %i.lh = load float, ptr %.0554559, align 4, !tbaa !24 ; 3 uses
  %i.li = fneg nsz float %i.lh
  %i.lj = getelementptr i8, ptr %i.r, i64 56      ; 2 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !28
  %i.ll = getelementptr i8, ptr %i.r, i64 60
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !29
  %i.ln = getelementptr inbounds nuw i8, ptr %.0555558, i64 56 ; 2 uses
  %i.lo = getelementptr i8, ptr %i.v, i64 56      ; 2 uses
  %i.lp = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lq = insertelement <2 x float> %i.lp, float %i.le, i64 1
  %i.lr = insertelement <2 x float> poison, float %i.lg, i64 0
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = fmul nsz <2 x float> %i.lq, %i.ls
  %i.lu = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lw = insertelement <2 x float> poison, float %i.le, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.li, i64 1 ; 2 uses
  %i.ly = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lx, <2 x float> %i.lt) ; 3 uses
  %i.lz = insertelement <2 x float> poison, float %i.lm, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mc = fmul nsz <2 x float> %i.ma, %i.mb
  %i.md = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = insertelement <2 x float> poison, float %i.le, i64 0
  %i.mg = insertelement <2 x float> %i.mf, float %i.lh, i64 1
  %i.mh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> %i.mg, <2 x float> %i.mc) ; 3 uses
  %i.mi = load <2 x float>, ptr %i.ln, align 4, !tbaa !24 ; 3 uses
  %i.mj = fadd nsz <2 x float> %i.ly, %i.mh       ; 3 uses
  %foldExtExtBinop572 = fsub nsz <2 x float> %i.mi, %i.mj
  %9 = extractelement <2 x float> %foldExtExtBinop572, i64 0
  store float %9, ptr %i.lb, align 4, !tbaa !28
  %10 = load <2 x float>, ptr %i.lo, align 4, !tbaa !24 ; 2 uses
  %11 = shufflevector <2 x float> %i.ly, <2 x float> %i.mh, <2 x i32> <i32 1, i32 2>
  %12 = shufflevector <2 x float> %i.mh, <2 x float> %i.ly, <2 x i32> <i32 1, i32 2>
  %13 = fsub nsz <2 x float> %11, %12             ; 2 uses
  %i.mk = fsub nsz <2 x float> %10, %13
  store <2 x float> %i.mk, ptr %i.lj, align 4, !tbaa !24
  %i.ml = fadd nsz <2 x float> %10, %13
  store <2 x float> %i.ml, ptr %i.lo, align 4, !tbaa !24
  %foldExtExtBinop574 = fsub nsz <2 x float> %i.mi, %i.mj
  %i.mm = extractelement <2 x float> %foldExtExtBinop574, i64 1
  store float %i.mm, ptr %i.lf, align 4, !tbaa !29
  %i.mn = fadd nsz <2 x float> %i.mi, %i.mj
  store <2 x float> %i.mn, ptr %i.ln, align 4, !tbaa !24
  %i.mo = getelementptr inbounds nuw i8, ptr %.0555558, i64 64
  %i.mp = getelementptr inbounds nuw i8, ptr %.0556557, i64 32
  %i.mq = getelementptr inbounds i8, ptr %.0554559, i64 -32
  %i.mr = add nuw nsw i32 %.0560, 4               ; 2 uses
  %i.ms = icmp slt i32 %i.mr, %2
  br i1 %i.ms, label %bb.b, label %._crit_edge, !llvm.loop !62
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft64_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  tail call void @ff_tx_fft16_ns_float_c(ptr poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 384
  tail call void @ff_tx_fft16_ns_float_c(ptr poison, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_64_float, i32 noundef 8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft128_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 384
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_64_float, i32 noundef 8)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 512
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 640
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 704
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.i, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 768
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 896
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 896
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 960
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.o, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_128_float, i32 noundef 16)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft256_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft128_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 1024
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 1152
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1216
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1280
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1280
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1408
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1408
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.a, ptr noundef nonnull @ff_tx_tab_64_float, i32 noundef 8)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 1536
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1664
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 1664
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1728
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 1728
  tail call void @ff_tx_fft8_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_32_float, i32 noundef 4)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1792
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1792
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1920
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1920
  tail call void @ff_tx_fft16_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.k, ptr noundef nonnull @ff_tx_tab_64_float, i32 noundef 8)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_256_float, i32 noundef 32)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft512_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft256_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2048
  tail call void @ff_tx_fft128_ns_float_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3072
  tail call void @ff_tx_fft128_ns_float_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_512_float, i32 noundef 64)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft1024_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft256_ns_float_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2048
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3072
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_512_float, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4096
  tail call void @ff_tx_fft256_ns_float_c(ptr poison, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 6144
  tail call void @ff_tx_fft256_ns_float_c(ptr poison, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_1024_float, i32 noundef 128)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft2048_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft256_ns_float_c(ptr readnone poison, ptr noundef %1, ptr noundef readonly %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2048
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3072
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.c, ptr noundef nonnull readonly %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_512_float, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4096
  tail call void @ff_tx_fft256_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.e, ptr noundef nonnull readonly %i.f, i64 poison)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 6144
  tail call void @ff_tx_fft256_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.g, ptr noundef nonnull readonly %i.h, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_1024_float, i32 noundef 128)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8192
  tail call void @ff_tx_fft256_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.i, ptr noundef nonnull readonly %i.j, i64 poison)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10240
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 10240
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.k, ptr noundef nonnull readonly %i.l, i64 poison)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 11264
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 11264
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.m, ptr noundef nonnull readonly %i.n, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.i, ptr noundef nonnull @ff_tx_tab_512_float, i32 noundef 64)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12288 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12288
  tail call void @ff_tx_fft256_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.o, ptr noundef nonnull readonly %i.p, i64 poison)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 14336
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 14336
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.q, ptr noundef nonnull readonly %i.r, i64 poison)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 15360
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 15360
  tail call void @ff_tx_fft128_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.s, ptr noundef nonnull readonly %i.t, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef nonnull %i.o, ptr noundef nonnull @ff_tx_tab_512_float, i32 noundef 64)
  tail call fastcc void @ff_tx_fft_sr_combine_float_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_2048_float, i32 noundef 256)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft4096_ns_float_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft2048_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16384 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16384
  tail call void @ff_tx_fft256_ns_float_c(ptr readnone poison, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.b, i64 poison)
end_hunk_0
