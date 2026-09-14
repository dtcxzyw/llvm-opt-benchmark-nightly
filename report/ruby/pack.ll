Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/pack?download=true
inline.NumInlined: 148
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pack_pack:bb.a
  %spec.select = select i1 %i.ei, i64 %.0316, i64 %.0324.fr ; 16 uses
  switch i8 %i.bn, label %.loopexit [
    i8 97, label %bb.ah
    i8 65, label %bb.ah
    i8 90, label %bb.ah
    i8 98, label %bb.am
    i8 66, label %bb.at
    i8 104, label %bb.ba
    i8 72, label %bb.bh
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag, %bb.ag
  %.not383 = icmp slt i64 %.0316, %spec.select
  br i1 %.not383, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ej = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef %.0313, i64 noundef %spec.select) #12 ; 0 uses
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !15
  %i.en = icmp eq i8 %i.em, 42
  %i.eo = icmp eq i8 %i.bn, 90
  %or.cond = and i1 %i.eo, %i.en
  br i1 %or.cond, label %bb.aj, label %.loopexit

bb.aj:                                            ; preds = %bb.ai
  %i.ep = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull @.str.10, i64 noundef 1) #12 ; 0 uses
  br label %.loopexit

bb.ak:                                            ; preds = %bb.ah
  call void @rb_str_modify_expand(i64 noundef %.0343, i64 noundef %spec.select) #12
  %i.eq = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef %.0313, i64 noundef %.0316) #12 ; 0 uses
  %i.er = icmp eq i8 %i.bn, 65
  %i.es = sub i64 %spec.select, %.0316            ; 2 uses
  %i.et = load i64, ptr %i.ax, align 8, !tbaa !20 ; 2 uses
  %i.eu = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ev = and i64 %i.eu, 8192
  %.not.i.i394 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i394, label %str_expand_fill.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ew = load ptr, ptr %i.ay, align 8, !tbaa !15
  br label %str_expand_fill.exit

str_expand_fill.exit:                             ; preds = %bb.ak, %bb.al
  %i.ex = phi ptr [ %i.ew, %bb.al ], [ %i.ay, %bb.ak ]
  %i.ey = getelementptr i8, ptr %i.ex, i64 %i.et
  %i.ez = select i1 %i.er, i8 32, i8 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ey, i8 noundef %i.ez, i64 noundef %i.es, i1 noundef false) #12
  %i.fa = add i64 %i.et, %i.es
  call void @rb_str_set_len(i64 noundef %.0343, i64 noundef %i.fa) #12
  br label %.loopexit

bb.am:                                            ; preds = %bb.ag
  %i.fb = icmp sgt i64 %spec.select, %.0316
  br i1 %i.fb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fc = add i64 %spec.select, 1
  %i.fd = sub i64 %i.fc, %.0316
  %i.fe = sdiv i64 %i.fd, 2
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2326 = phi i64 [ %.0316, %bb.an ], [ %spec.select, %bb.am ] ; 3 uses
  %.0302 = phi i64 [ %i.fe, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.ff = icmp sgt i64 %.2326, 0
  br i1 %i.ff, label %.lr.ph707, label %._crit_edge708

.lr.ph707:                                        ; preds = %bb.ao, %bb.ar
  %i.fg = phi i64 [ %i.fp, %bb.ar ], [ 1, %bb.ao ] ; 3 uses
  %.0304705 = phi i32 [ %.2306, %bb.ar ], [ 0, %bb.ao ]
  %.1314704 = phi ptr [ %i.fo, %bb.ar ], [ %.0313, %bb.ao ] ; 2 uses
  %i.fh = load i8, ptr %.1314704, align 1, !tbaa !15
  %i.fi = shl i8 %i.fh, 7
  %i.fj = zext i8 %i.fi to i32
  %spec.select384 = or i32 %.0304705, %i.fj       ; 2 uses
  %i.fk = and i64 %i.fg, 7
  %.not382 = icmp eq i64 %i.fk, 0
  br i1 %.not382, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph707
  %i.fl = lshr i32 %spec.select384, 1
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.fm = trunc nuw i32 %spec.select384 to i8
  store i8 %i.fm, ptr %i.g, align 1, !tbaa !15
  %i.fn = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.g, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %.2306 = phi i32 [ %i.fl, %bb.ap ], [ 0, %bb.aq ] ; 2 uses
  %i.fo = getelementptr i8, ptr %.1314704, i64 1
  %i.fp = add nuw i64 %i.fg, 1
  %exitcond803.not.a = icmp eq i64 %i.fg, %.2326
  br i1 %exitcond803.not.a, label %._crit_edge708, label %.lr.ph707, !llvm.loop !24

._crit_edge708:                                   ; preds = %bb.ar, %bb.ao
  %.0304.lcssa = phi i32 [ 0, %bb.ao ], [ %.2306, %bb.ar ]
  %i.fq = and i64 %.2326, 7                       ; 2 uses
  %.not380 = icmp eq i64 %i.fq, 0
  br i1 %.not380, label %bb.cv, label %bb.as

bb.as:                                            ; preds = %._crit_edge708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = xor i32 %i.fr, 7
  %i.ft = lshr i32 %.0304.lcssa, %i.fs
  %i.fu = trunc i32 %i.ft to i8
  store i8 %i.fu, ptr %i.h, align 1, !tbaa !15
  %i.fv = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.h, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.cv

bb.at:                                            ; preds = %bb.ag
  %i.fw = icmp sgt i64 %spec.select, %.0316
  br i1 %i.fw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %reass.sub = sub i64 %spec.select, %.0316
  %i.fx = add i64 %reass.sub, 1
  %i.fy = sdiv i64 %i.fx, 2
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.3327 = phi i64 [ %.0316, %bb.au ], [ %spec.select, %bb.at ] ; 3 uses
  %.0298 = phi i64 [ %i.fy, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.fz = icmp sgt i64 %.3327, 0
  br i1 %i.fz, label %.lr.ph701, label %._crit_edge702

.lr.ph701:                                        ; preds = %bb.av, %bb.ay
  %i.ga = phi i64 [ %i.gk, %bb.ay ], [ 1, %bb.av ] ; 3 uses
  %.0300699 = phi i32 [ %.1301, %bb.ay ], [ 0, %bb.av ]
  %.2315698 = phi ptr [ %i.gj, %bb.ay ], [ %.0313, %bb.av ] ; 2 uses
  %i.gb = load i8, ptr %.2315698, align 1, !tbaa !15
  %i.gc = and i8 %i.gb, 1
  %i.gd = zext nneg i8 %i.gc to i32
  %i.ge = or i32 %.0300699, %i.gd                 ; 2 uses
  %i.gf = and i64 %i.ga, 7
  %.not379 = icmp eq i64 %i.gf, 0
  br i1 %.not379, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph701
  %i.gg = shl i32 %i.ge, 1
  br label %bb.ay

bb.ax:                                            ; preds = %.lr.ph701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.gh = trunc i32 %i.ge to i8
  store i8 %i.gh, ptr %i.i, align 1, !tbaa !15
  %i.gi = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.i, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.1301 = phi i32 [ %i.gg, %bb.aw ], [ 0, %bb.ax ] ; 2 uses
  %i.gj = getelementptr i8, ptr %.2315698, i64 1
  %i.gk = add nuw i64 %i.ga, 1
  %exitcond802.not = icmp eq i64 %i.ga, %.3327
  br i1 %exitcond802.not, label %._crit_edge702, label %.lr.ph701, !llvm.loop !25

._crit_edge702:                                   ; preds = %bb.ay, %bb.av
  %.0300.lcssa = phi i32 [ 0, %bb.av ], [ %.1301, %bb.ay ]
  %i.gl = and i64 %.3327, 7                       ; 2 uses
  %.not378 = icmp eq i64 %i.gl, 0
  br i1 %.not378, label %bb.cv, label %bb.az

bb.az:                                            ; preds = %._crit_edge702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.gm = trunc nuw nsw i64 %i.gl to i32
  %i.gn = xor i32 %i.gm, 7
  %i.go = shl i32 %.0300.lcssa, %i.gn
  %i.gp = trunc i32 %i.go to i8
  store i8 %i.gp, ptr %i.j, align 1, !tbaa !15
  %i.gq = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.j, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %bb.cv

bb.ba:                                            ; preds = %bb.ag
  %i.gr = icmp sgt i64 %spec.select, %.0316
  br i1 %i.gr, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gs = add i64 %spec.select, 1
  %i.gt = sdiv i64 %i.gs, 2
  %i.gu = add nsw i64 %.0316, 1
  %.neg373 = sdiv i64 %i.gu, -2
  %i.gv = add nsw i64 %i.gt, %.neg373
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.4328 = phi i64 [ %.0316, %bb.bb ], [ %spec.select, %bb.ba ] ; 3 uses
  %.0293 = phi i64 [ %i.gv, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  %i.gw = icmp sgt i64 %.4328, 0
  br i1 %i.gw, label %.lr.ph695, label %._crit_edge696

.lr.ph695:                                        ; preds = %bb.bc, %bb.bf
  %8 = phi i64 [ %i.hi, %bb.bf ], [ 1, %bb.bc ]   ; 3 uses
  %.0294693 = phi i64 [ %8, %bb.bf ], [ 0, %bb.bc ]
  %.0295692 = phi i32 [ %.2297, %bb.bf ], [ 0, %bb.bc ]
  %.3691 = phi ptr [ %i.hh, %bb.bf ], [ %.0313, %bb.bc ] ; 2 uses
  %i.gx = load i8, ptr %.3691, align 1, !tbaa !15
  %i.gy = sext i8 %i.gx to i32                    ; 2 uses
  %i.gz = and i32 %i.gy, -33
  %i.ha = add nsw i32 %i.gz, -91
  %narrow.i395 = icmp ult i32 %i.ha, -26
  %i.hb = shl nsw i32 %i.gy, 4                    ; 2 uses
  %i.hc = add nsw i32 %i.hb, 144
  %.pn376.in = select i1 %narrow.i395, i32 %i.hb, i32 %i.hc
  %.pn376 = and i32 %.pn376.in, 240
  %.1296 = or i32 %.pn376, %.0295692              ; 2 uses
  %i.hd = and i64 %.0294693, 1
  %.not377.not = icmp eq i64 %i.hd, 0
  br i1 %.not377.not, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph695
  %i.he = lshr i32 %.1296, 4
  br label %bb.bf

bb.be:                                            ; preds = %.lr.ph695
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.hf = trunc nuw i32 %.1296 to i8
  store i8 %i.hf, ptr %i.k, align 1, !tbaa !15
  %i.hg = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.k, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.2297 = phi i32 [ %i.he, %bb.bd ], [ 0, %bb.be ] ; 2 uses
  %i.hh = getelementptr i8, ptr %.3691, i64 1
  %i.hi = add nuw i64 %8, 1
  %exitcond801.not.a = icmp eq i64 %8, %.4328
  br i1 %exitcond801.not.a, label %._crit_edge696.loopexit, label %.lr.ph695, !llvm.loop !26

._crit_edge696.loopexit:                          ; preds = %bb.bf
  %i.hj = trunc nuw nsw i32 %.2297 to i8
  br label %._crit_edge696

._crit_edge696:                                   ; preds = %._crit_edge696.loopexit, %bb.bc
  %.0295.lcssa = phi i8 [ 0, %bb.bc ], [ %i.hj, %._crit_edge696.loopexit ]
  %i.hk = and i64 %.4328, 1
  %.not374 = icmp eq i64 %i.hk, 0
  br i1 %.not374, label %bb.cv, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  store i8 %.0295.lcssa, ptr %i.l, align 1, !tbaa !15
  %i.hl = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.l, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br label %bb.cv

bb.bh:                                            ; preds = %bb.ag
  %i.hm = icmp sgt i64 %spec.select, %.0316
  br i1 %i.hm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hn = add i64 %spec.select, 1
  %i.ho = sdiv i64 %i.hn, 2
  %i.hp = add nsw i64 %.0316, 1
  %.neg = sdiv i64 %i.hp, -2
  %i.hq = add nsw i64 %i.ho, %.neg
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.5329 = phi i64 [ %.0316, %bb.bi ], [ %spec.select, %bb.bh ] ; 3 uses
  %.0290 = phi i64 [ %i.hq, %bb.bi ], [ 0, %bb.bh ] ; 2 uses
  %i.hr = icmp sgt i64 %.5329, 0
  br i1 %i.hr, label %.lr.ph688, label %._crit_edge689

.lr.ph688:                                        ; preds = %bb.bj, %bb.bm
  %9 = phi i64 [ %i.ic, %bb.bm ], [ 1, %bb.bj ]   ; 3 uses
  %.0291686 = phi i64 [ %9, %bb.bm ], [ 0, %bb.bj ]
  %.0292685 = phi i32 [ %.2, %bb.bm ], [ 0, %bb.bj ]
  %.4684 = phi ptr [ %i.ib, %bb.bm ], [ %.0313, %bb.bj ] ; 2 uses
  %i.hs = load i8, ptr %.4684, align 1, !tbaa !15
  %i.ht = sext i8 %i.hs to i32                    ; 3 uses
  %i.hu = and i32 %i.ht, -33
  %i.hv = add nsw i32 %i.hu, -91
  %narrow.i396 = icmp ult i32 %i.hv, -26
  %i.hw = add nsw i32 %i.ht, 9
  %.pn.in = select i1 %narrow.i396, i32 %i.ht, i32 %i.hw
  %.pn = and i32 %.pn.in, 15
  %.1 = or i32 %.pn, %.0292685                    ; 2 uses
  %i.hx = and i64 %.0291686, 1
  %.not372.not = icmp eq i64 %i.hx, 0
  br i1 %.not372.not, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph688
  %i.hy = shl i32 %.1, 4
  br label %bb.bm

bb.bl:                                            ; preds = %.lr.ph688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.hz = trunc i32 %.1 to i8
  store i8 %i.hz, ptr %i.m, align 1, !tbaa !15
  %i.ia = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.m, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.2 = phi i32 [ %i.hy, %bb.bk ], [ 0, %bb.bl ]  ; 2 uses
  %i.ib = getelementptr i8, ptr %.4684, i64 1
  %i.ic = add nuw i64 %9, 1
  %exitcond800.not = icmp eq i64 %9, %.5329
  br i1 %exitcond800.not, label %._crit_edge689.loopexit, label %.lr.ph688, !llvm.loop !27

._crit_edge689.loopexit:                          ; preds = %bb.bm
  %i.id = trunc i32 %.2 to i8
  br label %._crit_edge689

._crit_edge689:                                   ; preds = %._crit_edge689.loopexit, %bb.bj
  %.0292.lcssa = phi i8 [ 0, %bb.bj ], [ %i.id, %._crit_edge689.loopexit ]
  %i.ie = and i64 %.5329, 1
  %.not370 = icmp eq i64 %i.ie, 0
  br i1 %.not370, label %bb.cv, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  store i8 %.0292.lcssa, ptr %i.n, align 1, !tbaa !15
  %i.if = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.n, i64 noundef 1) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br label %bb.cv

bb.bo:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  br label %bb.bu

bb.bp:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  br label %bb.bu

bb.bq:                                            ; preds = %bb.aa, %bb.aa
  %i.ig = load i32, ptr %i.f, align 4, !tbaa !10
  %.not367 = icmp eq i32 %i.ig, 0
  %i.ih = select i1 %.not367, i64 4, i64 8
  br label %bb.bu

bb.br:                                            ; preds = %bb.aa, %bb.aa, %bb.aa, %bb.aa
  br label %bb.bu

bb.bs:                                            ; preds = %bb.aa
  br label %bb.bu

bb.bt:                                            ; preds = %bb.aa
  br label %bb.bu

bb.bu:                                            ; preds = %bb.aa, %bb.aa, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.0309 = phi i64 [ 4, %bb.bt ], [ 2, %bb.bo ], [ 4, %bb.bp ], [ %i.ih, %bb.bq ], [ 8, %bb.br ], [ 1, %bb.aa ], [ 1, %bb.aa ], [ 2, %bb.bs ] ; 2 uses
  %.0307 = phi i32 [ 1, %bb.bt ], [ 0, %bb.bo ], [ 0, %bb.bp ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.aa ], [ 0, %bb.aa ], [ 1, %bb.bs ]
  %i.ii = icmp sgt i64 %.0324.fr, 0
  br i1 %i.ii, label %.lr.ph682, label %.loopexit

.lr.ph682:                                        ; preds = %bb.bu
  %i.ij = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %.not368 = icmp eq i32 %i.ij, 0
  %i.ik = icmp eq i32 %i.ij, 62
  %i.il = zext i1 %i.ik to i32
  %.1308 = select i1 %.not368, i32 %.0307, i32 %i.il
  %.not369 = icmp eq i32 %.1308, 0
  %i.im = select i1 %.not369, i32 162, i32 145
  %i.in = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph682, %RARRAY_AREF.exit402
  %.1319680 = phi i64 [ %.0318711, %.lr.ph682 ], [ %i.iw, %RARRAY_AREF.exit402 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.io = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.ip = and i64 %i.io, 8192
  %.not.i397 = icmp eq i64 %i.ip, 0
  br i1 %.not.i397, label %rb_array_len.exit399, label %rb_array_len.exit399.thread

rb_array_len.exit399:                             ; preds = %bb.bv
  %i.iq = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ir = icmp slt i64 %.1319680, %i.iq
  br i1 %i.ir, label %bb.bw, label %bb.bx

rb_array_len.exit399.thread:                      ; preds = %bb.bv
  %i.is = lshr i64 %i.io, 15
  %i.it = and i64 %i.is, 127
  %i.iu = icmp slt i64 %.1319680, %i.it
  br i1 %i.iu, label %RARRAY_AREF.exit402, label %bb.bx

bb.bw:                                            ; preds = %rb_array_len.exit399
  %i.iv = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RARRAY_AREF.exit402

RARRAY_AREF.exit402:                              ; preds = %rb_array_len.exit399.thread, %bb.bw
  %.0.i.i401 = phi ptr [ %i.iv, %bb.bw ], [ %i.au, %rb_array_len.exit399.thread ]
  %i.iw = add nsw i64 %.1319680, 1                ; 2 uses
  %i.ix = getelementptr [8 x i8], ptr %.0.i.i401, i64 %.1319680
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !12 ; 2 uses
  store i64 %i.iy, ptr %i.d, align 8, !tbaa !12
  %i.iz = call i32 @rb_integer_pack(i64 noundef %i.iy, ptr noundef nonnull %i.o, i64 noundef %.0309, i64 noundef 1, i64 noundef 0, i32 noundef %i.im) #12 ; 0 uses
  %i.ja = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.o, i64 noundef %.0309) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  %exitcond799.not = icmp eq i64 %i.iw, %i.in
  br i1 %exitcond799.not, label %.loopexit, label %bb.bv, !llvm.loop !28

bb.bx:                                            ; preds = %rb_array_len.exit399.thread, %rb_array_len.exit399
  %i.jb = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jb, ptr noundef nonnull @toofew) #13
  unreachable

bb.by:                                            ; preds = %bb.aa, %bb.aa
  %i.jc = icmp sgt i64 %.0324.fr, 0
  br i1 %i.jc, label %.lr.ph678.preheader, label %.loopexit

.lr.ph678.preheader:                              ; preds = %bb.by
  %i.jd = add i64 %.0324.fr, %.0318711            ; 2 uses
  br label %.lr.ph678

.lr.ph678:                                        ; preds = %.lr.ph678.preheader, %VALUE_to_float.exit
  %.2320676 = phi i64 [ %i.jm, %VALUE_to_float.exit ], [ %.0318711, %.lr.ph678.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #12
  %i.je = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.jf = and i64 %i.je, 8192
  %.not.i403 = icmp eq i64 %i.jf, 0
  br i1 %.not.i403, label %rb_array_len.exit405, label %rb_array_len.exit405.thread

rb_array_len.exit405:                             ; preds = %.lr.ph678
  %i.jg = load i64, ptr %i.au, align 8, !tbaa !15
  %i.jh = icmp slt i64 %.2320676, %i.jg
  br i1 %i.jh, label %bb.bz, label %bb.cd

rb_array_len.exit405.thread:                      ; preds = %.lr.ph678
  %i.ji = lshr i64 %i.je, 15
  %i.jj = and i64 %i.ji, 127
  %i.jk = icmp slt i64 %.2320676, %i.jj
  br i1 %i.jk, label %RARRAY_AREF.exit408, label %bb.cd

bb.bz:                                            ; preds = %rb_array_len.exit405
  %i.jl = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RARRAY_AREF.exit408

RARRAY_AREF.exit408:                              ; preds = %rb_array_len.exit405.thread, %bb.bz
  %.0.i.i407 = phi ptr [ %i.jl, %bb.bz ], [ %i.au, %rb_array_len.exit405.thread ]
  %i.jm = add nsw i64 %.2320676, 1                ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr %.0.i.i407, i64 %.2320676
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !12 ; 2 uses
  store i64 %i.jo, ptr %i.d, align 8, !tbaa !12
  %i.jp = call i64 @rb_to_float(i64 noundef %i.jo) #12
  %i.jq = call double @rb_float_value(i64 noundef %i.jp) #14 ; 4 uses
  %i.jr = fcmp uno double %i.jq, 0.000000e+00
  br i1 %i.jr, label %VALUE_to_float.exit, label %bb.ca

bb.ca:                                            ; preds = %RARRAY_AREF.exit408
  %i.js = fcmp olt double %i.jq, f0xC7EFFFFFE0000000
  br i1 %i.js, label %VALUE_to_float.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jt = fcmp ugt double %i.jq, f0x47EFFFFFE0000000
  br i1 %i.jt, label %VALUE_to_float.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ju = fptrunc double %i.jq to float
  br label %VALUE_to_float.exit

VALUE_to_float.exit:                              ; preds = %RARRAY_AREF.exit408, %bb.ca, %bb.cb, %bb.cc
  %.0.i409 = phi float [ -inf, %bb.ca ], [ +qnan, %RARRAY_AREF.exit408 ], [ %i.ju, %bb.cc ], [ +inf, %bb.cb ]
  store float %.0.i409, ptr %i.p, align 4, !tbaa !44
  %i.jv = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.p, i64 noundef 4) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  %exitcond798.not = icmp eq i64 %i.jm, %i.jd
  br i1 %exitcond798.not, label %.loopexit, label %.lr.ph678, !llvm.loop !29

bb.cd:                                            ; preds = %rb_array_len.exit405.thread, %rb_array_len.exit405
  %i.jw = load i64, ptr @rb_eArgError, align 8, !tbaa !12
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jw, ptr noundef nonnull @toofew) #13
  unreachable

.lr.ph674:                                        ; preds = %.lr.ph674.preheader, %VALUE_to_float.exit417
  %.3321673 = phi i64 [ %i.kf, %VALUE_to_float.exit417 ], [ %.0318711, %.lr.ph674.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.jx = load i64, ptr %i.at, align 8, !tbaa !14 ; 2 uses
  %i.jy = and i64 %i.jx, 8192
  %.not.i410 = icmp eq i64 %i.jy, 0
  br i1 %.not.i410, label %rb_array_len.exit412, label %rb_array_len.exit412.thread

rb_array_len.exit412:                             ; preds = %.lr.ph674
  %i.jz = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ka = icmp slt i64 %.3321673, %i.jz
  br i1 %i.ka, label %bb.ce, label %bb.ci

rb_array_len.exit412.thread:                      ; preds = %.lr.ph674
  %i.kb = lshr i64 %i.jx, 15
  %i.kc = and i64 %i.kb, 127
  %i.kd = icmp slt i64 %.3321673, %i.kc
  br i1 %i.kd, label %RARRAY_AREF.exit415, label %bb.ci

bb.ce:                                            ; preds = %rb_array_len.exit412
  %i.ke = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RARRAY_AREF.exit415

RARRAY_AREF.exit415:                              ; preds = %rb_array_len.exit412.thread, %bb.ce
  %.0.i.i414 = phi ptr [ %i.ke, %bb.ce ], [ %i.au, %rb_array_len.exit412.thread ]
  %i.kf = add nsw i64 %.3321673, 1                ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %.0.i.i414, i64 %.3321673
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !12 ; 2 uses
  store i64 %i.kh, ptr %i.d, align 8, !tbaa !12
  %i.ki = call i64 @rb_to_float(i64 noundef %i.kh) #12
  %i.kj = call double @rb_float_value(i64 noundef %i.ki) #14 ; 4 uses
  %i.kk = fcmp uno double %i.kj, 0.000000e+00
  br i1 %i.kk, label %VALUE_to_float.exit417, label %bb.cf

bb.cf:                                            ; preds = %RARRAY_AREF.exit415
  %i.kl = fcmp olt double %i.kj, f0xC7EFFFFFE0000000
end_hunk_0
