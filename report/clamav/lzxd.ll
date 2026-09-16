Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/lzxd?download=true
inline.NumInlined: 32
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lzxd_decompress:bb.a
  br label %.thread

bb.ai:                                            ; preds = %bb.ag, %bb.ae
  %.0.i1563 = phi i32 [ 2, %bb.ag ], [ %i.es, %bb.ae ]
  %i.ez = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ez, ptr %i.ab, align 8, !tbaa !42
  %i.fa = zext nneg i32 %.0.i1563 to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fa ; 2 uses
  store ptr %i.fb, ptr %i.ac, align 8, !tbaa !43
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph3267
  %.71196 = phi ptr [ %i.ez, %bb.ai ], [ %.611953263, %.lr.ph3267 ] ; 2 uses
  %.71135 = phi ptr [ %i.fb, %bb.ai ], [ %.611343264, %.lr.ph3267 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.71196, i64 1 ; 2 uses
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
  %i.hw = sub nuw nsw i32 16, %.610513276
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
  %i.ie = icmp slt i32 %.61051.lcssa, 32
  br i1 %i.ie, label %.lr.ph3288, label %._crit_edge3289

.lr.ph3288:                                       ; preds = %._crit_edge3278, %bb.bm
  %.810533286 = phi i32 [ %i.iy, %bb.bm ], [ %i.id, %._crit_edge3278 ] ; 3 uses
  %.810753285 = phi i32 [ %i.ix, %bb.bm ], [ %i.ic, %._crit_edge3278 ]
  %.1411423284 = phi ptr [ %.161144, %bb.bm ], [ %.101138.lcssa, %._crit_edge3278 ] ; 2 uses
  %.1412033283 = phi ptr [ %i.ip, %bb.bm ], [ %.101199.lcssa, %._crit_edge3278 ] ; 2 uses
  %.not1441 = icmp ult ptr %.1412033283, %.1411423284
  br i1 %.not1441, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph3288
  %i.if = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1442 = icmp eq i32 %i.if, 0
  br i1 %.not1442, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ig = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.bh:                                            ; preds = %bb.bf
  %i.ih = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ii = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.lr.ph3288
  %.151204 = phi ptr [ %i.ih, %bb.bh ], [ %.1412033283, %.lr.ph3288 ] ; 2 uses
  %.151143 = phi ptr [ %i.ii, %bb.bh ], [ %.1411423284, %.lr.ph3288 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.151204, i64 1 ; 2 uses
  %i.ik = load i8, ptr %.151204, align 1, !tbaa !41
  %.not1443 = icmp ult ptr %i.ij, %.151143
  br i1 %.not1443, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.il = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1444 = icmp eq i32 %i.il, 0
  br i1 %.not1444, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.im = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.bl:                                            ; preds = %bb.bj
  %i.in = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.io = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bi, %bb.bl
  %.161205 = phi ptr [ %i.in, %bb.bl ], [ %i.ij, %bb.bi ] ; 2 uses
  %.161144 = phi ptr [ %i.io, %bb.bl ], [ %.151143, %bb.bi ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.161205, i64 1 ; 2 uses
  %i.iq = load i8, ptr %.161205, align 1, !tbaa !41
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = zext i8 %i.ik to i32
  %i.iu = or disjoint i32 %i.is, %i.it
  %i.iv = sub nuw nsw i32 16, %.810533286
  %i.iw = shl nuw i32 %i.iu, %i.iv
  %i.ix = or i32 %i.iw, %.810753285               ; 2 uses
  %i.iy = add nuw nsw i32 %.810533286, 16         ; 2 uses
  %i.iz = icmp slt i32 %.810533286, 0
  br i1 %i.iz, label %.lr.ph3288, label %._crit_edge3289

._crit_edge3289:                                  ; preds = %bb.bm, %._crit_edge3278
  %.141203.lcssa = phi ptr [ %.101199.lcssa, %._crit_edge3278 ], [ %i.ip, %bb.bm ]
  %.141142.lcssa = phi ptr [ %.101138.lcssa, %._crit_edge3278 ], [ %.161144, %bb.bm ]
  %.81075.lcssa = phi i32 [ %i.ic, %._crit_edge3278 ], [ %i.ix, %bb.bm ] ; 2 uses
  %.81053.lcssa = phi i32 [ %i.id, %._crit_edge3278 ], [ %i.iy, %bb.bm ]
  %i.ja = lshr i32 %.81075.lcssa, 16
  %i.jb = shl i32 %.81075.lcssa, 16
  %i.jc = add nsw i32 %.81053.lcssa, -16
  %i.jd = or disjoint i32 %i.ja, %i.ib
  br label %bb.bn

bb.bn:                                            ; preds = %._crit_edge3289, %._crit_edge3268
  %.181207 = phi ptr [ %.141203.lcssa, %._crit_edge3289 ], [ %.61195.lcssa, %._crit_edge3268 ]
  %.181146 = phi ptr [ %.141142.lcssa, %._crit_edge3289 ], [ %.61134.lcssa, %._crit_edge3268 ]
  %.101077 = phi i32 [ %i.jb, %._crit_edge3289 ], [ %i.gf, %._crit_edge3268 ]
  %.101055 = phi i32 [ %i.jc, %._crit_edge3289 ], [ %i.gg, %._crit_edge3268 ]
  %i.je = phi i32 [ %i.jd, %._crit_edge3289 ], [ 0, %._crit_edge3268 ]
  store i32 %i.je, ptr %i.bn, align 8, !tbaa !30
  store i8 1, ptr %i.be, align 2, !tbaa !68
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.ac
  %.191208 = phi ptr [ %.51194, %bb.ac ], [ %.181207, %bb.bn ] ; 2 uses
  %.191147 = phi ptr [ %.51133, %bb.ac ], [ %.181146, %bb.bn ] ; 2 uses
  %.111078 = phi i32 [ %.31070, %bb.ac ], [ %.101077, %bb.bn ] ; 2 uses
  %.111056 = phi i32 [ %.31048, %bb.ac ], [ %.101055, %bb.bn ] ; 2 uses
  %i.jf = load i64, ptr %i.bo, align 8, !tbaa !22 ; 2 uses
  %.not1453 = icmp eq i64 %i.jf, 0
  br i1 %.not1453, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jg = load i64, ptr %i.al, align 8, !tbaa !21
  %i.jh = sub nsw i64 %i.jf, %i.jg
  %spec.select15551874 = tail call i64 @llvm.smin.i64(i64 %i.jh, i64 32768)
  %spec.select1555 = trunc i64 %spec.select15551874 to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.01021 = phi i32 [ 32768, %bb.bo ], [ %spec.select1555, %bb.bp ] ; 7 uses
  %i.ji = load i32, ptr %i.bp, align 8, !tbaa !27 ; 2 uses
  %i.jj = sub i32 %.01021, %.010153526
  %i.jk = add i32 %i.jj, %i.ji                    ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  br i1 %i.jl, label %.lr.ph3506, label %._crit_edge3507

.lr.ph3506:                                       ; preds = %bb.bq, %bb.mp
  %.09873504 = phi i32 [ %i.ut, %bb.mp ], [ %i.jk, %bb.bq ] ; 2 uses
  %.29903503 = phi i32 [ %.8996, %bb.mp ], [ %.1989, %bb.bq ] ; 3 uses
  %.29993502 = phi i32 [ %.81005, %bb.mp ], [ %.1998, %bb.bq ] ; 3 uses
  %.210083501 = phi i32 [ %.81014, %bb.mp ], [ %.11007, %bb.bq ] ; 3 uses
  %.110163500 = phi i32 [ %.51020, %bb.mp ], [ %.010153526, %bb.bq ] ; 4 uses
  %.1210573499 = phi i32 [ %.56, %bb.mp ], [ %.111056, %bb.bq ] ; 4 uses
  %.1210793498 = phi i32 [ %.561123, %bb.mp ], [ %.111078, %bb.bq ] ; 3 uses
  %.2011483497 = phi ptr [ %.101, %bb.mp ], [ %.191147, %bb.bq ] ; 5 uses
  %.2012093496 = phi ptr [ %.1011290, %bb.mp ], [ %.191208, %bb.bq ] ; 5 uses
  %i.jm = load i32, ptr %i.bd, align 4, !tbaa !40
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %bb.br, label %bb.gk

bb.br:                                            ; preds = %.lr.ph3506
  %i.jo = load i8, ptr %i.bf, align 1, !tbaa !69
  %i.jp = icmp eq i8 %i.jo, 3
  br i1 %i.jp, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.jq = load i32, ptr %i.bq, align 8, !tbaa !70
  %i.jr = and i32 %i.jq, 1
  %.not1467 = icmp eq i32 %i.jr, 0
  br i1 %.not1467, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not1468 = icmp ult ptr %.2012093496, %.2011483497
  br i1 %.not1468, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.js = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1469 = icmp eq i32 %i.js, 0
  br i1 %.not1469, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jt = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.bw:                                            ; preds = %bb.bu
  %i.ju = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.jv = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.211210 = phi ptr [ %i.ju, %bb.bw ], [ %.2012093496, %bb.bt ]
  %.211149 = phi ptr [ %i.jv, %bb.bw ], [ %.2011483497, %bb.bt ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.211210, i64 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bs, %bb.br
  %.221211 = phi ptr [ %i.jw, %bb.bx ], [ %.2012093496, %bb.bs ], [ %.2012093496, %bb.br ] ; 2 uses
  %.221150 = phi ptr [ %.211149, %bb.bx ], [ %.2011483497, %bb.bs ], [ %.2011483497, %bb.br ] ; 2 uses
  %i.jx = icmp slt i32 %.1210573499, 3
  br i1 %i.jx, label %.lr.ph3299, label %._crit_edge3300

.lr.ph3299:                                       ; preds = %bb.by, %bb.cm
  %.1310583297 = phi i32 [ %i.lp, %bb.cm ], [ %.1210573499, %bb.by ] ; 3 uses
  %.1310803296 = phi i32 [ %i.lo, %bb.cm ], [ %.1210793498, %bb.by ]
  %.2311513295 = phi ptr [ %.251153, %bb.cm ], [ %.221150, %bb.by ] ; 2 uses
  %.2312123294 = phi ptr [ %i.lg, %bb.cm ], [ %.221211, %bb.by ] ; 2 uses
  %.not1547 = icmp ult ptr %.2312123294, %.2311513295
  br i1 %.not1547, label %bb.cf, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph3299
  %i.jy = load ptr, ptr %0, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !46
  %i.kb = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.kc = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.kd = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.ke = tail call i32 %i.ka(ptr noundef %i.kb, ptr noundef %i.kc, i32 noundef %i.kd) #5, !inline_history !47 ; 3 uses
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kg = icmp eq i32 %i.ke, 0
  br i1 %i.kg, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.kh = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1581 = icmp eq i8 %i.kh, 0
  br i1 %.not.i1581, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ki = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store i8 0, ptr %i.kj, align 1, !tbaa !41
  %i.kk = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.kk, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb, %bb.bz
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ce:                                            ; preds = %bb.cc, %bb.ca
  %.0.i1579 = phi i32 [ 2, %bb.cc ], [ %i.ke, %bb.ca ]
  %i.kl = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.kl, ptr %i.ab, align 8, !tbaa !42
  %i.km = zext nneg i32 %.0.i1579 to i64
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.km ; 2 uses
  store ptr %i.kn, ptr %i.ac, align 8, !tbaa !43
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph3299
  %.241213 = phi ptr [ %i.kl, %bb.ce ], [ %.2312123294, %.lr.ph3299 ] ; 2 uses
  %.241152 = phi ptr [ %i.kn, %bb.ce ], [ %.2311513295, %.lr.ph3299 ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.241213, i64 1 ; 2 uses
  %i.kp = load i8, ptr %.241213, align 1, !tbaa !41
  %.not1549 = icmp ult ptr %i.ko, %.241152
  br i1 %.not1549, label %bb.cm, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kq = load ptr, ptr %0, align 8, !tbaa !18
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !46
  %i.kt = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.ku = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.kv = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.kw = tail call i32 %i.ks(ptr noundef %i.kt, ptr noundef %i.ku, i32 noundef %i.kv) #5, !inline_history !47 ; 3 uses
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ky = icmp eq i32 %i.kw, 0
  br i1 %i.ky, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.kz = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1585 = icmp eq i8 %i.kz, 0
  br i1 %.not.i1585, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.la = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 1
  store i8 0, ptr %i.lb, align 1, !tbaa !41
  %i.lc = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.lc, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci, %bb.cg
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.cl:                                            ; preds = %bb.cj, %bb.ch
  %.0.i1583 = phi i32 [ 2, %bb.cj ], [ %i.kw, %bb.ch ]
  %i.ld = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ld, ptr %i.ab, align 8, !tbaa !42
  %i.le = zext nneg i32 %.0.i1583 to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.le ; 2 uses
  store ptr %i.lf, ptr %i.ac, align 8, !tbaa !43
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cf, %bb.cl
  %.251214 = phi ptr [ %i.ld, %bb.cl ], [ %i.ko, %bb.cf ] ; 2 uses
  %.251153 = phi ptr [ %i.lf, %bb.cl ], [ %.241152, %bb.cf ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.251214, i64 1 ; 2 uses
  %i.lh = load i8, ptr %.251214, align 1, !tbaa !41
  %i.li = zext i8 %i.lh to i32
  %i.lj = shl nuw nsw i32 %i.li, 8
  %i.lk = zext i8 %i.kp to i32
  %i.ll = or disjoint i32 %i.lj, %i.lk
  %i.lm = sub i32 16, %.1310583297
  %i.ln = shl i32 %i.ll, %i.lm
  %i.lo = or i32 %i.ln, %.1310803296              ; 2 uses
  %i.lp = add nsw i32 %.1310583297, 16            ; 2 uses
  %i.lq = icmp slt i32 %.1310583297, -13
  br i1 %i.lq, label %.lr.ph3299, label %._crit_edge3300

._crit_edge3300:                                  ; preds = %bb.cm, %bb.by
  %.231212.lcssa = phi ptr [ %.221211, %bb.by ], [ %i.lg, %bb.cm ] ; 2 uses
  %.231151.lcssa = phi ptr [ %.221150, %bb.by ], [ %.251153, %bb.cm ] ; 2 uses
  %.131080.lcssa = phi i32 [ %.1210793498, %bb.by ], [ %i.lo, %bb.cm ] ; 2 uses
  %.131058.lcssa = phi i32 [ %.1210573499, %bb.by ], [ %i.lp, %bb.cm ] ; 2 uses
  %i.lr = lshr i32 %.131080.lcssa, 29
  %i.ls = trunc nuw nsw i32 %i.lr to i8
  store i8 %i.ls, ptr %i.bf, align 1, !tbaa !69
  %i.lt = shl i32 %.131080.lcssa, 3               ; 2 uses
  %i.lu = add nsw i32 %.131058.lcssa, -3          ; 2 uses
  %i.lv = icmp samesign ult i32 %.131058.lcssa, 19
  br i1 %i.lv, label %.lr.ph3310, label %._crit_edge3311

.lr.ph3310:                                       ; preds = %._crit_edge3300, %bb.da
  %.1510603308 = phi i32 [ %i.nn, %bb.da ], [ %i.lu, %._crit_edge3300 ] ; 3 uses
  %.1510823307 = phi i32 [ %i.nm, %bb.da ], [ %i.lt, %._crit_edge3300 ]
  %.2711553306 = phi ptr [ %.291157, %bb.da ], [ %.231151.lcssa, %._crit_edge3300 ] ; 2 uses
  %.2712163305 = phi ptr [ %i.ne, %bb.da ], [ %.231212.lcssa, %._crit_edge3300 ] ; 2 uses
  %.not1543 = icmp ult ptr %.2712163305, %.2711553306
  br i1 %.not1543, label %bb.ct, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph3310
  %i.lw = load ptr, ptr %0, align 8, !tbaa !18
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !46
  %i.lz = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.ma = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.mb = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.mc = tail call i32 %i.ly(ptr noundef %i.lz, ptr noundef %i.ma, i32 noundef %i.mb) #5, !inline_history !47 ; 3 uses
  %i.md = icmp slt i32 %i.mc, 0
  br i1 %i.md, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.me = icmp eq i32 %i.mc, 0
  br i1 %i.me, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.mf = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1589 = icmp eq i8 %i.mf, 0
  br i1 %.not.i1589, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.mg = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  store i8 0, ptr %i.mh, align 1, !tbaa !41
  %i.mi = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.mi, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp, %bb.cn
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.cs:                                            ; preds = %bb.cq, %bb.co
  %.0.i1587 = phi i32 [ 2, %bb.cq ], [ %i.mc, %bb.co ]
  %i.mj = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.mj, ptr %i.ab, align 8, !tbaa !42
  %i.mk = zext nneg i32 %.0.i1587 to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mk ; 2 uses
  store ptr %i.ml, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph3310
  %.281217 = phi ptr [ %i.mj, %bb.cs ], [ %.2712163305, %.lr.ph3310 ] ; 2 uses
  %.281156 = phi ptr [ %i.ml, %bb.cs ], [ %.2711553306, %.lr.ph3310 ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.281217, i64 1 ; 2 uses
  %i.mn = load i8, ptr %.281217, align 1, !tbaa !41
  %.not1545 = icmp ult ptr %i.mm, %.281156
  br i1 %.not1545, label %bb.da, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mo = load ptr, ptr %0, align 8, !tbaa !18
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !46
  %i.mr = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.ms = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.mt = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.mu = tail call i32 %i.mq(ptr noundef %i.mr, ptr noundef %i.ms, i32 noundef %i.mt) #5, !inline_history !47 ; 3 uses
  %i.mv = icmp slt i32 %i.mu, 0
  br i1 %i.mv, label %bb.cy, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mw = icmp eq i32 %i.mu, 0
  br i1 %i.mw, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.mx = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1593 = icmp eq i8 %i.mx, 0
  br i1 %.not.i1593, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.my = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  store i8 0, ptr %i.mz, align 1, !tbaa !41
  %i.na = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.na, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw, %bb.cu
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.cz:                                            ; preds = %bb.cx, %bb.cv
  %.0.i1591 = phi i32 [ 2, %bb.cx ], [ %i.mu, %bb.cv ]
  %i.nb = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.nb, ptr %i.ab, align 8, !tbaa !42
  %i.nc = zext nneg i32 %.0.i1591 to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc ; 2 uses
  store ptr %i.nd, ptr %i.ac, align 8, !tbaa !43
  br label %bb.da

bb.da:                                            ; preds = %bb.ct, %bb.cz
  %.291218 = phi ptr [ %i.nb, %bb.cz ], [ %i.mm, %bb.ct ] ; 2 uses
  %.291157 = phi ptr [ %i.nd, %bb.cz ], [ %.281156, %bb.ct ] ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %.291218, i64 1 ; 2 uses
  %i.nf = load i8, ptr %.291218, align 1, !tbaa !41
  %i.ng = zext i8 %i.nf to i32
  %i.nh = shl nuw nsw i32 %i.ng, 8
  %i.ni = zext i8 %i.mn to i32
  %i.nj = or disjoint i32 %i.nh, %i.ni
  %i.nk = sub nuw nsw i32 16, %.1510603308
  %i.nl = shl nuw i32 %i.nj, %i.nk
  %i.nm = or i32 %i.nl, %.1510823307              ; 2 uses
  %i.nn = add nuw nsw i32 %.1510603308, 16        ; 2 uses
  %i.no = icmp slt i32 %.1510603308, 0
  br i1 %i.no, label %.lr.ph3310, label %._crit_edge3311

._crit_edge3311:                                  ; preds = %bb.da, %._crit_edge3300
  %.271216.lcssa = phi ptr [ %.231212.lcssa, %._crit_edge3300 ], [ %i.ne, %bb.da ] ; 2 uses
  %.271155.lcssa = phi ptr [ %.231151.lcssa, %._crit_edge3300 ], [ %.291157, %bb.da ] ; 2 uses
  %.151082.lcssa = phi i32 [ %i.lt, %._crit_edge3300 ], [ %i.nm, %bb.da ] ; 2 uses
  %.151060.lcssa = phi i32 [ %i.lu, %._crit_edge3300 ], [ %i.nn, %bb.da ] ; 2 uses
  %i.np = shl i32 %.151082.lcssa, 16              ; 2 uses
  %i.nq = add nsw i32 %.151060.lcssa, -16         ; 2 uses
  %i.nr = icmp slt i32 %.151060.lcssa, 24
  br i1 %i.nr, label %.lr.ph3321, label %._crit_edge3322

.lr.ph3321:                                       ; preds = %._crit_edge3311, %bb.do
  %.1710623319 = phi i32 [ %i.pj, %bb.do ], [ %i.nq, %._crit_edge3311 ] ; 3 uses
  %.1710843318 = phi i32 [ %i.pi, %bb.do ], [ %i.np, %._crit_edge3311 ]
  %.3111593317 = phi ptr [ %.331161, %bb.do ], [ %.271155.lcssa, %._crit_edge3311 ] ; 2 uses
  %.3112203316 = phi ptr [ %i.pa, %bb.do ], [ %.271216.lcssa, %._crit_edge3311 ] ; 2 uses
  %.not1539 = icmp ult ptr %.3112203316, %.3111593317
  br i1 %.not1539, label %bb.dh, label %bb.db

bb.db:                                            ; preds = %.lr.ph3321
  %i.ns = load ptr, ptr %0, align 8, !tbaa !18
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !46
  %i.nv = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.nw = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.nx = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.ny = tail call i32 %i.nu(ptr noundef %i.nv, ptr noundef %i.nw, i32 noundef %i.nx) #5, !inline_history !47 ; 3 uses
  %i.nz = icmp slt i32 %i.ny, 0
  br i1 %i.nz, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.oa = icmp eq i32 %i.ny, 0
  br i1 %i.oa, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.ob = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1597 = icmp eq i8 %i.ob, 0
  br i1 %.not.i1597, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.oc = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 1
  store i8 0, ptr %i.od, align 1, !tbaa !41
  %i.oe = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.oe, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd, %bb.db
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dg:                                            ; preds = %bb.de, %bb.dc
  %.0.i1595 = phi i32 [ 2, %bb.de ], [ %i.ny, %bb.dc ]
  %i.of = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.of, ptr %i.ab, align 8, !tbaa !42
  %i.og = zext nneg i32 %.0.i1595 to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og ; 2 uses
  store ptr %i.oh, ptr %i.ac, align 8, !tbaa !43
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.lr.ph3321
  %.321221 = phi ptr [ %i.of, %bb.dg ], [ %.3112203316, %.lr.ph3321 ] ; 2 uses
  %.321160 = phi ptr [ %i.oh, %bb.dg ], [ %.3111593317, %.lr.ph3321 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.321221, i64 1 ; 2 uses
  %i.oj = load i8, ptr %.321221, align 1, !tbaa !41
  %.not1541 = icmp ult ptr %i.oi, %.321160
  br i1 %.not1541, label %bb.do, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ok = load ptr, ptr %0, align 8, !tbaa !18
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !46
  %i.on = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.oo = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.op = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.oq = tail call i32 %i.om(ptr noundef %i.on, ptr noundef %i.oo, i32 noundef %i.op) #5, !inline_history !47 ; 3 uses
  %i.or = icmp slt i32 %i.oq, 0
  br i1 %i.or, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.os = icmp eq i32 %i.oq, 0
  br i1 %i.os, label %bb.dk, label %bb.dn

bb.dk:                                            ; preds = %bb.dj
  %i.ot = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1601 = icmp eq i8 %i.ot, 0
  br i1 %.not.i1601, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ou = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store i8 0, ptr %i.ov, align 1, !tbaa !41
  %i.ow = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.ow, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk, %bb.di
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dn:                                            ; preds = %bb.dl, %bb.dj
  %.0.i1599 = phi i32 [ 2, %bb.dl ], [ %i.oq, %bb.dj ]
  %i.ox = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.ox, ptr %i.ab, align 8, !tbaa !42
  %i.oy = zext nneg i32 %.0.i1599 to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.oy ; 2 uses
  store ptr %i.oz, ptr %i.ac, align 8, !tbaa !43
  br label %bb.do

bb.do:                                            ; preds = %bb.dh, %bb.dn
  %.331222 = phi ptr [ %i.ox, %bb.dn ], [ %i.oi, %bb.dh ] ; 2 uses
  %.331161 = phi ptr [ %i.oz, %bb.dn ], [ %.321160, %bb.dh ] ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.331222, i64 1 ; 2 uses
  %i.pb = load i8, ptr %.331222, align 1, !tbaa !41
  %i.pc = zext i8 %i.pb to i32
  %i.pd = shl nuw nsw i32 %i.pc, 8
  %i.pe = zext i8 %i.oj to i32
  %i.pf = or disjoint i32 %i.pd, %i.pe
  %i.pg = sub nuw nsw i32 16, %.1710623319
  %i.ph = shl nuw i32 %i.pf, %i.pg
  %i.pi = or i32 %i.ph, %.1710843318              ; 2 uses
  %i.pj = add nuw nsw i32 %.1710623319, 16        ; 2 uses
  %i.pk = icmp slt i32 %.1710623319, -8
  br i1 %i.pk, label %.lr.ph3321, label %._crit_edge3322

._crit_edge3322:                                  ; preds = %bb.do, %._crit_edge3311
  %.311220.lcssa = phi ptr [ %.271216.lcssa, %._crit_edge3311 ], [ %i.pa, %bb.do ] ; 5 uses
  %.311159.lcssa = phi ptr [ %.271155.lcssa, %._crit_edge3311 ], [ %.331161, %bb.do ] ; 5 uses
  %.171084.lcssa = phi i32 [ %i.np, %._crit_edge3311 ], [ %i.pi, %bb.do ] ; 2 uses
  %.171062.lcssa = phi i32 [ %i.nq, %._crit_edge3311 ], [ %i.pj, %bb.do ] ; 2 uses
  %i.pl = lshr i32 %.171084.lcssa, 24
  %i.pm = shl i32 %.171084.lcssa, 8               ; 2 uses
  %i.pn = add nsw i32 %.171062.lcssa, -8          ; 2 uses
  %i.po = lshr i32 %.151082.lcssa, 8
  %i.pp = and i32 %i.po, 16776960
  %i.pq = or disjoint i32 %i.pl, %i.pp            ; 2 uses
  store i32 %i.pq, ptr %i.bq, align 8, !tbaa !70
  store i32 %i.pq, ptr %i.bd, align 4, !tbaa !40
  %i.pr = load i8, ptr %i.bf, align 1, !tbaa !69
  switch i8 %i.pr, label %bb.gj [
    i8 2, label %.preheader1887
    i8 1, label %bb.dz
    i8 3, label %bb.en
  ]

.preheader1887:                                   ; preds = %._crit_edge3322, %._crit_edge3336
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge3336 ], [ 0, %._crit_edge3322 ] ; 2 uses
  %.1910643344 = phi i32 [ %i.qq, %._crit_edge3336 ], [ %i.pn, %._crit_edge3322 ] ; 3 uses
  %.1910863343 = phi i32 [ %i.qp, %._crit_edge3336 ], [ %i.pm, %._crit_edge3322 ] ; 2 uses
  %.3511633342 = phi ptr [ %.361164.lcssa, %._crit_edge3336 ], [ %.311159.lcssa, %._crit_edge3322 ] ; 2 uses
  %.3512243341 = phi ptr [ %.361225.lcssa, %._crit_edge3336 ], [ %.311220.lcssa, %._crit_edge3322 ] ; 2 uses
  %i.ps = icmp slt i32 %.1910643344, 3
  br i1 %i.ps, label %.lr.ph3335, label %._crit_edge3336

.lr.ph3335:                                       ; preds = %.preheader1887, %bb.dw
  %.2010653334 = phi i32 [ %i.qm, %bb.dw ], [ %.1910643344, %.preheader1887 ] ; 3 uses
  %.2010873333 = phi i32 [ %i.ql, %bb.dw ], [ %.1910863343, %.preheader1887 ]
  %.3611643332 = phi ptr [ %.381166, %bb.dw ], [ %.3511633342, %.preheader1887 ] ; 2 uses
  %.3612253331 = phi ptr [ %i.qd, %bb.dw ], [ %.3512243341, %.preheader1887 ] ; 2 uses
  %.not1535 = icmp ult ptr %.3612253331, %.3611643332
  br i1 %.not1535, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph3335
  %i.pt = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1536 = icmp eq i32 %i.pt, 0
  br i1 %.not1536, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pu = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dr:                                            ; preds = %bb.dp
  %i.pv = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.pw = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.lr.ph3335
  %.371226 = phi ptr [ %i.pv, %bb.dr ], [ %.3612253331, %.lr.ph3335 ] ; 2 uses
  %.371165 = phi ptr [ %i.pw, %bb.dr ], [ %.3611643332, %.lr.ph3335 ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.371226, i64 1 ; 2 uses
  %i.py = load i8, ptr %.371226, align 1, !tbaa !41
  %.not1537 = icmp ult ptr %i.px, %.371165
  br i1 %.not1537, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pz = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1538 = icmp eq i32 %i.pz, 0
  br i1 %.not1538, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.qa = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dv:                                            ; preds = %bb.dt
  %i.qb = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.qc = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.dw

bb.dw:                                            ; preds = %bb.ds, %bb.dv
  %.381227 = phi ptr [ %i.qb, %bb.dv ], [ %i.px, %bb.ds ] ; 2 uses
  %.381166 = phi ptr [ %i.qc, %bb.dv ], [ %.371165, %bb.ds ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.381227, i64 1 ; 2 uses
  %i.qe = load i8, ptr %.381227, align 1, !tbaa !41
  %i.qf = zext i8 %i.qe to i32
  %i.qg = shl nuw nsw i32 %i.qf, 8
  %i.qh = zext i8 %i.py to i32
  %i.qi = or disjoint i32 %i.qg, %i.qh
  %i.qj = sub i32 16, %.2010653334
  %i.qk = shl nuw i32 %i.qi, %i.qj
  %i.ql = or i32 %i.qk, %.2010873333              ; 2 uses
  %i.qm = add nuw nsw i32 %.2010653334, 16        ; 2 uses
  %i.qn = icmp slt i32 %.2010653334, -13
  br i1 %i.qn, label %.lr.ph3335, label %._crit_edge3336

._crit_edge3336:                                  ; preds = %bb.dw, %.preheader1887
  %.361225.lcssa = phi ptr [ %.3512243341, %.preheader1887 ], [ %i.qd, %bb.dw ] ; 2 uses
  %.361164.lcssa = phi ptr [ %.3511633342, %.preheader1887 ], [ %.381166, %bb.dw ] ; 2 uses
  %.201087.lcssa = phi i32 [ %.1910863343, %.preheader1887 ], [ %i.ql, %bb.dw ] ; 2 uses
  %.201065.lcssa = phi i32 [ %.1910643344, %.preheader1887 ], [ %i.qm, %bb.dw ]
  %i.qo = lshr i32 %.201087.lcssa, 29
  %i.qp = shl i32 %.201087.lcssa, 3               ; 2 uses
  %i.qq = add nsw i32 %.201065.lcssa, -3          ; 2 uses
  %i.qr = trunc nuw nsw i32 %i.qo to i8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.dx, label %.preheader1887

bb.dx:                                            ; preds = %._crit_edge3336
  %i.qt = tail call fastcc i32 @make_decode_table(i32 noundef 8, i32 noundef 7, ptr noundef %i.bs, ptr noundef %i.bt)
  %.not1476 = icmp eq i32 %i.qt, 0
  br i1 %.not1476, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.dz:                                            ; preds = %bb.dx, %._crit_edge3322
  %.401229 = phi ptr [ %.361225.lcssa, %bb.dx ], [ %.311220.lcssa, %._crit_edge3322 ]
  %.401168 = phi ptr [ %.361164.lcssa, %bb.dx ], [ %.311159.lcssa, %._crit_edge3322 ]
  %.221089 = phi i32 [ %i.qp, %bb.dx ], [ %i.pm, %._crit_edge3322 ]
  %.22 = phi i32 [ %i.qq, %bb.dx ], [ %i.pn, %._crit_edge3322 ]
  store ptr %.401229, ptr %i.ab, align 8, !tbaa !42
  store ptr %.401168, ptr %i.ac, align 8, !tbaa !43
  store i32 %.221089, ptr %i.ad, align 8, !tbaa !44
  store i32 %.22, ptr %i.ae, align 4, !tbaa !45
  %i.qu = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bg, i32 noundef 0, i32 noundef 256)
  %.not1477 = icmp eq i32 %i.qu, 0
  br i1 %.not1477, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.qv = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.eb:                                            ; preds = %bb.dz
  %i.qw = load i32, ptr %i.bu, align 8, !tbaa !33
  %i.qx = add i32 %i.qw, 256
  %i.qy = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bg, i32 noundef 256, i32 noundef %i.qx)
  %.not1478 = icmp eq i32 %i.qy, 0
  br i1 %.not1478, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qz = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ed:                                            ; preds = %bb.eb
  %i.ra = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !71
  %i.rb = load <2 x i32>, ptr %i.ad, align 8, !tbaa !32
  %i.rc = tail call fastcc i32 @make_decode_table(i32 noundef 2576, i32 noundef 12, ptr noundef %i.bg, ptr noundef %i.bv)
  %.not1479 = icmp eq i32 %i.rc, 0
  br i1 %.not1479, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ef:                                            ; preds = %bb.ed
  %i.rd = load i8, ptr %i.bw, align 8, !tbaa !41
  %.not1480 = icmp eq i8 %i.rd, 0
  br i1 %.not1480, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i8 1, ptr %i.br, align 4, !tbaa !72
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  store <2 x ptr> %i.ra, ptr %i.ab, align 8, !tbaa !71
  store <2 x i32> %i.rb, ptr %i.ad, align 8, !tbaa !32
  %i.re = tail call fastcc i32 @lzxd_read_lens(ptr noundef %0, ptr noundef %i.bh, i32 noundef 0, i32 noundef 249)
  %.not1481 = icmp eq i32 %i.re, 0
  br i1 %.not1481, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rf = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ej:                                            ; preds = %bb.eh
  %i.rg = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %i.rh = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 2 uses
  %i.ri = load i32, ptr %i.ad, align 8, !tbaa !44 ; 2 uses
  %i.rj = load i32, ptr %i.ae, align 4, !tbaa !45 ; 2 uses
  store i8 0, ptr %i.bx, align 2, !tbaa !73
  %i.rk = tail call fastcc i32 @make_decode_table(i32 noundef 250, i32 noundef 12, ptr noundef %i.bh, ptr noundef %i.by)
  %.not1482 = icmp eq i32 %i.rk, 0
  br i1 %.not1482, label %bb.gk, label %.preheader1890

.preheader1890.1:                                 ; preds = %.preheader1890
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !41
  %.not1534.1 = icmp eq i8 %i.rn, 0
  br i1 %.not1534.1, label %.preheader1890.2, label %bb.el

.preheader1890.2:                                 ; preds = %.preheader1890.1
  %i.ro = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv3643
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 2
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !41
  %.not1534.2 = icmp eq i8 %i.rq, 0
end_hunk_0
begin_hunk_1_@lzxd_decompress:bb.a
  br label %.thread

bb.jp:                                            ; preds = %bb.jn, %bb.jl
  %.0.i1627 = phi i32 [ 2, %bb.jn ], [ %i.awy, %bb.jl ]
  %i.axf = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.axf, ptr %i.ab, align 8, !tbaa !42
  %i.axg = zext nneg i32 %.0.i1627 to i64
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.axg ; 2 uses
  store ptr %i.axh, ptr %i.ac, align 8, !tbaa !43
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %.lr.ph3412
  %.751264 = phi ptr [ %i.axf, %bb.jp ], [ %.7412633408, %.lr.ph3412 ] ; 2 uses
  %.75 = phi ptr [ %i.axh, %bb.jp ], [ %.743409, %.lr.ph3412 ] ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %.751264, i64 1 ; 2 uses
  %i.axj = load i8, ptr %.751264, align 1, !tbaa !41
  %.not1516 = icmp ult ptr %i.axi, %.75
  br i1 %.not1516, label %bb.jx, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.axk = load ptr, ptr %0, align 8, !tbaa !18
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 16
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !46
  %i.axn = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.axo = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.axp = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.axq = tail call i32 %i.axm(ptr noundef %i.axn, ptr noundef %i.axo, i32 noundef %i.axp) #5, !inline_history !47 ; 3 uses
  %i.axr = icmp slt i32 %i.axq, 0
  br i1 %i.axr, label %bb.jv, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.axs = icmp eq i32 %i.axq, 0
  br i1 %i.axs, label %bb.jt, label %bb.jw

bb.jt:                                            ; preds = %bb.js
  %i.axt = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1633 = icmp eq i8 %i.axt, 0
  br i1 %.not.i1633, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.axu = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 1
  store i8 0, ptr %i.axv, align 1, !tbaa !41
  %i.axw = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.axw, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.jw

bb.jv:                                            ; preds = %bb.jt, %bb.jr
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.jw:                                            ; preds = %bb.ju, %bb.js
  %.0.i1631 = phi i32 [ 2, %bb.ju ], [ %i.axq, %bb.js ]
  %i.axx = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.axx, ptr %i.ab, align 8, !tbaa !42
  %i.axy = zext nneg i32 %.0.i1631 to i64
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axx, i64 %i.axy ; 2 uses
  store ptr %i.axz, ptr %i.ac, align 8, !tbaa !43
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jq, %bb.jw
  %.761265 = phi ptr [ %i.axx, %bb.jw ], [ %i.axi, %bb.jq ] ; 2 uses
  %.76 = phi ptr [ %i.axz, %bb.jw ], [ %.75, %bb.jq ] ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.761265, i64 1 ; 2 uses
  %i.ayb = load i8, ptr %.761265, align 1, !tbaa !41
  %i.ayc = zext i8 %i.ayb to i32
  %i.ayd = shl nuw nsw i32 %i.ayc, 8
  %i.aye = zext i8 %i.axj to i32
  %i.ayf = or disjoint i32 %i.ayd, %i.aye
  %i.ayg = sub i32 16, %.413411
  %i.ayh = shl i32 %i.ayf, %i.ayg
  %i.ayi = or i32 %i.ayh, %.4111083410            ; 2 uses
  %i.ayj = add nsw i32 %.413411, 16               ; 2 uses
  %i.ayk = icmp slt i32 %.413411, -13
  br i1 %i.ayk, label %.lr.ph3412, label %._crit_edge3413

._crit_edge3413:                                  ; preds = %bb.jx, %.preheader
  %.741263.lcssa = phi ptr [ %.731262, %.preheader ], [ %i.aya, %bb.jx ] ; 8 uses
  %.74.lcssa = phi ptr [ %.73, %.preheader ], [ %.76, %bb.jx ] ; 8 uses
  %.411108.lcssa = phi i32 [ %.401107, %.preheader ], [ %i.ayi, %bb.jx ] ; 6 uses
  %.41.lcssa = phi i32 [ %.40, %.preheader ], [ %i.ayj, %bb.jx ] ; 7 uses
  %i.ayl = icmp sgt i32 %.411108.lcssa, -1
  br i1 %i.ayl, label %bb.jy, label %bb.kn

bb.jy:                                            ; preds = %._crit_edge3413
  %i.aym = shl nuw i32 %.411108.lcssa, 1          ; 2 uses
  %i.ayn = add nsw i32 %.41.lcssa, -1             ; 2 uses
  %i.ayo = icmp samesign ult i32 %.41.lcssa, 9
  br i1 %i.ayo, label %.lr.ph3456, label %._crit_edge3457

.lr.ph3456:                                       ; preds = %bb.jy, %bb.km
  %.433454 = phi i32 [ %i.bag, %bb.km ], [ %i.ayn, %bb.jy ] ; 3 uses
  %.4311103453 = phi i32 [ %i.baf, %bb.km ], [ %i.aym, %bb.jy ]
  %.783452 = phi ptr [ %.80, %bb.km ], [ %.74.lcssa, %bb.jy ] ; 2 uses
  %.7812673451 = phi ptr [ %i.azx, %bb.km ], [ %.741263.lcssa, %bb.jy ] ; 2 uses
  %.not1510 = icmp ult ptr %.7812673451, %.783452
  br i1 %.not1510, label %bb.kf, label %bb.jz

bb.jz:                                            ; preds = %.lr.ph3456
  %i.ayp = load ptr, ptr %0, align 8, !tbaa !18
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayp, i64 16
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !46
  %i.ays = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.ayt = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.ayu = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.ayv = tail call i32 %i.ayr(ptr noundef %i.ays, ptr noundef %i.ayt, i32 noundef %i.ayu) #5, !inline_history !47 ; 3 uses
  %i.ayw = icmp slt i32 %i.ayv, 0
  br i1 %i.ayw, label %bb.kd, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.ayx = icmp eq i32 %i.ayv, 0
  br i1 %i.ayx, label %bb.kb, label %bb.ke

bb.kb:                                            ; preds = %bb.ka
  %i.ayy = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1637 = icmp eq i8 %i.ayy, 0
  br i1 %.not.i1637, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.ayz = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 1
  store i8 0, ptr %i.aza, align 1, !tbaa !41
  %i.azb = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.azb, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb, %bb.jz
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ke:                                            ; preds = %bb.kc, %bb.ka
  %.0.i1635 = phi i32 [ 2, %bb.kc ], [ %i.ayv, %bb.ka ]
  %i.azc = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.azc, ptr %i.ab, align 8, !tbaa !42
  %i.azd = zext nneg i32 %.0.i1635 to i64
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azc, i64 %i.azd ; 2 uses
  store ptr %i.aze, ptr %i.ac, align 8, !tbaa !43
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %.lr.ph3456
  %.791268 = phi ptr [ %i.azc, %bb.ke ], [ %.7812673451, %.lr.ph3456 ] ; 2 uses
  %.79 = phi ptr [ %i.aze, %bb.ke ], [ %.783452, %.lr.ph3456 ] ; 2 uses
  %i.azf = getelementptr inbounds nuw i8, ptr %.791268, i64 1 ; 2 uses
  %i.azg = load i8, ptr %.791268, align 1, !tbaa !41
  %.not1512 = icmp ult ptr %i.azf, %.79
  br i1 %.not1512, label %bb.km, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.azh = load ptr, ptr %0, align 8, !tbaa !18
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 16
  %i.azj = load ptr, ptr %i.azi, align 8, !tbaa !46
  %i.azk = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.azl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.azm = load i32, ptr %i.bl, align 8, !tbaa !23
  %i.azn = tail call i32 %i.azj(ptr noundef %i.azk, ptr noundef %i.azl, i32 noundef %i.azm) #5, !inline_history !47 ; 3 uses
  %i.azo = icmp slt i32 %i.azn, 0
  br i1 %i.azo, label %bb.kk, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.azp = icmp eq i32 %i.azn, 0
  br i1 %i.azp, label %bb.ki, label %bb.kl

bb.ki:                                            ; preds = %bb.kh
  %i.azq = load i8, ptr %i.bm, align 1, !tbaa !48
  %.not.i1641 = icmp eq i8 %i.azq, 0
  br i1 %.not.i1641, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.azr = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 1
  store i8 0, ptr %i.azs, align 1, !tbaa !41
  %i.azt = load ptr, ptr %i.bk, align 8, !tbaa !16
  store i8 0, ptr %i.azt, align 1, !tbaa !41
  store i8 1, ptr %i.bm, align 1, !tbaa !48
  br label %bb.kl

bb.kk:                                            ; preds = %bb.ki, %bb.kg
  store i32 3, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.kl:                                            ; preds = %bb.kj, %bb.kh
  %.0.i1639 = phi i32 [ 2, %bb.kj ], [ %i.azn, %bb.kh ]
  %i.azu = load ptr, ptr %i.bk, align 8, !tbaa !16 ; 3 uses
  store ptr %i.azu, ptr %i.ab, align 8, !tbaa !42
  %i.azv = zext nneg i32 %.0.i1639 to i64
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azu, i64 %i.azv ; 2 uses
  store ptr %i.azw, ptr %i.ac, align 8, !tbaa !43
  br label %bb.km

bb.km:                                            ; preds = %bb.kf, %bb.kl
  %.801269 = phi ptr [ %i.azu, %bb.kl ], [ %i.azf, %bb.kf ] ; 2 uses
  %.80 = phi ptr [ %i.azw, %bb.kl ], [ %.79, %bb.kf ] ; 2 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %.801269, i64 1 ; 2 uses
  %i.azy = load i8, ptr %.801269, align 1, !tbaa !41
  %i.azz = zext i8 %i.azy to i32
  %i.baa = shl nuw nsw i32 %i.azz, 8
  %i.bab = zext i8 %i.azg to i32
  %i.bac = or disjoint i32 %i.baa, %i.bab
  %i.bad = sub nuw nsw i32 16, %.433454
  %i.bae = shl nuw nsw i32 %i.bac, %i.bad
  %i.baf = or i32 %i.bae, %.4311103453            ; 2 uses
  %i.bag = add nuw nsw i32 %.433454, 16           ; 2 uses
  %i.bah = icmp slt i32 %.433454, -8
  br i1 %i.bah, label %.lr.ph3456, label %._crit_edge3457

._crit_edge3457:                                  ; preds = %bb.km, %bb.jy
  %.781267.lcssa = phi ptr [ %.741263.lcssa, %bb.jy ], [ %i.azx, %bb.km ]
  %.78.lcssa = phi ptr [ %.74.lcssa, %bb.jy ], [ %.80, %bb.km ]
  %.431110.lcssa = phi i32 [ %i.aym, %bb.jy ], [ %i.baf, %bb.km ] ; 2 uses
  %.43.lcssa = phi i32 [ %i.ayn, %bb.jy ], [ %i.bag, %bb.km ]
  %i.bai = lshr i32 %.431110.lcssa, 24
  %i.baj = shl i32 %.431110.lcssa, 8
  %i.bak = add nsw i32 %.43.lcssa, -8
  br label %bb.lq

bb.kn:                                            ; preds = %._crit_edge3413
  %i.bal = icmp samesign ult i32 %.411108.lcssa, -1073741824
  br i1 %i.bal, label %bb.ko, label %bb.kx

bb.ko:                                            ; preds = %bb.kn
  %i.bam = shl i32 %.411108.lcssa, 2              ; 2 uses
  %i.ban = add nsw i32 %.41.lcssa, -2             ; 2 uses
  %i.bao = icmp samesign ult i32 %.41.lcssa, 12
  br i1 %i.bao, label %.lr.ph3445, label %._crit_edge3446

.lr.ph3445:                                       ; preds = %bb.ko, %bb.kw
  %.453443 = phi i32 [ %i.bbi, %bb.kw ], [ %i.ban, %bb.ko ] ; 3 uses
  %.4511123442 = phi i32 [ %i.bbh, %bb.kw ], [ %i.bam, %bb.ko ]
  %.823441 = phi ptr [ %.84, %bb.kw ], [ %.74.lcssa, %bb.ko ] ; 2 uses
  %.8212713440 = phi ptr [ %i.baz, %bb.kw ], [ %.741263.lcssa, %bb.ko ] ; 2 uses
  %.not1506 = icmp ult ptr %.8212713440, %.823441
  br i1 %.not1506, label %bb.ks, label %bb.kp

bb.kp:                                            ; preds = %.lr.ph3445
  %i.bap = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1507 = icmp eq i32 %i.bap, 0
  br i1 %.not1507, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.baq = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.kr:                                            ; preds = %bb.kp
  %i.bar = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bas = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %.lr.ph3445
  %.831272 = phi ptr [ %i.bar, %bb.kr ], [ %.8212713440, %.lr.ph3445 ] ; 2 uses
  %.83 = phi ptr [ %i.bas, %bb.kr ], [ %.823441, %.lr.ph3445 ] ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %.831272, i64 1 ; 2 uses
  %i.bau = load i8, ptr %.831272, align 1, !tbaa !41
  %.not1508 = icmp ult ptr %i.bat, %.83
  br i1 %.not1508, label %bb.kw, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.bav = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1509 = icmp eq i32 %i.bav, 0
  br i1 %.not1509, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.baw = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.kv:                                            ; preds = %bb.kt
  %i.bax = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bay = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.kw

bb.kw:                                            ; preds = %bb.ks, %bb.kv
  %.841273 = phi ptr [ %i.bax, %bb.kv ], [ %i.bat, %bb.ks ] ; 2 uses
  %.84 = phi ptr [ %i.bay, %bb.kv ], [ %.83, %bb.ks ] ; 2 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %.841273, i64 1 ; 2 uses
  %i.bba = load i8, ptr %.841273, align 1, !tbaa !41
  %i.bbb = zext i8 %i.bba to i32
  %i.bbc = shl nuw nsw i32 %i.bbb, 8
  %i.bbd = zext i8 %i.bau to i32
  %i.bbe = or disjoint i32 %i.bbc, %i.bbd
  %i.bbf = sub nuw nsw i32 16, %.453443
  %i.bbg = shl nuw nsw i32 %i.bbe, %i.bbf
  %i.bbh = or i32 %i.bbg, %.4511123442            ; 2 uses
  %i.bbi = add nuw nsw i32 %.453443, 16           ; 2 uses
  %i.bbj = icmp slt i32 %.453443, -6
  br i1 %i.bbj, label %.lr.ph3445, label %._crit_edge3446

._crit_edge3446:                                  ; preds = %bb.kw, %bb.ko
  %.821271.lcssa = phi ptr [ %.741263.lcssa, %bb.ko ], [ %i.baz, %bb.kw ]
  %.82.lcssa = phi ptr [ %.74.lcssa, %bb.ko ], [ %.84, %bb.kw ]
  %.451112.lcssa = phi i32 [ %i.bam, %bb.ko ], [ %i.bbh, %bb.kw ] ; 2 uses
  %.45.lcssa = phi i32 [ %i.ban, %bb.ko ], [ %i.bbi, %bb.kw ]
  %i.bbk = lshr i32 %.451112.lcssa, 22
  %i.bbl = shl i32 %.451112.lcssa, 10
  %i.bbm = add nsw i32 %.45.lcssa, -10
  %i.bbn = add nuw nsw i32 %i.bbk, 256
  br label %bb.lq

bb.kx:                                            ; preds = %bb.kn
  %i.bbo = icmp samesign ult i32 %.411108.lcssa, -536870912
  %i.bbp = shl i32 %.411108.lcssa, 3              ; 4 uses
  %i.bbq = add nsw i32 %.41.lcssa, -3             ; 4 uses
  br i1 %i.bbo, label %bb.ky, label %bb.lh

bb.ky:                                            ; preds = %bb.kx
  %i.bbr = icmp samesign ult i32 %.41.lcssa, 15
  br i1 %i.bbr, label %.lr.ph3434, label %._crit_edge3435

.lr.ph3434:                                       ; preds = %bb.ky, %bb.lg
  %.473432 = phi i32 [ %i.bcl, %bb.lg ], [ %i.bbq, %bb.ky ] ; 3 uses
  %.4711143431 = phi i32 [ %i.bck, %bb.lg ], [ %i.bbp, %bb.ky ]
  %.863430 = phi ptr [ %.88, %bb.lg ], [ %.74.lcssa, %bb.ky ] ; 2 uses
  %.8612753429 = phi ptr [ %i.bcc, %bb.lg ], [ %.741263.lcssa, %bb.ky ] ; 2 uses
  %.not1502 = icmp ult ptr %.8612753429, %.863430
  br i1 %.not1502, label %bb.lc, label %bb.kz

bb.kz:                                            ; preds = %.lr.ph3434
  %i.bbs = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1503 = icmp eq i32 %i.bbs, 0
  br i1 %.not1503, label %bb.lb, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.bbt = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lb:                                            ; preds = %bb.kz
  %i.bbu = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bbv = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.lc

bb.lc:                                            ; preds = %bb.lb, %.lr.ph3434
  %.871276 = phi ptr [ %i.bbu, %bb.lb ], [ %.8612753429, %.lr.ph3434 ] ; 2 uses
  %.87 = phi ptr [ %i.bbv, %bb.lb ], [ %.863430, %.lr.ph3434 ] ; 2 uses
  %i.bbw = getelementptr inbounds nuw i8, ptr %.871276, i64 1 ; 2 uses
  %i.bbx = load i8, ptr %.871276, align 1, !tbaa !41
  %.not1504 = icmp ult ptr %i.bbw, %.87
  br i1 %.not1504, label %bb.lg, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.bby = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1505 = icmp eq i32 %i.bby, 0
  br i1 %.not1505, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bbz = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lf:                                            ; preds = %bb.ld
  %i.bca = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bcb = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lc, %bb.lf
  %.881277 = phi ptr [ %i.bca, %bb.lf ], [ %i.bbw, %bb.lc ] ; 2 uses
  %.88 = phi ptr [ %i.bcb, %bb.lf ], [ %.87, %bb.lc ] ; 2 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %.881277, i64 1 ; 2 uses
  %i.bcd = load i8, ptr %.881277, align 1, !tbaa !41
  %i.bce = zext i8 %i.bcd to i32
  %i.bcf = shl nuw nsw i32 %i.bce, 8
  %i.bcg = zext i8 %i.bbx to i32
  %i.bch = or disjoint i32 %i.bcf, %i.bcg
  %i.bci = sub nuw nsw i32 16, %.473432
  %i.bcj = shl nuw i32 %i.bch, %i.bci
  %i.bck = or i32 %i.bcj, %.4711143431            ; 2 uses
  %i.bcl = add nuw nsw i32 %.473432, 16           ; 2 uses
  %i.bcm = icmp slt i32 %.473432, -4
  br i1 %i.bcm, label %.lr.ph3434, label %._crit_edge3435

._crit_edge3435:                                  ; preds = %bb.lg, %bb.ky
  %.861275.lcssa = phi ptr [ %.741263.lcssa, %bb.ky ], [ %i.bcc, %bb.lg ]
  %.86.lcssa = phi ptr [ %.74.lcssa, %bb.ky ], [ %.88, %bb.lg ]
  %.471114.lcssa = phi i32 [ %i.bbp, %bb.ky ], [ %i.bck, %bb.lg ] ; 2 uses
  %.47.lcssa = phi i32 [ %i.bbq, %bb.ky ], [ %i.bcl, %bb.lg ]
  %i.bcn = lshr i32 %.471114.lcssa, 20
  %i.bco = shl i32 %.471114.lcssa, 12
  %i.bcp = add nsw i32 %.47.lcssa, -12
  %i.bcq = add nuw nsw i32 %i.bcn, 1280
  br label %bb.lq

bb.lh:                                            ; preds = %bb.kx
  %i.bcr = icmp samesign ult i32 %.41.lcssa, 18
  br i1 %i.bcr, label %.lr.ph3423, label %._crit_edge3424

.lr.ph3423:                                       ; preds = %bb.lh, %bb.lp
  %.493421 = phi i32 [ %i.bdl, %bb.lp ], [ %i.bbq, %bb.lh ] ; 3 uses
  %.4911163420 = phi i32 [ %i.bdk, %bb.lp ], [ %i.bbp, %bb.lh ]
  %.903419 = phi ptr [ %.92, %bb.lp ], [ %.74.lcssa, %bb.lh ] ; 2 uses
  %.9012793418 = phi ptr [ %i.bdc, %bb.lp ], [ %.741263.lcssa, %bb.lh ] ; 2 uses
  %.not1498 = icmp ult ptr %.9012793418, %.903419
  br i1 %.not1498, label %bb.ll, label %bb.li

bb.li:                                            ; preds = %.lr.ph3423
  %i.bcs = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1499 = icmp eq i32 %i.bcs, 0
  br i1 %.not1499, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.bct = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lk:                                            ; preds = %bb.li
  %i.bcu = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bcv = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %.lr.ph3423
  %.911280 = phi ptr [ %i.bcu, %bb.lk ], [ %.9012793418, %.lr.ph3423 ] ; 2 uses
  %.91 = phi ptr [ %i.bcv, %bb.lk ], [ %.903419, %.lr.ph3423 ] ; 2 uses
  %i.bcw = getelementptr inbounds nuw i8, ptr %.911280, i64 1 ; 2 uses
  %i.bcx = load i8, ptr %.911280, align 1, !tbaa !41
  %.not1500 = icmp ult ptr %i.bcw, %.91
  br i1 %.not1500, label %bb.lp, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bcy = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not1501 = icmp eq i32 %i.bcy, 0
  br i1 %.not1501, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.bcz = load i32, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lo:                                            ; preds = %bb.lm
  %i.bda = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.bdb = load ptr, ptr %i.ac, align 8, !tbaa !43
  br label %bb.lp

bb.lp:                                            ; preds = %bb.ll, %bb.lo
  %.921281 = phi ptr [ %i.bda, %bb.lo ], [ %i.bcw, %bb.ll ] ; 2 uses
  %.92 = phi ptr [ %i.bdb, %bb.lo ], [ %.91, %bb.ll ] ; 2 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %.921281, i64 1 ; 2 uses
  %i.bdd = load i8, ptr %.921281, align 1, !tbaa !41
  %i.bde = zext i8 %i.bdd to i32
  %i.bdf = shl nuw nsw i32 %i.bde, 8
  %i.bdg = zext i8 %i.bcx to i32
  %i.bdh = or disjoint i32 %i.bdf, %i.bdg
  %i.bdi = sub nuw nsw i32 16, %.493421
  %i.bdj = shl nuw i32 %i.bdh, %i.bdi
  %i.bdk = or i32 %i.bdj, %.4911163420            ; 2 uses
  %i.bdl = add nuw nsw i32 %.493421, 16           ; 2 uses
  %i.bdm = icmp slt i32 %.493421, -1
  br i1 %i.bdm, label %.lr.ph3423, label %._crit_edge3424

._crit_edge3424:                                  ; preds = %bb.lp, %bb.lh
  %.901279.lcssa = phi ptr [ %.741263.lcssa, %bb.lh ], [ %i.bdc, %bb.lp ]
  %.90.lcssa = phi ptr [ %.74.lcssa, %bb.lh ], [ %.92, %bb.lp ]
  %.491116.lcssa = phi i32 [ %i.bbp, %bb.lh ], [ %i.bdk, %bb.lp ] ; 2 uses
  %.49.lcssa = phi i32 [ %i.bbq, %bb.lh ], [ %i.bdl, %bb.lp ]
  %i.bdn = lshr i32 %.491116.lcssa, 17
  %i.bdo = shl i32 %.491116.lcssa, 15
  %i.bdp = add nsw i32 %.49.lcssa, -15
  br label %bb.lq

bb.lq:                                            ; preds = %._crit_edge3457, %._crit_edge3435, %._crit_edge3424, %._crit_edge3446
  %.941283 = phi ptr [ %.781267.lcssa, %._crit_edge3457 ], [ %.821271.lcssa, %._crit_edge3446 ], [ %.861275.lcssa, %._crit_edge3435 ], [ %.901279.lcssa, %._crit_edge3424 ]
  %.94 = phi ptr [ %.78.lcssa, %._crit_edge3457 ], [ %.82.lcssa, %._crit_edge3446 ], [ %.86.lcssa, %._crit_edge3435 ], [ %.90.lcssa, %._crit_edge3424 ]
  %.511118 = phi i32 [ %i.baj, %._crit_edge3457 ], [ %i.bbl, %._crit_edge3446 ], [ %i.bco, %._crit_edge3435 ], [ %i.bdo, %._crit_edge3424 ]
  %.51 = phi i32 [ %i.bak, %._crit_edge3457 ], [ %i.bbm, %._crit_edge3446 ], [ %i.bcp, %._crit_edge3435 ], [ %i.bdp, %._crit_edge3424 ]
  %.0961 = phi i32 [ %i.bai, %._crit_edge3457 ], [ %i.bbn, %._crit_edge3446 ], [ %i.bcq, %._crit_edge3435 ], [ %i.bdn, %._crit_edge3424 ]
  %i.bdq = add nuw nsw i32 %.0961, 257
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.jj, %bb.ji
  %.961285 = phi ptr [ %.941283, %bb.lq ], [ %.731262, %bb.jj ], [ %.731262, %bb.ji ]
  %.96 = phi ptr [ %.94, %bb.lq ], [ %.73, %bb.jj ], [ %.73, %bb.ji ]
  %.531120 = phi i32 [ %.511118, %bb.lq ], [ %.401107, %bb.jj ], [ %.401107, %bb.ji ]
  %.53 = phi i32 [ %.51, %bb.lq ], [ %.40, %bb.jj ], [ %.40, %bb.ji ]
  %.2965 = phi i32 [ %i.bdq, %bb.lq ], [ 257, %bb.jj ], [ %i.akn, %bb.ji ] ; 10 uses
  %i.bdr = add i32 %.2965, %.210173482            ; 2 uses
  %i.bds = load i32, ptr %i.bz, align 8, !tbaa !24 ; 3 uses
  %i.bdt = icmp ugt i32 %i.bdr, %i.bds
  br i1 %i.bdt, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %bb.lr
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.lt:                                            ; preds = %bb.lr
  %i.bdu = zext i32 %.210173482 to i64            ; 2 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bdu ; 13 uses
  %i.bdw = icmp ugt i32 %.2, %.210173482
  %i.bdx = zext i32 %.2 to i64                    ; 2 uses
  br i1 %i.bdw, label %bb.lu, label %iter.check4199

bb.lu:                                            ; preds = %bb.lt
  %i.bdy = load i64, ptr %i.al, align 8, !tbaa !21
  %i.bdz = icmp slt i64 %i.bdy, %i.bdx
  %i.bea = sub nuw i32 %.2, %.210173482           ; 12 uses
  br i1 %i.bdz, label %bb.lv, label %._crit_edge3648

bb.lv:                                            ; preds = %bb.lu
  %i.beb = load i32, ptr %i.ca, align 4, !tbaa !25
  %i.bec = icmp ugt i32 %i.bea, %i.beb
  br i1 %i.bec, label %bb.lw, label %._crit_edge3648

bb.lw:                                            ; preds = %bb.lv
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

._crit_edge3648:                                  ; preds = %bb.lu, %bb.lv
  %i.bed = icmp sgt i32 %i.bea, %i.bds
  br i1 %i.bed, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %._crit_edge3648
  store i32 11, ptr %i.c, align 4, !tbaa !31
  br label %.thread

bb.ly:                                            ; preds = %._crit_edge3648
  %i.bee = sub i32 %i.bds, %i.bea
  %i.bef = zext i32 %i.bee to i64                 ; 2 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bef ; 6 uses
  %i.beh = icmp slt i32 %i.bea, %.2965
  br i1 %i.beh, label %bb.lz, label %.loopexit1875

bb.lz:                                            ; preds = %bb.ly
  %i.bei = sub nsw i32 %.2965, %i.bea             ; 4 uses
  %i.bej = icmp sgt i32 %i.bea, 0
  br i1 %i.bej, label %iter.check4163, label %.loopexit1875

iter.check4163:                                   ; preds = %bb.lz
  %i.bek = zext nneg i32 %i.bea to i64            ; 5 uses
  %min.iters.check4146 = icmp ult i32 %i.bea, 4
  %i.bel = sub nsw i64 %i.bef, %i.bdu
  %diff.check4145 = icmp ugt i64 %i.bel, -32
  %or.cond4216 = select i1 %min.iters.check4146, i1 true, i1 %diff.check4145
  br i1 %or.cond4216, label %.lr.ph3471.preheader, label %vector.main.loop.iter.check4147

vector.main.loop.iter.check4147:                  ; preds = %iter.check4163
  %min.iters.check4148 = icmp ult i32 %i.bea, 32
  br i1 %min.iters.check4148, label %vec.epilog.ph4167, label %vector.ph4149

vector.ph4149:                                    ; preds = %vector.main.loop.iter.check4147
  %i.bem = and i64 %i.bek, 28
  %n.vec4150 = and i64 %i.bek, 2147483616         ; 6 uses
  %i.ben = trunc nuw nsw i64 %n.vec4150 to i32
  %i.beo = sub nsw i32 %i.bea, %i.ben
  %i.bep = getelementptr i8, ptr %i.bdv, i64 %n.vec4150 ; 2 uses
  %i.beq = getelementptr i8, ptr %i.beg, i64 %n.vec4150
  br label %vector.body4151

vector.body4151:                                  ; preds = %vector.body4151, %vector.ph4149
  %index4152 = phi i64 [ 0, %vector.ph4149 ], [ %index.next4157, %vector.body4151 ] ; 3 uses
  %next.gep4153 = getelementptr i8, ptr %i.bdv, i64 %index4152 ; 2 uses
  %next.gep4154 = getelementptr i8, ptr %i.beg, i64 %index4152 ; 2 uses
  %i.ber = getelementptr i8, ptr %next.gep4154, i64 16
  %wide.load4155 = load <16 x i8>, ptr %next.gep4154, align 1, !tbaa !41
  %wide.load4156 = load <16 x i8>, ptr %i.ber, align 1, !tbaa !41
  %i.bes = getelementptr i8, ptr %next.gep4153, i64 16
  store <16 x i8> %wide.load4155, ptr %next.gep4153, align 1, !tbaa !41
  store <16 x i8> %wide.load4156, ptr %i.bes, align 1, !tbaa !41
  %index.next4157 = add nuw i64 %index4152, 32    ; 2 uses
  %i.bet = icmp eq i64 %index.next4157, %n.vec4150
  br i1 %i.bet, label %middle.block4158, label %vector.body4151, !llvm.loop !57

middle.block4158:                                 ; preds = %vector.body4151
  %cmp.n4159 = icmp eq i64 %n.vec4150, %i.bek
  br i1 %cmp.n4159, label %.loopexit1875, label %vec.epilog.iter.check4165

vec.epilog.iter.check4165:                        ; preds = %middle.block4158
  %min.epilog.iters.check4166 = icmp eq i64 %i.bem, 0
  br i1 %min.epilog.iters.check4166, label %.lr.ph3471.preheader, label %vec.epilog.ph4167, !prof !53

vec.epilog.ph4167:                                ; preds = %vector.main.loop.iter.check4147, %vec.epilog.iter.check4165
  %vec.epilog.resume.val4160 = phi i64 [ %n.vec4150, %vec.epilog.iter.check4165 ], [ 0, %vector.main.loop.iter.check4147 ]
  %n.vec4168 = and i64 %i.bek, 2147483644         ; 5 uses
  %i.beu = trunc nuw nsw i64 %n.vec4168 to i32
  %i.bev = sub nsw i32 %i.bea, %i.beu
  %i.bew = getelementptr i8, ptr %i.bdv, i64 %n.vec4168 ; 2 uses
  %i.bex = getelementptr i8, ptr %i.beg, i64 %n.vec4168
  br label %vec.epilog.vector.body4169

vec.epilog.vector.body4169:                       ; preds = %vec.epilog.vector.body4169, %vec.epilog.ph4167
  %index4170 = phi i64 [ %vec.epilog.resume.val4160, %vec.epilog.ph4167 ], [ %index.next4174, %vec.epilog.vector.body4169 ] ; 3 uses
  %next.gep4171 = getelementptr i8, ptr %i.bdv, i64 %index4170
  %next.gep4172 = getelementptr i8, ptr %i.beg, i64 %index4170
  %wide.load4173 = load <4 x i8>, ptr %next.gep4172, align 1, !tbaa !41
  store <4 x i8> %wide.load4173, ptr %next.gep4171, align 1, !tbaa !41
  %index.next4174 = add nuw i64 %index4170, 4     ; 2 uses
  %i.bey = icmp eq i64 %index.next4174, %n.vec4168
  br i1 %i.bey, label %vec.epilog.middle.block4175, label %vec.epilog.vector.body4169, !llvm.loop !58

vec.epilog.middle.block4175:                      ; preds = %vec.epilog.vector.body4169
  %cmp.n4176 = icmp eq i64 %n.vec4168, %i.bek
  br i1 %cmp.n4176, label %.loopexit1875, label %.lr.ph3471.preheader

.lr.ph3471.preheader:                             ; preds = %iter.check4163, %vec.epilog.iter.check4165, %vec.epilog.middle.block4175
  %.19703469.ph = phi i32 [ %i.bea, %iter.check4163 ], [ %i.beo, %vec.epilog.iter.check4165 ], [ %i.bev, %vec.epilog.middle.block4175 ]
  %.110263468.ph = phi ptr [ %i.bdv, %iter.check4163 ], [ %i.bep, %vec.epilog.iter.check4165 ], [ %i.bew, %vec.epilog.middle.block4175 ]
  %.010323467.ph = phi ptr [ %i.beg, %iter.check4163 ], [ %i.beq, %vec.epilog.iter.check4165 ], [ %i.bex, %vec.epilog.middle.block4175 ]
  br label %.lr.ph3471

.lr.ph3471:                                       ; preds = %.lr.ph3471.preheader, %.lr.ph3471
  %.19703469 = phi i32 [ %i.bez, %.lr.ph3471 ], [ %.19703469.ph, %.lr.ph3471.preheader ] ; 2 uses
  %.110263468 = phi ptr [ %i.bfc, %.lr.ph3471 ], [ %.110263468.ph, %.lr.ph3471.preheader ] ; 2 uses
  %.010323467 = phi ptr [ %i.bfa, %.lr.ph3471 ], [ %.010323467.ph, %.lr.ph3471.preheader ] ; 2 uses
  %i.bez = add nsw i32 %.19703469, -1
  %i.bfa = getelementptr inbounds nuw i8, ptr %.010323467, i64 1
  %i.bfb = load i8, ptr %.010323467, align 1, !tbaa !41
  %i.bfc = getelementptr inbounds nuw i8, ptr %.110263468, i64 1 ; 2 uses
  store i8 %i.bfb, ptr %.110263468, align 1, !tbaa !41
  %i.bfd = icmp samesign ugt i32 %.19703469, 1
  br i1 %i.bfd, label %.lr.ph3471, label %.loopexit1875, !llvm.loop !59

.loopexit1875:                                    ; preds = %.lr.ph3471, %middle.block4158, %vec.epilog.middle.block4175, %bb.lz, %bb.ly
  %.11033 = phi ptr [ %i.beg, %bb.ly ], [ %i.ag, %bb.lz ], [ %i.ag, %middle.block4158 ], [ %i.ag, %vec.epilog.middle.block4175 ], [ %i.ag, %.lr.ph3471 ] ; 6 uses
  %.21027 = phi ptr [ %i.bdv, %bb.ly ], [ %i.bdv, %bb.lz ], [ %i.bep, %middle.block4158 ], [ %i.bew, %vec.epilog.middle.block4175 ], [ %i.bfc, %.lr.ph3471 ] ; 6 uses
  %.5976 = phi i32 [ %.2965, %bb.ly ], [ %i.bei, %bb.lz ], [ %i.bei, %middle.block4158 ], [ %i.bei, %vec.epilog.middle.block4175 ], [ %i.bei, %.lr.ph3471 ] ; 7 uses
  %i.bfe = icmp sgt i32 %.5976, 0
  br i1 %i.bfe, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.loopexit1875
  %.110334128 = ptrtoaddr ptr %.11033 to i64
  %.210274127 = ptrtoaddr ptr %.21027 to i64
  %i.bff = zext nneg i32 %.5976 to i64            ; 5 uses
  %min.iters.check = icmp ult i32 %.5976, 4
  %i.bfg = sub i64 %.110334128, %.210274127
  %diff.check = icmp ugt i64 %i.bfg, -32
  %or.cond4217 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond4217, label %.lr.ph3477.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4129 = icmp ult i32 %.5976, 32
  br i1 %min.iters.check4129, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bfh = and i64 %i.bff, 28
  %n.vec = and i64 %i.bff, 2147483616             ; 6 uses
  %i.bfi = trunc nuw nsw i64 %n.vec to i32
  %i.bfj = sub nsw i32 %.5976, %i.bfi
  %i.bfk = getelementptr i8, ptr %.21027, i64 %n.vec
  %i.bfl = getelementptr i8, ptr %.11033, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.21027, i64 %index ; 2 uses
  %next.gep4130 = getelementptr i8, ptr %.11033, i64 %index ; 2 uses
end_hunk_1
begin_hunk_2_@lzxd_read_lens:bb.a
  %.3237686.unr = phi i32 [ %.3237686.ph, %vec.epilog.scalar.ph980.preheader ], [ %i.qn, %vec.epilog.scalar.ph980.prol ]
  %i.qq = icmp ult i32 %i.ql, 3
  br i1 %i.qq, label %.loopexit.loopexit710, label %vec.epilog.scalar.ph980

vec.epilog.scalar.ph980:                          ; preds = %vec.epilog.scalar.ph980.prol.loopexit, %vec.epilog.scalar.ph980
  %.1232687 = phi i32 [ %i.ra, %vec.epilog.scalar.ph980 ], [ %.1232687.unr, %vec.epilog.scalar.ph980.prol.loopexit ]
  %.3237686 = phi i32 [ %i.rb, %vec.epilog.scalar.ph980 ], [ %.3237686.unr, %vec.epilog.scalar.ph980.prol.loopexit ] ; 5 uses
  %i.qr = add i32 %.3237686, 1
  %i.qs = zext i32 %.3237686 to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 %i.qs
  store i8 0, ptr %i.qt, align 1, !tbaa !41
  %i.qu = add i32 %.3237686, 2
  %i.qv = zext i32 %i.qr to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 %i.qv
  store i8 0, ptr %i.qw, align 1, !tbaa !41
  %i.qx = add i32 %.3237686, 3
  %i.qy = zext i32 %i.qu to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 %i.qy
  store i8 0, ptr %i.qz, align 1, !tbaa !41
  %i.ra = add nsw i32 %.1232687, -4               ; 2 uses
  %i.rb = add i32 %.3237686, 4                    ; 2 uses
  %i.rc = zext i32 %i.qx to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 %i.rc
  store i8 0, ptr %i.rd, align 1, !tbaa !41
  %.not356.3 = icmp eq i32 %i.ra, 0
  br i1 %.not356.3, label %.loopexit.loopexit710, label %vec.epilog.scalar.ph980, !llvm.loop !86

.lr.ph657:                                        ; preds = %.preheader464, %bb.bt
  %.10656 = phi i32 [ %i.sm, %bb.bt ], [ %i.ld, %.preheader464 ] ; 4 uses
  %.10262655 = phi i32 [ %i.sl, %bb.bt ], [ %i.lc, %.preheader464 ]
  %.18654 = phi ptr [ %.20, %bb.bt ], [ %.6273.lcssa, %.preheader464 ] ; 2 uses
  %.18300653 = phi ptr [ %i.sd, %bb.bt ], [ %.6288.lcssa, %.preheader464 ] ; 2 uses
  %.not352 = icmp ult ptr %.18300653, %.18654
  br i1 %.not352, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph657
  %i.re = load ptr, ptr %0, align 8, !tbaa !18
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !46
  %i.rh = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.ri = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.rj = load i32, ptr %i.k, align 8, !tbaa !23
  %i.rk = tail call i32 %i.rg(ptr noundef %i.rh, ptr noundef %i.ri, i32 noundef %i.rj) #5, !inline_history !47 ; 3 uses
  %i.rl = icmp slt i32 %i.rk, 0
  br i1 %i.rl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.rm, align 4, !tbaa !31
  br label %.thread

bb.bk:                                            ; preds = %bb.bi
  %i.rn = icmp eq i32 %i.rk, 0
  br i1 %i.rn, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.ro = load i8, ptr %i.l, align 1, !tbaa !48
  %.not.i397 = icmp eq i8 %i.ro, 0
  br i1 %.not.i397, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 3, ptr %i.rp, align 4, !tbaa !31
  br label %.thread

bb.bn:                                            ; preds = %bb.bl
  %i.rq = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 1
  store i8 0, ptr %i.rr, align 1, !tbaa !41
  %i.rs = load ptr, ptr %i.j, align 8, !tbaa !16
  store i8 0, ptr %i.rs, align 1, !tbaa !41
  store i8 1, ptr %i.l, align 1, !tbaa !48
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bk
  %.0.i395 = phi i32 [ 2, %bb.bn ], [ %i.rk, %bb.bk ]
  %i.rt = load ptr, ptr %i.j, align 8, !tbaa !16  ; 3 uses
  store ptr %i.rt, ptr %i.a, align 8, !tbaa !42
  %i.ru = zext nneg i32 %.0.i395 to i64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.ru ; 2 uses
  store ptr %i.rv, ptr %i.c, align 8, !tbaa !43
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %.lr.ph657
  %.19301 = phi ptr [ %i.rt, %bb.bo ], [ %.18300653, %.lr.ph657 ] ; 2 uses
  %.19 = phi ptr [ %i.rv, %bb.bo ], [ %.18654, %.lr.ph657 ] ; 2 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.19301, i64 1 ; 2 uses
  %i.rx = load i8, ptr %.19301, align 1, !tbaa !41
  %.not354 = icmp ult ptr %i.rw, %.19
  br i1 %.not354, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ry = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not355 = icmp eq i32 %i.ry, 0
  br i1 %.not355, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !31
  br label %.thread

bb.bs:                                            ; preds = %bb.bq
  %i.sb = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.sc = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bp, %bb.bs
  %.20302 = phi ptr [ %i.sb, %bb.bs ], [ %i.rw, %bb.bp ] ; 2 uses
  %.20 = phi ptr [ %i.sc, %bb.bs ], [ %.19, %bb.bp ] ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.20302, i64 1 ; 2 uses
  %i.se = load i8, ptr %.20302, align 1, !tbaa !41
  %i.sf = zext i8 %i.se to i32
  %i.sg = shl nuw nsw i32 %i.sf, 8
  %i.sh = zext i8 %i.rx to i32
  %i.si = or disjoint i32 %i.sg, %i.sh
  %i.sj = sub i32 16, %.10656
  %i.sk = shl i32 %i.si, %i.sj
  %i.sl = or i32 %i.sk, %.10262655                ; 3 uses
  %i.sm = add nsw i32 %.10656, 16
  %i.sn = icmp slt i32 %.10656, -15
  br i1 %i.sn, label %.lr.ph657, label %._crit_edge658.thread

._crit_edge658.thread:                            ; preds = %bb.bt
  %i.so = lshr i32 %i.sl, 31
  %i.sp = shl i32 %i.sl, 1
  %i.sq = add nsw i32 %.10656, 15
  %i.sr = or disjoint i32 %i.so, 4
  br label %.lr.ph668.preheader

._crit_edge658:                                   ; preds = %.preheader464
  %i.ss = lshr i32 %i.lc, 31
  %i.st = shl i32 %i.lc, 1                        ; 2 uses
  %i.su = add nsw i32 %i.ld, -1                   ; 2 uses
  %i.sv = or disjoint i32 %i.ss, 4                ; 2 uses
  %i.sw = icmp samesign ult i32 %i.ld, 17
  br i1 %i.sw, label %.lr.ph668.preheader, label %._crit_edge669

.lr.ph668.preheader:                              ; preds = %._crit_edge658.thread, %._crit_edge658
  %i.sx = phi i32 [ %i.sr, %._crit_edge658.thread ], [ %i.sv, %._crit_edge658 ]
  %i.sy = phi i32 [ %i.sq, %._crit_edge658.thread ], [ %i.su, %._crit_edge658 ]
  %i.sz = phi i32 [ %i.sp, %._crit_edge658.thread ], [ %i.st, %._crit_edge658 ]
  %.18.lcssa914 = phi ptr [ %.20, %._crit_edge658.thread ], [ %.6273.lcssa, %._crit_edge658 ]
  %.18300.lcssa913 = phi ptr [ %i.sd, %._crit_edge658.thread ], [ %.6288.lcssa, %._crit_edge658 ]
  br label %.lr.ph668

.lr.ph668:                                        ; preds = %.lr.ph668.preheader, %bb.cb
  %.12666 = phi i32 [ %i.tv, %bb.cb ], [ %i.sy, %.lr.ph668.preheader ] ; 3 uses
  %.12264665 = phi i32 [ %i.tu, %bb.cb ], [ %i.sz, %.lr.ph668.preheader ]
  %.22664 = phi ptr [ %.24, %bb.cb ], [ %.18.lcssa914, %.lr.ph668.preheader ] ; 2 uses
  %.22304663 = phi ptr [ %i.tm, %bb.cb ], [ %.18300.lcssa913, %.lr.ph668.preheader ] ; 2 uses
  %.not348 = icmp ult ptr %.22304663, %.22664
  br i1 %.not348, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph668
  %i.ta = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not349 = icmp eq i32 %i.ta, 0
  br i1 %.not349, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !31
  br label %.thread

bb.bw:                                            ; preds = %bb.bu
  %i.td = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.te = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.lr.ph668
  %.23305 = phi ptr [ %i.td, %bb.bw ], [ %.22304663, %.lr.ph668 ] ; 2 uses
  %.23 = phi ptr [ %i.te, %bb.bw ], [ %.22664, %.lr.ph668 ] ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.23305, i64 1 ; 2 uses
  %i.tg = load i8, ptr %.23305, align 1, !tbaa !41
  %.not350 = icmp ult ptr %i.tf, %.23
  br i1 %.not350, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.th = tail call fastcc i32 @read_input(ptr noundef %0)
  %.not351 = icmp eq i32 %i.th, 0
  br i1 %.not351, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !31
  br label %.thread

bb.ca:                                            ; preds = %bb.by
  %i.tk = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.tl = load ptr, ptr %i.c, align 8, !tbaa !43
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bx, %bb.ca
  %.24306 = phi ptr [ %i.tk, %bb.ca ], [ %i.tf, %bb.bx ] ; 2 uses
  %.24 = phi ptr [ %i.tl, %bb.ca ], [ %.23, %bb.bx ] ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.24306, i64 1 ; 2 uses
  %i.tn = load i8, ptr %.24306, align 1, !tbaa !41
  %i.to = zext i8 %i.tn to i32
  %i.tp = shl nuw nsw i32 %i.to, 8
  %i.tq = zext i8 %i.tg to i32
  %i.tr = or disjoint i32 %i.tp, %i.tq
  %i.ts = sub nuw nsw i32 16, %.12666
  %i.tt = shl nuw i32 %i.tr, %i.ts
  %i.tu = or i32 %i.tt, %.12264665                ; 2 uses
  %i.tv = add nuw nsw i32 %.12666, 16             ; 2 uses
  %i.tw = icmp slt i32 %.12666, 0
  br i1 %i.tw, label %.lr.ph668, label %._crit_edge669

._crit_edge669:                                   ; preds = %bb.cb, %._crit_edge658
  %i.tx = phi i32 [ %i.sv, %._crit_edge658 ], [ %i.sx, %bb.cb ] ; 10 uses
  %.22304.lcssa = phi ptr [ %.6288.lcssa, %._crit_edge658 ], [ %i.tm, %bb.cb ]
  %.22.lcssa = phi ptr [ %.6273.lcssa, %._crit_edge658 ], [ %.24, %bb.cb ]
  %.12264.lcssa = phi i32 [ %i.st, %._crit_edge658 ], [ %i.tu, %bb.cb ] ; 28 uses
  %.12.lcssa = phi i32 [ %i.su, %._crit_edge658 ], [ %i.tv, %bb.cb ]
  %i.ty = lshr i32 %.12264.lcssa, 26
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %i.tz
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !50 ; 3 uses
  %i.uc = icmp ugt i16 %i.ub, 19
  br i1 %i.uc, label %.preheader462.preheader, label %iter.check1005

.preheader462.preheader:                          ; preds = %._crit_edge669
  %i.ud = zext i16 %i.ub to i64
  %i.ue = lshr i32 %.12264.lcssa, 25
  %.lobit884 = and i32 %i.ue, 1
  %i.uf = zext nneg i32 %.lobit884 to i64
  %.idx346 = shl nuw nsw i64 %i.ud, 2
  %i.ug = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346
  %i.uh = getelementptr inbounds nuw [2 x i8], ptr %i.ug, i64 %i.uf
  %i.ui = load i16, ptr %i.uh, align 2, !tbaa !50 ; 3 uses
  %i.uj = icmp ugt i16 %i.ui, 19
  br i1 %i.uj, label %.preheader462.1, label %iter.check1005

bb.cc:                                            ; preds = %.preheader462.25
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 11, ptr %i.uk, align 4, !tbaa !31
  br label %.thread

.preheader462.1:                                  ; preds = %.preheader462.preheader
  %i.ul = zext i16 %i.ui to i64
  %i.um = lshr i32 %.12264.lcssa, 24
  %.lobit885 = and i32 %i.um, 1
  %i.un = zext nneg i32 %.lobit885 to i64
  %.idx346.1 = shl nuw nsw i64 %i.ul, 2
  %i.uo = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.1
  %i.up = getelementptr inbounds nuw [2 x i8], ptr %i.uo, i64 %i.un
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !50 ; 3 uses
  %i.ur = icmp ugt i16 %i.uq, 19
  br i1 %i.ur, label %.preheader462.2, label %iter.check1005

.preheader462.2:                                  ; preds = %.preheader462.1
  %i.us = zext i16 %i.uq to i64
  %i.ut = lshr i32 %.12264.lcssa, 23
  %.lobit886 = and i32 %i.ut, 1
  %i.uu = zext nneg i32 %.lobit886 to i64
  %.idx346.2 = shl nuw nsw i64 %i.us, 2
  %i.uv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.2
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.uv, i64 %i.uu
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !50 ; 3 uses
  %i.uy = icmp ugt i16 %i.ux, 19
  br i1 %i.uy, label %.preheader462.3, label %iter.check1005

.preheader462.3:                                  ; preds = %.preheader462.2
  %i.uz = zext i16 %i.ux to i64
  %i.va = lshr i32 %.12264.lcssa, 22
  %.lobit887 = and i32 %i.va, 1
  %i.vb = zext nneg i32 %.lobit887 to i64
  %.idx346.3 = shl nuw nsw i64 %i.uz, 2
  %i.vc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.3
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %i.vb
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !50 ; 3 uses
  %i.vf = icmp ugt i16 %i.ve, 19
  br i1 %i.vf, label %.preheader462.4, label %iter.check1005

.preheader462.4:                                  ; preds = %.preheader462.3
  %i.vg = zext i16 %i.ve to i64
  %i.vh = lshr i32 %.12264.lcssa, 21
  %.lobit888 = and i32 %i.vh, 1
  %i.vi = zext nneg i32 %.lobit888 to i64
  %.idx346.4 = shl nuw nsw i64 %i.vg, 2
  %i.vj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.4
  %i.vk = getelementptr inbounds nuw [2 x i8], ptr %i.vj, i64 %i.vi
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !50 ; 3 uses
  %i.vm = icmp ugt i16 %i.vl, 19
  br i1 %i.vm, label %.preheader462.5, label %iter.check1005

.preheader462.5:                                  ; preds = %.preheader462.4
  %i.vn = zext i16 %i.vl to i64
  %i.vo = lshr i32 %.12264.lcssa, 20
  %.lobit889 = and i32 %i.vo, 1
  %i.vp = zext nneg i32 %.lobit889 to i64
  %.idx346.5 = shl nuw nsw i64 %i.vn, 2
  %i.vq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.5
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.vq, i64 %i.vp
  %i.vs = load i16, ptr %i.vr, align 2, !tbaa !50 ; 3 uses
  %i.vt = icmp ugt i16 %i.vs, 19
  br i1 %i.vt, label %.preheader462.6, label %iter.check1005

.preheader462.6:                                  ; preds = %.preheader462.5
  %i.vu = zext i16 %i.vs to i64
  %i.vv = lshr i32 %.12264.lcssa, 19
  %.lobit890 = and i32 %i.vv, 1
  %i.vw = zext nneg i32 %.lobit890 to i64
  %.idx346.6 = shl nuw nsw i64 %i.vu, 2
  %i.vx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.6
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %i.vx, i64 %i.vw
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !50 ; 3 uses
  %i.wa = icmp ugt i16 %i.vz, 19
  br i1 %i.wa, label %.preheader462.7, label %iter.check1005

.preheader462.7:                                  ; preds = %.preheader462.6
  %i.wb = zext i16 %i.vz to i64
  %i.wc = lshr i32 %.12264.lcssa, 18
  %.lobit891 = and i32 %i.wc, 1
  %i.wd = zext nneg i32 %.lobit891 to i64
  %.idx346.7 = shl nuw nsw i64 %i.wb, 2
  %i.we = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.7
  %i.wf = getelementptr inbounds nuw [2 x i8], ptr %i.we, i64 %i.wd
  %i.wg = load i16, ptr %i.wf, align 2, !tbaa !50 ; 3 uses
  %i.wh = icmp ugt i16 %i.wg, 19
  br i1 %i.wh, label %.preheader462.8, label %iter.check1005

.preheader462.8:                                  ; preds = %.preheader462.7
  %i.wi = zext i16 %i.wg to i64
  %i.wj = lshr i32 %.12264.lcssa, 17
  %.lobit892 = and i32 %i.wj, 1
  %i.wk = zext nneg i32 %.lobit892 to i64
  %.idx346.8 = shl nuw nsw i64 %i.wi, 2
  %i.wl = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.8
  %i.wm = getelementptr inbounds nuw [2 x i8], ptr %i.wl, i64 %i.wk
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !50 ; 3 uses
  %i.wo = icmp ugt i16 %i.wn, 19
  br i1 %i.wo, label %.preheader462.9, label %iter.check1005

.preheader462.9:                                  ; preds = %.preheader462.8
  %i.wp = zext i16 %i.wn to i64
  %i.wq = lshr i32 %.12264.lcssa, 16
  %.lobit893 = and i32 %i.wq, 1
  %i.wr = zext nneg i32 %.lobit893 to i64
  %.idx346.9 = shl nuw nsw i64 %i.wp, 2
  %i.ws = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.9
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.ws, i64 %i.wr
  %i.wu = load i16, ptr %i.wt, align 2, !tbaa !50 ; 3 uses
  %i.wv = icmp ugt i16 %i.wu, 19
  br i1 %i.wv, label %.preheader462.10, label %iter.check1005

.preheader462.10:                                 ; preds = %.preheader462.9
  %i.ww = zext i16 %i.wu to i64
  %i.wx = lshr i32 %.12264.lcssa, 15
  %.lobit894 = and i32 %i.wx, 1
  %i.wy = zext nneg i32 %.lobit894 to i64
  %.idx346.10 = shl nuw nsw i64 %i.ww, 2
  %i.wz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.10
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.wz, i64 %i.wy
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !50 ; 3 uses
  %i.xc = icmp ugt i16 %i.xb, 19
  br i1 %i.xc, label %.preheader462.11, label %iter.check1005

.preheader462.11:                                 ; preds = %.preheader462.10
  %i.xd = zext i16 %i.xb to i64
  %i.xe = lshr i32 %.12264.lcssa, 14
  %.lobit895 = and i32 %i.xe, 1
  %i.xf = zext nneg i32 %.lobit895 to i64
  %.idx346.11 = shl nuw nsw i64 %i.xd, 2
  %i.xg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.11
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.xg, i64 %i.xf
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !50 ; 3 uses
  %i.xj = icmp ugt i16 %i.xi, 19
  br i1 %i.xj, label %.preheader462.12, label %iter.check1005

.preheader462.12:                                 ; preds = %.preheader462.11
  %i.xk = zext i16 %i.xi to i64
  %i.xl = lshr i32 %.12264.lcssa, 13
  %.lobit896 = and i32 %i.xl, 1
  %i.xm = zext nneg i32 %.lobit896 to i64
  %.idx346.12 = shl nuw nsw i64 %i.xk, 2
  %i.xn = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.12
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %i.xm
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !50 ; 3 uses
  %i.xq = icmp ugt i16 %i.xp, 19
  br i1 %i.xq, label %.preheader462.13, label %iter.check1005

.preheader462.13:                                 ; preds = %.preheader462.12
  %i.xr = zext i16 %i.xp to i64
  %i.xs = lshr i32 %.12264.lcssa, 12
  %.lobit897 = and i32 %i.xs, 1
  %i.xt = zext nneg i32 %.lobit897 to i64
  %.idx346.13 = shl nuw nsw i64 %i.xr, 2
  %i.xu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.13
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.xu, i64 %i.xt
  %i.xw = load i16, ptr %i.xv, align 2, !tbaa !50 ; 3 uses
  %i.xx = icmp ugt i16 %i.xw, 19
  br i1 %i.xx, label %.preheader462.14, label %iter.check1005

.preheader462.14:                                 ; preds = %.preheader462.13
  %i.xy = zext i16 %i.xw to i64
  %i.xz = lshr i32 %.12264.lcssa, 11
  %.lobit898 = and i32 %i.xz, 1
  %i.ya = zext nneg i32 %.lobit898 to i64
  %.idx346.14 = shl nuw nsw i64 %i.xy, 2
  %i.yb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx346.14
  %i.yc = getelementptr inbounds nuw [2 x i8], ptr %i.yb, i64 %i.ya
end_hunk_2
