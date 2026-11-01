Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_fft16_ns_float_c:bb.a
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
  %.0560 = phi i32 [ 0, %.lr.ph ], [ %i.mx, %bb.b ]
  %.0554559 = phi ptr [ %i.e, %.lr.ph ], [ %i.mw, %bb.b ] ; 9 uses
  %.0555558 = phi ptr [ %0, %.lr.ph ], [ %i.mu, %bb.b ] ; 13 uses
  %.0556557 = phi ptr [ %1, %.lr.ph ], [ %i.mv, %bb.b ] ; 9 uses
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
  %i.ar = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.ar, ptr %i.j, align 4, !tbaa !28
  %i.as = load <2 x float>, ptr %i.v, align 4, !tbaa !24 ; 2 uses
  %i.at = shufflevector <2 x float> %i.af, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.au = shufflevector <2 x float> %i.ao, <2 x float> %i.af, <2 x i32> <i32 1, i32 2>
  %i.av = fsub nsz <2 x float> %i.at, %i.au       ; 2 uses
  %i.aw = fsub nsz <2 x float> %i.as, %i.av
  store <2 x float> %i.aw, ptr %i.r, align 4, !tbaa !24
  %i.ax = fadd nsz <2 x float> %i.as, %i.av
  store <2 x float> %i.ax, ptr %i.v, align 4, !tbaa !24
  %foldExtExtBinop562 = fsub nsz <2 x float> %i.ap, %i.aq
  %i.ay = extractelement <2 x float> %foldExtExtBinop562, i64 1
  store float %i.ay, ptr %i.m, align 4, !tbaa !29
  %i.az = fadd nsz <2 x float> %i.ap, %i.aq
  store <2 x float> %i.az, ptr %.0555558, align 4, !tbaa !24
  %i.ba = getelementptr i8, ptr %i.j, i64 16      ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.0556557, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !24 ; 3 uses
  %i.be = getelementptr i8, ptr %i.j, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %.0554559, i64 20
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !24 ; 3 uses
  %i.bi = fneg nsz float %i.bh
  %i.bj = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !28
  %i.bl = getelementptr i8, ptr %i.r, i64 20
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %.0555558, i64 16 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bd, i64 1
  %i.br = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul nsz <2 x float> %i.bq, %i.bs
  %i.bu = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bi, i64 1 ; 2 uses
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.bx, <2 x float> %i.bt) ; 3 uses
  %i.bz = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cc = fmul nsz <2 x float> %i.ca, %i.cb
  %i.cd = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bh, i64 1
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.cg, <2 x float> %i.cc) ; 3 uses
  %i.ci = load <2 x float>, ptr %i.bn, align 4, !tbaa !24 ; 2 uses
  %i.cj = fadd nsz <2 x float> %i.by, %i.ch       ; 2 uses
  %i.ck = load <2 x float>, ptr %i.bo, align 4, !tbaa !24 ; 2 uses
  %i.cl = shufflevector <2 x float> %i.by, <2 x float> %i.ch, <2 x i32> <i32 1, i32 2>
  %i.cm = shufflevector <2 x float> %i.ch, <2 x float> %i.by, <2 x i32> <i32 1, i32 2>
  %i.cn = fsub nsz <2 x float> %i.cl, %i.cm       ; 2 uses
  %i.co = fsub nsz <2 x float> %i.ck, %i.cn
  store <2 x float> %i.co, ptr %i.bj, align 4, !tbaa !24
  %i.cp = fadd nsz <2 x float> %i.ck, %i.cn
  store <2 x float> %i.cp, ptr %i.bo, align 4, !tbaa !24
  %3 = fsub nsz <2 x float> %i.ci, %i.cj
  store <2 x float> %3, ptr %i.ba, align 4, !tbaa !24
  %i.cq = fadd nsz <2 x float> %i.ci, %i.cj
  store <2 x float> %i.cq, ptr %i.bn, align 4, !tbaa !24
  %i.cr = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %.0556557, i64 16
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !24 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.j, i64 36
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !29
  %i.cx = getelementptr inbounds nuw i8, ptr %.0554559, i64 12
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !24 ; 3 uses
  %i.cz = fneg nsz float %i.cy
  %i.da = getelementptr i8, ptr %i.r, i64 32      ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !28
  %i.dc = getelementptr i8, ptr %i.r, i64 36
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %.0555558, i64 32 ; 2 uses
  %i.df = getelementptr i8, ptr %i.v, i64 32      ; 2 uses
  %i.dg = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cu, i64 1
  %i.di = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul nsz <2 x float> %i.dh, %i.dj
  %i.dl = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.cz, i64 1 ; 2 uses
  %i.dp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.do, <2 x float> %i.dk) ; 3 uses
  %i.dq = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dt = fmul nsz <2 x float> %i.dr, %i.ds
  %i.du = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dx = insertelement <2 x float> %i.dw, float %i.cy, i64 1
  %i.dy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dx, <2 x float> %i.dt) ; 3 uses
  %i.dz = load <2 x float>, ptr %i.de, align 4, !tbaa !24 ; 2 uses
  %i.ea = fadd nsz <2 x float> %i.dp, %i.dy       ; 2 uses
  %i.eb = load <2 x float>, ptr %i.df, align 4, !tbaa !24 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.dp, <2 x float> %i.dy, <2 x i32> <i32 1, i32 2>
  %i.ed = shufflevector <2 x float> %i.dy, <2 x float> %i.dp, <2 x i32> <i32 1, i32 2>
  %i.ee = fsub nsz <2 x float> %i.ec, %i.ed       ; 2 uses
  %i.ef = fsub nsz <2 x float> %i.eb, %i.ee
  store <2 x float> %i.ef, ptr %i.da, align 4, !tbaa !24
  %i.eg = fadd nsz <2 x float> %i.eb, %i.ee
  store <2 x float> %i.eg, ptr %i.df, align 4, !tbaa !24
  %4 = fsub nsz <2 x float> %i.dz, %i.ea
  store <2 x float> %4, ptr %i.cr, align 4, !tbaa !24
  %i.eh = fadd nsz <2 x float> %i.dz, %i.ea
  store <2 x float> %i.eh, ptr %i.de, align 4, !tbaa !24
  %i.ei = getelementptr i8, ptr %i.j, i64 48      ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !28
  %i.ek = getelementptr inbounds nuw i8, ptr %.0556557, i64 24
  %i.el = load float, ptr %i.ek, align 4, !tbaa !24 ; 3 uses
  %i.em = getelementptr i8, ptr %i.j, i64 52
  %i.en = load float, ptr %i.em, align 4, !tbaa !29
  %i.eo = getelementptr inbounds nuw i8, ptr %.0554559, i64 4
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !24 ; 3 uses
  %i.eq = fneg nsz float %i.ep
  %i.er = getelementptr i8, ptr %i.r, i64 48      ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !28
  %i.et = getelementptr i8, ptr %i.r, i64 52
  %i.eu = load float, ptr %i.et, align 4, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %.0555558, i64 48 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.v, i64 48      ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.el, i64 1
  %i.ez = insertelement <2 x float> poison, float %i.en, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul nsz <2 x float> %i.ey, %i.fa
  %i.fc = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.eq, i64 1 ; 2 uses
  %i.fg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.ff, <2 x float> %i.fb) ; 3 uses
  %i.fh = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fk = fmul nsz <2 x float> %i.fi, %i.fj
  %i.fl = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fm = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = insertelement <2 x float> poison, float %i.el, i64 0
  %i.fo = insertelement <2 x float> %i.fn, float %i.ep, i64 1
  %i.fp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fm, <2 x float> %i.fo, <2 x float> %i.fk) ; 3 uses
  %i.fq = load <2 x float>, ptr %i.ev, align 4, !tbaa !24 ; 2 uses
  %i.fr = fadd nsz <2 x float> %i.fg, %i.fp       ; 2 uses
  %i.fs = load <2 x float>, ptr %i.ew, align 4, !tbaa !24 ; 2 uses
  %i.ft = shufflevector <2 x float> %i.fg, <2 x float> %i.fp, <2 x i32> <i32 1, i32 2>
  %i.fu = shufflevector <2 x float> %i.fp, <2 x float> %i.fg, <2 x i32> <i32 1, i32 2>
  %i.fv = fsub nsz <2 x float> %i.ft, %i.fu       ; 2 uses
  %i.fw = fsub nsz <2 x float> %i.fs, %i.fv
  store <2 x float> %i.fw, ptr %i.er, align 4, !tbaa !24
  %i.fx = fadd nsz <2 x float> %i.fs, %i.fv
  %5 = fsub nsz <2 x float> %i.fq, %i.fr
  store <2 x float> %5, ptr %i.ei, align 4, !tbaa !24
  store <2 x float> %i.fx, ptr %i.ew, align 4, !tbaa !24
  %i.fy = fadd nsz <2 x float> %i.fq, %i.fr
  store <2 x float> %i.fy, ptr %i.ev, align 4, !tbaa !24
  %i.fz = getelementptr i8, ptr %i.j, i64 8       ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !28
  %i.gb = getelementptr inbounds nuw i8, ptr %.0556557, i64 4
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !24 ; 3 uses
  %i.gd = getelementptr i8, ptr %i.j, i64 12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !29
  %i.gf = getelementptr inbounds nuw i8, ptr %.0554559, i64 24
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !24 ; 3 uses
  %i.gh = fneg nsz float %i.gg
  %i.gi = getelementptr i8, ptr %i.r, i64 8       ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !28
  %i.gk = getelementptr i8, ptr %i.r, i64 12
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !29
  %i.gm = getelementptr inbounds nuw i8, ptr %.0555558, i64 8 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.go = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.gc, i64 1
  %i.gq = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fmul nsz <2 x float> %i.gp, %i.gr
  %i.gt = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gh, i64 1 ; 2 uses
  %i.gx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gw, <2 x float> %i.gs) ; 3 uses
  %i.gy = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hb = fmul nsz <2 x float> %i.gz, %i.ha
  %i.hc = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.gg, i64 1
  %i.hg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hf, <2 x float> %i.hb) ; 3 uses
  %i.hh = load <2 x float>, ptr %i.gm, align 4, !tbaa !24 ; 2 uses
  %i.hi = fadd nsz <2 x float> %i.gx, %i.hg       ; 2 uses
  %i.hj = load <2 x float>, ptr %i.gn, align 4, !tbaa !24 ; 2 uses
  %i.hk = shufflevector <2 x float> %i.gx, <2 x float> %i.hg, <2 x i32> <i32 1, i32 2>
  %i.hl = shufflevector <2 x float> %i.hg, <2 x float> %i.gx, <2 x i32> <i32 1, i32 2>
  %i.hm = fsub nsz <2 x float> %i.hk, %i.hl       ; 2 uses
  %i.hn = fsub nsz <2 x float> %i.hj, %i.hm
  store <2 x float> %i.hn, ptr %i.gi, align 4, !tbaa !24
  %i.ho = fadd nsz <2 x float> %i.hj, %i.hm
  store <2 x float> %i.ho, ptr %i.gn, align 4, !tbaa !24
  %6 = fsub nsz <2 x float> %i.hh, %i.hi
  store <2 x float> %6, ptr %i.fz, align 4, !tbaa !24
  %i.hp = fadd nsz <2 x float> %i.hh, %i.hi
  store <2 x float> %i.hp, ptr %i.gm, align 4, !tbaa !24
  %i.hq = getelementptr i8, ptr %i.j, i64 24      ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !28
  %i.hs = getelementptr inbounds nuw i8, ptr %.0556557, i64 12
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !24 ; 3 uses
  %i.hu = getelementptr i8, ptr %i.j, i64 28      ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !29
  %i.hw = getelementptr inbounds nuw i8, ptr %.0554559, i64 16
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !24 ; 3 uses
  %i.hy = fneg nsz float %i.hx
  %i.hz = getelementptr i8, ptr %i.r, i64 24      ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !28
  %i.ib = getelementptr i8, ptr %i.r, i64 28
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !29
  %i.id = getelementptr inbounds nuw i8, ptr %.0555558, i64 24 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.v, i64 24      ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.ht, i64 1
  %i.ih = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul nsz <2 x float> %i.ig, %i.ii
  %i.ik = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.in = insertelement <2 x float> %i.im, float %i.hy, i64 1 ; 2 uses
  %i.io = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.il, <2 x float> %i.in, <2 x float> %i.ij) ; 3 uses
  %i.ip = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.iq = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.is = fmul nsz <2 x float> %i.iq, %i.ir
  %i.it = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.iw = insertelement <2 x float> %i.iv, float %i.hx, i64 1
  %i.ix = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iw, <2 x float> %i.is) ; 3 uses
  %i.iy = load <2 x float>, ptr %i.id, align 4, !tbaa !24 ; 3 uses
  %i.iz = fadd nsz <2 x float> %i.io, %i.ix       ; 3 uses
  %foldExtExtBinop564 = fsub nsz <2 x float> %i.iy, %i.iz
  %i.ja = extractelement <2 x float> %foldExtExtBinop564, i64 0
  store float %i.ja, ptr %i.hq, align 4, !tbaa !28
  %i.jb = load <2 x float>, ptr %i.ie, align 4, !tbaa !24 ; 2 uses
  %i.jc = shufflevector <2 x float> %i.io, <2 x float> %i.ix, <2 x i32> <i32 1, i32 2>
  %i.jd = shufflevector <2 x float> %i.ix, <2 x float> %i.io, <2 x i32> <i32 1, i32 2>
  %i.je = fsub nsz <2 x float> %i.jc, %i.jd       ; 2 uses
  %i.jf = fsub nsz <2 x float> %i.jb, %i.je
  store <2 x float> %i.jf, ptr %i.hz, align 4, !tbaa !24
  %i.jg = fadd nsz <2 x float> %i.jb, %i.je
  store <2 x float> %i.jg, ptr %i.ie, align 4, !tbaa !24
  %foldExtExtBinop566 = fsub nsz <2 x float> %i.iy, %i.iz
  %i.jh = extractelement <2 x float> %foldExtExtBinop566, i64 1
  store float %i.jh, ptr %i.hu, align 4, !tbaa !29
  %i.ji = fadd nsz <2 x float> %i.iy, %i.iz
  store <2 x float> %i.ji, ptr %i.id, align 4, !tbaa !24
  %i.jj = getelementptr i8, ptr %i.j, i64 40      ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !28
  %i.jl = getelementptr inbounds nuw i8, ptr %.0556557, i64 20
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !24 ; 3 uses
  %i.jn = getelementptr i8, ptr %i.j, i64 44      ; 2 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !29
  %i.jp = getelementptr inbounds nuw i8, ptr %.0554559, i64 8
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !24 ; 3 uses
  %i.jr = fneg nsz float %i.jq
  %i.js = getelementptr i8, ptr %i.r, i64 40      ; 2 uses
  %i.jt = load float, ptr %i.js, align 4, !tbaa !28
  %i.ju = getelementptr i8, ptr %i.r, i64 44
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !29
  %i.jw = getelementptr inbounds nuw i8, ptr %.0555558, i64 40 ; 2 uses
  %i.jx = getelementptr i8, ptr %i.v, i64 40      ; 2 uses
  %i.jy = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jz = insertelement <2 x float> %i.jy, float %i.jm, i64 1
  %i.ka = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = fmul nsz <2 x float> %i.jz, %i.kb
  %i.kd = insertelement <2 x float> poison, float %i.jk, i64 0
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kf = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.kg = insertelement <2 x float> %i.kf, float %i.jr, i64 1 ; 2 uses
  %i.kh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kg, <2 x float> %i.kc) ; 3 uses
  %i.ki = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = fmul nsz <2 x float> %i.kj, %i.kk
  %i.km = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.kp = insertelement <2 x float> %i.ko, float %i.jq, i64 1
  %i.kq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.kp, <2 x float> %i.kl) ; 3 uses
  %i.kr = load <2 x float>, ptr %i.jw, align 4, !tbaa !24 ; 3 uses
  %i.ks = fadd nsz <2 x float> %i.kh, %i.kq       ; 3 uses
  %foldExtExtBinop568 = fsub nsz <2 x float> %i.kr, %i.ks
  %i.kt = extractelement <2 x float> %foldExtExtBinop568, i64 0
  store float %i.kt, ptr %i.jj, align 4, !tbaa !28
  %i.ku = load <2 x float>, ptr %i.jx, align 4, !tbaa !24 ; 2 uses
  %i.kv = shufflevector <2 x float> %i.kh, <2 x float> %i.kq, <2 x i32> <i32 1, i32 2>
  %i.kw = shufflevector <2 x float> %i.kq, <2 x float> %i.kh, <2 x i32> <i32 1, i32 2>
  %i.kx = fsub nsz <2 x float> %i.kv, %i.kw       ; 2 uses
  %i.ky = fsub nsz <2 x float> %i.ku, %i.kx
  store <2 x float> %i.ky, ptr %i.js, align 4, !tbaa !24
  %i.kz = fadd nsz <2 x float> %i.ku, %i.kx
  store <2 x float> %i.kz, ptr %i.jx, align 4, !tbaa !24
  %foldExtExtBinop570 = fsub nsz <2 x float> %i.kr, %i.ks
  %i.la = extractelement <2 x float> %foldExtExtBinop570, i64 1
  store float %i.la, ptr %i.jn, align 4, !tbaa !29
  %i.lb = fadd nsz <2 x float> %i.kr, %i.ks
  store <2 x float> %i.lb, ptr %i.jw, align 4, !tbaa !24
  %i.lc = getelementptr i8, ptr %i.j, i64 56      ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !28
  %i.le = getelementptr inbounds nuw i8, ptr %.0556557, i64 28
  %i.lf = load float, ptr %i.le, align 4, !tbaa !24 ; 3 uses
  %i.lg = getelementptr i8, ptr %i.j, i64 60      ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !29
  %i.li = load float, ptr %.0554559, align 4, !tbaa !24 ; 3 uses
  %i.lj = fneg nsz float %i.li
  %i.lk = getelementptr i8, ptr %i.r, i64 56      ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !28
  %i.lm = getelementptr i8, ptr %i.r, i64 60
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !29
  %i.lo = getelementptr inbounds nuw i8, ptr %.0555558, i64 56 ; 2 uses
  %i.lp = getelementptr i8, ptr %i.v, i64 56      ; 2 uses
  %i.lq = insertelement <2 x float> poison, float %i.li, i64 0
  %i.lr = insertelement <2 x float> %i.lq, float %i.lf, i64 1
  %i.ls = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.lt = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lu = fmul nsz <2 x float> %i.lr, %i.lt
  %i.lv = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.ly = insertelement <2 x float> %i.lx, float %i.lj, i64 1 ; 2 uses
  %i.lz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lw, <2 x float> %i.ly, <2 x float> %i.lu) ; 3 uses
  %i.ma = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.md = fmul nsz <2 x float> %i.mb, %i.mc
  %i.me = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.mh = insertelement <2 x float> %i.mg, float %i.li, i64 1
  %i.mi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mh, <2 x float> %i.md) ; 3 uses
  %i.mj = load <2 x float>, ptr %i.lo, align 4, !tbaa !24 ; 3 uses
  %i.mk = fadd nsz <2 x float> %i.lz, %i.mi       ; 3 uses
  %foldExtExtBinop572 = fsub nsz <2 x float> %i.mj, %i.mk
  %i.ml = extractelement <2 x float> %foldExtExtBinop572, i64 0
  store float %i.ml, ptr %i.lc, align 4, !tbaa !28
  %i.mm = load <2 x float>, ptr %i.lp, align 4, !tbaa !24 ; 2 uses
  %i.mn = shufflevector <2 x float> %i.lz, <2 x float> %i.mi, <2 x i32> <i32 1, i32 2>
  %i.mo = shufflevector <2 x float> %i.mi, <2 x float> %i.lz, <2 x i32> <i32 1, i32 2>
  %i.mp = fsub nsz <2 x float> %i.mn, %i.mo       ; 2 uses
  %i.mq = fsub nsz <2 x float> %i.mm, %i.mp
  store <2 x float> %i.mq, ptr %i.lk, align 4, !tbaa !24
  %i.mr = fadd nsz <2 x float> %i.mm, %i.mp
  store <2 x float> %i.mr, ptr %i.lp, align 4, !tbaa !24
  %foldExtExtBinop574 = fsub nsz <2 x float> %i.mj, %i.mk
  %i.ms = extractelement <2 x float> %foldExtExtBinop574, i64 1
  store float %i.ms, ptr %i.lg, align 4, !tbaa !29
  %i.mt = fadd nsz <2 x float> %i.mj, %i.mk
  store <2 x float> %i.mt, ptr %i.lo, align 4, !tbaa !24
  %i.mu = getelementptr inbounds nuw i8, ptr %.0555558, i64 64
  %i.mv = getelementptr inbounds nuw i8, ptr %.0556557, i64 32
  %i.mw = getelementptr inbounds i8, ptr %.0554559, i64 -32
  %i.mx = add nuw nsw i32 %.0560, 4               ; 2 uses
  %i.my = icmp slt i32 %i.mx, %2
  br i1 %i.my, label %bb.b, label %._crit_edge, !llvm.loop !62
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
end_hunk_0
