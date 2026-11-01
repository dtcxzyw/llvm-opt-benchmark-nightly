Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/spng?download=true
inline.NumInlined: 350
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@spng_decode_image:bb.a
  store i8 %i.gd, ptr %i.fl, align 8, !tbaa !90
  br label %thread-pre-split.sink.split

bb.bl:                                            ; preds = %bb.bh
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1549
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !122 ; 2 uses
  store i8 %i.gf, ptr %i.fm, align 1, !tbaa !86
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1550
  %i.gh = load i8, ptr %i.gg, align 2, !tbaa !123 ; 2 uses
  store i8 %i.gh, ptr %i.fn, align 2, !tbaa !87
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1551
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !124 ; 2 uses
  store i8 %i.gj, ptr %i.fo, align 1, !tbaa !88
  br label %thread-pre-split.sink.split

thread-pre-split.sink.split:                      ; preds = %bb.bk, %bb.bl
  %.ph = phi i8 [ %i.gd, %bb.bk ], [ %narrow, %bb.bl ]
  %.ph596 = phi i8 [ %narrow, %bb.bk ], [ %i.gj, %bb.bl ]
  %.ph597 = phi i8 [ %narrow, %bb.bk ], [ %i.gh, %bb.bl ]
  %.ph598 = phi i8 [ %narrow, %bb.bk ], [ %i.gf, %bb.bl ]
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.gl = load i8, ptr %i.gk, align 8, !tbaa !125 ; 2 uses
  store i8 %i.gl, ptr %i.fp, align 4, !tbaa !89
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.sink.split, %.loopexit
  %i.gm = phi i8 [ %narrow, %.loopexit ], [ %.ph, %thread-pre-split.sink.split ]
  %i.gn = phi i8 [ %narrow, %.loopexit ], [ %i.gl, %thread-pre-split.sink.split ]
  %i.go = phi i8 [ %narrow, %.loopexit ], [ %.ph596, %thread-pre-split.sink.split ]
  %i.gp = phi i8 [ %narrow, %.loopexit ], [ %.ph597, %thread-pre-split.sink.split ]
  %i.gq = phi i8 [ %narrow, %.loopexit ], [ %.ph598, %thread-pre-split.sink.split ]
  %.pr = load i8, ptr %i.co, align 4, !tbaa !53
  br label %bb.bm

bb.bm:                                            ; preds = %thread-pre-split, %bb.bi, %bb.bj
  %i.gr = phi i8 [ %i.gm, %thread-pre-split ], [ %i.ft, %bb.bi ], [ %narrow, %bb.bj ] ; 2 uses
  %i.gs = phi i8 [ %i.gn, %thread-pre-split ], [ %i.fu, %bb.bi ], [ %i.gb, %bb.bj ] ; 2 uses
  %i.gt = phi i8 [ %i.go, %thread-pre-split ], [ %narrow, %bb.bi ], [ %i.ga, %bb.bj ] ; 2 uses
  %i.gu = phi i8 [ %i.gp, %thread-pre-split ], [ %narrow, %bb.bi ], [ %i.fy, %bb.bj ] ; 2 uses
  %i.gv = phi i8 [ %i.gq, %thread-pre-split ], [ %narrow, %bb.bi ], [ %i.fw, %bb.bj ] ; 2 uses
  %i.gw = phi i8 [ %.pr, %thread-pre-split ], [ %i.fu, %bb.bi ], [ %i.gb, %bb.bj ] ; 3 uses
  %i.gx = icmp ne i8 %i.gw, 16                    ; 3 uses
  %i.gy = and i32 %3, 5
  %.not483 = icmp eq i32 %i.gy, 0
  %or.cond = or i1 %.not483, %i.gx
  br i1 %or.cond, label %bb.bn, label %.thread534

.thread534:                                       ; preds = %bb.bm
  %i.gz = add i8 %i.gv, -8                        ; 2 uses
  store i8 %i.gz, ptr %i.fm, align 1, !tbaa !86
  %i.ha = add i8 %i.gu, -8                        ; 2 uses
  store i8 %i.ha, ptr %i.fn, align 2, !tbaa !87
  %i.hb = add i8 %i.gt, -8                        ; 2 uses
  store i8 %i.hb, ptr %i.fo, align 1, !tbaa !88
  %i.hc = add i8 %i.gs, -8                        ; 2 uses
  store i8 %i.hc, ptr %i.fp, align 4, !tbaa !89
  %i.hd = add i8 %i.gr, -8                        ; 2 uses
  store i8 %i.hd, ptr %i.fl, align 8, !tbaa !90
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.0417 = zext nneg i8 %narrow to i32
  %i.he = add i8 %narrow, -17
  %or.cond6 = icmp ult i8 %i.he, -16
  br i1 %or.cond6, label %.thread.sink.split, label %bb.bo

bb.bo:                                            ; preds = %.thread534, %bb.bn
  %i.hf = phi i8 [ %i.hb, %.thread534 ], [ %i.gt, %bb.bn ] ; 4 uses
  %i.hg = phi i8 [ %i.ha, %.thread534 ], [ %i.gu, %bb.bn ] ; 4 uses
  %i.hh = phi i8 [ %i.gz, %.thread534 ], [ %i.gv, %bb.bn ] ; 3 uses
  %i.hi = phi i8 [ %i.hc, %.thread534 ], [ %i.gs, %bb.bn ] ; 4 uses
  %i.hj = phi i8 [ %i.hd, %.thread534 ], [ %i.gr, %bb.bn ]
  %.0417539 = phi i32 [ 8, %.thread534 ], [ %.0417, %bb.bn ]
  %.0417.shrunk538 = phi i8 [ 8, %.thread534 ], [ %narrow, %bb.bn ] ; 6 uses
  %i.hk = add i8 %i.hj, -1
  %or.cond511.not = icmp ult i8 %i.hk, %.0417.shrunk538
  %i.hl = add i8 %i.hi, -1
  %or.cond512.not = icmp ult i8 %i.hl, %.0417.shrunk538
  %or.cond601 = select i1 %or.cond511.not, i1 %or.cond512.not, i1 false
  %i.hm = add i8 %i.hh, -1
  %or.cond513.not = icmp ult i8 %i.hm, %.0417.shrunk538
  %or.cond602 = select i1 %or.cond601, i1 %or.cond513.not, i1 false
  %i.hn = add i8 %i.hg, -1
  %or.cond514.not = icmp ult i8 %i.hn, %.0417.shrunk538
  %or.cond603 = select i1 %or.cond602, i1 %or.cond514.not, i1 false
  %i.ho = add i8 %i.hf, -1
  %or.cond515.not = icmp ult i8 %i.ho, %.0417.shrunk538
  %or.cond604 = select i1 %or.cond603, i1 %or.cond515.not, i1 false
  br i1 %or.cond604, label %bb.bp, label %.thread.sink.split

bb.bp:                                            ; preds = %bb.bo
  %i.hp = icmp eq i8 %i.hh, %i.hg
  %i.hq = icmp eq i8 %i.hg, %i.hf
  %or.cond516 = and i1 %i.hp, %i.hq
  %i.hr = icmp eq i8 %i.hf, %i.hi
  %or.cond517 = and i1 %i.hr, %or.cond516
  %i.hs = icmp eq i8 %i.hi, %.0417.shrunk538
  %or.cond518 = and i1 %i.hs, %or.cond517
  %i.ht = icmp eq i32 %spec.store.select1, %.0417539
  %or.cond519 = and i1 %i.ht, %or.cond518
  %i.hu = and i16 %.sroa.0.8, -17
  %.sroa.0.9 = select i1 %or.cond519, i16 %i.hu, i16 %.sroa.0.8 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 3352
  %i.hw = and i16 %.sroa.0.9, 8
  %.not490 = icmp eq i16 %i.hw, 0
  br i1 %.not490, label %bb.bw, label %.preheader542

.preheader542:                                    ; preds = %bb.bp
  %i.hx = and i16 %.sroa.0.9, 1
  %.not502 = icmp eq i16 %i.hx, 0
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.hz = zext nneg i8 %i.hh to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 2100
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 2104
  %i.ic = zext nneg i8 %i.hg to i32
  %i.id = zext nneg i8 %i.hf to i32
  %i.ie = zext nneg i8 %i.hi to i32
  br label %bb.bq

bb.bq:                                            ; preds = %.preheader542, %bb.bu
  %indvars.iv = phi i64 [ 0, %.preheader542 ], [ %indvars.iv.next, %bb.bu ] ; 7 uses
  br i1 %.not502, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.if = load i32, ptr %i.ia, align 4, !tbaa !135
  %i.ig = zext i32 %i.if to i64
  %i.ih = icmp samesign ult i64 %indvars.iv, %i.ig
  br i1 %i.ih, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !51  ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 395
  store i8 %i.ij, ptr %i.il, align 1, !tbaa !84
  %i.im = zext i8 %i.ij to i16
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 395
  store i8 -1, ptr %i.io, align 1, !tbaa !84
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ip = phi i16 [ 255, %bb.bt ], [ %i.im, %bb.bs ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 4, !tbaa !81
  %i.is = zext i8 %i.ir to i16
  %i.it = tail call fastcc zeroext i16 @sample_to_target(i16 noundef zeroext %i.is, i32 noundef 8, i32 noundef %i.hz, i32 noundef 8)
  %i.iu = trunc i16 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !82
  %i.ix = zext i8 %i.iw to i16
  %i.iy = tail call fastcc zeroext i16 @sample_to_target(i16 noundef zeroext %i.ix, i32 noundef 8, i32 noundef %i.ic, i32 noundef 8)
  %i.iz = trunc i16 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.jb = load i8, ptr %i.ja, align 2, !tbaa !83
  %i.jc = zext i8 %i.jb to i16
  %i.jd = tail call fastcc zeroext i16 @sample_to_target(i16 noundef zeroext %i.jc, i32 noundef 8, i32 noundef %i.id, i32 noundef 8)
  %i.je = trunc i16 %i.jd to i8
  %i.jf = tail call fastcc zeroext i16 @sample_to_target(i16 noundef zeroext %i.ip, i32 noundef 8, i32 noundef %i.ie, i32 noundef 8)
  %i.jg = trunc i16 %i.jf to i8
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv ; 4 uses
  store i8 %i.iu, ptr %i.jh, align 1, !tbaa !81
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.iz, ptr %i.ji, align 1, !tbaa !82
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %i.je, ptr %i.jj, align 1, !tbaa !83
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  store i8 %i.jg, ptr %i.jk, align 1, !tbaa !84
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.bv, label %bb.bq, !llvm.loop !312

bb.bv:                                            ; preds = %bb.bu
  %i.jl = and i16 %.sroa.0.9, -2
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bp
  %.sroa.0.10 = phi i16 [ %i.jl, %bb.bv ], [ %.sroa.0.9, %bb.bp ] ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 3344 ; 4 uses
  %i.jn = and i16 %.sroa.0.10, 1
  %.not491 = icmp eq i16 %i.jn, 0
  br i1 %.not491, label %bb.cg, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jo = icmp ult i8 %i.gw, 16
  %i.jp = zext nneg i8 %i.gw to i32
  %notmask = shl nsw i32 -1, %i.jp
  %i.jq = xor i32 %notmask, -1
  %.0410 = select i1 %i.jo, i32 %i.jq, i32 65535  ; 4 uses
  %i.jr = load i8, ptr %i.cm, align 1, !tbaa !79  ; 2 uses
  br i1 %.not477, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.js = icmp eq i8 %i.jr, 2
  br i1 %i.js, label %bb.bz, label %bb.cg

bb.bz:                                            ; preds = %bb.by
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 2094
  %5 = load i16, ptr %i.jt, align 2               ; 2 uses
  br i1 %i.gx, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i16 %5, ptr %i.jm, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 3346
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %6 = load <2 x i16>, ptr %i.jv, align 8
  store <2 x i16> %6, ptr %i.ju, align 2
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bz
  %i.jw = zext i16 %5 to i32
  %i.jx = and i32 %.0410, %i.jw
  %i.jy = trunc i32 %i.jx to i8
  store i8 %i.jy, ptr %i.jm, align 8, !tbaa !51
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 2096
  %i.ka = load i16, ptr %i.jz, align 8, !tbaa !133
  %i.kb = zext i16 %i.ka to i32
  %i.kc = and i32 %.0410, %i.kb
  %i.kd = trunc i32 %i.kc to i8
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 3345
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !51
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 2098
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !134
  %i.kh = zext i16 %i.kg to i32
  %i.ki = and i32 %.0410, %i.kh
  %i.kj = trunc i32 %i.ki to i8
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 3346
  store i8 %i.kj, ptr %i.kk, align 2, !tbaa !51
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bx
  %i.kl = icmp eq i8 %i.jr, 0
  br i1 %i.kl, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 2092
  %i.kn = load i16, ptr %i.km, align 4            ; 2 uses
  br i1 %i.gx, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  store i16 %i.kn, ptr %i.jm, align 8
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.ko = zext i16 %i.kn to i32
  %i.kp = and i32 %.0410, %i.ko
  %i.kq = trunc i32 %i.kp to i8
  store i8 %i.kq, ptr %i.jm, align 8, !tbaa !51
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ca, %bb.cb, %bb.by, %bb.ce, %bb.cf, %bb.cc, %bb.bw
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4384
  store i16 %.sroa.0.10, ptr %i.kr, align 8, !tbaa !51
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4386
  store i16 0, ptr %.sroa.58.0..sroa_idx, align 2
  store i32 5, ptr %i.f, align 8, !tbaa !50
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 4396 ; 2 uses
  %.promoted = load i32, ptr %i.ks, align 4, !tbaa !55
  %i.kt = sext i32 %.promoted to i64
  br label %bb.ch

bb.ch:                                            ; preds = %.critedge, %bb.cg
  %indvars.iv559 = phi i64 [ %indvars.iv.next560, %.critedge ], [ %i.kt, %bb.cg ] ; 6 uses
  %i.ku = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %indvars.iv559 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !59
  %.not492 = icmp eq i32 %i.kv, 0
  br i1 %.not492, label %.critedge, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !62
  %.not493 = icmp eq i32 %i.kx, 0
  br i1 %.not493, label %.critedge, label %bb.cj

.critedge:                                        ; preds = %bb.ch, %bb.ci
  %indvars.iv.next560 = add nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.ky = trunc nsw i64 %indvars.iv.next560 to i32
  store i32 %i.ky, ptr %i.ks, align 4, !tbaa !55
  br label %bb.ch, !llvm.loop !313

bb.cj:                                            ; preds = %bb.ci
  %i.kz = trunc nsw i64 %indvars.iv559 to i32
  %i.la = and i16 %.sroa.0.10, 32
  %.not494 = icmp eq i16 %i.la, 0
  br i1 %.not494, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lb = getelementptr inbounds [4 x i8], ptr @adam7_y_start, i64 %indvars.iv559
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !67
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 4392
  store i32 %i.lc, ptr %i.ld, align 8, !tbaa !93
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  br i1 %i.dc, label %bb.cp, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  switch i32 %3, label %.fold.split [
    i32 4, label %bb.cp
    i32 64, label %bb.cn
    i32 16, label %bb.co
  ]

bb.cn:                                            ; preds = %bb.cm
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  br label %bb.cp

.fold.split:                                      ; preds = %bb.cm
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cm, %.fold.split, %bb.cl, %bb.co, %bb.cn
  %.0409 = phi i64 [ 3, %bb.cm ], [ 8, %bb.cl ], [ 1, %bb.cn ], [ 2, %bb.co ], [ 4, %.fold.split ]
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 2812
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !63 ; 2 uses
  %.not495550 = icmp slt i32 %i.lf, %i.kz
  br i1 %.not495550, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cp
  %i.lg = and i32 %3, 768
  %.not501 = icmp eq i32 %i.lg, 0
  %i.lh = add i32 %i.lf, 1                        ; 2 uses
  br i1 %.not501, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.cr
  %indvars.iv567 = phi i64 [ %indvars.iv.next568, %bb.cr ], [ %indvars.iv559, %.lr.ph ] ; 2 uses
  %i.li = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %indvars.iv567 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !58
  %.not500.us = icmp eq i64 %i.lk, 0
  br i1 %.not500.us, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.split.us
  %i.ll = load i32, ptr %i.li, align 8, !tbaa !59
  %i.lm = zext i32 %i.ll to i64
  %i.ln = mul nuw nsw i64 %.0409, %i.lm           ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  store i64 %i.ln, ptr %i.lo, align 8, !tbaa !60
  %i.lp = icmp samesign ugt i64 %i.ln, 4294967295
  br i1 %i.lp, label %.thread.sink.split, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph.split.us
  %indvars.iv.next568 = add i64 %indvars.iv567, 1 ; 2 uses
  %lftr.wideiv570 = trunc i64 %indvars.iv.next568 to i32
  %exitcond571.not = icmp eq i32 %i.lh, %lftr.wideiv570
  br i1 %exitcond571.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !314

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ct
  %indvars.iv562 = phi i64 [ %indvars.iv.next563, %bb.ct ], [ %indvars.iv559, %.lr.ph ] ; 2 uses
  %i.lq = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %indvars.iv562 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !58 ; 2 uses
  %.not500 = icmp eq i64 %i.ls, 0
  br i1 %.not500, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.split
  %i.lt = add i64 %i.ls, -1                       ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i64 %i.lt, ptr %i.lu, align 8, !tbaa !60
  %i.lv = icmp ugt i64 %i.lt, 4294967295
  br i1 %i.lv, label %.thread.sink.split, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph.split
  %indvars.iv.next563 = add i64 %indvars.iv562, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next563 to i32
  %exitcond565.not = icmp eq i32 %i.lh, %lftr.wideiv
  br i1 %exitcond565.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !314

._crit_edge:                                      ; preds = %bb.ct, %bb.cr, %bb.cp
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.lx = tail call fastcc i32 @read_scanline_bytes(ptr noundef %0, ptr noundef nonnull %i.lw, i64 noundef 1) ; 2 uses
  %.not496 = icmp eq i32 %i.lx, 0
  br i1 %.not496, label %bb.cu, label %.thread.sink.split

bb.cu:                                            ; preds = %._crit_edge
  %i.ly = load i8, ptr %i.lw, align 8, !tbaa !71
  %i.lz = icmp ugt i8 %i.ly, 4
  br i1 %i.lz, label %.thread.sink.split, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ma = and i32 %4, 256
  %.not497 = icmp eq i32 %i.ma, 0
  br i1 %.not497, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.cv
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 4392
  br label %bb.cw

bb.cw:                                            ; preds = %.preheader, %bb.cw
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !93
  %i.md = zext i32 %i.mc to i64
  %i.me = load i64, ptr %i.ap, align 8, !tbaa !102 ; 2 uses
  %i.mf = mul i64 %i.me, %i.md
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 %i.mf
  %i.mh = tail call i32 @spng_decode_row(ptr noundef nonnull %0, ptr noundef %i.mg, i64 noundef %i.me) ; 2 uses
  switch i32 %i.mh, label %.thread.sink.split [
    i32 0, label %bb.cw
    i32 75, label %.thread
  ]

.thread.sink.split:                               ; preds = %bb.cs, %bb.cq, %bb.cw, %bb.cu, %._crit_edge, %bb.bn, %bb.bo, %bb.bg, %bb.bf, %bb.ad, %bb.ae, %bb.ac, %bb.z, %bb.w
  %.7.ph = phi i32 [ 2, %bb.bf ], [ 65, %bb.cu ], [ %i.lx, %._crit_edge ], [ 3, %bb.cq ], [ 41, %bb.bn ], [ 38, %bb.bg ], [ 2, %bb.ad ], [ 2, %bb.ac ], [ %i.bp, %bb.z ], [ %i.az, %bb.w ], [ 2, %bb.ae ], [ 41, %bb.bo ], [ %i.mh, %bb.cw ], [ 3, %bb.cs ]
  store i32 0, ptr %i.f, align 8, !tbaa !50
  br label %.thread

.thread:                                          ; preds = %bb.cw, %.thread.sink.split, %bb.aa, %bb.cv
  %.7 = phi i32 [ %.7.ph, %.thread.sink.split ], [ 0, %bb.cv ], [ 3, %bb.aa ], [ 0, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %check_decode_fmt.exit

end_hunk_0
