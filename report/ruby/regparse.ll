Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/regparse?download=true
inline.NumInlined: 253
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 11
begin_hunk_0_@fetch_token:bb.a
bb.cl:                                            ; preds = %bb.ck
  %i.hc = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.hd = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.he = tail call i32 %i.hd(ptr noundef %i.ha, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %i.hf = tail call i32 %i.hc(i32 noundef %i.he, i32 noundef 11, ptr noundef nonnull %i.l) #25
  %.not880 = icmp eq i32 %i.hf, 0
  br i1 %.not880, label %bb.cm, label %.loopexit

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.hg = load i32, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.hh = load i32, ptr %i.u, align 4, !tbaa !52
  %i.hi = icmp eq i32 %i.hg, %i.hh
  br i1 %i.hi, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hj = tail call i32 @onigenc_mbclen(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %i.hk = phi i32 [ %i.hj, %bb.cn ], [ %i.hg, %bb.cm ]
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr i8, ptr %i.bn, i64 %i.hl
  %i.hn = icmp ule ptr %i.ha, %i.hm
  %brmerge = or i1 %i.hn, %i.hb
  br i1 %brmerge, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ho = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.hp = tail call i32 %i.ho(ptr noundef nonnull %i.ha, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %i.hq = icmp eq i32 %i.hp, 125
  br i1 %i.hq, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.hr = load i32, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.hs = load i32, ptr %i.u, align 4, !tbaa !52
  %i.ht = icmp eq i32 %i.hr, %i.hs
  br i1 %i.ht, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hu = tail call i32 @onigenc_mbclen(ptr noundef nonnull %i.ha, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.hv = phi i32 [ %i.hu, %bb.cr ], [ %i.hr, %bb.cq ]
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr i8, ptr %i.ha, i64 %i.hw
  store ptr %i.hx, ptr %i.a, align 8, !tbaa !66
  store i32 4, ptr %0, align 8, !tbaa !93
  store i32 %i.gy, ptr %i.x, align 8, !tbaa !21
  br label %.thread986

bb.ct:                                            ; preds = %bb.co, %bb.cp
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !66
  br label %.thread986

bb.cu:                                            ; preds = %bb.cg
  %i.hy = and i32 %.pre1236, 536870912
  %.not879 = icmp eq i32 %i.hy, 0
  br i1 %.not879, label %.thread986, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hz = call fastcc i32 @scan_unsigned_hexadecimal_number(ptr noundef %i.a, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %i.l) ; 2 uses
  %i.ia = icmp slt i32 %i.hz, 0
  br i1 %i.ia, label %.loopexit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ib = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.ic = icmp eq ptr %i.ib, %i.bn
  %spec.select948 = select i1 %i.ic, i32 0, i32 %i.hz
  store i32 1, ptr %0, align 8, !tbaa !93
  store i32 16, ptr %i.q, align 8, !tbaa !94
  store i32 %spec.select948, ptr %i.x, align 8, !tbaa !21
  br label %.thread986

bb.cx:                                            ; preds = %bb.p
  %i.id = icmp ult ptr %i.bn, %2
  br i1 %i.id, label %bb.cy, label %.thread986

bb.cy:                                            ; preds = %bb.cx
  %i.ie = load i32, ptr %i.w, align 4, !tbaa !97
  %i.if = and i32 %i.ie, 16384
  %.not877 = icmp eq i32 %i.if, 0
  br i1 %.not877, label %.thread986, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ig = call fastcc i32 @scan_unsigned_hexadecimal_number(ptr noundef %i.a, ptr noundef nonnull %2, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %i.l) ; 3 uses
  %i.ih = icmp slt i32 %i.ig, -1
  br i1 %i.ih, label %.loopexit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ii = icmp slt i32 %i.ig, 0
  br i1 %i.ii, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ij = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.ik = icmp eq ptr %i.ij, %i.bn
  %spec.select949 = select i1 %i.ik, i32 0, i32 %i.ig
  store i32 4, ptr %0, align 8, !tbaa !93
  store i32 16, ptr %i.q, align 8, !tbaa !94
  store i32 %spec.select949, ptr %i.x, align 8, !tbaa !21
  br label %.thread986

bb.dc:                                            ; preds = %bb.p
  %i.il = icmp ult ptr %i.bn, %2
  br i1 %i.il, label %bb.dd, label %.thread986

bb.dd:                                            ; preds = %bb.dc
  %i.im = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.in = tail call i32 %i.im(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %i.io = icmp eq i32 %i.in, 123
  br i1 %i.io, label %bb.de, label %.thread986

bb.de:                                            ; preds = %bb.dd
  %i.ip = load i32, ptr %i.n, align 4, !tbaa !99
  %.not874 = icmp sgt i32 %i.ip, -1
  br i1 %.not874, label %.thread986, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.iq = load i32, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.ir = load i32, ptr %i.u, align 4, !tbaa !52
  %i.is = icmp eq i32 %i.iq, %i.ir
  br i1 %i.is, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.it = tail call i32 @onigenc_mbclen(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.dh

bb.dh:                                            ; preds = %bb.df, %bb.dg
  %i.iu = phi i32 [ %i.it, %bb.dg ], [ %i.iq, %bb.df ]
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr i8, ptr %i.bn, i64 %i.iv
  store ptr %i.iw, ptr %i.a, align 8, !tbaa !66
  %i.ix = call fastcc i32 @scan_unsigned_octal_number(ptr noundef %i.a, ptr noundef nonnull %2, i32 noundef 11, ptr noundef nonnull %i.l) ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 0
  br i1 %i.iy, label %.loopexit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.iz = load ptr, ptr %i.a, align 8, !tbaa !66  ; 6 uses
  %i.ja = icmp uge ptr %i.iz, %2                  ; 2 uses
  br i1 %i.ja, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jb = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.jc = tail call i32 %i.jb(ptr noundef %i.iz, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25 ; 2 uses
  %i.jd = load ptr, ptr %i.ae, align 8, !tbaa !69
  %i.je = tail call i32 %i.jd(i32 noundef %i.jc, i32 noundef 4, ptr noundef nonnull %i.l) #25
  %i.jf = icmp eq i32 %i.je, 0
  %i.jg = icmp ugt i32 %i.jc, 55
  %or.cond.not = or i1 %i.jg, %i.jf
  br i1 %or.cond.not, label %bb.dk, label %.loopexit

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.jh = load i32, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.ji = load i32, ptr %i.u, align 4, !tbaa !52
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.jk = tail call i32 @onigenc_mbclen(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.jl = phi i32 [ %i.jk, %bb.dl ], [ %i.jh, %bb.dk ]
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr i8, ptr %i.bn, i64 %i.jm
  %i.jo = icmp ule ptr %i.iz, %i.jn
  %brmerge1384 = or i1 %i.jo, %i.ja
  br i1 %brmerge1384, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.jp = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.jq = tail call i32 %i.jp(ptr noundef nonnull %i.iz, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %i.jr = icmp eq i32 %i.jq, 125
  br i1 %i.jr, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  %i.js = load i32, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.jt = load i32, ptr %i.u, align 4, !tbaa !52
  %i.ju = icmp eq i32 %i.js, %i.jt
  br i1 %i.ju, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jv = tail call i32 @onigenc_mbclen(ptr noundef nonnull %i.iz, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dp
  %i.jw = phi i32 [ %i.jv, %bb.dp ], [ %i.js, %bb.do ]
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr i8, ptr %i.iz, i64 %i.jx
  store ptr %i.jy, ptr %i.a, align 8, !tbaa !66
  store i32 4, ptr %0, align 8, !tbaa !93
  store i32 %i.ix, ptr %i.x, align 8, !tbaa !21
  br label %.thread986

bb.dr:                                            ; preds = %bb.dm, %bb.dn
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !66
  br label %.thread986

bb.ds:                                            ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p
  store ptr %i.au, ptr %i.a, align 8, !tbaa !66
  %i.jz = call i32 @onig_scan_unsigned_number(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.l) ; 6 uses
  %or.cond7 = icmp ugt i32 %i.jz, 1000
  br i1 %or.cond7, label %bb.dz, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ka = load i32, ptr %i.n, align 4, !tbaa !99
  %i.kb = and i32 %i.ka, 65536
  %.not869 = icmp eq i32 %i.kb, 0
  br i1 %.not869, label %bb.dz, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kc = getelementptr i8, ptr %3, i64 92
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !86 ; 2 uses
  %i.ke = icmp sle i32 %i.jz, %i.kd
  %i.kf = icmp samesign ult i32 %i.jz, 10
  %or.cond9 = or i1 %i.kf, %i.ke
  br i1 %or.cond9, label %bb.dv, label %bb.dz

bb.dv:                                            ; preds = %bb.du
  %i.kg = getelementptr i8, ptr %i.n, i64 8
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !60
  %i.ki = and i32 %i.kh, 32
  %.not870 = icmp eq i32 %i.ki, 0
  br i1 %.not870, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not1235 = icmp sgt i32 %i.jz, %i.kd
  br i1 %.not1235, label %.loopexit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.kj = getelementptr i8, ptr %3, i64 168
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !87 ; 2 uses
  %.not871 = icmp eq ptr %i.kk, null
  %i.kl = getelementptr i8, ptr %3, i64 104
  %i.km = select i1 %.not871, ptr %i.kl, ptr %i.kk
  %i.kn = zext nneg i32 %i.jz to i64
  %i.ko = getelementptr [8 x i8], ptr %i.km, i64 %i.kn
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !84
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %.loopexit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  store i32 7, ptr %0, align 8, !tbaa !93
  store i32 1, ptr %i.x, align 8, !tbaa !21
  %i.kr = getelementptr i8, ptr %0, i64 28
  store i32 %i.jz, ptr %i.kr, align 4, !tbaa !21
  %i.ks = getelementptr i8, ptr %0, i64 40
  store i32 0, ptr %i.ks, align 8, !tbaa !21
  %i.kt = getelementptr i8, ptr %0, i64 44
  store i32 0, ptr %i.kt, align 4, !tbaa !21
  br label %.thread986

bb.dz:                                            ; preds = %bb.dt, %bb.du, %bb.ds
  %i.ku = and i32 %i.bh, -2
  %or.cond11 = icmp eq i32 %i.ku, 56
  br i1 %or.cond11, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.kv = load i32, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.kw = load i32, ptr %i.u, align 4, !tbaa !52
  %i.kx = icmp eq i32 %i.kv, %i.kw
  br i1 %i.kx, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ky = tail call i32 @onigenc_mbclen(ptr noundef %i.au, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ea, %bb.eb
  %i.kz = phi i32 [ %i.ky, %bb.eb ], [ %i.kv, %bb.ea ]
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr i8, ptr %i.au, i64 %i.la
  store ptr %i.lb, ptr %i.a, align 8, !tbaa !66
  br label %.thread986

bb.ed:                                            ; preds = %bb.dz
  store ptr %i.au, ptr %i.a, align 8, !tbaa !66
  %i.lc = load i32, ptr %i.n, align 4, !tbaa !99
  %i.ld = and i32 %i.lc, 268435456
  %.not872 = icmp eq i32 %i.ld, 0
  br i1 %.not872, label %bb.eg, label %bb.ee

.thread:                                          ; preds = %bb.p
  %i.le = load i32, ptr %i.n, align 4, !tbaa !99
  %i.lf = and i32 %i.le, 268435456
  %.not872985 = icmp eq i32 %i.lf, 0
  br i1 %.not872985, label %.thread986, label %bb.ee

bb.ee:                                            ; preds = %.thread, %bb.ed
  %i.lg = phi ptr [ %i.bn, %.thread ], [ %i.au, %bb.ed ]
  %i.lh = icmp eq i32 %i.bh, 48
  %i.li = select i1 %i.lh, i32 2, i32 3
  %i.lj = call fastcc i32 @scan_unsigned_octal_number(ptr noundef %i.a, ptr noundef nonnull %2, i32 noundef %i.li, ptr noundef nonnull %i.l) ; 2 uses
  %or.cond13 = icmp ugt i32 %i.lj, 255
  br i1 %or.cond13, label %.loopexit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.lk = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.ll = icmp eq ptr %i.lk, %i.lg
  %spec.select953 = select i1 %i.ll, i32 0, i32 %i.lj
  store i32 1, ptr %0, align 8, !tbaa !93
  store i32 8, ptr %i.q, align 8, !tbaa !94
  store i32 %spec.select953, ptr %i.x, align 8, !tbaa !21
  br label %.thread986

bb.eg:                                            ; preds = %bb.ed
  %i.lm = load i32, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %i.ln = load i32, ptr %i.u, align 4, !tbaa !52
  %i.lo = icmp eq i32 %i.lm, %i.ln
  br i1 %i.lo, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.lp = tail call i32 @onigenc_mbclen(ptr noundef %i.au, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.lq = phi i32 [ %i.lp, %bb.eh ], [ %i.lm, %bb.eg ]
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr i8, ptr %i.au, i64 %i.lr
  store ptr %i.ls, ptr %i.a, align 8, !tbaa !66
  br label %.thread986

bb.ej:                                            ; preds = %bb.p
  %i.lt = icmp ult ptr %i.bn, %2
  br i1 %i.lt, label %bb.ek, label %.thread986

bb.ek:                                            ; preds = %bb.ej
  %i.lu = load i32, ptr %i.w, align 4, !tbaa !97
  %i.lv = and i32 %i.lu, 256
  %.not868 = icmp eq i32 %i.lv, 0
  br i1 %.not868, label %.thread986, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.lw = load i32, ptr %i.s, align 8, !tbaa !67
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.ly = load i8, ptr %i.bn, align 1, !tbaa !21
  %i.lz = zext i8 %i.ly to i32
  br label %bb.eo

bb.en:                                            ; preds = %bb.el
  %i.ma = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.mb = tail call i32 %i.ma(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1234 = load i32, ptr %i.s, align 8, !tbaa !67
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.mc = phi i32 [ 1, %bb.em ], [ %.pre1234, %bb.en ] ; 2 uses
  %i.md = phi i32 [ %i.lz, %bb.em ], [ %i.mb, %bb.en ] ; 2 uses
  %i.me = load i32, ptr %i.u, align 4, !tbaa !52
  %i.mf = icmp eq i32 %i.mc, %i.me
  br i1 %i.mf, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.mg = tail call i32 @onigenc_mbclen(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.mh = phi i32 [ %i.mg, %bb.ep ], [ %i.mc, %bb.eo ]
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr i8, ptr %i.bn, i64 %i.mi
  store ptr %i.mj, ptr %i.a, align 8, !tbaa !66
  switch i32 %i.md, label %bb.es [
    i32 60, label %bb.er
    i32 39, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq, %bb.eq
  %i.mk = call fastcc i32 @fetch_named_backref_token(i32 noundef %i.md, ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %.loopexit, label %.thread986

bb.es:                                            ; preds = %bb.eq
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !66
  tail call void (ptr, ptr, ...) @onig_syntax_warn(ptr noundef %3, ptr noundef nonnull @.str)
  br label %.thread986

bb.et:                                            ; preds = %bb.p
  %i.mm = icmp ult ptr %i.bn, %2
  br i1 %i.mm, label %bb.eu, label %bb.fd

bb.eu:                                            ; preds = %bb.et
  %i.mn = load i32, ptr %i.w, align 4, !tbaa !97
  %i.mo = and i32 %i.mn, 67108864
  %.not866 = icmp eq i32 %i.mo, 0
  br i1 %.not866, label %bb.fd, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.mp = load i32, ptr %i.s, align 8, !tbaa !67
  %i.mq = icmp eq i32 %i.mp, 1
  br i1 %i.mq, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.mr = load i8, ptr %i.bn, align 1, !tbaa !21
  %i.ms = zext i8 %i.mr to i32
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ev
  %i.mt = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.mu = tail call i32 %i.mt(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  %.pre1227 = load i32, ptr %i.s, align 8, !tbaa !67
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %i.mv = phi i32 [ 1, %bb.ew ], [ %.pre1227, %bb.ex ] ; 2 uses
  %i.mw = phi i32 [ %i.ms, %bb.ew ], [ %i.mu, %bb.ex ]
  %i.mx = load i32, ptr %i.u, align 4, !tbaa !52
  %i.my = icmp eq i32 %i.mv, %i.mx
  br i1 %i.my, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.mz = tail call i32 @onigenc_mbclen(ptr noundef %i.bn, ptr noundef nonnull %2, ptr noundef nonnull %i.l) #25
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez
  %i.na = phi i32 [ %i.mz, %bb.ez ], [ %i.mv, %bb.ey ]
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr i8, ptr %i.bn, i64 %i.nb
  store ptr %i.nc, ptr %i.a, align 8, !tbaa !66
  %i.nd = icmp eq i32 %i.mw, 123
  br i1 %i.nd, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.ne = call fastcc i32 @fetch_named_backref_token(i32 noundef 123, ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %3) ; 2 uses
  %i.nf = icmp slt i32 %i.ne, 0
  br i1 %i.nf, label %.loopexit, label %._crit_edge1228

end_hunk_0
