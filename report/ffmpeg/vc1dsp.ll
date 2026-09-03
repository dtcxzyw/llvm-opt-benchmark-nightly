Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc1dsp?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 118
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 122
begin_hunk_0_@vc1_h_s_overlap_c:bb.a
  %i.ed = sext i16 %i.ec to i32                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 2 ; 2 uses
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !27 ; 2 uses
  %i.eg = sext i16 %i.ef to i32
  %i.eh = sub nsw i32 %i.dy, %i.eg                ; 3 uses
  %i.ei = sub nsw i32 %i.eb, %i.ed
  %i.ej = add nsw i32 %i.ei, %i.eh                ; 2 uses
  %i.ek = shl nsw i32 %i.dy, 3
  %i.el = or disjoint i32 %i.ek, %.sink274
  %i.em = sub nsw i32 %i.el, %i.eh
  %i.en = lshr i32 %i.em, 3
  %i.eo = trunc i32 %i.en to i16
  store i16 %i.eo, ptr %i.dw, align 2, !tbaa !27
  %i.ep = shl nsw i32 %i.eb, 3
  %i.eq = or disjoint i32 %i.ep, %.sink265
  %i.er = sub nsw i32 %i.eq, %i.ej
  %i.es = lshr i32 %i.er, 3
  %i.et = trunc i32 %i.es to i16
  store i16 %i.et, ptr %i.dz, align 2, !tbaa !27
  %i.eu = shl nsw i32 %i.ed, 3
  %i.ev = or disjoint i32 %i.eu, %.sink274
  %i.ew = add nsw i32 %i.ev, %i.ej
  %i.ex = lshr i32 %i.ew, 3
  %i.ey = trunc i32 %i.ex to i16
  store i16 %i.ey, ptr %i.du, align 2, !tbaa !27
  %i.ez = add nsw i32 %i.eh, %.sink265
  %i.fa = lshr i32 %i.ez, 3
  %i.fb = trunc i32 %i.fa to i16
  %i.fc = add i16 %i.ef, %i.fb
  store i16 %i.fc, ptr %i.ee, align 2, !tbaa !27
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.du, i64 %3 ; 4 uses
  %i.fe = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %2 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 12 ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !27
  %i.fh = sext i16 %i.fg to i32                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 14 ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !27
  %i.fk = sext i16 %i.fj to i32                   ; 2 uses
  %i.fl = load i16, ptr %i.fd, align 2, !tbaa !27
  %i.fm = sext i16 %i.fl to i32                   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 2 ; 2 uses
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !27 ; 2 uses
  %i.fp = sext i16 %i.fo to i32
  %i.fq = sub nsw i32 %i.fh, %i.fp                ; 3 uses
  %i.fr = sub nsw i32 %i.fk, %i.fm
  %i.fs = add nsw i32 %i.fr, %i.fq                ; 2 uses
  %i.ft = shl nsw i32 %i.fh, 3
  %i.fu = or disjoint i32 %i.ft, %i.b
  %i.fv = sub nsw i32 %i.fu, %i.fq
  %i.fw = lshr i32 %i.fv, 3
  %i.fx = trunc i32 %i.fw to i16
  store i16 %i.fx, ptr %i.ff, align 2, !tbaa !27
  %i.fy = shl nsw i32 %i.fk, 3
  %i.fz = or disjoint i32 %i.fy, %.sink310
  %i.ga = sub nsw i32 %i.fz, %i.fs
  %i.gb = lshr i32 %i.ga, 3
  %i.gc = trunc i32 %i.gb to i16
  store i16 %i.gc, ptr %i.fi, align 2, !tbaa !27
  %i.gd = shl nsw i32 %i.fm, 3
  %i.ge = or disjoint i32 %i.gd, %i.b
  %i.gf = add nsw i32 %i.ge, %i.fs
  %i.gg = lshr i32 %i.gf, 3
  %i.gh = trunc i32 %i.gg to i16
  store i16 %i.gh, ptr %i.fd, align 2, !tbaa !27
  %i.gi = add nsw i32 %i.fq, %.sink310
  %i.gj = lshr i32 %i.gi, 3
  %i.gk = trunc i32 %i.gj to i16
  %i.gl = add i16 %i.fo, %i.gk
  store i16 %i.gl, ptr %i.fn, align 2, !tbaa !27
  %i.gm = getelementptr inbounds [2 x i8], ptr %i.fd, i64 %3 ; 4 uses
  %i.gn = getelementptr inbounds [2 x i8], ptr %i.fe, i64 %2 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 12 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !27
  %i.gq = sext i16 %i.gp to i32                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 14 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !27
  %i.gt = sext i16 %i.gs to i32                   ; 2 uses
  %i.gu = load i16, ptr %i.gm, align 2, !tbaa !27
  %i.gv = sext i16 %i.gu to i32                   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 2 ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !27 ; 2 uses
  %i.gy = sext i16 %i.gx to i32
  %i.gz = sub nsw i32 %i.gq, %i.gy                ; 3 uses
  %i.ha = sub nsw i32 %i.gt, %i.gv
  %i.hb = add nsw i32 %i.ha, %i.gz                ; 2 uses
  %i.hc = shl nsw i32 %i.gq, 3
  %i.hd = or disjoint i32 %i.hc, %.sink274
  %i.he = sub nsw i32 %i.hd, %i.gz
  %i.hf = lshr i32 %i.he, 3
  %i.hg = trunc i32 %i.hf to i16
  store i16 %i.hg, ptr %i.go, align 2, !tbaa !27
  %i.hh = shl nsw i32 %i.gt, 3
  %i.hi = or disjoint i32 %i.hh, %.sink265
  %i.hj = sub nsw i32 %i.hi, %i.hb
  %i.hk = lshr i32 %i.hj, 3
  %i.hl = trunc i32 %i.hk to i16
  store i16 %i.hl, ptr %i.gr, align 2, !tbaa !27
  %i.hm = shl nsw i32 %i.gv, 3
  %i.hn = or disjoint i32 %i.hm, %.sink274
  %i.ho = add nsw i32 %i.hn, %i.hb
  %i.hp = lshr i32 %i.ho, 3
  %i.hq = trunc i32 %i.hp to i16
  store i16 %i.hq, ptr %i.gm, align 2, !tbaa !27
  %i.hr = add nsw i32 %i.gz, %.sink265
  %i.hs = lshr i32 %i.hr, 3
  %i.ht = trunc i32 %i.hs to i16
  %i.hu = add i16 %i.gx, %i.ht
  store i16 %i.hu, ptr %i.gw, align 2, !tbaa !27
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.gm, i64 %3 ; 4 uses
  %i.hw = getelementptr inbounds [2 x i8], ptr %i.gn, i64 %2 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 12 ; 2 uses
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !27
  %i.hz = sext i16 %i.hy to i32                   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hw, i64 14 ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !27
  %i.ic = sext i16 %i.ib to i32                   ; 2 uses
  %i.id = load i16, ptr %i.hv, align 2, !tbaa !27
  %i.ie = sext i16 %i.id to i32                   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hv, i64 2 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !27 ; 2 uses
  %i.ih = sext i16 %i.ig to i32
  %i.ii = sub nsw i32 %i.hz, %i.ih                ; 3 uses
  %i.ij = sub nsw i32 %i.ic, %i.ie
  %i.ik = add nsw i32 %i.ij, %i.ii                ; 2 uses
  %i.il = shl nsw i32 %i.hz, 3
  %i.im = or disjoint i32 %i.il, %i.b
  %i.in = sub nsw i32 %i.im, %i.ii
  %i.io = lshr i32 %i.in, 3
  %i.ip = trunc i32 %i.io to i16
  store i16 %i.ip, ptr %i.hx, align 2, !tbaa !27
  %i.iq = shl nsw i32 %i.ic, 3
  %i.ir = or disjoint i32 %i.iq, %.sink310
  %i.is = sub nsw i32 %i.ir, %i.ik
  %i.it = lshr i32 %i.is, 3
  %i.iu = trunc i32 %i.it to i16
  store i16 %i.iu, ptr %i.ia, align 2, !tbaa !27
  %i.iv = shl nsw i32 %i.ie, 3
  %i.iw = or disjoint i32 %i.iv, %i.b
  %i.ix = add nsw i32 %i.iw, %i.ik
  %i.iy = lshr i32 %i.ix, 3
  %i.iz = trunc i32 %i.iy to i16
  store i16 %i.iz, ptr %i.hv, align 2, !tbaa !27
  %i.ja = add nsw i32 %i.ii, %.sink310
  %i.jb = lshr i32 %i.ja, 3
  %i.jc = trunc i32 %i.jb to i16
  %i.jd = add i16 %i.ig, %i.jc
  store i16 %i.jd, ptr %i.if, align 2, !tbaa !27
  %i.je = getelementptr inbounds [2 x i8], ptr %i.hv, i64 %3 ; 3 uses
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.hw, i64 %2 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 12 ; 2 uses
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !27
  %i.ji = sext i16 %i.jh to i32                   ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 14 ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !27
  %i.jl = sext i16 %i.jk to i32                   ; 2 uses
  %i.jm = load i16, ptr %i.je, align 2, !tbaa !27
  %i.jn = sext i16 %i.jm to i32                   ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 2 ; 2 uses
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !27 ; 2 uses
  %i.jq = sext i16 %i.jp to i32
  %i.jr = sub nsw i32 %i.ji, %i.jq                ; 3 uses
  %i.js = sub nsw i32 %i.jl, %i.jn
  %i.jt = add nsw i32 %i.js, %i.jr                ; 2 uses
  %i.ju = shl nsw i32 %i.ji, 3
  %i.jv = or disjoint i32 %i.ju, %.sink274
  %i.jw = sub nsw i32 %i.jv, %i.jr
  %i.jx = lshr i32 %i.jw, 3
  %i.jy = trunc i32 %i.jx to i16
  store i16 %i.jy, ptr %i.jg, align 2, !tbaa !27
  %i.jz = shl nsw i32 %i.jl, 3
  %i.ka = or disjoint i32 %i.jz, %.sink265
  %i.kb = sub nsw i32 %i.ka, %i.jt
  %i.kc = lshr i32 %i.kb, 3
  %i.kd = trunc i32 %i.kc to i16
  store i16 %i.kd, ptr %i.jj, align 2, !tbaa !27
  %i.ke = shl nsw i32 %i.jn, 3
  %i.kf = or disjoint i32 %i.ke, %.sink274
  %i.kg = add nsw i32 %i.kf, %i.jt
  %i.kh = lshr i32 %i.kg, 3
  %i.ki = trunc i32 %i.kh to i16
  store i16 %i.ki, ptr %i.je, align 2, !tbaa !27
  %i.kj = add nsw i32 %i.jr, %.sink265
  %i.kk = lshr i32 %i.kj, 3
  %i.kl = trunc i32 %i.kk to i16
  %i.km = add i16 %i.jp, %i.kl
  store i16 %i.km, ptr %i.jo, align 2, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @vc1_v_s_overlap_c(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 96
  %i.d = add i64 %i.b, 128
  %i.e = add i64 %i.a, 32
  %rt.bound0 = icmp ult i64 %i.c, %i.e
  %rt.bound1 = icmp ugt i64 %i.d, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec

.rtvec:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = load <8 x i16>, ptr %i.f, align 2, !tbaa !27
  %i.j = sext <8 x i16> %i.i to <8 x i32>         ; 2 uses
  %i.k = load <8 x i16>, ptr %i.h, align 2, !tbaa !27 ; 2 uses
  %i.l = sext <8 x i16> %i.k to <8 x i32>
  %i.m = sub nsw <8 x i32> %i.j, %i.l             ; 3 uses
  %i.n = shl nsw <8 x i32> %i.j, splat (i32 3)
  %i.o = or disjoint <8 x i32> %i.n, <i32 4, i32 3, i32 4, i32 3, i32 4, i32 3, i32 4, i32 3>
  %i.p = sub nsw <8 x i32> %i.o, %i.m
  %i.q = lshr <8 x i32> %i.p, splat (i32 3)
  %i.r = trunc <8 x i32> %i.q to <8 x i16>
  store <8 x i16> %i.r, ptr %i.f, align 2, !tbaa !27
  %i.s = load <8 x i16>, ptr %1, align 2, !tbaa !27
  %i.t = sext <8 x i16> %i.s to <8 x i32>         ; 2 uses
  %i.u = load <8 x i16>, ptr %i.g, align 2, !tbaa !27
  %i.v = sext <8 x i16> %i.u to <8 x i32>         ; 2 uses
  %i.w = sub nsw <8 x i32> %i.v, %i.t
  %i.x = add nsw <8 x i32> %i.w, %i.m             ; 2 uses
  %i.y = shl nsw <8 x i32> %i.v, splat (i32 3)
  %i.z = or disjoint <8 x i32> %i.y, <i32 3, i32 4, i32 3, i32 4, i32 3, i32 4, i32 3, i32 4>
  %i.aa = sub nsw <8 x i32> %i.z, %i.x
  %i.ab = lshr <8 x i32> %i.aa, splat (i32 3)
  %i.ac = trunc <8 x i32> %i.ab to <8 x i16>
  store <8 x i16> %i.ac, ptr %i.g, align 2, !tbaa !27
  %i.ad = shl nsw <8 x i32> %i.t, splat (i32 3)
  %i.ae = or disjoint <8 x i32> %i.ad, <i32 4, i32 3, i32 4, i32 3, i32 4, i32 3, i32 4, i32 3>
  %i.af = add nsw <8 x i32> %i.ae, %i.x
  %i.ag = lshr <8 x i32> %i.af, splat (i32 3)
  %i.ah = trunc <8 x i32> %i.ag to <8 x i16>
  store <8 x i16> %i.ah, ptr %1, align 2, !tbaa !27
  %i.ai = add nsw <8 x i32> %i.m, <i32 3, i32 4, i32 3, i32 4, i32 3, i32 4, i32 3, i32 4>
  %i.aj = lshr <8 x i32> %i.ai, splat (i32 3)
  %i.ak = trunc <8 x i32> %i.aj to <8 x i16>
  %i.al = add <8 x i16> %i.k, %i.ak
  store <8 x i16> %i.al, ptr %i.h, align 2, !tbaa !27
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !27
  %i.ao = sext i16 %i.an to i32                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !27
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = load i16, ptr %1, align 2, !tbaa !27
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !27 ; 2 uses
  %i.aw = sext i16 %i.av to i32
  %i.ax = sub nsw i32 %i.ao, %i.aw                ; 3 uses
  %i.ay = sub nsw i32 %i.ar, %i.at
  %i.az = add nsw i32 %i.ay, %i.ax                ; 2 uses
  %i.ba = shl nsw i32 %i.ao, 3
  %i.bb = or disjoint i32 %i.ba, 4
  %i.bc = sub nsw i32 %i.bb, %i.ax
  %i.bd = lshr i32 %i.bc, 3
  %i.be = trunc i32 %i.bd to i16
  store i16 %i.be, ptr %i.am, align 2, !tbaa !27
  %i.bf = shl nsw i32 %i.ar, 3
  %i.bg = or disjoint i32 %i.bf, 3
  %i.bh = sub nsw i32 %i.bg, %i.az
  %i.bi = lshr i32 %i.bh, 3
  %i.bj = trunc i32 %i.bi to i16
  store i16 %i.bj, ptr %i.ap, align 2, !tbaa !27
  %i.bk = shl nsw i32 %i.at, 3
  %i.bl = or disjoint i32 %i.bk, 4
  %i.bm = add nsw i32 %i.bl, %i.az
  %i.bn = lshr i32 %i.bm, 3
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %1, align 2, !tbaa !27
  %i.bp = add nsw i32 %i.ax, 3
  %i.bq = lshr i32 %i.bp, 3
  %i.br = trunc i32 %i.bq to i16
  %i.bs = add i16 %i.av, %i.br
  store i16 %i.bs, ptr %i.au, align 2, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 98 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !27
  %i.bw = sext i16 %i.bv to i32                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 114 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !27
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = load i16, ptr %i.bt, align 2, !tbaa !27
  %i.cb = sext i16 %i.ca to i32                   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !27 ; 2 uses
  %i.ce = sext i16 %i.cd to i32
  %i.cf = sub nsw i32 %i.bw, %i.ce                ; 3 uses
  %i.cg = sub nsw i32 %i.bz, %i.cb
  %i.ch = add nsw i32 %i.cg, %i.cf                ; 2 uses
  %i.ci = shl nsw i32 %i.bw, 3
  %i.cj = or disjoint i32 %i.ci, 3
  %i.ck = sub nsw i32 %i.cj, %i.cf
  %i.cl = lshr i32 %i.ck, 3
  %i.cm = trunc i32 %i.cl to i16
  store i16 %i.cm, ptr %i.bu, align 2, !tbaa !27
  %i.cn = shl nsw i32 %i.bz, 3
  %i.co = or disjoint i32 %i.cn, 4
  %i.cp = sub nsw i32 %i.co, %i.ch
  %i.cq = lshr i32 %i.cp, 3
  %i.cr = trunc i32 %i.cq to i16
  store i16 %i.cr, ptr %i.bx, align 2, !tbaa !27
  %i.cs = shl nsw i32 %i.cb, 3
  %i.ct = or disjoint i32 %i.cs, 3
  %i.cu = add nsw i32 %i.ct, %i.ch
  %i.cv = lshr i32 %i.cu, 3
  %i.cw = trunc i32 %i.cv to i16
  store i16 %i.cw, ptr %i.bt, align 2, !tbaa !27
  %i.cx = add nsw i32 %i.cf, 4
  %i.cy = lshr i32 %i.cx, 3
  %i.cz = trunc i32 %i.cy to i16
  %i.da = add i16 %i.cd, %i.cz
  store i16 %i.da, ptr %i.cc, align 2, !tbaa !27
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !27
  %i.de = sext i16 %i.dd to i32                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !27
  %i.dh = sext i16 %i.dg to i32                   ; 2 uses
  %i.di = load i16, ptr %i.db, align 2, !tbaa !27
  %i.dj = sext i16 %i.di to i32                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !27 ; 2 uses
  %i.dm = sext i16 %i.dl to i32
  %i.dn = sub nsw i32 %i.de, %i.dm                ; 3 uses
  %i.do = sub nsw i32 %i.dh, %i.dj
  %i.dp = add nsw i32 %i.do, %i.dn                ; 2 uses
  %i.dq = shl nsw i32 %i.de, 3
  %i.dr = or disjoint i32 %i.dq, 4
  %i.ds = sub nsw i32 %i.dr, %i.dn
  %i.dt = lshr i32 %i.ds, 3
  %i.du = trunc i32 %i.dt to i16
  store i16 %i.du, ptr %i.dc, align 2, !tbaa !27
  %i.dv = shl nsw i32 %i.dh, 3
  %i.dw = or disjoint i32 %i.dv, 3
  %i.dx = sub nsw i32 %i.dw, %i.dp
  %i.dy = lshr i32 %i.dx, 3
  %i.dz = trunc i32 %i.dy to i16
  store i16 %i.dz, ptr %i.df, align 2, !tbaa !27
  %i.ea = shl nsw i32 %i.dj, 3
  %i.eb = or disjoint i32 %i.ea, 4
  %i.ec = add nsw i32 %i.eb, %i.dp
  %i.ed = lshr i32 %i.ec, 3
  %i.ee = trunc i32 %i.ed to i16
  store i16 %i.ee, ptr %i.db, align 2, !tbaa !27
  %i.ef = add nsw i32 %i.dn, 3
  %i.eg = lshr i32 %i.ef, 3
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = add i16 %i.dl, %i.eh
  store i16 %i.ei, ptr %i.dk, align 2, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 102 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !27
  %i.em = sext i16 %i.el to i32                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 118 ; 2 uses
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !27
  %i.ep = sext i16 %i.eo to i32                   ; 2 uses
  %i.eq = load i16, ptr %i.ej, align 2, !tbaa !27
  %i.er = sext i16 %i.eq to i32                   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 22 ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !27 ; 2 uses
  %i.eu = sext i16 %i.et to i32
  %i.ev = sub nsw i32 %i.em, %i.eu                ; 3 uses
  %i.ew = sub nsw i32 %i.ep, %i.er
  %i.ex = add nsw i32 %i.ew, %i.ev                ; 2 uses
  %i.ey = shl nsw i32 %i.em, 3
  %i.ez = or disjoint i32 %i.ey, 3
  %i.fa = sub nsw i32 %i.ez, %i.ev
  %i.fb = lshr i32 %i.fa, 3
  %i.fc = trunc i32 %i.fb to i16
  store i16 %i.fc, ptr %i.ek, align 2, !tbaa !27
  %i.fd = shl nsw i32 %i.ep, 3
  %i.fe = or disjoint i32 %i.fd, 4
  %i.ff = sub nsw i32 %i.fe, %i.ex
  %i.fg = lshr i32 %i.ff, 3
  %i.fh = trunc i32 %i.fg to i16
  store i16 %i.fh, ptr %i.en, align 2, !tbaa !27
  %i.fi = shl nsw i32 %i.er, 3
  %i.fj = or disjoint i32 %i.fi, 3
  %i.fk = add nsw i32 %i.fj, %i.ex
  %i.fl = lshr i32 %i.fk, 3
  %i.fm = trunc i32 %i.fl to i16
  store i16 %i.fm, ptr %i.ej, align 2, !tbaa !27
  %i.fn = add nsw i32 %i.ev, 4
  %i.fo = lshr i32 %i.fn, 3
  %i.fp = trunc i32 %i.fo to i16
  %i.fq = add i16 %i.et, %i.fp
  store i16 %i.fq, ptr %i.es, align 2, !tbaa !27
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !27
  %i.fu = sext i16 %i.ft to i32                   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !27
  %i.fx = sext i16 %i.fw to i32                   ; 2 uses
end_hunk_0
begin_hunk_1_@put_pixels16x16_c:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !30
  %i.ce = getelementptr inbounds i8, ptr %i.bs, i64 %2 ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.bt, i64 %2 ; 5 uses
  %i.cg = load i32, ptr %i.ce, align 1, !tbaa !28
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !30
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ci = load i32, ptr %i.ch, align 1, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cl = load i32, ptr %i.ck, align 1, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !28
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !30
  %i.cq = getelementptr inbounds i8, ptr %i.ce, i64 %2 ; 5 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cf, i64 %2 ; 5 uses
  %i.cs = load i32, ptr %i.cq, align 1, !tbaa !28
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !30
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cu = load i32, ptr %i.ct, align 1, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !30
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cx = load i32, ptr %i.cw, align 1, !tbaa !28
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.da = load i32, ptr %i.cz, align 1, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !30
  %i.dc = getelementptr inbounds i8, ptr %i.cq, i64 %2 ; 5 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cr, i64 %2 ; 5 uses
  %i.de = load i32, ptr %i.dc, align 1, !tbaa !28
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !30
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.dg = load i32, ptr %i.df, align 1, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dj = load i32, ptr %i.di, align 1, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !30
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.dm = load i32, ptr %i.dl, align 1, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !30
  %i.do = getelementptr inbounds i8, ptr %i.dc, i64 %2 ; 5 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dd, i64 %2 ; 5 uses
  %i.dq = load i32, ptr %i.do, align 1, !tbaa !28
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !30
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dv = load i32, ptr %i.du, align 1, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dy = load i32, ptr %i.dx, align 1, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !30
  %i.ea = getelementptr inbounds i8, ptr %i.do, i64 %2 ; 5 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dp, i64 %2 ; 5 uses
  %i.ec = load i32, ptr %i.ea, align 1, !tbaa !28
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !30
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !28
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.eh = load i32, ptr %i.eg, align 1, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ek = load i32, ptr %i.ej, align 1, !tbaa !28
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !30
  %i.em = getelementptr inbounds i8, ptr %i.ea, i64 %2 ; 5 uses
  %i.en = getelementptr inbounds i8, ptr %i.eb, i64 %2 ; 5 uses
  %i.eo = load i32, ptr %i.em, align 1, !tbaa !28
  store i32 %i.eo, ptr %i.en, align 4, !tbaa !30
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eq = load i32, ptr %i.ep, align 1, !tbaa !28
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !30
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.et = load i32, ptr %i.es, align 1, !tbaa !28
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !30
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.ew = load i32, ptr %i.ev, align 1, !tbaa !28
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !30
  %i.ey = getelementptr inbounds i8, ptr %i.em, i64 %2 ; 5 uses
  %i.ez = getelementptr inbounds i8, ptr %i.en, i64 %2 ; 5 uses
  %i.fa = load i32, ptr %i.ey, align 1, !tbaa !28
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fc = load i32, ptr %i.fb, align 1, !tbaa !28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !30
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ff = load i32, ptr %i.fe, align 1, !tbaa !28
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !30
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fi = load i32, ptr %i.fh, align 1, !tbaa !28
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !30
  %i.fk = getelementptr inbounds i8, ptr %i.ey, i64 %2 ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %i.ez, i64 %2 ; 5 uses
  %i.fm = load i32, ptr %i.fk, align 1, !tbaa !28
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !30
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fo = load i32, ptr %i.fn, align 1, !tbaa !28
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !30
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fr = load i32, ptr %i.fq, align 1, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  %i.fu = load i32, ptr %i.ft, align 1, !tbaa !28
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !30
  %i.fw = getelementptr inbounds i8, ptr %i.fk, i64 %2 ; 4 uses
  %i.fx = getelementptr inbounds i8, ptr %i.fl, i64 %2 ; 4 uses
  %i.fy = load i32, ptr %i.fw, align 1, !tbaa !28
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !30
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.ga = load i32, ptr %i.fz, align 1, !tbaa !28
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !30
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gd = load i32, ptr %i.gc, align 1, !tbaa !28
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !30
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  %i.gg = load i32, ptr %i.gf, align 1, !tbaa !28
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fx, i64 12
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !30
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_pixels16x16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 %3) #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.021 = phi i32 [ 0, %bb.a ], [ %i.ak, %bb.b ]
  %.01720 = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.b ] ; 6 uses
  %.01819 = phi ptr [ %1, %bb.a ], [ %i.ai, %bb.b ] ; 5 uses
  %i.a = load i32, ptr %.01720, align 4, !tbaa !30 ; 2 uses
  %i.b = load i32, ptr %.01819, align 1, !tbaa !28 ; 2 uses
  %i.c = or i32 %i.b, %i.a
  %i.d = xor i32 %i.b, %i.a
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 2139062143
  %i.g = sub i32 %i.c, %i.f
  store i32 %i.g, ptr %.01720, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %.01720, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01819, i64 4
  %i.k = load i32, ptr %i.j, align 1, !tbaa !28   ; 2 uses
  %i.l = or i32 %i.k, %i.i
  %i.m = xor i32 %i.k, %i.i
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, 2139062143
  %i.p = sub i32 %i.l, %i.o
  store i32 %i.p, ptr %i.h, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %.01720, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01819, i64 8
  %i.t = load i32, ptr %i.s, align 1, !tbaa !28   ; 2 uses
  %i.u = or i32 %i.t, %i.r
  %i.v = xor i32 %i.t, %i.r
  %i.w = lshr i32 %i.v, 1
  %i.x = and i32 %i.w, 2139062143
  %i.y = sub i32 %i.u, %i.x
  store i32 %i.y, ptr %i.q, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %.01720, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01819, i64 12
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !28 ; 2 uses
  %i.ad = or i32 %i.ac, %i.aa
  %i.ae = xor i32 %i.ac, %i.aa
  %i.af = lshr i32 %i.ae, 1
  %i.ag = and i32 %i.af, 2139062143
  %i.ah = sub i32 %i.ad, %i.ag
  store i32 %i.ah, ptr %i.z, align 4, !tbaa !30
  %i.ai = getelementptr inbounds i8, ptr %.01819, i64 %2
  %i.aj = getelementptr inbounds i8, ptr %.01720, i64 %2
  %i.ak = add nuw nsw i32 %.021, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, 16
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !43

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @put_pixels8x8_c(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 %3) #2 {
bb.a:
  %i.a = load i32, ptr %1, align 1, !tbaa !28
  store i32 %i.a, ptr %0, align 4, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 1, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds i8, ptr %1, i64 %2 ; 3 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %2 ; 3 uses
  %i.g = load i32, ptr %i.e, align 1, !tbaa !28
  store i32 %i.g, ptr %i.f, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 1, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !30
  %i.k = getelementptr inbounds i8, ptr %i.e, i64 %2 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %2 ; 3 uses
  %i.m = load i32, ptr %i.k, align 1, !tbaa !28
  store i32 %i.m, ptr %i.l, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 1, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !30
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %2 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.l, i64 %2 ; 3 uses
  %i.s = load i32, ptr %i.q, align 1, !tbaa !28
  store i32 %i.s, ptr %i.r, align 4, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 1, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.u, ptr %i.v, align 4, !tbaa !30
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %2 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 %2 ; 3 uses
  %i.y = load i32, ptr %i.w, align 1, !tbaa !28
  store i32 %i.y, ptr %i.x, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !30
  %i.ac = getelementptr inbounds i8, ptr %i.w, i64 %2 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %2 ; 3 uses
  %i.ae = load i32, ptr %i.ac, align 1, !tbaa !28
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !30
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 %2 ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ad, i64 %2 ; 3 uses
  %i.ak = load i32, ptr %i.ai, align 1, !tbaa !28
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 1, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !30
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %2 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %2 ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 1, !tbaa !28
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @avg_pixels8x8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 %3) #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !30     ; 2 uses
  %i.b = load i32, ptr %1, align 1, !tbaa !28     ; 2 uses
  %i.c = or i32 %i.b, %i.a
  %i.d = xor i32 %i.b, %i.a
  %i.e = lshr i32 %i.d, 1
  %i.f = and i32 %i.e, 2139062143
  %i.g = sub i32 %i.c, %i.f
  store i32 %i.g, ptr %0, align 4, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !30   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 1, !tbaa !28   ; 2 uses
  %i.l = or i32 %i.k, %i.i
  %i.m = xor i32 %i.k, %i.i
  %i.n = lshr i32 %i.m, 1
  %i.o = and i32 %i.n, 2139062143
  %i.p = sub i32 %i.l, %i.o
  store i32 %i.p, ptr %i.h, align 4, !tbaa !30
  %i.q = getelementptr inbounds i8, ptr %1, i64 %2 ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %2 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30   ; 2 uses
  %i.t = load i32, ptr %i.q, align 1, !tbaa !28   ; 2 uses
  %i.u = or i32 %i.t, %i.s
  %i.v = xor i32 %i.t, %i.s
  %i.w = lshr i32 %i.v, 1
  %i.x = and i32 %i.w, 2139062143
  %i.y = sub i32 %i.u, %i.x
  store i32 %i.y, ptr %i.r, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !30  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !28 ; 2 uses
  %i.ad = or i32 %i.ac, %i.aa
  %i.ae = xor i32 %i.ac, %i.aa
  %i.af = lshr i32 %i.ae, 1
  %i.ag = and i32 %i.af, 2139062143
  %i.ah = sub i32 %i.ad, %i.ag
  store i32 %i.ah, ptr %i.z, align 4, !tbaa !30
  %i.ai = getelementptr inbounds i8, ptr %i.q, i64 %2 ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %i.r, i64 %2 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !30 ; 2 uses
  %i.al = load i32, ptr %i.ai, align 1, !tbaa !28 ; 2 uses
  %i.am = or i32 %i.al, %i.ak
  %i.an = xor i32 %i.al, %i.ak
  %i.ao = lshr i32 %i.an, 1
  %i.ap = and i32 %i.ao, 2139062143
  %i.aq = sub i32 %i.am, %i.ap
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !30 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.au = load i32, ptr %i.at, align 1, !tbaa !28 ; 2 uses
  %i.av = or i32 %i.au, %i.as
  %i.aw = xor i32 %i.au, %i.as
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = and i32 %i.ax, 2139062143
  %i.az = sub i32 %i.av, %i.ay
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !30
  %i.ba = getelementptr inbounds i8, ptr %i.ai, i64 %2 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %i.aj, i64 %2 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !30 ; 2 uses
  %i.bd = load i32, ptr %i.ba, align 1, !tbaa !28 ; 2 uses
  %i.be = or i32 %i.bd, %i.bc
  %i.bf = xor i32 %i.bd, %i.bc
  %i.bg = lshr i32 %i.bf, 1
  %i.bh = and i32 %i.bg, 2139062143
  %i.bi = sub i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bb, align 4, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !30 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bm = load i32, ptr %i.bl, align 1, !tbaa !28 ; 2 uses
  %i.bn = or i32 %i.bm, %i.bk
  %i.bo = xor i32 %i.bm, %i.bk
  %i.bp = lshr i32 %i.bo, 1
  %i.bq = and i32 %i.bp, 2139062143
  %i.br = sub i32 %i.bn, %i.bq
  store i32 %i.br, ptr %i.bj, align 4, !tbaa !30
  %i.bs = getelementptr inbounds i8, ptr %i.ba, i64 %2 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bb, i64 %2 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !30 ; 2 uses
  %i.bv = load i32, ptr %i.bs, align 1, !tbaa !28 ; 2 uses
  %i.bw = or i32 %i.bv, %i.bu
  %i.bx = xor i32 %i.bv, %i.bu
  %i.by = lshr i32 %i.bx, 1
  %i.bz = and i32 %i.by, 2139062143
  %i.ca = sub i32 %i.bw, %i.bz
  store i32 %i.ca, ptr %i.bt, align 4, !tbaa !30
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.ce = load i32, ptr %i.cd, align 1, !tbaa !28 ; 2 uses
  %i.cf = or i32 %i.ce, %i.cc
  %i.cg = xor i32 %i.ce, %i.cc
  %i.ch = lshr i32 %i.cg, 1
  %i.ci = and i32 %i.ch, 2139062143
  %i.cj = sub i32 %i.cf, %i.ci
  store i32 %i.cj, ptr %i.cb, align 4, !tbaa !30
  %i.ck = getelementptr inbounds i8, ptr %i.bs, i64 %2 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.bt, i64 %2 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !30 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 1, !tbaa !28 ; 2 uses
  %i.co = or i32 %i.cn, %i.cm
  %i.cp = xor i32 %i.cn, %i.cm
  %i.cq = lshr i32 %i.cp, 1
  %i.cr = and i32 %i.cq, 2139062143
  %i.cs = sub i32 %i.co, %i.cr
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !30
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !30 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cw = load i32, ptr %i.cv, align 1, !tbaa !28 ; 2 uses
  %i.cx = or i32 %i.cw, %i.cu
  %i.cy = xor i32 %i.cw, %i.cu
  %i.cz = lshr i32 %i.cy, 1
  %i.da = and i32 %i.cz, 2139062143
  %i.db = sub i32 %i.cx, %i.da
  store i32 %i.db, ptr %i.ct, align 4, !tbaa !30
  %i.dc = getelementptr inbounds i8, ptr %i.ck, i64 %2 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cl, i64 %2 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !30 ; 2 uses
  %i.df = load i32, ptr %i.dc, align 1, !tbaa !28 ; 2 uses
  %i.dg = or i32 %i.df, %i.de
  %i.dh = xor i32 %i.df, %i.de
end_hunk_1
begin_hunk_2_@put_vc1_mspel_mc01_c:bb.a
  %i.dg = add i32 %i.df, %i.cz
  %i.dh = add i32 %i.dg, %.neg.i.4
  %i.di = ashr i32 %i.dh, 6                       ; 3 uses
  %.not.i80.i.4 = icmp ult i32 %i.di, 256
  %isnotneg.i81.i.4 = icmp sgt i32 %i.di, -1
  %i.dj = sext i1 %isnotneg.i81.i.4 to i8
  %i.dk = trunc nuw i32 %i.di to i8
  %.0.i82.i.4 = select i1 %.not.i80.i.4, i8 %i.dk, i8 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.172.i5, i64 4
  store i8 %.0.i82.i.4, ptr %i.dl, align 1, !tbaa !28
  %i.dm = getelementptr inbounds nuw i8, ptr %.175.i4, i64 5 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.a
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !28
  %i.dp = zext i8 %i.do to i32
  %i.dq = load i8, ptr %i.dm, align 1, !tbaa !28
  %i.dr = zext i8 %i.dq to i32
  %i.ds = mul nuw nsw i32 %i.dr, 53
  %i.dt = getelementptr inbounds i8, ptr %i.dm, i64 %2
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !28
  %i.dv = zext i8 %i.du to i32
  %i.dw = mul nuw nsw i32 %i.dv, 18
  %i.dx = getelementptr inbounds i8, ptr %i.dm, i64 %i.b
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !28
  %i.dz = zext i8 %i.dy to i32
  %.neg.i.5 = mul nsw i32 %i.dz, -3
  %i.ea = shl nuw nsw i32 %i.dp, 2
  %i.eb = sub i32 %i.c, %i.ea
  %i.ec = add i32 %i.eb, %i.ds
  %i.ed = add i32 %i.ec, %i.dw
  %i.ee = add i32 %i.ed, %.neg.i.5
  %i.ef = ashr i32 %i.ee, 6                       ; 3 uses
  %.not.i80.i.5 = icmp ult i32 %i.ef, 256
  %isnotneg.i81.i.5 = icmp sgt i32 %i.ef, -1
  %i.eg = sext i1 %isnotneg.i81.i.5 to i8
  %i.eh = trunc nuw i32 %i.ef to i8
  %.0.i82.i.5 = select i1 %.not.i80.i.5, i8 %i.eh, i8 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.172.i5, i64 5
  store i8 %.0.i82.i.5, ptr %i.ei, align 1, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %.175.i4, i64 6 ; 4 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.a
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !28
  %i.em = zext i8 %i.el to i32
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !28
  %i.eo = zext i8 %i.en to i32
  %i.ep = mul nuw nsw i32 %i.eo, 53
  %i.eq = getelementptr inbounds i8, ptr %i.ej, i64 %2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !28
  %i.es = zext i8 %i.er to i32
  %i.et = mul nuw nsw i32 %i.es, 18
  %i.eu = getelementptr inbounds i8, ptr %i.ej, i64 %i.b
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !28
  %i.ew = zext i8 %i.ev to i32
  %.neg.i.6 = mul nsw i32 %i.ew, -3
  %i.ex = shl nuw nsw i32 %i.em, 2
  %i.ey = sub i32 %i.c, %i.ex
  %i.ez = add i32 %i.ey, %i.ep
  %i.fa = add i32 %i.ez, %i.et
  %i.fb = add i32 %i.fa, %.neg.i.6
  %i.fc = ashr i32 %i.fb, 6                       ; 3 uses
  %.not.i80.i.6 = icmp ult i32 %i.fc, 256
  %isnotneg.i81.i.6 = icmp sgt i32 %i.fc, -1
  %i.fd = sext i1 %isnotneg.i81.i.6 to i8
  %i.fe = trunc nuw i32 %i.fc to i8
  %.0.i82.i.6 = select i1 %.not.i80.i.6, i8 %i.fe, i8 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %.172.i5, i64 6
  store i8 %.0.i82.i.6, ptr %i.ff, align 1, !tbaa !28
  %i.fg = getelementptr inbounds nuw i8, ptr %.175.i4, i64 7 ; 4 uses
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %i.a
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !28
  %i.fj = zext i8 %i.fi to i32
  %i.fk = load i8, ptr %i.fg, align 1, !tbaa !28
  %i.fl = zext i8 %i.fk to i32
  %i.fm = mul nuw nsw i32 %i.fl, 53
  %i.fn = getelementptr inbounds i8, ptr %i.fg, i64 %2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !28
  %i.fp = zext i8 %i.fo to i32
  %i.fq = mul nuw nsw i32 %i.fp, 18
  %i.fr = getelementptr inbounds i8, ptr %i.fg, i64 %i.b
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !28
  %i.ft = zext i8 %i.fs to i32
  %.neg.i.7 = mul nsw i32 %i.ft, -3
  %i.fu = shl nuw nsw i32 %i.fj, 2
  %i.fv = sub i32 %i.c, %i.fu
  %i.fw = add i32 %i.fv, %i.fm
  %i.fx = add i32 %i.fw, %i.fq
  %i.fy = add i32 %i.fx, %.neg.i.7
  %i.fz = ashr i32 %i.fy, 6                       ; 3 uses
  %.not.i80.i.7 = icmp ult i32 %i.fz, 256
  %isnotneg.i81.i.7 = icmp sgt i32 %i.fz, -1
  %i.ga = sext i1 %isnotneg.i81.i.7 to i8
  %i.gb = trunc nuw i32 %i.fz to i8
  %.0.i82.i.7 = select i1 %.not.i80.i.7, i8 %i.gb, i8 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %.172.i5, i64 7
  store i8 %.0.i82.i.7, ptr %i.gc, align 1, !tbaa !28
  %i.gd = getelementptr inbounds i8, ptr %.172.i5, i64 %2
  %i.ge = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ge, 8
  br i1 %exitcond.not, label %put_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !1

put_vc1_mspel_mc.exit:                            ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc01_16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.c = sub nsw i64 0, %2                        ; 2 uses
  %i.d = shl nsw i64 %2, 1                        ; 2 uses
  %i.e = add i32 %3, 31                           ; 2 uses
  %i.f = sub i64 %i.b, %i.a                       ; 2 uses
  %i.g = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.i = insertelement <2 x i64> %i.h, i64 %i.a, i64 1
  %i.j = add <2 x i64> %i.h, %i.i
  %i.k = add i64 %2, %i.b
  %i.l = shufflevector <2 x i64> %i.j, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.m = insertelement <4 x i64> %i.l, i64 %i.a, i64 2
  %i.n = insertelement <4 x i64> %i.m, i64 %i.f, i64 3
  %i.o = insertelement <4 x i64> <i64 poison, i64 poison, i64 poison, i64 1>, i64 %i.f, i64 0
  %i.p = insertelement <4 x i64> %i.o, i64 %i.b, i64 1
  %i.q = insertelement <4 x i64> %i.p, i64 %i.k, i64 2
  %i.r = sub <4 x i64> %i.n, %i.q                 ; 2 uses
  %i.s = icmp ugt <4 x i64> %i.r, <i64 -16, i64 -16, i64 -16, i64 15>
  %i.t = icmp ult <4 x i64> %i.r, <i64 -16, i64 -16, i64 -16, i64 15>
  %i.u = shufflevector <4 x i1> %i.s, <4 x i1> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.v = bitcast <4 x i1> %i.u to i4
  %.not = icmp eq i4 %i.v, 0
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.2.i6 = phi i32 [ 0, %bb.a ], [ %i.bq, %.loopexit ]
  %.172.i5 = phi ptr [ %0, %bb.a ], [ %i.bp, %.loopexit ] ; 3 uses
  %.175.i4 = phi ptr [ %1, %bb.a ], [ %i.bo, %.loopexit ] ; 6 uses
  br i1 %.not, label %vector.body, label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.w = getelementptr inbounds i8, ptr %.175.i4, i64 %i.c
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !28
  %i.x = zext <16 x i8> %wide.load to <16 x i32>
  %wide.load15 = load <16 x i8>, ptr %.175.i4, align 1, !tbaa !28
  %i.y = zext <16 x i8> %wide.load15 to <16 x i32>
  %i.z = mul nuw nsw <16 x i32> %i.y, splat (i32 53)
  %i.aa = getelementptr inbounds i8, ptr %.175.i4, i64 %2
  %wide.load16 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !28
  %i.ab = zext <16 x i8> %wide.load16 to <16 x i32>
  %i.ac = mul nuw nsw <16 x i32> %i.ab, splat (i32 18)
  %i.ad = getelementptr inbounds i8, ptr %.175.i4, i64 %i.d
  %wide.load17 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !28
  %i.ae = zext <16 x i8> %wide.load17 to <16 x i32>
  %i.af = mul nsw <16 x i32> %i.ae, splat (i32 -3)
  %i.ag = shl nuw nsw <16 x i32> %i.x, splat (i32 2)
  %i.ah = sub <16 x i32> %broadcast.splat, %i.ag
  %i.ai = add <16 x i32> %i.ah, %i.z
  %i.aj = add <16 x i32> %i.ai, %i.ac
  %i.ak = add <16 x i32> %i.aj, %i.af
  %i.al = ashr <16 x i32> %i.ak, splat (i32 6)    ; 3 uses
  %i.am = icmp ult <16 x i32> %i.al, splat (i32 256)
  %i.an = icmp sgt <16 x i32> %i.al, splat (i32 -1)
  %i.ao = sext <16 x i1> %i.an to <16 x i8>
  %i.ap = trunc nuw <16 x i32> %i.al to <16 x i8>
  %i.aq = select <16 x i1> %i.am, <16 x i8> %i.ap, <16 x i8> %i.ao
  store <16 x i8> %i.aq, ptr %.172.i5, align 1, !tbaa !28
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.175.i4, i64 %indvars.iv ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.c
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28
  %i.au = zext i8 %i.at to i32
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.aw, 53
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %2
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, 18
  %i.bc = getelementptr inbounds i8, ptr %i.ar, i64 %i.d
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !28
  %i.be = zext i8 %i.bd to i32
  %.neg.i94.i = mul nsw i32 %i.be, -3
  %i.bf = shl nuw nsw i32 %i.au, 2
  %i.bg = sub i32 %i.e, %i.bf
  %i.bh = add i32 %i.bg, %i.ax
  %i.bi = add i32 %i.bh, %i.bb
  %i.bj = add i32 %i.bi, %.neg.i94.i
  %i.bk = ashr i32 %i.bj, 6                       ; 3 uses
  %.not.i80.i = icmp ult i32 %i.bk, 256
  %isnotneg.i81.i = icmp sgt i32 %i.bk, -1
  %i.bl = sext i1 %isnotneg.i81.i to i8
  %i.bm = trunc nuw i32 %i.bk to i8
  %.0.i82.i = select i1 %.not.i80.i, i8 %i.bm, i8 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.172.i5, i64 %indvars.iv
  store i8 %.0.i82.i, ptr %i.bn, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !44

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.bo = getelementptr inbounds i8, ptr %.175.i4, i64 %2
  %i.bp = getelementptr inbounds i8, ptr %.172.i5, i64 %2
  %i.bq = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond9.not = icmp eq i32 %i.bq, 16
  br i1 %exitcond9.not, label %put_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !2

put_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc01_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
.preheader.lver.check:
  %i.a = sub nsw i64 0, %2                        ; 16 uses
  %i.b = shl nsw i64 %2, 1                        ; 16 uses
  %i.c = add i32 %3, 31                           ; 16 uses
  %ident.check.not = icmp eq i64 %2, 1
  br i1 %ident.check.not, label %.preheader.ph, label %.preheader.lver.orig

.preheader.lver.orig:                             ; preds = %.preheader.lver.check, %.preheader.lver.orig
  %.2.i6.lver.orig = phi i32 [ %i.ii, %.preheader.lver.orig ], [ 0, %.preheader.lver.check ]
  %.178.i5.lver.orig = phi ptr [ %i.ih, %.preheader.lver.orig ], [ %0, %.preheader.lver.check ] ; 10 uses
  %.181.i4.lver.orig = phi ptr [ %i.l, %.preheader.lver.orig ], [ %1, %.preheader.lver.check ] ; 11 uses
  %i.d = load i8, ptr %.178.i5.lver.orig, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i16
  %i.f = getelementptr inbounds i8, ptr %.181.i4.lver.orig, i64 %i.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  %i.h = zext i8 %i.g to i32
  %i.i = load i8, ptr %.181.i4.lver.orig, align 1, !tbaa !28
  %i.j = zext i8 %i.i to i32
  %i.k = mul nuw nsw i32 %i.j, 53
  %i.l = getelementptr inbounds i8, ptr %.181.i4.lver.orig, i64 %2 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %i.n = zext i8 %i.m to i32
  %i.o = mul nuw nsw i32 %i.n, 18
  %i.p = getelementptr inbounds i8, ptr %.181.i4.lver.orig, i64 %i.b
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28
  %i.r = zext i8 %i.q to i32
  %.neg.i100.i.lver.orig = mul nsw i32 %i.r, -3
  %i.s = shl nuw nsw i32 %i.h, 2
  %i.t = sub i32 %i.c, %i.s
  %i.u = add i32 %i.t, %i.k
  %i.v = add i32 %i.u, %i.o
  %i.w = add i32 %i.v, %.neg.i100.i.lver.orig
  %i.x = ashr i32 %i.w, 6                         ; 3 uses
  %.not.i86.i.lver.orig = icmp ult i32 %i.x, 256
  %isnotneg.i87.i.lver.orig = icmp sgt i32 %i.x, -1
  %i.y = sext i1 %isnotneg.i87.i.lver.orig to i16
  %i.z = trunc nuw i32 %i.x to i16
  %.0.i88.i.lver.orig = select i1 %.not.i86.i.lver.orig, i16 %i.z, i16 %i.y
  %i.aa = and i16 %.0.i88.i.lver.orig, 255
  %i.ab = add nuw nsw i16 %i.e, 1
  %i.ac = add nuw nsw i16 %i.ab, %i.aa
  %i.ad = lshr i16 %i.ac, 1
  %i.ae = trunc nuw i16 %i.ad to i8
  store i8 %i.ae, ptr %.178.i5.lver.orig, align 1, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i16
  %i.ai = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 1 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.a
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.an, 53
  %i.ap = getelementptr inbounds i8, ptr %i.ai, i64 %2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ar, 18
  %i.at = getelementptr inbounds i8, ptr %i.ai, i64 %i.b
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %i.av = zext i8 %i.au to i32
  %.neg.i100.i.1.lver.orig = mul nsw i32 %i.av, -3
  %i.aw = shl nuw nsw i32 %i.al, 2
  %i.ax = sub i32 %i.c, %i.aw
  %i.ay = add i32 %i.ax, %i.ao
  %i.az = add i32 %i.ay, %i.as
  %i.ba = add i32 %i.az, %.neg.i100.i.1.lver.orig
  %i.bb = ashr i32 %i.ba, 6                       ; 3 uses
  %.not.i86.i.1.lver.orig = icmp ult i32 %i.bb, 256
  %isnotneg.i87.i.1.lver.orig = icmp sgt i32 %i.bb, -1
  %i.bc = sext i1 %isnotneg.i87.i.1.lver.orig to i16
  %i.bd = trunc nuw i32 %i.bb to i16
  %.0.i88.i.1.lver.orig = select i1 %.not.i86.i.1.lver.orig, i16 %i.bd, i16 %i.bc
  %i.be = and i16 %.0.i88.i.1.lver.orig, 255
  %i.bf = add nuw nsw i16 %i.ah, 1
  %i.bg = add nuw nsw i16 %i.bf, %i.be
  %i.bh = lshr i16 %i.bg, 1
  %i.bi = trunc nuw i16 %i.bh to i8
  store i8 %i.bi, ptr %i.af, align 1, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 2 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 2 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.a
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !28
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul nuw nsw i32 %i.br, 53
  %i.bt = getelementptr inbounds i8, ptr %i.bm, i64 %2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.bv = zext i8 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bv, 18
  %i.bx = getelementptr inbounds i8, ptr %i.bm, i64 %i.b
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  %.neg.i100.i.2.lver.orig = mul nsw i32 %i.bz, -3
  %i.ca = shl nuw nsw i32 %i.bp, 2
  %i.cb = sub i32 %i.c, %i.ca
  %i.cc = add i32 %i.cb, %i.bs
  %i.cd = add i32 %i.cc, %i.bw
  %i.ce = add i32 %i.cd, %.neg.i100.i.2.lver.orig
  %i.cf = ashr i32 %i.ce, 6                       ; 3 uses
  %.not.i86.i.2.lver.orig = icmp ult i32 %i.cf, 256
  %isnotneg.i87.i.2.lver.orig = icmp sgt i32 %i.cf, -1
  %i.cg = sext i1 %isnotneg.i87.i.2.lver.orig to i16
  %i.ch = trunc nuw i32 %i.cf to i16
  %.0.i88.i.2.lver.orig = select i1 %.not.i86.i.2.lver.orig, i16 %i.ch, i16 %i.cg
  %i.ci = and i16 %.0.i88.i.2.lver.orig, 255
  %i.cj = add nuw nsw i16 %i.bl, 1
  %i.ck = add nuw nsw i16 %i.cj, %i.ci
  %i.cl = lshr i16 %i.ck, 1
  %i.cm = trunc nuw i16 %i.cl to i8
  store i8 %i.cm, ptr %i.bj, align 1, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 3 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !28
  %i.cp = zext i8 %i.co to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 3 ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.a
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = zext i8 %i.cs to i32
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.cv = zext i8 %i.cu to i32
  %i.cw = mul nuw nsw i32 %i.cv, 53
  %i.cx = getelementptr inbounds i8, ptr %i.cq, i64 %2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !28
  %i.cz = zext i8 %i.cy to i32
  %i.da = mul nuw nsw i32 %i.cz, 18
  %i.db = getelementptr inbounds i8, ptr %i.cq, i64 %i.b
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !28
  %i.dd = zext i8 %i.dc to i32
  %.neg.i100.i.3.lver.orig = mul nsw i32 %i.dd, -3
  %i.de = shl nuw nsw i32 %i.ct, 2
  %i.df = sub i32 %i.c, %i.de
  %i.dg = add i32 %i.df, %i.cw
  %i.dh = add i32 %i.dg, %i.da
  %i.di = add i32 %i.dh, %.neg.i100.i.3.lver.orig
  %i.dj = ashr i32 %i.di, 6                       ; 3 uses
  %.not.i86.i.3.lver.orig = icmp ult i32 %i.dj, 256
  %isnotneg.i87.i.3.lver.orig = icmp sgt i32 %i.dj, -1
  %i.dk = sext i1 %isnotneg.i87.i.3.lver.orig to i16
  %i.dl = trunc nuw i32 %i.dj to i16
  %.0.i88.i.3.lver.orig = select i1 %.not.i86.i.3.lver.orig, i16 %i.dl, i16 %i.dk
  %i.dm = and i16 %.0.i88.i.3.lver.orig, 255
  %i.dn = add nuw nsw i16 %i.cp, 1
  %i.do = add nuw nsw i16 %i.dn, %i.dm
  %i.dp = lshr i16 %i.do, 1
  %i.dq = trunc nuw i16 %i.dp to i8
  store i8 %i.dq, ptr %i.cn, align 1, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 4 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !28
  %i.dt = zext i8 %i.ds to i16
  %i.du = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 4 ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %i.a
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !28
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !28
  %i.dz = zext i8 %i.dy to i32
  %i.ea = mul nuw nsw i32 %i.dz, 53
  %i.eb = getelementptr inbounds i8, ptr %i.du, i64 %2
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !28
  %i.ed = zext i8 %i.ec to i32
  %i.ee = mul nuw nsw i32 %i.ed, 18
  %i.ef = getelementptr inbounds i8, ptr %i.du, i64 %i.b
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  %i.eh = zext i8 %i.eg to i32
  %.neg.i100.i.4.lver.orig = mul nsw i32 %i.eh, -3
  %i.ei = shl nuw nsw i32 %i.dx, 2
  %i.ej = sub i32 %i.c, %i.ei
  %i.ek = add i32 %i.ej, %i.ea
  %i.el = add i32 %i.ek, %i.ee
  %i.em = add i32 %i.el, %.neg.i100.i.4.lver.orig
  %i.en = ashr i32 %i.em, 6                       ; 3 uses
  %.not.i86.i.4.lver.orig = icmp ult i32 %i.en, 256
  %isnotneg.i87.i.4.lver.orig = icmp sgt i32 %i.en, -1
  %i.eo = sext i1 %isnotneg.i87.i.4.lver.orig to i16
  %i.ep = trunc nuw i32 %i.en to i16
  %.0.i88.i.4.lver.orig = select i1 %.not.i86.i.4.lver.orig, i16 %i.ep, i16 %i.eo
  %i.eq = and i16 %.0.i88.i.4.lver.orig, 255
  %i.er = add nuw nsw i16 %i.dt, 1
  %i.es = add nuw nsw i16 %i.er, %i.eq
  %i.et = lshr i16 %i.es, 1
  %i.eu = trunc nuw i16 %i.et to i8
  store i8 %i.eu, ptr %i.dr, align 1, !tbaa !28
  %i.ev = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 5 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !28
end_hunk_2
begin_hunk_3_@avg_vc1_mspel_mc01_c:.preheader.lver.check
  store i8 %i.mx, ptr %i.lu, align 1, !tbaa !28
  %i.my = getelementptr inbounds nuw i8, ptr %.178.i5, i64 4 ; 2 uses
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !28
  %i.na = zext i8 %i.mz to i16
  %i.nb = getelementptr inbounds nuw i8, ptr %.181.i4, i64 4 ; 4 uses
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 %i.a
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !28
  %i.ne = zext i8 %i.nd to i32
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !28
  %i.ng = zext i8 %i.nf to i32
  %i.nh = mul nuw nsw i32 %i.ng, 53
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 %2
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !28
  %i.nk = zext i8 %i.nj to i32
  %i.nl = mul nuw nsw i32 %i.nk, 18
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.b
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !28
  %i.no = zext i8 %i.nn to i32
  %.neg.i100.i.4 = mul nsw i32 %i.no, -3
  %i.np = shl nuw nsw i32 %i.ne, 2
  %i.nq = sub i32 %i.c, %i.np
  %i.nr = add i32 %i.nq, %i.nh
  %i.ns = add i32 %i.nr, %i.nl
  %i.nt = add i32 %i.ns, %.neg.i100.i.4
  %i.nu = ashr i32 %i.nt, 6                       ; 3 uses
  %.not.i86.i.4 = icmp ult i32 %i.nu, 256
  %isnotneg.i87.i.4 = icmp sgt i32 %i.nu, -1
  %i.nv = sext i1 %isnotneg.i87.i.4 to i16
  %i.nw = trunc nuw i32 %i.nu to i16
  %.0.i88.i.4 = select i1 %.not.i86.i.4, i16 %i.nw, i16 %i.nv
  %i.nx = and i16 %.0.i88.i.4, 255
  %i.ny = add nuw nsw i16 %i.na, 1
  %i.nz = add nuw nsw i16 %i.ny, %i.nx
  %i.oa = lshr i16 %i.nz, 1
  %i.ob = trunc nuw i16 %i.oa to i8
  store i8 %i.ob, ptr %i.my, align 1, !tbaa !28
  %i.oc = getelementptr inbounds nuw i8, ptr %.178.i5, i64 5 ; 2 uses
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !28
  %i.oe = zext i8 %i.od to i16
  %i.of = getelementptr inbounds nuw i8, ptr %.181.i4, i64 5 ; 4 uses
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 %i.a
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !28
  %i.oi = zext i8 %i.oh to i32
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !28
  %i.ok = zext i8 %i.oj to i32
  %i.ol = mul nuw nsw i32 %i.ok, 53
  %i.om = getelementptr inbounds nuw i8, ptr %i.of, i64 %2
  %i.on = load i8, ptr %i.om, align 1, !tbaa !28
  %i.oo = zext i8 %i.on to i32
  %i.op = mul nuw nsw i32 %i.oo, 18
  %i.oq = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.b
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !28
  %i.os = zext i8 %i.or to i32
  %.neg.i100.i.5 = mul nsw i32 %i.os, -3
  %i.ot = shl nuw nsw i32 %i.oi, 2
  %i.ou = sub i32 %i.c, %i.ot
  %i.ov = add i32 %i.ou, %i.ol
  %i.ow = add i32 %i.ov, %i.op
  %i.ox = add i32 %i.ow, %.neg.i100.i.5
  %i.oy = ashr i32 %i.ox, 6                       ; 3 uses
  %.not.i86.i.5 = icmp ult i32 %i.oy, 256
  %isnotneg.i87.i.5 = icmp sgt i32 %i.oy, -1
  %i.oz = sext i1 %isnotneg.i87.i.5 to i16
  %i.pa = trunc nuw i32 %i.oy to i16
  %.0.i88.i.5 = select i1 %.not.i86.i.5, i16 %i.pa, i16 %i.oz
  %i.pb = and i16 %.0.i88.i.5, 255
  %i.pc = add nuw nsw i16 %i.oe, 1
  %i.pd = add nuw nsw i16 %i.pc, %i.pb
  %i.pe = lshr i16 %i.pd, 1
  %i.pf = trunc nuw i16 %i.pe to i8
  store i8 %i.pf, ptr %i.oc, align 1, !tbaa !28
  %i.pg = getelementptr inbounds nuw i8, ptr %.178.i5, i64 6
  %i.ph = getelementptr inbounds nuw i8, ptr %.181.i4, i64 6 ; 4 uses
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %i.a
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !28
  %i.pk = zext i8 %i.pj to i32
  %i.pl = load i8, ptr %i.ph, align 1, !tbaa !28
  %i.pm = zext i8 %i.pl to i32
  %i.pn = mul nuw nsw i32 %i.pm, 53
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 %2
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !28
  %i.pq = zext i8 %i.pp to i32
  %i.pr = mul nuw nsw i32 %i.pq, 18
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ph, i64 %i.b
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !28
  %i.pu = zext i8 %i.pt to i32
  %.neg.i100.i.6 = mul nsw i32 %i.pu, -3
  %i.pv = shl nuw nsw i32 %i.pk, 2
  %i.pw = sub i32 %i.c, %i.pv
  %i.px = add i32 %i.pw, %i.pn
  %i.py = add i32 %i.px, %i.pr
  %i.pz = add i32 %i.py, %.neg.i100.i.6
  %i.qa = ashr i32 %i.pz, 6                       ; 3 uses
  %.not.i86.i.6 = icmp ult i32 %i.qa, 256
  %isnotneg.i87.i.6 = icmp sgt i32 %i.qa, -1
  %i.qb = sext i1 %isnotneg.i87.i.6 to i16
  %i.qc = trunc nuw i32 %i.qa to i16
  %.0.i88.i.6 = select i1 %.not.i86.i.6, i16 %i.qc, i16 %i.qb
  %i.qd = and i16 %.0.i88.i.6, 255
  %i.qe = add nuw nsw i16 %store_forwarded, 1
  %i.qf = add nuw nsw i16 %i.qe, %i.qd
  %i.qg = lshr i16 %i.qf, 1
  %i.qh = trunc nuw i16 %i.qg to i8
  store i8 %i.qh, ptr %i.pg, align 1, !tbaa !28
  %i.qi = getelementptr inbounds nuw i8, ptr %.178.i5, i64 7 ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !28
  %i.qk = zext i8 %i.qj to i16
  %i.ql = getelementptr inbounds nuw i8, ptr %.181.i4, i64 7 ; 4 uses
  %i.qm = getelementptr inbounds i8, ptr %i.ql, i64 %i.a
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !28
  %i.qo = zext i8 %i.qn to i32
  %i.qp = load i8, ptr %i.ql, align 1, !tbaa !28
  %i.qq = zext i8 %i.qp to i32
  %i.qr = mul nuw nsw i32 %i.qq, 53
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ql, i64 %2
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !28
  %i.qu = zext i8 %i.qt to i32
  %i.qv = mul nuw nsw i32 %i.qu, 18
  %i.qw = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.b
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !28
  %i.qy = zext i8 %i.qx to i32
  %.neg.i100.i.7 = mul nsw i32 %i.qy, -3
  %i.qz = shl nuw nsw i32 %i.qo, 2
  %i.ra = sub i32 %i.c, %i.qz
  %i.rb = add i32 %i.ra, %i.qr
  %i.rc = add i32 %i.rb, %i.qv
  %i.rd = add i32 %i.rc, %.neg.i100.i.7
  %i.re = ashr i32 %i.rd, 6                       ; 3 uses
  %.not.i86.i.7 = icmp ult i32 %i.re, 256
  %isnotneg.i87.i.7 = icmp sgt i32 %i.re, -1
  %i.rf = sext i1 %isnotneg.i87.i.7 to i16
  %i.rg = trunc nuw i32 %i.re to i16
  %.0.i88.i.7 = select i1 %.not.i86.i.7, i16 %i.rg, i16 %i.rf
  %i.rh = and i16 %.0.i88.i.7, 255
  %i.ri = add nuw nsw i16 %i.qk, 1
  %i.rj = add nuw nsw i16 %i.ri, %i.rh
  %i.rk = lshr i16 %i.rj, 1                       ; 2 uses
  %i.rl = trunc nuw i16 %i.rk to i8
  store i8 %i.rl, ptr %i.qi, align 1, !tbaa !28
  %i.rm = getelementptr inbounds nuw i8, ptr %.178.i5, i64 %2
  %i.rn = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.rn, 8
  br i1 %exitcond.not, label %avg_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !3

avg_vc1_mspel_mc.exit:                            ; preds = %.preheader.lver.orig, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc01_16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = sub nsw i64 0, %2                        ; 3 uses
  %i.b = shl nsw i64 %2, 1                        ; 3 uses
  %i.c = add i32 %3, 31                           ; 2 uses
  %i.d = mul i64 %2, 15
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  %scevgep10 = getelementptr i8, ptr %1, i64 %i.b
  %i.f = mul i64 %2, 17
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep12 = getelementptr i8, ptr %1, i64 %2
  %i.h = shl i64 %2, 4
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.k = insertelement <2 x ptr> %i.j, ptr %i.g, i64 1
  %i.l = getelementptr i8, <2 x ptr> %i.k, i64 16
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep15 = getelementptr i8, ptr %1, i64 %i.a
  %i.m = mul i64 %2, 14
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %scevgep16 = getelementptr i8, ptr %i.n, i64 16
  %i.o = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.p = shufflevector <4 x ptr> %i.o, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.q = insertelement <4 x ptr> poison, ptr %scevgep12, i64 0
  %i.r = insertelement <4 x ptr> %i.q, ptr %scevgep10, i64 1
  %i.s = insertelement <4 x ptr> %i.r, ptr %1, i64 2
  %i.t = insertelement <4 x ptr> %i.s, ptr %scevgep15, i64 3
  %i.u = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.v = shufflevector <4 x ptr> %i.u, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.w = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = insertelement <4 x ptr> %i.w, ptr %scevgep14, i64 2
  %i.y = insertelement <4 x ptr> %i.x, ptr %scevgep16, i64 3
  %i.z = icmp ult <4 x ptr> %i.p, %i.y
  %i.aa = icmp ult <4 x ptr> %i.t, %i.v
  %stride.check21 = icmp slt i64 %2, 0
  %i.ab = and <4 x i1> %i.z, %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp ne i4 %i.ac, 0
  %op.rdx = or i1 %i.ad, %stride.check21
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.2.i6 = phi i32 [ 0, %bb.a ], [ %i.cl, %.loopexit ]
  %.178.i5 = phi ptr [ %0, %bb.a ], [ %i.ck, %.loopexit ] ; 4 uses
  %.181.i4 = phi ptr [ %1, %bb.a ], [ %i.cj, %.loopexit ] ; 6 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %.178.i5, align 1, !tbaa !28, !alias.scope !52, !noalias !53
  %i.ae = zext <16 x i8> %wide.load to <16 x i16>
  %i.af = getelementptr inbounds i8, ptr %.181.i4, i64 %i.a
  %wide.load35 = load <16 x i8>, ptr %i.af, align 1, !tbaa !28, !alias.scope !54
  %i.ag = zext <16 x i8> %wide.load35 to <16 x i32>
  %wide.load36 = load <16 x i8>, ptr %.181.i4, align 1, !tbaa !28, !alias.scope !55
  %i.ah = zext <16 x i8> %wide.load36 to <16 x i32>
  %i.ai = mul nuw nsw <16 x i32> %i.ah, splat (i32 53)
  %i.aj = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %2
  %wide.load37 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !28, !alias.scope !56
  %i.ak = zext <16 x i8> %wide.load37 to <16 x i32>
  %i.al = mul nuw nsw <16 x i32> %i.ak, splat (i32 18)
  %i.am = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %i.b
  %wide.load38 = load <16 x i8>, ptr %i.am, align 1, !tbaa !28, !alias.scope !57
  %i.an = zext <16 x i8> %wide.load38 to <16 x i32>
  %i.ao = mul nsw <16 x i32> %i.an, splat (i32 -3)
  %i.ap = shl nuw nsw <16 x i32> %i.ag, splat (i32 2)
  %i.aq = sub <16 x i32> %broadcast.splat, %i.ap
  %i.ar = add <16 x i32> %i.aq, %i.ai
  %i.as = add <16 x i32> %i.ar, %i.al
  %i.at = add <16 x i32> %i.as, %i.ao
  %i.au = ashr <16 x i32> %i.at, splat (i32 6)    ; 3 uses
  %i.av = icmp ult <16 x i32> %i.au, splat (i32 256)
  %i.aw = icmp sgt <16 x i32> %i.au, splat (i32 -1)
  %i.ax = sext <16 x i1> %i.aw to <16 x i16>
  %i.ay = trunc nuw <16 x i32> %i.au to <16 x i16>
  %i.az = select <16 x i1> %i.av, <16 x i16> %i.ay, <16 x i16> %i.ax
  %i.ba = and <16 x i16> %i.az, splat (i16 255)
  %i.bb = add nuw nsw <16 x i16> %i.ae, splat (i16 1)
  %i.bc = add nuw nsw <16 x i16> %i.bb, %i.ba
  %i.bd = lshr <16 x i16> %i.bc, splat (i16 1)
  %i.be = trunc nuw <16 x i16> %i.bd to <16 x i8>
  store <16 x i8> %i.be, ptr %.178.i5, align 1, !tbaa !28, !alias.scope !52, !noalias !53
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.178.i5, i64 %indvars.iv ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bh = zext i8 %i.bg to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %indvars.iv ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.a
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %i.bm = load i8, ptr %i.bi, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = mul nuw nsw i32 %i.bn, 53
  %i.bp = getelementptr inbounds i8, ptr %i.bi, i64 %2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !28
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul nuw nsw i32 %i.br, 18
  %i.bt = getelementptr inbounds i8, ptr %i.bi, i64 %i.b
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.bv = zext i8 %i.bu to i32
  %.neg.i100.i = mul nsw i32 %i.bv, -3
  %i.bw = shl nuw nsw i32 %i.bl, 2
  %i.bx = sub i32 %i.c, %i.bw
  %i.by = add i32 %i.bx, %i.bo
  %i.bz = add i32 %i.by, %i.bs
  %i.ca = add i32 %i.bz, %.neg.i100.i
  %i.cb = ashr i32 %i.ca, 6                       ; 3 uses
  %.not.i86.i = icmp ult i32 %i.cb, 256
  %isnotneg.i87.i = icmp sgt i32 %i.cb, -1
  %i.cc = sext i1 %isnotneg.i87.i to i16
  %i.cd = trunc nuw i32 %i.cb to i16
  %.0.i88.i = select i1 %.not.i86.i, i16 %i.cd, i16 %i.cc
  %i.ce = and i16 %.0.i88.i, 255
  %i.cf = add nuw nsw i16 %i.bh, 1
  %i.cg = add nuw nsw i16 %i.cf, %i.ce
  %i.ch = lshr i16 %i.cg, 1
  %i.ci = trunc nuw i16 %i.ch to i8
  store i8 %i.ci, ptr %i.bf, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !51

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.cj = getelementptr inbounds i8, ptr %.181.i4, i64 %2
  %i.ck = getelementptr inbounds i8, ptr %.178.i5, i64 %2
  %i.cl = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond9.not = icmp eq i32 %i.cl, 16
  br i1 %exitcond9.not, label %avg_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !4

avg_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc02_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = sub nsw i64 0, %2                        ; 8 uses
  %i.b = shl nsw i64 %2, 1                        ; 8 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.2.i6 = phi i32 [ 0, %bb.a ], [ %i.fn, %.preheader ]
  %.172.i5 = phi ptr [ %0, %bb.a ], [ %i.fm, %.preheader ] ; 9 uses
  %.175.i4 = phi ptr [ %1, %bb.a ], [ %i.h, %.preheader ] ; 11 uses
  %i.c = getelementptr inbounds i8, ptr %.175.i4, i64 %i.a
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i32
  %i.f = load i8, ptr %.175.i4, align 1, !tbaa !28
  %i.g = zext i8 %i.f to i32
  %i.h = getelementptr inbounds i8, ptr %.175.i4, i64 %2 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds i8, ptr %.175.i4, i64 %i.b
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i32
  %i.n = add nuw nsw i32 %i.j, %i.g
  %i.o = mul nuw nsw i32 %i.n, 9
  %i.p = add nuw nsw i32 %i.m, %i.e
  %i.q = sub i32 %3, %i.p
  %.neg = add i32 %i.q, 7
  %i.r = add i32 %.neg, %i.o
  %i.s = ashr i32 %i.r, 4                         ; 3 uses
  %.not.i80.i = icmp ult i32 %i.s, 256
  %isnotneg.i81.i = icmp sgt i32 %i.s, -1
  %i.t = sext i1 %isnotneg.i81.i to i8
  %i.u = trunc nuw i32 %i.s to i8
  %.0.i82.i = select i1 %.not.i80.i, i8 %i.u, i8 %i.t
  store i8 %.0.i82.i, ptr %.172.i5, align 1, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %.175.i4, i64 1 ; 4 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.a
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  %i.y = zext i8 %i.x to i32
  %i.z = load i8, ptr %i.v, align 1, !tbaa !28
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 %2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !28
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 %i.b
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nuw nsw i32 %i.ad, %i.aa
  %i.ai = mul nuw nsw i32 %i.ah, 9
  %i.aj = add nuw nsw i32 %i.ag, %i.y
  %i.ak = sub i32 %3, %i.aj
  %.neg.1 = add i32 %i.ak, 7
  %i.al = add i32 %.neg.1, %i.ai
  %i.am = ashr i32 %i.al, 4                       ; 3 uses
  %.not.i80.i.1 = icmp ult i32 %i.am, 256
  %isnotneg.i81.i.1 = icmp sgt i32 %i.am, -1
  %i.an = sext i1 %isnotneg.i81.i.1 to i8
  %i.ao = trunc nuw i32 %i.am to i8
  %.0.i82.i.1 = select i1 %.not.i80.i.1, i8 %i.ao, i8 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.172.i5, i64 1
  store i8 %.0.i82.i.1, ptr %i.ap, align 1, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %.175.i4, i64 2 ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.a
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.at = zext i8 %i.as to i32
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !28
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds i8, ptr %i.aq, i64 %i.b
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.ay, %i.av
  %i.bd = mul nuw nsw i32 %i.bc, 9
  %i.be = add nuw nsw i32 %i.bb, %i.at
  %i.bf = sub i32 %3, %i.be
  %.neg.2 = add i32 %i.bf, 7
  %i.bg = add i32 %.neg.2, %i.bd
  %i.bh = ashr i32 %i.bg, 4                       ; 3 uses
  %.not.i80.i.2 = icmp ult i32 %i.bh, 256
  %isnotneg.i81.i.2 = icmp sgt i32 %i.bh, -1
  %i.bi = sext i1 %isnotneg.i81.i.2 to i8
  %i.bj = trunc nuw i32 %i.bh to i8
  %.0.i82.i.2 = select i1 %.not.i80.i.2, i8 %i.bj, i8 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %.172.i5, i64 2
  store i8 %.0.i82.i.2, ptr %i.bk, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %.175.i4, i64 3 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.a
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !28
  %i.bo = zext i8 %i.bn to i32
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bq = zext i8 %i.bp to i32
  %i.br = getelementptr inbounds i8, ptr %i.bl, i64 %2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = zext i8 %i.bs to i32
  %i.bu = getelementptr inbounds i8, ptr %i.bl, i64 %i.b
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bt, %i.bq
  %i.by = mul nuw nsw i32 %i.bx, 9
  %i.bz = add nuw nsw i32 %i.bw, %i.bo
  %i.ca = sub i32 %3, %i.bz
  %.neg.3 = add i32 %i.ca, 7
  %i.cb = add i32 %.neg.3, %i.by
  %i.cc = ashr i32 %i.cb, 4                       ; 3 uses
  %.not.i80.i.3 = icmp ult i32 %i.cc, 256
  %isnotneg.i81.i.3 = icmp sgt i32 %i.cc, -1
  %i.cd = sext i1 %isnotneg.i81.i.3 to i8
  %i.ce = trunc nuw i32 %i.cc to i8
  %.0.i82.i.3 = select i1 %.not.i80.i.3, i8 %i.ce, i8 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.172.i5, i64 3
  store i8 %.0.i82.i.3, ptr %i.cf, align 1, !tbaa !28
  %i.cg = getelementptr inbounds nuw i8, ptr %.175.i4, i64 4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.a
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i8, ptr %i.cg, align 1, !tbaa !28
  %i.cl = zext i8 %i.ck to i32
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !28
  %i.co = zext i8 %i.cn to i32
  %i.cp = getelementptr inbounds i8, ptr %i.cg, i64 %i.b
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !28
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.co, %i.cl
  %i.ct = mul nuw nsw i32 %i.cs, 9
  %i.cu = add nuw nsw i32 %i.cr, %i.cj
  %i.cv = sub i32 %3, %i.cu
  %.neg.4 = add i32 %i.cv, 7
  %i.cw = add i32 %.neg.4, %i.ct
  %i.cx = ashr i32 %i.cw, 4                       ; 3 uses
  %.not.i80.i.4 = icmp ult i32 %i.cx, 256
  %isnotneg.i81.i.4 = icmp sgt i32 %i.cx, -1
  %i.cy = sext i1 %isnotneg.i81.i.4 to i8
  %i.cz = trunc nuw i32 %i.cx to i8
  %.0.i82.i.4 = select i1 %.not.i80.i.4, i8 %i.cz, i8 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.172.i5, i64 4
  store i8 %.0.i82.i.4, ptr %i.da, align 1, !tbaa !28
  %i.db = getelementptr inbounds nuw i8, ptr %.175.i4, i64 5 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.a
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !28
  %i.de = zext i8 %i.dd to i32
  %i.df = load i8, ptr %i.db, align 1, !tbaa !28
  %i.dg = zext i8 %i.df to i32
  %i.dh = getelementptr inbounds i8, ptr %i.db, i64 %2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = zext i8 %i.di to i32
  %i.dk = getelementptr inbounds i8, ptr %i.db, i64 %i.b
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !28
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nuw nsw i32 %i.dj, %i.dg
  %i.do = mul nuw nsw i32 %i.dn, 9
  %i.dp = add nuw nsw i32 %i.dm, %i.de
  %i.dq = sub i32 %3, %i.dp
  %.neg.5 = add i32 %i.dq, 7
  %i.dr = add i32 %.neg.5, %i.do
  %i.ds = ashr i32 %i.dr, 4                       ; 3 uses
  %.not.i80.i.5 = icmp ult i32 %i.ds, 256
  %isnotneg.i81.i.5 = icmp sgt i32 %i.ds, -1
  %i.dt = sext i1 %isnotneg.i81.i.5 to i8
  %i.du = trunc nuw i32 %i.ds to i8
  %.0.i82.i.5 = select i1 %.not.i80.i.5, i8 %i.du, i8 %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.172.i5, i64 5
  store i8 %.0.i82.i.5, ptr %i.dv, align 1, !tbaa !28
  %i.dw = getelementptr inbounds nuw i8, ptr %.175.i4, i64 6 ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %i.a
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !28
  %i.dz = zext i8 %i.dy to i32
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.eb = zext i8 %i.ea to i32
  %i.ec = getelementptr inbounds i8, ptr %i.dw, i64 %2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !28
  %i.ee = zext i8 %i.ed to i32
  %i.ef = getelementptr inbounds i8, ptr %i.dw, i64 %i.b
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  %i.eh = zext i8 %i.eg to i32
  %i.ei = add nuw nsw i32 %i.ee, %i.eb
  %i.ej = mul nuw nsw i32 %i.ei, 9
  %i.ek = add nuw nsw i32 %i.eh, %i.dz
  %i.el = sub i32 %3, %i.ek
  %.neg.6 = add i32 %i.el, 7
  %i.em = add i32 %.neg.6, %i.ej
  %i.en = ashr i32 %i.em, 4                       ; 3 uses
  %.not.i80.i.6 = icmp ult i32 %i.en, 256
  %isnotneg.i81.i.6 = icmp sgt i32 %i.en, -1
  %i.eo = sext i1 %isnotneg.i81.i.6 to i8
  %i.ep = trunc nuw i32 %i.en to i8
end_hunk_3
begin_hunk_4_@avg_vc1_mspel_mc02_c:.preheader.lver.check
  %isnotneg.i87.i.3 = icmp sgt i32 %i.lr, -1
  %i.ls = sext i1 %isnotneg.i87.i.3 to i16
  %i.lt = trunc nuw i32 %i.lr to i16
  %.0.i88.i.3 = select i1 %.not.i86.i.3, i16 %i.lt, i16 %i.ls
  %i.lu = and i16 %.0.i88.i.3, 255
  %i.lv = add nuw nsw i16 %i.kz, 1
  %i.lw = add nuw nsw i16 %i.lv, %i.lu
  %i.lx = lshr i16 %i.lw, 1
  %i.ly = trunc nuw i16 %i.lx to i8
  store i8 %i.ly, ptr %i.kx, align 1, !tbaa !28
  %i.lz = getelementptr inbounds nuw i8, ptr %.178.i5, i64 4 ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !28
  %i.mb = zext i8 %i.ma to i16
  %i.mc = getelementptr inbounds nuw i8, ptr %.181.i4, i64 4 ; 4 uses
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 %i.a
  %i.me = load i8, ptr %i.md, align 1, !tbaa !28
  %i.mf = zext i8 %i.me to i32
  %i.mg = load i8, ptr %i.mc, align 1, !tbaa !28
  %i.mh = zext i8 %i.mg to i32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 %2
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !28
  %i.mk = zext i8 %i.mj to i32
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.b
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !28
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add nuw nsw i32 %i.mk, %i.mh
  %i.mp = mul nuw nsw i32 %i.mo, 9
  %i.mq = add nuw nsw i32 %i.mn, %i.mf
  %i.mr = sub i32 %3, %i.mq
  %.neg.4 = add i32 %i.mr, 7
  %i.ms = add i32 %.neg.4, %i.mp
  %i.mt = ashr i32 %i.ms, 4                       ; 3 uses
  %.not.i86.i.4 = icmp ult i32 %i.mt, 256
  %isnotneg.i87.i.4 = icmp sgt i32 %i.mt, -1
  %i.mu = sext i1 %isnotneg.i87.i.4 to i16
  %i.mv = trunc nuw i32 %i.mt to i16
  %.0.i88.i.4 = select i1 %.not.i86.i.4, i16 %i.mv, i16 %i.mu
  %i.mw = and i16 %.0.i88.i.4, 255
  %i.mx = add nuw nsw i16 %i.mb, 1
  %i.my = add nuw nsw i16 %i.mx, %i.mw
  %i.mz = lshr i16 %i.my, 1
  %i.na = trunc nuw i16 %i.mz to i8
  store i8 %i.na, ptr %i.lz, align 1, !tbaa !28
  %i.nb = getelementptr inbounds nuw i8, ptr %.178.i5, i64 5 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !28
  %i.nd = zext i8 %i.nc to i16
  %i.ne = getelementptr inbounds nuw i8, ptr %.181.i4, i64 5 ; 4 uses
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 %i.a
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !28
  %i.nh = zext i8 %i.ng to i32
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !28
  %i.nj = zext i8 %i.ni to i32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 %2
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !28
  %i.nm = zext i8 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.b
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !28
  %i.np = zext i8 %i.no to i32
  %i.nq = add nuw nsw i32 %i.nm, %i.nj
  %i.nr = mul nuw nsw i32 %i.nq, 9
  %i.ns = add nuw nsw i32 %i.np, %i.nh
  %i.nt = sub i32 %3, %i.ns
  %.neg.5 = add i32 %i.nt, 7
  %i.nu = add i32 %.neg.5, %i.nr
  %i.nv = ashr i32 %i.nu, 4                       ; 3 uses
  %.not.i86.i.5 = icmp ult i32 %i.nv, 256
  %isnotneg.i87.i.5 = icmp sgt i32 %i.nv, -1
  %i.nw = sext i1 %isnotneg.i87.i.5 to i16
  %i.nx = trunc nuw i32 %i.nv to i16
  %.0.i88.i.5 = select i1 %.not.i86.i.5, i16 %i.nx, i16 %i.nw
  %i.ny = and i16 %.0.i88.i.5, 255
  %i.nz = add nuw nsw i16 %i.nd, 1
  %i.oa = add nuw nsw i16 %i.nz, %i.ny
  %i.ob = lshr i16 %i.oa, 1
  %i.oc = trunc nuw i16 %i.ob to i8
  store i8 %i.oc, ptr %i.nb, align 1, !tbaa !28
  %i.od = getelementptr inbounds nuw i8, ptr %.178.i5, i64 6
  %i.oe = getelementptr inbounds nuw i8, ptr %.181.i4, i64 6 ; 4 uses
  %i.of = getelementptr inbounds i8, ptr %i.oe, i64 %i.a
  %i.og = load i8, ptr %i.of, align 1, !tbaa !28
  %i.oh = zext i8 %i.og to i32
  %i.oi = load i8, ptr %i.oe, align 1, !tbaa !28
  %i.oj = zext i8 %i.oi to i32
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 %2
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !28
  %i.om = zext i8 %i.ol to i32
  %i.on = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.b
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !28
  %i.op = zext i8 %i.oo to i32
  %i.oq = add nuw nsw i32 %i.om, %i.oj
  %i.or = mul nuw nsw i32 %i.oq, 9
  %i.os = add nuw nsw i32 %i.op, %i.oh
  %i.ot = sub i32 %3, %i.os
  %.neg.6 = add i32 %i.ot, 7
  %i.ou = add i32 %.neg.6, %i.or
  %i.ov = ashr i32 %i.ou, 4                       ; 3 uses
  %.not.i86.i.6 = icmp ult i32 %i.ov, 256
  %isnotneg.i87.i.6 = icmp sgt i32 %i.ov, -1
  %i.ow = sext i1 %isnotneg.i87.i.6 to i16
  %i.ox = trunc nuw i32 %i.ov to i16
  %.0.i88.i.6 = select i1 %.not.i86.i.6, i16 %i.ox, i16 %i.ow
  %i.oy = and i16 %.0.i88.i.6, 255
  %i.oz = add nuw nsw i16 %store_forwarded, 1
  %i.pa = add nuw nsw i16 %i.oz, %i.oy
  %i.pb = lshr i16 %i.pa, 1
  %i.pc = trunc nuw i16 %i.pb to i8
  store i8 %i.pc, ptr %i.od, align 1, !tbaa !28
  %i.pd = getelementptr inbounds nuw i8, ptr %.178.i5, i64 7 ; 2 uses
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !28
  %i.pf = zext i8 %i.pe to i16
  %i.pg = getelementptr inbounds nuw i8, ptr %.181.i4, i64 7 ; 4 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pg, i64 %i.a
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !28
  %i.pj = zext i8 %i.pi to i32
  %i.pk = load i8, ptr %i.pg, align 1, !tbaa !28
  %i.pl = zext i8 %i.pk to i32
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pg, i64 %2
  %i.pn = load i8, ptr %i.pm, align 1, !tbaa !28
  %i.po = zext i8 %i.pn to i32
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.b
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !28
  %i.pr = zext i8 %i.pq to i32
  %i.ps = add nuw nsw i32 %i.po, %i.pl
  %i.pt = mul nuw nsw i32 %i.ps, 9
  %i.pu = add nuw nsw i32 %i.pr, %i.pj
  %i.pv = sub i32 %3, %i.pu
  %.neg.7 = add i32 %i.pv, 7
  %i.pw = add i32 %.neg.7, %i.pt
  %i.px = ashr i32 %i.pw, 4                       ; 3 uses
  %.not.i86.i.7 = icmp ult i32 %i.px, 256
  %isnotneg.i87.i.7 = icmp sgt i32 %i.px, -1
  %i.py = sext i1 %isnotneg.i87.i.7 to i16
  %i.pz = trunc nuw i32 %i.px to i16
  %.0.i88.i.7 = select i1 %.not.i86.i.7, i16 %i.pz, i16 %i.py
  %i.qa = and i16 %.0.i88.i.7, 255
  %i.qb = add nuw nsw i16 %i.pf, 1
  %i.qc = add nuw nsw i16 %i.qb, %i.qa
  %i.qd = lshr i16 %i.qc, 1                       ; 2 uses
  %i.qe = trunc nuw i16 %i.qd to i8
  store i8 %i.qe, ptr %i.pd, align 1, !tbaa !28
  %i.qf = getelementptr inbounds nuw i8, ptr %.178.i5, i64 %2
  %i.qg = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.qg, 8
  br i1 %exitcond.not, label %avg_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !3

avg_vc1_mspel_mc.exit:                            ; preds = %.preheader.lver.orig, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc02_16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = sub nsw i64 0, %2                        ; 3 uses
  %i.b = shl nsw i64 %2, 1                        ; 3 uses
  %i.c = mul i64 %2, 15
  %i.d = add i64 %i.c, 16                         ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.d
  %scevgep9 = getelementptr i8, ptr %1, i64 %i.b
  %i.e = mul i64 %2, 17
  %i.f = getelementptr i8, ptr %1, i64 %i.e
  %scevgep11 = getelementptr i8, ptr %1, i64 %2
  %i.g = shl i64 %2, 4
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = insertelement <2 x ptr> poison, ptr %i.h, i64 0
  %i.j = insertelement <2 x ptr> %i.i, ptr %i.f, i64 1
  %i.k = getelementptr i8, <2 x ptr> %i.j, i64 16
  %scevgep13 = getelementptr i8, ptr %1, i64 %i.d
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.a
  %i.l = mul i64 %2, 14
  %i.m = getelementptr i8, ptr %1, i64 %i.l
  %scevgep15 = getelementptr i8, ptr %i.m, i64 16
  %i.n = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.o = shufflevector <4 x ptr> %i.n, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.p = insertelement <4 x ptr> poison, ptr %scevgep11, i64 0
  %i.q = insertelement <4 x ptr> %i.p, ptr %scevgep9, i64 1
  %i.r = insertelement <4 x ptr> %i.q, ptr %1, i64 2
  %i.s = insertelement <4 x ptr> %i.r, ptr %scevgep14, i64 3
  %i.t = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.u = shufflevector <4 x ptr> %i.t, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.v = shufflevector <2 x ptr> %i.k, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = insertelement <4 x ptr> %i.v, ptr %scevgep13, i64 2
  %i.x = insertelement <4 x ptr> %i.w, ptr %scevgep15, i64 3
  %i.y = icmp ult <4 x ptr> %i.o, %i.x
  %i.z = icmp ult <4 x ptr> %i.s, %i.u
  %stride.check20 = icmp slt i64 %2, 0
  %i.aa = and <4 x i1> %i.y, %i.z
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp ne i4 %i.ab, 0
  %op.rdx = or i1 %i.ac, %stride.check20
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.2.i6 = phi i32 [ 0, %bb.a ], [ %i.cg, %.loopexit ]
  %.178.i5 = phi ptr [ %0, %bb.a ], [ %i.cf, %.loopexit ] ; 4 uses
  %.181.i4 = phi ptr [ %1, %bb.a ], [ %i.ce, %.loopexit ] ; 6 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %.178.i5, align 1, !tbaa !28, !alias.scope !65, !noalias !66
  %i.ad = zext <16 x i8> %wide.load to <16 x i16>
  %i.ae = getelementptr inbounds i8, ptr %.181.i4, i64 %i.a
  %wide.load34 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !28, !alias.scope !67
  %i.af = zext <16 x i8> %wide.load34 to <16 x i32>
  %wide.load35 = load <16 x i8>, ptr %.181.i4, align 1, !tbaa !28, !alias.scope !68
  %i.ag = zext <16 x i8> %wide.load35 to <16 x i32>
  %i.ah = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %2
  %wide.load36 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !28, !alias.scope !69
  %i.ai = zext <16 x i8> %wide.load36 to <16 x i32>
  %i.aj = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %i.b
  %wide.load37 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !28, !alias.scope !70
  %i.ak = zext <16 x i8> %wide.load37 to <16 x i32>
  %i.al = add nuw nsw <16 x i32> %i.ai, %i.ag
  %i.am = mul nuw nsw <16 x i32> %i.al, splat (i32 9)
  %i.an = add nuw nsw <16 x i32> %i.ak, %i.af
  %i.ao = sub <16 x i32> %broadcast.splat, %i.an
  %i.ap = add <16 x i32> %i.ao, splat (i32 7)
  %i.aq = add <16 x i32> %i.ap, %i.am
  %i.ar = ashr <16 x i32> %i.aq, splat (i32 4)    ; 3 uses
  %i.as = icmp ult <16 x i32> %i.ar, splat (i32 256)
  %i.at = icmp sgt <16 x i32> %i.ar, splat (i32 -1)
  %i.au = sext <16 x i1> %i.at to <16 x i16>
  %i.av = trunc nuw <16 x i32> %i.ar to <16 x i16>
  %i.aw = select <16 x i1> %i.as, <16 x i16> %i.av, <16 x i16> %i.au
  %i.ax = and <16 x i16> %i.aw, splat (i16 255)
  %i.ay = add nuw nsw <16 x i16> %i.ad, splat (i16 1)
  %i.az = add nuw nsw <16 x i16> %i.ay, %i.ax
  %i.ba = lshr <16 x i16> %i.az, splat (i16 1)
  %i.bb = trunc nuw <16 x i16> %i.ba to <16 x i8>
  store <16 x i8> %i.bb, ptr %.178.i5, align 1, !tbaa !28, !alias.scope !65, !noalias !66
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.178.i5, i64 %indvars.iv ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !28
  %i.be = zext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %indvars.iv ; 4 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %i.a
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !28
  %i.bi = zext i8 %i.bh to i32
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = getelementptr inbounds i8, ptr %i.bf, i64 %i.b
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !28
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bn, %i.bk
  %i.bs = mul nuw nsw i32 %i.br, 9
  %i.bt = add nuw nsw i32 %i.bq, %i.bi
  %i.bu = sub i32 %3, %i.bt
  %.neg = add i32 %i.bu, 7
  %i.bv = add i32 %.neg, %i.bs
  %i.bw = ashr i32 %i.bv, 4                       ; 3 uses
  %.not.i86.i = icmp ult i32 %i.bw, 256
  %isnotneg.i87.i = icmp sgt i32 %i.bw, -1
  %i.bx = sext i1 %isnotneg.i87.i to i16
  %i.by = trunc nuw i32 %i.bw to i16
  %.0.i88.i = select i1 %.not.i86.i, i16 %i.by, i16 %i.bx
  %i.bz = and i16 %.0.i88.i, 255
  %i.ca = add nuw nsw i16 %i.be, 1
  %i.cb = add nuw nsw i16 %i.ca, %i.bz
  %i.cc = lshr i16 %i.cb, 1
  %i.cd = trunc nuw i16 %i.cc to i8
  store i8 %i.cd, ptr %i.bc, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !64

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.ce = getelementptr inbounds i8, ptr %.181.i4, i64 %2
  %i.cf = getelementptr inbounds i8, ptr %.178.i5, i64 %2
  %i.cg = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond8.not = icmp eq i32 %i.cg, 16
  br i1 %exitcond8.not, label %avg_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !4

avg_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc03_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = sub nsw i64 0, %2                        ; 8 uses
  %i.b = shl nsw i64 %2, 1                        ; 8 uses
  %i.c = add i32 %3, 32                           ; 8 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.2.i6 = phi i32 [ 0, %bb.a ], [ %i.gm, %.preheader ]
  %.172.i5 = phi ptr [ %0, %bb.a ], [ %i.gl, %.preheader ] ; 9 uses
  %.175.i4 = phi ptr [ %1, %bb.a ], [ %i.k, %.preheader ] ; 11 uses
  %i.d = getelementptr inbounds i8, ptr %.175.i4, i64 %i.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i32
  %i.g = mul nsw i32 %i.f, -3
  %i.h = load i8, ptr %.175.i4, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = mul nuw nsw i32 %i.i, 18
  %i.k = getelementptr inbounds i8, ptr %.175.i4, i64 %2 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i32
  %i.n = mul nuw nsw i32 %i.m, 53
  %i.o = getelementptr inbounds i8, ptr %.175.i4, i64 %i.b
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 2
  %i.s = xor i32 %i.r, -1
  %i.t = add i32 %i.c, %i.g
  %i.u = add i32 %i.t, %i.j
  %.neg = add i32 %i.u, %i.n
  %i.v = add i32 %.neg, %i.s
  %i.w = ashr i32 %i.v, 6                         ; 3 uses
  %.not.i80.i = icmp ult i32 %i.w, 256
  %isnotneg.i81.i = icmp sgt i32 %i.w, -1
  %i.x = sext i1 %isnotneg.i81.i to i8
  %i.y = trunc nuw i32 %i.w to i8
  %.0.i82.i = select i1 %.not.i80.i, i8 %i.y, i8 %i.x
  store i8 %.0.i82.i, ptr %.172.i5, align 1, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %.175.i4, i64 1 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.a
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = zext i8 %i.ab to i32
  %i.ad = mul nsw i32 %i.ac, -3
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !28
  %i.af = zext i8 %i.ae to i32
  %i.ag = mul nuw nsw i32 %i.af, 18
  %i.ah = getelementptr inbounds i8, ptr %i.z, i64 %2
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.aj = zext i8 %i.ai to i32
  %i.ak = mul nuw nsw i32 %i.aj, 53
  %i.al = getelementptr inbounds i8, ptr %i.z, i64 %i.b
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 2
  %i.ap = xor i32 %i.ao, -1
  %i.aq = add i32 %i.c, %i.ad
  %i.ar = add i32 %i.aq, %i.ag
  %.neg.1 = add i32 %i.ar, %i.ak
  %i.as = add i32 %.neg.1, %i.ap
  %i.at = ashr i32 %i.as, 6                       ; 3 uses
  %.not.i80.i.1 = icmp ult i32 %i.at, 256
  %isnotneg.i81.i.1 = icmp sgt i32 %i.at, -1
  %i.au = sext i1 %isnotneg.i81.i.1 to i8
  %i.av = trunc nuw i32 %i.at to i8
  %.0.i82.i.1 = select i1 %.not.i80.i.1, i8 %i.av, i8 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.172.i5, i64 1
  store i8 %.0.i82.i.1, ptr %i.aw, align 1, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %.175.i4, i64 2 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.a
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nsw i32 %i.ba, -3
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !28
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 18
  %i.bf = getelementptr inbounds i8, ptr %i.ax, i64 %2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 53
  %i.bj = getelementptr inbounds i8, ptr %i.ax, i64 %i.b
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 2
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add i32 %i.c, %i.bb
  %i.bp = add i32 %i.bo, %i.be
  %.neg.2 = add i32 %i.bp, %i.bi
  %i.bq = add i32 %.neg.2, %i.bn
  %i.br = ashr i32 %i.bq, 6                       ; 3 uses
  %.not.i80.i.2 = icmp ult i32 %i.br, 256
  %isnotneg.i81.i.2 = icmp sgt i32 %i.br, -1
  %i.bs = sext i1 %isnotneg.i81.i.2 to i8
  %i.bt = trunc nuw i32 %i.br to i8
  %.0.i82.i.2 = select i1 %.not.i80.i.2, i8 %i.bt, i8 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.172.i5, i64 2
  store i8 %.0.i82.i.2, ptr %i.bu, align 1, !tbaa !28
  %i.bv = getelementptr inbounds nuw i8, ptr %.175.i4, i64 3 ; 4 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.a
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !28
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul nsw i32 %i.by, -3
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.cb = zext i8 %i.ca to i32
  %i.cc = mul nuw nsw i32 %i.cb, 18
  %i.cd = getelementptr inbounds i8, ptr %i.bv, i64 %2
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !28
  %i.cf = zext i8 %i.ce to i32
  %i.cg = mul nuw nsw i32 %i.cf, 53
  %i.ch = getelementptr inbounds i8, ptr %i.bv, i64 %i.b
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 2
  %i.cl = xor i32 %i.ck, -1
  %i.cm = add i32 %i.c, %i.bz
  %i.cn = add i32 %i.cm, %i.cc
  %.neg.3 = add i32 %i.cn, %i.cg
  %i.co = add i32 %.neg.3, %i.cl
  %i.cp = ashr i32 %i.co, 6                       ; 3 uses
  %.not.i80.i.3 = icmp ult i32 %i.cp, 256
  %isnotneg.i81.i.3 = icmp sgt i32 %i.cp, -1
  %i.cq = sext i1 %isnotneg.i81.i.3 to i8
  %i.cr = trunc nuw i32 %i.cp to i8
  %.0.i82.i.3 = select i1 %.not.i80.i.3, i8 %i.cr, i8 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.172.i5, i64 3
  store i8 %.0.i82.i.3, ptr %i.cs, align 1, !tbaa !28
  %i.ct = getelementptr inbounds nuw i8, ptr %.175.i4, i64 4 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.a
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nsw i32 %i.cw, -3
  %i.cy = load i8, ptr %i.ct, align 1, !tbaa !28
  %i.cz = zext i8 %i.cy to i32
  %i.da = mul nuw nsw i32 %i.cz, 18
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 %2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !28
  %i.dd = zext i8 %i.dc to i32
  %i.de = mul nuw nsw i32 %i.dd, 53
  %i.df = getelementptr inbounds i8, ptr %i.ct, i64 %i.b
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !28
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 2
  %i.dj = xor i32 %i.di, -1
  %i.dk = add i32 %i.c, %i.cx
  %i.dl = add i32 %i.dk, %i.da
  %.neg.4 = add i32 %i.dl, %i.de
  %i.dm = add i32 %.neg.4, %i.dj
  %i.dn = ashr i32 %i.dm, 6                       ; 3 uses
  %.not.i80.i.4 = icmp ult i32 %i.dn, 256
  %isnotneg.i81.i.4 = icmp sgt i32 %i.dn, -1
  %i.do = sext i1 %isnotneg.i81.i.4 to i8
  %i.dp = trunc nuw i32 %i.dn to i8
  %.0.i82.i.4 = select i1 %.not.i80.i.4, i8 %i.dp, i8 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %.172.i5, i64 4
  store i8 %.0.i82.i.4, ptr %i.dq, align 1, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %.175.i4, i64 5 ; 4 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.a
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.du, -3
  %i.dw = load i8, ptr %i.dr, align 1, !tbaa !28
  %i.dx = zext i8 %i.dw to i32
  %i.dy = mul nuw nsw i32 %i.dx, 18
  %i.dz = getelementptr inbounds i8, ptr %i.dr, i64 %2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !28
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nuw nsw i32 %i.eb, 53
  %i.ed = getelementptr inbounds i8, ptr %i.dr, i64 %i.b
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !28
  %i.ef = zext i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 2
  %i.eh = xor i32 %i.eg, -1
  %i.ei = add i32 %i.c, %i.dv
  %i.ej = add i32 %i.ei, %i.dy
  %.neg.5 = add i32 %i.ej, %i.ec
  %i.ek = add i32 %.neg.5, %i.eh
  %i.el = ashr i32 %i.ek, 6                       ; 3 uses
  %.not.i80.i.5 = icmp ult i32 %i.el, 256
  %isnotneg.i81.i.5 = icmp sgt i32 %i.el, -1
  %i.em = sext i1 %isnotneg.i81.i.5 to i8
  %i.en = trunc nuw i32 %i.el to i8
  %.0.i82.i.5 = select i1 %.not.i80.i.5, i8 %i.en, i8 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %.172.i5, i64 5
  store i8 %.0.i82.i.5, ptr %i.eo, align 1, !tbaa !28
  %i.ep = getelementptr inbounds nuw i8, ptr %.175.i4, i64 6 ; 4 uses
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 %i.a
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !28
  %i.es = zext i8 %i.er to i32
  %i.et = mul nsw i32 %i.es, -3
  %i.eu = load i8, ptr %i.ep, align 1, !tbaa !28
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.ev, 18
  %i.ex = getelementptr inbounds i8, ptr %i.ep, i64 %2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !28
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nuw nsw i32 %i.ez, 53
  %i.fb = getelementptr inbounds i8, ptr %i.ep, i64 %i.b
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !28
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 2
  %i.ff = xor i32 %i.fe, -1
  %i.fg = add i32 %i.c, %i.et
  %i.fh = add i32 %i.fg, %i.ew
  %.neg.6 = add i32 %i.fh, %i.fa
  %i.fi = add i32 %.neg.6, %i.ff
  %i.fj = ashr i32 %i.fi, 6                       ; 3 uses
  %.not.i80.i.6 = icmp ult i32 %i.fj, 256
  %isnotneg.i81.i.6 = icmp sgt i32 %i.fj, -1
  %i.fk = sext i1 %isnotneg.i81.i.6 to i8
  %i.fl = trunc nuw i32 %i.fj to i8
  %.0.i82.i.6 = select i1 %.not.i80.i.6, i8 %i.fl, i8 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %.172.i5, i64 6
  store i8 %.0.i82.i.6, ptr %i.fm, align 1, !tbaa !28
  %i.fn = getelementptr inbounds nuw i8, ptr %.175.i4, i64 7 ; 4 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.a
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !28
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, -3
  %i.fs = load i8, ptr %i.fn, align 1, !tbaa !28
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.ft, 18
  %i.fv = getelementptr inbounds i8, ptr %i.fn, i64 %2
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.fx = zext i8 %i.fw to i32
  %i.fy = mul nuw nsw i32 %i.fx, 53
  %i.fz = getelementptr inbounds i8, ptr %i.fn, i64 %i.b
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !28
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 2
  %i.gd = xor i32 %i.gc, -1
  %i.ge = add i32 %i.c, %i.fr
  %i.gf = add i32 %i.ge, %i.fu
  %.neg.7 = add i32 %i.gf, %i.fy
  %i.gg = add i32 %.neg.7, %i.gd
  %i.gh = ashr i32 %i.gg, 6                       ; 3 uses
  %.not.i80.i.7 = icmp ult i32 %i.gh, 256
  %isnotneg.i81.i.7 = icmp sgt i32 %i.gh, -1
  %i.gi = sext i1 %isnotneg.i81.i.7 to i8
  %i.gj = trunc nuw i32 %i.gh to i8
  %.0.i82.i.7 = select i1 %.not.i80.i.7, i8 %i.gj, i8 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.172.i5, i64 7
  store i8 %.0.i82.i.7, ptr %i.gk, align 1, !tbaa !28
  %i.gl = getelementptr inbounds i8, ptr %.172.i5, i64 %2
  %i.gm = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gm, 8
  br i1 %exitcond.not, label %put_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !1

put_vc1_mspel_mc.exit:                            ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc03_16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.c = sub nsw i64 0, %2                        ; 2 uses
  %i.d = shl nsw i64 %2, 1                        ; 2 uses
  %i.e = add i32 %3, 32                           ; 2 uses
  %i.f = sub i64 %i.b, %i.a                       ; 2 uses
  %i.g = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.i = insertelement <2 x i64> %i.h, i64 %i.a, i64 1
  %i.j = add <2 x i64> %i.h, %i.i
  %i.k = add i64 %2, %i.b
  %i.l = shufflevector <2 x i64> %i.j, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.m = insertelement <4 x i64> %i.l, i64 %i.a, i64 2
  %i.n = insertelement <4 x i64> %i.m, i64 %i.f, i64 3
  %i.o = insertelement <4 x i64> <i64 poison, i64 poison, i64 poison, i64 1>, i64 %i.f, i64 0
  %i.p = insertelement <4 x i64> %i.o, i64 %i.b, i64 1
  %i.q = insertelement <4 x i64> %i.p, i64 %i.k, i64 2
  %i.r = sub <4 x i64> %i.n, %i.q                 ; 2 uses
  %i.s = icmp ugt <4 x i64> %i.r, <i64 -16, i64 -16, i64 -16, i64 15>
  %i.t = icmp ult <4 x i64> %i.r, <i64 -16, i64 -16, i64 -16, i64 15>
  %i.u = shufflevector <4 x i1> %i.s, <4 x i1> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.v = bitcast <4 x i1> %i.u to i4
  %.not = icmp eq i4 %i.v, 0
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.2.i6 = phi i32 [ 0, %bb.a ], [ %i.bs, %.loopexit ]
  %.172.i5 = phi ptr [ %0, %bb.a ], [ %i.br, %.loopexit ] ; 3 uses
  %.175.i4 = phi ptr [ %1, %bb.a ], [ %i.bq, %.loopexit ] ; 6 uses
  br i1 %.not, label %vector.body, label %scalar.ph

vector.body:                                      ; preds = %vector.memcheck
  %i.w = getelementptr inbounds i8, ptr %.175.i4, i64 %i.c
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !28
  %i.x = zext <16 x i8> %wide.load to <16 x i32>
  %i.y = mul nsw <16 x i32> %i.x, splat (i32 -3)
  %wide.load14 = load <16 x i8>, ptr %.175.i4, align 1, !tbaa !28
  %i.z = zext <16 x i8> %wide.load14 to <16 x i32>
  %i.aa = mul nuw nsw <16 x i32> %i.z, splat (i32 18)
  %i.ab = getelementptr inbounds i8, ptr %.175.i4, i64 %2
  %wide.load15 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !28
  %i.ac = zext <16 x i8> %wide.load15 to <16 x i32>
  %i.ad = mul nuw nsw <16 x i32> %i.ac, splat (i32 53)
  %i.ae = getelementptr inbounds i8, ptr %.175.i4, i64 %i.d
  %wide.load16 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !28
  %i.af = zext <16 x i8> %wide.load16 to <16 x i32>
  %i.ag = shl nuw nsw <16 x i32> %i.af, splat (i32 2)
  %i.ah = xor <16 x i32> %i.ag, splat (i32 -1)
  %i.ai = add <16 x i32> %broadcast.splat, %i.y
  %i.aj = add <16 x i32> %i.ai, %i.aa
  %i.ak = add <16 x i32> %i.aj, %i.ad
  %i.al = add <16 x i32> %i.ak, %i.ah
  %i.am = ashr <16 x i32> %i.al, splat (i32 6)    ; 3 uses
  %i.an = icmp ult <16 x i32> %i.am, splat (i32 256)
  %i.ao = icmp sgt <16 x i32> %i.am, splat (i32 -1)
  %i.ap = sext <16 x i1> %i.ao to <16 x i8>
  %i.aq = trunc nuw <16 x i32> %i.am to <16 x i8>
  %i.ar = select <16 x i1> %i.an, <16 x i8> %i.aq, <16 x i8> %i.ap
  store <16 x i8> %i.ar, ptr %.172.i5, align 1, !tbaa !28
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.175.i4, i64 %indvars.iv ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.c
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %i.av = zext i8 %i.au to i32
  %i.aw = mul nsw i32 %i.av, -3
  %i.ax = load i8, ptr %i.as, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul nuw nsw i32 %i.ay, 18
  %i.ba = getelementptr inbounds i8, ptr %i.as, i64 %2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = zext i8 %i.bb to i32
  %i.bd = mul nuw nsw i32 %i.bc, 53
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 %i.d
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !28
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 2
  %i.bi = xor i32 %i.bh, -1
  %i.bj = add i32 %i.e, %i.aw
  %i.bk = add i32 %i.bj, %i.az
  %.neg = add i32 %i.bk, %i.bd
  %i.bl = add i32 %.neg, %i.bi
  %i.bm = ashr i32 %i.bl, 6                       ; 3 uses
  %.not.i80.i = icmp ult i32 %i.bm, 256
  %isnotneg.i81.i = icmp sgt i32 %i.bm, -1
  %i.bn = sext i1 %isnotneg.i81.i to i8
  %i.bo = trunc nuw i32 %i.bm to i8
  %.0.i82.i = select i1 %.not.i80.i, i8 %i.bo, i8 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.172.i5, i64 %indvars.iv
  store i8 %.0.i82.i, ptr %i.bp, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !71

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.bq = getelementptr inbounds i8, ptr %.175.i4, i64 %2
  %i.br = getelementptr inbounds i8, ptr %.172.i5, i64 %2
  %i.bs = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond8.not = icmp eq i32 %i.bs, 16
  br i1 %exitcond8.not, label %put_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !2

put_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc03_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
.preheader.lver.check:
  %i.a = sub nsw i64 0, %2                        ; 16 uses
  %i.b = shl nsw i64 %2, 1                        ; 16 uses
  %i.c = add i32 %3, 32                           ; 16 uses
  %ident.check.not = icmp eq i64 %2, 1
  br i1 %ident.check.not, label %.preheader.ph, label %.preheader.lver.orig

.preheader.lver.orig:                             ; preds = %.preheader.lver.check, %.preheader.lver.orig
  %.2.i6.lver.orig = phi i32 [ %i.iq, %.preheader.lver.orig ], [ 0, %.preheader.lver.check ]
  %.178.i5.lver.orig = phi ptr [ %i.ip, %.preheader.lver.orig ], [ %0, %.preheader.lver.check ] ; 10 uses
  %.181.i4.lver.orig = phi ptr [ %i.m, %.preheader.lver.orig ], [ %1, %.preheader.lver.check ] ; 11 uses
  %i.d = load i8, ptr %.178.i5.lver.orig, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i16
  %i.f = getelementptr inbounds i8, ptr %.181.i4.lver.orig, i64 %i.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  %i.h = zext i8 %i.g to i32
  %i.i = mul nsw i32 %i.h, -3
  %i.j = load i8, ptr %.181.i4.lver.orig, align 1, !tbaa !28
  %i.k = zext i8 %i.j to i32
  %i.l = mul nuw nsw i32 %i.k, 18
  %i.m = getelementptr inbounds i8, ptr %.181.i4.lver.orig, i64 %2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i32
  %i.p = mul nuw nsw i32 %i.o, 53
  %i.q = getelementptr inbounds i8, ptr %.181.i4.lver.orig, i64 %i.b
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 2
  %i.u = xor i32 %i.t, -1
  %i.v = add i32 %i.c, %i.i
  %i.w = add i32 %i.v, %i.l
  %.neg.lver.orig = add i32 %i.w, %i.p
  %i.x = add i32 %.neg.lver.orig, %i.u
  %i.y = ashr i32 %i.x, 6                         ; 3 uses
  %.not.i86.i.lver.orig = icmp ult i32 %i.y, 256
  %isnotneg.i87.i.lver.orig = icmp sgt i32 %i.y, -1
  %i.z = sext i1 %isnotneg.i87.i.lver.orig to i16
  %i.aa = trunc nuw i32 %i.y to i16
  %.0.i88.i.lver.orig = select i1 %.not.i86.i.lver.orig, i16 %i.aa, i16 %i.z
  %i.ab = and i16 %.0.i88.i.lver.orig, 255
  %i.ac = add nuw nsw i16 %i.e, 1
  %i.ad = add nuw nsw i16 %i.ac, %i.ab
  %i.ae = lshr i16 %i.ad, 1
  %i.af = trunc nuw i16 %i.ae to i8
  store i8 %i.af, ptr %.178.i5.lver.orig, align 1, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !28
  %i.ai = zext i8 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 1 ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.a
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !28
  %i.am = zext i8 %i.al to i32
  %i.an = mul nsw i32 %i.am, -3
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.ap, 18
  %i.ar = getelementptr inbounds i8, ptr %i.aj, i64 %2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !28
  %i.at = zext i8 %i.as to i32
  %i.au = mul nuw nsw i32 %i.at, 53
  %i.av = getelementptr inbounds i8, ptr %i.aj, i64 %i.b
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !28
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 2
  %i.az = xor i32 %i.ay, -1
  %i.ba = add i32 %i.c, %i.an
  %i.bb = add i32 %i.ba, %i.aq
  %.neg.1.lver.orig = add i32 %i.bb, %i.au
  %i.bc = add i32 %.neg.1.lver.orig, %i.az
  %i.bd = ashr i32 %i.bc, 6                       ; 3 uses
  %.not.i86.i.1.lver.orig = icmp ult i32 %i.bd, 256
  %isnotneg.i87.i.1.lver.orig = icmp sgt i32 %i.bd, -1
  %i.be = sext i1 %isnotneg.i87.i.1.lver.orig to i16
  %i.bf = trunc nuw i32 %i.bd to i16
  %.0.i88.i.1.lver.orig = select i1 %.not.i86.i.1.lver.orig, i16 %i.bf, i16 %i.be
  %i.bg = and i16 %.0.i88.i.1.lver.orig, 255
  %i.bh = add nuw nsw i16 %i.ai, 1
  %i.bi = add nuw nsw i16 %i.bh, %i.bg
  %i.bj = lshr i16 %i.bi, 1
  %i.bk = trunc nuw i16 %i.bj to i8
  store i8 %i.bk, ptr %i.ag, align 1, !tbaa !28
  %i.bl = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 2 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 2 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.a
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !28
  %i.br = zext i8 %i.bq to i32
  %i.bs = mul nsw i32 %i.br, -3
  %i.bt = load i8, ptr %i.bo, align 1, !tbaa !28
  %i.bu = zext i8 %i.bt to i32
  %i.bv = mul nuw nsw i32 %i.bu, 18
  %i.bw = getelementptr inbounds i8, ptr %i.bo, i64 %2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !28
  %i.by = zext i8 %i.bx to i32
  %i.bz = mul nuw nsw i32 %i.by, 53
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.b
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !28
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 2
  %i.ce = xor i32 %i.cd, -1
  %i.cf = add i32 %i.c, %i.bs
  %i.cg = add i32 %i.cf, %i.bv
  %.neg.2.lver.orig = add i32 %i.cg, %i.bz
  %i.ch = add i32 %.neg.2.lver.orig, %i.ce
  %i.ci = ashr i32 %i.ch, 6                       ; 3 uses
  %.not.i86.i.2.lver.orig = icmp ult i32 %i.ci, 256
  %isnotneg.i87.i.2.lver.orig = icmp sgt i32 %i.ci, -1
  %i.cj = sext i1 %isnotneg.i87.i.2.lver.orig to i16
  %i.ck = trunc nuw i32 %i.ci to i16
  %.0.i88.i.2.lver.orig = select i1 %.not.i86.i.2.lver.orig, i16 %i.ck, i16 %i.cj
  %i.cl = and i16 %.0.i88.i.2.lver.orig, 255
  %i.cm = add nuw nsw i16 %i.bn, 1
  %i.cn = add nuw nsw i16 %i.cm, %i.cl
  %i.co = lshr i16 %i.cn, 1
  %i.cp = trunc nuw i16 %i.co to i8
  store i8 %i.cp, ptr %i.bl, align 1, !tbaa !28
  %i.cq = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 3 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.cs = zext i8 %i.cr to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 3 ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.a
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nsw i32 %i.cw, -3
  %i.cy = load i8, ptr %i.ct, align 1, !tbaa !28
  %i.cz = zext i8 %i.cy to i32
  %i.da = mul nuw nsw i32 %i.cz, 18
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 %2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !28
  %i.dd = zext i8 %i.dc to i32
  %i.de = mul nuw nsw i32 %i.dd, 53
  %i.df = getelementptr inbounds i8, ptr %i.ct, i64 %i.b
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !28
  %i.dh = zext i8 %i.dg to i32
  %i.di = shl nuw nsw i32 %i.dh, 2
  %i.dj = xor i32 %i.di, -1
  %i.dk = add i32 %i.c, %i.cx
  %i.dl = add i32 %i.dk, %i.da
  %.neg.3.lver.orig = add i32 %i.dl, %i.de
  %i.dm = add i32 %.neg.3.lver.orig, %i.dj
  %i.dn = ashr i32 %i.dm, 6                       ; 3 uses
  %.not.i86.i.3.lver.orig = icmp ult i32 %i.dn, 256
  %isnotneg.i87.i.3.lver.orig = icmp sgt i32 %i.dn, -1
  %i.do = sext i1 %isnotneg.i87.i.3.lver.orig to i16
  %i.dp = trunc nuw i32 %i.dn to i16
  %.0.i88.i.3.lver.orig = select i1 %.not.i86.i.3.lver.orig, i16 %i.dp, i16 %i.do
  %i.dq = and i16 %.0.i88.i.3.lver.orig, 255
  %i.dr = add nuw nsw i16 %i.cs, 1
  %i.ds = add nuw nsw i16 %i.dr, %i.dq
  %i.dt = lshr i16 %i.ds, 1
  %i.du = trunc nuw i16 %i.dt to i8
  store i8 %i.du, ptr %i.cq, align 1, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %.178.i5.lver.orig, i64 4 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !28
  %i.dx = zext i8 %i.dw to i16
  %i.dy = getelementptr inbounds nuw i8, ptr %.181.i4.lver.orig, i64 4 ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.a
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !28
  %i.eb = zext i8 %i.ea to i32
  %i.ec = mul nsw i32 %i.eb, -3
  %i.ed = load i8, ptr %i.dy, align 1, !tbaa !28
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nuw nsw i32 %i.ee, 18
  %i.eg = getelementptr inbounds i8, ptr %i.dy, i64 %2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !28
  %i.ei = zext i8 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ei, 53
  %i.ek = getelementptr inbounds i8, ptr %i.dy, i64 %i.b
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !28
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 2
  %i.eo = xor i32 %i.en, -1
  %i.ep = add i32 %i.c, %i.ec
  %i.eq = add i32 %i.ep, %i.ef
  %.neg.4.lver.orig = add i32 %i.eq, %i.ej
  %i.er = add i32 %.neg.4.lver.orig, %i.eo
  %i.es = ashr i32 %i.er, 6                       ; 3 uses
  %.not.i86.i.4.lver.orig = icmp ult i32 %i.es, 256
  %isnotneg.i87.i.4.lver.orig = icmp sgt i32 %i.es, -1
  %i.et = sext i1 %isnotneg.i87.i.4.lver.orig to i16
  %i.eu = trunc nuw i32 %i.es to i16
  %.0.i88.i.4.lver.orig = select i1 %.not.i86.i.4.lver.orig, i16 %i.eu, i16 %i.et
  %i.ev = and i16 %.0.i88.i.4.lver.orig, 255
  %i.ew = add nuw nsw i16 %i.dx, 1
  %i.ex = add nuw nsw i16 %i.ew, %i.ev
end_hunk_4
begin_hunk_5_@avg_vc1_mspel_mc03_c:.preheader.lver.check
  %i.nn = getelementptr inbounds nuw i8, ptr %.181.i4, i64 4 ; 4 uses
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.a
  %i.np = load i8, ptr %i.no, align 1, !tbaa !28
  %i.nq = zext i8 %i.np to i32
  %i.nr = mul nsw i32 %i.nq, -3
  %i.ns = load i8, ptr %i.nn, align 1, !tbaa !28
  %i.nt = zext i8 %i.ns to i32
  %i.nu = mul nuw nsw i32 %i.nt, 18
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nn, i64 %2
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !28
  %i.nx = zext i8 %i.nw to i32
  %i.ny = mul nuw nsw i32 %i.nx, 53
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.b
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !28
  %i.ob = zext i8 %i.oa to i32
  %i.oc = shl nuw nsw i32 %i.ob, 2
  %i.od = xor i32 %i.oc, -1
  %i.oe = add i32 %i.c, %i.nr
  %i.of = add i32 %i.oe, %i.nu
  %.neg.4 = add i32 %i.of, %i.ny
  %i.og = add i32 %.neg.4, %i.od
  %i.oh = ashr i32 %i.og, 6                       ; 3 uses
  %.not.i86.i.4 = icmp ult i32 %i.oh, 256
  %isnotneg.i87.i.4 = icmp sgt i32 %i.oh, -1
  %i.oi = sext i1 %isnotneg.i87.i.4 to i16
  %i.oj = trunc nuw i32 %i.oh to i16
  %.0.i88.i.4 = select i1 %.not.i86.i.4, i16 %i.oj, i16 %i.oi
  %i.ok = and i16 %.0.i88.i.4, 255
  %i.ol = add nuw nsw i16 %i.nm, 1
  %i.om = add nuw nsw i16 %i.ol, %i.ok
  %i.on = lshr i16 %i.om, 1
  %i.oo = trunc nuw i16 %i.on to i8
  store i8 %i.oo, ptr %i.nk, align 1, !tbaa !28
  %i.op = getelementptr inbounds nuw i8, ptr %.178.i5, i64 5 ; 2 uses
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !28
  %i.or = zext i8 %i.oq to i16
  %i.os = getelementptr inbounds nuw i8, ptr %.181.i4, i64 5 ; 4 uses
  %i.ot = getelementptr inbounds i8, ptr %i.os, i64 %i.a
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !28
  %i.ov = zext i8 %i.ou to i32
  %i.ow = mul nsw i32 %i.ov, -3
  %i.ox = load i8, ptr %i.os, align 1, !tbaa !28
  %i.oy = zext i8 %i.ox to i32
  %i.oz = mul nuw nsw i32 %i.oy, 18
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 %2
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !28
  %i.pc = zext i8 %i.pb to i32
  %i.pd = mul nuw nsw i32 %i.pc, 53
  %i.pe = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.b
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !28
  %i.pg = zext i8 %i.pf to i32
  %i.ph = shl nuw nsw i32 %i.pg, 2
  %i.pi = xor i32 %i.ph, -1
  %i.pj = add i32 %i.c, %i.ow
  %i.pk = add i32 %i.pj, %i.oz
  %.neg.5 = add i32 %i.pk, %i.pd
  %i.pl = add i32 %.neg.5, %i.pi
  %i.pm = ashr i32 %i.pl, 6                       ; 3 uses
  %.not.i86.i.5 = icmp ult i32 %i.pm, 256
  %isnotneg.i87.i.5 = icmp sgt i32 %i.pm, -1
  %i.pn = sext i1 %isnotneg.i87.i.5 to i16
  %i.po = trunc nuw i32 %i.pm to i16
  %.0.i88.i.5 = select i1 %.not.i86.i.5, i16 %i.po, i16 %i.pn
  %i.pp = and i16 %.0.i88.i.5, 255
  %i.pq = add nuw nsw i16 %i.or, 1
  %i.pr = add nuw nsw i16 %i.pq, %i.pp
  %i.ps = lshr i16 %i.pr, 1
  %i.pt = trunc nuw i16 %i.ps to i8
  store i8 %i.pt, ptr %i.op, align 1, !tbaa !28
  %i.pu = getelementptr inbounds nuw i8, ptr %.178.i5, i64 6
  %i.pv = getelementptr inbounds nuw i8, ptr %.181.i4, i64 6 ; 4 uses
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 %i.a
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !28
  %i.py = zext i8 %i.px to i32
  %i.pz = mul nsw i32 %i.py, -3
  %i.qa = load i8, ptr %i.pv, align 1, !tbaa !28
  %i.qb = zext i8 %i.qa to i32
  %i.qc = mul nuw nsw i32 %i.qb, 18
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 %2
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !28
  %i.qf = zext i8 %i.qe to i32
  %i.qg = mul nuw nsw i32 %i.qf, 53
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.b
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !28
  %i.qj = zext i8 %i.qi to i32
  %i.qk = shl nuw nsw i32 %i.qj, 2
  %i.ql = xor i32 %i.qk, -1
  %i.qm = add i32 %i.c, %i.pz
  %i.qn = add i32 %i.qm, %i.qc
  %.neg.6 = add i32 %i.qn, %i.qg
  %i.qo = add i32 %.neg.6, %i.ql
  %i.qp = ashr i32 %i.qo, 6                       ; 3 uses
  %.not.i86.i.6 = icmp ult i32 %i.qp, 256
  %isnotneg.i87.i.6 = icmp sgt i32 %i.qp, -1
  %i.qq = sext i1 %isnotneg.i87.i.6 to i16
  %i.qr = trunc nuw i32 %i.qp to i16
  %.0.i88.i.6 = select i1 %.not.i86.i.6, i16 %i.qr, i16 %i.qq
  %i.qs = and i16 %.0.i88.i.6, 255
  %i.qt = add nuw nsw i16 %store_forwarded, 1
  %i.qu = add nuw nsw i16 %i.qt, %i.qs
  %i.qv = lshr i16 %i.qu, 1
  %i.qw = trunc nuw i16 %i.qv to i8
  store i8 %i.qw, ptr %i.pu, align 1, !tbaa !28
  %i.qx = getelementptr inbounds nuw i8, ptr %.178.i5, i64 7 ; 2 uses
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !28
  %i.qz = zext i8 %i.qy to i16
  %i.ra = getelementptr inbounds nuw i8, ptr %.181.i4, i64 7 ; 4 uses
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 %i.a
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !28
  %i.rd = zext i8 %i.rc to i32
  %i.re = mul nsw i32 %i.rd, -3
  %i.rf = load i8, ptr %i.ra, align 1, !tbaa !28
  %i.rg = zext i8 %i.rf to i32
  %i.rh = mul nuw nsw i32 %i.rg, 18
  %i.ri = getelementptr inbounds nuw i8, ptr %i.ra, i64 %2
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !28
  %i.rk = zext i8 %i.rj to i32
  %i.rl = mul nuw nsw i32 %i.rk, 53
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.b
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !28
  %i.ro = zext i8 %i.rn to i32
  %i.rp = shl nuw nsw i32 %i.ro, 2
  %i.rq = xor i32 %i.rp, -1
  %i.rr = add i32 %i.c, %i.re
  %i.rs = add i32 %i.rr, %i.rh
  %.neg.7 = add i32 %i.rs, %i.rl
  %i.rt = add i32 %.neg.7, %i.rq
  %i.ru = ashr i32 %i.rt, 6                       ; 3 uses
  %.not.i86.i.7 = icmp ult i32 %i.ru, 256
  %isnotneg.i87.i.7 = icmp sgt i32 %i.ru, -1
  %i.rv = sext i1 %isnotneg.i87.i.7 to i16
  %i.rw = trunc nuw i32 %i.ru to i16
  %.0.i88.i.7 = select i1 %.not.i86.i.7, i16 %i.rw, i16 %i.rv
  %i.rx = and i16 %.0.i88.i.7, 255
  %i.ry = add nuw nsw i16 %i.qz, 1
  %i.rz = add nuw nsw i16 %i.ry, %i.rx
  %i.sa = lshr i16 %i.rz, 1                       ; 2 uses
  %i.sb = trunc nuw i16 %i.sa to i8
  store i8 %i.sb, ptr %i.qx, align 1, !tbaa !28
  %i.sc = getelementptr inbounds nuw i8, ptr %.178.i5, i64 %2
  %i.sd = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.sd, 8
  br i1 %exitcond.not, label %avg_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !3

avg_vc1_mspel_mc.exit:                            ; preds = %.preheader.lver.orig, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc03_16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = sub nsw i64 0, %2                        ; 3 uses
  %i.b = shl nsw i64 %2, 1                        ; 3 uses
  %i.c = add i32 %3, 32                           ; 2 uses
  %i.d = mul i64 %2, 15
  %i.e = add i64 %i.d, 16                         ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.e
  %scevgep9 = getelementptr i8, ptr %1, i64 %i.b
  %i.f = mul i64 %2, 17
  %i.g = getelementptr i8, ptr %1, i64 %i.f
  %scevgep11 = getelementptr i8, ptr %1, i64 %2
  %i.h = shl i64 %2, 4
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.k = insertelement <2 x ptr> %i.j, ptr %i.g, i64 1
  %i.l = getelementptr i8, <2 x ptr> %i.k, i64 16
  %scevgep13 = getelementptr i8, ptr %1, i64 %i.e
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.a
  %i.m = mul i64 %2, 14
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %scevgep15 = getelementptr i8, ptr %i.n, i64 16
  %i.o = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.p = shufflevector <4 x ptr> %i.o, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.q = insertelement <4 x ptr> poison, ptr %scevgep11, i64 0
  %i.r = insertelement <4 x ptr> %i.q, ptr %scevgep9, i64 1
  %i.s = insertelement <4 x ptr> %i.r, ptr %1, i64 2
  %i.t = insertelement <4 x ptr> %i.s, ptr %scevgep14, i64 3
  %i.u = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.v = shufflevector <4 x ptr> %i.u, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.w = shufflevector <2 x ptr> %i.l, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.x = insertelement <4 x ptr> %i.w, ptr %scevgep13, i64 2
  %i.y = insertelement <4 x ptr> %i.x, ptr %scevgep15, i64 3
  %i.z = icmp ult <4 x ptr> %i.p, %i.y
  %i.aa = icmp ult <4 x ptr> %i.t, %i.v
  %stride.check20 = icmp slt i64 %2, 0
  %i.ab = and <4 x i1> %i.z, %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %i.ad = icmp ne i4 %i.ac, 0
  %op.rdx = or i1 %i.ad, %stride.check20
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.2.i6 = phi i32 [ 0, %bb.a ], [ %i.cn, %.loopexit ]
  %.178.i5 = phi ptr [ %0, %bb.a ], [ %i.cm, %.loopexit ] ; 4 uses
  %.181.i4 = phi ptr [ %1, %bb.a ], [ %i.cl, %.loopexit ] ; 6 uses
  br i1 %op.rdx, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %.178.i5, align 1, !tbaa !28, !alias.scope !79, !noalias !80
  %i.ae = zext <16 x i8> %wide.load to <16 x i16>
  %i.af = getelementptr inbounds i8, ptr %.181.i4, i64 %i.a
  %wide.load34 = load <16 x i8>, ptr %i.af, align 1, !tbaa !28, !alias.scope !81
  %i.ag = zext <16 x i8> %wide.load34 to <16 x i32>
  %i.ah = mul nsw <16 x i32> %i.ag, splat (i32 -3)
  %wide.load35 = load <16 x i8>, ptr %.181.i4, align 1, !tbaa !28, !alias.scope !82
  %i.ai = zext <16 x i8> %wide.load35 to <16 x i32>
  %i.aj = mul nuw nsw <16 x i32> %i.ai, splat (i32 18)
  %i.ak = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %2
  %wide.load36 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !28, !alias.scope !83
  %i.al = zext <16 x i8> %wide.load36 to <16 x i32>
  %i.am = mul nuw nsw <16 x i32> %i.al, splat (i32 53)
  %i.an = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %i.b
  %wide.load37 = load <16 x i8>, ptr %i.an, align 1, !tbaa !28, !alias.scope !84
  %i.ao = zext <16 x i8> %wide.load37 to <16 x i32>
  %i.ap = shl nuw nsw <16 x i32> %i.ao, splat (i32 2)
  %i.aq = xor <16 x i32> %i.ap, splat (i32 -1)
  %i.ar = add <16 x i32> %broadcast.splat, %i.ah
  %i.as = add <16 x i32> %i.ar, %i.aj
  %i.at = add <16 x i32> %i.as, %i.am
  %i.au = add <16 x i32> %i.at, %i.aq
  %i.av = ashr <16 x i32> %i.au, splat (i32 6)    ; 3 uses
  %i.aw = icmp ult <16 x i32> %i.av, splat (i32 256)
  %i.ax = icmp sgt <16 x i32> %i.av, splat (i32 -1)
  %i.ay = sext <16 x i1> %i.ax to <16 x i16>
  %i.az = trunc nuw <16 x i32> %i.av to <16 x i16>
  %i.ba = select <16 x i1> %i.aw, <16 x i16> %i.az, <16 x i16> %i.ay
  %i.bb = and <16 x i16> %i.ba, splat (i16 255)
  %i.bc = add nuw nsw <16 x i16> %i.ae, splat (i16 1)
  %i.bd = add nuw nsw <16 x i16> %i.bc, %i.bb
  %i.be = lshr <16 x i16> %i.bd, splat (i16 1)
  %i.bf = trunc nuw <16 x i16> %i.be to <16 x i8>
  store <16 x i8> %i.bf, ptr %.178.i5, align 1, !tbaa !28, !alias.scope !79, !noalias !80
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.178.i5, i64 %indvars.iv ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !28
  %i.bi = zext i8 %i.bh to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %.181.i4, i64 %indvars.iv ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.a
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !28
  %i.bm = zext i8 %i.bl to i32
  %i.bn = mul nsw i32 %i.bm, -3
  %i.bo = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = mul nuw nsw i32 %i.bp, 18
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 %2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = zext i8 %i.bs to i32
  %i.bu = mul nuw nsw i32 %i.bt, 53
  %i.bv = getelementptr inbounds i8, ptr %i.bj, i64 %i.b
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 2
  %i.bz = xor i32 %i.by, -1
  %i.ca = add i32 %i.c, %i.bn
  %i.cb = add i32 %i.ca, %i.bq
  %.neg = add i32 %i.cb, %i.bu
  %i.cc = add i32 %.neg, %i.bz
  %i.cd = ashr i32 %i.cc, 6                       ; 3 uses
  %.not.i86.i = icmp ult i32 %i.cd, 256
  %isnotneg.i87.i = icmp sgt i32 %i.cd, -1
  %i.ce = sext i1 %isnotneg.i87.i to i16
  %i.cf = trunc nuw i32 %i.cd to i16
  %.0.i88.i = select i1 %.not.i86.i, i16 %i.cf, i16 %i.ce
  %i.cg = and i16 %.0.i88.i, 255
  %i.ch = add nuw nsw i16 %i.bi, 1
  %i.ci = add nuw nsw i16 %i.ch, %i.cg
  %i.cj = lshr i16 %i.ci, 1
  %i.ck = trunc nuw i16 %i.cj to i8
  store i8 %i.ck, ptr %i.bg, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !78

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.cl = getelementptr inbounds i8, ptr %.181.i4, i64 %2
  %i.cm = getelementptr inbounds i8, ptr %.178.i5, i64 %2
  %i.cn = add nuw nsw i32 %.2.i6, 1               ; 2 uses
  %exitcond8.not = icmp eq i32 %i.cn, 16
  br i1 %exitcond8.not, label %avg_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !4

avg_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc10_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %invariant.op = sub i32 32, %3
  %invariant.op31 = sub i32 32, %3
  %invariant.op32 = sub i32 32, %3
  %invariant.op33 = sub i32 32, %3
  %invariant.op34 = sub i32 32, %3
  %invariant.op35 = sub i32 32, %3
  %invariant.op36 = sub i32 32, %3
  %invariant.op37 = sub i32 32, %3
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.3.i7 = phi i32 [ 0, %bb.a ], [ %i.fj, %.preheader ]
  %.273.i6 = phi ptr [ %0, %bb.a ], [ %i.fh, %.preheader ] ; 9 uses
  %.276.i5 = phi ptr [ %1, %bb.a ], [ %i.fi, %.preheader ] ; 31 uses
  %i.a = getelementptr inbounds i8, ptr %.276.i5, i64 -1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = zext i8 %i.b to i32
  %i.d = load i8, ptr %.276.i5, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i32
  %i.f = mul nuw nsw i32 %i.e, 53
  %.neg8 = mul nsw i32 %i.c, -4
  %i.g = getelementptr inbounds nuw i8, ptr %.276.i5, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = mul nuw nsw i32 %i.i, 18
  %i.k = getelementptr inbounds nuw i8, ptr %.276.i5, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i32
  %.neg.i = mul nsw i32 %i.m, -3
  %.reass.reass = add i32 %.neg8, %invariant.op
  %i.n = add i32 %.reass.reass, %i.f
  %i.o = add i32 %i.n, %i.j
  %i.p = add i32 %i.o, %.neg.i
  %i.q = ashr i32 %i.p, 6                         ; 3 uses
  %.not.i.i = icmp ult i32 %i.q, 256
  %isnotneg.i.i = icmp sgt i32 %i.q, -1
  %i.r = sext i1 %isnotneg.i.i to i8
  %i.s = trunc nuw i32 %i.q to i8
  %.0.i.i = select i1 %.not.i.i, i8 %i.s, i8 %i.r
  store i8 %.0.i.i, ptr %.273.i6, align 1, !tbaa !28
  %i.t = load i8, ptr %.276.i5, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i32
  %i.v = load i8, ptr %i.g, align 1, !tbaa !28
  %i.w = zext i8 %i.v to i32
  %i.x = mul nuw nsw i32 %i.w, 53
  %.neg8.1 = mul nsw i32 %i.u, -4
  %i.y = getelementptr inbounds nuw i8, ptr %.276.i5, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28
  %i.aa = zext i8 %i.z to i32
  %i.ab = mul nuw nsw i32 %i.aa, 18
  %i.ac = getelementptr inbounds nuw i8, ptr %.276.i5, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = zext i8 %i.ad to i32
  %.neg.i.1 = mul nsw i32 %i.ae, -3
  %.reass11.reass = add i32 %.neg8.1, %invariant.op31
  %i.af = add i32 %.reass11.reass, %i.x
  %i.ag = add i32 %i.af, %i.ab
  %i.ah = add i32 %i.ag, %.neg.i.1
  %i.ai = ashr i32 %i.ah, 6                       ; 3 uses
  %.not.i.i.1 = icmp ult i32 %i.ai, 256
  %isnotneg.i.i.1 = icmp sgt i32 %i.ai, -1
  %i.aj = sext i1 %isnotneg.i.i.1 to i8
  %i.ak = trunc nuw i32 %i.ai to i8
  %.0.i.i.1 = select i1 %.not.i.i.1, i8 %i.ak, i8 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.273.i6, i64 1
  store i8 %.0.i.i.1, ptr %i.al, align 1, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %.276.i5, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28
  %i.ao = zext i8 %i.an to i32
  %i.ap = load i8, ptr %i.k, align 1, !tbaa !28
  %i.aq = zext i8 %i.ap to i32
  %i.ar = mul nuw nsw i32 %i.aq, 53
  %.neg8.2 = mul nsw i32 %i.ao, -4
  %i.as = getelementptr inbounds nuw i8, ptr %.276.i5, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28
  %i.au = zext i8 %i.at to i32
  %i.av = mul nuw nsw i32 %i.au, 18
  %i.aw = getelementptr inbounds nuw i8, ptr %.276.i5, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32
  %.neg.i.2 = mul nsw i32 %i.ay, -3
  %.reass13.reass = add i32 %.neg8.2, %invariant.op32
  %i.az = add i32 %.reass13.reass, %i.ar
  %i.ba = add i32 %i.az, %i.av
  %i.bb = add i32 %i.ba, %.neg.i.2
  %i.bc = ashr i32 %i.bb, 6                       ; 3 uses
  %.not.i.i.2 = icmp ult i32 %i.bc, 256
  %isnotneg.i.i.2 = icmp sgt i32 %i.bc, -1
  %i.bd = sext i1 %isnotneg.i.i.2 to i8
  %i.be = trunc nuw i32 %i.bc to i8
  %.0.i.i.2 = select i1 %.not.i.i.2, i8 %i.be, i8 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.273.i6, i64 2
  store i8 %.0.i.i.2, ptr %i.bf, align 1, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.276.i5, i64 3
  %i.bh = getelementptr inbounds nuw i8, ptr %.276.i5, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bl, 53
  %.neg8.3 = mul nsw i32 %i.bj, -4
  %i.bn = getelementptr inbounds nuw i8, ptr %.276.i5, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = mul nuw nsw i32 %i.bp, 18
  %i.br = getelementptr inbounds nuw i8, ptr %.276.i5, i64 5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !28
  %i.bt = zext i8 %i.bs to i32
  %.neg.i.3 = mul nsw i32 %i.bt, -3
  %.reass15.reass = add i32 %.neg8.3, %invariant.op33
  %i.bu = add i32 %.reass15.reass, %i.bm
  %i.bv = add i32 %i.bu, %i.bq
  %i.bw = add i32 %i.bv, %.neg.i.3
  %i.bx = ashr i32 %i.bw, 6                       ; 3 uses
  %.not.i.i.3 = icmp ult i32 %i.bx, 256
  %isnotneg.i.i.3 = icmp sgt i32 %i.bx, -1
  %i.by = sext i1 %isnotneg.i.i.3 to i8
  %i.bz = trunc nuw i32 %i.bx to i8
  %.0.i.i.3 = select i1 %.not.i.i.3, i8 %i.bz, i8 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.273.i6, i64 3
  store i8 %.0.i.i.3, ptr %i.ca, align 1, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %.276.i5, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.276.i5, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !28
  %i.ce = zext i8 %i.cd to i32
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cg = zext i8 %i.cf to i32
  %i.ch = mul nuw nsw i32 %i.cg, 53
  %.neg8.4 = mul nsw i32 %i.ce, -4
  %i.ci = getelementptr inbounds nuw i8, ptr %.276.i5, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !28
  %i.ck = zext i8 %i.cj to i32
  %i.cl = mul nuw nsw i32 %i.ck, 18
  %i.cm = getelementptr inbounds nuw i8, ptr %.276.i5, i64 6
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !28
  %i.co = zext i8 %i.cn to i32
  %.neg.i.4 = mul nsw i32 %i.co, -3
  %.reass17.reass = add i32 %.neg8.4, %invariant.op34
  %i.cp = add i32 %.reass17.reass, %i.ch
  %i.cq = add i32 %i.cp, %i.cl
  %i.cr = add i32 %i.cq, %.neg.i.4
  %i.cs = ashr i32 %i.cr, 6                       ; 3 uses
  %.not.i.i.4 = icmp ult i32 %i.cs, 256
  %isnotneg.i.i.4 = icmp sgt i32 %i.cs, -1
  %i.ct = sext i1 %isnotneg.i.i.4 to i8
  %i.cu = trunc nuw i32 %i.cs to i8
  %.0.i.i.4 = select i1 %.not.i.i.4, i8 %i.cu, i8 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.273.i6, i64 4
  store i8 %.0.i.i.4, ptr %i.cv, align 1, !tbaa !28
  %i.cw = getelementptr inbounds nuw i8, ptr %.276.i5, i64 5
  %i.cx = getelementptr inbounds nuw i8, ptr %.276.i5, i64 4
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !28
  %i.cz = zext i8 %i.cy to i32
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !28
  %i.db = zext i8 %i.da to i32
  %i.dc = mul nuw nsw i32 %i.db, 53
  %.neg8.5 = mul nsw i32 %i.cz, -4
  %i.dd = getelementptr inbounds nuw i8, ptr %.276.i5, i64 6
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !28
  %i.df = zext i8 %i.de to i32
  %i.dg = mul nuw nsw i32 %i.df, 18
  %i.dh = getelementptr inbounds nuw i8, ptr %.276.i5, i64 7
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = zext i8 %i.di to i32
  %.neg.i.5 = mul nsw i32 %i.dj, -3
  %.reass19.reass = add i32 %.neg8.5, %invariant.op35
  %i.dk = add i32 %.reass19.reass, %i.dc
  %i.dl = add i32 %i.dk, %i.dg
  %i.dm = add i32 %i.dl, %.neg.i.5
  %i.dn = ashr i32 %i.dm, 6                       ; 3 uses
  %.not.i.i.5 = icmp ult i32 %i.dn, 256
  %isnotneg.i.i.5 = icmp sgt i32 %i.dn, -1
  %i.do = sext i1 %isnotneg.i.i.5 to i8
  %i.dp = trunc nuw i32 %i.dn to i8
  %.0.i.i.5 = select i1 %.not.i.i.5, i8 %i.dp, i8 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %.273.i6, i64 5
  store i8 %.0.i.i.5, ptr %i.dq, align 1, !tbaa !28
  %i.dr = getelementptr inbounds nuw i8, ptr %.276.i5, i64 6
  %i.ds = getelementptr inbounds nuw i8, ptr %.276.i5, i64 5
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !28
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nuw nsw i32 %i.dw, 53
  %.neg8.6 = mul nsw i32 %i.du, -4
  %i.dy = getelementptr inbounds nuw i8, ptr %.276.i5, i64 7
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !28
  %i.ea = zext i8 %i.dz to i32
  %i.eb = mul nuw nsw i32 %i.ea, 18
  %i.ec = getelementptr inbounds nuw i8, ptr %.276.i5, i64 8
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !28
  %i.ee = zext i8 %i.ed to i32
  %.neg.i.6 = mul nsw i32 %i.ee, -3
  %.reass21.reass = add i32 %.neg8.6, %invariant.op36
  %i.ef = add i32 %.reass21.reass, %i.dx
  %i.eg = add i32 %i.ef, %i.eb
  %i.eh = add i32 %i.eg, %.neg.i.6
  %i.ei = ashr i32 %i.eh, 6                       ; 3 uses
  %.not.i.i.6 = icmp ult i32 %i.ei, 256
  %isnotneg.i.i.6 = icmp sgt i32 %i.ei, -1
  %i.ej = sext i1 %isnotneg.i.i.6 to i8
  %i.ek = trunc nuw i32 %i.ei to i8
  %.0.i.i.6 = select i1 %.not.i.i.6, i8 %i.ek, i8 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %.273.i6, i64 6
  store i8 %.0.i.i.6, ptr %i.el, align 1, !tbaa !28
  %i.em = getelementptr inbounds nuw i8, ptr %.276.i5, i64 7
  %i.en = getelementptr inbounds nuw i8, ptr %.276.i5, i64 6
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !28
  %i.ep = zext i8 %i.eo to i32
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !28
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 53
  %.neg8.7 = mul nsw i32 %i.ep, -4
  %i.et = getelementptr inbounds nuw i8, ptr %.276.i5, i64 8
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !28
  %i.ev = zext i8 %i.eu to i32
  %i.ew = mul nuw nsw i32 %i.ev, 18
  %i.ex = getelementptr inbounds nuw i8, ptr %.276.i5, i64 9
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !28
  %i.ez = zext i8 %i.ey to i32
  %.neg.i.7 = mul nsw i32 %i.ez, -3
  %.reass23.reass = add i32 %.neg8.7, %invariant.op37
  %i.fa = add i32 %.reass23.reass, %i.es
  %i.fb = add i32 %i.fa, %i.ew
  %i.fc = add i32 %i.fb, %.neg.i.7
  %i.fd = ashr i32 %i.fc, 6                       ; 3 uses
  %.not.i.i.7 = icmp ult i32 %i.fd, 256
  %isnotneg.i.i.7 = icmp sgt i32 %i.fd, -1
  %i.fe = sext i1 %isnotneg.i.i.7 to i8
  %i.ff = trunc nuw i32 %i.fd to i8
  %.0.i.i.7 = select i1 %.not.i.i.7, i8 %i.ff, i8 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %.273.i6, i64 7
  store i8 %.0.i.i.7, ptr %i.fg, align 1, !tbaa !28
  %i.fh = getelementptr inbounds i8, ptr %.273.i6, i64 %2
  %i.fi = getelementptr inbounds i8, ptr %.276.i5, i64 %2
  %i.fj = add nuw nsw i32 %.3.i7, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fj, 8
  br i1 %exitcond.not, label %put_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !5

put_vc1_mspel_mc.exit:                            ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc10_16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = mul i64 %2, 15                           ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %scevgep = getelementptr i8, ptr %i.b, i64 16
  %scevgep11 = getelementptr i8, ptr %1, i64 -1
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %scevgep12 = getelementptr i8, ptr %i.c, i64 18
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %scevgep11, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.d = or i1 %found.conflict, %stride.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op17 = sub <16 x i32> splat (i32 32), %broadcast.splat
  %invariant.op = sub i32 32, %3
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.3.i7 = phi i32 [ 0, %bb.a ], [ %i.av, %.loopexit ]
  %.273.i6 = phi ptr [ %0, %bb.a ], [ %i.at, %.loopexit ] ; 3 uses
  %.276.i5 = phi ptr [ %1, %bb.a ], [ %i.au, %.loopexit ] ; 6 uses
  br i1 %i.d, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.e = getelementptr inbounds i8, ptr %.276.i5, i64 -1
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !28, !alias.scope !89
  %i.f = zext <16 x i8> %wide.load to <16 x i32>
  %wide.load14 = load <16 x i8>, ptr %.276.i5, align 1, !tbaa !28, !alias.scope !89
  %i.g = zext <16 x i8> %wide.load14 to <16 x i32>
  %i.h = mul nuw nsw <16 x i32> %i.g, splat (i32 53)
  %i.i = mul nsw <16 x i32> %i.f, splat (i32 -4)
  %i.j = getelementptr inbounds nuw i8, ptr %.276.i5, i64 1
  %wide.load15 = load <16 x i8>, ptr %i.j, align 1, !tbaa !28, !alias.scope !89
  %i.k = zext <16 x i8> %wide.load15 to <16 x i32>
  %i.l = mul nuw nsw <16 x i32> %i.k, splat (i32 18)
  %i.m = getelementptr inbounds nuw i8, ptr %.276.i5, i64 2
  %wide.load16 = load <16 x i8>, ptr %i.m, align 1, !tbaa !28, !alias.scope !89
  %i.n = zext <16 x i8> %wide.load16 to <16 x i32>
  %i.o = mul nsw <16 x i32> %i.n, splat (i32 -3)
  %.reass = add <16 x i32> %i.i, %invariant.op17
  %i.p = add <16 x i32> %.reass, %i.h
  %i.q = add <16 x i32> %i.p, %i.l
  %i.r = add <16 x i32> %i.q, %i.o
  %i.s = ashr <16 x i32> %i.r, splat (i32 6)      ; 3 uses
  %i.t = icmp ult <16 x i32> %i.s, splat (i32 256)
  %i.u = icmp sgt <16 x i32> %i.s, splat (i32 -1)
  %i.v = sext <16 x i1> %i.u to <16 x i8>
  %i.w = trunc nuw <16 x i32> %i.s to <16 x i8>
  %i.x = select <16 x i1> %i.t, <16 x i8> %i.w, <16 x i8> %i.v
  store <16 x i8> %i.x, ptr %.273.i6, align 1, !tbaa !28, !alias.scope !90, !noalias !89
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.276.i5, i64 %indvars.iv ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ab = zext i8 %i.aa to i32
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !28
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nuw nsw i32 %i.ad, 53
  %.neg8 = mul nsw i32 %i.ab, -4
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %.neg.i91.i = mul nsw i32 %i.al, -3
  %.reass.reass = add i32 %.neg8, %invariant.op
  %i.am = add i32 %.reass.reass, %i.ae
  %i.an = add i32 %i.am, %i.ai
  %i.ao = add i32 %i.an, %.neg.i91.i
  %i.ap = ashr i32 %i.ao, 6                       ; 3 uses
  %.not.i.i = icmp ult i32 %i.ap, 256
  %isnotneg.i.i = icmp sgt i32 %i.ap, -1
  %i.aq = sext i1 %isnotneg.i.i to i8
  %i.ar = trunc nuw i32 %i.ap to i8
  %.0.i.i = select i1 %.not.i.i, i8 %i.ar, i8 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.273.i6, i64 %indvars.iv
  store i8 %.0.i.i, ptr %i.as, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !88

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.at = getelementptr inbounds i8, ptr %.273.i6, i64 %2
  %i.au = getelementptr inbounds i8, ptr %.276.i5, i64 %2
  %i.av = add nuw nsw i32 %.3.i7, 1               ; 2 uses
  %exitcond10.not = icmp eq i32 %i.av, 16
  br i1 %exitcond10.not, label %put_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !6

put_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc10_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
.preheader.lver.check:
  %ident.check.not = icmp eq i64 %2, 1
  br i1 %ident.check.not, label %.preheader.ph, label %.preheader.lver.orig.preheader

.preheader.lver.orig.preheader:                   ; preds = %.preheader.lver.check
  %invariant.op = sub i32 32, %3
  %invariant.op33 = sub i32 32, %3
  %invariant.op34 = sub i32 32, %3
  %invariant.op35 = sub i32 32, %3
  %invariant.op36 = sub i32 32, %3
  %invariant.op37 = sub i32 32, %3
  %invariant.op38 = sub i32 32, %3
  %invariant.op39 = sub i32 32, %3
  br label %.preheader.lver.orig

.preheader.lver.orig:                             ; preds = %.preheader.lver.orig.preheader, %.preheader.lver.orig
  %.3.i7.lver.orig = phi i32 [ %i.hn, %.preheader.lver.orig ], [ 0, %.preheader.lver.orig.preheader ]
  %.279.i6.lver.orig = phi ptr [ %i.hl, %.preheader.lver.orig ], [ %0, %.preheader.lver.orig.preheader ] ; 10 uses
  %.282.i5.lver.orig = phi ptr [ %i.hm, %.preheader.lver.orig ], [ %1, %.preheader.lver.orig.preheader ] ; 31 uses
  %i.a = load i8, ptr %.279.i6.lver.orig, align 1, !tbaa !28
  %i.b = zext i8 %i.a to i16
  %i.c = getelementptr inbounds i8, ptr %.282.i5.lver.orig, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i32
  %i.f = load i8, ptr %.282.i5.lver.orig, align 1, !tbaa !28
  %i.g = zext i8 %i.f to i32
  %i.h = mul nuw nsw i32 %i.g, 53
  %.neg8.lver.orig = mul nsw i32 %i.e, -4
  %i.i = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 1 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28
  %i.k = zext i8 %i.j to i32
  %i.l = mul nuw nsw i32 %i.k, 18
  %i.m = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i32
  %.neg.i97.i.lver.orig = mul nsw i32 %i.o, -3
  %.reass.lver.orig.reass = add i32 %.neg8.lver.orig, %invariant.op
  %i.p = add i32 %.reass.lver.orig.reass, %i.h
  %i.q = add i32 %i.p, %i.l
  %i.r = add i32 %i.q, %.neg.i97.i.lver.orig
  %i.s = ashr i32 %i.r, 6                         ; 3 uses
  %.not.i.i.lver.orig = icmp ult i32 %i.s, 256
  %isnotneg.i.i.lver.orig = icmp sgt i32 %i.s, -1
  %i.t = sext i1 %isnotneg.i.i.lver.orig to i16
  %i.u = trunc nuw i32 %i.s to i16
  %.0.i.i.lver.orig = select i1 %.not.i.i.lver.orig, i16 %i.u, i16 %i.t
  %i.v = and i16 %.0.i.i.lver.orig, 255
  %i.w = add nuw nsw i16 %i.b, 1
  %i.x = add nuw nsw i16 %i.w, %i.v
  %i.y = lshr i16 %i.x, 1
  %i.z = trunc nuw i16 %i.y to i8
  store i8 %i.z, ptr %.279.i6.lver.orig, align 1, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %.279.i6.lver.orig, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !28
  %i.ac = zext i8 %i.ab to i16
  %i.ad = load i8, ptr %.282.i5.lver.orig, align 1, !tbaa !28
  %i.ae = zext i8 %i.ad to i32
  %i.af = load i8, ptr %i.i, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nuw nsw i32 %i.ag, 53
  %.neg8.1.lver.orig = mul nsw i32 %i.ae, -4
  %i.ai = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nuw nsw i32 %i.ak, 18
  %i.am = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28
  %i.ao = zext i8 %i.an to i32
  %.neg.i97.i.1.lver.orig = mul nsw i32 %i.ao, -3
  %.reass11.lver.orig.reass = add i32 %.neg8.1.lver.orig, %invariant.op33
  %i.ap = add i32 %.reass11.lver.orig.reass, %i.ah
  %i.aq = add i32 %i.ap, %i.al
  %i.ar = add i32 %i.aq, %.neg.i97.i.1.lver.orig
  %i.as = ashr i32 %i.ar, 6                       ; 3 uses
  %.not.i.i.1.lver.orig = icmp ult i32 %i.as, 256
  %isnotneg.i.i.1.lver.orig = icmp sgt i32 %i.as, -1
  %i.at = sext i1 %isnotneg.i.i.1.lver.orig to i16
  %i.au = trunc nuw i32 %i.as to i16
  %.0.i.i.1.lver.orig = select i1 %.not.i.i.1.lver.orig, i16 %i.au, i16 %i.at
  %i.av = and i16 %.0.i.i.1.lver.orig, 255
  %i.aw = add nuw nsw i16 %i.ac, 1
  %i.ax = add nuw nsw i16 %i.aw, %i.av
  %i.ay = lshr i16 %i.ax, 1
  %i.az = trunc nuw i16 %i.ay to i8
  store i8 %i.az, ptr %i.aa, align 1, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.279.i6.lver.orig, i64 2 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = zext i8 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !28
  %i.bf = zext i8 %i.be to i32
  %i.bg = load i8, ptr %i.m, align 1, !tbaa !28
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 53
  %.neg8.2.lver.orig = mul nsw i32 %i.bf, -4
  %i.bj = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 3
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bl, 18
  %i.bn = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %.neg.i97.i.2.lver.orig = mul nsw i32 %i.bp, -3
  %.reass13.lver.orig.reass = add i32 %.neg8.2.lver.orig, %invariant.op34
  %i.bq = add i32 %.reass13.lver.orig.reass, %i.bi
  %i.br = add i32 %i.bq, %i.bm
  %i.bs = add i32 %i.br, %.neg.i97.i.2.lver.orig
  %i.bt = ashr i32 %i.bs, 6                       ; 3 uses
  %.not.i.i.2.lver.orig = icmp ult i32 %i.bt, 256
  %isnotneg.i.i.2.lver.orig = icmp sgt i32 %i.bt, -1
  %i.bu = sext i1 %isnotneg.i.i.2.lver.orig to i16
  %i.bv = trunc nuw i32 %i.bt to i16
  %.0.i.i.2.lver.orig = select i1 %.not.i.i.2.lver.orig, i16 %i.bv, i16 %i.bu
  %i.bw = and i16 %.0.i.i.2.lver.orig, 255
  %i.bx = add nuw nsw i16 %i.bc, 1
  %i.by = add nuw nsw i16 %i.bx, %i.bw
  %i.bz = lshr i16 %i.by, 1
  %i.ca = trunc nuw i16 %i.bz to i8
  store i8 %i.ca, ptr %i.ba, align 1, !tbaa !28
  %i.cb = getelementptr inbounds nuw i8, ptr %.279.i6.lver.orig, i64 3 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cd = zext i8 %i.cc to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 2
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !28
  %i.ch = zext i8 %i.cg to i32
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i32
  %i.ck = mul nuw nsw i32 %i.cj, 53
  %.neg8.3.lver.orig = mul nsw i32 %i.ch, -4
  %i.cl = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 4
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !28
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul nuw nsw i32 %i.cn, 18
  %i.cp = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 5
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !28
  %i.cr = zext i8 %i.cq to i32
  %.neg.i97.i.3.lver.orig = mul nsw i32 %i.cr, -3
  %.reass15.lver.orig.reass = add i32 %.neg8.3.lver.orig, %invariant.op35
  %i.cs = add i32 %.reass15.lver.orig.reass, %i.ck
  %i.ct = add i32 %i.cs, %i.co
  %i.cu = add i32 %i.ct, %.neg.i97.i.3.lver.orig
  %i.cv = ashr i32 %i.cu, 6                       ; 3 uses
  %.not.i.i.3.lver.orig = icmp ult i32 %i.cv, 256
  %isnotneg.i.i.3.lver.orig = icmp sgt i32 %i.cv, -1
  %i.cw = sext i1 %isnotneg.i.i.3.lver.orig to i16
  %i.cx = trunc nuw i32 %i.cv to i16
  %.0.i.i.3.lver.orig = select i1 %.not.i.i.3.lver.orig, i16 %i.cx, i16 %i.cw
  %i.cy = and i16 %.0.i.i.3.lver.orig, 255
  %i.cz = add nuw nsw i16 %i.cd, 1
  %i.da = add nuw nsw i16 %i.cz, %i.cy
  %i.db = lshr i16 %i.da, 1
  %i.dc = trunc nuw i16 %i.db to i8
  store i8 %i.dc, ptr %i.cb, align 1, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %.279.i6.lver.orig, i64 4 ; 2 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !28
  %i.df = zext i8 %i.de to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = zext i8 %i.di to i32
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !28
  %i.dl = zext i8 %i.dk to i32
  %i.dm = mul nuw nsw i32 %i.dl, 53
  %.neg8.4.lver.orig = mul nsw i32 %i.dj, -4
  %i.dn = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 5
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !28
  %i.dp = zext i8 %i.do to i32
  %i.dq = mul nuw nsw i32 %i.dp, 18
  %i.dr = getelementptr inbounds nuw i8, ptr %.282.i5.lver.orig, i64 6
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !28
  %i.dt = zext i8 %i.ds to i32
  %.neg.i97.i.4.lver.orig = mul nsw i32 %i.dt, -3
  %.reass17.lver.orig.reass = add i32 %.neg8.4.lver.orig, %invariant.op36
  %i.du = add i32 %.reass17.lver.orig.reass, %i.dm
  %i.dv = add i32 %i.du, %i.dq
  %i.dw = add i32 %i.dv, %.neg.i97.i.4.lver.orig
  %i.dx = ashr i32 %i.dw, 6                       ; 3 uses
  %.not.i.i.4.lver.orig = icmp ult i32 %i.dx, 256
  %isnotneg.i.i.4.lver.orig = icmp sgt i32 %i.dx, -1
  %i.dy = sext i1 %isnotneg.i.i.4.lver.orig to i16
  %i.dz = trunc nuw i32 %i.dx to i16
  %.0.i.i.4.lver.orig = select i1 %.not.i.i.4.lver.orig, i16 %i.dz, i16 %i.dy
  %i.ea = and i16 %.0.i.i.4.lver.orig, 255
  %i.eb = add nuw nsw i16 %i.df, 1
  %i.ec = add nuw nsw i16 %i.eb, %i.ea
end_hunk_5
begin_hunk_6_@avg_vc1_mspel_mc10_c:.preheader.lver.check
  %.neg8.3 = mul nsw i32 %i.kw, -4
  %i.la = getelementptr inbounds nuw i8, ptr %.282.i5, i64 4
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !28
  %i.lc = zext i8 %i.lb to i32
  %i.ld = mul nuw nsw i32 %i.lc, 18
  %i.le = getelementptr inbounds nuw i8, ptr %.282.i5, i64 5
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !28
  %i.lg = zext i8 %i.lf to i32
  %.neg.i97.i.3 = mul nsw i32 %i.lg, -3
  %.reass15.reass = add i32 %.neg8.3, %invariant.op43
  %i.lh = add i32 %.reass15.reass, %i.kz
  %i.li = add i32 %i.lh, %i.ld
  %i.lj = add i32 %i.li, %.neg.i97.i.3
  %i.lk = ashr i32 %i.lj, 6                       ; 3 uses
  %.not.i.i.3 = icmp ult i32 %i.lk, 256
  %isnotneg.i.i.3 = icmp sgt i32 %i.lk, -1
  %i.ll = sext i1 %isnotneg.i.i.3 to i16
  %i.lm = trunc nuw i32 %i.lk to i16
  %.0.i.i.3 = select i1 %.not.i.i.3, i16 %i.lm, i16 %i.ll
  %i.ln = and i16 %.0.i.i.3, 255
  %i.lo = add nuw nsw i16 %i.ks, 1
  %i.lp = add nuw nsw i16 %i.lo, %i.ln
  %i.lq = lshr i16 %i.lp, 1
  %i.lr = trunc nuw i16 %i.lq to i8
  store i8 %i.lr, ptr %i.kq, align 1, !tbaa !28
  %i.ls = getelementptr inbounds nuw i8, ptr %.279.i6, i64 4 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !28
  %i.lu = zext i8 %i.lt to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %.282.i5, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %.282.i5, i64 3
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !28
  %i.ly = zext i8 %i.lx to i32
  %i.lz = load i8, ptr %i.lv, align 1, !tbaa !28
  %i.ma = zext i8 %i.lz to i32
  %i.mb = mul nuw nsw i32 %i.ma, 53
  %.neg8.4 = mul nsw i32 %i.ly, -4
  %i.mc = getelementptr inbounds nuw i8, ptr %.282.i5, i64 5
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !28
  %i.me = zext i8 %i.md to i32
  %i.mf = mul nuw nsw i32 %i.me, 18
  %i.mg = getelementptr inbounds nuw i8, ptr %.282.i5, i64 6
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !28
  %i.mi = zext i8 %i.mh to i32
  %.neg.i97.i.4 = mul nsw i32 %i.mi, -3
  %.reass17.reass = add i32 %.neg8.4, %invariant.op44
  %i.mj = add i32 %.reass17.reass, %i.mb
  %i.mk = add i32 %i.mj, %i.mf
  %i.ml = add i32 %i.mk, %.neg.i97.i.4
  %i.mm = ashr i32 %i.ml, 6                       ; 3 uses
  %.not.i.i.4 = icmp ult i32 %i.mm, 256
  %isnotneg.i.i.4 = icmp sgt i32 %i.mm, -1
  %i.mn = sext i1 %isnotneg.i.i.4 to i16
  %i.mo = trunc nuw i32 %i.mm to i16
  %.0.i.i.4 = select i1 %.not.i.i.4, i16 %i.mo, i16 %i.mn
  %i.mp = and i16 %.0.i.i.4, 255
  %i.mq = add nuw nsw i16 %i.lu, 1
  %i.mr = add nuw nsw i16 %i.mq, %i.mp
  %i.ms = lshr i16 %i.mr, 1
  %i.mt = trunc nuw i16 %i.ms to i8
  store i8 %i.mt, ptr %i.ls, align 1, !tbaa !28
  %i.mu = getelementptr inbounds nuw i8, ptr %.279.i6, i64 5 ; 2 uses
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !28
  %i.mw = zext i8 %i.mv to i16
  %i.mx = getelementptr inbounds nuw i8, ptr %.282.i5, i64 5
  %i.my = getelementptr inbounds nuw i8, ptr %.282.i5, i64 4
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !28
  %i.na = zext i8 %i.mz to i32
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !28
  %i.nc = zext i8 %i.nb to i32
  %i.nd = mul nuw nsw i32 %i.nc, 53
  %.neg8.5 = mul nsw i32 %i.na, -4
  %i.ne = getelementptr inbounds nuw i8, ptr %.282.i5, i64 6
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !28
  %i.ng = zext i8 %i.nf to i32
  %i.nh = mul nuw nsw i32 %i.ng, 18
  %i.ni = getelementptr inbounds nuw i8, ptr %.282.i5, i64 7
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !28
  %i.nk = zext i8 %i.nj to i32
  %.neg.i97.i.5 = mul nsw i32 %i.nk, -3
  %.reass19.reass = add i32 %.neg8.5, %invariant.op45
  %i.nl = add i32 %.reass19.reass, %i.nd
  %i.nm = add i32 %i.nl, %i.nh
  %i.nn = add i32 %i.nm, %.neg.i97.i.5
  %i.no = ashr i32 %i.nn, 6                       ; 3 uses
  %.not.i.i.5 = icmp ult i32 %i.no, 256
  %isnotneg.i.i.5 = icmp sgt i32 %i.no, -1
  %i.np = sext i1 %isnotneg.i.i.5 to i16
  %i.nq = trunc nuw i32 %i.no to i16
  %.0.i.i.5 = select i1 %.not.i.i.5, i16 %i.nq, i16 %i.np
  %i.nr = and i16 %.0.i.i.5, 255
  %i.ns = add nuw nsw i16 %i.mw, 1
  %i.nt = add nuw nsw i16 %i.ns, %i.nr
  %i.nu = lshr i16 %i.nt, 1
  %i.nv = trunc nuw i16 %i.nu to i8
  store i8 %i.nv, ptr %i.mu, align 1, !tbaa !28
  %i.nw = getelementptr inbounds nuw i8, ptr %.279.i6, i64 6
  %i.nx = getelementptr inbounds nuw i8, ptr %.282.i5, i64 6
  %i.ny = getelementptr inbounds nuw i8, ptr %.282.i5, i64 5
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !28
  %i.oa = zext i8 %i.nz to i32
  %i.ob = load i8, ptr %i.nx, align 1, !tbaa !28
  %i.oc = zext i8 %i.ob to i32
  %i.od = mul nuw nsw i32 %i.oc, 53
  %.neg8.6 = mul nsw i32 %i.oa, -4
  %i.oe = getelementptr inbounds nuw i8, ptr %.282.i5, i64 7
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !28
  %i.og = zext i8 %i.of to i32
  %i.oh = mul nuw nsw i32 %i.og, 18
  %i.oi = getelementptr inbounds nuw i8, ptr %.282.i5, i64 8
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !28
  %i.ok = zext i8 %i.oj to i32
  %.neg.i97.i.6 = mul nsw i32 %i.ok, -3
  %.reass21.reass = add i32 %.neg8.6, %invariant.op46
  %i.ol = add i32 %.reass21.reass, %i.od
  %i.om = add i32 %i.ol, %i.oh
  %i.on = add i32 %i.om, %.neg.i97.i.6
  %i.oo = ashr i32 %i.on, 6                       ; 3 uses
  %.not.i.i.6 = icmp ult i32 %i.oo, 256
  %isnotneg.i.i.6 = icmp sgt i32 %i.oo, -1
  %i.op = sext i1 %isnotneg.i.i.6 to i16
  %i.oq = trunc nuw i32 %i.oo to i16
  %.0.i.i.6 = select i1 %.not.i.i.6, i16 %i.oq, i16 %i.op
  %i.or = and i16 %.0.i.i.6, 255
  %i.os = add nuw nsw i16 %store_forwarded, 1
  %i.ot = add nuw nsw i16 %i.os, %i.or
  %i.ou = lshr i16 %i.ot, 1
  %i.ov = trunc nuw i16 %i.ou to i8
  store i8 %i.ov, ptr %i.nw, align 1, !tbaa !28
  %i.ow = getelementptr inbounds nuw i8, ptr %.279.i6, i64 7 ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !28
  %i.oy = zext i8 %i.ox to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %.282.i5, i64 7
  %i.pa = getelementptr inbounds nuw i8, ptr %.282.i5, i64 6
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !28
  %i.pc = zext i8 %i.pb to i32
  %i.pd = load i8, ptr %i.oz, align 1, !tbaa !28
  %i.pe = zext i8 %i.pd to i32
  %i.pf = mul nuw nsw i32 %i.pe, 53
  %.neg8.7 = mul nsw i32 %i.pc, -4
  %i.pg = getelementptr inbounds nuw i8, ptr %.282.i5, i64 8
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !28
  %i.pi = zext i8 %i.ph to i32
  %i.pj = mul nuw nsw i32 %i.pi, 18
  %i.pk = getelementptr inbounds nuw i8, ptr %.282.i5, i64 9
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !28
  %i.pm = zext i8 %i.pl to i32
  %.neg.i97.i.7 = mul nsw i32 %i.pm, -3
  %.reass23.reass = add i32 %.neg8.7, %invariant.op47
  %i.pn = add i32 %.reass23.reass, %i.pf
  %i.po = add i32 %i.pn, %i.pj
  %i.pp = add i32 %i.po, %.neg.i97.i.7
  %i.pq = ashr i32 %i.pp, 6                       ; 3 uses
  %.not.i.i.7 = icmp ult i32 %i.pq, 256
  %isnotneg.i.i.7 = icmp sgt i32 %i.pq, -1
  %i.pr = sext i1 %isnotneg.i.i.7 to i16
  %i.ps = trunc nuw i32 %i.pq to i16
  %.0.i.i.7 = select i1 %.not.i.i.7, i16 %i.ps, i16 %i.pr
  %i.pt = and i16 %.0.i.i.7, 255
  %i.pu = add nuw nsw i16 %i.oy, 1
  %i.pv = add nuw nsw i16 %i.pu, %i.pt
  %i.pw = lshr i16 %i.pv, 1                       ; 2 uses
  %i.px = trunc nuw i16 %i.pw to i8
  store i8 %i.px, ptr %i.ow, align 1, !tbaa !28
  %i.py = getelementptr inbounds nuw i8, ptr %.279.i6, i64 %2
  %i.pz = getelementptr inbounds nuw i8, ptr %.282.i5, i64 %2
  %i.qa = add nuw nsw i32 %.3.i7, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.qa, 8
  br i1 %exitcond.not, label %avg_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !7

avg_vc1_mspel_mc.exit:                            ; preds = %.preheader.lver.orig, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc10_16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = mul i64 %2, 15                           ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %scevgep = getelementptr i8, ptr %i.b, i64 16
  %scevgep11 = getelementptr i8, ptr %1, i64 -1
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %scevgep12 = getelementptr i8, ptr %i.c, i64 18
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %scevgep11, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.d = or i1 %found.conflict, %stride.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op18 = sub <16 x i32> splat (i32 32), %broadcast.splat
  %invariant.op = sub i32 32, %3
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.3.i7 = phi i32 [ 0, %bb.a ], [ %i.bi, %.loopexit ]
  %.279.i6 = phi ptr [ %0, %bb.a ], [ %i.bg, %.loopexit ] ; 4 uses
  %.282.i5 = phi ptr [ %1, %bb.a ], [ %i.bh, %.loopexit ] ; 6 uses
  br i1 %i.d, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %.279.i6, align 1, !tbaa !28, !alias.scope !95, !noalias !96
  %i.e = zext <16 x i8> %wide.load to <16 x i16>
  %i.f = getelementptr inbounds i8, ptr %.282.i5, i64 -1
  %wide.load14 = load <16 x i8>, ptr %i.f, align 1, !tbaa !28, !alias.scope !96
  %i.g = zext <16 x i8> %wide.load14 to <16 x i32>
  %wide.load15 = load <16 x i8>, ptr %.282.i5, align 1, !tbaa !28, !alias.scope !96
  %i.h = zext <16 x i8> %wide.load15 to <16 x i32>
  %i.i = mul nuw nsw <16 x i32> %i.h, splat (i32 53)
  %i.j = mul nsw <16 x i32> %i.g, splat (i32 -4)
  %i.k = getelementptr inbounds nuw i8, ptr %.282.i5, i64 1
  %wide.load16 = load <16 x i8>, ptr %i.k, align 1, !tbaa !28, !alias.scope !96
  %i.l = zext <16 x i8> %wide.load16 to <16 x i32>
  %i.m = mul nuw nsw <16 x i32> %i.l, splat (i32 18)
  %i.n = getelementptr inbounds nuw i8, ptr %.282.i5, i64 2
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1, !tbaa !28, !alias.scope !96
  %i.o = zext <16 x i8> %wide.load17 to <16 x i32>
  %i.p = mul nsw <16 x i32> %i.o, splat (i32 -3)
  %.reass = add <16 x i32> %i.j, %invariant.op18
  %i.q = add <16 x i32> %.reass, %i.i
  %i.r = add <16 x i32> %i.q, %i.m
  %i.s = add <16 x i32> %i.r, %i.p
  %i.t = ashr <16 x i32> %i.s, splat (i32 6)      ; 3 uses
  %i.u = icmp ult <16 x i32> %i.t, splat (i32 256)
  %i.v = icmp sgt <16 x i32> %i.t, splat (i32 -1)
  %i.w = sext <16 x i1> %i.v to <16 x i16>
  %i.x = trunc nuw <16 x i32> %i.t to <16 x i16>
  %i.y = select <16 x i1> %i.u, <16 x i16> %i.x, <16 x i16> %i.w
  %i.z = and <16 x i16> %i.y, splat (i16 255)
  %i.aa = add nuw nsw <16 x i16> %i.e, splat (i16 1)
  %i.ab = add nuw nsw <16 x i16> %i.aa, %i.z
  %i.ac = lshr <16 x i16> %i.ab, splat (i16 1)
  %i.ad = trunc nuw <16 x i16> %i.ac to <16 x i8>
  store <16 x i8> %i.ad, ptr %.279.i6, align 1, !tbaa !28, !alias.scope !95, !noalias !96
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.279.i6, i64 %indvars.iv ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %.282.i5, i64 %indvars.iv ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i32
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.am = zext i8 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 53
  %.neg8 = mul nsw i32 %i.ak, -4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = zext i8 %i.ap to i32
  %i.ar = mul nuw nsw i32 %i.aq, 18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !28
  %i.au = zext i8 %i.at to i32
  %.neg.i97.i = mul nsw i32 %i.au, -3
  %.reass.reass = add i32 %.neg8, %invariant.op
  %i.av = add i32 %.reass.reass, %i.an
  %i.aw = add i32 %i.av, %i.ar
  %i.ax = add i32 %i.aw, %.neg.i97.i
  %i.ay = ashr i32 %i.ax, 6                       ; 3 uses
  %.not.i.i = icmp ult i32 %i.ay, 256
  %isnotneg.i.i = icmp sgt i32 %i.ay, -1
  %i.az = sext i1 %isnotneg.i.i to i16
  %i.ba = trunc nuw i32 %i.ay to i16
  %.0.i.i = select i1 %.not.i.i, i16 %i.ba, i16 %i.az
  %i.bb = and i16 %.0.i.i, 255
  %i.bc = add nuw nsw i16 %i.ag, 1
  %i.bd = add nuw nsw i16 %i.bc, %i.bb
  %i.be = lshr i16 %i.bd, 1
  %i.bf = trunc nuw i16 %i.be to i8
  store i8 %i.bf, ptr %i.ae, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !94

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.bg = getelementptr inbounds i8, ptr %.279.i6, i64 %2
  %i.bh = getelementptr inbounds i8, ptr %.282.i5, i64 %2
  %i.bi = add nuw nsw i32 %.3.i7, 1               ; 2 uses
  %exitcond10.not = icmp eq i32 %i.bi, 16
  br i1 %exitcond10.not, label %avg_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !8

avg_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc11_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [88 x i16], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1
  %i.c = sub nsw i64 0, %2                        ; 4 uses
  %i.d = shl nsw i64 %2, 1                        ; 4 uses
  %i.e = add i32 %3, 15                           ; 4 uses
  %i.f = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %i.g = shufflevector <8 x i32> %i.f, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader8

.preheader8:                                      ; preds = %bb.a, %.preheader8
  %.0.i12 = phi ptr [ %i.a, %bb.a ], [ %i.cq, %.preheader8 ] ; 5 uses
  %.065.i11 = phi i32 [ 0, %bb.a ], [ %i.cr, %.preheader8 ]
  %.074.i10 = phi ptr [ %i.b, %bb.a ], [ %i.i, %.preheader8 ] ; 7 uses
  %i.h = getelementptr inbounds i8, ptr %.074.i10, i64 %i.c
  %i.i = getelementptr inbounds i8, ptr %.074.i10, i64 %2 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.074.i10, i64 %i.d
  %i.k = load <8 x i8>, ptr %i.h, align 1, !tbaa !28
  %i.l = zext <8 x i8> %i.k to <8 x i32>
  %i.m = load <8 x i8>, ptr %.074.i10, align 1, !tbaa !28
  %i.n = zext <8 x i8> %i.m to <8 x i32>
  %i.o = mul nuw nsw <8 x i32> %i.n, splat (i32 53)
  %i.p = load <8 x i8>, ptr %i.i, align 1, !tbaa !28
  %i.q = zext <8 x i8> %i.p to <8 x i32>
  %i.r = mul nuw nsw <8 x i32> %i.q, splat (i32 18)
  %i.s = load <8 x i8>, ptr %i.j, align 1, !tbaa !28
  %i.t = zext <8 x i8> %i.s to <8 x i32>
  %i.u = mul nuw nsw <8 x i32> %i.t, splat (i32 2097149)
  %i.v = shl nuw nsw <8 x i32> %i.l, splat (i32 2)
  %i.w = sub <8 x i32> %i.g, %i.v
  %i.x = add <8 x i32> %i.w, %i.o
  %i.y = add <8 x i32> %i.x, %i.r
  %i.z = add <8 x i32> %i.y, %i.u
  %i.aa = lshr <8 x i32> %i.z, splat (i32 5)
  %i.ab = trunc <8 x i32> %i.aa to <8 x i16>
  store <8 x i16> %i.ab, ptr %.0.i12, align 2, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.074.i10, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.af = zext i8 %i.ae to i32
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 53
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 %2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 18
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 %i.d
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %.neg.i.8 = mul nuw nsw i32 %i.ap, 2097149
  %i.aq = shl nuw nsw i32 %i.af, 2
  %i.ar = sub i32 %i.e, %i.aq
  %i.as = add i32 %i.ar, %i.ai
  %i.at = add i32 %i.as, %i.am
  %i.au = add i32 %i.at, %.neg.i.8
  %i.av = lshr i32 %i.au, 5
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i12, i64 16
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %.074.i10, i64 9 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.c
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 53
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 18
  %i.bj = getelementptr inbounds i8, ptr %i.ay, i64 %i.d
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %.neg.i.9 = mul nuw nsw i32 %i.bl, 2097149
  %i.bm = shl nuw nsw i32 %i.bb, 2
  %i.bn = sub i32 %i.e, %i.bm
  %i.bo = add i32 %i.bn, %i.be
  %i.bp = add i32 %i.bo, %i.bi
  %i.bq = add i32 %i.bp, %.neg.i.9
  %i.br = lshr i32 %i.bq, 5
  %i.bs = trunc i32 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i12, i64 18
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.074.i10, i64 10 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.c
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = zext i8 %i.bw to i32
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, 53
  %i.cb = getelementptr inbounds i8, ptr %i.bu, i64 %2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cd = zext i8 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.cd, 18
  %i.cf = getelementptr inbounds i8, ptr %i.bu, i64 %i.d
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !28
  %i.ch = zext i8 %i.cg to i32
  %.neg.i.10 = mul nuw nsw i32 %i.ch, 2097149
  %i.ci = shl nuw nsw i32 %i.bx, 2
  %i.cj = sub i32 %i.e, %i.ci
  %i.ck = add i32 %i.cj, %i.ca
  %i.cl = add i32 %i.ck, %i.ce
  %i.cm = add i32 %i.cl, %.neg.i.10
  %i.cn = lshr i32 %i.cm, 5
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i12, i64 20
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i12, i64 22
  %i.cr = add nuw nsw i32 %.065.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, 8
  br i1 %exitcond.not, label %bb.b, label %.preheader8, !llvm.loop !9

bb.b:                                             ; preds = %.preheader8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ct = insertelement <8 x i32> poison, i32 %3, i64 0
  %i.cu = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op = sub <8 x i32> splat (i32 64), %i.cu
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.1.i16 = phi ptr [ %i.cs, %bb.b ], [ %i.du, %.preheader ] ; 5 uses
  %.166.i15 = phi i32 [ 0, %bb.b ], [ %i.dv, %.preheader ]
  %.071.i14 = phi ptr [ %0, %bb.b ], [ %i.dt, %.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.1.i16, i64 -2
  %i.cw = getelementptr inbounds nuw i8, ptr %.1.i16, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.1.i16, i64 4
  %i.cy = load <8 x i16>, ptr %i.cv, align 2, !tbaa !27
  %i.cz = load <8 x i16>, ptr %.1.i16, align 2, !tbaa !27
  %i.da = load <8 x i16>, ptr %i.cw, align 2, !tbaa !27
  %i.db = load <8 x i16>, ptr %i.cx, align 2, !tbaa !27
  %i.dc = sext <8 x i16> %i.cy to <8 x i32>
  %i.dd = sext <8 x i16> %i.cz to <8 x i32>
  %i.de = sext <8 x i16> %i.da to <8 x i32>
  %i.df = sext <8 x i16> %i.db to <8 x i32>
  %i.dg = mul nsw <8 x i32> %i.dd, splat (i32 53)
  %i.dh = mul nsw <8 x i32> %i.dc, splat (i32 -4)
  %i.di = mul nsw <8 x i32> %i.de, splat (i32 18)
  %i.dj = mul nsw <8 x i32> %i.df, splat (i32 -3)
  %.reass = add <8 x i32> %i.dh, %invariant.op
  %i.dk = add <8 x i32> %.reass, %i.dg
  %i.dl = add <8 x i32> %i.dk, %i.di
  %i.dm = add <8 x i32> %i.dl, %i.dj
  %i.dn = ashr <8 x i32> %i.dm, splat (i32 7)     ; 3 uses
  %i.do = icmp ult <8 x i32> %i.dn, splat (i32 256)
  %i.dp = icmp sgt <8 x i32> %i.dn, splat (i32 -1)
  %i.dq = sext <8 x i1> %i.dp to <8 x i8>
  %i.dr = trunc <8 x i32> %i.dn to <8 x i8>
  %i.ds = select <8 x i1> %i.do, <8 x i8> %i.dr, <8 x i8> %i.dq
  store <8 x i8> %i.ds, ptr %.071.i14, align 1, !tbaa !28
  %i.dt = getelementptr inbounds i8, ptr %.071.i14, i64 %2
  %i.du = getelementptr inbounds nuw i8, ptr %.1.i16, i64 22
  %i.dv = add nuw nsw i32 %.166.i15, 1            ; 2 uses
  %exitcond22.not = icmp eq i32 %i.dv, 8
  br i1 %exitcond22.not, label %put_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !10

put_vc1_mspel_mc.exit:                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc11_16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [304 x i16], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1
  %i.c = sub nsw i64 0, %2                        ; 5 uses
  %i.d = shl nsw i64 %2, 1                        ; 5 uses
  %i.e = add i32 %3, 15                           ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph, %bb.a
  %.0.i9 = phi ptr [ %i.a, %bb.a ], [ %i.de, %vector.ph ] ; 6 uses
  %.065.i8 = phi i32 [ 0, %bb.a ], [ %i.df, %vector.ph ]
  %.074.i7 = phi ptr [ %i.b, %bb.a ], [ %i.dd, %vector.ph ] ; 9 uses
  %i.f = getelementptr inbounds i8, ptr %.074.i7, i64 %i.c
  %wide.load = load <8 x i8>, ptr %i.f, align 1, !tbaa !28
  %i.g = zext <8 x i8> %wide.load to <8 x i32>
  %wide.load24 = load <8 x i8>, ptr %.074.i7, align 1, !tbaa !28
  %i.h = zext <8 x i8> %wide.load24 to <8 x i32>
  %i.i = mul nuw nsw <8 x i32> %i.h, splat (i32 53)
  %i.j = getelementptr inbounds i8, ptr %.074.i7, i64 %2
end_hunk_6
begin_hunk_7_@avg_vc1_mspel_mc20_c:.preheader.lver.check
  %i.kp = trunc nuw i16 %i.ko to i8
  store i8 %i.kp, ptr %i.jp, align 1, !tbaa !28
  %i.kq = getelementptr inbounds nuw i8, ptr %.279.i9, i64 3 ; 2 uses
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !28
  %i.ks = zext i8 %i.kr to i16
  %i.kt = getelementptr inbounds nuw i8, ptr %.282.i8, i64 3
  %i.ku = getelementptr inbounds nuw i8, ptr %.282.i8, i64 2
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !28
  %i.kw = zext i8 %i.kv to i32
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !28
  %i.ky = zext i8 %i.kx to i32
  %i.kz = getelementptr inbounds nuw i8, ptr %.282.i8, i64 4
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !28
  %i.lb = zext i8 %i.la to i32
  %i.lc = getelementptr inbounds nuw i8, ptr %.282.i8, i64 5
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !28
  %i.le = zext i8 %i.ld to i32
  %i.lf = add nuw nsw i32 %i.lb, %i.ky
  %i.lg = mul nuw nsw i32 %i.lf, 9
  %i.lh = add i32 %3, %i.kw
  %i.li = add i32 %i.lh, %i.le
  %reass.sub.3 = sub i32 %i.lg, %i.li
  %i.lj = add i32 %reass.sub.3, 8
  %i.lk = ashr i32 %i.lj, 4                       ; 3 uses
  %.not.i.i.3 = icmp ult i32 %i.lk, 256
  %isnotneg.i.i.3 = icmp sgt i32 %i.lk, -1
  %i.ll = sext i1 %isnotneg.i.i.3 to i16
  %i.lm = trunc nuw i32 %i.lk to i16
  %.0.i.i.3 = select i1 %.not.i.i.3, i16 %i.lm, i16 %i.ll
  %i.ln = and i16 %.0.i.i.3, 255
  %i.lo = add nuw nsw i16 %i.ks, 1
  %i.lp = add nuw nsw i16 %i.lo, %i.ln
  %i.lq = lshr i16 %i.lp, 1
  %i.lr = trunc nuw i16 %i.lq to i8
  store i8 %i.lr, ptr %i.kq, align 1, !tbaa !28
  %i.ls = getelementptr inbounds nuw i8, ptr %.279.i9, i64 4 ; 2 uses
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !28
  %i.lu = zext i8 %i.lt to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %.282.i8, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %.282.i8, i64 3
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !28
  %i.ly = zext i8 %i.lx to i32
  %i.lz = load i8, ptr %i.lv, align 1, !tbaa !28
  %i.ma = zext i8 %i.lz to i32
  %i.mb = getelementptr inbounds nuw i8, ptr %.282.i8, i64 5
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !28
  %i.md = zext i8 %i.mc to i32
  %i.me = getelementptr inbounds nuw i8, ptr %.282.i8, i64 6
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !28
  %i.mg = zext i8 %i.mf to i32
  %i.mh = add nuw nsw i32 %i.md, %i.ma
  %i.mi = mul nuw nsw i32 %i.mh, 9
  %i.mj = add i32 %3, %i.ly
  %i.mk = add i32 %i.mj, %i.mg
  %reass.sub.4 = sub i32 %i.mi, %i.mk
  %i.ml = add i32 %reass.sub.4, 8
  %i.mm = ashr i32 %i.ml, 4                       ; 3 uses
  %.not.i.i.4 = icmp ult i32 %i.mm, 256
  %isnotneg.i.i.4 = icmp sgt i32 %i.mm, -1
  %i.mn = sext i1 %isnotneg.i.i.4 to i16
  %i.mo = trunc nuw i32 %i.mm to i16
  %.0.i.i.4 = select i1 %.not.i.i.4, i16 %i.mo, i16 %i.mn
  %i.mp = and i16 %.0.i.i.4, 255
  %i.mq = add nuw nsw i16 %i.lu, 1
  %i.mr = add nuw nsw i16 %i.mq, %i.mp
  %i.ms = lshr i16 %i.mr, 1
  %i.mt = trunc nuw i16 %i.ms to i8
  store i8 %i.mt, ptr %i.ls, align 1, !tbaa !28
  %i.mu = getelementptr inbounds nuw i8, ptr %.279.i9, i64 5 ; 2 uses
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !28
  %i.mw = zext i8 %i.mv to i16
  %i.mx = getelementptr inbounds nuw i8, ptr %.282.i8, i64 5
  %i.my = getelementptr inbounds nuw i8, ptr %.282.i8, i64 4
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !28
  %i.na = zext i8 %i.mz to i32
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !28
  %i.nc = zext i8 %i.nb to i32
  %i.nd = getelementptr inbounds nuw i8, ptr %.282.i8, i64 6
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !28
  %i.nf = zext i8 %i.ne to i32
  %i.ng = getelementptr inbounds nuw i8, ptr %.282.i8, i64 7
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !28
  %i.ni = zext i8 %i.nh to i32
  %i.nj = add nuw nsw i32 %i.nf, %i.nc
  %i.nk = mul nuw nsw i32 %i.nj, 9
  %i.nl = add i32 %3, %i.na
  %i.nm = add i32 %i.nl, %i.ni
  %reass.sub.5 = sub i32 %i.nk, %i.nm
  %i.nn = add i32 %reass.sub.5, 8
  %i.no = ashr i32 %i.nn, 4                       ; 3 uses
  %.not.i.i.5 = icmp ult i32 %i.no, 256
  %isnotneg.i.i.5 = icmp sgt i32 %i.no, -1
  %i.np = sext i1 %isnotneg.i.i.5 to i16
  %i.nq = trunc nuw i32 %i.no to i16
  %.0.i.i.5 = select i1 %.not.i.i.5, i16 %i.nq, i16 %i.np
  %i.nr = and i16 %.0.i.i.5, 255
  %i.ns = add nuw nsw i16 %i.mw, 1
  %i.nt = add nuw nsw i16 %i.ns, %i.nr
  %i.nu = lshr i16 %i.nt, 1
  %i.nv = trunc nuw i16 %i.nu to i8
  store i8 %i.nv, ptr %i.mu, align 1, !tbaa !28
  %i.nw = getelementptr inbounds nuw i8, ptr %.279.i9, i64 6
  %i.nx = getelementptr inbounds nuw i8, ptr %.282.i8, i64 6
  %i.ny = getelementptr inbounds nuw i8, ptr %.282.i8, i64 5
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !28
  %i.oa = zext i8 %i.nz to i32
  %i.ob = load i8, ptr %i.nx, align 1, !tbaa !28
  %i.oc = zext i8 %i.ob to i32
  %i.od = getelementptr inbounds nuw i8, ptr %.282.i8, i64 7
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !28
  %i.of = zext i8 %i.oe to i32
  %i.og = getelementptr inbounds nuw i8, ptr %.282.i8, i64 8
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !28
  %i.oi = zext i8 %i.oh to i32
  %i.oj = add nuw nsw i32 %i.of, %i.oc
  %i.ok = mul nuw nsw i32 %i.oj, 9
  %i.ol = add i32 %3, %i.oa
  %i.om = add i32 %i.ol, %i.oi
  %reass.sub.6 = sub i32 %i.ok, %i.om
  %i.on = add i32 %reass.sub.6, 8
  %i.oo = ashr i32 %i.on, 4                       ; 3 uses
  %.not.i.i.6 = icmp ult i32 %i.oo, 256
  %isnotneg.i.i.6 = icmp sgt i32 %i.oo, -1
  %i.op = sext i1 %isnotneg.i.i.6 to i16
  %i.oq = trunc nuw i32 %i.oo to i16
  %.0.i.i.6 = select i1 %.not.i.i.6, i16 %i.oq, i16 %i.op
  %i.or = and i16 %.0.i.i.6, 255
  %i.os = add nuw nsw i16 %store_forwarded, 1
  %i.ot = add nuw nsw i16 %i.os, %i.or
  %i.ou = lshr i16 %i.ot, 1
  %i.ov = trunc nuw i16 %i.ou to i8
  store i8 %i.ov, ptr %i.nw, align 1, !tbaa !28
  %i.ow = getelementptr inbounds nuw i8, ptr %.279.i9, i64 7 ; 2 uses
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !28
  %i.oy = zext i8 %i.ox to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %.282.i8, i64 7
  %i.pa = getelementptr inbounds nuw i8, ptr %.282.i8, i64 6
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !28
  %i.pc = zext i8 %i.pb to i32
  %i.pd = load i8, ptr %i.oz, align 1, !tbaa !28
  %i.pe = zext i8 %i.pd to i32
  %i.pf = getelementptr inbounds nuw i8, ptr %.282.i8, i64 8
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !28
  %i.ph = zext i8 %i.pg to i32
  %i.pi = getelementptr inbounds nuw i8, ptr %.282.i8, i64 9
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !28
  %i.pk = zext i8 %i.pj to i32
  %i.pl = add nuw nsw i32 %i.ph, %i.pe
  %i.pm = mul nuw nsw i32 %i.pl, 9
  %i.pn = add i32 %3, %i.pc
  %i.po = add i32 %i.pn, %i.pk
  %reass.sub.7 = sub i32 %i.pm, %i.po
  %i.pp = add i32 %reass.sub.7, 8
  %i.pq = ashr i32 %i.pp, 4                       ; 3 uses
  %.not.i.i.7 = icmp ult i32 %i.pq, 256
  %isnotneg.i.i.7 = icmp sgt i32 %i.pq, -1
  %i.pr = sext i1 %isnotneg.i.i.7 to i16
  %i.ps = trunc nuw i32 %i.pq to i16
  %.0.i.i.7 = select i1 %.not.i.i.7, i16 %i.ps, i16 %i.pr
  %i.pt = and i16 %.0.i.i.7, 255
  %i.pu = add nuw nsw i16 %i.oy, 1
  %i.pv = add nuw nsw i16 %i.pu, %i.pt
  %i.pw = lshr i16 %i.pv, 1                       ; 2 uses
  %i.px = trunc nuw i16 %i.pw to i8
  store i8 %i.px, ptr %i.ow, align 1, !tbaa !28
  %i.py = getelementptr inbounds nuw i8, ptr %.279.i9, i64 %2
  %i.pz = getelementptr inbounds nuw i8, ptr %.282.i8, i64 %2
  %i.qa = add nuw nsw i32 %.3.i10, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.qa, 8
  br i1 %exitcond.not, label %avg_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !7

avg_vc1_mspel_mc.exit:                            ; preds = %.preheader.lver.orig, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc20_16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = mul i64 %2, 15                           ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %scevgep = getelementptr i8, ptr %i.b, i64 16
  %scevgep13 = getelementptr i8, ptr %1, i64 -1
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %scevgep14 = getelementptr i8, ptr %i.c, i64 18
  %bound0 = icmp ult ptr %0, %scevgep14
  %bound1 = icmp ult ptr %scevgep13, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.d = or i1 %found.conflict, %stride.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.3.i10 = phi i32 [ 0, %bb.a ], [ %i.bh, %.loopexit ]
  %.279.i9 = phi ptr [ %0, %bb.a ], [ %i.bf, %.loopexit ] ; 4 uses
  %.282.i8 = phi ptr [ %1, %bb.a ], [ %i.bg, %.loopexit ] ; 6 uses
  br i1 %i.d, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %.279.i9, align 1, !tbaa !28, !alias.scope !101, !noalias !102
  %i.e = zext <16 x i8> %wide.load to <16 x i16>
  %i.f = getelementptr inbounds i8, ptr %.282.i8, i64 -1
  %wide.load16 = load <16 x i8>, ptr %i.f, align 1, !tbaa !28, !alias.scope !102
  %i.g = zext <16 x i8> %wide.load16 to <16 x i32>
  %wide.load17 = load <16 x i8>, ptr %.282.i8, align 1, !tbaa !28, !alias.scope !102
  %i.h = zext <16 x i8> %wide.load17 to <16 x i32>
  %i.i = getelementptr inbounds nuw i8, ptr %.282.i8, i64 1
  %wide.load18 = load <16 x i8>, ptr %i.i, align 1, !tbaa !28, !alias.scope !102
  %i.j = zext <16 x i8> %wide.load18 to <16 x i32>
  %i.k = getelementptr inbounds nuw i8, ptr %.282.i8, i64 2
  %wide.load19 = load <16 x i8>, ptr %i.k, align 1, !tbaa !28, !alias.scope !102
  %i.l = zext <16 x i8> %wide.load19 to <16 x i32>
  %i.m = add nuw nsw <16 x i32> %i.j, %i.h
  %i.n = mul nuw nsw <16 x i32> %i.m, splat (i32 9)
  %i.o = add <16 x i32> %broadcast.splat, %i.g
  %i.p = add <16 x i32> %i.o, %i.l
  %i.q = sub <16 x i32> %i.n, %i.p
  %i.r = add <16 x i32> %i.q, splat (i32 8)
  %i.s = ashr <16 x i32> %i.r, splat (i32 4)      ; 3 uses
  %i.t = icmp ult <16 x i32> %i.s, splat (i32 256)
  %i.u = icmp sgt <16 x i32> %i.s, splat (i32 -1)
  %i.v = sext <16 x i1> %i.u to <16 x i16>
  %i.w = trunc nuw <16 x i32> %i.s to <16 x i16>
  %i.x = select <16 x i1> %i.t, <16 x i16> %i.w, <16 x i16> %i.v
  %i.y = and <16 x i16> %i.x, splat (i16 255)
  %i.z = add nuw nsw <16 x i16> %i.e, splat (i16 1)
  %i.aa = add nuw nsw <16 x i16> %i.z, %i.y
  %i.ab = lshr <16 x i16> %i.aa, splat (i16 1)
  %i.ac = trunc nuw <16 x i16> %i.ab to <16 x i8>
  store <16 x i8> %i.ac, ptr %.279.i9, align 1, !tbaa !28, !alias.scope !101, !noalias !102
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.279.i9, i64 %indvars.iv ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.af = zext i8 %i.ae to i16
  %i.ag = getelementptr inbounds nuw i8, ptr %.282.i8, i64 %indvars.iv ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.aj = zext i8 %i.ai to i32
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28
  %i.ao = zext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.ao, %i.al
  %i.at = mul nuw nsw i32 %i.as, 9
  %i.au = add i32 %3, %i.aj
  %i.av = add i32 %i.au, %i.ar
  %reass.sub = sub i32 %i.at, %i.av
  %i.aw = add i32 %reass.sub, 8
  %i.ax = ashr i32 %i.aw, 4                       ; 3 uses
  %.not.i.i = icmp ult i32 %i.ax, 256
  %isnotneg.i.i = icmp sgt i32 %i.ax, -1
  %i.ay = sext i1 %isnotneg.i.i to i16
  %i.az = trunc nuw i32 %i.ax to i16
  %.0.i.i = select i1 %.not.i.i, i16 %i.az, i16 %i.ay
  %i.ba = and i16 %.0.i.i, 255
  %i.bb = add nuw nsw i16 %i.af, 1
  %i.bc = add nuw nsw i16 %i.bb, %i.ba
  %i.bd = lshr i16 %i.bc, 1
  %i.be = trunc nuw i16 %i.bd to i8
  store i8 %i.be, ptr %i.ad, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !100

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.bf = getelementptr inbounds i8, ptr %.279.i9, i64 %2
  %i.bg = getelementptr inbounds i8, ptr %.282.i8, i64 %2
  %i.bh = add nuw nsw i32 %.3.i10, 1              ; 2 uses
  %exitcond12.not = icmp eq i32 %i.bh, 16
  br i1 %exitcond12.not, label %avg_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !8

avg_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc21_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [88 x i16], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1
  %i.c = sub nsw i64 0, %2                        ; 4 uses
  %i.d = shl nsw i64 %2, 1                        ; 4 uses
  %i.e = add i32 %3, 3                            ; 4 uses
  %i.f = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %i.g = shufflevector <8 x i32> %i.f, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader10

.preheader10:                                     ; preds = %bb.a, %.preheader10
  %.0.i14 = phi ptr [ %i.a, %bb.a ], [ %i.cq, %.preheader10 ] ; 5 uses
  %.065.i13 = phi i32 [ 0, %bb.a ], [ %i.cr, %.preheader10 ]
  %.074.i12 = phi ptr [ %i.b, %bb.a ], [ %i.i, %.preheader10 ] ; 7 uses
  %i.h = getelementptr inbounds i8, ptr %.074.i12, i64 %i.c
  %i.i = getelementptr inbounds i8, ptr %.074.i12, i64 %2 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.074.i12, i64 %i.d
  %i.k = load <8 x i8>, ptr %i.h, align 1, !tbaa !28
  %i.l = zext <8 x i8> %i.k to <8 x i32>
  %i.m = load <8 x i8>, ptr %.074.i12, align 1, !tbaa !28
  %i.n = zext <8 x i8> %i.m to <8 x i32>
  %i.o = mul nuw nsw <8 x i32> %i.n, splat (i32 53)
  %i.p = load <8 x i8>, ptr %i.i, align 1, !tbaa !28
  %i.q = zext <8 x i8> %i.p to <8 x i32>
  %i.r = mul nuw nsw <8 x i32> %i.q, splat (i32 18)
  %i.s = load <8 x i8>, ptr %i.j, align 1, !tbaa !28
  %i.t = zext <8 x i8> %i.s to <8 x i32>
  %i.u = mul nuw nsw <8 x i32> %i.t, splat (i32 524285)
  %i.v = shl nuw nsw <8 x i32> %i.l, splat (i32 2)
  %i.w = sub <8 x i32> %i.g, %i.v
  %i.x = add <8 x i32> %i.w, %i.o
  %i.y = add <8 x i32> %i.x, %i.r
  %i.z = add <8 x i32> %i.y, %i.u
  %i.aa = lshr <8 x i32> %i.z, splat (i32 3)
  %i.ab = trunc <8 x i32> %i.aa to <8 x i16>
  store <8 x i16> %i.ab, ptr %.0.i14, align 2, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.074.i12, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.af = zext i8 %i.ae to i32
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 53
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 %2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 18
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 %i.d
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %.neg.i.8 = mul nuw nsw i32 %i.ap, 524285
  %i.aq = shl nuw nsw i32 %i.af, 2
  %i.ar = sub i32 %i.e, %i.aq
  %i.as = add i32 %i.ar, %i.ai
  %i.at = add i32 %i.as, %i.am
  %i.au = add i32 %i.at, %.neg.i.8
  %i.av = lshr i32 %i.au, 3
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i14, i64 16
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %.074.i12, i64 9 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.c
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 53
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 18
  %i.bj = getelementptr inbounds i8, ptr %i.ay, i64 %i.d
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %.neg.i.9 = mul nuw nsw i32 %i.bl, 524285
  %i.bm = shl nuw nsw i32 %i.bb, 2
  %i.bn = sub i32 %i.e, %i.bm
  %i.bo = add i32 %i.bn, %i.be
  %i.bp = add i32 %i.bo, %i.bi
  %i.bq = add i32 %i.bp, %.neg.i.9
  %i.br = lshr i32 %i.bq, 3
  %i.bs = trunc i32 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i14, i64 18
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.074.i12, i64 10 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.c
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = zext i8 %i.bw to i32
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, 53
  %i.cb = getelementptr inbounds i8, ptr %i.bu, i64 %2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cd = zext i8 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.cd, 18
  %i.cf = getelementptr inbounds i8, ptr %i.bu, i64 %i.d
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !28
  %i.ch = zext i8 %i.cg to i32
  %.neg.i.10 = mul nuw nsw i32 %i.ch, 524285
  %i.ci = shl nuw nsw i32 %i.bx, 2
  %i.cj = sub i32 %i.e, %i.ci
  %i.ck = add i32 %i.cj, %i.ca
  %i.cl = add i32 %i.ck, %i.ce
  %i.cm = add i32 %i.cl, %.neg.i.10
  %i.cn = lshr i32 %i.cm, 3
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i14, i64 20
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i14, i64 22
  %i.cr = add nuw nsw i32 %.065.i13, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, 8
  br i1 %exitcond.not, label %bb.b, label %.preheader10, !llvm.loop !9

bb.b:                                             ; preds = %.preheader10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ct = insertelement <8 x i32> poison, i32 %3, i64 0
  %i.cu = shufflevector <8 x i32> %i.ct, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader
  %.1.i18 = phi ptr [ %i.cs, %bb.b ], [ %i.dt, %.preheader ] ; 5 uses
  %.166.i17 = phi i32 [ 0, %bb.b ], [ %i.du, %.preheader ]
  %.071.i16 = phi ptr [ %0, %bb.b ], [ %i.ds, %.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.1.i18, i64 -2
  %i.cw = getelementptr inbounds nuw i8, ptr %.1.i18, i64 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.1.i18, i64 4
  %i.cy = load <8 x i16>, ptr %i.cv, align 2, !tbaa !27
  %i.cz = load <8 x i16>, ptr %.1.i18, align 2, !tbaa !27
  %i.da = load <8 x i16>, ptr %i.cw, align 2, !tbaa !27
  %i.db = load <8 x i16>, ptr %i.cx, align 2, !tbaa !27
  %i.dc = sext <8 x i16> %i.cy to <8 x i32>
  %i.dd = sext <8 x i16> %i.cz to <8 x i32>
  %i.de = sext <8 x i16> %i.da to <8 x i32>
  %i.df = sext <8 x i16> %i.db to <8 x i32>
  %i.dg = add nsw <8 x i32> %i.de, %i.dd
  %i.dh = mul nsw <8 x i32> %i.dg, splat (i32 9)
  %i.di = add <8 x i32> %i.cu, %i.dc
  %i.dj = add <8 x i32> %i.di, %i.df
  %i.dk = sub <8 x i32> %i.dh, %i.dj
  %i.dl = add <8 x i32> %i.dk, splat (i32 64)
  %i.dm = ashr <8 x i32> %i.dl, splat (i32 7)     ; 3 uses
  %i.dn = icmp ult <8 x i32> %i.dm, splat (i32 256)
  %i.do = icmp sgt <8 x i32> %i.dm, splat (i32 -1)
  %i.dp = sext <8 x i1> %i.do to <8 x i8>
  %i.dq = trunc <8 x i32> %i.dm to <8 x i8>
  %i.dr = select <8 x i1> %i.dn, <8 x i8> %i.dq, <8 x i8> %i.dp
  store <8 x i8> %i.dr, ptr %.071.i16, align 1, !tbaa !28
  %i.ds = getelementptr inbounds i8, ptr %.071.i16, i64 %2
  %i.dt = getelementptr inbounds nuw i8, ptr %.1.i18, i64 22
  %i.du = add nuw nsw i32 %.166.i17, 1            ; 2 uses
  %exitcond23.not = icmp eq i32 %i.du, 8
  br i1 %exitcond23.not, label %put_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !10

put_vc1_mspel_mc.exit:                            ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc21_16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [304 x i16], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1
  %i.c = sub nsw i64 0, %2                        ; 5 uses
  %i.d = shl nsw i64 %2, 1                        ; 5 uses
  %i.e = add i32 %3, 3                            ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph, %bb.a
  %.0.i12 = phi ptr [ %i.a, %bb.a ], [ %i.de, %vector.ph ] ; 6 uses
  %.065.i11 = phi i32 [ 0, %bb.a ], [ %i.df, %vector.ph ]
  %.074.i10 = phi ptr [ %i.b, %bb.a ], [ %i.dd, %vector.ph ] ; 9 uses
  %i.f = getelementptr inbounds i8, ptr %.074.i10, i64 %i.c
  %wide.load = load <8 x i8>, ptr %i.f, align 1, !tbaa !28
  %i.g = zext <8 x i8> %wide.load to <8 x i32>
  %wide.load25 = load <8 x i8>, ptr %.074.i10, align 1, !tbaa !28
  %i.h = zext <8 x i8> %wide.load25 to <8 x i32>
  %i.i = mul nuw nsw <8 x i32> %i.h, splat (i32 53)
  %i.j = getelementptr inbounds i8, ptr %.074.i10, i64 %2
  %wide.load26 = load <8 x i8>, ptr %i.j, align 1, !tbaa !28
  %i.k = zext <8 x i8> %wide.load26 to <8 x i32>
  %i.l = mul nuw nsw <8 x i32> %i.k, splat (i32 18)
end_hunk_7
begin_hunk_8_@put_vc1_mspel_mc30_c:bb.a
  %i.av = zext i8 %i.au to i32
  %i.aw = mul nuw nsw i32 %i.av, 18
  %i.ax = getelementptr inbounds nuw i8, ptr %.276.i6, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !28
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw nsw i32 %i.az, 53
  %i.bb = getelementptr inbounds nuw i8, ptr %.276.i6, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !28
  %i.bd = zext i8 %i.bc to i32
  %.reass13.reass = add i32 %i.at, %invariant.op32
  %i.be = add i32 %.reass13.reass, %i.aw
  %i.bf = add i32 %i.be, %i.ba
  %i.bg = shl nuw nsw i32 %i.bd, 2
  %i.bh = sub i32 %i.bf, %i.bg
  %i.bi = ashr i32 %i.bh, 6                       ; 3 uses
  %.not.i.i.2 = icmp ult i32 %i.bi, 256
  %isnotneg.i.i.2 = icmp sgt i32 %i.bi, -1
  %i.bj = sext i1 %isnotneg.i.i.2 to i8
  %i.bk = trunc nuw i32 %i.bi to i8
  %.0.i.i.2 = select i1 %.not.i.i.2, i8 %i.bk, i8 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %.273.i7, i64 2
  store i8 %.0.i.i.2, ptr %i.bl, align 1, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %.276.i6, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.276.i6, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = mul nsw i32 %i.bp, -3
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !28
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nuw nsw i32 %i.bs, 18
  %i.bu = getelementptr inbounds nuw i8, ptr %.276.i6, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nuw nsw i32 %i.bw, 53
  %i.by = getelementptr inbounds nuw i8, ptr %.276.i6, i64 5
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !28
  %i.ca = zext i8 %i.bz to i32
  %.reass15.reass = add i32 %i.bq, %invariant.op33
  %i.cb = add i32 %.reass15.reass, %i.bt
  %i.cc = add i32 %i.cb, %i.bx
  %i.cd = shl nuw nsw i32 %i.ca, 2
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = ashr i32 %i.ce, 6                       ; 3 uses
  %.not.i.i.3 = icmp ult i32 %i.cf, 256
  %isnotneg.i.i.3 = icmp sgt i32 %i.cf, -1
  %i.cg = sext i1 %isnotneg.i.i.3 to i8
  %i.ch = trunc nuw i32 %i.cf to i8
  %.0.i.i.3 = select i1 %.not.i.i.3, i8 %i.ch, i8 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.273.i7, i64 3
  store i8 %.0.i.i.3, ptr %i.ci, align 1, !tbaa !28
  %i.cj = getelementptr inbounds nuw i8, ptr %.276.i6, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.276.i6, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !28
  %i.cm = zext i8 %i.cl to i32
  %i.cn = mul nsw i32 %i.cm, -3
  %i.co = load i8, ptr %i.cj, align 1, !tbaa !28
  %i.cp = zext i8 %i.co to i32
  %i.cq = mul nuw nsw i32 %i.cp, 18
  %i.cr = getelementptr inbounds nuw i8, ptr %.276.i6, i64 5
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !28
  %i.ct = zext i8 %i.cs to i32
  %i.cu = mul nuw nsw i32 %i.ct, 53
  %i.cv = getelementptr inbounds nuw i8, ptr %.276.i6, i64 6
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !28
  %i.cx = zext i8 %i.cw to i32
  %.reass17.reass = add i32 %i.cn, %invariant.op34
  %i.cy = add i32 %.reass17.reass, %i.cq
  %i.cz = add i32 %i.cy, %i.cu
  %i.da = shl nuw nsw i32 %i.cx, 2
  %i.db = sub i32 %i.cz, %i.da
  %i.dc = ashr i32 %i.db, 6                       ; 3 uses
  %.not.i.i.4 = icmp ult i32 %i.dc, 256
  %isnotneg.i.i.4 = icmp sgt i32 %i.dc, -1
  %i.dd = sext i1 %isnotneg.i.i.4 to i8
  %i.de = trunc nuw i32 %i.dc to i8
  %.0.i.i.4 = select i1 %.not.i.i.4, i8 %i.de, i8 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %.273.i7, i64 4
  store i8 %.0.i.i.4, ptr %i.df, align 1, !tbaa !28
  %i.dg = getelementptr inbounds nuw i8, ptr %.276.i6, i64 5
  %i.dh = getelementptr inbounds nuw i8, ptr %.276.i6, i64 4
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul nsw i32 %i.dj, -3
  %i.dl = load i8, ptr %i.dg, align 1, !tbaa !28
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nuw nsw i32 %i.dm, 18
  %i.do = getelementptr inbounds nuw i8, ptr %.276.i6, i64 6
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nuw nsw i32 %i.dq, 53
  %i.ds = getelementptr inbounds nuw i8, ptr %.276.i6, i64 7
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %.reass19.reass = add i32 %i.dk, %invariant.op35
  %i.dv = add i32 %.reass19.reass, %i.dn
  %i.dw = add i32 %i.dv, %i.dr
  %i.dx = shl nuw nsw i32 %i.du, 2
  %i.dy = sub i32 %i.dw, %i.dx
  %i.dz = ashr i32 %i.dy, 6                       ; 3 uses
  %.not.i.i.5 = icmp ult i32 %i.dz, 256
  %isnotneg.i.i.5 = icmp sgt i32 %i.dz, -1
  %i.ea = sext i1 %isnotneg.i.i.5 to i8
  %i.eb = trunc nuw i32 %i.dz to i8
  %.0.i.i.5 = select i1 %.not.i.i.5, i8 %i.eb, i8 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %.273.i7, i64 5
  store i8 %.0.i.i.5, ptr %i.ec, align 1, !tbaa !28
  %i.ed = getelementptr inbounds nuw i8, ptr %.276.i6, i64 6
  %i.ee = getelementptr inbounds nuw i8, ptr %.276.i6, i64 5
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !28
  %i.eg = zext i8 %i.ef to i32
  %i.eh = mul nsw i32 %i.eg, -3
  %i.ei = load i8, ptr %i.ed, align 1, !tbaa !28
  %i.ej = zext i8 %i.ei to i32
  %i.ek = mul nuw nsw i32 %i.ej, 18
  %i.el = getelementptr inbounds nuw i8, ptr %.276.i6, i64 7
  %i.em = load i8, ptr %i.el, align 1, !tbaa !28
  %i.en = zext i8 %i.em to i32
  %i.eo = mul nuw nsw i32 %i.en, 53
  %i.ep = getelementptr inbounds nuw i8, ptr %.276.i6, i64 8
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !28
  %i.er = zext i8 %i.eq to i32
  %.reass21.reass = add i32 %i.eh, %invariant.op36
  %i.es = add i32 %.reass21.reass, %i.ek
  %i.et = add i32 %i.es, %i.eo
  %i.eu = shl nuw nsw i32 %i.er, 2
  %i.ev = sub i32 %i.et, %i.eu
  %i.ew = ashr i32 %i.ev, 6                       ; 3 uses
  %.not.i.i.6 = icmp ult i32 %i.ew, 256
  %isnotneg.i.i.6 = icmp sgt i32 %i.ew, -1
  %i.ex = sext i1 %isnotneg.i.i.6 to i8
  %i.ey = trunc nuw i32 %i.ew to i8
  %.0.i.i.6 = select i1 %.not.i.i.6, i8 %i.ey, i8 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %.273.i7, i64 6
  store i8 %.0.i.i.6, ptr %i.ez, align 1, !tbaa !28
  %i.fa = getelementptr inbounds nuw i8, ptr %.276.i6, i64 7
  %i.fb = getelementptr inbounds nuw i8, ptr %.276.i6, i64 6
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !28
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nsw i32 %i.fd, -3
  %i.ff = load i8, ptr %i.fa, align 1, !tbaa !28
  %i.fg = zext i8 %i.ff to i32
  %i.fh = mul nuw nsw i32 %i.fg, 18
  %i.fi = getelementptr inbounds nuw i8, ptr %.276.i6, i64 8
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !28
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 53
  %i.fm = getelementptr inbounds nuw i8, ptr %.276.i6, i64 9
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !28
  %i.fo = zext i8 %i.fn to i32
  %.reass23.reass = add i32 %i.fe, %invariant.op37
  %i.fp = add i32 %.reass23.reass, %i.fh
  %i.fq = add i32 %i.fp, %i.fl
  %i.fr = shl nuw nsw i32 %i.fo, 2
  %i.fs = sub i32 %i.fq, %i.fr
  %i.ft = ashr i32 %i.fs, 6                       ; 3 uses
  %.not.i.i.7 = icmp ult i32 %i.ft, 256
  %isnotneg.i.i.7 = icmp sgt i32 %i.ft, -1
  %i.fu = sext i1 %isnotneg.i.i.7 to i8
  %i.fv = trunc nuw i32 %i.ft to i8
  %.0.i.i.7 = select i1 %.not.i.i.7, i8 %i.fv, i8 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %.273.i7, i64 7
  store i8 %.0.i.i.7, ptr %i.fw, align 1, !tbaa !28
  %i.fx = getelementptr inbounds i8, ptr %.273.i7, i64 %2
  %i.fy = getelementptr inbounds i8, ptr %.276.i6, i64 %2
  %i.fz = add nuw nsw i32 %.3.i8, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fz, 8
  br i1 %exitcond.not, label %put_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !5

put_vc1_mspel_mc.exit:                            ; preds = %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc30_16_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = mul i64 %2, 15                           ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %scevgep = getelementptr i8, ptr %i.b, i64 16
  %scevgep11 = getelementptr i8, ptr %1, i64 -1
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %scevgep12 = getelementptr i8, ptr %i.c, i64 18
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %scevgep11, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.d = or i1 %found.conflict, %stride.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op17 = sub <16 x i32> splat (i32 32), %broadcast.splat
  %invariant.op = sub i32 32, %3
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.3.i8 = phi i32 [ 0, %bb.a ], [ %i.ax, %.loopexit ]
  %.273.i7 = phi ptr [ %0, %bb.a ], [ %i.av, %.loopexit ] ; 3 uses
  %.276.i6 = phi ptr [ %1, %bb.a ], [ %i.aw, %.loopexit ] ; 6 uses
  br i1 %i.d, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %i.e = getelementptr inbounds i8, ptr %.276.i6, i64 -1
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !28, !alias.scope !107
  %i.f = zext <16 x i8> %wide.load to <16 x i32>
  %i.g = mul nsw <16 x i32> %i.f, splat (i32 -3)
  %wide.load14 = load <16 x i8>, ptr %.276.i6, align 1, !tbaa !28, !alias.scope !107
  %i.h = zext <16 x i8> %wide.load14 to <16 x i32>
  %i.i = mul nuw nsw <16 x i32> %i.h, splat (i32 18)
  %i.j = getelementptr inbounds nuw i8, ptr %.276.i6, i64 1
  %wide.load15 = load <16 x i8>, ptr %i.j, align 1, !tbaa !28, !alias.scope !107
  %i.k = zext <16 x i8> %wide.load15 to <16 x i32>
  %i.l = mul nuw nsw <16 x i32> %i.k, splat (i32 53)
  %i.m = getelementptr inbounds nuw i8, ptr %.276.i6, i64 2
  %wide.load16 = load <16 x i8>, ptr %i.m, align 1, !tbaa !28, !alias.scope !107
  %i.n = zext <16 x i8> %wide.load16 to <16 x i32>
  %.reass = add <16 x i32> %i.g, %invariant.op17
  %i.o = add <16 x i32> %.reass, %i.i
  %i.p = add <16 x i32> %i.o, %i.l
  %i.q = shl nuw nsw <16 x i32> %i.n, splat (i32 2)
  %i.r = sub <16 x i32> %i.p, %i.q
  %i.s = ashr <16 x i32> %i.r, splat (i32 6)      ; 3 uses
  %i.t = icmp ult <16 x i32> %i.s, splat (i32 256)
  %i.u = icmp sgt <16 x i32> %i.s, splat (i32 -1)
  %i.v = sext <16 x i1> %i.u to <16 x i8>
  %i.w = trunc nuw <16 x i32> %i.s to <16 x i8>
  %i.x = select <16 x i1> %i.t, <16 x i8> %i.w, <16 x i8> %i.v
  store <16 x i8> %i.x, ptr %.273.i7, align 1, !tbaa !28, !alias.scope !108, !noalias !107
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.276.i6, i64 %indvars.iv ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul nsw i32 %i.ab, -3
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !28
  %i.ae = zext i8 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.ae, 18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !28
  %i.ai = zext i8 %i.ah to i32
  %i.aj = mul nuw nsw i32 %i.ai, 53
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !28
  %i.am = zext i8 %i.al to i32
  %.reass.reass = add i32 %i.ac, %invariant.op
  %i.an = add i32 %.reass.reass, %i.af
  %i.ao = add i32 %i.an, %i.aj
  %i.ap = shl nuw nsw i32 %i.am, 2
  %i.aq = sub i32 %i.ao, %i.ap
  %i.ar = ashr i32 %i.aq, 6                       ; 3 uses
  %.not.i.i = icmp ult i32 %i.ar, 256
  %isnotneg.i.i = icmp sgt i32 %i.ar, -1
  %i.as = sext i1 %isnotneg.i.i to i8
  %i.at = trunc nuw i32 %i.ar to i8
  %.0.i.i = select i1 %.not.i.i, i8 %i.at, i8 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.273.i7, i64 %indvars.iv
  store i8 %.0.i.i, ptr %i.au, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !106

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.av = getelementptr inbounds i8, ptr %.273.i7, i64 %2
  %i.aw = getelementptr inbounds i8, ptr %.276.i6, i64 %2
  %i.ax = add nuw nsw i32 %.3.i8, 1               ; 2 uses
  %exitcond10.not = icmp eq i32 %i.ax, 16
  br i1 %exitcond10.not, label %put_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !6

put_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc30_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
.preheader.lver.check:
  %ident.check.not = icmp eq i64 %2, 1
  br i1 %ident.check.not, label %.preheader.ph, label %.preheader.lver.orig.preheader

.preheader.lver.orig.preheader:                   ; preds = %.preheader.lver.check
  %invariant.op = sub i32 32, %3
  %invariant.op33 = sub i32 32, %3
  %invariant.op34 = sub i32 32, %3
  %invariant.op35 = sub i32 32, %3
  %invariant.op36 = sub i32 32, %3
  %invariant.op37 = sub i32 32, %3
  %invariant.op38 = sub i32 32, %3
  %invariant.op39 = sub i32 32, %3
  br label %.preheader.lver.orig

.preheader.lver.orig:                             ; preds = %.preheader.lver.orig.preheader, %.preheader.lver.orig
  %.3.i8.lver.orig = phi i32 [ %i.id, %.preheader.lver.orig ], [ 0, %.preheader.lver.orig.preheader ]
  %.279.i7.lver.orig = phi ptr [ %i.ib, %.preheader.lver.orig ], [ %0, %.preheader.lver.orig.preheader ] ; 10 uses
  %.282.i6.lver.orig = phi ptr [ %i.ic, %.preheader.lver.orig ], [ %1, %.preheader.lver.orig.preheader ] ; 31 uses
  %i.a = load i8, ptr %.279.i7.lver.orig, align 1, !tbaa !28
  %i.b = zext i8 %i.a to i16
  %i.c = getelementptr inbounds i8, ptr %.282.i6.lver.orig, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = zext i8 %i.d to i32
  %i.f = mul nsw i32 %i.e, -3
  %i.g = load i8, ptr %.282.i6.lver.orig, align 1, !tbaa !28
  %i.h = zext i8 %i.g to i32
  %i.i = mul nuw nsw i32 %i.h, 18
  %i.j = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %i.l = zext i8 %i.k to i32
  %i.m = mul nuw nsw i32 %i.l, 53
  %i.n = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28
  %i.p = zext i8 %i.o to i32
  %.reass.lver.orig.reass = add i32 %i.f, %invariant.op
  %i.q = add i32 %.reass.lver.orig.reass, %i.i
  %i.r = add i32 %i.q, %i.m
  %i.s = shl nuw nsw i32 %i.p, 2
  %i.t = sub i32 %i.r, %i.s
  %i.u = ashr i32 %i.t, 6                         ; 3 uses
  %.not.i.i.lver.orig = icmp ult i32 %i.u, 256
  %isnotneg.i.i.lver.orig = icmp sgt i32 %i.u, -1
  %i.v = sext i1 %isnotneg.i.i.lver.orig to i16
  %i.w = trunc nuw i32 %i.u to i16
  %.0.i.i.lver.orig = select i1 %.not.i.i.lver.orig, i16 %i.w, i16 %i.v
  %i.x = and i16 %.0.i.i.lver.orig, 255
  %i.y = add nuw nsw i16 %i.b, 1
  %i.z = add nuw nsw i16 %i.y, %i.x
  %i.aa = lshr i16 %i.z, 1
  %i.ab = trunc nuw i16 %i.aa to i8
  store i8 %i.ab, ptr %.279.i7.lver.orig, align 1, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.279.i7.lver.orig, i64 1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = zext i8 %i.ad to i16
  %i.af = load i8, ptr %.282.i6.lver.orig, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, -3
  %i.ai = load i8, ptr %i.j, align 1, !tbaa !28
  %i.aj = zext i8 %i.ai to i32
  %i.ak = mul nuw nsw i32 %i.aj, 18
  %i.al = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.an, 53
  %i.ap = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = zext i8 %i.aq to i32
  %.reass11.lver.orig.reass = add i32 %i.ah, %invariant.op33
  %i.as = add i32 %.reass11.lver.orig.reass, %i.ak
  %i.at = add i32 %i.as, %i.ao
  %i.au = shl nuw nsw i32 %i.ar, 2
  %i.av = sub i32 %i.at, %i.au
  %i.aw = ashr i32 %i.av, 6                       ; 3 uses
  %.not.i.i.1.lver.orig = icmp ult i32 %i.aw, 256
  %isnotneg.i.i.1.lver.orig = icmp sgt i32 %i.aw, -1
  %i.ax = sext i1 %isnotneg.i.i.1.lver.orig to i16
  %i.ay = trunc nuw i32 %i.aw to i16
  %.0.i.i.1.lver.orig = select i1 %.not.i.i.1.lver.orig, i16 %i.ay, i16 %i.ax
  %i.az = and i16 %.0.i.i.1.lver.orig, 255
  %i.ba = add nuw nsw i16 %i.ae, 1
  %i.bb = add nuw nsw i16 %i.ba, %i.az
  %i.bc = lshr i16 %i.bb, 1
  %i.bd = trunc nuw i16 %i.bc to i8
  store i8 %i.bd, ptr %i.ac, align 1, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %.279.i7.lver.orig, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !28
  %i.bg = zext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = mul nsw i32 %i.bj, -3
  %i.bl = load i8, ptr %i.n, align 1, !tbaa !28
  %i.bm = zext i8 %i.bl to i32
  %i.bn = mul nuw nsw i32 %i.bm, 18
  %i.bo = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !28
  %i.bq = zext i8 %i.bp to i32
  %i.br = mul nuw nsw i32 %i.bq, 53
  %i.bs = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !28
  %i.bu = zext i8 %i.bt to i32
  %.reass13.lver.orig.reass = add i32 %i.bk, %invariant.op34
  %i.bv = add i32 %.reass13.lver.orig.reass, %i.bn
  %i.bw = add i32 %i.bv, %i.br
  %i.bx = shl nuw nsw i32 %i.bu, 2
  %i.by = sub i32 %i.bw, %i.bx
  %i.bz = ashr i32 %i.by, 6                       ; 3 uses
  %.not.i.i.2.lver.orig = icmp ult i32 %i.bz, 256
  %isnotneg.i.i.2.lver.orig = icmp sgt i32 %i.bz, -1
  %i.ca = sext i1 %isnotneg.i.i.2.lver.orig to i16
  %i.cb = trunc nuw i32 %i.bz to i16
  %.0.i.i.2.lver.orig = select i1 %.not.i.i.2.lver.orig, i16 %i.cb, i16 %i.ca
  %i.cc = and i16 %.0.i.i.2.lver.orig, 255
  %i.cd = add nuw nsw i16 %i.bg, 1
  %i.ce = add nuw nsw i16 %i.cd, %i.cc
  %i.cf = lshr i16 %i.ce, 1
  %i.cg = trunc nuw i16 %i.cf to i8
  store i8 %i.cg, ptr %i.be, align 1, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %.279.i7.lver.orig, i64 3 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 3
  %i.cl = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !28
  %i.cn = zext i8 %i.cm to i32
  %i.co = mul nsw i32 %i.cn, -3
  %i.cp = load i8, ptr %i.ck, align 1, !tbaa !28
  %i.cq = zext i8 %i.cp to i32
  %i.cr = mul nuw nsw i32 %i.cq, 18
  %i.cs = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !28
  %i.cu = zext i8 %i.ct to i32
  %i.cv = mul nuw nsw i32 %i.cu, 53
  %i.cw = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !28
  %i.cy = zext i8 %i.cx to i32
  %.reass15.lver.orig.reass = add i32 %i.co, %invariant.op35
  %i.cz = add i32 %.reass15.lver.orig.reass, %i.cr
  %i.da = add i32 %i.cz, %i.cv
  %i.db = shl nuw nsw i32 %i.cy, 2
  %i.dc = sub i32 %i.da, %i.db
  %i.dd = ashr i32 %i.dc, 6                       ; 3 uses
  %.not.i.i.3.lver.orig = icmp ult i32 %i.dd, 256
  %isnotneg.i.i.3.lver.orig = icmp sgt i32 %i.dd, -1
  %i.de = sext i1 %isnotneg.i.i.3.lver.orig to i16
  %i.df = trunc nuw i32 %i.dd to i16
  %.0.i.i.3.lver.orig = select i1 %.not.i.i.3.lver.orig, i16 %i.df, i16 %i.de
  %i.dg = and i16 %.0.i.i.3.lver.orig, 255
  %i.dh = add nuw nsw i16 %i.cj, 1
  %i.di = add nuw nsw i16 %i.dh, %i.dg
  %i.dj = lshr i16 %i.di, 1
  %i.dk = trunc nuw i16 %i.dj to i8
  store i8 %i.dk, ptr %i.ch, align 1, !tbaa !28
  %i.dl = getelementptr inbounds nuw i8, ptr %.279.i7.lver.orig, i64 4 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !28
  %i.dn = zext i8 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 3
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !28
  %i.dr = zext i8 %i.dq to i32
  %i.ds = mul nsw i32 %i.dr, -3
  %i.dt = load i8, ptr %i.do, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nuw nsw i32 %i.du, 18
  %i.dw = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 5
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 53
  %i.ea = getelementptr inbounds nuw i8, ptr %.282.i6.lver.orig, i64 6
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !28
  %i.ec = zext i8 %i.eb to i32
  %.reass17.lver.orig.reass = add i32 %i.ds, %invariant.op36
  %i.ed = add i32 %.reass17.lver.orig.reass, %i.dv
  %i.ee = add i32 %i.ed, %i.dz
  %i.ef = shl nuw nsw i32 %i.ec, 2
  %i.eg = sub i32 %i.ee, %i.ef
  %i.eh = ashr i32 %i.eg, 6                       ; 3 uses
  %.not.i.i.4.lver.orig = icmp ult i32 %i.eh, 256
  %isnotneg.i.i.4.lver.orig = icmp sgt i32 %i.eh, -1
  %i.ei = sext i1 %isnotneg.i.i.4.lver.orig to i16
  %i.ej = trunc nuw i32 %i.eh to i16
  %.0.i.i.4.lver.orig = select i1 %.not.i.i.4.lver.orig, i16 %i.ej, i16 %i.ei
  %i.ek = and i16 %.0.i.i.4.lver.orig, 255
  %i.el = add nuw nsw i16 %i.dn, 1
  %i.em = add nuw nsw i16 %i.el, %i.ek
end_hunk_8
begin_hunk_9_@avg_vc1_mspel_mc30_c:.preheader.lver.check
  %i.lw = mul nuw nsw i32 %i.lv, 18
  %i.lx = getelementptr inbounds nuw i8, ptr %.282.i6, i64 4
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !28
  %i.lz = zext i8 %i.ly to i32
  %i.ma = mul nuw nsw i32 %i.lz, 53
  %i.mb = getelementptr inbounds nuw i8, ptr %.282.i6, i64 5
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !28
  %i.md = zext i8 %i.mc to i32
  %.reass15.reass = add i32 %i.lt, %invariant.op43
  %i.me = add i32 %.reass15.reass, %i.lw
  %i.mf = add i32 %i.me, %i.ma
  %i.mg = shl nuw nsw i32 %i.md, 2
  %i.mh = sub i32 %i.mf, %i.mg
  %i.mi = ashr i32 %i.mh, 6                       ; 3 uses
  %.not.i.i.3 = icmp ult i32 %i.mi, 256
  %isnotneg.i.i.3 = icmp sgt i32 %i.mi, -1
  %i.mj = sext i1 %isnotneg.i.i.3 to i16
  %i.mk = trunc nuw i32 %i.mi to i16
  %.0.i.i.3 = select i1 %.not.i.i.3, i16 %i.mk, i16 %i.mj
  %i.ml = and i16 %.0.i.i.3, 255
  %i.mm = add nuw nsw i16 %i.lo, 1
  %i.mn = add nuw nsw i16 %i.mm, %i.ml
  %i.mo = lshr i16 %i.mn, 1
  %i.mp = trunc nuw i16 %i.mo to i8
  store i8 %i.mp, ptr %i.lm, align 1, !tbaa !28
  %i.mq = getelementptr inbounds nuw i8, ptr %.279.i7, i64 4 ; 2 uses
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !28
  %i.ms = zext i8 %i.mr to i16
  %i.mt = getelementptr inbounds nuw i8, ptr %.282.i6, i64 4
  %i.mu = getelementptr inbounds nuw i8, ptr %.282.i6, i64 3
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !28
  %i.mw = zext i8 %i.mv to i32
  %i.mx = mul nsw i32 %i.mw, -3
  %i.my = load i8, ptr %i.mt, align 1, !tbaa !28
  %i.mz = zext i8 %i.my to i32
  %i.na = mul nuw nsw i32 %i.mz, 18
  %i.nb = getelementptr inbounds nuw i8, ptr %.282.i6, i64 5
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !28
  %i.nd = zext i8 %i.nc to i32
  %i.ne = mul nuw nsw i32 %i.nd, 53
  %i.nf = getelementptr inbounds nuw i8, ptr %.282.i6, i64 6
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !28
  %i.nh = zext i8 %i.ng to i32
  %.reass17.reass = add i32 %i.mx, %invariant.op44
  %i.ni = add i32 %.reass17.reass, %i.na
  %i.nj = add i32 %i.ni, %i.ne
  %i.nk = shl nuw nsw i32 %i.nh, 2
  %i.nl = sub i32 %i.nj, %i.nk
  %i.nm = ashr i32 %i.nl, 6                       ; 3 uses
  %.not.i.i.4 = icmp ult i32 %i.nm, 256
  %isnotneg.i.i.4 = icmp sgt i32 %i.nm, -1
  %i.nn = sext i1 %isnotneg.i.i.4 to i16
  %i.no = trunc nuw i32 %i.nm to i16
  %.0.i.i.4 = select i1 %.not.i.i.4, i16 %i.no, i16 %i.nn
  %i.np = and i16 %.0.i.i.4, 255
  %i.nq = add nuw nsw i16 %i.ms, 1
  %i.nr = add nuw nsw i16 %i.nq, %i.np
  %i.ns = lshr i16 %i.nr, 1
  %i.nt = trunc nuw i16 %i.ns to i8
  store i8 %i.nt, ptr %i.mq, align 1, !tbaa !28
  %i.nu = getelementptr inbounds nuw i8, ptr %.279.i7, i64 5 ; 2 uses
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !28
  %i.nw = zext i8 %i.nv to i16
  %i.nx = getelementptr inbounds nuw i8, ptr %.282.i6, i64 5
  %i.ny = getelementptr inbounds nuw i8, ptr %.282.i6, i64 4
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !28
  %i.oa = zext i8 %i.nz to i32
  %i.ob = mul nsw i32 %i.oa, -3
  %i.oc = load i8, ptr %i.nx, align 1, !tbaa !28
  %i.od = zext i8 %i.oc to i32
  %i.oe = mul nuw nsw i32 %i.od, 18
  %i.of = getelementptr inbounds nuw i8, ptr %.282.i6, i64 6
  %i.og = load i8, ptr %i.of, align 1, !tbaa !28
  %i.oh = zext i8 %i.og to i32
  %i.oi = mul nuw nsw i32 %i.oh, 53
  %i.oj = getelementptr inbounds nuw i8, ptr %.282.i6, i64 7
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !28
  %i.ol = zext i8 %i.ok to i32
  %.reass19.reass = add i32 %i.ob, %invariant.op45
  %i.om = add i32 %.reass19.reass, %i.oe
  %i.on = add i32 %i.om, %i.oi
  %i.oo = shl nuw nsw i32 %i.ol, 2
  %i.op = sub i32 %i.on, %i.oo
  %i.oq = ashr i32 %i.op, 6                       ; 3 uses
  %.not.i.i.5 = icmp ult i32 %i.oq, 256
  %isnotneg.i.i.5 = icmp sgt i32 %i.oq, -1
  %i.or = sext i1 %isnotneg.i.i.5 to i16
  %i.os = trunc nuw i32 %i.oq to i16
  %.0.i.i.5 = select i1 %.not.i.i.5, i16 %i.os, i16 %i.or
  %i.ot = and i16 %.0.i.i.5, 255
  %i.ou = add nuw nsw i16 %i.nw, 1
  %i.ov = add nuw nsw i16 %i.ou, %i.ot
  %i.ow = lshr i16 %i.ov, 1
  %i.ox = trunc nuw i16 %i.ow to i8
  store i8 %i.ox, ptr %i.nu, align 1, !tbaa !28
  %i.oy = getelementptr inbounds nuw i8, ptr %.279.i7, i64 6
  %i.oz = getelementptr inbounds nuw i8, ptr %.282.i6, i64 6
  %i.pa = getelementptr inbounds nuw i8, ptr %.282.i6, i64 5
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !28
  %i.pc = zext i8 %i.pb to i32
  %i.pd = mul nsw i32 %i.pc, -3
  %i.pe = load i8, ptr %i.oz, align 1, !tbaa !28
  %i.pf = zext i8 %i.pe to i32
  %i.pg = mul nuw nsw i32 %i.pf, 18
  %i.ph = getelementptr inbounds nuw i8, ptr %.282.i6, i64 7
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !28
  %i.pj = zext i8 %i.pi to i32
  %i.pk = mul nuw nsw i32 %i.pj, 53
  %i.pl = getelementptr inbounds nuw i8, ptr %.282.i6, i64 8
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !28
  %i.pn = zext i8 %i.pm to i32
  %.reass21.reass = add i32 %i.pd, %invariant.op46
  %i.po = add i32 %.reass21.reass, %i.pg
  %i.pp = add i32 %i.po, %i.pk
  %i.pq = shl nuw nsw i32 %i.pn, 2
  %i.pr = sub i32 %i.pp, %i.pq
  %i.ps = ashr i32 %i.pr, 6                       ; 3 uses
  %.not.i.i.6 = icmp ult i32 %i.ps, 256
  %isnotneg.i.i.6 = icmp sgt i32 %i.ps, -1
  %i.pt = sext i1 %isnotneg.i.i.6 to i16
  %i.pu = trunc nuw i32 %i.ps to i16
  %.0.i.i.6 = select i1 %.not.i.i.6, i16 %i.pu, i16 %i.pt
  %i.pv = and i16 %.0.i.i.6, 255
  %i.pw = add nuw nsw i16 %store_forwarded, 1
  %i.px = add nuw nsw i16 %i.pw, %i.pv
  %i.py = lshr i16 %i.px, 1
  %i.pz = trunc nuw i16 %i.py to i8
  store i8 %i.pz, ptr %i.oy, align 1, !tbaa !28
  %i.qa = getelementptr inbounds nuw i8, ptr %.279.i7, i64 7 ; 2 uses
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !28
  %i.qc = zext i8 %i.qb to i16
  %i.qd = getelementptr inbounds nuw i8, ptr %.282.i6, i64 7
  %i.qe = getelementptr inbounds nuw i8, ptr %.282.i6, i64 6
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !28
  %i.qg = zext i8 %i.qf to i32
  %i.qh = mul nsw i32 %i.qg, -3
  %i.qi = load i8, ptr %i.qd, align 1, !tbaa !28
  %i.qj = zext i8 %i.qi to i32
  %i.qk = mul nuw nsw i32 %i.qj, 18
  %i.ql = getelementptr inbounds nuw i8, ptr %.282.i6, i64 8
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !28
  %i.qn = zext i8 %i.qm to i32
  %i.qo = mul nuw nsw i32 %i.qn, 53
  %i.qp = getelementptr inbounds nuw i8, ptr %.282.i6, i64 9
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !28
  %i.qr = zext i8 %i.qq to i32
  %.reass23.reass = add i32 %i.qh, %invariant.op47
  %i.qs = add i32 %.reass23.reass, %i.qk
  %i.qt = add i32 %i.qs, %i.qo
  %i.qu = shl nuw nsw i32 %i.qr, 2
  %i.qv = sub i32 %i.qt, %i.qu
  %i.qw = ashr i32 %i.qv, 6                       ; 3 uses
  %.not.i.i.7 = icmp ult i32 %i.qw, 256
  %isnotneg.i.i.7 = icmp sgt i32 %i.qw, -1
  %i.qx = sext i1 %isnotneg.i.i.7 to i16
  %i.qy = trunc nuw i32 %i.qw to i16
  %.0.i.i.7 = select i1 %.not.i.i.7, i16 %i.qy, i16 %i.qx
  %i.qz = and i16 %.0.i.i.7, 255
  %i.ra = add nuw nsw i16 %i.qc, 1
  %i.rb = add nuw nsw i16 %i.ra, %i.qz
  %i.rc = lshr i16 %i.rb, 1                       ; 2 uses
  %i.rd = trunc nuw i16 %i.rc to i8
  store i8 %i.rd, ptr %i.qa, align 1, !tbaa !28
  %i.re = getelementptr inbounds nuw i8, ptr %.279.i7, i64 %2
  %i.rf = getelementptr inbounds nuw i8, ptr %.282.i6, i64 %2
  %i.rg = add nuw nsw i32 %.3.i8, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.rg, 8
  br i1 %exitcond.not, label %avg_vc1_mspel_mc.exit, label %.preheader, !llvm.loop !7

avg_vc1_mspel_mc.exit:                            ; preds = %.preheader.lver.orig, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_vc1_mspel_mc30_16_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = mul i64 %2, 15                           ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 %i.a
  %scevgep = getelementptr i8, ptr %i.b, i64 16
  %scevgep11 = getelementptr i8, ptr %1, i64 -1
  %i.c = getelementptr i8, ptr %1, i64 %i.a
  %scevgep12 = getelementptr i8, ptr %i.c, i64 18
  %bound0 = icmp ult ptr %0, %scevgep12
  %bound1 = icmp ult ptr %scevgep11, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.d = or i1 %found.conflict, %stride.check
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op18 = sub <16 x i32> splat (i32 32), %broadcast.splat
  %invariant.op = sub i32 32, %3
  br label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit, %bb.a
  %.3.i8 = phi i32 [ 0, %bb.a ], [ %i.bk, %.loopexit ]
  %.279.i7 = phi ptr [ %0, %bb.a ], [ %i.bi, %.loopexit ] ; 4 uses
  %.282.i6 = phi ptr [ %1, %bb.a ], [ %i.bj, %.loopexit ] ; 6 uses
  br i1 %i.d, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %vector.memcheck
  %wide.load = load <16 x i8>, ptr %.279.i7, align 1, !tbaa !28, !alias.scope !113, !noalias !114
  %i.e = zext <16 x i8> %wide.load to <16 x i16>
  %i.f = getelementptr inbounds i8, ptr %.282.i6, i64 -1
  %wide.load14 = load <16 x i8>, ptr %i.f, align 1, !tbaa !28, !alias.scope !114
  %i.g = zext <16 x i8> %wide.load14 to <16 x i32>
  %i.h = mul nsw <16 x i32> %i.g, splat (i32 -3)
  %wide.load15 = load <16 x i8>, ptr %.282.i6, align 1, !tbaa !28, !alias.scope !114
  %i.i = zext <16 x i8> %wide.load15 to <16 x i32>
  %i.j = mul nuw nsw <16 x i32> %i.i, splat (i32 18)
  %i.k = getelementptr inbounds nuw i8, ptr %.282.i6, i64 1
  %wide.load16 = load <16 x i8>, ptr %i.k, align 1, !tbaa !28, !alias.scope !114
  %i.l = zext <16 x i8> %wide.load16 to <16 x i32>
  %i.m = mul nuw nsw <16 x i32> %i.l, splat (i32 53)
  %i.n = getelementptr inbounds nuw i8, ptr %.282.i6, i64 2
  %wide.load17 = load <16 x i8>, ptr %i.n, align 1, !tbaa !28, !alias.scope !114
  %i.o = zext <16 x i8> %wide.load17 to <16 x i32>
  %.reass = add <16 x i32> %i.h, %invariant.op18
  %i.p = add <16 x i32> %.reass, %i.j
  %i.q = add <16 x i32> %i.p, %i.m
  %i.r = shl nuw nsw <16 x i32> %i.o, splat (i32 2)
  %i.s = sub <16 x i32> %i.q, %i.r
  %i.t = ashr <16 x i32> %i.s, splat (i32 6)      ; 3 uses
  %i.u = icmp ult <16 x i32> %i.t, splat (i32 256)
  %i.v = icmp sgt <16 x i32> %i.t, splat (i32 -1)
  %i.w = sext <16 x i1> %i.v to <16 x i16>
  %i.x = trunc nuw <16 x i32> %i.t to <16 x i16>
  %i.y = select <16 x i1> %i.u, <16 x i16> %i.x, <16 x i16> %i.w
  %i.z = and <16 x i16> %i.y, splat (i16 255)
  %i.aa = add nuw nsw <16 x i16> %i.e, splat (i16 1)
  %i.ab = add nuw nsw <16 x i16> %i.aa, %i.z
  %i.ac = lshr <16 x i16> %i.ab, splat (i16 1)
  %i.ad = trunc nuw <16 x i16> %i.ac to <16 x i8>
  store <16 x i8> %i.ad, ptr %.279.i7, align 1, !tbaa !28, !alias.scope !113, !noalias !114
  br label %.loopexit

scalar.ph:                                        ; preds = %vector.memcheck, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.279.i7, i64 %indvars.iv ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !28
  %i.ag = zext i8 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %.282.i6, i64 %indvars.iv ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.ak, -3
  %i.am = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = mul nuw nsw i32 %i.an, 18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = zext i8 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ar, 53
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !28
  %i.av = zext i8 %i.au to i32
  %.reass.reass = add i32 %i.al, %invariant.op
  %i.aw = add i32 %.reass.reass, %i.ao
  %i.ax = add i32 %i.aw, %i.as
  %i.ay = shl nuw nsw i32 %i.av, 2
  %i.az = sub i32 %i.ax, %i.ay
  %i.ba = ashr i32 %i.az, 6                       ; 3 uses
  %.not.i.i = icmp ult i32 %i.ba, 256
  %isnotneg.i.i = icmp sgt i32 %i.ba, -1
  %i.bb = sext i1 %isnotneg.i.i to i16
  %i.bc = trunc nuw i32 %i.ba to i16
  %.0.i.i = select i1 %.not.i.i, i16 %i.bc, i16 %i.bb
  %i.bd = and i16 %.0.i.i, 255
  %i.be = add nuw nsw i16 %i.ag, 1
  %i.bf = add nuw nsw i16 %i.be, %i.bd
  %i.bg = lshr i16 %i.bf, 1
  %i.bh = trunc nuw i16 %i.bg to i8
  store i8 %i.bh, ptr %i.ae, align 1, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !112

.loopexit:                                        ; preds = %scalar.ph, %vector.body
  %i.bi = getelementptr inbounds i8, ptr %.279.i7, i64 %2
  %i.bj = getelementptr inbounds i8, ptr %.282.i6, i64 %2
  %i.bk = add nuw nsw i32 %.3.i8, 1               ; 2 uses
  %exitcond10.not = icmp eq i32 %i.bk, 16
  br i1 %exitcond10.not, label %avg_vc1_mspel_mc_16.exit, label %vector.memcheck, !llvm.loop !8

avg_vc1_mspel_mc_16.exit:                         ; preds = %.loopexit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_vc1_mspel_mc31_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = alloca [88 x i16], align 16              ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = getelementptr inbounds i8, ptr %1, i64 -1
  %i.c = sub nsw i64 0, %2                        ; 4 uses
  %i.d = shl nsw i64 %2, 1                        ; 4 uses
  %i.e = add i32 %3, 15                           ; 4 uses
  %i.f = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %i.g = shufflevector <8 x i32> %i.f, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader8

.preheader8:                                      ; preds = %bb.a, %.preheader8
  %.0.i12 = phi ptr [ %i.a, %bb.a ], [ %i.cq, %.preheader8 ] ; 5 uses
  %.065.i11 = phi i32 [ 0, %bb.a ], [ %i.cr, %.preheader8 ]
  %.074.i10 = phi ptr [ %i.b, %bb.a ], [ %i.i, %.preheader8 ] ; 7 uses
  %i.h = getelementptr inbounds i8, ptr %.074.i10, i64 %i.c
  %i.i = getelementptr inbounds i8, ptr %.074.i10, i64 %2 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.074.i10, i64 %i.d
  %i.k = load <8 x i8>, ptr %i.h, align 1, !tbaa !28
  %i.l = zext <8 x i8> %i.k to <8 x i32>
  %i.m = load <8 x i8>, ptr %.074.i10, align 1, !tbaa !28
  %i.n = zext <8 x i8> %i.m to <8 x i32>
  %i.o = mul nuw nsw <8 x i32> %i.n, splat (i32 53)
  %i.p = load <8 x i8>, ptr %i.i, align 1, !tbaa !28
  %i.q = zext <8 x i8> %i.p to <8 x i32>
  %i.r = mul nuw nsw <8 x i32> %i.q, splat (i32 18)
  %i.s = load <8 x i8>, ptr %i.j, align 1, !tbaa !28
  %i.t = zext <8 x i8> %i.s to <8 x i32>
  %i.u = mul nuw nsw <8 x i32> %i.t, splat (i32 2097149)
  %i.v = shl nuw nsw <8 x i32> %i.l, splat (i32 2)
  %i.w = sub <8 x i32> %i.g, %i.v
  %i.x = add <8 x i32> %i.w, %i.o
  %i.y = add <8 x i32> %i.x, %i.r
  %i.z = add <8 x i32> %i.y, %i.u
  %i.aa = lshr <8 x i32> %i.z, splat (i32 5)
  %i.ab = trunc <8 x i32> %i.aa to <8 x i16>
  store <8 x i16> %i.ab, ptr %.0.i12, align 2, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %.074.i10, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.c
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !28
  %i.af = zext i8 %i.ae to i32
  %i.ag = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 53
  %i.aj = getelementptr inbounds i8, ptr %i.ac, i64 %2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, 18
  %i.an = getelementptr inbounds i8, ptr %i.ac, i64 %i.d
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %.neg.i.8 = mul nuw nsw i32 %i.ap, 2097149
  %i.aq = shl nuw nsw i32 %i.af, 2
  %i.ar = sub i32 %i.e, %i.aq
  %i.as = add i32 %i.ar, %i.ai
  %i.at = add i32 %i.as, %i.am
  %i.au = add i32 %i.at, %.neg.i.8
  %i.av = lshr i32 %i.au, 5
  %i.aw = trunc i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i12, i64 16
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %.074.i10, i64 9 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.c
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.bd = zext i8 %i.bc to i32
  %i.be = mul nuw nsw i32 %i.bd, 53
  %i.bf = getelementptr inbounds i8, ptr %i.ay, i64 %2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !28
  %i.bh = zext i8 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 18
  %i.bj = getelementptr inbounds i8, ptr %i.ay, i64 %i.d
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %.neg.i.9 = mul nuw nsw i32 %i.bl, 2097149
  %i.bm = shl nuw nsw i32 %i.bb, 2
  %i.bn = sub i32 %i.e, %i.bm
  %i.bo = add i32 %i.bn, %i.be
  %i.bp = add i32 %i.bo, %i.bi
  %i.bq = add i32 %i.bp, %.neg.i.9
  %i.br = lshr i32 %i.bq, 5
  %i.bs = trunc i32 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i12, i64 18
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !27
  %i.bu = getelementptr inbounds nuw i8, ptr %.074.i10, i64 10 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.c
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = zext i8 %i.bw to i32
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, 53
  %i.cb = getelementptr inbounds i8, ptr %i.bu, i64 %2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !28
  %i.cd = zext i8 %i.cc to i32
  %i.ce = mul nuw nsw i32 %i.cd, 18
  %i.cf = getelementptr inbounds i8, ptr %i.bu, i64 %i.d
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !28
  %i.ch = zext i8 %i.cg to i32
  %.neg.i.10 = mul nuw nsw i32 %i.ch, 2097149
  %i.ci = shl nuw nsw i32 %i.bx, 2
  %i.cj = sub i32 %i.e, %i.ci
  %i.ck = add i32 %i.cj, %i.ca
  %i.cl = add i32 %i.ck, %i.ce
  %i.cm = add i32 %i.cl, %.neg.i.10
  %i.cn = lshr i32 %i.cm, 5
  %i.co = trunc i32 %i.cn to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i12, i64 20
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i12, i64 22
  %i.cr = add nuw nsw i32 %.065.i11, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.cr, 8
  br i1 %exitcond.not, label %.preheader, label %.preheader8, !llvm.loop !9

.preheader:                                       ; preds = %.preheader8
  %i.cs = insertelement <8 x i32> poison, i32 %3, i64 0
  %i.ct = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.cx = load <8 x i16>, ptr %i.a, align 16, !tbaa !27
  %i.cy = load <8 x i16>, ptr %i.cu, align 2, !tbaa !27
  %i.cz = load <8 x i16>, ptr %i.cv, align 4, !tbaa !27
  %i.da = load <8 x i16>, ptr %i.cw, align 2, !tbaa !27
  %i.db = sext <8 x i16> %i.cx to <8 x i32>
  %i.dc = sext <8 x i16> %i.cy to <8 x i32>
  %i.dd = sext <8 x i16> %i.cz to <8 x i32>
  %i.de = sext <8 x i16> %i.da to <8 x i32>
  %i.df = mul nsw <8 x i32> %i.db, splat (i32 -3)
  %i.dg = mul nsw <8 x i32> %i.dc, splat (i32 18)
  %i.dh = mul nsw <8 x i32> %i.dd, splat (i32 53)
  %i.di = sub <8 x i32> %i.df, %i.ct
  %i.dj = add <8 x i32> %i.di, splat (i32 64)
  %i.dk = add <8 x i32> %i.dj, %i.dg
  %i.dl = add <8 x i32> %i.dk, %i.dh
  %i.dm = shl nsw <8 x i32> %i.de, splat (i32 2)
  %i.dn = sub <8 x i32> %i.dl, %i.dm
  %i.do = ashr <8 x i32> %i.dn, splat (i32 7)     ; 3 uses
  %i.dp = icmp ult <8 x i32> %i.do, splat (i32 256)
  %i.dq = icmp sgt <8 x i32> %i.do, splat (i32 -1)
  %i.dr = sext <8 x i1> %i.dq to <8 x i8>
  %i.ds = trunc <8 x i32> %i.do to <8 x i8>
  %i.dt = select <8 x i1> %i.dp, <8 x i8> %i.ds, <8 x i8> %i.dr
  store <8 x i8> %i.dt, ptr %0, align 1, !tbaa !28
  %i.du = getelementptr inbounds i8, ptr %0, i64 %2 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.dz = load <8 x i16>, ptr %i.dw, align 2, !tbaa !27
  %i.ea = load <8 x i16>, ptr %i.dv, align 8, !tbaa !27
  %i.eb = load <8 x i16>, ptr %i.dx, align 2, !tbaa !27
  %i.ec = load <8 x i16>, ptr %i.dy, align 4, !tbaa !27
  %i.ed = sext <8 x i16> %i.dz to <8 x i32>
  %i.ee = sext <8 x i16> %i.ea to <8 x i32>
  %i.ef = sext <8 x i16> %i.eb to <8 x i32>
  %i.eg = sext <8 x i16> %i.ec to <8 x i32>
  %i.eh = mul nsw <8 x i32> %i.ed, splat (i32 -3)
  %i.ei = mul nsw <8 x i32> %i.ee, splat (i32 18)
  %i.ej = mul nsw <8 x i32> %i.ef, splat (i32 53)
  %i.ek = sub <8 x i32> %i.eh, %i.ct
  %i.el = add <8 x i32> %i.ek, splat (i32 64)
  %i.em = add <8 x i32> %i.el, %i.ei
  %i.en = add <8 x i32> %i.em, %i.ej
  %i.eo = shl nsw <8 x i32> %i.eg, splat (i32 2)
  %i.ep = sub <8 x i32> %i.en, %i.eo
  %i.eq = ashr <8 x i32> %i.ep, splat (i32 7)     ; 3 uses
  %i.er = icmp ult <8 x i32> %i.eq, splat (i32 256)
  %i.es = icmp sgt <8 x i32> %i.eq, splat (i32 -1)
  %i.et = sext <8 x i1> %i.es to <8 x i8>
  %i.eu = trunc <8 x i32> %i.eq to <8 x i8>
  %i.ev = select <8 x i1> %i.er, <8 x i8> %i.eu, <8 x i8> %i.et
  store <8 x i8> %i.ev, ptr %i.du, align 1, !tbaa !28
  %i.ew = getelementptr inbounds i8, ptr %i.du, i64 %2 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  %i.fb = load <8 x i16>, ptr %i.ey, align 4, !tbaa !27
  %i.fc = load <8 x i16>, ptr %i.ex, align 2, !tbaa !27
  %i.fd = load <8 x i16>, ptr %i.ez, align 16, !tbaa !27
  %i.fe = load <8 x i16>, ptr %i.fa, align 2, !tbaa !27
  %i.ff = sext <8 x i16> %i.fb to <8 x i32>
  %i.fg = sext <8 x i16> %i.fc to <8 x i32>
  %i.fh = sext <8 x i16> %i.fd to <8 x i32>
  %i.fi = sext <8 x i16> %i.fe to <8 x i32>
end_hunk_9
begin_hunk_10_@avg_vc1_mspel_mc33_16_c:bb.a
avg_vc1_mspel_mc_16.exit:                         ; preds = %vector.ph28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_vc1_chroma_mc8_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = sub nsw i32 8, %4                        ; 2 uses
  %i.b = sub nsw i32 8, %5                        ; 2 uses
  %i.c = mul nsw i32 %i.b, %i.a                   ; 8 uses
  %i.d = mul nsw i32 %i.b, %4                     ; 8 uses
  %i.e = mul nsw i32 %i.a, %5                     ; 8 uses
  %i.f = mul nsw i32 %5, %4                       ; 8 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0106 = phi i32 [ %i.fu, %.lr.ph ], [ 0, %bb.a ]
  %.0102105 = phi ptr [ %i.ft, %.lr.ph ], [ %0, %bb.a ] ; 9 uses
  %.0103104 = phi ptr [ %i.o, %.lr.ph ], [ %1, %bb.a ] ; 10 uses
  %i.h = load i8, ptr %.0103104, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = mul nsw i32 %i.c, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0103104, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i32
  %i.n = mul nsw i32 %i.d, %i.m
  %i.o = getelementptr inbounds i8, ptr %.0103104, i64 %2 ; 10 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i32
  %i.r = mul nsw i32 %i.e, %i.q
  %i.s = getelementptr i8, ptr %i.o, i64 1        ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i32
  %i.v = mul nsw i32 %i.f, %i.u
  %i.w = add i32 %i.j, 28
  %i.x = add i32 %i.w, %i.n
  %i.y = add i32 %i.x, %i.r
  %i.z = add i32 %i.y, %i.v
  %i.aa = lshr i32 %i.z, 6
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %.0102105, align 1, !tbaa !28
  %i.ac = load i8, ptr %i.k, align 1, !tbaa !28
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nsw i32 %i.c, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0103104, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nsw i32 %i.d, %i.ah
  %i.aj = load i8, ptr %i.s, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.e, %i.ak
  %i.am = getelementptr i8, ptr %i.o, i64 2       ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nsw i32 %i.f, %i.ao
  %i.aq = add i32 %i.ae, 28
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %i.al
  %i.at = add i32 %i.as, %i.ap
  %i.au = lshr i32 %i.at, 6
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0102105, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !28
  %i.ax = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul nsw i32 %i.c, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.0103104, i64 3 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = zext i8 %i.bb to i32
  %i.bd = mul nsw i32 %i.d, %i.bc
  %i.be = load i8, ptr %i.am, align 1, !tbaa !28
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.e, %i.bf
  %i.bh = getelementptr i8, ptr %i.o, i64 3       ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = mul nsw i32 %i.f, %i.bj
  %i.bl = add i32 %i.az, 28
  %i.bm = add i32 %i.bl, %i.bd
  %i.bn = add i32 %i.bm, %i.bg
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = lshr i32 %i.bo, 6
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.0102105, i64 2
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !28
  %i.bs = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bt = zext i8 %i.bs to i32
  %i.bu = mul nsw i32 %i.c, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.0103104, i64 4 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = zext i8 %i.bw to i32
  %i.by = mul nsw i32 %i.d, %i.bx
  %i.bz = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nsw i32 %i.e, %i.ca
  %i.cc = getelementptr i8, ptr %i.o, i64 4       ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !28
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul nsw i32 %i.f, %i.ce
  %i.cg = add i32 %i.bu, 28
  %i.ch = add i32 %i.cg, %i.by
  %i.ci = add i32 %i.ch, %i.cb
  %i.cj = add i32 %i.ci, %i.cf
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0102105, i64 3
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !28
  %i.cn = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.co = zext i8 %i.cn to i32
  %i.cp = mul nsw i32 %i.c, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.0103104, i64 5 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.d, %i.cs
  %i.cu = load i8, ptr %i.cc, align 1, !tbaa !28
  %i.cv = zext i8 %i.cu to i32
  %i.cw = mul nsw i32 %i.e, %i.cv
  %i.cx = getelementptr i8, ptr %i.o, i64 5       ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !28
  %i.cz = zext i8 %i.cy to i32
  %i.da = mul nsw i32 %i.f, %i.cz
  %i.db = add i32 %i.cp, 28
  %i.dc = add i32 %i.db, %i.ct
  %i.dd = add i32 %i.dc, %i.cw
  %i.de = add i32 %i.dd, %i.da
  %i.df = lshr i32 %i.de, 6
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0102105, i64 4
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !28
  %i.di = load i8, ptr %i.cq, align 1, !tbaa !28
  %i.dj = zext i8 %i.di to i32
  %i.dk = mul nsw i32 %i.c, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %.0103104, i64 6 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !28
  %i.dn = zext i8 %i.dm to i32
  %i.do = mul nsw i32 %i.d, %i.dn
  %i.dp = load i8, ptr %i.cx, align 1, !tbaa !28
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nsw i32 %i.e, %i.dq
  %i.ds = getelementptr i8, ptr %i.o, i64 6       ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.f, %i.du
  %i.dw = add i32 %i.dk, 28
  %i.dx = add i32 %i.dw, %i.do
  %i.dy = add i32 %i.dx, %i.dr
  %i.dz = add i32 %i.dy, %i.dv
  %i.ea = lshr i32 %i.dz, 6
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = getelementptr inbounds nuw i8, ptr %.0102105, i64 5
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !28
  %i.ed = load i8, ptr %i.dl, align 1, !tbaa !28
  %i.ee = zext i8 %i.ed to i32
  %i.ef = mul nsw i32 %i.c, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.0103104, i64 7 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !28
  %i.ei = zext i8 %i.eh to i32
  %i.ej = mul nsw i32 %i.d, %i.ei
  %i.ek = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.el = zext i8 %i.ek to i32
  %i.em = mul nsw i32 %i.e, %i.el
  %i.en = getelementptr i8, ptr %i.o, i64 7       ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !28
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nsw i32 %i.f, %i.ep
  %i.er = add i32 %i.ef, 28
  %i.es = add i32 %i.er, %i.ej
  %i.et = add i32 %i.es, %i.em
  %i.eu = add i32 %i.et, %i.eq
  %i.ev = lshr i32 %i.eu, 6
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0102105, i64 6
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !28
  %i.ey = load i8, ptr %i.eg, align 1, !tbaa !28
  %i.ez = zext i8 %i.ey to i32
  %i.fa = mul nsw i32 %i.c, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.0103104, i64 8
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !28
  %i.fd = zext i8 %i.fc to i32
  %i.fe = mul nsw i32 %i.d, %i.fd
  %i.ff = load i8, ptr %i.en, align 1, !tbaa !28
  %i.fg = zext i8 %i.ff to i32
  %i.fh = mul nsw i32 %i.e, %i.fg
  %i.fi = getelementptr i8, ptr %i.o, i64 8
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !28
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.f, %i.fk
  %i.fm = add i32 %i.fa, 28
  %i.fn = add i32 %i.fm, %i.fe
  %i.fo = add i32 %i.fn, %i.fh
  %i.fp = add i32 %i.fo, %i.fl
  %i.fq = lshr i32 %i.fp, 6
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %.0102105, i64 7
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !28
  %i.ft = getelementptr inbounds i8, ptr %.0102105, i64 %2
  %i.fu = add nuw nsw i32 %.0106, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fu, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_no_rnd_vc1_chroma_mc8_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = sub nsw i32 8, %4                        ; 2 uses
  %i.b = sub nsw i32 8, %5                        ; 2 uses
  %i.c = mul nsw i32 %i.b, %i.a                   ; 16 uses
  %i.d = mul nsw i32 %i.b, %4                     ; 16 uses
  %i.e = mul nsw i32 %i.a, %5                     ; 16 uses
  %i.f = mul nsw i32 %5, %4                       ; 16 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.lver.check, label %._crit_edge

.lr.ph.lver.check:                                ; preds = %bb.a
  %ident.check.not = icmp eq i64 %2, 1
  br i1 %ident.check.not, label %.lr.ph.ph, label %.lr.ph.lver.orig

.lr.ph.lver.orig:                                 ; preds = %.lr.ph.lver.check, %.lr.ph.lver.orig
  %.0114.lver.orig = phi i32 [ %i.hi, %.lr.ph.lver.orig ], [ 0, %.lr.ph.lver.check ]
  %.0110113.lver.orig = phi ptr [ %i.hh, %.lr.ph.lver.orig ], [ %0, %.lr.ph.lver.check ] ; 10 uses
  %.0111112.lver.orig = phi ptr [ %i.q, %.lr.ph.lver.orig ], [ %1, %.lr.ph.lver.check ] ; 10 uses
  %i.h = load i8, ptr %.0110113.lver.orig, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = load i8, ptr %.0111112.lver.orig, align 1, !tbaa !28
  %i.k = zext i8 %i.j to i32
  %i.l = mul nsw i32 %i.c, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i32
  %i.p = mul nsw i32 %i.d, %i.o
  %i.q = getelementptr inbounds i8, ptr %.0111112.lver.orig, i64 %2 ; 10 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i32
  %i.t = mul nsw i32 %i.e, %i.s
  %i.u = getelementptr i8, ptr %i.q, i64 1        ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %i.w = zext i8 %i.v to i32
  %i.x = mul nsw i32 %i.f, %i.w
  %i.y = add i32 %i.l, 28
  %i.z = add i32 %i.y, %i.p
  %i.aa = add i32 %i.z, %i.t
  %i.ab = add i32 %i.aa, %i.x
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = add nuw nsw i32 %i.i, 1
  %i.ae = add nuw nsw i32 %i.ad, %i.ac
  %i.af = lshr i32 %i.ae, 1
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %.0110113.lver.orig, align 1, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.0110113.lver.orig, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.aj = zext i8 %i.ai to i32
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nsw i32 %i.c, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.d, %i.ap
  %i.ar = load i8, ptr %i.u, align 1, !tbaa !28
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nsw i32 %i.e, %i.as
  %i.au = getelementptr i8, ptr %i.q, i64 2       ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !28
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nsw i32 %i.f, %i.aw
  %i.ay = add i32 %i.am, 28
  %i.az = add i32 %i.ay, %i.aq
  %i.ba = add i32 %i.az, %i.at
  %i.bb = add i32 %i.ba, %i.ax
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = add nuw nsw i32 %i.aj, 1
  %i.be = add nuw nsw i32 %i.bd, %i.bc
  %i.bf = lshr i32 %i.be, 1
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %i.ah, align 1, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.0110113.lver.orig, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %i.an, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul nsw i32 %i.c, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 3 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = mul nsw i32 %i.d, %i.bp
  %i.br = load i8, ptr %i.au, align 1, !tbaa !28
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nsw i32 %i.e, %i.bs
  %i.bu = getelementptr i8, ptr %i.q, i64 3       ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.f, %i.bw
  %i.by = add i32 %i.bm, 28
  %i.bz = add i32 %i.by, %i.bq
  %i.ca = add i32 %i.bz, %i.bt
  %i.cb = add i32 %i.ca, %i.bx
  %i.cc = lshr i32 %i.cb, 6
  %i.cd = add nuw nsw i32 %i.bj, 1
  %i.ce = add nuw nsw i32 %i.cd, %i.cc
  %i.cf = lshr i32 %i.ce, 1
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.bh, align 1, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %.0110113.lver.orig, i64 3 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nsw i32 %i.c, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 4 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !28
  %i.cp = zext i8 %i.co to i32
  %i.cq = mul nsw i32 %i.d, %i.cp
  %i.cr = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.e, %i.cs
  %i.cu = getelementptr i8, ptr %i.q, i64 4       ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nsw i32 %i.f, %i.cw
  %i.cy = add i32 %i.cm, 28
  %i.cz = add i32 %i.cy, %i.cq
  %i.da = add i32 %i.cz, %i.ct
  %i.db = add i32 %i.da, %i.cx
  %i.dc = lshr i32 %i.db, 6
  %i.dd = add nuw nsw i32 %i.cj, 1
  %i.de = add nuw nsw i32 %i.dd, %i.dc
  %i.df = lshr i32 %i.de, 1
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.ch, align 1, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %.0110113.lver.orig, i64 4 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28
  %i.dj = zext i8 %i.di to i32
  %i.dk = load i8, ptr %i.cn, align 1, !tbaa !28
  %i.dl = zext i8 %i.dk to i32
  %i.dm = mul nsw i32 %i.c, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 5 ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !28
  %i.dp = zext i8 %i.do to i32
  %i.dq = mul nsw i32 %i.d, %i.dp
  %i.dr = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.ds = zext i8 %i.dr to i32
  %i.dt = mul nsw i32 %i.e, %i.ds
  %i.du = getelementptr i8, ptr %i.q, i64 5       ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !28
  %i.dw = zext i8 %i.dv to i32
  %i.dx = mul nsw i32 %i.f, %i.dw
  %i.dy = add i32 %i.dm, 28
  %i.dz = add i32 %i.dy, %i.dq
  %i.ea = add i32 %i.dz, %i.dt
  %i.eb = add i32 %i.ea, %i.dx
  %i.ec = lshr i32 %i.eb, 6
  %i.ed = add nuw nsw i32 %i.dj, 1
  %i.ee = add nuw nsw i32 %i.ed, %i.ec
  %i.ef = lshr i32 %i.ee, 1
  %i.eg = trunc i32 %i.ef to i8
  store i8 %i.eg, ptr %i.dh, align 1, !tbaa !28
  %i.eh = getelementptr inbounds nuw i8, ptr %.0110113.lver.orig, i64 5 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !28
  %i.ej = zext i8 %i.ei to i32
  %i.ek = load i8, ptr %i.dn, align 1, !tbaa !28
  %i.el = zext i8 %i.ek to i32
  %i.em = mul nsw i32 %i.c, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 6 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !28
  %i.ep = zext i8 %i.eo to i32
  %i.eq = mul nsw i32 %i.d, %i.ep
  %i.er = load i8, ptr %i.du, align 1, !tbaa !28
  %i.es = zext i8 %i.er to i32
  %i.et = mul nsw i32 %i.e, %i.es
  %i.eu = getelementptr i8, ptr %i.q, i64 6       ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !28
  %i.ew = zext i8 %i.ev to i32
  %i.ex = mul nsw i32 %i.f, %i.ew
  %i.ey = add i32 %i.em, 28
  %i.ez = add i32 %i.ey, %i.eq
  %i.fa = add i32 %i.ez, %i.et
  %i.fb = add i32 %i.fa, %i.ex
  %i.fc = lshr i32 %i.fb, 6
  %i.fd = add nuw nsw i32 %i.ej, 1
  %i.fe = add nuw nsw i32 %i.fd, %i.fc
  %i.ff = lshr i32 %i.fe, 1
  %i.fg = trunc i32 %i.ff to i8
  store i8 %i.fg, ptr %i.eh, align 1, !tbaa !28
  %i.fh = getelementptr inbounds nuw i8, ptr %.0110113.lver.orig, i64 6 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !28
  %i.fj = zext i8 %i.fi to i32
  %i.fk = load i8, ptr %i.en, align 1, !tbaa !28
  %i.fl = zext i8 %i.fk to i32
  %i.fm = mul nsw i32 %i.c, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 7 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !28
  %i.fp = zext i8 %i.fo to i32
  %i.fq = mul nsw i32 %i.d, %i.fp
  %i.fr = load i8, ptr %i.eu, align 1, !tbaa !28
  %i.fs = zext i8 %i.fr to i32
  %i.ft = mul nsw i32 %i.e, %i.fs
  %i.fu = getelementptr i8, ptr %i.q, i64 7       ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !28
  %i.fw = zext i8 %i.fv to i32
  %i.fx = mul nsw i32 %i.f, %i.fw
  %i.fy = add i32 %i.fm, 28
  %i.fz = add i32 %i.fy, %i.fq
  %i.ga = add i32 %i.fz, %i.ft
  %i.gb = add i32 %i.ga, %i.fx
  %i.gc = lshr i32 %i.gb, 6
  %i.gd = add nuw nsw i32 %i.fj, 1
  %i.ge = add nuw nsw i32 %i.gd, %i.gc
  %i.gf = lshr i32 %i.ge, 1
  %i.gg = trunc i32 %i.gf to i8
  store i8 %i.gg, ptr %i.fh, align 1, !tbaa !28
  %i.gh = getelementptr inbounds nuw i8, ptr %.0110113.lver.orig, i64 7 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !28
  %i.gj = zext i8 %i.gi to i32
  %i.gk = load i8, ptr %i.fn, align 1, !tbaa !28
  %i.gl = zext i8 %i.gk to i32
  %i.gm = mul nsw i32 %i.c, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.0111112.lver.orig, i64 8
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !28
  %i.gp = zext i8 %i.go to i32
  %i.gq = mul nsw i32 %i.d, %i.gp
  %i.gr = load i8, ptr %i.fu, align 1, !tbaa !28
  %i.gs = zext i8 %i.gr to i32
  %i.gt = mul nsw i32 %i.e, %i.gs
  %i.gu = getelementptr i8, ptr %i.q, i64 8
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !28
  %i.gw = zext i8 %i.gv to i32
  %i.gx = mul nsw i32 %i.f, %i.gw
  %i.gy = add i32 %i.gm, 28
  %i.gz = add i32 %i.gy, %i.gq
  %i.ha = add i32 %i.gz, %i.gt
  %i.hb = add i32 %i.ha, %i.gx
  %i.hc = lshr i32 %i.hb, 6
  %i.hd = add nuw nsw i32 %i.gj, 1
  %i.he = add nuw nsw i32 %i.hd, %i.hc
  %i.hf = lshr i32 %i.he, 1
  %i.hg = trunc i32 %i.hf to i8
  store i8 %i.hg, ptr %i.gh, align 1, !tbaa !28
  %i.hh = getelementptr inbounds i8, ptr %.0110113.lver.orig, i64 %2
  %i.hi = add nuw nsw i32 %.0114.lver.orig, 1     ; 2 uses
  %exitcond.not.lver.orig = icmp eq i32 %i.hi, %3
  br i1 %exitcond.not.lver.orig, label %._crit_edge, label %.lr.ph.lver.orig, !llvm.loop !116

.lr.ph.ph:                                        ; preds = %.lr.ph.lver.check
  %scevgep = getelementptr i8, ptr %0, i64 6
  %load_initial = load i8, ptr %scevgep, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.ph, %.lr.ph
  %store_forwarded = phi i8 [ %load_initial, %.lr.ph.ph ], [ %i.ph, %.lr.ph ]
  %.0114 = phi i32 [ 0, %.lr.ph.ph ], [ %i.pj, %.lr.ph ]
  %.0110113 = phi ptr [ %0, %.lr.ph.ph ], [ %i.pi, %.lr.ph ] ; 10 uses
  %.0111112 = phi ptr [ %1, %.lr.ph.ph ], [ %i.hs, %.lr.ph ] ; 10 uses
  %i.hj = load i8, ptr %.0110113, align 1, !tbaa !28
  %i.hk = zext i8 %i.hj to i32
  %i.hl = load i8, ptr %.0111112, align 1, !tbaa !28
  %i.hm = zext i8 %i.hl to i32
  %i.hn = mul nsw i32 %i.c, %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %.0111112, i64 1 ; 2 uses
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !28
  %i.hq = zext i8 %i.hp to i32
  %i.hr = mul nsw i32 %i.d, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %.0111112, i64 %2 ; 10 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !28
  %i.hu = zext i8 %i.ht to i32
  %i.hv = mul nsw i32 %i.e, %i.hu
  %i.hw = getelementptr i8, ptr %i.hs, i64 1      ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !28
  %i.hy = zext i8 %i.hx to i32
  %i.hz = mul nsw i32 %i.f, %i.hy
  %i.ia = add i32 %i.hn, 28
  %i.ib = add i32 %i.ia, %i.hr
  %i.ic = add i32 %i.ib, %i.hv
  %i.id = add i32 %i.ic, %i.hz
  %i.ie = lshr i32 %i.id, 6
  %i.if = add nuw nsw i32 %i.hk, 1
  %i.ig = add nuw nsw i32 %i.if, %i.ie
  %i.ih = lshr i32 %i.ig, 1
  %i.ii = trunc i32 %i.ih to i8
  store i8 %i.ii, ptr %.0110113, align 1, !tbaa !28
  %i.ij = getelementptr inbounds nuw i8, ptr %.0110113, i64 1 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !28
  %i.il = zext i8 %i.ik to i32
  %i.im = load i8, ptr %i.ho, align 1, !tbaa !28
  %i.in = zext i8 %i.im to i32
  %i.io = mul nsw i32 %i.c, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %.0111112, i64 2 ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !28
  %i.ir = zext i8 %i.iq to i32
  %i.is = mul nsw i32 %i.d, %i.ir
  %i.it = load i8, ptr %i.hw, align 1, !tbaa !28
  %i.iu = zext i8 %i.it to i32
  %i.iv = mul nsw i32 %i.e, %i.iu
  %i.iw = getelementptr i8, ptr %i.hs, i64 2      ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !28
  %i.iy = zext i8 %i.ix to i32
  %i.iz = mul nsw i32 %i.f, %i.iy
  %i.ja = add i32 %i.io, 28
  %i.jb = add i32 %i.ja, %i.is
  %i.jc = add i32 %i.jb, %i.iv
  %i.jd = add i32 %i.jc, %i.iz
  %i.je = lshr i32 %i.jd, 6
  %i.jf = add nuw nsw i32 %i.il, 1
  %i.jg = add nuw nsw i32 %i.jf, %i.je
  %i.jh = lshr i32 %i.jg, 1
  %i.ji = trunc i32 %i.jh to i8
  store i8 %i.ji, ptr %i.ij, align 1, !tbaa !28
  %i.jj = getelementptr inbounds nuw i8, ptr %.0110113, i64 2 ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !28
  %i.jl = zext i8 %i.jk to i32
  %i.jm = load i8, ptr %i.ip, align 1, !tbaa !28
  %i.jn = zext i8 %i.jm to i32
  %i.jo = mul nsw i32 %i.c, %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %.0111112, i64 3 ; 2 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !28
  %i.jr = zext i8 %i.jq to i32
  %i.js = mul nsw i32 %i.d, %i.jr
  %i.jt = load i8, ptr %i.iw, align 1, !tbaa !28
  %i.ju = zext i8 %i.jt to i32
  %i.jv = mul nsw i32 %i.e, %i.ju
  %i.jw = getelementptr i8, ptr %i.hs, i64 3      ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !28
  %i.jy = zext i8 %i.jx to i32
  %i.jz = mul nsw i32 %i.f, %i.jy
  %i.ka = add i32 %i.jo, 28
  %i.kb = add i32 %i.ka, %i.js
  %i.kc = add i32 %i.kb, %i.jv
  %i.kd = add i32 %i.kc, %i.jz
  %i.ke = lshr i32 %i.kd, 6
  %i.kf = add nuw nsw i32 %i.jl, 1
  %i.kg = add nuw nsw i32 %i.kf, %i.ke
  %i.kh = lshr i32 %i.kg, 1
  %i.ki = trunc i32 %i.kh to i8
  store i8 %i.ki, ptr %i.jj, align 1, !tbaa !28
  %i.kj = getelementptr inbounds nuw i8, ptr %.0110113, i64 3 ; 2 uses
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !28
  %i.kl = zext i8 %i.kk to i32
  %i.km = load i8, ptr %i.jp, align 1, !tbaa !28
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nsw i32 %i.c, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.0111112, i64 4 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !28
  %i.kr = zext i8 %i.kq to i32
  %i.ks = mul nsw i32 %i.d, %i.kr
  %i.kt = load i8, ptr %i.jw, align 1, !tbaa !28
  %i.ku = zext i8 %i.kt to i32
  %i.kv = mul nsw i32 %i.e, %i.ku
  %i.kw = getelementptr i8, ptr %i.hs, i64 4      ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !28
  %i.ky = zext i8 %i.kx to i32
  %i.kz = mul nsw i32 %i.f, %i.ky
  %i.la = add i32 %i.ko, 28
  %i.lb = add i32 %i.la, %i.ks
  %i.lc = add i32 %i.lb, %i.kv
  %i.ld = add i32 %i.lc, %i.kz
  %i.le = lshr i32 %i.ld, 6
  %i.lf = add nuw nsw i32 %i.kl, 1
  %i.lg = add nuw nsw i32 %i.lf, %i.le
  %i.lh = lshr i32 %i.lg, 1
  %i.li = trunc i32 %i.lh to i8
  store i8 %i.li, ptr %i.kj, align 1, !tbaa !28
  %i.lj = getelementptr inbounds nuw i8, ptr %.0110113, i64 4 ; 2 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !28
  %i.ll = zext i8 %i.lk to i32
  %i.lm = load i8, ptr %i.kp, align 1, !tbaa !28
  %i.ln = zext i8 %i.lm to i32
  %i.lo = mul nsw i32 %i.c, %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %.0111112, i64 5 ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !28
  %i.lr = zext i8 %i.lq to i32
  %i.ls = mul nsw i32 %i.d, %i.lr
  %i.lt = load i8, ptr %i.kw, align 1, !tbaa !28
  %i.lu = zext i8 %i.lt to i32
  %i.lv = mul nsw i32 %i.e, %i.lu
  %i.lw = getelementptr i8, ptr %i.hs, i64 5      ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !28
  %i.ly = zext i8 %i.lx to i32
  %i.lz = mul nsw i32 %i.f, %i.ly
  %i.ma = add i32 %i.lo, 28
  %i.mb = add i32 %i.ma, %i.ls
  %i.mc = add i32 %i.mb, %i.lv
  %i.md = add i32 %i.mc, %i.lz
  %i.me = lshr i32 %i.md, 6
  %i.mf = add nuw nsw i32 %i.ll, 1
  %i.mg = add nuw nsw i32 %i.mf, %i.me
  %i.mh = lshr i32 %i.mg, 1
  %i.mi = trunc i32 %i.mh to i8
  store i8 %i.mi, ptr %i.lj, align 1, !tbaa !28
  %i.mj = getelementptr inbounds nuw i8, ptr %.0110113, i64 5 ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !28
  %i.ml = zext i8 %i.mk to i32
  %i.mm = load i8, ptr %i.lp, align 1, !tbaa !28
  %i.mn = zext i8 %i.mm to i32
  %i.mo = mul nsw i32 %i.c, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %.0111112, i64 6 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !28
  %i.mr = zext i8 %i.mq to i32
  %i.ms = mul nsw i32 %i.d, %i.mr
  %i.mt = load i8, ptr %i.lw, align 1, !tbaa !28
  %i.mu = zext i8 %i.mt to i32
  %i.mv = mul nsw i32 %i.e, %i.mu
  %i.mw = getelementptr i8, ptr %i.hs, i64 6      ; 2 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !28
  %i.my = zext i8 %i.mx to i32
  %i.mz = mul nsw i32 %i.f, %i.my
  %i.na = add i32 %i.mo, 28
  %i.nb = add i32 %i.na, %i.ms
  %i.nc = add i32 %i.nb, %i.mv
  %i.nd = add i32 %i.nc, %i.mz
  %i.ne = lshr i32 %i.nd, 6
  %i.nf = add nuw nsw i32 %i.ml, 1
  %i.ng = add nuw nsw i32 %i.nf, %i.ne
  %i.nh = lshr i32 %i.ng, 1
  %i.ni = trunc i32 %i.nh to i8
  store i8 %i.ni, ptr %i.mj, align 1, !tbaa !28
  %i.nj = getelementptr inbounds nuw i8, ptr %.0110113, i64 6
  %i.nk = zext i8 %store_forwarded to i32
  %i.nl = load i8, ptr %i.mp, align 1, !tbaa !28
  %i.nm = zext i8 %i.nl to i32
  %i.nn = mul nsw i32 %i.c, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %.0111112, i64 7 ; 2 uses
  %i.np = load i8, ptr %i.no, align 1, !tbaa !28
  %i.nq = zext i8 %i.np to i32
  %i.nr = mul nsw i32 %i.d, %i.nq
  %i.ns = load i8, ptr %i.mw, align 1, !tbaa !28
  %i.nt = zext i8 %i.ns to i32
  %i.nu = mul nsw i32 %i.e, %i.nt
  %i.nv = getelementptr i8, ptr %i.hs, i64 7      ; 2 uses
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !28
  %i.nx = zext i8 %i.nw to i32
  %i.ny = mul nsw i32 %i.f, %i.nx
  %i.nz = add i32 %i.nn, 28
  %i.oa = add i32 %i.nz, %i.nr
  %i.ob = add i32 %i.oa, %i.nu
  %i.oc = add i32 %i.ob, %i.ny
  %i.od = lshr i32 %i.oc, 6
  %i.oe = add nuw nsw i32 %i.nk, 1
  %i.of = add nuw nsw i32 %i.oe, %i.od
  %i.og = lshr i32 %i.of, 1
  %i.oh = trunc i32 %i.og to i8
  store i8 %i.oh, ptr %i.nj, align 1, !tbaa !28
  %i.oi = getelementptr inbounds nuw i8, ptr %.0110113, i64 7 ; 2 uses
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !28
  %i.ok = zext i8 %i.oj to i32
  %i.ol = load i8, ptr %i.no, align 1, !tbaa !28
  %i.om = zext i8 %i.ol to i32
  %i.on = mul nsw i32 %i.c, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %.0111112, i64 8
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !28
  %i.oq = zext i8 %i.op to i32
  %i.or = mul nsw i32 %i.d, %i.oq
  %i.os = load i8, ptr %i.nv, align 1, !tbaa !28
  %i.ot = zext i8 %i.os to i32
  %i.ou = mul nsw i32 %i.e, %i.ot
  %i.ov = getelementptr i8, ptr %i.hs, i64 8
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !28
  %i.ox = zext i8 %i.ow to i32
  %i.oy = mul nsw i32 %i.f, %i.ox
  %i.oz = add i32 %i.on, 28
  %i.pa = add i32 %i.oz, %i.or
  %i.pb = add i32 %i.pa, %i.ou
  %i.pc = add i32 %i.pb, %i.oy
  %i.pd = lshr i32 %i.pc, 6
  %i.pe = add nuw nsw i32 %i.ok, 1
  %i.pf = add nuw nsw i32 %i.pe, %i.pd
  %i.pg = lshr i32 %i.pf, 1
  %i.ph = trunc i32 %i.pg to i8                   ; 2 uses
  store i8 %i.ph, ptr %i.oi, align 1, !tbaa !28
  %i.pi = getelementptr inbounds nuw i8, ptr %.0110113, i64 %2
  %i.pj = add nuw nsw i32 %.0114, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.pj, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !116

._crit_edge:                                      ; preds = %.lr.ph.lver.orig, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @put_no_rnd_vc1_chroma_mc4_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = sub nsw i32 8, %4                        ; 2 uses
  %i.b = sub nsw i32 8, %5                        ; 2 uses
  %i.c = mul nsw i32 %i.b, %i.a                   ; 4 uses
  %i.d = mul nsw i32 %i.b, %4                     ; 4 uses
  %i.e = mul nsw i32 %i.a, %5                     ; 4 uses
  %i.f = mul nsw i32 %5, %4                       ; 4 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.062 = phi i32 [ %i.co, %.lr.ph ], [ 0, %bb.a ]
  %.05861 = phi ptr [ %i.cn, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.05960 = phi ptr [ %i.o, %.lr.ph ], [ %1, %bb.a ] ; 6 uses
  %i.h = load i8, ptr %.05960, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = mul nsw i32 %i.c, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05960, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !28
  %i.m = zext i8 %i.l to i32
  %i.n = mul nsw i32 %i.d, %i.m
  %i.o = getelementptr inbounds i8, ptr %.05960, i64 %2 ; 6 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = zext i8 %i.p to i32
  %i.r = mul nsw i32 %i.e, %i.q
  %i.s = getelementptr i8, ptr %i.o, i64 1        ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28
  %i.u = zext i8 %i.t to i32
  %i.v = mul nsw i32 %i.f, %i.u
  %i.w = add i32 %i.j, 28
  %i.x = add i32 %i.w, %i.n
  %i.y = add i32 %i.x, %i.r
  %i.z = add i32 %i.y, %i.v
  %i.aa = lshr i32 %i.z, 6
  %i.ab = trunc i32 %i.aa to i8
  store i8 %i.ab, ptr %.05861, align 1, !tbaa !28
  %i.ac = load i8, ptr %i.k, align 1, !tbaa !28
  %i.ad = zext i8 %i.ac to i32
  %i.ae = mul nsw i32 %i.c, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.05960, i64 2 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ah = zext i8 %i.ag to i32
  %i.ai = mul nsw i32 %i.d, %i.ah
  %i.aj = load i8, ptr %i.s, align 1, !tbaa !28
  %i.ak = zext i8 %i.aj to i32
  %i.al = mul nsw i32 %i.e, %i.ak
  %i.am = getelementptr i8, ptr %i.o, i64 2       ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nsw i32 %i.f, %i.ao
  %i.aq = add i32 %i.ae, 28
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %i.al
  %i.at = add i32 %i.as, %i.ap
  %i.au = lshr i32 %i.at, 6
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.05861, i64 1
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !28
  %i.ax = load i8, ptr %i.af, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32
  %i.az = mul nsw i32 %i.c, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.05960, i64 3 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bc = zext i8 %i.bb to i32
  %i.bd = mul nsw i32 %i.d, %i.bc
  %i.be = load i8, ptr %i.am, align 1, !tbaa !28
  %i.bf = zext i8 %i.be to i32
  %i.bg = mul nsw i32 %i.e, %i.bf
  %i.bh = getelementptr i8, ptr %i.o, i64 3       ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = mul nsw i32 %i.f, %i.bj
  %i.bl = add i32 %i.az, 28
  %i.bm = add i32 %i.bl, %i.bd
  %i.bn = add i32 %i.bm, %i.bg
  %i.bo = add i32 %i.bn, %i.bk
  %i.bp = lshr i32 %i.bo, 6
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.05861, i64 2
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !28
  %i.bs = load i8, ptr %i.ba, align 1, !tbaa !28
  %i.bt = zext i8 %i.bs to i32
  %i.bu = mul nsw i32 %i.c, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.05960, i64 4
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !28
  %i.bx = zext i8 %i.bw to i32
  %i.by = mul nsw i32 %i.d, %i.bx
  %i.bz = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.ca = zext i8 %i.bz to i32
  %i.cb = mul nsw i32 %i.e, %i.ca
  %i.cc = getelementptr i8, ptr %i.o, i64 4
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !28
  %i.ce = zext i8 %i.cd to i32
  %i.cf = mul nsw i32 %i.f, %i.ce
  %i.cg = add i32 %i.bu, 28
  %i.ch = add i32 %i.cg, %i.by
  %i.ci = add i32 %i.ch, %i.cb
  %i.cj = add i32 %i.ci, %i.cf
  %i.ck = lshr i32 %i.cj, 6
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %.05861, i64 3
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !28
  %i.cn = getelementptr inbounds i8, ptr %.05861, i64 %2
  %i.co = add nuw nsw i32 %.062, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !117

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @avg_no_rnd_vc1_chroma_mc4_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
bb.a:
  %i.a = sub nsw i32 8, %4                        ; 2 uses
  %i.b = sub nsw i32 8, %5                        ; 2 uses
  %i.c = mul nsw i32 %i.b, %i.a                   ; 8 uses
  %i.d = mul nsw i32 %i.b, %4                     ; 8 uses
  %i.e = mul nsw i32 %i.a, %5                     ; 8 uses
  %i.f = mul nsw i32 %5, %4                       ; 8 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph.lver.check, label %._crit_edge

.lr.ph.lver.check:                                ; preds = %bb.a
  %ident.check.not = icmp eq i64 %2, 1
  br i1 %ident.check.not, label %.lr.ph.ph, label %.lr.ph.lver.orig

.lr.ph.lver.orig:                                 ; preds = %.lr.ph.lver.check, %.lr.ph.lver.orig
  %.066.lver.orig = phi i32 [ %i.di, %.lr.ph.lver.orig ], [ 0, %.lr.ph.lver.check ]
  %.06265.lver.orig = phi ptr [ %i.dh, %.lr.ph.lver.orig ], [ %0, %.lr.ph.lver.check ] ; 6 uses
  %.06364.lver.orig = phi ptr [ %i.q, %.lr.ph.lver.orig ], [ %1, %.lr.ph.lver.check ] ; 6 uses
  %i.h = load i8, ptr %.06265.lver.orig, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = load i8, ptr %.06364.lver.orig, align 1, !tbaa !28
  %i.k = zext i8 %i.j to i32
  %i.l = mul nsw i32 %i.c, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.06364.lver.orig, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %i.o = zext i8 %i.n to i32
  %i.p = mul nsw i32 %i.d, %i.o
  %i.q = getelementptr inbounds i8, ptr %.06364.lver.orig, i64 %2 ; 6 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %i.s = zext i8 %i.r to i32
  %i.t = mul nsw i32 %i.e, %i.s
  %i.u = getelementptr i8, ptr %i.q, i64 1        ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28
  %i.w = zext i8 %i.v to i32
  %i.x = mul nsw i32 %i.f, %i.w
  %i.y = add i32 %i.l, 28
  %i.z = add i32 %i.y, %i.p
  %i.aa = add i32 %i.z, %i.t
  %i.ab = add i32 %i.aa, %i.x
  %i.ac = lshr i32 %i.ab, 6
  %i.ad = add nuw nsw i32 %i.i, 1
  %i.ae = add nuw nsw i32 %i.ad, %i.ac
  %i.af = lshr i32 %i.ae, 1
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %.06265.lver.orig, align 1, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.06265.lver.orig, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.aj = zext i8 %i.ai to i32
  %i.ak = load i8, ptr %i.m, align 1, !tbaa !28
  %i.al = zext i8 %i.ak to i32
  %i.am = mul nsw i32 %i.c, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.06364.lver.orig, i64 2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !28
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nsw i32 %i.d, %i.ap
  %i.ar = load i8, ptr %i.u, align 1, !tbaa !28
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nsw i32 %i.e, %i.as
  %i.au = getelementptr i8, ptr %i.q, i64 2       ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !28
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nsw i32 %i.f, %i.aw
  %i.ay = add i32 %i.am, 28
  %i.az = add i32 %i.ay, %i.aq
  %i.ba = add i32 %i.az, %i.at
  %i.bb = add i32 %i.ba, %i.ax
  %i.bc = lshr i32 %i.bb, 6
  %i.bd = add nuw nsw i32 %i.aj, 1
  %i.be = add nuw nsw i32 %i.bd, %i.bc
  %i.bf = lshr i32 %i.be, 1
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %i.ah, align 1, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.06265.lver.orig, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !28
  %i.bj = zext i8 %i.bi to i32
  %i.bk = load i8, ptr %i.an, align 1, !tbaa !28
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul nsw i32 %i.c, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %.06364.lver.orig, i64 3 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = mul nsw i32 %i.d, %i.bp
  %i.br = load i8, ptr %i.au, align 1, !tbaa !28
  %i.bs = zext i8 %i.br to i32
  %i.bt = mul nsw i32 %i.e, %i.bs
  %i.bu = getelementptr i8, ptr %i.q, i64 3       ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = zext i8 %i.bv to i32
  %i.bx = mul nsw i32 %i.f, %i.bw
  %i.by = add i32 %i.bm, 28
  %i.bz = add i32 %i.by, %i.bq
  %i.ca = add i32 %i.bz, %i.bt
  %i.cb = add i32 %i.ca, %i.bx
  %i.cc = lshr i32 %i.cb, 6
  %i.cd = add nuw nsw i32 %i.bj, 1
  %i.ce = add nuw nsw i32 %i.cd, %i.cc
  %i.cf = lshr i32 %i.ce, 1
  %i.cg = trunc i32 %i.cf to i8
  store i8 %i.cg, ptr %i.bh, align 1, !tbaa !28
  %i.ch = getelementptr inbounds nuw i8, ptr %.06265.lver.orig, i64 3 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !28
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i8, ptr %i.bn, align 1, !tbaa !28
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nsw i32 %i.c, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.06364.lver.orig, i64 4
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !28
  %i.cp = zext i8 %i.co to i32
  %i.cq = mul nsw i32 %i.d, %i.cp
  %i.cr = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.cs = zext i8 %i.cr to i32
  %i.ct = mul nsw i32 %i.e, %i.cs
  %i.cu = getelementptr i8, ptr %i.q, i64 4
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i32
  %i.cx = mul nsw i32 %i.f, %i.cw
  %i.cy = add i32 %i.cm, 28
  %i.cz = add i32 %i.cy, %i.cq
  %i.da = add i32 %i.cz, %i.ct
  %i.db = add i32 %i.da, %i.cx
  %i.dc = lshr i32 %i.db, 6
  %i.dd = add nuw nsw i32 %i.cj, 1
  %i.de = add nuw nsw i32 %i.dd, %i.dc
  %i.df = lshr i32 %i.de, 1
  %i.dg = trunc i32 %i.df to i8
  store i8 %i.dg, ptr %i.ch, align 1, !tbaa !28
  %i.dh = getelementptr inbounds i8, ptr %.06265.lver.orig, i64 %2
  %i.di = add nuw nsw i32 %.066.lver.orig, 1      ; 2 uses
  %exitcond.not.lver.orig = icmp eq i32 %i.di, %3
  br i1 %exitcond.not.lver.orig, label %._crit_edge, label %.lr.ph.lver.orig, !llvm.loop !118

.lr.ph.ph:                                        ; preds = %.lr.ph.lver.check
  %scevgep = getelementptr i8, ptr %0, i64 2
  %load_initial = load i8, ptr %scevgep, align 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.ph, %.lr.ph
  %store_forwarded = phi i8 [ %load_initial, %.lr.ph.ph ], [ %i.hh, %.lr.ph ]
  %.066 = phi i32 [ 0, %.lr.ph.ph ], [ %i.hj, %.lr.ph ]
  %.06265 = phi ptr [ %0, %.lr.ph.ph ], [ %i.hi, %.lr.ph ] ; 6 uses
  %.06364 = phi ptr [ %1, %.lr.ph.ph ], [ %i.ds, %.lr.ph ] ; 6 uses
  %i.dj = load i8, ptr %.06265, align 1, !tbaa !28
  %i.dk = zext i8 %i.dj to i32
  %i.dl = load i8, ptr %.06364, align 1, !tbaa !28
  %i.dm = zext i8 %i.dl to i32
  %i.dn = mul nsw i32 %i.c, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.06364, i64 1 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !28
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nsw i32 %i.d, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %.06364, i64 %2 ; 6 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !28
  %i.du = zext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.e, %i.du
  %i.dw = getelementptr i8, ptr %i.ds, i64 1      ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul nsw i32 %i.f, %i.dy
  %i.ea = add i32 %i.dn, 28
  %i.eb = add i32 %i.ea, %i.dr
  %i.ec = add i32 %i.eb, %i.dv
  %i.ed = add i32 %i.ec, %i.dz
  %i.ee = lshr i32 %i.ed, 6
  %i.ef = add nuw nsw i32 %i.dk, 1
  %i.eg = add nuw nsw i32 %i.ef, %i.ee
  %i.eh = lshr i32 %i.eg, 1
  %i.ei = trunc i32 %i.eh to i8
  store i8 %i.ei, ptr %.06265, align 1, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %.06265, i64 1 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !28
  %i.el = zext i8 %i.ek to i32
  %i.em = load i8, ptr %i.do, align 1, !tbaa !28
  %i.en = zext i8 %i.em to i32
  %i.eo = mul nsw i32 %i.c, %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %.06364, i64 2 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !28
  %i.er = zext i8 %i.eq to i32
  %i.es = mul nsw i32 %i.d, %i.er
  %i.et = load i8, ptr %i.dw, align 1, !tbaa !28
  %i.eu = zext i8 %i.et to i32
  %i.ev = mul nsw i32 %i.e, %i.eu
  %i.ew = getelementptr i8, ptr %i.ds, i64 2      ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !28
  %i.ey = zext i8 %i.ex to i32
  %i.ez = mul nsw i32 %i.f, %i.ey
  %i.fa = add i32 %i.eo, 28
  %i.fb = add i32 %i.fa, %i.es
  %i.fc = add i32 %i.fb, %i.ev
  %i.fd = add i32 %i.fc, %i.ez
  %i.fe = lshr i32 %i.fd, 6
  %i.ff = add nuw nsw i32 %i.el, 1
  %i.fg = add nuw nsw i32 %i.ff, %i.fe
  %i.fh = lshr i32 %i.fg, 1
  %i.fi = trunc i32 %i.fh to i8
  store i8 %i.fi, ptr %i.ej, align 1, !tbaa !28
  %i.fj = getelementptr inbounds nuw i8, ptr %.06265, i64 2
  %i.fk = zext i8 %store_forwarded to i32
  %i.fl = load i8, ptr %i.ep, align 1, !tbaa !28
  %i.fm = zext i8 %i.fl to i32
  %i.fn = mul nsw i32 %i.c, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.06364, i64 3 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !28
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.d, %i.fq
  %i.fs = load i8, ptr %i.ew, align 1, !tbaa !28
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nsw i32 %i.e, %i.ft
  %i.fv = getelementptr i8, ptr %i.ds, i64 3      ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.fx = zext i8 %i.fw to i32
  %i.fy = mul nsw i32 %i.f, %i.fx
  %i.fz = add i32 %i.fn, 28
  %i.ga = add i32 %i.fz, %i.fr
  %i.gb = add i32 %i.ga, %i.fu
  %i.gc = add i32 %i.gb, %i.fy
  %i.gd = lshr i32 %i.gc, 6
  %i.ge = add nuw nsw i32 %i.fk, 1
  %i.gf = add nuw nsw i32 %i.ge, %i.gd
  %i.gg = lshr i32 %i.gf, 1
  %i.gh = trunc i32 %i.gg to i8
  store i8 %i.gh, ptr %i.fj, align 1, !tbaa !28
  %i.gi = getelementptr inbounds nuw i8, ptr %.06265, i64 3 ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !28
  %i.gk = zext i8 %i.gj to i32
  %i.gl = load i8, ptr %i.fo, align 1, !tbaa !28
  %i.gm = zext i8 %i.gl to i32
  %i.gn = mul nsw i32 %i.c, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %.06364, i64 4
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !28
  %i.gq = zext i8 %i.gp to i32
  %i.gr = mul nsw i32 %i.d, %i.gq
  %i.gs = load i8, ptr %i.fv, align 1, !tbaa !28
  %i.gt = zext i8 %i.gs to i32
  %i.gu = mul nsw i32 %i.e, %i.gt
  %i.gv = getelementptr i8, ptr %i.ds, i64 4
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !28
  %i.gx = zext i8 %i.gw to i32
  %i.gy = mul nsw i32 %i.f, %i.gx
  %i.gz = add i32 %i.gn, 28
  %i.ha = add i32 %i.gz, %i.gr
  %i.hb = add i32 %i.ha, %i.gu
  %i.hc = add i32 %i.hb, %i.gy
  %i.hd = lshr i32 %i.hc, 6
  %i.he = add nuw nsw i32 %i.gk, 1
  %i.hf = add nuw nsw i32 %i.he, %i.hd
  %i.hg = lshr i32 %i.hf, 1
  %i.hh = trunc i32 %i.hg to i8                   ; 2 uses
  store i8 %i.hh, ptr %i.gi, align 1, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %.06265, i64 %2
  %i.hj = add nuw nsw i32 %.066, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.hj, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !118

._crit_edge:                                      ; preds = %.lr.ph.lver.orig, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_h_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %.not13 = icmp eq i32 %4, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %4, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.a = add nsw i32 %4, -1
  %i.b = ashr i32 %2, 16
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !28    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = getelementptr i8, ptr %i.d, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = zext i8 %i.h to i32
  %i.j = sub nsw i32 %i.i, %i.f
  %i.k = and i32 %2, 65535
  %i.l = mul nsw i32 %i.j, %i.k
  %i.m = lshr i32 %i.l, 16
  %i.n = trunc i32 %i.m to i8
  %i.o = add i8 %i.e, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.o, ptr %0, align 1, !tbaa !28
  %i.q = add nsw i32 %2, %3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.016.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.01115.unr = phi i32 [ %2, %.lr.ph.preheader ], [ %i.q, %.lr.ph.prol ]
  %.01214.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.a, %.lr.ph.prol ]
  %i.r = icmp eq i32 %4, 1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.016 = phi ptr [ %i.ax, %.lr.ph ], [ %.016.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01115 = phi i32 [ %i.ay, %.lr.ph ], [ %.01115.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01214 = phi i32 [ %i.ai, %.lr.ph ], [ %.01214.unr, %.lr.ph.prol.loopexit ]
  %i.s = ashr i32 %.01115, 16
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %1, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !28    ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr i8, ptr %i.u, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !28
  %i.z = zext i8 %i.y to i32
  %i.aa = sub nsw i32 %i.z, %i.w
  %i.ab = and i32 %.01115, 65535
  %i.ac = mul nsw i32 %i.aa, %i.ab
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc i32 %i.ad to i8
  %i.af = add i8 %i.v, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.016, i64 1
  store i8 %i.af, ptr %.016, align 1, !tbaa !28
  %i.ah = add nsw i32 %.01115, %3                 ; 3 uses
  %i.ai = add nsw i32 %.01214, -2                 ; 2 uses
  %i.aj = ashr i32 %i.ah, 16
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28  ; 2 uses
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.al, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !28
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.aq, %i.an
  %i.as = and i32 %i.ah, 65535
  %i.at = mul nsw i32 %i.ar, %i.as
  %i.au = lshr i32 %i.at, 16
  %i.av = trunc i32 %i.au to i8
  %i.aw = add i8 %i.am, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.016, i64 2
  store i8 %i.aw, ptr %i.ag, align 1, !tbaa !28
  %i.ay = add nsw i32 %i.ah, %3
  %.not.1 = icmp eq i32 %i.ai, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !119

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_single_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %.not.i4 = icmp eq i32 %4, 0
  br i1 %.not.i4, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = zext i32 %4 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.a, %i.c
  %diff.check9 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i32 %4, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 4294967280               ; 7 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %4, %i.h
  %i.j = getelementptr i8, ptr %0, i64 %n.vec
  %i.k = getelementptr i8, ptr %1, i64 %n.vec
  %i.l = getelementptr i8, ptr %2, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep11 = getelementptr i8, ptr %1, i64 %index
  %next.gep12 = getelementptr i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep11, align 1, !tbaa !28 ; 2 uses
  %i.m = zext <16 x i8> %wide.load to <16 x i32>
  %wide.load13 = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !28
  %i.n = zext <16 x i8> %wide.load13 to <16 x i32>
  %i.o = sub nsw <16 x i32> %i.n, %i.m
  %i.p = mul nsw <16 x i32> %i.o, %broadcast.splat
  %i.q = lshr <16 x i32> %i.p, splat (i32 16)
  %i.r = trunc <16 x i32> %i.q to <16 x i8>
  %i.s = add <16 x i8> %wide.load, %i.r
  store <16 x i8> %i.s, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.d, 4294967292             ; 6 uses
  %i.u = trunc nuw i64 %n.vec17 to i32
  %i.v = sub i32 %4, %i.u
  %i.w = getelementptr i8, ptr %0, i64 %n.vec17
  %i.x = getelementptr i8, ptr %1, i64 %n.vec17
  %i.y = getelementptr i8, ptr %2, i64 %n.vec17
  %broadcast.splatinsert18 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat19 = shufflevector <4 x i32> %broadcast.splatinsert18, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 4 uses
  %next.gep21 = getelementptr i8, ptr %0, i64 %index20
  %next.gep22 = getelementptr i8, ptr %1, i64 %index20
  %next.gep23 = getelementptr i8, ptr %2, i64 %index20
  %wide.load24 = load <4 x i8>, ptr %next.gep22, align 1, !tbaa !28 ; 2 uses
  %i.z = zext <4 x i8> %wide.load24 to <4 x i32>
  %wide.load25 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !28
  %i.aa = zext <4 x i8> %wide.load25 to <4 x i32>
  %i.ab = sub nsw <4 x i32> %i.aa, %i.z
  %i.ac = mul nsw <4 x i32> %i.ab, %broadcast.splat19
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 16)
  %i.ae = trunc <4 x i32> %i.ad to <4 x i8>
  %i.af = add <4 x i8> %wide.load24, %i.ae
  store <4 x i8> %i.af, ptr %next.gep21, align 1, !tbaa !28
  %index.next26 = add nuw i64 %index20, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next26, %n.vec17
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %n.vec17, %i.d
  br i1 %cmp.n27, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i8.ph = phi i32 [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 4 uses
  %.023.i7.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.024.i6.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 3 uses
  %.025.i5.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %.022.i8.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ah = add nsw i32 %.022.i8.ph, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %.024.i6.ph, i64 1
  %i.aj = load i8, ptr %.024.i6.ph, align 1, !tbaa !28 ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.025.i5.ph, i64 1
  %i.am = load i8, ptr %.025.i5.ph, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 %i.an, %i.ak
  %i.ap = mul nsw i32 %i.ao, %3
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = add i8 %i.aj, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.023.i7.ph, i64 1
  store i8 %i.as, ptr %.023.i7.ph, align 1, !tbaa !28
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.i8.unr = phi i32 [ %.022.i8.ph, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.023.i7.unr = phi ptr [ %.023.i7.ph, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.024.i6.unr = phi ptr [ %.024.i6.ph, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.025.i5.unr = phi ptr [ %.025.i5.ph, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %i.au = icmp eq i32 %.022.i8.ph, 1
  br i1 %i.au, label %sprite_v_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022.i8 = phi i32 [ %i.bh, %.lr.ph ], [ %.022.i8.unr, %.lr.ph.prol.loopexit ]
  %.023.i7 = phi ptr [ %i.bt, %.lr.ph ], [ %.023.i7.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.024.i6 = phi ptr [ %i.bi, %.lr.ph ], [ %.024.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.025.i5 = phi ptr [ %i.bl, %.lr.ph ], [ %.025.i5.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.024.i6, i64 1
  %i.aw = load i8, ptr %.024.i6, align 1, !tbaa !28 ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.i5, i64 1
  %i.az = load i8, ptr %.025.i5, align 1, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %i.bc = mul nsw i32 %i.bb, %3
  %i.bd = lshr i32 %i.bc, 16
  %i.be = trunc i32 %i.bd to i8
  %i.bf = add i8 %i.aw, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.023.i7, i64 1
  store i8 %i.bf, ptr %.023.i7, align 1, !tbaa !28
  %i.bh = add nsw i32 %.022.i8, -2                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i6, i64 2
  %i.bj = load i8, ptr %i.av, align 1, !tbaa !28  ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.025.i5, i64 2
  %i.bm = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.bk
  %i.bp = mul nsw i32 %i.bo, %3
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = add i8 %i.bj, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.023.i7, i64 2
  store i8 %i.bs, ptr %i.bg, align 1, !tbaa !28
  %.not.i.1 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.1, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !122

sprite_v_template.exit:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_double_noscale_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %.not.i4 = icmp eq i32 %4, 0
  br i1 %.not.i4, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = zext i32 %4 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.e = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.e, -16
  %i.f = sub i64 %i.a, %i.c
  %diff.check9 = icmp ugt i64 %i.f, -16
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check10 = icmp ult i32 %4, 16
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 12
  %n.vec = and i64 %i.d, 4294967280               ; 7 uses
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %4, %i.h
  %i.j = getelementptr i8, ptr %0, i64 %n.vec
  %i.k = getelementptr i8, ptr %1, i64 %n.vec
  %i.l = getelementptr i8, ptr %2, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep11 = getelementptr i8, ptr %1, i64 %index
  %next.gep12 = getelementptr i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep11, align 1, !tbaa !28 ; 2 uses
  %i.m = zext <16 x i8> %wide.load to <16 x i32>
  %wide.load13 = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !28
  %i.n = zext <16 x i8> %wide.load13 to <16 x i32>
  %i.o = sub nsw <16 x i32> %i.n, %i.m
  %i.p = mul nsw <16 x i32> %i.o, %broadcast.splat
  %i.q = lshr <16 x i32> %i.p, splat (i32 16)
  %i.r = trunc <16 x i32> %i.q to <16 x i8>
  %i.s = add <16 x i8> %wide.load, %i.r
  store <16 x i8> %i.s, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.d, 4294967292             ; 6 uses
  %i.u = trunc nuw i64 %n.vec17 to i32
  %i.v = sub i32 %4, %i.u
  %i.w = getelementptr i8, ptr %0, i64 %n.vec17
  %i.x = getelementptr i8, ptr %1, i64 %n.vec17
  %i.y = getelementptr i8, ptr %2, i64 %n.vec17
  %broadcast.splatinsert18 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat19 = shufflevector <4 x i32> %broadcast.splatinsert18, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next26, %vec.epilog.vector.body ] ; 4 uses
  %next.gep21 = getelementptr i8, ptr %0, i64 %index20
  %next.gep22 = getelementptr i8, ptr %1, i64 %index20
  %next.gep23 = getelementptr i8, ptr %2, i64 %index20
  %wide.load24 = load <4 x i8>, ptr %next.gep22, align 1, !tbaa !28 ; 2 uses
  %i.z = zext <4 x i8> %wide.load24 to <4 x i32>
  %wide.load25 = load <4 x i8>, ptr %next.gep23, align 1, !tbaa !28
  %i.aa = zext <4 x i8> %wide.load25 to <4 x i32>
  %i.ab = sub nsw <4 x i32> %i.aa, %i.z
  %i.ac = mul nsw <4 x i32> %i.ab, %broadcast.splat19
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 16)
  %i.ae = trunc <4 x i32> %i.ad to <4 x i8>
  %i.af = add <4 x i8> %wide.load24, %i.ae
  store <4 x i8> %i.af, ptr %next.gep21, align 1, !tbaa !28
  %index.next26 = add nuw i64 %index20, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next26, %n.vec17
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !124

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %n.vec17, %i.d
  br i1 %cmp.n27, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i8.ph = phi i32 [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.v, %vec.epilog.middle.block ] ; 4 uses
  %.023.i7.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ] ; 3 uses
  %.024.i6.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ] ; 3 uses
  %.029.i5.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.y, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %.022.i8.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ah = add nsw i32 %.022.i8.ph, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %.024.i6.ph, i64 1
  %i.aj = load i8, ptr %.024.i6.ph, align 1, !tbaa !28 ; 2 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw i8, ptr %.029.i5.ph, i64 1
  %i.am = load i8, ptr %.029.i5.ph, align 1, !tbaa !28
  %i.an = zext i8 %i.am to i32
  %i.ao = sub nsw i32 %i.an, %i.ak
  %i.ap = mul nsw i32 %i.ao, %3
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = trunc i32 %i.aq to i8
  %i.as = add i8 %i.aj, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.023.i7.ph, i64 1
  store i8 %i.as, ptr %.023.i7.ph, align 1, !tbaa !28
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.i8.unr = phi i32 [ %.022.i8.ph, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %.023.i7.unr = phi ptr [ %.023.i7.ph, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.024.i6.unr = phi ptr [ %.024.i6.ph, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.029.i5.unr = phi ptr [ %.029.i5.ph, %.lr.ph.preheader ], [ %i.al, %.lr.ph.prol ]
  %i.au = icmp eq i32 %.022.i8.ph, 1
  br i1 %i.au, label %sprite_v_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022.i8 = phi i32 [ %i.bh, %.lr.ph ], [ %.022.i8.unr, %.lr.ph.prol.loopexit ]
  %.023.i7 = phi ptr [ %i.bt, %.lr.ph ], [ %.023.i7.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.024.i6 = phi ptr [ %i.bi, %.lr.ph ], [ %.024.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.029.i5 = phi ptr [ %i.bl, %.lr.ph ], [ %.029.i5.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.024.i6, i64 1
  %i.aw = load i8, ptr %.024.i6, align 1, !tbaa !28 ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.029.i5, i64 1
  %i.az = load i8, ptr %.029.i5, align 1, !tbaa !28
  %i.ba = zext i8 %i.az to i32
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %i.bc = mul nsw i32 %i.bb, %3
  %i.bd = lshr i32 %i.bc, 16
  %i.be = trunc i32 %i.bd to i8
  %i.bf = add i8 %i.aw, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.023.i7, i64 1
  store i8 %i.bf, ptr %.023.i7, align 1, !tbaa !28
  %i.bh = add nsw i32 %.022.i8, -2                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.i6, i64 2
  %i.bj = load i8, ptr %i.av, align 1, !tbaa !28  ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %.029.i5, i64 2
  %i.bm = load i8, ptr %i.ay, align 1, !tbaa !28
  %i.bn = zext i8 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.bk
  %i.bp = mul nsw i32 %i.bo, %3
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc i32 %i.bq to i8
  %i.bs = add i8 %i.bj, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %.023.i7, i64 2
  store i8 %i.bs, ptr %i.bg, align 1, !tbaa !28
  %.not.i.1 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.1, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !125

sprite_v_template.exit:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_double_onescale_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %.not.i6 = icmp eq i32 %6, 0
  br i1 %.not.i6, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = zext i32 %6 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = sub i64 %i.c, %i.d
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = sub i64 %i.b, %i.d
  %diff.check12 = icmp ugt i64 %i.g, -16
  %conflict.rdx = or i1 %diff.check, %diff.check12
  %i.h = sub i64 %i.a, %i.d
  %diff.check13 = icmp ugt i64 %i.h, -16
  %conflict.rdx14 = or i1 %conflict.rdx, %diff.check13
  br i1 %conflict.rdx14, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check15 = icmp ult i32 %6, 16
  br i1 %min.iters.check15, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 4294967280               ; 8 uses
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %6, %i.j
  %i.l = getelementptr i8, ptr %0, i64 %n.vec
  %i.m = getelementptr i8, ptr %1, i64 %n.vec
  %i.n = getelementptr i8, ptr %2, i64 %n.vec
  %i.o = getelementptr i8, ptr %4, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert16 = insertelement <16 x i32> poison, i32 %5, i64 0
  %broadcast.splat17 = shufflevector <16 x i32> %broadcast.splatinsert16, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep18 = getelementptr i8, ptr %1, i64 %index
  %next.gep19 = getelementptr i8, ptr %2, i64 %index
  %next.gep20 = getelementptr i8, ptr %4, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep18, align 1, !tbaa !28
  %i.p = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %wide.load21 = load <16 x i8>, ptr %next.gep19, align 1, !tbaa !28
  %i.q = zext <16 x i8> %wide.load21 to <16 x i32>
  %i.r = sub nsw <16 x i32> %i.q, %i.p
  %i.s = mul nsw <16 x i32> %i.r, %broadcast.splat
  %i.t = ashr <16 x i32> %i.s, splat (i32 16)
  %i.u = add nsw <16 x i32> %i.t, %i.p            ; 2 uses
  %wide.load22 = load <16 x i8>, ptr %next.gep20, align 1, !tbaa !28
  %i.v = zext <16 x i8> %wide.load22 to <16 x i32>
  %i.w = sub nsw <16 x i32> %i.v, %i.u
  %i.x = mul nsw <16 x i32> %i.w, %broadcast.splat17
  %i.y = lshr <16 x i32> %i.x, splat (i32 16)
  %i.z = add nsw <16 x i32> %i.y, %i.u
  %i.aa = trunc <16 x i32> %i.z to <16 x i8>
  store <16 x i8> %i.aa, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.e, 4294967292             ; 7 uses
  %i.ac = trunc nuw i64 %n.vec27 to i32
  %i.ad = sub i32 %6, %i.ac
  %i.ae = getelementptr i8, ptr %0, i64 %n.vec27
  %i.af = getelementptr i8, ptr %1, i64 %n.vec27
  %i.ag = getelementptr i8, ptr %2, i64 %n.vec27
  %i.ah = getelementptr i8, ptr %4, i64 %n.vec27
  %broadcast.splatinsert28 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat29 = shufflevector <4 x i32> %broadcast.splatinsert28, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index32 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 5 uses
  %next.gep33 = getelementptr i8, ptr %0, i64 %index32
  %next.gep34 = getelementptr i8, ptr %1, i64 %index32
  %next.gep35 = getelementptr i8, ptr %2, i64 %index32
  %next.gep36 = getelementptr i8, ptr %4, i64 %index32
  %wide.load37 = load <4 x i8>, ptr %next.gep34, align 1, !tbaa !28
  %i.ai = zext <4 x i8> %wide.load37 to <4 x i32> ; 2 uses
  %wide.load38 = load <4 x i8>, ptr %next.gep35, align 1, !tbaa !28
  %i.aj = zext <4 x i8> %wide.load38 to <4 x i32>
  %i.ak = sub nsw <4 x i32> %i.aj, %i.ai
  %i.al = mul nsw <4 x i32> %i.ak, %broadcast.splat29
  %i.am = ashr <4 x i32> %i.al, splat (i32 16)
  %i.an = add nsw <4 x i32> %i.am, %i.ai          ; 2 uses
  %wide.load39 = load <4 x i8>, ptr %next.gep36, align 1, !tbaa !28
  %i.ao = zext <4 x i8> %wide.load39 to <4 x i32>
  %i.ap = sub nsw <4 x i32> %i.ao, %i.an
  %i.aq = mul nsw <4 x i32> %i.ap, %broadcast.splat31
  %i.ar = lshr <4 x i32> %i.aq, splat (i32 16)
  %i.as = add nsw <4 x i32> %i.ar, %i.an
  %i.at = trunc <4 x i32> %i.as to <4 x i8>
  store <4 x i8> %i.at, ptr %next.gep33, align 1, !tbaa !28
  %index.next40 = add nuw i64 %index32, 4         ; 2 uses
  %i.au = icmp eq i64 %index.next40, %n.vec27
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !127

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %n.vec27, %i.e
  br i1 %cmp.n41, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i11.ph = phi i32 [ %6, %iter.check ], [ %6, %vector.memcheck ], [ %i.k, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 4 uses
  %.023.i10.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.l, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 3 uses
  %.024.i9.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ] ; 3 uses
  %.025.i8.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ] ; 3 uses
  %.029.i7.ph = phi ptr [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i32 %.022.i11.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.av = add nsw i32 %.022.i11.ph, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %.024.i9.ph, i64 1
  %i.ax = load i8, ptr %.024.i9.ph, align 1, !tbaa !28
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.025.i8.ph, i64 1
  %i.ba = load i8, ptr %.025.i8.ph, align 1, !tbaa !28
  %i.bb = zext i8 %i.ba to i32
  %i.bc = sub nsw i32 %i.bb, %i.ay
  %i.bd = mul nsw i32 %i.bc, %3
  %i.be = ashr i32 %i.bd, 16
  %i.bf = add nsw i32 %i.be, %i.ay                ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.029.i7.ph, i64 1
  %i.bh = load i8, ptr %.029.i7.ph, align 1, !tbaa !28
  %i.bi = zext i8 %i.bh to i32
  %i.bj = sub nsw i32 %i.bi, %i.bf
  %i.bk = mul nsw i32 %i.bj, %5
  %i.bl = lshr i32 %i.bk, 16
  %i.bm = add nsw i32 %i.bl, %i.bf
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.023.i10.ph, i64 1
  store i8 %i.bn, ptr %.023.i10.ph, align 1, !tbaa !28
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.i11.unr = phi i32 [ %.022.i11.ph, %.lr.ph.preheader ], [ %i.av, %.lr.ph.prol ]
  %.023.i10.unr = phi ptr [ %.023.i10.ph, %.lr.ph.preheader ], [ %i.bo, %.lr.ph.prol ]
  %.024.i9.unr = phi ptr [ %.024.i9.ph, %.lr.ph.preheader ], [ %i.aw, %.lr.ph.prol ]
  %.025.i8.unr = phi ptr [ %.025.i8.ph, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.029.i7.unr = phi ptr [ %.029.i7.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %i.bp = icmp eq i32 %.022.i11.ph, 1
  br i1 %i.bp, label %sprite_v_template.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022.i11 = phi i32 [ %i.cj, %.lr.ph ], [ %.022.i11.unr, %.lr.ph.prol.loopexit ]
  %.023.i10 = phi ptr [ %i.dc, %.lr.ph ], [ %.023.i10.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.024.i9 = phi ptr [ %i.ck, %.lr.ph ], [ %.024.i9.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.025.i8 = phi ptr [ %i.cn, %.lr.ph ], [ %.025.i8.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.029.i7 = phi ptr [ %i.cu, %.lr.ph ], [ %.029.i7.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.024.i9, i64 1
  %i.br = load i8, ptr %.024.i9, align 1, !tbaa !28
  %i.bs = zext i8 %i.br to i32                    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.025.i8, i64 1
  %i.bu = load i8, ptr %.025.i8, align 1, !tbaa !28
  %i.bv = zext i8 %i.bu to i32
  %i.bw = sub nsw i32 %i.bv, %i.bs
  %i.bx = mul nsw i32 %i.bw, %3
  %i.by = ashr i32 %i.bx, 16
  %i.bz = add nsw i32 %i.by, %i.bs                ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.029.i7, i64 1
  %i.cb = load i8, ptr %.029.i7, align 1, !tbaa !28
  %i.cc = zext i8 %i.cb to i32
  %i.cd = sub nsw i32 %i.cc, %i.bz
  %i.ce = mul nsw i32 %i.cd, %5
  %i.cf = lshr i32 %i.ce, 16
  %i.cg = add nsw i32 %i.cf, %i.bz
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.023.i10, i64 1
  store i8 %i.ch, ptr %.023.i10, align 1, !tbaa !28
  %i.cj = add nsw i32 %.022.i11, -2               ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.024.i9, i64 2
  %i.cl = load i8, ptr %i.bq, align 1, !tbaa !28
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.025.i8, i64 2
  %i.co = load i8, ptr %i.bt, align 1, !tbaa !28
  %i.cp = zext i8 %i.co to i32
  %i.cq = sub nsw i32 %i.cp, %i.cm
  %i.cr = mul nsw i32 %i.cq, %3
  %i.cs = ashr i32 %i.cr, 16
  %i.ct = add nsw i32 %i.cs, %i.cm                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.029.i7, i64 2
  %i.cv = load i8, ptr %i.ca, align 1, !tbaa !28
  %i.cw = zext i8 %i.cv to i32
  %i.cx = sub nsw i32 %i.cw, %i.ct
  %i.cy = mul nsw i32 %i.cx, %5
  %i.cz = lshr i32 %i.cy, 16
  %i.da = add nsw i32 %i.cz, %i.ct
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %.023.i10, i64 2
  store i8 %i.db, ptr %i.ci, align 1, !tbaa !28
  %.not.i.1 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.1, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !128

sprite_v_template.exit:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sprite_v_double_twoscale_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = ptrtoaddr ptr %2 to i64
  %i.d = ptrtoaddr ptr %1 to i64
  %i.e = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %.not.i8 = icmp eq i32 %8, 0
  br i1 %.not.i8, label %sprite_v_template.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = zext i32 %8 to i64                       ; 5 uses
  %min.iters.check = icmp ult i32 %8, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.g = sub i64 %i.d, %i.e
  %diff.check = icmp ugt i64 %i.g, -16
  %i.h = sub i64 %i.c, %i.e
  %diff.check15 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check15
  %i.i = sub i64 %i.b, %i.e
  %diff.check16 = icmp ugt i64 %i.i, -16
  %conflict.rdx17 = or i1 %conflict.rdx, %diff.check16
  %i.j = sub i64 %i.a, %i.e
  %diff.check18 = icmp ugt i64 %i.j, -16
  %conflict.rdx19 = or i1 %conflict.rdx17, %diff.check18
  br i1 %conflict.rdx19, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check20 = icmp ult i32 %8, 16
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.f, 12
  %n.vec = and i64 %i.f, 4294967280               ; 9 uses
  %i.l = trunc nuw i64 %n.vec to i32
  %i.m = sub i32 %8, %i.l
  %i.n = getelementptr i8, ptr %0, i64 %n.vec
  %i.o = getelementptr i8, ptr %1, i64 %n.vec
  %i.p = getelementptr i8, ptr %2, i64 %n.vec
  %i.q = getelementptr i8, ptr %5, i64 %n.vec
  %i.r = getelementptr i8, ptr %4, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert21 = insertelement <16 x i32> poison, i32 %6, i64 0
  %broadcast.splat22 = shufflevector <16 x i32> %broadcast.splatinsert21, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert23 = insertelement <16 x i32> poison, i32 %7, i64 0
  %broadcast.splat24 = shufflevector <16 x i32> %broadcast.splatinsert23, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index
  %next.gep25 = getelementptr i8, ptr %1, i64 %index
  %next.gep26 = getelementptr i8, ptr %2, i64 %index
  %next.gep27 = getelementptr i8, ptr %5, i64 %index
  %next.gep28 = getelementptr i8, ptr %4, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep25, align 1, !tbaa !28
  %i.s = zext <16 x i8> %wide.load to <16 x i32>  ; 2 uses
  %wide.load29 = load <16 x i8>, ptr %next.gep26, align 1, !tbaa !28
  %i.t = zext <16 x i8> %wide.load29 to <16 x i32>
  %i.u = sub nsw <16 x i32> %i.t, %i.s
  %i.v = mul nsw <16 x i32> %i.u, %broadcast.splat
  %i.w = ashr <16 x i32> %i.v, splat (i32 16)
  %i.x = add nsw <16 x i32> %i.w, %i.s            ; 2 uses
  %wide.load30 = load <16 x i8>, ptr %next.gep28, align 1, !tbaa !28
  %i.y = zext <16 x i8> %wide.load30 to <16 x i32> ; 2 uses
  %wide.load31 = load <16 x i8>, ptr %next.gep27, align 1, !tbaa !28
  %i.z = zext <16 x i8> %wide.load31 to <16 x i32>
  %i.aa = sub nsw <16 x i32> %i.z, %i.y
  %i.ab = mul nsw <16 x i32> %i.aa, %broadcast.splat22
  %i.ac = ashr <16 x i32> %i.ab, splat (i32 16)
  %i.ad = sub nsw <16 x i32> %i.y, %i.x
  %i.ae = add nsw <16 x i32> %i.ad, %i.ac
  %i.af = mul nsw <16 x i32> %i.ae, %broadcast.splat24
  %i.ag = lshr <16 x i32> %i.af, splat (i32 16)
  %i.ah = add nsw <16 x i32> %i.ag, %i.x
  %i.ai = trunc <16 x i32> %i.ah to <16 x i8>
  store <16 x i8> %i.ai, ptr %next.gep, align 1, !tbaa !28
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %sprite_v_template.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %i.f, 4294967292             ; 8 uses
  %i.ak = trunc nuw i64 %n.vec37 to i32
  %i.al = sub i32 %8, %i.ak
  %i.am = getelementptr i8, ptr %0, i64 %n.vec37
  %i.an = getelementptr i8, ptr %1, i64 %n.vec37
  %i.ao = getelementptr i8, ptr %2, i64 %n.vec37
  %i.ap = getelementptr i8, ptr %5, i64 %n.vec37
  %i.aq = getelementptr i8, ptr %4, i64 %n.vec37
  %broadcast.splatinsert38 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat39 = shufflevector <4 x i32> %broadcast.splatinsert38, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat41 = shufflevector <4 x i32> %broadcast.splatinsert40, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index44 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 6 uses
  %next.gep45 = getelementptr i8, ptr %0, i64 %index44
  %next.gep46 = getelementptr i8, ptr %1, i64 %index44
  %next.gep47 = getelementptr i8, ptr %2, i64 %index44
  %next.gep48 = getelementptr i8, ptr %5, i64 %index44
  %next.gep49 = getelementptr i8, ptr %4, i64 %index44
  %wide.load50 = load <4 x i8>, ptr %next.gep46, align 1, !tbaa !28
  %i.ar = zext <4 x i8> %wide.load50 to <4 x i32> ; 2 uses
  %wide.load51 = load <4 x i8>, ptr %next.gep47, align 1, !tbaa !28
  %i.as = zext <4 x i8> %wide.load51 to <4 x i32>
  %i.at = sub nsw <4 x i32> %i.as, %i.ar
  %i.au = mul nsw <4 x i32> %i.at, %broadcast.splat39
  %i.av = ashr <4 x i32> %i.au, splat (i32 16)
  %i.aw = add nsw <4 x i32> %i.av, %i.ar          ; 2 uses
  %wide.load52 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !28
  %i.ax = zext <4 x i8> %wide.load52 to <4 x i32> ; 2 uses
  %wide.load53 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !28
  %i.ay = zext <4 x i8> %wide.load53 to <4 x i32>
  %i.az = sub nsw <4 x i32> %i.ay, %i.ax
  %i.ba = mul nsw <4 x i32> %i.az, %broadcast.splat41
  %i.bb = ashr <4 x i32> %i.ba, splat (i32 16)
  %i.bc = sub nsw <4 x i32> %i.ax, %i.aw
  %i.bd = add nsw <4 x i32> %i.bc, %i.bb
  %i.be = mul nsw <4 x i32> %i.bd, %broadcast.splat43
  %i.bf = lshr <4 x i32> %i.be, splat (i32 16)
  %i.bg = add nsw <4 x i32> %i.bf, %i.aw
  %i.bh = trunc <4 x i32> %i.bg to <4 x i8>
  store <4 x i8> %i.bh, ptr %next.gep45, align 1, !tbaa !28
  %index.next54 = add nuw i64 %index44, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next54, %n.vec37
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !130

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %n.vec37, %i.f
  br i1 %cmp.n55, label %sprite_v_template.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.i14.ph = phi i32 [ %8, %iter.check ], [ %8, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.023.i13.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.n, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %.024.i12.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.025.i11.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.027.i10.ph = phi ptr [ %5, %iter.check ], [ %5, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %.029.i9.ph = phi ptr [ %4, %iter.check ], [ %4, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.022.i14 = phi i32 [ %i.bj, %.lr.ph ], [ %.022.i14.ph, %.lr.ph.preheader ]
  %.023.i13 = phi ptr [ %i.cj, %.lr.ph ], [ %.023.i13.ph, %.lr.ph.preheader ] ; 2 uses
  %.024.i12 = phi ptr [ %i.bk, %.lr.ph ], [ %.024.i12.ph, %.lr.ph.preheader ] ; 2 uses
  %.025.i11 = phi ptr [ %i.bn, %.lr.ph ], [ %.025.i11.ph, %.lr.ph.preheader ] ; 2 uses
  %.027.i10 = phi ptr [ %i.bx, %.lr.ph ], [ %.027.i10.ph, %.lr.ph.preheader ] ; 2 uses
  %.029.i9 = phi ptr [ %i.bu, %.lr.ph ], [ %.029.i9.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bj = add nsw i32 %.022.i14, -1               ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.024.i12, i64 1
  %i.bl = load i8, ptr %.024.i12, align 1, !tbaa !28
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.025.i11, i64 1
  %i.bo = load i8, ptr %.025.i11, align 1, !tbaa !28
  %i.bp = zext i8 %i.bo to i32
  %i.bq = sub nsw i32 %i.bp, %i.bm
  %i.br = mul nsw i32 %i.bq, %3
  %i.bs = ashr i32 %i.br, 16
  %i.bt = add nsw i32 %i.bs, %i.bm                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.029.i9, i64 1
  %i.bv = load i8, ptr %.029.i9, align 1, !tbaa !28
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.027.i10, i64 1
  %i.by = load i8, ptr %.027.i10, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  %i.ca = sub nsw i32 %i.bz, %i.bw
  %i.cb = mul nsw i32 %i.ca, %6
  %i.cc = ashr i32 %i.cb, 16
  %i.cd = sub nsw i32 %i.bw, %i.bt
  %i.ce = add nsw i32 %i.cd, %i.cc
  %i.cf = mul nsw i32 %i.ce, %7
  %i.cg = lshr i32 %i.cf, 16
  %i.ch = add nsw i32 %i.cg, %i.bt
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.023.i13, i64 1
  store i8 %i.ci, ptr %.023.i13, align 1, !tbaa !28
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %sprite_v_template.exit, label %.lr.ph, !llvm.loop !131

sprite_v_template.exit:                           ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

declare i32 @ff_startcode_find_candidate_c(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal i32 @vc1_unescape_buffer(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) #5 {
bb.a:
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %.preheader, label %.preheader40

.preheader40:                                     ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr %0, align 1, !tbaa !28
  store i8 %i.d, ptr %2, align 1, !tbaa !28
  %exitcond.not = icmp eq i32 %1, 1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !28
  store i8 %i.g, ptr %i.e, align 1, !tbaa !28
  %exitcond.not.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28
  store i8 %i.j, ptr %i.h, align 1, !tbaa !28
  br label %.loopexit

bb.b:                                             ; preds = %.preheader40, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader40 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %.044 = phi i32 [ 0, %.preheader40 ], [ %i.y, %bb.h ] ; 4 uses
  %.13342 = phi ptr [ %0, %.preheader40 ], [ %i.z, %bb.h ] ; 5 uses
  %i.k = load i8, ptr %.13342, align 1, !tbaa !28 ; 2 uses
  %i.l = icmp eq i8 %i.k, 3
  %i.m = icmp sgt i32 %.044, 1
  %or.cond = and i1 %i.m, %i.l
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %.13342, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %.13342, i64 -2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28
  %.not37 = icmp eq i8 %i.q, 0
  %i.r = icmp slt i32 %.044, %i.b
  %or.cond39 = select i1 %.not37, i1 %i.r, i1 false
  br i1 %or.cond39, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.13342, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 2 uses
  %i.u = icmp ult i8 %i.t, 4
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.t, ptr %i.v, align 1, !tbaa !28
  %i.w = add nuw nsw i32 %.044, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.k, ptr %i.x, align 1, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.234 = phi ptr [ %.13342, %bb.g ], [ %i.s, %bb.f ]
  %.1 = phi i32 [ %.044, %bb.g ], [ %i.w, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = add nsw i32 %.1, 1                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.234, i64 1
  %i.aa = icmp slt i32 %i.y, %1
  br i1 %i.aa, label %bb.b, label %.loopexit.loopexit48, !llvm.loop !132

.loopexit.loopexit48:                             ; preds = %bb.h
  %i.ab = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.loopexit.loopexit48, %.preheader
  %.031 = phi i32 [ %1, %.preheader ], [ %i.ab, %.loopexit.loopexit48 ], [ %1, %.lr.ph.2 ], [ %1, %.lr.ph.1 ], [ %1, %.lr.ph ]
  ret i32 %.031
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { alwaysinline nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{!3, !29}
!4 = distinct !{!4, !29}
!5 = distinct !{!5, !29}
!6 = distinct !{!6, !29}
!7 = distinct !{!7, !29}
!8 = distinct !{!8, !29}
!9 = distinct !{!9, !29}
!10 = distinct !{!10, !29}
!11 = distinct !{!11, !29}
!12 = distinct !{!12, !29}
!13 = distinct !{!13, !29}
!14 = distinct !{!14, !29}
!15 = distinct !{!15, !29}
!16 = distinct !{!16, !29}
!17 = !{i32 8, !"PIC Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{i32 1, !"override-stack-alignment", i32 16}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !{!"omnipotent char", !21, i64 0}
!23 = !{!"int", !22, i64 0}
!24 = !{!"__libc_errno", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"short", !22, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!22, !22, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!23, !23, i64 0}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"branch_weights", i32 4, i32 12}
!34 = !{!"any pointer", !22, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"VC1DSPContext", !34, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !34, i64 80, !34, i64 88, !34, i64 96, !34, i64 104, !34, i64 112, !34, i64 120, !34, i64 128, !34, i64 136, !22, i64 144, !22, i64 400, !22, i64 656, !22, i64 680, !34, i64 704, !34, i64 712, !34, i64 720, !34, i64 728, !34, i64 736, !34, i64 744, !34, i64 752}
!37 = !{!36, !34, i64 736}
!38 = !{!36, !34, i64 744}
!39 = !{!36, !34, i64 752}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29, !31}
!45 = distinct !{!45, !"LVerDomain"}
!46 = distinct !{!46, !45}
!47 = distinct !{!47, !45}
!48 = distinct !{!48, !45}
!49 = distinct !{!49, !45}
!50 = distinct !{!50, !45}
!51 = distinct !{!51, !29, !31}
!52 = !{!46}
!53 = !{!50, !49, !48, !47}
!54 = !{!47}
!55 = !{!48}
!56 = !{!49}
!57 = !{!50}
!58 = distinct !{!58, !"LVerDomain"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !58}
!62 = distinct !{!62, !58}
!63 = distinct !{!63, !58}
!64 = distinct !{!64, !29, !31}
!65 = !{!59}
!66 = !{!63, !62, !61, !60}
!67 = !{!60}
!68 = !{!61}
!69 = !{!62}
!70 = !{!63}
!71 = distinct !{!71, !29, !31}
!72 = distinct !{!72, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !72}
!76 = distinct !{!76, !72}
!77 = distinct !{!77, !72}
!78 = distinct !{!78, !29, !31}
!79 = !{!73}
!80 = !{!77, !76, !75, !74}
!81 = !{!74}
!82 = !{!75}
!83 = !{!76}
!84 = !{!77}
!85 = distinct !{!85, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !29, !31}
!89 = !{!86}
!90 = !{!87}
!91 = distinct !{!91, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !29, !31}
!95 = !{!92}
!96 = !{!93}
!97 = distinct !{!97, !"LVerDomain"}
!98 = distinct !{!98, !97}
!99 = distinct !{!99, !97}
!100 = distinct !{!100, !29, !31}
!101 = !{!98}
!102 = !{!99}
!103 = distinct !{!103, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !29, !31}
!107 = !{!104}
!108 = !{!105}
!109 = distinct !{!109, !"LVerDomain"}
!110 = distinct !{!110, !109}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !29, !31}
!113 = !{!110}
!114 = !{!111}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29, !31, !32}
!121 = distinct !{!121, !29, !31, !32}
!122 = distinct !{!122, !29, !31}
!123 = distinct !{!123, !29, !31, !32}
!124 = distinct !{!124, !29, !31, !32}
!125 = distinct !{!125, !29, !31}
!126 = distinct !{!126, !29, !31, !32}
!127 = distinct !{!127, !29, !31, !32}
!128 = distinct !{!128, !29, !31}
!129 = distinct !{!129, !29, !31, !32}
!130 = distinct !{!130, !29, !31, !32}
!131 = distinct !{!131, !29, !31}
!132 = distinct !{!132, !29}
end_hunk_10
