Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.03?download=true
inline.NumInlined: 392
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs6_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_11SubcategoryNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str:bb.a
  %i.gw = load i64, ptr %1, align 1
  %i.gx = icmp ne i64 %i.gw, 8243110581547331405
  %i.gy = zext i1 %i.gx to i32
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %bb.ay, label %bb.bp

bb.ay:                                            ; preds = %bb.ax
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 24, ptr %i.ha, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.az:                                            ; preds = %bb.a
  %i.hb = load i128, ptr %1, align 1
  %i.hc = xor i128 %i.hb, 146762510120962197899692779380125298771
  %i.hd = getelementptr i8, ptr %1, i64 16
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = zext i8 %i.he to i128
  %i.hg = xor i128 %i.hf, 103
  %i.hh = or i128 %i.hc, %i.hg
  %i.hi = icmp ne i128 %i.hh, 0
  %i.hj = zext i1 %i.hi to i32
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.ba, label %bb.bq

bb.ba:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 25, ptr %i.hl, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bb:                                            ; preds = %bb.an
  %i.hm = load i32, ptr %1, align 1
  %i.hn = xor i32 %i.hm, 1785687365
  %i.ho = getelementptr i8, ptr %1, i64 4
  %i.hp = load i8, ptr %i.ho, align 1
  %i.hq = zext i8 %i.hp to i32
  %i.hr = xor i32 %i.hq, 105
  %i.hs = or i32 %i.hn, %i.hr
  %i.ht = icmp ne i32 %i.hs, 0
  %i.hu = zext i1 %i.ht to i32
  %i.hv = icmp eq i32 %i.hu, 0
  br i1 %i.hv, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 26, ptr %i.hw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bd:                                            ; preds = %bb.a
  %i.hx = load i64, ptr %1, align 1
  %i.hy = xor i64 %i.hx, 7956017139123711557
  %i.hz = getelementptr i8, ptr %1, i64 8
  %i.ia = load i8, ptr %i.hz, align 1
  %i.ib = zext i8 %i.ia to i64
  %i.ic = xor i64 %i.ib, 103
  %i.id = or i64 %i.hy, %i.ic
  %i.ie = icmp ne i64 %i.id, 0
  %i.if = zext i1 %i.ie to i32
  %i.ig = icmp eq i32 %i.if, 0
  br i1 %i.ig, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %bb.bd
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 27, ptr %i.ih, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bf:                                            ; preds = %bb.aj
  %i.ii = load i64, ptr %1, align 1
  %i.ij = xor i64 %i.ii, 8388362703419043651
  %i.ik = getelementptr i8, ptr %1, i64 3
  %i.il = load i64, ptr %i.ik, align 1
  %i.im = xor i64 %i.il, 7957695015293251440
  %i.in = or i64 %i.ij, %i.im
  %i.io = icmp ne i64 %i.in, 0
  %i.ip = zext i1 %i.io to i32
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.bg, label %bb.bq

bb.bg:                                            ; preds = %bb.bf
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 28, ptr %i.ir, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bh:                                            ; preds = %bb.bb
  %i.is = load i32, ptr %1, align 1
  %i.it = xor i32 %i.is, 1701344335
  %i.iu = getelementptr i8, ptr %1, i64 4
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i32
  %i.ix = xor i32 %i.iw, 114
  %i.iy = or i32 %i.it, %i.ix
  %i.iz = icmp ne i32 %i.iy, 0
  %i.ja = zext i1 %i.iz to i32
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 33, ptr %i.jc, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bj:                                            ; preds = %bb.bd
  %i.jd = load i64, ptr %1, align 1
  %i.je = xor i64 %i.jd, 8314035730082393932
  %i.jf = getelementptr i8, ptr %1, i64 8
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = zext i8 %i.jg to i64
  %i.ji = xor i64 %i.jh, 101
  %i.jj = or i64 %i.je, %i.ji
  %i.jk = icmp ne i64 %i.jj, 0
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 29, ptr %i.jn, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bj
  %i.jo = load i64, ptr %1, align 1
  %i.jp = xor i64 %i.jo, 8314035730081935445
  %i.jq = getelementptr i8, ptr %1, i64 8
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = zext i8 %i.jr to i64
  %i.jt = xor i64 %i.js, 101
  %i.ju = or i64 %i.jp, %i.jt
  %i.jv = icmp ne i64 %i.ju, 0
  %i.jw = zext i1 %i.jv to i32
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 30, ptr %i.jy, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bl
  %i.jz = load i64, ptr %1, align 1
  %i.ka = xor i64 %i.jz, 8097862922314804563
  %i.kb = getelementptr i8, ptr %1, i64 8
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = zext i8 %i.kc to i64
  %i.ke = xor i64 %i.kd, 115
  %i.kf = or i64 %i.ka, %i.ke
  %i.kg = icmp ne i64 %i.kf, 0
  %i.kh = zext i1 %i.kg to i32
  %i.ki = icmp eq i32 %i.kh, 0
  br i1 %i.ki, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 31, ptr %i.kj, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bp:                                            ; preds = %bb.ax
  %i.kk = load i64, ptr %1, align 1
  %i.kl = icmp ne i64 %i.kk, 8386668381669846851
  %i.km = zext i1 %i.kl to i32
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bh, %bb.bf, %bb.az, %bb.ar, %bb.ap, %bb.ah, %bb.af, %bb.bn, %bb.d, %bb.a, %bb.bp
  tail call void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 32, ptr %i.ko, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_6ScriptNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  switch i64 %2, label %bb.fg [
    i64 5, label %bb.b
    i64 10, label %bb.d
    i64 6, label %bb.f
    i64 8, label %bb.h
    i64 7, label %bb.j
    i64 11, label %bb.t
    i64 4, label %bb.ah
    i64 9, label %bb.ar
    i64 3, label %bb.br
    i64 22, label %bb.dj
    i64 12, label %bb.dn
    i64 13, label %bb.fb
    i64 2, label %bb.ff
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 1
  %i.c = xor i32 %i.b, 1634493537
  %i.d = getelementptr i8, ptr %1, i64 4
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = xor i32 %i.f, 109
  %i.h = or i32 %i.c, %i.g
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.l, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.d:                                             ; preds = %bb.a
  %i.m = load i64, ptr %1, align 1
  %i.n = xor i64 %i.m, 7163376964619955297
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i64
  %i.r = xor i64 %i.q, 27745
  %i.s = or i64 %i.n, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.al

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.f:                                             ; preds = %bb.a
  %i.x = load i32, ptr %1, align 1
  %i.y = xor i32 %i.x, 1650553441
  %i.z = getelementptr i8, ptr %1, i64 4
  %i.aa = load i16, ptr %i.z, align 1
  %i.ab = zext i16 %i.aa to i32
  %i.ac = xor i32 %i.ab, 25449
  %i.ad = or i32 %i.y, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %bb.x

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.ah, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.h:                                             ; preds = %bb.a
  %i.ai = load i64, ptr %1, align 1
  %i.aj = icmp ne i64 %i.ai, 7953754339781997153
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.am, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.j:                                             ; preds = %bb.a
  %i.an = load i32, ptr %1, align 1
  %i.ao = xor i32 %i.an, 1936029281
  %i.ap = getelementptr i8, ptr %1, i64 3
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = xor i32 %i.aq, 1851880563
  %i.as = or i32 %i.ao, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.aw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.l:                                             ; preds = %bb.h
  %i.ax = load i64, ptr %1, align 1
  %i.ay = icmp ne i64 %i.ax, 7310298145041965410
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.bb, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.n:                                             ; preds = %bb.b
  %i.bc = load i32, ptr %1, align 1
  %i.bd = xor i32 %i.bc, 1970102626
  %i.be = getelementptr i8, ptr %1, i64 4
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = xor i32 %i.bg, 109
  %i.bi = or i32 %i.bd, %i.bh
  %i.bj = icmp ne i32 %i.bi, 0
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.bm, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.p:                                             ; preds = %bb.n
  %i.bn = load i32, ptr %1, align 1
  %i.bo = xor i32 %i.bn, 1635017058
  %i.bp = getelementptr i8, ptr %1, i64 4
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = xor i32 %i.br, 107
  %i.bt = or i32 %i.bo, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.q, label %bb.bl

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 7, ptr %i.bx, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.r:                                             ; preds = %bb.j
  %i.by = load i32, ptr %1, align 1
  %i.bz = xor i32 %i.by, 1735288162
  %i.ca = getelementptr i8, ptr %1, i64 3
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = xor i32 %i.cb, 1768710503
  %i.cd = or i32 %i.bz, %i.cc
  %i.ce = icmp ne i32 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 8, ptr %i.ch, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.t:                                             ; preds = %bb.a
  %i.ci = load i64, ptr %1, align 1
  %i.cj = xor i64 %i.ci, 8387193905159957602
  %i.ck = getelementptr i8, ptr %1, i64 3
  %i.cl = load i64, ptr %i.ck, align 1
  %i.cm = xor i64 %i.cl, 8243122736236096355
  %i.cn = or i64 %i.cj, %i.cm
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.u, label %bb.fg

bb.u:                                             ; preds = %bb.t
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 9, ptr %i.cr, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.v:                                             ; preds = %bb.l
  %i.cs = load i64, ptr %1, align 1
  %i.ct = icmp ne i64 %i.cs, 8027225901646245730
  %i.cu = zext i1 %i.ct to i32
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.cw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.x:                                             ; preds = %bb.f
  %i.cx = load i32, ptr %1, align 1
  %i.cy = xor i32 %i.cx, 1751216738
  %i.cz = getelementptr i8, ptr %1, i64 4
  %i.da = load i16, ptr %i.cz, align 1
  %i.db = zext i16 %i.da to i32
  %i.dc = xor i32 %i.db, 26989
  %i.dd = or i32 %i.cy, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
end_hunk_0
begin_hunk_1_@_RNvXs7_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_6ScriptNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str:bb.a
  store i8 68, ptr %i.xw, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.ej:                                            ; preds = %bb.cp
  %i.xx = load i32, ptr %1, align 1
  %i.xy = xor i32 %i.xx, 1769109875
  %i.xz = getelementptr i8, ptr %1, i64 4
  %i.ya = load i16, ptr %i.xz, align 1
  %i.yb = zext i16 %i.ya to i32
  %i.yc = xor i32 %i.yb, 25441
  %i.yd = or i32 %i.xy, %i.yc
  %i.ye = icmp ne i32 %i.yd, 0
  %i.yf = zext i1 %i.ye to i32
  %i.yg = icmp eq i32 %i.yf, 0
  br i1 %i.yg, label %bb.ek, label %bb.ep

bb.ek:                                            ; preds = %bb.ej
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 69, ptr %i.yh, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.el:                                            ; preds = %bb.eh
  %i.yi = load i32, ptr %1, align 1
  %i.yj = xor i32 %i.yi, 1634165108
  %i.yk = getelementptr i8, ptr %1, i64 3
  %i.yl = load i32, ptr %i.yk, align 1
  %i.ym = xor i32 %i.yl, 1735355489
  %i.yn = or i32 %i.yj, %i.ym
  %i.yo = icmp ne i32 %i.yn, 0
  %i.yp = zext i1 %i.yo to i32
  %i.yq = icmp eq i32 %i.yp, 0
  br i1 %i.yq, label %bb.em, label %bb.fg

bb.em:                                            ; preds = %bb.el
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 70, ptr %i.yr, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.en:                                            ; preds = %bb.eb
  %i.ys = load i32, ptr %1, align 1
  %i.yt = xor i32 %i.ys, 1768776052
  %i.yu = getelementptr i8, ptr %1, i64 4
  %i.yv = load i8, ptr %i.yu, align 1
  %i.yw = zext i8 %i.yv to i32
  %i.yx = xor i32 %i.yw, 108
  %i.yy = or i32 %i.yt, %i.yx
  %i.yz = icmp ne i32 %i.yy, 0
  %i.za = zext i1 %i.yz to i32
  %i.zb = icmp eq i32 %i.za, 0
  br i1 %i.zb, label %bb.eo, label %bb.ex

bb.eo:                                            ; preds = %bb.en
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 71, ptr %i.zc, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.ep:                                            ; preds = %bb.ej
  %i.zd = load i32, ptr %1, align 1
  %i.ze = xor i32 %i.zd, 1970038132
  %i.zf = getelementptr i8, ptr %1, i64 4
  %i.zg = load i16, ptr %i.zf, align 1
  %i.zh = zext i16 %i.zg to i32
  %i.zi = xor i32 %i.zh, 30055
  %i.zj = or i32 %i.ze, %i.zi
  %i.zk = icmp ne i32 %i.zj, 0
  %i.zl = zext i1 %i.zk to i32
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 72, ptr %i.zn, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.er:                                            ; preds = %bb.ep
  %i.zo = load i32, ptr %1, align 1
  %i.zp = xor i32 %i.zo, 1633773684
  %i.zq = getelementptr i8, ptr %1, i64 4
  %i.zr = load i16, ptr %i.zq, align 1
  %i.zs = zext i16 %i.zr to i32
  %i.zt = xor i32 %i.zs, 24942
  %i.zu = or i32 %i.zp, %i.zt
  %i.zv = icmp ne i32 %i.zu, 0
  %i.zw = zext i1 %i.zv to i32
  %i.zx = icmp eq i32 %i.zw, 0
  br i1 %i.zx, label %bb.es, label %bb.fg

bb.es:                                            ; preds = %bb.er
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 73, ptr %i.zy, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.et:                                            ; preds = %bb.cz
  %i.zz = load i32, ptr %1, align 1
  %i.aaa = icmp ne i32 %i.zz, 1767991412
  %i.aab = zext i1 %i.aaa to i32
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 74, ptr %i.aad, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.ev:                                            ; preds = %bb.et
  %i.aae = load i32, ptr %1, align 1
  %i.aaf = icmp ne i32 %i.aae, 1835100276
  %i.aag = zext i1 %i.aaf to i32
  %i.aah = icmp eq i32 %i.aag, 0
  br i1 %i.aah, label %bb.ew, label %bb.fg

bb.ew:                                            ; preds = %bb.ev
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 75, ptr %i.aai, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.ex:                                            ; preds = %bb.en
  %i.aaj = load i32, ptr %1, align 1
  %i.aak = xor i32 %i.aaj, 1700948340
  %i.aal = getelementptr i8, ptr %1, i64 4
  %i.aam = load i8, ptr %i.aal, align 1
  %i.aan = zext i8 %i.aam to i32
  %i.aao = xor i32 %i.aan, 116
  %i.aap = or i32 %i.aak, %i.aao
  %i.aaq = icmp ne i32 %i.aap, 0
  %i.aar = zext i1 %i.aaq to i32
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bb.ey, label %bb.fg

bb.ey:                                            ; preds = %bb.ex
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 76, ptr %i.aat, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.ez:                                            ; preds = %bb.bx
  %i.aau = load i64, ptr %1, align 1
  %i.aav = icmp ne i64 %i.aau, 7523088829388319092
  %i.aaw = zext i1 %i.aav to i32
  %i.aax = icmp eq i32 %i.aaw, 0
  br i1 %i.aax, label %bb.fa, label %bb.fg

bb.fa:                                            ; preds = %bb.ez
  %i.aay = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 77, ptr %i.aay, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.fb:                                            ; preds = %bb.a
  %i.aaz = load i64, ptr %1, align 1
  %i.aba = xor i64 %i.aaz, 7451614741219014004
  %i.abb = getelementptr i8, ptr %1, i64 5
  %i.abc = load i64, ptr %i.abb, align 1
  %i.abd = xor i64 %i.abc, 7598242639445977460
  %i.abe = or i64 %i.aba, %i.abd
  %i.abf = icmp ne i64 %i.abe, 0
  %i.abg = zext i1 %i.abf to i32
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %bb.fc, label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 78, ptr %i.abi, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.fd:                                            ; preds = %bb.dh
  %i.abj = load i16, ptr %1, align 1
  %i.abk = xor i16 %i.abj, 24950
  %i.abl = getelementptr i8, ptr %1, i64 2
  %i.abm = load i8, ptr %i.abl, align 1
  %i.abn = zext i8 %i.abm to i16
  %i.abo = xor i16 %i.abn, 105
  %i.abp = or i16 %i.abk, %i.abo
  %i.abq = icmp ne i16 %i.abp, 0
  %i.abr = zext i1 %i.abq to i32
  %i.abs = icmp eq i32 %i.abr, 0
  br i1 %i.abs, label %bb.fe, label %bb.fg

bb.fe:                                            ; preds = %bb.fd
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 79, ptr %i.abt, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.ff:                                            ; preds = %bb.a
  %i.abu = load i16, ptr %1, align 1
  %i.abv = icmp ne i16 %i.abu, 27001
  %i.abw = zext i1 %i.abv to i32
  %i.abx = icmp eq i32 %i.abw, 0
  br i1 %i.abx, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.fd, %bb.fb, %bb.ez, %bb.ex, %bb.el, %bb.ed, %bb.dj, %bb.bh, %bb.t, %bb.ev, %bb.er, %bb.dx, %bb.a, %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.fi

bb.fh:                                            ; preds = %bb.ff
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 81, ptr %i.aby, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.fe, %bb.fc, %bb.fa, %bb.ey, %bb.ew, %bb.eu, %bb.es, %bb.eq, %bb.eo, %bb.em, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ec, %bb.ea, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dq, %bb.do, %bb.dm, %bb.dk, %bb.di, %bb.dg, %bb.de, %bb.dc, %bb.da, %bb.cy, %bb.cw, %bb.cu, %bb.cs, %bb.cq, %bb.co, %bb.cm, %bb.ck, %bb.ci, %bb.cg, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs8_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_8CategoryNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !20, !noundef !5
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !25, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !5, !nonnull !5 ; 8 uses
  switch i8 %i.a, label %default.unreachable96 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
  ]

default.unreachable96:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 4) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.k, %bb.g ], [ %i.h, %bb.d ], [ %i.n, %bb.j ], [ %i.i, %bb.e ], [ %i.l, %bb.h ], [ %i.j, %bb.f ], [ %i.m, %bb.i ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 5) #24
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 9) #24
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 6) #24
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6) #24
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 6) #24
  br label %bb.c

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 11) #24
  br label %bb.c

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 5) #24
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NtCs1qcNTItuk7F_13glyphs_reader9glyphdataNtB5_11SubcategoryNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !15, !noundef !5
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !25, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !5, !nonnull !5 ; 34 uses
  switch i8 %i.a, label %default.unreachable408 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.p
    i8 14, label %bb.q
    i8 15, label %bb.r
    i8 16, label %bb.s
    i8 17, label %bb.t
    i8 18, label %bb.u
    i8 19, label %bb.v
    i8 20, label %bb.w
    i8 21, label %bb.x
    i8 22, label %bb.y
    i8 23, label %bb.z
    i8 24, label %bb.aa
    i8 25, label %bb.ab
    i8 26, label %bb.ac
    i8 27, label %bb.ad
    i8 28, label %bb.ae
    i8 29, label %bb.af
    i8 30, label %bb.ag
    i8 31, label %bb.ah
    i8 32, label %bb.ai
    i8 33, label %bb.aj
  ]

default.unreachable408:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 7) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.x, %bb.t ], [ %i.h, %bb.d ], [ %i.an, %bb.aj ], [ %i.i, %bb.e ], [ %i.af, %bb.ab ], [ %i.j, %bb.f ], [ %i.am, %bb.ai ], [ %i.k, %bb.g ], [ %i.y, %bb.u ], [ %i.l, %bb.h ], [ %i.al, %bb.ah ], [ %i.m, %bb.i ], [ %i.ad, %bb.z ], [ %i.n, %bb.j ], [ %i.ak, %bb.ag ], [ %i.o, %bb.k ], [ %i.z, %bb.v ], [ %i.p, %bb.l ], [ %i.aj, %bb.af ], [ %i.q, %bb.m ], [ %i.ae, %bb.aa ], [ %i.r, %bb.n ], [ %i.ai, %bb.ae ], [ %i.s, %bb.o ], [ %i.aa, %bb.w ], [ %i.t, %bb.p ], [ %i.ah, %bb.ad ], [ %i.u, %bb.q ], [ %i.ac, %bb.y ], [ %i.v, %bb.r ], [ %i.ag, %bb.ac ], [ %i.w, %bb.s ], [ %i.ab, %bb.x ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 7) #24
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 4) #24
  br label %bb.c

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 11) #24
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 8) #24
  br label %bb.c

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 4) #24
  br label %bb.c

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 13) #24
  br label %bb.c

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 8) #24
  br label %bb.c

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 8) #24
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 8) #24
  br label %bb.c

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 5) #24
  br label %bb.c

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6) #24
  br label %bb.c

bb.o:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 5) #24
  br label %bb.c

bb.p:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 5) #24
  br label %bb.c

bb.q:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 6) #24
  br label %bb.c

bb.r:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 4) #24
  br label %bb.c

bb.s:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 6) #24
  br label %bb.c

bb.t:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 %i.f(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 11) #24
  br label %bb.c
end_hunk_1
