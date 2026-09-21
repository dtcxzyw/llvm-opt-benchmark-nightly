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
end_hunk_0
