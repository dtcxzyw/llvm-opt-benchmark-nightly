Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_sbit_decoder_load_byte_aligned:bb.a

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.084127.us = phi i32 [ %i.il, %vec.epilog.scalar.ph ], [ %.084127.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.085126.us = phi ptr [ %i.ik, %vec.epilog.scalar.ph ], [ %.085126.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %.192125.us = phi ptr [ %i.ih, %vec.epilog.scalar.ph ], [ %.192125.us.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ig = load i8, ptr %.085126.us, align 1, !tbaa !29
  %i.ih = getelementptr inbounds nuw i8, ptr %.192125.us, i64 1 ; 2 uses
  %i.ii = load i8, ptr %.192125.us, align 1, !tbaa !29
  %i.ij = or i8 %i.ii, %i.ig
  store i8 %i.ij, ptr %.085126.us, align 1, !tbaa !29
  %i.ik = getelementptr inbounds nuw i8, ptr %.085126.us, i64 1 ; 2 uses
  %i.il = add nsw i32 %.084127.us, -8             ; 2 uses
  %i.im = icmp sgt i32 %.084127.us, 15
  br i1 %i.im, label %vec.epilog.scalar.ph, label %._crit_edge.us133, !llvm.loop !735

bb.k:                                             ; preds = %._crit_edge.us133
  %i.in = load i8, ptr %.lcssa169, align 1, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %.192125.us.lcssa, i64 2
  %i.ip = load i8, ptr %.lcssa170, align 1, !tbaa !29
  %i.iq = lshr i32 65280, %.lcssa
  %i.ir = trunc i32 %i.iq to i8
  %i.is = and i8 %i.ip, %i.ir
  %i.it = or i8 %i.is, %i.in
  store i8 %i.it, ptr %.lcssa169, align 1, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.us133
  %.2.us = phi ptr [ %i.io, %bb.k ], [ %.lcssa170, %._crit_edge.us133 ]
  %i.iu = add nsw i32 %.086132.us, -1
  %i.iv = getelementptr inbounds i8, ptr %.088131.us, i64 %i.gx
  %i.iw = icmp sgt i32 %.086132.us, 1
  br i1 %i.iw, label %iter.check, label %.loopexit, !llvm.loop !736

._crit_edge.us133:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.084127.us.lcssa = phi i32 [ %ind.escape192, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.084127.us, %vec.epilog.scalar.ph ]
  %.192125.us.lcssa = phi ptr [ %ind.escape193, %vec.epilog.middle.block ], [ %ind.escape182, %middle.block ], [ %.192125.us, %vec.epilog.scalar.ph ]
  %.lcssa170 = phi ptr [ %i.id, %vec.epilog.middle.block ], [ %i.hw, %middle.block ], [ %i.ih, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa169 = phi ptr [ %i.ic, %vec.epilog.middle.block ], [ %i.hv, %middle.block ], [ %i.ik, %vec.epilog.scalar.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.hs, %vec.epilog.middle.block ], [ %i.hp, %middle.block ], [ %i.il, %vec.epilog.scalar.ph ]
  %i.ix = icmp sgt i32 %.084127.us.lcssa, 8
  br i1 %i.ix, label %bb.k, label %bb.l

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not138 = icmp eq i32 %i.t, 0
  %i.iy = lshr exact i32 65280, %i.t
  %i.iz = trunc i32 %i.iy to i8                   ; 5 uses
  br i1 %.not138, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %xtraiter218 = and i32 %i.p, 3                  ; 2 uses
  %lcmp.mod219.not = icmp eq i32 %xtraiter218, 0
  br i1 %lcmp.mod219.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.086132.prol = phi i32 [ %i.jf, %.preheader.prol ], [ %i.p, %.preheader.preheader ]
  %.088131.prol = phi ptr [ %i.jg, %.preheader.prol ], [ %i.ak, %.preheader.preheader ] ; 3 uses
  %.091130.prol = phi ptr [ %i.jb, %.preheader.prol ], [ %1, %.preheader.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.ja = load i8, ptr %.088131.prol, align 1, !tbaa !29
  %i.jb = getelementptr inbounds nuw i8, ptr %.091130.prol, i64 1 ; 2 uses
  %i.jc = load i8, ptr %.091130.prol, align 1, !tbaa !29
  %i.jd = and i8 %i.jc, %i.iz
  %i.je = or i8 %i.jd, %i.ja
  store i8 %i.je, ptr %.088131.prol, align 1, !tbaa !29
  %i.jf = add nsw i32 %.086132.prol, -1           ; 2 uses
  %i.jg = getelementptr inbounds i8, ptr %.088131.prol, i64 %i.gx ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter218
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !737

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.086132.unr = phi i32 [ %i.p, %.preheader.preheader ], [ %i.jf, %.preheader.prol ]
  %.088131.unr = phi ptr [ %i.ak, %.preheader.preheader ], [ %i.jg, %.preheader.prol ]
  %.091130.unr = phi ptr [ %1, %.preheader.preheader ], [ %i.jb, %.preheader.prol ]
  %i.jh = icmp ult i16 %i.o, 4
  br i1 %i.jh, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.086132 = phi i32 [ %i.kf, %.preheader ], [ %.086132.unr, %.preheader.prol.loopexit ] ; 2 uses
  %.088131 = phi ptr [ %i.kg, %.preheader ], [ %.088131.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.091130 = phi ptr [ %i.kb, %.preheader ], [ %.091130.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.ji = load i8, ptr %.088131, align 1, !tbaa !29
  %i.jj = getelementptr inbounds nuw i8, ptr %.091130, i64 1
  %i.jk = load i8, ptr %.091130, align 1, !tbaa !29
  %i.jl = and i8 %i.jk, %i.iz
  %i.jm = or i8 %i.jl, %i.ji
  store i8 %i.jm, ptr %.088131, align 1, !tbaa !29
  %i.jn = getelementptr inbounds i8, ptr %.088131, i64 %i.gx ; 3 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !29
  %i.jp = getelementptr inbounds nuw i8, ptr %.091130, i64 2
  %i.jq = load i8, ptr %i.jj, align 1, !tbaa !29
  %i.jr = and i8 %i.jq, %i.iz
  %i.js = or i8 %i.jr, %i.jo
  store i8 %i.js, ptr %i.jn, align 1, !tbaa !29
  %i.jt = getelementptr inbounds i8, ptr %i.jn, i64 %i.gx ; 3 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !29
  %i.jv = getelementptr inbounds nuw i8, ptr %.091130, i64 3
  %i.jw = load i8, ptr %i.jp, align 1, !tbaa !29
  %i.jx = and i8 %i.jw, %i.iz
  %i.jy = or i8 %i.jx, %i.ju
  store i8 %i.jy, ptr %i.jt, align 1, !tbaa !29
  %i.jz = getelementptr inbounds i8, ptr %i.jt, i64 %i.gx ; 3 uses
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !29
  %i.kb = getelementptr inbounds nuw i8, ptr %.091130, i64 4
  %i.kc = load i8, ptr %i.jv, align 1, !tbaa !29
  %i.kd = and i8 %i.kc, %i.iz
  %i.ke = or i8 %i.kd, %i.ka
  store i8 %i.ke, ptr %i.jz, align 1, !tbaa !29
  %i.kf = add nsw i32 %.086132, -4
  %i.kg = getelementptr inbounds i8, ptr %i.jz, i64 %i.gx
  %i.kh = icmp sgt i32 %.086132, 4
  br i1 %i.kh, label %.preheader, label %.loopexit, !llvm.loop !736

.loopexit:                                        ; preds = %.preheader100.us119.prol.loopexit, %.preheader100.us119, %.preheader100.us113.us.lver.orig.prol.loopexit, %.preheader100.us113.us.lver.orig, %.preheader100.us113.us.prol.loopexit, %.preheader100.us113.us, %bb.j, %.preheader.prol.loopexit, %.preheader, %bb.l, %.preheader100.lr.ph.split.split, %.preheader101, %.preheader99, %.preheader.lr.ph.split, %bb.d, %bb.c, %bb.b, %bb.a
  %.090 = phi i32 [ 0, %bb.a ], [ 3, %bb.c ], [ 3, %bb.d ], [ 0, %.preheader99 ], [ 3, %bb.b ], [ 0, %.preheader101 ], [ 0, %.preheader100.lr.ph.split.split ], [ 0, %.preheader.lr.ph.split ], [ 0, %.preheader100.us113.us.prol.loopexit ], [ 0, %.preheader100.us113.us.lver.orig.prol.loopexit ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %.preheader.prol.loopexit ], [ 0, %.preheader ], [ 0, %.preheader100.us113.us ], [ 0, %.preheader100.us113.us.lver.orig ], [ 0, %.preheader100.us119 ], [ 0, %.preheader100.us119.prol.loopexit ]
  ret i32 %.090
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 4) i32 @tt_sbit_decoder_load_bit_aligned(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2, i32 noundef %3, i32 noundef %4, i32 %5) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !274  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !257
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !241  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.j = load i16, ptr %i.i, align 2, !tbaa !252
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = load i16, ptr %i.h, align 2, !tbaa !253  ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.o = load i8, ptr %i.n, align 2, !tbaa !250
  %i.p = zext i8 %i.o to i32
  %i.q = mul nuw nsw i32 %i.p, %i.k               ; 10 uses
  %i.r = icmp slt i32 %3, 0
  br i1 %i.r, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load i32, ptr %i.b, align 8, !tbaa !255
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !256
  %i.v = add nuw nsw i32 %3, %i.k
  %i.w = icmp ugt i32 %i.v, %i.u
  %i.x = icmp slt i32 %4, 0
  %or.cond = or i1 %i.x, %i.w
  %i.y = add nuw nsw i32 %4, %i.m
  %i.z = icmp ugt i32 %i.y, %i.s
  %or.cond125 = select i1 %or.cond, i1 true, i1 %i.z
  br i1 %or.cond125, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = mul nuw nsw i32 %i.q, %i.m
  %i.ab = add nuw nsw i32 %i.aa, 7
  %i.ac = lshr i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  %i.af = icmp ugt ptr %i.ae, %2
  br i1 %i.af, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp ne i32 %i.q, 0
  %i.ah = icmp ne i16 %i.l, 0
  %or.cond3 = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond3, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ai = mul nsw i32 %i.d, %4
  %i.aj = lshr i32 %3, 3
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.f, i64 %i.al ; 3 uses
  %i.an = and i32 %3, 7                           ; 4 uses
  %.not = icmp eq i32 %i.an, 0
  %i.ao = sext i32 %i.d to i64                    ; 3 uses
  %i.ap = sub nuw nsw i32 8, %i.an
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.q, i32 %i.ap) ; 6 uses
  %i.ar = shl nuw nsw i32 255, %i.aq
  %i.as = xor i32 %i.ar, -1
  %i.at = add nuw nsw i32 %i.an, %i.aq
  %i.au = sub nsw i32 8, %i.at
  %i.av = shl nsw i32 %i.as, %i.au
  %i.aw = sub nsw i32 %i.q, %i.aq                 ; 3 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e
  %i.ax = icmp samesign ugt i32 %i.q, 7
  br i1 %i.ax, label %.lr.ph.us.us, label %.split.us.split

.lr.ph.us.us:                                     ; preds = %.split.us, %bb.l
  %.099139.us.us = phi i16 [ %.6.us.us, %bb.l ], [ 0, %.split.us ]
  %.0101138.us.us = phi i32 [ %.3104.us.us, %bb.l ], [ 0, %.split.us ] ; 7 uses
  %.0105137.us.us = phi i32 [ %i.cj, %bb.l ], [ %i.m, %.split.us ] ; 2 uses
  %.0106136.us.us = phi ptr [ %i.ck, %bb.l ], [ %i.am, %.split.us ] ; 2 uses
  %.0108135.us.us = phi ptr [ %.6114.us.us, %bb.l ], [ %1, %.split.us ]
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.us.us
  %.1131.us.us = phi i32 [ %i.q, %.lr.ph.us.us ], [ %i.bj, %bb.f ] ; 4 uses
  %.198130.us.us = phi ptr [ %.0106136.us.us, %.lr.ph.us.us ], [ %i.be, %bb.f ] ; 3 uses
  %.4129.us.us = phi i16 [ %.099139.us.us, %.lr.ph.us.us ], [ %i.bi, %bb.f ]
  %.4112128.us.us = phi ptr [ %.0108135.us.us, %.lr.ph.us.us ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.4112128.us.us, i64 1 ; 6 uses
  %i.az = load i8, ptr %.4112128.us.us, align 1, !tbaa !29
  %i.ba = zext i8 %i.az to i16
  %i.bb = or i16 %.4129.us.us, %i.ba              ; 2 uses
  %i.bc = zext i16 %i.bb to i32
  %i.bd = lshr i32 %i.bc, %.0101138.us.us
  %i.be = getelementptr inbounds nuw i8, ptr %.198130.us.us, i64 1 ; 5 uses
  %i.bf = load i8, ptr %.198130.us.us, align 1, !tbaa !29
  %i.bg = trunc i32 %i.bd to i8
  %i.bh = or i8 %i.bf, %i.bg
  store i8 %i.bh, ptr %.198130.us.us, align 1, !tbaa !29
  %i.bi = shl i16 %i.bb, 8                        ; 6 uses
  %i.bj = add nsw i32 %.1131.us.us, -8            ; 5 uses
  %i.bk = icmp sgt i32 %.1131.us.us, 15
  br i1 %i.bk, label %bb.f, label %._crit_edge.us.us, !llvm.loop !741

._crit_edge.us.us:                                ; preds = %bb.f
  %6 = icmp sgt i32 %.1131.us.us, 8
  br i1 %6, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge.us.us
  %i.bl = icmp slt i32 %.0101138.us.us, %i.bj
  br i1 %i.bl, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = zext i16 %i.bi to i32
  %i.bn = lshr i32 %i.bm, %.0101138.us.us
  %i.bo = lshr i32 65280, %i.bj
  %i.bp = and i32 %i.bo, %i.bn
  %i.bq = load i8, ptr %i.be, align 1, !tbaa !29
  %i.br = trunc i32 %i.bp to i8
  %i.bs = or i8 %i.bq, %i.br
  store i8 %i.bs, ptr %i.be, align 1, !tbaa !29
  %i.bt = sub nuw nsw i32 %.0101138.us.us, %i.bj
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bu = icmp ult ptr %i.ay, %2
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.4112128.us.us, i64 2
  %i.bw = load i8, ptr %i.ay, align 1, !tbaa !29
  %i.bx = zext i8 %i.bw to i16
  %i.by = or disjoint i16 %i.bi, %i.bx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5113.us.us = phi ptr [ %i.bv, %bb.j ], [ %i.ay, %bb.i ]
  %.5.us.us = phi i16 [ %i.by, %bb.j ], [ %i.bi, %bb.i ] ; 2 uses
  %i.bz = zext i16 %.5.us.us to i32
  %i.ca = lshr i32 %i.bz, %.0101138.us.us
  %i.cb = lshr i32 65280, %i.bj
  %i.cc = and i32 %i.ca, %i.cb
  %i.cd = load i8, ptr %i.be, align 1, !tbaa !29
  %i.ce = trunc i32 %i.cc to i8
  %i.cf = or i8 %i.cd, %i.ce
  store i8 %i.cf, ptr %i.be, align 1, !tbaa !29
  %i.cg = sub i32 %.0101138.us.us, %.1131.us.us
  %i.ch = add i32 %i.cg, 16
  %i.ci = shl i16 %.5.us.us, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h, %._crit_edge.us.us
  %.6114.us.us = phi ptr [ %.5113.us.us, %bb.k ], [ %i.ay, %bb.h ], [ %i.ay, %._crit_edge.us.us ]
  %.3104.us.us = phi i32 [ %i.ch, %bb.k ], [ %i.bt, %bb.h ], [ %.0101138.us.us, %._crit_edge.us.us ]
  %.6.us.us = phi i16 [ %i.ci, %bb.k ], [ %i.bi, %bb.h ], [ %i.bi, %._crit_edge.us.us ]
  %i.cj = add nsw i32 %.0105137.us.us, -1
  %i.ck = getelementptr inbounds i8, ptr %.0106136.us.us, i64 %i.ao
  %i.cl = icmp sgt i32 %.0105137.us.us, 1
  br i1 %i.cl, label %.lr.ph.us.us, label %.loopexit, !llvm.loop !742

.split.us.split:                                  ; preds = %.split.us
  %i.cm = lshr exact i32 65280, %i.q              ; 2 uses
  %invariant.op198 = sub i32 8, %i.q
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %.split.us.split
  %.099139.us = phi i16 [ 0, %.split.us.split ], [ %.6.us, %bb.r ] ; 4 uses
  %.0101138.us = phi i32 [ 0, %.split.us.split ], [ %.3104.us, %bb.r ] ; 5 uses
  %.0105137.us = phi i32 [ %i.m, %.split.us.split ], [ %i.dh, %bb.r ] ; 2 uses
  %.0106136.us = phi ptr [ %i.am, %.split.us.split ], [ %i.di, %bb.r ] ; 5 uses
  %.0108135.us = phi ptr [ %1, %.split.us.split ], [ %.6114.us, %bb.r ] ; 5 uses
  %i.cn = icmp slt i32 %.0101138.us, %i.q
  br i1 %i.cn, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.co = zext i16 %.099139.us to i32
  %i.cp = lshr i32 %i.co, %.0101138.us
  %i.cq = and i32 %i.cm, %i.cp
  %i.cr = load i8, ptr %.0106136.us, align 1, !tbaa !29
  %i.cs = trunc i32 %i.cq to i8
  %i.ct = or i8 %i.cr, %i.cs
  store i8 %i.ct, ptr %.0106136.us, align 1, !tbaa !29
  %i.cu = sub nuw nsw i32 %.0101138.us, %i.q
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.cv = icmp ult ptr %.0108135.us, %2
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %.0108135.us, i64 1
  %i.cx = load i8, ptr %.0108135.us, align 1, !tbaa !29
  %i.cy = zext i8 %i.cx to i16
  %i.cz = or disjoint i16 %.099139.us, %i.cy
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.5113.us = phi ptr [ %i.cw, %bb.p ], [ %.0108135.us, %bb.o ]
  %.5.us = phi i16 [ %i.cz, %bb.p ], [ %.099139.us, %bb.o ] ; 2 uses
  %i.da = zext i16 %.5.us to i32
  %i.db = lshr i32 %i.da, %.0101138.us
  %i.dc = and i32 %i.db, %i.cm
  %i.dd = load i8, ptr %.0106136.us, align 1, !tbaa !29
  %i.de = trunc i32 %i.dc to i8
  %i.df = or i8 %i.dd, %i.de
  store i8 %i.df, ptr %.0106136.us, align 1, !tbaa !29
  %.reass.reass.reass = add i32 %.0101138.us, %invariant.op198
  %i.dg = shl i16 %.5.us, 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.6114.us = phi ptr [ %.5113.us, %bb.q ], [ %.0108135.us, %bb.n ]
  %.3104.us = phi i32 [ %.reass.reass.reass, %bb.q ], [ %i.cu, %bb.n ]
  %.6.us = phi i16 [ %i.dg, %bb.q ], [ %.099139.us, %bb.n ]
  %i.dh = add nsw i32 %.0105137.us, -1
  %i.di = getelementptr inbounds i8, ptr %.0106136.us, i64 %i.ao
  %i.dj = icmp sgt i32 %.0105137.us, 1
  br i1 %i.dj, label %bb.m, label %.loopexit, !llvm.loop !742

.split:                                           ; preds = %bb.e
  %i.dk = icmp sgt i32 %i.aw, 7
  %invariant.op = sub i32 8, %i.aq
  br label %bb.s

bb.s:                                             ; preds = %.split, %bb.af
  %.099139 = phi i16 [ 0, %.split ], [ %.6, %bb.af ] ; 3 uses
  %.0101138 = phi i32 [ 0, %.split ], [ %.3104, %bb.af ] ; 3 uses
  %.0105137 = phi i32 [ %i.m, %.split ], [ %i.fq, %bb.af ] ; 3 uses
  %.0106136 = phi ptr [ %i.am, %.split ], [ %i.fr, %bb.af ] ; 4 uses
  %.0108135 = phi ptr [ %1, %.split ], [ %.6114, %bb.af ] ; 7 uses
  %i.dl = icmp eq i32 %.0105137, %i.m
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %.0108135, i64 1
  %i.dn = load i8, ptr %.0108135, align 1, !tbaa !29
  %i.do = zext i8 %i.dn to i16
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.dp = icmp slt i32 %.0101138, %i.aq
  br i1 %i.dp, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dq = icmp ult ptr %.0108135, %2
  br i1 %i.dq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dr = getelementptr inbounds nuw i8, ptr %.0108135, i64 1
  %i.ds = load i8, ptr %.0108135, align 1, !tbaa !29
  %i.dt = zext i8 %i.ds to i16
  %i.du = or i16 %.099139, %i.dt
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1109 = phi ptr [ %i.dr, %bb.w ], [ %.0108135, %bb.v ]
  %.1100 = phi i16 [ %i.du, %bb.w ], [ %.099139, %bb.v ]
  %.reass170.reass = add i32 %.0101138, %invariant.op
  br label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.dv = lshr i16 %.099139, 8
  %i.dw = sub nsw i32 %.0101138, %i.aq
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.t
  %.2110 = phi ptr [ %i.dm, %bb.t ], [ %.1109, %bb.x ], [ %.0108135, %bb.y ] ; 2 uses
  %.1102 = phi i32 [ %i.an, %bb.t ], [ %.reass170.reass, %bb.x ], [ %i.dw, %bb.y ] ; 8 uses
  %.2 = phi i16 [ %i.do, %bb.t ], [ %.1100, %bb.x ], [ %i.dv, %bb.y ] ; 2 uses
  %i.dx = zext i16 %.2 to i32
  %i.dy = lshr i32 %i.dx, %.1102
  %i.dz = and i32 %i.dy, %i.av
  %i.ea = getelementptr inbounds nuw i8, ptr %.0106136, i64 1 ; 2 uses
  %i.eb = load i8, ptr %.0106136, align 1, !tbaa !29
  %i.ec = trunc i32 %i.dz to i8
  %i.ed = or i8 %i.eb, %i.ec
  store i8 %i.ed, ptr %.0106136, align 1, !tbaa !29
  %i.ee = shl i16 %.2, 8                          ; 2 uses
  br i1 %i.dk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  %.1131 = phi i32 [ %i.eq, %.lr.ph ], [ %i.aw, %bb.z ] ; 2 uses
  %.198130 = phi ptr [ %i.el, %.lr.ph ], [ %i.ea, %bb.z ] ; 3 uses
  %.4129 = phi i16 [ %i.ep, %.lr.ph ], [ %i.ee, %bb.z ]
  %.4112128 = phi ptr [ %i.ef, %.lr.ph ], [ %.2110, %bb.z ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.4112128, i64 1 ; 2 uses
  %i.eg = load i8, ptr %.4112128, align 1, !tbaa !29
  %i.eh = zext i8 %i.eg to i16                    ; 2 uses
  %i.ei = or disjoint i16 %.4129, %i.eh
  %i.ej = zext i16 %i.ei to i32
  %i.ek = lshr i32 %i.ej, %.1102
  %i.el = getelementptr inbounds nuw i8, ptr %.198130, i64 1 ; 2 uses
  %i.em = load i8, ptr %.198130, align 1, !tbaa !29
  %i.en = trunc i32 %i.ek to i8
  %i.eo = or i8 %i.em, %i.en
  store i8 %i.eo, ptr %.198130, align 1, !tbaa !29
  %i.ep = shl nuw i16 %i.eh, 8                    ; 2 uses
  %i.eq = add nsw i32 %.1131, -8                  ; 2 uses
  %i.er = icmp samesign ugt i32 %.1131, 15
  br i1 %i.er, label %.lr.ph, label %._crit_edge, !llvm.loop !741

._crit_edge:                                      ; preds = %.lr.ph, %bb.z
  %.4112.lcssa = phi ptr [ %.2110, %bb.z ], [ %i.ef, %.lr.ph ] ; 6 uses
  %.4.lcssa = phi i16 [ %i.ee, %bb.z ], [ %i.ep, %.lr.ph ] ; 5 uses
  %.198.lcssa = phi ptr [ %i.ea, %bb.z ], [ %i.el, %.lr.ph ] ; 4 uses
  %.1.lcssa = phi i32 [ %i.aw, %bb.z ], [ %i.eq, %.lr.ph ] ; 6 uses
  %i.es = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.es, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %._crit_edge
  %i.et = icmp slt i32 %.1102, %.1.lcssa
  br i1 %i.et, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.eu = icmp ult ptr %.4112.lcssa, %2
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = getelementptr inbounds nuw i8, ptr %.4112.lcssa, i64 1
  %i.ew = load i8, ptr %.4112.lcssa, align 1, !tbaa !29
  %i.ex = zext i8 %i.ew to i16
  %i.ey = or disjoint i16 %.4.lcssa, %i.ex
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.5113 = phi ptr [ %i.ev, %bb.ac ], [ %.4112.lcssa, %bb.ab ]
  %.5 = phi i16 [ %i.ey, %bb.ac ], [ %.4.lcssa, %bb.ab ] ; 2 uses
  %i.ez = zext i16 %.5 to i32
  %i.fa = lshr i32 %i.ez, %.1102
  %i.fb = lshr i32 65280, %.1.lcssa
  %i.fc = and i32 %i.fa, %i.fb
  %i.fd = load i8, ptr %.198.lcssa, align 1, !tbaa !29
  %i.fe = trunc i32 %i.fc to i8
  %i.ff = or i8 %i.fd, %i.fe
  store i8 %i.ff, ptr %.198.lcssa, align 1, !tbaa !29
  %reass.sub123 = add nsw i32 %.1102, 8
  %i.fg = sub nsw i32 %reass.sub123, %.1.lcssa
  %i.fh = shl i16 %.5, 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.fi = zext i16 %.4.lcssa to i32
  %i.fj = lshr i32 %i.fi, %.1102
  %i.fk = lshr i32 65280, %.1.lcssa
  %i.fl = and i32 %i.fk, %i.fj
  %i.fm = load i8, ptr %.198.lcssa, align 1, !tbaa !29
  %i.fn = trunc i32 %i.fl to i8
  %i.fo = or i8 %i.fm, %i.fn
  store i8 %i.fo, ptr %.198.lcssa, align 1, !tbaa !29
  %i.fp = sub nuw nsw i32 %.1102, %.1.lcssa
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %._crit_edge
  %.6114 = phi ptr [ %.5113, %bb.ad ], [ %.4112.lcssa, %bb.ae ], [ %.4112.lcssa, %._crit_edge ]
  %.3104 = phi i32 [ %i.fg, %bb.ad ], [ %i.fp, %bb.ae ], [ %.1102, %._crit_edge ]
  %.6 = phi i16 [ %i.fh, %bb.ad ], [ %.4.lcssa, %bb.ae ], [ %.4.lcssa, %._crit_edge ]
  %i.fq = add nsw i32 %.0105137, -1
  %i.fr = getelementptr inbounds i8, ptr %.0106136, i64 %i.ao
  %i.fs = icmp sgt i32 %.0105137, 1
  br i1 %i.fs, label %bb.s, label %.loopexit, !llvm.loop !742
end_hunk_0
begin_hunk_1_@tt_cmap4_char_map_linear:bb.a
  %or.cond123.us.us.us.us = select i1 %or.cond7.us.us.us.us, i1 %i.be, i1 false ; 3 uses
  %.0102.us.us.us.us = select i1 %or.cond123.us.us.us.us, i32 0, i32 %i.az ; 2 uses
  %trunc.us.us.us.us = trunc nuw i32 %.0102.us.us.us.us to i16
  switch i16 %trunc.us.us.us.us, label %.split136.us.split.us [
    i16 -1, label %.thread4.split.us.split.us.us.us
    i16 0, label %.split49.us.split.us.split.us
  ]

.thread4.split.us.split.us.us.us:                 ; preds = %bb.c, %.split.us.us.us
  %i.bf = add nuw nsw i32 %.0100103.us.us, 1      ; 2 uses
  %exitcond204.not = icmp eq i32 %i.bf, %i.n
  br i1 %exitcond204.not, label %.thread10, label %.split107.us.split.us, !llvm.loop !828

.split49.us.split.us.split.us:                    ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.bh = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 8
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl
  %.0101.us.us.le86 = select i1 %or.cond123.us.us.us.us, i32 1, i32 %i.bm
  %i.bn = add nuw nsw i32 %.0101.us.us.le86, %.094104.us.us.mux
  %i.bo = and i32 %i.bn, 65535
  br label %.thread14

.split136.us.split.us:                            ; preds = %bb.c
  %i.bp = sub nsw i32 %.094104.us.us.mux, %i.ag
  %i.bq = shl nsw i32 %i.bp, 1
  %i.br = add nsw i32 %.0102.us.us.us.us, %i.bq
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !29
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !29
  %i.bz = zext i8 %i.by to i32
  %i.ca = or disjoint i32 %i.bw, %i.bz            ; 2 uses
  %.not117.us.us = icmp eq i32 %i.ca, 0
  br i1 %.not117.us.us, label %.thread10, label %bb.d

.split:                                           ; preds = %bb.b, %.thread4.split
  %.091106 = phi ptr [ %i.cj, %.thread4.split ], [ %i.v, %bb.b ] ; 4 uses
  %.092105 = phi ptr [ %i.cb, %.thread4.split ], [ %i.s, %bb.b ] ; 3 uses
  %.094104 = phi i32 [ %.296, %.thread4.split ], [ %i.q, %bb.b ]
  %.0100103 = phi i32 [ %i.fe, %.thread4.split ], [ 0, %bb.b ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.092105, i64 2
  %i.cc = load i8, ptr %.092105, align 1, !tbaa !29
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.092105, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !29
  %i.ch = zext i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.ce, %i.ch            ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.091106, i64 2
  %i.ck = load i8, ptr %.091106, align 1, !tbaa !29
  %i.cl = zext i8 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.091106, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !29
  %i.cp = zext i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cm, %i.cp            ; 3 uses
  %.094104.mux = tail call i32 @llvm.umax.i32(i32 %.094104, i32 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %.091106, i64 %i.u ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.u ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = icmp uge i32 %.0100103, %i.w
  %i.cw = icmp eq i32 %i.cq, 65535
  %or.cond = and i1 %i.cv, %i.cw
  %i.cx = icmp eq i32 %i.ci, 65535
  %or.cond3 = and i1 %or.cond, %i.cx
  br label %bb.e

bb.d:                                             ; preds = %.split136.us.split.us
  %i.cy = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd
  %.0101.us.us.le = select i1 %or.cond123.us.us.us.us, i32 1, i32 %i.de
  %i.df = add nuw nsw i32 %i.ca, %.0101.us.us.le
  %i.dg = and i32 %i.df, 65535                    ; 2 uses
  %i.dh = load i64, ptr %i.x, align 8, !tbaa !115
  %i.di = trunc i64 %i.dh to i32
  %.not118.us.us = icmp ult i32 %i.dg, %i.di
  %spec.store.select.us.us = select i1 %.not118.us.us, i32 %i.dg, i32 0
  br label %.thread10

bb.e:                                             ; preds = %.thread, %.split
  %.296 = phi i32 [ %.094104.mux, %.split ], [ %i.fd, %.thread ] ; 9 uses
  %.not112 = icmp ugt i32 %.296, %i.ci
  br i1 %.not112, label %.thread4.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dj = load i8, ptr %i.cr, align 1, !tbaa !29
  %i.dk = zext i8 %i.dj to i16
  %i.dl = shl nuw i16 %i.dk, 8
  %i.dm = load i8, ptr %i.cs, align 1, !tbaa !29
  %i.dn = zext i8 %i.dm to i16
  %i.do = or disjoint i16 %i.dl, %i.dn
  %i.dp = sext i16 %i.do to i32
  %i.dq = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.dr = zext i8 %i.dq to i32
  %i.ds = shl nuw nsw i32 %i.dr, 8
  %i.dt = load i8, ptr %i.cu, align 1, !tbaa !29
  %i.du = zext i8 %i.dt to i32
  %i.dv = or disjoint i32 %i.ds, %i.du            ; 3 uses
  %i.dw = icmp ne i32 %i.dv, 0
  %or.cond7 = select i1 %or.cond3, i1 %i.dw, i1 false
  %i.dx = zext nneg i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ea = icmp ugt ptr %i.dz, %i.e
  %or.cond123 = select i1 %or.cond7, i1 %i.ea, i1 false ; 2 uses
  %.0102 = select i1 %or.cond123, i32 0, i32 %i.dv ; 2 uses
  %.0101 = select i1 %or.cond123, i32 1, i32 %i.dp ; 5 uses
  %trunc = trunc nuw i32 %.0102 to i16
  switch i16 %trunc, label %bb.g [
    i16 -1, label %.thread4.split
    i16 0, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  %i.eb = sub nsw i32 %.296, %i.cq
  %i.ec = shl nsw i32 %i.eb, 1
  %i.ed = add nsw i32 %.0102, %i.ec
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.ee ; 3 uses
  %i.eg = icmp ugt ptr %i.ef, %i.e
  br i1 %i.eg, label %.thread4.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eh = load i8, ptr %i.ef, align 1, !tbaa !29
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw nsw i32 %i.ei, 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !29
  %i.em = zext i8 %i.el to i32
  %i.en = or disjoint i32 %i.ej, %i.em            ; 2 uses
  %.not117 = icmp eq i32 %i.en, 0
  br i1 %.not117, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eo = add nsw i32 %i.en, %.0101
  %i.ep = and i32 %i.eo, 65535                    ; 2 uses
  %i.eq = load i64, ptr %i.x, align 8, !tbaa !115
  %i.er = trunc i64 %i.eq to i32
  %.not118 = icmp ult i32 %i.ep, %i.er
  br i1 %.not118, label %select.unfold, label %.thread

bb.j:                                             ; preds = %bb.f
  %i.es = add nsw i32 %.0101, %.296               ; 3 uses
  %i.et = and i32 %i.es, 65535                    ; 2 uses
  %i.eu = load i64, ptr %i.x, align 8, !tbaa !115
  %i.ev = trunc i64 %i.eu to i32
  %.not115 = icmp ult i32 %i.et, %i.ev
  br i1 %.not115, label %select.unfold, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ew = icmp slt i32 %i.es, 0
  %i.ex = add nsw i32 %.0101, %i.ci               ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, -1
  %or.cond126 = select i1 %i.ew, i1 %i.ey, i1 false
  br i1 %or.cond126, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ez = sub nsw i32 0, %.0101
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.fa = icmp slt i32 %i.es, 65536
  %i.fb = icmp sgt i32 %i.ex, 65535
  %or.cond128 = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond128, label %bb.n, label %.thread4.split

bb.n:                                             ; preds = %bb.m
  %narrow = sub nsw i32 65536, %.0101
  br label %.thread

select.unfold:                                    ; preds = %bb.i, %bb.j
  %.2 = phi i32 [ %i.et, %bb.j ], [ %i.ep, %bb.i ] ; 2 uses
  %.not214 = icmp eq i32 %.2, 0
  br i1 %.not214, label %.thread, label %.thread10

.thread:                                          ; preds = %bb.n, %bb.l, %bb.h, %bb.i, %select.unfold
  %.397219 = phi i32 [ %.296, %select.unfold ], [ %narrow, %bb.n ], [ %i.ez, %bb.l ], [ %.296, %bb.h ], [ %.296, %bb.i ] ; 3 uses
  %i.fc = icmp ugt i32 %.397219, 65534
  %i.fd = add nuw nsw i32 %.397219, 1
  br i1 %i.fc, label %.thread10.thread21, label %bb.e

.thread4.split:                                   ; preds = %bb.m, %bb.f, %bb.g, %bb.e
  %i.fe = add nuw nsw i32 %.0100103, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.fe, %i.n
  br i1 %exitcond.not, label %.thread10, label %.split, !llvm.loop !828

.thread10:                                        ; preds = %.thread4.split, %select.unfold, %.thread4.split.us.split.us.us.us, %bb.d, %.split136.us.split.us
  %.6 = phi i32 [ %.296, %select.unfold ], [ %.094104.us.us.mux, %.split136.us.split.us ], [ %.094104.us.us.mux, %.thread4.split.us.split.us.us.us ], [ %.094104.us.us.mux, %bb.d ], [ %.296, %.thread4.split ]
  %.5 = phi i32 [ %.2, %select.unfold ], [ 0, %.split136.us.split.us ], [ 0, %.thread4.split.us.split.us.us.us ], [ %spec.store.select.us.us, %bb.d ], [ 0, %.thread4.split ] ; 2 uses
  br i1 %.not114, label %.thread14, label %.thread10.thread21

.thread10.thread21:                               ; preds = %.thread, %.thread10
  %.526 = phi i32 [ %.5, %.thread10 ], [ 0, %.thread ]
  %.625 = phi i32 [ %.6, %.thread10 ], [ %.397219, %.thread ]
  store i32 %.625, ptr %0, align 4, !tbaa !30
  br label %.thread14

.thread14:                                        ; preds = %.split107.us.split.us, %.split49.us.split.us.split.us, %.thread10, %.thread10.thread21, %bb.a
  %.0103 = phi i32 [ 0, %bb.a ], [ %.526, %.thread10.thread21 ], [ %.5, %.thread10 ], [ %i.bo, %.split49.us.split.us.split.us ], [ 0, %.split107.us.split.us ]
  ret i32 %.0103
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @tt_cmap4_char_map_binary(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !345
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  %i.e = load i64, ptr %i.d, align 8, !tbaa !203
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !30
  %i.h = zext nneg i8 %2 to i32
  %i.i = add i32 %i.g, %i.h                       ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.m = load i8, ptr %i.l, align 1, !tbaa !29
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = zext i8 %i.q to i32
  %i.s = or disjoint i32 %i.o, %i.r               ; 2 uses
  %i.t = lshr i32 %i.s, 1                         ; 7 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %.thread371, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = and i32 %i.s, 65534                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 8 uses
  %i.w = add nuw nsw i32 %i.u, 2
  %i.x = zext nneg i32 %i.w to i64                ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.v, %bb.b
  %.0232 = phi i32 [ %i.t, %bb.b ], [ %.1233, %bb.v ] ; 2 uses
  %.0230 = phi i32 [ 0, %bb.b ], [ %.1231, %bb.v ] ; 2 uses
  %i.y = add i32 %.0230, %.0232                   ; 4 uses
  %i.z = lshr i32 %i.y, 1                         ; 15 uses
  %i.aa = and i32 %i.y, -2
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.af, %i.ai            ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = zext i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.an, %i.aq            ; 7 uses
  %i.as = icmp ult i32 %i.i, %i.ar
  br i1 %i.as, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = icmp ugt i32 %i.i, %i.aj
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = add nuw i32 %i.z, 1
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.av = zext nneg i32 %i.u to i64               ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.av ; 3 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !29
  %i.ay = zext i8 %i.ax to i16
  %i.az = shl nuw i16 %i.ay, 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29
  %i.bc = zext i8 %i.bb to i16
  %i.bd = or disjoint i16 %i.az, %i.bc
  %i.be = sext i16 %i.bd to i32                   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = zext i8 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = zext i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bi, %i.bl            ; 4 uses
  %i.bn = add nsw i32 %i.t, -1
  %i.bo = icmp uge i32 %i.z, %i.bn
  %i.bp = icmp eq i32 %i.ar, 65535
  %or.cond = and i1 %i.bo, %i.bp
  %i.bq = icmp eq i32 %i.aj, 65535
  %or.cond3 = select i1 %or.cond, i1 %i.bq, i1 false
  %i.br = icmp ne i32 %i.bm, 0
  %or.cond5 = select i1 %or.cond3, i1 %i.br, i1 false
  %i.bs = zext nneg i32 %i.bm to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = icmp ugt ptr %i.bu, %i.f
  %or.cond315 = select i1 %or.cond5, i1 %i.bv, i1 false ; 2 uses
  %.0246 = select i1 %or.cond315, i32 0, i32 %i.bm ; 4 uses
  %.0234 = select i1 %or.cond315, i32 1, i32 %i.be ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !46
  %i.by = and i32 %i.bx, 2
  %.not295 = icmp eq i32 %i.by, 0
  %i.bz = icmp eq i32 %.0246, 65535               ; 3 uses
  br i1 %.not295, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = add nuw i32 %i.z, 1                     ; 3 uses
  %.not296411 = icmp eq i32 %i.z, 0
  br i1 %.not296411, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %spec.select = select i1 %i.bz, i32 %i.ca, i32 %i.z ; 2 uses
  %i.cb = lshr i32 %i.y, 1                        ; 3 uses
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  %i.cd = shl nuw i32 %i.cc, 1
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ce ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !29
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !29
  %i.cl = zext i8 %i.ck to i32
  %i.cm = or disjoint i32 %i.ci, %i.cl            ; 2 uses
  %i.cn = icmp samesign ugt i32 %i.i, %i.cm
  br i1 %i.cn, label %._crit_edge, label %.lr.ph561

.lr.ph561:                                        ; preds = %.lr.ph.preheader
  %i.co = zext nneg i32 %i.cb to i64
  %invariant.gep = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

.lr.ph:                                           ; preds = %bb.h
  %indvars.iv.next = add nsw i64 %indvars.iv559, -1 ; 2 uses
  %i.cp = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  %i.cr = shl nuw i32 %i.cq, 1
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !29
  %i.cz = zext i8 %i.cy to i32
  %i.da = or disjoint i32 %i.cw, %i.cz            ; 2 uses
  %i.db = icmp samesign ugt i32 %i.i, %i.da
  br i1 %i.db, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !829

bb.h:                                             ; preds = %.lr.ph561, %.lr.ph
  %i.dc = phi i32 [ %i.cm, %.lr.ph561 ], [ %i.da, %.lr.ph ] ; 2 uses
  %i.dd = phi i64 [ %i.ce, %.lr.ph561 ], [ %i.cs, %.lr.ph ]
  %i.de = phi i32 [ %i.cc, %.lr.ph561 ], [ %i.cq, %.lr.ph ] ; 2 uses
  %.1220416560 = phi i32 [ %spec.select, %.lr.ph561 ], [ %spec.select316, %.lr.ph ]
  %indvars.iv559 = phi i64 [ %i.co, %.lr.ph561 ], [ %indvars.iv.next, %.lr.ph ]
  %gep = getelementptr inbounds i8, ptr %invariant.gep, i64 %i.dd ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %gep, i64 %i.av ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.av ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !29
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !29
  %i.dm = zext i8 %i.dl to i32
  %i.dn = or disjoint i32 %i.dj, %i.dm            ; 3 uses
  %.not297 = icmp eq i32 %i.dn, 65535
  %spec.select316 = select i1 %.not297, i32 %.1220416560, i32 %i.de ; 3 uses
  %.not296 = icmp eq i32 %i.de, 0
  br i1 %.not296, label %.._crit_edge_crit_edge, label %.lr.ph, !llvm.loop !829

.._crit_edge_crit_edge:                           ; preds = %bb.h
  %i.do = load i8, ptr %gep, align 1, !tbaa !29
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !29
  %i.dt = zext i8 %i.ds to i32
  %i.du = or disjoint i32 %i.dq, %i.dt
  %i.dv = load i8, ptr %i.df, align 1, !tbaa !29
  %i.dw = zext i8 %i.dv to i16
  %i.dx = shl nuw i16 %i.dw, 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !29
  %i.ea = zext i8 %i.dz to i16
end_hunk_1
