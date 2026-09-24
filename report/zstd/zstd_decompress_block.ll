Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_decompress_block?download=true
inline.NumInlined: 585
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@ZSTD_decompressSequences:bb.a
  %i.fj = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.x ], [ %i.er, %bb.z ], [ %i.dv, %bb.aa ], [ %i.ff, %bb.ab ] ; 6 uses
  %i.fk = phi i32 [ %i.ef, %bb.x ], [ %i.es, %bb.z ], [ %i.ef, %bb.aa ], [ %i.fh, %bb.ab ]
  %i.fl = phi i64 [ %i.dx, %bb.x ], [ %.val.i.i23.i, %bb.z ], [ %i.dx, %bb.aa ], [ %.val.i26.i, %bb.ab ] ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !78
  %i.fo = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !79 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !61 ; 2 uses
  %i.ft = add i32 %i.fs, %i.fk                    ; 9 uses
  %i.fu = sub i32 0, %i.ft
  %i.fv = and i32 %i.fu, 63
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = lshr i64 %i.fl, %i.fw
  %i.fy = zext nneg i32 %i.fs to i64
  %notmask.i.i28.i = shl nsw i64 -1, %i.fy
  %i.fz = xor i64 %notmask.i.i28.i, -1
  %i.ga = and i64 %i.fx, %i.fz                    ; 2 uses
  store i32 %i.ft, ptr %i.cw, align 8, !tbaa !77
  store i64 %i.ga, ptr %i.fo, align 8, !tbaa !76
  %i.gb = icmp ugt i32 %i.ft, 64
  br i1 %i.gb, label %bb.ac, label %bb.ad, !prof !55

bb.ac:                                            ; preds = %ZSTD_initFseState.exit27.i
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dg, align 8, !tbaa !72
  br label %ZSTD_initFseState.exit34.i

bb.ad:                                            ; preds = %ZSTD_initFseState.exit27.i
  %.not.i.i29.i = icmp ult ptr %i.fj, %i.ak
  br i1 %.not.i.i29.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gc = lshr i32 %i.ft, 3
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = sub nsw i64 0, %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.fj, i64 %i.ge ; 3 uses
  store ptr %i.gf, ptr %i.dg, align 8, !tbaa !72
  %i.gg = and i32 %i.ft, 7                        ; 2 uses
  store i32 %i.gg, ptr %i.cw, align 8, !tbaa !77
  %.val.i.i30.i = load i64, ptr %i.gf, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i.i30.i, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit34.i

bb.af:                                            ; preds = %bb.ad
  %i.gh = icmp eq ptr %i.fj, %3
  br i1 %i.gh, label %ZSTD_initFseState.exit34.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gi = lshr i32 %i.ft, 3                       ; 2 uses
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = sub nsw i64 0, %i.gj
  %i.gl = getelementptr inbounds i8, ptr %i.fj, i64 %i.gk
  %i.gm = icmp ult ptr %i.gl, %3
  %i.gn = ptrtoint ptr %i.fj to i64
  %i.go = ptrtoint ptr %3 to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %.021.i.i32.i = select i1 %i.gm, i32 %i.gq, i32 %i.gi ; 2 uses
  %i.gr = zext i32 %.021.i.i32.i to i64
  %i.gs = sub nsw i64 0, %i.gr
  %i.gt = getelementptr inbounds i8, ptr %i.fj, i64 %i.gs ; 3 uses
  store ptr %i.gt, ptr %i.dg, align 8, !tbaa !72
  %i.gu = shl i32 %.021.i.i32.i, 3
  %i.gv = sub i32 %i.ft, %i.gu                    ; 2 uses
  store i32 %i.gv, ptr %i.cw, align 8, !tbaa !77
  %.val.i33.i = load i64, ptr %i.gt, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i33.i, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit34.i

ZSTD_initFseState.exit34.i:                       ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  %i.gw = phi ptr [ %i.gt, %bb.ag ], [ %i.fi, %bb.af ], [ %i.gf, %bb.ae ], [ @BIT_reloadDStream.zeroFilled, %bb.ac ]
  %i.gx = phi i32 [ %i.gv, %bb.ag ], [ %i.ft, %bb.af ], [ %i.gg, %bb.ae ], [ %i.ft, %bb.ac ]
  %i.gy = phi i64 [ %.val.i33.i, %bb.ag ], [ %i.fl, %bb.af ], [ %.val.i.i30.i, %bb.ae ], [ %i.fl, %bb.ac ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.gz, ptr %i.ha, align 8, !tbaa !78
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !92
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !93
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !94
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !95
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !96
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hb = getelementptr inbounds i8, ptr %i.j, i64 -32
  %i.hc = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.hd = ptrtoint ptr %i.s to i64
  %i.he = ptrtoint ptr %3 to i64                  ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.by, %ZSTD_initFseState.exit34.i
  %i.hf = phi ptr [ %i.gw, %ZSTD_initFseState.exit34.i ], [ %i.ns, %bb.by ] ; 8 uses
  %i.hg = phi i32 [ %i.gx, %ZSTD_initFseState.exit34.i ], [ %i.nt, %bb.by ] ; 5 uses
  %i.hh = phi i64 [ %i.gy, %ZSTD_initFseState.exit34.i ], [ %i.nu, %bb.by ] ; 6 uses
  %i.hi = phi i64 [ %i.ag, %ZSTD_initFseState.exit34.i ], [ %i.kb, %bb.by ] ; 2 uses
  %i.hj = phi i64 [ %i.ac, %ZSTD_initFseState.exit34.i ], [ %.sink159.i, %bb.by ] ; 6 uses
  %i.hk = phi i64 [ %i.z, %ZSTD_initFseState.exit34.i ], [ %.sink.i, %bb.by ] ; 6 uses
  %i.hl = phi i64 [ %i.ga, %ZSTD_initFseState.exit34.i ], [ %i.nv, %bb.by ] ; 2 uses
  %i.hm = phi i64 [ %i.em, %ZSTD_initFseState.exit34.i ], [ %i.nw, %bb.by ] ; 2 uses
  %i.hn = phi i64 [ %i.de, %ZSTD_initFseState.exit34.i ], [ %i.nx, %bb.by ] ; 2 uses
  %.060.i103.i = phi ptr [ %1, %ZSTD_initFseState.exit34.i ], [ %i.qx, %bb.by ] ; 7 uses
  %.069.i102.i = phi i32 [ %5, %ZSTD_initFseState.exit34.i ], [ %i.qy, %bb.by ] ; 2 uses
  %.not.i = icmp eq i32 %.069.i102.i, 1
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.hn ; 4 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hl ; 4 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.hm ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !50, !noalias !145
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !50, !noalias !145 ; 2 uses
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !50, !noalias !145 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.ia = load i8, ptr %i.hz, align 2, !tbaa !58, !noalias !145 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !58, !noalias !145 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !58, !noalias !145 ; 4 uses
  %i.if = zext i8 %i.ia to i32                    ; 2 uses
  %i.ig = zext i8 %i.ic to i32                    ; 2 uses
  %i.ih = add i8 %i.ic, %i.ia
  %i.ii = add i8 %i.ih, %i.ie
  %i.ij = load i16, ptr %i.ho, align 4, !tbaa !57, !noalias !145
  %i.ik = load i16, ptr %i.hp, align 4, !tbaa !57, !noalias !145
  %i.il = load i16, ptr %i.hq, align 4, !tbaa !57, !noalias !145
  %i.im = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %i.in = load i8, ptr %i.im, align 1, !tbaa !56, !noalias !145 ; 2 uses
  %i.io = zext i8 %i.in to i32
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !56, !noalias !145 ; 2 uses
  %i.ir = zext i8 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.it = load i8, ptr %i.is, align 1, !tbaa !56, !noalias !145 ; 2 uses
  %i.iu = zext i8 %i.it to i32
  %i.iv = icmp ugt i8 %i.ie, 1
  br i1 %i.iv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.iw = zext i8 %i.ie to i32                    ; 2 uses
  %i.ix = and i32 %i.hg, 63
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl i64 %i.hh, %i.iy
  %i.ja = sub nsw i32 0, %i.iw
  %i.jb = and i32 %i.ja, 63
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = lshr i64 %i.iz, %i.jc
  %i.je = add i32 %i.hg, %i.iw                    ; 2 uses
  store i32 %i.je, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %i.jf = zext i32 %i.hy to i64
  %i.jg = add i64 %i.jd, %i.jf
  store i64 %i.hj, ptr %i.ah, align 8, !tbaa !52, !noalias !145
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.jh = icmp eq i32 %i.hv, 0                    ; 3 uses
  %i.ji = icmp eq i8 %i.ie, 0
  br i1 %i.ji, label %bb.ak, label %bb.al, !prof !80

bb.ak:                                            ; preds = %bb.aj
  %i.jj = select i1 %i.jh, i64 %i.hj, i64 %i.hk
  %i.jk = select i1 %i.jh, i64 %i.hk, i64 %i.hj
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.jl = zext i1 %i.jh to i32
  %i.jm = add i32 %i.hy, %i.jl
  %i.jn = zext i32 %i.jm to i64
  %i.jo = and i32 %i.hg, 63
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl i64 %i.hh, %i.jp
  %i.jr = lshr i64 %i.jq, 63
  %i.js = add i32 %i.hg, 1                        ; 3 uses
  store i32 %i.js, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %i.jt = add nuw nsw i64 %i.jr, %i.jn            ; 3 uses
  %i.ju = icmp eq i64 %i.jt, 3
  br i1 %i.ju, label %.thread.i, label %bb.am

.thread.i:                                        ; preds = %bb.al
  %i.jv = add i64 %i.hk, -1                       ; 2 uses
  %.not.i.i76.i = icmp eq i64 %i.jv, 0
  %i.jw = select i1 %.not.i.i76.i, i64 -1, i64 %i.jv
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.jt
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !52, !noalias !145 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.jy, 0
  %i.jz = select i1 %.not.i.i.i, i64 -1, i64 %i.jy ; 2 uses
  %.not101.i.i.i = icmp eq i64 %i.jt, 1
  br i1 %.not101.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i
  %i.ka = phi i64 [ %i.jw, %.thread.i ], [ %i.jz, %bb.am ]
  store i64 %i.hj, ptr %i.ah, align 8, !tbaa !52, !noalias !145
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai
  %.sink159.i = phi i64 [ %i.hk, %bb.ai ], [ %i.jk, %bb.ak ], [ %i.hk, %bb.an ], [ %i.hk, %bb.am ] ; 3 uses
  %.sink.i = phi i64 [ %i.jg, %bb.ai ], [ %i.jj, %bb.ak ], [ %i.ka, %bb.an ], [ %i.jz, %bb.am ] ; 11 uses
  %.val4.i37167.i = phi i32 [ %i.je, %bb.ai ], [ %i.hg, %bb.ak ], [ %i.js, %bb.an ], [ %i.js, %bb.am ] ; 3 uses
  %i.kb = phi i64 [ %i.hj, %bb.ai ], [ %i.hi, %bb.ak ], [ %i.hj, %bb.an ], [ %i.hi, %bb.am ] ; 2 uses
  store i64 %.sink159.i, ptr %i.ad, align 8, !tbaa !52, !noalias !145
  store i64 %.sink.i, ptr %i.x, align 8, !tbaa !52, !noalias !145
  %.not102.i.i.i = icmp eq i8 %i.ic, 0
  br i1 %.not102.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kc = and i32 %.val4.i37167.i, 63
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl i64 %i.hh, %i.kd
  %i.kf = sub nsw i32 0, %i.ig
  %i.kg = and i32 %i.kf, 63
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = lshr i64 %i.ke, %i.kh
  %i.kj = add i32 %.val4.i37167.i, %i.ig          ; 2 uses
  store i32 %i.kj, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %i.kk = add i64 %i.ki, %i.ht
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.kl = phi i32 [ %.val4.i37167.i, %bb.ao ], [ %i.kj, %bb.ap ] ; 8 uses
  %.sroa.6.0.i = phi i64 [ %i.ht, %bb.ao ], [ %i.kk, %bb.ap ] ; 5 uses
  %i.km = icmp ugt i8 %i.ii, 30
  br i1 %i.km, label %bb.ar, label %BIT_reloadDStream.exit.i.i, !prof !55

bb.ar:                                            ; preds = %bb.aq
  %i.kn = icmp ugt i32 %i.kl, 64
  br i1 %i.kn, label %bb.as, label %bb.at, !prof !55

bb.as:                                            ; preds = %bb.ar
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dg, align 8, !tbaa !72, !noalias !145
  br label %BIT_reloadDStream.exit.i.i

bb.at:                                            ; preds = %bb.ar
  %.not.i79.i.i = icmp ult ptr %i.hf, %i.ak
  br i1 %.not.i79.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ko = lshr i32 %i.kl, 3
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = sub nsw i64 0, %i.kp
  %i.kr = getelementptr inbounds i8, ptr %i.hf, i64 %i.kq ; 3 uses
  store ptr %i.kr, ptr %i.dg, align 8, !tbaa !72, !noalias !145
  %i.ks = and i32 %i.kl, 7                        ; 2 uses
  store i32 %i.ks, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %.val.i40.i = load i64, ptr %i.kr, align 1, !tbaa !52, !noalias !145 ; 2 uses
  store i64 %.val.i40.i, ptr %7, align 8, !tbaa !73, !noalias !145
  br label %BIT_reloadDStream.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.kt = icmp eq ptr %i.hf, %3
  br i1 %i.kt, label %BIT_reloadDStream.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ku = lshr i32 %i.kl, 3                       ; 2 uses
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = sub nsw i64 0, %i.kv
  %i.kx = getelementptr inbounds i8, ptr %i.hf, i64 %i.kw
  %i.ky = icmp ult ptr %i.kx, %3
  %i.kz = ptrtoint ptr %i.hf to i64
  %i.la = sub i64 %i.kz, %i.he
  %i.lb = trunc i64 %i.la to i32
  %.021.i.i.i = select i1 %i.ky, i32 %i.lb, i32 %i.ku ; 2 uses
  %i.lc = zext i32 %.021.i.i.i to i64
  %i.ld = sub nsw i64 0, %i.lc
  %i.le = getelementptr inbounds i8, ptr %i.hf, i64 %i.ld ; 3 uses
  store ptr %i.le, ptr %i.dg, align 8, !tbaa !72, !noalias !145
  %i.lf = shl i32 %.021.i.i.i, 3
  %i.lg = sub i32 %i.kl, %i.lf                    ; 2 uses
  store i32 %i.lg, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %.val.i = load i64, ptr %i.le, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i, ptr %7, align 8, !tbaa !73, !noalias !145
  br label %BIT_reloadDStream.exit.i.i

BIT_reloadDStream.exit.i.i:                       ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %bb.aq
  %i.lh = phi ptr [ %i.hf, %bb.av ], [ @BIT_reloadDStream.zeroFilled, %bb.as ], [ %i.kr, %bb.au ], [ %i.le, %bb.aw ], [ %i.hf, %bb.aq ] ; 8 uses
  %i.li = phi i32 [ %i.kl, %bb.av ], [ %i.kl, %bb.as ], [ %i.ks, %bb.au ], [ %i.lg, %bb.aw ], [ %i.kl, %bb.aq ] ; 3 uses
  %i.lj = phi i64 [ %i.hh, %bb.av ], [ %i.hh, %bb.as ], [ %.val.i40.i, %bb.au ], [ %.val.i, %bb.aw ], [ %i.hh, %bb.aq ] ; 7 uses
  %.not103.i.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not103.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %BIT_reloadDStream.exit.i.i
  %i.lk = and i32 %i.li, 63
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = shl i64 %i.lj, %i.ll
  %i.ln = sub nsw i32 0, %i.if
  %i.lo = and i32 %i.ln, 63
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = lshr i64 %i.lm, %i.lp
  %i.lr = add i32 %i.li, %i.if                    ; 2 uses
  store i32 %i.lr, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %i.ls = add i64 %i.lq, %i.hw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %BIT_reloadDStream.exit.i.i
  %i.lt = phi i32 [ %i.li, %BIT_reloadDStream.exit.i.i ], [ %i.lr, %bb.ax ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.hw, %BIT_reloadDStream.exit.i.i ], [ %i.ls, %bb.ax ] ; 6 uses
  br i1 %.not.i, label %ZSTD_decodeSequence.exit.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lu = add i32 %i.lt, %i.io                    ; 2 uses
  %i.lv = sub i32 0, %i.lu
  %i.lw = and i32 %i.lv, 63
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = lshr i64 %i.lj, %i.lx
  %i.lz = zext nneg i8 %i.in to i64
  %notmask.i.i89.i.i = shl nsw i64 -1, %i.lz
  %i.ma = xor i64 %notmask.i.i89.i.i, -1
  %i.mb = and i64 %i.ly, %i.ma
  %i.mc = zext i16 %i.ij to i64
  %i.md = add nuw i64 %i.mb, %i.mc                ; 5 uses
  store i64 %i.md, ptr %i.cs, align 8, !tbaa !76, !noalias !145
  %i.me = add i32 %i.lu, %i.ir                    ; 2 uses
  %i.mf = sub i32 0, %i.me
  %i.mg = and i32 %i.mf, 63
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = lshr i64 %i.lj, %i.mh
  %i.mj = zext nneg i8 %i.iq to i64
  %notmask.i.i88.i.i = shl nsw i64 -1, %i.mj
  %i.mk = xor i64 %notmask.i.i88.i.i, -1
  %i.ml = and i64 %i.mi, %i.mk
  %i.mm = zext i16 %i.ik to i64
  %i.mn = add nuw i64 %i.ml, %i.mm                ; 5 uses
  store i64 %i.mn, ptr %i.fo, align 8, !tbaa !76, !noalias !145
  %i.mo = add i32 %i.me, %i.iu                    ; 9 uses
  %i.mp = sub i32 0, %i.mo
  %i.mq = and i32 %i.mp, 63
  %i.mr = zext nneg i32 %i.mq to i64
  %i.ms = lshr i64 %i.lj, %i.mr
  %i.mt = zext nneg i8 %i.it to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.mt
  %i.mu = xor i64 %notmask.i.i.i.i, -1
  %i.mv = and i64 %i.ms, %i.mu
  store i32 %i.mo, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %i.mw = zext i16 %i.il to i64
  %i.mx = add nuw i64 %i.mv, %i.mw                ; 5 uses
  store i64 %i.mx, ptr %i.ea, align 8, !tbaa !76, !noalias !145
  %i.my = icmp ugt i32 %i.mo, 64
  br i1 %i.my, label %bb.ba, label %bb.bb, !prof !55

bb.ba:                                            ; preds = %bb.az
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dg, align 8, !tbaa !72, !noalias !145
  br label %ZSTD_decodeSequence.exit.i.i

bb.bb:                                            ; preds = %bb.az
  %.not.i81.i.i = icmp ult ptr %i.lh, %i.ak
  br i1 %.not.i81.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mz = lshr i32 %i.mo, 3
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = sub nsw i64 0, %i.na
  %i.nc = getelementptr inbounds i8, ptr %i.lh, i64 %i.nb ; 3 uses
  store ptr %i.nc, ptr %i.dg, align 8, !tbaa !72, !noalias !145
  %i.nd = and i32 %i.mo, 7                        ; 2 uses
  store i32 %i.nd, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %.val.i43.i = load i64, ptr %i.nc, align 1, !tbaa !52, !noalias !145 ; 2 uses
  store i64 %.val.i43.i, ptr %7, align 8, !tbaa !73, !noalias !145
  br label %ZSTD_decodeSequence.exit.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.ne = icmp eq ptr %i.lh, %3
  br i1 %i.ne, label %ZSTD_decodeSequence.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nf = lshr i32 %i.mo, 3                       ; 2 uses
  %i.ng = zext nneg i32 %i.nf to i64
  %i.nh = sub nsw i64 0, %i.ng
  %i.ni = getelementptr inbounds i8, ptr %i.lh, i64 %i.nh
  %i.nj = icmp ult ptr %i.ni, %3
  %i.nk = ptrtoint ptr %i.lh to i64
  %i.nl = sub i64 %i.nk, %i.he
  %i.nm = trunc i64 %i.nl to i32
  %.021.i83.i.i = select i1 %i.nj, i32 %i.nm, i32 %i.nf ; 2 uses
  %i.nn = zext i32 %.021.i83.i.i to i64
  %i.no = sub nsw i64 0, %i.nn
  %i.np = getelementptr inbounds i8, ptr %i.lh, i64 %i.no ; 3 uses
  store ptr %i.np, ptr %i.dg, align 8, !tbaa !72, !noalias !145
  %i.nq = shl i32 %.021.i83.i.i, 3
  %i.nr = sub i32 %i.mo, %i.nq                    ; 2 uses
  store i32 %i.nr, ptr %i.cw, align 8, !tbaa !77, !noalias !145
  %.val6.i = load i64, ptr %i.np, align 1, !tbaa !52 ; 2 uses
  store i64 %.val6.i, ptr %7, align 8, !tbaa !73, !noalias !145
  br label %ZSTD_decodeSequence.exit.i.i

ZSTD_decodeSequence.exit.i.i:                     ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.ay
  %i.ns = phi ptr [ %i.lh, %bb.bd ], [ @BIT_reloadDStream.zeroFilled, %bb.ba ], [ %i.nc, %bb.bc ], [ %i.np, %bb.be ], [ %i.lh, %bb.ay ] ; 2 uses
  %i.nt = phi i32 [ %i.mo, %bb.bd ], [ %i.mo, %bb.ba ], [ %i.nd, %bb.bc ], [ %i.nr, %bb.be ], [ %i.lt, %bb.ay ] ; 2 uses
  %i.nu = phi i64 [ %i.lj, %bb.bd ], [ %i.lj, %bb.ba ], [ %.val.i43.i, %bb.bc ], [ %.val6.i, %bb.be ], [ %i.lj, %bb.ay ]
  %i.nv = phi i64 [ %i.mn, %bb.bd ], [ %i.mn, %bb.ba ], [ %i.mn, %bb.bc ], [ %i.mn, %bb.be ], [ %i.hl, %bb.ay ]
  %i.nw = phi i64 [ %i.mx, %bb.bd ], [ %i.mx, %bb.ba ], [ %i.mx, %bb.bc ], [ %i.mx, %bb.be ], [ %i.hm, %bb.ay ]
  %i.nx = phi i64 [ %i.md, %bb.bd ], [ %i.md, %bb.ba ], [ %i.md, %bb.bc ], [ %i.md, %bb.be ], [ %i.hn, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0.i, ptr %6, align 8
  store i64 %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  store i64 %.sink.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %i.ny = getelementptr i8, ptr %.060.i103.i, i64 %.sroa.0.0.i ; 7 uses
  %i.nz = add i64 %.sroa.0.0.i, %.sroa.6.0.i      ; 8 uses
  %i.oa = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 %.sroa.0.0.i ; 2 uses
  %i.oc = sub i64 0, %.sink.i
  %i.od = getelementptr inbounds i8, ptr %i.ny, i64 %i.oc ; 2 uses
  %i.oe = icmp ugt ptr %i.ob, %i.o
  %i.of = getelementptr inbounds nuw i8, ptr %.060.i103.i, i64 %i.nz
  %i.og = icmp ugt ptr %i.of, %i.hb
  %or.cond.i.i.i = select i1 %i.oe, i1 true, i1 %i.og, !prof !84
  br i1 %or.cond.i.i.i, label %bb.bf, label %.critedge.i.i.i, !prof !84

.critedge.i.i.i:                                  ; preds = %ZSTD_decodeSequence.exit.i.i
  %.val13.i = load <2 x i64>, ptr %i.oa, align 1, !tbaa !25
  store <2 x i64> %.val13.i, ptr %.060.i103.i, align 1, !tbaa !25
  %i.oh = icmp ugt i64 %.sroa.0.0.i, 16
  br i1 %i.oh, label %bb.bg, label %ZSTD_wildcopy.exit.i.i, !prof !55

bb.bf:                                            ; preds = %ZSTD_decodeSequence.exit.i.i
  %i.oi = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.060.i103.i, ptr noundef %i.j, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u)
  br label %ZSTD_execSequence.exit.i.i

bb.bg:                                            ; preds = %.critedge.i.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %.060.i103.i, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oa, i64 16 ; 2 uses
  %.val8.i = load <2 x i64>, ptr %i.ok, align 1, !tbaa !25
  store <2 x i64> %.val8.i, ptr %i.oj, align 1, !tbaa !25
  %i.ol = icmp ult i64 %.sroa.0.0.i, 33
  br i1 %i.ol, label %ZSTD_wildcopy.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.om = getelementptr inbounds nuw i8, ptr %.060.i103.i, i64 32
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %bb.bh
  %.pn.i.i.i = phi ptr [ %i.ok, %bb.bh ], [ %i.oo, %bb.bi ] ; 2 uses
  %.1.i.i.i = phi ptr [ %i.om, %bb.bh ], [ %i.op, %bb.bi ] ; 3 uses
  %.130.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 16
  %.130.i.i.val.i = load <2 x i64>, ptr %.130.i.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i.i.val.i, ptr %.1.i.i.i, align 1, !tbaa !25
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.oo = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 32 ; 2 uses
  %.val7.i = load <2 x i64>, ptr %i.oo, align 1, !tbaa !25
  store <2 x i64> %.val7.i, ptr %i.on, align 1, !tbaa !25
  %i.op = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 32 ; 2 uses
  %i.oq = icmp ult ptr %i.op, %i.ny
  br i1 %i.oq, label %bb.bi, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !8

ZSTD_wildcopy.exit.i.i:                           ; preds = %bb.bi, %bb.bg, %.critedge.i.i.i
  store ptr %i.ob, ptr %i.a, align 8, !tbaa !46
  %i.or = ptrtoint ptr %i.ny to i64               ; 2 uses
  %i.os = sub i64 %i.or, %i.hc
  %i.ot = icmp ugt i64 %.sink.i, %i.os
  br i1 %i.ot, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %ZSTD_wildcopy.exit.i.i
  %i.ou = sub i64 %i.or, %i.hd
  %i.ov = icmp ugt i64 %.sink.i, %i.ou
  br i1 %i.ov, label %ZSTD_execSequence.exit.i.thread.i, label %bb.bk, !prof !55

ZSTD_execSequence.exit.i.thread.i:                ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread83.i

bb.bk:                                            ; preds = %bb.bj
  %i.ow = ptrtoint ptr %i.od to i64
  %i.ox = sub i64 %i.ow, %i.hc                    ; 3 uses
  %i.oy = getelementptr inbounds i8, ptr %i.u, i64 %i.ox ; 2 uses
  %i.oz = add nsw i64 %i.ox, %.sroa.6.0.i         ; 3 uses
  %.not.i78.i.i = icmp sgt i64 %i.oz, 0
  br i1 %.not.i78.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ny, ptr align 1 %i.oy, i64 %.sroa.6.0.i, i1 false)
  br label %ZSTD_execSequence.exit.i.i

bb.bm:                                            ; preds = %bb.bk
  %gepdiff.i.i.i = sub nsw i64 0, %i.ox           ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ny, ptr align 1 %i.oy, i64 %gepdiff.i.i.i, i1 false)
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ny, i64 %gepdiff.i.i.i
  store i64 %i.oz, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !86
  br label %bb.bn
end_hunk_0
begin_hunk_1_@ZSTD_decompressSequences_bmi2:bb.a
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !61 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 14 uses
  %i.cv = add i32 %i.co, %i.ct                    ; 8 uses
  %i.cw = sub i32 0, %i.cv
  %i.cx = and i32 %i.cw, 63
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = lshr i64 %i.cp, %i.cy
  %i.da = zext nneg i32 %i.ct to i64
  %notmask.i.i = shl nsw i64 -1, %i.da
  %i.db = xor i64 %notmask.i.i, -1
  %i.dc = and i64 %i.cz, %i.db                    ; 2 uses
  store i64 %i.dc, ptr %i.cq, align 8, !tbaa !76
  %i.dd = icmp ugt i32 %i.cv, 64
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 15 uses
  br i1 %i.dd, label %bb.q, label %bb.r, !prof !55

bb.q:                                             ; preds = %bb.p
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !72
  br label %ZSTD_initFseState.exit

bb.r:                                             ; preds = %bb.p
  %.not.i.i17 = icmp slt i64 %.idx, 8
  br i1 %.not.i.i17, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.df = lshr i32 %i.cv, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %.ptr, i64 %i.dh ; 4 uses
  store ptr %i.di, ptr %i.de, align 8, !tbaa !72
  %i.dj = and i32 %i.cv, 7                        ; 2 uses
  store i32 %i.dj, ptr %i.cu, align 8, !tbaa !77
  %.val.i.i = load i64, ptr %i.di, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i.i, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit

bb.t:                                             ; preds = %bb.r
  %i.dk = icmp eq i64 %.idx, 0
  br i1 %i.dk, label %ZSTD_initFseState.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = lshr i32 %i.cv, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %.021.i.i19147 = tail call i64 @llvm.smin.i64(i64 %.idx, i64 %i.dm) ; 2 uses
  %.021.i.i19 = trunc i64 %.021.i.i19147 to i32
  %i.dn = and i64 %.021.i.i19147, 4294967295
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.ptr, i64 %i.do ; 4 uses
  store ptr %i.dp, ptr %i.de, align 8, !tbaa !72
  %i.dq = shl i32 %.021.i.i19, 3
  %i.dr = sub i32 %i.cv, %i.dq                    ; 2 uses
  store i32 %i.dr, ptr %i.cu, align 8, !tbaa !77
  %.val.i20 = load i64, ptr %i.dp, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i20, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit

ZSTD_initFseState.exit:                           ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %i.ds = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.q ], [ %i.di, %bb.s ], [ %i.cn, %bb.t ], [ %i.dp, %bb.u ]
  %i.dt = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.q ], [ %i.di, %bb.s ], [ %3, %bb.t ], [ %i.dp, %bb.u ] ; 7 uses
  %i.du = phi i32 [ %i.cv, %bb.q ], [ %i.dj, %bb.s ], [ %i.cv, %bb.t ], [ %i.dr, %bb.u ]
  %i.dv = phi i64 [ %i.cp, %bb.q ], [ %.val.i.i, %bb.s ], [ %i.cp, %bb.t ], [ %.val.i20, %bb.u ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !66 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !61 ; 2 uses
  %i.ed = add i32 %i.du, %i.ec                    ; 8 uses
  %i.ee = sub i32 0, %i.ed
  %i.ef = and i32 %i.ee, 63
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 %i.dv, %i.eg
  %i.ei = zext nneg i32 %i.ec to i64
  %notmask.i.i21 = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i.i21, -1
  %i.ek = and i64 %i.eh, %i.ej                    ; 2 uses
  store i64 %i.ek, ptr %i.dy, align 8, !tbaa !76
  %i.el = icmp ugt i32 %i.ed, 64
  br i1 %i.el, label %bb.v, label %bb.w, !prof !55

bb.v:                                             ; preds = %ZSTD_initFseState.exit
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !72
  br label %ZSTD_initFseState.exit27

bb.w:                                             ; preds = %ZSTD_initFseState.exit
  %.not.i.i22 = icmp ult ptr %i.dt, %i.ai
  br i1 %.not.i.i22, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.em = lshr i32 %i.ed, 3
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = sub nsw i64 0, %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.dt, i64 %i.eo ; 4 uses
  store ptr %i.ep, ptr %i.de, align 8, !tbaa !72
  %i.eq = and i32 %i.ed, 7
  %.val.i.i23 = load i64, ptr %i.ep, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i.i23, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit27

bb.y:                                             ; preds = %bb.w
  %i.er = icmp eq ptr %i.dt, %3
  br i1 %i.er, label %ZSTD_initFseState.exit27, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.es = lshr i32 %i.ed, 3                       ; 2 uses
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.dt, i64 %i.eu
  %i.ew = icmp ult ptr %i.ev, %3
  %i.ex = ptrtoint ptr %i.dt to i64
  %i.ey = ptrtoint ptr %3 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %.021.i.i25 = select i1 %i.ew, i32 %i.fa, i32 %i.es ; 2 uses
  %i.fb = zext i32 %.021.i.i25 to i64
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %i.dt, i64 %i.fc ; 4 uses
  store ptr %i.fd, ptr %i.de, align 8, !tbaa !72
  %i.fe = shl i32 %.021.i.i25, 3
  %i.ff = sub i32 %i.ed, %i.fe
  %.val.i26 = load i64, ptr %i.fd, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i26, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit27

ZSTD_initFseState.exit27:                         ; preds = %bb.v, %bb.x, %bb.y, %bb.z
  %i.fg = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.v ], [ %i.ep, %bb.x ], [ %i.ds, %bb.y ], [ %i.fd, %bb.z ]
  %i.fh = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.v ], [ %i.ep, %bb.x ], [ %i.dt, %bb.y ], [ %i.fd, %bb.z ] ; 6 uses
  %i.fi = phi i32 [ %i.ed, %bb.v ], [ %i.eq, %bb.x ], [ %i.ed, %bb.y ], [ %i.ff, %bb.z ]
  %i.fj = phi i64 [ %i.dv, %bb.v ], [ %.val.i.i23, %bb.x ], [ %i.dv, %bb.y ], [ %.val.i26, %bb.z ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !78
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !79 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !61 ; 2 uses
  %i.fr = add i32 %i.fi, %i.fq                    ; 9 uses
  %i.fs = sub i32 0, %i.fr
  %i.ft = and i32 %i.fs, 63
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = lshr i64 %i.fj, %i.fu
  %i.fw = zext nneg i32 %i.fq to i64
  %notmask.i.i28 = shl nsw i64 -1, %i.fw
  %i.fx = xor i64 %notmask.i.i28, -1
  %i.fy = and i64 %i.fv, %i.fx                    ; 2 uses
  store i32 %i.fr, ptr %i.cu, align 8, !tbaa !77
  store i64 %i.fy, ptr %i.fm, align 8, !tbaa !76
  %i.fz = icmp ugt i32 %i.fr, 64
  br i1 %i.fz, label %bb.aa, label %bb.ab, !prof !55

bb.aa:                                            ; preds = %ZSTD_initFseState.exit27
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !72
  br label %ZSTD_initFseState.exit34

bb.ab:                                            ; preds = %ZSTD_initFseState.exit27
  %.not.i.i29 = icmp ult ptr %i.fh, %i.ai
  br i1 %.not.i.i29, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ga = lshr i32 %i.fr, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = sub nsw i64 0, %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.fh, i64 %i.gc ; 3 uses
  store ptr %i.gd, ptr %i.de, align 8, !tbaa !72
  %i.ge = and i32 %i.fr, 7                        ; 2 uses
  store i32 %i.ge, ptr %i.cu, align 8, !tbaa !77
  %.val.i.i30 = load i64, ptr %i.gd, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i.i30, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit34

bb.ad:                                            ; preds = %bb.ab
  %i.gf = icmp eq ptr %i.fh, %3
  br i1 %i.gf, label %ZSTD_initFseState.exit34, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = lshr i32 %i.fr, 3                       ; 2 uses
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = sub nsw i64 0, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %i.fh, i64 %i.gi
  %i.gk = icmp ult ptr %i.gj, %3
  %i.gl = ptrtoint ptr %i.fh to i64
  %i.gm = ptrtoint ptr %3 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = trunc i64 %i.gn to i32
  %.021.i.i32 = select i1 %i.gk, i32 %i.go, i32 %i.gg ; 2 uses
  %i.gp = zext i32 %.021.i.i32 to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.fh, i64 %i.gq ; 3 uses
  store ptr %i.gr, ptr %i.de, align 8, !tbaa !72
  %i.gs = shl i32 %.021.i.i32, 3
  %i.gt = sub i32 %i.fr, %i.gs                    ; 2 uses
  store i32 %i.gt, ptr %i.cu, align 8, !tbaa !77
  %.val.i33 = load i64, ptr %i.gr, align 1, !tbaa !52 ; 2 uses
  store i64 %.val.i33, ptr %7, align 8, !tbaa !73
  br label %ZSTD_initFseState.exit34

ZSTD_initFseState.exit34:                         ; preds = %bb.aa, %bb.ac, %bb.ad, %bb.ae
  %i.gu = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.aa ], [ %i.gd, %bb.ac ], [ %i.fg, %bb.ad ], [ %i.gr, %bb.ae ] ; 2 uses
  %i.gv = phi i32 [ %i.fr, %bb.aa ], [ %i.ge, %bb.ac ], [ %i.fr, %bb.ad ], [ %i.gt, %bb.ae ] ; 2 uses
  %i.gw = phi i64 [ %i.fj, %bb.aa ], [ %.val.i.i30, %bb.ac ], [ %i.fj, %bb.ad ], [ %.val.i33, %bb.ae ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !78
  tail call void asm sideeffect ".p2align 6", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !92
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !93
  tail call void asm sideeffect ".p2align 4", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !94
  tail call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !95
  tail call void asm sideeffect ".p2align 3", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !96
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gz = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.hc = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.hd = ptrtoint ptr %i.q to i64
  %i.he = ptrtoint ptr %3 to i64
  %i.hf = ptrtoint ptr %3 to i64
  br label %bb.af

bb.af:                                            ; preds = %ZSTD_initFseState.exit34, %bb.bw
  %8 = phi ptr [ %i.gu, %ZSTD_initFseState.exit34 ], [ %13, %bb.bw ] ; 2 uses
  %9 = phi i32 [ %i.gv, %ZSTD_initFseState.exit34 ], [ %14, %bb.bw ]
  %i.hg = phi ptr [ %i.gu, %ZSTD_initFseState.exit34 ], [ %i.nu, %bb.bw ] ; 8 uses
  %i.hh = phi i32 [ %i.gv, %ZSTD_initFseState.exit34 ], [ %i.nv, %bb.bw ] ; 5 uses
  %i.hi = phi i64 [ %i.gw, %ZSTD_initFseState.exit34 ], [ %i.nw, %bb.bw ] ; 6 uses
  %i.hj = phi i64 [ %i.ae, %ZSTD_initFseState.exit34 ], [ %i.kd, %bb.bw ] ; 2 uses
  %i.hk = phi i64 [ %i.aa, %ZSTD_initFseState.exit34 ], [ %.sink159, %bb.bw ] ; 6 uses
  %i.hl = phi i64 [ %i.x, %ZSTD_initFseState.exit34 ], [ %.sink, %bb.bw ] ; 6 uses
  %i.hm = phi i64 [ %i.fy, %ZSTD_initFseState.exit34 ], [ %i.nx, %bb.bw ] ; 2 uses
  %i.hn = phi i64 [ %i.ek, %ZSTD_initFseState.exit34 ], [ %i.ny, %bb.bw ] ; 2 uses
  %i.ho = phi i64 [ %i.dc, %ZSTD_initFseState.exit34 ], [ %i.nz, %bb.bw ] ; 2 uses
  %.060.i103 = phi ptr [ %1, %ZSTD_initFseState.exit34 ], [ %i.qz, %bb.bw ] ; 7 uses
  %.069.i102 = phi i32 [ %5, %ZSTD_initFseState.exit34 ], [ %i.ra, %bb.bw ] ; 2 uses
  %.not = icmp eq i32 %.069.i102, 1
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ho ; 4 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.hm ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.hn ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !50, !noalias !197
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !50, !noalias !197 ; 2 uses
  %i.hx = zext i32 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !50, !noalias !197 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ib = load i8, ptr %i.ia, align 2, !tbaa !58, !noalias !197 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.id = load i8, ptr %i.ic, align 2, !tbaa !58, !noalias !197 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.if = load i8, ptr %i.ie, align 2, !tbaa !58, !noalias !197 ; 4 uses
  %i.ig = zext i8 %i.ib to i32                    ; 2 uses
  %i.ih = zext i8 %i.id to i32                    ; 2 uses
  %i.ii = add i8 %i.id, %i.ib
  %i.ij = add i8 %i.ii, %i.if
  %i.ik = load i16, ptr %i.hp, align 4, !tbaa !57, !noalias !197
  %i.il = load i16, ptr %i.hq, align 4, !tbaa !57, !noalias !197
  %i.im = load i16, ptr %i.hr, align 4, !tbaa !57, !noalias !197
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.io = load i8, ptr %i.in, align 1, !tbaa !56, !noalias !197 ; 2 uses
  %i.ip = zext i8 %i.io to i32
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 3
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !56, !noalias !197 ; 2 uses
  %i.is = zext i8 %i.ir to i32
  %i.it = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !56, !noalias !197 ; 2 uses
  %i.iv = zext i8 %i.iu to i32
  %i.iw = icmp ugt i8 %i.if, 1
  br i1 %i.iw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ix = zext i8 %i.if to i32                    ; 2 uses
  %i.iy = and i32 %i.hh, 63
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = shl i64 %i.hi, %i.iz
  %i.jb = sub nsw i32 0, %i.ix
  %i.jc = and i32 %i.jb, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = lshr i64 %i.ja, %i.jd
  %i.jf = add i32 %i.hh, %i.ix                    ; 3 uses
  store i32 %i.jf, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %i.jg = zext i32 %i.hz to i64
  %i.jh = add i64 %i.je, %i.jg
  store i64 %i.hk, ptr %i.hb, align 8, !tbaa !52, !noalias !197
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.ji = icmp eq i32 %i.hw, 0                    ; 3 uses
  %i.jj = icmp eq i8 %i.if, 0
  br i1 %i.jj, label %bb.ai, label %bb.aj, !prof !80

bb.ai:                                            ; preds = %bb.ah
  %i.jk = select i1 %i.ji, i64 %i.hk, i64 %i.hl
  %i.jl = select i1 %i.ji, i64 %i.hl, i64 %i.hk
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.jm = zext i1 %i.ji to i32
  %i.jn = add i32 %i.hz, %i.jm
  %i.jo = zext i32 %i.jn to i64
  %i.jp = and i32 %i.hh, 63
  %i.jq = zext nneg i32 %i.jp to i64
  %i.jr = shl i64 %i.hi, %i.jq
  %i.js = lshr i64 %i.jr, 63
  %i.jt = add i32 %i.hh, 1                        ; 5 uses
  store i32 %i.jt, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %i.ju = add nuw nsw i64 %i.js, %i.jo            ; 3 uses
  %i.jv = icmp eq i64 %i.ju, 3
  br i1 %i.jv, label %.thread, label %bb.ak

.thread:                                          ; preds = %bb.aj
  %i.jw = add i64 %i.hl, -1                       ; 2 uses
  %.not.i.i76 = icmp eq i64 %i.jw, 0
  %i.jx = select i1 %.not.i.i76, i64 -1, i64 %i.jw
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ju
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !52, !noalias !197 ; 2 uses
  %.not.i.i = icmp eq i64 %i.jz, 0
  %i.ka = select i1 %.not.i.i, i64 -1, i64 %i.jz  ; 2 uses
  %.not101.i.i = icmp eq i64 %i.ju, 1
  br i1 %.not101.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.thread, %bb.ak
  %i.kb = phi i64 [ %i.jx, %.thread ], [ %i.ka, %bb.ak ]
  store i64 %i.hk, ptr %i.hb, align 8, !tbaa !52, !noalias !197
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ai, %bb.ag
  %i.kc = phi i32 [ %i.jf, %bb.ag ], [ %9, %bb.ai ], [ %i.jt, %bb.al ], [ %i.jt, %bb.ak ]
  %.sink159 = phi i64 [ %i.hl, %bb.ag ], [ %i.jl, %bb.ai ], [ %i.hl, %bb.al ], [ %i.hl, %bb.ak ] ; 3 uses
  %.sink = phi i64 [ %i.jh, %bb.ag ], [ %i.jk, %bb.ai ], [ %i.kb, %bb.al ], [ %i.ka, %bb.ak ] ; 11 uses
  %.val4.i37167 = phi i32 [ %i.jf, %bb.ag ], [ %i.hh, %bb.ai ], [ %i.jt, %bb.al ], [ %i.jt, %bb.ak ] ; 3 uses
  %i.kd = phi i64 [ %i.hk, %bb.ag ], [ %i.hj, %bb.ai ], [ %i.hk, %bb.al ], [ %i.hj, %bb.ak ] ; 2 uses
  store i64 %.sink159, ptr %i.ha, align 8, !tbaa !52, !noalias !197
  store i64 %.sink, ptr %i.v, align 8, !tbaa !52, !noalias !197
  %.not102.i.i = icmp eq i8 %i.id, 0
  br i1 %.not102.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ke = and i32 %.val4.i37167, 63
  %i.kf = zext nneg i32 %i.ke to i64
  %i.kg = shl i64 %i.hi, %i.kf
  %i.kh = sub nsw i32 0, %i.ih
  %i.ki = and i32 %i.kh, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = lshr i64 %i.kg, %i.kj
  %i.kl = add i32 %.val4.i37167, %i.ih            ; 3 uses
  store i32 %i.kl, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %i.km = add i64 %i.kk, %i.hu
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.kn = phi i32 [ %i.kc, %bb.am ], [ %i.kl, %bb.an ] ; 3 uses
  %.val4.i37166 = phi i32 [ %.val4.i37167, %bb.am ], [ %i.kl, %bb.an ] ; 8 uses
  %.sroa.6.0 = phi i64 [ %i.hu, %bb.am ], [ %i.km, %bb.an ] ; 5 uses
  %i.ko = icmp ugt i8 %i.ij, 30
  br i1 %i.ko, label %bb.ap, label %BIT_reloadDStream.exit.i, !prof !55

bb.ap:                                            ; preds = %bb.ao
  %i.kp = icmp ugt i32 %.val4.i37166, 64
  br i1 %i.kp, label %bb.aq, label %bb.ar, !prof !55

bb.aq:                                            ; preds = %bb.ap
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !72, !noalias !197
  br label %BIT_reloadDStream.exit.i

bb.ar:                                            ; preds = %bb.ap
  %.not.i79.i = icmp ult ptr %i.hg, %i.ai
  br i1 %.not.i79.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kq = lshr i32 %.val4.i37166, 3
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = sub nsw i64 0, %i.kr
  %i.kt = getelementptr inbounds i8, ptr %i.hg, i64 %i.ks ; 4 uses
  store ptr %i.kt, ptr %i.de, align 8, !tbaa !72, !noalias !197
  %i.ku = and i32 %.val4.i37166, 7                ; 3 uses
  store i32 %i.ku, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %.val.i40 = load i64, ptr %i.kt, align 1, !tbaa !52, !noalias !197 ; 2 uses
  store i64 %.val.i40, ptr %7, align 8, !tbaa !73, !noalias !197
  br label %BIT_reloadDStream.exit.i

bb.at:                                            ; preds = %bb.ar
  %i.kv = icmp eq ptr %i.hg, %3
  br i1 %i.kv, label %BIT_reloadDStream.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kw = lshr i32 %.val4.i37166, 3               ; 2 uses
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = sub nsw i64 0, %i.kx
  %i.kz = getelementptr inbounds i8, ptr %i.hg, i64 %i.ky
  %i.la = icmp ult ptr %i.kz, %3
  %i.lb = ptrtoint ptr %i.hg to i64
  %i.lc = sub i64 %i.lb, %i.he
  %i.ld = trunc i64 %i.lc to i32
  %.021.i.i = select i1 %i.la, i32 %i.ld, i32 %i.kw ; 2 uses
  %i.le = zext i32 %.021.i.i to i64
  %i.lf = sub nsw i64 0, %i.le
  %i.lg = getelementptr inbounds i8, ptr %i.hg, i64 %i.lf ; 4 uses
  store ptr %i.lg, ptr %i.de, align 8, !tbaa !72, !noalias !197
  %i.lh = shl i32 %.021.i.i, 3
  %i.li = sub i32 %.val4.i37166, %i.lh            ; 3 uses
  store i32 %i.li, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %.val = load i64, ptr %i.lg, align 1, !tbaa !52 ; 2 uses
  store i64 %.val, ptr %7, align 8, !tbaa !73, !noalias !197
  br label %BIT_reloadDStream.exit.i

BIT_reloadDStream.exit.i:                         ; preds = %bb.at, %bb.aq, %bb.as, %bb.au, %bb.ao
  %10 = phi ptr [ %8, %bb.at ], [ @BIT_reloadDStream.zeroFilled, %bb.aq ], [ %i.kt, %bb.as ], [ %i.lg, %bb.au ], [ %8, %bb.ao ] ; 2 uses
  %11 = phi i32 [ %i.kn, %bb.at ], [ %i.kn, %bb.aq ], [ %i.ku, %bb.as ], [ %i.li, %bb.au ], [ %i.kn, %bb.ao ]
  %i.lj = phi ptr [ %i.hg, %bb.at ], [ @BIT_reloadDStream.zeroFilled, %bb.aq ], [ %i.kt, %bb.as ], [ %i.lg, %bb.au ], [ %i.hg, %bb.ao ] ; 8 uses
  %i.lk = phi i32 [ %.val4.i37166, %bb.at ], [ %.val4.i37166, %bb.aq ], [ %i.ku, %bb.as ], [ %i.li, %bb.au ], [ %.val4.i37166, %bb.ao ] ; 3 uses
  %i.ll = phi i64 [ %i.hi, %bb.at ], [ %i.hi, %bb.aq ], [ %.val.i40, %bb.as ], [ %.val, %bb.au ], [ %i.hi, %bb.ao ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.ib, 0
  br i1 %.not103.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %BIT_reloadDStream.exit.i
  %i.lm = and i32 %i.lk, 63
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = shl i64 %i.ll, %i.ln
  %i.lp = sub nsw i32 0, %i.ig
  %i.lq = and i32 %i.lp, 63
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = lshr i64 %i.lo, %i.lr
  %i.lt = add i32 %i.lk, %i.ig                    ; 3 uses
  store i32 %i.lt, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %i.lu = add i64 %i.ls, %i.hx
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %BIT_reloadDStream.exit.i
  %12 = phi i32 [ %11, %BIT_reloadDStream.exit.i ], [ %i.lt, %bb.av ]
  %i.lv = phi i32 [ %i.lk, %BIT_reloadDStream.exit.i ], [ %i.lt, %bb.av ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.hx, %BIT_reloadDStream.exit.i ], [ %i.lu, %bb.av ] ; 6 uses
  br i1 %.not, label %ZSTD_decodeSequence.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lw = add i32 %i.lv, %i.ip                    ; 2 uses
  %i.lx = sub i32 0, %i.lw
  %i.ly = and i32 %i.lx, 63
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = lshr i64 %i.ll, %i.lz
  %i.mb = zext nneg i8 %i.io to i64
  %notmask.i.i89.i = shl nsw i64 -1, %i.mb
  %i.mc = xor i64 %notmask.i.i89.i, -1
  %i.md = and i64 %i.ma, %i.mc
  %i.me = zext i16 %i.ik to i64
  %i.mf = add nuw i64 %i.md, %i.me                ; 5 uses
  store i64 %i.mf, ptr %i.cq, align 8, !tbaa !76, !noalias !197
  %i.mg = add i32 %i.lw, %i.is                    ; 2 uses
  %i.mh = sub i32 0, %i.mg
  %i.mi = and i32 %i.mh, 63
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = lshr i64 %i.ll, %i.mj
  %i.ml = zext nneg i8 %i.ir to i64
  %notmask.i.i88.i = shl nsw i64 -1, %i.ml
  %i.mm = xor i64 %notmask.i.i88.i, -1
  %i.mn = and i64 %i.mk, %i.mm
  %i.mo = zext i16 %i.il to i64
  %i.mp = add nuw i64 %i.mn, %i.mo                ; 5 uses
  store i64 %i.mp, ptr %i.fm, align 8, !tbaa !76, !noalias !197
  %i.mq = add i32 %i.mg, %i.iv                    ; 11 uses
  %i.mr = sub i32 0, %i.mq
  %i.ms = and i32 %i.mr, 63
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = lshr i64 %i.ll, %i.mt
  %i.mv = zext nneg i8 %i.iu to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.mv
  %i.mw = xor i64 %notmask.i.i.i, -1
  %i.mx = and i64 %i.mu, %i.mw
  store i32 %i.mq, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %i.my = zext i16 %i.im to i64
  %i.mz = add nuw i64 %i.mx, %i.my                ; 5 uses
  store i64 %i.mz, ptr %i.dy, align 8, !tbaa !76, !noalias !197
  %i.na = icmp ugt i32 %i.mq, 64
  br i1 %i.na, label %bb.ay, label %bb.az, !prof !55

bb.ay:                                            ; preds = %bb.ax
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.de, align 8, !tbaa !72, !noalias !197
  br label %ZSTD_decodeSequence.exit.i

bb.az:                                            ; preds = %bb.ax
  %.not.i81.i = icmp ult ptr %i.lj, %i.ai
  br i1 %.not.i81.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nb = lshr i32 %i.mq, 3
  %i.nc = zext nneg i32 %i.nb to i64
  %i.nd = sub nsw i64 0, %i.nc
  %i.ne = getelementptr inbounds i8, ptr %i.lj, i64 %i.nd ; 4 uses
  store ptr %i.ne, ptr %i.de, align 8, !tbaa !72, !noalias !197
  %i.nf = and i32 %i.mq, 7                        ; 3 uses
  store i32 %i.nf, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %.val.i43 = load i64, ptr %i.ne, align 1, !tbaa !52, !noalias !197 ; 2 uses
  store i64 %.val.i43, ptr %7, align 8, !tbaa !73, !noalias !197
  br label %ZSTD_decodeSequence.exit.i

bb.bb:                                            ; preds = %bb.az
  %i.ng = icmp eq ptr %i.lj, %3
  br i1 %i.ng, label %ZSTD_decodeSequence.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.nh = lshr i32 %i.mq, 3                       ; 2 uses
  %i.ni = zext nneg i32 %i.nh to i64
  %i.nj = sub nsw i64 0, %i.ni
  %i.nk = getelementptr inbounds i8, ptr %i.lj, i64 %i.nj
  %i.nl = icmp ult ptr %i.nk, %3
  %i.nm = ptrtoint ptr %i.lj to i64
  %i.nn = sub i64 %i.nm, %i.hf
  %i.no = trunc i64 %i.nn to i32
  %.021.i83.i = select i1 %i.nl, i32 %i.no, i32 %i.nh ; 2 uses
  %i.np = zext i32 %.021.i83.i to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr inbounds i8, ptr %i.lj, i64 %i.nq ; 4 uses
  store ptr %i.nr, ptr %i.de, align 8, !tbaa !72, !noalias !197
  %i.ns = shl i32 %.021.i83.i, 3
  %i.nt = sub i32 %i.mq, %i.ns                    ; 3 uses
  store i32 %i.nt, ptr %i.cu, align 8, !tbaa !77, !noalias !197
  %.val6 = load i64, ptr %i.nr, align 1, !tbaa !52 ; 2 uses
  store i64 %.val6, ptr %7, align 8, !tbaa !73, !noalias !197
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.bb, %bb.ay, %bb.ba, %bb.bc, %bb.aw
  %13 = phi ptr [ %10, %bb.bb ], [ @BIT_reloadDStream.zeroFilled, %bb.ay ], [ %i.ne, %bb.ba ], [ %i.nr, %bb.bc ], [ %10, %bb.aw ] ; 2 uses
  %14 = phi i32 [ %i.mq, %bb.bb ], [ %i.mq, %bb.ay ], [ %i.nf, %bb.ba ], [ %i.nt, %bb.bc ], [ %12, %bb.aw ] ; 2 uses
  %i.nu = phi ptr [ %i.lj, %bb.bb ], [ @BIT_reloadDStream.zeroFilled, %bb.ay ], [ %i.ne, %bb.ba ], [ %i.nr, %bb.bc ], [ %i.lj, %bb.aw ]
  %i.nv = phi i32 [ %i.mq, %bb.bb ], [ %i.mq, %bb.ay ], [ %i.nf, %bb.ba ], [ %i.nt, %bb.bc ], [ %i.lv, %bb.aw ]
  %i.nw = phi i64 [ %i.ll, %bb.bb ], [ %i.ll, %bb.ay ], [ %.val.i43, %bb.ba ], [ %.val6, %bb.bc ], [ %i.ll, %bb.aw ]
  %i.nx = phi i64 [ %i.mp, %bb.bb ], [ %i.mp, %bb.ay ], [ %i.mp, %bb.ba ], [ %i.mp, %bb.bc ], [ %i.hm, %bb.aw ]
  %i.ny = phi i64 [ %i.mz, %bb.bb ], [ %i.mz, %bb.ay ], [ %i.mz, %bb.ba ], [ %i.mz, %bb.bc ], [ %i.hn, %bb.aw ]
  %i.nz = phi i64 [ %i.mf, %bb.bb ], [ %i.mf, %bb.ay ], [ %i.mf, %bb.ba ], [ %i.mf, %bb.bc ], [ %i.ho, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %.sroa.0.0, ptr %6, align 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 %.sink, ptr %.sroa.9.0..sroa_idx, align 8
  %i.oa = getelementptr i8, ptr %.060.i103, i64 %.sroa.0.0 ; 7 uses
  %i.ob = add i64 %.sroa.0.0, %.sroa.6.0          ; 8 uses
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !46  ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %.sroa.0.0 ; 2 uses
  %i.oe = sub i64 0, %.sink
  %i.of = getelementptr inbounds i8, ptr %i.oa, i64 %i.oe ; 2 uses
  %i.og = icmp ugt ptr %i.od, %i.m
  %i.oh = getelementptr inbounds nuw i8, ptr %.060.i103, i64 %i.ob
  %i.oi = icmp ugt ptr %i.oh, %i.gz
  %or.cond.i.i = select i1 %i.og, i1 true, i1 %i.oi, !prof !84
  br i1 %or.cond.i.i, label %bb.bd, label %.critedge.i.i, !prof !84

.critedge.i.i:                                    ; preds = %ZSTD_decodeSequence.exit.i
  %.val13 = load <2 x i64>, ptr %i.oc, align 1, !tbaa !25
  store <2 x i64> %.val13, ptr %.060.i103, align 1, !tbaa !25
  %i.oj = icmp ugt i64 %.sroa.0.0, 16
  br i1 %i.oj, label %bb.be, label %ZSTD_wildcopy.exit.i, !prof !55

bb.bd:                                            ; preds = %ZSTD_decodeSequence.exit.i
  %i.ok = call fastcc i64 @ZSTD_execSequenceEnd(ptr noundef %.060.i103, ptr noundef %i.h, ptr noundef nonnull byval(%struct.seq_t) align 8 %6, ptr noundef nonnull %i.a, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q, ptr noundef %i.s)
  br label %ZSTD_execSequence.exit.i

bb.be:                                            ; preds = %.critedge.i.i
  %i.ol = getelementptr inbounds nuw i8, ptr %.060.i103, i64 16
  %i.om = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %.val8 = load <2 x i64>, ptr %i.om, align 1, !tbaa !25
  store <2 x i64> %.val8, ptr %i.ol, align 1, !tbaa !25
  %i.on = icmp ult i64 %.sroa.0.0, 33
  br i1 %i.on, label %ZSTD_wildcopy.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.oo = getelementptr inbounds nuw i8, ptr %.060.i103, i64 32
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %bb.bf
  %.pn.i.i = phi ptr [ %i.om, %bb.bf ], [ %i.oq, %bb.bg ] ; 2 uses
  %.1.i.i = phi ptr [ %i.oo, %bb.bf ], [ %i.or, %bb.bg ] ; 3 uses
  %.130.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.130.i.i.val = load <2 x i64>, ptr %.130.i.i, align 1, !tbaa !25
  store <2 x i64> %.130.i.i.val, ptr %.1.i.i, align 1, !tbaa !25
  %i.op = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 2 uses
  %.val7 = load <2 x i64>, ptr %i.oq, align 1, !tbaa !25
  store <2 x i64> %.val7, ptr %i.op, align 1, !tbaa !25
  %i.or = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32 ; 2 uses
  %i.os = icmp ult ptr %i.or, %i.oa
  br i1 %i.os, label %bb.bg, label %ZSTD_wildcopy.exit.i, !llvm.loop !8

ZSTD_wildcopy.exit.i:                             ; preds = %bb.bg, %bb.be, %.critedge.i.i
  store ptr %i.od, ptr %i.a, align 8, !tbaa !46
  %i.ot = ptrtoint ptr %i.oa to i64               ; 2 uses
  %i.ou = sub i64 %i.ot, %i.hc
  %i.ov = icmp ugt i64 %.sink, %i.ou
  br i1 %i.ov, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %ZSTD_wildcopy.exit.i
  %i.ow = sub i64 %i.ot, %i.hd
  %i.ox = icmp ugt i64 %.sink, %i.ow
  br i1 %i.ox, label %ZSTD_execSequence.exit.i.thread, label %bb.bi, !prof !55

ZSTD_execSequence.exit.i.thread:                  ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.thread83

bb.bi:                                            ; preds = %bb.bh
  %i.oy = ptrtoint ptr %i.of to i64
  %i.oz = sub i64 %i.oy, %i.hc                    ; 3 uses
  %i.pa = getelementptr inbounds i8, ptr %i.s, i64 %i.oz ; 2 uses
  %i.pb = add nsw i64 %i.oz, %.sroa.6.0           ; 3 uses
  %.not.i78.i = icmp sgt i64 %i.pb, 0
  br i1 %.not.i78.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pa, i64 %.sroa.6.0, i1 false)
  br label %ZSTD_execSequence.exit.i

bb.bk:                                            ; preds = %bb.bi
  %gepdiff.i.i = sub nsw i64 0, %i.oz             ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr align 1 %i.pa, i64 %gepdiff.i.i, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oa, i64 %gepdiff.i.i
  store i64 %i.pb, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !86
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %ZSTD_wildcopy.exit.i
  %.070 = phi ptr [ %i.pc, %bb.bk ], [ %i.oa, %ZSTD_wildcopy.exit.i ] ; 12 uses
  %.0 = phi ptr [ %i.o, %bb.bk ], [ %i.of, %ZSTD_wildcopy.exit.i ] ; 9 uses
  %i.pd = phi i64 [ %i.pb, %bb.bk ], [ %.sroa.6.0, %ZSTD_wildcopy.exit.i ] ; 5 uses
  %i.pe = icmp ugt i64 %.sink, 15
  br i1 %i.pe, label %bb.bm, label %bb.bp, !prof !80

bb.bm:                                            ; preds = %bb.bl
  %i.pf = getelementptr inbounds nuw i8, ptr %.070, i64 %i.pd
  %.val10 = load <2 x i64>, ptr %.0, align 1, !tbaa !25
  store <2 x i64> %.val10, ptr %.070, align 1, !tbaa !25
  %i.pg = icmp ult i64 %i.pd, 17
  br i1 %i.pg, label %ZSTD_execSequence.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ph = getelementptr inbounds nuw i8, ptr %.070, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i93.i = phi ptr [ %.0, %bb.bn ], [ %i.pj, %bb.bo ] ; 2 uses
  %.1.i94.i = phi ptr [ %i.ph, %bb.bn ], [ %i.pk, %bb.bo ] ; 3 uses
  %.130.i95.i = getelementptr inbounds nuw i8, ptr %.pn.i93.i, i64 16
  %.130.i95.i.val = load <2 x i64>, ptr %.130.i95.i, align 1, !tbaa !25
  store <2 x i64> %.130.i95.i.val, ptr %.1.i94.i, align 1, !tbaa !25
  %i.pi = getelementptr inbounds nuw i8, ptr %.1.i94.i, i64 16
  %i.pj = getelementptr inbounds nuw i8, ptr %.pn.i93.i, i64 32 ; 2 uses
  %.val9 = load <2 x i64>, ptr %i.pj, align 1, !tbaa !25
  store <2 x i64> %.val9, ptr %i.pi, align 1, !tbaa !25
  %i.pk = getelementptr inbounds nuw i8, ptr %.1.i94.i, i64 32 ; 2 uses
  %i.pl = icmp ult ptr %i.pk, %i.pf
  br i1 %i.pl, label %bb.bo, label %ZSTD_execSequence.exit.i, !llvm.loop !8

bb.bp:                                            ; preds = %bb.bl
  %i.pm = icmp samesign ult i64 %.sink, 8
  br i1 %i.pm, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec64table, i64 %.sink
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !40
  %i.pp = load i8, ptr %.0, align 1, !tbaa !25
  store i8 %i.pp, ptr %.070, align 1, !tbaa !25
  %i.pq = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !25
  %i.ps = getelementptr inbounds nuw i8, ptr %.070, i64 1
  store i8 %i.pr, ptr %i.ps, align 1, !tbaa !25
  %i.pt = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !25
  %i.pv = getelementptr inbounds nuw i8, ptr %.070, i64 2
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !25
  %i.pw = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !25
  %i.py = getelementptr inbounds nuw i8, ptr %.070, i64 3
  store i8 %i.px, ptr %i.py, align 1, !tbaa !25
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @ZSTD_overlapCopy8.dec32table, i64 %.sink
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !40
  %i.qb = zext i32 %i.qa to i64
  %i.qc = getelementptr inbounds nuw i8, ptr %.0, i64 %i.qb ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.070, i64 4
  %.val14 = load i32, ptr %i.qc, align 1
  store i32 %.val14, ptr %i.qd, align 1
  %i.qe = sext i32 %i.po to i64
  %i.qf = sub nsw i64 0, %i.qe
  %i.qg = getelementptr inbounds i8, ptr %i.qc, i64 %i.qf
  br label %ZSTD_overlapCopy8.exit.i

bb.br:                                            ; preds = %bb.bp
  %.val15 = load i64, ptr %.0, align 1
  store i64 %.val15, ptr %.070, align 1
  br label %ZSTD_overlapCopy8.exit.i

ZSTD_overlapCopy8.exit.i:                         ; preds = %bb.br, %bb.bq
  %.1 = phi ptr [ %i.qg, %bb.bq ], [ %.0, %bb.br ]
  %i.qh = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.070, i64 8 ; 3 uses
  %i.qj = icmp ugt i64 %i.pd, 8
  br i1 %i.qj, label %bb.bs, label %ZSTD_execSequence.exit.i

bb.bs:                                            ; preds = %ZSTD_overlapCopy8.exit.i
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qh to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = getelementptr i8, ptr %.070, i64 %i.pd  ; 2 uses
  %i.qo = icmp slt i64 %i.qm, 16
  br i1 %i.qo, label %.preheader96, label %bb.bt

.preheader96:                                     ; preds = %bb.bs, %.preheader96
  %.029.i.i = phi ptr [ %i.qq, %.preheader96 ], [ %i.qh, %bb.bs ] ; 2 uses
  %.0.i102.i = phi ptr [ %i.qp, %.preheader96 ], [ %i.qi, %bb.bs ] ; 2 uses
  %.029.i.i.val = load i64, ptr %.029.i.i, align 1
  store i64 %.029.i.i.val, ptr %.0.i102.i, align 1
  %i.qp = getelementptr inbounds nuw i8, ptr %.0.i102.i, i64 8 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.029.i.i, i64 8
  %i.qr = icmp ult ptr %i.qp, %i.qn
  br i1 %i.qr, label %.preheader96, label %ZSTD_execSequence.exit.i, !llvm.loop !9

bb.bt:                                            ; preds = %bb.bs
  %.val12 = load <2 x i64>, ptr %i.qh, align 1, !tbaa !25
  store <2 x i64> %.val12, ptr %i.qi, align 1, !tbaa !25
  %i.qs = icmp ult i64 %i.pd, 25
  br i1 %i.qs, label %ZSTD_execSequence.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qt = getelementptr inbounds nuw i8, ptr %.070, i64 24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %bb.bu
  %.pn.i99.i = phi ptr [ %i.qh, %bb.bu ], [ %i.qv, %bb.bv ] ; 2 uses
  %.1.i100.i = phi ptr [ %i.qt, %bb.bu ], [ %i.qw, %bb.bv ] ; 3 uses
  %.130.i101.i = getelementptr inbounds nuw i8, ptr %.pn.i99.i, i64 16
  %.130.i101.i.val = load <2 x i64>, ptr %.130.i101.i, align 1, !tbaa !25
  store <2 x i64> %.130.i101.i.val, ptr %.1.i100.i, align 1, !tbaa !25
  %i.qu = getelementptr inbounds nuw i8, ptr %.1.i100.i, i64 16
  %i.qv = getelementptr inbounds nuw i8, ptr %.pn.i99.i, i64 32 ; 2 uses
  %.val11 = load <2 x i64>, ptr %i.qv, align 1, !tbaa !25
  store <2 x i64> %.val11, ptr %i.qu, align 1, !tbaa !25
  %i.qw = getelementptr inbounds nuw i8, ptr %.1.i100.i, i64 32 ; 2 uses
  %i.qx = icmp ult ptr %i.qw, %i.qn
  br i1 %i.qx, label %bb.bv, label %ZSTD_execSequence.exit.i, !llvm.loop !8

ZSTD_execSequence.exit.i:                         ; preds = %bb.bv, %.preheader96, %bb.bo, %bb.bt, %bb.bm, %ZSTD_overlapCopy8.exit.i, %bb.bj, %bb.bd
  %.0.i.i = phi i64 [ %i.ok, %bb.bd ], [ %i.ob, %.preheader96 ], [ %i.ob, %bb.bj ], [ %i.ob, %ZSTD_overlapCopy8.exit.i ], [ %i.ob, %bb.bm ], [ %i.ob, %bb.bt ], [ %i.ob, %bb.bo ], [ %i.ob, %bb.bv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.qy = icmp ult i64 %.0.i.i, -119
  br i1 %i.qy, label %bb.bw, label %.thread83

bb.bw:                                            ; preds = %ZSTD_execSequence.exit.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.060.i103, i64 %.0.i.i ; 2 uses
  %i.ra = add nsw i32 %.069.i102, -1              ; 2 uses
  %.not73.i = icmp eq i32 %i.ra, 0
  br i1 %.not73.i, label %bb.bx, label %bb.af, !llvm.loop !14

bb.bx:                                            ; preds = %bb.bw
  %i.rb = icmp eq ptr %13, %3
  %.not95 = icmp eq i32 %14, 64
  %or.cond = select i1 %i.rb, i1 %.not95, i1 false
  br i1 %or.cond, label %.preheader, label %.thread83

.preheader:                                       ; preds = %bb.bx
  %i.rc = trunc i64 %.sink to i32
  store i32 %i.rc, ptr %i.u, align 4, !tbaa !40
  %i.rd = trunc i64 %.sink159 to i32
  store i32 %i.rd, ptr %i.y, align 8, !tbaa !40
  %i.re = trunc i64 %i.kd to i32
  store i32 %i.re, ptr %i.ac, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.by

.thread83:                                        ; preds = %ZSTD_execSequence.exit.i, %bb.o, %bb.g, %bb.e, %BIT_initDStream.exit, %ZSTD_execSequence.exit.i.thread, %bb.bx
  %.265.i.ph = phi i64 [ -20, %bb.e ], [ -20, %ZSTD_execSequence.exit.i.thread ], [ -20, %BIT_initDStream.exit ], [ -20, %bb.bx ], [ -20, %bb.g ], [ -20, %bb.o ], [ %.0.i.i, %ZSTD_execSequence.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %ZSTD_decompressSequences_body.exit

bb.by:                                            ; preds = %.preheader, %bb.d
  %i.rf = phi ptr [ %.pre, %.preheader ], [ %i.j, %bb.d ] ; 2 uses
  %.3.i = phi ptr [ %i.qz, %.preheader ], [ %1, %bb.d ] ; 4 uses
  %i.rg = ptrtoint ptr %i.m to i64
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = sub i64 %i.rg, %i.rh                    ; 3 uses
  %i.rj = ptrtoint ptr %i.h to i64
  %i.rk = ptrtoint ptr %.3.i to i64
  %i.rl = sub i64 %i.rj, %i.rk
  %.not77.i = icmp ugt i64 %i.ri, %i.rl
  br i1 %.not77.i, label %ZSTD_decompressSequences_body.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not76.i = icmp eq ptr %.3.i, null
  br i1 %.not76.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.3.i, ptr align 1 %i.rf, i64 %i.ri, i1 false)
  %i.rm = getelementptr inbounds nuw i8, ptr %.3.i, i64 %i.ri
  %i.rn = ptrtoint ptr %i.rm to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.5.i.ph = phi i64 [ 0, %bb.bz ], [ %i.rn, %bb.ca ]
  %i.ro = ptrtoint ptr %1 to i64
  %i.rp = sub i64 %.5.i.ph, %i.ro
  br label %ZSTD_decompressSequences_body.exit

ZSTD_decompressSequences_body.exit:               ; preds = %bb.by, %.thread83, %bb.cb
  %.568.i = phi i64 [ %i.rp, %bb.cb ], [ %.265.i.ph, %.thread83 ], [ -70, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %.568.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !51}
!1 = distinct !{!1, !51}
!2 = distinct !{!2, !51}
!3 = distinct !{!3, !51}
!4 = distinct !{!4, !51}
!5 = distinct !{!5, !51}
!6 = distinct !{!6, !51}
!7 = distinct !{!7, !51}
!8 = distinct !{!8, !51}
!9 = distinct !{!9, !51}
!10 = distinct !{!10, !51}
!11 = distinct !{!11, !51}
!12 = distinct !{!12, !51}
!13 = distinct !{!13, !51}
!14 = distinct !{!14, !51}
!15 = !{i32 8, !"PIC Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"omnipotent char", !18, i64 0}
!20 = !{!"int", !19, i64 0}
!21 = !{!"__libc_errno", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"short", !19, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!19, !19, i64 0}
!26 = !{!"any pointer", !19, i64 0}
!27 = !{!"p1 int", !26, i64 0}
!28 = !{!"", !19, i64 0, !19, i64 4104, !19, i64 6160, !19, i64 10264, !19, i64 26652, !19, i64 26664}
!29 = !{!"long", !19, i64 0}
!30 = !{!"long long", !19, i64 0}
!31 = !{!"", !30, i64 0, !30, i64 8, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !20, i64 40}
!32 = !{!"XXH64_state_s", !29, i64 0, !19, i64 8, !19, i64 40, !20, i64 72, !20, i64 76, !29, i64 80}
!33 = !{!"p1 omnipotent char", !26, i64 0}
!34 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16}
!35 = !{!"p1 _ZTS12ZSTD_DDict_s", !26, i64 0}
!36 = !{!"ZSTD_outBuffer_s", !26, i64 0, !29, i64 8, !29, i64 16}
!37 = !{!"ZSTD_DCtx_s", !26, i64 0, !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 32, !19, i64 27324, !26, i64 29888, !26, i64 29896, !26, i64 29904, !26, i64 29912, !29, i64 29920, !31, i64 29928, !29, i64 29976, !29, i64 29984, !20, i64 29992, !20, i64 29996, !20, i64 30000, !20, i64 30004, !32, i64 30008, !29, i64 30096, !20, i64 30104, !20, i64 30108, !20, i64 30112, !33, i64 30120, !34, i64 30128, !29, i64 30152, !29, i64 30160, !29, i64 30168, !20, i64 30176, !20, i64 30180, !35, i64 30184, !35, i64 30192, !20, i64 30200, !20, i64 30204, !20, i64 30208, !26, i64 30216, !20, i64 30224, !20, i64 30228, !20, i64 30232, !20, i64 30236, !33, i64 30240, !29, i64 30248, !29, i64 30256, !29, i64 30264, !33, i64 30272, !29, i64 30280, !29, i64 30288, !29, i64 30296, !29, i64 30304, !20, i64 30312, !20, i64 30316, !20, i64 30320, !36, i64 30328, !33, i64 30352, !33, i64 30360, !20, i64 30368, !19, i64 30372, !19, i64 95940, !29, i64 95960, !30, i64 95968}
!38 = !{!37, !20, i64 30176}
!39 = !{!37, !20, i64 29944}
!40 = !{!20, !20, i64 0}
!41 = !{!37, !20, i64 30180}
!42 = !{!37, !33, i64 30352}
!43 = !{!37, !33, i64 30360}
!44 = !{!37, !20, i64 30368}
!45 = !{!37, !20, i64 30204}
!46 = !{!33, !33, i64 0}
!47 = !{!37, !33, i64 30120}
!48 = !{!37, !29, i64 30152}
!49 = !{!"", !23, i64 0, !19, i64 2, !19, i64 3, !20, i64 4}
!50 = !{!49, !20, i64 4}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!29, !29, i64 0}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!56 = !{!49, !19, i64 3}
!57 = !{!49, !23, i64 0}
!58 = !{!49, !19, i64 2}
!59 = !{!37, !20, i64 30004}
!60 = !{!"", !20, i64 0, !20, i64 4}
!61 = !{!60, !20, i64 4}
!62 = !{!60, !20, i64 0}
!63 = !{!26, !26, i64 0}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!37, !26, i64 29904}
!66 = !{!37, !26, i64 16}
!67 = !{!37, !26, i64 29896}
!68 = !{!37, !26, i64 29912}
!69 = !{!"", !29, i64 0, !20, i64 8, !33, i64 16, !33, i64 24, !33, i64 32}
!70 = !{!69, !33, i64 24}
!71 = !{!69, !33, i64 32}
!72 = !{!69, !33, i64 16}
!73 = !{!69, !29, i64 0}
!74 = !{!37, !26, i64 0}
!75 = !{!"", !29, i64 0, !26, i64 8}
!76 = !{!75, !29, i64 0}
!77 = !{!69, !20, i64 8}
!78 = !{!75, !26, i64 8}
!79 = !{!37, !26, i64 8}
!80 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!81 = !{!"", !29, i64 0, !29, i64 8, !29, i64 16}
!82 = !{!81, !29, i64 0}
!83 = !{!"branch_weights", i32 8, i32 24}
!84 = !{!"branch_weights", i32 4001, i32 4000000}
!85 = !{i64 72311}
!86 = !{!81, !29, i64 8}
!87 = !{i64 75607}
!88 = !{i64 75642}
!89 = !{i64 75770}
!90 = !{i64 75805}
!91 = !{i64 75833}
!92 = !{i64 80069}
!93 = !{i64 80104}
!94 = !{i64 80258}
!95 = !{i64 80293}
!96 = !{i64 80321}
!97 = !{!37, !26, i64 29888}
!98 = !{!81, !29, i64 16}
!99 = !{!"", !20, i64 0, !20, i64 4, !20, i64 8}
!100 = !{!99, !20, i64 4}
!101 = !{!99, !20, i64 0}
!102 = !{!99, !20, i64 8}
!103 = !{!37, !20, i64 30000}
!104 = !{!37, !20, i64 30228}
!105 = !{!37, !27, i64 24}
end_hunk_1
