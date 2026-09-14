Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/lzxd?download=true
inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lzxd_decompress:bb.a
  %i.fd = load i8, ptr %.71196, align 1, !tbaa !41
  %.not1451 = icmp ult ptr %i.fc, %.71135
  br i1 %.not1451, label %bb.aq, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fe = load ptr, ptr %0, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !46
  %i.fh = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.fi = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.fj = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.fk = tail call i32 %i.fg(ptr noundef %i.fh, ptr noundef %i.fi, i32 noundef %i.fj) #5, !inline_history !47 ; 3 uses
  %i.fl = icmp slt i32 %i.fk, 0
  br i1 %i.fl, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = icmp eq i32 %i.fk, 0
  br i1 %i.fm, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.fn = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1569 = icmp eq i8 %i.fn, 0
  br i1 %.not.i1569, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fo = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 0, ptr %i.fp, align 1, !tbaa !41
  %i.fq = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.fq, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %bb.ak
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ap:                                            ; preds = %bb.an, %bb.al
  %.0.i1567 = phi i32 [ 2, %bb.an ], [ %i.fk, %bb.al ]
  %i.fr = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.fr, ptr %i.ab, align 8, !tbaa !42
  %i.fs = zext nneg i32 %.0.i1567 to i64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fs ; 2 uses
  store ptr %i.ft, ptr %i.ac, align 8, !tbaa !43
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aj, %bb.ap
  %.81197 = phi ptr [ %i.fr, %bb.ap ], [ %i.fc, %bb.aj ] ; 2 uses
  %.81136 = phi ptr [ %i.ft, %bb.ap ], [ %.71135, %bb.aj ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.81197, i64 1 ; 2 uses
  %i.fv = load i8, ptr %.81197, align 1, !tbaa !41
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw nsw i32 %i.fw, 8
  %i.fy = zext i8 %i.fd to i32
  %i.fz = or disjoint i32 %i.fx, %i.fy
  %i.ga = sub i32 16, %.410493266
  %i.gb = shl i32 %i.fz, %i.ga
  %i.gc = or i32 %i.gb, %.410713265               ; 2 uses
  %i.gd = add nsw i32 %.410493266, 16             ; 2 uses
  %i.ge = icmp slt i32 %.410493266, -15
  br i1 %i.ge, label %.lr.ph3267, label %._crit_edge3268

._crit_edge3268:                                  ; preds = %bb.aq, %.preheader1896
  %.61195.lcssa = phi ptr [ %.51194, %.preheader1896 ], [ %i.fu, %bb.aq ] ; 3 uses
  %.61134.lcssa = phi ptr [ %.51133, %.preheader1896 ], [ %.81136, %bb.aq ] ; 3 uses
  %.41071.lcssa = phi i32 [ %.31070, %.preheader1896 ], [ %i.gc, %bb.aq ] ; 2 uses
  %.41049.lcssa = phi i32 [ %.31048, %.preheader1896 ], [ %i.gd, %bb.aq ] ; 2 uses
  %i.gf = shl i32 %.41071.lcssa, 1                ; 3 uses
  %i.gg = add nsw i32 %.41049.lcssa, -1           ; 3 uses
  %.not1440 = icmp sgt i32 %.41071.lcssa, -1
  br i1 %.not1440, label %bb.bn, label %.preheader1895

.preheader1895:                                   ; preds = %._crit_edge3268
  %i.gh = icmp samesign ult i32 %.41049.lcssa, 17
  br i1 %i.gh, label %.lr.ph3277, label %._crit_edge3278

.lr.ph3277:                                       ; preds = %.preheader1895, %bb.be
  %.610513276 = phi i32 [ %i.hz, %bb.be ], [ %i.gg, %.preheader1895 ] ; 3 uses
  %.610733275 = phi i32 [ %i.hy, %bb.be ], [ %i.gf, %.preheader1895 ]
  %.1011383274 = phi ptr [ %.121140, %bb.be ], [ %.61134.lcssa, %.preheader1895 ] ; 2 uses
  %.1011993273 = phi ptr [ %i.hq, %bb.be ], [ %.61195.lcssa, %.preheader1895 ] ; 2 uses
  %.not1445 = icmp ult ptr %.1011993273, %.1011383274
  br i1 %.not1445, label %bb.ax, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph3277
  %i.gi = load ptr, ptr %0, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !46
  %i.gl = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.gm = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.gn = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.go = tail call i32 %i.gk(ptr noundef %i.gl, ptr noundef %i.gm, i32 noundef %i.gn) #5, !inline_history !47 ; 3 uses
  %i.gp = icmp slt i32 %i.go, 0
  br i1 %i.gp, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = icmp eq i32 %i.go, 0
  br i1 %i.gq, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.gr = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1573 = icmp eq i8 %i.gr, 0
  br i1 %.not.i1573, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gs = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 1
  store i8 0, ptr %i.gt, align 1, !tbaa !41
  %i.gu = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.gu, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %bb.ar
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.aw:                                            ; preds = %bb.au, %bb.as
  %.0.i1571 = phi i32 [ 2, %bb.au ], [ %i.go, %bb.as ]
  %i.gv = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.gv, ptr %i.ab, align 8, !tbaa !42
  %i.gw = zext nneg i32 %.0.i1571 to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw ; 2 uses
  store ptr %i.gx, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.lr.ph3277
  %.111200 = phi ptr [ %i.gv, %bb.aw ], [ %.1011993273, %.lr.ph3277 ] ; 2 uses
  %.111139 = phi ptr [ %i.gx, %bb.aw ], [ %.1011383274, %.lr.ph3277 ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.111200, i64 1 ; 2 uses
  %i.gz = load i8, ptr %.111200, align 1, !tbaa !41
  %.not1447 = icmp ult ptr %i.gy, %.111139
  br i1 %.not1447, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ha = load ptr, ptr %0, align 8, !tbaa !18
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !46
  %i.hd = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.he = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.hf = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.hg = tail call i32 %i.hc(ptr noundef %i.hd, ptr noundef %i.he, i32 noundef %i.hf) #5, !inline_history !47 ; 3 uses
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hi = icmp eq i32 %i.hg, 0
  br i1 %i.hi, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.hj = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1577 = icmp eq i8 %i.hj, 0
  br i1 %.not.i1577, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hk = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  store i8 0, ptr %i.hl, align 1, !tbaa !41
  %i.hm = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.hm, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba, %bb.ay
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.bd:                                            ; preds = %bb.bb, %bb.az
  %.0.i1575 = phi i32 [ 2, %bb.bb ], [ %i.hg, %bb.az ]
  %i.hn = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.hn, ptr %i.ab, align 8, !tbaa !42
  %i.ho = zext nneg i32 %.0.i1575 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho ; 2 uses
  store ptr %i.hp, ptr %i.ac, align 8, !tbaa !43
  br label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.bd
  %.121201 = phi ptr [ %i.hn, %bb.bd ], [ %i.gy, %bb.ax ] ; 2 uses
  %.121140 = phi ptr [ %i.hp, %bb.bd ], [ %.111139, %bb.ax ] ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.121201, i64 1 ; 2 uses
  %i.hr = load i8, ptr %.121201, align 1, !tbaa !41
  %i.hs = zext i8 %i.hr to i32
  %i.ht = shl nuw nsw i32 %i.hs, 8
  %i.hu = zext i8 %i.gz to i32
  %i.hv = or disjoint i32 %i.ht, %i.hu
  %i.hw = sub nuw i32 16, %.610513276
  %i.hx = shl nuw i32 %i.hv, %i.hw
  %i.hy = or i32 %i.hx, %.610733275               ; 2 uses
  %i.hz = add nuw nsw i32 %.610513276, 16         ; 2 uses
  %i.ia = icmp slt i32 %.610513276, 0
  br i1 %i.ia, label %.lr.ph3277, label %._crit_edge3278

._crit_edge3278:                                  ; preds = %bb.be, %.preheader1895
  %.101199.lcssa = phi ptr [ %.61195.lcssa, %.preheader1895 ], [ %i.hq, %bb.be ] ; 2 uses
  %.101138.lcssa = phi ptr [ %.61134.lcssa, %.preheader1895 ], [ %.121140, %bb.be ] ; 2 uses
  %.61073.lcssa = phi i32 [ %i.gf, %.preheader1895 ], [ %i.hy, %bb.be ] ; 2 uses
  %.61051.lcssa = phi i32 [ %i.gg, %.preheader1895 ], [ %i.hz, %bb.be ] ; 2 uses
  %i.ib = and i32 %.61073.lcssa, -65536
  %i.ic = shl i32 %.61073.lcssa, 16               ; 2 uses
  %i.id = add nsw i32 %.61051.lcssa, -16          ; 2 uses
  %2 = icmp samesign ult i32 %.61051.lcssa, 32
  br i1 %2, label %.lr.ph3288, label %._crit_edge3289

.lr.ph3288:                                       ; preds = %._crit_edge3278, %bb.bm
  %.810533286 = phi i32 [ %i.ix, %bb.bm ], [ %i.id, %._crit_edge3278 ] ; 3 uses
  %.810753285 = phi i32 [ %i.iw, %bb.bm ], [ %i.ic, %._crit_edge3278 ]
  %.1411423284 = phi ptr [ %.161144, %bb.bm ], [ %.101138.lcssa, %._crit_edge3278 ] ; 2 uses
  %.1412033283 = phi ptr [ %i.io, %bb.bm ], [ %.101199.lcssa, %._crit_edge3278 ] ; 2 uses
  %.not1441 = icmp ult ptr %.1412033283, %.1411423284
  br i1 %.not1441, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph3288
  %i.ie = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1442 = icmp eq i32 %i.ie, 0
  br i1 %.not1442, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.if = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.bh:                                            ; preds = %bb.bf
  %i.ig = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ih = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph3288
  %.151204 = phi ptr [ %i.ig, %bb.bh ], [ %.1412033283, %.lr.ph3288 ] ; 2 uses
  %.151143 = phi ptr [ %i.ih, %bb.bh ], [ %.1411423284, %.lr.ph3288 ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.151204, i64 1 ; 2 uses
  %i.ij = load i8, ptr %.151204, align 1, !tbaa !41
  %.not1443 = icmp ult ptr %i.ii, %.151143
  br i1 %.not1443, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ik = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1444 = icmp eq i32 %i.ik, 0
  br i1 %.not1444, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.il = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.bl:                                            ; preds = %bb.bj
  %i.im = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.in = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bl
  %.161205 = phi ptr [ %i.im, %bb.bl ], [ %i.ii, %bb.bi ] ; 2 uses
  %.161144 = phi ptr [ %i.in, %bb.bl ], [ %.151143, %bb.bi ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.161205, i64 1 ; 2 uses
  %i.ip = load i8, ptr %.161205, align 1, !tbaa !41
  %i.iq = zext i8 %i.ip to i32
  %i.ir = shl nuw nsw i32 %i.iq, 8
  %i.is = zext i8 %i.ij to i32
  %i.it = or disjoint i32 %i.ir, %i.is
  %i.iu = sub nuw i32 16, %.810533286
  %i.iv = shl nuw i32 %i.it, %i.iu
  %i.iw = or i32 %i.iv, %.810753285               ; 2 uses
  %i.ix = add nuw nsw i32 %.810533286, 16         ; 2 uses
  %i.iy = icmp slt i32 %.810533286, 0
  br i1 %i.iy, label %.lr.ph3288, label %._crit_edge3289

._crit_edge3289:                                  ; preds = %bb.bm, %._crit_edge3278
  %.141203.lcssa = phi ptr [ %.101199.lcssa, %._crit_edge3278 ], [ %i.io, %bb.bm ]
  %.141142.lcssa = phi ptr [ %.101138.lcssa, %._crit_edge3278 ], [ %.161144, %bb.bm ]
  %.81075.lcssa = phi i32 [ %i.ic, %._crit_edge3278 ], [ %i.iw, %bb.bm ] ; 2 uses
  %.81053.lcssa = phi i32 [ %i.id, %._crit_edge3278 ], [ %i.ix, %bb.bm ]
  %i.iz = lshr i32 %.81075.lcssa, 16
  %i.ja = shl i32 %.81075.lcssa, 16
  %i.jb = add nsw i32 %.81053.lcssa, -16
  %i.jc = or disjoint i32 %i.iz, %i.ib
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge3289, %._crit_edge3268
  %.181207 = phi ptr [ %.141203.lcssa, %._crit_edge3289 ], [ %.61195.lcssa, %._crit_edge3268 ]
  %.181146 = phi ptr [ %.141142.lcssa, %._crit_edge3289 ], [ %.61134.lcssa, %._crit_edge3268 ]
  %.101077 = phi i32 [ %i.ja, %._crit_edge3289 ], [ %i.gf, %._crit_edge3268 ]
  %.101055 = phi i32 [ %i.jb, %._crit_edge3289 ], [ %i.gg, %._crit_edge3268 ]
  %i.jd = phi i32 [ %i.jc, %._crit_edge3289 ], [ 0, %._crit_edge3268 ]
  store i32 %i.jd, ptr %i.bn, align 8, !tbaa !30
  store i8 1, ptr %i.be, align 2, !tbaa !68
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ac
  %.191208 = phi ptr [ %.51194, %bb.ac ], [ %.181207, %bb.bn ] ; 2 uses
  %.191147 = phi ptr [ %.51133, %bb.ac ], [ %.181146, %bb.bn ] ; 2 uses
  %.111078 = phi i32 [ %.31070, %bb.ac ], [ %.101077, %bb.bn ] ; 2 uses
  %.111056 = phi i32 [ %.31048, %bb.ac ], [ %.101055, %bb.bn ] ; 2 uses
  %i.je = load i64, ptr %i.bo, align 8, !tbaa !22 ; 2 uses
  %.not1453 = icmp eq i64 %i.je, 0
  br i1 %.not1453, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jf = load i64, ptr %i.al, align 8, !tbaa !21
  %i.jg = sub nsw i64 %i.je, %i.jf
  %spec.select15551874 = tail call i64 @llvm.smin.i64(i64 %i.jg, i64 32768)
  %spec.select1555 = trunc i64 %spec.select15551874 to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.01021 = phi i32 [ 32768, %bb.bo ], [ %spec.select1555, %bb.bp ] ; 7 uses
  %i.jh = load i32, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %i.ji = sub i32 %.01021, %.010153526
  %i.jj = add i32 %i.ji, %i.jh                    ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  br i1 %i.jk, label %.lr.ph3506, label %._crit_edge3507

.lr.ph3506:                                       ; preds = %bb.bq, %bb.mp
  %.09873504 = phi i32 [ %i.uq, %bb.mp ], [ %i.jj, %bb.bq ] ; 2 uses
  %.29903503 = phi i32 [ %.8996, %bb.mp ], [ %.1989, %bb.bq ] ; 3 uses
  %.29993502 = phi i32 [ %.81005, %bb.mp ], [ %.1998, %bb.bq ] ; 3 uses
  %.210083501 = phi i32 [ %.81014, %bb.mp ], [ %.11007, %bb.bq ] ; 3 uses
  %.110163500 = phi i32 [ %.51020, %bb.mp ], [ %.010153526, %bb.bq ] ; 4 uses
  %.1210573499 = phi i32 [ %.56, %bb.mp ], [ %.111056, %bb.bq ] ; 4 uses
  %.1210793498 = phi i32 [ %.561123, %bb.mp ], [ %.111078, %bb.bq ] ; 3 uses
  %.2011483497 = phi ptr [ %.101, %bb.mp ], [ %.191147, %bb.bq ] ; 5 uses
  %.2012093496 = phi ptr [ %.1011290, %bb.mp ], [ %.191208, %bb.bq ] ; 5 uses
  %i.jl = load i32, ptr %i.bd, align 4, !tbaa !40
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.br, label %bb.gk

bb.br:                                            ; preds = %.lr.ph3506
  %i.jn = load i8, ptr %i.bf, align 1, !tbaa !69
  %i.jo = icmp eq i8 %i.jn, 3
  br i1 %i.jo, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.jp = load i32, ptr %i.bq, align 8, !tbaa !70
  %i.jq = and i32 %i.jp, 1
  %.not1467 = icmp eq i32 %i.jq, 0
  br i1 %.not1467, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not1468 = icmp ult ptr %.2012093496, %.2011483497
  br i1 %.not1468, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jr = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1469 = icmp eq i32 %i.jr, 0
  br i1 %.not1469, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.js = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.bw:                                            ; preds = %bb.bu
  %i.jt = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ju = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.211210 = phi ptr [ %i.jt, %bb.bw ], [ %.2012093496, %bb.bt ]
  %.211149 = phi ptr [ %i.ju, %bb.bw ], [ %.2011483497, %bb.bt ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.211210, i64 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bs, %bb.br
  %.221211 = phi ptr [ %i.jv, %bb.bx ], [ %.2012093496, %bb.bs ], [ %.2012093496, %bb.br ] ; 2 uses
  %.221150 = phi ptr [ %.211149, %bb.bx ], [ %.2011483497, %bb.bs ], [ %.2011483497, %bb.br ] ; 2 uses
  %i.jw = icmp slt i32 %.1210573499, 3
  br i1 %i.jw, label %.lr.ph3299, label %._crit_edge3300

.lr.ph3299:                                       ; preds = %bb.by, %bb.cm
  %.1310583297 = phi i32 [ %i.lo, %bb.cm ], [ %.1210573499, %bb.by ] ; 3 uses
  %.1310803296 = phi i32 [ %i.ln, %bb.cm ], [ %.1210793498, %bb.by ]
  %.2311513295 = phi ptr [ %.251153, %bb.cm ], [ %.221150, %bb.by ] ; 2 uses
  %.2312123294 = phi ptr [ %i.lf, %bb.cm ], [ %.221211, %bb.by ] ; 2 uses
  %.not1547 = icmp ult ptr %.2312123294, %.2311513295
  br i1 %.not1547, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph3299
  %i.jx = load ptr, ptr %0, align 8, !tbaa !18
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !46
  %i.ka = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.kb = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.kc = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.kd = tail call i32 %i.jz(ptr noundef %i.ka, ptr noundef %i.kb, i32 noundef %i.kc) #5, !inline_history !47 ; 3 uses
  %i.ke = icmp slt i32 %i.kd, 0
  br i1 %i.ke, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kf = icmp eq i32 %i.kd, 0
  br i1 %i.kf, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.kg = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1581 = icmp eq i8 %i.kg, 0
  br i1 %.not.i1581, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.kh = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  store i8 0, ptr %i.ki, align 1, !tbaa !41
  %i.kj = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.kj, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb, %bb.bz
end_hunk_0
begin_hunk_1_@lzxd_decompress:bb.a
  %.241152 = phi ptr [ %i.km, %bb.ce ], [ %.2311513295, %.lr.ph3299 ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.241213, i64 1 ; 2 uses
  %i.ko = load i8, ptr %.241213, align 1, !tbaa !41
  %.not1549 = icmp ult ptr %i.kn, %.241152
  br i1 %.not1549, label %bb.cm, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kp = load ptr, ptr %0, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !46
  %i.ks = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.kt = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ku = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.kv = tail call i32 %i.kr(ptr noundef %i.ks, ptr noundef %i.kt, i32 noundef %i.ku) #5, !inline_history !47 ; 3 uses
  %i.kw = icmp slt i32 %i.kv, 0
  br i1 %i.kw, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.kx = icmp eq i32 %i.kv, 0
  br i1 %i.kx, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.ky = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1585 = icmp eq i8 %i.ky, 0
  br i1 %.not.i1585, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.kz = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 1
  store i8 0, ptr %i.la, align 1, !tbaa !41
  %i.lb = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.lb, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci, %bb.cg
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.cl:                                            ; preds = %bb.cj, %bb.ch
  %.0.i1583 = phi i32 [ 2, %bb.cj ], [ %i.kv, %bb.ch ]
  %i.lc = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.lc, ptr %i.ab, align 8, !tbaa !42
  %i.ld = zext nneg i32 %.0.i1583 to i64
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.ld ; 2 uses
  store ptr %i.le, ptr %i.ac, align 8, !tbaa !43
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cf, %bb.cl
  %.251214 = phi ptr [ %i.lc, %bb.cl ], [ %i.kn, %bb.cf ] ; 2 uses
  %.251153 = phi ptr [ %i.le, %bb.cl ], [ %.241152, %bb.cf ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.251214, i64 1 ; 2 uses
  %i.lg = load i8, ptr %.251214, align 1, !tbaa !41
  %i.lh = zext i8 %i.lg to i32
  %i.li = shl nuw nsw i32 %i.lh, 8
  %i.lj = zext i8 %i.ko to i32
  %i.lk = or disjoint i32 %i.li, %i.lj
  %i.ll = sub i32 16, %.1310583297
  %i.lm = shl i32 %i.lk, %i.ll
  %i.ln = or i32 %i.lm, %.1310803296              ; 2 uses
  %i.lo = add nsw i32 %.1310583297, 16            ; 2 uses
  %i.lp = icmp slt i32 %.1310583297, -13
  br i1 %i.lp, label %.lr.ph3299, label %._crit_edge3300

._crit_edge3300:                                  ; preds = %bb.cm, %bb.by
  %.231212.lcssa = phi ptr [ %.221211, %bb.by ], [ %i.lf, %bb.cm ] ; 2 uses
  %.231151.lcssa = phi ptr [ %.221150, %bb.by ], [ %.251153, %bb.cm ] ; 2 uses
  %.131080.lcssa = phi i32 [ %.1210793498, %bb.by ], [ %i.ln, %bb.cm ] ; 2 uses
  %.131058.lcssa = phi i32 [ %.1210573499, %bb.by ], [ %i.lo, %bb.cm ] ; 2 uses
  %i.lq = lshr i32 %.131080.lcssa, 29
  %i.lr = trunc nuw nsw i32 %i.lq to i8
  store i8 %i.lr, ptr %i.bf, align 1, !tbaa !69
  %i.ls = shl i32 %.131080.lcssa, 3               ; 2 uses
  %i.lt = add nsw i32 %.131058.lcssa, -3          ; 2 uses
  %i.lu = icmp samesign ult i32 %.131058.lcssa, 19
  br i1 %i.lu, label %.lr.ph3310, label %._crit_edge3311

.lr.ph3310:                                       ; preds = %._crit_edge3300, %bb.da
  %.1510603308 = phi i32 [ %i.nm, %bb.da ], [ %i.lt, %._crit_edge3300 ] ; 3 uses
  %.1510823307 = phi i32 [ %i.nl, %bb.da ], [ %i.ls, %._crit_edge3300 ]
  %.2711553306 = phi ptr [ %.291157, %bb.da ], [ %.231151.lcssa, %._crit_edge3300 ] ; 2 uses
  %.2712163305 = phi ptr [ %i.nd, %bb.da ], [ %.231212.lcssa, %._crit_edge3300 ] ; 2 uses
  %.not1543 = icmp ult ptr %.2712163305, %.2711553306
  br i1 %.not1543, label %bb.ct, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph3310
  %i.lv = load ptr, ptr %0, align 8, !tbaa !18
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !46
  %i.ly = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.lz = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ma = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.mb = tail call i32 %i.lx(ptr noundef %i.ly, ptr noundef %i.lz, i32 noundef %i.ma) #5, !inline_history !47 ; 3 uses
  %i.mc = icmp slt i32 %i.mb, 0
  br i1 %i.mc, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.md = icmp eq i32 %i.mb, 0
  br i1 %i.md, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.me = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1589 = icmp eq i8 %i.me, 0
  br i1 %.not.i1589, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.mf = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store i8 0, ptr %i.mg, align 1, !tbaa !41
  %i.mh = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.mh, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp, %bb.cn
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.cs:                                            ; preds = %bb.cq, %bb.co
  %.0.i1587 = phi i32 [ 2, %bb.cq ], [ %i.mb, %bb.co ]
  %i.mi = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.mi, ptr %i.ab, align 8, !tbaa !42
  %i.mj = zext nneg i32 %.0.i1587 to i64
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.mj ; 2 uses
  store ptr %i.mk, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph3310
  %.281217 = phi ptr [ %i.mi, %bb.cs ], [ %.2712163305, %.lr.ph3310 ] ; 2 uses
  %.281156 = phi ptr [ %i.mk, %bb.cs ], [ %.2711553306, %.lr.ph3310 ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.281217, i64 1 ; 2 uses
  %i.mm = load i8, ptr %.281217, align 1, !tbaa !41
  %.not1545 = icmp ult ptr %i.ml, %.281156
  br i1 %.not1545, label %bb.da, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mn = load ptr, ptr %0, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !46
  %i.mq = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.mr = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ms = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.mt = tail call i32 %i.mp(ptr noundef %i.mq, ptr noundef %i.mr, i32 noundef %i.ms) #5, !inline_history !47 ; 3 uses
  %i.mu = icmp slt i32 %i.mt, 0
  br i1 %i.mu, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mv = icmp eq i32 %i.mt, 0
  br i1 %i.mv, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.mw = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1593 = icmp eq i8 %i.mw, 0
  br i1 %.not.i1593, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.mx = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  store i8 0, ptr %i.my, align 1, !tbaa !41
  %i.mz = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.mz, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %bb.cu
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.cz:                                            ; preds = %bb.cx, %bb.cv
  %.0.i1591 = phi i32 [ 2, %bb.cx ], [ %i.mt, %bb.cv ]
  %i.na = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.na, ptr %i.ab, align 8, !tbaa !42
  %i.nb = zext nneg i32 %.0.i1591 to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nb ; 2 uses
  store ptr %i.nc, ptr %i.ac, align 8, !tbaa !43
  br label %bb.da

bb.da:                                            ; preds = %bb.ct, %bb.cz
  %.291218 = phi ptr [ %i.na, %bb.cz ], [ %i.ml, %bb.ct ] ; 2 uses
  %.291157 = phi ptr [ %i.nc, %bb.cz ], [ %.281156, %bb.ct ] ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.291218, i64 1 ; 2 uses
  %i.ne = load i8, ptr %.291218, align 1, !tbaa !41
  %i.nf = zext i8 %i.ne to i32
  %i.ng = shl nuw nsw i32 %i.nf, 8
  %i.nh = zext i8 %i.mm to i32
  %i.ni = or disjoint i32 %i.ng, %i.nh
  %i.nj = sub nuw i32 16, %.1510603308
  %i.nk = shl nuw i32 %i.ni, %i.nj
  %i.nl = or i32 %i.nk, %.1510823307              ; 2 uses
  %i.nm = add nuw nsw i32 %.1510603308, 16        ; 2 uses
  %i.nn = icmp slt i32 %.1510603308, 0
  br i1 %i.nn, label %.lr.ph3310, label %._crit_edge3311

._crit_edge3311:                                  ; preds = %bb.da, %._crit_edge3300
  %.271216.lcssa = phi ptr [ %.231212.lcssa, %._crit_edge3300 ], [ %i.nd, %bb.da ] ; 2 uses
  %.271155.lcssa = phi ptr [ %.231151.lcssa, %._crit_edge3300 ], [ %.291157, %bb.da ] ; 2 uses
  %.151082.lcssa = phi i32 [ %i.ls, %._crit_edge3300 ], [ %i.nl, %bb.da ] ; 2 uses
  %.151060.lcssa = phi i32 [ %i.lt, %._crit_edge3300 ], [ %i.nm, %bb.da ] ; 2 uses
  %i.no = shl i32 %.151082.lcssa, 16              ; 2 uses
  %i.np = add nsw i32 %.151060.lcssa, -16         ; 2 uses
  %3 = icmp samesign ult i32 %.151060.lcssa, 24
  br i1 %3, label %.lr.ph3321, label %._crit_edge3322

.lr.ph3321:                                       ; preds = %._crit_edge3311, %bb.do
  %.1710623319 = phi i32 [ %i.ph, %bb.do ], [ %i.np, %._crit_edge3311 ] ; 3 uses
  %.1710843318 = phi i32 [ %i.pg, %bb.do ], [ %i.no, %._crit_edge3311 ]
  %.3111593317 = phi ptr [ %.331161, %bb.do ], [ %.271155.lcssa, %._crit_edge3311 ] ; 2 uses
  %.3112203316 = phi ptr [ %i.oy, %bb.do ], [ %.271216.lcssa, %._crit_edge3311 ] ; 2 uses
  %.not1539 = icmp ult ptr %.3112203316, %.3111593317
  br i1 %.not1539, label %bb.dh, label %bb.db

bb.db:                                            ; preds = %.lr.ph3321
  %i.nq = load ptr, ptr %0, align 8, !tbaa !18
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !46
  %i.nt = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.nu = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.nv = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.nw = tail call i32 %i.ns(ptr noundef %i.nt, ptr noundef %i.nu, i32 noundef %i.nv) #5, !inline_history !47 ; 3 uses
  %i.nx = icmp slt i32 %i.nw, 0
  br i1 %i.nx, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ny = icmp eq i32 %i.nw, 0
  br i1 %i.ny, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.nz = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1597 = icmp eq i8 %i.nz, 0
  br i1 %.not.i1597, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.oa = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 1
  store i8 0, ptr %i.ob, align 1, !tbaa !41
  %i.oc = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.oc, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd, %bb.db
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dg:                                            ; preds = %bb.de, %bb.dc
  %.0.i1595 = phi i32 [ 2, %bb.de ], [ %i.nw, %bb.dc ]
  %i.od = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.od, ptr %i.ab, align 8, !tbaa !42
  %i.oe = zext nneg i32 %.0.i1595 to i64
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.oe ; 2 uses
  store ptr %i.of, ptr %i.ac, align 8, !tbaa !43
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph3321
  %.321221 = phi ptr [ %i.od, %bb.dg ], [ %.3112203316, %.lr.ph3321 ] ; 2 uses
  %.321160 = phi ptr [ %i.of, %bb.dg ], [ %.3111593317, %.lr.ph3321 ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.321221, i64 1 ; 2 uses
  %i.oh = load i8, ptr %.321221, align 1, !tbaa !41
  %.not1541 = icmp ult ptr %i.og, %.321160
  br i1 %.not1541, label %bb.do, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.oi = load ptr, ptr %0, align 8, !tbaa !18
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !46
  %i.ol = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.om = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.on = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.oo = tail call i32 %i.ok(ptr noundef %i.ol, ptr noundef %i.om, i32 noundef %i.on) #5, !inline_history !47 ; 3 uses
  %i.op = icmp slt i32 %i.oo, 0
  br i1 %i.op, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.oq = icmp eq i32 %i.oo, 0
  br i1 %i.oq, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.or = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1601 = icmp eq i8 %i.or, 0
  br i1 %.not.i1601, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.os = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 1
  store i8 0, ptr %i.ot, align 1, !tbaa !41
  %i.ou = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.ou, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.di
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dn:                                            ; preds = %bb.dl, %bb.dj
  %.0.i1599 = phi i32 [ 2, %bb.dl ], [ %i.oo, %bb.dj ]
  %i.ov = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ov, ptr %i.ab, align 8, !tbaa !42
  %i.ow = zext nneg i32 %.0.i1599 to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ow ; 2 uses
  store ptr %i.ox, ptr %i.ac, align 8, !tbaa !43
  br label %bb.do

bb.do:                                            ; preds = %bb.dh, %bb.dn
  %.331222 = phi ptr [ %i.ov, %bb.dn ], [ %i.og, %bb.dh ] ; 2 uses
  %.331161 = phi ptr [ %i.ox, %bb.dn ], [ %.321160, %bb.dh ] ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.331222, i64 1 ; 2 uses
  %i.oz = load i8, ptr %.331222, align 1, !tbaa !41
  %i.pa = zext i8 %i.oz to i32
  %i.pb = shl nuw nsw i32 %i.pa, 8
  %i.pc = zext i8 %i.oh to i32
  %i.pd = or disjoint i32 %i.pb, %i.pc
  %i.pe = sub nuw i32 16, %.1710623319
  %i.pf = shl nuw i32 %i.pd, %i.pe
  %i.pg = or i32 %i.pf, %.1710843318              ; 2 uses
  %i.ph = add nuw nsw i32 %.1710623319, 16        ; 2 uses
  %i.pi = icmp slt i32 %.1710623319, -8
  br i1 %i.pi, label %.lr.ph3321, label %._crit_edge3322

._crit_edge3322:                                  ; preds = %bb.do, %._crit_edge3311
  %.311220.lcssa = phi ptr [ %.271216.lcssa, %._crit_edge3311 ], [ %i.oy, %bb.do ] ; 5 uses
  %.311159.lcssa = phi ptr [ %.271155.lcssa, %._crit_edge3311 ], [ %.331161, %bb.do ] ; 5 uses
  %.171084.lcssa = phi i32 [ %i.no, %._crit_edge3311 ], [ %i.pg, %bb.do ] ; 2 uses
  %.171062.lcssa = phi i32 [ %i.np, %._crit_edge3311 ], [ %i.ph, %bb.do ] ; 2 uses
  %i.pj = lshr i32 %.171084.lcssa, 24
  %i.pk = shl i32 %.171084.lcssa, 8               ; 2 uses
  %i.pl = add nsw i32 %.171062.lcssa, -8          ; 2 uses
  %i.pm = lshr i32 %.151082.lcssa, 8
  %i.pn = and i32 %i.pm, 16776960
  %i.po = or disjoint i32 %i.pj, %i.pn            ; 2 uses
  store i32 %i.po, ptr %i.bq, align 8, !tbaa !70
  store i32 %i.po, ptr %i.bd, align 4, !tbaa !40
  %i.pp = load i8, ptr %i.bf, align 1, !tbaa !69
  switch i8 %i.pp, label %bb.gj [
    i8 2, label %.preheader1887
    i8 1, label %bb.dz
    i8 3, label %bb.en
  ]

.preheader1887:                                   ; preds = %._crit_edge3322, %._crit_edge3336
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge3336 ], [ 0, %._crit_edge3322 ] ; 2 uses
  %.1910643344 = phi i32 [ %i.qn, %._crit_edge3336 ], [ %i.pl, %._crit_edge3322 ] ; 3 uses
  %.1910863343 = phi i32 [ %i.qm, %._crit_edge3336 ], [ %i.pk, %._crit_edge3322 ] ; 2 uses
  %.3511633342 = phi ptr [ %.361164.lcssa, %._crit_edge3336 ], [ %.311159.lcssa, %._crit_edge3322 ] ; 2 uses
  %.3512243341 = phi ptr [ %.361225.lcssa, %._crit_edge3336 ], [ %.311220.lcssa, %._crit_edge3322 ] ; 2 uses
  %4 = icmp samesign ult i32 %.1910643344, 3
  br i1 %4, label %.lr.ph3335, label %._crit_edge3336

.lr.ph3335:                                       ; preds = %.preheader1887, %bb.dw
  %.2010653334 = phi i32 [ %i.qj, %bb.dw ], [ %.1910643344, %.preheader1887 ] ; 3 uses
  %.2010873333 = phi i32 [ %i.qi, %bb.dw ], [ %.1910863343, %.preheader1887 ]
  %.3611643332 = phi ptr [ %.381166, %bb.dw ], [ %.3511633342, %.preheader1887 ] ; 2 uses
  %.3612253331 = phi ptr [ %i.qa, %bb.dw ], [ %.3512243341, %.preheader1887 ] ; 2 uses
  %.not1535 = icmp ult ptr %.3612253331, %.3611643332
  br i1 %.not1535, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph3335
  %i.pq = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1536 = icmp eq i32 %i.pq, 0
  br i1 %.not1536, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pr = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dr:                                            ; preds = %bb.dp
  %i.ps = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.pt = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.lr.ph3335
  %.371226 = phi ptr [ %i.ps, %bb.dr ], [ %.3612253331, %.lr.ph3335 ] ; 2 uses
  %.371165 = phi ptr [ %i.pt, %bb.dr ], [ %.3611643332, %.lr.ph3335 ] ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.371226, i64 1 ; 2 uses
  %i.pv = load i8, ptr %.371226, align 1, !tbaa !41
  %.not1537 = icmp ult ptr %i.pu, %.371165
  br i1 %.not1537, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pw = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1538 = icmp eq i32 %i.pw, 0
  br i1 %.not1538, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.px = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dv:                                            ; preds = %bb.dt
  %i.py = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.pz = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.dw

bb.dw:                                            ; preds = %bb.ds, %bb.dv
  %.381227 = phi ptr [ %i.py, %bb.dv ], [ %i.pu, %bb.ds ] ; 2 uses
  %.381166 = phi ptr [ %i.pz, %bb.dv ], [ %.371165, %bb.ds ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.381227, i64 1 ; 2 uses
  %i.qb = load i8, ptr %.381227, align 1, !tbaa !41
  %i.qc = zext i8 %i.qb to i32
  %i.qd = shl nuw nsw i32 %i.qc, 8
  %i.qe = zext i8 %i.pv to i32
  %i.qf = or disjoint i32 %i.qd, %i.qe
  %i.qg = sub nsw i32 16, %.2010653334
  %i.qh = shl nuw i32 %i.qf, %i.qg
  %i.qi = or i32 %i.qh, %.2010873333              ; 2 uses
  %i.qj = add nuw nsw i32 %.2010653334, 16        ; 2 uses
  %i.qk = icmp slt i32 %.2010653334, -13
  br i1 %i.qk, label %.lr.ph3335, label %._crit_edge3336

._crit_edge3336:                                  ; preds = %bb.dw, %.preheader1887
  %.361225.lcssa = phi ptr [ %.3512243341, %.preheader1887 ], [ %i.qa, %bb.dw ] ; 2 uses
  %.361164.lcssa = phi ptr [ %.3511633342, %.preheader1887 ], [ %.381166, %bb.dw ] ; 2 uses
  %.201087.lcssa = phi i32 [ %.1910863343, %.preheader1887 ], [ %i.qi, %bb.dw ] ; 2 uses
  %.201065.lcssa = phi i32 [ %.1910643344, %.preheader1887 ], [ %i.qj, %bb.dw ]
  %i.ql = lshr i32 %.201087.lcssa, 29
  %i.qm = shl i32 %.201087.lcssa, 3               ; 2 uses
  %i.qn = add nsw i32 %.201065.lcssa, -3          ; 2 uses
  %i.qo = trunc nuw nsw i32 %i.ql to i8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.dx, label %.preheader1887

bb.dx:                                            ; preds = %._crit_edge3336
  %i.qq = tail call fastcc i32 @make_decode_table(i32 noundef 8, i32 noundef 7, ptr noundef %i.bs, ptr noundef %i.bt)
  %.not1476 = icmp eq i32 %i.qq, 0
  br i1 %.not1476, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dz:                                            ; preds = %bb.dx, %._crit_edge3322
  %.401229 = phi ptr [ %.361225.lcssa, %bb.dx ], [ %.311220.lcssa, %._crit_edge3322 ]
  %.401168 = phi ptr [ %.361164.lcssa, %bb.dx ], [ %.311159.lcssa, %._crit_edge3322 ]
  %.221089 = phi i32 [ %i.qm, %bb.dx ], [ %i.pk, %._crit_edge3322 ]
  %.22 = phi i32 [ %i.qn, %bb.dx ], [ %i.pl, %._crit_edge3322 ]
  store ptr %.401229, ptr %i.ab, align 8, !tbaa !42
  store ptr %.401168, ptr %i.ac, align 8, !tbaa !43
  store i32 %.221089, ptr %i.ad, align 8, !tbaa !44
  store i32 %.22, ptr %i.ae, align 4, !tbaa !45
  %i.qr = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bg, i32 noundef 0, i32 noundef 256)
  %.not1477 = icmp eq i32 %i.qr, 0
  br i1 %.not1477, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qs = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.eb:                                            ; preds = %bb.dz
  %i.qt = load i32, ptr %i.bu, align 8, !tbaa !33
  %i.qu = add i32 %i.qt, 256
  %i.qv = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bg, i32 noundef 256, i32 noundef %i.qu)
  %.not1478 = icmp eq i32 %i.qv, 0
  br i1 %.not1478, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qw = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ed:                                            ; preds = %bb.eb
  %i.qx = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !71
  %i.qy = load <2 x i32>, ptr %i.ad, align 8, !tbaa !32
  %i.qz = tail call fastcc i32 @make_decode_table(i32 noundef 2576, i32 noundef 12, ptr noundef %i.bg, ptr noundef %i.bv)
  %.not1479 = icmp eq i32 %i.qz, 0
  br i1 %.not1479, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ef:                                            ; preds = %bb.ed
  %i.ra = load i8, ptr %i.bw, align 8, !tbaa !41
  %.not1480 = icmp eq i8 %i.ra, 0
  br i1 %.not1480, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i8 1, ptr %i.br, align 4, !tbaa !72
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  store <2 x ptr> %i.qx, ptr %i.ab, align 8, !tbaa !71
  store <2 x i32> %i.qy, ptr %i.ad, align 8, !tbaa !32
  %i.rb = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bh, i32 noundef 0, i32 noundef 249)
  %.not1481 = icmp eq i32 %i.rb, 0
  br i1 %.not1481, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rc = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ej:                                            ; preds = %bb.eh
  %i.rd = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.re = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %i.rf = load i32, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.rg = load i32, ptr %i.ae, align 4, !tbaa !45 ; 2 uses
  store i8 0, ptr %i.bx, align 2, !tbaa !73
  %i.rh = tail call fastcc i32 @make_decode_table(i32 noundef 250, i32 noundef 12, ptr noundef %i.bh, ptr noundef %i.by)
  %.not1482 = icmp eq i32 %i.rh, 0
  br i1 %.not1482, label %bb.gk, label %.preheader1890

.preheader1890.1:                                 ; preds = %.preheader1890
  %i.ri = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 1
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !41
  %.not1534.1 = icmp eq i8 %i.rk, 0
  br i1 %.not1534.1, label %.preheader1890.2, label %bb.el

.preheader1890.2:                                 ; preds = %.preheader1890.1
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 2
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !41
  %.not1534.2 = icmp eq i8 %i.rn, 0
  br i1 %.not1534.2, label %.preheader1890.3, label %bb.el

.preheader1890.3:                                 ; preds = %.preheader1890.2
  %i.ro = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 3
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !41
  %.not1534.3 = icmp eq i8 %i.rq, 0
  br i1 %.not1534.3, label %.preheader1890.4, label %bb.el

.preheader1890.4:                                 ; preds = %.preheader1890.3
  %i.rr = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !41
  %.not1534.4 = icmp eq i8 %i.rt, 0
  br i1 %.not1534.4, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %.preheader1890.4
  %indvars.iv.next3644.4 = add nuw nsw i64 %indvars.iv3643, 5 ; 2 uses
  %exitcond3646.not.4 = icmp eq i64 %indvars.iv.next3644.4, 250
  br i1 %exitcond3646.not.4, label %bb.em, label %.preheader1890

.preheader1890:                                   ; preds = %bb.ej, %bb.ek
  %indvars.iv3643 = phi i64 [ %indvars.iv.next3644.4, %bb.ek ], [ 0, %bb.ej ] ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !41
  %.not1534 = icmp eq i8 %i.rv, 0
  br i1 %.not1534, label %.preheader1890.1, label %bb.el

bb.el:                                            ; preds = %.preheader1890.4, %.preheader1890.3, %.preheader1890.2, %.preheader1890.1, %.preheader1890
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.em:                                            ; preds = %bb.ek
  store i8 1, ptr %i.bx, align 2, !tbaa !73
  br label %bb.gk

bb.en:                                            ; preds = %._crit_edge3322
  store i8 1, ptr %i.br, align 4, !tbaa !72
  %or.cond28 = icmp eq i32 %.171062.lcssa, 8
  br i1 %or.cond28, label %bb.ep, label %bb.ex

bb.eo:                                            ; preds = %bb.ew, %bb.et
  %.431232 = phi ptr [ %i.se, %bb.ew ], [ %i.sb, %bb.et ]
  %.431171 = phi ptr [ %i.sf, %bb.ew ], [ %.421170, %bb.et ]
  %i.rw = getelementptr inbounds nuw i8, ptr %.431232, i64 1
  br label %bb.ex

bb.ep:                                            ; preds = %bb.en
  %.not1470 = icmp ult ptr %.311220.lcssa, %.311159.lcssa
  br i1 %.not1470, label %bb.et, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.rx = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1471 = icmp eq i32 %i.rx, 0
  br i1 %.not1471, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ry = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.es:                                            ; preds = %bb.eq
  %i.rz = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.sa = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ep
  %.421231 = phi ptr [ %i.rz, %bb.es ], [ %.311220.lcssa, %bb.ep ]
  %.421170 = phi ptr [ %i.sa, %bb.es ], [ %.311159.lcssa, %bb.ep ] ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.421231, i64 1 ; 2 uses
  %.not1472 = icmp ult ptr %i.sb, %.421170
  br i1 %.not1472, label %bb.eo, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.sc = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1473 = icmp eq i32 %i.sc, 0
  br i1 %.not1473, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.sd = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ew:                                            ; preds = %bb.eu
  %i.se = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.sf = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.eo

bb.ex:                                            ; preds = %bb.eo, %bb.en
  %.451234 = phi ptr [ %i.rw, %bb.eo ], [ %.311220.lcssa, %bb.en ] ; 2 uses
  %.451173 = phi ptr [ %.431171, %bb.eo ], [ %.311159.lcssa, %bb.en ] ; 2 uses
end_hunk_1
