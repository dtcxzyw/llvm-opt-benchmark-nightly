Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/bitwriter?download=true
inline.NumInlined: 41
inline.NumDeleted: 2
begin_hunk_0_@FLAC__bitwriter_write_utf8_uint64:bb.a
  %i.ek = icmp samesign ult i32 %i.ei, %i.ej
  %i.el = add i32 %i.ej, %i.dt
  %spec.select.i.i106 = select i1 %i.ek, i32 %i.el, i32 %i.ea ; 2 uses
  %i.em = zext i32 %spec.select.i.i106 to i64
  %i.en = shl nuw nsw i64 %i.em, 3
  %i.eo = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pr265, i64 noundef %i.en) #18 ; 3 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit107, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.eo, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i106, ptr %i.bn, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i102

bitwriter_grow_.exit.i102:                        ; preds = %bb.ad, %bb.aa, %.thread
  %i.eq = phi ptr [ %i.eo, %bb.ad ], [ %.pr265, %bb.aa ], [ %.pr265, %.thread ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !14 ; 4 uses
  %i.et = sub i32 64, %i.es                       ; 2 uses
  %i.eu = icmp ugt i32 %i.et, 8
  br i1 %i.eu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bitwriter_grow_.exit.i102
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !17
  %i.ex = shl i64 %i.ew, 8
  %i.ey = zext nneg i32 %i.ds to i64
  %i.ez = or disjoint i64 %i.ex, %i.ey
  store i64 %i.ez, ptr %i.ev, align 8, !tbaa !17
  %i.fa = add i32 %i.es, 8
  store i32 %i.fa, ptr %i.er, align 8, !tbaa !14
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit107

bb.af:                                            ; preds = %bitwriter_grow_.exit.i102
  %.not38.i103 = icmp eq i32 %i.es, 0
  br i1 %.not38.i103, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !17
  %i.fd = zext nneg i32 %i.et to i64
  %i.fe = shl i64 %i.fc, %i.fd
  %i.ff = add i32 %i.es, -56                      ; 2 uses
  store i32 %i.ff, ptr %i.er, align 8, !tbaa !14
  %i.fg = lshr i32 %i.ds, %i.ff
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = or i64 %i.fe, %i.fh
  %i.fj = tail call i64 @llvm.bswap.i64(i64 %i.fi)
  %i.fk = load i32, ptr %i.bp, align 4, !tbaa !15 ; 2 uses
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.bp, align 4, !tbaa !15
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.fm
  store i64 %i.fj, ptr %i.fn, align 8, !tbaa !18
  %i.fo = zext nneg i32 %i.ds to i64
  store i64 %i.fo, ptr %i.fb, align 8, !tbaa !17
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit107

bb.ah:                                            ; preds = %bb.af
  %i.fp = zext nneg i32 %i.ds to i64
  %i.fq = shl nuw i64 %i.fp, 56
  %i.fr = load i32, ptr %i.bp, align 4, !tbaa !15 ; 2 uses
  %i.fs = add i32 %i.fr, 1
  store i32 %i.fs, ptr %i.bp, align 4, !tbaa !15
  %i.ft = zext i32 %i.fr to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ft
  store i64 %i.fq, ptr %i.fu, align 8, !tbaa !18
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit107

FLAC__bitwriter_write_raw_uint32_nocheck.exit107: ; preds = %bb.o, %bb.p, %bb.z, %bb.ab, %bb.ac, %bb.ae, %bb.ag, %bb.ah
  %.0.i96166 = phi i32 [ %.0.i96.ph.ph266, %bb.ac ], [ 0, %bb.p ], [ %.0.i96.ph.ph266, %bb.ae ], [ %.0.i96.ph.ph266, %bb.ah ], [ 0, %bb.z ], [ %.0.i96.ph.ph266, %bb.ag ], [ %.0.i96.ph.ph266, %bb.ab ], [ 0, %bb.o ]
  %.0.i104 = phi i32 [ 0, %bb.ac ], [ 0, %bb.p ], [ 1, %bb.ae ], [ 1, %bb.ah ], [ 0, %bb.z ], [ 1, %bb.ag ], [ 0, %bb.ab ], [ 0, %bb.o ]
  %i.fv = and i32 %.0.i104, %.0.i96166
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit

bb.ai:                                            ; preds = %bb.n
  %i.fw = icmp samesign ult i64 %1, 65536
  br i1 %i.fw, label %bb.aj, label %bb.bn

bb.aj:                                            ; preds = %bb.ai
  %i.fx = lshr i64 %1, 12
  %i.fy = trunc nuw nsw i64 %i.fx to i32
  %i.fz = or disjoint i32 %i.fy, 224              ; 4 uses
  %i.ga = icmp eq ptr %0, null
  br i1 %i.ga, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = load ptr, ptr %0, align 8, !tbaa !12    ; 5 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !13 ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 15 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.gh = add i32 %i.gg, 8
  %.not.i108 = icmp ugt i32 %i.ge, %i.gh
  br i1 %.not.i108, label %bitwriter_grow_.exit.i110, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !14
  %i.gk = add i32 %i.gj, 71
  %i.gl = lshr i32 %i.gk, 6
  %i.gm = add i32 %i.gl, %i.gg                    ; 4 uses
  %.not.i.i109 = icmp ult i32 %i.ge, %i.gm
  br i1 %.not.i.i109, label %bb.an, label %bitwriter_grow_.exit.i110

bb.an:                                            ; preds = %bb.am
  %i.gn = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !16 ; 2 uses
  %notmask.i.i113 = shl nsw i32 -1, %i.gn
  %i.go = xor i32 %notmask.i.i113, -1
  %i.gp = shl i32 %i.go, 3
  %i.gq = add i32 %i.gn, 63
  %i.gr = add i32 %i.gq, %i.gp
  %i.gs = lshr i32 %i.gr, 6
  %i.gt = icmp ugt i32 %i.gm, %i.gs
  br i1 %i.gt, label %.thread268, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gu = sub nuw i32 %i.gm, %i.ge
  %i.gv = lshr i32 %i.ge, 2                       ; 2 uses
  %i.gw = icmp samesign ult i32 %i.gu, %i.gv
  %i.gx = add i32 %i.gv, %i.ge
  %spec.select.i.i114 = select i1 %i.gw, i32 %i.gx, i32 %i.gm ; 2 uses
  %i.gy = zext i32 %spec.select.i.i114 to i64
  %i.gz = shl nuw nsw i64 %i.gy, 3
  %i.ha = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.gb, i64 noundef %i.gz) #18 ; 3 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.au, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.ha, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i114, ptr %i.gd, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i110

bitwriter_grow_.exit.i110:                        ; preds = %bb.ap, %bb.am, %bb.al
  %i.hc = phi ptr [ %i.ha, %bb.ap ], [ %i.gb, %bb.am ], [ %i.gb, %bb.al ] ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !14 ; 4 uses
  %i.hf = sub i32 64, %i.he                       ; 2 uses
  %i.hg = icmp ugt i32 %i.hf, 8
  br i1 %i.hg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bitwriter_grow_.exit.i110
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !17
  %i.hj = shl i64 %i.hi, 8
  %i.hk = zext nneg i32 %i.fz to i64
  %i.hl = or disjoint i64 %i.hj, %i.hk
  store i64 %i.hl, ptr %i.hh, align 8, !tbaa !17
  %i.hm = add i32 %i.he, 8
  store i32 %i.hm, ptr %i.hd, align 8, !tbaa !14
  br label %.thread268

bb.ar:                                            ; preds = %bitwriter_grow_.exit.i110
  %.not38.i111 = icmp eq i32 %i.he, 0
  br i1 %.not38.i111, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !17
  %i.hp = zext nneg i32 %i.hf to i64
  %i.hq = shl i64 %i.ho, %i.hp
  %i.hr = add i32 %i.he, -56                      ; 2 uses
  store i32 %i.hr, ptr %i.hd, align 8, !tbaa !14
  %i.hs = lshr i32 %i.fz, %i.hr
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = or i64 %i.hq, %i.ht
  %i.hv = tail call i64 @llvm.bswap.i64(i64 %i.hu)
  %i.hw = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.gf, align 4, !tbaa !15
  %i.hy = zext i32 %i.hw to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hy
  store i64 %i.hv, ptr %i.hz, align 8, !tbaa !18
  %i.ia = zext nneg i32 %i.fz to i64
  store i64 %i.ia, ptr %i.hn, align 8, !tbaa !17
  br label %.thread268

bb.at:                                            ; preds = %bb.ar
  %i.ib = zext nneg i32 %i.fz to i64
  %i.ic = shl nuw i64 %i.ib, 56
  %i.id = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.ie = add i32 %i.id, 1
  store i32 %i.ie, ptr %i.gf, align 4, !tbaa !15
  %i.if = zext i32 %i.id to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.if
  store i64 %i.ic, ptr %i.ig, align 8, !tbaa !18
  br label %.thread268

bb.au:                                            ; preds = %bb.ao
  %.pr172.pre = load ptr, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.ih = icmp eq ptr %.pr172.pre, null
  br i1 %i.ih, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131, label %.thread268

.thread268:                                       ; preds = %bb.an, %bb.as, %bb.at, %bb.aq, %bb.au
  %.0.i112.ph.ph272 = phi i32 [ 0, %bb.au ], [ 0, %bb.an ], [ 1, %bb.as ], [ 1, %bb.at ], [ 1, %bb.aq ]
  %.pr172271 = phi ptr [ %.pr172.pre, %bb.au ], [ %i.gb, %bb.an ], [ %i.hc, %bb.as ], [ %i.hc, %bb.at ], [ %i.hc, %bb.aq ] ; 4 uses
  %.in301.in.in = lshr i64 %1, 6
  %.in301.in = trunc nuw i64 %.in301.in.in to i32
  %.in309 = and i32 %.in301.in, 63
  %i.ii = or disjoint i32 %.in309, 128            ; 4 uses
  %i.ij = load i32, ptr %i.gd, align 8, !tbaa !13 ; 5 uses
  %i.ik = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.il = add i32 %i.ik, 8
  %.not.i116 = icmp ugt i32 %i.ij, %i.il
  br i1 %.not.i116, label %bitwriter_grow_.exit.i118, label %bb.av

bb.av:                                            ; preds = %.thread268
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.in = load i32, ptr %i.im, align 8, !tbaa !14
  %i.io = add i32 %i.in, 71
  %i.ip = lshr i32 %i.io, 6
  %i.iq = add i32 %i.ip, %i.ik                    ; 4 uses
  %.not.i.i117 = icmp ult i32 %i.ij, %i.iq
  br i1 %.not.i.i117, label %bb.aw, label %bitwriter_grow_.exit.i118

bb.aw:                                            ; preds = %bb.av
  %i.ir = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !16 ; 2 uses
  %notmask.i.i121 = shl nsw i32 -1, %i.ir
  %i.is = xor i32 %notmask.i.i121, -1
  %i.it = shl i32 %i.is, 3
  %i.iu = add i32 %i.ir, 63
  %i.iv = add i32 %i.iu, %i.it
  %i.iw = lshr i32 %i.iv, 6
  %i.ix = icmp ugt i32 %i.iq, %i.iw
  br i1 %i.ix, label %.thread275, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iy = sub nuw i32 %i.iq, %i.ij
  %i.iz = lshr i32 %i.ij, 2                       ; 2 uses
  %i.ja = icmp samesign ult i32 %i.iy, %i.iz
  %i.jb = add i32 %i.iz, %i.ij
  %spec.select.i.i122 = select i1 %i.ja, i32 %i.jb, i32 %i.iq ; 2 uses
  %i.jc = zext i32 %spec.select.i.i122 to i64
  %i.jd = shl nuw nsw i64 %i.jc, 3
  %i.je = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pr172271, i64 noundef %i.jd) #18 ; 3 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store ptr %i.je, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i122, ptr %i.gd, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i118

bitwriter_grow_.exit.i118:                        ; preds = %bb.ay, %bb.av, %.thread268
  %i.jg = phi ptr [ %i.je, %bb.ay ], [ %.pr172271, %bb.av ], [ %.pr172271, %.thread268 ] ; 5 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !14 ; 4 uses
  %i.jj = sub i32 64, %i.ji                       ; 2 uses
  %i.jk = icmp ugt i32 %i.jj, 8
  br i1 %i.jk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bitwriter_grow_.exit.i118
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !17
  %i.jn = shl i64 %i.jm, 8
  %i.jo = zext nneg i32 %i.ii to i64
  %i.jp = or disjoint i64 %i.jn, %i.jo
  store i64 %i.jp, ptr %i.jl, align 8, !tbaa !17
  %i.jq = add i32 %i.ji, 8
  store i32 %i.jq, ptr %i.jh, align 8, !tbaa !14
  br label %.thread275

bb.ba:                                            ; preds = %bitwriter_grow_.exit.i118
  %.not38.i119 = icmp eq i32 %i.ji, 0
  br i1 %.not38.i119, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !17
  %i.jt = zext nneg i32 %i.jj to i64
  %i.ju = shl i64 %i.js, %i.jt
  %i.jv = add i32 %i.ji, -56                      ; 2 uses
  store i32 %i.jv, ptr %i.jh, align 8, !tbaa !14
  %i.jw = lshr i32 %i.ii, %i.jv
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = or i64 %i.ju, %i.jx
  %i.jz = tail call i64 @llvm.bswap.i64(i64 %i.jy)
  %i.ka = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.kb = add i32 %i.ka, 1
  store i32 %i.kb, ptr %i.gf, align 4, !tbaa !15
  %i.kc = zext i32 %i.ka to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.kc
  store i64 %i.jz, ptr %i.kd, align 8, !tbaa !18
  %i.ke = zext nneg i32 %i.ii to i64
  store i64 %i.ke, ptr %i.jr, align 8, !tbaa !17
  br label %.thread275

bb.bc:                                            ; preds = %bb.ba
  %i.kf = zext nneg i32 %i.ii to i64
  %i.kg = shl nuw i64 %i.kf, 56
  %i.kh = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %i.gf, align 4, !tbaa !15
  %i.kj = zext i32 %i.kh to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %i.kj
  store i64 %i.kg, ptr %i.kk, align 8, !tbaa !18
  br label %.thread275

.thread275:                                       ; preds = %bb.az, %bb.bc, %bb.bb, %bb.aw
  %.pr178.ph = phi ptr [ %.pr172271, %bb.aw ], [ %i.jg, %bb.bb ], [ %i.jg, %bb.bc ], [ %i.jg, %bb.az ]
  %.0.i120.ph.ph.ph = phi i32 [ 0, %bb.aw ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 1, %bb.az ]
  %i.kl = and i32 %.0.i120.ph.ph.ph, %.0.i112.ph.ph272
  br label %bb.be

bb.bd:                                            ; preds = %bb.ax
  %.pr178.pre = load ptr, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.km = icmp eq ptr %.pr178.pre, null
  br i1 %i.km, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131, label %bb.be

bb.be:                                            ; preds = %.thread275, %bb.bd
  %i.kn = phi i32 [ %i.kl, %.thread275 ], [ 0, %bb.bd ] ; 5 uses
  %.pr178279 = phi ptr [ %.pr178.ph, %.thread275 ], [ %.pr178.pre, %bb.bd ] ; 3 uses
  %.in302.in = trunc nuw i64 %1 to i32
  %.in310 = and i32 %.in302.in, 63
  %i.ko = or disjoint i32 %.in310, 128            ; 4 uses
  %i.kp = load i32, ptr %i.gd, align 8, !tbaa !13 ; 5 uses
  %i.kq = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.kr = add i32 %i.kq, 8
  %.not.i124 = icmp ugt i32 %i.kp, %i.kr
  br i1 %.not.i124, label %bitwriter_grow_.exit.i126, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !14
  %i.ku = add i32 %i.kt, 71
  %i.kv = lshr i32 %i.ku, 6
  %i.kw = add i32 %i.kv, %i.kq                    ; 4 uses
  %.not.i.i125 = icmp ult i32 %i.kp, %i.kw
  br i1 %.not.i.i125, label %bb.bg, label %bitwriter_grow_.exit.i126

bb.bg:                                            ; preds = %bb.bf
  %i.kx = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !16 ; 2 uses
  %notmask.i.i129 = shl nsw i32 -1, %i.kx
  %i.ky = xor i32 %notmask.i.i129, -1
  %i.kz = shl i32 %i.ky, 3
  %i.la = add i32 %i.kx, 63
  %i.lb = add i32 %i.la, %i.kz
  %i.lc = lshr i32 %i.lb, 6
  %i.ld = icmp ugt i32 %i.kw, %i.lc
  br i1 %i.ld, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.le = sub nuw i32 %i.kw, %i.kp
  %i.lf = lshr i32 %i.kp, 2                       ; 2 uses
  %i.lg = icmp samesign ult i32 %i.le, %i.lf
  %i.lh = add i32 %i.lf, %i.kp
  %spec.select.i.i130 = select i1 %i.lg, i32 %i.lh, i32 %i.kw ; 2 uses
  %i.li = zext i32 %spec.select.i.i130 to i64
  %i.lj = shl nuw nsw i64 %i.li, 3
  %i.lk = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pr178279, i64 noundef %i.lj) #18 ; 3 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr %i.lk, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i130, ptr %i.gd, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i126

bitwriter_grow_.exit.i126:                        ; preds = %bb.bi, %bb.bf, %bb.be
  %i.lm = phi ptr [ %i.lk, %bb.bi ], [ %.pr178279, %bb.bf ], [ %.pr178279, %bb.be ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !14 ; 4 uses
  %i.lp = sub i32 64, %i.lo                       ; 2 uses
  %i.lq = icmp ugt i32 %i.lp, 8
  br i1 %i.lq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bitwriter_grow_.exit.i126
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !17
  %i.lt = shl i64 %i.ls, 8
  %i.lu = zext nneg i32 %i.ko to i64
  %i.lv = or disjoint i64 %i.lt, %i.lu
  store i64 %i.lv, ptr %i.lr, align 8, !tbaa !17
  %i.lw = add i32 %i.lo, 8
  store i32 %i.lw, ptr %i.ln, align 8, !tbaa !14
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131

bb.bk:                                            ; preds = %bitwriter_grow_.exit.i126
  %.not38.i127 = icmp eq i32 %i.lo, 0
  br i1 %.not38.i127, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !17
  %i.lz = zext nneg i32 %i.lp to i64
  %i.ma = shl i64 %i.ly, %i.lz
  %i.mb = add i32 %i.lo, -56                      ; 2 uses
  store i32 %i.mb, ptr %i.ln, align 8, !tbaa !14
  %i.mc = lshr i32 %i.ko, %i.mb
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = or i64 %i.ma, %i.md
  %i.mf = tail call i64 @llvm.bswap.i64(i64 %i.me)
  %i.mg = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.mh = add i32 %i.mg, 1
  store i32 %i.mh, ptr %i.gf, align 4, !tbaa !15
  %i.mi = zext i32 %i.mg to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.mi
  store i64 %i.mf, ptr %i.mj, align 8, !tbaa !18
  %i.mk = zext nneg i32 %i.ko to i64
  store i64 %i.mk, ptr %i.lx, align 8, !tbaa !17
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131

bb.bm:                                            ; preds = %bb.bk
  %i.ml = zext nneg i32 %i.ko to i64
  %i.mm = shl nuw i64 %i.ml, 56
  %i.mn = load i32, ptr %i.gf, align 4, !tbaa !15 ; 2 uses
  %i.mo = add i32 %i.mn, 1
  store i32 %i.mo, ptr %i.gf, align 4, !tbaa !15
  %i.mp = zext i32 %i.mn to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.mp
  store i64 %i.mm, ptr %i.mq, align 8, !tbaa !18
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit131

FLAC__bitwriter_write_raw_uint32_nocheck.exit131: ; preds = %bb.au, %bb.aj, %bb.ak, %bb.bd, %bb.bg, %bb.bh, %bb.bj, %bb.bl, %bb.bm
  %i.mr = phi i32 [ %i.kn, %bb.bh ], [ 0, %bb.ak ], [ %i.kn, %bb.bj ], [ %i.kn, %bb.bm ], [ 0, %bb.bd ], [ %i.kn, %bb.bl ], [ %i.kn, %bb.bg ], [ 0, %bb.aj ], [ 0, %bb.au ]
  %.0.i128 = phi i32 [ 0, %bb.bh ], [ 0, %bb.ak ], [ 1, %bb.bj ], [ 1, %bb.bm ], [ 0, %bb.bd ], [ 1, %bb.bl ], [ 0, %bb.bg ], [ 0, %bb.aj ], [ 0, %bb.au ]
  %i.ms = and i32 %.0.i128, %i.mr
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit

bb.bn:                                            ; preds = %bb.ai
  %i.mt = icmp samesign ult i64 %1, 2097152
  br i1 %i.mt, label %bb.bo, label %bb.dc

bb.bo:                                            ; preds = %bb.bn
  %i.mu = lshr i64 %1, 18
  %i.mv = trunc nuw nsw i64 %i.mu to i32
  %i.mw = or disjoint i32 %i.mv, 240              ; 4 uses
  %i.mx = icmp eq ptr %0, null
  br i1 %i.mx, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.my = load ptr, ptr %0, align 8, !tbaa !12    ; 5 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !13 ; 5 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !15 ; 2 uses
  %i.ne = add i32 %i.nd, 8
  %.not.i132 = icmp ugt i32 %i.nb, %i.ne
  br i1 %.not.i132, label %bitwriter_grow_.exit.i134, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !14
  %i.nh = add i32 %i.ng, 71
  %i.ni = lshr i32 %i.nh, 6
  %i.nj = add i32 %i.ni, %i.nd                    ; 4 uses
  %.not.i.i133 = icmp ult i32 %i.nb, %i.nj
  br i1 %.not.i.i133, label %bb.bs, label %bitwriter_grow_.exit.i134

bb.bs:                                            ; preds = %bb.br
  %i.nk = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !16 ; 2 uses
  %notmask.i.i137 = shl nsw i32 -1, %i.nk
  %i.nl = xor i32 %notmask.i.i137, -1
  %i.nm = shl i32 %i.nl, 3
  %i.nn = add i32 %i.nk, 63
  %i.no = add i32 %i.nn, %i.nm
  %i.np = lshr i32 %i.no, 6
  %i.nq = icmp ugt i32 %i.nj, %i.np
  br i1 %i.nq, label %.thread285, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.nr = sub nuw i32 %i.nj, %i.nb
  %i.ns = lshr i32 %i.nb, 2                       ; 2 uses
  %i.nt = icmp samesign ult i32 %i.nr, %i.ns
  %i.nu = add i32 %i.ns, %i.nb
  %spec.select.i.i138 = select i1 %i.nt, i32 %i.nu, i32 %i.nj ; 2 uses
  %i.nv = zext i32 %spec.select.i.i138 to i64
  %i.nw = shl nuw nsw i64 %i.nv, 3
  %i.nx = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.my, i64 noundef %i.nw) #18 ; 3 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store ptr %i.nx, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i138, ptr %i.na, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i134

bitwriter_grow_.exit.i134:                        ; preds = %bb.bu, %bb.br, %bb.bq
  %i.nz = phi ptr [ %i.nx, %bb.bu ], [ %i.my, %bb.br ], [ %i.my, %bb.bq ] ; 5 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !14 ; 4 uses
  %i.oc = sub i32 64, %i.ob                       ; 2 uses
  %i.od = icmp ugt i32 %i.oc, 8
  br i1 %i.od, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bitwriter_grow_.exit.i134
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !17
  %i.og = shl i64 %i.of, 8
  %i.oh = zext nneg i32 %i.mw to i64
  %i.oi = or disjoint i64 %i.og, %i.oh
  store i64 %i.oi, ptr %i.oe, align 8, !tbaa !17
  %i.oj = add i32 %i.ob, 8
  store i32 %i.oj, ptr %i.oa, align 8, !tbaa !14
  br label %.thread285

bb.bw:                                            ; preds = %bitwriter_grow_.exit.i134
  %.not38.i135 = icmp eq i32 %i.ob, 0
  br i1 %.not38.i135, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !17
  %i.om = zext nneg i32 %i.oc to i64
  %i.on = shl i64 %i.ol, %i.om
  %i.oo = add i32 %i.ob, -56                      ; 2 uses
  store i32 %i.oo, ptr %i.oa, align 8, !tbaa !14
  %i.op = lshr i32 %i.mw, %i.oo
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = or i64 %i.on, %i.oq
  %i.os = tail call i64 @llvm.bswap.i64(i64 %i.or)
  %i.ot = load i32, ptr %i.nc, align 4, !tbaa !15 ; 2 uses
  %i.ou = add i32 %i.ot, 1
  store i32 %i.ou, ptr %i.nc, align 4, !tbaa !15
  %i.ov = zext i32 %i.ot to i64
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.ov
  store i64 %i.os, ptr %i.ow, align 8, !tbaa !18
  %i.ox = zext nneg i32 %i.mw to i64
  store i64 %i.ox, ptr %i.ok, align 8, !tbaa !17
  br label %.thread285

bb.by:                                            ; preds = %bb.bw
  %i.oy = zext nneg i32 %i.mw to i64
  %i.oz = shl nuw i64 %i.oy, 56
  %i.pa = load i32, ptr %i.nc, align 4, !tbaa !15 ; 2 uses
  %i.pb = add i32 %i.pa, 1
  store i32 %i.pb, ptr %i.nc, align 4, !tbaa !15
  %i.pc = zext i32 %i.pa to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.pc
  store i64 %i.oz, ptr %i.pd, align 8, !tbaa !18
  br label %.thread285

bb.bz:                                            ; preds = %bb.bt
  %.pr187.pre = load ptr, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.pe = icmp eq ptr %.pr187.pre, null
  br i1 %i.pe, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, label %.thread285

.thread285:                                       ; preds = %bb.bs, %bb.bx, %bb.by, %bb.bv, %bb.bz
  %.0.i136.ph.ph289 = phi i32 [ 0, %bb.bz ], [ 0, %bb.bs ], [ 1, %bb.bx ], [ 1, %bb.by ], [ 1, %bb.bv ]
  %.pr187288 = phi ptr [ %.pr187.pre, %bb.bz ], [ %i.my, %bb.bs ], [ %i.nz, %bb.bx ], [ %i.nz, %bb.by ], [ %i.nz, %bb.bv ] ; 4 uses
  %.in.in.in = lshr i64 %1, 12
  %.in.in = trunc nuw i64 %.in.in.in to i32
  %.in = and i32 %.in.in, 63
  %i.pf = or disjoint i32 %.in, 128               ; 4 uses
  %i.pg = load i32, ptr %i.na, align 8, !tbaa !13 ; 5 uses
  %i.ph = load i32, ptr %i.nc, align 4, !tbaa !15 ; 2 uses
  %i.pi = add i32 %i.ph, 8
  %.not.i140 = icmp ugt i32 %i.pg, %i.pi
  br i1 %.not.i140, label %bitwriter_grow_.exit.i142, label %bb.ca

bb.ca:                                            ; preds = %.thread285
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !14
  %i.pl = add i32 %i.pk, 71
  %i.pm = lshr i32 %i.pl, 6
  %i.pn = add i32 %i.pm, %i.ph                    ; 4 uses
  %.not.i.i141 = icmp ult i32 %i.pg, %i.pn
  br i1 %.not.i.i141, label %bb.cb, label %bitwriter_grow_.exit.i142

bb.cb:                                            ; preds = %bb.ca
  %i.po = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !16 ; 2 uses
  %notmask.i.i145 = shl nsw i32 -1, %i.po
  %i.pp = xor i32 %notmask.i.i145, -1
  %i.pq = shl i32 %i.pp, 3
  %i.pr = add i32 %i.po, 63
  %i.ps = add i32 %i.pr, %i.pq
  %i.pt = lshr i32 %i.ps, 6
  %i.pu = icmp ugt i32 %i.pn, %i.pt
  br i1 %i.pu, label %.thread292, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.pv = sub nuw i32 %i.pn, %i.pg
  %i.pw = lshr i32 %i.pg, 2                       ; 2 uses
  %i.px = icmp samesign ult i32 %i.pv, %i.pw
  %i.py = add i32 %i.pw, %i.pg
  %spec.select.i.i146 = select i1 %i.px, i32 %i.py, i32 %i.pn ; 2 uses
  %i.pz = zext i32 %spec.select.i.i146 to i64
  %i.qa = shl nuw nsw i64 %i.pz, 3
  %i.qb = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pr187288, i64 noundef %i.qa) #18 ; 3 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store ptr %i.qb, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i146, ptr %i.na, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i142

bitwriter_grow_.exit.i142:                        ; preds = %bb.cd, %bb.ca, %.thread285
  %i.qd = phi ptr [ %i.qb, %bb.cd ], [ %.pr187288, %bb.ca ], [ %.pr187288, %.thread285 ] ; 5 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !14 ; 4 uses
  %i.qg = sub i32 64, %i.qf                       ; 2 uses
  %i.qh = icmp ugt i32 %i.qg, 8
  br i1 %i.qh, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bitwriter_grow_.exit.i142
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !17
  %i.qk = shl i64 %i.qj, 8
  %i.ql = zext nneg i32 %i.pf to i64
  %i.qm = or disjoint i64 %i.qk, %i.ql
  store i64 %i.qm, ptr %i.qi, align 8, !tbaa !17
  %i.qn = add i32 %i.qf, 8
  store i32 %i.qn, ptr %i.qe, align 8, !tbaa !14
  br label %.thread292

bb.cf:                                            ; preds = %bitwriter_grow_.exit.i142
  %.not38.i143 = icmp eq i32 %i.qf, 0
  br i1 %.not38.i143, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !17
  %i.qq = zext nneg i32 %i.qg to i64
  %i.qr = shl i64 %i.qp, %i.qq
  %i.qs = add i32 %i.qf, -56                      ; 2 uses
  store i32 %i.qs, ptr %i.qe, align 8, !tbaa !14
  %i.qt = lshr i32 %i.pf, %i.qs
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = or i64 %i.qr, %i.qu
  %i.qw = tail call i64 @llvm.bswap.i64(i64 %i.qv)
  %i.qx = load i32, ptr %i.nc, align 4, !tbaa !15 ; 2 uses
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.nc, align 4, !tbaa !15
  %i.qz = zext i32 %i.qx to i64
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.qz
  store i64 %i.qw, ptr %i.ra, align 8, !tbaa !18
  %i.rb = zext nneg i32 %i.pf to i64
  store i64 %i.rb, ptr %i.qo, align 8, !tbaa !17
  br label %.thread292

bb.ch:                                            ; preds = %bb.cf
  %i.rc = zext nneg i32 %i.pf to i64
  %i.rd = shl nuw i64 %i.rc, 56
  %i.re = load i32, ptr %i.nc, align 4, !tbaa !15 ; 2 uses
  %i.rf = add i32 %i.re, 1
  store i32 %i.rf, ptr %i.nc, align 4, !tbaa !15
  %i.rg = zext i32 %i.re to i64
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.rg
  store i64 %i.rd, ptr %i.rh, align 8, !tbaa !18
  br label %.thread292

.thread292:                                       ; preds = %bb.cb, %bb.cg, %bb.ch, %bb.ce
  %.ph291 = phi ptr [ %i.qd, %bb.ce ], [ %i.qd, %bb.ch ], [ %i.qd, %bb.cg ], [ %.pr187288, %bb.cb ]
  %.0.i144.ph.ph = phi i32 [ 1, %bb.ce ], [ 1, %bb.ch ], [ 1, %bb.cg ], [ 0, %bb.cb ]
  %i.ri = and i32 %.0.i144.ph.ph, %.0.i136.ph.ph289
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cc
  %.pre = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %i.rj = icmp eq ptr %.pre, null
  br i1 %i.rj, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, label %bb.cj

bb.cj:                                            ; preds = %.thread292, %bb.ci
  %i.rk = phi i32 [ %i.ri, %.thread292 ], [ 0, %bb.ci ]
  %i.rl = phi ptr [ %.ph291, %.thread292 ], [ %.pre, %bb.ci ] ; 4 uses
  %.in299.in.in = lshr i64 %1, 6
  %.in299.in = trunc nuw i64 %.in299.in.in to i32
  %.in307 = and i32 %.in299.in, 63
  %i.rm = or disjoint i32 %.in307, 128            ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !13 ; 5 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 10 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !15 ; 2 uses
  %i.rr = add i32 %i.rq, 8
  %.not.i148 = icmp ugt i32 %i.ro, %i.rr
  br i1 %.not.i148, label %bitwriter_grow_.exit.i150, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !14
  %i.ru = add i32 %i.rt, 71
  %i.rv = lshr i32 %i.ru, 6
  %i.rw = add i32 %i.rv, %i.rq                    ; 4 uses
  %.not.i.i149 = icmp ult i32 %i.ro, %i.rw
  br i1 %.not.i.i149, label %bb.cl, label %bitwriter_grow_.exit.i150

bb.cl:                                            ; preds = %bb.ck
  %i.rx = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !16 ; 2 uses
  %notmask.i.i153 = shl nsw i32 -1, %i.rx
  %i.ry = xor i32 %notmask.i.i153, -1
  %i.rz = shl i32 %i.ry, 3
  %i.sa = add i32 %i.rx, 63
  %i.sb = add i32 %i.sa, %i.rz
  %i.sc = lshr i32 %i.sb, 6
  %i.sd = icmp ugt i32 %i.rw, %i.sc
  br i1 %i.sd, label %.thread303, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.se = sub nuw i32 %i.rw, %i.ro
  %i.sf = lshr i32 %i.ro, 2                       ; 2 uses
  %i.sg = icmp samesign ult i32 %i.se, %i.sf
  %i.sh = add i32 %i.sf, %i.ro
  %spec.select.i.i154 = select i1 %i.sg, i32 %i.sh, i32 %i.rw ; 2 uses
  %i.si = zext i32 %spec.select.i.i154 to i64
  %i.sj = shl nuw nsw i64 %i.si, 3
  %i.sk = tail call noalias noundef ptr @realloc(ptr noundef nonnull %i.rl, i64 noundef %i.sj) #18 ; 3 uses
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %bb.cs, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.sk, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i154, ptr %i.rn, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i150

bitwriter_grow_.exit.i150:                        ; preds = %bb.cn, %bb.ck, %bb.cj
  %i.sm = phi ptr [ %i.sk, %bb.cn ], [ %i.rl, %bb.ck ], [ %i.rl, %bb.cj ] ; 5 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !14 ; 4 uses
  %i.sp = sub i32 64, %i.so                       ; 2 uses
  %i.sq = icmp ugt i32 %i.sp, 8
  br i1 %i.sq, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bitwriter_grow_.exit.i150
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ss = load i64, ptr %i.sr, align 8, !tbaa !17
  %i.st = shl i64 %i.ss, 8
  %i.su = zext nneg i32 %i.rm to i64
  %i.sv = or disjoint i64 %i.st, %i.su
  store i64 %i.sv, ptr %i.sr, align 8, !tbaa !17
  %i.sw = add i32 %i.so, 8
  store i32 %i.sw, ptr %i.sn, align 8, !tbaa !14
  br label %.thread303

bb.cp:                                            ; preds = %bitwriter_grow_.exit.i150
  %.not38.i151 = icmp eq i32 %i.so, 0
  br i1 %.not38.i151, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !17
  %i.sz = zext nneg i32 %i.sp to i64
  %i.ta = shl i64 %i.sy, %i.sz
  %i.tb = add i32 %i.so, -56                      ; 2 uses
  store i32 %i.tb, ptr %i.sn, align 8, !tbaa !14
  %i.tc = lshr i32 %i.rm, %i.tb
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = or i64 %i.ta, %i.td
  %i.tf = tail call i64 @llvm.bswap.i64(i64 %i.te)
  %i.tg = load i32, ptr %i.rp, align 4, !tbaa !15 ; 2 uses
  %i.th = add i32 %i.tg, 1
  store i32 %i.th, ptr %i.rp, align 4, !tbaa !15
  %i.ti = zext i32 %i.tg to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.ti
  store i64 %i.tf, ptr %i.tj, align 8, !tbaa !18
  %i.tk = zext nneg i32 %i.rm to i64
  store i64 %i.tk, ptr %i.sx, align 8, !tbaa !17
  br label %.thread303

bb.cr:                                            ; preds = %bb.cp
  %i.tl = zext nneg i32 %i.rm to i64
  %i.tm = shl nuw i64 %i.tl, 56
  %i.tn = load i32, ptr %i.rp, align 4, !tbaa !15 ; 2 uses
  %i.to = add i32 %i.tn, 1
  store i32 %i.to, ptr %i.rp, align 4, !tbaa !15
  %i.tp = zext i32 %i.tn to i64
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sm, i64 %i.tp
  store i64 %i.tm, ptr %i.tq, align 8, !tbaa !18
  br label %.thread303

.thread303:                                       ; preds = %bb.co, %bb.cr, %bb.cq, %bb.cl
  %.pr194.ph = phi ptr [ %i.rl, %bb.cl ], [ %i.sm, %bb.cq ], [ %i.sm, %bb.cr ], [ %i.sm, %bb.co ]
  %.0.i152.ph.ph.ph = phi i32 [ 0, %bb.cl ], [ 1, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.co ]
  %i.tr = and i32 %i.rk, %.0.i152.ph.ph.ph
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cm
  %.pr194.pre = load ptr, ptr %0, align 8, !tbaa !12 ; 2 uses
  %i.ts = icmp eq ptr %.pr194.pre, null
  br i1 %i.ts, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, label %bb.ct

bb.ct:                                            ; preds = %.thread303, %bb.cs
  %i.tt = phi i32 [ %i.tr, %.thread303 ], [ 0, %bb.cs ] ; 5 uses
  %.pr194306 = phi ptr [ %.pr194.ph, %.thread303 ], [ %.pr194.pre, %bb.cs ] ; 3 uses
  %.in300.in = trunc nuw i64 %1 to i32
  %.in308 = and i32 %.in300.in, 63
  %i.tu = or disjoint i32 %.in308, 128            ; 4 uses
  %i.tv = load i32, ptr %i.rn, align 8, !tbaa !13 ; 5 uses
  %i.tw = load i32, ptr %i.rp, align 4, !tbaa !15 ; 2 uses
  %i.tx = add i32 %i.tw, 8
  %.not.i156 = icmp ugt i32 %i.tv, %i.tx
  br i1 %.not.i156, label %bitwriter_grow_.exit.i158, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !14
  %i.ua = add i32 %i.tz, 71
  %i.ub = lshr i32 %i.ua, 6
  %i.uc = add i32 %i.ub, %i.tw                    ; 4 uses
  %.not.i.i157 = icmp ult i32 %i.tv, %i.uc
  br i1 %.not.i.i157, label %bb.cv, label %bitwriter_grow_.exit.i158

bb.cv:                                            ; preds = %bb.cu
  %i.ud = load i32, ptr @FLAC__STREAM_METADATA_LENGTH_LEN, align 4, !tbaa !16 ; 2 uses
  %notmask.i.i161 = shl nsw i32 -1, %i.ud
  %i.ue = xor i32 %notmask.i.i161, -1
  %i.uf = shl i32 %i.ue, 3
  %i.ug = add i32 %i.ud, 63
  %i.uh = add i32 %i.ug, %i.uf
  %i.ui = lshr i32 %i.uh, 6
  %i.uj = icmp ugt i32 %i.uc, %i.ui
  br i1 %i.uj, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.uk = sub nuw i32 %i.uc, %i.tv
  %i.ul = lshr i32 %i.tv, 2                       ; 2 uses
  %i.um = icmp samesign ult i32 %i.uk, %i.ul
  %i.un = add i32 %i.ul, %i.tv
  %spec.select.i.i162 = select i1 %i.um, i32 %i.un, i32 %i.uc ; 2 uses
  %i.uo = zext i32 %spec.select.i.i162 to i64
  %i.up = shl nuw nsw i64 %i.uo, 3
  %i.uq = tail call noalias noundef ptr @realloc(ptr noundef nonnull %.pr194306, i64 noundef %i.up) #18 ; 3 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.uq, ptr %0, align 8, !tbaa !12
  store i32 %spec.select.i.i162, ptr %i.rn, align 8, !tbaa !13
  br label %bitwriter_grow_.exit.i158

bitwriter_grow_.exit.i158:                        ; preds = %bb.cx, %bb.cu, %bb.ct
  %i.us = phi ptr [ %i.uq, %bb.cx ], [ %.pr194306, %bb.cu ], [ %.pr194306, %bb.ct ] ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !14 ; 4 uses
  %i.uv = sub i32 64, %i.uu                       ; 2 uses
  %i.uw = icmp ugt i32 %i.uv, 8
  br i1 %i.uw, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bitwriter_grow_.exit.i158
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !17
  %i.uz = shl i64 %i.uy, 8
  %i.va = zext nneg i32 %i.tu to i64
  %i.vb = or disjoint i64 %i.uz, %i.va
  store i64 %i.vb, ptr %i.ux, align 8, !tbaa !17
  %i.vc = add i32 %i.uu, 8
  store i32 %i.vc, ptr %i.ut, align 8, !tbaa !14
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163

bb.cz:                                            ; preds = %bitwriter_grow_.exit.i158
  %.not38.i159 = icmp eq i32 %i.uu, 0
  br i1 %.not38.i159, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !17
  %i.vf = zext nneg i32 %i.uv to i64
  %i.vg = shl i64 %i.ve, %i.vf
  %i.vh = add i32 %i.uu, -56                      ; 2 uses
  store i32 %i.vh, ptr %i.ut, align 8, !tbaa !14
  %i.vi = lshr i32 %i.tu, %i.vh
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = or i64 %i.vg, %i.vj
  %i.vl = tail call i64 @llvm.bswap.i64(i64 %i.vk)
  %i.vm = load i32, ptr %i.rp, align 4, !tbaa !15 ; 2 uses
  %i.vn = add i32 %i.vm, 1
  store i32 %i.vn, ptr %i.rp, align 4, !tbaa !15
  %i.vo = zext i32 %i.vm to i64
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.vo
  store i64 %i.vl, ptr %i.vp, align 8, !tbaa !18
  %i.vq = zext nneg i32 %i.tu to i64
  store i64 %i.vq, ptr %i.vd, align 8, !tbaa !17
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163

bb.db:                                            ; preds = %bb.cz
  %i.vr = zext nneg i32 %i.tu to i64
  %i.vs = shl nuw i64 %i.vr, 56
  %i.vt = load i32, ptr %i.rp, align 4, !tbaa !15 ; 2 uses
  %i.vu = add i32 %i.vt, 1
  store i32 %i.vu, ptr %i.rp, align 4, !tbaa !15
  %i.vv = zext i32 %i.vt to i64
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.vv
  store i64 %i.vs, ptr %i.vw, align 8, !tbaa !18
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit163

FLAC__bitwriter_write_raw_uint32_nocheck.exit163: ; preds = %bb.bp, %bb.bz, %bb.bo, %bb.ci, %bb.cs, %bb.cv, %bb.cw, %bb.cy, %bb.da, %bb.db
  %i.vx = phi i32 [ %i.tt, %bb.cw ], [ 0, %bb.ci ], [ %i.tt, %bb.cy ], [ %i.tt, %bb.db ], [ 0, %bb.cs ], [ %i.tt, %bb.da ], [ %i.tt, %bb.cv ], [ 0, %bb.bo ], [ 0, %bb.bz ], [ 0, %bb.bp ]
  %.0.i160 = phi i32 [ 0, %bb.cw ], [ 0, %bb.ci ], [ 1, %bb.cy ], [ 1, %bb.db ], [ 0, %bb.cs ], [ 1, %bb.da ], [ 0, %bb.cv ], [ 0, %bb.bo ], [ 0, %bb.bz ], [ 0, %bb.bp ]
  %i.vy = and i32 %.0.i160, %i.vx
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit

bb.dc:                                            ; preds = %bb.bn
  %i.vz = icmp samesign ult i64 %1, 67108864
  br i1 %i.vz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.wa = lshr i64 %1, 24
  %i.wb = trunc nuw nsw i64 %i.wa to i32
  %i.wc = or disjoint i32 %i.wb, 248
  %i.wd = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.wc, i32 noundef 8)
  %2 = lshr i64 %1, 18
  %3 = trunc nuw nsw i64 %2 to i32
  %i.we = and i32 %3, 63
  %i.wf = or disjoint i32 %i.we, 128
  %i.wg = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.wf, i32 noundef 8)
  %i.wh = and i32 %i.wg, %i.wd
  %4 = lshr i64 %1, 12
  %5 = trunc nuw nsw i64 %4 to i32
  %i.wi = and i32 %5, 63
  %i.wj = or disjoint i32 %i.wi, 128
  %i.wk = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.wj, i32 noundef 8)
  %i.wl = and i32 %i.wh, %i.wk
  %6 = lshr i64 %1, 6
  %7 = trunc nuw nsw i64 %6 to i32
  %i.wm = and i32 %7, 63
  %i.wn = or disjoint i32 %i.wm, 128
  %i.wo = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.wn, i32 noundef 8)
  %i.wp = and i32 %i.wl, %i.wo
  %8 = trunc nuw nsw i64 %1 to i32
  %i.wq = and i32 %8, 63
  %i.wr = or disjoint i32 %i.wq, 128
  %i.ws = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.wr, i32 noundef 8)
  %i.wt = and i32 %i.wp, %i.ws
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit

bb.de:                                            ; preds = %bb.dc
  %i.wu = icmp samesign ult i64 %1, 2147483648
  br i1 %i.wu, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.wv = lshr i64 %1, 30
  %i.ww = trunc nuw nsw i64 %i.wv to i32
  %i.wx = or disjoint i32 %i.ww, 252
  %i.wy = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.wx, i32 noundef 8)
  %9 = lshr i64 %1, 24
  %10 = trunc nuw nsw i64 %9 to i32
  %i.wz = and i32 %10, 63
  %i.xa = or disjoint i32 %i.wz, 128
  %i.xb = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.xa, i32 noundef 8)
  %i.xc = and i32 %i.xb, %i.wy
  %11 = lshr i64 %1, 18
  %12 = trunc nuw nsw i64 %11 to i32
  %i.xd = and i32 %12, 63
  %i.xe = or disjoint i32 %i.xd, 128
  %i.xf = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.xe, i32 noundef 8)
  %i.xg = and i32 %i.xc, %i.xf
  %13 = lshr i64 %1, 12
  %14 = trunc nuw nsw i64 %13 to i32
  %i.xh = and i32 %14, 63
  %i.xi = or disjoint i32 %i.xh, 128
  %i.xj = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.xi, i32 noundef 8)
  %i.xk = and i32 %i.xg, %i.xj
  %15 = lshr i64 %1, 6
  %16 = trunc nuw nsw i64 %15 to i32
  %i.xl = and i32 %16, 63
  %i.xm = or disjoint i32 %i.xl, 128
  %i.xn = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.xm, i32 noundef 8)
  %i.xo = and i32 %i.xk, %i.xn
  %17 = trunc nuw nsw i64 %1 to i32
  %i.xp = and i32 %17, 63
  %i.xq = or disjoint i32 %i.xp, 128
  %i.xr = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.xq, i32 noundef 8)
  %i.xs = and i32 %i.xo, %i.xr
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit

bb.dg:                                            ; preds = %bb.de
  %i.xt = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef 254, i32 noundef 8)
  %i.xu = lshr i64 %1, 30
  %i.xv = trunc nuw nsw i64 %i.xu to i32
  %i.xw = or disjoint i32 %i.xv, 128
  %i.xx = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.xw, i32 noundef 8)
  %i.xy = and i32 %i.xx, %i.xt
  %18 = lshr i64 %1, 24
  %19 = trunc nuw nsw i64 %18 to i32
  %i.xz = and i32 %19, 63
  %i.ya = or disjoint i32 %i.xz, 128
  %i.yb = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.ya, i32 noundef 8)
  %i.yc = and i32 %i.xy, %i.yb
  %20 = lshr i64 %1, 18
  %21 = trunc nuw nsw i64 %20 to i32
  %i.yd = and i32 %21, 63
  %i.ye = or disjoint i32 %i.yd, 128
  %i.yf = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.ye, i32 noundef 8)
  %i.yg = and i32 %i.yc, %i.yf
  %22 = lshr i64 %1, 12
  %23 = trunc nuw nsw i64 %22 to i32
  %i.yh = and i32 %23, 63
  %i.yi = or disjoint i32 %i.yh, 128
  %i.yj = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.yi, i32 noundef 8)
  %i.yk = and i32 %i.yg, %i.yj
  %24 = lshr i64 %1, 6
  %25 = trunc nuw nsw i64 %24 to i32
  %i.yl = and i32 %25, 63
  %i.ym = or disjoint i32 %i.yl, 128
  %i.yn = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.ym, i32 noundef 8)
  %i.yo = and i32 %i.yk, %i.yn
  %26 = trunc i64 %1 to i32
  %i.yp = and i32 %26, 63
  %i.yq = or disjoint i32 %i.yp, 128
  %i.yr = tail call fastcc i32 @FLAC__bitwriter_write_raw_uint32_nocheck(ptr noundef %0, i32 noundef %i.yq, i32 noundef 8)
  %i.ys = and i32 %i.yo, %i.yr
  br label %FLAC__bitwriter_write_raw_uint32_nocheck.exit

FLAC__bitwriter_write_raw_uint32_nocheck.exit:    ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.d, %bb.c, %FLAC__bitwriter_write_raw_uint32_nocheck.exit131, %bb.dd, %bb.dg, %bb.df, %FLAC__bitwriter_write_raw_uint32_nocheck.exit163, %FLAC__bitwriter_write_raw_uint32_nocheck.exit107, %bb.a
  %.090 = phi i32 [ 0, %bb.a ], [ %i.ys, %bb.dg ], [ %i.fv, %FLAC__bitwriter_write_raw_uint32_nocheck.exit107 ], [ %i.ms, %FLAC__bitwriter_write_raw_uint32_nocheck.exit131 ], [ %i.vy, %FLAC__bitwriter_write_raw_uint32_nocheck.exit163 ], [ %i.wt, %bb.dd ], [ %i.xs, %bb.df ], [ 0, %bb.h ], [ 0, %bb.c ], [ 1, %bb.j ], [ 1, %bb.m ], [ 0, %bb.d ], [ 1, %bb.l ], [ 0, %bb.g ]
  ret i32 %.090
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @FLAC__bitwriter_zero_pad_to_byte_boundary(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = and i32 %i.b, 7                          ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i32 8, %i.c
  %i.e = tail call i32 @FLAC__bitwriter_write_zeroes(ptr noundef nonnull %0, i32 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind sspstrong willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind sspstrong memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 long", !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"FLAC__BitWriter", !9, i64 0, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24}
!12 = !{!11, !9, i64 0}
!13 = !{!11, !5, i64 16}
!14 = !{!11, !5, i64 24}
!15 = !{!11, !5, i64 20}
!16 = !{!5, !5, i64 0}
!17 = !{!11, !10, i64 8}
!18 = !{!10, !10, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"short", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 omnipotent char", !8, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, !20, !27, !28}
!26 = distinct !{!26, !20, !27}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !20, !32}
!31 = distinct !{!31, !20}
!32 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
