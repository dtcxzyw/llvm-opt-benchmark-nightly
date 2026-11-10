Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_image?download=true
inline.NumInlined: 718
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 83
begin_hunk_0_@stbi__idct_block:bb.a
  %i.ck = add nsw i32 %i.cj, %i.by                ; 2 uses
  %i.cl = add nsw i32 %i.ar, 512
  %i.cm = add nsw i32 %i.cl, %i.ay                ; 2 uses
  %i.cn = add nsw i32 %i.ap, 512
  %i.co = add nsw i32 %i.cn, %i.ba                ; 2 uses
  %i.cp = add nsw i32 %i.bc, 512                  ; 2 uses
  %i.cq = add nsw i32 %i.bb, 512                  ; 2 uses
  %i.cr = add nsw i32 %i.ce, %i.cm
  %i.cs = ashr i32 %i.cr, 10
  store i32 %i.cs, ptr %.0199218, align 4, !tbaa !40
  %i.ct = sub nsw i32 %i.cm, %i.ce
  %i.cu = ashr i32 %i.ct, 10
  %i.cv = getelementptr inbounds nuw i8, ptr %.0199218, i64 224
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !40
  %i.cw = add nsw i32 %i.cg, %i.co
  %i.cx = ashr i32 %i.cw, 10
  %i.cy = getelementptr inbounds nuw i8, ptr %.0199218, i64 32
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !40
  %i.cz = sub nsw i32 %i.co, %i.cg
  %i.da = ashr i32 %i.cz, 10
  %i.db = getelementptr inbounds nuw i8, ptr %.0199218, i64 192
  store i32 %i.da, ptr %i.db, align 4, !tbaa !40
  %i.dc = add nsw i32 %i.ci, %i.cp
  %i.dd = ashr i32 %i.dc, 10
  %i.de = getelementptr inbounds nuw i8, ptr %.0199218, i64 64
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !40
  %i.df = sub nsw i32 %i.cp, %i.ci
  %i.dg = ashr i32 %i.df, 10
  %i.dh = getelementptr inbounds nuw i8, ptr %.0199218, i64 160
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !40
  %i.di = add nsw i32 %i.ck, %i.cq
  %i.dj = ashr i32 %i.di, 10
  %i.dk = getelementptr inbounds nuw i8, ptr %.0199218, i64 96
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !40
  %i.dl = sub nsw i32 %i.cq, %i.ck
  %i.dm = ashr i32 %i.dl, 10
  %i.dn = getelementptr inbounds nuw i8, ptr %.0199218, i64 128
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.do = add nuw nsw i32 %.0219, 1               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0202217, i64 2
  %i.dq = getelementptr inbounds nuw i8, ptr %.0199218, i64 4
  %exitcond.not = icmp eq i32 %i.do, 8
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !309

bb.j:                                             ; preds = %.preheader, %bb.j
  %.1222 = phi i32 [ 0, %.preheader ], [ %i.hb, %bb.j ]
  %.1200221 = phi ptr [ %i.a, %.preheader ], [ %i.hc, %bb.j ] ; 9 uses
  %.0201220 = phi ptr [ %0, %.preheader ], [ %i.hd, %bb.j ] ; 9 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1200221, i64 8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !40 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1200221, i64 24
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !40 ; 2 uses
  %i.dv = add nsw i32 %i.du, %i.ds
  %i.dw = mul nsw i32 %i.dv, 2217                 ; 2 uses
  %i.dx = mul nsw i32 %i.du, -7567
  %i.dy = add nsw i32 %i.dw, %i.dx                ; 2 uses
  %i.dz = mul nsw i32 %i.ds, 3135
  %i.ea = add nsw i32 %i.dw, %i.dz                ; 2 uses
  %i.eb = load i32, ptr %.1200221, align 4, !tbaa !40 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1200221, i64 16
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !40 ; 2 uses
  %i.ee = add nsw i32 %i.ed, %i.eb
  %i.ef = shl nsw i32 %i.ee, 12                   ; 2 uses
  %i.eg = sub nsw i32 %i.eb, %i.ed
  %i.eh = shl nsw i32 %i.eg, 12                   ; 2 uses
  %i.ei = sub nsw i32 %i.ef, %i.ea
  %i.ej = sub nsw i32 %i.eh, %i.dy
  %i.ek = getelementptr inbounds nuw i8, ptr %.1200221, i64 28
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !40 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.1200221, i64 20
  %i.en = load i32, ptr %i.em, align 4, !tbaa !40 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.1200221, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !40 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.1200221, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !40 ; 3 uses
  %i.es = add nsw i32 %i.ep, %i.el                ; 2 uses
  %i.et = add nsw i32 %i.er, %i.en                ; 2 uses
  %i.eu = add nsw i32 %i.er, %i.el
  %i.ev = add nsw i32 %i.ep, %i.en
  %i.ew = add nsw i32 %i.et, %i.es
  %i.ex = mul nsw i32 %i.ew, 4816                 ; 2 uses
  %i.ey = mul nsw i32 %i.el, 1223
  %i.ez = mul nsw i32 %i.en, 8410
  %i.fa = mul nsw i32 %i.ep, 12586
  %i.fb = mul nsw i32 %i.er, 6149
  %i.fc = mul nsw i32 %i.eu, -3685
  %i.fd = add nsw i32 %i.ex, %i.fc                ; 2 uses
  %i.fe = mul nsw i32 %i.ev, -10497
  %i.ff = add nsw i32 %i.ex, %i.fe                ; 2 uses
  %i.fg = mul nsw i32 %i.es, -8034                ; 2 uses
  %i.fh = mul nsw i32 %i.et, -1597                ; 2 uses
  %i.fi = add i32 %i.fh, %i.fb
  %i.fj = add i32 %i.fi, %i.fd                    ; 2 uses
  %i.fk = add i32 %i.fg, %i.fa
  %i.fl = add i32 %i.fk, %i.ff                    ; 2 uses
  %i.fm = add i32 %i.fh, %i.ez
  %i.fn = add i32 %i.fm, %i.ff                    ; 2 uses
  %i.fo = add i32 %i.fg, %i.ey
  %i.fp = add i32 %i.fo, %i.fd                    ; 2 uses
  %i.fq = add i32 %i.ea, 16842752
  %i.fr = add i32 %i.fq, %i.ef                    ; 2 uses
  %i.fs = add i32 %i.dy, 16842752
  %i.ft = add i32 %i.fs, %i.eh                    ; 2 uses
  %i.fu = add nsw i32 %i.ej, 16842752             ; 2 uses
  %i.fv = add nsw i32 %i.ei, 16842752             ; 2 uses
  %i.fw = add nsw i32 %i.fj, %i.fr
  %i.fx = ashr i32 %i.fw, 17
  %i.fy = tail call i32 @llvm.smax.i32(i32 %i.fx, i32 0)
  %.06.i = tail call i32 @llvm.umin.i32(i32 %i.fy, i32 255)
  %.0.i = trunc nuw i32 %.06.i to i8
  store i8 %.0.i, ptr %.0201220, align 1, !tbaa !37
  %i.fz = sub nsw i32 %i.fr, %i.fj
  %i.ga = ashr i32 %i.fz, 17
  %i.gb = tail call i32 @llvm.smax.i32(i32 %i.ga, i32 0)
  %.06.i203 = tail call i32 @llvm.umin.i32(i32 %i.gb, i32 255)
  %.0.i204 = trunc nuw i32 %.06.i203 to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.0201220, i64 7
  store i8 %.0.i204, ptr %i.gc, align 1, !tbaa !37
  %i.gd = add nsw i32 %i.fl, %i.ft
  %i.ge = ashr i32 %i.gd, 17
  %i.gf = tail call i32 @llvm.smax.i32(i32 %i.ge, i32 0)
  %.06.i205 = tail call i32 @llvm.umin.i32(i32 %i.gf, i32 255)
  %.0.i206 = trunc nuw i32 %.06.i205 to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %.0201220, i64 1
  store i8 %.0.i206, ptr %i.gg, align 1, !tbaa !37
  %i.gh = sub nsw i32 %i.ft, %i.fl
  %i.gi = ashr i32 %i.gh, 17
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %.06.i207 = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 255)
  %.0.i208 = trunc nuw i32 %.06.i207 to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %.0201220, i64 6
  store i8 %.0.i208, ptr %i.gk, align 1, !tbaa !37
  %i.gl = add nsw i32 %i.fn, %i.fu
  %i.gm = ashr i32 %i.gl, 17
  %i.gn = tail call i32 @llvm.smax.i32(i32 %i.gm, i32 0)
  %.06.i209 = tail call i32 @llvm.umin.i32(i32 %i.gn, i32 255)
  %.0.i210 = trunc nuw i32 %.06.i209 to i8
  %i.go = getelementptr inbounds nuw i8, ptr %.0201220, i64 2
  store i8 %.0.i210, ptr %i.go, align 1, !tbaa !37
  %i.gp = sub nsw i32 %i.fu, %i.fn
  %i.gq = ashr i32 %i.gp, 17
  %i.gr = tail call i32 @llvm.smax.i32(i32 %i.gq, i32 0)
  %.06.i211 = tail call i32 @llvm.umin.i32(i32 %i.gr, i32 255)
  %.0.i212 = trunc nuw i32 %.06.i211 to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %.0201220, i64 5
  store i8 %.0.i212, ptr %i.gs, align 1, !tbaa !37
  %i.gt = add nsw i32 %i.fp, %i.fv
  %i.gu = ashr i32 %i.gt, 17
  %i.gv = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 0)
  %.06.i213 = tail call i32 @llvm.umin.i32(i32 %i.gv, i32 255)
  %.0.i214 = trunc nuw i32 %.06.i213 to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %.0201220, i64 3
  store i8 %.0.i214, ptr %i.gw, align 1, !tbaa !37
  %i.gx = sub nsw i32 %i.fv, %i.fp
  %i.gy = ashr i32 %i.gx, 17
  %i.gz = tail call i32 @llvm.smax.i32(i32 %i.gy, i32 0)
  %.06.i215 = tail call i32 @llvm.umin.i32(i32 %i.gz, i32 255)
  %.0.i216 = trunc nuw i32 %.06.i215 to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %.0201220, i64 4
  store i8 %.0.i216, ptr %i.ha, align 1, !tbaa !37
  %i.hb = add nuw nsw i32 %.1222, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1200221, i64 32
  %i.hd = getelementptr inbounds i8, ptr %.0201220, i64 %i.b
  %exitcond223.not = icmp eq i32 %i.hb, 8
  br i1 %exitcond223.not, label %bb.k, label %bb.j, !llvm.loop !310

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @stbi__idct_simd(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #23 {
bb.a:
  %i.a = load <8 x i16>, ptr %2, align 16, !tbaa !37 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <8 x i16>, ptr %i.b, align 16, !tbaa !37 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load <8 x i16>, ptr %i.d, align 16, !tbaa !37 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load <8 x i16>, ptr %i.f, align 16, !tbaa !37 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load <8 x i16>, ptr %i.h, align 16, !tbaa !37 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load <8 x i16>, ptr %i.j, align 16, !tbaa !37 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = load <8 x i16>, ptr %i.l, align 16, !tbaa !37 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = load <8 x i16>, ptr %i.n, align 16, !tbaa !37 ; 3 uses
  %i.p = shufflevector <8 x i16> %i.e, <8 x i16> %i.m, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.q = shufflevector <8 x i16> %i.e, <8 x i16> %i.m, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.r = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.p, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.s = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.q, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.t = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.p, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.u = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.q, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.v = add <8 x i16> %i.i, %i.a                 ; 2 uses
  %i.w = sub <8 x i16> %i.a, %i.i                 ; 2 uses
  %3 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.v, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.x = bitcast <8 x i16> %3 to <4 x i32>
  %i.y = ashr exact <4 x i32> %i.x, splat (i32 4) ; 2 uses
  %4 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.v, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.z = bitcast <8 x i16> %4 to <4 x i32>
  %i.aa = ashr exact <4 x i32> %i.z, splat (i32 4) ; 2 uses
  %5 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.w, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ab = bitcast <8 x i16> %5 to <4 x i32>
  %i.ac = ashr exact <4 x i32> %i.ab, splat (i32 4) ; 2 uses
  %6 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.w, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ad = bitcast <8 x i16> %6 to <4 x i32>
  %i.ae = ashr exact <4 x i32> %i.ad, splat (i32 4) ; 2 uses
  %i.af = sub <4 x i32> %i.y, %i.t
  %i.ag = sub <4 x i32> %i.aa, %i.u
  %i.ah = sub <4 x i32> %i.ac, %i.r
  %i.ai = sub <4 x i32> %i.ae, %i.s
  %i.aj = shufflevector <8 x i16> %i.o, <8 x i16> %i.g, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ak = shufflevector <8 x i16> %i.o, <8 x i16> %i.g, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.al = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aj, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.am = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ak, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.an = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aj, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.ao = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ak, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.ap = shufflevector <8 x i16> %i.k, <8 x i16> %i.c, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.aq = shufflevector <8 x i16> %i.k, <8 x i16> %i.c, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ar = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.as = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aq, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.at = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ap, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.au = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.aq, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.av = add <8 x i16> %i.o, %i.c                ; 2 uses
  %i.aw = add <8 x i16> %i.k, %i.g                ; 2 uses
  %i.ax = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ay = shufflevector <8 x i16> %i.av, <8 x i16> %i.aw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.az = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.ba = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ay, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.bb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ax, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.bc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ay, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.bd = add <4 x i32> %i.az, %i.al              ; 2 uses
  %i.be = add <4 x i32> %i.ba, %i.am              ; 2 uses
  %i.bf = add <4 x i32> %i.bb, %i.ar              ; 2 uses
  %i.bg = add <4 x i32> %i.bc, %i.as              ; 2 uses
  %i.bh = add <4 x i32> %i.bb, %i.an              ; 2 uses
  %i.bi = add <4 x i32> %i.bc, %i.ao              ; 2 uses
  %i.bj = add <4 x i32> %i.az, %i.at              ; 2 uses
  %i.bk = add <4 x i32> %i.ba, %i.au              ; 2 uses
  %i.bl = or disjoint <4 x i32> %i.y, splat (i32 512)
  %i.bm = add <4 x i32> %i.bl, %i.t               ; 2 uses
  %i.bn = or disjoint <4 x i32> %i.aa, splat (i32 512)
  %i.bo = add <4 x i32> %i.bn, %i.u               ; 2 uses
  %i.bp = add <4 x i32> %i.bj, %i.bm
  %i.bq = add <4 x i32> %i.bk, %i.bo
  %i.br = sub <4 x i32> %i.bm, %i.bj
  %i.bs = sub <4 x i32> %i.bo, %i.bk
  %i.bt = ashr <4 x i32> %i.bp, splat (i32 10)
  %i.bu = ashr <4 x i32> %i.bq, splat (i32 10)
  %i.bv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bt, <4 x i32> %i.bu) ; 2 uses
  %i.bw = ashr <4 x i32> %i.br, splat (i32 10)
  %i.bx = ashr <4 x i32> %i.bs, splat (i32 10)
  %i.by = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bw, <4 x i32> %i.bx) ; 2 uses
  %i.bz = add <4 x i32> %i.r, splat (i32 512)
  %i.ca = add <4 x i32> %i.bz, %i.ac              ; 2 uses
  %i.cb = or disjoint <4 x i32> %i.ae, splat (i32 512)
  %i.cc = add <4 x i32> %i.cb, %i.s               ; 2 uses
  %i.cd = add <4 x i32> %i.bh, %i.ca
  %i.ce = add <4 x i32> %i.bi, %i.cc
  %i.cf = sub <4 x i32> %i.ca, %i.bh
  %i.cg = sub <4 x i32> %i.cc, %i.bi
  %i.ch = ashr <4 x i32> %i.cd, splat (i32 10)
  %i.ci = ashr <4 x i32> %i.ce, splat (i32 10)
  %i.cj = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ch, <4 x i32> %i.ci) ; 2 uses
  %i.ck = ashr <4 x i32> %i.cf, splat (i32 10)
  %i.cl = ashr <4 x i32> %i.cg, splat (i32 10)
  %i.cm = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ck, <4 x i32> %i.cl) ; 2 uses
  %i.cn = add <4 x i32> %i.ah, splat (i32 512)    ; 2 uses
  %i.co = add <4 x i32> %i.ai, splat (i32 512)    ; 2 uses
  %i.cp = add <4 x i32> %i.bf, %i.cn
  %i.cq = add <4 x i32> %i.bg, %i.co
  %i.cr = sub <4 x i32> %i.cn, %i.bf
  %i.cs = sub <4 x i32> %i.co, %i.bg
  %i.ct = ashr <4 x i32> %i.cp, splat (i32 10)
  %i.cu = ashr <4 x i32> %i.cq, splat (i32 10)
  %i.cv = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ct, <4 x i32> %i.cu) ; 2 uses
  %i.cw = ashr <4 x i32> %i.cr, splat (i32 10)
  %i.cx = ashr <4 x i32> %i.cs, splat (i32 10)
  %i.cy = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cw, <4 x i32> %i.cx) ; 2 uses
  %i.cz = add <4 x i32> %i.af, splat (i32 512)    ; 2 uses
  %i.da = add <4 x i32> %i.ag, splat (i32 512)    ; 2 uses
  %i.db = add <4 x i32> %i.bd, %i.cz
  %i.dc = add <4 x i32> %i.be, %i.da
  %i.dd = sub <4 x i32> %i.cz, %i.bd
  %i.de = sub <4 x i32> %i.da, %i.be
  %i.df = ashr <4 x i32> %i.db, splat (i32 10)
  %i.dg = ashr <4 x i32> %i.dc, splat (i32 10)
  %i.dh = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.df, <4 x i32> %i.dg) ; 2 uses
  %i.di = ashr <4 x i32> %i.dd, splat (i32 10)
  %i.dj = ashr <4 x i32> %i.de, splat (i32 10)
  %i.dk = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.di, <4 x i32> %i.dj) ; 2 uses
  %i.dl = shufflevector <8 x i16> %i.bv, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dm = shufflevector <8 x i16> %i.bv, <8 x i16> %i.dk, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dn = shufflevector <8 x i16> %i.cj, <8 x i16> %i.cy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.do = shufflevector <8 x i16> %i.cj, <8 x i16> %i.cy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dp = shufflevector <8 x i16> %i.cv, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dq = shufflevector <8 x i16> %i.cv, <8 x i16> %i.cm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dr = shufflevector <8 x i16> %i.dh, <8 x i16> %i.by, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ds = shufflevector <8 x i16> %i.dh, <8 x i16> %i.by, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dt = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.du = shufflevector <8 x i16> %i.dl, <8 x i16> %i.dp, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dv = shufflevector <8 x i16> %i.dn, <8 x i16> %i.dr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dw = shufflevector <8 x i16> %i.dn, <8 x i16> %i.dr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dx = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dy = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dz = shufflevector <8 x i16> %i.do, <8 x i16> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ea = shufflevector <8 x i16> %i.do, <8 x i16> %i.ds, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.eb = shufflevector <8 x i16> %i.dt, <8 x i16> %i.dv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ec = shufflevector <8 x i16> %i.dt, <8 x i16> %i.dv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.ed = shufflevector <8 x i16> %i.du, <8 x i16> %i.dw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ee = shufflevector <8 x i16> %i.du, <8 x i16> %i.dw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.ef = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eg = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.eh = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ei = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.ej = shufflevector <8 x i16> %i.ed, <8 x i16> %i.eh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ek = shufflevector <8 x i16> %i.ed, <8 x i16> %i.eh, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.el = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ej, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.em = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.en = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ej, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.eo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ek, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.ep = add <8 x i16> %i.eb, %i.ef              ; 2 uses
  %i.eq = sub <8 x i16> %i.eb, %i.ef              ; 2 uses
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ep, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.er = bitcast <8 x i16> %7 to <4 x i32>
  %i.es = ashr exact <4 x i32> %i.er, splat (i32 4) ; 2 uses
  %8 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ep, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.et = bitcast <8 x i16> %8 to <4 x i32>
  %i.eu = ashr exact <4 x i32> %i.et, splat (i32 4) ; 2 uses
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ev = bitcast <8 x i16> %9 to <4 x i32>
  %i.ew = ashr exact <4 x i32> %i.ev, splat (i32 4) ; 2 uses
  %10 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ex = bitcast <8 x i16> %10 to <4 x i32>
  %i.ey = ashr exact <4 x i32> %i.ex, splat (i32 4) ; 2 uses
  %i.ez = sub <4 x i32> %i.es, %i.en
  %i.fa = sub <4 x i32> %i.eu, %i.eo
  %i.fb = sub <4 x i32> %i.ew, %i.el
  %i.fc = sub <4 x i32> %i.ey, %i.em
  %i.fd = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fe = shufflevector <8 x i16> %i.ei, <8 x i16> %i.ee, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ff = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fd, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fe, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fh = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fd, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fi = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fe, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fj = shufflevector <8 x i16> %i.eg, <8 x i16> %i.ec, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fk = shufflevector <8 x i16> %i.eg, <8 x i16> %i.ec, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fl = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fj, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fm = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fk, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fj, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fk, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fp = add <8 x i16> %i.ec, %i.ei              ; 2 uses
  %i.fq = add <8 x i16> %i.ee, %i.eg              ; 2 uses
  %i.fr = shufflevector <8 x i16> %i.fp, <8 x i16> %i.fq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fs = shufflevector <8 x i16> %i.fp, <8 x i16> %i.fq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.fw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.fx = add <4 x i32> %i.ft, %i.ff              ; 2 uses
  %i.fy = add <4 x i32> %i.fu, %i.fg              ; 2 uses
  %i.fz = add <4 x i32> %i.fv, %i.fl              ; 2 uses
  %i.ga = add <4 x i32> %i.fw, %i.fm              ; 2 uses
  %i.gb = add <4 x i32> %i.fv, %i.fh              ; 2 uses
  %i.gc = add <4 x i32> %i.fw, %i.fi              ; 2 uses
  %i.gd = add <4 x i32> %i.ft, %i.fn              ; 2 uses
  %i.ge = add <4 x i32> %i.fu, %i.fo              ; 2 uses
  %i.gf = add <4 x i32> %i.en, splat (i32 16842752)
  %i.gg = add <4 x i32> %i.gf, %i.es              ; 2 uses
  %i.gh = add <4 x i32> %i.eo, splat (i32 16842752)
  %i.gi = add <4 x i32> %i.gh, %i.eu              ; 2 uses
  %i.gj = add <4 x i32> %i.gd, %i.gg
  %i.gk = add <4 x i32> %i.ge, %i.gi
  %i.gl = sub <4 x i32> %i.gg, %i.gd
  %i.gm = sub <4 x i32> %i.gi, %i.ge
  %i.gn = ashr <4 x i32> %i.gj, splat (i32 17)
  %i.go = ashr <4 x i32> %i.gk, splat (i32 17)
  %i.gp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gn, <4 x i32> %i.go)
  %i.gq = ashr <4 x i32> %i.gl, splat (i32 17)
  %i.gr = ashr <4 x i32> %i.gm, splat (i32 17)
  %i.gs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gq, <4 x i32> %i.gr)
  %i.gt = add <4 x i32> %i.el, splat (i32 16842752)
  %i.gu = add <4 x i32> %i.gt, %i.ew              ; 2 uses
  %i.gv = add <4 x i32> %i.em, splat (i32 16842752)
  %i.gw = add <4 x i32> %i.gv, %i.ey              ; 2 uses
  %i.gx = add <4 x i32> %i.gb, %i.gu
  %i.gy = add <4 x i32> %i.gc, %i.gw
  %i.gz = sub <4 x i32> %i.gu, %i.gb
  %i.ha = sub <4 x i32> %i.gw, %i.gc
  %i.hb = ashr <4 x i32> %i.gx, splat (i32 17)
  %i.hc = ashr <4 x i32> %i.gy, splat (i32 17)
  %i.hd = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hb, <4 x i32> %i.hc)
  %i.he = ashr <4 x i32> %i.gz, splat (i32 17)
  %i.hf = ashr <4 x i32> %i.ha, splat (i32 17)
  %i.hg = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.he, <4 x i32> %i.hf)
  %i.hh = add <4 x i32> %i.fb, splat (i32 16842752) ; 2 uses
  %i.hi = add <4 x i32> %i.fc, splat (i32 16842752) ; 2 uses
  %i.hj = add <4 x i32> %i.fz, %i.hh
  %i.hk = add <4 x i32> %i.ga, %i.hi
  %i.hl = sub <4 x i32> %i.hh, %i.fz
  %i.hm = sub <4 x i32> %i.hi, %i.ga
  %i.hn = ashr <4 x i32> %i.hj, splat (i32 17)
  %i.ho = ashr <4 x i32> %i.hk, splat (i32 17)
  %i.hp = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hn, <4 x i32> %i.ho)
  %i.hq = ashr <4 x i32> %i.hl, splat (i32 17)
  %i.hr = ashr <4 x i32> %i.hm, splat (i32 17)
  %i.hs = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hq, <4 x i32> %i.hr)
  %i.ht = add <4 x i32> %i.ez, splat (i32 16842752) ; 2 uses
  %i.hu = add <4 x i32> %i.fa, splat (i32 16842752) ; 2 uses
  %i.hv = add <4 x i32> %i.fx, %i.ht
  %i.hw = add <4 x i32> %i.fy, %i.hu
  %i.hx = sub <4 x i32> %i.ht, %i.fx
  %i.hy = sub <4 x i32> %i.hu, %i.fy
  %i.hz = ashr <4 x i32> %i.hv, splat (i32 17)
  %i.ia = ashr <4 x i32> %i.hw, splat (i32 17)
  %i.ib = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hz, <4 x i32> %i.ia)
  %i.ic = ashr <4 x i32> %i.hx, splat (i32 17)
  %i.id = ashr <4 x i32> %i.hy, splat (i32 17)
  %i.ie = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ic, <4 x i32> %i.id)
  %i.if = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gp, <8 x i16> %i.hd) ; 2 uses
  %i.ig = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hp, <8 x i16> %i.ib) ; 2 uses
  %i.ih = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ie, <8 x i16> %i.hs) ; 2 uses
  %i.ii = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hg, <8 x i16> %i.gs) ; 2 uses
  %i.ij = shufflevector <16 x i8> %i.if, <16 x i8> %i.ih, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ik = shufflevector <16 x i8> %i.if, <16 x i8> %i.ih, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.il = shufflevector <16 x i8> %i.ig, <16 x i8> %i.ii, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.im = shufflevector <16 x i8> %i.ig, <16 x i8> %i.ii, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.in = shufflevector <16 x i8> %i.ij, <16 x i8> %i.il, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.io = shufflevector <16 x i8> %i.ij, <16 x i8> %i.il, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ip = shufflevector <16 x i8> %i.ik, <16 x i8> %i.im, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iq = shufflevector <16 x i8> %i.ik, <16 x i8> %i.im, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ir = shufflevector <16 x i8> %i.in, <16 x i8> %i.ip, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.is = bitcast <16 x i8> %i.ir to <2 x i64>
  %i.it = shufflevector <16 x i8> %i.in, <16 x i8> %i.ip, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.iu = bitcast <16 x i8> %i.it to <2 x i64>
  %i.iv = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iw = bitcast <16 x i8> %i.iv to <2 x i64>
  %i.ix = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.iy = bitcast <16 x i8> %i.ix to <2 x i64>
  %i.iz = extractelement <2 x i64> %i.is, i64 0
  store i64 %i.iz, ptr %0, align 1, !tbaa !37
  %i.ja = sext i32 %1 to i64                      ; 7 uses
  %i.jb = getelementptr inbounds i8, ptr %0, i64 %i.ja ; 2 uses
  %i.jc = bitcast <16 x i8> %i.ir to <2 x i64>
  %i.jd = extractelement <2 x i64> %i.jc, i64 1
  store i64 %i.jd, ptr %i.jb, align 1, !tbaa !37
  %i.je = getelementptr inbounds i8, ptr %i.jb, i64 %i.ja ; 2 uses
  %i.jf = extractelement <2 x i64> %i.iu, i64 0
  store i64 %i.jf, ptr %i.je, align 1, !tbaa !37
  %i.jg = getelementptr inbounds i8, ptr %i.je, i64 %i.ja ; 2 uses
  %i.jh = bitcast <16 x i8> %i.it to <2 x i64>
  %i.ji = extractelement <2 x i64> %i.jh, i64 1
  store i64 %i.ji, ptr %i.jg, align 1, !tbaa !37
  %i.jj = getelementptr inbounds i8, ptr %i.jg, i64 %i.ja ; 2 uses
  %i.jk = extractelement <2 x i64> %i.iw, i64 0
  store i64 %i.jk, ptr %i.jj, align 1, !tbaa !37
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 %i.ja ; 2 uses
  %i.jm = bitcast <16 x i8> %i.iv to <2 x i64>
  %i.jn = extractelement <2 x i64> %i.jm, i64 1
  store i64 %i.jn, ptr %i.jl, align 1, !tbaa !37
  %i.jo = getelementptr inbounds i8, ptr %i.jl, i64 %i.ja ; 2 uses
  %i.jp = extractelement <2 x i64> %i.iy, i64 0
  store i64 %i.jp, ptr %i.jo, align 1, !tbaa !37
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 %i.ja
  %i.jr = bitcast <16 x i8> %i.ix to <2 x i64>
  %i.js = extractelement <2 x i64> %i.jr, i64 1
  store i64 %i.js, ptr %i.jq, align 1, !tbaa !37
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i8 @stbi__get_marker(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18472 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !83    ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %i.a, align 8, !tbaa !83
  br label %stbi__get8.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !78     ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.i, ptr %i.d, align 8, !tbaa !29
  %i.j = load i8, ptr %i.e, align 1, !tbaa !37
  br label %stbi__get8.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbi__get8.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !35
  %i.t = tail call i32 %i.n(ptr noundef %i.p, ptr noundef nonnull %i.q, i32 noundef %i.s) #37, !inline_history !65 ; 2 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 184 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !27
  %i.ad = add nsw i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !27
  %i.ae = icmp eq i32 %i.t, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.k, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  store i8 0, ptr %i.q, align 8, !tbaa !37
  br label %stbi__refill_buffer.exit.i

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@stbi__resample_row_hv_2_simd:bb.a

._crit_edge99:                                    ; preds = %.lr.ph98, %middle.block, %._crit_edge
  %.191.lcssa = phi i32 [ %.pre-phi114, %._crit_edge ], [ %vector.recur.extract, %middle.block ], [ %i.dv, %.lr.ph98 ]
  %i.ej = add nuw nsw i32 %.191.lcssa, 2
  %i.ek = lshr i32 %i.ej, 2
  %i.el = trunc nuw i32 %i.ek to i8
  %i.em = shl nsw i32 %3, 1
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr i8, ptr %0, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -1
  store i8 %i.el, ptr %i.ep, align 1, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge99, %bb.b
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @stbi__resample_row_generic(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3, i32 noundef %4) #18 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge16.split

.preheader.preheader:                             ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64                  ; 7 uses
  %wide.trip.count21 = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %4, 4
  %min.iters.check24 = icmp ult i32 %4, 32
  %i.d = and i64 %i.c, 28
  %n.vec = and i64 %i.c, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.c
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  %n.vec25 = and i64 %i.c, 2147483644             ; 3 uses
  %cmp.n30 = icmp eq i64 %n.vec25, %i.c
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv18 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next19, %._crit_edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv18
  %i.f = mul nuw nsw i64 %indvars.iv18, %i.c
  %.pre = load i8, ptr %i.e, align 1, !tbaa !37   ; 3 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <16 x i8> %broadcast.splat, ptr %i.g, align 1, !tbaa !37
  store <16 x i8> %broadcast.splat, ptr %i.h, align 1, !tbaa !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert26 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat27 = shufflevector <4 x i8> %broadcast.splatinsert26, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index28
  store <4 x i8> %broadcast.splat27, ptr %i.j, align 1, !tbaa !37
  %index.next29 = add nuw i64 %index28, 4         ; 2 uses
  %i.k = icmp eq i64 %index.next29, %n.vec25
  br i1 %i.k, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec25, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %.pre, ptr %gep, align 1, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !401

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %exitcond22.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count21
  br i1 %exitcond22.not, label %._crit_edge16.split, label %iter.check, !llvm.loop !402

._crit_edge16.split:                              ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__YCbCr_to_RGB_row(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #18 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = sext i32 %5 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.03644 = phi ptr [ %0, %.lr.ph ], [ %i.an, %bb.b ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.d = load i8, ptr %i.c, align 1, !tbaa !37
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.e, 20
  %i.g = or disjoint i32 %i.f, 524288             ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !37
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -128                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -128                   ; 2 uses
  %i.p = mul nsw i32 %i.k, 1470208
  %i.q = add nsw i32 %i.p, %i.g
  %i.r = mul nsw i32 %i.k, -748800
  %i.s = add nsw i32 %i.r, %i.g
  %i.t = mul nsw i32 %i.o, -360960
  %i.u = and i32 %i.t, -65536
  %i.v = add i32 %i.s, %i.u
  %i.w = mul nsw i32 %i.o, 1858048
  %i.x = add nsw i32 %i.w, %i.g
  %i.y = ashr i32 %i.q, 20
  %i.z = ashr i32 %i.v, 20
  %i.aa = ashr i32 %i.x, 20
  %i.ab = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0)
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 255)
  %i.ad = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 255)
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.aa, i32 0)
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.af, i32 255)
  %i.ah = trunc nuw i32 %i.ac to i8
  store i8 %i.ah, ptr %.03644, align 1, !tbaa !37
  %i.ai = trunc nuw i32 %i.ae to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.03644, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !37
  %i.ak = trunc nuw i32 %i.ag to i8
  %i.al = getelementptr inbounds nuw i8, ptr %.03644, i64 2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %.03644, i64 3
  store i8 -1, ptr %i.am, align 1, !tbaa !37
  %i.an = getelementptr inbounds i8, ptr %.03644, i64 %i.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !403

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbi__YCbCr_to_RGB_simd(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #24 {
bb.a:
  %i.a = icmp eq i32 %5, 4
  %i.b = icmp sgt i32 %4, 7
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.090103 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 1, !tbaa !37
  %i.f = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 1, !tbaa !37
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 1, !tbaa !37
  %i.l = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.m = bitcast <2 x i64> %i.f to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.o = bitcast <2 x i64> %i.i to <16 x i8>
  %i.p = xor <16 x i8> %i.o, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.p, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.q = bitcast <2 x i64> %i.l to <16 x i8>
  %i.r = xor <16 x i8> %i.q, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.r, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.s = bitcast <16 x i8> %i.n to <8 x i16>
  %i.t = lshr exact <8 x i16> %i.s, splat (i16 4) ; 3 uses
  %i.u = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.v = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.u, <8 x i16> splat (i16 5743))
  %i.w = bitcast <16 x i8> %7 to <8 x i16>        ; 2 uses
  %i.x = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.w, <8 x i16> splat (i16 -1410))
  %i.y = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.w, <8 x i16> splat (i16 7258))
  %i.z = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.u, <8 x i16> splat (i16 -2925))
  %i.aa = add <8 x i16> %i.v, %i.t
  %i.ab = add <8 x i16> %i.y, %i.t
  %i.ac = add <8 x i16> %i.z, %i.t
  %i.ad = add <8 x i16> %i.ac, %i.x
  %i.ae = ashr <8 x i16> %i.aa, splat (i16 4)
  %i.af = ashr <8 x i16> %i.ab, splat (i16 4)
  %i.ag = ashr <8 x i16> %i.ad, splat (i16 4)
  %i.ah = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ae, <8 x i16> %i.af) ; 2 uses
  %i.ai = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ag, <8 x i16> splat (i16 255)) ; 2 uses
  %i.aj = shufflevector <16 x i8> %i.ah, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ak = shufflevector <16 x i8> %i.ah, <16 x i8> %i.ai, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.al = bitcast <16 x i8> %i.aj to <8 x i16>    ; 2 uses
  %i.am = bitcast <16 x i8> %i.ak to <8 x i16>    ; 2 uses
  %i.an = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ao = shufflevector <8 x i16> %i.al, <8 x i16> %i.am, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.an, ptr %.090103, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %.090103, i64 16
  store <8 x i16> %i.ao, ptr %i.ap, align 1, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %.090103, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.ar = or disjoint i64 %indvars.iv.next, 7
  %i.as = icmp samesign ult i64 %i.ar, %i.c
  br i1 %i.as, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !404

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi i32 [ 0, %bb.a ], [ %i.at, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi ptr [ %0, %bb.a ], [ %i.aq, %.loopexit.loopexit ]
  %i.au = icmp slt i32 %.192, %4
  br i1 %i.au, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %.loopexit
  %i.av = sext i32 %5 to i64
  %i.aw = zext nneg i32 %.192 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %bb.b
  %indvars.iv110 = phi i64 [ %i.aw, %.lr.ph107 ], [ %indvars.iv.next111, %bb.b ] ; 4 uses
  %.2106 = phi ptr [ %.1, %.lr.ph107 ], [ %i.ci, %bb.b ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv110
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !37
  %i.az = zext i8 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 20
  %i.bb = or disjoint i32 %i.ba, 524288           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv110
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !37
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -128                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv110
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -128                 ; 2 uses
  %i.bk = mul nsw i32 %i.bf, 1470208
  %i.bl = add nsw i32 %i.bk, %i.bb
  %i.bm = mul nsw i32 %i.bf, -748800
  %i.bn = add nsw i32 %i.bm, %i.bb
  %i.bo = mul nsw i32 %i.bj, -360960
  %i.bp = and i32 %i.bo, -65536
  %i.bq = add i32 %i.bn, %i.bp
  %i.br = mul nsw i32 %i.bj, 1858048
  %i.bs = add nsw i32 %i.br, %i.bb
  %i.bt = ashr i32 %i.bl, 20
  %i.bu = ashr i32 %i.bq, 20
  %i.bv = ashr i32 %i.bs, 20
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 255)
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 0)
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 255)
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 255)
  %i.cc = trunc nuw i32 %i.bx to i8
  store i8 %i.cc, ptr %.2106, align 1, !tbaa !37
  %i.cd = trunc nuw i32 %i.bz to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.2106, i64 1
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !37
  %i.cf = trunc nuw i32 %i.cb to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.2106, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %.2106, i64 3
  store i8 -1, ptr %i.ch, align 1, !tbaa !37
  %i.ci = getelementptr inbounds i8, ptr %.2106, i64 %i.av
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !405

._crit_edge:                                      ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbi__setup_jpeg(ptr nofree noundef writeonly captures(none) initializes((18544, 18568)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18544
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560
  store ptr @stbi__idct_simd, ptr %i.a, align 8, !tbaa !79
  store ptr @stbi__YCbCr_to_RGB_simd, ptr %i.b, align 8, !tbaa !80
  store ptr @stbi__resample_row_hv_2_simd, ptr %i.c, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @stbi__cleanup_jpeg(ptr nofree noundef captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %stbi__free_jpeg_components.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18080
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %indvars.iv.i ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.h) #37
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !125  ; 2 uses
  %.not28.i = icmp eq ptr %i.k, null
  br i1 %.not28.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.k) #37
  store ptr null, ptr %i.j, align 8, !tbaa !125
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr null, ptr %i.l, align 8, !tbaa !120
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %.not29.i = icmp eq ptr %i.n, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.n) #37
  store ptr null, ptr %i.m, align 8, !tbaa !126
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbi__free_jpeg_components.exit, label %bb.b, !llvm.loop !9

stbi__free_jpeg_components.exit:                  ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define zeroext i8 @stbi__blinn_8x8(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i8 %0 to i32
  %i.b = zext i8 %1 to i32
  %i.c = mul nuw nsw i32 %i.b, %i.a
  %i.d = add nuw nsw i32 %i.c, 128                ; 2 uses
  %i.e = lshr i32 %i.d, 8
  %i.f = add nuw nsw i32 %i.e, %i.d
  %i.g = lshr i32 %i.f, 8
  %i.h = trunc nuw i32 %i.g to i8
  ret i8 %i.h
}

; Function Attrs: nounwind uwtable
define noundef ptr @load_jpeg_image(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 13 uses
  %5 = alloca [4 x %struct.stbi__resample], align 16 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !64
  %or.cond = icmp ugt i32 %4, 4
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_1
