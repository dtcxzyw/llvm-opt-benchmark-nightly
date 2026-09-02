Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_float?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ff_tx_fft16_ns_float_c
define internal void @ff_tx_fft16_ns_float_c(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load <3 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 4), align 4, !tbaa !30 ; 5 uses
  %i.w = shufflevector <3 x float> %i.v, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 2> ; 4 uses
  %i.x = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_16_float, i64 4), align 4, !tbaa !30
  tail call void @ff_tx_fft8_ns_float_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.y = load <2 x float>, ptr %i.b, align 4, !tbaa !30
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aa = load <2 x float>, ptr %i.c, align 4, !tbaa !30
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ac = fadd nsz <4 x float> %i.z, %i.ab
  %i.ad = fsub nsz <4 x float> %i.z, %i.ab
  %i.ae = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.af = load <2 x float>, ptr %i.d, align 4, !tbaa !30
  %i.ag = load <3 x float>, ptr %i.f, align 4, !tbaa !30 ; 2 uses
  %i.ah = shufflevector <3 x float> %i.ag, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.ai = shufflevector <3 x float> %i.ag, <3 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 2, i32 poison>
  %i.aj = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 6, i32 0> ; 2 uses
  %i.al = fadd nsz <4 x float> %i.ah, %i.ak
  %i.am = fsub nsz <4 x float> %i.ah, %i.ak
  %i.an = shufflevector <4 x float> %i.al, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ao = fsub nsz <4 x float> %i.ae, %i.an       ; 2 uses
  store <4 x float> %i.ao, ptr %i.e, align 4, !tbaa !30
  %i.ap = fadd nsz <4 x float> %i.ae, %i.an       ; 5 uses
  store <4 x float> %i.ap, ptr %i.a, align 4, !tbaa !30
  %i.aq = load <2 x float>, ptr %i.l, align 4, !tbaa !30
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.as = load <2 x float>, ptr %i.m, align 4, !tbaa !30
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.au = fadd nsz <4 x float> %i.ar, %i.at
  %i.av = fsub nsz <4 x float> %i.ar, %i.at       ; 2 uses
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> %i.av, <4 x i32> <i32 0, i32 5, i32 6, i32 3> ; 3 uses
  %i.ax = load <4 x float>, ptr %i.n, align 4, !tbaa !30 ; 3 uses
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.az = fadd nsz <4 x float> %i.ax, %i.ay
  %i.ba = fsub nsz <4 x float> %i.ax, %i.ay       ; 2 uses
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 6, i32 5, i32 3> ; 3 uses
  %foldExtExtBinop = fadd nsz <4 x float> %i.aw, %i.bb ; 2 uses
  %i.bc = fsub nsz <4 x float> %i.aw, %i.bb       ; 4 uses
  %i.bd = extractelement <4 x float> %i.bc, i64 1
  store float %i.bd, ptr %i.p, align 4, !tbaa !51
  %i.be = extractelement <4 x float> %i.bc, i64 2
  store float %i.be, ptr %i.o, align 4, !tbaa !49
  %i.bf = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.bh = fadd nsz <2 x float> %i.bf, %i.bg       ; 2 uses
  %foldExtExtBinop213 = fadd nsz <4 x float> %i.aw, %i.bb ; 2 uses
  %i.bi = load float, ptr %i.e, align 4, !tbaa !49
  %shift = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop215 = fmul nsz <4 x float> %i.w, %shift ; 2 uses
  %i.bj = extractelement <4 x float> %foldExtExtBinop215, i64 0
  %i.bk = fneg nsz float %i.bj
  %i.bl = load <2 x float>, ptr %i.g, align 4, !tbaa !30 ; 2 uses
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
  %i.by = load float, ptr %i.o, align 4, !tbaa !49
  %i.bz = load float, ptr %i.p, align 4, !tbaa !51
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
  %i.cm = load <4 x float>, ptr %i.t, align 4, !tbaa !30 ; 3 uses
  %i.cn = fadd nsz <4 x float> %i.bx, %i.cl       ; 3 uses
  %i.co = load float, ptr %i.h, align 4, !tbaa !49
  %i.cp = load float, ptr %i.i, align 4, !tbaa !51
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
  %i.dg = load <4 x float>, ptr %1, align 4, !tbaa !30 ; 3 uses
  %i.dh = shufflevector <4 x float> %i.ap, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 0, i32 7, i32 poison, i32 poison>
  %i.di = shufflevector <2 x float> %i.da, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dk = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ap, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dm = shufflevector <4 x float> %i.dk, <4 x float> %i.dl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dn = fadd nsz <4 x float> %i.dj, %i.dm       ; 3 uses
  %foldExtExtBinop217 = fsub nsz <4 x float> %i.dg, %i.dn
  %i.do = extractelement <4 x float> %foldExtExtBinop217, i64 0
  store float %i.do, ptr %i.a, align 4, !tbaa !49
  %i.dp = load <4 x float>, ptr %i.s, align 4, !tbaa !30 ; 3 uses
  %i.dq = shufflevector <2 x float> %i.da, <2 x float> %i.df, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> %i.ap, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dt = shufflevector <2 x float> %i.df, <2 x float> %i.da, <4 x i32> <i32 poison, i32 poison, i32 1, i32 2>
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %foldExtExtBinop213, <4 x i32> <i32 7, i32 poison, i32 2, i32 3>
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> %i.ap, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.dw = fsub nsz <4 x float> %i.ds, %i.dv       ; 3 uses
  %i.dx = fadd nsz <4 x float> %i.dp, %i.dw
  store <4 x float> %i.dx, ptr %i.s, align 4, !tbaa !30
  %i.dy = shufflevector <4 x float> %i.dg, <4 x float> %i.cm, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.dz = shufflevector <4 x float> %i.dn, <4 x float> %i.cn, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ea = fsub nsz <4 x float> %i.dy, %i.dz
  store <4 x float> %i.ea, ptr %i.k, align 4, !tbaa !30
  %i.eb = fadd nsz <4 x float> %i.dn, %i.dg
  store <4 x float> %i.eb, ptr %1, align 4, !tbaa !30
  %i.ec = load <4 x float>, ptr %i.u, align 4, !tbaa !30 ; 4 uses
  %i.ed = shufflevector <4 x float> %i.bx, <4 x float> %i.cl, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ee = shufflevector <4 x float> %i.cl, <4 x float> %i.bx, <4 x i32> <i32 1, i32 4, i32 3, i32 6>
  %i.ef = fsub nsz <4 x float> %i.ed, %i.ee       ; 4 uses
  %foldExtExtBinop219 = fsub nsz <4 x float> %i.ec, %i.ef
  %i.eg = extractelement <4 x float> %foldExtExtBinop219, i64 1
  store float %i.eg, ptr %i.q, align 4, !tbaa !51
  %i.eh = shufflevector <4 x float> %i.dp, <4 x float> %i.ec, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ei = shufflevector <4 x float> %i.dw, <4 x float> %i.ef, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ej = fsub nsz <4 x float> %i.eh, %i.ei
  store <4 x float> %i.ej, ptr %i.r, align 4, !tbaa !30
  %i.ek = shufflevector <4 x float> %i.ec, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.el = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.em = fsub nsz <2 x float> %i.ek, %i.el
  store <2 x float> %i.em, ptr %i.o, align 4, !tbaa !30
  %i.en = fadd nsz <4 x float> %i.ec, %i.ef
  store <4 x float> %i.en, ptr %i.u, align 4, !tbaa !30
  %i.eo = shufflevector <4 x float> %i.cm, <4 x float> %i.dp, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.ep = shufflevector <4 x float> %i.cn, <4 x float> %i.dw, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  %i.eq = fsub nsz <4 x float> %i.eo, %i.ep
  store <4 x float> %i.eq, ptr %i.j, align 4, !tbaa !30
  %i.er = fadd nsz <4 x float> %i.cm, %i.cn
  store <4 x float> %i.er, ptr %i.t, align 4, !tbaa !30
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
  %i.g = shl nsw i32 %2, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0560 = phi i32 [ 0, %.lr.ph ], [ %i.mo, %bb.b ]
  %.0554559 = phi ptr [ %i.e, %.lr.ph ], [ %i.mn, %bb.b ] ; 9 uses
  %.0555558 = phi ptr [ %0, %.lr.ph ], [ %i.ml, %bb.b ] ; 13 uses
  %.0556557 = phi ptr [ %1, %.lr.ph ], [ %i.mm, %bb.b ] ; 9 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0555558, i64 %i.h ; 17 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !49
  %i.l = load float, ptr %.0556557, align 4, !tbaa !30 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %.0554559, i64 28
  %i.p = load float, ptr %i.o, align 4, !tbaa !30 ; 3 uses
  %i.q = fneg nsz float %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0555558, i64 %i.i ; 17 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !51
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
  %i.ap = load <2 x float>, ptr %.0555558, align 4, !tbaa !30 ; 3 uses
  %i.aq = fadd nsz <2 x float> %i.af, %i.ao       ; 3 uses
  %foldExtExtBinop = fsub nsz <2 x float> %i.ap, %i.aq
  %3 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ar = load <2 x float>, ptr %i.v, align 4, !tbaa !30 ; 2 uses
  store float %3, ptr %i.j, align 4, !tbaa !49
  %i.as = shufflevector <2 x float> %i.af, <2 x float> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> %i.af, <2 x i32> <i32 1, i32 2>
  %i.au = fsub nsz <2 x float> %i.as, %i.at       ; 2 uses
  %i.av = fsub nsz <2 x float> %i.ar, %i.au
  store <2 x float> %i.av, ptr %i.r, align 4, !tbaa !30
  %i.aw = fadd nsz <2 x float> %i.ar, %i.au
  store <2 x float> %i.aw, ptr %i.v, align 4, !tbaa !30
  %foldExtExtBinop562.a = fsub nsz <2 x float> %i.ap, %i.aq
  %4 = extractelement <2 x float> %foldExtExtBinop562.a, i64 1
  store float %4, ptr %i.m, align 4, !tbaa !51
  %i.ax = fadd nsz <2 x float> %i.ap, %i.aq
  store <2 x float> %i.ax, ptr %.0555558, align 4, !tbaa !30
  %i.ay = getelementptr i8, ptr %i.j, i64 16      ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %.0556557, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !30 ; 3 uses
  %i.bc = getelementptr i8, ptr %i.j, i64 20      ; 2 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %.0554559, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !30 ; 3 uses
  %i.bg = fneg nsz float %i.bf
  %i.bh = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !49
  %i.bj = getelementptr i8, ptr %i.r, i64 20
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !51
  %i.bl = getelementptr inbounds nuw i8, ptr %.0555558, i64 16 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.v, i64 16      ; 2 uses
  %i.bn = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bo = insertelement <2 x float> %i.bn, float %i.bb, i64 1
  %i.bp = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul nsz <2 x float> %i.bo, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bg, i64 1 ; 2 uses
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.bv, <2 x float> %i.br) ; 3 uses
  %i.bx = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ca = fmul nsz <2 x float> %i.by, %i.bz
  %i.cb = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.bf, i64 1
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.ca) ; 3 uses
  %i.cg = load <2 x float>, ptr %i.bl, align 4, !tbaa !30 ; 3 uses
  %i.ch = fadd nsz <2 x float> %i.bw, %i.cf       ; 3 uses
  %foldExtExtBinop564 = fsub nsz <2 x float> %i.cg, %i.ch
  %5 = extractelement <2 x float> %foldExtExtBinop564, i64 0
  %i.ci = load <2 x float>, ptr %i.bm, align 4, !tbaa !30 ; 2 uses
  store float %5, ptr %i.ay, align 4, !tbaa !49
  %i.cj = shufflevector <2 x float> %i.bw, <2 x float> %i.cf, <2 x i32> <i32 1, i32 2>
  %i.ck = shufflevector <2 x float> %i.cf, <2 x float> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cl = fsub nsz <2 x float> %i.cj, %i.ck       ; 2 uses
  %i.cm = fsub nsz <2 x float> %i.ci, %i.cl
  store <2 x float> %i.cm, ptr %i.bh, align 4, !tbaa !30
  %i.cn = fadd nsz <2 x float> %i.ci, %i.cl
  store <2 x float> %i.cn, ptr %i.bm, align 4, !tbaa !30
  %foldExtExtBinop566.a = fsub nsz <2 x float> %i.cg, %i.ch
  %6 = extractelement <2 x float> %foldExtExtBinop566.a, i64 1
  store float %6, ptr %i.bc, align 4, !tbaa !51
  %i.co = fadd nsz <2 x float> %i.cg, %i.ch
  store <2 x float> %i.co, ptr %i.bl, align 4, !tbaa !30
  %i.cp = getelementptr i8, ptr %i.j, i64 32      ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %.0556557, i64 16
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !30 ; 3 uses
  %i.ct = getelementptr i8, ptr %i.j, i64 36      ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !51
  %i.cv = getelementptr inbounds nuw i8, ptr %.0554559, i64 12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !30 ; 3 uses
  %i.cx = fneg nsz float %i.cw
  %i.cy = getelementptr i8, ptr %i.r, i64 32      ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !49
  %i.da = getelementptr i8, ptr %i.r, i64 36
  %i.db = load float, ptr %i.da, align 4, !tbaa !51
  %i.dc = getelementptr inbounds nuw i8, ptr %.0555558, i64 32 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.v, i64 32      ; 2 uses
  %i.de = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.cs, i64 1
  %i.dg = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul nsz <2 x float> %i.df, %i.dh
  %i.dj = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.cx, i64 1 ; 2 uses
  %i.dn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.dm, <2 x float> %i.di) ; 3 uses
  %i.do = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = fmul nsz <2 x float> %i.dp, %i.dq
  %i.ds = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.cw, i64 1
  %i.dw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dv, <2 x float> %i.dr) ; 3 uses
  %i.dx = load <2 x float>, ptr %i.dc, align 4, !tbaa !30 ; 3 uses
  %i.dy = fadd nsz <2 x float> %i.dn, %i.dw       ; 3 uses
  %foldExtExtBinop568 = fsub nsz <2 x float> %i.dx, %i.dy
  %7 = extractelement <2 x float> %foldExtExtBinop568, i64 0
  %i.dz = load <2 x float>, ptr %i.dd, align 4, !tbaa !30 ; 2 uses
  store float %7, ptr %i.cp, align 4, !tbaa !49
  %i.ea = shufflevector <2 x float> %i.dn, <2 x float> %i.dw, <2 x i32> <i32 1, i32 2>
  %i.eb = shufflevector <2 x float> %i.dw, <2 x float> %i.dn, <2 x i32> <i32 1, i32 2>
  %i.ec = fsub nsz <2 x float> %i.ea, %i.eb       ; 2 uses
  %i.ed = fsub nsz <2 x float> %i.dz, %i.ec
  store <2 x float> %i.ed, ptr %i.cy, align 4, !tbaa !30
  %i.ee = fadd nsz <2 x float> %i.dz, %i.ec
  store <2 x float> %i.ee, ptr %i.dd, align 4, !tbaa !30
  %foldExtExtBinop570 = fsub nsz <2 x float> %i.dx, %i.dy
  %8 = extractelement <2 x float> %foldExtExtBinop570, i64 1
  store float %8, ptr %i.ct, align 4, !tbaa !51
  %i.ef = fadd nsz <2 x float> %i.dx, %i.dy
  store <2 x float> %i.ef, ptr %i.dc, align 4, !tbaa !30
  %i.eg = getelementptr i8, ptr %i.j, i64 48      ; 2 uses
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !49
  %i.ei = getelementptr inbounds nuw i8, ptr %.0556557, i64 24
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !30 ; 3 uses
  %i.ek = getelementptr i8, ptr %i.j, i64 52      ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %.0554559, i64 4
  %i.en = load float, ptr %i.em, align 4, !tbaa !30 ; 3 uses
  %i.eo = fneg nsz float %i.en
  %i.ep = getelementptr i8, ptr %i.r, i64 48      ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !49
  %i.er = getelementptr i8, ptr %i.r, i64 52
  %i.es = load float, ptr %i.er, align 4, !tbaa !51
  %i.et = getelementptr inbounds nuw i8, ptr %.0555558, i64 48 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.v, i64 48      ; 2 uses
  %i.ev = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.ej, i64 1
  %i.ex = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul nsz <2 x float> %i.ew, %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.fd = insertelement <2 x float> %i.fc, float %i.eo, i64 1 ; 2 uses
  %i.fe = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.fd, <2 x float> %i.ez) ; 3 uses
  %i.ff = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = fmul nsz <2 x float> %i.fg, %i.fh
  %i.fj = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.en, i64 1
  %i.fn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.fm, <2 x float> %i.fi) ; 3 uses
  %i.fo = load <2 x float>, ptr %i.et, align 4, !tbaa !30 ; 3 uses
  %i.fp = fadd nsz <2 x float> %i.fe, %i.fn       ; 3 uses
  %foldExtExtBinop572 = fsub nsz <2 x float> %i.fo, %i.fp
  %9 = extractelement <2 x float> %foldExtExtBinop572, i64 0
  %i.fq = load <2 x float>, ptr %i.eu, align 4, !tbaa !30 ; 2 uses
  store float %9, ptr %i.eg, align 4, !tbaa !49
  %i.fr = shufflevector <2 x float> %i.fe, <2 x float> %i.fn, <2 x i32> <i32 1, i32 2>
  %i.fs = shufflevector <2 x float> %i.fn, <2 x float> %i.fe, <2 x i32> <i32 1, i32 2>
  %i.ft = fsub nsz <2 x float> %i.fr, %i.fs       ; 2 uses
  %i.fu = fsub nsz <2 x float> %i.fq, %i.ft
  store <2 x float> %i.fu, ptr %i.ep, align 4, !tbaa !30
  %i.fv = fadd nsz <2 x float> %i.fq, %i.ft
  store <2 x float> %i.fv, ptr %i.eu, align 4, !tbaa !30
  %foldExtExtBinop574 = fsub nsz <2 x float> %i.fo, %i.fp
  %10 = extractelement <2 x float> %foldExtExtBinop574, i64 1
  store float %10, ptr %i.ek, align 4, !tbaa !51
  %i.fw = fadd nsz <2 x float> %i.fo, %i.fp
  store <2 x float> %i.fw, ptr %i.et, align 4, !tbaa !30
  %i.fx = getelementptr i8, ptr %i.j, i64 8       ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !49
  %i.fz = getelementptr inbounds nuw i8, ptr %.0556557, i64 4
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !30 ; 3 uses
  %i.gb = getelementptr i8, ptr %i.j, i64 12      ; 2 uses
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !51
  %i.gd = getelementptr inbounds nuw i8, ptr %.0554559, i64 24
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !30 ; 3 uses
  %i.gf = fneg nsz float %i.ge
  %i.gg = getelementptr i8, ptr %i.r, i64 8       ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !49
  %i.gi = getelementptr i8, ptr %i.r, i64 12
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !51
  %i.gk = getelementptr inbounds nuw i8, ptr %.0555558, i64 8 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.gm = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gn = insertelement <2 x float> %i.gm, float %i.ga, i64 1
  %i.go = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul nsz <2 x float> %i.gn, %i.gp
  %i.gr = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gu = insertelement <2 x float> %i.gt, float %i.gf, i64 1 ; 2 uses
  %i.gv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.gu, <2 x float> %i.gq) ; 3 uses
  %i.gw = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gz = fmul nsz <2 x float> %i.gx, %i.gy
  %i.ha = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.hd = insertelement <2 x float> %i.hc, float %i.ge, i64 1
  %i.he = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hd, <2 x float> %i.gz) ; 3 uses
  %i.hf = load <2 x float>, ptr %i.gk, align 4, !tbaa !30 ; 3 uses
  %i.hg = fadd nsz <2 x float> %i.gv, %i.he       ; 3 uses
  %foldExtExtBinop576 = fsub nsz <2 x float> %i.hf, %i.hg
  %11 = extractelement <2 x float> %foldExtExtBinop576, i64 0
  %i.hh = load <2 x float>, ptr %i.gl, align 4, !tbaa !30 ; 2 uses
  store float %11, ptr %i.fx, align 4, !tbaa !49
  %i.hi = shufflevector <2 x float> %i.gv, <2 x float> %i.he, <2 x i32> <i32 1, i32 2>
  %i.hj = shufflevector <2 x float> %i.he, <2 x float> %i.gv, <2 x i32> <i32 1, i32 2>
  %i.hk = fsub nsz <2 x float> %i.hi, %i.hj       ; 2 uses
  %i.hl = fsub nsz <2 x float> %i.hh, %i.hk
  store <2 x float> %i.hl, ptr %i.gg, align 4, !tbaa !30
  %i.hm = fadd nsz <2 x float> %i.hh, %i.hk
  store <2 x float> %i.hm, ptr %i.gl, align 4, !tbaa !30
  %foldExtExtBinop578 = fsub nsz <2 x float> %i.hf, %i.hg
  %12 = extractelement <2 x float> %foldExtExtBinop578, i64 1
  store float %12, ptr %i.gb, align 4, !tbaa !51
  %i.hn = fadd nsz <2 x float> %i.hf, %i.hg
  store <2 x float> %i.hn, ptr %i.gk, align 4, !tbaa !30
  %i.ho = getelementptr i8, ptr %i.j, i64 24      ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !49
  %i.hq = getelementptr inbounds nuw i8, ptr %.0556557, i64 12
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !30 ; 3 uses
  %i.hs = getelementptr i8, ptr %i.j, i64 28      ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !51
  %i.hu = getelementptr inbounds nuw i8, ptr %.0554559, i64 16
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !30 ; 3 uses
  %i.hw = fneg nsz float %i.hv
  %i.hx = getelementptr i8, ptr %i.r, i64 24      ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !49
  %i.hz = getelementptr i8, ptr %i.r, i64 28
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !51
  %i.ib = getelementptr inbounds nuw i8, ptr %.0555558, i64 24 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.v, i64 24      ; 2 uses
  %i.id = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ie = insertelement <2 x float> %i.id, float %i.hr, i64 1
  %i.if = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ih = fmul nsz <2 x float> %i.ie, %i.ig
  %i.ii = insertelement <2 x float> poison, float %i.hp, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.hw, i64 1 ; 2 uses
  %i.im = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ij, <2 x float> %i.il, <2 x float> %i.ih) ; 3 uses
  %i.in = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = fmul nsz <2 x float> %i.io, %i.ip
  %i.ir = insertelement <2 x float> poison, float %i.hy, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.iu = insertelement <2 x float> %i.it, float %i.hv, i64 1
  %i.iv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.is, <2 x float> %i.iu, <2 x float> %i.iq) ; 3 uses
  %i.iw = load <2 x float>, ptr %i.ib, align 4, !tbaa !30 ; 3 uses
  %i.ix = fadd nsz <2 x float> %i.im, %i.iv       ; 3 uses
  %foldExtExtBinop580 = fsub nsz <2 x float> %i.iw, %i.ix
  %i.iy = extractelement <2 x float> %foldExtExtBinop580, i64 0
  %13 = load <2 x float>, ptr %i.ic, align 4, !tbaa !30 ; 2 uses
  store float %i.iy, ptr %i.ho, align 4, !tbaa !49
  %i.iz = shufflevector <2 x float> %i.im, <2 x float> %i.iv, <2 x i32> <i32 1, i32 2>
  %i.ja = shufflevector <2 x float> %i.iv, <2 x float> %i.im, <2 x i32> <i32 1, i32 2>
  %i.jb = fsub nsz <2 x float> %i.iz, %i.ja       ; 2 uses
  %i.jc = fsub nsz <2 x float> %13, %i.jb
  store <2 x float> %i.jc, ptr %i.hx, align 4, !tbaa !30
  %i.jd = fadd nsz <2 x float> %13, %i.jb
  store <2 x float> %i.jd, ptr %i.ic, align 4, !tbaa !30
  %foldExtExtBinop582 = fsub nsz <2 x float> %i.iw, %i.ix
  %i.je = extractelement <2 x float> %foldExtExtBinop582, i64 1
  store float %i.je, ptr %i.hs, align 4, !tbaa !51
  %i.jf = fadd nsz <2 x float> %i.iw, %i.ix
  store <2 x float> %i.jf, ptr %i.ib, align 4, !tbaa !30
  %i.jg = getelementptr i8, ptr %i.j, i64 40      ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !49
  %i.ji = getelementptr inbounds nuw i8, ptr %.0556557, i64 20
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !30 ; 3 uses
  %i.jk = getelementptr i8, ptr %i.j, i64 44      ; 2 uses
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !51
  %i.jm = getelementptr inbounds nuw i8, ptr %.0554559, i64 8
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !30 ; 3 uses
  %i.jo = fneg nsz float %i.jn
  %i.jp = getelementptr i8, ptr %i.r, i64 40      ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !49
  %i.jr = getelementptr i8, ptr %i.r, i64 44
  %i.js = load float, ptr %i.jr, align 4, !tbaa !51
  %i.jt = getelementptr inbounds nuw i8, ptr %.0555558, i64 40 ; 2 uses
  %i.ju = getelementptr i8, ptr %i.v, i64 40      ; 2 uses
  %i.jv = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jw = insertelement <2 x float> %i.jv, float %i.jj, i64 1
  %i.jx = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = fmul nsz <2 x float> %i.jw, %i.jy
  %i.ka = insertelement <2 x float> poison, float %i.jh, i64 0
  %i.kb = shufflevector <2 x float> %i.ka, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kc = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.kd = insertelement <2 x float> %i.kc, float %i.jo, i64 1 ; 2 uses
  %i.ke = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.kd, <2 x float> %i.jz) ; 3 uses
  %i.kf = insertelement <2 x float> poison, float %i.js, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ki = fmul nsz <2 x float> %i.kg, %i.kh
  %i.kj = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.km = insertelement <2 x float> %i.kl, float %i.jn, i64 1
  %i.kn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.km, <2 x float> %i.ki) ; 3 uses
  %i.ko = load <2 x float>, ptr %i.jt, align 4, !tbaa !30 ; 3 uses
  %i.kp = fadd nsz <2 x float> %i.ke, %i.kn       ; 3 uses
  %foldExtExtBinop584 = fsub nsz <2 x float> %i.ko, %i.kp
  %i.kq = extractelement <2 x float> %foldExtExtBinop584, i64 0
  %14 = load <2 x float>, ptr %i.ju, align 4, !tbaa !30 ; 2 uses
  store float %i.kq, ptr %i.jg, align 4, !tbaa !49
  %i.kr = shufflevector <2 x float> %i.ke, <2 x float> %i.kn, <2 x i32> <i32 1, i32 2>
  %i.ks = shufflevector <2 x float> %i.kn, <2 x float> %i.ke, <2 x i32> <i32 1, i32 2>
  %i.kt = fsub nsz <2 x float> %i.kr, %i.ks       ; 2 uses
  %i.ku = fsub nsz <2 x float> %14, %i.kt
  store <2 x float> %i.ku, ptr %i.jp, align 4, !tbaa !30
  %i.kv = fadd nsz <2 x float> %14, %i.kt
  store <2 x float> %i.kv, ptr %i.ju, align 4, !tbaa !30
  %foldExtExtBinop586 = fsub nsz <2 x float> %i.ko, %i.kp
  %i.kw = extractelement <2 x float> %foldExtExtBinop586, i64 1
  store float %i.kw, ptr %i.jk, align 4, !tbaa !51
  %i.kx = fadd nsz <2 x float> %i.ko, %i.kp
  store <2 x float> %i.kx, ptr %i.jt, align 4, !tbaa !30
  %i.ky = getelementptr i8, ptr %i.j, i64 56      ; 2 uses
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !49
  %i.la = getelementptr inbounds nuw i8, ptr %.0556557, i64 28
  %i.lb = load float, ptr %i.la, align 4, !tbaa !30 ; 3 uses
  %i.lc = getelementptr i8, ptr %i.j, i64 60      ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !51
  %i.le = load float, ptr %.0554559, align 4, !tbaa !30 ; 3 uses
  %i.lf = fneg nsz float %i.le
  %i.lg = getelementptr i8, ptr %i.r, i64 56      ; 2 uses
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !49
  %i.li = getelementptr i8, ptr %i.r, i64 60
  %i.lj = load float, ptr %i.li, align 4, !tbaa !51
  %i.lk = getelementptr inbounds nuw i8, ptr %.0555558, i64 56 ; 2 uses
  %i.ll = getelementptr i8, ptr %i.v, i64 56      ; 2 uses
  %i.lm = insertelement <2 x float> poison, float %i.le, i64 0
  %i.ln = insertelement <2 x float> %i.lm, float %i.lb, i64 1
  %i.lo = insertelement <2 x float> poison, float %i.ld, i64 0
  %i.lp = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lq = fmul nsz <2 x float> %i.ln, %i.lp
  %i.lr = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lt = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lu = insertelement <2 x float> %i.lt, float %i.lf, i64 1 ; 2 uses
  %i.lv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ls, <2 x float> %i.lu, <2 x float> %i.lq) ; 3 uses
  %i.lw = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lz = fmul nsz <2 x float> %i.lx, %i.ly
  %i.ma = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.mb = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mc = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.md = insertelement <2 x float> %i.mc, float %i.le, i64 1
  %i.me = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mb, <2 x float> %i.md, <2 x float> %i.lz) ; 3 uses
  %i.mf = load <2 x float>, ptr %i.lk, align 4, !tbaa !30 ; 3 uses
  %i.mg = fadd nsz <2 x float> %i.lv, %i.me       ; 3 uses
  %foldExtExtBinop588 = fsub nsz <2 x float> %i.mf, %i.mg
  %15 = extractelement <2 x float> %foldExtExtBinop588, i64 0
  %16 = load <2 x float>, ptr %i.ll, align 4, !tbaa !30 ; 2 uses
  store float %15, ptr %i.ky, align 4, !tbaa !49
  %17 = shufflevector <2 x float> %i.lv, <2 x float> %i.me, <2 x i32> <i32 1, i32 2>
  %18 = shufflevector <2 x float> %i.me, <2 x float> %i.lv, <2 x i32> <i32 1, i32 2>
  %19 = fsub nsz <2 x float> %17, %18             ; 2 uses
  %i.mh = fsub nsz <2 x float> %16, %19
  store <2 x float> %i.mh, ptr %i.lg, align 4, !tbaa !30
  %i.mi = fadd nsz <2 x float> %16, %19
  store <2 x float> %i.mi, ptr %i.ll, align 4, !tbaa !30
  %foldExtExtBinop590 = fsub nsz <2 x float> %i.mf, %i.mg
  %i.mj = extractelement <2 x float> %foldExtExtBinop590, i64 1
  store float %i.mj, ptr %i.lc, align 4, !tbaa !51
  %i.mk = fadd nsz <2 x float> %i.mf, %i.mg
  store <2 x float> %i.mk, ptr %i.lk, align 4, !tbaa !30
  %i.ml = getelementptr inbounds nuw i8, ptr %.0555558, i64 64
  %i.mm = getelementptr inbounds nuw i8, ptr %.0556557, i64 32
  %i.mn = getelementptr inbounds i8, ptr %.0554559, i64 -32
  %i.mo = add nuw nsw i32 %.0560, 4               ; 2 uses
  %i.mp = icmp slt i32 %i.mo, %2
  br i1 %i.mp, label %bb.b, label %._crit_edge, !llvm.loop !52
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
begin_hunk_1_@ff_tx_mdct_init_float_c:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = sext i32 %i.h to i64
  %i.m = shl nsw i64 %i.l, 2                      ; 2 uses
  %i.n = call noalias ptr @av_malloc(i64 noundef %i.m) #16 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !56
  %.not50 = icmp eq ptr %i.n, null
  br i1 %.not50, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !53
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
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 4 %i.w, i64 %i.m, i1 false)
  br label %.loopexit54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %i.x, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit54, label %.lr.ph, !llvm.loop !88

.loopexit54:                                      ; preds = %.lr.ph, %.preheader53, %bb.e
  %spec.select = select i1 %.not, ptr null, ptr %i.n
  %i.z = call i32 @ff_tx_mdct_gen_exp_float(ptr noundef nonnull %0, ptr noundef %spec.select) ; 2 uses
  %.not52 = icmp ne i32 %i.z, 0
  %brmerge = or i1 %.not, %.not52
  br i1 %brmerge, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit54
  %i.aa = load i32, ptr %0, align 8, !tbaa !19
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv59 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next60, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv59 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14
  %i.af = shl i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !19
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next60, %i.ai
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %bb.f, %.preheader, %.loopexit54, %bb.c, %bb.b
  %.044 = phi i32 [ %i.k, %bb.b ], [ -12, %bb.c ], [ %i.z, %.loopexit54 ], [ 0, %.preheader ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_float_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  %i.h = lshr i64 %3, 2                           ; 3 uses
  %i.i = and i32 %i.c, -2
  %i.j = add nsw i32 %i.i, -1
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55
  tail call void %i.p(ptr noundef %i.r, ptr noundef %1, ptr noundef %1, i64 noundef 8) #16
  %i.s = sext i32 %i.d to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = icmp sgt i32 %i.e, 0
  br i1 %i.u, label %.lr.ph94.preheader, label %._crit_edge95

.lr.ph94.preheader:                               ; preds = %._crit_edge
  %i.v = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count100 = zext nneg i32 %i.e to i64
  br label %.lr.ph94

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14   ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.h, %i.z
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !30 ; 2 uses
  %i.ad = sext i32 %i.x to i64
  %i.ae = mul nsw i64 %i.h, %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !51 ; 2 uses
  %i.al = fneg nsz float %i.ak
  %i.am = fmul nsz float %i.ag, %i.al
  %i.an = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ai, float %i.am)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store float %i.an, ptr %i.ao, align 4, !tbaa !49
  %i.ap = load float, ptr %i.ah, align 4, !tbaa !49
  %i.aq = fmul nsz float %i.ag, %i.ap
  %i.ar = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float %i.ak, float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store float %i.ar, ptr %i.as, align 4, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge95:                                    ; preds = %.lr.ph94, %._crit_edge
  ret void

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %.lr.ph94
  %indvars.iv97 = phi i64 [ 0, %.lr.ph94.preheader ], [ %indvars.iv.next98, %.lr.ph94 ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv97, %i.v     ; 2 uses
  %i.au = xor i64 %indvars.iv97, -1
  %i.av = add nsw i64 %i.v, %i.au                 ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !51 ; 2 uses
  %i.az = load float, ptr %i.aw, align 4, !tbaa !49 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.at ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !51 ; 2 uses
  %i.bd = load float, ptr %i.ba, align 4, !tbaa !49 ; 2 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.av ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !51 ; 2 uses
  %i.bh = load float, ptr %i.be, align 4, !tbaa !49
  %i.bi = fneg nsz float %i.bh
  %i.bj = fmul nsz float %i.az, %i.bi
  %i.bk = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.bg, float %i.bj)
  store float %i.bk, ptr %i.aw, align 4, !tbaa !49
  %i.bl = load float, ptr %i.be, align 4, !tbaa !49
  %i.bm = fmul nsz float %i.az, %i.bg
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.bl, float %i.bm)
  store float %i.bn, ptr %i.bb, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.at ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !51 ; 2 uses
  %i.br = load float, ptr %i.bo, align 4, !tbaa !49
  %i.bs = fneg nsz float %i.br
  %i.bt = fmul nsz float %i.bd, %i.bs
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bq, float %i.bt)
  store float %i.bu, ptr %i.ba, align 4, !tbaa !49
  %i.bv = load float, ptr %i.bo, align 4, !tbaa !49
  %i.bw = fmul nsz float %i.bd, %i.bq
  %i.bx = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %i.bv, float %i.bw)
  store float %i.bx, ptr %i.ax, align 4, !tbaa !51
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge95, label %.lr.ph94, !llvm.loop !91
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 6 uses
  %i.f = mul nsw i32 %i.e, 3                      ; 13 uses
  %i.g = mul nsw i32 %i.e, 9                      ; 9 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !19
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 4 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 15                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.u, 4
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 3           ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !30 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.j, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.j ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ah = sext i32 %i.e to i64                    ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 8) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !54
  %.idx = shl nsw i64 %i.ah, 4
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = icmp sgt i32 %i.i, 0
  br i1 %i.ar, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.as = add i32 %i.f, %i.ad
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !30
  %i.aw = fsub nsz float %i.av, %i.ac
  %i.ax = add nsw i32 %i.x, %i.g
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !30
  %i.bb = add i32 %i.g, %i.ad
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !30
  %i.bf = fadd nsz float %i.ba, %i.be
  %i.bg = fneg nsz float %i.bf
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bh = add i32 %i.r, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !30
  %i.bl = fadd nsz float %i.ac, %i.bk
  %i.bm = fneg nsz float %i.bl
  %i.bn = sub nuw nsw i32 %i.x, %i.f
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !30
  %i.br = add i32 %i.g, %i.ad
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !30
  %i.bv = fsub nsz float %i.bq, %i.bu
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz float [ %i.aw, %bb.b ], [ %i.bm, %bb.c ]
  %.sroa.6.0 = phi nsz float [ %i.bg, %bb.b ], [ %i.bv, %bb.c ] ; 2 uses
  %i.bw = ashr i32 %i.x, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bx
  %i.bz = load <2 x float>, ptr %i.by, align 4, !tbaa !30 ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cb = extractelement <2 x float> %i.bz, i64 1
  %i.cc = fneg nsz float %i.cb
  %i.cd = fmul nsz float %.sroa.6.0, %i.cc
  %i.ce = extractelement <2 x float> %i.bz, i64 0
  %i.cf = fmul nsz float %.sroa.6.0, %i.ce
  %i.cg = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cd, i64 1
  %i.ck = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ca, <2 x float> %i.cj) ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !14 ; 6 uses
  %i.co = icmp slt i32 %i.cn, %i.f
  %i.cp = add nsw i32 %i.cn, %i.f
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !30 ; 2 uses
  %i.ct = xor i32 %i.cn, -1                       ; 4 uses
  br i1 %i.co, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cu = add i32 %i.r, %i.ct
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !30
  %i.cy = fadd nsz float %i.cs, %i.cx
  %i.cz = fneg nsz float %i.cy
  %i.da = sub nuw nsw i32 %i.cn, %i.f
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.db
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !30
  %i.de = add i32 %i.g, %i.ct
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %2, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !30
  %i.di = fsub nsz float %i.dd, %i.dh
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dj = add i32 %i.f, %i.ct
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !30
  %i.dn = fsub nsz float %i.dm, %i.cs
  %i.do = add nsw i32 %i.cn, %i.g
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !30
  %i.ds = add i32 %i.g, %i.ct
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !30
  %i.dw = fadd nsz float %i.dr, %i.dv
  %i.dx = fneg nsz float %i.dw
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz float [ %i.dn, %bb.f ], [ %i.cz, %bb.e ]
  %.sroa.6.0.1 = phi nsz float [ %i.dx, %bb.f ], [ %i.di, %bb.e ] ; 2 uses
  %i.dy = ashr i32 %i.cn, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dz
  %i.eb = load <2 x float>, ptr %i.ea, align 4, !tbaa !30 ; 3 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ed = extractelement <2 x float> %i.eb, i64 1
  %i.ee = fneg nsz float %i.ed
  %i.ef = fmul nsz float %.sroa.6.0.1, %i.ee
  %i.eg = extractelement <2 x float> %i.eb, i64 0
  %i.eh = fmul nsz float %.sroa.6.0.1, %i.eg
  %i.ei = insertelement <2 x float> poison, float %.sroa.077.0.1, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.ef, i64 1
  %i.em = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ej, <2 x float> %i.ec, <2 x float> %i.el) ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !14 ; 6 uses
  %i.eq = icmp slt i32 %i.ep, %i.f
  %i.er = add nsw i32 %i.ep, %i.f
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %2, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !30 ; 2 uses
  %i.ev = xor i32 %i.ep, -1                       ; 4 uses
  br i1 %i.eq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ew = add i32 %i.r, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !30
  %i.fa = fadd nsz float %i.eu, %i.ez
  %i.fb = fneg nsz float %i.fa
  %i.fc = sub nuw nsw i32 %i.ep, %i.f
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !30
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_3xM_fwd_float_c:bb.a
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !49 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !51 ; 2 uses
  %i.hy = sext i32 %i.hq to i64
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !49 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !51 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hm ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load float, ptr %i.ie, align 4, !tbaa !51
  %i.ig = load float, ptr %i.id, align 4, !tbaa !49
  %i.ih = fneg nsz float %i.ig
  %i.ii = fmul nsz float %i.ic, %i.ih
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.if, float %i.ii)
  %i.ik = shl nsw i64 %i.ho, 1
  %i.il = mul nsw i64 %i.p, %i.ik
  %i.im = getelementptr [4 x i8], ptr %1, i64 %i.il ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %i.im, i64 %i.p
  store float %i.ij, ptr %i.in, align 4, !tbaa !30
  %i.io = load float, ptr %i.id, align 4, !tbaa !49
  %i.ip = load float, ptr %i.ie, align 4, !tbaa !51
  %i.iq = fmul nsz float %i.ic, %i.ip
  %i.ir = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.io, float %i.iq)
  %i.is = shl nuw nsw i64 %i.hm, 1
  %i.it = mul nuw nsw i64 %i.p, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.it ; 2 uses
  store float %i.ir, ptr %i.iu, align 4, !tbaa !30
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ho ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 2 uses
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !51
  %i.iy = load float, ptr %i.iv, align 4, !tbaa !49
  %i.iz = fneg nsz float %i.iy
  %i.ja = fmul nsz float %i.hx, %i.iz
  %i.jb = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.ix, float %i.ja)
  %i.jc = getelementptr [4 x i8], ptr %i.iu, i64 %i.p
  store float %i.jb, ptr %i.jc, align 4, !tbaa !30
  %i.jd = load float, ptr %i.iv, align 4, !tbaa !49
  %i.je = load float, ptr %i.iw, align 4, !tbaa !51
  %i.jf = fmul nsz float %i.hx, %i.je
  %i.jg = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.jd, float %i.jf)
  store float %i.jg, ptr %i.im, align 4, !tbaa !30
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.k, !llvm.loop !93
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_pfa_init_float_c(ptr noundef initializes((140, 152)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 2, ptr %7, align 4
  %i.b = ashr i32 %4, 1                           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !14
  %i.e = sdiv i32 %i.b, %i.d                      ; 3 uses
  %i.f = load float, ptr %6, align 4, !tbaa !30   ; 2 uses
  %i.g = fpext nsz float %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.g, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.f, ptr %i.i, align 4, !tbaa !87
  %i.j = and i64 %2, 6917529027641081854
  %i.k = or disjoint i64 %i.j, 2305843009213693953
  %i.l = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 0, i64 noundef %i.k, ptr noundef nonnull %7, i32 noundef %i.e, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78
  %i.o = load i32, ptr %i.c, align 8, !tbaa !14
  %i.p = call i32 @ff_tx_gen_compound_mapping(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.e) #16 ; 2 uses
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 8, !tbaa !14
  %i.r = icmp eq i32 %i.q, 15
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 2 uses
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
  br i1 %i.y, label %bb.e, label %._crit_edge, !llvm.loop !94

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 5
  br i1 %exitcond74.not, label %bb.f, label %.preheader63, !llvm.loop !95

bb.h:                                             ; preds = %.preheader63, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader63 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv, 5
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = urem i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !14
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !96

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %.not60 = icmp eq i32 %5, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ]
  %i.ak = call i32 @ff_tx_mdct_gen_exp_float(ptr noundef nonnull %0, ptr noundef %i.aj) ; 2 uses
  %.not61 = icmp eq i32 %i.ak, 0
  br i1 %.not61, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  %i.al = icmp sgt i32 %i.b, 0
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !56
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.l

._crit_edge69:                                    ; preds = %bb.l, %.preheader
  %i.ao = sext i32 %i.b to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !54
  %.not62 = icmp eq ptr %i.aq, null
  br i1 %.not62, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.lr.ph68, %bb.l
  %indvars.iv78 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next79, %bb.l ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv78 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14
  %i.au = shl i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !14
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge69, label %bb.l, !llvm.loop !97

bb.m:                                             ; preds = %._crit_edge69
  %i.av = sdiv i32 %i.b, %i.e
  call void @ff_tx_init_tabs_float(i32 noundef %i.av) #17
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge69, %bb.k, %bb.b, %bb.a, %bb.m
  %.054 = phi i32 [ %i.ak, %bb.k ], [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ 0, %bb.m ], [ -12, %._crit_edge69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_5xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 6 uses
  %i.f = mul nsw i32 %i.e, 5                      ; 21 uses
  %i.g = mul nsw i32 %i.e, 15                     ; 15 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !19
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 6 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %..preheader136_crit_edge

..preheader136_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 25                 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx88.i = mul nuw nsw i64 %i.u, 24
  %.idx89.i = shl nuw nsw i64 %i.u, 5
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 5           ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !30 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 4 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader136:                                    ; preds = %bb.p, %..preheader136_crit_edge
  %i.ae = phi ptr [ %.pre, %..preheader136_crit_edge ], [ %i.t, %bb.p ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ah = sext i32 %i.e to i64                    ; 4 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !10
  tail call void %i.ai(ptr noundef nonnull %i.d, ptr noundef %i.ae, ptr noundef %i.ae, i64 noundef 8) #16
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !54
  %.idx = shl nsw i64 %i.ah, 4
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !54
  %.idx165 = mul nsw i64 %i.ah, 24
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx165 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = load ptr, ptr %i.af, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ax = load ptr, ptr %i.ag, align 8, !tbaa !54
  %.idx166 = shl nsw i64 %i.ah, 5
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx166 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = icmp sgt i32 %i.i, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader137
  %i.ba = add i32 %i.f, %i.ad
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !30
  %i.be = fsub nsz float %i.bd, %i.ac
  %i.bf = add nsw i32 %i.x, %i.g
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !30
  %i.bj = add i32 %i.g, %i.ad
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !30
  %i.bn = fadd nsz float %i.bi, %i.bm
  %i.bo = fneg nsz float %i.bn
  br label %bb.d

bb.c:                                             ; preds = %.preheader137
  %i.bp = add i32 %i.r, %i.ad
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !30
  %i.bt = fadd nsz float %i.ac, %i.bs
  %i.bu = fneg nsz float %i.bt
  %i.bv = sub nuw nsw i32 %i.x, %i.f
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !30
  %i.bz = add i32 %i.g, %i.ad
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !30
  %i.cd = fsub nsz float %i.by, %i.cc
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.077.0 = phi nsz float [ %i.be, %bb.b ], [ %i.bu, %bb.c ]
  %.sroa.6.0 = phi nsz float [ %i.bo, %bb.b ], [ %i.cd, %bb.c ] ; 2 uses
  %i.ce = ashr i32 %i.x, 1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cf
  %i.ch = load <2 x float>, ptr %i.cg, align 4, !tbaa !30 ; 3 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cj = extractelement <2 x float> %i.ch, i64 1
  %i.ck = fneg nsz float %i.cj
  %i.cl = fmul nsz float %.sroa.6.0, %i.ck
  %i.cm = extractelement <2 x float> %i.ch, i64 0
  %i.cn = fmul nsz float %.sroa.6.0, %i.cm
  %i.co = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cl, i64 1
  %i.cs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.ci, <2 x float> %i.cr) ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !14 ; 6 uses
  %i.cw = icmp slt i32 %i.cv, %i.f
  %i.cx = add nsw i32 %i.cv, %i.f
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !30 ; 2 uses
  %i.db = xor i32 %i.cv, -1                       ; 4 uses
  br i1 %i.cw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dc = add i32 %i.r, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !30
  %i.dg = fadd nsz float %i.da, %i.df
  %i.dh = fneg nsz float %i.dg
  %i.di = sub nuw nsw i32 %i.cv, %i.f
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !30
  %i.dm = add i32 %i.g, %i.db
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !30
  %i.dq = fsub nsz float %i.dl, %i.dp
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dr = add i32 %i.f, %i.db
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !30
  %i.dv = fsub nsz float %i.du, %i.da
  %i.dw = add nsw i32 %i.cv, %i.g
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dx
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !30
  %i.ea = add i32 %i.g, %i.db
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %2, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !30
  %i.ee = fadd nsz float %i.dz, %i.ed
  %i.ef = fneg nsz float %i.ee
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.077.0.1 = phi nsz float [ %i.dv, %bb.f ], [ %i.dh, %bb.e ]
  %.sroa.6.0.1 = phi nsz float [ %i.ef, %bb.f ], [ %i.dq, %bb.e ] ; 2 uses
  %i.eg = ashr i32 %i.cv, 1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.eh
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !30 ; 3 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.el = extractelement <2 x float> %i.ej, i64 1
  %i.em = fneg nsz float %i.el
  %i.en = fmul nsz float %.sroa.6.0.1, %i.em
  %i.eo = extractelement <2 x float> %i.ej, i64 0
  %i.ep = fmul nsz float %.sroa.6.0.1, %i.eo
  %i.eq = insertelement <2 x float> poison, float %.sroa.077.0.1, i64 0
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.et = insertelement <2 x float> %i.es, float %i.en, i64 1
  %i.eu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.ek, <2 x float> %i.et) ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !14 ; 6 uses
  %i.ey = icmp slt i32 %i.ex, %i.f
  %i.ez = add nsw i32 %i.ex, %i.f
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fa
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !30 ; 2 uses
end_hunk_2
begin_hunk_3_@ff_tx_mdct_pfa_5xM_fwd_float_c:bb.a
  %i.iy = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iv, <2 x float> %i.io, <2 x float> %i.ix) ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !14 ; 6 uses
  %i.jc = icmp slt i32 %i.jb, %i.f
  %i.jd = add nsw i32 %i.jb, %i.f
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !30 ; 2 uses
  %i.jh = xor i32 %i.jb, -1                       ; 4 uses
  br i1 %i.jc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ji = add i32 %i.r, %i.jh
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !30
  %i.jm = fadd nsz float %i.jg, %i.jl
  %i.jn = fneg nsz float %i.jm
  %i.jo = sub nuw nsw i32 %i.jb, %i.f
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jp
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !30
  %i.js = add i32 %i.g, %i.jh
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !30
  %i.jw = fsub nsz float %i.jr, %i.jv
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.jx = add i32 %i.f, %i.jh
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !30
  %i.kb = fsub nsz float %i.ka, %i.jg
  %i.kc = add nsw i32 %i.jb, %i.g
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !30
  %i.kg = add i32 %i.g, %i.jh
  %i.kh = sext i32 %i.kg to i64
  %i.ki = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kh
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !30
  %i.kk = fadd nsz float %i.kf, %i.kj
  %i.kl = fneg nsz float %i.kk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.077.0.4 = phi nsz float [ %i.kb, %bb.o ], [ %i.jn, %bb.n ]
  %.sroa.6.0.4 = phi nsz float [ %i.kl, %bb.o ], [ %i.jw, %bb.n ] ; 2 uses
  %i.km = ashr i32 %i.jb, 1
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !14
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.kr ; 5 uses
  %i.kt = fsub nsz <2 x float> %i.gw, %i.iy       ; 2 uses
  %i.ku = fadd nsz <2 x float> %i.gw, %i.iy       ; 3 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.u
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx88.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ks, i64 %.idx89.i
  %i.kz = load <2 x float>, ptr %i.ko, align 4, !tbaa !30 ; 3 uses
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lb = extractelement <2 x float> %i.kz, i64 1
  %i.lc = fneg nsz float %i.lb
  %i.ld = fmul nsz float %.sroa.6.0.4, %i.lc
  %i.le = extractelement <2 x float> %i.kz, i64 0
  %i.lf = fmul nsz float %.sroa.6.0.4, %i.le
  %i.lg = insertelement <2 x float> poison, float %.sroa.077.0.4, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = insertelement <2 x float> poison, float %i.lf, i64 0
  %i.lj = insertelement <2 x float> %i.li, float %i.ld, i64 1
  %i.lk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.la, <2 x float> %i.lj) ; 2 uses
  %i.ll = fsub nsz <2 x float> %i.eu, %i.lk       ; 2 uses
  %i.lm = fadd nsz <2 x float> %i.eu, %i.lk       ; 3 uses
  %i.ln = fadd nsz <2 x float> %i.cs, %i.lm
  %i.lo = fadd nsz <2 x float> %i.ln, %i.ku
  store <2 x float> %i.lo, ptr %i.ks, align 4, !tbaa !30
  %i.lp = load <4 x float>, ptr @ff_tx_tab_53_float, align 16
  %i.lq = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 8), align 8
  %i.lr = fneg nsz <2 x float> %i.ku
  %i.ls = shufflevector <4 x float> %i.lq, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lt = fmul nsz <2 x float> %i.ls, %i.lr
  %i.lu = shufflevector <4 x float> %i.lp, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.lm, <2 x float> %i.lt) ; 2 uses
  %i.lw = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 16), align 16
  %i.lx = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 24), align 8
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lz = fmul nsz <2 x float> %i.kt, %i.ly
  %i.ma = shufflevector <4 x float> %i.lw, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.ll, <2 x float> %i.lz)
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.md = fsub nsz <2 x float> %i.lv, %i.mc       ; 2 uses
  %i.me = fadd nsz <2 x float> %i.lv, %i.mc       ; 2 uses
  %i.mf = shufflevector <2 x float> %i.md, <2 x float> %i.me, <2 x i32> <i32 0, i32 3>
  %i.mg = shufflevector <2 x float> %i.me, <2 x float> %i.md, <2 x i32> <i32 0, i32 3>
  %i.mh = fadd nsz <2 x float> %i.cs, %i.mg
  store <2 x float> %i.mh, ptr %i.kv, align 4, !tbaa !30
  %i.mi = fneg nsz <2 x float> %i.lm
  %i.mj = fmul nsz <2 x float> %i.ls, %i.mi
  %i.mk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.ku, <2 x float> %i.mj) ; 2 uses
  %i.ml = fneg nsz <2 x float> %i.ll
  %i.mm = fmul nsz <2 x float> %i.ly, %i.ml
  %i.mn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.kt, <2 x float> %i.mm)
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mp = fadd nsz <2 x float> %i.mk, %i.mo       ; 2 uses
  %i.mq = fsub nsz <2 x float> %i.mk, %i.mo       ; 2 uses
  %i.mr = shufflevector <2 x float> %i.mp, <2 x float> %i.mq, <2 x i32> <i32 0, i32 3>
  %i.ms = shufflevector <2 x float> %i.mq, <2 x float> %i.mp, <2 x i32> <i32 0, i32 3>
  %i.mt = fadd nsz <2 x float> %i.cs, %i.ms
  store <2 x float> %i.mt, ptr %i.kw, align 4, !tbaa !30
  %i.mu = fadd nsz <2 x float> %i.cs, %i.mr
  store <2 x float> %i.mu, ptr %i.kx, align 4, !tbaa !30
  %i.mv = fadd nsz <2 x float> %i.cs, %i.mf
  store <2 x float> %i.mv, ptr %i.ky, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.u
  br i1 %exitcond.not, label %.preheader136, label %.preheader137, !llvm.loop !98

.lr.ph:                                           ; preds = %.preheader136
  %i.mw = load ptr, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.mx = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count151 = zext nneg i32 %i.i to i64
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %.preheader136
  ret void

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv148 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next149, %bb.q ] ; 3 uses
  %i.my = add nuw nsw i64 %indvars.iv148, %i.mx   ; 3 uses
  %i.mz = xor i64 %indvars.iv148, -1
  %i.na = add nsw i64 %i.mx, %i.mz                ; 3 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.my
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !14
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.na
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !14
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nf ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !49 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !51 ; 2 uses
  %i.nk = sext i32 %i.nc to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %i.mw, i64 %i.nk ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !49 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 4
  %i.no = load float, ptr %i.nn, align 4, !tbaa !51 ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.my ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 4 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !51
  %i.ns = load float, ptr %i.np, align 4, !tbaa !49
  %i.nt = fneg nsz float %i.ns
  %i.nu = fmul nsz float %i.no, %i.nt
  %i.nv = tail call nsz float @llvm.fmuladd.f32(float %i.nm, float %i.nr, float %i.nu)
  %i.nw = shl nsw i64 %i.na, 1
  %i.nx = mul nsw i64 %i.p, %i.nw
  %i.ny = getelementptr [4 x i8], ptr %1, i64 %i.nx ; 2 uses
  %i.nz = getelementptr [4 x i8], ptr %i.ny, i64 %i.p
  store float %i.nv, ptr %i.nz, align 4, !tbaa !30
  %i.oa = load float, ptr %i.np, align 4, !tbaa !49
  %i.ob = load float, ptr %i.nq, align 4, !tbaa !51
  %i.oc = fmul nsz float %i.no, %i.ob
  %i.od = tail call nsz float @llvm.fmuladd.f32(float %i.nm, float %i.oa, float %i.oc)
  %i.oe = shl nuw nsw i64 %i.my, 1
  %i.of = mul nuw nsw i64 %i.p, %i.oe
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.of ; 2 uses
  store float %i.od, ptr %i.og, align 4, !tbaa !30
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.na ; 3 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 4 ; 2 uses
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !51
  %i.ok = load float, ptr %i.oh, align 4, !tbaa !49
  %i.ol = fneg nsz float %i.ok
  %i.om = fmul nsz float %i.nj, %i.ol
  %i.on = tail call nsz float @llvm.fmuladd.f32(float %i.nh, float %i.oj, float %i.om)
  %i.oo = getelementptr [4 x i8], ptr %i.og, i64 %i.p
  store float %i.on, ptr %i.oo, align 4, !tbaa !30
  %i.op = load float, ptr %i.oh, align 4, !tbaa !49
  %i.oq = load float, ptr %i.oi, align 4, !tbaa !51
  %i.or = fmul nsz float %i.nj, %i.oq
  %i.os = tail call nsz float @llvm.fmuladd.f32(float %i.nh, float %i.op, float %i.or)
  store float %i.os, ptr %i.ny, align 4, !tbaa !30
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge, label %bb.q, !llvm.loop !99
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [7 x %struct.AVComplexFloat], align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 6 uses
  %i.f = mul nsw i32 %i.e, 7                      ; 5 uses
  %i.g = mul nsw i32 %i.e, 21                     ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !19
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = zext nneg i32 %i.e to i64                ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx163.i = mul nuw nsw i64 %i.u, 24
  %.idx164.i = shl nuw nsw i64 %i.u, 5
  %.idx165.i = mul nuw nsw i64 %i.u, 40
  %.idx166.i = mul nuw nsw i64 %i.u, 48
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ac = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.af = sext i32 %i.e to i64                    ; 6 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !54 ; 2 uses
  tail call void %i.ag(ptr noundef %i.ac, ptr noundef %i.ah, ptr noundef %i.ah, i64 noundef 8) #16
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !54
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.af ; 2 uses
  tail call void %i.ai(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.al, i64 noundef 8) #16
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.idx160 = shl nsw i64 %i.af, 4
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx160 ; 2 uses
  tail call void %i.am(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ap, i64 noundef 8) #16
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.as = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.idx161 = mul nsw i64 %i.af, 24
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.idx161 ; 2 uses
  tail call void %i.aq(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.at, i64 noundef 8) #16
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.idx162 = shl nsw i64 %i.af, 5
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx162 ; 2 uses
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.ax, i64 noundef 8) #16
  %i.ay = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ba = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.idx163 = mul nsw i64 %i.af, 40
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx163 ; 2 uses
  tail call void %i.ay(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bb, i64 noundef 8) #16
  %i.bc = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !54
  %.idx164 = mul nsw i64 %i.af, 48
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %.idx164 ; 2 uses
  tail call void %i.bc(ptr noundef %i.bd, ptr noundef %i.bf, ptr noundef %i.bf, i64 noundef 8) #16
  %i.bg = icmp sgt i32 %i.i, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bj ; 7 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx163.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx164.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx165.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx166.i
  %i.br = load <2 x float>, ptr %4, align 16, !tbaa !30 ; 7 uses
  %i.bs = load <2 x float>, ptr %i.v, align 8, !tbaa !30 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.w, align 16, !tbaa !30 ; 3 uses
  %i.bu = fadd nsz <2 x float> %i.bs, %i.bt       ; 3 uses
  %i.bv = load <2 x float>, ptr %i.x, align 16, !tbaa !30 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.y, align 8, !tbaa !30 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.z, align 4, !tbaa !30 ; 2 uses
  %i.by = load <2 x float>, ptr %i.ab, align 4, !tbaa !30 ; 2 uses
  %i.bz = fsub nsz <2 x float> %i.bv, %i.bw       ; 4 uses
  %i.ca = load <2 x float>, ptr %i.aa, align 4, !tbaa !30 ; 4 uses
  %i.cb = shufflevector <2 x float> %i.bs, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3>
  %i.cc = shufflevector <2 x float> %i.bt, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cd = fsub nsz <2 x float> %i.cb, %i.cc       ; 4 uses
  %i.ce = shufflevector <2 x float> %i.bw, <2 x float> %i.ca, <2 x i32> <i32 1, i32 3>
  %i.cf = fadd nsz <2 x float> %i.bx, %i.ce       ; 3 uses
  %i.cg = shufflevector <2 x float> %i.ca, <2 x float> %i.bs, <2 x i32> <i32 0, i32 2>
  %i.ch = shufflevector <2 x float> %i.by, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.ci = fsub nsz <2 x float> %i.cg, %i.ch       ; 4 uses
  %i.cj = shufflevector <2 x float> %i.ca, <2 x float> %i.bv, <2 x i32> <i32 2, i32 0>
  %i.ck = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = fadd nsz <2 x float> %i.cj, %i.ck       ; 3 uses
  %i.cm = fadd nsz <2 x float> %i.br, %i.bu
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> %i.cf, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.co = fadd nsz <2 x float> %i.cm, %i.cn
  %i.cp = shufflevector <2 x float> %i.cf, <2 x float> %i.cl, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.cq = fadd nsz <2 x float> %i.co, %i.cp
  store <2 x float> %i.cq, ptr %i.bk, align 4, !tbaa !30
  %i.cr = load <4 x float>, ptr @ff_tx_tab_7_float, align 16
  %i.cs = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 4), align 4, !tbaa !30 ; 5 uses
  %i.ct = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 8), align 8
  %i.cu = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 16), align 16, !tbaa !30 ; 3 uses
  %i.cv = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 20), align 4, !tbaa !51 ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cs, <2 x float> %i.cu, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cx = fneg nsz <2 x float> %i.cw              ; 3 uses
  %i.cy = fneg nsz <2 x float> %i.cf
  %i.cz = fmul nsz <2 x float> %i.cw, %i.cy
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.db = shufflevector <4 x float> %i.cr, <4 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.bu, <2 x float> %i.da)
  %i.dd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cl, <2 x float> %i.dc) ; 2 uses
  %i.de = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_float, i64 12), align 4, !tbaa !51 ; 2 uses
  %i.df = extractelement <2 x float> %i.cs, i64 0
  %i.dg = fneg nsz float %i.df
  %i.dh = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = fneg nsz float %i.de
  %i.dj = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = fmul nsz <2 x float> %i.bz, %i.dk
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = shufflevector <2 x float> %i.cu, <2 x float> %i.cs, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.do = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.ci, <2 x float> %i.dm)
  %i.dp = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cd, <2 x float> %i.do) ; 2 uses
  %i.dr = fsub nsz <2 x float> %i.dd, %i.dq       ; 2 uses
  %i.ds = fadd nsz <2 x float> %i.dd, %i.dq       ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dr, <2 x float> %i.ds, <2 x i32> <i32 0, i32 3>
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> %i.dr, <2 x i32> <i32 0, i32 3>
  %i.dv = fadd nsz <2 x float> %i.br, %i.du
  store <2 x float> %i.dv, ptr %i.bl, align 4, !tbaa !30
  %i.dw = fneg nsz <2 x float> %i.bu              ; 2 uses
  %i.dx = shufflevector <4 x float> %i.ct, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul nsz <2 x float> %i.dx, %i.dw
  %i.dz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cp, <2 x float> %i.dy)
  %i.ea = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.cn, <2 x float> %i.dz) ; 2 uses
  %i.ec = shufflevector <2 x float> %i.bz, <2 x float> %i.cd, <2 x i32> <i32 1, i32 3>
  %i.ed = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ee = insertelement <2 x float> %i.ed, float %i.cv, i64 0
  %i.ef = fmul nsz <2 x float> %i.ec, %i.ee
  %i.eg = insertelement <2 x float> %i.cs, float %i.cv, i64 1
  %i.eh = shufflevector <2 x float> %i.ci, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.ei = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eg, <2 x float> %i.eh, <2 x float> %i.ef)
  %i.ej = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x float> %i.cd, <2 x float> %i.ci, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.em = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ei) ; 2 uses
  %i.en = fadd nsz <2 x float> %i.eb, %i.em       ; 2 uses
  %i.eo = fsub nsz <2 x float> %i.eb, %i.em       ; 2 uses
  %i.ep = shufflevector <2 x float> %i.en, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3>
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> %i.en, <2 x i32> <i32 0, i32 3>
  %i.er = fadd nsz <2 x float> %i.br, %i.eq
  store <2 x float> %i.er, ptr %i.bm, align 4, !tbaa !30
  %i.es = shufflevector <2 x float> %i.ci, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.et = fmul nsz <2 x float> %i.es, %i.dk
  %i.eu = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ev, <2 x float> %i.el, <2 x float> %i.et)
  %i.ex = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ey, <2 x float> %i.dh, <2 x float> %i.ew) ; 2 uses
  %i.fa = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul nsz <2 x float> %i.fa, %i.dw
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.db, <2 x float> %i.cn, <2 x float> %i.fb)
  %i.fd = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %i.cp, <2 x float> %i.fc) ; 2 uses
  %i.ff = fsub nsz <2 x float> %i.fe, %i.ez       ; 2 uses
  %i.fg = fadd nsz <2 x float> %i.fe, %i.ez       ; 2 uses
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> %i.fg, <2 x i32> <i32 0, i32 3>
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> %i.ff, <2 x i32> <i32 0, i32 3>
  %i.fj = fadd nsz <2 x float> %i.br, %i.fi
  store <2 x float> %i.fj, ptr %i.bn, align 4, !tbaa !30
  %i.fk = fadd nsz <2 x float> %i.br, %i.fh
  store <2 x float> %i.fk, ptr %i.bo, align 4, !tbaa !30
  %i.fl = fadd nsz <2 x float> %i.br, %i.ep
  store <2 x float> %i.fl, ptr %i.bp, align 4, !tbaa !30
  %i.fm = fadd nsz <2 x float> %i.br, %i.dt
  store <2 x float> %i.fm, ptr %i.bq, align 4, !tbaa !30
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !100

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fn = load i32, ptr %gep, align 4, !tbaa !14  ; 6 uses
  %i.fo = icmp slt i32 %i.fn, %i.f
  %i.fp = add nsw i32 %i.fn, %i.f
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !30 ; 2 uses
  %i.ft = xor i32 %i.fn, -1                       ; 4 uses
  br i1 %i.fo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fu = add i32 %i.f, %i.ft
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fv
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !30
  %i.fy = fsub nsz float %i.fx, %i.fs
  %i.fz = add nsw i32 %i.fn, %i.g
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !30
  %i.gd = add i32 %i.g, %i.ft
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ge
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !30
  %i.gh = fadd nsz float %i.gc, %i.gg
  %i.gi = fneg nsz float %i.gh
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.gj = add i32 %i.r, %i.ft
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !30
  %i.gn = fadd nsz float %i.fs, %i.gm
  %i.go = fneg nsz float %i.gn
  %i.gp = sub nuw nsw i32 %i.fn, %i.f
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !30
  %i.gt = add i32 %i.g, %i.ft
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gu
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !30
  %i.gx = fsub nsz float %i.gs, %i.gw
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz float [ %i.fy, %bb.d ], [ %i.go, %bb.e ]
  %.sroa.6.0 = phi nsz float [ %i.gi, %bb.d ], [ %i.gx, %bb.e ] ; 2 uses
  %i.gy = ashr i32 %i.fn, 1
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.hc = load <2 x float>, ptr %i.ha, align 4, !tbaa !30 ; 3 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.he = extractelement <2 x float> %i.hc, i64 1
  %i.hf = fneg nsz float %i.he
  %i.hg = fmul nsz float %.sroa.6.0, %i.hf
  %i.hh = extractelement <2 x float> %i.hc, i64 0
  %i.hi = fmul nsz float %.sroa.6.0, %i.hh
  %i.hj = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = insertelement <2 x float> poison, float %i.hi, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.hg, i64 1
  %i.hn = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.hd, <2 x float> %i.hm)
  store <2 x float> %i.hn, ptr %i.hb, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !101

.lr.ph:                                           ; preds = %.preheader136
  %i.ho = load ptr, ptr %i.ae, align 8, !tbaa !54 ; 2 uses
  %i.hp = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.hq = add nuw nsw i64 %indvars.iv151, %i.hp   ; 3 uses
  %i.hr = xor i64 %indvars.iv151, -1
  %i.hs = add nsw i64 %i.hp, %i.hr                ; 3 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hq
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !14
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hs
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !14
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hx ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !49 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !51 ; 2 uses
  %i.ic = sext i32 %i.hu to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.ic ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !49 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.ig = load float, ptr %i.if, align 4, !tbaa !51 ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hq ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4 ; 2 uses
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !51
  %i.ik = load float, ptr %i.ih, align 4, !tbaa !49
  %i.il = fneg nsz float %i.ik
  %i.im = fmul nsz float %i.ig, %i.il
  %i.in = tail call nsz float @llvm.fmuladd.f32(float %i.ie, float %i.ij, float %i.im)
  %i.io = shl nsw i64 %i.hs, 1
  %i.ip = mul nsw i64 %i.p, %i.io
  %i.iq = getelementptr [4 x i8], ptr %1, i64 %i.ip ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %i.p
  store float %i.in, ptr %i.ir, align 4, !tbaa !30
  %i.is = load float, ptr %i.ih, align 4, !tbaa !49
  %i.it = load float, ptr %i.ii, align 4, !tbaa !51
  %i.iu = fmul nsz float %i.ig, %i.it
  %i.iv = tail call nsz float @llvm.fmuladd.f32(float %i.ie, float %i.is, float %i.iu)
  %i.iw = shl nuw nsw i64 %i.hq, 1
  %i.ix = mul nuw nsw i64 %i.p, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ix ; 2 uses
  store float %i.iv, ptr %i.iy, align 4, !tbaa !30
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hs ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !51
  %i.jc = load float, ptr %i.iz, align 4, !tbaa !49
  %i.jd = fneg nsz float %i.jc
  %i.je = fmul nsz float %i.ib, %i.jd
  %i.jf = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float %i.jb, float %i.je)
  %i.jg = getelementptr [4 x i8], ptr %i.iy, i64 %i.p
  store float %i.jf, ptr %i.jg, align 4, !tbaa !30
  %i.jh = load float, ptr %i.iz, align 4, !tbaa !49
  %i.ji = load float, ptr %i.ja, align 4, !tbaa !51
  %i.jj = fmul nsz float %i.ib, %i.ji
  %i.jk = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float %i.jh, float %i.jj)
  store float %i.jk, ptr %i.iq, align 4, !tbaa !30
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !102
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexFloat], align 16 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nsw i32 %i.e, 27                     ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !19
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader137.lr.ph, label %.preheader136

.preheader137.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx196.i = mul nuw nsw i64 %i.u, 24
  %.idx197.i = shl nuw nsw i64 %i.u, 5
  %.idx198.i = mul nuw nsw i64 %i.u, 40
  %.idx199.i = mul nuw nsw i64 %i.u, 48
  %.idx200.i = mul nuw nsw i64 %i.u, 56
  %.idx201.i = shl nuw nsw i64 %i.u, 6
  br label %.preheader137

.preheader137:                                    ; preds = %.preheader137.lr.ph, %bb.b
  %indvars.iv143 = phi i64 [ 0, %.preheader137.lr.ph ], [ %indvars.iv.next144, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv143, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader136.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %.preheader136

.preheader136:                                    ; preds = %.preheader136.loopexit, %bb.a
  %i.ad = phi ptr [ %.pre, %.preheader136.loopexit ], [ %i.d, %bb.a ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ag = sext i32 %i.e to i64                    ; 8 uses
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  tail call void %i.ah(ptr noundef %i.ad, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 8) #16
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  tail call void %i.aj(ptr noundef %i.ak, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !54
  %.idx160 = shl nsw i64 %i.ag, 4
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx160 ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.at = load ptr, ptr %i.af, align 8, !tbaa !54
  %.idx161 = mul nsw i64 %i.ag, 24
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx161 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !54
  %.idx162 = shl nsw i64 %i.ag, 5
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx162 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !54
  %.idx163 = mul nsw i64 %i.ag, 40
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx163 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 8) #16
  %i.bd = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !54
  %.idx164 = mul nsw i64 %i.ag, 48
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx164 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 8) #16
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !54
  %.idx165 = mul nsw i64 %i.ag, 56
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx165 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 8) #16
  %i.bl = load ptr, ptr %i.ae, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !54
  %.idx166 = shl nsw i64 %i.ag, 6
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx166 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 8) #16
  %i.bp = icmp sgt i32 %i.i, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv143
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !14
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bs ; 9 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx196.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx197.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx198.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx199.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx200.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx201.i
  %i.cc = load <2 x float>, ptr %4, align 16, !tbaa !30 ; 2 uses
  %i.cd = load <2 x float>, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.w, align 16, !tbaa !30 ; 2 uses
  %i.cf = fsub nsz <2 x float> %i.cd, %i.ce       ; 2 uses
  %i.cg = fadd nsz <2 x float> %i.cd, %i.ce       ; 2 uses
  %i.ch = load <2 x float>, ptr %i.x, align 16, !tbaa !30 ; 2 uses
  %i.ci = load <2 x float>, ptr %i.y, align 8, !tbaa !30 ; 2 uses
  %i.cj = fsub nsz <2 x float> %i.ch, %i.ci       ; 2 uses
  %i.ck = fadd nsz <2 x float> %i.ch, %i.ci       ; 2 uses
  %i.cl = load <2 x float>, ptr %i.z, align 8, !tbaa !30 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.aa, align 16, !tbaa !30 ; 2 uses
  %i.cn = fsub nsz <2 x float> %i.cl, %i.cm
  %i.co = fadd nsz <2 x float> %i.cl, %i.cm       ; 2 uses
  %i.cp = load <2 x float>, ptr %i.ab, align 16, !tbaa !30 ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %i.cr = fsub nsz <2 x float> %i.cp, %i.cq       ; 3 uses
  %i.cs = fadd nsz <2 x float> %i.cp, %i.cq       ; 3 uses
  %i.ct = fsub nsz <2 x float> %i.cg, %i.cs       ; 2 uses
  %i.cu = fsub nsz <2 x float> %i.ck, %i.cs       ; 2 uses
  %i.cv = fsub nsz <2 x float> %i.cf, %i.cr       ; 2 uses
  %i.cw = fadd nsz <2 x float> %i.cj, %i.cr       ; 2 uses
  %i.cx = fneg nsz <2 x float> %i.cu
  %i.cy = fneg nsz <2 x float> %i.cw
  %i.cz = fadd nsz <2 x float> %i.cc, %i.co       ; 2 uses
  %i.da = fadd nsz <2 x float> %i.cg, %i.ck
  %i.db = fadd nsz <2 x float> %i.da, %i.cs       ; 2 uses
  %i.dc = fadd nsz <2 x float> %i.cz, %i.db
  store <2 x float> %i.dc, ptr %i.bt, align 4, !tbaa !30
  %i.dd = load <6 x float>, ptr @ff_tx_tab_9_float, align 16, !tbaa !30 ; 6 uses
  %i.de = fsub nsz <2 x float> %i.cf, %i.cj
  %i.df = fadd nsz <2 x float> %i.de, %i.cr
  %i.dg = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dh = fmul nsz <2 x float> %i.df, %i.dg
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dj = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.db, <2 x float> %i.cz) ; 2 uses
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.co, <2 x float> %i.cc) ; 3 uses
  %i.dm = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.dn = fmul nsz <2 x float> %i.cu, %i.dm
  %i.do = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dp = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.ct, <2 x float> %i.dn) ; 2 uses
  %i.dq = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.dr = fmul nsz <2 x float> %i.cw, %i.dq
  %i.ds = shufflevector <6 x float> %i.dd, <6 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.dt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.cv, <2 x float> %i.dr) ; 2 uses
  %i.du = fmul nsz <2 x float> %i.cn, %i.dg       ; 3 uses
  %i.dv = fadd nsz <2 x float> %i.dl, %i.dp       ; 2 uses
  %i.dw = fadd nsz <2 x float> %i.du, %i.dt
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dy = fsub nsz <2 x float> %i.dk, %i.di       ; 2 uses
  %i.dz = fadd nsz <2 x float> %i.dk, %i.di       ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.eb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_float, i64 24), align 8, !tbaa !30 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul nsz <2 x float> %i.ec, %i.cx
  %i.ee = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.ct, <2 x float> %i.ed) ; 2 uses
  %i.ef = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eg = fmul nsz <2 x float> %i.ef, %i.cy
  %i.eh = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.cv, <2 x float> %i.eg) ; 2 uses
  %i.ei = fadd nsz <2 x float> %i.dl, %i.ee       ; 2 uses
  %i.ej = fsub nsz <2 x float> %i.eh, %i.du
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.el = fadd nsz <2 x float> %i.dv, %i.dx       ; 2 uses
  %i.em = fsub nsz <2 x float> %i.dv, %i.dx       ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.en, ptr %i.bu, align 4, !tbaa !30
  %i.eo = fadd nsz <2 x float> %i.ei, %i.ek       ; 2 uses
  %i.ep = fsub nsz <2 x float> %i.ei, %i.ek       ; 2 uses
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> %i.ep, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.eq, ptr %i.bv, align 4, !tbaa !30
  %i.er = shufflevector <2 x float> %i.dz, <2 x float> %i.dy, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.er, ptr %i.bw, align 4, !tbaa !30
  %i.es = fadd nsz <2 x float> %i.dp, %i.ee
  %i.et = fsub nsz <2 x float> %i.dl, %i.es       ; 2 uses
  %i.eu = fsub nsz <2 x float> %i.eh, %i.dt
  %i.ev = fadd nsz <2 x float> %i.du, %i.eu
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = fadd nsz <2 x float> %i.et, %i.ew       ; 2 uses
  %i.ey = fsub nsz <2 x float> %i.et, %i.ew       ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ez, ptr %i.bx, align 4, !tbaa !30
  %i.fa = shufflevector <2 x float> %i.ey, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fa, ptr %i.by, align 4, !tbaa !30
  store <2 x float> %i.ea, ptr %i.bz, align 4, !tbaa !30
  %i.fb = shufflevector <2 x float> %i.ep, <2 x float> %i.eo, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fb, ptr %i.ca, align 4, !tbaa !30
  %i.fc = shufflevector <2 x float> %i.em, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.fc, ptr %i.cb, align 4, !tbaa !30
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.u
  br i1 %exitcond146.not, label %.preheader136.loopexit, label %.preheader137, !llvm.loop !103

bb.c:                                             ; preds = %.preheader137, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader137 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.fd = load i32, ptr %gep, align 4, !tbaa !14  ; 6 uses
  %i.fe = icmp slt i32 %i.fd, %i.f
  %i.ff = add nsw i32 %i.fd, %i.f
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !30 ; 2 uses
  %i.fj = xor i32 %i.fd, -1                       ; 4 uses
  br i1 %i.fe, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.fk = add i32 %i.f, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fl
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !30
  %i.fo = fsub nsz float %i.fn, %i.fi
  %i.fp = add nsw i32 %i.fd, %i.g
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !30
  %i.ft = add i32 %i.g, %i.fj
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !30
  %i.fx = fadd nsz float %i.fs, %i.fw
  %i.fy = fneg nsz float %i.fx
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.fz = add i32 %i.r, %i.fj
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ga
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !30
  %i.gd = fadd nsz float %i.fi, %i.gc
  %i.ge = fneg nsz float %i.gd
  %i.gf = sub nuw nsw i32 %i.fd, %i.f
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !30
  %i.gj = add i32 %i.g, %i.fj
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.gk
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !30
  %i.gn = fsub nsz float %i.gi, %i.gm
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.077.0 = phi nsz float [ %i.fo, %bb.d ], [ %i.ge, %bb.e ]
  %.sroa.6.0 = phi nsz float [ %i.fy, %bb.d ], [ %i.gn, %bb.e ] ; 2 uses
  %i.go = ashr i32 %i.fd, 1
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.gs = load <2 x float>, ptr %i.gq, align 4, !tbaa !30 ; 3 uses
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = extractelement <2 x float> %i.gs, i64 1
  %i.gv = fneg nsz float %i.gu
  %i.gw = fmul nsz float %.sroa.6.0, %i.gv
  %i.gx = extractelement <2 x float> %i.gs, i64 0
  %i.gy = fmul nsz float %.sroa.6.0, %i.gx
  %i.gz = insertelement <2 x float> poison, float %.sroa.077.0, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = insertelement <2 x float> poison, float %i.gy, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %i.gw, i64 1
  %i.hd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.gt, <2 x float> %i.hc)
  store <2 x float> %i.hd, ptr %i.gr, align 8, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !104

.lr.ph:                                           ; preds = %.preheader136
  %i.he = load ptr, ptr %i.af, align 8, !tbaa !54 ; 2 uses
  %i.hf = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count154 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader136
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv151 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next152, %bb.g ] ; 3 uses
  %i.hg = add nuw nsw i64 %indvars.iv151, %i.hf   ; 3 uses
  %i.hh = xor i64 %indvars.iv151, -1
  %i.hi = add nsw i64 %i.hf, %i.hh                ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hg
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !14
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.hi
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !14
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hn ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !49 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !51 ; 2 uses
  %i.hs = sext i32 %i.hk to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.hs ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !49 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !51 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.hg ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !51
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !49
  %i.ib = fneg nsz float %i.ia
  %i.ic = fmul nsz float %i.hw, %i.ib
  %i.id = tail call nsz float @llvm.fmuladd.f32(float %i.hu, float %i.hz, float %i.ic)
  %i.ie = shl nsw i64 %i.hi, 1
  %i.if = mul nsw i64 %i.p, %i.ie
  %i.ig = getelementptr [4 x i8], ptr %1, i64 %i.if ; 2 uses
  %i.ih = getelementptr [4 x i8], ptr %i.ig, i64 %i.p
  store float %i.id, ptr %i.ih, align 4, !tbaa !30
  %i.ii = load float, ptr %i.hx, align 4, !tbaa !49
  %i.ij = load float, ptr %i.hy, align 4, !tbaa !51
  %i.ik = fmul nsz float %i.hw, %i.ij
  %i.il = tail call nsz float @llvm.fmuladd.f32(float %i.hu, float %i.ii, float %i.ik)
  %i.im = shl nuw nsw i64 %i.hg, 1
  %i.in = mul nuw nsw i64 %i.p, %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.in ; 2 uses
  store float %i.il, ptr %i.io, align 4, !tbaa !30
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hi ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 4 ; 2 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !51
  %i.is = load float, ptr %i.ip, align 4, !tbaa !49
  %i.it = fneg nsz float %i.is
  %i.iu = fmul nsz float %i.hr, %i.it
  %i.iv = tail call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.ir, float %i.iu)
  %i.iw = getelementptr [4 x i8], ptr %i.io, i64 %i.p
  store float %i.iv, ptr %i.iw, align 4, !tbaa !30
  %i.ix = load float, ptr %i.ip, align 4, !tbaa !49
  %i.iy = load float, ptr %i.iq, align 4, !tbaa !51
  %i.iz = fmul nsz float %i.hr, %i.iy
  %i.ja = tail call nsz float @llvm.fmuladd.f32(float %i.hp, float %i.ix, float %i.iz)
  store float %i.ja, ptr %i.ig, align 4, !tbaa !30
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %._crit_edge, label %bb.g, !llvm.loop !105
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_float_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexFloat], align 16 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !19   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nsw i32 %i.e, 45                     ; 3 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !19
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader151.lr.ph, label %.preheader150

.preheader151.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 48
  %.idx88.i = mul nuw nsw i64 %i.u, 96
  %.idx89.i = mul nuw nsw i64 %i.u, 24
  %.idx90.i = mul nuw nsw i64 %i.u, 72
  %.idx.i139 = mul nuw nsw i64 %i.u, 80
  %.idx88.i140 = mul nuw nsw i64 %i.u, 56
  %.idx89.i141 = mul nuw nsw i64 %i.u, 104
  %.idx90.i142 = shl nuw nsw i64 %i.u, 5
  %.idx.i146 = mul nuw nsw i64 %i.u, 40
  %.idx88.i147 = mul nuw nsw i64 %i.u, 88
  %.idx89.i148 = shl nuw nsw i64 %i.u, 4
  %.idx90.i149 = shl nuw nsw i64 %i.u, 6
  %.idx91.i = mul nuw nsw i64 %i.u, 112
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph, %fft15.exit
  %indvars.iv162 = phi i64 [ 0, %.preheader151.lr.ph ], [ %indvars.iv.next163, %fft15.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv162, 60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.b

.preheader150.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !55
  br label %.preheader150

.preheader150:                                    ; preds = %.preheader150.loopexit, %bb.a
  %i.aj = phi ptr [ %.pre, %.preheader150.loopexit ], [ %i.d, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.am = sext i32 %i.e to i64                    ; 14 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  tail call void %i.an(ptr noundef %i.aj, ptr noundef %i.ao, ptr noundef %i.ao, i64 noundef 8) #16
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.am ; 2 uses
  tail call void %i.ap(ptr noundef %i.aq, ptr noundef %i.as, ptr noundef %i.as, i64 noundef 8) #16
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx179 = shl nsw i64 %i.am, 4
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %.idx179 ; 2 uses
  tail call void %i.at(ptr noundef %i.au, ptr noundef %i.aw, ptr noundef %i.aw, i64 noundef 8) #16
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx180 = mul nsw i64 %i.am, 24
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %.idx180 ; 2 uses
  tail call void %i.ax(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.ba, i64 noundef 8) #16
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx181 = shl nsw i64 %i.am, 5
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %.idx181 ; 2 uses
  tail call void %i.bb(ptr noundef %i.bc, ptr noundef %i.be, ptr noundef %i.be, i64 noundef 8) #16
  %i.bf = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx182 = mul nsw i64 %i.am, 40
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %.idx182 ; 2 uses
  tail call void %i.bf(ptr noundef %i.bg, ptr noundef %i.bi, ptr noundef %i.bi, i64 noundef 8) #16
  %i.bj = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx183 = mul nsw i64 %i.am, 48
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %.idx183 ; 2 uses
  tail call void %i.bj(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bm, i64 noundef 8) #16
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bp = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx184 = mul nsw i64 %i.am, 56
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %.idx184 ; 2 uses
  tail call void %i.bn(ptr noundef %i.bo, ptr noundef %i.bq, ptr noundef %i.bq, i64 noundef 8) #16
  %i.br = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx185 = shl nsw i64 %i.am, 6
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.idx185 ; 2 uses
  tail call void %i.br(ptr noundef %i.bs, ptr noundef %i.bu, ptr noundef %i.bu, i64 noundef 8) #16
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.bx = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx186 = mul nsw i64 %i.am, 72
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %.idx186 ; 2 uses
  tail call void %i.bv(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef %i.by, i64 noundef 8) #16
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx187 = mul nsw i64 %i.am, 80
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %.idx187 ; 2 uses
  tail call void %i.bz(ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.cc, i64 noundef 8) #16
  %i.cd = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.cf = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx188 = mul nsw i64 %i.am, 88
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.idx188 ; 2 uses
  tail call void %i.cd(ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef %i.cg, i64 noundef 8) #16
  %i.ch = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.cj = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx189 = mul nsw i64 %i.am, 96
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 %.idx189 ; 2 uses
  tail call void %i.ch(ptr noundef %i.ci, ptr noundef %i.ck, ptr noundef %i.ck, i64 noundef 8) #16
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.cn = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx190 = mul nsw i64 %i.am, 104
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.idx190 ; 2 uses
  tail call void %i.cl(ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.co, i64 noundef 8) #16
  %i.cp = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.cr = load ptr, ptr %i.al, align 8, !tbaa !54
  %.idx191 = mul nsw i64 %i.am, 112
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 %.idx191 ; 2 uses
  tail call void %i.cp(ptr noundef %i.cq, ptr noundef %i.cs, ptr noundef %i.cs, i64 noundef 8) #16
  %i.ct = icmp sgt i32 %i.i, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv162
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !14
  %i.cw = load float, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 40), align 8, !tbaa !30
  %i.cx = sext i32 %i.cv to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cx ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i139
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i140
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i141
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i142
  %i.di = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx.i146
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx88.i147
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx89.i148
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx90.i149
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx91.i
  %i.dn = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_float, i64 32), align 16, !tbaa !30 ; 5 uses
  %i.do = load <2 x float>, ptr %4, align 16, !tbaa !30 ; 2 uses
  %i.dp = load <2 x float>, ptr %i.v, align 8, !tbaa !30 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.w, align 16, !tbaa !30 ; 2 uses
  %i.dr = fsub nsz <2 x float> %i.dp, %i.dq
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dt = fadd nsz <2 x float> %i.dp, %i.dq       ; 2 uses
  %i.du = fmul nsz <2 x float> %i.ds, %i.dn       ; 2 uses
  %i.dv = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dx = fmul nsz <2 x float> %i.dt, %i.dw
  %i.dy = fsub nsz <2 x float> %i.do, %i.dx       ; 2 uses
  %i.dz = fsub nsz <2 x float> %i.dy, %i.du       ; 2 uses
  %i.ea = fadd nsz <2 x float> %i.dy, %i.du       ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.ea, <2 x i32> <i32 0, i32 3> ; 5 uses
  %i.ec = load <2 x float>, ptr %i.x, align 8, !tbaa !30 ; 2 uses
  %i.ed = load <2 x float>, ptr %i.y, align 16, !tbaa !30 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.z, align 8, !tbaa !30 ; 2 uses
  %i.ef = fsub nsz <2 x float> %i.ed, %i.ee
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eh = fadd nsz <2 x float> %i.ed, %i.ee       ; 2 uses
  %i.ei = fmul nsz <2 x float> %i.eg, %i.dn       ; 2 uses
  %i.ej = fmul nsz <2 x float> %i.eh, %i.dw
  %i.ek = fsub nsz <2 x float> %i.ec, %i.ej       ; 2 uses
  %i.el = fsub nsz <2 x float> %i.ek, %i.ei       ; 2 uses
  %i.em = fadd nsz <2 x float> %i.ek, %i.ei       ; 2 uses
  %i.en = shufflevector <2 x float> %i.el, <2 x float> %i.em, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eo = load <2 x float>, ptr %i.aa, align 16, !tbaa !30 ; 2 uses
  %i.ep = load <2 x float>, ptr %i.ab, align 8, !tbaa !30 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.ac, align 16, !tbaa !30 ; 2 uses
end_hunk_3
