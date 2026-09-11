Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/zstd_decompress_block?download=true
inline.NumInlined: 574
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 30
begin_hunk_0_@ZSTD_decompressSequencesLong:bb.a
  %i.ef = getelementptr i8, ptr %i.cw, i64 %i.ee  ; 3 uses
  store ptr %i.ef, ptr %i.dn, align 8
  %i.eg = shl i32 %.021.i.i.i, 3
  %i.eh = sub i32 %i.de, %i.eg                    ; 2 uses
  store i32 %i.eh, ptr %i.dd, align 8
  %.val.i216.i = load i64, ptr %i.ef, align 1     ; 2 uses
  store i64 %.val.i216.i, ptr %7, align 8
  br label %ZSTD_initFseState.exit.i

ZSTD_initFseState.exit.i:                         ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  %i.ei = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.s ], [ %i.dr, %bb.u ], [ %3, %bb.v ], [ %i.ef, %bb.w ] ; 7 uses
  %i.ej = phi i32 [ %i.de, %bb.s ], [ %i.ds, %bb.u ], [ %i.de, %bb.v ], [ %i.eh, %bb.w ]
  %i.ek = phi i64 [ %i.cy, %bb.s ], [ %.val.i.i.i, %bb.u ], [ %i.cy, %bb.v ], [ %.val.i216.i, %bb.w ] ; 3 uses
  %i.el = getelementptr i8, ptr %i.da, i64 8      ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  store ptr %i.el, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 4 uses
  %i.eo = getelementptr i8, ptr %0, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = add i32 %i.er, %i.ej                    ; 9 uses
  %i.et = sub i32 0, %i.es
  %i.eu = and i32 %i.et, 63
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = lshr i64 %i.ek, %i.ev
  %i.ex = zext nneg i32 %i.er to i64
  %notmask.i.i217.i = shl nsw i64 -1, %i.ex
  %i.ey = xor i64 %notmask.i.i217.i, -1
  %i.ez = and i64 %i.ew, %i.ey                    ; 2 uses
  store i32 %i.es, ptr %i.dd, align 8
  store i64 %i.ez, ptr %i.en, align 8
  %i.fa = icmp ugt i32 %i.es, 64
  br i1 %i.fa, label %bb.x, label %bb.y, !prof !31

bb.x:                                             ; preds = %ZSTD_initFseState.exit.i
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dn, align 8
  br label %ZSTD_initFseState.exit222.i

bb.y:                                             ; preds = %ZSTD_initFseState.exit.i
  %.not.i.i218.i = icmp ult ptr %i.ei, %i.an
  br i1 %.not.i.i218.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = lshr i32 %i.es, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr i8, ptr %i.ei, i64 %i.fd  ; 3 uses
  store ptr %i.fe, ptr %i.dn, align 8
  %i.ff = and i32 %i.es, 7                        ; 2 uses
  store i32 %i.ff, ptr %i.dd, align 8
  %.val.i.i219.i = load i64, ptr %i.fe, align 1   ; 2 uses
  store i64 %.val.i.i219.i, ptr %7, align 8
  br label %ZSTD_initFseState.exit222.i

bb.aa:                                            ; preds = %bb.y
  %i.fg = icmp eq ptr %i.ei, %3
  br i1 %i.fg, label %ZSTD_initFseState.exit222.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fh = lshr i32 %i.es, 3                       ; 2 uses
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = getelementptr i8, ptr %i.ei, i64 %i.fj
  %i.fl = icmp ult ptr %i.fk, %3
  %i.fm = ptrtoint ptr %i.ei to i64
  %i.fn = ptrtoint ptr %3 to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = trunc i64 %i.fo to i32
  %.021.i.i220.i = select i1 %i.fl, i32 %i.fp, i32 %i.fh ; 2 uses
  %i.fq = zext i32 %.021.i.i220.i to i64
  %i.fr = sub nsw i64 0, %i.fq
  %i.fs = getelementptr i8, ptr %i.ei, i64 %i.fr  ; 3 uses
  store ptr %i.fs, ptr %i.dn, align 8
  %i.ft = shl i32 %.021.i.i220.i, 3
  %i.fu = sub i32 %i.es, %i.ft                    ; 2 uses
  store i32 %i.fu, ptr %i.dd, align 8
  %.val.i221.i = load i64, ptr %i.fs, align 1     ; 2 uses
  store i64 %.val.i221.i, ptr %7, align 8
  br label %ZSTD_initFseState.exit222.i

ZSTD_initFseState.exit222.i:                      ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.fv = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.x ], [ %i.fe, %bb.z ], [ %i.ei, %bb.aa ], [ %i.fs, %bb.ab ] ; 7 uses
  %i.fw = phi i32 [ %i.es, %bb.x ], [ %i.ff, %bb.z ], [ %i.es, %bb.aa ], [ %i.fu, %bb.ab ]
  %i.fx = phi i64 [ %i.ek, %bb.x ], [ %.val.i.i219.i, %bb.z ], [ %i.ek, %bb.aa ], [ %.val.i221.i, %bb.ab ] ; 3 uses
  %i.fy = getelementptr i8, ptr %i.ep, i64 8      ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  store ptr %i.fy, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.gb = getelementptr i8, ptr %0, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4            ; 2 uses
  %i.gf = add i32 %i.ge, %i.fw                    ; 9 uses
  %i.gg = sub i32 0, %i.gf
  %i.gh = and i32 %i.gg, 63
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = lshr i64 %i.fx, %i.gi
  %i.gk = zext nneg i32 %i.ge to i64
  %notmask.i.i223.i = shl nsw i64 -1, %i.gk
  %i.gl = xor i64 %notmask.i.i223.i, -1
  %i.gm = and i64 %i.gj, %i.gl                    ; 2 uses
  store i32 %i.gf, ptr %i.dd, align 8
  store i64 %i.gm, ptr %i.ga, align 8
  %i.gn = icmp ugt i32 %i.gf, 64
  br i1 %i.gn, label %bb.ac, label %bb.ad, !prof !31

bb.ac:                                            ; preds = %ZSTD_initFseState.exit222.i
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dn, align 8
  br label %ZSTD_initFseState.exit228.i

bb.ad:                                            ; preds = %ZSTD_initFseState.exit222.i
  %.not.i.i224.i = icmp ult ptr %i.fv, %i.an
  br i1 %.not.i.i224.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.go = lshr i32 %i.gf, 3
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr i8, ptr %i.fv, i64 %i.gq  ; 3 uses
  store ptr %i.gr, ptr %i.dn, align 8
  %i.gs = and i32 %i.gf, 7                        ; 2 uses
  store i32 %i.gs, ptr %i.dd, align 8
  %.val.i.i225.i = load i64, ptr %i.gr, align 1   ; 2 uses
  store i64 %.val.i.i225.i, ptr %7, align 8
  br label %ZSTD_initFseState.exit228.i

bb.af:                                            ; preds = %bb.ad
  %i.gt = icmp eq ptr %i.fv, %3
  br i1 %i.gt, label %ZSTD_initFseState.exit228.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gu = lshr i32 %i.gf, 3                       ; 2 uses
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr i8, ptr %i.fv, i64 %i.gw
  %i.gy = icmp ult ptr %i.gx, %3
  %i.gz = ptrtoint ptr %i.fv to i64
  %i.ha = ptrtoint ptr %3 to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = trunc i64 %i.hb to i32
  %.021.i.i226.i = select i1 %i.gy, i32 %i.hc, i32 %i.gu ; 2 uses
  %i.hd = zext i32 %.021.i.i226.i to i64
  %i.he = sub nsw i64 0, %i.hd
  %i.hf = getelementptr i8, ptr %i.fv, i64 %i.he  ; 3 uses
  store ptr %i.hf, ptr %i.dn, align 8
  %i.hg = shl i32 %.021.i.i226.i, 3
  %i.hh = sub i32 %i.gf, %i.hg                    ; 2 uses
  store i32 %i.hh, ptr %i.dd, align 8
  %.val.i227.i = load i64, ptr %i.hf, align 1     ; 2 uses
  store i64 %.val.i227.i, ptr %7, align 8
  br label %ZSTD_initFseState.exit228.i

ZSTD_initFseState.exit228.i:                      ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ac
  %.promoted591.i = phi i64 [ %i.fx, %bb.ac ], [ %.val.i.i225.i, %bb.ae ], [ %i.fx, %bb.af ], [ %.val.i227.i, %bb.ag ]
  %.promoted595.i = phi i32 [ %i.gf, %bb.ac ], [ %i.gs, %bb.ae ], [ %i.gf, %bb.af ], [ %i.hh, %bb.ag ] ; 2 uses
  %.promoted596.i = phi ptr [ @BIT_reloadDStream.zeroFilled, %bb.ac ], [ %i.gr, %bb.ae ], [ %i.fv, %bb.af ], [ %i.hf, %bb.ag ] ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gc, i64 8      ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  store ptr %i.hi, ptr %i.hj, align 8
  %i.hk = icmp sgt i32 %5, 0
  br i1 %i.hk, label %.lr.ph.i, label %.preheader575.i

.lr.ph.i:                                         ; preds = %ZSTD_initFseState.exit228.i
  %i.hl = add nsw i32 %5, -1
  %i.hm = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.hn = zext nneg i32 %i.hl to i64
  %wide.trip.count.i = zext nneg i32 %i.ah to i64
  br label %bb.ah

.preheader575.i:                                  ; preds = %ZSTD_decodeSequence.exit.i, %ZSTD_initFseState.exit228.i
  %i.ho = phi i64 [ %i.af, %ZSTD_initFseState.exit228.i ], [ %i.kv, %ZSTD_decodeSequence.exit.i ] ; 2 uses
  %i.hp = phi i64 [ %i.ab, %ZSTD_initFseState.exit228.i ], [ %.sink771.i, %ZSTD_decodeSequence.exit.i ] ; 2 uses
  %i.hq = phi i64 [ %i.y, %ZSTD_initFseState.exit228.i ], [ %.sink.i, %ZSTD_decodeSequence.exit.i ] ; 2 uses
  %i.hr = phi i32 [ %.promoted595.i, %ZSTD_initFseState.exit228.i ], [ %i.ob, %ZSTD_decodeSequence.exit.i ]
  %i.hs = phi ptr [ %.promoted596.i, %ZSTD_initFseState.exit228.i ], [ %BIT_reloadDStream.zeroFilled.i, %ZSTD_decodeSequence.exit.i ]
  %.0216.i.lcssa.i = phi i32 [ 0, %ZSTD_initFseState.exit228.i ], [ %i.ah, %ZSTD_decodeSequence.exit.i ] ; 3 uses
  %.0209.i.lcssa.i = phi i64 [ %i.ak, %ZSTD_initFseState.exit228.i ], [ %i.om, %ZSTD_decodeSequence.exit.i ]
  %i.ht = icmp slt i32 %.0216.i.lcssa.i, %5
  br i1 %i.ht, label %.lr.ph613.i, label %._crit_edge.i

.lr.ph613.i:                                      ; preds = %.preheader575.i
  %i.hu = add nsw i32 %5, -1
  %i.hv = getelementptr i8, ptr %i.j, i64 -32     ; 2 uses
  %i.hw = ptrtoint ptr %i.r to i64                ; 3 uses
  %i.hx = ptrtoint ptr %i.j to i64
  %i.hy = getelementptr i8, ptr %0, i64 30364     ; 3 uses
  %i.hz = getelementptr i8, ptr %0, i64 95900     ; 3 uses
  %i.ia = getelementptr i8, ptr %0, i64 30380     ; 2 uses
  br label %bb.be

bb.ah:                                            ; preds = %ZSTD_decodeSequence.exit.i, %.lr.ph.i
  %i.ib = phi i64 [ %i.af, %.lr.ph.i ], [ %i.kv, %ZSTD_decodeSequence.exit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %ZSTD_decodeSequence.exit.i ] ; 3 uses
  %i.ic = phi i64 [ %i.ab, %.lr.ph.i ], [ %.sink771.i, %ZSTD_decodeSequence.exit.i ] ; 6 uses
  %i.id = phi i64 [ %i.y, %.lr.ph.i ], [ %.sink.i, %ZSTD_decodeSequence.exit.i ] ; 6 uses
  %.0209.i602.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %i.om, %ZSTD_decodeSequence.exit.i ]
  %i.ie = phi i64 [ %i.dl, %.lr.ph.i ], [ %i.oe, %ZSTD_decodeSequence.exit.i ] ; 2 uses
  %i.if = phi i64 [ %i.gm, %.lr.ph.i ], [ %i.od, %ZSTD_decodeSequence.exit.i ] ; 2 uses
  %i.ig = phi i64 [ %i.ez, %.lr.ph.i ], [ %i.oc, %ZSTD_decodeSequence.exit.i ] ; 2 uses
  %.val.i237592600.i = phi i64 [ %.promoted591.i, %.lr.ph.i ], [ %.val.i237593.i, %ZSTD_decodeSequence.exit.i ] ; 6 uses
  %i.ih = phi i32 [ %.promoted595.i, %.lr.ph.i ], [ %i.ob, %ZSTD_decodeSequence.exit.i ] ; 5 uses
  %BIT_reloadDStream.zeroFilled598599.i = phi ptr [ %.promoted596.i, %.lr.ph.i ], [ %BIT_reloadDStream.zeroFilled.i, %ZSTD_decodeSequence.exit.i ] ; 8 uses
  %.not554.i = icmp eq i64 %indvars.iv.i, %i.hn
  %i.ii = getelementptr [8 x i8], ptr %i.el, i64 %i.ie ; 4 uses
  %i.ij = getelementptr [8 x i8], ptr %i.hi, i64 %i.if ; 4 uses
  %i.ik = getelementptr [8 x i8], ptr %i.fy, i64 %i.ig ; 4 uses
  %i.il = getelementptr i8, ptr %i.ij, i64 4
  %i.im = load i32, ptr %i.il, align 4, !noalias !60
  %i.in = zext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr i8, ptr %i.ii, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !noalias !60 ; 2 uses
  %i.iq = zext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ik, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !noalias !60 ; 2 uses
  %i.it = getelementptr i8, ptr %i.ii, i64 2
  %i.iu = load i8, ptr %i.it, align 2, !noalias !60 ; 3 uses
  %i.iv = getelementptr i8, ptr %i.ij, i64 2
  %i.iw = load i8, ptr %i.iv, align 2, !noalias !60 ; 3 uses
  %i.ix = getelementptr i8, ptr %i.ik, i64 2
  %i.iy = load i8, ptr %i.ix, align 2, !noalias !60 ; 4 uses
  %i.iz = zext i8 %i.iu to i32                    ; 2 uses
  %i.ja = zext i8 %i.iw to i32                    ; 2 uses
  %i.jb = add i8 %i.iw, %i.iu
  %i.jc = add i8 %i.jb, %i.iy
  %i.jd = load i16, ptr %i.ii, align 4, !noalias !60
  %i.je = load i16, ptr %i.ij, align 4, !noalias !60
  %i.jf = load i16, ptr %i.ik, align 4, !noalias !60
  %i.jg = getelementptr i8, ptr %i.ii, i64 3
  %i.jh = load i8, ptr %i.jg, align 1, !noalias !60 ; 2 uses
  %i.ji = zext i8 %i.jh to i32
  %i.jj = getelementptr i8, ptr %i.ij, i64 3
  %i.jk = load i8, ptr %i.jj, align 1, !noalias !60 ; 2 uses
  %i.jl = zext i8 %i.jk to i32
  %i.jm = getelementptr i8, ptr %i.ik, i64 3
  %i.jn = load i8, ptr %i.jm, align 1, !noalias !60 ; 2 uses
  %i.jo = zext i8 %i.jn to i32
  %i.jp = icmp ugt i8 %i.iy, 1
  br i1 %i.jp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jq = zext i8 %i.iy to i32                    ; 2 uses
  %i.jr = and i32 %i.ih, 63
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = shl i64 %.val.i237592600.i, %i.js
  %i.ju = sub nsw i32 0, %i.jq
  %i.jv = and i32 %i.ju, 63
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = lshr i64 %i.jt, %i.jw
  %i.jy = add i32 %i.ih, %i.jq                    ; 2 uses
  store i32 %i.jy, ptr %i.dd, align 8, !noalias !60
  %i.jz = zext i32 %i.is to i64
  %i.ka = add i64 %i.jx, %i.jz
  store i64 %i.ic, ptr %i.ag, align 8, !noalias !60
  br label %bb.ao

bb.aj:                                            ; preds = %bb.ah
  %i.kb = icmp eq i32 %i.ip, 0                    ; 3 uses
  %i.kc = icmp eq i8 %i.iy, 0
  br i1 %i.kc, label %bb.ak, label %bb.al, !prof !34

bb.ak:                                            ; preds = %bb.aj
  %i.kd = select i1 %i.kb, i64 %i.ic, i64 %i.id
  %i.ke = select i1 %i.kb, i64 %i.id, i64 %i.ic
  br label %bb.ao

bb.al:                                            ; preds = %bb.aj
  %i.kf = zext i1 %i.kb to i32
  %i.kg = add i32 %i.is, %i.kf
  %i.kh = zext i32 %i.kg to i64
  %i.ki = and i32 %i.ih, 63
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = shl i64 %.val.i237592600.i, %i.kj
  %i.kl = lshr i64 %i.kk, 63
  %i.km = add i32 %i.ih, 1                        ; 3 uses
  store i32 %i.km, ptr %i.dd, align 8, !noalias !60
  %i.kn = add nuw nsw i64 %i.kl, %i.kh            ; 3 uses
  %i.ko = icmp eq i64 %i.kn, 3
  br i1 %i.ko, label %.thread.i, label %bb.am

.thread.i:                                        ; preds = %bb.al
  %i.kp = add i64 %i.id, -1                       ; 2 uses
  %.not.i6480.i = icmp eq i64 %i.kp, 0
  %i.kq = select i1 %.not.i6480.i, i64 -1, i64 %i.kp
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.kr = getelementptr [8 x i8], ptr %i.w, i64 %i.kn
  %i.ks = load i64, ptr %i.kr, align 8, !noalias !60 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.ks, 0
  %i.kt = select i1 %.not.i6.i, i64 -1, i64 %i.ks ; 2 uses
  %.not101.i.i = icmp eq i64 %i.kn, 1
  br i1 %.not101.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i
  %i.ku = phi i64 [ %i.kq, %.thread.i ], [ %i.kt, %bb.am ]
  store i64 %i.ic, ptr %i.ag, align 8, !noalias !60
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.ak, %bb.ai
  %i.kv = phi i64 [ %i.ic, %bb.ai ], [ %i.ib, %bb.ak ], [ %i.ic, %bb.an ], [ %i.ib, %bb.am ] ; 2 uses
  %.sink771.i = phi i64 [ %i.id, %bb.ai ], [ %i.ke, %bb.ak ], [ %i.id, %bb.an ], [ %i.id, %bb.am ] ; 3 uses
  %.sink.i = phi i64 [ %i.ka, %bb.ai ], [ %i.kd, %bb.ak ], [ %i.ku, %bb.an ], [ %i.kt, %bb.am ] ; 6 uses
  %i.kw = phi i32 [ %i.jy, %bb.ai ], [ %i.ih, %bb.ak ], [ %i.km, %bb.an ], [ %i.km, %bb.am ] ; 3 uses
  store i64 %.sink771.i, ptr %i.ac, align 8, !noalias !60
  store i64 %.sink.i, ptr %i.w, align 8, !noalias !60
  %.not102.i.i = icmp eq i8 %i.iw, 0
  br i1 %.not102.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kx = and i32 %i.kw, 63
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = shl i64 %.val.i237592600.i, %i.ky
  %i.la = sub nsw i32 0, %i.ja
  %i.lb = and i32 %i.la, 63
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = lshr i64 %i.kz, %i.lc
  %i.le = add i32 %i.kw, %i.ja                    ; 2 uses
  store i32 %i.le, ptr %i.dd, align 8, !noalias !60
  %i.lf = add i64 %i.ld, %i.in
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.lg = phi i32 [ %i.kw, %bb.ao ], [ %i.le, %bb.ap ] ; 8 uses
  %.sroa.9.0.i = phi i64 [ %i.in, %bb.ao ], [ %i.lf, %bb.ap ] ; 2 uses
  %i.lh = icmp ugt i8 %i.jc, 30
  br i1 %i.lh, label %bb.ar, label %BIT_reloadDStream.exit60.i, !prof !31

bb.ar:                                            ; preds = %bb.aq
  %i.li = icmp ugt i32 %i.lg, 64
  br i1 %i.li, label %bb.as, label %bb.at, !prof !31

bb.as:                                            ; preds = %bb.ar
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dn, align 8, !noalias !60
  br label %BIT_reloadDStream.exit60.i

bb.at:                                            ; preds = %bb.ar
  %.not.i54.i = icmp ult ptr %BIT_reloadDStream.zeroFilled598599.i, %i.an
  br i1 %.not.i54.i, label %12, label %bb.au

bb.au:                                            ; preds = %bb.at
  %8 = lshr i32 %i.lg, 3
  %9 = zext nneg i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr i8, ptr %BIT_reloadDStream.zeroFilled598599.i, i64 %10 ; 3 uses
  store ptr %11, ptr %i.dn, align 8, !noalias !60
  %i.lj = and i32 %i.lg, 7                        ; 2 uses
  store i32 %i.lj, ptr %i.dd, align 8, !noalias !60
  %.val.i234.i = load i64, ptr %11, align 1, !noalias !60 ; 2 uses
  store i64 %.val.i234.i, ptr %7, align 8, !noalias !60
  br label %BIT_reloadDStream.exit60.i

12:                                               ; preds = %bb.at
  %13 = icmp eq ptr %BIT_reloadDStream.zeroFilled598599.i, %3
  br i1 %13, label %BIT_reloadDStream.exit60.i, label %bb.av

bb.av:                                            ; preds = %12
  %14 = lshr i32 %i.lg, 3                         ; 2 uses
  %15 = zext nneg i32 %14 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr i8, ptr %BIT_reloadDStream.zeroFilled598599.i, i64 %16
  %i.lk = icmp ult ptr %17, %3
  %i.ll = ptrtoint ptr %BIT_reloadDStream.zeroFilled598599.i to i64
  %i.lm = sub i64 %i.ll, %i.hm
  %i.ln = trunc i64 %i.lm to i32
  %.021.i56.i = select i1 %i.lk, i32 %i.ln, i32 %14 ; 2 uses
  %i.lo = zext i32 %.021.i56.i to i64
  %i.lp = sub nsw i64 0, %i.lo
  %i.lq = getelementptr i8, ptr %BIT_reloadDStream.zeroFilled598599.i, i64 %i.lp ; 3 uses
  store ptr %i.lq, ptr %i.dn, align 8, !noalias !60
  %i.lr = shl i32 %.021.i56.i, 3
  %i.ls = sub i32 %i.lg, %i.lr                    ; 2 uses
  store i32 %i.ls, ptr %i.dd, align 8, !noalias !60
  %.val198.i = load i64, ptr %i.lq, align 1       ; 2 uses
  store i64 %.val198.i, ptr %7, align 8, !noalias !60
  br label %BIT_reloadDStream.exit60.i

BIT_reloadDStream.exit60.i:                       ; preds = %bb.av, %12, %bb.au, %bb.as, %bb.aq
  %BIT_reloadDStream.zeroFilled597.i = phi ptr [ %BIT_reloadDStream.zeroFilled598599.i, %12 ], [ %i.lq, %bb.av ], [ %11, %bb.au ], [ @BIT_reloadDStream.zeroFilled, %bb.as ], [ %BIT_reloadDStream.zeroFilled598599.i, %bb.aq ] ; 8 uses
  %18 = phi i32 [ %i.lg, %12 ], [ %i.ls, %bb.av ], [ %i.lj, %bb.au ], [ %i.lg, %bb.as ], [ %i.lg, %bb.aq ] ; 3 uses
  %.val.i237594.i = phi i64 [ %.val.i237592600.i, %12 ], [ %.val198.i, %bb.av ], [ %.val.i234.i, %bb.au ], [ %.val.i237592600.i, %bb.as ], [ %.val.i237592600.i, %bb.aq ] ; 7 uses
  %.not103.i.i = icmp eq i8 %i.iu, 0
  br i1 %.not103.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %BIT_reloadDStream.exit60.i
  %i.lt = and i32 %18, 63
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = shl i64 %.val.i237594.i, %i.lu
  %i.lw = sub nsw i32 0, %i.iz
  %i.lx = and i32 %i.lw, 63
  %i.ly = zext nneg i32 %i.lx to i64
  %i.lz = lshr i64 %i.lv, %i.ly
  %i.ma = add i32 %18, %i.iz                      ; 2 uses
  store i32 %i.ma, ptr %i.dd, align 8, !noalias !60
  %i.mb = add i64 %i.lz, %i.iq
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %BIT_reloadDStream.exit60.i
  %i.mc = phi i32 [ %18, %BIT_reloadDStream.exit60.i ], [ %i.ma, %bb.aw ] ; 2 uses
  %.sroa.0295.0.i = phi i64 [ %i.iq, %BIT_reloadDStream.exit60.i ], [ %i.mb, %bb.aw ] ; 2 uses
  br i1 %.not554.i, label %ZSTD_decodeSequence.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.md = add i32 %i.mc, %i.ji                    ; 2 uses
  %i.me = sub i32 0, %i.md
  %i.mf = and i32 %i.me, 63
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = lshr i64 %.val.i237594.i, %i.mg
  %i.mi = zext nneg i8 %i.jh to i64
  %notmask.i.i72.i = shl nsw i64 -1, %i.mi
  %i.mj = xor i64 %notmask.i.i72.i, -1
  %i.mk = and i64 %i.mh, %i.mj
  %i.ml = zext i16 %i.jd to i64
  %i.mm = add nuw i64 %i.mk, %i.ml                ; 5 uses
  store i64 %i.mm, ptr %i.cz, align 8, !noalias !60
  %i.mn = add i32 %i.md, %i.jl                    ; 2 uses
  %i.mo = sub i32 0, %i.mn
  %i.mp = and i32 %i.mo, 63
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = lshr i64 %.val.i237594.i, %i.mq
  %i.ms = zext nneg i8 %i.jk to i64
  %notmask.i.i71.i = shl nsw i64 -1, %i.ms
  %i.mt = xor i64 %notmask.i.i71.i, -1
  %i.mu = and i64 %i.mr, %i.mt
  %i.mv = zext i16 %i.je to i64
  %i.mw = add nuw i64 %i.mu, %i.mv                ; 5 uses
  store i64 %i.mw, ptr %i.ga, align 8, !noalias !60
  %i.mx = add i32 %i.mn, %i.jo                    ; 9 uses
  %i.my = sub i32 0, %i.mx
  %i.mz = and i32 %i.my, 63
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = lshr i64 %.val.i237594.i, %i.na
  %i.nc = zext nneg i8 %i.jn to i64
  %notmask.i.i70.i = shl nsw i64 -1, %i.nc
  %i.nd = xor i64 %notmask.i.i70.i, -1
  %i.ne = and i64 %i.nb, %i.nd
  store i32 %i.mx, ptr %i.dd, align 8, !noalias !60
  %i.nf = zext i16 %i.jf to i64
  %i.ng = add nuw i64 %i.ne, %i.nf                ; 5 uses
  store i64 %i.ng, ptr %i.en, align 8, !noalias !60
  %i.nh = icmp ugt i32 %i.mx, 64
  br i1 %i.nh, label %bb.az, label %bb.ba, !prof !31

bb.az:                                            ; preds = %bb.ay
  store ptr @BIT_reloadDStream.zeroFilled, ptr %i.dn, align 8, !noalias !60
  br label %ZSTD_decodeSequence.exit.i

bb.ba:                                            ; preds = %bb.ay
  %.not.i61.i = icmp ult ptr %BIT_reloadDStream.zeroFilled597.i, %i.an
  br i1 %.not.i61.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ni = lshr i32 %i.mx, 3
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = sub nsw i64 0, %i.nj
  %i.nl = getelementptr i8, ptr %BIT_reloadDStream.zeroFilled597.i, i64 %i.nk ; 3 uses
  store ptr %i.nl, ptr %i.dn, align 8, !noalias !60
  %i.nm = and i32 %i.mx, 7                        ; 2 uses
  store i32 %i.nm, ptr %i.dd, align 8, !noalias !60
  %.val.i237.i = load i64, ptr %i.nl, align 1, !noalias !60 ; 2 uses
  store i64 %.val.i237.i, ptr %7, align 8, !noalias !60
  br label %ZSTD_decodeSequence.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.nn = icmp eq ptr %BIT_reloadDStream.zeroFilled597.i, %3
  br i1 %i.nn, label %ZSTD_decodeSequence.exit.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.no = lshr i32 %i.mx, 3                       ; 2 uses
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = sub nsw i64 0, %i.np
  %i.nr = getelementptr i8, ptr %BIT_reloadDStream.zeroFilled597.i, i64 %i.nq
  %i.ns = icmp ult ptr %i.nr, %3
  %i.nt = ptrtoint ptr %BIT_reloadDStream.zeroFilled597.i to i64
  %i.nu = sub i64 %i.nt, %i.hm
  %i.nv = trunc i64 %i.nu to i32
  %.021.i63.i = select i1 %i.ns, i32 %i.nv, i32 %i.no ; 2 uses
  %i.nw = zext i32 %.021.i63.i to i64
  %i.nx = sub nsw i64 0, %i.nw
  %i.ny = getelementptr i8, ptr %BIT_reloadDStream.zeroFilled597.i, i64 %i.nx ; 3 uses
  store ptr %i.ny, ptr %i.dn, align 8, !noalias !60
  %i.nz = shl i32 %.021.i63.i, 3
  %i.oa = sub i32 %i.mx, %i.nz                    ; 2 uses
  store i32 %i.oa, ptr %i.dd, align 8, !noalias !60
  %.val.i = load i64, ptr %i.ny, align 1          ; 2 uses
  store i64 %.val.i, ptr %7, align 8, !noalias !60
  br label %ZSTD_decodeSequence.exit.i

ZSTD_decodeSequence.exit.i:                       ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax
  %BIT_reloadDStream.zeroFilled.i = phi ptr [ %BIT_reloadDStream.zeroFilled597.i, %bb.bc ], [ %i.ny, %bb.bd ], [ %i.nl, %bb.bb ], [ @BIT_reloadDStream.zeroFilled, %bb.az ], [ %BIT_reloadDStream.zeroFilled597.i, %bb.ax ] ; 2 uses
  %i.ob = phi i32 [ %i.mx, %bb.bc ], [ %i.oa, %bb.bd ], [ %i.nm, %bb.bb ], [ %i.mx, %bb.az ], [ %i.mc, %bb.ax ] ; 2 uses
  %.val.i237593.i = phi i64 [ %.val.i237594.i, %bb.bc ], [ %.val.i, %bb.bd ], [ %.val.i237.i, %bb.bb ], [ %.val.i237594.i, %bb.az ], [ %.val.i237594.i, %bb.ax ]
  %i.oc = phi i64 [ %i.ng, %bb.bc ], [ %i.ng, %bb.bd ], [ %i.ng, %bb.bb ], [ %i.ng, %bb.az ], [ %i.ig, %bb.ax ]
  %i.od = phi i64 [ %i.mw, %bb.bc ], [ %i.mw, %bb.bd ], [ %i.mw, %bb.bb ], [ %i.mw, %bb.az ], [ %i.if, %bb.ax ]
  %i.oe = phi i64 [ %i.mm, %bb.bc ], [ %i.mm, %bb.bd ], [ %i.mm, %bb.bb ], [ %i.mm, %bb.az ], [ %i.ie, %bb.ax ]
  %i.of = add i64 %.sroa.0295.0.i, %.0209.i602.i  ; 3 uses
  %i.og = icmp ugt i64 %.sink.i, %i.of
  %i.oh = select i1 %i.og, ptr %i.t, ptr %i.p
  %i.oi = getelementptr i8, ptr %i.oh, i64 %i.of
  %i.oj = sub i64 0, %.sink.i
  %i.ok = getelementptr i8, ptr %i.oi, i64 %i.oj  ; 2 uses
  tail call void @llvm.prefetch.p0(ptr %i.ok, i32 0, i32 3, i32 1)
  %i.ol = getelementptr i8, ptr %i.ok, i64 64
  tail call void @llvm.prefetch.p0(ptr %i.ol, i32 0, i32 3, i32 1)
  %i.om = add i64 %i.of, %.sroa.9.0.i             ; 2 uses
  %i.on = getelementptr [24 x i8], ptr %6, i64 %indvars.iv.i ; 3 uses
  store i64 %.sroa.0295.0.i, ptr %i.on, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  store i64 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  store i64 %.sink.i, ptr %.sroa.12.0..sroa_idx.i, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader575.i, label %bb.ah, !llvm.loop !8

bb.be:                                            ; preds = %bb.et, %.lr.ph613.i
  %i.oo = phi i64 [ %i.ho, %.lr.ph613.i ], [ %i.rk, %bb.et ] ; 2 uses
  %i.op = phi i64 [ %i.hp, %.lr.ph613.i ], [ %.sink773.i, %bb.et ] ; 6 uses
  %i.oq = phi i64 [ %i.hq, %.lr.ph613.i ], [ %.sink772.i, %bb.et ] ; 6 uses
  %.1210.i612.i = phi i64 [ %.0209.i.lcssa.i, %.lr.ph613.i ], [ %.6215.i.ph.i, %bb.et ] ; 2 uses
  %.1217.i611.i = phi i32 [ %.0216.i.lcssa.i, %.lr.ph613.i ], [ %i.ahv, %bb.et ] ; 5 uses
  %.0219.i610.i = phi ptr [ %i.n, %.lr.ph613.i ], [ %.3222.i.ph.i, %bb.et ] ; 5 uses
  %.0230.i606.i = phi ptr [ %1, %.lr.ph613.i ], [ %.6236.i.ph.i, %bb.et ] ; 24 uses
  %.not550.i = icmp eq i32 %.1217.i611.i, %i.hu
  %i.or = load ptr, ptr %i.em, align 8, !noalias !61
  %i.os = load i64, ptr %i.cz, align 8, !noalias !61
  %i.ot = getelementptr [8 x i8], ptr %i.or, i64 %i.os ; 4 uses
  %i.ou = load ptr, ptr %i.hj, align 8, !noalias !61
  %i.ov = load i64, ptr %i.ga, align 8, !noalias !61
  %i.ow = getelementptr [8 x i8], ptr %i.ou, i64 %i.ov ; 4 uses
  %i.ox = load ptr, ptr %i.fz, align 8, !noalias !61
  %i.oy = load i64, ptr %i.en, align 8, !noalias !61
  %i.oz = getelementptr [8 x i8], ptr %i.ox, i64 %i.oy ; 4 uses
  %i.pa = getelementptr i8, ptr %i.ow, i64 4
  %i.pb = load i32, ptr %i.pa, align 4, !noalias !61
  %i.pc = zext i32 %i.pb to i64                   ; 2 uses
  %i.pd = getelementptr i8, ptr %i.ot, i64 4
  %i.pe = load i32, ptr %i.pd, align 4, !noalias !61 ; 2 uses
  %i.pf = zext i32 %i.pe to i64                   ; 2 uses
  %i.pg = getelementptr i8, ptr %i.oz, i64 4
  %i.ph = load i32, ptr %i.pg, align 4, !noalias !61 ; 2 uses
  %i.pi = getelementptr i8, ptr %i.ot, i64 2
  %i.pj = load i8, ptr %i.pi, align 2, !noalias !61 ; 3 uses
  %i.pk = getelementptr i8, ptr %i.ow, i64 2
  %i.pl = load i8, ptr %i.pk, align 2, !noalias !61 ; 3 uses
  %i.pm = getelementptr i8, ptr %i.oz, i64 2
  %i.pn = load i8, ptr %i.pm, align 2, !noalias !61 ; 4 uses
  %i.po = zext i8 %i.pj to i32                    ; 2 uses
  %i.pp = zext i8 %i.pl to i32                    ; 2 uses
  %i.pq = add i8 %i.pl, %i.pj
  %i.pr = add i8 %i.pq, %i.pn
  %i.ps = load i16, ptr %i.ot, align 4, !noalias !61
  %i.pt = load i16, ptr %i.ow, align 4, !noalias !61
  %i.pu = load i16, ptr %i.oz, align 4, !noalias !61
  %i.pv = getelementptr i8, ptr %i.ot, i64 3
  %i.pw = load i8, ptr %i.pv, align 1, !noalias !61 ; 2 uses
  %i.px = zext i8 %i.pw to i32
  %i.py = getelementptr i8, ptr %i.ow, i64 3
  %i.pz = load i8, ptr %i.py, align 1, !noalias !61 ; 2 uses
  %i.qa = zext i8 %i.pz to i32
  %i.qb = getelementptr i8, ptr %i.oz, i64 3
  %i.qc = load i8, ptr %i.qb, align 1, !noalias !61 ; 2 uses
  %i.qd = zext i8 %i.qc to i32
  %i.qe = icmp ugt i8 %i.pn, 1
  br i1 %i.qe, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.qf = zext i8 %i.pn to i32                    ; 2 uses
  %.val.i238.i = load i64, ptr %7, align 8, !noalias !61
  %.val4.i239.i = load i32, ptr %i.dd, align 8, !noalias !61 ; 2 uses
  %i.qg = and i32 %.val4.i239.i, 63
  %i.qh = zext nneg i32 %i.qg to i64
  %i.qi = shl i64 %.val.i238.i, %i.qh
  %i.qj = sub nsw i32 0, %i.qf
  %i.qk = and i32 %i.qj, 63
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = lshr i64 %i.qi, %i.ql
  %i.qn = add i32 %.val4.i239.i, %i.qf
  store i32 %i.qn, ptr %i.dd, align 8, !noalias !61
  %i.qo = zext i32 %i.ph to i64
  %i.qp = add i64 %i.qm, %i.qo
  store i64 %i.op, ptr %i.ag, align 8, !noalias !61
  br label %bb.bl

bb.bg:                                            ; preds = %bb.be
  %i.qq = icmp eq i32 %i.pe, 0                    ; 3 uses
  %i.qr = icmp eq i8 %i.pn, 0
  br i1 %i.qr, label %bb.bh, label %bb.bi, !prof !34

bb.bh:                                            ; preds = %bb.bg
  %i.qs = select i1 %i.qq, i64 %i.op, i64 %i.oq
  %i.qt = select i1 %i.qq, i64 %i.oq, i64 %i.op
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.qu = zext i1 %i.qq to i32
  %i.qv = add i32 %i.ph, %i.qu
  %i.qw = zext i32 %i.qv to i64
  %.val.i240.i = load i64, ptr %7, align 8, !noalias !61
end_hunk_0
