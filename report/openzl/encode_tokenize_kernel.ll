Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_tokenize_kernel?download=true
inline.NumInlined: 143
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ZS_buildTokenizeVsfAlphabet:bb.a
  %i.ef = tail call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 24)
  %i.eg = xor i64 %i.ef, %i.ee
  %i.eh = xor i64 %i.eg, %i.ed
  %i.ei = mul i64 %i.eh, -6939452855193903323     ; 2 uses
  %i.ej = lshr i64 %i.ei, 35
  %i.ek = add nuw nsw i64 %i.ej, %i.da
  %i.el = xor i64 %i.ek, %i.ei
  %i.em = mul i64 %i.el, -6939452855193903323     ; 2 uses
  %i.en = lshr i64 %i.em, 28
  %i.eo = xor i64 %i.en, %i.em
  br label %MapVSF_genericHash.exit.i

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i.i.i, label %MapVSF_genericHash.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  %i.ep = load i8, ptr %i.cx, align 1, !tbaa !40
  %i.eq = lshr i64 %i.da, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !40
  %i.et = getelementptr i8, ptr %i.cx, i64 %i.da
  %i.eu = getelementptr i8, ptr %i.et, i64 -1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !40
  %i.ew = zext i8 %i.ep to i64
  %i.ex = shl nuw nsw i64 %i.ew, 16
  %i.ey = zext i8 %i.es to i64
  %i.ez = shl nuw nsw i64 %i.ey, 24
  %i.fa = zext i8 %i.ev to i64
  %i.fb = shl nuw nsw i64 %i.da, 8
  %i.fc = or disjoint i64 %i.ex, %i.fb
  %i.fd = or disjoint i64 %i.fc, %i.ez
  %i.fe = or disjoint i64 %i.fd, %i.fa
  %i.ff = xor i64 %i.fe, 2267503259
  %i.fg = mul i64 %i.ff, -4417276706812531889     ; 2 uses
  %i.fh = lshr i64 %i.fg, 29
  %i.fi = xor i64 %i.fh, %i.fg
  %i.fj = mul i64 %i.fi, 1609587929392839161      ; 2 uses
  %i.fk = lshr i64 %i.fj, 32
  %i.fl = xor i64 %i.fk, %i.fj
  br label %MapVSF_genericHash.exit.i

bb.w:                                             ; preds = %bb.p
  %i.fm = icmp ult i32 %i.cz, 129
  br i1 %i.fm, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.fn = mul i64 %i.da, -7046029288634856825     ; 4 uses
  %i.fo = icmp samesign ugt i32 %i.cz, 32
  br i1 %i.fo, label %bb.y, label %XXH3_len_17to128_64b.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.fp = icmp samesign ugt i32 %i.cz, 64
  br i1 %i.fp, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fq = icmp samesign ugt i32 %i.cz, 96
  br i1 %i.fq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fr = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %.val28.i.i.i = load i64, ptr %i.fr, align 1, !tbaa !39
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %.val27.i.i.i = load i64, ptr %i.fs, align 1, !tbaa !39
  %i.ft = xor i64 %.val28.i.i.i, 4554437623014685352
  %i.fu = xor i64 %.val27.i.i.i, 2111919702937427193
  %i.fv = zext i64 %i.ft to i128
  %i.fw = zext i64 %i.fu to i128
  %i.fx = mul nuw i128 %i.fw, %i.fv               ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = xor i128 %i.fy, %i.fx
  %i.ga = trunc i128 %i.fz to i64
  %i.gb = add i64 %i.fn, %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 -64
  %.val32.i.i.i = load i64, ptr %i.gd, align 1, !tbaa !39
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -56
  %.val31.i.i.i = load i64, ptr %i.ge, align 1, !tbaa !39
  %i.gf = xor i64 %.val32.i.i.i, 3556072174620004746
  %i.gg = xor i64 %.val31.i.i.i, 7238261902898274248
  %i.gh = zext i64 %i.gf to i128
  %i.gi = zext i64 %i.gg to i128
  %i.gj = mul nuw i128 %i.gi, %i.gh               ; 2 uses
  %i.gk = lshr i128 %i.gj, 64
  %i.gl = xor i128 %i.gk, %i.gj
  %i.gm = trunc i128 %i.gl to i64
  %i.gn = add i64 %i.gb, %i.gm
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i2.i.i.i = phi i64 [ %i.gn, %bb.aa ], [ %i.fn, %bb.z ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %.val20.i.i.i = load i64, ptr %i.go, align 1, !tbaa !39
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %.val19.i.i.i = load i64, ptr %i.gp, align 1, !tbaa !39
  %i.gq = xor i64 %.val20.i.i.i, -3818837453329782724
  %i.gr = xor i64 %.val19.i.i.i, -6688317018830679928
  %i.gs = zext i64 %i.gq to i128
  %i.gt = zext i64 %i.gr to i128
  %i.gu = mul nuw i128 %i.gt, %i.gs               ; 2 uses
  %i.gv = lshr i128 %i.gu, 64
  %i.gw = xor i128 %i.gv, %i.gu
  %i.gx = trunc i128 %i.gw to i64
  %i.gy = add i64 %.0.i2.i.i.i, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -48
  %.val24.i.i.i = load i64, ptr %i.ha, align 1, !tbaa !39
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -40
  %.val23.i.i.i = load i64, ptr %i.hb, align 1, !tbaa !39
  %i.hc = xor i64 %.val24.i.i.i, 5690594596133299313
  %i.hd = xor i64 %.val23.i.i.i, -2833645246901970632
  %i.he = zext i64 %i.hc to i128
  %i.hf = zext i64 %i.hd to i128
  %i.hg = mul nuw i128 %i.hf, %i.he               ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = xor i128 %i.hh, %i.hg
  %i.hj = trunc i128 %i.hi to i64
  %i.hk = add i64 %i.gy, %i.hj
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.1.i.i.i.i = phi i64 [ %i.hk, %bb.ab ], [ %i.fn, %bb.y ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %.val12.i.i.i = load i64, ptr %i.hl, align 1, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %.val11.i.i.i = load i64, ptr %i.hm, align 1, !tbaa !39
  %i.hn = xor i64 %.val12.i.i.i, 8711581037947681227
  %i.ho = xor i64 %.val11.i.i.i, 2410270004345854594
  %i.hp = zext i64 %i.hn to i128
  %i.hq = zext i64 %i.ho to i128
  %i.hr = mul nuw i128 %i.hq, %i.hp               ; 2 uses
  %i.hs = lshr i128 %i.hr, 64
  %i.ht = xor i128 %i.hs, %i.hr
  %i.hu = trunc i128 %i.ht to i64
  %i.hv = add i64 %.1.i.i.i.i, %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -32
  %.val16.i.i.i = load i64, ptr %i.hx, align 1, !tbaa !39
  %i.hy = getelementptr inbounds i8, ptr %i.hw, i64 -24
  %.val15.i.i.i = load i64, ptr %i.hy, align 1, !tbaa !39
  %i.hz = xor i64 %.val16.i.i.i, -8204357891075471176
  %i.ia = xor i64 %.val15.i.i.i, 5487137525590930912
  %i.ib = zext i64 %i.hz to i128
  %i.ic = zext i64 %i.ia to i128
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i64
  %i.ih = add i64 %i.hv, %i.ig
  br label %XXH3_len_17to128_64b.exit.i.i.i

XXH3_len_17to128_64b.exit.i.i.i:                  ; preds = %bb.ac, %bb.x
  %.2.i.i.i.i = phi i64 [ %i.ih, %bb.ac ], [ %i.fn, %bb.x ]
  %.val4.i.i.i = load i64, ptr %i.cx, align 1, !tbaa !39
  %i.ii = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.val3.i.i.i = load i64, ptr %i.ii, align 1, !tbaa !39
  %i.ij = xor i64 %.val4.i.i.i, -4734510112055689544
  %i.ik = xor i64 %.val3.i.i.i, 2066345149520216444
  %i.il = zext i64 %i.ij to i128
  %i.im = zext i64 %i.ik to i128
  %i.in = mul nuw i128 %i.im, %i.il               ; 2 uses
  %i.io = lshr i128 %i.in, 64
  %i.ip = xor i128 %i.io, %i.in
  %i.iq = trunc i128 %i.ip to i64
  %i.ir = add i64 %.2.i.i.i.i, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.da ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -16
  %.val8.i.i.i = load i64, ptr %i.it, align 1, !tbaa !39
  %i.iu = getelementptr inbounds i8, ptr %i.is, i64 -8
  %.val7.i.i.i = load i64, ptr %i.iu, align 1, !tbaa !39
  %i.iv = xor i64 %.val8.i.i.i, -2623469361688619810
  %i.iw = xor i64 %.val7.i.i.i, 2262974939099578482
  %i.ix = zext i64 %i.iv to i128
  %i.iy = zext i64 %i.iw to i128
  %i.iz = mul nuw i128 %i.iy, %i.ix               ; 2 uses
  %i.ja = lshr i128 %i.iz, 64
  %i.jb = xor i128 %i.ja, %i.iz
  %i.jc = trunc i128 %i.jb to i64
  %i.jd = add i64 %i.ir, %i.jc                    ; 2 uses
  %i.je = lshr i64 %i.jd, 37
  %i.jf = xor i64 %i.je, %i.jd
  %i.jg = mul i64 %i.jf, 1609587791953885689      ; 2 uses
  %i.jh = lshr i64 %i.jg, 32
  %i.ji = xor i64 %i.jh, %i.jg
  br label %MapVSF_genericHash.exit.i

bb.ad:                                            ; preds = %bb.w
  %i.jj = icmp ult i32 %i.cz, 241
  br i1 %i.jj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jk = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %i.cx, i64 noundef range(i64 0, 4294967296) %i.da) #15
  br label %MapVSF_genericHash.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.jl = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %i.cx, i64 noundef range(i64 0, 4294967296) %i.da)
  br label %MapVSF_genericHash.exit.i

MapVSF_genericHash.exit.i:                        ; preds = %bb.af, %bb.ae, %XXH3_len_17to128_64b.exit.i.i.i, %bb.v, %bb.u, %bb.t, %bb.r
  %.0.i.i.i.i = phi i64 [ %i.jl, %bb.af ], [ %i.ji, %XXH3_len_17to128_64b.exit.i.i.i ], [ %i.jk, %bb.ae ], [ %i.dv, %bb.r ], [ %i.eo, %bb.t ], [ %i.fl, %bb.v ], [ 953390274, %bb.u ]
  %i.jm = and i64 %.0.i.i.i.i, %i.bc
  %i.jn = shl nuw nsw i64 %i.jm, 5
  %i.jo = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24 ; 3 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !30 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, -1
  br i1 %i.jr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %MapVSF_genericHash.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.jo, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, i64 32, i1 false)
  store i32 -2, ptr %i.jp, align 4, !tbaa !30
  %i.js = load i32, ptr %i.j, align 4, !tbaa !24
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %i.js, ptr %i.jt, align 8, !tbaa !30
  store i32 %.045.i.i, ptr %i.j, align 4, !tbaa !24
  br label %bb.ai

bb.ah:                                            ; preds = %MapVSF_genericHash.exit.i
  %i.ju = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store i32 %i.jq, ptr %i.ju, align 8, !tbaa !30
  store i32 %.045.i.i, ptr %i.jp, align 4, !tbaa !30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jv = icmp eq i32 %.047.i.i, -2
  br i1 %i.jv, label %.thread88.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jw = zext i32 %.047.i.i to i64
  %i.jx = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.jy = shl nuw nsw i64 %i.jw, 5
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jy ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !30
  br label %bb.p

.thread88.i:                                      ; preds = %bb.ai, %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next.i, %i.aq
  br i1 %exitcond98.not.i, label %GenericTable_rehash.exit.i, label %bb.j, !llvm.loop !1

GenericTable_rehash.exit.i:                       ; preds = %.thread88.i, %.preheader.i
  store ptr %.0.i25.i, ptr %0, align 8, !tbaa !27
  store i32 %i.an, ptr %i.t, align 8, !tbaa !29
  store i32 %spec.select110.i, ptr %i.e, align 8, !tbaa !22
  br label %MapVSF_reserve.exit

bb.ak:                                            ; preds = %bb.b, %bb.e, %GenericTable_reallocMem.exit.i
  %i.kc = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_buildTokenizeVsfAlphabet.__zl_static_error_info, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 20, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #13
  br label %.critedge.sink.split

MapVSF_reserve.exit:                              ; preds = %GenericTable_rehash.exit.i, %bb.a
  store i64 0, ptr %1, align 8, !tbaa !39
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %MapVSF_reserve.exit
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.al

._crit_edge:                                      ; preds = %MapVSF_containsVal.exit
  br i1 %.132, label %bb.cb, label %.critedge, !prof !41

bb.al:                                            ; preds = %.lr.ph, %MapVSF_containsVal.exit
  %.0114 = phi ptr [ %2, %.lr.ph ], [ %i.aaj, %MapVSF_containsVal.exit ] ; 55 uses
  %.029113 = phi i64 [ 0, %.lr.ph ], [ %.1, %MapVSF_containsVal.exit ] ; 5 uses
  %.030112 = phi i64 [ 0, %.lr.ph ], [ %i.aak, %MapVSF_containsVal.exit ] ; 2 uses
  %.031111 = phi i1 [ false, %.lr.ph ], [ %.132, %MapVSF_containsVal.exit ] ; 5 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.030112 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !30 ; 26 uses
  %i.kl = load ptr, ptr %0, align 8, !tbaa !27    ; 2 uses
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kn = zext i32 %i.kk to i64                   ; 18 uses
  %i.ko = icmp ult i32 %i.kk, 17
  br i1 %i.ko, label %bb.an, label %bb.at

bb.an:                                            ; preds = %bb.am
  %i.kp = icmp samesign ugt i32 %i.kk, 8
  br i1 %i.kp, label %bb.ao, label %bb.ap, !prof !37

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0114) ]
  %.val39.i.i.i61 = load i64, ptr %.0114, align 1, !tbaa !39
  %i.kq = xor i64 %.val39.i.i.i61, 7458650908927343033 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.kn
  %i.ks = getelementptr inbounds i8, ptr %i.kr, i64 -8
  %.val40.i.i.i62 = load i64, ptr %i.ks, align 1, !tbaa !39
  %i.kt = xor i64 %.val40.i.i.i62, -5812251307325107654 ; 2 uses
  %i.ku = tail call noundef i64 @llvm.bswap.i64(i64 %i.kq)
  %i.kv = add i64 %i.ku, %i.kn
  %i.kw = add i64 %i.kv, %i.kt
  %i.kx = zext i64 %i.kq to i128
  %i.ky = zext i64 %i.kt to i128
  %i.kz = mul nuw i128 %i.ky, %i.kx               ; 2 uses
  %i.la = lshr i128 %i.kz, 64
  %i.lb = xor i128 %i.la, %i.kz
  %i.lc = trunc i128 %i.lb to i64
  %i.ld = add i64 %i.kw, %i.lc                    ; 2 uses
  %i.le = lshr i64 %i.ld, 37
  %i.lf = xor i64 %i.le, %i.ld
  %i.lg = mul i64 %i.lf, 1609587791953885689      ; 2 uses
  %i.lh = lshr i64 %i.lg, 32
  %i.li = xor i64 %i.lh, %i.lg
  br label %MapVSF_genericHash.exit.i33

bb.ap:                                            ; preds = %bb.an
  %i.lj = icmp samesign ugt i32 %i.kk, 3
  br i1 %i.lj, label %bb.aq, label %bb.ar, !prof !37

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0114) ]
  %.val43.i.i.i59 = load i32, ptr %.0114, align 1, !tbaa !30
  %i.lk = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.kn
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 -4
  %.val44.i.i.i60 = load i32, ptr %i.ll, align 1, !tbaa !30
  %i.lm = zext i32 %.val44.i.i.i60 to i64
  %i.ln = zext i32 %.val43.i.i.i59 to i64
  %i.lo = shl nuw i64 %i.ln, 32
  %i.lp = or disjoint i64 %i.lo, %i.lm
  %i.lq = xor i64 %i.lp, -4090762196417718878     ; 5 uses
  %i.lr = tail call i64 @llvm.fshl.i64(i64 %i.lq, i64 %i.lq, i64 49)
  %i.ls = tail call i64 @llvm.fshl.i64(i64 %i.lq, i64 %i.lq, i64 24)
  %i.lt = xor i64 %i.ls, %i.lr
  %i.lu = xor i64 %i.lt, %i.lq
  %i.lv = mul i64 %i.lu, -6939452855193903323     ; 2 uses
  %i.lw = lshr i64 %i.lv, 35
  %i.lx = add nuw nsw i64 %i.lw, %i.kn
  %i.ly = xor i64 %i.lx, %i.lv
  %i.lz = mul i64 %i.ly, -6939452855193903323     ; 2 uses
  %i.ma = lshr i64 %i.lz, 28
  %i.mb = xor i64 %i.ma, %i.lz
  br label %MapVSF_genericHash.exit.i33

bb.ar:                                            ; preds = %bb.ap
  %.not.i.i.i.i58 = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i.i.i58, label %MapVSF_genericHash.exit.i33, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0114) ]
  %i.mc = load i8, ptr %.0114, align 1, !tbaa !40
  %i.md = lshr i64 %i.kn, 1
  %i.me = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !40
  %i.mg = getelementptr i8, ptr %.0114, i64 %i.kn
  %i.mh = getelementptr i8, ptr %i.mg, i64 -1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !40
  %i.mj = zext i8 %i.mc to i64
  %i.mk = shl nuw nsw i64 %i.mj, 16
  %i.ml = zext i8 %i.mf to i64
  %i.mm = shl nuw nsw i64 %i.ml, 24
  %i.mn = zext i8 %i.mi to i64
  %i.mo = shl nuw nsw i64 %i.kn, 8
  %i.mp = or disjoint i64 %i.mk, %i.mo
  %i.mq = or disjoint i64 %i.mp, %i.mm
  %i.mr = or disjoint i64 %i.mq, %i.mn
  %i.ms = xor i64 %i.mr, 2267503259
  %i.mt = mul i64 %i.ms, -4417276706812531889     ; 2 uses
  %i.mu = lshr i64 %i.mt, 29
  %i.mv = xor i64 %i.mu, %i.mt
  %i.mw = mul i64 %i.mv, 1609587929392839161      ; 2 uses
  %i.mx = lshr i64 %i.mw, 32
  %i.my = xor i64 %i.mx, %i.mw
  br label %MapVSF_genericHash.exit.i33

bb.at:                                            ; preds = %bb.am
  %i.mz = icmp ult i32 %i.kk, 129
  br i1 %i.mz, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %bb.at
  %i.na = mul i64 %i.kn, -7046029288634856825     ; 4 uses
  %i.nb = icmp samesign ugt i32 %i.kk, 32
  br i1 %i.nb, label %bb.av, label %XXH3_len_17to128_64b.exit.i.i.i38

bb.av:                                            ; preds = %bb.au
  %i.nc = icmp samesign ugt i32 %i.kk, 64
  br i1 %i.nc, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.nd = icmp samesign ugt i32 %i.kk, 96
  br i1 %i.nd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ne = getelementptr inbounds nuw i8, ptr %.0114, i64 48
  %.val28.i.i.i54 = load i64, ptr %i.ne, align 1, !tbaa !39
  %i.nf = getelementptr inbounds nuw i8, ptr %.0114, i64 56
  %.val27.i.i.i55 = load i64, ptr %i.nf, align 1, !tbaa !39
  %i.ng = xor i64 %.val28.i.i.i54, 4554437623014685352
  %i.nh = xor i64 %.val27.i.i.i55, 2111919702937427193
  %i.ni = zext i64 %i.ng to i128
  %i.nj = zext i64 %i.nh to i128
  %i.nk = mul nuw i128 %i.nj, %i.ni               ; 2 uses
  %i.nl = lshr i128 %i.nk, 64
  %i.nm = xor i128 %i.nl, %i.nk
  %i.nn = trunc i128 %i.nm to i64
  %i.no = add i64 %i.na, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.kn ; 2 uses
  %i.nq = getelementptr inbounds i8, ptr %i.np, i64 -64
  %.val32.i.i.i56 = load i64, ptr %i.nq, align 1, !tbaa !39
  %i.nr = getelementptr inbounds i8, ptr %i.np, i64 -56
  %.val31.i.i.i57 = load i64, ptr %i.nr, align 1, !tbaa !39
  %i.ns = xor i64 %.val32.i.i.i56, 3556072174620004746
  %i.nt = xor i64 %.val31.i.i.i57, 7238261902898274248
  %i.nu = zext i64 %i.ns to i128
  %i.nv = zext i64 %i.nt to i128
  %i.nw = mul nuw i128 %i.nv, %i.nu               ; 2 uses
  %i.nx = lshr i128 %i.nw, 64
  %i.ny = xor i128 %i.nx, %i.nw
  %i.nz = trunc i128 %i.ny to i64
  %i.oa = add i64 %i.no, %i.nz
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0.i2.i.i.i49 = phi i64 [ %i.oa, %bb.ax ], [ %i.na, %bb.aw ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.0114, i64 32
  %.val20.i.i.i50 = load i64, ptr %i.ob, align 1, !tbaa !39
  %i.oc = getelementptr inbounds nuw i8, ptr %.0114, i64 40
  %.val19.i.i.i51 = load i64, ptr %i.oc, align 1, !tbaa !39
  %i.od = xor i64 %.val20.i.i.i50, -3818837453329782724
  %i.oe = xor i64 %.val19.i.i.i51, -6688317018830679928
  %i.of = zext i64 %i.od to i128
  %i.og = zext i64 %i.oe to i128
  %i.oh = mul nuw i128 %i.og, %i.of               ; 2 uses
  %i.oi = lshr i128 %i.oh, 64
  %i.oj = xor i128 %i.oi, %i.oh
  %i.ok = trunc i128 %i.oj to i64
  %i.ol = add i64 %.0.i2.i.i.i49, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.kn ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %i.om, i64 -48
  %.val24.i.i.i52 = load i64, ptr %i.on, align 1, !tbaa !39
  %i.oo = getelementptr inbounds i8, ptr %i.om, i64 -40
  %.val23.i.i.i53 = load i64, ptr %i.oo, align 1, !tbaa !39
  %i.op = xor i64 %.val24.i.i.i52, 5690594596133299313
  %i.oq = xor i64 %.val23.i.i.i53, -2833645246901970632
  %i.or = zext i64 %i.op to i128
  %i.os = zext i64 %i.oq to i128
  %i.ot = mul nuw i128 %i.os, %i.or               ; 2 uses
  %i.ou = lshr i128 %i.ot, 64
  %i.ov = xor i128 %i.ou, %i.ot
  %i.ow = trunc i128 %i.ov to i64
  %i.ox = add i64 %i.ol, %i.ow
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %.1.i.i.i.i44 = phi i64 [ %i.ox, %bb.ay ], [ %i.na, %bb.av ]
  %i.oy = getelementptr inbounds nuw i8, ptr %.0114, i64 16
  %.val12.i.i.i45 = load i64, ptr %i.oy, align 1, !tbaa !39
  %i.oz = getelementptr inbounds nuw i8, ptr %.0114, i64 24
  %.val11.i.i.i46 = load i64, ptr %i.oz, align 1, !tbaa !39
  %i.pa = xor i64 %.val12.i.i.i45, 8711581037947681227
  %i.pb = xor i64 %.val11.i.i.i46, 2410270004345854594
  %i.pc = zext i64 %i.pa to i128
  %i.pd = zext i64 %i.pb to i128
  %i.pe = mul nuw i128 %i.pd, %i.pc               ; 2 uses
  %i.pf = lshr i128 %i.pe, 64
  %i.pg = xor i128 %i.pf, %i.pe
  %i.ph = trunc i128 %i.pg to i64
  %i.pi = add i64 %.1.i.i.i.i44, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.kn ; 2 uses
  %i.pk = getelementptr inbounds i8, ptr %i.pj, i64 -32
  %.val16.i.i.i47 = load i64, ptr %i.pk, align 1, !tbaa !39
  %i.pl = getelementptr inbounds i8, ptr %i.pj, i64 -24
  %.val15.i.i.i48 = load i64, ptr %i.pl, align 1, !tbaa !39
  %i.pm = xor i64 %.val16.i.i.i47, -8204357891075471176
  %i.pn = xor i64 %.val15.i.i.i48, 5487137525590930912
  %i.po = zext i64 %i.pm to i128
  %i.pp = zext i64 %i.pn to i128
  %i.pq = mul nuw i128 %i.pp, %i.po               ; 2 uses
  %i.pr = lshr i128 %i.pq, 64
  %i.ps = xor i128 %i.pr, %i.pq
  %i.pt = trunc i128 %i.ps to i64
  %i.pu = add i64 %i.pi, %i.pt
  br label %XXH3_len_17to128_64b.exit.i.i.i38

XXH3_len_17to128_64b.exit.i.i.i38:                ; preds = %bb.az, %bb.au
  %.2.i.i.i.i39 = phi i64 [ %i.pu, %bb.az ], [ %i.na, %bb.au ]
  %.val4.i.i.i40 = load i64, ptr %.0114, align 1, !tbaa !39
  %i.pv = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  %.val3.i.i.i41 = load i64, ptr %i.pv, align 1, !tbaa !39
  %i.pw = xor i64 %.val4.i.i.i40, -4734510112055689544
  %i.px = xor i64 %.val3.i.i.i41, 2066345149520216444
  %i.py = zext i64 %i.pw to i128
  %i.pz = zext i64 %i.px to i128
  %i.qa = mul nuw i128 %i.pz, %i.py               ; 2 uses
  %i.qb = lshr i128 %i.qa, 64
  %i.qc = xor i128 %i.qb, %i.qa
  %i.qd = trunc i128 %i.qc to i64
  %i.qe = add i64 %.2.i.i.i.i39, %i.qd
  %i.qf = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.kn ; 2 uses
  %i.qg = getelementptr inbounds i8, ptr %i.qf, i64 -16
  %.val8.i.i.i42 = load i64, ptr %i.qg, align 1, !tbaa !39
  %i.qh = getelementptr inbounds i8, ptr %i.qf, i64 -8
  %.val7.i.i.i43 = load i64, ptr %i.qh, align 1, !tbaa !39
  %i.qi = xor i64 %.val8.i.i.i42, -2623469361688619810
  %i.qj = xor i64 %.val7.i.i.i43, 2262974939099578482
  %i.qk = zext i64 %i.qi to i128
  %i.ql = zext i64 %i.qj to i128
  %i.qm = mul nuw i128 %i.ql, %i.qk               ; 2 uses
  %i.qn = lshr i128 %i.qm, 64
  %i.qo = xor i128 %i.qn, %i.qm
  %i.qp = trunc i128 %i.qo to i64
  %i.qq = add i64 %i.qe, %i.qp                    ; 2 uses
  %i.qr = lshr i64 %i.qq, 37
  %i.qs = xor i64 %i.qr, %i.qq
  %i.qt = mul i64 %i.qs, 1609587791953885689      ; 2 uses
  %i.qu = lshr i64 %i.qt, 32
  %i.qv = xor i64 %i.qu, %i.qt
  br label %MapVSF_genericHash.exit.i33

bb.ba:                                            ; preds = %bb.at
  %i.qw = icmp ult i32 %i.kk, 241
  br i1 %i.qw, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.qx = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %.0114, i64 noundef range(i64 0, 4294967296) %i.kn) #15
  br label %MapVSF_genericHash.exit.i33

bb.bc:                                            ; preds = %bb.ba
  %i.qy = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %.0114, i64 noundef range(i64 0, 4294967296) %i.kn)
  br label %MapVSF_genericHash.exit.i33

MapVSF_genericHash.exit.i33:                      ; preds = %bb.bc, %bb.bb, %XXH3_len_17to128_64b.exit.i.i.i38, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.0.i.i.i.i34 = phi i64 [ %i.qy, %bb.bc ], [ %i.qv, %XXH3_len_17to128_64b.exit.i.i.i38 ], [ %i.qx, %bb.bb ], [ %i.li, %bb.ao ], [ %i.mb, %bb.aq ], [ %i.my, %bb.as ], [ 953390274, %bb.ar ]
  %i.qz = load i32, ptr %i.kd, align 8, !tbaa !29
  %i.ra = zext i32 %i.qz to i64
  %i.rb = and i64 %.0.i.i.i.i34, %i.ra
  %i.rc = shl nuw nsw i64 %i.rb, 5
  %i.rd = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.rc ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 24
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !30 ; 3 uses
  %i.rg = icmp eq i32 %i.rf, -1
  br i1 %i.rg, label %.loopexit, label %.preheader.i35

.preheader.i35:                                   ; preds = %MapVSF_genericHash.exit.i33
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !36
  %.not.i.i.i = icmp eq i32 %i.kk, %i.ri
  br i1 %.not.i.i.i, label %MapVSF_genericEq.exit.i, label %.lr.ph.i36

MapVSF_genericEq.exit.i:                          ; preds = %.preheader.i35
  %i.rj = load ptr, ptr %i.rd, align 8, !tbaa !35
  %bcmp.i.i.i = tail call i32 @bcmp(ptr readonly %.0114, ptr %i.rj, i64 %i.kn)
  %i.rk = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.rk, label %MapVSF_containsVal.exit, label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %MapVSF_genericEq.exit.i, %.preheader.i35
  %.not44.i = icmp eq i32 %i.rf, -2
  br i1 %.not44.i, label %.loopexit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph.i36
  %i.rl = load ptr, ptr %i.ke, align 8, !tbaa !33
  br label %bb.bd

bb.bd:                                            ; preds = %MapVSF_genericEq.exit38.backedge.i, %.lr.ph46.i
  %.0.i3145.i = phi i32 [ %i.rf, %.lr.ph46.i ], [ %i.rq, %MapVSF_genericEq.exit38.backedge.i ]
  %i.rm = zext i32 %.0.i3145.i to i64
  %i.rn = shl nuw nsw i64 %i.rm, 5
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rn ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !30 ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !36
  %.not.i.i35.i = icmp eq i32 %i.kk, %i.rs
  br i1 %.not.i.i35.i, label %.split.i, label %MapVSF_genericEq.exit38.backedge.i

.split.i:                                         ; preds = %bb.bd
  %i.rt = load ptr, ptr %i.ro, align 8, !tbaa !35
  %bcmp.i.i37.i = tail call i32 @bcmp(ptr readonly %.0114, ptr %i.rt, i64 %i.kn)
  %i.ru = icmp eq i32 %bcmp.i.i37.i, 0
  br i1 %i.ru, label %MapVSF_containsVal.exit, label %MapVSF_genericEq.exit38.backedge.i

MapVSF_genericEq.exit38.backedge.i:               ; preds = %.split.i, %bb.bd
  %.not.i37 = icmp eq i32 %i.rq, -2
  br i1 %.not.i37, label %.loopexit, label %bb.bd

.loopexit:                                        ; preds = %MapVSF_genericEq.exit38.backedge.i, %bb.al, %MapVSF_genericHash.exit.i33, %.lr.ph.i36
  %i.rv = add i64 %.029113, 1
  %i.rw = load i32, ptr %i.kf, align 4, !tbaa !42 ; 2 uses
  %i.rx = load i32, ptr %i.e, align 8, !tbaa !22
  %i.ry = icmp eq i32 %i.rw, %i.rx
  br i1 %i.ry, label %bb.be, label %bb.bf, !prof !41

bb.be:                                            ; preds = %.loopexit
  %i.rz = add i32 %i.rw, 1
  %i.sa = tail call fastcc zeroext i1 @Detail_MapVSF_reserve(ptr noundef nonnull %0, i32 noundef %i.rz)
  br i1 %i.sa, label %bb.bf, label %MapVSF_insertVal.exit

bb.bf:                                            ; preds = %bb.be, %.loopexit
  %i.sb = zext i32 %i.kk to i64                   ; 16 uses
  %i.sc = icmp ult i32 %i.kk, 17
  br i1 %i.sc, label %bb.bg, label %bb.bm

bb.bg:                                            ; preds = %bb.bf
  %i.sd = icmp samesign ugt i32 %i.kk, 8
  br i1 %i.sd, label %bb.bh, label %bb.bi, !prof !37

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0114) ]
  %.val39.i.i.i97 = load i64, ptr %.0114, align 1, !tbaa !39
  %i.se = xor i64 %.val39.i.i.i97, 7458650908927343033 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.sb
  %i.sg = getelementptr inbounds i8, ptr %i.sf, i64 -8
  %.val40.i.i.i98 = load i64, ptr %i.sg, align 1, !tbaa !39
  %i.sh = xor i64 %.val40.i.i.i98, -5812251307325107654 ; 2 uses
  %i.si = tail call noundef i64 @llvm.bswap.i64(i64 %i.se)
  %i.sj = add i64 %i.si, %i.sb
  %i.sk = add i64 %i.sj, %i.sh
  %i.sl = zext i64 %i.se to i128
  %i.sm = zext i64 %i.sh to i128
  %i.sn = mul nuw i128 %i.sm, %i.sl               ; 2 uses
  %i.so = lshr i128 %i.sn, 64
  %i.sp = xor i128 %i.so, %i.sn
  %i.sq = trunc i128 %i.sp to i64
  %i.sr = add i64 %i.sk, %i.sq                    ; 2 uses
  %i.ss = lshr i64 %i.sr, 37
  %i.st = xor i64 %i.ss, %i.sr
  %i.su = mul i64 %i.st, 1609587791953885689      ; 2 uses
  %i.sv = lshr i64 %i.su, 32
  %i.sw = xor i64 %i.sv, %i.su
  br label %MapVSF_genericHash.exit.i63

bb.bi:                                            ; preds = %bb.bg
  %i.sx = icmp samesign ugt i32 %i.kk, 3
  br i1 %i.sx, label %bb.bj, label %bb.bk, !prof !37

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0114) ]
  %.val43.i.i.i95 = load i32, ptr %.0114, align 1, !tbaa !30
  %i.sy = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.sb
  %i.sz = getelementptr inbounds i8, ptr %i.sy, i64 -4
  %.val44.i.i.i96 = load i32, ptr %i.sz, align 1, !tbaa !30
  %i.ta = zext i32 %.val44.i.i.i96 to i64
  %i.tb = zext i32 %.val43.i.i.i95 to i64
  %i.tc = shl nuw i64 %i.tb, 32
  %i.td = or disjoint i64 %i.tc, %i.ta
  %i.te = xor i64 %i.td, -4090762196417718878     ; 5 uses
  %i.tf = tail call i64 @llvm.fshl.i64(i64 %i.te, i64 %i.te, i64 49)
  %i.tg = tail call i64 @llvm.fshl.i64(i64 %i.te, i64 %i.te, i64 24)
  %i.th = xor i64 %i.tg, %i.tf
  %i.ti = xor i64 %i.th, %i.te
  %i.tj = mul i64 %i.ti, -6939452855193903323     ; 2 uses
  %i.tk = lshr i64 %i.tj, 35
  %i.tl = add nuw nsw i64 %i.tk, %i.sb
  %i.tm = xor i64 %i.tl, %i.tj
  %i.tn = mul i64 %i.tm, -6939452855193903323     ; 2 uses
  %i.to = lshr i64 %i.tn, 28
  %i.tp = xor i64 %i.to, %i.tn
  br label %MapVSF_genericHash.exit.i63

bb.bk:                                            ; preds = %bb.bi
  %.not.i.i.i.i94 = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i.i.i94, label %MapVSF_genericHash.exit.i63, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0114) ]
  %i.tq = load i8, ptr %.0114, align 1, !tbaa !40
  %i.tr = lshr i64 %i.sb, 1
  %i.ts = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.tr
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !40
  %i.tu = getelementptr i8, ptr %.0114, i64 %i.sb
  %i.tv = getelementptr i8, ptr %i.tu, i64 -1
  %i.tw = load i8, ptr %i.tv, align 1, !tbaa !40
  %i.tx = zext i8 %i.tq to i64
  %i.ty = shl nuw nsw i64 %i.tx, 16
  %i.tz = zext i8 %i.tt to i64
  %i.ua = shl nuw nsw i64 %i.tz, 24
  %i.ub = zext i8 %i.tw to i64
  %i.uc = shl nuw nsw i64 %i.sb, 8
  %i.ud = or disjoint i64 %i.ty, %i.uc
  %i.ue = or disjoint i64 %i.ud, %i.ua
  %i.uf = or disjoint i64 %i.ue, %i.ub
  %i.ug = xor i64 %i.uf, 2267503259
  %i.uh = mul i64 %i.ug, -4417276706812531889     ; 2 uses
  %i.ui = lshr i64 %i.uh, 29
  %i.uj = xor i64 %i.ui, %i.uh
  %i.uk = mul i64 %i.uj, 1609587929392839161      ; 2 uses
  %i.ul = lshr i64 %i.uk, 32
  %i.um = xor i64 %i.ul, %i.uk
  br label %MapVSF_genericHash.exit.i63

bb.bm:                                            ; preds = %bb.bf
  %i.un = icmp ult i32 %i.kk, 129
  br i1 %i.un, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.uo = mul i64 %i.sb, -7046029288634856825     ; 4 uses
  %i.up = icmp samesign ugt i32 %i.kk, 32
  br i1 %i.up, label %bb.bo, label %XXH3_len_17to128_64b.exit.i.i.i74

bb.bo:                                            ; preds = %bb.bn
  %i.uq = icmp samesign ugt i32 %i.kk, 64
  br i1 %i.uq, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  %i.ur = icmp samesign ugt i32 %i.kk, 96
  br i1 %i.ur, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.us = getelementptr inbounds nuw i8, ptr %.0114, i64 48
  %.val28.i.i.i90 = load i64, ptr %i.us, align 1, !tbaa !39
  %i.ut = getelementptr inbounds nuw i8, ptr %.0114, i64 56
  %.val27.i.i.i91 = load i64, ptr %i.ut, align 1, !tbaa !39
  %i.uu = xor i64 %.val28.i.i.i90, 4554437623014685352
  %i.uv = xor i64 %.val27.i.i.i91, 2111919702937427193
  %i.uw = zext i64 %i.uu to i128
  %i.ux = zext i64 %i.uv to i128
  %i.uy = mul nuw i128 %i.ux, %i.uw               ; 2 uses
  %i.uz = lshr i128 %i.uy, 64
  %i.va = xor i128 %i.uz, %i.uy
  %i.vb = trunc i128 %i.va to i64
  %i.vc = add i64 %i.uo, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.sb ; 2 uses
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 -64
  %.val32.i.i.i92 = load i64, ptr %i.ve, align 1, !tbaa !39
  %i.vf = getelementptr inbounds i8, ptr %i.vd, i64 -56
  %.val31.i.i.i93 = load i64, ptr %i.vf, align 1, !tbaa !39
  %i.vg = xor i64 %.val32.i.i.i92, 3556072174620004746
  %i.vh = xor i64 %.val31.i.i.i93, 7238261902898274248
  %i.vi = zext i64 %i.vg to i128
  %i.vj = zext i64 %i.vh to i128
  %i.vk = mul nuw i128 %i.vj, %i.vi               ; 2 uses
  %i.vl = lshr i128 %i.vk, 64
  %i.vm = xor i128 %i.vl, %i.vk
  %i.vn = trunc i128 %i.vm to i64
  %i.vo = add i64 %i.vc, %i.vn
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0.i2.i.i.i85 = phi i64 [ %i.vo, %bb.bq ], [ %i.uo, %bb.bp ]
  %i.vp = getelementptr inbounds nuw i8, ptr %.0114, i64 32
  %.val20.i.i.i86 = load i64, ptr %i.vp, align 1, !tbaa !39
  %i.vq = getelementptr inbounds nuw i8, ptr %.0114, i64 40
  %.val19.i.i.i87 = load i64, ptr %i.vq, align 1, !tbaa !39
  %i.vr = xor i64 %.val20.i.i.i86, -3818837453329782724
  %i.vs = xor i64 %.val19.i.i.i87, -6688317018830679928
  %i.vt = zext i64 %i.vr to i128
  %i.vu = zext i64 %i.vs to i128
  %i.vv = mul nuw i128 %i.vu, %i.vt               ; 2 uses
  %i.vw = lshr i128 %i.vv, 64
  %i.vx = xor i128 %i.vw, %i.vv
  %i.vy = trunc i128 %i.vx to i64
  %i.vz = add i64 %.0.i2.i.i.i85, %i.vy
  %i.wa = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.sb ; 2 uses
  %i.wb = getelementptr inbounds i8, ptr %i.wa, i64 -48
  %.val24.i.i.i88 = load i64, ptr %i.wb, align 1, !tbaa !39
  %i.wc = getelementptr inbounds i8, ptr %i.wa, i64 -40
  %.val23.i.i.i89 = load i64, ptr %i.wc, align 1, !tbaa !39
  %i.wd = xor i64 %.val24.i.i.i88, 5690594596133299313
  %i.we = xor i64 %.val23.i.i.i89, -2833645246901970632
  %i.wf = zext i64 %i.wd to i128
  %i.wg = zext i64 %i.we to i128
  %i.wh = mul nuw i128 %i.wg, %i.wf               ; 2 uses
  %i.wi = lshr i128 %i.wh, 64
  %i.wj = xor i128 %i.wi, %i.wh
  %i.wk = trunc i128 %i.wj to i64
  %i.wl = add i64 %i.vz, %i.wk
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bo
  %.1.i.i.i.i80 = phi i64 [ %i.wl, %bb.br ], [ %i.uo, %bb.bo ]
  %i.wm = getelementptr inbounds nuw i8, ptr %.0114, i64 16
  %.val12.i.i.i81 = load i64, ptr %i.wm, align 1, !tbaa !39
  %i.wn = getelementptr inbounds nuw i8, ptr %.0114, i64 24
  %.val11.i.i.i82 = load i64, ptr %i.wn, align 1, !tbaa !39
  %i.wo = xor i64 %.val12.i.i.i81, 8711581037947681227
  %i.wp = xor i64 %.val11.i.i.i82, 2410270004345854594
  %i.wq = zext i64 %i.wo to i128
  %i.wr = zext i64 %i.wp to i128
  %i.ws = mul nuw i128 %i.wr, %i.wq               ; 2 uses
  %i.wt = lshr i128 %i.ws, 64
  %i.wu = xor i128 %i.wt, %i.ws
  %i.wv = trunc i128 %i.wu to i64
  %i.ww = add i64 %.1.i.i.i.i80, %i.wv
  %i.wx = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.sb ; 2 uses
  %i.wy = getelementptr inbounds i8, ptr %i.wx, i64 -32
  %.val16.i.i.i83 = load i64, ptr %i.wy, align 1, !tbaa !39
  %i.wz = getelementptr inbounds i8, ptr %i.wx, i64 -24
  %.val15.i.i.i84 = load i64, ptr %i.wz, align 1, !tbaa !39
  %i.xa = xor i64 %.val16.i.i.i83, -8204357891075471176
  %i.xb = xor i64 %.val15.i.i.i84, 5487137525590930912
  %i.xc = zext i64 %i.xa to i128
  %i.xd = zext i64 %i.xb to i128
  %i.xe = mul nuw i128 %i.xd, %i.xc               ; 2 uses
  %i.xf = lshr i128 %i.xe, 64
  %i.xg = xor i128 %i.xf, %i.xe
  %i.xh = trunc i128 %i.xg to i64
  %i.xi = add i64 %i.ww, %i.xh
  br label %XXH3_len_17to128_64b.exit.i.i.i74

XXH3_len_17to128_64b.exit.i.i.i74:                ; preds = %bb.bs, %bb.bn
  %.2.i.i.i.i75 = phi i64 [ %i.xi, %bb.bs ], [ %i.uo, %bb.bn ]
  %.val4.i.i.i76 = load i64, ptr %.0114, align 1, !tbaa !39
  %i.xj = getelementptr inbounds nuw i8, ptr %.0114, i64 8
  %.val3.i.i.i77 = load i64, ptr %i.xj, align 1, !tbaa !39
  %i.xk = xor i64 %.val4.i.i.i76, -4734510112055689544
  %i.xl = xor i64 %.val3.i.i.i77, 2066345149520216444
  %i.xm = zext i64 %i.xk to i128
  %i.xn = zext i64 %i.xl to i128
  %i.xo = mul nuw i128 %i.xn, %i.xm               ; 2 uses
  %i.xp = lshr i128 %i.xo, 64
  %i.xq = xor i128 %i.xp, %i.xo
  %i.xr = trunc i128 %i.xq to i64
  %i.xs = add i64 %.2.i.i.i.i75, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %.0114, i64 %i.sb ; 2 uses
  %i.xu = getelementptr inbounds i8, ptr %i.xt, i64 -16
  %.val8.i.i.i78 = load i64, ptr %i.xu, align 1, !tbaa !39
  %i.xv = getelementptr inbounds i8, ptr %i.xt, i64 -8
  %.val7.i.i.i79 = load i64, ptr %i.xv, align 1, !tbaa !39
  %i.xw = xor i64 %.val8.i.i.i78, -2623469361688619810
  %i.xx = xor i64 %.val7.i.i.i79, 2262974939099578482
  %i.xy = zext i64 %i.xw to i128
  %i.xz = zext i64 %i.xx to i128
  %i.ya = mul nuw i128 %i.xz, %i.xy               ; 2 uses
  %i.yb = lshr i128 %i.ya, 64
  %i.yc = xor i128 %i.yb, %i.ya
  %i.yd = trunc i128 %i.yc to i64
  %i.ye = add i64 %i.xs, %i.yd                    ; 2 uses
  %i.yf = lshr i64 %i.ye, 37
  %i.yg = xor i64 %i.yf, %i.ye
  %i.yh = mul i64 %i.yg, 1609587791953885689      ; 2 uses
  %i.yi = lshr i64 %i.yh, 32
  %i.yj = xor i64 %i.yi, %i.yh
  br label %MapVSF_genericHash.exit.i63

bb.bt:                                            ; preds = %bb.bm
  %i.yk = icmp ult i32 %i.kk, 241
  br i1 %i.yk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.yl = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %.0114, i64 noundef range(i64 0, 4294967296) %i.sb) #15
  br label %MapVSF_genericHash.exit.i63

bb.bv:                                            ; preds = %bb.bt
  %i.ym = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %.0114, i64 noundef range(i64 0, 4294967296) %i.sb)
  br label %MapVSF_genericHash.exit.i63

MapVSF_genericHash.exit.i63:                      ; preds = %bb.bv, %bb.bu, %XXH3_len_17to128_64b.exit.i.i.i74, %bb.bl, %bb.bk, %bb.bj, %bb.bh
  %.0.i.i.i.i64 = phi i64 [ %i.ym, %bb.bv ], [ %i.yj, %XXH3_len_17to128_64b.exit.i.i.i74 ], [ %i.yl, %bb.bu ], [ %i.sw, %bb.bh ], [ %i.tp, %bb.bj ], [ %i.um, %bb.bl ], [ 953390274, %bb.bk ]
  %i.yn = load i32, ptr %i.kd, align 8, !tbaa !29
  %i.yo = zext i32 %i.yn to i64
  %i.yp = and i64 %.0.i.i.i.i64, %i.yo
  %i.yq = load ptr, ptr %0, align 8, !tbaa !27
  %i.yr = shl nuw nsw i64 %i.yp, 5
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yr ; 8 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 24 ; 2 uses
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !30 ; 3 uses
  %i.yv = icmp eq i32 %i.yu, -1
  br i1 %i.yv, label %bb.bw, label %.preheader.i65

.preheader.i65:                                   ; preds = %MapVSF_genericHash.exit.i63
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !36
  %.not.i.i171.i = icmp eq i32 %i.kk, %i.yx
  br i1 %.not.i.i171.i, label %MapVSF_genericEq.exit.i72, label %.lr.ph.i66

MapVSF_genericEq.exit.i72:                        ; preds = %.preheader.i65
  %i.yy = load ptr, ptr %i.ys, align 8, !tbaa !35
  %bcmp.i.i.i73 = tail call i32 @bcmp(ptr %.0114, ptr %i.yy, i64 %i.sb)
  %i.yz = icmp eq i32 %bcmp.i.i.i73, 0
  br i1 %i.yz, label %MapVSF_insertVal.exit, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %MapVSF_genericEq.exit.i72, %.preheader.i65
  %.not.i179.i = icmp eq i32 %i.yu, -2
  br i1 %.not.i179.i, label %MapVSF_genericEq.exit175._crit_edge.i, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.lr.ph.i66
  %i.za = load ptr, ptr %i.ke, align 8, !tbaa !33
  br label %bb.bx

bb.bw:                                            ; preds = %MapVSF_genericHash.exit.i63
  store ptr %.0114, ptr %i.ys, align 4
  %.sroa.6.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store i32 %i.kk, ptr %.sroa.6.0..sroa_idx101, align 4
  %.sroa.8.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.ys, i64 12
  store i32 0, ptr %.sroa.8.0..sroa_idx103, align 4
  %.sroa.9.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store i64 %.029113, ptr %.sroa.9.0..sroa_idx105, align 4
  store i32 -2, ptr %i.yt, align 4, !tbaa !30
  br label %GenericTable_insert.exit.sink.split.i

bb.bx:                                            ; preds = %MapVSF_genericEq.exit175.backedge.i, %.lr.ph181.i
  %.035.i159180.i = phi i32 [ %i.yu, %.lr.ph181.i ], [ %i.zf, %MapVSF_genericEq.exit175.backedge.i ] ; 2 uses
  %i.zb = zext i32 %.035.i159180.i to i64
  %i.zc = shl nuw nsw i64 %i.zb, 5
  %i.zd = getelementptr inbounds nuw i8, ptr %i.za, i64 %i.zc ; 4 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 24
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !30 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !36
  %.not.i.i172.i = icmp eq i32 %i.kk, %i.zh
  br i1 %.not.i.i172.i, label %.split.i71, label %MapVSF_genericEq.exit175.backedge.i

.split.i71:                                       ; preds = %bb.bx
  %i.zi = load ptr, ptr %i.zd, align 8, !tbaa !35
  %bcmp.i.i174.i = tail call i32 @bcmp(ptr %.0114, ptr %i.zi, i64 %i.sb)
  %i.zj = icmp eq i32 %bcmp.i.i174.i, 0
  br i1 %i.zj, label %MapVSF_insertVal.exit, label %MapVSF_genericEq.exit175.backedge.i

MapVSF_genericEq.exit175.backedge.i:              ; preds = %.split.i71, %bb.bx
  %.not.i.i67 = icmp eq i32 %i.zf, -2
  br i1 %.not.i.i67, label %MapVSF_genericEq.exit175._crit_edge.i, label %bb.bx

MapVSF_genericEq.exit175._crit_edge.i:            ; preds = %MapVSF_genericEq.exit175.backedge.i, %.lr.ph.i66
  %.0.i160.lcssa.i = phi i32 [ -2, %.lr.ph.i66 ], [ %.035.i159180.i, %MapVSF_genericEq.exit175.backedge.i ] ; 2 uses
  %.036.i158.lcssa.i = phi ptr [ %i.ys, %.lr.ph.i66 ], [ %i.zd, %MapVSF_genericEq.exit175.backedge.i ]
  %i.zk = load i32, ptr %i.kg, align 4, !tbaa !24 ; 3 uses
  %.not.i.i.i68 = icmp eq i32 %i.zk, -2
  br i1 %.not.i.i.i68, label %bb.by, label %GenericTable_reserveChainIndex.exit.i.thread153.i

GenericTable_reserveChainIndex.exit.i.thread153.i: ; preds = %MapVSF_genericEq.exit175._crit_edge.i
  %i.zl = zext i32 %i.zk to i64
  %i.zm = load ptr, ptr %i.ke, align 8, !tbaa !33 ; 2 uses
  %i.zn = shl nuw nsw i64 %i.zl, 5                ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !30
  store i32 %i.zq, ptr %i.kg, align 4, !tbaa !24
  br label %bb.ca

bb.by:                                            ; preds = %MapVSF_genericEq.exit175._crit_edge.i
  %i.zr = load i32, ptr %i.kh, align 4, !tbaa !25 ; 5 uses
  %i.zs = load i32, ptr %i.ki, align 8, !tbaa !26
  %.not14.i.i.i = icmp ult i32 %i.zr, %i.zs
  br i1 %.not14.i.i.i, label %GenericTable_reserveChainIndex.exit.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.zt = tail call fastcc zeroext i1 @GenericTable_growChain(ptr noundef nonnull %0, i64 noundef 32)
  br i1 %i.zt, label %.GenericTable_reserveChainIndex.exit.i_crit_edge.i, label %MapVSF_insertVal.exit

.GenericTable_reserveChainIndex.exit.i_crit_edge.i: ; preds = %bb.bz
  %.pre.i70 = load i32, ptr %i.kh, align 4, !tbaa !25
  br label %GenericTable_reserveChainIndex.exit.i.i

GenericTable_reserveChainIndex.exit.i.i:          ; preds = %.GenericTable_reserveChainIndex.exit.i_crit_edge.i, %bb.by
  %i.zu = phi i32 [ %.pre.i70, %.GenericTable_reserveChainIndex.exit.i_crit_edge.i ], [ %i.zr, %bb.by ]
  %i.zv = add i32 %i.zu, 1
  store i32 %i.zv, ptr %i.kh, align 4, !tbaa !25
  %i.zw = icmp eq i32 %i.zr, -2
  br i1 %i.zw, label %MapVSF_insertVal.exit, label %GenericTable_reserveChainIndex.exit.i._crit_edge.i

GenericTable_reserveChainIndex.exit.i._crit_edge.i: ; preds = %GenericTable_reserveChainIndex.exit.i.i
  %.pre163.pre.i = load ptr, ptr %i.ke, align 8, !tbaa !33
  %.pre185.i = zext i32 %i.zr to i64
  %.pre186.i = shl nuw nsw i64 %.pre185.i, 5
  br label %bb.ca

bb.ca:                                            ; preds = %GenericTable_reserveChainIndex.exit.i._crit_edge.i, %GenericTable_reserveChainIndex.exit.i.thread153.i
  %.pre-phi187.i = phi i64 [ %.pre186.i, %GenericTable_reserveChainIndex.exit.i._crit_edge.i ], [ %i.zn, %GenericTable_reserveChainIndex.exit.i.thread153.i ]
  %.pre163.i = phi ptr [ %.pre163.pre.i, %GenericTable_reserveChainIndex.exit.i._crit_edge.i ], [ %i.zm, %GenericTable_reserveChainIndex.exit.i.thread153.i ] ; 2 uses
  %.1.i.i155.i = phi i32 [ %i.zr, %GenericTable_reserveChainIndex.exit.i._crit_edge.i ], [ %i.zk, %GenericTable_reserveChainIndex.exit.i.thread153.i ]
  %.not40.i.i = icmp eq i32 %.0.i160.lcssa.i, -2
  %i.zx = zext i32 %.0.i160.lcssa.i to i64
  %i.zy = shl nuw nsw i64 %i.zx, 5
  %i.zz = getelementptr inbounds nuw i8, ptr %.pre163.i, i64 %i.zy
  %.1.i.i69 = select i1 %.not40.i.i, ptr %.036.i158.lcssa.i, ptr %i.zz
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1.i.i69, i64 24
  store i32 %.1.i.i155.i, ptr %i.aaa, align 4, !tbaa !30
  %i.aab = getelementptr inbounds nuw i8, ptr %.pre163.i, i64 %.pre-phi187.i ; 5 uses
  store ptr %.0114, ptr %i.aab, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i32 %i.kk, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 12
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store i64 %.029113, ptr %.sroa.9.0..sroa_idx, align 1
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i32 -2, ptr %i.aac, align 4, !tbaa !30
  br label %GenericTable_insert.exit.sink.split.i

GenericTable_insert.exit.sink.split.i:            ; preds = %bb.ca, %bb.bw
  %i.aad = load i32, ptr %i.kf, align 4, !tbaa !42
  %i.aae = add i32 %i.aad, 1
  store i32 %i.aae, ptr %i.kf, align 4, !tbaa !42
  br label %MapVSF_insertVal.exit

MapVSF_insertVal.exit:                            ; preds = %.split.i71, %bb.be, %MapVSF_genericEq.exit.i72, %bb.bz, %GenericTable_reserveChainIndex.exit.i.i, %GenericTable_insert.exit.sink.split.i
  %.sroa.6.8.insert.insert.i.i = phi i1 [ true, %bb.be ], [ %.031111, %MapVSF_genericEq.exit.i72 ], [ true, %bb.bz ], [ %.031111, %GenericTable_insert.exit.sink.split.i ], [ true, %GenericTable_reserveChainIndex.exit.i.i ], [ %.031111, %.split.i71 ]
  %i.aaf = load i32, ptr %i.kj, align 4, !tbaa !30
  %i.aag = zext i32 %i.aaf to i64                 ; 2 uses
  %i.aah = load i64, ptr %1, align 8, !tbaa !39
  %i.aai = add i64 %i.aah, %i.aag
  store i64 %i.aai, ptr %1, align 8, !tbaa !39
  br label %MapVSF_containsVal.exit

MapVSF_containsVal.exit:                          ; preds = %.split.i, %MapVSF_genericEq.exit.i, %MapVSF_insertVal.exit
  %.pre-phi = phi i64 [ %i.aag, %MapVSF_insertVal.exit ], [ %i.kn, %MapVSF_genericEq.exit.i ], [ %i.kn, %.split.i ]
  %.132 = phi i1 [ %.sroa.6.8.insert.insert.i.i, %MapVSF_insertVal.exit ], [ %.031111, %MapVSF_genericEq.exit.i ], [ %.031111, %.split.i ] ; 2 uses
  %.1 = phi i64 [ %i.rv, %MapVSF_insertVal.exit ], [ %.029113, %MapVSF_genericEq.exit.i ], [ %.029113, %.split.i ]
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0114, i64 %.pre-phi
  %i.aak = add nuw i64 %.030112, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.aak, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.al, !llvm.loop !44

bb.cb:                                            ; preds = %._crit_edge
  %i.aal = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_buildTokenizeVsfAlphabet.__zl_static_error_info.7, ptr noundef nonnull %5, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9) #13
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.ak, %bb.cb
  %.sink = phi { i32, ptr } [ %i.aal, %bb.cb ], [ %i.kc, %bb.ak ] ; 2 uses
  %i.aam = extractvalue { i32, ptr } %.sink, 0    ; 2 uses
  %i.aan = extractvalue { i32, ptr } %.sink, 1    ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aam, ptr %i.aan, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #13
  %i.aao = ptrtoint ptr %i.aan to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %MapVSF_reserve.exit, %._crit_edge
  %.sroa.028.1 = phi i32 [ 0, %._crit_edge ], [ 0, %MapVSF_reserve.exit ], [ %i.aam, %.critedge.sink.split ]
  %.sroa.6.1 = phi i64 [ 0, %._crit_edge ], [ 0, %MapVSF_reserve.exit ], [ %i.aao, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZS_tokenizeVSFEncode(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, i1 noundef zeroext %10) local_unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.ZL_ErrorContext, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
end_hunk_0
begin_hunk_1_@ZS_tokenizeVSFEncode:bb.a
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 24)
  %i.cs = xor i64 %i.cq, %i.cr
  %i.ct = xor i64 %i.cs, %i.cp
  %i.cu = mul i64 %i.ct, -6939452855193903323     ; 2 uses
  %i.cv = lshr i64 %i.cu, 35
  %i.cw = add nuw nsw i64 %i.cv, %i.bm
  %i.cx = xor i64 %i.cw, %i.cu
  %i.cy = mul i64 %i.cx, -6939452855193903323     ; 2 uses
  %i.cz = lshr i64 %i.cy, 28
  %i.da = xor i64 %i.cz, %i.cy
  br label %MapVSF_genericHash.exit.i.i

bb.r:                                             ; preds = %bb.p
  %.not.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i, label %MapVSF_genericHash.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.db = load i8, ptr %i.bj, align 1, !tbaa !40
  %i.dc = lshr i64 %i.bm, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !40
  %i.df = getelementptr i8, ptr %i.bj, i64 %i.bm
  %i.dg = getelementptr i8, ptr %i.df, i64 -1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !40
  %i.di = zext i8 %i.db to i64
  %i.dj = shl nuw nsw i64 %i.di, 16
  %i.dk = zext i8 %i.de to i64
  %i.dl = shl nuw nsw i64 %i.dk, 24
  %i.dm = zext i8 %i.dh to i64
  %i.dn = shl nuw nsw i64 %i.bm, 8
  %i.do = or disjoint i64 %i.dj, %i.dn
  %i.dp = or disjoint i64 %i.do, %i.dl
  %i.dq = or disjoint i64 %i.dp, %i.dm
  %i.dr = xor i64 %i.dq, 2267503259
  %i.ds = mul i64 %i.dr, -4417276706812531889     ; 2 uses
  %i.dt = lshr i64 %i.ds, 29
  %i.du = xor i64 %i.dt, %i.ds
  %i.dv = mul i64 %i.du, 1609587929392839161      ; 2 uses
  %i.dw = lshr i64 %i.dv, 32
  %i.dx = xor i64 %i.dw, %i.dv
  br label %MapVSF_genericHash.exit.i.i

bb.t:                                             ; preds = %bb.m
  %i.dy = icmp ult i32 %i.bl, 129
  br i1 %i.dy, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.dz = mul i64 %i.bm, -7046029288634856825     ; 4 uses
  %i.ea = icmp samesign ugt i32 %i.bl, 32
  br i1 %i.ea, label %bb.v, label %XXH3_len_17to128_64b.exit.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.eb = icmp samesign ugt i32 %i.bl, 64
  br i1 %i.eb, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ec = icmp samesign ugt i32 %i.bl, 96
  br i1 %i.ec, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.val28.i.i.i.i = load i64, ptr %i.ed, align 1, !tbaa !39
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %.val27.i.i.i.i = load i64, ptr %i.ee, align 1, !tbaa !39
  %i.ef = xor i64 %.val28.i.i.i.i, 4554437623014685352
  %i.eg = xor i64 %.val27.i.i.i.i, 2111919702937427193
  %i.eh = zext i64 %i.ef to i128
  %i.ei = zext i64 %i.eg to i128
  %i.ej = mul nuw i128 %i.ei, %i.eh               ; 2 uses
  %i.ek = lshr i128 %i.ej, 64
  %i.el = xor i128 %i.ek, %i.ej
  %i.em = trunc i128 %i.el to i64
  %i.en = add i64 %i.dz, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -64
  %.val32.i.i.i.i = load i64, ptr %i.ep, align 1, !tbaa !39
  %i.eq = getelementptr inbounds i8, ptr %i.eo, i64 -56
  %.val31.i.i.i.i = load i64, ptr %i.eq, align 1, !tbaa !39
  %i.er = xor i64 %.val32.i.i.i.i, 3556072174620004746
  %i.es = xor i64 %.val31.i.i.i.i, 7238261902898274248
  %i.et = zext i64 %i.er to i128
  %i.eu = zext i64 %i.es to i128
  %i.ev = mul nuw i128 %i.eu, %i.et               ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = xor i128 %i.ew, %i.ev
  %i.ey = trunc i128 %i.ex to i64
  %i.ez = add i64 %i.en, %i.ey
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0.i2.i.i.i.i = phi i64 [ %i.ez, %bb.x ], [ %i.dz, %bb.w ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.val20.i.i.i.i = load i64, ptr %i.fa, align 1, !tbaa !39
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %.val19.i.i.i.i = load i64, ptr %i.fb, align 1, !tbaa !39
  %i.fc = xor i64 %.val20.i.i.i.i, -3818837453329782724
  %i.fd = xor i64 %.val19.i.i.i.i, -6688317018830679928
  %i.fe = zext i64 %i.fc to i128
  %i.ff = zext i64 %i.fd to i128
  %i.fg = mul nuw i128 %i.ff, %i.fe               ; 2 uses
  %i.fh = lshr i128 %i.fg, 64
  %i.fi = xor i128 %i.fh, %i.fg
  %i.fj = trunc i128 %i.fi to i64
  %i.fk = add i64 %.0.i2.i.i.i.i, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -48
  %.val24.i.i.i.i = load i64, ptr %i.fm, align 1, !tbaa !39
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -40
  %.val23.i.i.i.i = load i64, ptr %i.fn, align 1, !tbaa !39
  %i.fo = xor i64 %.val24.i.i.i.i, 5690594596133299313
  %i.fp = xor i64 %.val23.i.i.i.i, -2833645246901970632
  %i.fq = zext i64 %i.fo to i128
  %i.fr = zext i64 %i.fp to i128
  %i.fs = mul nuw i128 %i.fr, %i.fq               ; 2 uses
  %i.ft = lshr i128 %i.fs, 64
  %i.fu = xor i128 %i.ft, %i.fs
  %i.fv = trunc i128 %i.fu to i64
  %i.fw = add i64 %i.fk, %i.fv
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.1.i.i.i.i.i = phi i64 [ %i.fw, %bb.y ], [ %i.dz, %bb.v ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.val12.i.i.i.i = load i64, ptr %i.fx, align 1, !tbaa !39
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.val11.i.i.i.i = load i64, ptr %i.fy, align 1, !tbaa !39
  %i.fz = xor i64 %.val12.i.i.i.i, 8711581037947681227
  %i.ga = xor i64 %.val11.i.i.i.i, 2410270004345854594
  %i.gb = zext i64 %i.fz to i128
  %i.gc = zext i64 %i.ga to i128
  %i.gd = mul nuw i128 %i.gc, %i.gb               ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = xor i128 %i.ge, %i.gd
  %i.gg = trunc i128 %i.gf to i64
  %i.gh = add i64 %.1.i.i.i.i.i, %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -32
  %.val16.i.i.i.i = load i64, ptr %i.gj, align 1, !tbaa !39
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -24
  %.val15.i.i.i.i = load i64, ptr %i.gk, align 1, !tbaa !39
  %i.gl = xor i64 %.val16.i.i.i.i, -8204357891075471176
  %i.gm = xor i64 %.val15.i.i.i.i, 5487137525590930912
  %i.gn = zext i64 %i.gl to i128
  %i.go = zext i64 %i.gm to i128
  %i.gp = mul nuw i128 %i.go, %i.gn               ; 2 uses
  %i.gq = lshr i128 %i.gp, 64
  %i.gr = xor i128 %i.gq, %i.gp
  %i.gs = trunc i128 %i.gr to i64
  %i.gt = add i64 %i.gh, %i.gs
  br label %XXH3_len_17to128_64b.exit.i.i.i.i

XXH3_len_17to128_64b.exit.i.i.i.i:                ; preds = %bb.z, %bb.u
  %.2.i.i.i.i.i = phi i64 [ %i.gt, %bb.z ], [ %i.dz, %bb.u ]
  %.val4.i.i.i.i = load i64, ptr %i.bj, align 1, !tbaa !39
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val3.i.i.i.i = load i64, ptr %i.gu, align 1, !tbaa !39
  %i.gv = xor i64 %.val4.i.i.i.i, -4734510112055689544
  %i.gw = xor i64 %.val3.i.i.i.i, 2066345149520216444
  %i.gx = zext i64 %i.gv to i128
  %i.gy = zext i64 %i.gw to i128
  %i.gz = mul nuw i128 %i.gy, %i.gx               ; 2 uses
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = xor i128 %i.ha, %i.gz
  %i.hc = trunc i128 %i.hb to i64
  %i.hd = add i64 %.2.i.i.i.i.i, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -16
  %.val8.i.i.i.i = load i64, ptr %i.hf, align 1, !tbaa !39
  %i.hg = getelementptr inbounds i8, ptr %i.he, i64 -8
  %.val7.i.i.i.i = load i64, ptr %i.hg, align 1, !tbaa !39
  %i.hh = xor i64 %.val8.i.i.i.i, -2623469361688619810
  %i.hi = xor i64 %.val7.i.i.i.i, 2262974939099578482
  %i.hj = zext i64 %i.hh to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = mul nuw i128 %i.hk, %i.hj               ; 2 uses
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = xor i128 %i.hm, %i.hl
  %i.ho = trunc i128 %i.hn to i64
  %i.hp = add i64 %i.hd, %i.ho                    ; 2 uses
  %i.hq = lshr i64 %i.hp, 37
  %i.hr = xor i64 %i.hq, %i.hp
  %i.hs = mul i64 %i.hr, 1609587791953885689      ; 2 uses
  %i.ht = lshr i64 %i.hs, 32
  %i.hu = xor i64 %i.ht, %i.hs
  br label %MapVSF_genericHash.exit.i.i

bb.aa:                                            ; preds = %bb.t
  %i.hv = icmp ult i32 %i.bl, 241
  br i1 %i.hv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hw = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %i.bj, i64 noundef range(i64 0, 4294967296) %i.bm) #15
  br label %MapVSF_genericHash.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.hx = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %i.bj, i64 noundef range(i64 0, 4294967296) %i.bm)
  br label %MapVSF_genericHash.exit.i.i

MapVSF_genericHash.exit.i.i:                      ; preds = %bb.ac, %bb.ab, %XXH3_len_17to128_64b.exit.i.i.i.i, %bb.s, %bb.r, %bb.q, %bb.o
  %.0.i.i.i.i.i = phi i64 [ %i.hx, %bb.ac ], [ %i.hu, %XXH3_len_17to128_64b.exit.i.i.i.i ], [ %i.hw, %bb.ab ], [ %i.ch, %bb.o ], [ %i.da, %bb.q ], [ %i.dx, %bb.s ], [ 953390274, %bb.r ]
  %i.hy = and i64 %.0.i.i.i.i.i, %i.bg
  %i.hz = shl nuw nsw i64 %i.hy, 5
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.hz ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !30 ; 3 uses
  %i.id = icmp ne i32 %i.ic, -1
  tail call void @llvm.assume(i1 %i.id)
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !36
  %.not.i.i.i.i = icmp eq i32 %i.bl, %i.if
  br i1 %.not.i.i.i.i, label %MapVSF_genericEq.exit.i.i, label %.lr.ph.i.i

MapVSF_genericEq.exit.i.i:                        ; preds = %MapVSF_genericHash.exit.i.i
  %i.ig = load ptr, ptr %i.ia, align 8, !tbaa !35
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %i.bj, ptr %i.ig, i64 %i.bm)
  %i.ih = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ih, label %MapVSF_findMutVal.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %MapVSF_genericEq.exit.i.i, %MapVSF_genericHash.exit.i.i
  %i.ii = icmp ne i32 %i.ic, -2
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = load ptr, ptr %i.bh, align 8, !tbaa !33
  br label %bb.ad

bb.ad:                                            ; preds = %MapVSF_genericEq.exit38.backedge.i.i, %.lr.ph.i.i
  %.0.i3144.i.i = phi i32 [ %i.ic, %.lr.ph.i.i ], [ %i.io, %MapVSF_genericEq.exit38.backedge.i.i ]
  %i.ik = zext i32 %.0.i3144.i.i to i64
  %i.il = shl nuw nsw i64 %i.ik, 5
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.il ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load i32, ptr %i.in, align 4, !tbaa !30 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !36
  %.not.i.i35.i.i = icmp eq i32 %i.bl, %i.iq
  br i1 %.not.i.i35.i.i, label %.split.i.i, label %MapVSF_genericEq.exit38.backedge.i.i

.split.i.i:                                       ; preds = %bb.ad
  %i.ir = load ptr, ptr %i.im, align 8, !tbaa !35
  %bcmp.i.i37.i.i = tail call i32 @bcmp(ptr readonly %i.bj, ptr %i.ir, i64 %i.bm)
  %i.is = icmp eq i32 %bcmp.i.i37.i.i, 0
  br i1 %i.is, label %MapVSF_findMutVal.exit.i, label %MapVSF_genericEq.exit38.backedge.i.i

MapVSF_genericEq.exit38.backedge.i.i:             ; preds = %.split.i.i, %bb.ad
  %i.it = icmp ne i32 %i.io, -2
  tail call void @llvm.assume(i1 %i.it)
  br label %bb.ad

MapVSF_findMutVal.exit.i:                         ; preds = %.split.i.i, %MapVSF_genericEq.exit.i.i
  %.1.i.i.i = phi ptr [ %i.ia, %MapVSF_genericEq.exit.i.i ], [ %i.im, %.split.i.i ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  store i64 %.08.i, ptr %i.iu, align 8, !tbaa !58
  %i.iv = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iv, %i.bc
  br i1 %exitcond.not.i, label %syncVSFKeyMap.exit, label %bb.m, !llvm.loop !53

syncVSFKeyMap.exit:                               ; preds = %MapVSF_findMutVal.exit.i, %bb.l, %MapVSF_Iter_next.exit.thread96
  %.not.i41 = icmp eq i64 %2, 0
  br i1 %.not.i41, label %writeVSFAlphabet.exit, label %.lr.ph.i42.preheader

.lr.ph.i42.preheader:                             ; preds = %syncVSFKeyMap.exit
  %xtraiter = and i64 %2, 1
  %i.iw = icmp eq i64 %2, 1
  br i1 %i.iw, label %.lr.ph.i42.epil.preheader, label %.lr.ph.i42.preheader.new

.lr.ph.i42.preheader.new:                         ; preds = %.lr.ph.i42.preheader
  %unroll_iter = and i64 %2, 4294967294
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.i42.preheader.new
  %.017.i = phi i64 [ 0, %.lr.ph.i42.preheader.new ], [ %i.jq, %.lr.ph.i42 ] ; 4 uses
  %.01516.i = phi ptr [ %0, %.lr.ph.i42.preheader.new ], [ %i.jo, %.lr.ph.i42 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i42.preheader.new ], [ %niter.next.1, %.lr.ph.i42 ]
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.017.i ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !35
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !36
  %i.jb = zext i32 %i.ja to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01516.i, ptr align 1 %i.iy, i64 %i.jb, i1 false)
  %i.jc = load i32, ptr %i.iz, align 8, !tbaa !36 ; 2 uses
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr %.01516.i, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.017.i
  store i32 %i.jc, ptr %i.jf, align 4, !tbaa !30
  %i.jg = or disjoint i64 %.017.i, 1              ; 2 uses
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.jg ; 2 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !35
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !36
  %i.jl = zext i32 %i.jk to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.je, ptr align 1 %i.ji, i64 %i.jl, i1 false)
  %i.jm = load i32, ptr %i.jj, align 8, !tbaa !36 ; 2 uses
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jn ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jg
  store i32 %i.jm, ptr %i.jp, align 4, !tbaa !30
  %i.jq = add nuw nsw i64 %.017.i, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %writeVSFAlphabet.exit.loopexit.unr-lcssa, label %.lr.ph.i42, !llvm.loop !54

writeVSFAlphabet.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph.i42
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %writeVSFAlphabet.exit, label %.lr.ph.i42.epil.preheader

.lr.ph.i42.epil.preheader:                        ; preds = %writeVSFAlphabet.exit.loopexit.unr-lcssa, %.lr.ph.i42.preheader
  %.017.i.epil.init = phi i64 [ 0, %.lr.ph.i42.preheader ], [ %i.jq, %writeVSFAlphabet.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01516.i.epil.init = phi ptr [ %0, %.lr.ph.i42.preheader ], [ %i.jo, %writeVSFAlphabet.exit.loopexit.unr-lcssa ]
  %lcmp.mod166 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.017.i.epil.init ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !35
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !36
  %i.jv = zext i32 %i.ju to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01516.i.epil.init, ptr align 1 %i.js, i64 %i.jv, i1 false)
  %i.jw = load i32, ptr %i.jt, align 8, !tbaa !36
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.017.i.epil.init
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !30
  br label %writeVSFAlphabet.exit

writeVSFAlphabet.exit:                            ; preds = %.lr.ph.i42.epil.preheader, %writeVSFAlphabet.exit.loopexit.unr-lcssa, %syncVSFKeyMap.exit
  %.not.i44 = icmp eq i64 %7, 0
  br i1 %.not.i44, label %writeVSFIndices.exit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %writeVSFAlphabet.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ka = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %9)
  %i.kb = icmp eq i64 %i.ka, 1
  %i.kc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %9, i1 true)
  br label %bb.ae

bb.ae:                                            ; preds = %ZL_writeN.exit.i, %.lr.ph.i45
  %.018.i = phi ptr [ %5, %.lr.ph.i45 ], [ %i.rz, %ZL_writeN.exit.i ] ; 27 uses
  %.01517.i = phi i64 [ 0, %.lr.ph.i45 ], [ %i.sa, %ZL_writeN.exit.i ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.01517.i ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !30 ; 12 uses
  %i.kf = load ptr, ptr %8, align 8, !tbaa !27, !nonnull !59, !noundef !59
  %i.kg = zext i32 %i.ke to i64                   ; 16 uses
  %i.kh = icmp ult i32 %i.ke, 17
  br i1 %i.kh, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ki = icmp samesign ugt i32 %i.ke, 8
  br i1 %i.ki, label %bb.ag, label %bb.ah, !prof !37

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.018.i) ]
  %.val39.i.i.i.i82 = load i64, ptr %.018.i, align 1, !tbaa !39
  %i.kj = xor i64 %.val39.i.i.i.i82, 7458650908927343033 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.kg
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -8
  %.val40.i.i.i.i83 = load i64, ptr %i.kl, align 1, !tbaa !39
  %i.km = xor i64 %.val40.i.i.i.i83, -5812251307325107654 ; 2 uses
  %i.kn = tail call noundef i64 @llvm.bswap.i64(i64 %i.kj)
  %i.ko = add i64 %i.kn, %i.kg
  %i.kp = add i64 %i.ko, %i.km
  %i.kq = zext i64 %i.kj to i128
  %i.kr = zext i64 %i.km to i128
  %i.ks = mul nuw i128 %i.kr, %i.kq               ; 2 uses
  %i.kt = lshr i128 %i.ks, 64
  %i.ku = xor i128 %i.kt, %i.ks
  %i.kv = trunc i128 %i.ku to i64
  %i.kw = add i64 %i.kp, %i.kv                    ; 2 uses
  %i.kx = lshr i64 %i.kw, 37
  %i.ky = xor i64 %i.kx, %i.kw
  %i.kz = mul i64 %i.ky, 1609587791953885689      ; 2 uses
  %i.la = lshr i64 %i.kz, 32
  %i.lb = xor i64 %i.la, %i.kz
  br label %MapVSF_genericHash.exit.i.i46

bb.ah:                                            ; preds = %bb.af
  %i.lc = icmp samesign ugt i32 %i.ke, 3
  br i1 %i.lc, label %bb.ai, label %bb.aj, !prof !37

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.018.i) ]
  %.val43.i.i.i.i80 = load i32, ptr %.018.i, align 1, !tbaa !30
  %i.ld = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.kg
  %i.le = getelementptr inbounds i8, ptr %i.ld, i64 -4
  %.val44.i.i.i.i81 = load i32, ptr %i.le, align 1, !tbaa !30
  %i.lf = zext i32 %.val44.i.i.i.i81 to i64
  %i.lg = zext i32 %.val43.i.i.i.i80 to i64
  %i.lh = shl nuw i64 %i.lg, 32
  %i.li = or disjoint i64 %i.lh, %i.lf
  %i.lj = xor i64 %i.li, -4090762196417718878     ; 5 uses
  %i.lk = tail call i64 @llvm.fshl.i64(i64 %i.lj, i64 %i.lj, i64 49)
  %i.ll = tail call i64 @llvm.fshl.i64(i64 %i.lj, i64 %i.lj, i64 24)
  %i.lm = xor i64 %i.lk, %i.ll
  %i.ln = xor i64 %i.lm, %i.lj
  %i.lo = mul i64 %i.ln, -6939452855193903323     ; 2 uses
  %i.lp = lshr i64 %i.lo, 35
  %i.lq = add nuw nsw i64 %i.lp, %i.kg
  %i.lr = xor i64 %i.lq, %i.lo
  %i.ls = mul i64 %i.lr, -6939452855193903323     ; 2 uses
  %i.lt = lshr i64 %i.ls, 28
  %i.lu = xor i64 %i.lt, %i.ls
  br label %MapVSF_genericHash.exit.i.i46

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i.i.i.i79 = icmp eq i32 %i.ke, 0
  br i1 %.not.i.i.i.i.i79, label %MapVSF_genericHash.exit.i.i46, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.018.i) ]
  %i.lv = load i8, ptr %.018.i, align 1, !tbaa !40
  %i.lw = lshr i64 %i.kg, 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !40
  %i.lz = getelementptr i8, ptr %.018.i, i64 %i.kg
  %i.ma = getelementptr i8, ptr %i.lz, i64 -1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !40
  %i.mc = zext i8 %i.lv to i64
  %i.md = shl nuw nsw i64 %i.mc, 16
  %i.me = zext i8 %i.ly to i64
  %i.mf = shl nuw nsw i64 %i.me, 24
  %i.mg = zext i8 %i.mb to i64
  %i.mh = shl nuw nsw i64 %i.kg, 8
  %i.mi = or disjoint i64 %i.md, %i.mh
  %i.mj = or disjoint i64 %i.mi, %i.mf
  %i.mk = or disjoint i64 %i.mj, %i.mg
  %i.ml = xor i64 %i.mk, 2267503259
  %i.mm = mul i64 %i.ml, -4417276706812531889     ; 2 uses
  %i.mn = lshr i64 %i.mm, 29
  %i.mo = xor i64 %i.mn, %i.mm
  %i.mp = mul i64 %i.mo, 1609587929392839161      ; 2 uses
  %i.mq = lshr i64 %i.mp, 32
  %i.mr = xor i64 %i.mq, %i.mp
  br label %MapVSF_genericHash.exit.i.i46

bb.al:                                            ; preds = %bb.ae
  %i.ms = icmp ult i32 %i.ke, 129
  br i1 %i.ms, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.mt = mul i64 %i.kg, -7046029288634856825     ; 4 uses
  %i.mu = icmp samesign ugt i32 %i.ke, 32
  br i1 %i.mu, label %bb.an, label %XXH3_len_17to128_64b.exit.i.i.i.i59

bb.an:                                            ; preds = %bb.am
  %i.mv = icmp samesign ugt i32 %i.ke, 64
  br i1 %i.mv, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.mw = icmp samesign ugt i32 %i.ke, 96
  br i1 %i.mw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mx = getelementptr inbounds nuw i8, ptr %.018.i, i64 48
  %.val28.i.i.i.i75 = load i64, ptr %i.mx, align 1, !tbaa !39
  %i.my = getelementptr inbounds nuw i8, ptr %.018.i, i64 56
  %.val27.i.i.i.i76 = load i64, ptr %i.my, align 1, !tbaa !39
  %i.mz = xor i64 %.val28.i.i.i.i75, 4554437623014685352
  %i.na = xor i64 %.val27.i.i.i.i76, 2111919702937427193
  %i.nb = zext i64 %i.mz to i128
  %i.nc = zext i64 %i.na to i128
  %i.nd = mul nuw i128 %i.nc, %i.nb               ; 2 uses
  %i.ne = lshr i128 %i.nd, 64
  %i.nf = xor i128 %i.ne, %i.nd
  %i.ng = trunc i128 %i.nf to i64
  %i.nh = add i64 %i.mt, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.kg ; 2 uses
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -64
  %.val32.i.i.i.i77 = load i64, ptr %i.nj, align 1, !tbaa !39
  %i.nk = getelementptr inbounds i8, ptr %i.ni, i64 -56
  %.val31.i.i.i.i78 = load i64, ptr %i.nk, align 1, !tbaa !39
  %i.nl = xor i64 %.val32.i.i.i.i77, 3556072174620004746
  %i.nm = xor i64 %.val31.i.i.i.i78, 7238261902898274248
  %i.nn = zext i64 %i.nl to i128
  %i.no = zext i64 %i.nm to i128
  %i.np = mul nuw i128 %i.no, %i.nn               ; 2 uses
  %i.nq = lshr i128 %i.np, 64
  %i.nr = xor i128 %i.nq, %i.np
  %i.ns = trunc i128 %i.nr to i64
  %i.nt = add i64 %i.nh, %i.ns
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i2.i.i.i.i70 = phi i64 [ %i.nt, %bb.ap ], [ %i.mt, %bb.ao ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.018.i, i64 32
  %.val20.i.i.i.i71 = load i64, ptr %i.nu, align 1, !tbaa !39
  %i.nv = getelementptr inbounds nuw i8, ptr %.018.i, i64 40
  %.val19.i.i.i.i72 = load i64, ptr %i.nv, align 1, !tbaa !39
  %i.nw = xor i64 %.val20.i.i.i.i71, -3818837453329782724
  %i.nx = xor i64 %.val19.i.i.i.i72, -6688317018830679928
  %i.ny = zext i64 %i.nw to i128
  %i.nz = zext i64 %i.nx to i128
  %i.oa = mul nuw i128 %i.nz, %i.ny               ; 2 uses
  %i.ob = lshr i128 %i.oa, 64
  %i.oc = xor i128 %i.ob, %i.oa
  %i.od = trunc i128 %i.oc to i64
  %i.oe = add i64 %.0.i2.i.i.i.i70, %i.od
  %i.of = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.kg ; 2 uses
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 -48
  %.val24.i.i.i.i73 = load i64, ptr %i.og, align 1, !tbaa !39
  %i.oh = getelementptr inbounds i8, ptr %i.of, i64 -40
  %.val23.i.i.i.i74 = load i64, ptr %i.oh, align 1, !tbaa !39
  %i.oi = xor i64 %.val24.i.i.i.i73, 5690594596133299313
  %i.oj = xor i64 %.val23.i.i.i.i74, -2833645246901970632
  %i.ok = zext i64 %i.oi to i128
  %i.ol = zext i64 %i.oj to i128
  %i.om = mul nuw i128 %i.ol, %i.ok               ; 2 uses
  %i.on = lshr i128 %i.om, 64
  %i.oo = xor i128 %i.on, %i.om
  %i.op = trunc i128 %i.oo to i64
  %i.oq = add i64 %i.oe, %i.op
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %.1.i.i.i.i.i65 = phi i64 [ %i.oq, %bb.aq ], [ %i.mt, %bb.an ]
  %i.or = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %.val12.i.i.i.i66 = load i64, ptr %i.or, align 1, !tbaa !39
  %i.os = getelementptr inbounds nuw i8, ptr %.018.i, i64 24
  %.val11.i.i.i.i67 = load i64, ptr %i.os, align 1, !tbaa !39
  %i.ot = xor i64 %.val12.i.i.i.i66, 8711581037947681227
  %i.ou = xor i64 %.val11.i.i.i.i67, 2410270004345854594
  %i.ov = zext i64 %i.ot to i128
  %i.ow = zext i64 %i.ou to i128
  %i.ox = mul nuw i128 %i.ow, %i.ov               ; 2 uses
  %i.oy = lshr i128 %i.ox, 64
  %i.oz = xor i128 %i.oy, %i.ox
  %i.pa = trunc i128 %i.oz to i64
  %i.pb = add i64 %.1.i.i.i.i.i65, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.kg ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.pc, i64 -32
  %.val16.i.i.i.i68 = load i64, ptr %i.pd, align 1, !tbaa !39
  %i.pe = getelementptr inbounds i8, ptr %i.pc, i64 -24
  %.val15.i.i.i.i69 = load i64, ptr %i.pe, align 1, !tbaa !39
  %i.pf = xor i64 %.val16.i.i.i.i68, -8204357891075471176
  %i.pg = xor i64 %.val15.i.i.i.i69, 5487137525590930912
  %i.ph = zext i64 %i.pf to i128
  %i.pi = zext i64 %i.pg to i128
  %i.pj = mul nuw i128 %i.pi, %i.ph               ; 2 uses
  %i.pk = lshr i128 %i.pj, 64
  %i.pl = xor i128 %i.pk, %i.pj
  %i.pm = trunc i128 %i.pl to i64
  %i.pn = add i64 %i.pb, %i.pm
  br label %XXH3_len_17to128_64b.exit.i.i.i.i59

XXH3_len_17to128_64b.exit.i.i.i.i59:              ; preds = %bb.ar, %bb.am
  %.2.i.i.i.i.i60 = phi i64 [ %i.pn, %bb.ar ], [ %i.mt, %bb.am ]
  %.val4.i.i.i.i61 = load i64, ptr %.018.i, align 1, !tbaa !39
  %i.po = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %.val3.i.i.i.i62 = load i64, ptr %i.po, align 1, !tbaa !39
  %i.pp = xor i64 %.val4.i.i.i.i61, -4734510112055689544
  %i.pq = xor i64 %.val3.i.i.i.i62, 2066345149520216444
  %i.pr = zext i64 %i.pp to i128
  %i.ps = zext i64 %i.pq to i128
  %i.pt = mul nuw i128 %i.ps, %i.pr               ; 2 uses
  %i.pu = lshr i128 %i.pt, 64
  %i.pv = xor i128 %i.pu, %i.pt
  %i.pw = trunc i128 %i.pv to i64
  %i.px = add i64 %.2.i.i.i.i.i60, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.kg ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -16
  %.val8.i.i.i.i63 = load i64, ptr %i.pz, align 1, !tbaa !39
  %i.qa = getelementptr inbounds i8, ptr %i.py, i64 -8
  %.val7.i.i.i.i64 = load i64, ptr %i.qa, align 1, !tbaa !39
  %i.qb = xor i64 %.val8.i.i.i.i63, -2623469361688619810
  %i.qc = xor i64 %.val7.i.i.i.i64, 2262974939099578482
  %i.qd = zext i64 %i.qb to i128
  %i.qe = zext i64 %i.qc to i128
  %i.qf = mul nuw i128 %i.qe, %i.qd               ; 2 uses
  %i.qg = lshr i128 %i.qf, 64
  %i.qh = xor i128 %i.qg, %i.qf
  %i.qi = trunc i128 %i.qh to i64
  %i.qj = add i64 %i.px, %i.qi                    ; 2 uses
  %i.qk = lshr i64 %i.qj, 37
  %i.ql = xor i64 %i.qk, %i.qj
  %i.qm = mul i64 %i.ql, 1609587791953885689      ; 2 uses
  %i.qn = lshr i64 %i.qm, 32
  %i.qo = xor i64 %i.qn, %i.qm
  br label %MapVSF_genericHash.exit.i.i46

bb.as:                                            ; preds = %bb.al
  %i.qp = icmp ult i32 %i.ke, 241
  br i1 %i.qp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qq = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %.018.i, i64 noundef range(i64 0, 4294967296) %i.kg) #15
  br label %MapVSF_genericHash.exit.i.i46

bb.au:                                            ; preds = %bb.as
  %i.qr = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %.018.i, i64 noundef range(i64 0, 4294967296) %i.kg)
  br label %MapVSF_genericHash.exit.i.i46

MapVSF_genericHash.exit.i.i46:                    ; preds = %bb.au, %bb.at, %XXH3_len_17to128_64b.exit.i.i.i.i59, %bb.ak, %bb.aj, %bb.ai, %bb.ag
  %.0.i.i.i.i.i47 = phi i64 [ %i.qr, %bb.au ], [ %i.qo, %XXH3_len_17to128_64b.exit.i.i.i.i59 ], [ %i.qq, %bb.at ], [ %i.lb, %bb.ag ], [ %i.lu, %bb.ai ], [ %i.mr, %bb.ak ], [ 953390274, %bb.aj ]
  %i.qs = load i32, ptr %i.jy, align 8, !tbaa !29
  %i.qt = zext i32 %i.qs to i64
  %i.qu = and i64 %.0.i.i.i.i.i47, %i.qt
  %i.qv = shl nuw nsw i64 %i.qu, 5
  %i.qw = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.qv ; 4 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 24
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !30 ; 3 uses
  %i.qz = icmp ne i32 %i.qy, -1
  tail call void @llvm.assume(i1 %i.qz)
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rb = load i32, ptr %i.ra, align 8, !tbaa !36
  %.not.i.i.i.i48 = icmp eq i32 %i.ke, %i.rb
  br i1 %.not.i.i.i.i48, label %MapVSF_genericEq.exit.i.i57, label %.lr.ph.i.i49

MapVSF_genericEq.exit.i.i57:                      ; preds = %MapVSF_genericHash.exit.i.i46
  %i.rc = load ptr, ptr %i.qw, align 8, !tbaa !35
  %bcmp.i.i.i.i58 = tail call i32 @bcmp(ptr readonly %.018.i, ptr %i.rc, i64 %i.kg)
  %i.rd = icmp eq i32 %bcmp.i.i.i.i58, 0
  br i1 %i.rd, label %MapVSF_findVal.exit.i, label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %MapVSF_genericEq.exit.i.i57, %MapVSF_genericHash.exit.i.i46
  %i.re = icmp ne i32 %i.qy, -2
  tail call void @llvm.assume(i1 %i.re)
  %i.rf = load ptr, ptr %i.jz, align 8, !tbaa !33
  br label %bb.av

bb.av:                                            ; preds = %MapVSF_genericEq.exit38.backedge.i.i52, %.lr.ph.i.i49
  %.0.i3144.i.i50 = phi i32 [ %i.qy, %.lr.ph.i.i49 ], [ %i.rk, %MapVSF_genericEq.exit38.backedge.i.i52 ]
  %i.rg = zext i32 %.0.i3144.i.i50 to i64
  %i.rh = shl nuw nsw i64 %i.rg, 5
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.rh ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !30 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !36
  %.not.i.i35.i.i51 = icmp eq i32 %i.ke, %i.rm
  br i1 %.not.i.i35.i.i51, label %.split.i.i53, label %MapVSF_genericEq.exit38.backedge.i.i52

.split.i.i53:                                     ; preds = %bb.av
  %i.rn = load ptr, ptr %i.ri, align 8, !tbaa !35
  %bcmp.i.i37.i.i54 = tail call i32 @bcmp(ptr readonly %.018.i, ptr %i.rn, i64 %i.kg)
  %i.ro = icmp eq i32 %bcmp.i.i37.i.i54, 0
  br i1 %i.ro, label %MapVSF_findVal.exit.i, label %MapVSF_genericEq.exit38.backedge.i.i52

MapVSF_genericEq.exit38.backedge.i.i52:           ; preds = %.split.i.i53, %bb.av
  %i.rp = icmp ne i32 %i.rk, -2
  tail call void @llvm.assume(i1 %i.rp)
  br label %bb.av

MapVSF_findVal.exit.i:                            ; preds = %.split.i.i53, %MapVSF_genericEq.exit.i.i57
  %.1.i.i.i55 = phi ptr [ %i.qw, %MapVSF_genericEq.exit.i.i57 ], [ %i.ri, %.split.i.i53 ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.1.i.i.i55, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !58 ; 4 uses
  %i.rs = mul i64 %.01517.i, %9
  %i.rt = getelementptr inbounds nuw i8, ptr %3, i64 %i.rs ; 4 uses
  br i1 %i.kb, label %.split.i16.i, label %ZL_writeN.exit.i

.split.i16.i:                                     ; preds = %MapVSF_findVal.exit.i
  switch i64 %i.kc, label %ZL_writeN.exit.i [
    i64 0, label %bb.aw
    i64 1, label %bb.ax
    i64 2, label %bb.ay
    i64 3, label %bb.az
  ]

bb.aw:                                            ; preds = %.split.i16.i
  %i.ru = trunc i64 %i.rr to i8
  store i8 %i.ru, ptr %i.rt, align 1
  br label %ZL_writeN.exit.i

bb.ax:                                            ; preds = %.split.i16.i
  %i.rv = trunc i64 %i.rr to i16
  store i16 %i.rv, ptr %i.rt, align 1
  br label %ZL_writeN.exit.i

bb.ay:                                            ; preds = %.split.i16.i
  %i.rw = trunc i64 %i.rr to i32
  store i32 %i.rw, ptr %i.rt, align 1
  br label %ZL_writeN.exit.i

bb.az:                                            ; preds = %.split.i16.i
  store i64 %i.rr, ptr %i.rt, align 1
  br label %ZL_writeN.exit.i

ZL_writeN.exit.i:                                 ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %.split.i16.i, %MapVSF_findVal.exit.i
  %i.rx = load i32, ptr %i.kd, align 4, !tbaa !30
  %i.ry = zext i32 %i.rx to i64
  %i.rz = getelementptr inbounds nuw i8, ptr %.018.i, i64 %i.ry
  %i.sa = add nuw i64 %.01517.i, 1                ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.sa, %7
  br i1 %exitcond.not.i56, label %writeVSFIndices.exit, label %bb.ae, !llvm.loop !55

writeVSFIndices.exit:                             ; preds = %ZL_writeN.exit.i, %writeVSFAlphabet.exit, %.thread89, %bb.b
  %.sroa.031.2 = phi i32 [ %i.e, %bb.b ], [ %i.i, %.thread89 ], [ 0, %writeVSFAlphabet.exit ], [ 0, %ZL_writeN.exit.i ]
  %.sroa.6.2 = phi i64 [ %i.g, %bb.b ], [ %i.k, %.thread89 ], [ 0, %writeVSFAlphabet.exit ], [ 0, %ZL_writeN.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.031.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @pqdsortVsf(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define internal fastcc noundef zeroext i1 @GenericTable_growChain(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = icmp eq i32 %i.b, 0
  br i1 %i.e, label %GenericTable_nextCapacity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %i.b, 512
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = mul i32 %i.b, 5
  %i.h = lshr i32 %i.g, 2
  br label %GenericTable_nextCapacity.exit

bb.d:                                             ; preds = %bb.b
  %i.i = shl nuw nsw i32 %i.b, 1
  br label %GenericTable_nextCapacity.exit

GenericTable_nextCapacity.exit:                   ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ 4, %bb.a ] ; 2 uses
  %i.j = icmp ult i32 %.0.i, %i.b
  %i.k = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 %i.d)
  %.013.i = select i1 %i.j, i32 %i.d, i32 %i.k    ; 3 uses
  %.not = icmp ult i32 %i.b, %.013.i
  br i1 %.not, label %bb.e, label %bb.j

bb.e:                                             ; preds = %GenericTable_nextCapacity.exit
  %i.l = zext i32 %.013.i to i64
  %i.m = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %i.l) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 1
  %i.o = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  br i1 %i.n, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33   ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.r, align 8, !tbaa !28  ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @ALLOC_Arena_realloc(ptr noundef nonnull %.val, ptr noundef %i.q, i64 noundef %i.o) #13
  br label %GenericTable_reallocMem.exit

bb.h:                                             ; preds = %bb.f
  %i.t = tail call ptr @ZL_realloc(ptr noundef %i.q, i64 noundef %i.o) #13
  br label %GenericTable_reallocMem.exit

GenericTable_reallocMem.exit:                     ; preds = %bb.g, %bb.h
  %.0.i19 = phi ptr [ %i.s, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.not20 = icmp eq ptr %.0.i19, null
  br i1 %.not20, label %bb.j, label %bb.i

bb.i:                                             ; preds = %GenericTable_reallocMem.exit
  store ptr %.0.i19, ptr %i.p, align 8, !tbaa !33
  store i32 %.013.i, ptr %i.a, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %GenericTable_reallocMem.exit, %bb.i, %GenericTable_nextCapacity.exit
  %.2 = phi i1 [ true, %GenericTable_nextCapacity.exit ], [ false, %bb.e ], [ false, %GenericTable_reallocMem.exit ], [ true, %bb.i ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

declare ptr @ALLOC_Arena_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @ZL_realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define internal fastcc i64 @XXH3_hashLong_64b_default(ptr noalias nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = add i64 %1, -1                           ; 3 uses
  %i.b = lshr i64 %i.a, 10                        ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %XXH3_accumulate_sse2.exit39.i
  %.sroa.33.0 = phi <2 x i64> [ %i.cv, %XXH3_accumulate_sse2.exit39.i ], [ <i64 2870177450012600261, i64 2654435761>, %bb.a ]
  %.sroa.23.0 = phi <2 x i64> [ %i.cl, %XXH3_accumulate_sse2.exit39.i ], [ <i64 -8796714831421723037, i64 2246822519>, %bb.a ]
  %.sroa.13.0 = phi <2 x i64> [ %i.cb, %XXH3_accumulate_sse2.exit39.i ], [ <i64 -4417276706812531889, i64 1609587929392839161>, %bb.a ]
  %.sroa.0.0 = phi <2 x i64> [ %i.br, %XXH3_accumulate_sse2.exit39.i ], [ <i64 3266489917, i64 -7046029288634856825>, %bb.a ]
  %.0.i5 = phi i64 [ %i.cw, %XXH3_accumulate_sse2.exit39.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = shl nuw i64 %.0.i5, 10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  br label %XXH3_accumulate_512_sse2.exit

end_hunk_1
begin_hunk_2_@Detail_MapVSF_reserve:bb.a
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 24)
  %i.ec = xor i64 %i.ea, %i.eb
  %i.ed = xor i64 %i.ec, %i.dz
  %i.ee = mul i64 %i.ed, -6939452855193903323     ; 2 uses
  %i.ef = lshr i64 %i.ee, 35
  %i.eg = add nuw nsw i64 %i.ef, %i.cw
  %i.eh = xor i64 %i.eg, %i.ee
  %i.ei = mul i64 %i.eh, -6939452855193903323     ; 2 uses
  %i.ej = lshr i64 %i.ei, 28
  %i.ek = xor i64 %i.ej, %i.ei
  br label %MapVSF_genericHash.exit

bb.u:                                             ; preds = %bb.s
  %.not.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i, label %MapVSF_genericHash.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %i.el = load i8, ptr %i.ct, align 1, !tbaa !40
  %i.em = lshr i64 %i.cw, 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !40
  %i.ep = getelementptr i8, ptr %i.ct, i64 %i.cw
  %i.eq = getelementptr i8, ptr %i.ep, i64 -1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !40
  %i.es = zext i8 %i.el to i64
  %i.et = shl nuw nsw i64 %i.es, 16
  %i.eu = zext i8 %i.eo to i64
  %i.ev = shl nuw nsw i64 %i.eu, 24
  %i.ew = zext i8 %i.er to i64
  %i.ex = shl nuw nsw i64 %i.cw, 8
  %i.ey = or disjoint i64 %i.et, %i.ex
  %i.ez = or disjoint i64 %i.ey, %i.ev
  %i.fa = or disjoint i64 %i.ez, %i.ew
  %i.fb = xor i64 %i.fa, 2267503259
  %i.fc = mul i64 %i.fb, -4417276706812531889     ; 2 uses
  %i.fd = lshr i64 %i.fc, 29
  %i.fe = xor i64 %i.fd, %i.fc
  %i.ff = mul i64 %i.fe, 1609587929392839161      ; 2 uses
  %i.fg = lshr i64 %i.ff, 32
  %i.fh = xor i64 %i.fg, %i.ff
  br label %MapVSF_genericHash.exit

bb.w:                                             ; preds = %bb.p
  %i.fi = icmp ult i32 %i.cv, 129
  br i1 %i.fi, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.fj = mul i64 %i.cw, -7046029288634856825     ; 4 uses
  %i.fk = icmp samesign ugt i32 %i.cv, 32
  br i1 %i.fk, label %bb.y, label %XXH3_len_17to128_64b.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.fl = icmp samesign ugt i32 %i.cv, 64
  br i1 %i.fl, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fm = icmp samesign ugt i32 %i.cv, 96
  br i1 %i.fm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %.val28.i.i = load i64, ptr %i.fn, align 1, !tbaa !39
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %.val27.i.i = load i64, ptr %i.fo, align 1, !tbaa !39
  %i.fp = xor i64 %.val28.i.i, 4554437623014685352
  %i.fq = xor i64 %.val27.i.i, 2111919702937427193
  %i.fr = zext i64 %i.fp to i128
  %i.fs = zext i64 %i.fq to i128
  %i.ft = mul nuw i128 %i.fs, %i.fr               ; 2 uses
  %i.fu = lshr i128 %i.ft, 64
  %i.fv = xor i128 %i.fu, %i.ft
  %i.fw = trunc i128 %i.fv to i64
  %i.fx = add i64 %i.fj, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fy, i64 -64
  %.val32.i.i = load i64, ptr %i.fz, align 1, !tbaa !39
  %i.ga = getelementptr inbounds i8, ptr %i.fy, i64 -56
  %.val31.i.i = load i64, ptr %i.ga, align 1, !tbaa !39
  %i.gb = xor i64 %.val32.i.i, 3556072174620004746
  %i.gc = xor i64 %.val31.i.i, 7238261902898274248
  %i.gd = zext i64 %i.gb to i128
  %i.ge = zext i64 %i.gc to i128
  %i.gf = mul nuw i128 %i.ge, %i.gd               ; 2 uses
  %i.gg = lshr i128 %i.gf, 64
  %i.gh = xor i128 %i.gg, %i.gf
  %i.gi = trunc i128 %i.gh to i64
  %i.gj = add i64 %i.fx, %i.gi
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i2.i.i = phi i64 [ %i.gj, %bb.aa ], [ %i.fj, %bb.z ]
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %.val20.i.i = load i64, ptr %i.gk, align 1, !tbaa !39
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %.val19.i.i = load i64, ptr %i.gl, align 1, !tbaa !39
  %i.gm = xor i64 %.val20.i.i, -3818837453329782724
  %i.gn = xor i64 %.val19.i.i, -6688317018830679928
  %i.go = zext i64 %i.gm to i128
  %i.gp = zext i64 %i.gn to i128
  %i.gq = mul nuw i128 %i.gp, %i.go               ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = xor i128 %i.gr, %i.gq
  %i.gt = trunc i128 %i.gs to i64
  %i.gu = add i64 %.0.i2.i.i, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -48
  %.val24.i.i = load i64, ptr %i.gw, align 1, !tbaa !39
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -40
  %.val23.i.i = load i64, ptr %i.gx, align 1, !tbaa !39
  %i.gy = xor i64 %.val24.i.i, 5690594596133299313
  %i.gz = xor i64 %.val23.i.i, -2833645246901970632
  %i.ha = zext i64 %i.gy to i128
  %i.hb = zext i64 %i.gz to i128
  %i.hc = mul nuw i128 %i.hb, %i.ha               ; 2 uses
  %i.hd = lshr i128 %i.hc, 64
  %i.he = xor i128 %i.hd, %i.hc
  %i.hf = trunc i128 %i.he to i64
  %i.hg = add i64 %i.gu, %i.hf
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.1.i.i.i = phi i64 [ %i.hg, %bb.ab ], [ %i.fj, %bb.y ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.val12.i.i = load i64, ptr %i.hh, align 1, !tbaa !39
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.val11.i.i = load i64, ptr %i.hi, align 1, !tbaa !39
  %i.hj = xor i64 %.val12.i.i, 8711581037947681227
  %i.hk = xor i64 %.val11.i.i, 2410270004345854594
  %i.hl = zext i64 %i.hj to i128
  %i.hm = zext i64 %i.hk to i128
  %i.hn = mul nuw i128 %i.hm, %i.hl               ; 2 uses
  %i.ho = lshr i128 %i.hn, 64
  %i.hp = xor i128 %i.ho, %i.hn
  %i.hq = trunc i128 %i.hp to i64
  %i.hr = add i64 %.1.i.i.i, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hs, i64 -32
  %.val16.i.i = load i64, ptr %i.ht, align 1, !tbaa !39
  %i.hu = getelementptr inbounds i8, ptr %i.hs, i64 -24
  %.val15.i.i = load i64, ptr %i.hu, align 1, !tbaa !39
  %i.hv = xor i64 %.val16.i.i, -8204357891075471176
  %i.hw = xor i64 %.val15.i.i, 5487137525590930912
  %i.hx = zext i64 %i.hv to i128
  %i.hy = zext i64 %i.hw to i128
  %i.hz = mul nuw i128 %i.hy, %i.hx               ; 2 uses
  %i.ia = lshr i128 %i.hz, 64
  %i.ib = xor i128 %i.ia, %i.hz
  %i.ic = trunc i128 %i.ib to i64
  %i.id = add i64 %i.hr, %i.ic
  br label %XXH3_len_17to128_64b.exit.i.i

XXH3_len_17to128_64b.exit.i.i:                    ; preds = %bb.ac, %bb.x
  %.2.i.i.i = phi i64 [ %i.id, %bb.ac ], [ %i.fj, %bb.x ]
  %.val4.i.i = load i64, ptr %i.ct, align 1, !tbaa !39
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.val3.i.i = load i64, ptr %i.ie, align 1, !tbaa !39
  %i.if = xor i64 %.val4.i.i, -4734510112055689544
  %i.ig = xor i64 %.val3.i.i, 2066345149520216444
  %i.ih = zext i64 %i.if to i128
  %i.ii = zext i64 %i.ig to i128
  %i.ij = mul nuw i128 %i.ii, %i.ih               ; 2 uses
  %i.ik = lshr i128 %i.ij, 64
  %i.il = xor i128 %i.ik, %i.ij
  %i.im = trunc i128 %i.il to i64
  %i.in = add i64 %.2.i.i.i, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -16
  %.val8.i.i = load i64, ptr %i.ip, align 1, !tbaa !39
  %i.iq = getelementptr inbounds i8, ptr %i.io, i64 -8
  %.val7.i.i = load i64, ptr %i.iq, align 1, !tbaa !39
  %i.ir = xor i64 %.val8.i.i, -2623469361688619810
  %i.is = xor i64 %.val7.i.i, 2262974939099578482
  %i.it = zext i64 %i.ir to i128
  %i.iu = zext i64 %i.is to i128
  %i.iv = mul nuw i128 %i.iu, %i.it               ; 2 uses
  %i.iw = lshr i128 %i.iv, 64
  %i.ix = xor i128 %i.iw, %i.iv
  %i.iy = trunc i128 %i.ix to i64
  %i.iz = add i64 %i.in, %i.iy                    ; 2 uses
  %i.ja = lshr i64 %i.iz, 37
  %i.jb = xor i64 %i.ja, %i.iz
  %i.jc = mul i64 %i.jb, 1609587791953885689      ; 2 uses
  %i.jd = lshr i64 %i.jc, 32
  %i.je = xor i64 %i.jd, %i.jc
  br label %MapVSF_genericHash.exit

bb.ad:                                            ; preds = %bb.w
  %i.jf = icmp ult i32 %i.cv, 241
  br i1 %i.jf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.jg = tail call fastcc i64 @XXH3_len_129to240_64b(ptr noundef readonly %i.ct, i64 noundef range(i64 0, 4294967296) %i.cw) #15
  br label %MapVSF_genericHash.exit

bb.af:                                            ; preds = %bb.ad
  %i.jh = tail call fastcc i64 @XXH3_hashLong_64b_default(ptr noundef readonly %i.ct, i64 noundef range(i64 0, 4294967296) %i.cw)
  br label %MapVSF_genericHash.exit

MapVSF_genericHash.exit:                          ; preds = %bb.r, %bb.t, %bb.u, %bb.v, %XXH3_len_17to128_64b.exit.i.i, %bb.ae, %bb.af
  %.0.i.i.i = phi i64 [ %i.jh, %bb.af ], [ %i.je, %XXH3_len_17to128_64b.exit.i.i ], [ %i.jg, %bb.ae ], [ %i.dr, %bb.r ], [ %i.ek, %bb.t ], [ %i.fh, %bb.v ], [ 953390274, %bb.u ]
  %i.ji = and i64 %.0.i.i.i, %i.ay
  %i.jj = shl nuw nsw i64 %i.ji, 5
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i24, i64 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24 ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !30 ; 2 uses
  %i.jn = icmp eq i32 %i.jm, -1
  br i1 %i.jn, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %MapVSF_genericHash.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.jk, ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i64 32, i1 false)
  store i32 -2, ptr %i.jl, align 4, !tbaa !30
  %i.jo = load i32, ptr %i.f, align 4, !tbaa !24
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i32 %i.jo, ptr %i.jp, align 8, !tbaa !30
  store i32 %.045.i, ptr %i.f, align 4, !tbaa !24
  br label %bb.ai

bb.ah:                                            ; preds = %MapVSF_genericHash.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store i32 %i.jm, ptr %i.jq, align 8, !tbaa !30
  store i32 %.045.i, ptr %i.jl, align 4, !tbaa !30
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jr = icmp eq i32 %.047.i, -2
  br i1 %i.jr, label %.thread87, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.js = zext i32 %.047.i to i64
  %i.jt = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.ju = shl nuw nsw i64 %i.js, 5
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ju ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !30
  br label %bb.p

.thread87:                                        ; preds = %bb.ai, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next, %i.am
  br i1 %exitcond97.not, label %GenericTable_rehash.exit, label %bb.j, !llvm.loop !1

GenericTable_rehash.exit:                         ; preds = %.thread87, %.preheader
  store ptr %.0.i24, ptr %0, align 8, !tbaa !27
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !29
  store i32 %spec.select109, ptr %i.a, align 8, !tbaa !22
  br label %GenericTable_reserve.exit

GenericTable_reserve.exit:                        ; preds = %GenericTable_reallocMem.exit, %GenericTable_rehash.exit, %bb.a, %bb.b, %bb.e
  %.2.i = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.e ], [ true, %GenericTable_rehash.exit ], [ false, %GenericTable_reallocMem.exit ]
  ret i1 %.2.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(argmem: read, inaccessiblemem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nofree noinline nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(none) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind memory(none) }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS21ZL_OperationContext_s", !13, i64 0}
!15 = !{!"", !10, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"", !15, i64 0, !15, i64 4, !10, i64 8, !16, i64 16}
!18 = !{!"", !14, i64 0, !17, i64 8}
!19 = !{!18, !14, i64 0}
!20 = !{!"p1 _ZTS7Arena_s", !13, i64 0}
!21 = !{!"", !16, i64 0, !16, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !20, i64 48}
!22 = !{!21, !10, i64 24}
!23 = !{!21, !10, i64 40}
!24 = !{!21, !10, i64 36}
!25 = !{!21, !10, i64 28}
!26 = !{!21, !10, i64 32}
!27 = !{!21, !16, i64 0}
!28 = !{!21, !20, i64 48}
!29 = !{!21, !10, i64 16}
!30 = !{!10, !10, i64 0}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!21, !16, i64 8}
!34 = !{!"VSFKey", !16, i64 0, !10, i64 8}
!35 = !{!34, !16, i64 0}
!36 = !{!34, !10, i64 8}
!37 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!38 = !{!"long", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!9, !9, i64 0}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!21, !10, i64 20}
!43 = distinct !{!43, !31}
!44 = distinct !{!44, !32}
!45 = !{!"branch_weights", i32 1073205, i32 2146410443}
!46 = !{!"branch_weights", i32 2146410443, i32 1073205}
!47 = distinct !{!47, i1 true, !"MapVSF_iter"}
!48 = distinct !{!48, !47, !"MapVSF_iter: argument 0"}
!49 = distinct !{!49, i1 true, !"GenericTable_iter"}
!50 = distinct !{!50, !49, !"GenericTable_iter: argument 0"}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32}
!54 = distinct !{!54, !32}
!55 = distinct !{!55, !32}
!56 = !{!50, !48}
!57 = !{!"", !34, i64 0, !38, i64 16}
!58 = !{!57, !38, i64 16}
!59 = !{}
!60 = distinct !{!60, i1 true, !"XXH3_accumulate_512_sse2"}
!61 = distinct !{!61, !60, !"XXH3_accumulate_512_sse2: argument 0"}
!62 = distinct !{!62, !32}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, i1 true, !"XXH3_accumulate_512_sse2"}
!65 = distinct !{!65, !64, !"XXH3_accumulate_512_sse2: argument 0"}
!66 = distinct !{!66, i1 true, !"XXH3_accumulate_512_sse2"}
!67 = distinct !{!67, !66, !"XXH3_accumulate_512_sse2: argument 0"}
!68 = !{!61}
!69 = !{!65}
!70 = !{!67}
!71 = distinct !{!71, !32}
!72 = !{i64 2150666381}
!73 = distinct !{!73, !31}
end_hunk_2
