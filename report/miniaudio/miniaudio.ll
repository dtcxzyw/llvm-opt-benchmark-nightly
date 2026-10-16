Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 275
begin_hunk_0_@ma_dr_mp3_L3_imdct36:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.0103, i64 48
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !349 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0103, i64 44
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !349 ; 2 uses
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fadd float %i.ah, %i.aj                 ; 2 uses
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0103, i64 52
  %i.ao = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0103, i64 60
  %i.ar = fsub float %i.al, %i.f                  ; 2 uses
  %i.as = load <2 x float>, ptr %i.ac, align 4, !tbaa !349 ; 3 uses
  %i.at = load float, ptr %i.ab, align 4, !tbaa !349
  %i.au = extractelement <2 x float> %i.as, i64 0
  %i.av = fsub float %i.at, %i.au                 ; 3 uses
  %i.aw = load <2 x float>, ptr %i.aq, align 4, !tbaa !349 ; 3 uses
  %i.ax = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ay = extractelement <2 x float> %i.aw, i64 0
  %i.az = fsub float %i.ax, %i.ay                 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.as, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bc = fadd <2 x float> %i.ba, %i.bb           ; 3 uses
  %i.bd = fneg <2 x float> %i.bc
  %i.be = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fsub <2 x float> %i.bd, %i.bf
  %i.bh = fmul <2 x float> %i.bg, <float f0x3F708FB2, float f0x3F441B7D> ; 2 uses
  %i.bi = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bj = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.bk = fsub float %i.bj, %i.bi
  %i.bl = fmul float %i.bk, f0x3E31D0D4           ; 2 uses
  %i.bm = fsub float %i.u, %i.bj
  %i.bn = fsub float %i.bm, %i.bi                 ; 2 uses
  %i.bo = fneg float %i.bn
  %i.bp = fadd float %i.ar, %i.bn
  %i.bq = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.br = fmul float %i.aa, f0x3F5DB3D7           ; 3 uses
  %i.bs = load <2 x float>, ptr %i.ae, align 4, !tbaa !349 ; 3 uses
  %i.bt = load float, ptr %i.af, align 4, !tbaa !349
  %i.bu = extractelement <2 x float> %i.bs, i64 0
  %i.bv = fsub float %i.bu, %i.bt                 ; 3 uses
  %i.bw = load <2 x float>, ptr %i.an, align 4, !tbaa !349 ; 3 uses
  %i.bx = load float, ptr %i.ao, align 4, !tbaa !349
  %i.by = extractelement <2 x float> %i.bw, i64 0
  %i.bz = fsub float %i.by, %i.bx                 ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bs, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cb = shufflevector <2 x float> %i.bs, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.cc = fadd <2 x float> %i.ca, %i.cb           ; 3 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.cf = fsub float %i.cd, %i.ce
  %i.cg = fmul float %i.cf, f0x3EAF1D44           ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fadd <2 x float> %i.ci, %i.cc
  %i.ck = fmul <2 x float> %i.cj, <float f0x3F7C1C5C, float f0x3F248DBB> ; 2 uses
  %i.cl = fsub float %i.o, %i.cd
  %i.cm = fsub float %i.cl, %i.ce
  %i.cn = fmul float %i.cm, f0x3F5DB3D7           ; 2 uses
  %i.co = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.cp = fsub float %i.co, %i.br
  %i.cq = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cr = fsub float %i.cp, %i.cq                 ; 2 uses
  %i.cs = fsub float %i.cg, %i.br
  %i.ct = fsub float %i.cs, %i.co                 ; 2 uses
  %i.cu = fadd float %i.br, %i.cg
  %i.cv = fsub float %i.cu, %i.cq                 ; 2 uses
  %i.cw = fsub float %i.i, %i.z                   ; 2 uses
  %i.cx = fadd float %i.bz, %i.bv
  %i.cy = fmul float %i.cx, f0x3F708FB2           ; 2 uses
  %i.cz = fadd float %i.bz, %i.n
  %i.da = fmul float %i.cz, f0x3F441B7D           ; 2 uses
  %i.db = fsub float %i.bv, %i.n
  %i.dc = fmul float %i.db, f0x3E31D0D4           ; 2 uses
  %i.dd = fsub float %i.n, %i.bz
  %i.de = fadd float %i.bv, %i.dd                 ; 2 uses
  %i.df = fneg float %i.de
  %i.dg = insertelement <4 x float> poison, float %i.am, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %i.bo, i64 1
  %i.di = insertelement <4 x float> %i.dh, float %i.z, i64 2
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 3
  %i.dk = insertelement <4 x float> poison, float %i.g, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.ar, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.i, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.cw, i64 3
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dn) ; 4 uses
  %i.dp = extractelement <4 x float> %i.do, i64 0 ; 3 uses
  %i.dq = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.dr = fsub float %i.dp, %i.dq
  %i.ds = fadd float %i.bl, %i.dr                 ; 2 uses
  %i.dt = extractelement <2 x float> %i.bh, i64 0 ; 2 uses
  %i.du = fsub float %i.dp, %i.dt
  %i.dv = fadd float %i.du, %i.dq                 ; 2 uses
  %i.dw = fadd float %i.dp, %i.dt
  %i.dx = fsub float %i.dw, %i.bl                 ; 2 uses
  %i.dy = fsub float %i.dx, %i.ct
  %i.dz = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ea = extractelement <4 x float> %i.do, i64 1 ; 2 uses
  %i.eb = fadd float %i.ea, %i.cn
  %i.ec = insertelement <4 x float> %i.dz, float %i.eb, i64 1
  %i.ed = fsub float %i.dv, %i.cv
  %i.ee = insertelement <4 x float> %i.ec, float %i.ed, i64 2
  %i.ef = fadd float %i.ds, %i.cr
  %.sroa.0139.12.vec.insert = insertelement <4 x float> %i.ee, float %i.ef, i64 3 ; 2 uses
  %i.eg = fsub float %i.ds, %i.cr
  %i.eh = insertelement <4 x float> %i.bq, float %i.eg, i64 1
  %i.ei = fadd float %i.dv, %i.cv
  %i.ej = insertelement <4 x float> %i.eh, float %i.ei, i64 2
  %i.ek = fsub float %i.ea, %i.cn
  %.sroa.14.28.vec.insert = insertelement <4 x float> %i.ej, float %i.ek, i64 3 ; 2 uses
  %i.el = fadd float %i.dx, %i.ct                 ; 2 uses
  %i.em = fadd float %i.cw, %i.de
  %i.en = insertelement <4 x float> poison, float %i.em, i64 0
  %i.eo = extractelement <4 x float> %i.do, i64 2 ; 3 uses
  %i.ep = fsub float %i.eo, %i.da
  %i.eq = fadd float %i.dc, %i.ep                 ; 2 uses
  %i.er = fsub float %i.eo, %i.cy
  %i.es = fadd float %i.er, %i.da                 ; 2 uses
  %i.et = fadd float %i.eo, %i.cy
  %i.eu = fsub float %i.et, %i.dc                 ; 2 uses
  %i.ev = fmul float %i.ak, f0x3F5DB3D7           ; 3 uses
  %i.ew = fadd float %i.az, %i.av
  %i.ex = fmul float %i.ew, f0x3F7C1C5C           ; 2 uses
  %i.ey = fsub float %i.av, %i.t
  %i.ez = fmul float %i.ey, f0x3EAF1D44           ; 2 uses
  %i.fa = fadd float %i.az, %i.t
  %i.fb = fmul float %i.fa, f0x3F248DBB           ; 2 uses
  %i.fc = fsub float %i.az, %i.av
  %i.fd = fsub float %i.fc, %i.t
  %i.fe = fmul float %i.fd, f0x3F5DB3D7           ; 2 uses
  %i.ff = fsub float %i.ex, %i.ev
  %i.fg = fsub float %i.ff, %i.fb                 ; 2 uses
  %i.fh = fsub float %i.ez, %i.ev
  %i.fi = fsub float %i.fh, %i.ex                 ; 2 uses
  %i.fj = fadd float %i.ev, %i.ez
  %i.fk = fsub float %i.fj, %i.fb                 ; 2 uses
  %i.fl = fsub float %i.eu, %i.fi
  %i.fm = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.fn = extractelement <4 x float> %i.do, i64 3 ; 2 uses
  %i.fo = fadd float %i.fn, %i.fe
  %i.fp = fsub float %i.es, %i.fk
  %i.fq = fadd float %i.eq, %i.fg
  %i.fr = fsub float %i.eq, %i.fg
  %i.fs = fadd float %i.es, %i.fk
  %i.ft = fsub float %i.fn, %i.fe
  %i.fu = fadd float %i.eu, %i.fi                 ; 2 uses
  %i.fv = fneg float %i.fo
  %i.fw = insertelement <4 x float> %i.fm, float %i.fv, i64 1
  %i.fx = insertelement <4 x float> %i.fw, float %i.fp, i64 2
  %i.fy = fneg float %i.fq
  %.sroa.0.12.vec.insert119 = insertelement <4 x float> %i.fx, float %i.fy, i64 3 ; 2 uses
  %i.fz = fneg float %i.fr
  %i.ga = insertelement <4 x float> %i.en, float %i.fz, i64 1
  %i.gb = insertelement <4 x float> %i.ga, float %i.fs, i64 2
  %i.gc = fneg float %i.ft
  %.sroa.17.28.vec.insert138 = insertelement <4 x float> %i.gb, float %i.gc, i64 3 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ge = load <4 x float>, ptr %.096102, align 1, !tbaa !119 ; 2 uses
  %i.gf = load <4 x float>, ptr %2, align 1, !tbaa !119 ; 2 uses
  %i.gg = load <4 x float>, ptr %i.a, align 1, !tbaa !119 ; 2 uses
  %i.gh = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.gi = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.gj = fadd <4 x float> %i.gi, %i.gh           ; 2 uses
  %i.gk = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.gl = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.gm = fsub <4 x float> %i.gk, %i.gl
  store <4 x float> %i.gm, ptr %.096102, align 1, !tbaa !119
  %i.gn = fmul <4 x float> %i.ge, %i.gf
  %i.go = fmul <4 x float> %i.gj, %i.gg
  %i.gp = fsub <4 x float> %i.gn, %i.go
  store <4 x float> %i.gp, ptr %.0103, align 4, !tbaa !119
  %i.gq = fmul <4 x float> %i.ge, %i.gg
  %i.gr = fmul <4 x float> %i.gf, %i.gj
  %i.gs = fadd <4 x float> %i.gq, %i.gr
  %i.gt = shufflevector <4 x float> %i.gs, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.gt, ptr %i.gd, align 4, !tbaa !119
  %i.gu = getelementptr inbounds nuw i8, ptr %.096102, i64 16 ; 2 uses
  %i.gv = load <4 x float>, ptr %i.gu, align 1, !tbaa !119 ; 2 uses
  %i.gw = load <4 x float>, ptr %i.d, align 1, !tbaa !119 ; 2 uses
  %i.gx = load <4 x float>, ptr %i.e, align 1, !tbaa !119 ; 2 uses
  %i.gy = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.gz = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.ha = fadd <4 x float> %i.gz, %i.gy           ; 2 uses
  %i.hb = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.hc = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.hd = fsub <4 x float> %i.hb, %i.hc
  store <4 x float> %i.hd, ptr %i.gu, align 1, !tbaa !119
  %i.he = fmul <4 x float> %i.gv, %i.gw
  %i.hf = fmul <4 x float> %i.ha, %i.gx
  %i.hg = fsub <4 x float> %i.he, %i.hf
  store <4 x float> %i.hg, ptr %i.p, align 4, !tbaa !119
  %i.hh = fmul <4 x float> %i.gv, %i.gx
  %i.hi = fmul <4 x float> %i.gw, %i.ha
  %i.hj = fadd <4 x float> %i.hh, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.hl = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.hl, ptr %i.hk, align 4, !tbaa !119
  %i.hm = getelementptr inbounds nuw i8, ptr %.096102, i64 32 ; 2 uses
  %4 = load float, ptr %i.hm, align 4, !tbaa !349 ; 2 uses
  %i.hn = fmul float %i.fu, f0x3F7FC1A0
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.el, float f0x3D32AA3C, float %i.hn) ; 2 uses
  %5 = fmul float %i.fu, f0xBD32AA3C
  %6 = tail call float @llvm.fmuladd.f32(float %i.el, float f0x3F7FC1A0, float %5)
  store float %6, ptr %i.hm, align 4, !tbaa !349
  %i.hp = load float, ptr %i.b, align 4, !tbaa !349
  %i.hq = load float, ptr %i.c, align 4, !tbaa !349
  %i.hr = fneg float %i.hq
  %i.hs = fmul float %i.ho, %i.hr
  %i.ht = tail call float @llvm.fmuladd.f32(float %4, float %i.hp, float %i.hs)
  store float %i.ht, ptr %i.ad, align 4, !tbaa !349
  %i.hu = load float, ptr %i.c, align 4, !tbaa !349
  %i.hv = load float, ptr %i.b, align 4, !tbaa !349
  %i.hw = fmul float %i.ho, %i.hv
  %i.hx = tail call float @llvm.fmuladd.f32(float %4, float %i.hu, float %i.hw)
  %7 = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  store float %i.hx, ptr %7, align 4, !tbaa !349
  %i.hy = add nuw nsw i32 %.098101, 1             ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.0103, i64 72
  %i.ia = getelementptr inbounds nuw i8, ptr %.096102, i64 36
  %exitcond.not = icmp eq i32 %i.hy, %3
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !3279

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3d_synth_pair(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3584
  %i.b = load float, ptr %i.a, align 4, !tbaa !349
  %i.c = load float, ptr %2, align 4, !tbaa !349
  %i.d = fsub float %i.b, %i.c
  %i.e = fmul float %i.d, 2.900000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3328
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fadd float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 2.130000e+02, float %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.m = load float, ptr %i.l, align 4, !tbaa !349
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fsub float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.590000e+02, float %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.s = load float, ptr %i.r, align 4, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.037000e+03, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = load float, ptr %i.z, align 4, !tbaa !349
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %ma_dr_mp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
  br i1 %i.at, label %bb.c, label %ma_dr_mp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %ma_dr_mp3d_scale_pcm.exit

ma_dr_mp3d_scale_pcm.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %i.az, 1.040000e+02
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 3080
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !349
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 1.567000e+03, float %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 2568
  %i.bf = load float, ptr %i.be, align 4, !tbaa !349
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float 9.727000e+03, float %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 2056
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !349
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.bi, float 6.401900e+04, float %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 1544
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !349
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float -9.975000e+03, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !349
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float -4.500000e+01, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.br = load float, ptr %i.bq, align 4, !tbaa !349
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float 1.460000e+02, float %i.bp)
  %i.bt = load float, ptr %i.ax, align 4, !tbaa !349
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bt, float -5.000000e+00, float %i.bs) ; 3 uses
  %i.bv = fcmp ult float %i.bu, 3.276650e+04
  br i1 %i.bv, label %bb.d, label %ma_dr_mp3d_scale_pcm.exit44

bb.d:                                             ; preds = %ma_dr_mp3d_scale_pcm.exit
  %i.bw = fcmp ugt float %i.bu, -3.276750e+04
  br i1 %i.bw, label %bb.e, label %ma_dr_mp3d_scale_pcm.exit44

bb.e:                                             ; preds = %bb.d
  %i.bx = fadd float %i.bu, 5.000000e-01
  %i.by = fptosi float %i.bx to i16               ; 2 uses
  %.lobit.neg.i43 = ashr i16 %i.by, 15
  %i.bz = add i16 %.lobit.neg.i43, %i.by
  br label %ma_dr_mp3d_scale_pcm.exit44

ma_dr_mp3d_scale_pcm.exit44:                      ; preds = %ma_dr_mp3d_scale_pcm.exit, %bb.d, %bb.e
  %.0.i42 = phi i16 [ %i.bz, %bb.e ], [ 32767, %ma_dr_mp3d_scale_pcm.exit ], [ -32768, %bb.d ]
  %i.ca = shl nsw i32 %1, 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cb
  store i16 %.0.i42, ptr %i.cc, align 2, !tbaa !122
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #57

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define internal noalias noundef ptr @ma_dr_mp3__realloc_default(ptr noundef captures(none) %0, i64 noundef %1, ptr nofree readnone captures(none) %2) #42 {
bb.a:
  %i.a = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #69
  ret ptr %i.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #64

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #65

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #63

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #63

end_hunk_0
