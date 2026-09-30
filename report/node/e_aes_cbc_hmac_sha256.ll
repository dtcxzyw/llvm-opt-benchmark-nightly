Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_aes_cbc_hmac_sha256?download=true
inline.NumInlined: 18
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@aesni_cbc_hmac_sha256_ctrl:bb.a

bb.z:                                             ; preds = %bb.y, %bb.w
  %.0110 = phi i32 [ %i.dn, %bb.y ], [ %i.cy, %bb.w ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.dr, ptr noundef nonnull align 4 dereferenceable(112) %i.ds, i64 112, i1 false), !tbaa.struct !12
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 572
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18 ; 2 uses
  %.not.i149 = icmp eq i32 %i.du, 0
  br i1 %.not.i149, label %.thread176, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dv = zext i32 %i.du to i64
  %i.dw = sub nsw i64 64, %i.dv                   ; 2 uses
  %spec.select.i150 = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 13) ; 3 uses
  %i.dx = tail call i32 @SHA256_Update(ptr noundef nonnull %i.dr, ptr noundef nonnull %3, i64 noundef %spec.select.i150) #5 ; 0 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.i150
  %i.dz = sub nuw nsw i64 13, %spec.select.i150
  %.not40.i156 = icmp ugt i64 %i.dw, 12
  br i1 %.not40.i156, label %sha256_update.exit157, label %.thread176

.thread176:                                       ; preds = %bb.z, %bb.aa
  %.1.i155179 = phi ptr [ %i.dy, %bb.aa ], [ %3, %bb.z ]
  %i.ea = phi i64 [ %i.dz, %bb.aa ], [ 13, %bb.z ]
  %i.eb = tail call i32 @SHA256_Update(ptr noundef nonnull %i.dr, ptr noundef nonnull %.1.i155179, i64 noundef %i.ea) #5 ; 0 uses
  br label %sha256_update.exit157

sha256_update.exit157:                            ; preds = %bb.aa, %.thread176
  %i.ec = and i32 %.0110, 15
  %i.ed = sub nuw nsw i32 48, %i.ec
  br label %bb.bb

bb.ab:                                            ; preds = %bb.v
  %i.ee = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ee, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store i64 13, ptr %i.ef, align 8, !tbaa !17
  br label %bb.bb

bb.ac:                                            ; preds = %bb.a
  %i.eg = and i32 %2, -16
  %i.eh = add nsw i32 %i.eg, 69
  br label %bb.bb

bb.ad:                                            ; preds = %bb.a
  %or.cond130 = icmp slt i32 %2, 32
  br i1 %or.cond130, label %bb.bb, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !49 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 11
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !11  ; 3 uses
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !11
  %i.eq = zext i8 %i.ep to i32
  %i.er = or disjoint i32 %i.en, %i.eq            ; 3 uses
  %i.es = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #5
  %.not = icmp eq i32 %i.es, 0
  br i1 %.not, label %bb.bb, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = load ptr, ptr %i.ei, align 8, !tbaa !49 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 9
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !11
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 10
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = zext i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ex, %i.fa
  %i.fc = icmp samesign ult i32 %i.fb, 770
  br i1 %i.fc, label %bb.bb, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.not126 = icmp eq i32 %i.er, 0
  br i1 %.not126, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fd = icmp ult i8 %i.el, 16
  br i1 %i.fd, label %bb.bb, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = icmp ugt i8 %i.el, 31
  br i1 %i.fe, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.ff = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 4, !tbaa !10
  %i.fg = and i32 %i.ff, 32
  %.not127 = icmp eq i32 %i.fg, 0
  %spec.select = select i1 %.not127, i32 1, i32 2
  br label %bb.am

bb.ak:                                            ; preds = %bb.ag
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !50 ; 2 uses
  %i.fj = lshr i32 %i.fi, 2                       ; 2 uses
  %i.fk = icmp ne i32 %i.fj, 0
  %i.fl = icmp ult i32 %i.fi, 12
  %or.cond = and i1 %i.fl, %i.fk
  br i1 %or.cond, label %bb.al, label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !51
  %i.fo = trunc i64 %i.fn to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.aj, %bb.ai, %bb.al
  %.0109 = phi i32 [ %i.fj, %bb.al ], [ %spec.select, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %.0106 = phi i32 [ %i.fo, %bb.al ], [ %i.er, %bb.aj ], [ %i.er, %bb.ai ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 468 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %i.fp, ptr noundef nonnull align 4 dereferenceable(112) %i.fq, i64 112, i1 false), !tbaa.struct !12
  %i.fr = load ptr, ptr %i.ei, align 8, !tbaa !49
  tail call fastcc void @sha256_update(ptr noundef nonnull %i.fp, ptr noundef %i.fr, i64 noundef 13)
  %i.fs = shl nuw nsw i32 %.0109, 2               ; 2 uses
  %i.ft = add nuw nsw i32 %.0109, 1               ; 3 uses
  %i.fu = lshr i32 %.0106, %i.ft                  ; 6 uses
  %i.fv = add i32 %i.fu, %.0106
  %i.fw = shl i32 %i.fu, %i.ft
  %i.fx = sub i32 %i.fv, %i.fw                    ; 5 uses
  %i.fy = icmp ugt i32 %i.fx, %i.fu
  br i1 %i.fy, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.fz = add i32 %i.fx, 22
  %i.ga = and i32 %i.fz, 63
  %i.gb = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.gc = icmp samesign ult i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gd = add nuw nsw i32 %i.fu, 1
  %i.ge = sub i32 %i.fx, %i.gb
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.0108 = phi i32 [ %i.gd, %bb.ao ], [ %i.fu, %bb.an ], [ %i.fu, %bb.am ]
  %.0107 = phi i32 [ %i.ge, %bb.ao ], [ %i.fx, %bb.an ], [ %i.fx, %bb.am ]
  %i.gf = and i32 %.0108, -16                     ; 2 uses
  %i.gg = add nuw nsw i32 %i.gf, 69
  %i.gh = shl i32 %i.gg, %i.ft
  %i.gi = and i32 %.0107, -16
  %i.gj = sub i32 %i.gi, %i.gf
  %i.gk = add i32 %i.gj, %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.fs, ptr %i.gl, align 8, !tbaa !50
  br label %bb.bb

bb.aq:                                            ; preds = %bb.a
  %i.gm = load ptr, ptr %3, align 8, !tbaa !52    ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !49 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !51
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !50 ; 2 uses
  %i.gt = lshr i32 %i.gs, 2                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  %i.gu = and i32 %i.gs, -4                       ; 6 uses
  %i.gv = shl i32 %i.gt, 6
  %i.gw = call i32 @RAND_bytes(ptr noundef nonnull %7, i32 noundef %i.gv) #5
  %i.gx = icmp slt i32 %i.gw, 1
  br i1 %i.gx, label %tls1_1_multi_block_encrypt.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gz = ptrtoint ptr %i.a to i64
  %i.ha = and i64 %i.gz, 16
  %i.hb = sub nsw i64 0, %i.ha
  %i.hc = getelementptr inbounds i8, ptr %i.gy, i64 %i.hb ; 29 uses
  %i.hd = trunc i64 %i.gq to i32                  ; 2 uses
  %i.he = add nuw nsw i32 %i.gt, 1                ; 2 uses
  %i.hf = lshr i32 %i.hd, %i.he                   ; 6 uses
  %i.hg = add i32 %i.hf, %i.hd
  %i.hh = shl i32 %i.hf, %i.he
  %i.hi = sub i32 %i.hg, %i.hh                    ; 5 uses
  %i.hj = icmp ugt i32 %i.hi, %i.hf
  br i1 %i.hj, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.hk = add i32 %i.hi, 22
  %i.hl = and i32 %i.hk, 63
  %i.hm = add nsw i32 %i.gu, -1                   ; 2 uses
  %i.hn = icmp ult i32 %i.hl, %i.hm
  br i1 %i.hn, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ho = add nuw i32 %i.hf, 1
  %i.hp = sub i32 %i.hi, %i.hm
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.0352.i = phi i32 [ %i.hp, %bb.at ], [ %i.hi, %bb.as ], [ %i.hi, %bb.ar ] ; 7 uses
  %.0351.i = phi i32 [ %i.ho, %bb.at ], [ %i.hf, %bb.as ], [ %i.hf, %bb.ar ] ; 11 uses
  store ptr %i.go, ptr %4, align 16, !tbaa !54
  store ptr %i.go, ptr %6, align 16, !tbaa !56
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gm, i64 21
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !57
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gm, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.hs, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false)
  %.not402.i = icmp eq i32 %i.gt, 0               ; 3 uses
  br i1 %.not402.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.au
  %i.hu = getelementptr inbounds nuw i8, ptr %i.c, i64 508
  %i.hv = load i64, ptr %i.hu, align 4            ; 2 uses
  store i64 %i.hv, ptr %7, align 16
  %i.hw = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hv) #6, !srcloc !58 ; 0 uses
  br label %._crit_edge379.i

.lr.ph.i:                                         ; preds = %bb.au
  %i.hx = and i32 %.0351.i, -16
  %i.hy = add nuw i32 %i.hx, 69
  %i.hz = zext i32 %.0351.i to i64
  %i.ia = zext i32 %i.hy to i64
  %wide.trip.count.i = zext i32 %i.gu to i64      ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %.lr.ph.i
  %i.ib = phi ptr [ %i.go, %.lr.ph.i ], [ %i.ic, %bb.av ]
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.av ] ; 3 uses
  %.pn374.i = phi ptr [ %7, %.lr.ph.i ], [ %.0359.i, %bb.av ]
  %.0359.i = getelementptr inbounds nuw i8, ptr %.pn374.i, i64 16 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.hz ; 3 uses
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.i
  store ptr %i.ic, ptr %i.id, align 16, !tbaa !54
  %i.ie = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.i ; 4 uses
  store ptr %i.ic, ptr %i.ie, align 8, !tbaa !56
  %i.if = getelementptr i8, ptr %i.ie, i64 -32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !57
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ia ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !57
  %i.ij = getelementptr inbounds i8, ptr %i.ih, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ij, ptr noundef nonnull align 1 dereferenceable(16) %.0359.i, i64 16, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ik, ptr noundef nonnull align 1 dereferenceable(16) %.0359.i, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph378.split.i, label %bb.av, !llvm.loop !38

.lr.ph378.split.i:                                ; preds = %bb.av
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 508
  %i.im = load i64, ptr %i.il, align 4            ; 2 uses
  store i64 %i.im, ptr %7, align 16
  %i.in = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.im) #6, !srcloc !58 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.c, i64 468
  %i.ip = add i32 %i.gu, -1
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !10 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !10 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.c, i64 476
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !10 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hc, i64 64 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !10 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hc, i64 96 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.c, i64 484
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !10 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hc, i64 128 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !10 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hc, i64 160 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.c, i64 492
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !10 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hc, i64 192 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !10 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hc, i64 224 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.c, i64 516
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 517
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 518
  %i.jp = zext i32 %i.ip to i64
  %i.jq = add nsw i64 %wide.trip.count.i, -2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aw, %.lr.ph378.split.i
  %indvars.iv414.i = phi i64 [ 0, %.lr.ph378.split.i ], [ %indvars.iv.next415.i, %bb.aw ] ; 15 uses
  %i.jr = icmp eq i64 %indvars.iv414.i, %i.jp
  %i.js = select i1 %i.jr, i32 %.0352.i, i32 %.0351.i ; 3 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv414.i
  store i32 %i.iq, ptr %i.jt, align 4, !tbaa !10
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv414.i
  store i32 %i.is, ptr %i.ju, align 4, !tbaa !10
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv414.i
  store i32 %i.iv, ptr %i.jv, align 4, !tbaa !10
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv414.i
  store i32 %i.iy, ptr %i.jw, align 4, !tbaa !10
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv414.i
  store i32 %i.jb, ptr %i.jx, align 4, !tbaa !10
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv414.i
  store i32 %i.je, ptr %i.jy, align 4, !tbaa !10
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv414.i
  store i32 %i.jh, ptr %i.jz, align 4, !tbaa !10
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv414.i
  store i32 %i.jk, ptr %i.ka, align 4, !tbaa !10
  %i.kb = add i64 %indvars.iv414.i, %i.in
  %i.kc = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.kb) #6, !srcloc !59
  %i.kd = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv414.i ; 8 uses
  store i64 %i.kc, ptr %i.kd, align 16, !tbaa !11
  %i.ke = load i8, ptr %i.jm, align 4, !tbaa !11  ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i8 %i.ke, ptr %i.kf, align 8, !tbaa !11
  %i.kg = load i8, ptr %i.jn, align 1, !tbaa !11  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 9
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !11
  %i.ki = load i8, ptr %i.jo, align 2, !tbaa !11  ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kd, i64 10
  store i8 %i.ki, ptr %i.kj, align 2, !tbaa !11
  %i.kk = lshr i32 %i.js, 8
  %i.kl = trunc i32 %i.kk to i8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kd, i64 11
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !11
  %i.kn = trunc i32 %i.js to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 12
  store i8 %i.kn, ptr %i.ko, align 4, !tbaa !11
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kd, i64 13
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv414.i ; 3 uses
  %i.kr = load ptr, ptr %i.kq, align 16, !tbaa !54 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.kp, ptr noundef nonnull align 1 dereferenceable(51) %i.kr, i64 51, i1 false)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 51
  store ptr %i.ks, ptr %i.kq, align 16, !tbaa !54
  %i.kt = add i32 %i.js, -51
  %i.ku = lshr i32 %i.kt, 6
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store i32 %i.ku, ptr %i.kv, align 8, !tbaa !60
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv414.i ; 2 uses
  store ptr %i.kd, ptr %i.kw, align 16, !tbaa !54
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  store i32 1, ptr %i.kx, align 8, !tbaa !60
  %indvars.iv.next415.i = add nuw nsw i64 %indvars.iv414.i, 1 ; 13 uses
  %exitcond418.not.i = icmp eq i64 %indvars.iv414.i, %i.jq
  br i1 %exitcond418.not.i, label %._crit_edge379.loopexit.peel.begin.i, label %bb.aw, !llvm.loop !39

._crit_edge379.loopexit.peel.begin.i:             ; preds = %bb.aw
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next415.i
  store i32 %i.iq, ptr %i.ky, align 4, !tbaa !10
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv.next415.i
  store i32 %i.is, ptr %i.kz, align 4, !tbaa !10
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next415.i
  store i32 %i.iv, ptr %i.la, align 4, !tbaa !10
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.next415.i
  store i32 %i.iy, ptr %i.lb, align 4, !tbaa !10
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %indvars.iv.next415.i
  store i32 %i.jb, ptr %i.lc, align 4, !tbaa !10
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %indvars.iv.next415.i
  store i32 %i.je, ptr %i.ld, align 4, !tbaa !10
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %indvars.iv.next415.i
  store i32 %i.jh, ptr %i.le, align 4, !tbaa !10
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv.next415.i
  store i32 %i.jk, ptr %i.lf, align 4, !tbaa !10
  %i.lg = add i64 %indvars.iv.next415.i, %i.in
  %i.lh = call i64 asm "bswapq $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.lg) #6, !srcloc !59
  %i.li = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv.next415.i ; 8 uses
  store i64 %i.lh, ptr %i.li, align 16, !tbaa !11
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i8 %i.ke, ptr %i.lj, align 8, !tbaa !11
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 9
  store i8 %i.kg, ptr %i.lk, align 1, !tbaa !11
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 10
  store i8 %i.ki, ptr %i.ll, align 2, !tbaa !11
  %i.lm = lshr i32 %.0352.i, 8
  %i.ln = trunc i32 %i.lm to i8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 11
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !11
  %i.lp = trunc i32 %.0352.i to i8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  store i8 %i.lp, ptr %i.lq, align 4, !tbaa !11
  %i.lr = getelementptr inbounds nuw i8, ptr %i.li, i64 13
  %i.ls = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next415.i ; 3 uses
  %i.lt = load ptr, ptr %i.ls, align 16, !tbaa !54 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.lr, ptr noundef nonnull align 1 dereferenceable(51) %i.lt, i64 51, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 51
  store ptr %i.lu, ptr %i.ls, align 16, !tbaa !54
  %i.lv = add i32 %.0352.i, -51
  %i.lw = lshr i32 %i.lv, 6
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store i32 %i.lw, ptr %i.lx, align 8, !tbaa !60
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next415.i ; 2 uses
  store ptr %i.li, ptr %i.ly, align 16, !tbaa !54
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store i32 1, ptr %i.lz, align 8, !tbaa !60
  br label %._crit_edge379.i

._crit_edge379.i:                                 ; preds = %._crit_edge379.loopexit.peel.begin.i, %._crit_edge.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  %i.ma = call i32 @llvm.umin.i32(i32 %.0351.i, i32 %.0352.i)
  %i.mb = add i32 %i.ma, -51                      ; 2 uses
  %i.mc = lshr i32 %i.mb, 6                       ; 2 uses
  %i.md = icmp ugt i32 %i.mb, 2111
  br i1 %i.md, label %.preheader373.i, label %.loopexit.i

.preheader373.i:                                  ; preds = %._crit_edge379.i
  br i1 %.not402.i, label %.preheader.split.i, label %.lr.ph381.preheader.i

.lr.ph381.preheader.i:                            ; preds = %.preheader373.i
  %wide.trip.count422.i = zext i32 %i.gu to i64   ; 2 uses
  br label %.lr.ph381.i

.lr.ph384.us.i:                                   ; preds = %.lr.ph381.i, %._crit_edge385.us.i
  %.0356.us.i = phi i32 [ %i.mu, %._crit_edge385.us.i ], [ 0, %.lr.ph381.i ]
  %.0355.us.i = phi i32 [ %i.mv, %._crit_edge385.us.i ], [ %i.mc, %.lr.ph381.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph384.us.i
  %indvars.iv424.i = phi i64 [ 0, %.lr.ph384.us.i ], [ %indvars.iv.next425.i, %bb.ax ] ; 4 uses
  %i.me = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv424.i ; 3 uses
  %i.mf = load ptr, ptr %i.me, align 16, !tbaa !54
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2048 ; 2 uses
  store ptr %i.mg, ptr %i.me, align 16, !tbaa !54
  %i.mh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv424.i ; 2 uses
  store ptr %i.mg, ptr %i.mh, align 16, !tbaa !54
  %i.mi = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 2 uses
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !60
  %i.mk = add nsw i32 %i.mj, -32
  store i32 %i.mk, ptr %i.mi, align 8, !tbaa !60
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 32, ptr %i.ml, align 8, !tbaa !60
  %i.mm = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv424.i ; 5 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !57
  %i.mp = load <2 x ptr>, ptr %i.mm, align 8, !tbaa !62
  %i.mq = getelementptr inbounds nuw i8, <2 x ptr> %i.mp, i64 2048
  store <2 x ptr> %i.mq, ptr %i.mm, align 8, !tbaa !62
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  store i32 128, ptr %i.mr, align 8, !tbaa !63
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 2032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, ptr noundef nonnull align 1 dereferenceable(16) %i.mt, i64 16, i1 false)
  %indvars.iv.next425.i = add nuw nsw i64 %indvars.iv424.i, 1 ; 2 uses
  %exitcond428.not.i = icmp eq i64 %indvars.iv.next425.i, %wide.trip.count422.i
  br i1 %exitcond428.not.i, label %._crit_edge385.us.i, label %bb.ax, !llvm.loop !40

._crit_edge385.us.i:                              ; preds = %bb.ax
  %i.mu = add i32 %.0356.us.i, 2048               ; 2 uses
  %i.mv = add nsw i32 %.0355.us.i, -32            ; 2 uses
  %i.mw = icmp ugt i32 %i.mv, 32
  br i1 %i.mw, label %.lr.ph384.us.i, label %.loopexit.i, !llvm.loop !41

.lr.ph381.i:                                      ; preds = %.lr.ph381.i, %.lr.ph381.preheader.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph381.preheader.i ], [ %indvars.iv.next420.i.1, %.lr.ph381.i ] ; 5 uses
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv419.i
  %i.my = load ptr, ptr %i.mx, align 16, !tbaa !54
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv419.i ; 2 uses
  store ptr %i.my, ptr %i.mz, align 16, !tbaa !54
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i32 32, ptr %i.na, align 8, !tbaa !60
  %i.nb = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv419.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store i32 128, ptr %i.nc, align 16, !tbaa !63
  %indvars.iv.next420.i = or disjoint i64 %indvars.iv419.i, 1 ; 3 uses
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv.next420.i
  %i.ne = load ptr, ptr %i.nd, align 16, !tbaa !54
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv.next420.i ; 2 uses
  store ptr %i.ne, ptr %i.nf, align 16, !tbaa !54
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store i32 32, ptr %i.ng, align 8, !tbaa !60
  %i.nh = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv.next420.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store i32 128, ptr %i.ni, align 8, !tbaa !63
  %indvars.iv.next420.i.1 = add nuw nsw i64 %indvars.iv419.i, 2 ; 2 uses
  %exitcond423.not.i.1 = icmp eq i64 %indvars.iv.next420.i.1, %wide.trip.count422.i
  br i1 %exitcond423.not.i.1, label %.lr.ph384.us.i, label %.lr.ph381.i, !llvm.loop !42

.preheader.split.i:                               ; preds = %.preheader373.i, %.preheader.split.i
  %.0355.i = phi i32 [ %i.nj, %.preheader.split.i ], [ %i.mc, %.preheader373.i ]
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef 0) #5
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %i.c, i32 noundef 0) #5
  %i.nj = add nsw i32 %.0355.i, -32               ; 2 uses
  %i.nk = icmp ugt i32 %i.nj, 32
  br i1 %i.nk, label %.preheader.split.i, label %.loopexit.thread.i, !llvm.loop !41

.loopexit.thread.i:                               ; preds = %.preheader.split.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) 0) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br label %._crit_edge389.thread.i

.loopexit.i:                                      ; preds = %._crit_edge385.us.i, %._crit_edge379.i
  %.1357.i = phi i32 [ 0, %._crit_edge379.i ], [ %i.mu, %._crit_edge385.us.i ] ; 6 uses
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %4, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  br i1 %.not402.i, label %._crit_edge389.thread.i, label %.lr.ph388.split.i

.lr.ph388.split.i:                                ; preds = %.loopexit.i
  %i.nl = add nsw i32 %i.gu, -1
  %i.nm = zext i32 %i.nl to i64                   ; 2 uses
  %wide.trip.count432.i = zext i32 %i.gu to i64   ; 2 uses
  %i.nn = add nsw i64 %wide.trip.count432.i, -1   ; 15 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.lr.ph388.split.i
  %indvars.iv429.i = phi i64 [ 0, %.lr.ph388.split.i ], [ %indvars.iv.next430.i, %bb.ay ] ; 5 uses
  %i.no = icmp eq i64 %indvars.iv429.i, %i.nm
  %i.np = select i1 %i.no, i32 %.0352.i, i32 %.0351.i ; 2 uses
  %i.nq = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %indvars.iv429.i ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !60
  %i.nt = shl nsw i32 %i.ns, 6                    ; 2 uses
  %i.nu = load ptr, ptr %i.nq, align 16, !tbaa !54
  %i.nv = zext i32 %i.nt to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nv
  %i.nx = add i32 %i.np, -51
  %i.ny = add i32 %.1357.i, %i.nt
  %i.nz = sub i32 %i.nx, %i.ny                    ; 2 uses
  %i.oa = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv429.i ; 4 uses
  %i.ob = zext i32 %i.nz to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.oa, ptr align 1 %i.nw, i64 %i.ob, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.ob
  store i8 -128, ptr %i.oc, align 1, !tbaa !11
  %i.od = shl i32 %i.np, 3
  %i.oe = add i32 %i.od, 616
  %i.of = icmp ult i32 %i.nz, 56                  ; 2 uses
  %i.og = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oe) #6
  %i.oh = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv429.i ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %.472.i = select i1 %i.of, i32 1, i32 2
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.of, i64 60, i64 124
  %..i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.oa, i64 %..i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.og, ptr %..i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.472.i, ptr %i.oi, align 8, !tbaa !60
  store ptr %i.oa, ptr %i.oh, align 16, !tbaa !54
  %indvars.iv.next430.i = add nuw nsw i64 %indvars.iv429.i, 1 ; 2 uses
  %exitcond433.not.i = icmp eq i64 %indvars.iv.next430.i, %i.nn
  br i1 %exitcond433.not.i, label %._crit_edge389.loopexit.peel.begin.i, label %bb.ay, !llvm.loop !43

._crit_edge389.loopexit.peel.begin.i:             ; preds = %bb.ay
  %i.oj = icmp eq i64 %i.nn, %i.nm
  %i.ok = select i1 %i.oj, i32 %.0352.i, i32 %.0351.i ; 7 uses
  %i.ol = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.nn ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load i32, ptr %i.om, align 8, !tbaa !60
  %i.oo = shl nsw i32 %i.on, 6                    ; 2 uses
  %i.op = load ptr, ptr %i.ol, align 16, !tbaa !54
  %i.oq = zext i32 %i.oo to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 %i.oq
  %.neg183 = add i32 %i.ok, -51
  %i.os = add i32 %.1357.i, %i.oo
  %i.ot = sub i32 %.neg183, %i.os                 ; 2 uses
  %i.ou = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %i.nn ; 4 uses
  %i.ov = zext i32 %i.ot to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ou, ptr align 1 %i.or, i64 %i.ov, i1 false)
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ov
  store i8 -128, ptr %i.ow, align 1, !tbaa !11
  %i.ox = shl i32 %i.ok, 3
  %i.oy = add i32 %i.ox, 616
  %i.oz = icmp ult i32 %i.ot, 56                  ; 2 uses
  %i.pa = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.oy) #6
  %i.pb = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.nn ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %.474.i = select i1 %i.oz, i32 1, i32 2
  %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.oz, i64 60, i64 124
  %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.ou, i64 %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i32 %i.pa, ptr %.473.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !11
  store i32 %.474.i, ptr %i.pc, align 8, !tbaa !60
  store ptr %i.ou, ptr %i.pb, align 16, !tbaa !54
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.pe = getelementptr inbounds nuw i8, ptr %i.hc, i64 32 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %i.pg = getelementptr inbounds nuw i8, ptr %i.hc, i64 64 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.c, i64 364
  %i.pi = getelementptr inbounds nuw i8, ptr %i.hc, i64 96 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.pk = getelementptr inbounds nuw i8, ptr %i.hc, i64 128 ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.c, i64 372
  %i.pm = getelementptr inbounds nuw i8, ptr %i.hc, i64 160 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.po = getelementptr inbounds nuw i8, ptr %i.hc, i64 192 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.c, i64 380
  %i.pq = getelementptr inbounds nuw i8, ptr %i.hc, i64 224 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  br label %bb.az

._crit_edge389.thread.i:                          ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %7, i8 0, i64 1024, i1 false)
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  br label %._crit_edge401.i

bb.az:                                            ; preds = %bb.az, %._crit_edge389.loopexit.peel.begin.i
  %indvars.iv436.i = phi i64 [ 0, %._crit_edge389.loopexit.peel.begin.i ], [ %indvars.iv.next437.i, %bb.az ] ; 11 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv436.i ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !10
  %i.pu = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.pt) #6, !srcloc !64
  %i.pv = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv436.i ; 11 uses
  store i32 %i.pu, ptr %i.pv, align 16, !tbaa !11
  %i.pw = load i32, ptr %i.pd, align 4, !tbaa !10
  store i32 %i.pw, ptr %i.ps, align 4, !tbaa !10
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv436.i ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !10
  %i.pz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.py) #6, !srcloc !65
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  store i32 %i.pz, ptr %i.qa, align 4, !tbaa !11
  %i.qb = load i32, ptr %i.pf, align 4, !tbaa !10
  store i32 %i.qb, ptr %i.px, align 4, !tbaa !10
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv436.i ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !10
  %i.qe = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qd) #6, !srcloc !66
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  store i32 %i.qe, ptr %i.qf, align 8, !tbaa !11
  %i.qg = load i32, ptr %i.ph, align 4, !tbaa !10
  store i32 %i.qg, ptr %i.qc, align 4, !tbaa !10
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv436.i ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !10
  %i.qj = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qi) #6, !srcloc !67
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pv, i64 12
  store i32 %i.qj, ptr %i.qk, align 4, !tbaa !11
  %i.ql = load i32, ptr %i.pj, align 4, !tbaa !10
  store i32 %i.ql, ptr %i.qh, align 4, !tbaa !10
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv436.i ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !10
  %i.qo = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qn) #6, !srcloc !68
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  store i32 %i.qo, ptr %i.qp, align 16, !tbaa !11
  %i.qq = load i32, ptr %i.pl, align 4, !tbaa !10
  store i32 %i.qq, ptr %i.qm, align 4, !tbaa !10
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv436.i ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !10
  %i.qt = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qs) #6, !srcloc !69
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pv, i64 20
  store i32 %i.qt, ptr %i.qu, align 4, !tbaa !11
  %i.qv = load i32, ptr %i.pn, align 4, !tbaa !10
  store i32 %i.qv, ptr %i.qr, align 4, !tbaa !10
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv436.i ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !10
  %i.qy = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.qx) #6, !srcloc !70
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  store i32 %i.qy, ptr %i.qz, align 8, !tbaa !11
  %i.ra = load i32, ptr %i.pp, align 4, !tbaa !10
  store i32 %i.ra, ptr %i.qw, align 4, !tbaa !10
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv436.i ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !10
  %i.rd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rc) #6, !srcloc !71
  %i.re = getelementptr inbounds nuw i8, ptr %i.pv, i64 28
  store i32 %i.rd, ptr %i.re, align 4, !tbaa !11
  %i.rf = load i32, ptr %i.pr, align 4, !tbaa !10
  store i32 %i.rf, ptr %i.rb, align 4, !tbaa !10
  %i.rg = getelementptr inbounds nuw i8, ptr %i.pv, i64 32
  store i8 -128, ptr %i.rg, align 16, !tbaa !11
  %i.rh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 768) #6, !srcloc !72
  %i.ri = getelementptr inbounds nuw i8, ptr %i.pv, i64 60
  store i32 %i.rh, ptr %i.ri, align 4, !tbaa !11
  %i.rj = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %indvars.iv436.i ; 2 uses
  store ptr %i.pv, ptr %i.rj, align 16, !tbaa !54
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store i32 1, ptr %i.rk, align 8, !tbaa !60
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %exitcond440.not.i = icmp eq i64 %indvars.iv.next437.i, %wide.trip.count432.i
  br i1 %exitcond440.not.i, label %.lr.ph400.split.i, label %bb.az, !llvm.loop !44

.lr.ph400.split.i:                                ; preds = %bb.az
  call void @sha256_multi_block(ptr noundef nonnull %i.hc, ptr noundef nonnull %5, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  %i.rl = getelementptr inbounds nuw i8, ptr %i.c, i64 516 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.c, i64 517 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.c, i64 518 ; 2 uses
  %8 = sub i32 %.0351.i, %.1357.i
  %9 = zext i32 %8 to i64
  %10 = add nuw i32 %.0351.i, 21
  %11 = zext i32 %10 to i64                       ; 2 uses
  %12 = trunc i32 %.0351.i to i8
  %13 = and i8 %12, 15
  %14 = xor i8 %13, 15
  %15 = and i32 %.0351.i, 15
  %16 = xor i32 %15, 15
  %17 = zext nneg i32 %16 to i64                  ; 2 uses
  %18 = add nuw nsw i64 %17, 1
  %19 = and i32 %.0351.i, -16                     ; 3 uses
  %invariant.op.a = sub i32 %19, %.1357.i
  %.reass.i = add i32 %invariant.op.a, 48
  %20 = lshr i32 %.reass.i, 4
  %21 = add nuw i32 %19, 64                       ; 2 uses
  %22 = lshr i32 %21, 8
  %23 = trunc i32 %22 to i8
  %24 = trunc i32 %21 to i8
  %invariant.op = add nuw i32 %19, 69
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ba, %.lr.ph400.split.i
  %indvars.iv442.i = phi i64 [ 0, %.lr.ph400.split.i ], [ %indvars.iv.next443.i, %bb.ba ] ; 10 uses
  %.0349398.i = phi ptr [ %i.gm, %.lr.ph400.split.i ], [ %scevgep441.i, %bb.ba ] ; 7 uses
  %.0358396.i = phi i32 [ 0, %.lr.ph400.split.i ], [ %i.tj, %bb.ba ]
  %i.ro = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv442.i ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 2 uses
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !57
  %i.rr = load ptr, ptr %i.ro, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr align 1 %i.rr, i64 %9, i1 false)
  %i.rs = load ptr, ptr %i.rp, align 8, !tbaa !57
  store ptr %i.rs, ptr %i.ro, align 8, !tbaa !56
  %i.rt = getelementptr i8, ptr %.0349398.i, i64 %11 ; 9 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv442.i
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !10
  %i.rw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.rv) #6, !srcloc !73
  store i32 %i.rw, ptr %i.rt, align 4, !tbaa !10
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv442.i
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !10
  %i.rz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ry) #6, !srcloc !74
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !10
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv442.i
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !10
  %i.sd = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sc) #6, !srcloc !75
  %i.se = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  store i32 %i.sd, ptr %i.se, align 4, !tbaa !10
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv442.i
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !10
  %i.sh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sg) #6, !srcloc !76
  %i.si = getelementptr inbounds nuw i8, ptr %i.rt, i64 12
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !10
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv442.i
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !10
  %i.sl = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sk) #6, !srcloc !77
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !10
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv442.i
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !10
  %i.sp = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.so) #6, !srcloc !78
  %i.sq = getelementptr inbounds nuw i8, ptr %i.rt, i64 20
  store i32 %i.sp, ptr %i.sq, align 4, !tbaa !10
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv442.i
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !10
  %i.st = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ss) #6, !srcloc !79
  %i.su = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  store i32 %i.st, ptr %i.su, align 4, !tbaa !10
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv442.i
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !10
  %i.sx = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.sw) #6, !srcloc !80
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rt, i64 28
  store i32 %i.sx, ptr %i.sy, align 4, !tbaa !10
  %i.sz = getelementptr i8, ptr %i.rt, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.sz, i8 %14, i64 %18, i1 false), !tbaa !11
  %scevgep.i = getelementptr i8, ptr %.0349398.i, i64 33
  %i.ta = getelementptr i8, ptr %scevgep.i, i64 %11
  %scevgep441.i = getelementptr i8, ptr %i.ta, i64 %17 ; 7 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  store i32 %20, ptr %i.tb, align 8, !tbaa !63
  %i.tc = load i8, ptr %i.rl, align 4, !tbaa !11
  store i8 %i.tc, ptr %.0349398.i, align 1, !tbaa !11
  %i.td = load i8, ptr %i.rm, align 1, !tbaa !11
  %i.te = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 1
  store i8 %i.td, ptr %i.te, align 1, !tbaa !11
  %i.tf = load i8, ptr %i.rn, align 2, !tbaa !11
  %i.tg = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 2
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !11
  %i.th = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 3
  store i8 %23, ptr %i.th, align 1, !tbaa !11
  %i.ti = getelementptr inbounds nuw i8, ptr %.0349398.i, i64 4
  store i8 %24, ptr %i.ti, align 1, !tbaa !11
  %i.tj = add i32 %.0358396.i, %invariant.op      ; 2 uses
  %indvars.iv.next443.i = add nuw nsw i64 %indvars.iv442.i, 1 ; 2 uses
  %exitcond446.not.i = icmp eq i64 %indvars.iv.next443.i, %i.nn
  br i1 %exitcond446.not.i, label %._crit_edge401.loopexit.peel.begin.i, label %bb.ba, !llvm.loop !45

._crit_edge401.loopexit.peel.begin.i:             ; preds = %bb.ba
  %i.tk = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %i.nn ; 4 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 16, !tbaa !57
  %i.tn = load ptr, ptr %i.tk, align 8, !tbaa !56
  %i.to = sub i32 %i.ok, %.1357.i
  %i.tp = zext i32 %i.to to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tm, ptr align 1 %i.tn, i64 %i.tp, i1 false)
  %i.tq = load ptr, ptr %i.tl, align 16, !tbaa !57
  store ptr %i.tq, ptr %i.tk, align 8, !tbaa !56
  %i.tr = add i32 %i.ok, 21
  %i.ts = zext i32 %i.tr to i64
  %i.tt = getelementptr i8, ptr %scevgep441.i, i64 %i.ts ; 9 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.nn
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !10
  %i.tw = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.tv) #6, !srcloc !73
  store i32 %i.tw, ptr %i.tt, align 4, !tbaa !10
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %i.nn
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !10
  %i.tz = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ty) #6, !srcloc !74
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  store i32 %i.tz, ptr %i.ua, align 4, !tbaa !10
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %i.nn
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !10
  %i.ud = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.uc) #6, !srcloc !75
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !10
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.nn
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !10
  %i.uh = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ug) #6, !srcloc !76
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  store i32 %i.uh, ptr %i.ui, align 4, !tbaa !10
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %i.nn
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !10
  %i.ul = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.uk) #6, !srcloc !77
  %i.um = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store i32 %i.ul, ptr %i.um, align 4, !tbaa !10
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.nn
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !10
  %i.up = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.uo) #6, !srcloc !78
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tt, i64 20
  store i32 %i.up, ptr %i.uq, align 4, !tbaa !10
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.nn
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !10
  %i.ut = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.us) #6, !srcloc !79
  %i.uu = getelementptr inbounds nuw i8, ptr %i.tt, i64 24
  store i32 %i.ut, ptr %i.uu, align 4, !tbaa !10
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %i.nn
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !10
  %i.ux = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.uw) #6, !srcloc !80
  %i.uy = getelementptr inbounds nuw i8, ptr %i.tt, i64 28
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !10
  %i.uz = getelementptr i8, ptr %i.tt, i64 32
  %i.va = trunc i32 %i.ok to i8
  %i.vb = and i8 %i.va, 15
  %i.vc = xor i8 %i.vb, 15
  %i.vd = and i32 %i.ok, 15
  %narrow.i = sub nuw nsw i32 16, %i.vd
  %i.ve = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.uz, i8 %i.vc, i64 %i.ve, i1 false), !tbaa !11
  %i.vf = and i32 %i.ok, -16                      ; 3 uses
  %reass.sub.peel.i = add i32 %i.vf, 48
  %i.vg = sub i32 %reass.sub.peel.i, %.1357.i
  %i.vh = lshr i32 %i.vg, 4
  %i.vi = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store i32 %i.vh, ptr %i.vi, align 8, !tbaa !63
  %i.vj = add i32 %i.vf, 64                       ; 2 uses
  %i.vk = load i8, ptr %i.rl, align 4, !tbaa !11
  store i8 %i.vk, ptr %scevgep441.i, align 1, !tbaa !11
  %i.vl = load i8, ptr %i.rm, align 1, !tbaa !11
  %i.vm = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 1
  store i8 %i.vl, ptr %i.vm, align 1, !tbaa !11
  %i.vn = load i8, ptr %i.rn, align 2, !tbaa !11
  %i.vo = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 2
  store i8 %i.vn, ptr %i.vo, align 1, !tbaa !11
  %i.vp = lshr i32 %i.vj, 8
  %i.vq = trunc i32 %i.vp to i8
  %i.vr = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 3
  store i8 %i.vq, ptr %i.vr, align 1, !tbaa !11
  %i.vs = trunc i32 %i.vj to i8
  %i.vt = getelementptr inbounds nuw i8, ptr %scevgep441.i, i64 4
  store i8 %i.vs, ptr %i.vt, align 1, !tbaa !11
  %i.vu = add i32 %i.vf, 69
  %i.vv = add i32 %i.vu, %i.tj
  br label %._crit_edge401.i

._crit_edge401.i:                                 ; preds = %._crit_edge401.loopexit.peel.begin.i, %._crit_edge389.thread.i
  %.0358.lcssa.i = phi i32 [ 0, %._crit_edge389.thread.i ], [ %i.vv, %._crit_edge401.loopexit.peel.begin.i ]
  call void @aesni_multi_cbc_encrypt(ptr noundef nonnull %6, ptr noundef %i.c, i32 noundef range(i32 0, 1073741824) %i.gt) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %7, i64 noundef 1024) #5
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.hc, i64 noundef 256) #5
  br label %tls1_1_multi_block_encrypt.exit

tls1_1_multi_block_encrypt.exit:                  ; preds = %bb.aq, %._crit_edge401.i
  %.0.i = phi i32 [ %.0358.lcssa.i, %._crit_edge401.i ], [ 0, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %bb.ap, %bb.ad, %bb.af, %bb.ah, %bb.ak, %bb.ae, %sha256_update.exit157, %bb.ab, %bb.u, %bb.x, %tls1_1_multi_block_encrypt.exit, %bb.ac, %bb.t
  %.3 = phi i32 [ -1, %bb.ae ], [ %.0, %bb.t ], [ %.0.i, %tls1_1_multi_block_encrypt.exit ], [ %i.eh, %bb.ac ], [ 0, %bb.x ], [ 32, %bb.ab ], [ -1, %bb.u ], [ %i.ed, %sha256_update.exit157 ], [ -1, %bb.ak ], [ -1, %bb.ad ], [ -1, %bb.a ], [ -1, %bb.af ], [ %i.gk, %bb.ap ], [ 0, %bb.ah ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #1

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @SHA256_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sha256_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %i.b to i64
  %i.d = sub nsw i64 64, %i.c
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d) ; 3 uses
  %i.e = tail call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %spec.select) #5 ; 0 uses
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
  tail call void @sha256_block_data_order(ptr noundef nonnull %0, ptr noundef %.032, i64 noundef %i.j) #5
  %i.k = getelementptr inbounds nuw i8, ptr %.032, i64 %i.i ; 2 uses
  %i.l = lshr i64 %.033, 29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19
  %i.o = trunc i64 %i.l to i32
  %i.p = add i32 %i.n, %i.o                       ; 2 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
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
  %i.w = tail call i32 @SHA256_Update(ptr noundef nonnull %0, ptr noundef %.1, i64 noundef %i.h) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

declare i32 @SHA256_Final(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @sha256_block_data_order(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

end_hunk_0
