Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/curve25519?download=true
inline.NumInlined: 218
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@ge_madd:bb.a
  %i.hh = sub nsw i32 %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !9
  %i.hj = load i32, ptr %i.fp, align 4, !tbaa !9
  %i.hk = load i32, ptr %i.fr, align 4, !tbaa !9
  %i.hl = sub nsw i32 %i.hj, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !9
  %i.hn = load i32, ptr %i.fv, align 4, !tbaa !9
  %i.ho = load i32, ptr %i.fx, align 4, !tbaa !9
  %i.hp = sub nsw i32 %i.hn, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !9
  %i.hr = load i32, ptr %i.gb, align 4, !tbaa !9
  %i.hs = load i32, ptr %i.gd, align 4, !tbaa !9
  %i.ht = sub nsw i32 %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !9
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  tail call fastcc void @fe_mul(ptr noundef %i.hv, ptr noundef nonnull %0, ptr noundef %2)
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call fastcc void @fe_mul(ptr noundef %i.gh, ptr noundef nonnull %i.gh, ptr noundef nonnull %i.hw)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call fastcc void @fe_mul(ptr noundef %i.hx, ptr noundef nonnull %i.hy, ptr noundef nonnull %i.hz)
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !9
  %i.ic = shl nsw i32 %i.ib, 1                    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !9
  %i.if = shl nsw i32 %i.ie, 1                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !9
  %i.ii = shl nsw i32 %i.ih, 1                    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !9
  %i.il = shl nsw i32 %i.ik, 1                    ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.in = load i32, ptr %i.im, align 4, !tbaa !9
  %i.io = shl nsw i32 %i.in, 1                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !9
  %i.ir = shl nsw i32 %i.iq, 1                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.it = load i32, ptr %i.is, align 4, !tbaa !9
  %i.iu = shl nsw i32 %i.it, 1                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !9
  %i.ix = shl nsw i32 %i.iw, 1                    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !9
  %i.ja = shl nsw i32 %i.iz, 1                    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !9
  %i.jd = shl nsw i32 %i.jc, 1                    ; 2 uses
  %i.je = load i32, ptr %i.hv, align 4, !tbaa !9  ; 2 uses
  %i.jf = load i32, ptr %i.gh, align 4, !tbaa !9  ; 2 uses
  %i.jg = sub nsw i32 %i.je, %i.jf
  store i32 %i.jg, ptr %0, align 4, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !9  ; 2 uses
  %i.jj = load i32, ptr %i.go, align 4, !tbaa !9  ; 2 uses
  %i.jk = sub nsw i32 %i.ji, %i.jj
  store i32 %i.jk, ptr %i.ek, align 4, !tbaa !9
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !9  ; 2 uses
  %i.jn = load i32, ptr %i.gs, align 4, !tbaa !9  ; 2 uses
  %i.jo = sub nsw i32 %i.jm, %i.jn
  store i32 %i.jo, ptr %i.eq, align 4, !tbaa !9
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !9  ; 2 uses
  %i.jr = load i32, ptr %i.gw, align 4, !tbaa !9  ; 2 uses
  %i.js = sub nsw i32 %i.jq, %i.jr
  store i32 %i.js, ptr %i.ew, align 4, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !9  ; 2 uses
  %i.jv = load i32, ptr %i.ha, align 4, !tbaa !9  ; 2 uses
  %i.jw = sub nsw i32 %i.ju, %i.jv
  store i32 %i.jw, ptr %i.fc, align 4, !tbaa !9
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9  ; 2 uses
  %i.jz = load i32, ptr %i.he, align 4, !tbaa !9  ; 2 uses
  %i.ka = sub nsw i32 %i.jy, %i.jz
  store i32 %i.ka, ptr %i.fi, align 4, !tbaa !9
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !9  ; 2 uses
  %i.kd = load i32, ptr %i.hi, align 4, !tbaa !9  ; 2 uses
  %i.ke = sub nsw i32 %i.kc, %i.kd
  store i32 %i.ke, ptr %i.fo, align 4, !tbaa !9
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !9  ; 2 uses
  %i.kh = load i32, ptr %i.hm, align 4, !tbaa !9  ; 2 uses
  %i.ki = sub nsw i32 %i.kg, %i.kh
  store i32 %i.ki, ptr %i.fu, align 4, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !9  ; 2 uses
  %i.kl = load i32, ptr %i.hq, align 4, !tbaa !9  ; 2 uses
  %i.km = sub nsw i32 %i.kk, %i.kl
  store i32 %i.km, ptr %i.ga, align 4, !tbaa !9
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !9  ; 2 uses
  %i.kp = load i32, ptr %i.hu, align 4, !tbaa !9  ; 2 uses
  %i.kq = sub nsw i32 %i.ko, %i.kp
  store i32 %i.kq, ptr %i.gg, align 4, !tbaa !9
  %i.kr = add nsw i32 %i.jf, %i.je
  store i32 %i.kr, ptr %i.gh, align 4, !tbaa !9
  %i.ks = add nsw i32 %i.jj, %i.ji
  store i32 %i.ks, ptr %i.go, align 4, !tbaa !9
  %i.kt = add nsw i32 %i.jn, %i.jm
  store i32 %i.kt, ptr %i.gs, align 4, !tbaa !9
  %i.ku = add nsw i32 %i.jr, %i.jq
  store i32 %i.ku, ptr %i.gw, align 4, !tbaa !9
  %i.kv = add nsw i32 %i.jv, %i.ju
  store i32 %i.kv, ptr %i.ha, align 4, !tbaa !9
  %i.kw = add nsw i32 %i.jz, %i.jy
  store i32 %i.kw, ptr %i.he, align 4, !tbaa !9
  %i.kx = add nsw i32 %i.kd, %i.kc
  store i32 %i.kx, ptr %i.hi, align 4, !tbaa !9
  %i.ky = add nsw i32 %i.kh, %i.kg
  store i32 %i.ky, ptr %i.hm, align 4, !tbaa !9
  %i.kz = add nsw i32 %i.kl, %i.kk
  store i32 %i.kz, ptr %i.hq, align 4, !tbaa !9
  %i.la = add nsw i32 %i.kp, %i.ko
  store i32 %i.la, ptr %i.hu, align 4, !tbaa !9
  %i.lb = load i32, ptr %i.hx, align 4, !tbaa !9  ; 2 uses
  %i.lc = add nsw i32 %i.lb, %i.ic
  store i32 %i.lc, ptr %i.hv, align 4, !tbaa !9
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !9  ; 2 uses
  %i.lf = add nsw i32 %i.le, %i.if
  store i32 %i.lf, ptr %i.jh, align 4, !tbaa !9
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9  ; 2 uses
  %i.li = add nsw i32 %i.lh, %i.ii
  store i32 %i.li, ptr %i.jl, align 4, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !9  ; 2 uses
  %i.ll = add nsw i32 %i.lk, %i.il
  store i32 %i.ll, ptr %i.jp, align 4, !tbaa !9
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !9  ; 2 uses
  %i.lo = add nsw i32 %i.ln, %i.io
  store i32 %i.lo, ptr %i.jt, align 4, !tbaa !9
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !9  ; 2 uses
  %i.lr = add nsw i32 %i.lq, %i.ir
  store i32 %i.lr, ptr %i.jx, align 4, !tbaa !9
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !9  ; 2 uses
  %i.lu = add nsw i32 %i.lt, %i.iu
  store i32 %i.lu, ptr %i.kb, align 4, !tbaa !9
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !9  ; 2 uses
  %i.lx = add nsw i32 %i.lw, %i.ix
  store i32 %i.lx, ptr %i.kf, align 4, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !9  ; 2 uses
  %i.ma = add nsw i32 %i.lz, %i.ja
  store i32 %i.ma, ptr %i.kj, align 4, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !9  ; 2 uses
  %i.md = add nsw i32 %i.mc, %i.jd
  store i32 %i.md, ptr %i.kn, align 4, !tbaa !9
  %i.me = sub nsw i32 %i.ic, %i.lb
  store i32 %i.me, ptr %i.hx, align 4, !tbaa !9
  %i.mf = sub nsw i32 %i.if, %i.le
  store i32 %i.mf, ptr %i.ld, align 4, !tbaa !9
  %i.mg = sub nsw i32 %i.ii, %i.lh
  store i32 %i.mg, ptr %i.lg, align 4, !tbaa !9
  %i.mh = sub nsw i32 %i.il, %i.lk
  store i32 %i.mh, ptr %i.lj, align 4, !tbaa !9
  %i.mi = sub nsw i32 %i.io, %i.ln
  store i32 %i.mi, ptr %i.lm, align 4, !tbaa !9
  %i.mj = sub nsw i32 %i.ir, %i.lq
  store i32 %i.mj, ptr %i.lp, align 4, !tbaa !9
  %i.mk = sub nsw i32 %i.iu, %i.lt
  store i32 %i.mk, ptr %i.ls, align 4, !tbaa !9
  %i.ml = sub nsw i32 %i.ix, %i.lw
  store i32 %i.ml, ptr %i.lv, align 4, !tbaa !9
  %i.mm = sub nsw i32 %i.ja, %i.lz
  store i32 %i.mm, ptr %i.ly, align 4, !tbaa !9
  %i.mn = sub nsw i32 %i.jd, %i.mc
  store i32 %i.mn, ptr %i.mb, align 4, !tbaa !9
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ge_p2_dbl(ptr nofree noundef nonnull captures(none) initializes((0, 160)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 120
  %i.d = add i64 %i.a, 160
  %rt.bound0 = icmp ugt i64 %i.c, %i.a
  %rt.bound1 = icmp ugt i64 %i.d, %i.b
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %2 = alloca [10 x i32], align 16                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  tail call fastcc void @fe_sq(ptr noundef %0, ptr noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call fastcc void @fe_sq(ptr noundef %i.e, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i32, ptr %i.l, align 4, !tbaa !9    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !9    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load i32, ptr %i.p, align 4, !tbaa !9    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !9    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i32, ptr %i.t, align 4, !tbaa !9    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load i32, ptr %i.x, align 4, !tbaa !9    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !9   ; 2 uses
  %i.ab = shl nsw i32 %i.i, 1
  %i.ac = shl nsw i32 %i.k, 1
  %i.ad = shl nsw i32 %i.m, 1
  %i.ae = shl nsw i32 %i.o, 1
  %i.af = shl nsw i32 %i.q, 1
  %i.ag = shl nsw i32 %i.s, 1
  %i.ah = shl nsw i32 %i.u, 1
  %i.ai = shl nsw i32 %i.w, 1
  %i.aj = mul nsw i32 %i.s, 38
  %i.ak = mul nsw i32 %i.u, 19
  %i.al = mul nsw i32 %i.w, 38
  %i.am = mul nsw i32 %i.y, 19
  %i.an = mul nsw i32 %i.aa, 38
  %i.ao = sext i32 %i.i to i64                    ; 2 uses
  %i.ap = mul nsw i64 %i.ao, %i.ao
  %i.aq = sext i32 %i.ab to i64                   ; 9 uses
  %i.ar = sext i32 %i.k to i64                    ; 2 uses
  %i.as = mul nsw i64 %i.aq, %i.ar
  %i.at = sext i32 %i.m to i64                    ; 5 uses
  %i.au = mul nsw i64 %i.at, %i.aq
  %i.av = sext i32 %i.o to i64                    ; 3 uses
  %i.aw = mul nsw i64 %i.av, %i.aq
  %i.ax = sext i32 %i.q to i64                    ; 8 uses
  %i.ay = mul nsw i64 %i.ax, %i.aq
  %i.az = sext i32 %i.s to i64                    ; 4 uses
  %i.ba = mul nsw i64 %i.az, %i.aq
  %i.bb = sext i32 %i.u to i64                    ; 7 uses
  %i.bc = mul nsw i64 %i.bb, %i.aq
  %i.bd = sext i32 %i.w to i64                    ; 3 uses
  %i.be = mul nsw i64 %i.bd, %i.aq
  %i.bf = sext i32 %i.y to i64                    ; 4 uses
  %i.bg = mul nsw i64 %i.bf, %i.aq
  %i.bh = sext i32 %i.aa to i64                   ; 2 uses
  %i.bi = mul nsw i64 %i.bh, %i.aq
  %i.bj = sext i32 %i.ac to i64                   ; 9 uses
  %i.bk = mul nsw i64 %i.bj, %i.ar
  %i.bl = mul nsw i64 %i.bj, %i.at
  %i.bm = sext i32 %i.ae to i64                   ; 8 uses
  %i.bn = mul nsw i64 %i.bm, %i.bj
  %i.bo = mul nsw i64 %i.ax, %i.bj
  %i.bp = sext i32 %i.ag to i64                   ; 6 uses
  %i.bq = mul nsw i64 %i.bp, %i.bj
  %i.br = mul nsw i64 %i.bb, %i.bj
  %i.bs = sext i32 %i.ai to i64                   ; 3 uses
  %i.bt = mul nsw i64 %i.bs, %i.bj
  %i.bu = mul nsw i64 %i.bf, %i.bj
  %i.bv = sext i32 %i.an to i64                   ; 9 uses
  %i.bw = mul nsw i64 %i.bv, %i.bj
  %i.bx = mul nsw i64 %i.at, %i.at
  %i.by = sext i32 %i.ad to i64                   ; 6 uses
  %i.bz = mul nsw i64 %i.by, %i.av
  %i.ca = mul nsw i64 %i.ax, %i.by
  %i.cb = mul nsw i64 %i.az, %i.by
  %i.cc = mul nsw i64 %i.bb, %i.by
  %i.cd = mul nsw i64 %i.bd, %i.by
  %i.ce = sext i32 %i.am to i64                   ; 7 uses
  %i.cf = mul nsw i64 %i.ce, %i.by
  %i.cg = mul nsw i64 %i.bv, %i.at
  %i.ch = mul nsw i64 %i.bm, %i.av
  %i.ci = mul nsw i64 %i.bm, %i.ax
  %i.cj = mul nsw i64 %i.bp, %i.bm
  %i.ck = mul nsw i64 %i.bb, %i.bm
  %i.cl = sext i32 %i.al to i64                   ; 5 uses
  %i.cm = mul nsw i64 %i.cl, %i.bm
  %i.cn = mul nsw i64 %i.ce, %i.bm
  %i.co = mul nsw i64 %i.bv, %i.bm
  %i.cp = mul nsw i64 %i.ax, %i.ax
  %i.cq = sext i32 %i.af to i64                   ; 3 uses
  %i.cr = mul nsw i64 %i.cq, %i.az
  %i.cs = sext i32 %i.ak to i64                   ; 3 uses
  %i.ct = mul nsw i64 %i.cs, %i.cq
  %i.cu = mul nsw i64 %i.cl, %i.ax
  %i.cv = mul nsw i64 %i.ce, %i.cq
  %i.cw = mul nsw i64 %i.bv, %i.ax
  %i.cx = sext i32 %i.aj to i64
  %i.cy = mul nsw i64 %i.cx, %i.az
  %i.cz = mul nsw i64 %i.cs, %i.bp
  %i.da = mul nsw i64 %i.cl, %i.bp
  %i.db = mul nsw i64 %i.ce, %i.bp
  %i.dc = mul nsw i64 %i.bv, %i.bp
  %i.dd = mul nsw i64 %i.cs, %i.bb
  %i.de = mul nsw i64 %i.cl, %i.bb
  %i.df = sext i32 %i.ah to i64
  %i.dg = mul nsw i64 %i.ce, %i.df
  %i.dh = mul nsw i64 %i.bv, %i.bb
  %i.di = mul nsw i64 %i.cl, %i.bd
  %i.dj = mul nsw i64 %i.ce, %i.bs
  %i.dk = mul nsw i64 %i.bv, %i.bs
  %i.dl = mul nsw i64 %i.ce, %i.bf
  %i.dm = mul nsw i64 %i.bv, %i.bf
  %i.dn = mul nsw i64 %i.bv, %i.bh
  %i.do = add i64 %i.cy, %i.ap
  %i.dp = add i64 %i.do, %i.ct
  %i.dq = add i64 %i.dp, %i.cm
  %i.dr = add i64 %i.dq, %i.cf
  %i.ds = add i64 %i.dr, %i.bw
  %i.dt = add i64 %i.cz, %i.as
  %i.du = add i64 %i.dt, %i.cu
  %i.dv = add i64 %i.du, %i.cn
  %i.dw = add i64 %i.dv, %i.cg
  %i.dx = add nsw i64 %i.au, %i.bk
  %i.dy = add i64 %i.dx, %i.dd
  %i.dz = add i64 %i.dy, %i.da
  %i.ea = add i64 %i.dz, %i.cv
  %i.eb = add i64 %i.ea, %i.co
  %i.ec = add nsw i64 %i.aw, %i.bl
  %i.ed = add i64 %i.ec, %i.de
  %i.ee = add i64 %i.ed, %i.db
  %i.ef = add i64 %i.ee, %i.cw
  %i.eg = add i64 %i.bn, %i.bx
  %i.eh = add i64 %i.eg, %i.ay
  %i.ei = add i64 %i.eh, %i.di
  %i.ej = add i64 %i.ei, %i.dg
  %i.ek = add i64 %i.ej, %i.dc
  %i.el = add i64 %i.bo, %i.bz
  %i.em = add i64 %i.el, %i.ba
  %i.en = add i64 %i.em, %i.dj
  %i.eo = add i64 %i.en, %i.dh
  %i.ep = add i64 %i.ch, %i.ca
  %i.eq = add i64 %i.ep, %i.bq
  %i.er = add i64 %i.eq, %i.bc
  %i.es = add i64 %i.er, %i.dl
  %i.et = add i64 %i.es, %i.dk
  %i.eu = add i64 %i.cb, %i.ci
  %i.ev = add i64 %i.eu, %i.br
  %i.ew = add i64 %i.ev, %i.be
  %i.ex = add nsw i64 %i.ew, %i.dm
  %i.ey = add i64 %i.cc, %i.cp
  %i.ez = add i64 %i.ey, %i.cj
  %i.fa = add i64 %i.ez, %i.bt
  %i.fb = add i64 %i.fa, %i.bg
  %i.fc = add nsw i64 %i.fb, %i.dn
  %i.fd = add i64 %i.ck, %i.cr
  %i.fe = add i64 %i.fd, %i.cd
  %i.ff = add i64 %i.fe, %i.bu
  %i.fg = add i64 %i.ff, %i.bi
  %i.fh = shl nsw i64 %i.ds, 1                    ; 2 uses
  %i.fi = shl nsw i64 %i.dw, 1
  %i.fj = shl nsw i64 %i.eb, 1
  %i.fk = shl nsw i64 %i.ef, 1
  %i.fl = shl nsw i64 %i.ek, 1                    ; 2 uses
  %i.fm = shl nsw i64 %i.eo, 1
  %i.fn = shl nsw i64 %i.et, 1
  %i.fo = shl nsw i64 %i.ex, 1
  %i.fp = shl nsw i64 %i.fc, 1
  %i.fq = shl nsw i64 %i.fg, 1
  %i.fr = add nsw i64 %i.fh, 33554432             ; 2 uses
  %i.fs = ashr i64 %i.fr, 26
  %i.ft = add nsw i64 %i.fs, %i.fi                ; 2 uses
  %i.fu = and i64 %i.fr, -67108864
  %i.fv = sub nsw i64 %i.fh, %i.fu
  %i.fw = add nsw i64 %i.fl, 33554432             ; 2 uses
  %i.fx = ashr i64 %i.fw, 26
  %i.fy = add nsw i64 %i.fx, %i.fm                ; 2 uses
  %i.fz = and i64 %i.fw, -67108864
  %i.ga = sub nsw i64 %i.fl, %i.fz
  %i.gb = add nsw i64 %i.ft, 16777216             ; 2 uses
  %i.gc = ashr i64 %i.gb, 25
  %i.gd = add nsw i64 %i.gc, %i.fj                ; 2 uses
  %i.ge = and i64 %i.gb, 4261412864
  %i.gf = sub i64 %i.ft, %i.ge
  %i.gg = add nsw i64 %i.fy, 16777216             ; 2 uses
  %i.gh = ashr i64 %i.gg, 25
  %i.gi = add nsw i64 %i.gh, %i.fn                ; 2 uses
  %i.gj = and i64 %i.gg, 4261412864
  %i.gk = sub i64 %i.fy, %i.gj
  %i.gl = add nsw i64 %i.gd, 33554432             ; 2 uses
  %i.gm = ashr i64 %i.gl, 26
  %i.gn = add nsw i64 %i.gm, %i.fk                ; 2 uses
  %i.go = and i64 %i.gl, 4227858432
  %i.gp = sub i64 %i.gd, %i.go
  %i.gq = add nsw i64 %i.gi, 33554432             ; 2 uses
  %i.gr = ashr i64 %i.gq, 26
  %i.gs = add nsw i64 %i.gr, %i.fo                ; 2 uses
end_hunk_0
begin_hunk_1_@ge_p2_dbl:bb.a
  %i.hx = add i64 %i.gf, %i.hw
  %i.hy = and i64 %i.hv, 4227858432
  %i.hz = sub i64 %i.hs, %i.hy
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  store i32 %i.ia, ptr %i.g, align 4, !tbaa !9
  %i.ib = trunc i64 %i.hx to i32                  ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !9
  %i.id = trunc i64 %i.gp to i32                  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %i.id, ptr %i.ie, align 4, !tbaa !9
  %i.if = trunc i64 %i.gz to i32                  ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !9
  %i.ih = trunc i64 %i.hj to i32                  ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !9
  %i.ij = trunc i64 %i.hh to i32                  ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !9
  %i.il = trunc i64 %i.gu to i32                  ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 %i.il, ptr %i.im, align 4, !tbaa !9
  %i.in = trunc i64 %i.he to i32                  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  store i32 %i.in, ptr %i.io, align 4, !tbaa !9
  %i.ip = trunc i64 %i.ho to i32                  ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !9
  %i.ir = trunc i64 %i.hu to i32                  ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i32 %i.ir, ptr %i.is, align 4, !tbaa !9
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ix = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.iy = load <4 x i32>, ptr %i.f, align 4, !tbaa !9
  %i.iz = add nsw <4 x i32> %i.iy, %i.ix
  store <4 x i32> %i.iz, ptr %i.it, align 4, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.jg = load <4 x i32>, ptr %i.ja, align 4, !tbaa !9
  %i.jh = load <4 x i32>, ptr %i.jb, align 4, !tbaa !9
  %i.ji = add nsw <4 x i32> %i.jh, %i.jg
  store <4 x i32> %i.ji, ptr %i.jc, align 4, !tbaa !9
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.jn = load <2 x i32>, ptr %i.jj, align 4, !tbaa !9
  %i.jo = load <2 x i32>, ptr %i.jk, align 4, !tbaa !9
  %i.jp = add nsw <2 x i32> %i.jo, %i.jn
  store <2 x i32> %i.jp, ptr %i.jl, align 4, !tbaa !9
  call fastcc void @fe_sq(ptr noundef %2, ptr noundef %i.it)
  %i.jq = load i32, ptr %i.e, align 4, !tbaa !9   ; 2 uses
  %i.jr = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.js = add nsw i32 %i.jr, %i.jq                ; 2 uses
  store i32 %i.js, ptr %i.it, align 4, !tbaa !9
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !9  ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !9  ; 2 uses
  %i.jx = add nsw i32 %i.jw, %i.ju                ; 2 uses
  store i32 %i.jx, ptr %i.iu, align 4, !tbaa !9
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !9  ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !9  ; 2 uses
  %i.kc = add nsw i32 %i.kb, %i.jz                ; 2 uses
  store i32 %i.kc, ptr %i.iv, align 4, !tbaa !9
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !9  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !9  ; 2 uses
  %i.kh = add nsw i32 %i.kg, %i.ke                ; 2 uses
  store i32 %i.kh, ptr %i.iw, align 4, !tbaa !9
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !9  ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !9  ; 2 uses
  %i.km = add nsw i32 %i.kl, %i.kj                ; 2 uses
  store i32 %i.km, ptr %i.jc, align 4, !tbaa !9
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !9  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !9  ; 2 uses
  %i.kr = add nsw i32 %i.kq, %i.ko                ; 2 uses
  store i32 %i.kr, ptr %i.jd, align 4, !tbaa !9
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !9  ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !9  ; 2 uses
  %i.kw = add nsw i32 %i.kv, %i.kt                ; 2 uses
  store i32 %i.kw, ptr %i.je, align 4, !tbaa !9
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !9  ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !9  ; 2 uses
  %i.lb = add nsw i32 %i.la, %i.ky                ; 2 uses
  store i32 %i.lb, ptr %i.jf, align 4, !tbaa !9
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !9  ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !9  ; 2 uses
  %i.lg = add nsw i32 %i.lf, %i.ld                ; 2 uses
  store i32 %i.lg, ptr %i.jl, align 4, !tbaa !9
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !9  ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !9  ; 2 uses
  %i.ll = add nsw i32 %i.lk, %i.li                ; 2 uses
  store i32 %i.ll, ptr %i.jm, align 4, !tbaa !9
  %i.lm = sub nsw i32 %i.jq, %i.jr                ; 2 uses
  store i32 %i.lm, ptr %i.e, align 4, !tbaa !9
  %i.ln = sub nsw i32 %i.ju, %i.jw                ; 2 uses
  store i32 %i.ln, ptr %i.jt, align 4, !tbaa !9
  %i.lo = sub nsw i32 %i.jz, %i.kb                ; 2 uses
  store i32 %i.lo, ptr %i.jy, align 4, !tbaa !9
  %i.lp = sub nsw i32 %i.ke, %i.kg                ; 2 uses
  store i32 %i.lp, ptr %i.kd, align 4, !tbaa !9
  %i.lq = sub nsw i32 %i.kj, %i.kl                ; 2 uses
  store i32 %i.lq, ptr %i.ki, align 4, !tbaa !9
  %i.lr = sub nsw i32 %i.ko, %i.kq                ; 2 uses
  store i32 %i.lr, ptr %i.kn, align 4, !tbaa !9
  %i.ls = sub nsw i32 %i.kt, %i.kv                ; 2 uses
  store i32 %i.ls, ptr %i.ks, align 4, !tbaa !9
  %i.lt = sub nsw i32 %i.ky, %i.la                ; 2 uses
  store i32 %i.lt, ptr %i.kx, align 4, !tbaa !9
  %i.lu = sub nsw i32 %i.ld, %i.lf                ; 2 uses
  store i32 %i.lu, ptr %i.lc, align 4, !tbaa !9
  %i.lv = sub nsw i32 %i.li, %i.lk                ; 2 uses
  store i32 %i.lv, ptr %i.lh, align 4, !tbaa !9
  %i.lw = load i32, ptr %2, align 16, !tbaa !9
  %i.lx = sub nsw i32 %i.lw, %i.js
  store i32 %i.lx, ptr %0, align 4, !tbaa !9
  %i.ly = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !9
  %i.ma = sub nsw i32 %i.lz, %i.jx
  store i32 %i.ma, ptr %i.jv, align 4, !tbaa !9
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !9
  %i.md = sub nsw i32 %i.mc, %i.kc
  store i32 %i.md, ptr %i.ka, align 4, !tbaa !9
  %i.me = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !9
  %i.mg = sub nsw i32 %i.mf, %i.kh
  store i32 %i.mg, ptr %i.kf, align 4, !tbaa !9
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.mi = load i32, ptr %i.mh, align 16, !tbaa !9
  %i.mj = sub nsw i32 %i.mi, %i.km
  store i32 %i.mj, ptr %i.kk, align 4, !tbaa !9
  %i.mk = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !9
  %i.mm = sub nsw i32 %i.ml, %i.kr
  store i32 %i.mm, ptr %i.kp, align 4, !tbaa !9
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !9
  %i.mp = sub nsw i32 %i.mo, %i.kw
  store i32 %i.mp, ptr %i.ku, align 4, !tbaa !9
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !9
  %i.ms = sub nsw i32 %i.mr, %i.lb
  store i32 %i.ms, ptr %i.kz, align 4, !tbaa !9
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mu = load i32, ptr %i.mt, align 16, !tbaa !9
  %i.mv = sub nsw i32 %i.mu, %i.lg
  store i32 %i.mv, ptr %i.le, align 4, !tbaa !9
  %i.mw = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !9
  %i.my = sub nsw i32 %i.mx, %i.ll
  store i32 %i.my, ptr %i.lj, align 4, !tbaa !9
  %i.mz = sub nsw i32 %i.ia, %i.lm
  store i32 %i.mz, ptr %i.g, align 4, !tbaa !9
  %i.na = sub nsw i32 %i.ib, %i.ln
  store i32 %i.na, ptr %i.ic, align 4, !tbaa !9
  %i.nb = sub nsw i32 %i.id, %i.lo
  store i32 %i.nb, ptr %i.ie, align 4, !tbaa !9
  %i.nc = sub nsw i32 %i.if, %i.lp
  store i32 %i.nc, ptr %i.ig, align 4, !tbaa !9
  %i.nd = sub nsw i32 %i.ih, %i.lq
  store i32 %i.nd, ptr %i.ii, align 4, !tbaa !9
  %i.ne = sub nsw i32 %i.ij, %i.lr
  store i32 %i.ne, ptr %i.ik, align 4, !tbaa !9
  %i.nf = sub nsw i32 %i.il, %i.ls
  store i32 %i.nf, ptr %i.im, align 4, !tbaa !9
  %i.ng = sub nsw i32 %i.in, %i.lt
  store i32 %i.ng, ptr %i.io, align 4, !tbaa !9
  %i.nh = sub nsw i32 %i.ip, %i.lu
  store i32 %i.nh, ptr %i.iq, align 4, !tbaa !9
  %i.ni = sub nsw i32 %i.ir, %i.lv
  store i32 %i.ni, ptr %i.is, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %3 = alloca [10 x i32], align 16                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  tail call fastcc void @fe_sq(ptr noundef %0, ptr noundef %1)
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call fastcc void @fe_sq(ptr noundef %i.nj, ptr noundef %i.nk)
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !9  ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.np = load i32, ptr %i.no, align 4, !tbaa !9  ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !9  ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !9  ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !9  ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !9  ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !9  ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !9  ; 3 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !9  ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !9  ; 2 uses
  %i.og = shl nsw i32 %i.nn, 1
  %i.oh = shl nsw i32 %i.np, 1
  %i.oi = shl nsw i32 %i.nr, 1
  %i.oj = shl nsw i32 %i.nt, 1
  %i.ok = shl nsw i32 %i.nv, 1
  %i.ol = shl nsw i32 %i.nx, 1
  %i.om = shl nsw i32 %i.nz, 1
  %i.on = shl nsw i32 %i.ob, 1
  %i.oo = mul nsw i32 %i.nx, 38
  %i.op = mul nsw i32 %i.nz, 19
  %i.oq = mul nsw i32 %i.ob, 38
  %i.or = mul nsw i32 %i.od, 19
  %i.os = mul nsw i32 %i.of, 38
  %i.ot = sext i32 %i.nn to i64                   ; 2 uses
  %i.ou = mul nsw i64 %i.ot, %i.ot
  %i.ov = sext i32 %i.og to i64                   ; 9 uses
  %i.ow = sext i32 %i.np to i64                   ; 2 uses
  %i.ox = mul nsw i64 %i.ov, %i.ow
  %i.oy = sext i32 %i.nr to i64                   ; 5 uses
  %i.oz = mul nsw i64 %i.oy, %i.ov
  %i.pa = sext i32 %i.nt to i64                   ; 3 uses
  %i.pb = mul nsw i64 %i.pa, %i.ov
  %i.pc = sext i32 %i.nv to i64                   ; 8 uses
  %i.pd = mul nsw i64 %i.pc, %i.ov
  %i.pe = sext i32 %i.nx to i64                   ; 4 uses
  %i.pf = mul nsw i64 %i.pe, %i.ov
  %i.pg = sext i32 %i.nz to i64                   ; 7 uses
  %i.ph = mul nsw i64 %i.pg, %i.ov
  %i.pi = sext i32 %i.ob to i64                   ; 3 uses
  %i.pj = mul nsw i64 %i.pi, %i.ov
  %i.pk = sext i32 %i.od to i64                   ; 4 uses
  %i.pl = mul nsw i64 %i.pk, %i.ov
  %i.pm = sext i32 %i.of to i64                   ; 2 uses
  %i.pn = mul nsw i64 %i.pm, %i.ov
  %i.po = sext i32 %i.oh to i64                   ; 9 uses
  %i.pp = mul nsw i64 %i.po, %i.ow
  %i.pq = mul nsw i64 %i.po, %i.oy
  %i.pr = sext i32 %i.oj to i64                   ; 8 uses
  %i.ps = mul nsw i64 %i.pr, %i.po
  %i.pt = mul nsw i64 %i.pc, %i.po
  %i.pu = sext i32 %i.ol to i64                   ; 6 uses
  %i.pv = mul nsw i64 %i.pu, %i.po
  %i.pw = mul nsw i64 %i.pg, %i.po
  %i.px = sext i32 %i.on to i64                   ; 3 uses
  %i.py = mul nsw i64 %i.px, %i.po
  %i.pz = mul nsw i64 %i.pk, %i.po
  %i.qa = sext i32 %i.os to i64                   ; 9 uses
  %i.qb = mul nsw i64 %i.qa, %i.po
  %i.qc = mul nsw i64 %i.oy, %i.oy
  %i.qd = sext i32 %i.oi to i64                   ; 6 uses
  %i.qe = mul nsw i64 %i.qd, %i.pa
  %i.qf = mul nsw i64 %i.pc, %i.qd
  %i.qg = mul nsw i64 %i.pe, %i.qd
  %i.qh = mul nsw i64 %i.pg, %i.qd
  %i.qi = mul nsw i64 %i.pi, %i.qd
  %i.qj = sext i32 %i.or to i64                   ; 7 uses
  %i.qk = mul nsw i64 %i.qj, %i.qd
  %i.ql = mul nsw i64 %i.qa, %i.oy
  %i.qm = mul nsw i64 %i.pr, %i.pa
  %i.qn = mul nsw i64 %i.pr, %i.pc
  %i.qo = mul nsw i64 %i.pu, %i.pr
  %i.qp = mul nsw i64 %i.pg, %i.pr
  %i.qq = sext i32 %i.oq to i64                   ; 5 uses
  %i.qr = mul nsw i64 %i.qq, %i.pr
  %i.qs = mul nsw i64 %i.qj, %i.pr
  %i.qt = mul nsw i64 %i.qa, %i.pr
  %i.qu = mul nsw i64 %i.pc, %i.pc
  %i.qv = sext i32 %i.ok to i64                   ; 3 uses
  %i.qw = mul nsw i64 %i.qv, %i.pe
  %i.qx = sext i32 %i.op to i64                   ; 3 uses
  %i.qy = mul nsw i64 %i.qx, %i.qv
  %i.qz = mul nsw i64 %i.qq, %i.pc
  %i.ra = mul nsw i64 %i.qj, %i.qv
  %i.rb = mul nsw i64 %i.qa, %i.pc
  %i.rc = sext i32 %i.oo to i64
  %i.rd = mul nsw i64 %i.rc, %i.pe
  %i.re = mul nsw i64 %i.qx, %i.pu
  %i.rf = mul nsw i64 %i.qq, %i.pu
  %i.rg = mul nsw i64 %i.qj, %i.pu
  %i.rh = mul nsw i64 %i.qa, %i.pu
  %i.ri = mul nsw i64 %i.qx, %i.pg
  %i.rj = mul nsw i64 %i.qq, %i.pg
  %i.rk = sext i32 %i.om to i64
  %i.rl = mul nsw i64 %i.qj, %i.rk
  %i.rm = mul nsw i64 %i.qa, %i.pg
  %i.rn = mul nsw i64 %i.qq, %i.pi
  %i.ro = mul nsw i64 %i.qj, %i.px
  %i.rp = mul nsw i64 %i.qa, %i.px
  %i.rq = mul nsw i64 %i.qj, %i.pk
  %i.rr = mul nsw i64 %i.qa, %i.pk
  %i.rs = mul nsw i64 %i.qa, %i.pm
  %i.rt = add i64 %i.rd, %i.ou
  %i.ru = add i64 %i.rt, %i.qy
  %i.rv = add i64 %i.ru, %i.qr
  %i.rw = add i64 %i.rv, %i.qk
  %i.rx = add i64 %i.rw, %i.qb
  %i.ry = add i64 %i.re, %i.ox
  %i.rz = add i64 %i.ry, %i.qz
  %i.sa = add i64 %i.rz, %i.qs
  %i.sb = add i64 %i.sa, %i.ql
  %i.sc = add nsw i64 %i.oz, %i.pp
  %i.sd = add i64 %i.sc, %i.ri
  %i.se = add i64 %i.sd, %i.rf
  %i.sf = add i64 %i.se, %i.ra
  %i.sg = add i64 %i.sf, %i.qt
  %i.sh = add nsw i64 %i.pb, %i.pq
  %i.si = add i64 %i.sh, %i.rj
  %i.sj = add i64 %i.si, %i.rg
  %i.sk = add i64 %i.sj, %i.rb
  %i.sl = add i64 %i.ps, %i.qc
  %i.sm = add i64 %i.sl, %i.pd
  %i.sn = add i64 %i.sm, %i.rn
  %i.so = add i64 %i.sn, %i.rl
  %i.sp = add i64 %i.so, %i.rh
  %i.sq = add i64 %i.pt, %i.qe
  %i.sr = add i64 %i.sq, %i.pf
  %i.ss = add i64 %i.sr, %i.ro
  %i.st = add i64 %i.ss, %i.rm
  %i.su = add i64 %i.qm, %i.qf
  %i.sv = add i64 %i.su, %i.pv
  %i.sw = add i64 %i.sv, %i.ph
  %i.sx = add i64 %i.sw, %i.rq
  %i.sy = add i64 %i.sx, %i.rp
  %i.sz = add i64 %i.qg, %i.qn
  %i.ta = add i64 %i.sz, %i.pw
  %i.tb = add i64 %i.ta, %i.pj
  %i.tc = add nsw i64 %i.tb, %i.rr
  %i.td = add i64 %i.qh, %i.qu
  %i.te = add i64 %i.td, %i.qo
  %i.tf = add i64 %i.te, %i.py
  %i.tg = add i64 %i.tf, %i.pl
  %i.th = add nsw i64 %i.tg, %i.rs
  %i.ti = add i64 %i.qp, %i.qw
  %i.tj = add i64 %i.ti, %i.qi
  %i.tk = add i64 %i.tj, %i.pz
  %i.tl = add i64 %i.tk, %i.pn
  %i.tm = shl nsw i64 %i.rx, 1                    ; 2 uses
  %i.tn = shl nsw i64 %i.sb, 1
  %i.to = shl nsw i64 %i.sg, 1
  %i.tp = shl nsw i64 %i.sk, 1
  %i.tq = shl nsw i64 %i.sp, 1                    ; 2 uses
  %i.tr = shl nsw i64 %i.st, 1
  %i.ts = shl nsw i64 %i.sy, 1
  %i.tt = shl nsw i64 %i.tc, 1
  %i.tu = shl nsw i64 %i.th, 1
  %i.tv = shl nsw i64 %i.tl, 1
  %i.tw = add nsw i64 %i.tm, 33554432             ; 2 uses
  %i.tx = ashr i64 %i.tw, 26
  %i.ty = add nsw i64 %i.tx, %i.tn                ; 2 uses
  %i.tz = and i64 %i.tw, -67108864
  %i.ua = sub nsw i64 %i.tm, %i.tz
  %i.ub = add nsw i64 %i.tq, 33554432             ; 2 uses
  %i.uc = ashr i64 %i.ub, 26
  %i.ud = add nsw i64 %i.uc, %i.tr                ; 2 uses
  %i.ue = and i64 %i.ub, -67108864
  %i.uf = sub nsw i64 %i.tq, %i.ue
  %i.ug = add nsw i64 %i.ty, 16777216             ; 2 uses
  %i.uh = ashr i64 %i.ug, 25
  %i.ui = add nsw i64 %i.uh, %i.to                ; 2 uses
  %i.uj = and i64 %i.ug, 4261412864
  %i.uk = sub i64 %i.ty, %i.uj
  %i.ul = add nsw i64 %i.ud, 16777216             ; 2 uses
  %i.um = ashr i64 %i.ul, 25
  %i.un = add nsw i64 %i.um, %i.ts                ; 2 uses
  %i.uo = and i64 %i.ul, 4261412864
  %i.up = sub i64 %i.ud, %i.uo
  %i.uq = add nsw i64 %i.ui, 33554432             ; 2 uses
  %i.ur = ashr i64 %i.uq, 26
  %i.us = add nsw i64 %i.ur, %i.tp                ; 2 uses
  %i.ut = and i64 %i.uq, 4227858432
  %i.uu = sub i64 %i.ui, %i.ut
  %i.uv = add nsw i64 %i.un, 33554432             ; 2 uses
  %i.uw = ashr i64 %i.uv, 26
  %i.ux = add nsw i64 %i.uw, %i.tt                ; 2 uses
  %i.uy = and i64 %i.uv, 4227858432
  %i.uz = sub i64 %i.un, %i.uy
  %i.va = add nsw i64 %i.us, 16777216             ; 2 uses
  %i.vb = ashr i64 %i.va, 25
  %i.vc = add nsw i64 %i.vb, %i.uf                ; 2 uses
  %i.vd = and i64 %i.va, 4261412864
  %i.ve = sub i64 %i.us, %i.vd
  %i.vf = add nsw i64 %i.ux, 16777216             ; 2 uses
  %i.vg = ashr i64 %i.vf, 25
  %i.vh = add nsw i64 %i.vg, %i.tu                ; 2 uses
  %i.vi = and i64 %i.vf, 4261412864
  %i.vj = sub i64 %i.ux, %i.vi
  %i.vk = add nsw i64 %i.vc, 33554432             ; 2 uses
  %i.vl = lshr i64 %i.vk, 26
  %i.vm = add i64 %i.up, %i.vl
  %i.vn = and i64 %i.vk, 4227858432
  %i.vo = sub i64 %i.vc, %i.vn
  %i.vp = add nsw i64 %i.vh, 33554432             ; 2 uses
  %i.vq = ashr i64 %i.vp, 26
  %i.vr = add nsw i64 %i.vq, %i.tv                ; 2 uses
  %i.vs = and i64 %i.vp, 4227858432
  %i.vt = sub i64 %i.vh, %i.vs
  %i.vu = add nsw i64 %i.vr, 16777216             ; 2 uses
  %i.vv = ashr i64 %i.vu, 25
  %i.vw = mul nsw i64 %i.vv, 19
  %i.vx = add nsw i64 %i.vw, %i.ua                ; 2 uses
  %i.vy = and i64 %i.vu, 4261412864
  %i.vz = sub i64 %i.vr, %i.vy
  %i.wa = add nsw i64 %i.vx, 33554432             ; 2 uses
  %i.wb = lshr i64 %i.wa, 26
  %i.wc = add i64 %i.uk, %i.wb
  %i.wd = and i64 %i.wa, 4227858432
  %i.we = sub i64 %i.vx, %i.wd
  %i.wf = trunc i64 %i.we to i32                  ; 2 uses
  store i32 %i.wf, ptr %i.nl, align 4, !tbaa !9
  %i.wg = trunc i64 %i.wc to i32                  ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  store i32 %i.wg, ptr %i.wh, align 4, !tbaa !9
  %i.wi = trunc i64 %i.uu to i32                  ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i32 %i.wi, ptr %i.wj, align 4, !tbaa !9
  %i.wk = trunc i64 %i.ve to i32                  ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  store i32 %i.wk, ptr %i.wl, align 4, !tbaa !9
  %i.wm = trunc i64 %i.vo to i32                  ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i32 %i.wm, ptr %i.wn, align 4, !tbaa !9
  %i.wo = trunc i64 %i.vm to i32                  ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  store i32 %i.wo, ptr %i.wp, align 4, !tbaa !9
  %i.wq = trunc i64 %i.uz to i32                  ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i32 %i.wq, ptr %i.wr, align 4, !tbaa !9
  %i.ws = trunc i64 %i.vj to i32                  ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !9
  %i.wu = trunc i64 %i.vt to i32                  ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !9
  %i.ww = trunc i64 %i.vz to i32                  ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i32 %i.ww, ptr %i.wx, align 4, !tbaa !9
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.wz = load i32, ptr %1, align 4, !tbaa !9
  %i.xa = load i32, ptr %i.nk, align 4, !tbaa !9
  %i.xb = add nsw i32 %i.xa, %i.wz
  store i32 %i.xb, ptr %i.wy, align 4, !tbaa !9
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !9
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !9
  %i.xg = add nsw i32 %i.xf, %i.xd
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !9
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !9
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !9
  %i.xm = add nsw i32 %i.xl, %i.xj
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.xm, ptr %i.xn, align 4, !tbaa !9
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !9
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !9
  %i.xs = add nsw i32 %i.xr, %i.xp
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !9
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !9
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !9
  %i.xy = add nsw i32 %i.xx, %i.xv
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !9
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !9
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !9
  %i.ye = add nsw i32 %i.yd, %i.yb
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i32 %i.ye, ptr %i.yf, align 4, !tbaa !9
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !9
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !9
  %i.yk = add nsw i32 %i.yj, %i.yh
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !9
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !9
  %i.yo = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !9
  %i.yq = add nsw i32 %i.yp, %i.yn
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  store i32 %i.yq, ptr %i.yr, align 4, !tbaa !9
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !9
  %i.yu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !9
  %i.yw = add nsw i32 %i.yv, %i.yt
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %i.yw, ptr %i.yx, align 4, !tbaa !9
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !9
  %i.za = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !9
  %i.zc = add nsw i32 %i.zb, %i.yz
  %i.zd = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store i32 %i.zc, ptr %i.zd, align 4, !tbaa !9
  call fastcc void @fe_sq(ptr noundef %3, ptr noundef %i.wy)
  %i.ze = load i32, ptr %i.nj, align 4, !tbaa !9  ; 2 uses
  %i.zf = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.zg = add nsw i32 %i.zf, %i.ze                ; 2 uses
  store i32 %i.zg, ptr %i.wy, align 4, !tbaa !9
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !9  ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !9  ; 2 uses
  %i.zl = add nsw i32 %i.zk, %i.zi                ; 2 uses
  store i32 %i.zl, ptr %i.xh, align 4, !tbaa !9
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !9  ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !9  ; 2 uses
  %i.zq = add nsw i32 %i.zp, %i.zn                ; 2 uses
  store i32 %i.zq, ptr %i.xn, align 4, !tbaa !9
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !9  ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !9  ; 2 uses
  %i.zv = add nsw i32 %i.zu, %i.zs                ; 2 uses
  store i32 %i.zv, ptr %i.xt, align 4, !tbaa !9
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !9  ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !9  ; 2 uses
  %i.aaa = add nsw i32 %i.zz, %i.zx               ; 2 uses
  store i32 %i.aaa, ptr %i.xz, align 4, !tbaa !9
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !9 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !9 ; 2 uses
  %i.aaf = add nsw i32 %i.aae, %i.aac             ; 2 uses
  store i32 %i.aaf, ptr %i.yf, align 4, !tbaa !9
  %i.aag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !9 ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !9 ; 2 uses
  %i.aak = add nsw i32 %i.aaj, %i.aah             ; 2 uses
  store i32 %i.aak, ptr %i.yl, align 4, !tbaa !9
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !9 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !9 ; 2 uses
  %i.aap = add nsw i32 %i.aao, %i.aam             ; 2 uses
  store i32 %i.aap, ptr %i.yr, align 4, !tbaa !9
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !9 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !9 ; 2 uses
  %i.aau = add nsw i32 %i.aat, %i.aar             ; 2 uses
  store i32 %i.aau, ptr %i.yx, align 4, !tbaa !9
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !9 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !9 ; 2 uses
  %i.aaz = add nsw i32 %i.aay, %i.aaw             ; 2 uses
  store i32 %i.aaz, ptr %i.zd, align 4, !tbaa !9
  %i.aba = sub nsw i32 %i.ze, %i.zf               ; 2 uses
  store i32 %i.aba, ptr %i.nj, align 4, !tbaa !9
  %i.abb = sub nsw i32 %i.zi, %i.zk               ; 2 uses
  store i32 %i.abb, ptr %i.zh, align 4, !tbaa !9
  %i.abc = sub nsw i32 %i.zn, %i.zp               ; 2 uses
  store i32 %i.abc, ptr %i.zm, align 4, !tbaa !9
  %i.abd = sub nsw i32 %i.zs, %i.zu               ; 2 uses
  store i32 %i.abd, ptr %i.zr, align 4, !tbaa !9
  %i.abe = sub nsw i32 %i.zx, %i.zz               ; 2 uses
  store i32 %i.abe, ptr %i.zw, align 4, !tbaa !9
  %i.abf = sub nsw i32 %i.aac, %i.aae             ; 2 uses
  store i32 %i.abf, ptr %i.aab, align 4, !tbaa !9
  %i.abg = sub nsw i32 %i.aah, %i.aaj             ; 2 uses
  store i32 %i.abg, ptr %i.aag, align 4, !tbaa !9
  %i.abh = sub nsw i32 %i.aam, %i.aao             ; 2 uses
  store i32 %i.abh, ptr %i.aal, align 4, !tbaa !9
  %i.abi = sub nsw i32 %i.aar, %i.aat             ; 2 uses
  store i32 %i.abi, ptr %i.aaq, align 4, !tbaa !9
  %i.abj = sub nsw i32 %i.aaw, %i.aay             ; 2 uses
  store i32 %i.abj, ptr %i.aav, align 4, !tbaa !9
  %i.abk = load i32, ptr %3, align 16, !tbaa !9
  %i.abl = sub nsw i32 %i.abk, %i.zg
  store i32 %i.abl, ptr %0, align 4, !tbaa !9
  %i.abm = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !9
  %i.abo = sub nsw i32 %i.abn, %i.zl
  store i32 %i.abo, ptr %i.zj, align 4, !tbaa !9
  %i.abp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !9
  %i.abr = sub nsw i32 %i.abq, %i.zq
  store i32 %i.abr, ptr %i.zo, align 4, !tbaa !9
  %i.abs = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !9
  %i.abu = sub nsw i32 %i.abt, %i.zv
  store i32 %i.abu, ptr %i.zt, align 4, !tbaa !9
  %i.abv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.abw = load i32, ptr %i.abv, align 16, !tbaa !9
  %i.abx = sub nsw i32 %i.abw, %i.aaa
  store i32 %i.abx, ptr %i.zy, align 4, !tbaa !9
  %i.aby = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !9
  %i.aca = sub nsw i32 %i.abz, %i.aaf
  store i32 %i.aca, ptr %i.aad, align 4, !tbaa !9
  %i.acb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.acc = load i32, ptr %i.acb, align 8, !tbaa !9
  %i.acd = sub nsw i32 %i.acc, %i.aak
  store i32 %i.acd, ptr %i.aai, align 4, !tbaa !9
  %i.ace = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.acf = load i32, ptr %i.ace, align 4, !tbaa !9
  %i.acg = sub nsw i32 %i.acf, %i.aap
  store i32 %i.acg, ptr %i.aan, align 4, !tbaa !9
  %i.ach = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aci = load i32, ptr %i.ach, align 16, !tbaa !9
  %i.acj = sub nsw i32 %i.aci, %i.aau
  store i32 %i.acj, ptr %i.aas, align 4, !tbaa !9
  %i.ack = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !9
  %i.acm = sub nsw i32 %i.acl, %i.aaz
  store i32 %i.acm, ptr %i.aax, align 4, !tbaa !9
  %i.acn = sub nsw i32 %i.wf, %i.aba
  store i32 %i.acn, ptr %i.nl, align 4, !tbaa !9
  %i.aco = sub nsw i32 %i.wg, %i.abb
  store i32 %i.aco, ptr %i.wh, align 4, !tbaa !9
  %i.acp = sub nsw i32 %i.wi, %i.abc
  store i32 %i.acp, ptr %i.wj, align 4, !tbaa !9
  %i.acq = sub nsw i32 %i.wk, %i.abd
  store i32 %i.acq, ptr %i.wl, align 4, !tbaa !9
  %i.acr = sub nsw i32 %i.wm, %i.abe
  store i32 %i.acr, ptr %i.wn, align 4, !tbaa !9
  %i.acs = sub nsw i32 %i.wo, %i.abf
  store i32 %i.acs, ptr %i.wp, align 4, !tbaa !9
  %i.act = sub nsw i32 %i.wq, %i.abg
  store i32 %i.act, ptr %i.wr, align 4, !tbaa !9
  %i.acu = sub nsw i32 %i.ws, %i.abh
  store i32 %i.acu, ptr %i.wt, align 4, !tbaa !9
  %i.acv = sub nsw i32 %i.wu, %i.abi
  store i32 %i.acv, ptr %i.wv, align 4, !tbaa !9
  %i.acw = sub nsw i32 %i.ww, %i.abj
  store i32 %i.acw, ptr %i.wx, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cmov(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add i64 %i.b, 120
  %i.d = add i64 %i.a, 120
  %rt.bound0 = icmp ugt i64 %i.d, %i.b
  %rt.bound1 = icmp ugt i64 %i.c, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  br i1 %rt.conflict, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.e = zext nneg i8 %2 to i32
  %i.f = sub nsw i32 0, %i.e                      ; 2 uses
  %i.g = load <4 x i32>, ptr %0, align 4, !tbaa !9 ; 2 uses
  %i.h = load <4 x i32>, ptr %1, align 4, !tbaa !9
  %i.i = xor <4 x i32> %i.h, %i.g
  %i.j = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.k = shufflevector <4 x i32> %i.j, <4 x i32> poison, <4 x i32> zeroinitializer ; 7 uses
  %i.l = and <4 x i32> %i.i, %i.k
  %i.m = xor <4 x i32> %i.l, %i.g
  store <4 x i32> %i.m, ptr %0, align 4, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <4 x i32>, ptr %i.n, align 4, !tbaa !9 ; 2 uses
  %i.q = load <4 x i32>, ptr %i.o, align 4, !tbaa !9
  %i.r = xor <4 x i32> %i.q, %i.p
  %i.s = and <4 x i32> %i.r, %i.k
  %i.t = xor <4 x i32> %i.s, %i.p
  store <4 x i32> %i.t, ptr %i.n, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load <4 x i32>, ptr %i.u, align 4, !tbaa !9 ; 2 uses
  %i.x = load <4 x i32>, ptr %i.v, align 4, !tbaa !9
  %i.y = xor <4 x i32> %i.x, %i.w
  %i.z = and <4 x i32> %i.y, %i.k
  %i.aa = xor <4 x i32> %i.z, %i.w
  store <4 x i32> %i.aa, ptr %i.u, align 4, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load <4 x i32>, ptr %i.ab, align 4, !tbaa !9 ; 2 uses
  %i.ae = load <4 x i32>, ptr %i.ac, align 4, !tbaa !9
  %i.af = xor <4 x i32> %i.ae, %i.ad
  %i.ag = and <4 x i32> %i.af, %i.k
  %i.ah = xor <4 x i32> %i.ag, %i.ad
  store <4 x i32> %i.ah, ptr %i.ab, align 4, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = load <4 x i32>, ptr %i.ai, align 4, !tbaa !9 ; 2 uses
  %i.al = load <4 x i32>, ptr %i.aj, align 4, !tbaa !9
  %i.am = xor <4 x i32> %i.al, %i.ak
  %i.an = and <4 x i32> %i.am, %i.k
  %i.ao = xor <4 x i32> %i.an, %i.ak
  store <4 x i32> %i.ao, ptr %i.ai, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ar = load <4 x i32>, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %i.as = load <4 x i32>, ptr %i.aq, align 4, !tbaa !9
  %i.at = xor <4 x i32> %i.as, %i.ar
  %i.au = and <4 x i32> %i.at, %i.k
  %i.av = xor <4 x i32> %i.au, %i.ar
  store <4 x i32> %i.av, ptr %i.ap, align 4, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ay = load <4 x i32>, ptr %i.aw, align 4, !tbaa !9 ; 2 uses
  %i.az = load <4 x i32>, ptr %i.ax, align 4, !tbaa !9
  %i.ba = xor <4 x i32> %i.az, %i.ay
  %i.bb = and <4 x i32> %i.ba, %i.k
  %i.bc = xor <4 x i32> %i.bb, %i.ay
  store <4 x i32> %i.bc, ptr %i.aw, align 4, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bf = load <2 x i32>, ptr %i.bd, align 4, !tbaa !9 ; 2 uses
  %i.bg = load <2 x i32>, ptr %i.be, align 4, !tbaa !9
  %i.bh = xor <2 x i32> %i.bg, %i.bf
  %i.bi = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.bj = shufflevector <2 x i32> %i.bi, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bk = and <2 x i32> %i.bh, %i.bj
  %i.bl = xor <2 x i32> %i.bk, %i.bf
  store <2 x i32> %i.bl, ptr %i.bd, align 4, !tbaa !9
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.bm = zext nneg i8 %2 to i32
  %i.bn = sub nsw i32 0, %i.bm                    ; 30 uses
  %i.bo = load i32, ptr %0, align 4, !tbaa !9     ; 2 uses
  %i.bp = load i32, ptr %1, align 4, !tbaa !9
  %i.bq = xor i32 %i.bp, %i.bo
  %i.br = and i32 %i.bq, %i.bn
  %i.bs = xor i32 %i.br, %i.bo
  store i32 %i.bs, ptr %0, align 4, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !9  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = xor i32 %i.bw, %i.bu
  %i.by = and i32 %i.bx, %i.bn
  %i.bz = xor i32 %i.by, %i.bu
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !9  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.ce = xor i32 %i.cd, %i.cb
  %i.cf = and i32 %i.ce, %i.bn
  %i.cg = xor i32 %i.cf, %i.cb
  store i32 %i.cg, ptr %i.ca, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !9  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !9
  %i.cl = xor i32 %i.ck, %i.ci
  %i.cm = and i32 %i.cl, %i.bn
  %i.cn = xor i32 %i.cm, %i.ci
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !9  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !9
  %i.cs = xor i32 %i.cr, %i.cp
  %i.ct = and i32 %i.cs, %i.bn
  %i.cu = xor i32 %i.ct, %i.cp
  store i32 %i.cu, ptr %i.co, align 4, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !9  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !9
  %i.cz = xor i32 %i.cy, %i.cw
  %i.da = and i32 %i.cz, %i.bn
  %i.db = xor i32 %i.da, %i.cw
  store i32 %i.db, ptr %i.cv, align 4, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !9  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = load i32, ptr %i.de, align 4, !tbaa !9
  %i.dg = xor i32 %i.df, %i.dd
  %i.dh = and i32 %i.dg, %i.bn
  %i.di = xor i32 %i.dh, %i.dd
  store i32 %i.di, ptr %i.dc, align 4, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !9  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !9
  %i.dn = xor i32 %i.dm, %i.dk
  %i.do = and i32 %i.dn, %i.bn
  %i.dp = xor i32 %i.do, %i.dk
  store i32 %i.dp, ptr %i.dj, align 4, !tbaa !9
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !9  ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !9
  %i.du = xor i32 %i.dt, %i.dr
  %i.dv = and i32 %i.du, %i.bn
  %i.dw = xor i32 %i.dv, %i.dr
  store i32 %i.dw, ptr %i.dq, align 4, !tbaa !9
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !9  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !9
  %i.eb = xor i32 %i.ea, %i.dy
  %i.ec = and i32 %i.eb, %i.bn
  %i.ed = xor i32 %i.ec, %i.dy
  store i32 %i.ed, ptr %i.dx, align 4, !tbaa !9
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !9  ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !9
  %i.ei = xor i32 %i.eh, %i.eg
  %i.ej = and i32 %i.ei, %i.bn
  %i.ek = xor i32 %i.ej, %i.eg
  store i32 %i.ek, ptr %i.ee, align 4, !tbaa !9
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9  ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !9
  %i.ep = xor i32 %i.eo, %i.em
  %i.eq = and i32 %i.ep, %i.bn
  %i.er = xor i32 %i.eq, %i.em
  store i32 %i.er, ptr %i.el, align 4, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !9  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !9
  %i.ew = xor i32 %i.ev, %i.et
  %i.ex = and i32 %i.ew, %i.bn
  %i.ey = xor i32 %i.ex, %i.et
  store i32 %i.ey, ptr %i.es, align 4, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !9  ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 52
end_hunk_1
