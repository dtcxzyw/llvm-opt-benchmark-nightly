loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @jpeg_fdct_float(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.a = shl i64 %index, 5                        ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.a  ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a       ; 8 uses
  %next.gep148 = getelementptr i8, ptr %i.b, i64 32
  %i.c = getelementptr i8, ptr %0, i64 %i.a       ; 8 uses
  %next.gep149 = getelementptr i8, ptr %i.c, i64 64
  %i.d = getelementptr i8, ptr %0, i64 %i.a       ; 8 uses
  %next.gep150 = getelementptr i8, ptr %i.d, i64 96
  %i.e = load float, ptr %next.gep, align 4, !tbaa !7
  %i.f = load float, ptr %next.gep148, align 4, !tbaa !7
  %i.g = load float, ptr %next.gep149, align 4, !tbaa !7
  %i.h = load float, ptr %next.gep150, align 4, !tbaa !7
  %i.i = insertelement <4 x float> poison, float %i.e, i64 0
  %i.j = insertelement <4 x float> %i.i, float %i.f, i64 1
  %i.k = insertelement <4 x float> %i.j, float %i.g, i64 2
  %i.l = insertelement <4 x float> %i.k, float %i.h, i64 3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %next.gep, i64 28
  %i.n = getelementptr i8, ptr %i.b, i64 60
  %i.o = getelementptr i8, ptr %i.c, i64 92
  %i.p = getelementptr i8, ptr %i.d, i64 124
  %i.q = load float, ptr %i.m, align 4, !tbaa !7
  %i.r = load float, ptr %i.n, align 4, !tbaa !7
  %i.s = load float, ptr %i.o, align 4, !tbaa !7
  %i.t = load float, ptr %i.p, align 4, !tbaa !7
  %i.u = insertelement <4 x float> poison, float %i.q, i64 0
  %i.v = insertelement <4 x float> %i.u, float %i.r, i64 1
  %i.w = insertelement <4 x float> %i.v, float %i.s, i64 2
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 3 ; 2 uses
  %i.y = fadd <4 x float> %i.l, %i.x              ; 2 uses
  %i.z = fsub <4 x float> %i.l, %i.x              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ab = getelementptr i8, ptr %i.b, i64 36
  %i.ac = getelementptr i8, ptr %i.c, i64 68
  %i.ad = getelementptr i8, ptr %i.d, i64 100
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !7
  %i.af = load float, ptr %i.ab, align 4, !tbaa !7
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !7
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !7
  %i.ai = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 1
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 3 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.an = getelementptr i8, ptr %i.b, i64 56
  %i.ao = getelementptr i8, ptr %i.c, i64 88
  %i.ap = getelementptr i8, ptr %i.d, i64 120
  %i.aq = load float, ptr %i.am, align 4, !tbaa !7
  %i.ar = load float, ptr %i.an, align 4, !tbaa !7
  %i.as = load float, ptr %i.ao, align 4, !tbaa !7
  %i.at = load float, ptr %i.ap, align 4, !tbaa !7
  %i.au = insertelement <4 x float> poison, float %i.aq, i64 0
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 1
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 2
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 3 ; 2 uses
  %i.ay = fadd <4 x float> %i.al, %i.ax           ; 2 uses
  %i.az = fsub <4 x float> %i.al, %i.ax           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.bb = getelementptr i8, ptr %i.b, i64 40
  %i.bc = getelementptr i8, ptr %i.c, i64 72
  %i.bd = getelementptr i8, ptr %i.d, i64 104
  %i.be = load float, ptr %i.ba, align 4, !tbaa !7
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !7
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !7
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !7
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.bn = getelementptr i8, ptr %i.b, i64 52
  %i.bo = getelementptr i8, ptr %i.c, i64 84
  %i.bp = getelementptr i8, ptr %i.d, i64 116
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !7
  %i.br = load float, ptr %i.bn, align 4, !tbaa !7
  %i.bs = load float, ptr %i.bo, align 4, !tbaa !7
  %i.bt = load float, ptr %i.bp, align 4, !tbaa !7
  %i.bu = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3 ; 2 uses
  %i.by = fadd <4 x float> %i.bl, %i.bx           ; 2 uses
  %i.bz = fsub <4 x float> %i.bl, %i.bx           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.cb = getelementptr i8, ptr %i.b, i64 44
  %i.cc = getelementptr i8, ptr %i.c, i64 76
  %i.cd = getelementptr i8, ptr %i.d, i64 108
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !7
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !7
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !7
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !7
  %i.ci = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.cn = getelementptr i8, ptr %i.b, i64 48
  %i.co = getelementptr i8, ptr %i.c, i64 80
  %i.cp = getelementptr i8, ptr %i.d, i64 112
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !7
  %i.cr = load float, ptr %i.cn, align 4, !tbaa !7
  %i.cs = load float, ptr %i.co, align 4, !tbaa !7
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !7
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.cs, i64 2
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 3 ; 2 uses
  %i.cy = fadd <4 x float> %i.cl, %i.cx           ; 2 uses
  %i.cz = fsub <4 x float> %i.cl, %i.cx
  %i.da = fadd <4 x float> %i.y, %i.cy            ; 2 uses
  %i.db = fsub <4 x float> %i.y, %i.cy            ; 3 uses
  %i.dc = fadd <4 x float> %i.ay, %i.by           ; 2 uses
  %i.dd = fsub <4 x float> %i.ay, %i.by
  %i.de = fsub <4 x float> %i.da, %i.dc
  %i.df = fadd <4 x float> %i.dd, %i.db
  %i.dg = fmul <4 x float> %i.df, splat (float f0x3F3504F3) ; 2 uses
  %i.dh = fadd <4 x float> %i.db, %i.dg
  %i.di = fadd <4 x float> %i.bz, %i.cz           ; 2 uses
  %i.dj = fadd <4 x float> %i.az, %i.bz
  %i.dk = fadd <4 x float> %i.z, %i.az            ; 2 uses
  %i.dl = fsub <4 x float> %i.di, %i.dk
  %i.dm = fmul <4 x float> %i.dl, splat (float f0x3EC3EF15) ; 2 uses
  %i.dn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.di, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.dm) ; 2 uses
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dk, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.dm) ; 2 uses
  %i.dp = fmul <4 x float> %i.dj, splat (float f0x3F3504F3) ; 2 uses
  %i.dq = fadd <4 x float> %i.z, %i.dp            ; 2 uses
  %i.dr = fsub <4 x float> %i.z, %i.dp            ; 2 uses
  %i.ds = fadd <4 x float> %i.dr, %i.dn
  %i.dt = fsub <4 x float> %i.dr, %i.dn
  %1 = shufflevector <4 x float> %i.dc, <4 x float> %i.dq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %2 = shufflevector <4 x float> %i.da, <4 x float> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %3 = fadd <8 x float> %1, %2
  %i.du = shufflevector <4 x float> %i.dh, <4 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dv = shufflevector <4 x float> %i.de, <4 x float> %i.ds, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %4 = shufflevector <4 x float> %i.db, <4 x float> %i.dq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %5 = shufflevector <4 x float> %i.dg, <4 x float> %i.do, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %6 = fsub <8 x float> %4, %5
  %i.dw = shufflevector <8 x float> %3, <8 x float> %i.du, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dx = shufflevector <8 x float> %i.dv, <8 x float> %6, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.dw, <16 x float> %i.dx, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, 8
  br i1 %i.dy, label %vector.body152, label %vector.body, !llvm.loop !9

vector.body152:                                   ; preds = %vector.body
  %wide.load = load <4 x float>, ptr %0, align 4, !tbaa !7 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %wide.load155 = load <4 x float>, ptr %i.dz, align 4, !tbaa !7 ; 2 uses
  %i.ea = fadd <4 x float> %wide.load, %wide.load155 ; 2 uses
  %i.eb = fsub <4 x float> %wide.load, %wide.load155 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %wide.load156 = load <4 x float>, ptr %i.ec, align 4, !tbaa !7 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %wide.load157 = load <4 x float>, ptr %i.ed, align 4, !tbaa !7 ; 2 uses
  %i.ee = fadd <4 x float> %wide.load156, %wide.load157 ; 2 uses
  %i.ef = fsub <4 x float> %wide.load156, %wide.load157 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %wide.load158 = load <4 x float>, ptr %i.eg, align 4, !tbaa !7 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %wide.load159 = load <4 x float>, ptr %i.eh, align 4, !tbaa !7 ; 2 uses
  %i.ei = fadd <4 x float> %wide.load158, %wide.load159 ; 2 uses
  %i.ej = fsub <4 x float> %wide.load158, %wide.load159 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %wide.load160 = load <4 x float>, ptr %i.ek, align 4, !tbaa !7 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %wide.load161 = load <4 x float>, ptr %i.el, align 4, !tbaa !7 ; 2 uses
  %i.em = fadd <4 x float> %wide.load160, %wide.load161 ; 2 uses
  %i.en = fsub <4 x float> %wide.load160, %wide.load161
  %i.eo = fadd <4 x float> %i.ea, %i.em           ; 2 uses
  %i.ep = fsub <4 x float> %i.ea, %i.em           ; 3 uses
  %i.eq = fadd <4 x float> %i.ee, %i.ei           ; 2 uses
  %i.er = fsub <4 x float> %i.ee, %i.ei
  %i.es = fadd <4 x float> %i.eq, %i.eo
  store <4 x float> %i.es, ptr %0, align 4, !tbaa !7
  %i.et = fsub <4 x float> %i.eo, %i.eq
  store <4 x float> %i.et, ptr %i.el, align 4, !tbaa !7
  %i.eu = fadd <4 x float> %i.er, %i.ep
  %i.ev = fmul <4 x float> %i.eu, splat (float f0x3F3504F3) ; 2 uses
  %i.ew = fadd <4 x float> %i.ep, %i.ev
  store <4 x float> %i.ew, ptr %i.eg, align 4, !tbaa !7
  %i.ex = fsub <4 x float> %i.ep, %i.ev
  store <4 x float> %i.ex, ptr %i.ed, align 4, !tbaa !7
  %i.ey = fadd <4 x float> %i.ej, %i.en           ; 2 uses
  %i.ez = fadd <4 x float> %i.ef, %i.ej
  %i.fa = fadd <4 x float> %i.eb, %i.ef           ; 2 uses
  %i.fb = fsub <4 x float> %i.ey, %i.fa
  %i.fc = fmul <4 x float> %i.fb, splat (float f0x3EC3EF15) ; 2 uses
  %i.fd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.fc) ; 2 uses
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.fc) ; 2 uses
  %i.ff = fmul <4 x float> %i.ez, splat (float f0x3F3504F3) ; 2 uses
  %i.fg = fadd <4 x float> %i.eb, %i.ff           ; 2 uses
  %i.fh = fsub <4 x float> %i.eb, %i.ff           ; 2 uses
  %i.fi = fadd <4 x float> %i.fh, %i.fd
  store <4 x float> %i.fi, ptr %i.eh, align 4, !tbaa !7
  %i.fj = fsub <4 x float> %i.fh, %i.fd
  store <4 x float> %i.fj, ptr %i.ek, align 4, !tbaa !7
  %i.fk = fadd <4 x float> %i.fg, %i.fe
  store <4 x float> %i.fk, ptr %i.ec, align 4, !tbaa !7
  %i.fl = fsub <4 x float> %i.fg, %i.fe
  store <4 x float> %i.fl, ptr %i.dz, align 4, !tbaa !7
  %next.gep154.1 = getelementptr i8, ptr %0, i64 16 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %next.gep154.1, align 4, !tbaa !7 ; 2 uses
  %i.fm = getelementptr i8, ptr %0, i64 240       ; 2 uses
  %wide.load155.1 = load <4 x float>, ptr %i.fm, align 4, !tbaa !7 ; 2 uses
  %i.fn = fadd <4 x float> %wide.load.1, %wide.load155.1 ; 2 uses
  %i.fo = fsub <4 x float> %wide.load.1, %wide.load155.1 ; 3 uses
  %i.fp = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.load156.1 = load <4 x float>, ptr %i.fp, align 4, !tbaa !7 ; 2 uses
  %i.fq = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %wide.load157.1 = load <4 x float>, ptr %i.fq, align 4, !tbaa !7 ; 2 uses
  %i.fr = fadd <4 x float> %wide.load156.1, %wide.load157.1 ; 2 uses
  %i.fs = fsub <4 x float> %wide.load156.1, %wide.load157.1 ; 2 uses
  %i.ft = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %wide.load158.1 = load <4 x float>, ptr %i.ft, align 4, !tbaa !7 ; 2 uses
  %i.fu = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %wide.load159.1 = load <4 x float>, ptr %i.fu, align 4, !tbaa !7 ; 2 uses
  %i.fv = fadd <4 x float> %wide.load158.1, %wide.load159.1 ; 2 uses
  %i.fw = fsub <4 x float> %wide.load158.1, %wide.load159.1 ; 2 uses
  %i.fx = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %wide.load160.1 = load <4 x float>, ptr %i.fx, align 4, !tbaa !7 ; 2 uses
  %i.fy = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %wide.load161.1 = load <4 x float>, ptr %i.fy, align 4, !tbaa !7 ; 2 uses
  %i.fz = fadd <4 x float> %wide.load160.1, %wide.load161.1 ; 2 uses
  %i.ga = fsub <4 x float> %wide.load160.1, %wide.load161.1
  %i.gb = fadd <4 x float> %i.fn, %i.fz           ; 2 uses
  %i.gc = fsub <4 x float> %i.fn, %i.fz           ; 3 uses
  %i.gd = fadd <4 x float> %i.fr, %i.fv           ; 2 uses
  %i.ge = fsub <4 x float> %i.fr, %i.fv
  %i.gf = fadd <4 x float> %i.gd, %i.gb
  store <4 x float> %i.gf, ptr %next.gep154.1, align 4, !tbaa !7
  %i.gg = fsub <4 x float> %i.gb, %i.gd
  store <4 x float> %i.gg, ptr %i.fy, align 4, !tbaa !7
  %i.gh = fadd <4 x float> %i.ge, %i.gc
  %i.gi = fmul <4 x float> %i.gh, splat (float f0x3F3504F3) ; 2 uses
  %i.gj = fadd <4 x float> %i.gc, %i.gi
  store <4 x float> %i.gj, ptr %i.ft, align 4, !tbaa !7
  %i.gk = fsub <4 x float> %i.gc, %i.gi
  store <4 x float> %i.gk, ptr %i.fq, align 4, !tbaa !7
  %i.gl = fadd <4 x float> %i.fw, %i.ga           ; 2 uses
  %i.gm = fadd <4 x float> %i.fs, %i.fw
  %i.gn = fadd <4 x float> %i.fo, %i.fs           ; 2 uses
  %i.go = fsub <4 x float> %i.gl, %i.gn
  %i.gp = fmul <4 x float> %i.go, splat (float f0x3EC3EF15) ; 2 uses
  %i.gq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.gp) ; 2 uses
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.gp) ; 2 uses
  %i.gs = fmul <4 x float> %i.gm, splat (float f0x3F3504F3) ; 2 uses
  %i.gt = fadd <4 x float> %i.fo, %i.gs           ; 2 uses
  %i.gu = fsub <4 x float> %i.fo, %i.gs           ; 2 uses
  %i.gv = fadd <4 x float> %i.gu, %i.gq
  store <4 x float> %i.gv, ptr %i.fu, align 4, !tbaa !7
  %i.gw = fsub <4 x float> %i.gu, %i.gq
  store <4 x float> %i.gw, ptr %i.fx, align 4, !tbaa !7
  %i.gx = fadd <4 x float> %i.gt, %i.gr
  store <4 x float> %i.gx, ptr %i.fp, align 4, !tbaa !7
  %i.gy = fsub <4 x float> %i.gt, %i.gr
  store <4 x float> %i.gy, ptr %i.fm, align 4, !tbaa !7
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
