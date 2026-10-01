Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/crc32_chorba_c?download=true
begin_hunk_0_@crc32_chorba_32768_nondestructive:bb.a
bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fe
  %i.fu = add i64 %i.fh, %i.f, !nosanitize !14    ; 2 uses
  %i.fv = icmp uge i64 %i.fu, %i.f, !nosanitize !14
  %i.fw = and i1 %i.fg, %i.fv, !nosanitize !14
  br i1 %i.fw, label %bb.bs, label %bb.br, !prof !13, !nosanitize !14

bb.br:                                            ; preds = %bb.bq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @471, i64 %i.f, i64 %i.fu) #6, !nosanitize !14
  br label %bb.bs, !nosanitize !14

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %i.fx = load i64, ptr %i.ft, align 8, !tbaa !16
  %i.fy = xor i64 %i.fx, %i.fr                    ; 4 uses
  %i.fz = add nuw nsw i64 %i.n, 145               ; 3 uses
  %i.ga = icmp ult i64 %.0195, 31608
  br i1 %i.ga, label %bb.bu, label %bb.bt, !prof !13, !nosanitize !14

bb.bt:                                            ; preds = %bb.bs
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @472, i64 %i.fz) #6, !nosanitize !14
  br label %bb.bu, !nosanitize !14

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fz ; 2 uses
  %i.gc = icmp ult i64 %.0195, 9223372036854774648
  %i.gd = shl nuw nsw i64 %i.fz, 3
  %i.ge = add i64 %i.gd, %i.f, !nosanitize !14    ; 2 uses
  %i.gf = icmp uge i64 %i.ge, %i.f, !nosanitize !14
  %i.gg = and i1 %i.gc, %i.gf, !nosanitize !14
  br i1 %i.gg, label %bb.bw, label %bb.bv, !prof !13, !nosanitize !14

bb.bv:                                            ; preds = %bb.bu
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @473, i64 %i.f, i64 %i.ge) #6, !nosanitize !14
  br label %bb.bw, !nosanitize !14

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %i.gh = load i64, ptr %i.gb, align 8, !tbaa !16
  %i.gi = xor i64 %i.gh, %i.ah
  store i64 %i.gi, ptr %i.gb, align 8, !tbaa !16
  %i.gj = add nuw nsw i64 %i.n, 146               ; 3 uses
  %i.gk = icmp ult i64 %.0195, 31600
  br i1 %i.gk, label %bb.by, label %bb.bx, !prof !13, !nosanitize !14

bb.bx:                                            ; preds = %bb.bw
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @474, i64 %i.gj) #6, !nosanitize !14
  br label %bb.by, !nosanitize !14

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gj ; 2 uses
  %i.gm = icmp ult i64 %.0195, 9223372036854774640
  %i.gn = shl nuw nsw i64 %i.gj, 3
  %i.go = add i64 %i.gn, %i.f, !nosanitize !14    ; 2 uses
  %i.gp = icmp uge i64 %i.go, %i.f, !nosanitize !14
  %i.gq = and i1 %i.gm, %i.gp, !nosanitize !14
  br i1 %i.gq, label %bb.ca, label %bb.bz, !prof !13, !nosanitize !14

bb.bz:                                            ; preds = %bb.by
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @475, i64 %i.f, i64 %i.go) #6, !nosanitize !14
  br label %bb.ca, !nosanitize !14

bb.ca:                                            ; preds = %bb.by, %bb.bz
  %i.gr = load i64, ptr %i.gl, align 8, !tbaa !16
  %i.gs = xor i64 %i.gr, %i.bc
  store i64 %i.gs, ptr %i.gl, align 8, !tbaa !16
  %i.gt = add nuw nsw i64 %i.n, 147               ; 3 uses
  %i.gu = icmp ult i64 %.0195, 31592
  br i1 %i.gu, label %bb.cc, label %bb.cb, !prof !13, !nosanitize !14

bb.cb:                                            ; preds = %bb.ca
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @476, i64 %i.gt) #6, !nosanitize !14
  br label %bb.cc, !nosanitize !14

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gt ; 2 uses
  %i.gw = icmp ult i64 %.0195, 9223372036854774632
  %i.gx = shl nuw nsw i64 %i.gt, 3
  %i.gy = add i64 %i.gx, %i.f, !nosanitize !14    ; 2 uses
  %i.gz = icmp uge i64 %i.gy, %i.f, !nosanitize !14
  %i.ha = and i1 %i.gw, %i.gz, !nosanitize !14
  br i1 %i.ha, label %bb.ce, label %bb.cd, !prof !13, !nosanitize !14

bb.cd:                                            ; preds = %bb.cc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @477, i64 %i.f, i64 %i.gy) #6, !nosanitize !14
  br label %bb.ce, !nosanitize !14

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.hb = load i64, ptr %i.gv, align 8, !tbaa !16
  %i.hc = xor i64 %i.hb, %i.bx
  store i64 %i.hc, ptr %i.gv, align 8, !tbaa !16
  %i.hd = add nuw nsw i64 %i.n, 148               ; 3 uses
  %i.he = icmp ult i64 %.0195, 31584
  br i1 %i.he, label %bb.cg, label %bb.cf, !prof !13, !nosanitize !14

bb.cf:                                            ; preds = %bb.ce
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @478, i64 %i.hd) #6, !nosanitize !14
  br label %bb.cg, !nosanitize !14

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hd ; 2 uses
  %i.hg = icmp ult i64 %.0195, 9223372036854774624
  %i.hh = shl nuw nsw i64 %i.hd, 3
  %i.hi = add i64 %i.hh, %i.f, !nosanitize !14    ; 2 uses
  %i.hj = icmp uge i64 %i.hi, %i.f, !nosanitize !14
  %i.hk = and i1 %i.hg, %i.hj, !nosanitize !14
  br i1 %i.hk, label %bb.ci, label %bb.ch, !prof !13, !nosanitize !14

bb.ch:                                            ; preds = %bb.cg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @479, i64 %i.f, i64 %i.hi) #6, !nosanitize !14
  br label %bb.ci, !nosanitize !14

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.hl = load i64, ptr %i.hf, align 8, !tbaa !16
  %i.hm = xor i64 %i.hl, %i.cs
  store i64 %i.hm, ptr %i.hf, align 8, !tbaa !16
  %i.hn = add nuw nsw i64 %i.n, 149               ; 3 uses
  %i.ho = icmp ult i64 %.0195, 31576
  br i1 %i.ho, label %bb.ck, label %bb.cj, !prof !13, !nosanitize !14

bb.cj:                                            ; preds = %bb.ci
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @480, i64 %i.hn) #6, !nosanitize !14
  br label %bb.ck, !nosanitize !14

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hn ; 2 uses
  %i.hq = icmp ult i64 %.0195, 9223372036854774616
  %i.hr = shl nuw nsw i64 %i.hn, 3
  %i.hs = add i64 %i.hr, %i.f, !nosanitize !14    ; 2 uses
  %i.ht = icmp uge i64 %i.hs, %i.f, !nosanitize !14
  %i.hu = and i1 %i.hq, %i.ht, !nosanitize !14
  br i1 %i.hu, label %bb.cm, label %bb.cl, !prof !13, !nosanitize !14

bb.cl:                                            ; preds = %bb.ck
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @481, i64 %i.f, i64 %i.hs) #6, !nosanitize !14
  br label %bb.cm, !nosanitize !14

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.hv = load i64, ptr %i.hp, align 8, !tbaa !16
  %i.hw = xor i64 %i.hv, %i.dn
  store i64 %i.hw, ptr %i.hp, align 8, !tbaa !16
  %i.hx = add nuw nsw i64 %i.n, 150               ; 3 uses
  %i.hy = icmp ult i64 %.0195, 31568
  br i1 %i.hy, label %bb.co, label %bb.cn, !prof !13, !nosanitize !14

bb.cn:                                            ; preds = %bb.cm
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @482, i64 %i.hx) #6, !nosanitize !14
  br label %bb.co, !nosanitize !14

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.hx ; 2 uses
  %i.ia = icmp ult i64 %.0195, 9223372036854774608
  %i.ib = shl nuw nsw i64 %i.hx, 3
  %i.ic = add i64 %i.ib, %i.f, !nosanitize !14    ; 2 uses
  %i.id = icmp uge i64 %i.ic, %i.f, !nosanitize !14
  %i.ie = and i1 %i.ia, %i.id, !nosanitize !14
  br i1 %i.ie, label %bb.cq, label %bb.cp, !prof !13, !nosanitize !14

bb.cp:                                            ; preds = %bb.co
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @483, i64 %i.f, i64 %i.ic) #6, !nosanitize !14
  br label %bb.cq, !nosanitize !14

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.if = load i64, ptr %i.hz, align 8, !tbaa !16
  %i.ig = xor i64 %i.if, %i.ei
  store i64 %i.ig, ptr %i.hz, align 8, !tbaa !16
  %i.ih = add nuw nsw i64 %i.n, 151               ; 3 uses
  %i.ii = icmp ult i64 %.0195, 31560
  br i1 %i.ii, label %bb.cs, label %bb.cr, !prof !13, !nosanitize !14

bb.cr:                                            ; preds = %bb.cq
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @484, i64 %i.ih) #6, !nosanitize !14
  br label %bb.cs, !nosanitize !14

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ih ; 2 uses
  %i.ik = icmp ult i64 %.0195, 9223372036854774600
  %i.il = shl nuw nsw i64 %i.ih, 3
  %i.im = add i64 %i.il, %i.f, !nosanitize !14    ; 2 uses
  %i.in = icmp uge i64 %i.im, %i.f, !nosanitize !14
  %i.io = and i1 %i.ik, %i.in, !nosanitize !14
  br i1 %i.io, label %bb.cu, label %bb.ct, !prof !13, !nosanitize !14

bb.ct:                                            ; preds = %bb.cs
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @485, i64 %i.f, i64 %i.im) #6, !nosanitize !14
  br label %bb.cu, !nosanitize !14

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %i.ip = load i64, ptr %i.ij, align 8, !tbaa !16
  %i.iq = xor i64 %i.ip, %i.fd
  store i64 %i.iq, ptr %i.ij, align 8, !tbaa !16
  %i.ir = add nuw nsw i64 %i.n, 152               ; 3 uses
  %i.is = icmp ult i64 %.0195, 31552
  br i1 %i.is, label %bb.cw, label %bb.cv, !prof !13, !nosanitize !14

bb.cv:                                            ; preds = %bb.cu
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @486, i64 %i.ir) #6, !nosanitize !14
  br label %bb.cw, !nosanitize !14

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ir ; 2 uses
  %i.iu = icmp ult i64 %.0195, 9223372036854774592
  %i.iv = shl nuw i64 %i.ir, 3
  %i.iw = add i64 %i.iv, %i.f, !nosanitize !14    ; 2 uses
  %i.ix = icmp uge i64 %i.iw, %i.f, !nosanitize !14
  %i.iy = and i1 %i.iu, %i.ix, !nosanitize !14
  br i1 %i.iy, label %bb.cy, label %bb.cx, !prof !13, !nosanitize !14

bb.cx:                                            ; preds = %bb.cw
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @487, i64 %i.f, i64 %i.iw) #6, !nosanitize !14
  br label %bb.cy, !nosanitize !14

bb.cy:                                            ; preds = %bb.cw, %bb.cx
  %i.iz = load i64, ptr %i.it, align 8, !tbaa !16
  %i.ja = xor i64 %i.iz, %i.fy
  store i64 %i.ja, ptr %i.it, align 8, !tbaa !16
  %i.jb = add nuw nsw i64 %i.n, 183               ; 3 uses
  %i.jc = icmp ult i64 %.0195, 31304
  br i1 %i.jc, label %bb.da, label %bb.cz, !prof !13, !nosanitize !14

bb.cz:                                            ; preds = %bb.cy
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @488, i64 %i.jb) #6, !nosanitize !14
  br label %bb.da, !nosanitize !14

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jb ; 2 uses
  %i.je = icmp ult i64 %.0195, 9223372036854774344
  %i.jf = shl nuw i64 %i.jb, 3
  %i.jg = add i64 %i.jf, %i.f, !nosanitize !14    ; 2 uses
  %i.jh = icmp uge i64 %i.jg, %i.f, !nosanitize !14
  %i.ji = and i1 %i.je, %i.jh, !nosanitize !14
  br i1 %i.ji, label %bb.dc, label %bb.db, !prof !13, !nosanitize !14

bb.db:                                            ; preds = %bb.da
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @489, i64 %i.f, i64 %i.jg) #6, !nosanitize !14
  br label %bb.dc, !nosanitize !14

bb.dc:                                            ; preds = %bb.da, %bb.db
  %i.jj = load i64, ptr %i.jd, align 8, !tbaa !16
  %i.jk = xor i64 %i.jj, %i.ah
  store i64 %i.jk, ptr %i.jd, align 8, !tbaa !16
  %i.jl = add nuw nsw i64 %i.n, 184               ; 3 uses
  %i.jm = icmp ult i64 %.0195, 31296
  br i1 %i.jm, label %bb.de, label %bb.dd, !prof !13, !nosanitize !14

bb.dd:                                            ; preds = %bb.dc
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @490, i64 %i.jl) #6, !nosanitize !14
  br label %bb.de, !nosanitize !14

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jl ; 2 uses
  %i.jo = icmp ult i64 %.0195, 9223372036854774336
  %i.jp = shl nuw i64 %i.jl, 3
  %i.jq = add i64 %i.jp, %i.f, !nosanitize !14    ; 2 uses
  %i.jr = icmp uge i64 %i.jq, %i.f, !nosanitize !14
  %i.js = and i1 %i.jo, %i.jr, !nosanitize !14
  br i1 %i.js, label %bb.dg, label %bb.df, !prof !13, !nosanitize !14

bb.df:                                            ; preds = %bb.de
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @491, i64 %i.f, i64 %i.jq) #6, !nosanitize !14
  br label %bb.dg, !nosanitize !14

bb.dg:                                            ; preds = %bb.de, %bb.df
  %i.jt = load i64, ptr %i.jn, align 8, !tbaa !16
  %i.ju = xor i64 %i.jt, %i.bc
  store i64 %i.ju, ptr %i.jn, align 8, !tbaa !16
  %i.jv = add nuw nsw i64 %i.n, 185               ; 3 uses
  %i.jw = icmp ult i64 %.0195, 31288
  br i1 %i.jw, label %bb.di, label %bb.dh, !prof !13, !nosanitize !14

bb.dh:                                            ; preds = %bb.dg
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @492, i64 %i.jv) #6, !nosanitize !14
  br label %bb.di, !nosanitize !14

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.jv ; 2 uses
  %i.jy = icmp ult i64 %.0195, 9223372036854774328
  %i.jz = shl nuw i64 %i.jv, 3
  %i.ka = add i64 %i.jz, %i.f, !nosanitize !14    ; 2 uses
  %i.kb = icmp uge i64 %i.ka, %i.f, !nosanitize !14
  %i.kc = and i1 %i.jy, %i.kb, !nosanitize !14
  br i1 %i.kc, label %bb.dk, label %bb.dj, !prof !13, !nosanitize !14

bb.dj:                                            ; preds = %bb.di
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @493, i64 %i.f, i64 %i.ka) #6, !nosanitize !14
  br label %bb.dk, !nosanitize !14

bb.dk:                                            ; preds = %bb.di, %bb.dj
  %i.kd = load i64, ptr %i.jx, align 8, !tbaa !16
  %i.ke = xor i64 %i.kd, %i.bx
  store i64 %i.ke, ptr %i.jx, align 8, !tbaa !16
  %i.kf = add nuw nsw i64 %i.n, 186               ; 3 uses
  %i.kg = icmp ult i64 %.0195, 31280
  br i1 %i.kg, label %bb.dm, label %bb.dl, !prof !13, !nosanitize !14

bb.dl:                                            ; preds = %bb.dk
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @494, i64 %i.kf) #6, !nosanitize !14
  br label %bb.dm, !nosanitize !14

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kf ; 2 uses
  %i.ki = icmp ult i64 %.0195, 9223372036854774320
  %i.kj = shl nuw i64 %i.kf, 3
  %i.kk = add i64 %i.kj, %i.f, !nosanitize !14    ; 2 uses
  %i.kl = icmp uge i64 %i.kk, %i.f, !nosanitize !14
  %i.km = and i1 %i.ki, %i.kl, !nosanitize !14
  br i1 %i.km, label %bb.do, label %bb.dn, !prof !13, !nosanitize !14

bb.dn:                                            ; preds = %bb.dm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @495, i64 %i.f, i64 %i.kk) #6, !nosanitize !14
  br label %bb.do, !nosanitize !14

bb.do:                                            ; preds = %bb.dm, %bb.dn
  %i.kn = load i64, ptr %i.kh, align 8, !tbaa !16
  %i.ko = xor i64 %i.kn, %i.cs
  store i64 %i.ko, ptr %i.kh, align 8, !tbaa !16
  %i.kp = add nuw nsw i64 %i.n, 187               ; 3 uses
  %i.kq = icmp ult i64 %.0195, 31272
  br i1 %i.kq, label %bb.dq, label %bb.dp, !prof !13, !nosanitize !14

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @496, i64 %i.kp) #6, !nosanitize !14
  br label %bb.dq, !nosanitize !14

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kp ; 2 uses
  %i.ks = icmp ult i64 %.0195, 9223372036854774312
  %i.kt = shl nuw i64 %i.kp, 3
  %i.ku = add i64 %i.kt, %i.f, !nosanitize !14    ; 2 uses
  %i.kv = icmp uge i64 %i.ku, %i.f, !nosanitize !14
  %i.kw = and i1 %i.ks, %i.kv, !nosanitize !14
  br i1 %i.kw, label %bb.ds, label %bb.dr, !prof !13, !nosanitize !14

bb.dr:                                            ; preds = %bb.dq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @497, i64 %i.f, i64 %i.ku) #6, !nosanitize !14
  br label %bb.ds, !nosanitize !14

bb.ds:                                            ; preds = %bb.dq, %bb.dr
  %i.kx = load i64, ptr %i.kr, align 8, !tbaa !16
  %i.ky = xor i64 %i.kx, %i.dn
  store i64 %i.ky, ptr %i.kr, align 8, !tbaa !16
  %i.kz = add nuw nsw i64 %i.n, 188               ; 3 uses
  %i.la = icmp ult i64 %.0195, 31264
  br i1 %i.la, label %bb.du, label %bb.dt, !prof !13, !nosanitize !14

bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @498, i64 %i.kz) #6, !nosanitize !14
  br label %bb.du, !nosanitize !14

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.kz ; 2 uses
  %i.lc = icmp ult i64 %.0195, 9223372036854774304
  %i.ld = shl nuw i64 %i.kz, 3
  %i.le = add i64 %i.ld, %i.f, !nosanitize !14    ; 2 uses
  %i.lf = icmp uge i64 %i.le, %i.f, !nosanitize !14
  %i.lg = and i1 %i.lc, %i.lf, !nosanitize !14
  br i1 %i.lg, label %bb.dw, label %bb.dv, !prof !13, !nosanitize !14

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @499, i64 %i.f, i64 %i.le) #6, !nosanitize !14
  br label %bb.dw, !nosanitize !14

bb.dw:                                            ; preds = %bb.du, %bb.dv
  %i.lh = load i64, ptr %i.lb, align 8, !tbaa !16
  %i.li = xor i64 %i.lh, %i.ei
  store i64 %i.li, ptr %i.lb, align 8, !tbaa !16
  %i.lj = add nuw nsw i64 %i.n, 189               ; 3 uses
  %i.lk = icmp ult i64 %.0195, 31256
  br i1 %i.lk, label %bb.dy, label %bb.dx, !prof !13, !nosanitize !14

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @500, i64 %i.lj) #6, !nosanitize !14
  br label %bb.dy, !nosanitize !14

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.lj ; 2 uses
  %i.lm = icmp ult i64 %.0195, 9223372036854774296
  %i.ln = shl nuw i64 %i.lj, 3
  %i.lo = add i64 %i.ln, %i.f, !nosanitize !14    ; 2 uses
  %i.lp = icmp uge i64 %i.lo, %i.f, !nosanitize !14
  %i.lq = and i1 %i.lm, %i.lp, !nosanitize !14
  br i1 %i.lq, label %bb.ea, label %bb.dz, !prof !13, !nosanitize !14

bb.dz:                                            ; preds = %bb.dy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @501, i64 %i.f, i64 %i.lo) #6, !nosanitize !14
  br label %bb.ea, !nosanitize !14

bb.ea:                                            ; preds = %bb.dy, %bb.dz
  %i.lr = load i64, ptr %i.ll, align 8, !tbaa !16
  %i.ls = xor i64 %i.lr, %i.fd
  store i64 %i.ls, ptr %i.ll, align 8, !tbaa !16
  %i.lt = add nuw nsw i64 %i.n, 190               ; 3 uses
  %i.lu = icmp ult i64 %.0195, 31248
  br i1 %i.lu, label %bb.ec, label %bb.eb, !prof !13, !nosanitize !14

bb.eb:                                            ; preds = %bb.ea
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @502, i64 %i.lt) #6, !nosanitize !14
  br label %bb.ec, !nosanitize !14

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.lt ; 2 uses
  %i.lw = icmp ult i64 %.0195, 9223372036854774288
  %i.lx = shl nuw i64 %i.lt, 3
  %i.ly = add i64 %i.lx, %i.f, !nosanitize !14    ; 2 uses
  %i.lz = icmp uge i64 %i.ly, %i.f, !nosanitize !14
  %i.ma = and i1 %i.lw, %i.lz, !nosanitize !14
  br i1 %i.ma, label %bb.ee, label %bb.ed, !prof !13, !nosanitize !14

bb.ed:                                            ; preds = %bb.ec
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @503, i64 %i.f, i64 %i.ly) #6, !nosanitize !14
  br label %bb.ee, !nosanitize !14

bb.ee:                                            ; preds = %bb.ec, %bb.ed
  %i.mb = load i64, ptr %i.lv, align 8, !tbaa !16
  %i.mc = xor i64 %i.mb, %i.fy
  store i64 %i.mc, ptr %i.lv, align 8, !tbaa !16
  %i.md = add nuw nsw i64 %i.n, 211               ; 3 uses
  %i.me = icmp ult i64 %.0195, 31080
  br i1 %i.me, label %bb.eg, label %bb.ef, !prof !13, !nosanitize !14

bb.ef:                                            ; preds = %bb.ee
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @504, i64 %i.md) #6, !nosanitize !14
  br label %bb.eg, !nosanitize !14

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.md ; 2 uses
  %i.mg = icmp ult i64 %.0195, 9223372036854774120
  %i.mh = shl nuw i64 %i.md, 3
  %i.mi = add i64 %i.mh, %i.f, !nosanitize !14    ; 2 uses
  %i.mj = icmp uge i64 %i.mi, %i.f, !nosanitize !14
  %i.mk = and i1 %i.mg, %i.mj, !nosanitize !14
  br i1 %i.mk, label %bb.ei, label %bb.eh, !prof !13, !nosanitize !14

bb.eh:                                            ; preds = %bb.eg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @505, i64 %i.f, i64 %i.mi) #6, !nosanitize !14
  br label %bb.ei, !nosanitize !14

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.ml = load i64, ptr %i.mf, align 8, !tbaa !16
  %i.mm = xor i64 %i.ml, %i.ah
  store i64 %i.mm, ptr %i.mf, align 8, !tbaa !16
  %i.mn = add nuw nsw i64 %i.n, 212               ; 3 uses
  %i.mo = icmp ult i64 %.0195, 31072
  br i1 %i.mo, label %bb.ek, label %bb.ej, !prof !13, !nosanitize !14

bb.ej:                                            ; preds = %bb.ei
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @506, i64 %i.mn) #6, !nosanitize !14
  br label %bb.ek, !nosanitize !14

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.mn ; 2 uses
  %i.mq = icmp ult i64 %.0195, 9223372036854774112
  %i.mr = shl nuw i64 %i.mn, 3
  %i.ms = add i64 %i.mr, %i.f, !nosanitize !14    ; 2 uses
  %i.mt = icmp uge i64 %i.ms, %i.f, !nosanitize !14
  %i.mu = and i1 %i.mq, %i.mt, !nosanitize !14
  br i1 %i.mu, label %bb.em, label %bb.el, !prof !13, !nosanitize !14

bb.el:                                            ; preds = %bb.ek
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @507, i64 %i.f, i64 %i.ms) #6, !nosanitize !14
  br label %bb.em, !nosanitize !14

bb.em:                                            ; preds = %bb.ek, %bb.el
  %i.mv = load i64, ptr %i.mp, align 8, !tbaa !16
  %i.mw = xor i64 %i.mv, %i.bc
  store i64 %i.mw, ptr %i.mp, align 8, !tbaa !16
  %i.mx = add nuw nsw i64 %i.n, 213               ; 3 uses
  %i.my = icmp ult i64 %.0195, 31064
  br i1 %i.my, label %bb.eo, label %bb.en, !prof !13, !nosanitize !14

bb.en:                                            ; preds = %bb.em
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @508, i64 %i.mx) #6, !nosanitize !14
  br label %bb.eo, !nosanitize !14

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.mx ; 2 uses
  %i.na = icmp ult i64 %.0195, 9223372036854774104
  %i.nb = shl nuw i64 %i.mx, 3
  %i.nc = add i64 %i.nb, %i.f, !nosanitize !14    ; 2 uses
  %i.nd = icmp uge i64 %i.nc, %i.f, !nosanitize !14
  %i.ne = and i1 %i.na, %i.nd, !nosanitize !14
  br i1 %i.ne, label %bb.eq, label %bb.ep, !prof !13, !nosanitize !14

bb.ep:                                            ; preds = %bb.eo
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @509, i64 %i.f, i64 %i.nc) #6, !nosanitize !14
  br label %bb.eq, !nosanitize !14

bb.eq:                                            ; preds = %bb.eo, %bb.ep
  %i.nf = load i64, ptr %i.mz, align 8, !tbaa !16
  %i.ng = xor i64 %i.nf, %i.bx
  store i64 %i.ng, ptr %i.mz, align 8, !tbaa !16
  %i.nh = add nuw nsw i64 %i.n, 214               ; 3 uses
  %i.ni = icmp ult i64 %.0195, 31056
  br i1 %i.ni, label %bb.es, label %bb.er, !prof !13, !nosanitize !14

bb.er:                                            ; preds = %bb.eq
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @510, i64 %i.nh) #6, !nosanitize !14
  br label %bb.es, !nosanitize !14

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.nh ; 2 uses
  %i.nk = icmp ult i64 %.0195, 9223372036854774096
  %i.nl = shl nuw i64 %i.nh, 3
  %i.nm = add i64 %i.nl, %i.f, !nosanitize !14    ; 2 uses
  %i.nn = icmp uge i64 %i.nm, %i.f, !nosanitize !14
  %i.no = and i1 %i.nk, %i.nn, !nosanitize !14
  br i1 %i.no, label %bb.eu, label %bb.et, !prof !13, !nosanitize !14

bb.et:                                            ; preds = %bb.es
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @511, i64 %i.f, i64 %i.nm) #6, !nosanitize !14
  br label %bb.eu, !nosanitize !14

bb.eu:                                            ; preds = %bb.es, %bb.et
  %i.np = load i64, ptr %i.nj, align 8, !tbaa !16
  %i.nq = xor i64 %i.np, %i.cs
  store i64 %i.nq, ptr %i.nj, align 8, !tbaa !16
  %i.nr = add nuw nsw i64 %i.n, 215               ; 3 uses
  %i.ns = icmp ult i64 %.0195, 31048
  br i1 %i.ns, label %bb.ew, label %bb.ev, !prof !13, !nosanitize !14

bb.ev:                                            ; preds = %bb.eu
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @512, i64 %i.nr) #6, !nosanitize !14
  br label %bb.ew, !nosanitize !14

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.nr ; 2 uses
  %i.nu = icmp ult i64 %.0195, 9223372036854774088
  %i.nv = shl nuw i64 %i.nr, 3
  %i.nw = add i64 %i.nv, %i.f, !nosanitize !14    ; 2 uses
  %i.nx = icmp uge i64 %i.nw, %i.f, !nosanitize !14
  %i.ny = and i1 %i.nu, %i.nx, !nosanitize !14
  br i1 %i.ny, label %bb.ey, label %bb.ex, !prof !13, !nosanitize !14

bb.ex:                                            ; preds = %bb.ew
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @513, i64 %i.f, i64 %i.nw) #6, !nosanitize !14
  br label %bb.ey, !nosanitize !14

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %i.nz = load i64, ptr %i.nt, align 8, !tbaa !16
  %i.oa = xor i64 %i.nz, %i.dn
  store i64 %i.oa, ptr %i.nt, align 8, !tbaa !16
  %i.ob = add nuw nsw i64 %i.n, 216               ; 3 uses
  %i.oc = icmp ult i64 %.0195, 31040
  br i1 %i.oc, label %bb.fa, label %bb.ez, !prof !13, !nosanitize !14

bb.ez:                                            ; preds = %bb.ey
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @514, i64 %i.ob) #6, !nosanitize !14
  br label %bb.fa, !nosanitize !14

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ob ; 2 uses
  %i.oe = icmp ult i64 %.0195, 9223372036854774080
  %i.of = shl nuw i64 %i.ob, 3
  %i.og = add i64 %i.of, %i.f, !nosanitize !14    ; 2 uses
  %i.oh = icmp uge i64 %i.og, %i.f, !nosanitize !14
  %i.oi = and i1 %i.oe, %i.oh, !nosanitize !14
  br i1 %i.oi, label %bb.fc, label %bb.fb, !prof !13, !nosanitize !14

bb.fb:                                            ; preds = %bb.fa
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @515, i64 %i.f, i64 %i.og) #6, !nosanitize !14
  br label %bb.fc, !nosanitize !14

bb.fc:                                            ; preds = %bb.fa, %bb.fb
  %i.oj = load i64, ptr %i.od, align 8, !tbaa !16
  %i.ok = xor i64 %i.oj, %i.ei
  store i64 %i.ok, ptr %i.od, align 8, !tbaa !16
  %i.ol = add nuw nsw i64 %i.n, 217               ; 3 uses
  %i.om = icmp ult i64 %.0195, 31032
  br i1 %i.om, label %bb.fe, label %bb.fd, !prof !13, !nosanitize !14

bb.fd:                                            ; preds = %bb.fc
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @516, i64 %i.ol) #6, !nosanitize !14
  br label %bb.fe, !nosanitize !14

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ol ; 2 uses
  %i.oo = icmp ult i64 %.0195, 9223372036854774072
  %i.op = shl nuw i64 %i.ol, 3
  %i.oq = add i64 %i.op, %i.f, !nosanitize !14    ; 2 uses
  %i.or = icmp uge i64 %i.oq, %i.f, !nosanitize !14
  %i.os = and i1 %i.oo, %i.or, !nosanitize !14
  br i1 %i.os, label %bb.fg, label %bb.ff, !prof !13, !nosanitize !14

bb.ff:                                            ; preds = %bb.fe
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @517, i64 %i.f, i64 %i.oq) #6, !nosanitize !14
  br label %bb.fg, !nosanitize !14

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  %i.ot = load i64, ptr %i.on, align 8, !tbaa !16
  %i.ou = xor i64 %i.ot, %i.fd
  store i64 %i.ou, ptr %i.on, align 8, !tbaa !16
  %i.ov = add nuw nsw i64 %i.n, 218               ; 3 uses
  %i.ow = icmp ult i64 %.0195, 31024
  br i1 %i.ow, label %bb.fi, label %bb.fh, !prof !13, !nosanitize !14

bb.fh:                                            ; preds = %bb.fg
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @518, i64 %i.ov) #6, !nosanitize !14
  br label %bb.fi, !nosanitize !14

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ov ; 2 uses
  %i.oy = icmp ult i64 %.0195, 9223372036854774064
  %i.oz = shl nuw i64 %i.ov, 3
  %i.pa = add i64 %i.oz, %i.f, !nosanitize !14    ; 2 uses
  %i.pb = icmp uge i64 %i.pa, %i.f, !nosanitize !14
  %i.pc = and i1 %i.oy, %i.pb, !nosanitize !14
  br i1 %i.pc, label %bb.fk, label %bb.fj, !prof !13, !nosanitize !14

bb.fj:                                            ; preds = %bb.fi
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @519, i64 %i.f, i64 %i.pa) #6, !nosanitize !14
  br label %bb.fk, !nosanitize !14

bb.fk:                                            ; preds = %bb.fi, %bb.fj
  %i.pd = load i64, ptr %i.ox, align 8, !tbaa !16
  %i.pe = xor i64 %i.pd, %i.fy
  store i64 %i.pe, ptr %i.ox, align 8, !tbaa !16
  %i.pf = add nuw nsw i64 %i.n, 300               ; 3 uses
  %i.pg = icmp ult i64 %.0195, 30368
  br i1 %i.pg, label %bb.fm, label %bb.fl, !prof !13, !nosanitize !14

bb.fl:                                            ; preds = %bb.fk
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @520, i64 %i.pf) #6, !nosanitize !14
  br label %bb.fm, !nosanitize !14

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pf
  %i.pi = icmp ult i64 %.0195, 9223372036854773408
  %i.pj = shl nuw i64 %i.pf, 3
  %i.pk = add i64 %i.pj, %i.f, !nosanitize !14    ; 2 uses
  %i.pl = icmp uge i64 %i.pk, %i.f, !nosanitize !14
  %i.pm = and i1 %i.pi, %i.pl, !nosanitize !14
  br i1 %i.pm, label %bb.fo, label %bb.fn, !prof !13, !nosanitize !14

bb.fn:                                            ; preds = %bb.fm
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @521, i64 %i.f, i64 %i.pk) #6, !nosanitize !14
  br label %bb.fo, !nosanitize !14

bb.fo:                                            ; preds = %bb.fm, %bb.fn
  store i64 %i.ah, ptr %i.ph, align 8, !tbaa !16
  %i.pn = add nuw nsw i64 %i.n, 301               ; 3 uses
  %i.po = icmp ult i64 %.0195, 30360
  br i1 %i.po, label %bb.fq, label %bb.fp, !prof !13, !nosanitize !14

bb.fp:                                            ; preds = %bb.fo
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @522, i64 %i.pn) #6, !nosanitize !14
  br label %bb.fq, !nosanitize !14

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pn
  %i.pq = icmp ult i64 %.0195, 9223372036854773400
  %i.pr = shl nuw i64 %i.pn, 3
  %i.ps = add i64 %i.pr, %i.f, !nosanitize !14    ; 2 uses
  %i.pt = icmp uge i64 %i.ps, %i.f, !nosanitize !14
  %i.pu = and i1 %i.pq, %i.pt, !nosanitize !14
  br i1 %i.pu, label %bb.fs, label %bb.fr, !prof !13, !nosanitize !14

bb.fr:                                            ; preds = %bb.fq
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @523, i64 %i.f, i64 %i.ps) #6, !nosanitize !14
  br label %bb.fs, !nosanitize !14

bb.fs:                                            ; preds = %bb.fq, %bb.fr
  store i64 %i.bc, ptr %i.pp, align 8, !tbaa !16
  %i.pv = add nuw nsw i64 %i.n, 302               ; 3 uses
  %i.pw = icmp ult i64 %.0195, 30352
  br i1 %i.pw, label %bb.fu, label %bb.ft, !prof !13, !nosanitize !14

bb.ft:                                            ; preds = %bb.fs
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @524, i64 %i.pv) #6, !nosanitize !14
  br label %bb.fu, !nosanitize !14

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pv
  %i.py = icmp ult i64 %.0195, 9223372036854773392
  %i.pz = shl nuw i64 %i.pv, 3
  %i.qa = add i64 %i.pz, %i.f, !nosanitize !14    ; 2 uses
  %i.qb = icmp uge i64 %i.qa, %i.f, !nosanitize !14
  %i.qc = and i1 %i.py, %i.qb, !nosanitize !14
  br i1 %i.qc, label %bb.fw, label %bb.fv, !prof !13, !nosanitize !14

bb.fv:                                            ; preds = %bb.fu
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @525, i64 %i.f, i64 %i.qa) #6, !nosanitize !14
  br label %bb.fw, !nosanitize !14

bb.fw:                                            ; preds = %bb.fu, %bb.fv
  store i64 %i.bx, ptr %i.px, align 8, !tbaa !16
  %i.qd = add nuw nsw i64 %i.n, 303               ; 3 uses
  %i.qe = icmp ult i64 %.0195, 30344
  br i1 %i.qe, label %bb.fy, label %bb.fx, !prof !13, !nosanitize !14

bb.fx:                                            ; preds = %bb.fw
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @526, i64 %i.qd) #6, !nosanitize !14
  br label %bb.fy, !nosanitize !14

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qd
  %i.qg = icmp ult i64 %.0195, 9223372036854773384
  %i.qh = shl nuw i64 %i.qd, 3
  %i.qi = add i64 %i.qh, %i.f, !nosanitize !14    ; 2 uses
  %i.qj = icmp uge i64 %i.qi, %i.f, !nosanitize !14
  %i.qk = and i1 %i.qg, %i.qj, !nosanitize !14
  br i1 %i.qk, label %bb.ga, label %bb.fz, !prof !13, !nosanitize !14

bb.fz:                                            ; preds = %bb.fy
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @527, i64 %i.f, i64 %i.qi) #6, !nosanitize !14
  br label %bb.ga, !nosanitize !14

bb.ga:                                            ; preds = %bb.fy, %bb.fz
  store i64 %i.cs, ptr %i.qf, align 8, !tbaa !16
  %i.ql = add nuw nsw i64 %i.n, 304               ; 3 uses
  %i.qm = icmp ult i64 %.0195, 30336
  br i1 %i.qm, label %bb.gc, label %bb.gb, !prof !13, !nosanitize !14

bb.gb:                                            ; preds = %bb.ga
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @528, i64 %i.ql) #6, !nosanitize !14
  br label %bb.gc, !nosanitize !14

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ql
  %i.qo = icmp ult i64 %.0195, 9223372036854773376
  %i.qp = shl nuw i64 %i.ql, 3
  %i.qq = add i64 %i.qp, %i.f, !nosanitize !14    ; 2 uses
  %i.qr = icmp uge i64 %i.qq, %i.f, !nosanitize !14
  %i.qs = and i1 %i.qo, %i.qr, !nosanitize !14
  br i1 %i.qs, label %bb.ge, label %bb.gd, !prof !13, !nosanitize !14

bb.gd:                                            ; preds = %bb.gc
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @529, i64 %i.f, i64 %i.qq) #6, !nosanitize !14
  br label %bb.ge, !nosanitize !14

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  store i64 %i.dn, ptr %i.qn, align 8, !tbaa !16
  %i.qt = add nuw nsw i64 %i.n, 305               ; 3 uses
  %i.qu = icmp ult i64 %.0195, 30328
  br i1 %i.qu, label %bb.gg, label %bb.gf, !prof !13, !nosanitize !14

bb.gf:                                            ; preds = %bb.ge
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @530, i64 %i.qt) #6, !nosanitize !14
  br label %bb.gg, !nosanitize !14

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.qt
  %i.qw = icmp ult i64 %.0195, 9223372036854773368
  %i.qx = shl nuw i64 %i.qt, 3
  %i.qy = add i64 %i.qx, %i.f, !nosanitize !14    ; 2 uses
  %i.qz = icmp uge i64 %i.qy, %i.f, !nosanitize !14
  %i.ra = and i1 %i.qw, %i.qz, !nosanitize !14
  br i1 %i.ra, label %bb.gi, label %bb.gh, !prof !13, !nosanitize !14

bb.gh:                                            ; preds = %bb.gg
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @531, i64 %i.f, i64 %i.qy) #6, !nosanitize !14
  br label %bb.gi, !nosanitize !14

bb.gi:                                            ; preds = %bb.gg, %bb.gh
  store i64 %i.ei, ptr %i.qv, align 8, !tbaa !16
  %i.rb = add nuw nsw i64 %i.n, 306               ; 3 uses
  %i.rc = icmp ult i64 %.0195, 30320
  br i1 %i.rc, label %bb.gk, label %bb.gj, !prof !13, !nosanitize !14

bb.gj:                                            ; preds = %bb.gi
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @532, i64 %i.rb) #6, !nosanitize !14
  br label %bb.gk, !nosanitize !14

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rb
  %i.re = icmp ult i64 %.0195, 9223372036854773360
  %i.rf = shl nuw i64 %i.rb, 3
  %i.rg = add i64 %i.rf, %i.f, !nosanitize !14    ; 2 uses
  %i.rh = icmp uge i64 %i.rg, %i.f, !nosanitize !14
  %i.ri = and i1 %i.re, %i.rh, !nosanitize !14
  br i1 %i.ri, label %bb.gm, label %bb.gl, !prof !13, !nosanitize !14

bb.gl:                                            ; preds = %bb.gk
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @533, i64 %i.f, i64 %i.rg) #6, !nosanitize !14
  br label %bb.gm, !nosanitize !14

bb.gm:                                            ; preds = %bb.gk, %bb.gl
  store i64 %i.fd, ptr %i.rd, align 8, !tbaa !16
  %i.rj = add nuw nsw i64 %i.n, 307               ; 3 uses
  %i.rk = icmp ult i64 %.0195, 30312
  br i1 %i.rk, label %bb.go, label %bb.gn, !prof !13, !nosanitize !14

bb.gn:                                            ; preds = %bb.gm
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @534, i64 %i.rj) #6, !nosanitize !14
  br label %bb.go, !nosanitize !14

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.rj
  %i.rm = icmp ult i64 %.0195, 9223372036854773352
  %i.rn = shl nuw i64 %i.rj, 3
  %i.ro = add i64 %i.rn, %i.f, !nosanitize !14    ; 2 uses
  %i.rp = icmp uge i64 %i.ro, %i.f, !nosanitize !14
  %i.rq = and i1 %i.rm, %i.rp, !nosanitize !14
  br i1 %i.rq, label %bb.gq, label %bb.gp, !prof !13, !nosanitize !14

bb.gp:                                            ; preds = %bb.go
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @535, i64 %i.f, i64 %i.ro) #6, !nosanitize !14
  br label %bb.gq, !nosanitize !14

bb.gq:                                            ; preds = %bb.go, %bb.gp
  store i64 %i.fy, ptr %i.rl, align 8, !tbaa !16
  %i.rr = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.0195, i64 64), !nosanitize !14 ; 2 uses
  %i.rs = extractvalue { i64, i1 } %i.rr, 0, !nosanitize !14
  %i.rt = extractvalue { i64, i1 } %i.rr, 1, !nosanitize !14
  br i1 %i.rt, label %bb.gr, label %bb.gs, !prof !17, !nosanitize !14

bb.gr:                                            ; preds = %bb.gq
  call void @__ubsan_handle_add_overflow(ptr nonnull @536, i64 %.0195, i64 64) #7, !nosanitize !14
  br label %bb.gs, !nosanitize !14

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %indvars.iv.next = add i64 %indvars.iv, -64
  br label %bb.b, !llvm.loop !29

bb.gt:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  br label %bb.gu

bb.gu:                                            ; preds = %bb.jg, %bb.gt
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %bb.jg ], [ %indvars.iv, %bb.gt ] ; 2 uses
  %.1 = phi i64 [ %i.aam, %bb.jg ], [ %.0195, %bb.gt ] ; 27 uses
  %.0194 = phi i64 [ %i.aak, %bb.jg ], [ 0, %bb.gt ] ; 2 uses
  %.0193 = phi i64 [ %i.aae, %bb.jg ], [ 0, %bb.gt ] ; 2 uses
  %.0192 = phi i64 [ %i.aag, %bb.jg ], [ 0, %bb.gt ] ; 3 uses
  %.0191 = phi i64 [ %i.aah, %bb.jg ], [ 0, %bb.gt ] ; 2 uses
  %.0190 = phi i64 [ %i.aab, %bb.jg ], [ 0, %bb.gt ] ; 2 uses
  %i.ru = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 72), !nosanitize !14 ; 2 uses
  %i.rv = extractvalue { i64, i1 } %i.ru, 0, !nosanitize !14
  %i.rw = extractvalue { i64, i1 } %i.ru, 1, !nosanitize !14
  br i1 %i.rw, label %bb.gv, label %bb.gw, !prof !17, !nosanitize !14

bb.gv:                                            ; preds = %bb.gu
  call void @__ubsan_handle_add_overflow(ptr nonnull @537, i64 %.1, i64 72) #7, !nosanitize !14
  br label %bb.gw, !nosanitize !14

bb.gw:                                            ; preds = %bb.gv, %bb.gu
  %i.rx = icmp ult i64 %i.rv, %2
  %i.ry = lshr i64 %.1, 3                         ; 6 uses
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ry ; 4 uses
  %i.sa = icmp sgt i64 %.1, -1                    ; 3 uses
  br i1 %i.rx, label %bb.gx, label %bb.jh

bb.gx:                                            ; preds = %bb.gw
  %i.sb = add i64 %.1, %i.d, !nosanitize !14      ; 3 uses
  %i.sc = icmp eq i64 %i.sb, 0
  %i.sd = xor i1 %i.e, %i.sc
  %i.se = icmp uge i64 %i.sb, %i.d, !nosanitize !14
  %i.sf = and i1 %i.se, %i.sd
  %i.sg = and i1 %i.sa, %i.sf
  br i1 %i.sg, label %bb.gz, label %bb.gy, !prof !13, !nosanitize !14

bb.gy:                                            ; preds = %bb.gx
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @538, i64 %i.d, i64 %i.sb) #6, !nosanitize !14
  br label %bb.gz, !nosanitize !14

bb.gz:                                            ; preds = %bb.gy, %bb.gx
  %i.sh = ptrtoint ptr %i.rz to i64, !nosanitize !14 ; 2 uses
  %i.si = and i64 %i.sh, 7, !nosanitize !14
  %i.sj = icmp eq i64 %i.si, 0, !nosanitize !14
  %i.sk = and i1 %i.e, %i.sj
  br i1 %i.sk, label %bb.hb, label %bb.ha, !prof !13, !nosanitize !14

bb.ha:                                            ; preds = %bb.gz
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @539, i64 %i.sh) #6, !nosanitize !14
  br label %bb.hb, !nosanitize !14

bb.hb:                                            ; preds = %bb.ha, %bb.gz
  %i.sl = load i64, ptr %i.rz, align 8, !tbaa !16
  %i.sm = icmp ult i64 %.1, 32768
  br i1 %i.sm, label %bb.hd, label %bb.hc, !prof !13, !nosanitize !14

bb.hc:                                            ; preds = %bb.hb
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @540, i64 %i.ry) #6, !nosanitize !14
  br label %bb.hd, !nosanitize !14

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ry
  %i.so = add i64 %.1, %i.f, !nosanitize !14      ; 2 uses
  %i.sp = icmp uge i64 %i.so, %i.f, !nosanitize !14
  %i.sq = and i1 %i.sa, %i.sp, !nosanitize !14
  br i1 %i.sq, label %bb.hf, label %bb.he, !prof !13, !nosanitize !14

bb.he:                                            ; preds = %bb.hd
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @541, i64 %i.f, i64 %i.so) #6, !nosanitize !14
  br label %bb.hf, !nosanitize !14

bb.hf:                                            ; preds = %bb.hd, %bb.he
  %i.sr = load i64, ptr %i.sn, align 8, !tbaa !16
  %i.ss = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.1, i64 8), !nosanitize !14 ; 2 uses
  %i.st = extractvalue { i64, i1 } %i.ss, 0, !nosanitize !14 ; 3 uses
  %i.su = extractvalue { i64, i1 } %i.ss, 1, !nosanitize !14
  br i1 %i.su, label %bb.hg, label %bb.hh, !prof !17, !nosanitize !14

bb.hg:                                            ; preds = %bb.hf
  call void @__ubsan_handle_add_overflow(ptr nonnull @542, i64 %.1, i64 8) #7, !nosanitize !14
  br label %bb.hh, !nosanitize !14

bb.hh:                                            ; preds = %bb.hf, %bb.hg
  %i.sv = lshr i64 %i.st, 3
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.sv ; 2 uses
  %i.sx = icmp sgt i64 %i.st, -1
  %i.sy = and i64 %i.st, -8
  %i.sz = add i64 %i.sy, %i.d, !nosanitize !14    ; 3 uses
  %i.ta = icmp eq i64 %i.sz, 0
  %i.tb = xor i1 %i.e, %i.ta
  %i.tc = icmp uge i64 %i.sz, %i.d, !nosanitize !14
  %i.td = and i1 %i.sx, %i.tc, !nosanitize !14
  %i.te = and i1 %i.tb, %i.td, !nosanitize !14
  br i1 %i.te, label %bb.hj, label %bb.hi, !prof !13, !nosanitize !14

bb.hi:                                            ; preds = %bb.hh
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @543, i64 %i.d, i64 %i.sz) #6, !nosanitize !14
  br label %bb.hj, !nosanitize !14

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.tf = ptrtoint ptr %i.sw to i64, !nosanitize !14 ; 2 uses
  %i.tg = and i64 %i.tf, 7, !nosanitize !14
  %i.th = icmp eq i64 %i.tg, 0, !nosanitize !14
  %i.ti = and i1 %i.e, %i.th
  br i1 %i.ti, label %bb.hl, label %bb.hk, !prof !13, !nosanitize !14

bb.hk:                                            ; preds = %bb.hj
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @544, i64 %i.tf) #6, !nosanitize !14
  br label %bb.hl, !nosanitize !14

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.tj = load i64, ptr %i.sw, align 8, !tbaa !16
  %i.tk = add nuw nsw i64 %i.ry, 1                ; 3 uses
  %i.tl = icmp ult i64 %.1, 32760
  br i1 %i.tl, label %bb.hn, label %bb.hm, !prof !13, !nosanitize !14

bb.hm:                                            ; preds = %bb.hl
  call void @__ubsan_handle_out_of_bounds(ptr nonnull @545, i64 %i.tk) #6, !nosanitize !14
  br label %bb.hn, !nosanitize !14

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.tk
  %i.tn = icmp ult i64 %.1, 9223372036854775800
  %i.to = shl nuw nsw i64 %i.tk, 3
  %i.tp = add i64 %i.to, %i.f, !nosanitize !14    ; 2 uses
  %i.tq = icmp uge i64 %i.tp, %i.f, !nosanitize !14
  %i.tr = and i1 %i.tn, %i.tq, !nosanitize !14
  br i1 %i.tr, label %bb.hp, label %bb.ho, !prof !13, !nosanitize !14

bb.ho:                                            ; preds = %bb.hn
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @546, i64 %i.f, i64 %i.tp) #6, !nosanitize !14
  br label %bb.hp, !nosanitize !14

bb.hp:                                            ; preds = %bb.hn, %bb.ho
  %i.ts = load i64, ptr %i.tm, align 8, !tbaa !16
  %i.tt = xor i64 %i.sl, %i.sr
  %i.tu = xor i64 %i.tt, %.0194                   ; 19 uses
  %i.tv = xor i64 %i.tj, %i.ts
  %i.tw = xor i64 %i.tv, %.0193                   ; 19 uses
  %i.tx = icmp ult i64 %i.tu, 140737488355328
  br i1 %i.tx, label %bb.hr, label %bb.hq, !prof !13, !nosanitize !14

bb.hq:                                            ; preds = %bb.hp
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @547, i64 %i.tu, i64 17) #7, !nosanitize !14
  br label %bb.hr, !nosanitize !14

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.ty = icmp ult i64 %i.tu, 512
  br i1 %i.ty, label %.thread256, label %bb.hs, !prof !13, !nosanitize !14

.thread256:                                       ; preds = %bb.hr
  %i.tz = mul nuw i64 %i.tu, 36028797019095040
  %i.ua = shl nuw nsw i64 %i.tu, 19
  br label %bb.hv

bb.hs:                                            ; preds = %bb.hr
  %i.ub = shl i64 %i.tu, 17
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @548, i64 %i.tu, i64 55) #7, !nosanitize !14
  %i.uc = shl i64 %i.tu, 55
  %i.ud = xor i64 %i.ub, %i.uc                    ; 2 uses
  %i.ue = lshr i64 %i.tu, 9                       ; 2 uses
  %i.uf = icmp ult i64 %i.tu, 35184372088832
  br i1 %i.uf, label %bb.ht, label %.thread257, !prof !19, !nosanitize !14

.thread257:                                       ; preds = %bb.hs
  %i.ug = lshr i64 %i.tu, 47
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @549, i64 %i.tu, i64 19) #7, !nosanitize !14
  %i.uh = shl i64 %i.tu, 19
  %i.ui = or disjoint i64 %i.ug, %i.uh
  %i.uj = xor i64 %i.ui, %i.ue
  %i.uk = lshr i64 %i.tu, 45
  br label %bb.hu

bb.ht:                                            ; preds = %bb.hs
end_hunk_0
