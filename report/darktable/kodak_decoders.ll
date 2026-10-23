Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/kodak_decoders?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN6LibRaw19kodak_radc_load_rawEv:bb.a
  store <16 x i16> %i.dn, ptr %i.ds, align 8, !tbaa !79
  %index.next634 = add nuw i64 %index629, 64      ; 2 uses
  %vec.ind.next635 = add <16 x i32> %vec.ind630, splat (i32 64)
  %i.dt = icmp eq i64 %index.next634, 768
  br i1 %i.dt, label %vector.body639, label %vector.body628, !llvm.loop !109

vector.body639:                                   ; preds = %vector.body628, %vector.body639
  %index640 = phi i64 [ %index.next641.7, %vector.body639 ], [ 0, %vector.body628 ] ; 9 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8190
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8222
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8254
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8286
  store <16 x i16> splat (i16 16383), ptr %i.dv, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.dw, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.dx, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.dy, align 2, !tbaa !79
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8318
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8350
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 8382
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 8414
  store <16 x i16> splat (i16 16383), ptr %i.ea, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.eb, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.ec, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.ed, align 2, !tbaa !79
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8446
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8478
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8510
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8542
  store <16 x i16> splat (i16 16383), ptr %i.ef, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.eg, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.eh, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.ei, align 2, !tbaa !79
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8574
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8606
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8638
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 8670
  store <16 x i16> splat (i16 16383), ptr %i.ek, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.el, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.em, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.en, align 2, !tbaa !79
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8702
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8734
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8766
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8798
  store <16 x i16> splat (i16 16383), ptr %i.ep, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.eq, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.er, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.es, align 2, !tbaa !79
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8830
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8862
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8894
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8926
  store <16 x i16> splat (i16 16383), ptr %i.eu, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.ev, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.ew, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.ex, align 2, !tbaa !79
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8958
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8990
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 9022
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 9054
  store <16 x i16> splat (i16 16383), ptr %i.ez, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.fa, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.fb, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.fc, align 2, !tbaa !79
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index640 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 9086
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 9118
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 9150
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 9182
  store <16 x i16> splat (i16 16383), ptr %i.fe, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.ff, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.fg, align 2, !tbaa !79
  store <16 x i16> splat (i16 16383), ptr %i.fh, align 2, !tbaa !79
  %index.next641.7 = add nuw nsw i64 %index640, 512 ; 2 uses
  %i.fi = icmp eq i64 %index.next641.7, 61440
  br i1 %i.fi, label %.lr.ph.4, label %vector.body639, !llvm.loop !110

.lr.ph.4:                                         ; preds = %vector.body639
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 136670
  store i16 16383, ptr %i.fj, align 2, !tbaa !79
  br label %.preheader318

.preheader318:                                    ; preds = %.lr.ph.4, %._crit_edge327
  %indvars.iv421 = phi i64 [ %indvars.iv.next422, %._crit_edge327 ], [ 0, %.lr.ph.4 ] ; 3 uses
  %.0231329 = phi i32 [ %.1232.lcssa, %._crit_edge327 ], [ 0, %.lr.ph.4 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw19kodak_radc_load_rawEvE3src, i64 %indvars.iv421 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !81  ; 2 uses
  %.not379 = icmp ugt i8 %i.fl, 8
  br i1 %.not379, label %._crit_edge327, label %iter.check656

iter.check656:                                    ; preds = %.preheader318
  %i.fm = zext nneg i8 %i.fl to i32               ; 2 uses
  %i.fn = lshr i32 256, %i.fm                     ; 2 uses
  %i.fo = shl nuw nsw i32 %i.fm, 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !81
  %i.fr = zext i8 %i.fq to i32
  %i.fs = or disjoint i32 %i.fo, %i.fr
  %i.ft = trunc nuw nsw i32 %i.fs to i16          ; 3 uses
  %i.fu = sext i32 %.0231329 to i64               ; 5 uses
  %i.fv = add nsw i32 %i.fn, -1                   ; 3 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.fv, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph657.preheader, label %vector.main.loop.iter.check644

vector.main.loop.iter.check644:                   ; preds = %iter.check656
  %min.iters.check645 = icmp ult i32 %i.fv, 63
  br i1 %min.iters.check645, label %vec.epilog.ph659, label %vector.ph646

vector.ph646:                                     ; preds = %vector.main.loop.iter.check644
  %i.fy = and i64 %i.fx, 56
  %n.vec = and i64 %i.fx, 8589934528              ; 5 uses
  %i.fz = add nsw i64 %n.vec, %i.fu               ; 2 uses
  %i.ga = trunc i64 %n.vec to i32
  %broadcast.splatinsert647 = insertelement <16 x i16> poison, i16 %i.ft, i64 0
  %broadcast.splat648 = shufflevector <16 x i16> %broadcast.splatinsert647, <16 x i16> poison, <16 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.q, i64 %i.fu
  br label %vector.body649

vector.body649:                                   ; preds = %vector.ph646, %vector.body649
  %index650 = phi i64 [ 0, %vector.ph646 ], [ %index.next651, %vector.body649 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index650 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.gd = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <16 x i16> %broadcast.splat648, ptr %gep, align 2, !tbaa !79
  store <16 x i16> %broadcast.splat648, ptr %i.gb, align 2, !tbaa !79
  store <16 x i16> %broadcast.splat648, ptr %i.gc, align 2, !tbaa !79
  store <16 x i16> %broadcast.splat648, ptr %i.gd, align 2, !tbaa !79
  %index.next651 = add nuw i64 %index650, 64      ; 2 uses
  %i.ge = icmp eq i64 %index.next651, %n.vec
  br i1 %i.ge, label %middle.block652, label %vector.body649, !llvm.loop !111

middle.block652:                                  ; preds = %vector.body649
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  br i1 %cmp.n, label %._crit_edge327.loopexit, label %vec.epilog.iter.check658

vec.epilog.iter.check658:                         ; preds = %middle.block652
  %min.epilog.iters.check = icmp eq i64 %i.fy, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph657.preheader, label %vec.epilog.ph659, !prof !128

vec.epilog.ph659:                                 ; preds = %vector.main.loop.iter.check644, %vec.epilog.iter.check658
  %vec.epilog.resume.val653 = phi i64 [ %n.vec, %vec.epilog.iter.check658 ], [ 0, %vector.main.loop.iter.check644 ]
  %n.vec660 = and i64 %i.fx, 8589934584           ; 4 uses
  %i.gf = add nsw i64 %n.vec660, %i.fu            ; 2 uses
  %i.gg = trunc i64 %n.vec660 to i32
  %broadcast.splatinsert661 = insertelement <8 x i16> poison, i16 %i.ft, i64 0
  %broadcast.splat662 = shufflevector <8 x i16> %broadcast.splatinsert661, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.gep779 = getelementptr [2 x i8], ptr %i.q, i64 %i.fu
  br label %vec.epilog.vector.body663

vec.epilog.vector.body663:                        ; preds = %vec.epilog.vector.body663, %vec.epilog.ph659
  %index664 = phi i64 [ %vec.epilog.resume.val653, %vec.epilog.ph659 ], [ %index.next665, %vec.epilog.vector.body663 ] ; 2 uses
  %gep780 = getelementptr [2 x i8], ptr %invariant.gep779, i64 %index664
  store <8 x i16> %broadcast.splat662, ptr %gep780, align 2, !tbaa !79
  %index.next665 = add nuw i64 %index664, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next665, %n.vec660
  br i1 %i.gh, label %vec.epilog.middle.block666, label %vec.epilog.vector.body663, !llvm.loop !112

vec.epilog.middle.block666:                       ; preds = %vec.epilog.vector.body663
  %cmp.n667 = icmp eq i64 %i.fx, %n.vec660
  br i1 %cmp.n667, label %._crit_edge327.loopexit, label %vec.epilog.scalar.ph657.preheader

vec.epilog.scalar.ph657.preheader:                ; preds = %iter.check656, %vec.epilog.iter.check658, %vec.epilog.middle.block666
  %indvars.iv417.ph = phi i64 [ %i.fu, %iter.check656 ], [ %i.fz, %vec.epilog.iter.check658 ], [ %i.gf, %vec.epilog.middle.block666 ]
  %.1234324.ph = phi i32 [ 0, %iter.check656 ], [ %i.ga, %vec.epilog.iter.check658 ], [ %i.gg, %vec.epilog.middle.block666 ]
  br label %vec.epilog.scalar.ph657

vec.epilog.scalar.ph657:                          ; preds = %vec.epilog.scalar.ph657.preheader, %vec.epilog.scalar.ph657
  %indvars.iv417 = phi i64 [ %indvars.iv.next418, %vec.epilog.scalar.ph657 ], [ %indvars.iv417.ph, %vec.epilog.scalar.ph657.preheader ] ; 2 uses
  %.1234324 = phi i32 [ %i.gj, %vec.epilog.scalar.ph657 ], [ %.1234324.ph, %vec.epilog.scalar.ph657.preheader ]
  %indvars.iv.next418 = add nsw i64 %indvars.iv417, 1 ; 2 uses
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv417
  store i16 %i.ft, ptr %i.gi, align 2, !tbaa !79
  %i.gj = add nuw nsw i32 %.1234324, 1            ; 2 uses
  %exitcond420.not = icmp eq i32 %i.gj, %i.fn
  br i1 %exitcond420.not, label %._crit_edge327.loopexit, label %vec.epilog.scalar.ph657, !llvm.loop !113

._crit_edge327.loopexit:                          ; preds = %vec.epilog.scalar.ph657, %vec.epilog.middle.block666, %middle.block652
  %indvars.iv.next418.lcssa = phi i64 [ %i.gf, %vec.epilog.middle.block666 ], [ %i.fz, %middle.block652 ], [ %indvars.iv.next418, %vec.epilog.scalar.ph657 ]
  %i.gk = trunc nsw i64 %indvars.iv.next418.lcssa to i32
  br label %._crit_edge327

._crit_edge327:                                   ; preds = %._crit_edge327.loopexit, %.preheader318
  %.1232.lcssa = phi i32 [ %.0231329, %.preheader318 ], [ %i.gk, %._crit_edge327.loopexit ]
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 2
  %i.gl = icmp samesign ult i64 %indvars.iv421, 258
  br i1 %i.gl, label %.preheader318, label %vector.body678, !llvm.loop !114

vector.body678:                                   ; preds = %._crit_edge327
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 381744
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !129
  %i.go = icmp eq i32 %i.gn, 243
  %i.gp = select i1 %i.go, i16 2, i16 3           ; 3 uses
  %1 = add nsw i16 %i.gp, -1
  %2 = shl nuw nsw i16 1, %1
  %broadcast.splatinsert676 = insertelement <16 x i16> poison, i16 %2, i64 0
  %broadcast.splat677 = shufflevector <16 x i16> %broadcast.splatinsert676, <16 x i16> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.gq = shl nsw i16 -1, %i.gp
  %broadcast.splatinsert674 = insertelement <16 x i16> poison, i16 %i.gq, i64 0
  %broadcast.splat675 = shufflevector <16 x i16> %broadcast.splatinsert674, <16 x i16> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.gr = shl nuw nsw i16 %i.gp, 8
  %broadcast.splatinsert672 = insertelement <16 x i16> poison, i16 %i.gr, i64 0
  %broadcast.splat673 = shufflevector <16 x i16> %broadcast.splatinsert672, <16 x i16> poison, <16 x i32> zeroinitializer ; 16 uses
  %i.gs = and <16 x i16> %broadcast.splat675, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>
  %i.gt = and <16 x i16> %broadcast.splat675, <i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31>
  %i.gu = and <16 x i16> %broadcast.splat675, <i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47>
  %i.gv = and <16 x i16> %broadcast.splat675, <i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63>
  %i.gw = sub nsw <16 x i16> %i.gs, %broadcast.splat673
  %i.gx = sub nsw <16 x i16> %i.gt, %broadcast.splat673
  %i.gy = sub nsw <16 x i16> %i.gu, %broadcast.splat673
  %i.gz = sub nsw <16 x i16> %i.gv, %broadcast.splat673
  %i.ha = add nsw <16 x i16> %i.gw, splat (i16 2048)
  %i.hb = add nsw <16 x i16> %i.gx, splat (i16 2048)
  %i.hc = add nsw <16 x i16> %i.gy, splat (i16 2048)
  %i.hd = add nsw <16 x i16> %i.gz, splat (i16 2048)
  %i.he = or <16 x i16> %i.ha, %broadcast.splat677
  %i.hf = or <16 x i16> %i.hb, %broadcast.splat677
  %i.hg = or <16 x i16> %i.hc, %broadcast.splat677
  %i.hh = or <16 x i16> %i.hd, %broadcast.splat677
  %i.hi = getelementptr inbounds nuw i8, ptr %i.q, i64 9216
  %i.hj = getelementptr inbounds nuw i8, ptr %i.q, i64 9248
  %i.hk = getelementptr inbounds nuw i8, ptr %i.q, i64 9280
  %i.hl = getelementptr inbounds nuw i8, ptr %i.q, i64 9312
  store <16 x i16> %i.he, ptr %i.hi, align 2, !tbaa !79
  store <16 x i16> %i.hf, ptr %i.hj, align 2, !tbaa !79
  store <16 x i16> %i.hg, ptr %i.hk, align 2, !tbaa !79
  store <16 x i16> %i.hh, ptr %i.hl, align 2, !tbaa !79
  %i.hm = and <16 x i16> %broadcast.splat675, <i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79>
  %i.hn = and <16 x i16> %broadcast.splat675, <i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95>
  %i.ho = and <16 x i16> %broadcast.splat675, <i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111>
  %i.hp = and <16 x i16> %broadcast.splat675, <i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127>
  %i.hq = sub nsw <16 x i16> %i.hm, %broadcast.splat673
  %i.hr = sub nsw <16 x i16> %i.hn, %broadcast.splat673
  %i.hs = sub nsw <16 x i16> %i.ho, %broadcast.splat673
  %i.ht = sub nsw <16 x i16> %i.hp, %broadcast.splat673
  %i.hu = add nsw <16 x i16> %i.hq, splat (i16 2048)
  %i.hv = add nsw <16 x i16> %i.hr, splat (i16 2048)
  %i.hw = add nsw <16 x i16> %i.hs, splat (i16 2048)
  %i.hx = add nsw <16 x i16> %i.ht, splat (i16 2048)
  %i.hy = or <16 x i16> %i.hu, %broadcast.splat677
  %i.hz = or <16 x i16> %i.hv, %broadcast.splat677
  %i.ia = or <16 x i16> %i.hw, %broadcast.splat677
  %i.ib = or <16 x i16> %i.hx, %broadcast.splat677
  %i.ic = getelementptr inbounds nuw i8, ptr %i.q, i64 9344
  %i.id = getelementptr inbounds nuw i8, ptr %i.q, i64 9376
  %i.ie = getelementptr inbounds nuw i8, ptr %i.q, i64 9408
  %i.if = getelementptr inbounds nuw i8, ptr %i.q, i64 9440
  store <16 x i16> %i.hy, ptr %i.ic, align 2, !tbaa !79
  store <16 x i16> %i.hz, ptr %i.id, align 2, !tbaa !79
  store <16 x i16> %i.ia, ptr %i.ie, align 2, !tbaa !79
  store <16 x i16> %i.ib, ptr %i.if, align 2, !tbaa !79
  %i.ig = and <16 x i16> %broadcast.splat675, <i16 128, i16 129, i16 130, i16 131, i16 132, i16 133, i16 134, i16 135, i16 136, i16 137, i16 138, i16 139, i16 140, i16 141, i16 142, i16 143>
  %i.ih = and <16 x i16> %broadcast.splat675, <i16 144, i16 145, i16 146, i16 147, i16 148, i16 149, i16 150, i16 151, i16 152, i16 153, i16 154, i16 155, i16 156, i16 157, i16 158, i16 159>
  %i.ii = and <16 x i16> %broadcast.splat675, <i16 160, i16 161, i16 162, i16 163, i16 164, i16 165, i16 166, i16 167, i16 168, i16 169, i16 170, i16 171, i16 172, i16 173, i16 174, i16 175>
  %i.ij = and <16 x i16> %broadcast.splat675, <i16 176, i16 177, i16 178, i16 179, i16 180, i16 181, i16 182, i16 183, i16 184, i16 185, i16 186, i16 187, i16 188, i16 189, i16 190, i16 191>
  %i.ik = sub nsw <16 x i16> %i.ig, %broadcast.splat673
  %i.il = sub nsw <16 x i16> %i.ih, %broadcast.splat673
  %i.im = sub nsw <16 x i16> %i.ii, %broadcast.splat673
  %i.in = sub nsw <16 x i16> %i.ij, %broadcast.splat673
  %i.io = add nsw <16 x i16> %i.ik, splat (i16 2048)
  %i.ip = add nsw <16 x i16> %i.il, splat (i16 2048)
  %i.iq = add nsw <16 x i16> %i.im, splat (i16 2048)
  %i.ir = add nsw <16 x i16> %i.in, splat (i16 2048)
  %i.is = or <16 x i16> %i.io, %broadcast.splat677
  %i.it = or <16 x i16> %i.ip, %broadcast.splat677
  %i.iu = or <16 x i16> %i.iq, %broadcast.splat677
  %i.iv = or <16 x i16> %i.ir, %broadcast.splat677
  %i.iw = getelementptr inbounds nuw i8, ptr %i.q, i64 9472
  %i.ix = getelementptr inbounds nuw i8, ptr %i.q, i64 9504
  %i.iy = getelementptr inbounds nuw i8, ptr %i.q, i64 9536
  %i.iz = getelementptr inbounds nuw i8, ptr %i.q, i64 9568
  store <16 x i16> %i.is, ptr %i.iw, align 2, !tbaa !79
  store <16 x i16> %i.it, ptr %i.ix, align 2, !tbaa !79
  store <16 x i16> %i.iu, ptr %i.iy, align 2, !tbaa !79
  store <16 x i16> %i.iv, ptr %i.iz, align 2, !tbaa !79
  %i.ja = and <16 x i16> %broadcast.splat675, <i16 192, i16 193, i16 194, i16 195, i16 196, i16 197, i16 198, i16 199, i16 200, i16 201, i16 202, i16 203, i16 204, i16 205, i16 206, i16 207>
  %i.jb = and <16 x i16> %broadcast.splat675, <i16 208, i16 209, i16 210, i16 211, i16 212, i16 213, i16 214, i16 215, i16 216, i16 217, i16 218, i16 219, i16 220, i16 221, i16 222, i16 223>
  %i.jc = and <16 x i16> %broadcast.splat675, <i16 224, i16 225, i16 226, i16 227, i16 228, i16 229, i16 230, i16 231, i16 232, i16 233, i16 234, i16 235, i16 236, i16 237, i16 238, i16 239>
  %i.jd = and <16 x i16> %broadcast.splat675, <i16 240, i16 241, i16 242, i16 243, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255>
  %i.je = sub nsw <16 x i16> %i.ja, %broadcast.splat673
  %i.jf = sub nsw <16 x i16> %i.jb, %broadcast.splat673
  %i.jg = sub nsw <16 x i16> %i.jc, %broadcast.splat673
  %i.jh = sub nsw <16 x i16> %i.jd, %broadcast.splat673
  %i.ji = add nsw <16 x i16> %i.je, splat (i16 2048)
  %i.jj = add nsw <16 x i16> %i.jf, splat (i16 2048)
  %i.jk = add nsw <16 x i16> %i.jg, splat (i16 2048)
  %i.jl = add nsw <16 x i16> %i.jh, splat (i16 2048)
  %i.jm = or <16 x i16> %i.ji, %broadcast.splat677
  %i.jn = or <16 x i16> %i.jj, %broadcast.splat677
  %i.jo = or <16 x i16> %i.jk, %broadcast.splat677
  %i.jp = or <16 x i16> %i.jl, %broadcast.splat677
  %i.jq = getelementptr inbounds nuw i8, ptr %i.q, i64 9600
  %i.jr = getelementptr inbounds nuw i8, ptr %i.q, i64 9632
  %i.js = getelementptr inbounds nuw i8, ptr %i.q, i64 9664
  %i.jt = getelementptr inbounds nuw i8, ptr %i.q, i64 9696
  store <16 x i16> %i.jm, ptr %i.jq, align 2, !tbaa !79
  store <16 x i16> %i.jn, ptr %i.jr, align 2, !tbaa !79
  store <16 x i16> %i.jo, ptr %i.js, align 2, !tbaa !79
  store <16 x i16> %i.jp, ptr %i.jt, align 2, !tbaa !79
  %i.ju = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef -1, ptr noundef null)
          to label %vector.body690 unwind label %_ZNSt6vectorItSaItEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

vector.body690:                                   ; preds = %vector.body678, %vector.body690
  %index691 = phi i64 [ %index.next692.5, %vector.body690 ], [ 0, %vector.body678 ] ; 7 uses
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index691 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 64
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 96
  store <16 x i16> splat (i16 2048), ptr %i.jv, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.jw, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.jx, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.jy, align 16, !tbaa !79
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index691 ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 128
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jz, i64 160
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 192
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jz, i64 224
  store <16 x i16> splat (i16 2048), ptr %i.ka, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kb, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kc, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kd, align 16, !tbaa !79
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index691 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 256
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 288
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 320
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 352
  store <16 x i16> splat (i16 2048), ptr %i.kf, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kg, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kh, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.ki, align 16, !tbaa !79
  %i.kj = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index691 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 384
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 416
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 448
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 480
  store <16 x i16> splat (i16 2048), ptr %i.kk, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kl, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.km, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kn, align 16, !tbaa !79
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index691 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 512
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 544
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 576
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 608
  store <16 x i16> splat (i16 2048), ptr %i.kp, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kq, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kr, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.ks, align 16, !tbaa !79
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index691 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 640
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 672
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 704
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 736
  store <16 x i16> splat (i16 2048), ptr %i.ku, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kv, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kw, align 16, !tbaa !79
  store <16 x i16> splat (i16 2048), ptr %i.kx, align 16, !tbaa !79
  %index.next692.5 = add nuw nsw i64 %index691, 384 ; 2 uses
  %i.ky = icmp eq i64 %index.next692.5, 3456
  br i1 %i.ky, label %vec.epilog.vector.body699, label %vector.body690, !llvm.loop !115

vec.epilog.vector.body699:                        ; preds = %vector.body690
  %i.kz = getelementptr inbounds nuw i8, ptr %i.c, i64 6912
  store <16 x i16> splat (i16 2048), ptr %i.kz, align 16, !tbaa !79
  %i.la = getelementptr inbounds nuw i8, ptr %i.c, i64 6944
  store i16 2048, ptr %i.la, align 16, !tbaa !79
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 6946
  store i16 2048, ptr %i.lb, align 2, !tbaa !79
  %i.lc = load i16, ptr %i.k, align 4, !tbaa !76
  %.not380 = icmp eq i16 %i.lc, 0
  br i1 %.not380, label %.preheader314..preheader_crit_edge, label %.lr.ph376

.preheader314..preheader_crit_edge:               ; preds = %vec.epilog.vector.body699
  %.pre526 = load i16, ptr %i.e, align 2, !tbaa !74
  br label %.preheader

.lr.ph376:                                        ; preds = %vec.epilog.vector.body699
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.q, i64 9216 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.q, i64 4608
  %i.lh = getelementptr inbounds nuw i8, ptr %i.q, i64 5120 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 10 uses
  br label %bb.e

.preheader.loopexit:                              ; preds = %._crit_edge373.3
  %i.lj = zext i16 %i.ali to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader314..preheader_crit_edge, %.preheader.loopexit
  %i.lk = phi i16 [ %i.alh, %.preheader.loopexit ], [ %.pre526, %.preheader314..preheader_crit_edge ]
  %i.ll = phi i32 [ %i.lj, %.preheader.loopexit ], [ 0, %.preheader314..preheader_crit_edge ]
  %i.lm = zext i16 %i.lk to i32
  %i.ln = mul nuw nsw i32 %i.ll, %i.lm
  %.not386 = icmp eq i32 %i.ln, 0
  br i1 %.not386, label %_ZNSt6vectorItSaItEED2Ev.exit276, label %.lr.ph378

.lr.ph378:                                        ; preds = %.preheader
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !82
  br label %bb.al

bb.e:                                             ; preds = %.lr.ph376, %._crit_edge373.3
  %indvars.iv517 = phi i64 [ 0, %.lr.ph376 ], [ %indvars.iv.next518, %._crit_edge373.3 ] ; 4 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader310.preheader unwind label %_ZNSt6vectorItSaItEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader310.preheader:                          ; preds = %bb.e
  %i.lq = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 6, ptr noundef null)
          to label %.preheader310.1 unwind label %_ZNSt6vectorItSaItEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader310.1:                                  ; preds = %.preheader310.preheader
  %i.lr = trunc i32 %i.lq to i16                  ; 2 uses
  store i16 %i.lr, ptr %i.b, align 2, !tbaa !79
  %i.ls = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 6, ptr noundef null)
          to label %.preheader310.2 unwind label %_ZNSt6vectorItSaItEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader310.2:                                  ; preds = %.preheader310.1
  %i.lt = trunc i32 %i.ls to i16                  ; 2 uses
  store i16 %i.lt, ptr %i.ld, align 2, !tbaa !79
  %i.lu = invoke noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 6, ptr noundef null)
          to label %bb.f unwind label %_ZNSt6vectorItSaItEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.preheader310.2
  %i.lv = trunc i32 %i.lu to i16                  ; 2 uses
  store i16 %i.lv, ptr %i.le, align 2, !tbaa !79
  %i.lw = icmp ne i16 %i.lr, 0
  %i.lx = icmp ne i16 %i.lt, 0
  %or.cond = and i1 %i.lw, %i.lx
  %i.ly = icmp ne i16 %i.lv, 0
  %or.cond5 = and i1 %or.cond, %i.ly
  br i1 %or.cond5, label %.preheader309, label %bb.g

.preheader309:                                    ; preds = %bb.f
  %i.lz = add nsw i64 %indvars.iv517, -1
  br label %iter.check721

bb.g:                                             ; preds = %bb.f
  %i.ma = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 5, ptr %i.ma, align 16, !tbaa !78
  invoke void @__cxa_throw(ptr nonnull %i.ma, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
          to label %bb.am unwind label %_ZNSt6vectorItSaItEED2Ev.exit.loopexit.split-lp.loopexit.split-lp.loopexit.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader307:                                    ; preds = %bb.ac
  %i.mb = trunc nuw nsw i64 %indvars.iv517 to i32 ; 4 uses
  switch i16 %i.adh, label %.lr.ph372.peel.next [
    i16 0, label %._crit_edge373
    i16 1, label %._crit_edge373.fold.split
  ]

iter.check721:                                    ; preds = %.preheader309, %bb.ac
  %indvars.iv509 = phi i64 [ 0, %.preheader309 ], [ %indvars.iv.next510, %bb.ac ] ; 9 uses
  %i.mc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv509 ; 2 uses
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !79
  %i.me = sext i16 %i.md to i32
  %i.mf = sdiv i32 16777216, %i.me
  %i.mg = add nsw i32 %i.mf, 2047
  %i.mh = ashr i32 %i.mg, 12
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv509
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !79 ; 7 uses
  %i.mk = sext i16 %i.mj to i32                   ; 5 uses
  %i.ml = mul nsw i32 %i.mh, %i.mk                ; 2 uses
  %i.mm = icmp sgt i32 %i.ml, 65564
  %i.mn = select i1 %i.mm, i32 10, i32 12         ; 3 uses
  %3 = add nsw i32 %i.mn, -1
  %4 = shl nsw i32 -1, %3
  %i.mo = xor i32 %4, -1
  %i.mp = sub nuw nsw i32 12, %i.mn
  %i.mq = shl nsw i32 %i.ml, %i.mp
  %i.mr = getelementptr inbounds nuw [2316 x i8], ptr %i.c, i64 %indvars.iv509 ; 23 uses
  %i.ms = sext i32 %i.mq to i64                   ; 4 uses
  %i.mt = zext nneg i32 %i.mo to i64              ; 4 uses
  %i.mu = zext nneg i32 %i.mn to i64              ; 4 uses
  %broadcast.splatinsert707 = insertelement <4 x i64> poison, i64 %i.ms, i64 0
  %broadcast.splat708 = shufflevector <4 x i64> %broadcast.splatinsert707, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert709 = insertelement <4 x i64> poison, i64 %i.mt, i64 0
  %broadcast.splat710 = shufflevector <4 x i64> %broadcast.splatinsert709, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert711 = insertelement <4 x i64> poison, i64 %i.mu, i64 0
  %broadcast.splat712 = shufflevector <4 x i64> %broadcast.splatinsert711, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body713

vector.body713:                                   ; preds = %iter.check721, %vector.body713
  %index714 = phi i64 [ 0, %iter.check721 ], [ %index.next718, %vector.body713 ] ; 2 uses
  %i.mv = getelementptr inbounds nuw [2 x i8], ptr %i.mr, i64 %index714 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 16 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 24 ; 2 uses
  %wide.load = load <4 x i16>, ptr %i.mv, align 4, !tbaa !79
  %wide.load715 = load <4 x i16>, ptr %i.mw, align 4, !tbaa !79
  %wide.load716 = load <4 x i16>, ptr %i.mx, align 4, !tbaa !79
  %wide.load717 = load <4 x i16>, ptr %i.my, align 4, !tbaa !79
  %i.mz = sext <4 x i16> %wide.load to <4 x i64>
  %i.na = sext <4 x i16> %wide.load715 to <4 x i64>
  %i.nb = sext <4 x i16> %wide.load716 to <4 x i64>
  %i.nc = sext <4 x i16> %wide.load717 to <4 x i64>
  %i.nd = mul nsw <4 x i64> %broadcast.splat708, %i.mz
  %i.ne = mul nsw <4 x i64> %broadcast.splat708, %i.na
  %i.nf = mul nsw <4 x i64> %broadcast.splat708, %i.nb
  %i.ng = mul nsw <4 x i64> %broadcast.splat708, %i.nc
  %i.nh = add nsw <4 x i64> %i.nd, %broadcast.splat710
  %i.ni = add nsw <4 x i64> %i.ne, %broadcast.splat710
  %i.nj = add nsw <4 x i64> %i.nf, %broadcast.splat710
  %i.nk = add nsw <4 x i64> %i.ng, %broadcast.splat710
  %i.nl = tail call <4 x i64> @llvm.smin.v4i64(<4 x i64> %i.nh, <4 x i64> splat (i64 2147483647))
  %i.nm = tail call <4 x i64> @llvm.smin.v4i64(<4 x i64> %i.ni, <4 x i64> splat (i64 2147483647))
  %i.nn = tail call <4 x i64> @llvm.smin.v4i64(<4 x i64> %i.nj, <4 x i64> splat (i64 2147483647))
  %i.no = tail call <4 x i64> @llvm.smin.v4i64(<4 x i64> %i.nk, <4 x i64> splat (i64 2147483647))
  %i.np = ashr <4 x i64> %i.nl, %broadcast.splat712
  %i.nq = ashr <4 x i64> %i.nm, %broadcast.splat712
  %i.nr = ashr <4 x i64> %i.nn, %broadcast.splat712
  %i.ns = ashr <4 x i64> %i.no, %broadcast.splat712
  %i.nt = trunc <4 x i64> %i.np to <4 x i16>
  %i.nu = trunc <4 x i64> %i.nq to <4 x i16>
  %i.nv = trunc <4 x i64> %i.nr to <4 x i16>
  %i.nw = trunc <4 x i64> %i.ns to <4 x i16>
  store <4 x i16> %i.nt, ptr %i.mv, align 4, !tbaa !79
  store <4 x i16> %i.nu, ptr %i.mw, align 4, !tbaa !79
  store <4 x i16> %i.nv, ptr %i.mx, align 4, !tbaa !79
  store <4 x i16> %i.nw, ptr %i.my, align 4, !tbaa !79
  %index.next718 = add nuw i64 %index714, 16      ; 2 uses
  %i.nx = icmp eq i64 %index.next718, 1152
  br i1 %i.nx, label %vec.epilog.vector.body731, label %vector.body713, !llvm.loop !116

vec.epilog.vector.body731:                        ; preds = %vector.body713
  %broadcast.splatinsert729 = insertelement <4 x i64> poison, i64 %i.mu, i64 0
  %broadcast.splat730 = shufflevector <4 x i64> %broadcast.splatinsert729, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert727 = insertelement <4 x i64> poison, i64 %i.mt, i64 0
  %broadcast.splat728 = shufflevector <4 x i64> %broadcast.splatinsert727, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert725 = insertelement <4 x i64> poison, i64 %i.ms, i64 0
  %broadcast.splat726 = shufflevector <4 x i64> %broadcast.splatinsert725, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mr, i64 2304 ; 2 uses
  %wide.load733 = load <4 x i16>, ptr %i.ny, align 4, !tbaa !79
  %i.nz = sext <4 x i16> %wide.load733 to <4 x i64>
  %i.oa = mul nsw <4 x i64> %broadcast.splat726, %i.nz
  %i.ob = add nsw <4 x i64> %i.oa, %broadcast.splat728
  %i.oc = tail call <4 x i64> @llvm.smin.v4i64(<4 x i64> %i.ob, <4 x i64> splat (i64 2147483647))
  %i.od = ashr <4 x i64> %i.oc, %broadcast.splat730
  %i.oe = trunc <4 x i64> %i.od to <4 x i16>
  store <4 x i16> %i.oe, ptr %i.ny, align 4, !tbaa !79
  %i.of = getelementptr inbounds nuw i8, ptr %i.mr, i64 2312 ; 2 uses
  %i.og = load i16, ptr %i.of, align 4, !tbaa !79
  %i.oh = sext i16 %i.og to i64
  %i.oi = mul nsw i64 %i.oh, %i.ms
  %i.oj = add nsw i64 %i.oi, %i.mt
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.oj, i64 2147483647)
  %i.ok = ashr i64 %spec.select, %i.mu
  %i.ol = trunc i64 %i.ok to i16
  store i16 %i.ol, ptr %i.of, align 4, !tbaa !79
  %i.om = getelementptr inbounds nuw i8, ptr %i.mr, i64 2314 ; 2 uses
  %i.on = load i16, ptr %i.om, align 2, !tbaa !79
  %i.oo = sext i16 %i.on to i64
  %i.op = mul nsw i64 %i.oo, %i.ms
  %i.oq = add nsw i64 %i.op, %i.mt
  %spec.select.1 = tail call i64 @llvm.smin.i64(i64 %i.oq, i64 2147483647)
  %i.or = ashr i64 %spec.select.1, %i.mu
  %i.os = trunc i64 %i.or to i16
  store i16 %i.os, ptr %i.om, align 2, !tbaa !79
  store i16 %i.mj, ptr %i.mc, align 2, !tbaa !79
  %.not262 = icmp eq i64 %indvars.iv509, 0        ; 5 uses
  %i.ot = shl i16 %i.mj, 7                        ; 2 uses
  %i.ou = getelementptr i8, ptr %i.mr, i64 1544   ; 16 uses
  %i.ov = getelementptr i8, ptr %i.mr, i64 772    ; 19 uses
  %i.ow = add nsw i64 %i.lz, %indvars.iv509       ; 2 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not262, i64 2, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.mr, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.ox = select i1 %.not262, i64 770, i64 772
  %.pre = load i16, ptr %i.e, align 2, !tbaa !74
  %i.oy = getelementptr i8, ptr %i.mr, i64 772    ; 2 uses
  %i.oz = getelementptr i8, ptr %i.mr, i64 772    ; 3 uses
  %i.pa = getelementptr i8, ptr %i.mr, i64 772
  %i.pb = getelementptr i8, ptr %i.mr, i64 772
  %i.pc = getelementptr i8, ptr %i.mr, i64 1544
  %i.pd = add nsw i64 %i.ow, 2
  %i.pe = getelementptr i8, ptr %i.mr, i64 1544
  br label %bb.h

bb.h:                                             ; preds = %vec.epilog.vector.body731, %.split367.us
  %i.pf = phi i16 [ %.pre, %vec.epilog.vector.body731 ], [ %i.adh, %.split367.us ]
  %indvars.iv505 = phi i64 [ 0, %vec.epilog.vector.body731 ], [ %indvars.iv.next506, %.split367.us ] ; 3 uses
  %i.pg = lshr i16 %i.pf, 1                       ; 3 uses
  %i.ph = zext nneg i16 %i.pg to i64              ; 2 uses
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %i.ph
  store i16 %i.ot, ptr %i.pi, align 2, !tbaa !79
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %i.ph
  store i16 %i.ot, ptr %i.pj, align 2, !tbaa !79
  %.not381 = icmp eq i16 %i.pg, 0
  br i1 %.not381, label %.preheader303, label %.lr.ph359.preheader

.lr.ph359.preheader:                              ; preds = %bb.h
  %i.pk = zext nneg i16 %i.pg to i32
  br label %.lr.ph359

.preheader303:                                    ; preds = %bb.l, %.loopexit298, %bb.h
  %i.pl = shl nuw nsw i64 %indvars.iv505, 1
  %i.pm = add nuw nsw i64 %indvars.iv517, %i.pl   ; 2 uses
  %i.pn = load i16, ptr %i.e, align 2, !tbaa !74  ; 3 uses
  %.not384 = icmp ult i16 %i.pn, 2                ; 2 uses
  br i1 %.not262, label %.preheader293.us.preheader, label %.preheader293.preheader

.preheader293.preheader:                          ; preds = %.preheader303
  br i1 %.not384, label %.split367.us, label %.lr.ph361

.preheader293.us.preheader:                       ; preds = %.preheader303
  br i1 %.not384, label %.split367.us, label %.lr.ph361.us

.lr.ph361.us:                                     ; preds = %.preheader293.us.preheader
  %i.po = load ptr, ptr %i.li, align 8, !tbaa !82
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph361.us
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %bb.i ], [ 0, %.lr.ph361.us ] ; 3 uses
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %indvars.iv498
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !79
  %i.pr = sext i16 %i.pq to i32
  %i.ps = shl nsw i32 %i.pr, 4
  %i.pt = sdiv i32 %i.ps, %i.mk
  %spec.store.select.us.us = tail call i32 @llvm.smax.i32(i32 %i.pt, i32 0)
  %i.pu = trunc i32 %spec.store.select.us.us to i16
  %i.pv = load i16, ptr %i.h, align 2, !tbaa !75
  %i.pw = zext i16 %i.pv to i64
  %i.px = mul nuw nsw i64 %i.pm, %i.pw
  %.idx = shl nuw nsw i64 %indvars.iv498, 2
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 %.idx
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.py, i64 %i.px
  store i16 %i.pu, ptr %i.pz, align 2, !tbaa !79
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1 ; 2 uses
  %i.qa = load i16, ptr %i.e, align 2, !tbaa !74  ; 3 uses
  %i.qb = lshr i16 %i.qa, 1
  %i.qc = zext nneg i16 %i.qb to i64
  %i.qd = icmp samesign ult i64 %indvars.iv.next499, %i.qc
  br i1 %i.qd, label %bb.i, label %._crit_edge362.split.us.us, !llvm.loop !117

._crit_edge362.split.us.us:                       ; preds = %bb.i
  %.not384.1 = icmp ult i16 %i.qa, 2
  br i1 %.not384.1, label %.split367.us, label %.lr.ph361.us.1

.lr.ph361.us.1:                                   ; preds = %._crit_edge362.split.us.us
  %i.qe = or disjoint i64 %i.pm, 1
  %i.qf = load ptr, ptr %i.li, align 8, !tbaa !82
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph361.us.1
  %indvars.iv498.1 = phi i64 [ %indvars.iv.next499.1, %bb.j ], [ 0, %.lr.ph361.us.1 ] ; 3 uses
  %i.qg = getelementptr inbounds nuw [2 x i8], ptr %i.pe, i64 %indvars.iv498.1
  %i.qh = load i16, ptr %i.qg, align 2, !tbaa !79
  %i.qi = sext i16 %i.qh to i32
  %i.qj = shl nsw i32 %i.qi, 4
  %i.qk = sdiv i32 %i.qj, %i.mk
  %spec.store.select.us.us.1 = tail call i32 @llvm.smax.i32(i32 %i.qk, i32 0)
  %i.ql = trunc i32 %spec.store.select.us.us.1 to i16
  %i.qm = load i16, ptr %i.h, align 2, !tbaa !75
  %i.qn = zext i16 %i.qm to i64
  %i.qo = mul nuw nsw i64 %i.qe, %i.qn
  %.idx537 = shl nuw nsw i64 %indvars.iv498.1, 2
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qf, i64 %.idx537
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 2
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %i.qq, i64 %i.qo
  store i16 %i.ql, ptr %i.qr, align 2, !tbaa !79
  %indvars.iv.next499.1 = add nuw nsw i64 %indvars.iv498.1, 1 ; 2 uses
  %i.qs = load i16, ptr %i.e, align 2, !tbaa !74  ; 2 uses
  %i.qt = lshr i16 %i.qs, 1
  %i.qu = zext nneg i16 %i.qt to i64
  %i.qv = icmp samesign ult i64 %indvars.iv.next499.1, %i.qu
  br i1 %i.qv, label %bb.j, label %.split367.us, !llvm.loop !117

.lr.ph359:                                        ; preds = %.lr.ph359.preheader, %.loopexit298
  %.0244357 = phi i32 [ %i.rb, %.loopexit298 ], [ 1, %.lr.ph359.preheader ]
end_hunk_0
