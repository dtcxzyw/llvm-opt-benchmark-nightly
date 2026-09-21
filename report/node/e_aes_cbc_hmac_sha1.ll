Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_aes_cbc_hmac_sha1?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha1_ctrl:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.dq, ptr noundef nonnull align 4 dereferenceable(96) %i.dr, i64 96, i1 false), !tbaa.struct !12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !18 ; 2 uses
  %.not.i145 = icmp eq i32 %i.dt, 0
  br i1 %.not.i145, label %.thread172, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = zext i32 %i.dt to i64
  %i.dv = sub nsw i64 64, %i.du                   ; 2 uses
  %spec.select.i146 = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 13) ; 3 uses
  %i.dw = tail call i32 @SHA1_Update(ptr noundef nonnull %i.dq, ptr noundef nonnull %3, i64 noundef %spec.select.i146) #6 ; 0 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i146
  %i.dy = sub nuw nsw i64 13, %spec.select.i146
  %.not40.i152 = icmp ugt i64 %i.dv, 12
  br i1 %.not40.i152, label %sha1_update.exit153, label %.thread172

.thread172:                                       ; preds = %bb.x, %bb.y
  %.1.i151175 = phi ptr [ %i.dx, %bb.y ], [ %3, %bb.x ]
  %i.dz = phi i64 [ %i.dy, %bb.y ], [ 13, %bb.x ]
  %i.ea = tail call i32 @SHA1_Update(ptr noundef nonnull %i.dq, ptr noundef nonnull %.1.i151175, i64 noundef %i.dz) #6 ; 0 uses
  br label %sha1_update.exit153

sha1_update.exit153:                              ; preds = %bb.y, %.thread172
  %i.eb = add nuw nsw i32 %.0107, 36
  %i.ec = and i32 %i.eb, -16
  %i.ed = sub nsw i32 %i.ec, %.0107
  br label %bb.az

bb.z:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ee, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 536
  store i64 13, ptr %i.ef, align 8, !tbaa !17
  br label %bb.az

bb.aa:                                            ; preds = %bb.a
  %i.eg = add nsw i32 %2, 36
  %i.eh = and i32 %i.eg, -16
  %i.ei = add nsw i32 %i.eh, 21
  br label %bb.az

bb.ab:                                            ; preds = %bb.a
  %i.ej = icmp slt i32 %2, 32
  br i1 %i.ej, label %bb.az, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 11
  %i.en = load i8, ptr %i.em, align 1, !tbaa !11  ; 3 uses
  %i.eo = zext i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !11
  %i.es = zext i8 %i.er to i32
  %i.et = or disjoint i32 %i.ep, %i.es            ; 3 uses
  %i.eu = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #6
  %.not = icmp eq i32 %i.eu, 0
  br i1 %.not, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ev = load ptr, ptr %i.ek, align 8, !tbaa !50 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !11
  %i.ey = zext i8 %i.ex to i32
  %i.ez = shl nuw nsw i32 %i.ey, 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 10
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = zext i8 %i.fb to i32
  %i.fd = or disjoint i32 %i.ez, %i.fc
  %i.fe = icmp samesign ult i32 %i.fd, 770
  br i1 %i.fe, label %bb.az, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not123 = icmp eq i32 %i.et, 0
  br i1 %.not123, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = icmp ult i8 %i.en, 16
  br i1 %i.ff, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = icmp ugt i8 %i.en, 31
  br i1 %i.fg, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !10
  %i.fi = and i32 %i.fh, 32
  %.not124 = icmp eq i32 %i.fi, 0
  %spec.select = select i1 %.not124, i32 1, i32 2
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ae
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !51 ; 2 uses
  %i.fl = lshr i32 %i.fk, 2                       ; 2 uses
  %i.fm = icmp ne i32 %i.fl, 0
  %i.fn = icmp ult i32 %i.fk, 12
  %or.cond = and i1 %i.fn, %i.fm
  br i1 %or.cond, label %bb.aj, label %bb.az

bb.aj:                                            ; preds = %bb.ai
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !52
  %i.fq = trunc i64 %i.fp to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.aj
  %.0106 = phi i32 [ %i.fl, %bb.aj ], [ %spec.select, %bb.ah ], [ 1, %bb.ag ] ; 2 uses
  %.0103 = phi i32 [ %i.fq, %bb.aj ], [ %i.et, %bb.ah ], [ %i.et, %bb.ag ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 436 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.fr, ptr noundef nonnull align 4 dereferenceable(96) %i.fs, i64 96, i1 false), !tbaa.struct !12
  %i.ft = load ptr, ptr %i.ek, align 8, !tbaa !50
  tail call fastcc void @sha1_update(ptr noundef nonnull %i.fr, ptr noundef %i.ft, i64 noundef 13)
  %i.fu = shl nuw nsw i32 %.0106, 2               ; 2 uses
  %i.fv = add nuw nsw i32 %.0106, 1               ; 3 uses
  %i.fw = lshr i32 %.0103, %i.fv                  ; 6 uses
  %i.fx = add i32 %i.fw, %.0103
  %i.fy = shl i32 %i.fw, %i.fv
  %i.fz = sub i32 %i.fx, %i.fy                    ; 5 uses
  %i.ga = icmp ugt i32 %i.fz, %i.fw
  br i1 %i.ga, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gb = add i32 %i.fz, 22
  %i.gc = and i32 %i.gb, 63
  %i.gd = add nsw i32 %i.fu, -1                   ; 2 uses
  %i.ge = icmp samesign ult i32 %i.gc, %i.gd
  br i1 %i.ge, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gf = add nuw nsw i32 %i.fw, 1
  %i.gg = sub i32 %i.fz, %i.gd
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.0105 = phi i32 [ %i.gf, %bb.am ], [ %i.fw, %bb.al ], [ %i.fw, %bb.ak ]
  %.0104 = phi i32 [ %i.gg, %bb.am ], [ %i.fz, %bb.al ], [ %i.fz, %bb.ak ]
  %i.gh = add nuw nsw i32 %.0105, 36
  %i.gi = and i32 %i.gh, -16                      ; 2 uses
  %i.gj = add nuw nsw i32 %i.gi, 21
  %i.gk = shl i32 %i.gj, %i.fv
  %i.gl = add i32 %.0104, 36
  %i.gm = and i32 %i.gl, -16
  %i.gn = sub i32 %i.gm, %i.gi
  %i.go = add i32 %i.gn, %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.fu, ptr %i.gp, align 8, !tbaa !51
  br label %bb.az

bb.ao:                                            ; preds = %bb.a
  %i.gq = load ptr, ptr %3, align 8, !tbaa !53    ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !50 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !52
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !51 ; 2 uses
  %i.gx = lshr i32 %i.gw, 2                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.gy = and i32 %i.gw, -4                       ; 6 uses
  %i.gz = shl i32 %i.gx, 6
  %i.ha = call i32 @RAND_bytes(ptr noundef nonnull %7, i32 noundef %i.gz) #6
  %i.hb = icmp slt i32 %i.ha, 1
  br i1 %i.hb, label %tls1_1_multi_block_encrypt.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hd = ptrtoint ptr %i.a to i64
  %i.he = and i64 %i.hd, 16
  %i.hf = sub nsw i64 0, %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.hc, i64 %i.hf ; 23 uses
  %i.hh = trunc i64 %i.gu to i32                  ; 2 uses
  %i.hi = add nuw nsw i32 %i.gx, 1                ; 2 uses
  %i.hj = lshr i32 %i.hh, %i.hi                   ; 6 uses
  %i.hk = add i32 %i.hj, %i.hh
  %i.hl = shl i32 %i.hj, %i.hi
  %i.hm = sub i32 %i.hk, %i.hl                    ; 5 uses
  %i.hn = icmp ugt i32 %i.hm, %i.hj
  br i1 %i.hn, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ho = add i32 %i.hm, 22
  %i.hp = and i32 %i.ho, 63
  %i.hq = add nsw i32 %i.gy, -1                   ; 2 uses
  %i.hr = icmp ult i32 %i.hp, %i.hq
  br i1 %i.hr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hs = add nuw i32 %i.hj, 1
  %i.ht = sub i32 %i.hm, %i.hq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.0298.i = phi i32 [ %i.ht, %bb.ar ], [ %i.hm, %bb.aq ], [ %i.hm, %bb.ap ] ; 7 uses
  %.0297.i = phi i32 [ %i.hs, %bb.ar ], [ %i.hj, %bb.aq ], [ %i.hj, %bb.ap ] ; 11 uses
  store ptr %i.gs, ptr %4, align 16, !tbaa !55
  store ptr %i.gs, ptr %6, align 16, !tbaa !57
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gq, i64 21
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !58
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hw, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %.not348.i = icmp eq i32 %i.gx, 0               ; 3 uses
  br i1 %.not348.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.as
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.hz = load i64, ptr %i.hy, align 4            ; 2 uses
  store i64 %i.hz, ptr %7, align 16
  %i.ia = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hz) #7, !srcloc !59 ; 0 uses
  br label %._crit_edge325.i

.lr.ph.i:                                         ; preds = %bb.as
  %i.ib = add nuw i32 %.0297.i, 36
  %i.ic = and i32 %i.ib, -16
  %i.id = add nuw i32 %i.ic, 21
  %i.ie = zext i32 %.0297.i to i64
  %i.if = zext i32 %i.id to i64
  %wide.trip.count.i = zext i32 %i.gy to i64      ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i
  %i.ig = phi ptr [ %i.gs, %.lr.ph.i ], [ %i.ih, %bb.at ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.at ] ; 3 uses
  %.pn320.i = phi ptr [ %7, %.lr.ph.i ], [ %.0306.i, %bb.at ]
  %.0306.i = getelementptr inbounds nuw i8, ptr %.pn320.i, i64 16 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ie ; 3 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ih, ptr %i.ii, align 16, !tbaa !55
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.i ; 4 uses
  store ptr %i.ih, ptr %i.ij, align 8, !tbaa !57
  %i.ik = getelementptr i8, ptr %i.ij, i64 -32
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !58
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.if ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.im, ptr %i.in, align 8, !tbaa !58
  %i.io = getelementptr inbounds i8, ptr %i.im, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.io, ptr noundef nonnull align 1 dereferenceable(16) %.0306.i, i64 16, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 1 dereferenceable(16) %.0306.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph324.split.i, label %bb.at, !llvm.loop !39

.lr.ph324.split.i:                                ; preds = %bb.at
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.ir = load i64, ptr %i.iq, align 4            ; 2 uses
  store i64 %i.ir, ptr %7, align 16
  %i.is = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ir) #7, !srcloc !59 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 436
  %i.iu = add i32 %i.gy, -1
  %i.iv = load i32, ptr %i.it, align 4, !tbaa !21 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !22 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 444
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !23 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !24 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.hg, i64 96 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 452
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !25 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hg, i64 128 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 473
  %i.jk = getelementptr inbounds nuw i8, ptr %i.c, i64 474
  %i.jl = zext i32 %i.iu to i64
  %i.jm = add nsw i64 %wide.trip.count.i, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph324.split.i
  %indvars.iv360.i = phi i64 [ 0, %.lr.ph324.split.i ], [ %indvars.iv.next361.i, %bb.au ] ; 12 uses
  %i.jn = icmp eq i64 %indvars.iv360.i, %i.jl
  %i.jo = select i1 %i.jn, i32 %.0298.i, i32 %.0297.i ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv360.i
  store i32 %i.iv, ptr %i.jp, align 4, !tbaa !10
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv360.i
  store i32 %i.ix, ptr %i.jq, align 4, !tbaa !10
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv360.i
  store i32 %i.ja, ptr %i.jr, align 4, !tbaa !10
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv360.i
  store i32 %i.jd, ptr %i.js, align 4, !tbaa !10
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv360.i
  store i32 %i.jg, ptr %i.jt, align 4, !tbaa !10
  %i.ju = add i64 %indvars.iv360.i, %i.is
  %i.jv = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ju) #7, !srcloc !60
  %i.jw = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv360.i ; 8 uses
  store i64 %i.jv, ptr %i.jw, align 16, !tbaa !11
  %i.jx = load i8, ptr %i.ji, align 4, !tbaa !11  ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i8 %i.jx, ptr %i.jy, align 8, !tbaa !11
  %i.jz = load i8, ptr %i.jj, align 1, !tbaa !11  ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 9
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !11
  %i.kb = load i8, ptr %i.jk, align 2, !tbaa !11  ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 10
  store i8 %i.kb, ptr %i.kc, align 2, !tbaa !11
  %i.kd = lshr i32 %i.jo, 8
  %i.ke = trunc i32 %i.kd to i8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 11
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !11
  %i.kg = trunc i32 %i.jo to i8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  store i8 %i.kg, ptr %i.kh, align 4, !tbaa !11
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jw, i64 13
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv360.i ; 3 uses
  %i.kk = load ptr, ptr %i.kj, align 16, !tbaa !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ki, ptr noundef nonnull align 1 dereferenceable(51) %i.kk, i64 51, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 51
  store ptr %i.kl, ptr %i.kj, align 16, !tbaa !55
  %i.km = add i32 %i.jo, -51
  %i.kn = lshr i32 %i.km, 6
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  store i32 %i.kn, ptr %i.ko, align 8, !tbaa !61
  %i.kp = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv360.i ; 2 uses
  store ptr %i.jw, ptr %i.kp, align 16, !tbaa !55
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store i32 1, ptr %i.kq, align 8, !tbaa !61
  %indvars.iv.next361.i = add nuw nsw i64 %indvars.iv360.i, 1 ; 10 uses
  %exitcond364.not.i = icmp eq i64 %indvars.iv360.i, %i.jm
  br i1 %exitcond364.not.i, label %._crit_edge325.loopexit.peel.begin.i, label %bb.au, !llvm.loop !40

._crit_edge325.loopexit.peel.begin.i:             ; preds = %bb.au
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.next361.i
  store i32 %i.iv, ptr %i.kr, align 4, !tbaa !10
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv.next361.i
  store i32 %i.ix, ptr %i.ks, align 4, !tbaa !10
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.next361.i
  store i32 %i.ja, ptr %i.kt, align 4, !tbaa !10
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv.next361.i
  store i32 %i.jd, ptr %i.ku, align 4, !tbaa !10
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.next361.i
  store i32 %i.jg, ptr %i.kv, align 4, !tbaa !10
  %i.kw = add i64 %indvars.iv.next361.i, %i.is
  %i.kx = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.kw) #7, !srcloc !60
  %i.ky = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv.next361.i ; 8 uses
  store i64 %i.kx, ptr %i.ky, align 16, !tbaa !11
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  store i8 %i.jx, ptr %i.kz, align 8, !tbaa !11
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 9
  store i8 %i.jz, ptr %i.la, align 1, !tbaa !11
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 10
  store i8 %i.kb, ptr %i.lb, align 2, !tbaa !11
  %i.lc = lshr i32 %.0298.i, 8
  %i.ld = trunc i32 %i.lc to i8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 11
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !11
  %i.lf = trunc i32 %.0298.i to i8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  store i8 %i.lf, ptr %i.lg, align 4, !tbaa !11
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 13
  %i.li = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next361.i ; 3 uses
  %i.lj = load ptr, ptr %i.li, align 16, !tbaa !55 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.lh, ptr noundef nonnull align 1 dereferenceable(51) %i.lj, i64 51, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 51
  store ptr %i.lk, ptr %i.li, align 16, !tbaa !55
  %i.ll = add i32 %.0298.i, -51
  %i.lm = lshr i32 %i.ll, 6
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i32 %i.lm, ptr %i.ln, align 8, !tbaa !61
  %i.lo = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next361.i ; 2 uses
  store ptr %i.ky, ptr %i.lo, align 16, !tbaa !55
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store i32 1, ptr %i.lp, align 8, !tbaa !61
  br label %._crit_edge325.i

._crit_edge325.i:                                 ; preds = %._crit_edge325.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  %i.lq = call i32 @llvm.umin.i32(i32 %.0297.i, i32 %.0298.i)
  %i.lr = add i32 %i.lq, -51                      ; 2 uses
  %i.ls = lshr i32 %i.lr, 6                       ; 2 uses
  %i.lt = icmp ugt i32 %i.lr, 2111
  br i1 %i.lt, label %.preheader319.i, label %.loopexit.i

.preheader319.i:                                  ; preds = %._crit_edge325.i
  br i1 %.not348.i, label %.preheader.split.i, label %.lr.ph327.preheader.i

.lr.ph327.preheader.i:                            ; preds = %.preheader319.i
  %wide.trip.count368.i = zext i32 %i.gy to i64   ; 2 uses
  br label %.lr.ph327.i

.lr.ph330.us.i:                                   ; preds = %.lr.ph327.i, %._crit_edge331.us.i
  %.0303.us.i = phi i32 [ %i.mk, %._crit_edge331.us.i ], [ 0, %.lr.ph327.i ]
  %.0301.us.i = phi i32 [ %i.ml, %._crit_edge331.us.i ], [ %i.ls, %.lr.ph327.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph330.us.i
  %indvars.iv370.i = phi i64 [ 0, %.lr.ph330.us.i ], [ %indvars.iv.next371.i, %bb.av ] ; 4 uses
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv370.i ; 3 uses
  %i.lv = load ptr, ptr %i.lu, align 16, !tbaa !55
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 2048 ; 2 uses
  store ptr %i.lw, ptr %i.lu, align 16, !tbaa !55
  %i.lx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv370.i ; 2 uses
  store ptr %i.lw, ptr %i.lx, align 16, !tbaa !55
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !61
  %i.ma = add nsw i32 %i.lz, -32
  store i32 %i.ma, ptr %i.ly, align 8, !tbaa !61
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 32, ptr %i.mb, align 8, !tbaa !61
  %i.mc = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv370.i ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !58
  %i.mf = load <2 x ptr>, ptr %i.mc, align 8, !tbaa !63
  %i.mg = getelementptr inbounds nuw i8, <2 x ptr> %i.mf, i64 2048
  store <2 x ptr> %i.mg, ptr %i.mc, align 8, !tbaa !63
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store i32 128, ptr %i.mh, align 8, !tbaa !64
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.mj = getelementptr inbounds nuw i8, ptr %i.me, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mi, ptr noundef nonnull align 1 dereferenceable(16) %i.mj, i64 16, i1 false)
  %indvars.iv.next371.i = add nuw nsw i64 %indvars.iv370.i, 1 ; 2 uses
  %exitcond374.not.i = icmp eq i64 %indvars.iv.next371.i, %wide.trip.count368.i
  br i1 %exitcond374.not.i, label %._crit_edge331.us.i, label %bb.av, !llvm.loop !41

._crit_edge331.us.i:                              ; preds = %bb.av
  %i.mk = add i32 %.0303.us.i, 2048               ; 2 uses
  %i.ml = add nsw i32 %.0301.us.i, -32            ; 2 uses
  %i.mm = icmp ugt i32 %i.ml, 32
  br i1 %i.mm, label %.lr.ph330.us.i, label %.loopexit.i, !llvm.loop !42

.lr.ph327.i:                                      ; preds = %.lr.ph327.i, %.lr.ph327.preheader.i
  %indvars.iv365.i = phi i64 [ 0, %.lr.ph327.preheader.i ], [ %indvars.iv.next366.i.1, %.lr.ph327.i ] ; 5 uses
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv365.i
  %i.mo = load ptr, ptr %i.mn, align 16, !tbaa !55
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv365.i ; 2 uses
  store ptr %i.mo, ptr %i.mp, align 16, !tbaa !55
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  store i32 32, ptr %i.mq, align 8, !tbaa !61
  %i.mr = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv365.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store i32 128, ptr %i.ms, align 16, !tbaa !64
  %indvars.iv.next366.i = or disjoint i64 %indvars.iv365.i, 1 ; 3 uses
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next366.i
  %i.mu = load ptr, ptr %i.mt, align 16, !tbaa !55
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next366.i ; 2 uses
  store ptr %i.mu, ptr %i.mv, align 16, !tbaa !55
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  store i32 32, ptr %i.mw, align 8, !tbaa !61
  %i.mx = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.next366.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store i32 128, ptr %i.my, align 8, !tbaa !64
  %indvars.iv.next366.i.1 = add nuw nsw i64 %indvars.iv365.i, 2 ; 2 uses
  %exitcond369.not.i.1 = icmp eq i64 %indvars.iv.next366.i.1, %wide.trip.count368.i
  br i1 %exitcond369.not.i.1, label %.lr.ph330.us.i, label %.lr.ph327.i, !llvm.loop !43

.preheader.split.i:                               ; preds = %.preheader319.i, %.preheader.split.i
  %.0301.i = phi i32 [ %i.mz, %.preheader.split.i ], [ %i.ls, %.preheader319.i ]
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef 0) #6
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef 0) #6
  %i.mz = add nsw i32 %.0301.i, -32               ; 2 uses
  %i.na = icmp ugt i32 %i.mz, 32
  br i1 %i.na, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !42

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) 0) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br label %._crit_edge335.thread.i

.loopexit.i:                                      ; preds = %._crit_edge331.us.i, %._crit_edge325.i
  %.1304.i = phi i32 [ 0, %._crit_edge325.i ], [ %i.mk, %._crit_edge331.us.i ] ; 6 uses
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br i1 %.not348.i, label %._crit_edge335.thread.i, label %.lr.ph334.split.i

.lr.ph334.split.i:                                ; preds = %.loopexit.i
  %i.nb = add nsw i32 %i.gy, -1
  %i.nc = zext i32 %i.nb to i64                   ; 2 uses
  %wide.trip.count378.i = zext i32 %i.gy to i64   ; 2 uses
  %i.nd = add nsw i64 %wide.trip.count378.i, -1   ; 12 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph334.split.i
  %indvars.iv375.i = phi i64 [ 0, %.lr.ph334.split.i ], [ %indvars.iv.next376.i, %bb.aw ] ; 5 uses
  %i.ne = icmp eq i64 %indvars.iv375.i, %i.nc
  %i.nf = select i1 %i.ne, i32 %.0298.i, i32 %.0297.i ; 2 uses
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv375.i ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !61
  %i.nj = shl nsw i32 %i.ni, 6                    ; 2 uses
  %i.nk = load ptr, ptr %i.ng, align 16, !tbaa !55
  %i.nl = zext i32 %i.nj to i64
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nl
  %i.nn = add i32 %i.nf, -51
  %i.no = add i32 %.1304.i, %i.nj
  %i.np = sub i32 %i.nn, %i.no                    ; 2 uses
  %i.nq = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv375.i ; 4 uses
  %i.nr = zext i32 %i.np to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.nq, ptr align 1 %i.nm, i64 %i.nr, i1 false)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nr
  store i8 -128, ptr %i.ns, align 1, !tbaa !11
  %i.nt = shl i32 %i.nf, 3
  %i.nu = add i32 %i.nt, 616
  %i.nv = icmp ult i32 %i.np, 56                  ; 2 uses
  %i.nw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nu) #7
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv375.i ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %.418.i = select i1 %i.nv, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.nv, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.nq, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.nw, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.418.i, ptr %i.ny, align 8, !tbaa !61
  store ptr %i.nq, ptr %i.nx, align 16, !tbaa !55
  %indvars.iv.next376.i = add nuw nsw i64 %indvars.iv375.i, 1 ; 2 uses
  %exitcond379.not.i = icmp eq i64 %indvars.iv.next376.i, %i.nd
  br i1 %exitcond379.not.i, label %._crit_edge335.loopexit.peel.begin.i, label %bb.aw, !llvm.loop !44

._crit_edge335.loopexit.peel.begin.i:             ; preds = %bb.aw
  %i.nz = icmp eq i64 %i.nd, %i.nc
  %i.oa = select i1 %i.nz, i32 %.0298.i, i32 %.0297.i ; 7 uses
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.nd ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !61
  %i.oe = shl nsw i32 %i.od, 6                    ; 2 uses
  %i.of = load ptr, ptr %i.ob, align 16, !tbaa !55
  %i.og = zext i32 %i.oe to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  %.neg179 = add i32 %i.oa, -51
  %i.oi = add i32 %.1304.i, %i.oe
  %i.oj = sub i32 %.neg179, %i.oi                 ; 2 uses
  %i.ok = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %i.nd ; 4 uses
  %i.ol = zext i32 %i.oj to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ok, ptr align 1 %i.oh, i64 %i.ol, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.ol
  store i8 -128, ptr %i.om, align 1, !tbaa !11
  %i.on = shl i32 %i.oa, 3
  %i.oo = add i32 %i.on, 616
  %i.op = icmp ult i32 %i.oj, 56                  ; 2 uses
  %i.oq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oo) #7
  %i.or = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.nd ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %.420.i = select i1 %i.op, i32 1, i32 2
  %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.op, i64 60, i64 124
  %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.ok, i64 %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.oq, ptr %.419.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.420.i, ptr %i.os, align 8, !tbaa !61
  store ptr %i.ok, ptr %i.or, align 16, !tbaa !55
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  %i.ou = getelementptr inbounds nuw i8, ptr %i.hg, i64 32 ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.ow = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.c, i64 348
  %i.oy = getelementptr inbounds nuw i8, ptr %i.hg, i64 96 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.pa = getelementptr inbounds nuw i8, ptr %i.hg, i64 128 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  br label %bb.ax

._crit_edge335.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  br label %._crit_edge347.i

bb.ax:                                            ; preds = %bb.ax, %._crit_edge335.loopexit.peel.begin.i
  %indvars.iv382.i = phi i64 [ 0, %._crit_edge335.loopexit.peel.begin.i ], [ %indvars.iv.next383.i, %bb.ax ] ; 8 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv382.i ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !10
  %i.pe = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pd) #7, !srcloc !65
  %i.pf = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv382.i ; 8 uses
  store i32 %i.pe, ptr %i.pf, align 16, !tbaa !11
  %i.pg = load i32, ptr %i.ot, align 4, !tbaa !66
  store i32 %i.pg, ptr %i.pc, align 4, !tbaa !10
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv382.i ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !10
  %i.pj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pi) #7, !srcloc !67
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  store i32 %i.pj, ptr %i.pk, align 4, !tbaa !11
  %i.pl = load i32, ptr %i.ov, align 4, !tbaa !68
  store i32 %i.pl, ptr %i.ph, align 4, !tbaa !10
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %indvars.iv382.i ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !10
  %i.po = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pn) #7, !srcloc !69
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i32 %i.po, ptr %i.pp, align 8, !tbaa !11
  %i.pq = load i32, ptr %i.ox, align 4, !tbaa !70
  store i32 %i.pq, ptr %i.pm, align 4, !tbaa !10
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv382.i ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !10
  %i.pt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ps) #7, !srcloc !71
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 %i.pt, ptr %i.pu, align 4, !tbaa !11
  %i.pv = load i32, ptr %i.oz, align 4, !tbaa !72
  store i32 %i.pv, ptr %i.pr, align 4, !tbaa !10
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv382.i ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !10
  %i.py = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.px) #7, !srcloc !73
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store i32 %i.py, ptr %i.pz, align 16, !tbaa !11
  %i.qa = load i32, ptr %i.pb, align 4, !tbaa !74
  store i32 %i.qa, ptr %i.pw, align 4, !tbaa !10
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pf, i64 20
  store i8 -128, ptr %i.qb, align 4, !tbaa !11
  %i.qc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 672) #7, !srcloc !75
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pf, i64 60
  store i32 %i.qc, ptr %i.qd, align 4, !tbaa !11
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv382.i ; 2 uses
  store ptr %i.pf, ptr %i.qe, align 16, !tbaa !55
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store i32 1, ptr %i.qf, align 8, !tbaa !61
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv382.i, 1 ; 2 uses
  %exitcond386.not.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count378.i
  br i1 %exitcond386.not.i, label %.lr.ph346.split.i, label %bb.ax, !llvm.loop !45

.lr.ph346.split.i:                                ; preds = %bb.ax
  call void @sha1_multi_block(ptr noundef nonnull %i.hg, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  %i.qg = getelementptr inbounds nuw i8, ptr %i.c, i64 472 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.c, i64 473 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.c, i64 474 ; 2 uses
  %8 = sub i32 %.0297.i, %.1304.i
  %9 = zext i32 %8 to i64
  %10 = add nuw i32 %.0297.i, 21
  %11 = zext i32 %10 to i64                       ; 2 uses
  %12 = add nuw i32 %.0297.i, 4
  %13 = and i32 %12, 15                           ; 2 uses
  %14 = trunc nuw nsw i32 %13 to i8
  %15 = xor i8 %14, 15
  %16 = sub i32 11, %.0297.i
  %17 = and i32 %16, 15
  %18 = zext nneg i32 %17 to i64                  ; 2 uses
  %19 = add nuw nsw i64 %18, 1
  %20 = sub i32 %.0297.i, %13                     ; 3 uses
  %invariant.op.a = sub i32 %20, %.1304.i
  %.reass.i = add i32 %invariant.op.a, 36
  %21 = lshr i32 %.reass.i, 4
  %22 = add i32 %20, 52                           ; 2 uses
  %23 = lshr i32 %22, 8
  %24 = trunc i32 %23 to i8
  %25 = trunc i32 %22 to i8
  %invariant.op = add i32 %20, 57
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph346.split.i
  %indvars.iv388.i = phi i64 [ 0, %.lr.ph346.split.i ], [ %indvars.iv.next389.i, %bb.ay ] ; 7 uses
  %.0295344.i = phi ptr [ %i.gq, %.lr.ph346.split.i ], [ %scevgep387.i, %bb.ay ] ; 7 uses
  %.0305342.i = phi i32 [ 0, %.lr.ph346.split.i ], [ %i.rs, %bb.ay ]
  %i.qj = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv388.i ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !58
  %i.qm = load ptr, ptr %i.qj, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ql, ptr align 1 %i.qm, i64 %9, i1 false)
  %i.qn = load ptr, ptr %i.qk, align 8, !tbaa !58
  store ptr %i.qn, ptr %i.qj, align 8, !tbaa !57
  %i.qo = getelementptr i8, ptr %.0295344.i, i64 %11 ; 6 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv388.i
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !10
  %i.qr = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qq) #7, !srcloc !76
  store i32 %i.qr, ptr %i.qo, align 4, !tbaa !10
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv388.i
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !10
  %i.qu = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qt) #7, !srcloc !77
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  store i32 %i.qu, ptr %i.qv, align 4, !tbaa !10
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %indvars.iv388.i
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !10
  %i.qy = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qx) #7, !srcloc !78
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  store i32 %i.qy, ptr %i.qz, align 4, !tbaa !10
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %indvars.iv388.i
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !10
  %i.rc = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rb) #7, !srcloc !79
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  store i32 %i.rc, ptr %i.rd, align 4, !tbaa !10
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv388.i
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !10
  %i.rg = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rf) #7, !srcloc !80
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !10
  %i.ri = getelementptr i8, ptr %i.qo, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ri, i8 %15, i64 %19, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %.0295344.i, i64 21
  %i.rj = getelementptr i8, ptr %scevgep.i, i64 %11
  %scevgep387.i = getelementptr i8, ptr %i.rj, i64 %18 ; 7 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qj, i64 16
  store i32 %21, ptr %i.rk, align 8, !tbaa !64
  %i.rl = load i8, ptr %i.qg, align 4, !tbaa !11
  store i8 %i.rl, ptr %.0295344.i, align 1, !tbaa !11
  %i.rm = load i8, ptr %i.qh, align 1, !tbaa !11
  %i.rn = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 1
  store i8 %i.rm, ptr %i.rn, align 1, !tbaa !11
  %i.ro = load i8, ptr %i.qi, align 2, !tbaa !11
  %i.rp = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 2
  store i8 %i.ro, ptr %i.rp, align 1, !tbaa !11
  %i.rq = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 3
  store i8 %24, ptr %i.rq, align 1, !tbaa !11
  %i.rr = getelementptr inbounds nuw i8, ptr %.0295344.i, i64 4
  store i8 %25, ptr %i.rr, align 1, !tbaa !11
  %i.rs = add i32 %.0305342.i, %invariant.op      ; 2 uses
  %indvars.iv.next389.i = add nuw nsw i64 %indvars.iv388.i, 1 ; 2 uses
  %exitcond392.not.i = icmp eq i64 %indvars.iv.next389.i, %i.nd
  br i1 %exitcond392.not.i, label %._crit_edge347.loopexit.peel.begin.i, label %bb.ay, !llvm.loop !46

._crit_edge347.loopexit.peel.begin.i:             ; preds = %bb.ay
  %i.rt = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.nd ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 16, !tbaa !58
  %i.rw = load ptr, ptr %i.rt, align 8, !tbaa !57
  %i.rx = sub i32 %i.oa, %.1304.i
  %i.ry = zext i32 %i.rx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rv, ptr align 1 %i.rw, i64 %i.ry, i1 false)
  %i.rz = load ptr, ptr %i.ru, align 16, !tbaa !58
  store ptr %i.rz, ptr %i.rt, align 8, !tbaa !57
  %i.sa = add i32 %i.oa, 21
  %i.sb = zext i32 %i.sa to i64
  %i.sc = getelementptr i8, ptr %scevgep387.i, i64 %i.sb ; 6 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.nd
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !10
  %i.sf = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.se) #7, !srcloc !76
  store i32 %i.sf, ptr %i.sc, align 4, !tbaa !10
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.nd
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !10
  %i.si = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sh) #7, !srcloc !77
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  store i32 %i.si, ptr %i.sj, align 4, !tbaa !10
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.nd
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !10
  %i.sm = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sl) #7, !srcloc !78
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store i32 %i.sm, ptr %i.sn, align 4, !tbaa !10
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.nd
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !10
  %i.sq = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sp) #7, !srcloc !79
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  store i32 %i.sq, ptr %i.sr, align 4, !tbaa !10
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.nd
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !10
  %i.su = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.st) #7, !srcloc !80
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store i32 %i.su, ptr %i.sv, align 4, !tbaa !10
  %i.sw = getelementptr i8, ptr %i.sc, i64 20
  %i.sx = add i32 %i.oa, 4
  %i.sy = and i32 %i.sx, 15                       ; 2 uses
  %i.sz = trunc nuw nsw i32 %i.sy to i8
  %i.ta = xor i8 %i.sz, 15
  %i.tb = sub i32 11, %i.oa
  %i.tc = and i32 %i.tb, 15
  %narrow.i = add nuw nsw i32 %i.tc, 1
  %i.td = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.sw, i8 %i.ta, i64 %i.td, i1 false), !tbaa !11
  %i.te = sub i32 %i.oa, %i.sy                    ; 3 uses
  %reass.sub.peel.i = add i32 %i.te, 36
  %i.tf = sub i32 %reass.sub.peel.i, %.1304.i
  %i.tg = lshr i32 %i.tf, 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store i32 %i.tg, ptr %i.th, align 8, !tbaa !64
  %i.ti = add i32 %i.te, 52                       ; 2 uses
  %i.tj = load i8, ptr %i.qg, align 4, !tbaa !11
  store i8 %i.tj, ptr %scevgep387.i, align 1, !tbaa !11
  %i.tk = load i8, ptr %i.qh, align 1, !tbaa !11
  %i.tl = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 1
  store i8 %i.tk, ptr %i.tl, align 1, !tbaa !11
  %i.tm = load i8, ptr %i.qi, align 2, !tbaa !11
  %i.tn = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 2
  store i8 %i.tm, ptr %i.tn, align 1, !tbaa !11
  %i.to = lshr i32 %i.ti, 8
  %i.tp = trunc i32 %i.to to i8
  %i.tq = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 3
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !11
  %i.tr = trunc i32 %i.ti to i8
  %i.ts = getelementptr inbounds nuw i8, ptr %scevgep387.i, i64 4
  store i8 %i.tr, ptr %i.ts, align 1, !tbaa !11
  %i.tt = add i32 %i.te, 57
  %i.tu = add i32 %i.tt, %i.rs
  br label %._crit_edge347.i

._crit_edge347.i:                                 ; preds = %._crit_edge347.loopexit.peel.begin.i, %._crit_edge335.thread.i
  %.0305.lcssa.i = phi i32 [ 0, %._crit_edge335.thread.i ], [ %i.tu, %._crit_edge347.loopexit.peel.begin.i ]
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gx) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1024) #6
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.hg, i64 noundef 160) #6
  br label %tls1_1_multi_block_encrypt.exit

tls1_1_multi_block_encrypt.exit:                  ; preds = %bb.ao, %._crit_edge347.i
  %.0.i = phi i32 [ %.0305.lcssa.i, %._crit_edge347.i ], [ 0, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.az

bb.az:                                            ; preds = %bb.a, %bb.an, %bb.ab, %bb.ad, %bb.af, %bb.ai, %bb.ac, %sha1_update.exit153, %bb.z, %bb.s, %bb.v, %tls1_1_multi_block_encrypt.exit, %bb.aa, %sha1_update.exit144
  %.2 = phi i32 [ -1, %bb.ac ], [ 1, %sha1_update.exit144 ], [ %.0.i, %tls1_1_multi_block_encrypt.exit ], [ %i.ei, %bb.aa ], [ 0, %bb.v ], [ 20, %bb.z ], [ -1, %bb.s ], [ %i.ed, %sha1_update.exit153 ], [ -1, %bb.ai ], [ -1, %bb.ab ], [ -1, %bb.ad ], [ %i.go, %bb.an ], [ 0, %bb.af ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @sha1_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = sub nsw i64 64, %i.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = tail call i32 @SHA1_Update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.g = sub nuw i64 %2, %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.033 = phi i64 [ %i.g, %bb.b ], [ %2, %bb.a ]  ; 4 uses
  %.032 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.h = and i64 %.033, 63                        ; 2 uses
  %i.i = and i64 %.033, -64                       ; 3 uses
  %.not39 = icmp eq i64 %i.i, 0
  br i1 %.not39, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.033, 6
  tail call void @sha1_block_data_order(ptr noundef nonnull %0, ptr noundef %.032, i64 noundef %i.j) #6
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 %i.i ; 2 uses
  %i.l = lshr i64 %.033, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = trunc i64 %i.l to i32
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !20
  %.tr = trunc i64 %i.i to i32
  %i.s = shl i32 %.tr, 3                          ; 2 uses
  %i.t = add i32 %i.r, %i.s                       ; 2 uses
  store i32 %i.t, ptr %i.q, align 4, !tbaa !20
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = add i32 %i.p, 1
  store i32 %i.v, ptr %i.m, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.1 = phi ptr [ %i.k, %bb.e ], [ %i.k, %bb.d ], [ %.032, %bb.c ]
  %.not40 = icmp eq i64 %i.h, 0
  br i1 %.not40, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 @SHA1_Update(ptr noundef nonnull %0, ptr noundef %.1, i64 noundef %i.h) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare void @aesni_cbc_sha1_enc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SHA1_Final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @sha1_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @SHA1_Update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

end_hunk_0
