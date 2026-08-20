inline.NumInlined: 6695
inline.NumDeleted: 3459
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN3g2o8internal22computeEdgeSE3GradientIN5Eigen3MapINS2_6MatrixIdLi6ELi6ELi0ELi6ELi6EEELi16ENS2_6StrideILi0ELi0EEEEEEEvRNS2_9TransformIdLi3ELi1ELi0EEERKNS2_10MatrixBaseIT_EESG_RKSA_SI_SI_SI_SI_:bb.a
  %i.ab = load double, ptr %i.z, align 16, !tbaa !10, !noalias !166 ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x double> %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.ag = load double, ptr %i.af, align 8, !tbaa !10, !noalias !166 ; 2 uses
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %.sroa.10261.40.vec.insert, %i.ai
  %i.ak = fsub <2 x double> %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.am = load double, ptr %i.al, align 16, !tbaa !10, !noalias !166 ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %.sroa.18266.72.vec.insert, %i.ao
  %i.aq = fsub <2 x double> %i.ak, %i.ap
  %i.ar = fneg double %i.y
  %i.as = fmul double %i.am, %i.ar
  %i.at = load double, ptr %6, align 16, !tbaa !10, !noalias !169 ; 2 uses
  %.sroa.0240.0.vec.insert = insertelement <2 x double> poison, double %i.at, i64 0 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.av = load double, ptr %i.au, align 16, !tbaa !10, !noalias !169 ; 3 uses
  %.sroa.0240.8.vec.insert = insertelement <2 x double> %.sroa.0240.0.vec.insert, double %i.av, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ax = load double, ptr %i.aw, align 16, !tbaa !10, !noalias !169 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.bc = fneg <2 x double> %.sroa.0240.8.vec.insert
  %i.bd = load double, ptr %i.bb, align 16, !tbaa !10, !noalias !169 ; 2 uses
  %i.be = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x double> %i.bf, %i.bc
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !10, !noalias !169 ; 2 uses
  %i.bj = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.bm = load double, ptr %i.bl, align 16, !tbaa !10, !noalias !169 ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul double %i.ax, %i.bd
  %i.bq = shufflevector <2 x double> %.sroa.0240.0.vec.insert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %.sroa.0256.8.vec.insert, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x double> %.sroa.10261.40.vec.insert, %i.bt
  %i.bv = fadd <2 x double> %i.br, %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul <2 x double> %.sroa.18266.72.vec.insert, %i.bx
  %i.bz = fadd <2 x double> %i.bv, %i.by          ; 14 uses
  %i.ca = fmul double %i.y, %i.ax
  %i.cb = load <2 x double>, ptr %i.o, align 16, !tbaa !10, !noalias !166 ; 5 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 1 ; 2 uses
  %i.cd = fmul double %i.cc, %i.ag
  %i.ce = fsub double %i.as, %i.cd
  %i.cf = extractelement <2 x double> %i.cb, i64 0 ; 2 uses
  %i.cg = fmul double %i.cf, %i.ab
  %i.ch = fsub double %i.ce, %i.cg
  %i.ci = fmul double %i.cf, %i.at
  %i.cj = fmul double %i.cc, %i.av
  %i.ck = fadd double %i.cj, %i.ca
  %i.cl = fadd double %i.ci, %i.ck                ; 14 uses
  %i.cm = load double, ptr %4, align 16, !tbaa !10, !noalias !172
  %.sroa.0212.0.vec.insert = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.co = load double, ptr %i.cn, align 16, !tbaa !10, !noalias !172
  %.sroa.0212.8.vec.insert = insertelement <2 x double> %.sroa.0212.0.vec.insert, double %i.co, i64 1 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cq = load double, ptr %i.cp, align 16, !tbaa !10, !noalias !172 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !10, !noalias !172
  %.sroa.10.32.vec.insert = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !10, !noalias !172
  %.sroa.10.40.vec.insert = insertelement <2 x double> %.sroa.10.32.vec.insert, double %i.cu, i64 1 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !10, !noalias !172 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cy = load double, ptr %i.cx, align 16, !tbaa !10, !noalias !172
  %.sroa.18.64.vec.insert = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.da = load double, ptr %i.cz, align 16, !tbaa !10, !noalias !172
  %.sroa.18.72.vec.insert = insertelement <2 x double> %.sroa.18.64.vec.insert, double %i.da, i64 1 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.dc = load double, ptr %i.db, align 16, !tbaa !10, !noalias !172 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.de = fneg <2 x double> %.sroa.0212.8.vec.insert
  %i.df = load double, ptr %i.dd, align 16, !tbaa !10, !noalias !172 ; 2 uses
  %i.dg = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x double> %i.dh, %i.de
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !10, !noalias !172 ; 2 uses
  %i.dl = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %.sroa.10.40.vec.insert, %i.dm
  %i.do = fsub <2 x double> %i.di, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.dq = load double, ptr %i.dp, align 16, !tbaa !10, !noalias !172 ; 2 uses
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x double> %.sroa.18.72.vec.insert, %i.ds
  %i.du = fsub <2 x double> %i.do, %i.dt
  %i.dv = fneg double %i.dc
  %i.dw = fmul double %i.dq, %i.dv
  %i.dx = fmul double %i.cw, %i.dk
  %i.dy = fsub double %i.dw, %i.dx
  %i.dz = fmul double %i.cq, %i.df
  %i.ea = fsub double %i.dy, %i.dz
  %i.eb = load double, ptr %5, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %.sroa.0212.8.vec.insert, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !10, !noalias !175 ; 2 uses
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x double> %.sroa.10.40.vec.insert, %i.ei
  %i.ek = fadd <2 x double> %i.ee, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = load double, ptr %i.el, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %.sroa.18.72.vec.insert, %i.eo
  %i.eq = fadd <2 x double> %i.ek, %i.ep          ; 8 uses
  %i.er = fmul double %i.cq, %i.eb
  %i.es = fmul double %i.cw, %i.eg
  %i.et = fmul double %i.dc, %i.em
  %i.eu = fadd double %i.es, %i.et
  %i.ev = fadd double %i.er, %i.eu                ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ex = load double, ptr %i.ew, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.ey = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %.sroa.0212.8.vec.insert, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !10, !noalias !175 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ff = fmul <2 x double> %.sroa.10.40.vec.insert, %i.fe
  %i.fg = fadd <2 x double> %i.fa, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.fi = load double, ptr %i.fh, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.fj = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x double> %.sroa.18.72.vec.insert, %i.fk
  %i.fm = fadd <2 x double> %i.fg, %i.fl          ; 8 uses
  %i.fn = fmul double %i.cq, %i.ex
  %i.fo = fmul double %i.cw, %i.fc
  %i.fp = fmul double %i.dc, %i.fi
  %i.fq = fadd double %i.fo, %i.fp
  %i.fr = fadd double %i.fn, %i.fq                ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ft = load double, ptr %i.fs, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.fu = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %.sroa.0212.8.vec.insert, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !10, !noalias !175 ; 2 uses
  %i.fz = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ga = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x double> %.sroa.10.40.vec.insert, %i.ga
  %i.gc = fadd <2 x double> %i.fw, %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.ge = load double, ptr %i.gd, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.gf = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x double> %.sroa.18.72.vec.insert, %i.gg
  %i.gi = fadd <2 x double> %i.gc, %i.gh          ; 8 uses
  %i.gj = fmul double %i.cq, %i.ft
  %i.gk = fmul double %i.cw, %i.fy
  %i.gl = fmul double %i.dc, %i.ge
  %i.gm = fadd double %i.gk, %i.gl
  %i.gn = fadd double %i.gj, %i.gm                ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.gp = load double, ptr %i.go, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.gq = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x double> %.sroa.0212.8.vec.insert, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !10, !noalias !175 ; 2 uses
  %i.gv = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x double> %.sroa.10.40.vec.insert, %i.gw
  %i.gy = fadd <2 x double> %i.gs, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ha = load double, ptr %i.gz, align 16, !tbaa !10, !noalias !175 ; 2 uses
  %i.hb = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hc = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = fmul <2 x double> %.sroa.18.72.vec.insert, %i.hc
  %i.he = fadd <2 x double> %i.gy, %i.hd
  %i.hf = fmul double %i.cq, %i.gp
  %i.hg = fmul double %i.cw, %i.gu
  %i.hh = fmul double %i.dc, %i.ha
  %i.hi = fadd double %i.hg, %i.hh
  %i.hj = fadd double %i.hf, %i.hi
  %i.hk = fadd <2 x double> %i.du, %i.he          ; 5 uses
  %.sroa.0222.0.vec.extract = extractelement <2 x double> %i.eq, i64 0
  %i.hl = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = fmul <2 x double> %i.bz, %i.hl
  %i.hn = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ho = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hq = fmul double %i.cl, %.sroa.0222.0.vec.extract
  %.sroa.10227.32.vec.extract = extractelement <2 x double> %i.fm, i64 0
  %i.hr = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x double> %i.bz, %i.hr
  %i.ht = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = fmul double %i.cl, %.sroa.10227.32.vec.extract
  %.sroa.18232.64.vec.extract = extractelement <2 x double> %i.gi, i64 0
  %i.hx = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = fmul <2 x double> %i.bz, %i.hx
  %i.hz = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ia = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = fmul double %i.cl, %.sroa.18232.64.vec.extract
  %.sroa.26236.96.vec.extract = extractelement <2 x double> %i.hk, i64 0
  %i.id = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = fmul <2 x double> %i.bz, %i.id
  %i.if = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ig = fmul double %i.cl, %.sroa.26236.96.vec.extract
  %i.ih = load <2 x double>, ptr %i.ay, align 8, !tbaa !10, !noalias !169 ; 5 uses
  %i.ii = load <2 x double>, ptr %i.az, align 8, !tbaa !10, !noalias !169 ; 5 uses
  %i.ij = shufflevector <2 x double> %i.ih, <2 x double> %i.ii, <2 x i32> <i32 0, i32 2>
  %i.ik = shufflevector <2 x double> %i.ih, <2 x double> %i.ii, <2 x i32> <i32 1, i32 3>
  %i.il = load <2 x double>, ptr %i.ba, align 8, !tbaa !10, !noalias !169 ; 5 uses
  %i.im = fmul <2 x double> %i.ij, %i.bk
  %i.in = fsub <2 x double> %i.bg, %i.im
  %i.io = fmul <2 x double> %i.ik, %i.bo
  %i.ip = fsub <2 x double> %i.in, %i.io          ; 3 uses
  %i.iq = extractelement <2 x double> %i.il, i64 1
  %i.ir = fneg double %i.iq
  %i.is = fmul double %i.bm, %i.ir
  %i.it = extractelement <2 x double> %i.il, i64 0
  %i.iu = fmul double %i.it, %i.bi
  %i.iv = fsub double %i.is, %i.iu
  %i.iw = fsub double %i.iv, %i.bp                ; 2 uses
  %i.ix = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = fmul <2 x double> %.sroa.0256.8.vec.insert, %i.ix
  %i.iz = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x double> %.sroa.10261.40.vec.insert, %i.iz
  %i.jb = fadd <2 x double> %i.iy, %i.ja
  %i.jc = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x double> %.sroa.18266.72.vec.insert, %i.jc
  %i.je = fadd <2 x double> %i.jb, %i.jd          ; 12 uses
  %i.jf = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jg = fmul <2 x double> %.sroa.0256.8.vec.insert, %i.jf
  %i.jh = shufflevector <2 x double> %i.ii, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ji = fmul <2 x double> %.sroa.10261.40.vec.insert, %i.jh
  %i.jj = fadd <2 x double> %i.jg, %i.ji
  %i.jk = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jl = fmul <2 x double> %.sroa.18266.72.vec.insert, %i.jk
  %i.jm = fadd <2 x double> %i.jj, %i.jl          ; 12 uses
  %i.jn = insertelement <2 x double> poison, double %i.y, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x double> %i.jo, %i.il
  %i.jq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x double> %.sroa.0256.8.vec.insert, %i.jq
  %i.js = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jt = fmul <2 x double> %.sroa.10261.40.vec.insert, %i.js
  %i.ju = fadd <2 x double> %i.jr, %i.jt
  %i.jv = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %.sroa.18266.72.vec.insert, %i.jw
  %i.jy = fadd <2 x double> %i.jx, %i.ju
  %i.jz = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = fmul <2 x double> %i.jz, %i.ih
  %i.kb = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.kc = fmul <2 x double> %i.kb, %i.ii
  %i.kd = fadd <2 x double> %i.kc, %i.jp
  %i.ke = fadd <2 x double> %i.ka, %i.kd          ; 9 uses
  %i.kf = fmul <2 x double> %i.cb, %i.ip          ; 2 uses
  %i.kg = fmul double %i.y, %i.iw
  %i.kh = extractelement <2 x double> %i.kf, i64 1
  %i.ki = fadd double %i.kg, %i.kh
  %i.kj = extractelement <2 x double> %i.kf, i64 0
  %i.kk = fadd double %i.kj, %i.ki
  %i.kl = fadd <2 x double> %i.aq, %i.jy
  %19 = fadd double %i.ch, %i.kk
  %i.km = fadd double %i.ea, %i.hj                ; 3 uses
  %i.kn = fmul <2 x double> %i.je, %i.hn
  %i.ko = fadd <2 x double> %i.hm, %i.kn
  %i.kp = fmul <2 x double> %i.jm, %i.hp
  %i.kq = fadd <2 x double> %i.kp, %i.ko          ; 17 uses
  %i.kr = extractelement <2 x double> %i.ke, i64 0 ; 5 uses
  %shift = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ke, %shift
  %i.ks = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.kt = extractelement <2 x double> %i.ke, i64 1 ; 11 uses
  %i.ku = fmul double %i.kt, %i.ev
  %i.kv = fadd double %i.ku, %i.ks
  %i.kw = fadd double %i.hq, %i.kv                ; 17 uses
  %i.kx = fmul <2 x double> %i.je, %i.ht
  %i.ky = fadd <2 x double> %i.hs, %i.kx
  %i.kz = fmul <2 x double> %i.jm, %i.hv
  %i.la = fadd <2 x double> %i.kz, %i.ky          ; 18 uses
  %shift587 = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop588 = fmul <2 x double> %i.ke, %shift587
  %i.lb = extractelement <2 x double> %foldExtExtBinop588, i64 0
  %i.lc = fmul double %i.kt, %i.fr
  %i.ld = fadd double %i.lc, %i.lb
  %i.le = fadd double %i.hw, %i.ld                ; 18 uses
  %i.lf = fmul <2 x double> %i.je, %i.hz
  %i.lg = fadd <2 x double> %i.hy, %i.lf
  %i.lh = fmul <2 x double> %i.jm, %i.ib
  %i.li = fadd <2 x double> %i.lh, %i.lg          ; 18 uses
  %shift590 = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop591 = fmul <2 x double> %i.ke, %shift590
  %i.lj = extractelement <2 x double> %foldExtExtBinop591, i64 0
  %i.lk = fmul double %i.kt, %i.gn
  %i.ll = fadd double %i.lk, %i.lj
  %i.lm = fadd double %i.ic, %i.ll                ; 18 uses
  %i.ln = fmul <2 x double> %i.je, %i.if
  %i.lo = fadd <2 x double> %i.ie, %i.ln
  %20 = insertelement <2 x double> poison, double %i.km, i64 0
  %21 = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lp = fmul <2 x double> %i.jm, %21
  %i.lq = fadd <2 x double> %i.lp, %i.lo
  %i.lr = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ls = insertelement <2 x double> %i.lr, double %i.km, i64 1
  %i.lt = fmul <2 x double> %i.ke, %i.ls          ; 2 uses
  %shift593 = shufflevector <2 x double> %i.lt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop594 = fadd <2 x double> %shift593, %i.lt
  %i.lu = extractelement <2 x double> %foldExtExtBinop594, i64 0
  %i.lv = fadd double %i.ig, %i.lu
  %i.lw = fadd <2 x double> %i.kl, %i.lq
  %i.lx = fadd double %19, %i.lv
  %i.ly = load double, ptr %7, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.lz = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mb = fmul <2 x double> %i.eq, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !10, !noalias !180 ; 3 uses
  %i.me = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mg = fmul <2 x double> %i.fm, %i.mf
  %i.mh = fadd <2 x double> %i.mb, %i.mg
  %i.mi = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.mj = load double, ptr %i.mi, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.mk = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mm = fmul <2 x double> %i.gi, %i.ml
  %i.mn = fadd <2 x double> %i.mh, %i.mm          ; 2 uses
  %i.mo = fmul double %i.ev, %i.ly
  %i.mp = fmul double %i.fr, %i.md
  %i.mq = fmul double %i.gn, %i.mj
  %i.mr = fadd double %i.mp, %i.mq
  %i.ms = fadd double %i.mo, %i.mr
  %i.mt = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.mu = load double, ptr %i.mt, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.mv = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mx = fmul <2 x double> %i.eq, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !10, !noalias !180 ; 3 uses
  %i.na = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.nb = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nc = fmul <2 x double> %i.fm, %i.nb
  %i.nd = fadd <2 x double> %i.mx, %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.ng = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.nh = shufflevector <2 x double> %i.ng, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ni = fmul <2 x double> %i.gi, %i.nh
  %i.nj = fadd <2 x double> %i.nd, %i.ni          ; 2 uses
  %i.nk = fmul double %i.ev, %i.mu
  %i.nl = fmul double %i.fr, %i.mz
  %i.nm = fmul double %i.gn, %i.nf
  %i.nn = fadd double %i.nl, %i.nm
  %i.no = fadd double %i.nk, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.nq = load double, ptr %i.np, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.nr = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.ns = shufflevector <2 x double> %i.nr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nt = fmul <2 x double> %i.eq, %i.ns
  %i.nu = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !10, !noalias !180 ; 3 uses
  %i.nw = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ny = fmul <2 x double> %i.fm, %i.nx
  %i.nz = fadd <2 x double> %i.nt, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ob = load double, ptr %i.oa, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.oc = insertelement <2 x double> poison, double %i.ob, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oe = fmul <2 x double> %i.gi, %i.od
  %i.of = fadd <2 x double> %i.nz, %i.oe          ; 2 uses
  %i.og = fmul double %i.ev, %i.nq
  %i.oh = fmul double %i.fr, %i.nv
  %i.oi = fmul double %i.gn, %i.ob
  %i.oj = fadd double %i.oh, %i.oi
  %i.ok = fadd double %i.og, %i.oj
  %i.ol = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.om = load double, ptr %i.ol, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.on = insertelement <2 x double> poison, double %i.om, i64 0
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.op = fmul <2 x double> %i.eq, %i.oo
  %i.oq = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.or = load double, ptr %i.oq, align 8, !tbaa !10, !noalias !180 ; 3 uses
  %i.os = insertelement <2 x double> poison, double %i.or, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ou = fmul <2 x double> %i.fm, %i.ot
  %i.ov = fadd <2 x double> %i.op, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.ox = load double, ptr %i.ow, align 16, !tbaa !10, !noalias !180 ; 3 uses
  %i.oy = insertelement <2 x double> poison, double %i.ox, i64 0
  %i.oz = shufflevector <2 x double> %i.oy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pa = fmul <2 x double> %i.gi, %i.oz
  %i.pb = fadd <2 x double> %i.ov, %i.pa
  %i.pc = fmul double %i.ev, %i.om
  %i.pd = fmul double %i.fr, %i.or
  %i.pe = fmul double %i.gn, %i.ox
  %i.pf = fadd double %i.pd, %i.pe
  %i.pg = fadd double %i.pc, %i.pf
  %i.ph = fadd <2 x double> %i.hk, %i.pb          ; 2 uses
  %i.pi = fadd double %i.km, %i.pg
  %i.pj = fmul <2 x double> %i.kq, %i.ma
  %i.pk = fmul <2 x double> %i.la, %i.mf
  %i.pl = fadd <2 x double> %i.pj, %i.pk
  %i.pm = fmul <2 x double> %i.li, %i.ml
  %i.pn = fadd <2 x double> %i.pl, %i.pm          ; 3 uses
  %i.po = fmul double %i.kw, %i.ly
  %i.pp = fmul double %i.md, %i.le
  %i.pq = fmul double %i.mj, %i.lm
  %i.pr = fadd double %i.pp, %i.pq
  %i.ps = fadd double %i.po, %i.pr                ; 2 uses
  %i.pt = fmul <2 x double> %i.kq, %i.mw
  %i.pu = fmul <2 x double> %i.la, %i.nb
  %i.pv = fadd <2 x double> %i.pt, %i.pu
  %i.pw = fmul <2 x double> %i.li, %i.nh
  %i.px = fadd <2 x double> %i.pv, %i.pw          ; 3 uses
  %i.py = fmul double %i.kw, %i.mu
  %i.pz = fmul double %i.le, %i.mz
  %i.qa = fmul double %i.lm, %i.nf
  %i.qb = fadd double %i.pz, %i.qa
  %i.qc = fadd double %i.py, %i.qb                ; 2 uses
  %i.qd = fmul <2 x double> %i.kq, %i.ns
  %i.qe = fmul <2 x double> %i.la, %i.nx
  %i.qf = fadd <2 x double> %i.qd, %i.qe
  %i.qg = fmul <2 x double> %i.li, %i.od
  %i.qh = fadd <2 x double> %i.qf, %i.qg          ; 3 uses
  %i.qi = fmul double %i.kw, %i.nq
  %i.qj = fmul double %i.le, %i.nv
  %i.qk = fmul double %i.lm, %i.ob
  %i.ql = fadd double %i.qj, %i.qk
  %i.qm = fadd double %i.qi, %i.ql                ; 2 uses
  %i.qn = fmul <2 x double> %i.kq, %i.oo
  %i.qo = fmul <2 x double> %i.la, %i.ot
  %i.qp = fadd <2 x double> %i.qn, %i.qo
  %i.qq = fmul <2 x double> %i.li, %i.oz
  %i.qr = fadd <2 x double> %i.qp, %i.qq
  %i.qs = fmul double %i.kw, %i.om
  %i.qt = fmul double %i.le, %i.or
  %i.qu = fmul double %i.lm, %i.ox
  %i.qv = fadd double %i.qt, %i.qu
  %i.qw = fadd double %i.qs, %i.qv
  %i.qx = fadd <2 x double> %i.lw, %i.qr
  %i.qy = fadd double %i.lx, %i.qw
  %.sroa.4203.24.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ps, i64 0
  %.sroa.9206.56.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.qc, i64 0
  %.sroa.14209.88.vec.insert = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.qm, i64 0
  %.sroa.19.120.vec.insert = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.qy, i64 0
  store <2 x double> %i.pn, ptr %0, align 16, !tbaa !28
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %.sroa.4203.24.vec.insert, ptr %i.qz, align 16, !tbaa !28
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x double> %i.px, ptr %i.ra, align 16, !tbaa !28
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x double> %.sroa.9206.56.vec.insert, ptr %i.rb, align 16, !tbaa !28
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x double> %i.qh, ptr %i.rc, align 16, !tbaa !28
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x double> %.sroa.14209.88.vec.insert, ptr %i.rd, align 16, !tbaa !28
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <2 x double> %i.qx, ptr %i.re, align 16, !tbaa !28
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x double> %.sroa.19.120.vec.insert, ptr %i.rf, align 16, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %bc574 = bitcast <2 x double> %i.pn to <2 x i64>
  %i.rg = extractelement <2 x i64> %bc574, i64 0
  store i64 %i.rg, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.rh = extractelement <2 x double> %i.pn, i64 1
  store double %i.rh, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store double %i.ps, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  %bc576 = bitcast <2 x double> %i.px to <2 x i64>
  %i.ri = extractelement <2 x i64> %bc576, i64 0
  store i64 %i.ri, ptr %i.d, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  %i.rj = extractelement <2 x double> %i.px, i64 1
  store double %i.rj, ptr %i.e, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store double %i.qc, ptr %i.f, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %bc578 = bitcast <2 x double> %i.qh to <2 x i64>
  %i.rk = extractelement <2 x i64> %bc578, i64 0
  store i64 %i.rk, ptr %i.g, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  %i.rl = extractelement <2 x double> %i.qh, i64 1
  store double %i.rl, ptr %i.h, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  store double %i.qm, ptr %i.i, align 8, !tbaa !10
  call void @_ZN3g2o8internal13compute_dq_dRERN5Eigen6MatrixIdLi3ELi9ELi0ELi3ELi9EEERKdS6_S6_S6_S6_S6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(216) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.rm = load ptr, ptr %1, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.rm, i8 0, i64 288, i1 false)
  %i.rn = load ptr, ptr %2, align 8, !tbaa !185
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.rn, i8 0, i64 288, i1 false)
  %i.ro = load ptr, ptr %1, align 8, !tbaa !185, !noalias !186 ; 6 uses
  %i.rp = fneg <2 x double> %i.bz
  store <2 x double> %i.rp, ptr %i.ro, align 1, !tbaa !28
  %i.rq = getelementptr i8, ptr %i.ro, i64 16
  %i.rr = fneg double %i.cl
  store double %i.rr, ptr %i.rq, align 8, !tbaa !10
  %i.rs = getelementptr i8, ptr %i.ro, i64 48
  %i.rt = fneg <2 x double> %i.je
  store <2 x double> %i.rt, ptr %i.rs, align 8, !tbaa !28
  %i.ru = getelementptr i8, ptr %i.ro, i64 64
  %i.rv = fneg double %i.kr
  store double %i.rv, ptr %i.ru, align 8, !tbaa !10
  %i.rw = getelementptr i8, ptr %i.ro, i64 96
  %i.rx = fneg <2 x double> %i.jm
  store <2 x double> %i.rx, ptr %i.rw, align 8, !tbaa !28
  %i.ry = getelementptr i8, ptr %i.ro, i64 112
  %i.rz = fneg double %i.kt
  store double %i.rz, ptr %i.ry, align 8, !tbaa !10
  %i.sa = load ptr, ptr %2, align 8, !tbaa !185, !noalias !189 ; 6 uses
  store <2 x double> %i.kq, ptr %i.sa, align 1, !tbaa !28
  %i.sb = getelementptr i8, ptr %i.sa, i64 16
  store double %i.kw, ptr %i.sb, align 8, !tbaa !10
  %i.sc = getelementptr i8, ptr %i.sa, i64 48
  store <2 x double> %i.la, ptr %i.sc, align 8, !tbaa !28
  %i.sd = getelementptr i8, ptr %i.sa, i64 64
  store double %i.le, ptr %i.sd, align 8, !tbaa !10
  %i.se = getelementptr i8, ptr %i.sa, i64 96
  store <2 x double> %i.li, ptr %i.se, align 8, !tbaa !28
  %i.sf = getelementptr i8, ptr %i.sa, i64 112
  store double %i.lm, ptr %i.sf, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0365)
  %.sroa.20.96.vec.extract = extractelement <2 x double> %i.ph, i64 0
  %i.sg = fmul double %.sroa.20.96.vec.extract, 2.000000e+00 ; 4 uses
  %i.sh = fneg double %i.sg
  %i.si = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sj = insertelement <2 x double> %i.si, double %i.pi, i64 1
  %i.sk = fmul <2 x double> %i.sj, splat (double 2.000000e+00) ; 4 uses
  %i.sl = insertelement <2 x double> %i.sk, double 0.000000e+00, i64 0
  store <2 x double> %i.sl, ptr %.sroa.0365, align 16, !tbaa !10
  %i.sm = fneg <2 x double> %i.sk
  %.sroa.0365.16..sroa_idx626 = getelementptr inbounds nuw i8, ptr %.sroa.0365, i64 16
  store <2 x double> %i.sm, ptr %.sroa.0365.16..sroa_idx626, align 16, !tbaa !10
  %i.sn = load ptr, ptr %1, align 8, !tbaa !185, !noalias !192 ; 6 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 144
  %i.sp = fmul <2 x double> %i.bz, zeroinitializer
  %.sroa.0365.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0365, i64 8
  %.sroa.0365.8..sroa.0365.8..sroa.0365.8..sroa.0365.8. = load <2 x double>, ptr %.sroa.0365.8..sroa_idx, align 8 ; 2 uses
  %i.sq = shufflevector <2 x double> %.sroa.0365.8..sroa.0365.8..sroa.0365.8..sroa.0365.8., <2 x double> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x double> %i.je, %i.sq
  %i.ss = fadd <2 x double> %i.sp, %i.sr
  %.sroa.0365.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0365, i64 16
  %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16. = load <2 x double>, ptr %.sroa.0365.16..sroa_idx, align 16 ; 4 uses
  %i.st = shufflevector <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., <2 x double> poison, <2 x i32> zeroinitializer
  %i.su = fmul <2 x double> %i.jm, %i.st
  %i.sv = fadd <2 x double> %i.ss, %i.su
  %i.sw = fmul double %i.cl, 0.000000e+00
  %foldExtExtBinop596 = fmul <2 x double> %i.ke, %.sroa.0365.8..sroa.0365.8..sroa.0365.8..sroa.0365.8.
  %i.sx = extractelement <2 x double> %foldExtExtBinop596, i64 0
  %i.sy = extractelement <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., i64 0
  %i.sz = fmul double %i.kt, %i.sy
  %i.ta = fadd double %i.sx, %i.sz
  %i.tb = fadd double %i.sw, %i.ta
  %i.tc = extractelement <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., i64 1
  %i.td = shufflevector <2 x double> %.sroa.0365.16..sroa.0365.16..sroa.0365.16..sroa.0365.16., <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.te = fmul <2 x double> %i.bz, %i.td
  %i.tf = fmul <2 x double> %i.je, zeroinitializer ; 3 uses
  %i.tg = fadd <2 x double> %i.tf, %i.te
  %i.th = insertelement <2 x double> poison, double %i.sg, i64 0
  %i.ti = shufflevector <2 x double> %i.th, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tj = fmul <2 x double> %i.jm, %i.ti
  %i.tk = fadd <2 x double> %i.tj, %i.tg
  %i.tl = fmul double %i.cl, %i.tc
  %i.tm = fmul double %i.kr, 0.000000e+00         ; 3 uses
  %i.tn = fmul double %i.kt, %i.sg
  %i.to = fadd double %i.tm, %i.tn
  %i.tp = fadd double %i.to, %i.tl
  %i.tq = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tr = fmul <2 x double> %i.bz, %i.tq
  %i.ts = insertelement <2 x double> poison, double %i.sh, i64 0
  %i.tt = shufflevector <2 x double> %i.ts, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tu = fmul <2 x double> %i.je, %i.tt
  %i.tv = fadd <2 x double> %i.tr, %i.tu
  %i.tw = fmul <2 x double> %i.jm, zeroinitializer ; 3 uses
  %i.tx = fadd <2 x double> %i.tw, %i.tv
  %i.ty = extractelement <2 x double> %i.sk, i64 0
  %i.tz = fmul double %i.cl, %i.ty
  %i.ua = fmul double %i.kt, 0.000000e+00         ; 3 uses
  %i.ub = fmul double %i.kr, %i.sg
  %i.uc = fsub double %i.ua, %i.ub
  %i.ud = fadd double %i.tz, %i.uc
  store <2 x double> %i.sv, ptr %i.so, align 1, !tbaa !28
  %i.ue = getelementptr i8, ptr %i.sn, i64 160
  store double %i.tb, ptr %i.ue, align 8, !tbaa !10
  %i.uf = getelementptr i8, ptr %i.sn, i64 192
  store <2 x double> %i.tk, ptr %i.uf, align 8, !tbaa !28
  %i.ug = getelementptr i8, ptr %i.sn, i64 208
  store double %i.tp, ptr %i.ug, align 8, !tbaa !10
end_hunk_0
