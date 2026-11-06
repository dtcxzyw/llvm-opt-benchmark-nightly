Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZL15stbi__idct_simdPhiPs:bb.a
  %i.bh = add <4 x i32> %i.bd, %i.ap              ; 2 uses
  %i.bi = add <4 x i32> %i.be, %i.aq              ; 2 uses
  %i.bj = add <4 x i32> %i.bf, %i.av              ; 2 uses
  %i.bk = add <4 x i32> %i.bg, %i.aw              ; 2 uses
  %i.bl = add <4 x i32> %i.bf, %i.ar              ; 2 uses
  %i.bm = add <4 x i32> %i.bg, %i.as              ; 2 uses
  %i.bn = add <4 x i32> %i.bd, %i.ax              ; 2 uses
  %i.bo = add <4 x i32> %i.be, %i.ay              ; 2 uses
  %i.bp = or disjoint <4 x i32> %i.z, splat (i32 512)
  %i.bq = add <4 x i32> %i.bp, %i.t               ; 2 uses
  %i.br = or disjoint <4 x i32> %i.ac, splat (i32 512)
  %i.bs = add <4 x i32> %i.br, %i.u               ; 2 uses
  %i.bt = add <4 x i32> %i.bn, %i.bq
  %i.bu = add <4 x i32> %i.bo, %i.bs
  %i.bv = sub <4 x i32> %i.bq, %i.bn
  %i.bw = sub <4 x i32> %i.bs, %i.bo
  %i.bx = ashr <4 x i32> %i.bt, splat (i32 10)
  %i.by = ashr <4 x i32> %i.bu, splat (i32 10)
  %i.bz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.bx, <4 x i32> %i.by) ; 2 uses
  %i.ca = ashr <4 x i32> %i.bv, splat (i32 10)
  %i.cb = ashr <4 x i32> %i.bw, splat (i32 10)
  %i.cc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ca, <4 x i32> %i.cb) ; 2 uses
  %i.cd = add <4 x i32> %i.r, splat (i32 512)
  %i.ce = add <4 x i32> %i.cd, %i.af              ; 2 uses
  %i.cf = or disjoint <4 x i32> %i.ai, splat (i32 512)
  %i.cg = add <4 x i32> %i.cf, %i.s               ; 2 uses
  %i.ch = add <4 x i32> %i.bl, %i.ce
  %i.ci = add <4 x i32> %i.bm, %i.cg
  %i.cj = sub <4 x i32> %i.ce, %i.bl
  %i.ck = sub <4 x i32> %i.cg, %i.bm
  %i.cl = ashr <4 x i32> %i.ch, splat (i32 10)
  %i.cm = ashr <4 x i32> %i.ci, splat (i32 10)
  %i.cn = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cl, <4 x i32> %i.cm) ; 2 uses
  %i.co = ashr <4 x i32> %i.cj, splat (i32 10)
  %i.cp = ashr <4 x i32> %i.ck, splat (i32 10)
  %i.cq = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.co, <4 x i32> %i.cp) ; 2 uses
  %i.cr = add <4 x i32> %i.al, splat (i32 512)    ; 2 uses
  %i.cs = add <4 x i32> %i.am, splat (i32 512)    ; 2 uses
  %i.ct = add <4 x i32> %i.bj, %i.cr
  %i.cu = add <4 x i32> %i.bk, %i.cs
  %i.cv = sub <4 x i32> %i.cr, %i.bj
  %i.cw = sub <4 x i32> %i.cs, %i.bk
  %i.cx = ashr <4 x i32> %i.ct, splat (i32 10)
  %i.cy = ashr <4 x i32> %i.cu, splat (i32 10)
  %i.cz = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.cx, <4 x i32> %i.cy) ; 2 uses
  %i.da = ashr <4 x i32> %i.cv, splat (i32 10)
  %i.db = ashr <4 x i32> %i.cw, splat (i32 10)
  %i.dc = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.da, <4 x i32> %i.db) ; 2 uses
  %i.dd = add <4 x i32> %i.aj, splat (i32 512)    ; 2 uses
  %i.de = add <4 x i32> %i.ak, splat (i32 512)    ; 2 uses
  %i.df = add <4 x i32> %i.bh, %i.dd
  %i.dg = add <4 x i32> %i.bi, %i.de
  %i.dh = sub <4 x i32> %i.dd, %i.bh
  %i.di = sub <4 x i32> %i.de, %i.bi
  %i.dj = ashr <4 x i32> %i.df, splat (i32 10)
  %i.dk = ashr <4 x i32> %i.dg, splat (i32 10)
  %i.dl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dj, <4 x i32> %i.dk) ; 2 uses
  %i.dm = ashr <4 x i32> %i.dh, splat (i32 10)
  %i.dn = ashr <4 x i32> %i.di, splat (i32 10)
  %i.do = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dm, <4 x i32> %i.dn) ; 2 uses
  %i.dp = shufflevector <8 x i16> %i.bz, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dq = shufflevector <8 x i16> %i.bz, <8 x i16> %i.do, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dr = shufflevector <8 x i16> %i.cn, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ds = shufflevector <8 x i16> %i.cn, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dt = shufflevector <8 x i16> %i.cz, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.du = shufflevector <8 x i16> %i.cz, <8 x i16> %i.cq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dv = shufflevector <8 x i16> %i.dl, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dw = shufflevector <8 x i16> %i.dl, <8 x i16> %i.cc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dx = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dy = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dz = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ea = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.eb = shufflevector <8 x i16> %i.dq, <8 x i16> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ec = shufflevector <8 x i16> %i.dq, <8 x i16> %i.du, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ed = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ee = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ef = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eg = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.eh = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ei = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.ej = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ek = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ed, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.el = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.em = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.en = shufflevector <8 x i16> %i.eh, <8 x i16> %i.el, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eo = shufflevector <8 x i16> %i.eh, <8 x i16> %i.el, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ep = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.er = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.es = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.et = add <8 x i16> %i.ef, %i.ej              ; 2 uses
  %i.eu = sub <8 x i16> %i.ef, %i.ej              ; 2 uses
  %i.ev = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = bitcast <8 x i16> %i.ev to <4 x i32>
  %i.ex = ashr exact <4 x i32> %i.ew, splat (i32 4) ; 2 uses
  %i.ey = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.et, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ez = bitcast <8 x i16> %i.ey to <4 x i32>
  %i.fa = ashr exact <4 x i32> %i.ez, splat (i32 4) ; 2 uses
  %i.fb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fc = bitcast <8 x i16> %i.fb to <4 x i32>
  %i.fd = ashr exact <4 x i32> %i.fc, splat (i32 4) ; 2 uses
  %i.fe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ff = bitcast <8 x i16> %i.fe to <4 x i32>
  %i.fg = ashr exact <4 x i32> %i.ff, splat (i32 4) ; 2 uses
  %i.fh = sub <4 x i32> %i.ex, %i.er
  %i.fi = sub <4 x i32> %i.fa, %i.es
  %i.fj = sub <4 x i32> %i.fd, %i.ep
  %i.fk = sub <4 x i32> %i.fg, %i.eq
  %i.fl = shufflevector <8 x i16> %i.em, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fm = shufflevector <8 x i16> %i.em, <8 x i16> %i.ei, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fl, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fm, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fl, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fm, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fr = shufflevector <8 x i16> %i.ek, <8 x i16> %i.eg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fs = shufflevector <8 x i16> %i.ek, <8 x i16> %i.eg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fx = add <8 x i16> %i.eg, %i.em              ; 2 uses
  %i.fy = add <8 x i16> %i.ei, %i.ek              ; 2 uses
  %i.fz = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ga = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fz, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.gc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ga, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.gd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fz, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.ge = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ga, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.gf = add <4 x i32> %i.gb, %i.fn              ; 2 uses
  %i.gg = add <4 x i32> %i.gc, %i.fo              ; 2 uses
  %i.gh = add <4 x i32> %i.gd, %i.ft              ; 2 uses
  %i.gi = add <4 x i32> %i.ge, %i.fu              ; 2 uses
  %i.gj = add <4 x i32> %i.gd, %i.fp              ; 2 uses
  %i.gk = add <4 x i32> %i.ge, %i.fq              ; 2 uses
  %i.gl = add <4 x i32> %i.gb, %i.fv              ; 2 uses
  %i.gm = add <4 x i32> %i.gc, %i.fw              ; 2 uses
  %i.gn = add <4 x i32> %i.er, splat (i32 16842752)
  %i.go = add <4 x i32> %i.gn, %i.ex              ; 2 uses
  %i.gp = add <4 x i32> %i.es, splat (i32 16842752)
  %i.gq = add <4 x i32> %i.gp, %i.fa              ; 2 uses
  %i.gr = add <4 x i32> %i.gl, %i.go
  %i.gs = add <4 x i32> %i.gm, %i.gq
  %i.gt = sub <4 x i32> %i.go, %i.gl
  %i.gu = sub <4 x i32> %i.gq, %i.gm
  %i.gv = ashr <4 x i32> %i.gr, splat (i32 17)
  %i.gw = ashr <4 x i32> %i.gs, splat (i32 17)
  %i.gx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gv, <4 x i32> %i.gw)
  %i.gy = ashr <4 x i32> %i.gt, splat (i32 17)
  %i.gz = ashr <4 x i32> %i.gu, splat (i32 17)
  %i.ha = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gy, <4 x i32> %i.gz)
  %i.hb = add <4 x i32> %i.ep, splat (i32 16842752)
  %i.hc = add <4 x i32> %i.hb, %i.fd              ; 2 uses
  %i.hd = add <4 x i32> %i.eq, splat (i32 16842752)
  %i.he = add <4 x i32> %i.hd, %i.fg              ; 2 uses
  %i.hf = add <4 x i32> %i.gj, %i.hc
  %i.hg = add <4 x i32> %i.gk, %i.he
  %i.hh = sub <4 x i32> %i.hc, %i.gj
  %i.hi = sub <4 x i32> %i.he, %i.gk
  %i.hj = ashr <4 x i32> %i.hf, splat (i32 17)
  %i.hk = ashr <4 x i32> %i.hg, splat (i32 17)
  %i.hl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hj, <4 x i32> %i.hk)
  %i.hm = ashr <4 x i32> %i.hh, splat (i32 17)
  %i.hn = ashr <4 x i32> %i.hi, splat (i32 17)
  %i.ho = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hm, <4 x i32> %i.hn)
  %i.hp = add <4 x i32> %i.fj, splat (i32 16842752) ; 2 uses
  %i.hq = add <4 x i32> %i.fk, splat (i32 16842752) ; 2 uses
  %i.hr = add <4 x i32> %i.gh, %i.hp
  %i.hs = add <4 x i32> %i.gi, %i.hq
  %i.ht = sub <4 x i32> %i.hp, %i.gh
  %i.hu = sub <4 x i32> %i.hq, %i.gi
  %i.hv = ashr <4 x i32> %i.hr, splat (i32 17)
  %i.hw = ashr <4 x i32> %i.hs, splat (i32 17)
  %i.hx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hv, <4 x i32> %i.hw)
  %i.hy = ashr <4 x i32> %i.ht, splat (i32 17)
  %i.hz = ashr <4 x i32> %i.hu, splat (i32 17)
  %i.ia = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hy, <4 x i32> %i.hz)
  %i.ib = add <4 x i32> %i.fh, splat (i32 16842752) ; 2 uses
  %i.ic = add <4 x i32> %i.fi, splat (i32 16842752) ; 2 uses
  %i.id = add <4 x i32> %i.gf, %i.ib
  %i.ie = add <4 x i32> %i.gg, %i.ic
  %i.if = sub <4 x i32> %i.ib, %i.gf
  %i.ig = sub <4 x i32> %i.ic, %i.gg
  %i.ih = ashr <4 x i32> %i.id, splat (i32 17)
  %i.ii = ashr <4 x i32> %i.ie, splat (i32 17)
  %i.ij = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ih, <4 x i32> %i.ii)
  %i.ik = ashr <4 x i32> %i.if, splat (i32 17)
  %i.il = ashr <4 x i32> %i.ig, splat (i32 17)
  %i.im = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ik, <4 x i32> %i.il)
  %i.in = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gx, <8 x i16> %i.hl) ; 2 uses
  %i.io = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hx, <8 x i16> %i.ij) ; 2 uses
  %i.ip = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.im, <8 x i16> %i.ia) ; 2 uses
  %i.iq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ho, <8 x i16> %i.ha) ; 2 uses
  %i.ir = shufflevector <16 x i8> %i.in, <16 x i8> %i.ip, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.is = shufflevector <16 x i8> %i.in, <16 x i8> %i.ip, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.it = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iu = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.iv = shufflevector <16 x i8> %i.ir, <16 x i8> %i.it, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iw = shufflevector <16 x i8> %i.ir, <16 x i8> %i.it, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ix = shufflevector <16 x i8> %i.is, <16 x i8> %i.iu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iy = shufflevector <16 x i8> %i.is, <16 x i8> %i.iu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.iz = shufflevector <16 x i8> %i.iv, <16 x i8> %i.ix, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ja = bitcast <16 x i8> %i.iz to <2 x i64>    ; 2 uses
  %i.jb = shufflevector <16 x i8> %i.iv, <16 x i8> %i.ix, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jc = bitcast <16 x i8> %i.jb to <2 x i64>    ; 2 uses
  %i.jd = shufflevector <16 x i8> %i.iw, <16 x i8> %i.iy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.je = bitcast <16 x i8> %i.jd to <2 x i64>    ; 2 uses
  %i.jf = shufflevector <16 x i8> %i.iw, <16 x i8> %i.iy, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.jg = bitcast <16 x i8> %i.jf to <2 x i64>    ; 2 uses
  %i.jh = extractelement <2 x i64> %i.ja, i64 0
  store i64 %i.jh, ptr %0, align 1, !tbaa !34
  %i.ji = sext i32 %1 to i64                      ; 7 uses
  %i.jj = getelementptr inbounds i8, ptr %0, i64 %i.ji ; 2 uses
  %i.jk = extractelement <2 x i64> %i.ja, i64 1
  store i64 %i.jk, ptr %i.jj, align 1, !tbaa !34
  %i.jl = getelementptr inbounds i8, ptr %i.jj, i64 %i.ji ; 2 uses
  %i.jm = extractelement <2 x i64> %i.jc, i64 0
  store i64 %i.jm, ptr %i.jl, align 1, !tbaa !34
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 %i.ji ; 2 uses
  %i.jo = extractelement <2 x i64> %i.jc, i64 1
  store i64 %i.jo, ptr %i.jn, align 1, !tbaa !34
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 %i.ji ; 2 uses
  %i.jq = extractelement <2 x i64> %i.je, i64 0
  store i64 %i.jq, ptr %i.jp, align 1, !tbaa !34
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 %i.ji ; 2 uses
  %i.js = extractelement <2 x i64> %i.je, i64 1
  store i64 %i.js, ptr %i.jr, align 1, !tbaa !34
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 %i.ji ; 2 uses
  %i.ju = extractelement <2 x i64> %i.jg, i64 0
  store i64 %i.ju, ptr %i.jt, align 1, !tbaa !34
  %i.jv = getelementptr inbounds i8, ptr %i.jt, i64 %i.ji
  %i.jw = extractelement <2 x i64> %i.jg, i64 1
  store i64 %i.jw, ptr %i.jv, align 1, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #15 {
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
  %.090103 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.as, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 1, !tbaa !34
  %i.f = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 1, !tbaa !34
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 1, !tbaa !34
  %i.l = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.m = bitcast <2 x i64> %i.f to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.o = bitcast <2 x i64> %i.i to <16 x i8>
  %i.p = xor <16 x i8> %i.o, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.q = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.p, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.r = bitcast <2 x i64> %i.l to <16 x i8>
  %i.s = xor <16 x i8> %i.r, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.t = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.u = bitcast <16 x i8> %i.n to <8 x i16>
  %i.v = lshr exact <8 x i16> %i.u, splat (i16 4) ; 3 uses
  %i.w = bitcast <16 x i8> %i.q to <8 x i16>      ; 2 uses
  %i.x = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.w, <8 x i16> splat (i16 5743))
  %i.y = bitcast <16 x i8> %i.t to <8 x i16>      ; 2 uses
  %i.z = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.y, <8 x i16> splat (i16 -1410))
  %i.aa = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.y, <8 x i16> splat (i16 7258))
  %i.ab = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.w, <8 x i16> splat (i16 -2925))
  %i.ac = add <8 x i16> %i.x, %i.v
  %i.ad = add <8 x i16> %i.aa, %i.v
  %i.ae = add <8 x i16> %i.ab, %i.v
  %i.af = add <8 x i16> %i.ae, %i.z
  %i.ag = ashr <8 x i16> %i.ac, splat (i16 4)
  %i.ah = ashr <8 x i16> %i.ad, splat (i16 4)
  %i.ai = ashr <8 x i16> %i.af, splat (i16 4)
  %i.aj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ag, <8 x i16> %i.ah) ; 2 uses
  %i.ak = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ai, <8 x i16> splat (i16 255)) ; 2 uses
  %i.al = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.am = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.an = bitcast <16 x i8> %i.al to <8 x i16>    ; 2 uses
  %i.ao = bitcast <16 x i8> %i.am to <8 x i16>    ; 2 uses
  %i.ap = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aq = shufflevector <8 x i16> %i.an, <8 x i16> %i.ao, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ap, ptr %.090103, align 1, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %.090103, i64 16
  store <8 x i16> %i.aq, ptr %i.ar, align 1, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %.090103, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.at = or disjoint i64 %indvars.iv.next, 7
  %i.au = icmp samesign ult i64 %i.at, %i.c
  br i1 %i.au, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !422

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.av = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi i32 [ 0, %bb.a ], [ %i.av, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi ptr [ %0, %bb.a ], [ %i.as, %.loopexit.loopexit ]
  %i.aw = icmp slt i32 %.192, %4
  br i1 %i.aw, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %.loopexit
  %i.ax = sext i32 %5 to i64
  %i.ay = zext nneg i32 %.192 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %bb.b
  %indvars.iv110 = phi i64 [ %i.ay, %.lr.ph107 ], [ %indvars.iv.next111, %bb.b ] ; 4 uses
  %.2106 = phi ptr [ %.1, %.lr.ph107 ], [ %i.ck, %bb.b ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv110
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !34
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 20
  %i.bd = or disjoint i32 %i.bc, 524288           ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv110
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !34
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -128                 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv110
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !34
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -128                 ; 2 uses
  %i.bm = mul nsw i32 %i.bh, 1470208
  %i.bn = add nsw i32 %i.bm, %i.bd
  %i.bo = mul nsw i32 %i.bh, -748800
  %i.bp = add nsw i32 %i.bo, %i.bd
  %i.bq = mul nsw i32 %i.bl, -360960
  %i.br = and i32 %i.bq, -65536
  %i.bs = add i32 %i.bp, %i.br
  %i.bt = mul nsw i32 %i.bl, 1858048
  %i.bu = add nsw i32 %i.bt, %i.bd
  %i.bv = ashr i32 %i.bn, 20
  %i.bw = ashr i32 %i.bs, 20
  %i.bx = ashr i32 %i.bu, 20
  %i.by = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bz = tail call i32 @llvm.umin.i32(i32 %i.by, i32 255)
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.cb = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 255)
  %i.cc = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 0)
  %i.cd = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 255)
  %i.ce = trunc nuw i32 %i.bz to i8
  store i8 %i.ce, ptr %.2106, align 1, !tbaa !34
  %i.cf = trunc nuw i32 %i.cb to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.2106, i64 1
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !34
  %i.ch = trunc nuw i32 %i.cd to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.2106, i64 2
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %.2106, i64 3
  store i8 -1, ptr %i.cj, align 1, !tbaa !34
  %i.ck = getelementptr inbounds i8, ptr %.2106, i64 %i.ax
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !423

._crit_edge:                                      ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL28stbi__resample_row_hv_2_simdPhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #15 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i8, ptr %1, align 1, !tbaa !34      ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !34      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i16
  %i.e = mul nuw nsw i16 %i.d, 3
  %i.f = zext i8 %i.c to i16
  %i.g = add nuw nsw i16 %i.f, 2
  %i.h = add nuw nsw i16 %i.g, %i.e
  %i.i = lshr i16 %i.h, 2
  %i.j = trunc nuw i16 %i.i to i8                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !34
  store i8 %i.j, ptr %0, align 1, !tbaa !34
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = zext i8 %i.b to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = zext i8 %i.c to i32
  %i.o = add nuw nsw i32 %i.m, %i.n               ; 3 uses
  %i.p = icmp sgt i32 %3, 8
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = add nsw i32 %3, -1
  %i.r = and i32 %i.q, -8
  %i.s = zext nneg i32 %i.r to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.09092 = phi i32 [ %i.o, %.lr.ph.preheader ], [ %i.bq, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 1, !tbaa !34
  %i.v = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 1, !tbaa !34
  %i.y = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %i.z = bitcast <2 x i64> %i.v to <16 x i8>
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ab = bitcast <2 x i64> %i.y to <16 x i8>
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ad = bitcast <16 x i8> %i.aa to <8 x i16>
  %i.ae = bitcast <16 x i8> %i.ac to <8 x i16>    ; 2 uses
  %i.af = sub nsw <8 x i16> %i.ad, %i.ae
  %i.ag = shl nuw nsw <8 x i16> %i.ae, splat (i16 2)
  %i.ah = add nsw <8 x i16> %i.ag, %i.af          ; 5 uses
  %i.ai = shufflevector <8 x i16> %i.ah, <8 x i16> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.aj = trunc nuw nsw i32 %.09092 to i16
  %i.ak = insertelement <8 x i16> %i.ai, i16 %i.aj, i64 0
  %i.al = shufflevector <8 x i16> %i.ah, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.an = load i8, ptr %i.am, align 1, !tbaa !34
  %i.ao = zext i8 %i.an to i16
  %i.ap = mul nuw nsw i16 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
end_hunk_0
