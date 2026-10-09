Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4ncnn15LSTM_x86_avx51215create_pipelineERKNS_6OptionE.omp_outlined:bb.a
  %i.ex = add i64 %i.ct, %i.ew
  %i.ey = mul i64 %i.aj, %i.ex
  %i.ez = add i64 %i.ct, %i.cz
  %i.fa = mul i64 %i.aj, %i.ez
  %i.fb = or i64 %i.cq, 1
  %i.fc = mul i64 %i.fb, %i.cz
  %i.fd = add i64 %i.ct, %i.fc
  %i.fe = mul i64 %i.aj, %i.fd
  %i.ff = mul nsw i64 %i.cz, %i.bu
  %i.fg = add i64 %i.ct, %i.ff
  %i.fh = mul i64 %i.aj, %i.fg
  %i.fi = add nsw i64 %i.cw, %i.bu
  %i.fj = mul i64 %i.fi, %i.cz
  %i.fk = add i64 %i.ct, %i.fj
  %i.fl = mul i64 %i.aj, %i.fk
  %i.fm = mul nsw i64 %i.cz, %i.bt
  %i.fn = add i64 %i.ct, %i.fm
  %i.fo = mul i64 %i.aj, %i.fn
  %i.fp = add nsw i64 %i.cw, %i.bt
  %i.fq = mul i64 %i.fp, %i.cz
  %i.fr = add i64 %i.ct, %i.fq
  %i.fs = mul i64 %i.aj, %i.fr
  %i.ft = mul nsw i64 %i.cz, %i.bs
  %i.fu = add i64 %i.ct, %i.ft
  %i.fv = mul i64 %i.aj, %i.fu
  %i.fw = add nsw i64 %i.cw, %i.bs
  %i.fx = mul i64 %i.fw, %i.cz
  %i.fy = add i64 %i.ct, %i.fx
  %i.fz = mul i64 %i.aj, %i.fy
  %i.ga = mul i64 %i.cr, %i.cz
  %i.gb = shl i64 %i.ga, 1
  %i.gc = add i64 %i.gb, %i.ct
  %i.gd = mul i64 %i.aj, %i.gc
  %i.ge = mul i64 %i.ap, %i.bv
  %i.gf = add nsw i64 %i.bp, -2                   ; 4 uses
  %i.gg = lshr i64 %i.gf, 1                       ; 2 uses
  %i.gh = mul i64 %i.ap, %i.ar
  %i.gi = mul i64 %i.q, %i.bv                     ; 15 uses
  %i.gj = add nuw nsw i64 %i.bu, 1
  %i.gk = mul i64 %i.q, %i.s
  %i.gl = and i64 %i.gf, -2                       ; 5 uses
  %i.gm = add nsw i64 %i.gl, %i.bu
  %i.gn = add nsw i64 %i.gm, 1
  %i.go = sext i32 %i.n to i64                    ; 26 uses
  %i.gp = sext i32 %i.am to i64                   ; 4 uses
  %i.gq = mul i64 %i.s, %i.go                     ; 12 uses
  %i.gr = mul i64 %i.ar, %i.gp                    ; 2 uses
  %i.gs = mul i64 %i.ar, %i.gp
  %i.gt = mul i64 %i.s, %i.go
  %i.gu = mul i64 %i.ci, %i.go
  %i.gv = add i64 %i.cg, %i.gu
  %i.gw = mul i64 %i.s, %i.gv
  %i.gx = mul i64 %i.s, %i.go
  %i.gy = mul i64 %i.s, %i.go
  %i.gz = mul i64 %i.cl, %i.go
  %i.ha = add i64 %i.cg, %i.gz
  %i.hb = mul i64 %i.s, %i.ha
  %i.hc = mul i64 %i.s, %i.go
  %i.hd = mul i64 %i.cn, %i.go
  %i.he = add i64 %i.cg, %i.hd
  %i.hf = mul i64 %i.s, %i.he
  %i.hg = mul i64 %i.s, %i.go
  %i.hh = mul i64 %i.co, %i.go
  %i.hi = add i64 %i.cg, %i.hh
  %i.hj = mul i64 %i.s, %i.hi
  %i.hk = mul i64 %i.gg, %i.gp
  %i.hl = add i64 %i.ge, %i.hk
  %i.hm = mul i64 %i.ar, %i.hl
  %i.hn = mul i64 %i.ar, %i.gp
  %i.ho = mul i64 %i.gj, %i.go
  %i.hp = add i64 %i.gi, %i.ho
  %i.hq = mul i64 %i.s, %i.hp
  %i.hr = mul i64 %i.gn, %i.go
  %i.hs = add i64 %i.gi, %i.hr
  %i.ht = mul i64 %i.s, %i.hs
  %i.hu = mul i64 %i.s, %i.go
  %i.hv = shl i64 %i.hu, 1
  %i.hw = or disjoint i64 %i.bt, 1
  %i.hx = mul nsw i64 %i.hw, %i.go
  %i.hy = add i64 %i.gi, %i.hx
  %i.hz = mul i64 %i.s, %i.hy
  %i.ia = add nsw i64 %i.gf, %i.bt
  %i.ib = or i64 %i.ia, 1
  %i.ic = mul i64 %i.ib, %i.go
  %i.id = add i64 %i.gi, %i.ic
  %i.ie = mul i64 %i.s, %i.id
  %i.if = add nuw nsw i64 %i.bs, 1
  %i.ig = mul i64 %i.if, %i.go
  %i.ih = add i64 %i.gi, %i.ig
  %i.ii = mul i64 %i.s, %i.ih
  %i.ij = add nsw i64 %i.gl, %i.bs
  %i.ik = add nsw i64 %i.ij, 1
  %i.il = mul i64 %i.ik, %i.go
  %i.im = add i64 %i.gi, %i.il
  %i.in = mul i64 %i.s, %i.im
  %i.io = add i64 %i.gi, %i.go
  %i.ip = mul i64 %i.s, %i.io
  %i.iq = or i64 %i.gf, 1
  %i.ir = mul i64 %i.iq, %i.go
  %i.is = add i64 %i.gi, %i.ir
  %i.it = mul i64 %i.s, %i.is
  %i.iu = mul nsw i64 %i.go, %i.bu
  %i.iv = add i64 %i.gi, %i.iu
  %i.iw = mul i64 %i.s, %i.iv
  %i.ix = add nsw i64 %i.gl, %i.bu
  %i.iy = mul i64 %i.ix, %i.go
  %i.iz = add i64 %i.gi, %i.iy
  %i.ja = mul i64 %i.s, %i.iz
  %i.jb = mul nsw i64 %i.go, %i.bt
  %i.jc = add i64 %i.gi, %i.jb
  %i.jd = mul i64 %i.s, %i.jc
  %i.je = add nsw i64 %i.gl, %i.bt
  %i.jf = mul i64 %i.je, %i.go
  %i.jg = add i64 %i.gi, %i.jf
  %i.jh = mul i64 %i.s, %i.jg
  %i.ji = mul nsw i64 %i.go, %i.bs
  %i.jj = add i64 %i.gi, %i.ji
  %i.jk = mul i64 %i.s, %i.jj
  %i.jl = add nsw i64 %i.gl, %i.bs
  %i.jm = mul i64 %i.jl, %i.go
  %i.jn = add i64 %i.gi, %i.jm
  %i.jo = mul i64 %i.s, %i.jn
  %i.jp = mul i64 %i.gg, %i.go
  %i.jq = shl i64 %i.jp, 1
  %i.jr = add i64 %i.jq, %i.gi
  %i.js = mul i64 %i.s, %i.jr
  %i.jt = getelementptr i8, ptr %i.o, i64 %i.gw
  %i.ju = getelementptr i8, ptr %i.o, i64 %i.hb
  %i.jv = getelementptr i8, ptr %i.o, i64 %i.hf
  %i.jw = getelementptr i8, ptr %i.o, i64 %i.hj
  %i.jx = getelementptr i8, ptr %i.af, i64 %i.dh
  %i.jy = getelementptr i8, ptr %i.af, i64 %i.dm
  %i.jz = getelementptr i8, ptr %i.af, i64 %i.dq
  %i.ka = getelementptr i8, ptr %i.af, i64 %i.du
  %i.kb = getelementptr i8, ptr %i.af, i64 %i.fv
  %i.kc = getelementptr i8, ptr %i.af, i64 %i.fo
  %i.kd = getelementptr i8, ptr %i.af, i64 %i.fh
  %i.ke = getelementptr i8, ptr %i.af, i64 %i.fa
  %i.kf = getelementptr i8, ptr %i.af, i64 %i.et
  %i.kg = getelementptr i8, ptr %i.af, i64 %i.ek
  %i.kh = getelementptr i8, ptr %i.af, i64 %i.eb
  %i.ki = getelementptr i8, ptr %i.o, i64 %i.jk
  %i.kj = getelementptr i8, ptr %i.o, i64 %i.jd
  %i.kk = getelementptr i8, ptr %i.o, i64 %i.iw
  %i.kl = getelementptr i8, ptr %i.o, i64 %i.ip
  %i.km = getelementptr i8, ptr %i.o, i64 %i.ii
  %i.kn = getelementptr i8, ptr %i.o, i64 %i.hz
  %i.ko = getelementptr i8, ptr %i.o, i64 %i.hq
  %i.kp = getelementptr i8, ptr %i.af, i64 %i.gd
  %i.kq = getelementptr i8, ptr %i.af, i64 %i.fz
  %i.kr = getelementptr i8, ptr %i.af, i64 %i.fs
  %i.ks = getelementptr i8, ptr %i.af, i64 %i.fl
  %i.kt = getelementptr i8, ptr %i.af, i64 %i.fe
  %i.ku = getelementptr i8, ptr %i.af, i64 %i.ey
  %i.kv = getelementptr i8, ptr %i.af, i64 %i.ep
  %i.kw = getelementptr i8, ptr %i.af, i64 %i.ee
  %i.kx = getelementptr i8, ptr %i.bb, i64 %i.dx
  %i.ky = getelementptr i8, ptr %i.o, i64 %i.js
  %i.kz = getelementptr i8, ptr %i.o, i64 %i.jo
  %i.la = getelementptr i8, ptr %i.o, i64 %i.jh
  %i.lb = getelementptr i8, ptr %i.o, i64 %i.ja
  %i.lc = getelementptr i8, ptr %i.o, i64 %i.it
  %i.ld = getelementptr i8, ptr %i.o, i64 %i.in
  %i.le = getelementptr i8, ptr %i.o, i64 %i.ie
  %i.lf = getelementptr i8, ptr %i.o, i64 %i.ht
  %i.lg = getelementptr i8, ptr %i.an, i64 %i.hm
  %i.lh = insertelement <8 x i64> poison, i64 %i.eg, i64 0
  %i.li = insertelement <8 x i64> poison, i64 %i.dy, i64 0
  %i.lj = insertelement <8 x i64> poison, i64 %i.hv, i64 0
  %i.lk = insertelement <8 x i64> poison, i64 %i.hn, i64 0
  %i.ll = or <8 x i64> %i.lj, %i.lk
  %i.lm = icmp slt <8 x i64> %i.ll, zeroinitializer
  %i.ln = shufflevector <8 x i1> %i.lm, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.lo = or <8 x i64> %i.lh, %i.li
  %i.lp = icmp slt <8 x i64> %i.lo, zeroinitializer
  %i.lq = shufflevector <8 x i1> %i.lp, <8 x i1> poison, <8 x i32> zeroinitializer
  %stride.check527 = icmp slt i64 %i.gx, 0
  %stride.check477 = icmp slt i64 %i.di, 0
  br label %.noexc231

.noexc231:                                        ; preds = %.noexc231.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar461 = phi i64 [ 0, %.noexc231.lr.ph ], [ %indvar.next462, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %indvars.iv448 = phi i64 [ %i.bv, %.noexc231.lr.ph ], [ %indvars.iv.next449, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.lr = mul i64 %i.cj, %indvar461               ; 4 uses
  %scevgep509.a = getelementptr i8, ptr %i.jt, i64 %i.lr
  %scevgep512.a = getelementptr i8, ptr %i.ju, i64 %i.lr
  %scevgep515.a = getelementptr i8, ptr %i.jv, i64 %i.lr
  %scevgep518 = getelementptr i8, ptr %i.jw, i64 %i.lr
  %i.ls = mul i64 %i.ca, %indvar461               ; 4 uses
  %scevgep463.a = getelementptr i8, ptr %i.jx, i64 %i.ls
  %scevgep466.a = getelementptr i8, ptr %i.jy, i64 %i.ls
  %scevgep469.a = getelementptr i8, ptr %i.jz, i64 %i.ls
  %scevgep472.a = getelementptr i8, ptr %i.ka, i64 %i.ls
  %.reass = mul i64 %factor.op.mul, %indvars.iv448
  %i.lt = getelementptr i8, ptr %i.o, i64 %.reass ; 17 uses
  %.reass414 = mul i64 %factor.op.mul413, %indvars.iv448
  %i.lu = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass414 ; 6 uses
  %.reass416 = mul i64 %factor.op.mul415, %indvars.iv448
  %i.lv = getelementptr i8, ptr %i.af, i64 %.reass416 ; 17 uses
  %.reass418 = mul i64 %factor.op.mul417, %indvars.iv448
  %i.lw = getelementptr i8, ptr %i.an, i64 %.reass418 ; 5 uses
  %.reass420 = mul i64 %factor.op.mul419, %indvars.iv448
  %i.lx = getelementptr inbounds nuw i8, ptr %i.at, i64 %.reass420 ; 2 uses
  %.reass422 = mul i64 %factor.op.mul421, %indvars.iv448
  %i.ly = getelementptr i8, ptr %i.bb, i64 %.reass422 ; 5 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.bg ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.bh ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.bi ; 3 uses
  br i1 %i.bl, label %.lr.ph396, label %.preheader388

.lr.ph396:                                        ; preds = %.noexc231
  %i.mc = mul i64 %i.cv, %indvar461               ; 15 uses
  %scevgep596.a = getelementptr i8, ptr %i.kb, i64 %i.mc
  %scevgep593.a = getelementptr i8, ptr %i.kc, i64 %i.mc
  %scevgep590.a = getelementptr i8, ptr %i.kd, i64 %i.mc
  %scevgep587.a = getelementptr i8, ptr %i.ke, i64 %i.mc
  %scevgep584.a = getelementptr i8, ptr %i.kf, i64 %i.mc
  %scevgep581.a = getelementptr i8, ptr %i.kg, i64 %i.mc
  %scevgep578.a = getelementptr i8, ptr %i.kh, i64 %i.mc
  %i.md = mul i64 %i.gk, %indvar461               ; 15 uses
  %scevgep713.a = getelementptr i8, ptr %i.ki, i64 %i.md
  %scevgep710.a = getelementptr i8, ptr %i.kj, i64 %i.md
  %scevgep707.a = getelementptr i8, ptr %i.kk, i64 %i.md
  %scevgep704.a = getelementptr i8, ptr %i.kl, i64 %i.md
  %scevgep701.a = getelementptr i8, ptr %i.km, i64 %i.md
  %scevgep698.a = getelementptr i8, ptr %i.kn, i64 %i.md
  %scevgep695.a = getelementptr i8, ptr %i.ko, i64 %i.md
  %scevgep599 = getelementptr i8, ptr %i.kp, i64 %i.mc
  %scevgep597 = getelementptr i8, ptr %i.kq, i64 %i.mc
  %scevgep594 = getelementptr i8, ptr %i.kr, i64 %i.mc
  %scevgep591 = getelementptr i8, ptr %i.ks, i64 %i.mc
  %scevgep588 = getelementptr i8, ptr %i.kt, i64 %i.mc
  %scevgep585 = getelementptr i8, ptr %i.ku, i64 %i.mc
  %scevgep582 = getelementptr i8, ptr %i.kv, i64 %i.mc
  %scevgep579 = getelementptr i8, ptr %i.kw, i64 %i.mc
  %i.me = mul i64 %i.cs, %indvar461
  %scevgep576 = getelementptr i8, ptr %i.kx, i64 %i.me
  %scevgep716 = getelementptr i8, ptr %i.ky, i64 %i.md
  %scevgep714 = getelementptr i8, ptr %i.kz, i64 %i.md
  %scevgep711 = getelementptr i8, ptr %i.la, i64 %i.md
  %scevgep708 = getelementptr i8, ptr %i.lb, i64 %i.md
  %scevgep705 = getelementptr i8, ptr %i.lc, i64 %i.md
  %scevgep702 = getelementptr i8, ptr %i.ld, i64 %i.md
  %scevgep699 = getelementptr i8, ptr %i.le, i64 %i.md
  %scevgep696 = getelementptr i8, ptr %i.lf, i64 %i.md
  %i.mf = mul i64 %i.gh, %indvar461
  %scevgep693 = getelementptr i8, ptr %i.lg, i64 %i.mf
  %i.mg = load i32, ptr %4, align 4, !tbaa !45    ; 4 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  %i.mi = load i32, ptr %i.bo, align 8, !tbaa !48 ; 4 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  %wide.trip.count = zext i32 %i.mg to i64        ; 8 uses
  %wide.trip.count428 = zext i32 %i.mi to i64     ; 8 uses
  %i.mk = shl nuw nsw i64 %wide.trip.count428, 5
  %scevgep577 = getelementptr i8, ptr %scevgep576, i64 %i.mk
  %i.ml = shl nuw nsw i64 %wide.trip.count428, 2  ; 8 uses
  %scevgep580 = getelementptr i8, ptr %scevgep579, i64 %i.ml
  %scevgep583 = getelementptr i8, ptr %scevgep582, i64 %i.ml
  %scevgep586 = getelementptr i8, ptr %scevgep585, i64 %i.ml
  %scevgep589 = getelementptr i8, ptr %scevgep588, i64 %i.ml
  %scevgep592 = getelementptr i8, ptr %scevgep591, i64 %i.ml
  %scevgep595 = getelementptr i8, ptr %scevgep594, i64 %i.ml
  %scevgep598.a = getelementptr i8, ptr %scevgep597, i64 %i.ml
  %scevgep600 = getelementptr i8, ptr %scevgep599, i64 %i.ml
  %i.mm = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep694 = getelementptr i8, ptr %scevgep693, i64 %i.mm
  %i.mn = shl nuw nsw i64 %wide.trip.count, 2     ; 8 uses
  %scevgep697 = getelementptr i8, ptr %scevgep696, i64 %i.mn
  %scevgep700 = getelementptr i8, ptr %scevgep699, i64 %i.mn
  %scevgep703 = getelementptr i8, ptr %scevgep702, i64 %i.mn
  %scevgep706 = getelementptr i8, ptr %scevgep705, i64 %i.mn
  %scevgep709 = getelementptr i8, ptr %scevgep708, i64 %i.mn
  %scevgep712 = getelementptr i8, ptr %scevgep711, i64 %i.mn
  %scevgep715.a = getelementptr i8, ptr %scevgep714, i64 %i.mn
  %scevgep717 = getelementptr i8, ptr %scevgep716, i64 %i.mn
  %i.mo = insertelement <8 x ptr> poison, ptr %i.ly, i64 0 ; 2 uses
  %i.mp = insertelement <8 x ptr> %i.mo, ptr %scevgep581.a, i64 1
  %i.mq = insertelement <8 x ptr> %i.mp, ptr %scevgep587.a, i64 3
  %i.mr = insertelement <8 x ptr> %i.mq, ptr %scevgep593.a, i64 5
  %i.ms = insertelement <8 x ptr> %i.mr, ptr %i.lv, i64 7
  %i.mt = shufflevector <8 x ptr> %i.ms, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.mu = insertelement <8 x ptr> poison, ptr %scevgep580, i64 0
  %i.mv = insertelement <8 x ptr> %i.mu, ptr %scevgep577, i64 1 ; 2 uses
  %i.mw = insertelement <8 x ptr> %i.mv, ptr %scevgep586, i64 2
  %i.mx = insertelement <8 x ptr> %i.mw, ptr %scevgep592, i64 4
  %i.my = insertelement <8 x ptr> %i.mx, ptr %scevgep598.a, i64 6
  %i.mz = shufflevector <8 x ptr> %i.my, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.na = shufflevector <8 x ptr> %i.mo, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.nb = insertelement <8 x ptr> %i.na, ptr %scevgep578.a, i64 0
  %i.nc = insertelement <8 x ptr> %i.nb, ptr %scevgep584.a, i64 2
  %i.nd = insertelement <8 x ptr> %i.nc, ptr %scevgep590.a, i64 4
  %i.ne = insertelement <8 x ptr> %i.nd, ptr %scevgep596.a, i64 6
  %i.nf = shufflevector <8 x ptr> %i.mv, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.ng = insertelement <8 x ptr> %i.nf, ptr %scevgep583, i64 1
  %i.nh = insertelement <8 x ptr> %i.ng, ptr %scevgep589, i64 3
  %i.ni = insertelement <8 x ptr> %i.nh, ptr %scevgep595, i64 5
  %i.nj = insertelement <8 x ptr> %i.ni, ptr %scevgep600, i64 7
  %i.nk = insertelement <8 x ptr> poison, ptr %i.lw, i64 0 ; 2 uses
  %i.nl = insertelement <8 x ptr> %i.nk, ptr %scevgep698.a, i64 1
  %i.nm = insertelement <8 x ptr> %i.nl, ptr %scevgep704.a, i64 3
  %i.nn = insertelement <8 x ptr> %i.nm, ptr %scevgep710.a, i64 5
  %i.no = insertelement <8 x ptr> %i.nn, ptr %i.lt, i64 7
  %i.np = shufflevector <8 x ptr> %i.no, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.nq = insertelement <8 x ptr> poison, ptr %scevgep697, i64 0
  %i.nr = insertelement <8 x ptr> %i.nq, ptr %scevgep694, i64 1 ; 2 uses
  %i.ns = insertelement <8 x ptr> %i.nr, ptr %scevgep703, i64 2
  %i.nt = insertelement <8 x ptr> %i.ns, ptr %scevgep709, i64 4
  %i.nu = insertelement <8 x ptr> %i.nt, ptr %scevgep715.a, i64 6
  %i.nv = shufflevector <8 x ptr> %i.nu, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.nw = shufflevector <8 x ptr> %i.nk, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.nx = insertelement <8 x ptr> %i.nw, ptr %scevgep695.a, i64 0
  %i.ny = insertelement <8 x ptr> %i.nx, ptr %scevgep701.a, i64 2
  %i.nz = insertelement <8 x ptr> %i.ny, ptr %scevgep707.a, i64 4
  %i.oa = insertelement <8 x ptr> %i.nz, ptr %scevgep713.a, i64 6
  %i.ob = shufflevector <8 x ptr> %i.nr, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.oc = insertelement <8 x ptr> %i.ob, ptr %scevgep700, i64 1
  %i.od = insertelement <8 x ptr> %i.oc, ptr %scevgep706, i64 3
  %i.oe = insertelement <8 x ptr> %i.od, ptr %scevgep712, i64 5
  %i.of = insertelement <8 x ptr> %i.oe, ptr %scevgep717, i64 7
  %min.iters.check765.a = icmp ult i32 %i.mg, 4
  %i.og = icmp ult <8 x ptr> %i.np, %i.nv
  %i.oh = icmp ult <8 x ptr> %i.oa, %i.of
  %i.oi = and <8 x i1> %i.oh, %i.og
  %rdx.op810 = or <8 x i1> %i.ln, %i.oi
  %i.oj = bitcast <8 x i1> %rdx.op810 to i8
  %.not = icmp eq i8 %i.oj, 0
  %min.iters.check767 = icmp ult i32 %i.mg, 16
  %i.ok = and i64 %wide.trip.count, 12
  %n.vec769 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.ol = shl nuw nsw i64 %n.vec769, 5
  %cmp.n784 = icmp eq i64 %n.vec769, %wide.trip.count
  %min.epilog.iters.check789 = icmp eq i64 %i.ok, 0
  %n.vec791 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.om = shl nuw nsw i64 %n.vec791, 5
  %cmp.n806 = icmp eq i64 %n.vec791, %wide.trip.count
  %min.iters.check648.a = icmp ult i32 %i.mi, 4
  %i.on = icmp ult <8 x ptr> %i.mt, %i.mz
  %i.oo = icmp ult <8 x ptr> %i.ne, %i.nj
  %i.op = and <8 x i1> %i.oo, %i.on
  %rdx.op = or <8 x i1> %i.lq, %i.op
  %i.oq = bitcast <8 x i1> %rdx.op to i8
  %.not811 = icmp eq i8 %i.oq, 0
  %min.iters.check650 = icmp ult i32 %i.mi, 16
  %i.or = and i64 %wide.trip.count428, 12
  %n.vec652 = and i64 %wide.trip.count428, 2147483632 ; 5 uses
  %i.os = shl nuw nsw i64 %n.vec652, 5
  %cmp.n667 = icmp eq i64 %n.vec652, %wide.trip.count428
  %min.epilog.iters.check672 = icmp eq i64 %i.or, 0
  %n.vec674 = and i64 %wide.trip.count428, 2147483644 ; 4 uses
  %i.ot = shl nuw nsw i64 %n.vec674, 5
  %cmp.n689 = icmp eq i64 %n.vec674, %wide.trip.count428
  br label %bb.c

.preheader388.loopexit:                           ; preds = %._crit_edge
  %i.ou = trunc nuw nsw i64 %indvars.iv.next431 to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.loopexit, %.noexc231
  %.0182.lcssa = phi ptr [ %i.lx, %.noexc231 ], [ %i.rp, %.preheader388.loopexit ]
  %.0181.lcssa = phi i32 [ 0, %.noexc231 ], [ %i.ou, %.preheader388.loopexit ] ; 6 uses
  %i.ov = icmp slt i32 %.0181.lcssa, %i.bk
  br i1 %i.ov, label %.lr.ph409, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph409:                                        ; preds = %.preheader388
  %i.ow = load i32, ptr %4, align 4, !tbaa !45    ; 4 uses
  %i.ox = icmp sgt i32 %i.ow, 0
  %i.oy = load i32, ptr %i.bo, align 8, !tbaa !48 ; 4 uses
  %i.oz = icmp sgt i32 %i.oy, 0
  %i.pa = zext i32 %.0181.lcssa to i64            ; 9 uses
  %wide.trip.count436 = zext i32 %i.ow to i64     ; 10 uses
  %wide.trip.count441 = zext i32 %i.oy to i64     ; 10 uses
  %i.pb = shl nuw nsw i64 %wide.trip.count441, 4
  %scevgep458.a = getelementptr i8, ptr %i.ly, i64 %i.pb
  %i.pc = add nuw nsw i64 %i.bu, %i.pa
  %i.pd = mul i64 %i.de, %i.pc
  %scevgep460 = getelementptr i8, ptr %i.lv, i64 %i.pd
  %i.pe = shl nuw nsw i64 %wide.trip.count441, 2  ; 4 uses
  %scevgep464.a = getelementptr i8, ptr %scevgep463.a, i64 %i.pe
  %i.pf = add nuw nsw i64 %i.bt, %i.pa
  %i.pg = mul i64 %i.dj, %i.pf
  %scevgep465 = getelementptr i8, ptr %i.lv, i64 %i.pg
  %scevgep467.a = getelementptr i8, ptr %scevgep466.a, i64 %i.pe
  %i.ph = add nsw i64 %i.bp, %i.pa
  %i.pi = mul i64 %i.dn, %i.ph
  %scevgep468 = getelementptr i8, ptr %i.lv, i64 %i.pi
  %scevgep470.a = getelementptr i8, ptr %scevgep469.a, i64 %i.pe
  %i.pj = mul i64 %i.dr, %i.pa
  %scevgep471 = getelementptr i8, ptr %i.lv, i64 %i.pj
  %scevgep473 = getelementptr i8, ptr %scevgep472.a, i64 %i.pe
  %i.pk = shl nuw nsw i64 %wide.trip.count436, 4
  %scevgep506.a = getelementptr i8, ptr %i.lw, i64 %i.pk
  %i.pl = add nuw nsw i64 %i.bu, %i.pa
  %i.pm = mul i64 %i.gt, %i.pl
  %scevgep508.a = getelementptr i8, ptr %i.lt, i64 %i.pm
  %i.pn = shl nuw nsw i64 %wide.trip.count436, 2  ; 4 uses
  %scevgep510 = getelementptr i8, ptr %scevgep509.a, i64 %i.pn
  %i.po = add nuw nsw i64 %i.bt, %i.pa
  %i.pp = mul i64 %i.gy, %i.po
  %scevgep511.a = getelementptr i8, ptr %i.lt, i64 %i.pp
  %scevgep513 = getelementptr i8, ptr %scevgep512.a, i64 %i.pn
  %i.pq = add nsw i64 %i.bp, %i.pa
  %i.pr = mul i64 %i.hc, %i.pq
  %scevgep514.a = getelementptr i8, ptr %i.lt, i64 %i.pr
  %scevgep516 = getelementptr i8, ptr %scevgep515.a, i64 %i.pn
  %i.ps = mul i64 %i.hg, %i.pa
end_hunk_0
begin_hunk_1_@_ZN4ncnn15LSTM_x86_avx51215create_pipelineERKNS_6OptionE.omp_outlined:bb.a

vec.epilog.middle.block805:                       ; preds = %vec.epilog.vector.body792
  br i1 %cmp.n806, label %.preheader387, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check786, %vec.epilog.iter.check788, %vec.epilog.middle.block805
  %indvars.iv.ph = phi i64 [ 0, %iter.check786 ], [ %n.vec791, %vec.epilog.middle.block805 ], [ %n.vec769, %vec.epilog.iter.check788 ]
  %.0180389.ph = phi ptr [ %i.tg, %iter.check786 ], [ %i.ty, %vec.epilog.middle.block805 ], [ %i.th, %vec.epilog.iter.check788 ]
  br label %.lr.ph

.preheader387:                                    ; preds = %.lr.ph, %middle.block783, %vec.epilog.middle.block805, %bb.c
  br i1 %i.mj, label %iter.check669, label %._crit_edge

iter.check669:                                    ; preds = %.preheader387
  %.not811.not = xor i1 %.not811, true
  %brmerge814 = select i1 %min.iters.check648.a, i1 true, i1 %.not811.not
  br i1 %brmerge814, label %.lr.ph393.preheader, label %vector.main.loop.iter.check649

vector.main.loop.iter.check649:                   ; preds = %iter.check669
  br i1 %min.iters.check650, label %vec.epilog.ph673, label %vector.ph651

vector.ph651:                                     ; preds = %vector.main.loop.iter.check649
  %i.up = getelementptr i8, ptr %i.te, i64 %i.os
  br label %vector.body653

vector.body653:                                   ; preds = %vector.ph651, %vector.body653
  %index654 = phi i64 [ 0, %vector.ph651 ], [ %index.next665, %vector.body653 ] ; 10 uses
  %i.uq = shl i64 %index654, 5
  %next.gep655 = getelementptr i8, ptr %i.te, i64 %i.uq
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %index654
  %wide.load656.a = load <16 x float>, ptr %i.ur, align 4, !tbaa !63, !alias.scope !243
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %index654
  %wide.load657.a = load <16 x float>, ptr %i.us, align 4, !tbaa !63, !alias.scope !244
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %index654
  %wide.load658.a = load <16 x float>, ptr %i.ut, align 4, !tbaa !63, !alias.scope !245
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %index654
  %wide.load659.a = load <16 x float>, ptr %i.uu, align 4, !tbaa !63, !alias.scope !246
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %index654
  %wide.load660.a = load <16 x float>, ptr %i.uv, align 4, !tbaa !63, !alias.scope !247
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %index654
  %wide.load661.a = load <16 x float>, ptr %i.uw, align 4, !tbaa !63, !alias.scope !248
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %index654
  %wide.load662 = load <16 x float>, ptr %i.ux, align 4, !tbaa !63, !alias.scope !249
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %index654
  %wide.load663 = load <16 x float>, ptr %i.uy, align 4, !tbaa !63, !alias.scope !250
  %i.uz = shufflevector <16 x float> %wide.load656.a, <16 x float> %wide.load657.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.va = shufflevector <16 x float> %wide.load658.a, <16 x float> %wide.load659.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.vb = shufflevector <16 x float> %wide.load660.a, <16 x float> %wide.load661.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.vc = shufflevector <16 x float> %wide.load662, <16 x float> %wide.load663, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.vd = shufflevector <32 x float> %i.uz, <32 x float> %i.va, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ve = shufflevector <32 x float> %i.vb, <32 x float> %i.vc, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec664 = shufflevector <64 x float> %i.vd, <64 x float> %i.ve, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec664, ptr %next.gep655, align 4, !tbaa !63, !alias.scope !251, !noalias !252
  %index.next665 = add nuw i64 %index654, 16      ; 2 uses
  %i.vf = icmp eq i64 %index.next665, %n.vec652
  br i1 %i.vf, label %middle.block666, label %vector.body653, !llvm.loop !202

middle.block666:                                  ; preds = %vector.body653
  br i1 %cmp.n667, label %._crit_edge, label %vec.epilog.iter.check671

vec.epilog.iter.check671:                         ; preds = %middle.block666
  br i1 %min.epilog.iters.check672, label %.lr.ph393.preheader, label %vec.epilog.ph673, !prof !242

vec.epilog.ph673:                                 ; preds = %vector.main.loop.iter.check649, %vec.epilog.iter.check671
  %vec.epilog.resume.val668 = phi i64 [ %n.vec652, %vec.epilog.iter.check671 ], [ 0, %vector.main.loop.iter.check649 ]
  %i.vg = getelementptr i8, ptr %i.te, i64 %i.ot
  br label %vec.epilog.vector.body675

vec.epilog.vector.body675:                        ; preds = %vec.epilog.vector.body675, %vec.epilog.ph673
  %index676 = phi i64 [ %vec.epilog.resume.val668, %vec.epilog.ph673 ], [ %index.next687, %vec.epilog.vector.body675 ] ; 10 uses
  %i.vh = shl i64 %index676, 5
  %next.gep677 = getelementptr i8, ptr %i.te, i64 %i.vh
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %index676
  %wide.load678.a = load <4 x float>, ptr %i.vi, align 4, !tbaa !63, !alias.scope !243
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %index676
  %wide.load679.a = load <4 x float>, ptr %i.vj, align 4, !tbaa !63, !alias.scope !244
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %index676
  %wide.load680.a = load <4 x float>, ptr %i.vk, align 4, !tbaa !63, !alias.scope !245
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %index676
  %wide.load681.a = load <4 x float>, ptr %i.vl, align 4, !tbaa !63, !alias.scope !246
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %index676
  %wide.load682.a = load <4 x float>, ptr %i.vm, align 4, !tbaa !63, !alias.scope !247
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %index676
  %wide.load683.a = load <4 x float>, ptr %i.vn, align 4, !tbaa !63, !alias.scope !248
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %index676
  %wide.load684 = load <4 x float>, ptr %i.vo, align 4, !tbaa !63, !alias.scope !249
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %index676
  %wide.load685 = load <4 x float>, ptr %i.vp, align 4, !tbaa !63, !alias.scope !250
  %i.vq = shufflevector <4 x float> %wide.load678.a, <4 x float> %wide.load679.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vr = shufflevector <4 x float> %wide.load680.a, <4 x float> %wide.load681.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vs = shufflevector <4 x float> %wide.load682.a, <4 x float> %wide.load683.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vt = shufflevector <4 x float> %wide.load684, <4 x float> %wide.load685, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vu = shufflevector <8 x float> %i.vq, <8 x float> %i.vr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vv = shufflevector <8 x float> %i.vs, <8 x float> %i.vt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec686 = shufflevector <16 x float> %i.vu, <16 x float> %i.vv, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec686, ptr %next.gep677, align 4, !tbaa !63, !alias.scope !251, !noalias !252
  %index.next687 = add nuw i64 %index676, 4       ; 2 uses
  %i.vw = icmp eq i64 %index.next687, %n.vec674
  br i1 %i.vw, label %vec.epilog.middle.block688, label %vec.epilog.vector.body675, !llvm.loop !203

vec.epilog.middle.block688:                       ; preds = %vec.epilog.vector.body675
  br i1 %cmp.n689, label %._crit_edge, label %.lr.ph393.preheader

.lr.ph393.preheader:                              ; preds = %iter.check669, %vec.epilog.iter.check671, %vec.epilog.middle.block688
  %indvars.iv425.ph = phi i64 [ 0, %iter.check669 ], [ %n.vec674, %vec.epilog.middle.block688 ], [ %n.vec652, %vec.epilog.iter.check671 ]
  %.0179391.ph = phi ptr [ %i.te, %iter.check669 ], [ %i.vg, %vec.epilog.middle.block688 ], [ %i.up, %vec.epilog.iter.check671 ]
  br label %.lr.ph393

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 9 uses
  %.0180389 = phi ptr [ %i.wu, %.lr.ph ], [ %.0180389.ph, %.lr.ph.preheader ] ; 9 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.rr, i64 %indvars.iv
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !63
  store float %i.vy, ptr %.0180389, align 4, !tbaa !63
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !63
  %i.wb = getelementptr inbounds nuw i8, ptr %.0180389, i64 4
  store float %i.wa, ptr %i.wb, align 4, !tbaa !63
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !63
  %i.we = getelementptr inbounds nuw i8, ptr %.0180389, i64 8
  store float %i.wd, ptr %i.we, align 4, !tbaa !63
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.sa, i64 %indvars.iv
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !63
  %i.wh = getelementptr inbounds nuw i8, ptr %.0180389, i64 12
  store float %i.wg, ptr %i.wh, align 4, !tbaa !63
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %indvars.iv
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !63
  %i.wk = getelementptr inbounds nuw i8, ptr %.0180389, i64 16
  store float %i.wj, ptr %i.wk, align 4, !tbaa !63
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %indvars.iv
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !63
  %i.wn = getelementptr inbounds nuw i8, ptr %.0180389, i64 20
  store float %i.wm, ptr %i.wn, align 4, !tbaa !63
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %indvars.iv
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !63
  %i.wq = getelementptr inbounds nuw i8, ptr %.0180389, i64 24
  store float %i.wp, ptr %i.wq, align 4, !tbaa !63
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !63
  %i.wt = getelementptr inbounds nuw i8, ptr %.0180389, i64 28
  store float %i.ws, ptr %i.wt, align 4, !tbaa !63
  %i.wu = getelementptr inbounds nuw i8, ptr %.0180389, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader387, label %.lr.ph, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph393, %middle.block666, %vec.epilog.middle.block688, %.preheader387
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 2 ; 3 uses
  %i.wv = icmp slt i64 %indvars.iv.next431, %invariant.op
  br i1 %i.wv, label %bb.c, label %.preheader388.loopexit, !llvm.loop !205

.lr.ph393:                                        ; preds = %.lr.ph393.preheader, %.lr.ph393
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %.lr.ph393 ], [ %indvars.iv425.ph, %.lr.ph393.preheader ] ; 9 uses
  %.0179391 = phi ptr [ %i.xt, %.lr.ph393 ], [ %.0179391.ph, %.lr.ph393.preheader ] ; 9 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv425
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !63
  store float %i.wx, ptr %.0179391, align 4, !tbaa !63
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv425
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !63
  %i.xa = getelementptr inbounds nuw i8, ptr %.0179391, i64 4
  store float %i.wz, ptr %i.xa, align 4, !tbaa !63
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv425
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !63
  %i.xd = getelementptr inbounds nuw i8, ptr %.0179391, i64 8
  store float %i.xc, ptr %i.xd, align 4, !tbaa !63
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.st, i64 %indvars.iv425
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !63
  %i.xg = getelementptr inbounds nuw i8, ptr %.0179391, i64 12
  store float %i.xf, ptr %i.xg, align 4, !tbaa !63
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.sv, i64 %indvars.iv425
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !63
  %i.xj = getelementptr inbounds nuw i8, ptr %.0179391, i64 16
  store float %i.xi, ptr %i.xj, align 4, !tbaa !63
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %indvars.iv425
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !63
  %i.xm = getelementptr inbounds nuw i8, ptr %.0179391, i64 20
  store float %i.xl, ptr %i.xm, align 4, !tbaa !63
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.sz, i64 %indvars.iv425
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !63
  %i.xp = getelementptr inbounds nuw i8, ptr %.0179391, i64 24
  store float %i.xo, ptr %i.xp, align 4, !tbaa !63
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv425
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !63
  %i.xs = getelementptr inbounds nuw i8, ptr %.0179391, i64 28
  store float %i.xr, ptr %i.xs, align 4, !tbaa !63
  %i.xt = getelementptr inbounds nuw i8, ptr %.0179391, i64 32
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !206

bb.d:                                             ; preds = %.lr.ph409, %._crit_edge406
  %indvar = phi i32 [ 0, %.lr.ph409 ], [ %indvar.next, %._crit_edge406 ] ; 5 uses
  %indvars.iv443 = phi i64 [ %i.pa, %.lr.ph409 ], [ %indvars.iv.next444, %._crit_edge406 ] ; 11 uses
  %.1183407 = phi ptr [ %.0182.lcssa, %.lr.ph409 ], [ %i.yt, %._crit_edge406 ] ; 5 uses
  %i.xu = add i32 %.0181.lcssa, %indvar
  %i.xv = lshr i32 %i.xu, 1
  %i.xw = sub i32 %.0181.lcssa, %indvar
  %i.xx = and i32 %i.xw, 1
  %i.xy = add nuw i32 %i.xv, %i.xx
  %i.xz = zext i32 %i.xy to i64
  %i.ya = mul i64 %i.gs, %i.xz                    ; 2 uses
  %scevgep505 = getelementptr i8, ptr %i.lw, i64 %i.ya
  %scevgep507 = getelementptr i8, ptr %scevgep506.a, i64 %i.ya
  %i.yb = add i32 %.0181.lcssa, %indvar
  %i.yc = lshr i32 %i.yb, 1
  %i.yd = sub i32 %.0181.lcssa, %indvar
  %i.ye = and i32 %i.yd, 1
  %i.yf = add nuw i32 %i.yc, %i.ye
  %i.yg = zext i32 %i.yf to i64
  %i.yh = mul i64 %i.dd, %i.yg                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ly, i64 %i.yh
  %scevgep459 = getelementptr i8, ptr %scevgep458.a, i64 %i.yh
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv443
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !63
  store float %i.yj, ptr %.1183407, align 4, !tbaa !63
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv443
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !63
  %i.ym = getelementptr inbounds nuw i8, ptr %.1183407, i64 4
  store float %i.yl, ptr %i.ym, align 4, !tbaa !63
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.ma, i64 %indvars.iv443
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !63
  %i.yp = getelementptr inbounds nuw i8, ptr %.1183407, i64 8
  store float %i.yo, ptr %i.yp, align 4, !tbaa !63
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv443
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !63
  %i.ys = getelementptr inbounds nuw i8, ptr %.1183407, i64 12
  store float %i.yr, ptr %i.ys, align 4, !tbaa !63
  %i.yt = getelementptr inbounds nuw i8, ptr %.1183407, i64 16
  %i.yu = mul i64 %i.gq, %indvars.iv443
  %i.yv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.yu ; 5 uses
  %i.yw = add nuw nsw i64 %indvars.iv443, %i.bp   ; 2 uses
  %i.yx = mul i64 %i.gq, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.yx ; 5 uses
  %i.yz = add nuw nsw i64 %indvars.iv443, %i.bt   ; 2 uses
  %i.za = mul i64 %i.gq, %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.za ; 5 uses
  %i.zc = add nuw nsw i64 %indvars.iv443, %i.bu   ; 2 uses
  %i.zd = mul i64 %i.gq, %i.zc
  %i.ze = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.zd ; 5 uses
  %i.zf = mul i64 %i.db, %indvars.iv443
  %i.zg = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.zf ; 5 uses
  %i.zh = mul i64 %i.db, %i.yw
  %i.zi = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.zh ; 5 uses
  %i.zj = mul i64 %i.db, %i.yz
  %i.zk = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.zj ; 5 uses
  %i.zl = mul i64 %i.db, %i.zc
  %i.zm = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.zl ; 5 uses
  %i.zn = trunc nuw nsw i64 %indvars.iv443 to i32 ; 2 uses
  %i.zo = lshr i32 %i.zn, 1
  %i.zp = and i32 %i.zn, 1
  %i.zq = add nuw nsw i32 %i.zo, %i.zp
  %i.zr = zext nneg i32 %i.zq to i64              ; 2 uses
  %i.zs = mul i64 %i.dc, %i.zr
  %i.zt = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.zs ; 6 uses
  br i1 %i.ox, label %iter.check556, label %.preheader

iter.check556:                                    ; preds = %bb.d
  %i.zu = mul i64 %i.gr, %i.zr
  %i.zv = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.zu ; 6 uses
  br i1 %min.iters.check539.a, label %.lr.ph402.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %iter.check556
  %i.zw = insertelement <4 x ptr> poison, ptr %scevgep505, i64 0
  %i.zx = shufflevector <4 x ptr> %i.zw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.zy = icmp ult <4 x ptr> %i.zx, %i.qe
  %i.zz = insertelement <4 x ptr> poison, ptr %scevgep507, i64 0
  %i.aaa = shufflevector <4 x ptr> %i.zz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aab = icmp ult <4 x ptr> %i.qi, %i.aaa
  %i.aac = and <4 x i1> %i.zy, %i.aab
  %i.aad = bitcast <4 x i1> %i.aac to i4
  %i.aae = icmp ne i4 %i.aad, 0
  %op.rdx809 = or i1 %i.aae, %stride.check527
  br i1 %op.rdx809, label %.lr.ph402.preheader, label %vector.main.loop.iter.check540

vector.main.loop.iter.check540:                   ; preds = %vector.memcheck504
  br i1 %min.iters.check541, label %vec.epilog.ph560, label %vector.ph542

vector.ph542:                                     ; preds = %vector.main.loop.iter.check540
  %i.aaf = getelementptr i8, ptr %i.zv, i64 %i.qk
  br label %vector.body544

vector.body544:                                   ; preds = %vector.ph542, %vector.body544
  %index545 = phi i64 [ 0, %vector.ph542 ], [ %index.next552, %vector.body544 ] ; 6 uses
  %i.aag = shl i64 %index545, 4
  %next.gep546 = getelementptr i8, ptr %i.zv, i64 %i.aag
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %index545
  %wide.load547.a = load <16 x float>, ptr %i.aah, align 4, !tbaa !63, !alias.scope !253
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %index545
  %wide.load548.a = load <16 x float>, ptr %i.aai, align 4, !tbaa !63, !alias.scope !254
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %index545
  %wide.load549 = load <16 x float>, ptr %i.aaj, align 4, !tbaa !63, !alias.scope !255
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %index545
  %wide.load550 = load <16 x float>, ptr %i.aak, align 4, !tbaa !63, !alias.scope !256
  %i.aal = shufflevector <16 x float> %wide.load547.a, <16 x float> %wide.load548.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aam = shufflevector <16 x float> %wide.load549, <16 x float> %wide.load550, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec551 = shufflevector <32 x float> %i.aal, <32 x float> %i.aam, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec551, ptr %next.gep546, align 4, !tbaa !63, !alias.scope !257, !noalias !258
  %index.next552 = add nuw i64 %index545, 16      ; 2 uses
  %i.aan = icmp eq i64 %index.next552, %n.vec543
  br i1 %i.aan, label %middle.block553, label %vector.body544, !llvm.loop !213

middle.block553:                                  ; preds = %vector.body544
  br i1 %cmp.n554, label %.preheader, label %vec.epilog.iter.check558

vec.epilog.iter.check558:                         ; preds = %middle.block553
  br i1 %min.epilog.iters.check559, label %.lr.ph402.preheader, label %vec.epilog.ph560, !prof !242

vec.epilog.ph560:                                 ; preds = %vector.main.loop.iter.check540, %vec.epilog.iter.check558
  %vec.epilog.resume.val555 = phi i64 [ %n.vec543, %vec.epilog.iter.check558 ], [ 0, %vector.main.loop.iter.check540 ]
  %i.aao = getelementptr i8, ptr %i.zv, i64 %i.ql
  br label %vec.epilog.vector.body562

vec.epilog.vector.body562:                        ; preds = %vec.epilog.vector.body562, %vec.epilog.ph560
  %index563 = phi i64 [ %vec.epilog.resume.val555, %vec.epilog.ph560 ], [ %index.next570, %vec.epilog.vector.body562 ] ; 6 uses
  %i.aap = shl i64 %index563, 4
  %next.gep564 = getelementptr i8, ptr %i.zv, i64 %i.aap
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %index563
  %wide.load565.a = load <4 x float>, ptr %i.aaq, align 4, !tbaa !63, !alias.scope !253
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %index563
  %wide.load566.a = load <4 x float>, ptr %i.aar, align 4, !tbaa !63, !alias.scope !254
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %index563
  %wide.load567 = load <4 x float>, ptr %i.aas, align 4, !tbaa !63, !alias.scope !255
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %index563
  %wide.load568 = load <4 x float>, ptr %i.aat, align 4, !tbaa !63, !alias.scope !256
  %i.aau = shufflevector <4 x float> %wide.load565.a, <4 x float> %wide.load566.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aav = shufflevector <4 x float> %wide.load567, <4 x float> %wide.load568, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec569 = shufflevector <8 x float> %i.aau, <8 x float> %i.aav, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec569, ptr %next.gep564, align 4, !tbaa !63, !alias.scope !257, !noalias !258
  %index.next570 = add nuw i64 %index563, 4       ; 2 uses
  %i.aaw = icmp eq i64 %index.next570, %n.vec561
  br i1 %i.aaw, label %vec.epilog.middle.block571, label %vec.epilog.vector.body562, !llvm.loop !214

vec.epilog.middle.block571:                       ; preds = %vec.epilog.vector.body562
  br i1 %cmp.n572, label %.preheader, label %.lr.ph402.preheader

.lr.ph402.preheader:                              ; preds = %iter.check556, %vector.memcheck504, %vec.epilog.iter.check558, %vec.epilog.middle.block571
  %indvars.iv433.ph = phi i64 [ 0, %iter.check556 ], [ 0, %vector.memcheck504 ], [ %n.vec543, %vec.epilog.iter.check558 ], [ %n.vec561, %vec.epilog.middle.block571 ] ; 7 uses
  %.0176399.ph = phi ptr [ %i.zv, %iter.check556 ], [ %i.zv, %vector.memcheck504 ], [ %i.aaf, %vec.epilog.iter.check558 ], [ %i.aao, %vec.epilog.middle.block571 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol

.lr.ph402.prol:                                   ; preds = %.lr.ph402.preheader
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv433.ph
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !63
  store float %i.aay, ptr %.0176399.ph, align 4, !tbaa !63
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv433.ph
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !63
  %i.abb = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 4
  store float %i.aba, ptr %i.abb, align 4, !tbaa !63
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv433.ph
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !63
  %i.abe = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 8
  store float %i.abd, ptr %i.abe, align 4, !tbaa !63
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv433.ph
  %i.abg = load float, ptr %i.abf, align 4, !tbaa !63
  %i.abh = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 12
  store float %i.abg, ptr %i.abh, align 4, !tbaa !63
  %i.abi = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 16
  %indvars.iv.next434.prol = or disjoint i64 %indvars.iv433.ph, 1
  br label %.lr.ph402.prol.loopexit

.lr.ph402.prol.loopexit:                          ; preds = %.lr.ph402.prol, %.lr.ph402.preheader
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %.lr.ph402.preheader ], [ %indvars.iv.next434.prol, %.lr.ph402.prol ]
  %.0176399.unr = phi ptr [ %.0176399.ph, %.lr.ph402.preheader ], [ %i.abi, %.lr.ph402.prol ]
  %i.abj = icmp eq i64 %indvars.iv433.ph, %i.qm
  br i1 %i.abj, label %.preheader, label %.lr.ph402

.preheader:                                       ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block553, %vec.epilog.middle.block571, %bb.d
  br i1 %i.oz, label %iter.check, label %._crit_edge406

iter.check:                                       ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph405.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.abk = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.abl = shufflevector <4 x ptr> %i.abk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abm = icmp ult <4 x ptr> %i.abl, %i.pw
  %i.abn = insertelement <4 x ptr> poison, ptr %scevgep459, i64 0
  %i.abo = shufflevector <4 x ptr> %i.abn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.abp = icmp ult <4 x ptr> %i.qa, %i.abo
  %i.abq = and <4 x i1> %i.abm, %i.abp
  %i.abr = bitcast <4 x i1> %i.abq to i4
  %i.abs = icmp ne i4 %i.abr, 0
  %op.rdx = or i1 %i.abs, %stride.check477
  br i1 %op.rdx, label %.lr.ph405.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check488, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abt = getelementptr i8, ptr %i.zt, i64 %i.qo
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.abu = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.zt, i64 %i.abu
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %index
  %wide.load = load <16 x float>, ptr %i.abv, align 4, !tbaa !63, !alias.scope !259
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %index
  %wide.load489.a = load <16 x float>, ptr %i.abw, align 4, !tbaa !63, !alias.scope !260
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %index
  %wide.load490.a = load <16 x float>, ptr %i.abx, align 4, !tbaa !63, !alias.scope !261
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %index
  %wide.load491 = load <16 x float>, ptr %i.aby, align 4, !tbaa !63, !alias.scope !262
  %i.abz = shufflevector <16 x float> %wide.load, <16 x float> %wide.load489.a, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aca = shufflevector <16 x float> %wide.load490.a, <16 x float> %wide.load491, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.abz, <32 x float> %i.aca, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !63, !alias.scope !263, !noalias !264
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.acb = icmp eq i64 %index.next, %n.vec
  br i1 %i.acb, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge406, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph405.preheader, label %vec.epilog.ph, !prof !242

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.acc = getelementptr i8, ptr %i.zt, i64 %i.qp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index493 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next500, %vec.epilog.vector.body ] ; 6 uses
  %i.acd = shl i64 %index493, 4
  %next.gep494 = getelementptr i8, ptr %i.zt, i64 %i.acd
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %index493
  %wide.load495.a = load <4 x float>, ptr %i.ace, align 4, !tbaa !63, !alias.scope !259
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %index493
  %wide.load496.a = load <4 x float>, ptr %i.acf, align 4, !tbaa !63, !alias.scope !260
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %index493
  %wide.load497.a = load <4 x float>, ptr %i.acg, align 4, !tbaa !63, !alias.scope !261
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %index493
  %wide.load498 = load <4 x float>, ptr %i.ach, align 4, !tbaa !63, !alias.scope !262
  %i.aci = shufflevector <4 x float> %wide.load495.a, <4 x float> %wide.load496.a, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acj = shufflevector <4 x float> %wide.load497.a, <4 x float> %wide.load498, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec499 = shufflevector <8 x float> %i.aci, <8 x float> %i.acj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec499, ptr %next.gep494, align 4, !tbaa !63, !alias.scope !263, !noalias !264
  %index.next500 = add nuw i64 %index493, 4       ; 2 uses
  %i.ack = icmp eq i64 %index.next500, %n.vec492
  br i1 %i.ack, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !222

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n501, label %._crit_edge406, label %.lr.ph405.preheader

.lr.ph405.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv438.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec492, %vec.epilog.middle.block ] ; 7 uses
  %.0175403.ph = phi ptr [ %i.zt, %iter.check ], [ %i.zt, %vector.memcheck ], [ %i.abt, %vec.epilog.iter.check ], [ %i.acc, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod813.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol

.lr.ph405.prol:                                   ; preds = %.lr.ph405.preheader
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv438.ph
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !63
  store float %i.acm, ptr %.0175403.ph, align 4, !tbaa !63
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv438.ph
  %i.aco = load float, ptr %i.acn, align 4, !tbaa !63
  %i.acp = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 4
  store float %i.aco, ptr %i.acp, align 4, !tbaa !63
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv438.ph
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !63
  %i.acs = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 8
  store float %i.acr, ptr %i.acs, align 4, !tbaa !63
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv438.ph
  %i.acu = load float, ptr %i.act, align 4, !tbaa !63
  %i.acv = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 12
  store float %i.acu, ptr %i.acv, align 4, !tbaa !63
  %i.acw = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 16
  %indvars.iv.next439.prol = or disjoint i64 %indvars.iv438.ph, 1
  br label %.lr.ph405.prol.loopexit

.lr.ph405.prol.loopexit:                          ; preds = %.lr.ph405.prol, %.lr.ph405.preheader
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %.lr.ph405.preheader ], [ %indvars.iv.next439.prol, %.lr.ph405.prol ]
  %.0175403.unr = phi ptr [ %.0175403.ph, %.lr.ph405.preheader ], [ %i.acw, %.lr.ph405.prol ]
  %i.acx = icmp eq i64 %indvars.iv438.ph, %i.qq
  br i1 %i.acx, label %._crit_edge406, label %.lr.ph405

.lr.ph402:                                        ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %.lr.ph402 ], [ %indvars.iv433.unr, %.lr.ph402.prol.loopexit ] ; 6 uses
  %.0176399 = phi ptr [ %i.adv, %.lr.ph402 ], [ %.0176399.unr, %.lr.ph402.prol.loopexit ] ; 9 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv433
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !63
  store float %i.acz, ptr %.0176399, align 4, !tbaa !63
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv433
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !63
  %i.adc = getelementptr inbounds nuw i8, ptr %.0176399, i64 4
  store float %i.adb, ptr %i.adc, align 4, !tbaa !63
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv433
  %i.ade = load float, ptr %i.add, align 4, !tbaa !63
  %i.adf = getelementptr inbounds nuw i8, ptr %.0176399, i64 8
  store float %i.ade, ptr %i.adf, align 4, !tbaa !63
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv433
  %i.adh = load float, ptr %i.adg, align 4, !tbaa !63
  %i.adi = getelementptr inbounds nuw i8, ptr %.0176399, i64 12
  store float %i.adh, ptr %i.adi, align 4, !tbaa !63
  %i.adj = getelementptr inbounds nuw i8, ptr %.0176399, i64 16
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 4 uses
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.yv, i64 %indvars.iv.next434
  %i.adl = load float, ptr %i.adk, align 4, !tbaa !63
  store float %i.adl, ptr %i.adj, align 4, !tbaa !63
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.yy, i64 %indvars.iv.next434
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !63
  %i.ado = getelementptr inbounds nuw i8, ptr %.0176399, i64 20
  store float %i.adn, ptr %i.ado, align 4, !tbaa !63
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.zb, i64 %indvars.iv.next434
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !63
  %i.adr = getelementptr inbounds nuw i8, ptr %.0176399, i64 24
  store float %i.adq, ptr %i.adr, align 4, !tbaa !63
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.ze, i64 %indvars.iv.next434
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !63
  %i.adu = getelementptr inbounds nuw i8, ptr %.0176399, i64 28
  store float %i.adt, ptr %i.adu, align 4, !tbaa !63
  %i.adv = getelementptr inbounds nuw i8, ptr %.0176399, i64 32
  %indvars.iv.next434.1 = add nuw nsw i64 %indvars.iv433, 2 ; 2 uses
  %exitcond437.not.1 = icmp eq i64 %indvars.iv.next434.1, %wide.trip.count436
  br i1 %exitcond437.not.1, label %.preheader, label %.lr.ph402, !llvm.loop !223

._crit_edge406:                                   ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405, %middle.block, %vec.epilog.middle.block, %.preheader
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %i.bs
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond447.not, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d, !llvm.loop !224

.lr.ph405:                                        ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.1, %.lr.ph405 ], [ %indvars.iv438.unr, %.lr.ph405.prol.loopexit ] ; 6 uses
  %.0175403 = phi ptr [ %i.aet, %.lr.ph405 ], [ %.0175403.unr, %.lr.ph405.prol.loopexit ] ; 9 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv438
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !63
  store float %i.adx, ptr %.0175403, align 4, !tbaa !63
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv438
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !63
  %i.aea = getelementptr inbounds nuw i8, ptr %.0175403, i64 4
  store float %i.adz, ptr %i.aea, align 4, !tbaa !63
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv438
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !63
  %i.aed = getelementptr inbounds nuw i8, ptr %.0175403, i64 8
  store float %i.aec, ptr %i.aed, align 4, !tbaa !63
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv438
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !63
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0175403, i64 12
  store float %i.aef, ptr %i.aeg, align 4, !tbaa !63
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0175403, i64 16
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 4 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %indvars.iv.next439
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !63
  store float %i.aej, ptr %i.aeh, align 4, !tbaa !63
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %indvars.iv.next439
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !63
  %i.aem = getelementptr inbounds nuw i8, ptr %.0175403, i64 20
  store float %i.ael, ptr %i.aem, align 4, !tbaa !63
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv.next439
  %i.aeo = load float, ptr %i.aen, align 4, !tbaa !63
  %i.aep = getelementptr inbounds nuw i8, ptr %.0175403, i64 24
  store float %i.aeo, ptr %i.aep, align 4, !tbaa !63
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.next439
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !63
  %i.aes = getelementptr inbounds nuw i8, ptr %.0175403, i64 28
  store float %i.aer, ptr %i.aes, align 4, !tbaa !63
  %i.aet = getelementptr inbounds nuw i8, ptr %.0175403, i64 32
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %exitcond442.not.1 = icmp eq i64 %indvars.iv.next439.1, %wide.trip.count441
  br i1 %exitcond442.not.1, label %._crit_edge406, label %.lr.ph405, !llvm.loop !225

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge406, %.preheader388
  %indvars.iv.next449 = add nsw i64 %indvars.iv448, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next449 to i32
  %exitcond451.not = icmp eq i32 %i.bw, %lftr.wideiv
  %indvar.next462 = add i64 %indvar461, 1
  br i1 %exitcond451.not, label %._crit_edge412, label %.noexc231

._crit_edge412:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
end_hunk_1
