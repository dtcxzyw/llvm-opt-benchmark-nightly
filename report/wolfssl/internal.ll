Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@DoClientKeyExchange:bb.a
  store i8 2, ptr %i.f, align 4, !tbaa !226
  %i.ee = load i8, ptr %i.ab, align 1, !tbaa !229
  switch i8 %i.ee, label %BuildCertHashes.exit [
    i8 1, label %bb.ap
    i8 7, label %bb.as
    i8 2, label %bb.aw
  ]

bb.ap:                                            ; preds = %.thread392
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.eg = load ptr, ptr %i.ef, align 16, !tbaa !250 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !107
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !106
  %i.ej = tail call i32 @wc_RsaSetRNG(ptr noundef %i.eg, ptr noundef %i.ei) #27 ; 2 uses
  %.not.i196 = icmp eq i32 %i.ej, 0
  br i1 %.not.i196, label %bb.aq, label %RsaDec.exit

bb.aq:                                            ; preds = %bb.ap
  %i.ek = zext i32 %.sroa.47.5400 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  %i.em = call i32 @wc_RsaPrivateDecryptInline(ptr noundef %i.el, i32 noundef %.sroa.39.2398, ptr noundef nonnull %i.a, ptr noundef %i.eg) #27 ; 3 uses
  %i.en = add i32 %i.em, -1                       ; 2 uses
  %i.eo = lshr i32 %i.en, 31
  %i.ep = trunc nuw nsw i32 %i.eo to i8
  %i.eq = add nsw i8 %i.ep, -1                    ; 2 uses
  %i.er = sext i8 %i.eq to i32
  %i.es = and i32 %i.em, %i.er                    ; 2 uses
  %isneg.i = icmp slt i32 %i.en, 0
  %i.et = load <8 x i8>, ptr %i.a, align 8, !tbaa !52
  %i.eu = insertelement <8 x i8> poison, i8 %i.eq, i64 0
  %i.ev = shufflevector <8 x i8> %i.eu, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ew = and <8 x i8> %i.ev, %i.et
  %i.ex = bitcast <8 x i8> %i.ew to i64
  %i.ey = inttoptr i64 %i.ex to ptr               ; 2 uses
  br i1 %isneg.i, label %RsaDec.exit, label %RsaDec.exit.thread

RsaDec.exit.thread:                               ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %DhAgree.exit.thread427

RsaDec.exit:                                      ; preds = %bb.aq, %bb.ap
  %.sroa.0.5 = phi ptr [ null, %bb.ap ], [ %i.ey, %bb.aq ]
  %.sroa.75.8 = phi i32 [ %.sroa.75.2401, %bb.ap ], [ %i.es, %bb.aq ]
  %.0.i197 = phi i32 [ %i.ej, %bb.ap ], [ %i.em, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ez = icmp eq i32 %.0.i197, -173
  br i1 %i.ez, label %bb.ar, label %DhAgree.exit.thread427

DhAgree.exit.thread427:                           ; preds = %RsaDec.exit.thread, %RsaDec.exit
  %.0.i197415 = phi i32 [ 0, %RsaDec.exit.thread ], [ %.0.i197, %RsaDec.exit ]
  %.sroa.75.8413 = phi i32 [ %i.es, %RsaDec.exit.thread ], [ %.sroa.75.8, %RsaDec.exit ] ; 2 uses
  %.sroa.0.5411 = phi ptr [ %i.ey, %RsaDec.exit.thread ], [ %.sroa.0.5, %RsaDec.exit ]
  %i.fa = icmp ne i32 %.sroa.75.8413, 48
  %.neg = sext i1 %i.fa to i32
  store volatile i32 %.neg, ptr %i.d, align 4, !tbaa !56
  %.0..0..0..0.10 = load volatile i32, ptr %i.d, align 4, !tbaa !56
  %i.fb = or i32 %.0..0..0..0.10, %.0.i197415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fc = lshr i32 %i.fb, 31
  %i.fd = trunc nuw nsw i32 %i.fc to i8
  %i.fe = add nsw i8 %i.fd, -1
  %i.ff = ptrtoint ptr %.sroa.0.5411 to i64
  br label %bb.bc

bb.ar:                                            ; preds = %RsaDec.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %BuildCertHashes.exit

bb.as:                                            ; preds = %.thread392
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 745
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !231
  %.not180 = icmp eq i8 %i.fh, 0
  %spec.select.v = select i1 %.not180, i64 1320, i64 224
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v
  %.0135 = load ptr, ptr %spec.select, align 8, !tbaa !129 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 4 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !247
  %i.fk = load ptr, ptr %i.r, align 8, !tbaa !134 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !137
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !106
  %i.fp = tail call i32 @wc_ecc_set_rng(ptr noundef %.0135, ptr noundef %i.fo) #27 ; 2 uses
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.at, label %EccSharedSecret.exit

bb.at:                                            ; preds = %bb.as
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fs = tail call i32 @wc_ecc_shared_secret(ptr noundef %.0135, ptr noundef %i.fj, ptr noundef %i.fm, ptr noundef nonnull %i.fr) #27
  br label %EccSharedSecret.exit

EccSharedSecret.exit:                             ; preds = %bb.at, %bb.as
  %.0.i198 = phi i32 [ %i.fs, %bb.at ], [ %i.fp, %bb.as ]
  %i.ft = load ptr, ptr %i.fi, align 8, !tbaa !129 ; 2 uses
  %.not.i199 = icmp eq ptr %i.ft, null
  br i1 %.not.i199, label %FreeKey.exit, label %bb.au

bb.au:                                            ; preds = %EccSharedSecret.exit
  %i.fu = tail call i32 @wc_ecc_free(ptr noundef nonnull %i.ft) #27 ; 0 uses
  %.pr.i = load ptr, ptr %i.fi, align 8, !tbaa !129 ; 2 uses
  %.not13.i = icmp eq ptr %.pr.i, null
  br i1 %.not13.i, label %bb.av, label %.thread.i200

.thread.i200:                                     ; preds = %bb.au
  tail call void @wolfSSL_Free(ptr noundef nonnull %.pr.i) #27
  br label %bb.av

bb.av:                                            ; preds = %.thread.i200, %bb.au
  store ptr null, ptr %i.fi, align 8, !tbaa !129
  br label %FreeKey.exit

FreeKey.exit:                                     ; preds = %EccSharedSecret.exit, %bb.av
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1329
  store i8 0, ptr %i.fv, align 1, !tbaa !178
  br label %DhAgree.exit

bb.aw:                                            ; preds = %.thread392
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.fx = load ptr, ptr %i.fw, align 16, !tbaa !251 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.fz = load ptr, ptr %i.fy, align 16, !tbaa !165
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !166
  %i.gc = zext i32 %.sroa.47.5400 to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.gc ; 3 uses
  %i.ge = load ptr, ptr %i.r, align 8, !tbaa !134 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !137
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.gj = load ptr, ptr %i.gi, align 16, !tbaa !170 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !243 ; 2 uses
  %.not.i201 = icmp eq ptr %i.fx, null
  br i1 %.not.i201, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gm = icmp eq ptr %i.gj, null
  %i.gn = icmp eq i32 %i.gl, 0
  %or.cond.i = or i1 %i.gm, %i.gn
  br i1 %or.cond.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.go = tail call i32 @wc_DhCheckPubKey(ptr noundef nonnull %i.fx, ptr noundef %i.gd, i32 noundef %.sroa.75.2401) #27
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.gp = tail call i32 @wc_DhCheckPubValue(ptr noundef %i.gj, i32 noundef %i.gl, ptr noundef %i.gd, i32 noundef %.sroa.75.2401) #27
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0.i202 = phi i32 [ %i.go, %bb.ay ], [ %i.gp, %bb.az ]
  %.not20.i = icmp eq i32 %.0.i202, 0
  br i1 %.not20.i, label %bb.bb, label %BuildCertHashes.exit

bb.bb:                                            ; preds = %bb.ba
  %i.gq = tail call i32 @wc_DhAgree(ptr noundef %i.fx, ptr noundef %i.gg, ptr noundef nonnull %i.gh, ptr noundef %i.fz, i32 noundef %i.gb, ptr noundef %i.gd, i32 noundef %.sroa.75.2401) #27
  br label %DhAgree.exit

DhAgree.exit:                                     ; preds = %bb.bb, %FreeKey.exit
  %.7 = phi i32 [ %i.gq, %bb.bb ], [ %.0.i198, %FreeKey.exit ] ; 2 uses
  %.not181 = icmp eq i32 %.7, 0
  br i1 %.not181, label %bb.bc, label %BuildCertHashes.exit

bb.bc:                                            ; preds = %DhAgree.exit, %DhAgree.exit.thread427
  %.sroa.82.1435 = phi i8 [ %i.fe, %DhAgree.exit.thread427 ], [ -1, %DhAgree.exit ]
  %.sroa.75.4434 = phi i32 [ %.sroa.75.8413, %DhAgree.exit.thread427 ], [ %.sroa.75.2401, %DhAgree.exit ]
  %.sroa.0.3433 = phi i64 [ %i.ff, %DhAgree.exit.thread427 ], [ 0, %DhAgree.exit ] ; 7 uses
  store i8 3, ptr %i.f, align 4, !tbaa !226
  %i.gr = load i8, ptr %i.ab, align 1, !tbaa !229
  switch i8 %i.gr, label %BuildCertHashes.exit [
    i8 1, label %bb.bd
    i8 7, label %bb.be
    i8 2, label %bb.bf
  ]

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.gs = add i32 %.sroa.39.2398, %.sroa.47.5400  ; 2 uses
  store volatile i8 %.sroa.82.1435, ptr %i.e, align 1, !tbaa !52
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !252
  %i.gv = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !137
  store i8 %i.gu, ptr %i.gx, align 1, !tbaa !52
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 729
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !253
  %i.ha = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !137
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  store i8 %i.gz, ptr %i.hd, align 1, !tbaa !52
  %i.he = zext i32 %i.gs to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 %i.he
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -50
  %.0..0..0..0. = load volatile i8, ptr %i.e, align 1, !tbaa !52
  %i.hh = xor i8 %.0..0..0..0., -1                ; 5 uses
  %i.hi = ptrtoint ptr %i.hg to i64               ; 2 uses
  %i.hj = xor i64 %.sroa.0.3433, %i.hi            ; 2 uses
  %4 = insertelement <4 x i8> poison, i8 %i.hh, i64 0
  %5 = shufflevector <4 x i8> %4, <4 x i8> poison, <4 x i32> zeroinitializer
  %6 = bitcast i64 %i.hj to <8 x i8>
  %7 = shufflevector <8 x i8> %6, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = and <4 x i8> %5, %7
  %9 = bitcast i64 %.sroa.0.3433 to <8 x i8>
  %10 = shufflevector <8 x i8> %9, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = xor <4 x i8> %8, %10
  %12 = bitcast <4 x i8> %11 to i32
  %.sroa.0.3.insert.ext316 = zext i32 %12 to i64  ; 2 uses
  %.sroa.0.4.extract.shift321 = lshr i64 %.sroa.0.3433, 32
  %.sroa.0.4.extract.trunc322 = trunc i64 %.sroa.0.4.extract.shift321 to i8
  %i.hk = lshr i64 %i.hj, 32
  %i.hl = trunc i64 %i.hk to i8
  %i.hm = and i8 %i.hh, %i.hl
  %i.hn = xor i8 %i.hm, %.sroa.0.4.extract.trunc322
  %.sroa.0.4.insert.ext324 = zext i8 %i.hn to i64
  %.sroa.0.4.insert.shift325 = shl nuw nsw i64 %.sroa.0.4.insert.ext324, 32
  %.sroa.0.4.insert.mask326 = or i64 %.sroa.0.3433, %.sroa.0.3.insert.ext316
  %.sroa.0.5.extract.shift329 = lshr i64 %.sroa.0.3433, 40
  %.sroa.0.5.extract.trunc330 = trunc i64 %.sroa.0.5.extract.shift329 to i8
  %.5.extract.shift449 = xor i64 %.sroa.0.4.insert.mask326, %i.hi ; 3 uses
  %i.ho = lshr i64 %.5.extract.shift449, 40
  %i.hp = trunc i64 %i.ho to i8
  %i.hq = and i8 %i.hp, %i.hh
  %i.hr = xor i8 %i.hq, %.sroa.0.5.extract.trunc330
  %.sroa.0.5.insert.ext332 = zext i8 %i.hr to i64
  %.sroa.0.5.insert.shift333 = shl nuw nsw i64 %.sroa.0.5.insert.ext332, 40
  %i.hs = or disjoint i64 %.sroa.0.5.insert.shift333, %.sroa.0.4.insert.shift325
  %.sroa.0.6.extract.shift337 = lshr i64 %.sroa.0.3433, 48
  %.sroa.0.6.extract.trunc338 = trunc i64 %.sroa.0.6.extract.shift337 to i8
  %i.ht = lshr i64 %.5.extract.shift449, 48
  %i.hu = trunc i64 %i.ht to i8
  %i.hv = and i8 %i.hu, %i.hh
  %i.hw = xor i8 %i.hv, %.sroa.0.6.extract.trunc338
  %.sroa.0.6.insert.ext340 = zext i8 %i.hw to i64
  %.sroa.0.6.insert.shift341 = shl nuw nsw i64 %.sroa.0.6.insert.ext340, 48
  %i.hx = or disjoint i64 %i.hs, %.sroa.0.6.insert.shift341
  %i.hy = zext i8 %i.hh to i64
  %i.hz = shl nuw i64 %i.hy, 56
  %i.ia = and i64 %.5.extract.shift449, %i.hz
  %.sroa.0.4.insert.mask326.masked454 = and i64 %.sroa.0.3433, -72057594037927936
  %.sroa.0.7.insert.shift349 = xor i64 %i.ia, %.sroa.0.4.insert.mask326.masked454
  %i.ib = or disjoint i64 %i.hx, %.sroa.0.7.insert.shift349
  %.sroa.0.7.insert.insert351 = or disjoint i64 %i.ib, %.sroa.0.3.insert.ext316 ; 2 uses
  %i.ic = inttoptr i64 %.sroa.0.7.insert.insert351 to ptr ; 2 uses
  %.not182 = icmp eq i64 %.sroa.0.7.insert.insert351, 0
  br i1 %.not182, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bd, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader ], [ 2, %bb.bd ] ; 4 uses
  %.0..0..0..0.6 = load volatile i8, ptr %i.e, align 1, !tbaa !52 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !52
  %i.if = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !137
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %indvars.iv ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !52
  %i.ik = xor i8 %.0..0..0..0.6, -1
  %i.il = and i8 %i.ij, %i.ik
  %i.im = and i8 %i.ie, %.0..0..0..0.6
  %i.in = or disjoint i8 %i.il, %i.im
  store i8 %i.in, ptr %i.ii, align 1, !tbaa !52
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.0..0..0..0.6.1 = load volatile i8, ptr %i.e, align 1, !tbaa !52 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv.next
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !52
  %i.iq = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !137
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %indvars.iv.next ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !52
  %i.iv = xor i8 %.0..0..0..0.6.1, -1
  %i.iw = and i8 %i.iu, %i.iv
  %i.ix = and i8 %i.ip, %.0..0..0..0.6.1
  %i.iy = or disjoint i8 %i.iw, %i.ix
  store i8 %i.iy, ptr %i.it, align 1, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 48
  br i1 %exitcond.not.1, label %.loopexit, label %.preheader, !llvm.loop !400

.loopexit:                                        ; preds = %.preheader, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %i.iz = add i32 %.sroa.39.2398, %.sroa.47.5400
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  %i.ja = and i32 %.sroa.75.4434, 65535
  %i.jb = add i32 %i.ja, %.sroa.47.5400
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %.loopexit, %bb.bf
  %.sroa.47.8.ph = phi i32 [ %i.jb, %bb.bf ], [ %i.iz, %bb.be ], [ %i.gs, %.loopexit ]
  store i8 4, ptr %i.f, align 4, !tbaa !226
  %i.jc = call i32 @MakeMasterSecret(ptr noundef nonnull %0) #27 ; 2 uses
  %.not184 = icmp eq i32 %i.jc, 0
  br i1 %.not184, label %bb.bh, label %BuildCertHashes.exit

bb.bh:                                            ; preds = %bb.bg
  store i8 5, ptr %i.f, align 4, !tbaa !226
  store i32 %.sroa.47.8.ph, ptr %2, align 4, !tbaa !56
  store i8 13, ptr %i.h, align 2, !tbaa !145
  %i.jd = load i64, ptr %i.l, align 8             ; 2 uses
  %i.je = and i64 %i.jd, 64
  %.not185 = icmp eq i64 %i.je, 0
  br i1 %.not185, label %BuildCertHashes.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 16, !tbaa !131 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 144
  %i.ji = and i64 %i.jd, 16384
  %.not.i203 = icmp eq i64 %i.ji, 0
  br i1 %.not.i203, label %IsAtLeastTLSv1_2.exit.thread.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 726
  %i.jk = load i8, ptr %i.jj, align 2, !tbaa !49
  %i.jl = icmp eq i8 %i.jk, 3
  br i1 %i.jl, label %bb.bk, label %IsAtLeastTLSv1_2.exit.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 727
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !50
  %i.jo = icmp ugt i8 %i.jn, 2
  br i1 %i.jo, label %IsAtLeastTLSv1_2.exit.i, label %IsAtLeastTLSv1_2.exit.thread.i

IsAtLeastTLSv1_2.exit.i:                          ; preds = %bb.bk
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jg, i64 288
  %i.jq = call i32 @wc_Sha256GetHash(ptr noundef nonnull %i.jp, ptr noundef nonnull %i.jh) #27 ; 2 uses
  %.not20.i204 = icmp eq i32 %i.jq, 0
  br i1 %.not20.i204, label %bb.bl, label %BuildCertHashes.exit

bb.bl:                                            ; preds = %IsAtLeastTLSv1_2.exit.i
  %i.jr = load ptr, ptr %i.jf, align 16, !tbaa !131
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 416
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jg, i64 176
  %i.ju = call i32 @wc_Sha384GetHash(ptr noundef nonnull %i.js, ptr noundef nonnull %i.jt) #27 ; 2 uses
  %.not21.i = icmp eq i32 %i.ju, 0
  br i1 %.not21.i, label %bb.bm, label %BuildCertHashes.exit

bb.bm:                                            ; preds = %bb.bl
  %i.jv = load ptr, ptr %i.jf, align 16, !tbaa !131
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 640
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jg, i64 224
  %i.jy = call i32 @wc_Sha512GetHash(ptr noundef nonnull %i.jw, ptr noundef nonnull %i.jx) #27 ; 2 uses
  %.not22.i = icmp eq i32 %i.jy, 0
  br i1 %.not22.i, label %IsAtLeastTLSv1_2.exit.thread.i, label %BuildCertHashes.exit

IsAtLeastTLSv1_2.exit.thread.i:                   ; preds = %bb.bm, %bb.bk, %bb.bj, %bb.bi
  br label %BuildCertHashes.exit

BuildCertHashes.exit:                             ; preds = %bb.d, %bb.p, %bb.ba, %.thread392, %bb.an, %bb.am, %bb.al, %bb.ab, %bb.z, %bb.ad, %bb.ah, %bb.af, %.thread48.i, %bb.v, %bb.u, %bb.x, %bb.t, %bb.i, %IsAtLeastTLSv1_2.exit.thread.i, %bb.bm, %bb.bl, %IsAtLeastTLSv1_2.exit.i, %bb.bc, %bb.ar, %.thread360, %bb.h, %bb.f, %bb.bh, %bb.bg, %DhAgree.exit, %bb.ao, %bb.b
  %.11 = phi i32 [ -125, %bb.f ], [ -373, %bb.b ], [ -374, %.thread392 ], [ -345, %bb.d ], [ %i.eb, %bb.ao ], [ %.7, %DhAgree.exit ], [ -328, %bb.al ], [ %i.jc, %bb.bg ], [ -374, %bb.bc ], [ 0, %bb.bh ], [ -173, %bb.ar ], [ -318, %bb.p ], [ -374, %bb.i ], [ -353, %bb.x ], [ -374, %bb.h ], [ %.2141.ph, %.thread360 ], [ %i.jy, %bb.bm ], [ 0, %IsAtLeastTLSv1_2.exit.thread.i ], [ %i.jq, %IsAtLeastTLSv1_2.exit.i ], [ %i.ju, %bb.bl ], [ %i.bj, %bb.t ], [ %i.ch, %bb.ab ], [ -125, %bb.z ], [ %i.ch, %bb.ad ], [ -352, %bb.ah ], [ %i.cq, %bb.af ], [ -353, %.thread48.i ], [ -328, %bb.v ], [ -328, %bb.u ], [ %i.dr, %bb.an ], [ -328, %bb.am ], [ -342, %bb.ba ]
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !134 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !137 ; 4 uses
  %.not186 = icmp eq ptr %i.kc, null
  br i1 %.not186, label %ForceZero.exit, label %bb.bn

bb.bn:                                            ; preds = %BuildCertHashes.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !136 ; 2 uses
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  fence seq_cst
  %i.kg = ptrtoint ptr %i.kc to i64
  %i.kh = and i64 %i.kg, 7
  %.not19.i = icmp eq i64 %i.kh, 0
  br i1 %.not19.i, label %.preheader16.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bn
  %i.ki = icmp eq i32 %i.ke, 0
  br i1 %i.ki, label %ForceZero.exit, label %.lr.ph

.preheader16.i:                                   ; preds = %.lr.ph, %bb.bn
  %.013.lcssa.i = phi i64 [ %i.kf, %bb.bn ], [ %i.ko, %.lr.ph ] ; 4 uses
  %.012.lcssa.i = phi ptr [ %i.kc, %bb.bn ], [ %i.kn, %.lr.ph ] ; 3 uses
  %i.kj = icmp ugt i64 %.013.lcssa.i, 7
  br i1 %i.kj, label %.lr.ph25.preheader.i, label %.preheader.i

.lr.ph25.preheader.i:                             ; preds = %.preheader16.i
  %i.kk = and i64 %.013.lcssa.i, -8               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.012.lcssa.i, i8 0, i64 %i.kk, i1 false), !tbaa !80
  %scevgep.i = getelementptr i8, ptr %.012.lcssa.i, i64 %i.kk
  %i.kl = and i64 %.013.lcssa.i, 7
  br label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.km = icmp eq i64 %i.ko, 0
  br i1 %i.km, label %ForceZero.exit, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.01320.i485 = phi i64 [ %i.ko, %.lr.ph.i ], [ %i.kf, %.lr.ph.i.preheader ]
  %.01221.i484 = phi ptr [ %i.kn, %.lr.ph.i ], [ %i.kc, %.lr.ph.i.preheader ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.01221.i484, i64 1 ; 3 uses
  store i8 0, ptr %.01221.i484, align 1, !tbaa !52
  %i.ko = add nsw i64 %.01320.i485, -1            ; 3 uses
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = and i64 %i.kp, 7
  %.not.i205 = icmp eq i64 %i.kq, 0
  br i1 %.not.i205, label %.preheader16.i, label %.lr.ph.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph25.preheader.i, %.preheader16.i
  %.114.lcssa.i = phi i64 [ %.013.lcssa.i, %.preheader16.i ], [ %i.kl, %.lr.ph25.preheader.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.012.lcssa.i, %.preheader16.i ], [ %scevgep.i, %.lr.ph25.preheader.i ]
  %.not1528.i = icmp eq i64 %.114.lcssa.i, 0
  br i1 %.not1528.i, label %._crit_edge.i, label %.lr.ph31.preheader.i

.lr.ph31.preheader.i:                             ; preds = %.preheader.i
  call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa.i, i8 0, i64 %.114.lcssa.i, i1 false), !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph31.preheader.i, %.preheader.i
  fence seq_cst
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %._crit_edge.i, %BuildCertHashes.exit
  %i.kr = load ptr, ptr %i.jz, align 8, !tbaa !134
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i32 0, ptr %i.ks, align 8, !tbaa !136
  call void @FreeKeyExchange(ptr noundef %0)
  ret i32 %.11
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -425, 1) i32 @DoCertificateVerify(ptr noundef initializes((1059, 1061), (1068, 1069)) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  %4 = alloca [1 x %struct.DcvArgs], align 16     ; 17 uses
  %i.c = alloca [512 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1059 ; 6 uses
  store i8 2, ptr %i.e, align 1, !tbaa !242
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 9 uses
  store i8 0, ptr %i.f, align 4, !tbaa !241
  %i.g = load i32, ptr %2, align 4, !tbaa !56     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 6 uses
end_hunk_0
