Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 184
begin_hunk_0_@rb_int_parse_cstr:bb.a

bb.ay:                                            ; preds = %bb.aw
  %.not207 = icmp eq ptr %3, null                 ; 3 uses
  br i1 %.not207, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %i.cz, ptr %3, align 8, !tbaa !46
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.dh = call i64 @ruby_scan_digits(ptr noundef nonnull %.6, i64 noundef %.3255, i32 noundef %.0168262, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #23 ; 4 uses
  %i.di = load i32, ptr %i.a, align 4, !tbaa !44
  %.not208 = icmp eq i32 %i.di, 0
  br i1 %.not208, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !46  ; 3 uses
  %i.dk = getelementptr i8, ptr %.6, i64 %i.dj    ; 5 uses
  %.not209 = icmp eq i64 %i.dj, 0                 ; 2 uses
  br i1 %.not209, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !49
  %i.dm = icmp ne i8 %i.dl, 95
  %i.dn = and i32 %5, 2
  %.not210 = icmp eq i32 %i.dn, 0
  %or.cond221 = or i1 %.not210, %i.dm
  br i1 %or.cond221, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.c, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr %i.dk, ptr %2, align 8, !tbaa !243
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %.not207, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.do = load i64, ptr %3, align 8, !tbaa !46
  %i.dp = add i64 %i.do, %i.dj
  store i64 %i.dp, ptr %3, align 8, !tbaa !46
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.c, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not209, label %bignorm.exit, label %.preheader

.preheader:                                       ; preds = %bb.bi
  %i.dq = icmp slt i64 %.3255, 0
  %i.dr = getelementptr i8, ptr %.6, i64 %.3255   ; 2 uses
  br i1 %i.dq, label %.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %.not284420 = icmp ult ptr %i.dk, %i.dr
  br i1 %.not284420, label %.lr.ph422, label %.loopexit

.split.us:                                        ; preds = %.preheader, %bb.bj
  %.0160.us = phi ptr [ %i.dy, %bb.bj ], [ %i.dk, %.preheader ] ; 2 uses
  %i.ds = load i8, ptr %.0160.us, align 1, !tbaa !49 ; 3 uses
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.split.us
  %i.du = sext i8 %i.ds to i32
  %i.dv = icmp ne i8 %i.ds, 32
  %i.dw = add nsw i32 %i.du, -14
  %i.dx = icmp ult i32 %i.dw, -5
  %narrow.i225.not.us = select i1 %i.dv, i1 %i.dx, i1 false
  %i.dy = getelementptr i8, ptr %.0160.us, i64 1
  br i1 %narrow.i225.not.us, label %bignorm.exit, label %.split.us, !llvm.loop !241

.preheader.split:                                 ; preds = %.lr.ph422
  %i.dz = getelementptr i8, ptr %.0160421, i64 1  ; 2 uses
  %.not284 = icmp ult ptr %i.dz, %i.dr
  br i1 %.not284, label %.lr.ph422, label %.loopexit, !llvm.loop !241

.lr.ph422:                                        ; preds = %.preheader.split.preheader, %.preheader.split
  %.0160421 = phi ptr [ %i.dz, %.preheader.split ], [ %i.dk, %.preheader.split.preheader ] ; 2 uses
  %i.ea = load i8, ptr %.0160421, align 1, !tbaa !49 ; 2 uses
  %i.eb = sext i8 %i.ea to i32
  %i.ec = icmp ne i8 %i.ea, 32
  %i.ed = add nsw i32 %i.eb, -14
  %i.ee = icmp ult i32 %i.ed, -5
  %narrow.i225.not = select i1 %i.ec, i1 %i.ee, i1 false
  br i1 %narrow.i225.not, label %bignorm.exit, label %.preheader.split, !llvm.loop !241

.loopexit:                                        ; preds = %.preheader.split, %.split.us, %.preheader.split.preheader, %bb.bh
  %i.ef = icmp ult i64 %i.dh, 4611686018427387904
  br i1 %i.ef, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %.loopexit
  br i1 %.not212, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.eg = shl nuw nsw i64 %i.dh, 1
  %i.eh = or disjoint i64 %i.eg, 1
  br label %bignorm.exit

bb.bm:                                            ; preds = %bb.bk
  %.neg = mul nsw i64 %i.dh, -2
  %i.ei = or disjoint i64 %.neg, 1
  br label %bignorm.exit

bb.bn:                                            ; preds = %.loopexit
  %i.ej = call i64 @rb_uint2big(i64 noundef %i.dh) ; 2 uses
  %i.ek = inttoptr i64 %i.ej to ptr               ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !48
  %i.em = and i64 %i.el, -8193
  %.sink.i = or disjoint i64 %i.em, %.not287.a
  store i64 %.sink.i, ptr %i.ek, align 8, !tbaa !48
  %i.en = call fastcc i64 @bignorm(i64 noundef %i.ej)
  br label %bignorm.exit

bb.bo:                                            ; preds = %bb.bc, %bb.ba
  %.not.i = icmp eq i64 %.3255, 0
  br i1 %.not.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i64 0, ptr %i.b, align 8, !tbaa !46
  br label %str2big_scan_digits.exit

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.c, label %.preheader428, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.eo = load i8, ptr %.6, align 1, !tbaa !49
  %i.ep = icmp eq i8 %i.eo, 95
  br i1 %i.ep, label %str2big_scan_digits.exit.thread.thread, label %.preheader428

.preheader428:                                    ; preds = %bb.br, %bb.bq
  br label %.outer

.outer:                                           ; preds = %.preheader428, %bb.by
  %.051.i.ph = phi ptr [ %.6, %.preheader428 ], [ %i.er, %bb.by ]
  %.047.i.ph = phi i8 [ 0, %.preheader428 ], [ %.148.i, %bb.by ]
  %.044.i.ph = phi i64 [ 0, %.preheader428 ], [ %.145.i, %bb.by ]
  %.041.i.ph = phi ptr [ %.6, %.preheader428 ], [ %.142.i, %bb.by ]
  %.0.i.ph = phi i64 [ %.3255, %.preheader428 ], [ %i.ez, %bb.by ] ; 4 uses
  %i.eq = icmp sgt i64 %.0.i.ph, 0
  br label %bb.bs

bb.bs:                                            ; preds = %.outer, %bb.bx
  %.051.i = phi ptr [ %i.er, %bb.bx ], [ %.051.i.ph, %.outer ] ; 3 uses
  %.047.i = phi i8 [ %.148.i, %bb.bx ], [ %.047.i.ph, %.outer ] ; 3 uses
  %.044.i = phi i64 [ %.145.i, %bb.bx ], [ %.044.i.ph, %.outer ] ; 5 uses
  %.041.i = phi ptr [ %.142.i, %bb.bx ], [ %.041.i.ph, %.outer ] ; 4 uses
  %i.er = getelementptr i8, ptr %.051.i, i64 1    ; 3 uses
  %i.es = load i8, ptr %.051.i, align 1, !tbaa !49 ; 4 uses
  switch i8 %i.es, label %bb.bv [
    i8 0, label %.loopexit429
    i8 95, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs
  %.not64.i = icmp eq i8 %.047.i, 0
  br i1 %.not64.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.c, label %.thread9.i, label %str2big_scan_digits.exit.thread.thread

bb.bv:                                            ; preds = %bb.bs
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !49  ; 2 uses
  %i.ew = icmp sgt i8 %i.ev, -1
  %i.ex = sext i8 %i.ev to i32
  %.not63.i = icmp sgt i32 %.0168262, %i.ex
  %or.cond71.i = and i1 %i.ew, %.not63.i
  br i1 %or.cond71.i, label %bb.bw, label %.loopexit429

bb.bw:                                            ; preds = %bb.bv
  %i.ey = add i64 %.044.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.148.i = phi i8 [ 0, %bb.bw ], [ 95, %bb.bt ]  ; 3 uses
  %.145.i = phi i64 [ %i.ey, %bb.bw ], [ %.044.i, %bb.bt ] ; 3 uses
  %.142.i = phi ptr [ %i.er, %bb.bw ], [ %.041.i, %bb.bt ] ; 3 uses
  br i1 %i.eq, label %bb.by, label %bb.bs, !llvm.loop !23

bb.by:                                            ; preds = %bb.bx
  %i.ez = add nsw i64 %.0.i.ph, -1                ; 2 uses
  %.not65.i = icmp eq i64 %i.ez, 0
  br i1 %.not65.i, label %.loopexit429, label %.outer, !llvm.loop !23

.loopexit429:                                     ; preds = %bb.by, %bb.bv, %bb.bs
  %.249.i = phi i8 [ %.047.i, %bb.bv ], [ %.047.i, %bb.bs ], [ %.148.i, %bb.by ]
  %.246.i = phi i64 [ %.044.i, %bb.bv ], [ %.044.i, %bb.bs ], [ %.145.i, %bb.by ] ; 3 uses
  %.243.i = phi ptr [ %.041.i, %bb.bv ], [ %.041.i, %bb.bs ], [ %.142.i, %bb.by ] ; 3 uses
  %.2.i = phi i64 [ %.0.i.ph, %bb.bv ], [ %.0.i.ph, %bb.bs ], [ 0, %bb.by ] ; 2 uses
  %i.fa = icmp eq i8 %.249.i, 0
  %or.cond.i.not = or i1 %i.c, %i.fa
  br i1 %or.cond.i.not, label %bb.bz, label %str2big_scan_digits.exit.thread.thread

bb.bz:                                            ; preds = %.loopexit429
  %i.fb = icmp eq i64 %.2.i, 0
  %.not6626.i = icmp eq i8 %i.es, 0
  %.not286 = or i1 %.not6626.i, %i.fb
  %or.cond50.i = or i1 %i.c, %.not286
  br i1 %or.cond50.i, label %.thread9.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bz, %bb.cc
  %i.fc = phi i8 [ %i.fk, %bb.cc ], [ %i.es, %bb.bz ] ; 2 uses
  %.328.i = phi i64 [ %.4.i, %bb.cc ], [ %.2.i, %bb.bz ] ; 3 uses
  %.15227.i = phi ptr [ %i.fh, %bb.cc ], [ %.051.i, %bb.bz ]
  %i.fd = sext i8 %i.fc to i32
  %i.fe = icmp eq i8 %i.fc, 32
  %i.ff = add nsw i32 %i.fd, -9
  %i.fg = icmp ult i32 %i.ff, 5
  %narrow.i.not.not.i = select i1 %i.fe, i1 true, i1 %i.fg
  br i1 %narrow.i.not.not.i, label %bb.ca, label %str2big_scan_digits.exit.thread

bb.ca:                                            ; preds = %.lr.ph.i
  %i.fh = getelementptr i8, ptr %.15227.i, i64 1  ; 2 uses
  %i.fi = icmp sgt i64 %.328.i, 0
  br i1 %i.fi, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.fj = add nsw i64 %.328.i, -1                 ; 2 uses
  %.not68.i = icmp eq i64 %i.fj, 0
  br i1 %.not68.i, label %.thread9.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.4.i = phi i64 [ %i.fj, %bb.cb ], [ %.328.i, %bb.ca ]
  %i.fk = load i8, ptr %i.fh, align 1, !tbaa !49  ; 2 uses
  %.not66.i = icmp eq i8 %i.fk, 0
  br i1 %.not66.i, label %.thread9.i, label %.lr.ph.i, !llvm.loop !24

.thread9.i:                                       ; preds = %bb.cc, %bb.cb, %bb.bz, %bb.bu
  %.246615.i = phi i64 [ %.044.i, %bb.bu ], [ %.246.i, %bb.bz ], [ %.246.i, %bb.cb ], [ %.246.i, %bb.cc ] ; 2 uses
  %.243714.i = phi ptr [ %.041.i, %bb.bu ], [ %.243.i, %bb.bz ], [ %.243.i, %bb.cb ], [ %.243.i, %bb.cc ]
  store i64 %.246615.i, ptr %i.b, align 8, !tbaa !46
  %i.fl = ptrtoint ptr %.243714.i to i64
  %i.fm = ptrtoint ptr %.6 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  br label %str2big_scan_digits.exit

str2big_scan_digits.exit:                         ; preds = %.thread9.i, %bb.bp
  %i.fo = phi i64 [ %.246615.i, %.thread9.i ], [ 0, %bb.bp ] ; 5 uses
  %.4256 = phi i64 [ %i.fn, %.thread9.i ], [ 0, %bb.bp ] ; 2 uses
  br i1 %i.c, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %str2big_scan_digits.exit
  %i.fp = getelementptr i8, ptr %.6, i64 %.4256
  store ptr %i.fp, ptr %2, align 8, !tbaa !243
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %str2big_scan_digits.exit
  br i1 %.not207, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fq = load i64, ptr %3, align 8, !tbaa !46
  %i.fr = add i64 %i.fq, %i.fo
  store i64 %i.fr, ptr %3, align 8, !tbaa !46
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.fs = getelementptr i8, ptr %.6, i64 %.4256   ; 4 uses
  %i.ft = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.0168262)
  %i.fu = icmp samesign ult i32 %i.ft, 2
  br i1 %i.fu, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.fv = add nsw i32 %.0168262, -1
  %i.fw = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.fv, i1 false)
  %i.fx = sub nuw nsw i32 32, %i.fw               ; 2 uses
  %i.fy = lshr i64 %i.fo, 5
  %i.fz = zext nneg i32 %i.fx to i64              ; 2 uses
  %i.ga = mul nuw i64 %i.fy, %i.fz
  %i.gb = and i64 %i.fo, 31
  %i.gc = mul nuw nsw i64 %i.gb, %i.fz
  %i.gd = add nuw nsw i64 %i.gc, 31
  %i.ge = lshr i64 %i.gd, 5
  %i.gf = add nuw i64 %i.ge, %i.ga
  %i.gg = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.gh = call fastcc i64 @bignew_1(i64 noundef %i.gg, i64 noundef %i.gf, i32 noundef range(i32 0, 2) %.1167) ; 4 uses
  %i.gi = inttoptr i64 %i.gh to ptr               ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !48
  %i.gk = and i64 %i.gj, 16384
  %.not.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gl = getelementptr i8, ptr %i.gi, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.gm = getelementptr i8, ptr %i.gi, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.cj, %bb.ci
  %.0.i.i = phi ptr [ %i.gl, %bb.ci ], [ %i.gn, %bb.cj ]
  %i.go = icmp ult ptr %.6, %i.fs
  br i1 %i.go, label %.lr.ph.i227, label %str2big_poweroftwo.exit

.lr.ph.i227:                                      ; preds = %BIGNUM_DIGITS.exit.i, %bb.cm
  %.036.i = phi ptr [ %i.gp, %bb.cm ], [ %i.fs, %BIGNUM_DIGITS.exit.i ]
  %.02535.i = phi i32 [ %.1.i228, %bb.cm ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 3 uses
  %.02634.i = phi i64 [ %.127.i, %bb.cm ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 2 uses
  %.02833.i = phi ptr [ %.129.i, %bb.cm ], [ %.0.i.i, %BIGNUM_DIGITS.exit.i ] ; 4 uses
  %i.gp = getelementptr i8, ptr %.036.i, i64 -1   ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !49
  %i.gr = zext i8 %i.gq to i64
  %i.gs = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.gr
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !49  ; 2 uses
  %i.gu = icmp slt i8 %i.gt, 0
  br i1 %i.gu, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i227
  %i.gv = zext nneg i8 %i.gt to i64
  %i.gw = zext nneg i32 %.02535.i to i64
  %i.gx = shl nuw nsw i64 %i.gv, %i.gw
  %i.gy = or i64 %i.gx, %.02634.i                 ; 3 uses
  %i.gz = add nuw nsw i32 %.02535.i, %i.fx        ; 3 uses
  %i.ha = icmp sgt i32 %i.gz, 31
  br i1 %i.ha, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.hb = trunc i64 %i.gy to i32
  %i.hc = getelementptr i8, ptr %.02833.i, i64 4
  store i32 %i.hb, ptr %.02833.i, align 4, !tbaa !44
  %i.hd = lshr i64 %i.gy, 32
  %i.he = add nsw i32 %i.gz, -32
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.lr.ph.i227
  %.129.i = phi ptr [ %.02833.i, %.lr.ph.i227 ], [ %i.hc, %bb.cl ], [ %.02833.i, %bb.ck ] ; 2 uses
  %.127.i = phi i64 [ %.02634.i, %.lr.ph.i227 ], [ %i.hd, %bb.cl ], [ %i.gy, %bb.ck ] ; 2 uses
  %.1.i228 = phi i32 [ %.02535.i, %.lr.ph.i227 ], [ %i.he, %bb.cl ], [ %i.gz, %bb.ck ] ; 2 uses
  %i.hf = icmp ult ptr %.6, %i.gp
  br i1 %i.hf, label %.lr.ph.i227, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.cm
  %i.hg = icmp eq i32 %.1.i228, 0
  br i1 %i.hg, label %str2big_poweroftwo.exit, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i
  %i.hh = trunc i64 %.127.i to i32
  store i32 %i.hh, ptr %.129.i, align 4, !tbaa !44
  br label %str2big_poweroftwo.exit

bb.co:                                            ; preds = %bb.cg
  %i.hi = zext nneg i32 %i.bs to i64
  %i.hj = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !44 ; 2 uses
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = add nsw i64 %i.hl, -1
  %i.hn = add i64 %i.hm, %i.fo
  %i.ho = udiv i64 %i.hn, %i.hl
  %i.hp = shl i64 %i.ho, 1                        ; 3 uses
  %i.hq = icmp ult i64 %i.hp, 70
  br i1 %i.hq, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.hr = call fastcc i64 @str2big_normal(i32 noundef %.1167, ptr noundef nonnull %.6, ptr noundef %i.fs, i64 noundef %i.hp, i32 noundef %.0168262)
  br label %str2big_poweroftwo.exit

bb.cq:                                            ; preds = %bb.co
  %i.hs = call fastcc i64 @str2big_karatsuba(i32 noundef %.1167, ptr noundef nonnull %.6, ptr noundef %i.fs, i64 noundef %i.fo, i64 noundef %i.hp, i32 noundef %i.hk, i32 noundef %.0168262)
  br label %str2big_poweroftwo.exit

str2big_poweroftwo.exit:                          ; preds = %bb.cp, %bb.cq, %bb.cn, %._crit_edge.i, %BIGNUM_DIGITS.exit.i
  %.1164 = phi i64 [ %i.gh, %bb.cn ], [ %i.gh, %BIGNUM_DIGITS.exit.i ], [ %i.gh, %._crit_edge.i ], [ %i.hr, %bb.cp ], [ %i.hs, %bb.cq ] ; 7 uses
  %i.ht = icmp eq i64 %.1164, 0
  %i.hu = and i64 %.1164, 7
  %i.hv = icmp ne i64 %i.hu, 0
  %i.hw = or i1 %i.ht, %i.hv
  br i1 %i.hw, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %str2big_poweroftwo.exit
  %i.hx = inttoptr i64 %.1164 to ptr              ; 4 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !48 ; 4 uses
  %i.hz = and i64 %i.hy, 31
  %i.ia = icmp eq i64 %i.hz, 10
  br i1 %i.ia, label %bb.cr, label %bignorm.exit

bb.cr:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ib = and i64 %i.hy, 16384
  %.not.i.i.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ic = lshr i64 %i.hy, 15
  %i.id = and i64 %i.ic, 511
  %i.ie = getelementptr i8, ptr %i.hx, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.if = getelementptr i8, ptr %i.hx, i64 16
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !49
  %i.ih = getelementptr i8, ptr %i.hx, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.ct, %bb.cs
  %.0.i28.i.i = phi i64 [ %i.id, %bb.cs ], [ %i.ig, %bb.ct ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.ie, %bb.cs ], [ %i.ii, %bb.ct ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
end_hunk_0
begin_hunk_1_@rb_str_convert_to_inum:bb.a
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !66
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.b, ptr null
  %i.n = call i64 @rb_int_parse_cstr(ptr noundef %i.k, i64 noundef %i.m, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.o = icmp ne i64 %i.n, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.o
  %.mux = select i1 %i.o, i64 %i.n, i64 1
  br i1 %brmerge, label %bb.e, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not9 = icmp eq i32 %3, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !tbaa !46
  call fastcc void @invalid_integer(i64 noundef %i.p) #28
  unreachable

bb.e:                                             ; preds = %RSTRING_PTR.exit, %bb.c
  %.08 = phi i64 [ 4, %bb.c ], [ %.mux, %RSTRING_PTR.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %.08
}

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #5

declare void @rb_must_asciicompat(i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint noreturn nounwind sspstrong uwtable
define internal fastcc void @invalid_integer(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.31, i64 noundef %0) #25
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str_to_inum(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !46
  call void @rb_must_asciicompat(i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !tbaa !46
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %i.h = and i64 %i.g, 8192
  %.not.i.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.b, %bb.a
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !66
  %.not.i = icmp eq i32 %2, 0                     ; 2 uses
  %..i = select i1 %.not.i, ptr %i.b, ptr null
  %i.n = call i64 @rb_int_parse_cstr(ptr noundef %i.k, i64 noundef %i.m, ptr noundef %..i, ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.o = icmp ne i64 %i.n, 4                      ; 2 uses
  %brmerge.i = or i1 %.not.i, %i.o
  br i1 %brmerge.i, label %rb_str_convert_to_inum.exit, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !46
  call fastcc void @invalid_integer(i64 noundef %i.p) #28
  unreachable

rb_str_convert_to_inum.exit:                      ; preds = %RSTRING_PTR.exit.i
  %.mux.i = select i1 %i.o, i64 %i.n, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %.mux.i
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str2big_poweroftwo(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  %i.c = add i32 %1, -2
  %i.d = icmp ult i32 %i.c, 35
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.f = icmp samesign ult i32 %i.e, 2
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @invalid_radix(i32 noundef %1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_must_asciicompat(i64 noundef %0) #23
  %i.g = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66
  %i.l = load i8, ptr %i.g, align 1, !tbaa !49
  %i.m = icmp eq i8 %i.l, 45                      ; 3 uses
  %i.n = sext i1 %i.m to i64
  %.026 = add i64 %i.k, %i.n                      ; 2 uses
  %.017.idx = zext i1 %i.m to i64
  %.017 = getelementptr i8, ptr %i.g, i64 %.017.idx ; 7 uses
  %not. = xor i1 %i.m, true
  %.0 = zext i1 %not. to i32
  %.not.i = icmp eq i64 %.026, 0
  br i1 %.not.i, label %str2big_scan_digits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ne i32 %2, 0                        ; 4 uses
  br i1 %i.o, label %bb.e, label %.preheader

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %.017, align 1, !tbaa !49
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.l
  %.051.i.ph = phi ptr [ %.017, %.preheader ], [ %i.s, %bb.l ]
  %.047.i.ph = phi i8 [ 0, %.preheader ], [ %.148.i, %bb.l ]
  %.044.i.ph = phi i64 [ 0, %.preheader ], [ %.145.i, %bb.l ]
  %.041.i.ph = phi ptr [ %.017, %.preheader ], [ %.142.i, %bb.l ]
  %.0.i.ph = phi i64 [ %.026, %.preheader ], [ %i.z, %bb.l ] ; 4 uses
  %i.r = icmp sgt i64 %.0.i.ph, 0
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.k
  %.051.i = phi ptr [ %i.s, %bb.k ], [ %.051.i.ph, %.outer ] ; 3 uses
  %.047.i = phi i8 [ %.148.i, %bb.k ], [ %.047.i.ph, %.outer ] ; 3 uses
  %.044.i = phi i64 [ %.145.i, %bb.k ], [ %.044.i.ph, %.outer ] ; 5 uses
  %.041.i = phi ptr [ %.142.i, %bb.k ], [ %.041.i.ph, %.outer ] ; 4 uses
  %i.s = getelementptr i8, ptr %.051.i, i64 1     ; 3 uses
  %i.t = load i8, ptr %.051.i, align 1, !tbaa !49 ; 4 uses
  switch i8 %i.t, label %bb.i [
    i8 0, label %.loopexit74
    i8 95, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %.not64.i = icmp eq i8 %.047.i, 0
  br i1 %.not64.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.o, label %.loopexit, label %.thread9.i

bb.i:                                             ; preds = %bb.f
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !49
  %i.x = sext i8 %i.w to i32
  %or.cond71.i = icmp ugt i32 %1, %i.x
  br i1 %or.cond71.i, label %bb.j, label %.loopexit74

bb.j:                                             ; preds = %bb.i
  %i.y = add i64 %.044.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.148.i = phi i8 [ 0, %bb.j ], [ 95, %bb.g ]    ; 3 uses
  %.145.i = phi i64 [ %i.y, %bb.j ], [ %.044.i, %bb.g ] ; 3 uses
  %.142.i = phi ptr [ %i.s, %bb.j ], [ %.041.i, %bb.g ] ; 3 uses
  br i1 %i.r, label %bb.l, label %bb.f, !llvm.loop !23

bb.l:                                             ; preds = %bb.k
  %i.z = add nsw i64 %.0.i.ph, -1                 ; 2 uses
  %.not65.i = icmp eq i64 %i.z, 0
  br i1 %.not65.i, label %.loopexit74, label %.outer, !llvm.loop !23

.loopexit74:                                      ; preds = %bb.l, %bb.i, %bb.f
  %.249.i = phi i8 [ %.047.i, %bb.i ], [ %.047.i, %bb.f ], [ %.148.i, %bb.l ]
  %.246.i = phi i64 [ %.044.i, %bb.i ], [ %.044.i, %bb.f ], [ %.145.i, %bb.l ] ; 3 uses
  %.243.i = phi ptr [ %.041.i, %bb.i ], [ %.041.i, %bb.f ], [ %.142.i, %bb.l ] ; 3 uses
  %.2.i = phi i64 [ %.0.i.ph, %bb.i ], [ %.0.i.ph, %bb.f ], [ 0, %bb.l ] ; 2 uses
  %i.aa = icmp ne i8 %.249.i, 0
  %or.cond.i = and i1 %i.o, %i.aa
  br i1 %or.cond.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.loopexit74
  %3 = icmp ne i64 %.2.i, 0
  %.not6626.i = icmp ne i8 %i.t, 0
  %4 = and i1 %.not6626.i, %3
  %or.cond50.not.i = and i1 %i.o, %4
  br i1 %or.cond50.not.i, label %.lr.ph.i, label %.thread9.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.p
  %i.ab = phi i8 [ %i.aj, %bb.p ], [ %i.t, %bb.m ] ; 2 uses
  %.328.i = phi i64 [ %.4.i, %bb.p ], [ %.2.i, %bb.m ] ; 3 uses
  %.15227.i = phi ptr [ %i.ag, %bb.p ], [ %.051.i, %bb.m ]
  %i.ac = sext i8 %i.ab to i32
  %i.ad = icmp eq i8 %i.ab, 32
  %i.ae = add nsw i32 %i.ac, -9
  %i.af = icmp ult i32 %i.ae, 5
  %narrow.i.not.not.i = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %narrow.i.not.not.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %.15227.i, i64 1  ; 2 uses
  %i.ah = icmp sgt i64 %.328.i, 0
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = add nsw i64 %.328.i, -1                 ; 2 uses
  %.not68.i = icmp eq i64 %i.ai, 0
  br i1 %.not68.i, label %.thread9.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.4.i = phi i64 [ %i.ai, %bb.o ], [ %.328.i, %bb.n ]
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !49  ; 2 uses
  %.not66.i = icmp eq i8 %i.aj, 0
  br i1 %.not66.i, label %.thread9.i, label %.lr.ph.i, !llvm.loop !24

.thread9.i:                                       ; preds = %bb.p, %bb.o, %bb.m, %bb.h
  %.246615.i = phi i64 [ %.044.i, %bb.h ], [ %.246.i, %bb.m ], [ %.246.i, %bb.o ], [ %.246.i, %bb.p ]
  %.243714.i = phi ptr [ %.041.i, %bb.h ], [ %.243.i, %bb.m ], [ %.243.i, %bb.o ], [ %.243.i, %bb.p ]
  %i.ak = ptrtoint ptr %.243714.i to i64
  %i.al = ptrtoint ptr %.017 to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %str2big_scan_digits.exit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.e, %bb.h, %.loopexit74
  call fastcc void @invalid_integer(i64 noundef %i.h) #28
  unreachable

str2big_scan_digits.exit:                         ; preds = %bb.c, %.thread9.i
  %.128 = phi i64 [ %.246615.i, %.thread9.i ], [ 0, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %i.am, %.thread9.i ], [ 0, %bb.c ]
  %i.an = add nsw i32 %1, -1
  %i.ao = getelementptr i8, ptr %.017, i64 %.1    ; 2 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.an, i1 false)
  %i.aq = sub nuw nsw i32 32, %i.ap               ; 2 uses
  %i.ar = lshr i64 %.128, 5
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = mul nuw i64 %i.ar, %i.as
  %i.au = and i64 %.128, 31
  %i.av = mul nuw nsw i64 %i.au, %i.as
  %i.aw = add nuw nsw i64 %i.av, 31
  %i.ax = lshr i64 %i.aw, 5
  %i.ay = add nuw i64 %i.ax, %i.at
  %i.az = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.ba = call fastcc i64 @bignew_1(i64 noundef %i.az, i64 noundef %i.ay, i32 noundef range(i32 0, 2) %.0) ; 7 uses
  %i.bb = inttoptr i64 %i.ba to ptr               ; 7 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !48
  %i.bd = and i64 %i.bc, 16384
  %.not.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %str2big_scan_digits.exit
  %i.be = getelementptr i8, ptr %i.bb, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.r:                                             ; preds = %str2big_scan_digits.exit
  %i.bf = getelementptr i8, ptr %i.bb, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.be, %bb.q ], [ %i.bg, %bb.r ]
  %i.bh = icmp ult ptr %.017, %i.ao
  br i1 %i.bh, label %.lr.ph.i20, label %str2big_poweroftwo.exit

.lr.ph.i20:                                       ; preds = %BIGNUM_DIGITS.exit.i, %bb.u
  %.036.i = phi ptr [ %i.bi, %bb.u ], [ %i.ao, %BIGNUM_DIGITS.exit.i ]
  %.02535.i = phi i32 [ %.1.i21, %bb.u ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 3 uses
  %.02634.i = phi i64 [ %.127.i, %bb.u ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 2 uses
  %.02833.i = phi ptr [ %.129.i, %bb.u ], [ %.0.i.i, %BIGNUM_DIGITS.exit.i ] ; 4 uses
  %i.bi = getelementptr i8, ptr %.036.i, i64 -1   ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !49
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !49  ; 2 uses
  %i.bn = icmp slt i8 %i.bm, 0
  br i1 %i.bn, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i20
  %i.bo = zext nneg i8 %i.bm to i64
  %i.bp = zext nneg i32 %.02535.i to i64
  %i.bq = shl nuw nsw i64 %i.bo, %i.bp
  %i.br = or i64 %i.bq, %.02634.i                 ; 3 uses
  %i.bs = add nuw nsw i32 %.02535.i, %i.aq        ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 31
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = trunc i64 %i.br to i32
  %i.bv = getelementptr i8, ptr %.02833.i, i64 4
  store i32 %i.bu, ptr %.02833.i, align 4, !tbaa !44
  %i.bw = lshr i64 %i.br, 32
  %i.bx = add nsw i32 %i.bs, -32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.lr.ph.i20
  %.129.i = phi ptr [ %.02833.i, %.lr.ph.i20 ], [ %i.bv, %bb.t ], [ %.02833.i, %bb.s ] ; 2 uses
  %.127.i = phi i64 [ %.02634.i, %.lr.ph.i20 ], [ %i.bw, %bb.t ], [ %i.br, %bb.s ] ; 2 uses
  %.1.i21 = phi i32 [ %.02535.i, %.lr.ph.i20 ], [ %i.bx, %bb.t ], [ %i.bs, %bb.s ] ; 2 uses
  %i.by = icmp ult ptr %.017, %i.bi
  br i1 %i.by, label %.lr.ph.i20, label %._crit_edge.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %bb.u
  %i.bz = icmp eq i32 %.1.i21, 0
  br i1 %i.bz, label %str2big_poweroftwo.exit, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.ca = trunc i64 %.127.i to i32
  store i32 %i.ca, ptr %.129.i, align 4, !tbaa !44
  br label %str2big_poweroftwo.exit

str2big_poweroftwo.exit:                          ; preds = %BIGNUM_DIGITS.exit.i, %._crit_edge.i, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !255
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cc = load volatile i64, ptr %i.cb, align 8, !tbaa !46 ; 0 uses
  %i.cd = icmp eq i64 %i.ba, 0
  %i.ce = and i64 %i.ba, 7
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = or i1 %i.cd, %i.cf
  br i1 %i.cg, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %str2big_poweroftwo.exit
  %i.ch = load i64, ptr %i.bb, align 8, !tbaa !48 ; 4 uses
  %i.ci = and i64 %i.ch, 31
  %i.cj = icmp eq i64 %i.ci, 10
  br i1 %i.cj, label %bb.w, label %bignorm.exit

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ck = and i64 %i.ch, 16384
  %.not.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = lshr i64 %i.ch, 15
  %i.cm = and i64 %i.cl, 511
  %i.cn = getelementptr i8, ptr %i.bb, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.co = getelementptr i8, ptr %i.bb, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !49
  %i.cq = getelementptr i8, ptr %i.bb, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.y, %bb.x
  %.0.i28.i.i = phi i64 [ %i.cm, %bb.x ], [ %i.cp, %bb.y ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.cn, %bb.x ], [ %i.cr, %bb.y ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.z
  %indvar = phi i64 [ %indvar.next, %bb.z ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.cw, %bb.z ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 7 uses
  %i.cs = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.ct = getelementptr i8, ptr %i.cs, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !44
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.z, label %.critedge.i.i

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.cw = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.cw, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !15

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cx = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.cx, label %bb.ae, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.cy = sub i64 %indvar, %.0.i28.i.i
  %i.cz = icmp ugt i64 %i.cy, -4
  br i1 %i.cz, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.3, %.lr.ph36.i.i ], [ %.02232.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.i.i.preheader ]
  %indvars.iv.next40.i.i.3 = add nsw i64 %indvars.iv39.i.i, -4 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.da = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv39.i.i
  %i.db = getelementptr i8, ptr %i.da, i64 -12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !44
  %i.dd = zext i32 %i.dc to i64
  %i.de = shl nuw i64 %i.dd, 32
  %i.df = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.3
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !44
  %i.dh = zext i32 %i.dg to i64
  %i.di = or disjoint i64 %i.de, %i.dh
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.i.i.preheader
  %indvars.iv39.i.i.epil.init = phi i64 [ %.02232.i.i, %.lr.ph36.i.i.preheader ], [ %indvars.iv.next40.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.i.i.preheader ], [ %i.di, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %indvars.iv39.i.i.epil = phi i64 [ %indvars.iv.next40.i.i.epil, %.lr.ph36.i.i.epil ], [ %indvars.iv39.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.dn, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %indvars.iv.next40.i.i.epil = add nsw i64 %indvars.iv39.i.i.epil, -1 ; 2 uses
  %i.dj = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.epil
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !44
  %i.dm = zext i32 %i.dl to i64
  %i.dn = or disjoint i64 %i.dj, %i.dm            ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.02232.i.i
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !254

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.do = icmp ult i64 %i.dj, 4611686018427387904
  %i.dp = and i64 %i.ch, 8192
  %.not.i.i23 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i23, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.do, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dq = shl nuw nsw i64 %i.dn, 1
  %i.dr = or disjoint i64 %i.dq, 1
  br label %bignorm.exit

bb.ac:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.ds = icmp ult i64 %i.dn, 4611686018427387905
  br i1 %i.ds, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.neg.i.i = mul nsw i64 %i.dn, -2
  %i.dt = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.ae:                                            ; preds = %bb.ac, %bb.aa, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.ba, i64 noundef %.02232.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.z, %str2big_poweroftwo.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.ab, %bb.ad, %bb.ae
  %.0.i22 = phi i64 [ %i.ba, %str2big_poweroftwo.exit ], [ %i.ba, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.dt, %bb.ad ], [ %i.ba, %bb.ae ], [ %i.dr, %bb.ab ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.z ]
  ret i64 %.0.i22
}

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str2big_normal(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  %i.c = add i32 %1, -2                           ; 2 uses
  %i.d = icmp ugt i32 %i.c, 34
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @invalid_radix(i32 noundef %1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_must_asciicompat(i64 noundef %0) #23
  %i.e = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #23 ; 4 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66   ; 4 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.e, align 1, !tbaa !49
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %i.i, -1
  %i.n = getelementptr i8, ptr %i.e, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.026 = phi i64 [ %i.m, %bb.e ], [ %i.i, %bb.c ] ; 2 uses
  %.017 = phi ptr [ %i.n, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ]        ; 2 uses
  %.not.i = icmp eq i64 %.026, 0
  br i1 %.not.i, label %str2big_scan_digits.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  %.039 = phi i32 [ %.0, %bb.f ], [ 1, %bb.d ]
  %.01736 = phi ptr [ %.017, %bb.f ], [ %i.e, %bb.d ] ; 5 uses
  %.02633 = phi i64 [ %.026, %bb.f ], [ %i.i, %bb.d ]
  %i.o = icmp ne i32 %2, 0                        ; 4 uses
  br i1 %i.o, label %bb.g, label %.preheader

bb.g:                                             ; preds = %.thread
  %i.p = load i8, ptr %.01736, align 1, !tbaa !49
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.thread
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.n
  %.051.i.ph = phi ptr [ %.01736, %.preheader ], [ %i.s, %bb.n ]
  %.047.i.ph = phi i8 [ 0, %.preheader ], [ %.148.i, %bb.n ]
  %.044.i.ph = phi i64 [ 0, %.preheader ], [ %.145.i, %bb.n ]
  %.041.i.ph = phi ptr [ %.01736, %.preheader ], [ %.142.i, %bb.n ]
  %.0.i.ph = phi i64 [ %.02633, %.preheader ], [ %i.z, %bb.n ] ; 4 uses
  %i.r = icmp sgt i64 %.0.i.ph, 0
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.m
  %.051.i = phi ptr [ %i.s, %bb.m ], [ %.051.i.ph, %.outer ] ; 3 uses
  %.047.i = phi i8 [ %.148.i, %bb.m ], [ %.047.i.ph, %.outer ] ; 3 uses
  %.044.i = phi i64 [ %.145.i, %bb.m ], [ %.044.i.ph, %.outer ] ; 5 uses
  %.041.i = phi ptr [ %.142.i, %bb.m ], [ %.041.i.ph, %.outer ] ; 4 uses
  %i.s = getelementptr i8, ptr %.051.i, i64 1     ; 3 uses
  %i.t = load i8, ptr %.051.i, align 1, !tbaa !49 ; 4 uses
  switch i8 %i.t, label %bb.k [
    i8 0, label %.loopexit93
    i8 95, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %.not64.i = icmp eq i8 %.047.i, 0
  br i1 %.not64.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.o, label %.loopexit, label %.thread9.i

bb.k:                                             ; preds = %bb.h
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !49
  %i.x = sext i8 %i.w to i32
  %or.cond71.i = icmp ugt i32 %1, %i.x
  br i1 %or.cond71.i, label %bb.l, label %.loopexit93

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.044.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.148.i = phi i8 [ 0, %bb.l ], [ 95, %bb.i ]    ; 3 uses
  %.145.i = phi i64 [ %i.y, %bb.l ], [ %.044.i, %bb.i ] ; 3 uses
  %.142.i = phi ptr [ %i.s, %bb.l ], [ %.041.i, %bb.i ] ; 3 uses
  br i1 %i.r, label %bb.n, label %bb.h, !llvm.loop !23

bb.n:                                             ; preds = %bb.m
  %i.z = add nsw i64 %.0.i.ph, -1                 ; 2 uses
  %.not65.i = icmp eq i64 %i.z, 0
  br i1 %.not65.i, label %.loopexit93, label %.outer, !llvm.loop !23

.loopexit93:                                      ; preds = %bb.n, %bb.k, %bb.h
  %.249.i = phi i8 [ %.047.i, %bb.k ], [ %.047.i, %bb.h ], [ %.148.i, %bb.n ]
  %.246.i = phi i64 [ %.044.i, %bb.k ], [ %.044.i, %bb.h ], [ %.145.i, %bb.n ] ; 3 uses
  %.243.i = phi ptr [ %.041.i, %bb.k ], [ %.041.i, %bb.h ], [ %.142.i, %bb.n ] ; 3 uses
  %.2.i = phi i64 [ %.0.i.ph, %bb.k ], [ %.0.i.ph, %bb.h ], [ 0, %bb.n ] ; 2 uses
  %i.aa = icmp ne i8 %.249.i, 0
  %or.cond.i = and i1 %i.o, %i.aa
  br i1 %or.cond.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.loopexit93
  %3 = icmp ne i64 %.2.i, 0
  %.not6626.i = icmp ne i8 %i.t, 0
  %4 = and i1 %.not6626.i, %3
  %or.cond50.not.i = and i1 %i.o, %4
  br i1 %or.cond50.not.i, label %.lr.ph.i, label %.thread9.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.r
  %i.ab = phi i8 [ %i.aj, %bb.r ], [ %i.t, %bb.o ] ; 2 uses
  %.328.i = phi i64 [ %.4.i, %bb.r ], [ %.2.i, %bb.o ] ; 3 uses
  %.15227.i = phi ptr [ %i.ag, %bb.r ], [ %.051.i, %bb.o ]
  %i.ac = sext i8 %i.ab to i32
  %i.ad = icmp eq i8 %i.ab, 32
  %i.ae = add nsw i32 %i.ac, -9
  %i.af = icmp ult i32 %i.ae, 5
  %narrow.i.not.not.i = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %narrow.i.not.not.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %.15227.i, i64 1  ; 2 uses
  %i.ah = icmp sgt i64 %.328.i, 0
  br i1 %i.ah, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ai = add nsw i64 %.328.i, -1                 ; 2 uses
  %.not68.i = icmp eq i64 %i.ai, 0
  br i1 %.not68.i, label %.thread9.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4.i = phi i64 [ %i.ai, %bb.q ], [ %.328.i, %bb.p ]
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !49  ; 2 uses
  %.not66.i = icmp eq i8 %i.aj, 0
  br i1 %.not66.i, label %.thread9.i, label %.lr.ph.i, !llvm.loop !24

.thread9.i:                                       ; preds = %bb.r, %bb.q, %bb.o, %bb.j
  %.246615.i = phi i64 [ %.044.i, %bb.j ], [ %.246.i, %bb.o ], [ %.246.i, %bb.q ], [ %.246.i, %bb.r ]
  %.243714.i = phi ptr [ %.041.i, %bb.j ], [ %.243.i, %bb.o ], [ %.243.i, %bb.q ], [ %.243.i, %bb.r ]
  %i.ak = ptrtoint ptr %.243714.i to i64
  %i.al = ptrtoint ptr %.01736 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = add i64 %.246615.i, -1
  br label %str2big_scan_digits.exit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.g, %bb.j, %.loopexit93
  call fastcc void @invalid_integer(i64 noundef %i.f) #28
  unreachable

str2big_scan_digits.exit:                         ; preds = %bb.f, %.thread9.i
  %.038 = phi i32 [ %.039, %.thread9.i ], [ %.0, %bb.f ]
  %.01735 = phi ptr [ %.01736, %.thread9.i ], [ %.017, %bb.f ] ; 3 uses
  %.128 = phi i64 [ %i.an, %.thread9.i ], [ -1, %bb.f ]
  %.1 = phi i64 [ %i.am, %.thread9.i ], [ 0, %bb.f ]
  %i.ao = getelementptr i8, ptr %.01735, i64 %.1  ; 2 uses
  %i.ap = zext nneg i32 %i.c to i64
  %i.aq = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !44
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = add i64 %.128, %i.as
  %i.au = udiv i64 %i.at, %i.as                   ; 2 uses
  %i.av = shl i64 %i.au, 1                        ; 2 uses
  %i.aw = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.ax = call fastcc i64 @bignew_1(i64 noundef %i.aw, i64 noundef %i.av, i32 noundef range(i32 0, 2) %.038) ; 7 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 7 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !48
  %i.ba = and i64 %i.az, 16384
  %.not.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %str2big_scan_digits.exit
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.t:                                             ; preds = %str2big_scan_digits.exit
  %i.bc = getelementptr i8, ptr %i.ay, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.t, %bb.s
  %.0.i.i = phi ptr [ %i.bb, %bb.s ], [ %i.bd, %bb.t ] ; 4 uses
  %.not35.i = icmp eq i64 %i.av, 0
  br i1 %.not35.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %BIGNUM_DIGITS.exit.i
  %i.be = shl i64 %i.au, 3
  call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i, i8 0, i64 %i.be, i1 false), !tbaa !44
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.preheader.i, %BIGNUM_DIGITS.exit.i
  %i.bf = icmp ult ptr %.01735, %i.ao
  br i1 %i.bf, label %.lr.ph44.i, label %str2big_normal.exit

.lr.ph44.i:                                       ; preds = %.preheader.i
  %i.bg = zext nneg i32 %1 to i64                 ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.i, %.lr.ph44.i
  %.02743.i = phi ptr [ %.01735, %.lr.ph44.i ], [ %i.cr, %.loopexit.i ] ; 2 uses
  %.03142.i = phi i64 [ 1, %.lr.ph44.i ], [ %.2.i20, %.loopexit.i ] ; 3 uses
  %i.bh = load i8, ptr %.02743.i, align 1, !tbaa !49
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !49  ; 2 uses
  %i.bl = icmp slt i8 %i.bk, 0
  br i1 %i.bl, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = zext nneg i8 %i.bk to i64
  %i.bn = add i64 %.03142.i, -1
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i, %bb.v
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %bb.v ] ; 2 uses
  %.132.i = phi i64 [ %i.cq, %._crit_edge.i ], [ %.03142.i, %bb.v ] ; 7 uses
  %.029.i = phi i64 [ %.130.lcssa.i, %._crit_edge.i ], [ %i.bm, %bb.v ] ; 3 uses
  %.028.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.v ] ; 7 uses
  %i.bo = icmp ult i64 %.028.i, %.132.i
  br i1 %i.bo, label %.lr.ph40.i.preheader, label %._crit_edge.i

.lr.ph40.i.preheader:                             ; preds = %bb.w
  %i.bp = add i64 %i.bn, %indvar
  %i.bq = sub nuw i64 %.132.i, %.028.i
  %xtraiter = and i64 %i.bq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.i.prol.loopexit, label %.lr.ph40.i.prol

.lr.ph40.i.prol:                                  ; preds = %.lr.ph40.i.preheader
  %i.br = getelementptr [4 x i8], ptr %.0.i.i, i64 %.028.i ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !44
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, %i.bg
  %i.bv = add nuw nsw i64 %i.bu, %.029.i          ; 2 uses
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add nuw i64 %.028.i, 1
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !44
  %i.by = lshr i64 %i.bv, 32                      ; 2 uses
  br label %.lr.ph40.i.prol.loopexit

.lr.ph40.i.prol.loopexit:                         ; preds = %.lr.ph40.i.prol, %.lr.ph40.i.preheader
  %.lcssa92.unr = phi i64 [ poison, %.lr.ph40.i.preheader ], [ %i.by, %.lr.ph40.i.prol ]
  %.139.i.unr = phi i64 [ %.028.i, %.lr.ph40.i.preheader ], [ %i.bx, %.lr.ph40.i.prol ]
  %.13038.i.unr = phi i64 [ %.029.i, %.lr.ph40.i.preheader ], [ %i.by, %.lr.ph40.i.prol ]
  %i.bz = icmp eq i64 %i.bp, %.028.i
  br i1 %i.bz, label %._crit_edge.i, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i
  %.139.i = phi i64 [ %i.co, %.lr.ph40.i ], [ %.139.i.unr, %.lr.ph40.i.prol.loopexit ] ; 3 uses
  %.13038.i = phi i64 [ %i.cp, %.lr.ph40.i ], [ %.13038.i.unr, %.lr.ph40.i.prol.loopexit ]
  %i.ca = getelementptr [4 x i8], ptr %.0.i.i, i64 %.139.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !44
  %i.cc = zext i32 %i.cb to i64
  %i.cd = mul nuw nsw i64 %i.cc, %i.bg
  %i.ce = add nuw nsw i64 %i.cd, %.13038.i        ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.ca, align 4, !tbaa !44
  %i.cg = lshr i64 %i.ce, 32
  %i.ch = getelementptr [4 x i8], ptr %.0.i.i, i64 %.139.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 4      ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !44
  %i.ck = zext i32 %i.cj to i64
  %i.cl = mul nuw nsw i64 %i.ck, %i.bg
  %i.cm = add nuw nsw i64 %i.cl, %i.cg            ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = add nuw i64 %.139.i, 2                  ; 2 uses
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !44
  %i.cp = lshr i64 %i.cm, 32                      ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.co, %.132.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph40.i, !llvm.loop !26

._crit_edge.i:                                    ; preds = %.lr.ph40.i.prol.loopexit, %.lr.ph40.i, %bb.w
  %.130.lcssa.i = phi i64 [ %.029.i, %bb.w ], [ %.lcssa92.unr, %.lr.ph40.i.prol.loopexit ], [ %i.cp, %.lr.ph40.i ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.028.i, %bb.w ], [ %.132.i, %.lr.ph40.i ], [ %.132.i, %.lr.ph40.i.prol.loopexit ]
  %.not34.i = icmp eq i64 %.130.lcssa.i, 0
  %i.cq = add i64 %.132.i, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not34.i, label %.loopexit.i, label %bb.w

.loopexit.i:                                      ; preds = %._crit_edge.i, %bb.u
  %.2.i20 = phi i64 [ %.03142.i, %bb.u ], [ %.132.i, %._crit_edge.i ]
  %i.cr = getelementptr i8, ptr %.02743.i, i64 1  ; 2 uses
  %exitcond47.not.i = icmp eq ptr %i.cr, %i.ao
  br i1 %exitcond47.not.i, label %str2big_normal.exit, label %bb.u, !llvm.loop !27

str2big_normal.exit:                              ; preds = %.loopexit.i, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !257
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ct = load volatile i64, ptr %i.cs, align 8, !tbaa !46 ; 0 uses
  %i.cu = icmp eq i64 %i.ax, 0
  %i.cv = and i64 %i.ax, 7
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = or i1 %i.cu, %i.cw
  br i1 %i.cx, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %str2big_normal.exit
  %i.cy = load i64, ptr %i.ay, align 8, !tbaa !48 ; 4 uses
  %i.cz = and i64 %i.cy, 31
  %i.da = icmp eq i64 %i.cz, 10
  br i1 %i.da, label %bb.x, label %bignorm.exit

bb.x:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.db = and i64 %i.cy, 16384
  %.not.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.y

end_hunk_1
begin_hunk_2_@rb_str2big_normal:bb.a

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.do = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.do, label %bb.af, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.dp = sub i64 %indvar112, %.0.i28.i.i
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.3, %.lr.ph36.i.i ], [ %.02232.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.i.i.preheader ]
  %indvars.iv.next40.i.i.3 = add nsw i64 %indvars.iv39.i.i, -4 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.dr = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv39.i.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 -12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !44
  %i.du = zext i32 %i.dt to i64
  %i.dv = shl nuw i64 %i.du, 32
  %i.dw = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.3
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !44
  %i.dy = zext i32 %i.dx to i64
  %i.dz = or disjoint i64 %i.dv, %i.dy
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.i.i.preheader
  %indvars.iv39.i.i.epil.init = phi i64 [ %.02232.i.i, %.lr.ph36.i.i.preheader ], [ %indvars.iv.next40.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.i.i.preheader ], [ %i.dz, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %indvars.iv39.i.i.epil = phi i64 [ %indvars.iv.next40.i.i.epil, %.lr.ph36.i.i.epil ], [ %indvars.iv39.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.ee, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %indvars.iv.next40.i.i.epil = add nsw i64 %indvars.iv39.i.i.epil, -1 ; 2 uses
  %i.ea = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.eb = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.epil
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !44
  %i.ed = zext i32 %i.ec to i64
  %i.ee = or disjoint i64 %i.ea, %i.ed            ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.02232.i.i
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !256

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.ef = icmp ult i64 %i.ea, 4611686018427387904
  %i.eg = and i64 %i.cy, 8192
  %.not.i.i22 = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i22, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.ef, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.eh = shl nuw nsw i64 %i.ee, 1
  %i.ei = or disjoint i64 %i.eh, 1
  br label %bignorm.exit

bb.ad:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.ej = icmp ult i64 %i.ee, 4611686018427387905
  br i1 %i.ej, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.neg.i.i = mul nsw i64 %i.ee, -2
  %i.ek = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.ax, i64 noundef %.02232.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.aa, %str2big_normal.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.ac, %bb.ae, %bb.af
  %.0.i21 = phi i64 [ %i.ax, %str2big_normal.exit ], [ %i.ax, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.ek, %bb.ae ], [ %i.ax, %bb.af ], [ %i.ei, %bb.ac ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.aa ]
  ret i64 %.0.i21
}

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_str2big_karatsuba(i64 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !46
  %i.c = add i32 %1, -2                           ; 2 uses
  %i.d = icmp ugt i32 %i.c, 34
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @invalid_radix(i32 noundef %1) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_must_asciicompat(i64 noundef %0) #23
  %i.e = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #23 ; 4 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !66   ; 4 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.e, align 1, !tbaa !49
  %i.l = icmp eq i8 %i.k, 45
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i64 %i.i, -1
  %i.n = getelementptr i8, ptr %i.e, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.024 = phi i64 [ %i.m, %bb.e ], [ %i.i, %bb.c ] ; 2 uses
  %.017 = phi ptr [ %i.n, %bb.e ], [ %i.e, %bb.c ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.c ]        ; 2 uses
  %.not.i = icmp eq i64 %.024, 0
  br i1 %.not.i, label %str2big_scan_digits.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  %.037 = phi i32 [ %.0, %bb.f ], [ 1, %bb.d ]
  %.01734 = phi ptr [ %.017, %bb.f ], [ %i.e, %bb.d ] ; 5 uses
  %.02431 = phi i64 [ %.024, %bb.f ], [ %i.i, %bb.d ]
  %i.o = icmp ne i32 %2, 0                        ; 4 uses
  br i1 %i.o, label %bb.g, label %.preheader

bb.g:                                             ; preds = %.thread
  %i.p = load i8, ptr %.01734, align 1, !tbaa !49
  %i.q = icmp eq i8 %i.p, 95
  br i1 %i.q, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.thread
  br label %.outer

.outer:                                           ; preds = %.preheader, %bb.n
  %.051.i.ph = phi ptr [ %.01734, %.preheader ], [ %i.s, %bb.n ]
  %.047.i.ph = phi i8 [ 0, %.preheader ], [ %.148.i, %bb.n ]
  %.044.i.ph = phi i64 [ 0, %.preheader ], [ %.145.i, %bb.n ]
  %.041.i.ph = phi ptr [ %.01734, %.preheader ], [ %.142.i, %bb.n ]
  %.0.i.ph = phi i64 [ %.02431, %.preheader ], [ %i.z, %bb.n ] ; 4 uses
  %i.r = icmp sgt i64 %.0.i.ph, 0
  br label %bb.h

bb.h:                                             ; preds = %.outer, %bb.m
  %.051.i = phi ptr [ %i.s, %bb.m ], [ %.051.i.ph, %.outer ] ; 3 uses
  %.047.i = phi i8 [ %.148.i, %bb.m ], [ %.047.i.ph, %.outer ] ; 3 uses
  %.044.i = phi i64 [ %.145.i, %bb.m ], [ %.044.i.ph, %.outer ] ; 5 uses
  %.041.i = phi ptr [ %.142.i, %bb.m ], [ %.041.i.ph, %.outer ] ; 4 uses
  %i.s = getelementptr i8, ptr %.051.i, i64 1     ; 3 uses
  %i.t = load i8, ptr %.051.i, align 1, !tbaa !49 ; 4 uses
  switch i8 %i.t, label %bb.k [
    i8 0, label %.loopexit83
    i8 95, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %.not64.i = icmp eq i8 %.047.i, 0
  br i1 %.not64.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.o, label %.loopexit, label %.thread9.i

bb.k:                                             ; preds = %bb.h
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !49
  %i.x = sext i8 %i.w to i32
  %or.cond71.i = icmp ugt i32 %1, %i.x
  br i1 %or.cond71.i, label %bb.l, label %.loopexit83

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.044.i, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.148.i = phi i8 [ 0, %bb.l ], [ 95, %bb.i ]    ; 3 uses
  %.145.i = phi i64 [ %i.y, %bb.l ], [ %.044.i, %bb.i ] ; 3 uses
  %.142.i = phi ptr [ %i.s, %bb.l ], [ %.041.i, %bb.i ] ; 3 uses
  br i1 %i.r, label %bb.n, label %bb.h, !llvm.loop !23

bb.n:                                             ; preds = %bb.m
  %i.z = add nsw i64 %.0.i.ph, -1                 ; 2 uses
  %.not65.i = icmp eq i64 %i.z, 0
  br i1 %.not65.i, label %.loopexit83, label %.outer, !llvm.loop !23

.loopexit83:                                      ; preds = %bb.n, %bb.k, %bb.h
  %.249.i = phi i8 [ %.047.i, %bb.k ], [ %.047.i, %bb.h ], [ %.148.i, %bb.n ]
  %.246.i = phi i64 [ %.044.i, %bb.k ], [ %.044.i, %bb.h ], [ %.145.i, %bb.n ] ; 3 uses
  %.243.i = phi ptr [ %.041.i, %bb.k ], [ %.041.i, %bb.h ], [ %.142.i, %bb.n ] ; 3 uses
  %.2.i = phi i64 [ %.0.i.ph, %bb.k ], [ %.0.i.ph, %bb.h ], [ 0, %bb.n ] ; 2 uses
  %i.aa = icmp ne i8 %.249.i, 0
  %or.cond.i = and i1 %i.o, %i.aa
  br i1 %or.cond.i, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.loopexit83
  %3 = icmp ne i64 %.2.i, 0
  %.not6626.i = icmp ne i8 %i.t, 0
  %4 = and i1 %.not6626.i, %3
  %or.cond50.not.i = and i1 %i.o, %4
  br i1 %or.cond50.not.i, label %.lr.ph.i, label %.thread9.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.r
  %i.ab = phi i8 [ %i.aj, %bb.r ], [ %i.t, %bb.o ] ; 2 uses
  %.328.i = phi i64 [ %.4.i, %bb.r ], [ %.2.i, %bb.o ] ; 3 uses
  %.15227.i = phi ptr [ %i.ag, %bb.r ], [ %.051.i, %bb.o ]
  %i.ac = sext i8 %i.ab to i32
  %i.ad = icmp eq i8 %i.ab, 32
  %i.ae = add nsw i32 %i.ac, -9
  %i.af = icmp ult i32 %i.ae, 5
  %narrow.i.not.not.i = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %narrow.i.not.not.i, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %.15227.i, i64 1  ; 2 uses
  %i.ah = icmp sgt i64 %.328.i, 0
  br i1 %i.ah, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ai = add nsw i64 %.328.i, -1                 ; 2 uses
  %.not68.i = icmp eq i64 %i.ai, 0
  br i1 %.not68.i, label %.thread9.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.4.i = phi i64 [ %i.ai, %bb.q ], [ %.328.i, %bb.p ]
  %i.aj = load i8, ptr %i.ag, align 1, !tbaa !49  ; 2 uses
  %.not66.i = icmp eq i8 %i.aj, 0
  br i1 %.not66.i, label %.thread9.i, label %.lr.ph.i, !llvm.loop !24

.thread9.i:                                       ; preds = %bb.r, %bb.q, %bb.o, %bb.j
  %.246615.i = phi i64 [ %.044.i, %bb.j ], [ %.246.i, %bb.o ], [ %.246.i, %bb.q ], [ %.246.i, %bb.r ]
  %.243714.i = phi ptr [ %.041.i, %bb.j ], [ %.243.i, %bb.o ], [ %.243.i, %bb.q ], [ %.243.i, %bb.r ]
  %i.ak = ptrtoint ptr %.243714.i to i64
  %i.al = ptrtoint ptr %.01734 to i64
  %i.am = sub i64 %i.ak, %i.al
  br label %str2big_scan_digits.exit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.g, %bb.j, %.loopexit83
  call fastcc void @invalid_integer(i64 noundef %i.f) #28
  unreachable

str2big_scan_digits.exit:                         ; preds = %bb.f, %.thread9.i
  %.036 = phi i32 [ %.037, %.thread9.i ], [ %.0, %bb.f ]
  %.01733 = phi ptr [ %.01734, %.thread9.i ], [ %.017, %bb.f ] ; 2 uses
  %.126 = phi i64 [ %.246615.i, %.thread9.i ], [ 0, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.am, %.thread9.i ], [ 0, %bb.f ]
  %i.an = getelementptr i8, ptr %.01733, i64 %.1
  %i.ao = zext nneg i32 %i.c to i64
  %i.ap = getelementptr [4 x i8], ptr @maxpow64_exp, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44 ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = add i64 %.126, -1
  %i.at = add i64 %i.as, %i.ar
  %i.au = udiv i64 %i.at, %i.ar
  %i.av = shl i64 %i.au, 1
  %i.aw = call fastcc i64 @str2big_karatsuba(i32 noundef %.036, ptr noundef %.01733, ptr noundef %i.an, i64 noundef %.126, i64 noundef %i.av, i32 noundef %i.aq, i32 noundef %1) ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !53
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !259
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ay = load volatile i64, ptr %i.ax, align 8, !tbaa !46 ; 0 uses
  %i.az = icmp eq i64 %i.aw, 0
  %i.ba = and i64 %i.aw, 7
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = or i1 %i.az, %i.bb
  br i1 %i.bc, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %str2big_scan_digits.exit
  %i.bd = inttoptr i64 %i.aw to ptr               ; 4 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !48 ; 4 uses
  %i.bf = and i64 %i.be, 31
  %i.bg = icmp eq i64 %i.bf, 10
  br i1 %i.bg, label %bb.s, label %bignorm.exit

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.bh = and i64 %i.be, 16384
  %.not.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = lshr i64 %i.be, 15
  %i.bj = and i64 %i.bi, 511
  %i.bk = getelementptr i8, ptr %i.bd, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bl = getelementptr i8, ptr %i.bd, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !49
  %i.bn = getelementptr i8, ptr %i.bd, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.u, %bb.t
  %.0.i28.i.i = phi i64 [ %i.bj, %bb.t ], [ %i.bm, %bb.u ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.bk, %bb.t ], [ %i.bo, %bb.u ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.v
  %indvar = phi i64 [ %indvar.next, %bb.v ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.bt, %bb.v ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 7 uses
  %i.bp = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !44
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.bt = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.bt, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !15

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.bu = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.bu, label %bb.aa, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.bv = sub i64 %indvar, %.0.i28.i.i
  %i.bw = icmp ugt i64 %i.bv, -4
  br i1 %i.bw, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.3, %.lr.ph36.i.i ], [ %.02232.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.i.i.preheader ]
  %indvars.iv.next40.i.i.3 = add nsw i64 %indvars.iv39.i.i, -4 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.bx = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv39.i.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !44
  %i.ca = zext i32 %i.bz to i64
  %i.cb = shl nuw i64 %i.ca, 32
  %i.cc = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.3
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !44
  %i.ce = zext i32 %i.cd to i64
  %i.cf = or disjoint i64 %i.cb, %i.ce
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.i.i.preheader
  %indvars.iv39.i.i.epil.init = phi i64 [ %.02232.i.i, %.lr.ph36.i.i.preheader ], [ %indvars.iv.next40.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.i.i.preheader ], [ %i.cf, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %indvars.iv39.i.i.epil = phi i64 [ %indvars.iv.next40.i.i.epil, %.lr.ph36.i.i.epil ], [ %indvars.iv39.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.ck, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %indvars.iv.next40.i.i.epil = add nsw i64 %indvars.iv39.i.i.epil, -1 ; 2 uses
  %i.cg = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.epil
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !44
  %i.cj = zext i32 %i.ci to i64
  %i.ck = or disjoint i64 %i.cg, %i.cj            ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.02232.i.i
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !258

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.cl = icmp ult i64 %i.cg, 4611686018427387904
  %i.cm = and i64 %i.be, 8192
  %.not.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.cl, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cn = shl nuw nsw i64 %i.ck, 1
  %i.co = or disjoint i64 %i.cn, 1
  br label %bignorm.exit

bb.y:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.cp = icmp ult i64 %i.ck, 4611686018427387905
  br i1 %i.cp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.neg.i.i = mul nsw i64 %i.ck, -2
  %i.cq = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.aa:                                            ; preds = %bb.y, %bb.w, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.aw, i64 noundef %.02232.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.v, %str2big_scan_digits.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %BIGNUM_DIGITS.exit.i.i, %bb.x, %bb.z, %bb.aa
  %.0.i20 = phi i64 [ %i.aw, %str2big_scan_digits.exit ], [ %i.aw, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cq, %bb.z ], [ %i.aw, %bb.aa ], [ %i.co, %bb.x ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ 1, %bb.v ]
  ret i64 %.0.i20
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_ull2big(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.b = tail call fastcc i64 @bignew_1(i64 noundef %i.a, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !48   ; 2 uses
end_hunk_2
