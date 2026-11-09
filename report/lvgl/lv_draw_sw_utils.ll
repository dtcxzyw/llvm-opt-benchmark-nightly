Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_utils?download=true
inline.NumInlined: 12
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@lv_draw_sw_rotate:bb.a
  %i.dv = icmp sgt i32 %3, 0
  %or.cond.i99 = and i1 %i.du, %i.dv
  br i1 %or.cond.i99, label %.lr.ph.preheader.i100, label %rotate90_l8.exit

.lr.ph.preheader.i100:                            ; preds = %bb.f
  %i.dw = ashr i32 %5, 2                          ; 2 uses
  %i.dx = ashr i32 %4, 2                          ; 2 uses
  %i.dy = sext i32 %i.dx to i64                   ; 5 uses
  %i.dz = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ea = sext i32 %i.dw to i64                   ; 2 uses
  %wide.trip.count.i102 = zext nneg i32 %3 to i64 ; 7 uses
  %i.eb = shl nuw nsw i64 %wide.trip.count.i102, 2
  %i.ec = add nuw nsw i64 %wide.trip.count.i102, %i.dz
  %i.ed = shl nuw nsw i64 %i.ec, 2
  %i.ee = getelementptr i8, ptr %0, i64 %i.ed
  %scevgep501 = getelementptr i8, ptr %i.ee, i64 -4
  %scevgep502 = getelementptr i8, ptr %1, i64 %i.eb
  %i.ef = add nuw nsw i64 %i.dz, 4611686018427387903
  %i.eg = mul i64 %i.ef, %i.ea
  %i.eh = shl i64 %i.eg, 2
  %scevgep503 = getelementptr i8, ptr %1, i64 %i.eh
  %min.iters.check505 = icmp ugt i32 %3, 7
  %ident.check492.not = icmp eq i32 %i.dx, 1
  %or.cond615 = and i1 %min.iters.check505, %ident.check492.not
  %bound0507 = icmp ult ptr %scevgep503, %scevgep501
  %bound1508 = icmp ult ptr %0, %scevgep502
  %found.conflict509 = and i1 %bound0507, %bound1508
  %stride.check510 = icmp sgt i32 %i.dw, 0
  %i.ei = or i1 %found.conflict509, %stride.check510
  %n.vec512 = and i64 %wide.trip.count.i102, 2147483640 ; 4 uses
  %cmp.n519 = icmp eq i64 %n.vec512, %wide.trip.count.i102
  %xtraiter646 = and i64 %wide.trip.count.i102, 3 ; 2 uses
  %lcmp.mod647.not = icmp eq i64 %xtraiter646, 0
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %._crit_edge.i112, %.lr.ph.preheader.i100
  %indvars.iv27.i104 = phi i64 [ 0, %.lr.ph.preheader.i100 ], [ %indvars.iv.next28.i113, %._crit_edge.i112 ] ; 5 uses
  %i.ej = xor i64 %indvars.iv27.i104, -1
  %i.ek = add nsw i64 %i.ej, %i.dz
  %i.el = mul nsw i64 %i.ek, %i.ea
  %invariant.gep.i105 = getelementptr [4 x i8], ptr %1, i64 %i.el ; 6 uses
  %or.cond615.not = xor i1 %or.cond615, true
  %brmerge667 = select i1 %or.cond615.not, i1 true, i1 %i.ei
  br i1 %brmerge667, label %scalar.ph504.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %.lr.ph.i103
  %i.em = add nuw i64 %indvars.iv27.i104, %n.vec512
  %i.en = getelementptr [4 x i8], ptr %0, i64 %indvars.iv27.i104
  br label %vector.body513

vector.body513:                                   ; preds = %vector.body513, %vector.ph511
  %index514 = phi i64 [ 0, %vector.ph511 ], [ %index.next517, %vector.body513 ] ; 3 uses
  %i.eo = getelementptr [4 x i8], ptr %i.en, i64 %index514 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load515 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !9, !alias.scope !107
  %wide.load516 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !9, !alias.scope !107
  %i.eq = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %index514 ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  store <4 x i32> %wide.load515, ptr %i.eq, align 4, !tbaa !9, !alias.scope !108, !noalias !107
  store <4 x i32> %wide.load516, ptr %i.er, align 4, !tbaa !9, !alias.scope !108, !noalias !107
  %index.next517 = add nuw i64 %index514, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next517, %n.vec512
  br i1 %i.es, label %middle.block518, label %vector.body513, !llvm.loop !52

middle.block518:                                  ; preds = %vector.body513
  br i1 %cmp.n519, label %._crit_edge.i112, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %.lr.ph.i103, %middle.block518
  %indvars.iv29.i106.ph = phi i64 [ %i.em, %middle.block518 ], [ %indvars.iv27.i104, %.lr.ph.i103 ] ; 2 uses
  %indvars.iv.i107.ph = phi i64 [ %n.vec512, %middle.block518 ], [ 0, %.lr.ph.i103 ] ; 3 uses
  br i1 %lcmp.mod647.not, label %scalar.ph504.prol.loopexit, label %scalar.ph504.prol

scalar.ph504.prol:                                ; preds = %scalar.ph504.preheader, %scalar.ph504.prol
  %indvars.iv29.i106.prol = phi i64 [ %indvars.iv.next30.i109.prol, %scalar.ph504.prol ], [ %indvars.iv29.i106.ph, %scalar.ph504.preheader ] ; 2 uses
  %indvars.iv.i107.prol = phi i64 [ %indvars.iv.next.i110.prol, %scalar.ph504.prol ], [ %indvars.iv.i107.ph, %scalar.ph504.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph504.prol ], [ 0, %scalar.ph504.preheader ]
  %i.et = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i106.prol
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !9
  %gep.i108.prol = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107.prol
  store i32 %i.eu, ptr %gep.i108.prol, align 4, !tbaa !9
  %indvars.iv.next30.i109.prol = add nsw i64 %indvars.iv29.i106.prol, %i.dy ; 2 uses
  %indvars.iv.next.i110.prol = add nuw nsw i64 %indvars.iv.i107.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter646
  br i1 %prol.iter.cmp.not, label %scalar.ph504.prol.loopexit, label %scalar.ph504.prol, !llvm.loop !53

scalar.ph504.prol.loopexit:                       ; preds = %scalar.ph504.prol, %scalar.ph504.preheader
  %indvars.iv29.i106.unr = phi i64 [ %indvars.iv29.i106.ph, %scalar.ph504.preheader ], [ %indvars.iv.next30.i109.prol, %scalar.ph504.prol ]
  %indvars.iv.i107.unr = phi i64 [ %indvars.iv.i107.ph, %scalar.ph504.preheader ], [ %indvars.iv.next.i110.prol, %scalar.ph504.prol ]
  %i.ev = sub nsw i64 %indvars.iv.i107.ph, %wide.trip.count.i102
  %i.ew = icmp ugt i64 %i.ev, -4
  br i1 %i.ew, label %._crit_edge.i112, label %scalar.ph504

._crit_edge.i112:                                 ; preds = %scalar.ph504.prol.loopexit, %scalar.ph504, %middle.block518
  %indvars.iv.next28.i113 = add nuw nsw i64 %indvars.iv27.i104, 1 ; 2 uses
  %exitcond36.not.i114 = icmp eq i64 %indvars.iv.next28.i113, %i.dz
  br i1 %exitcond36.not.i114, label %rotate90_l8.exit, label %.lr.ph.i103, !llvm.loop !54

scalar.ph504:                                     ; preds = %scalar.ph504.prol.loopexit, %scalar.ph504
  %indvars.iv29.i106 = phi i64 [ %indvars.iv.next30.i109.3, %scalar.ph504 ], [ %indvars.iv29.i106.unr, %scalar.ph504.prol.loopexit ] ; 2 uses
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i110.3, %scalar.ph504 ], [ %indvars.iv.i107.unr, %scalar.ph504.prol.loopexit ] ; 5 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i106
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !9
  %gep.i108 = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  store i32 %i.ey, ptr %gep.i108, align 4, !tbaa !9
  %indvars.iv.next30.i109 = add nsw i64 %indvars.iv29.i106, %i.dy ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !9
  %i.fb = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.1 = getelementptr i8, ptr %i.fb, i64 4
  store i32 %i.fa, ptr %gep.i108.1, align 4, !tbaa !9
  %indvars.iv.next30.i109.1 = add nsw i64 %indvars.iv.next30.i109, %i.dy ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109.1
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !9
  %i.fe = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.2 = getelementptr i8, ptr %i.fe, i64 8
  store i32 %i.fd, ptr %gep.i108.2, align 4, !tbaa !9
  %indvars.iv.next30.i109.2 = add nsw i64 %indvars.iv.next30.i109.1, %i.dy ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i109.2
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !9
  %i.fh = getelementptr [4 x i8], ptr %invariant.gep.i105, i64 %indvars.iv.i107
  %gep.i108.3 = getelementptr i8, ptr %i.fh, i64 12
  store i32 %i.fg, ptr %gep.i108.3, align 4, !tbaa !9
  %indvars.iv.next30.i109.3 = add nsw i64 %indvars.iv.next30.i109.2, %i.dy
  %indvars.iv.next.i110.3 = add nuw nsw i64 %indvars.iv.i107, 4 ; 2 uses
  %exitcond.not.i111.3 = icmp eq i64 %indvars.iv.next.i110.3, %wide.trip.count.i102
  br i1 %exitcond.not.i111.3, label %._crit_edge.i112, label %scalar.ph504, !llvm.loop !55

bb.g:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.h
    i32 18, label %bb.i
    i32 15, label %bb.j
    i32 17, label %bb.k
    i32 16, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.fi = icmp sgt i32 %3, 0
  %i.fj = icmp sgt i32 %2, 0
  %or.cond.i115 = and i1 %i.fj, %i.fi
  br i1 %or.cond.i115, label %.lr.ph.preheader.i116, label %rotate90_l8.exit

.lr.ph.preheader.i116:                            ; preds = %bb.h
  %i.fk = sext i32 %4 to i64                      ; 2 uses
  %wide.trip.count29.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i117 = zext nneg i32 %2 to i64 ; 11 uses
  %i.fl = add nsw i64 %wide.trip.count.i117, -1   ; 2 uses
  %i.fm = add nsw i32 %3, -1
  %i.fn = mul i32 %5, %i.fm
  %i.fo = add i32 %2, %i.fn
  %i.fp = add i32 %i.fo, -1
  %i.fq = sub i32 0, %5                           ; 2 uses
  %i.fr = add nsw i32 %3, -1
  %i.fs = mul i32 %5, %i.fr
  %i.ft = add i32 %2, %i.fs
  %i.fu = add i32 %i.ft, -1
  %i.fv = add nsw i64 %wide.trip.count29.i, -1
  %i.fw = mul nsw i64 %i.fv, %i.fk
  %i.fx = getelementptr i8, ptr %0, i64 %i.fw
  %scevgep455 = getelementptr i8, ptr %i.fx, i64 %wide.trip.count.i117
  %min.iters.check457 = icmp ult i32 %2, 8
  %i.fy = trunc nsw i64 %i.fl to i32
  %i.fz = icmp ugt i64 %i.fl, 4294967295
  %stride.check462 = icmp slt i32 %4, 0
  %min.iters.check464 = icmp ult i32 %2, 32
  %i.ga = and i64 %wide.trip.count.i117, 24
  %n.vec466 = and i64 %wide.trip.count.i117, 2147483616 ; 4 uses
  %cmp.n475 = icmp eq i64 %n.vec466, %wide.trip.count.i117
  %min.epilog.iters.check479 = icmp eq i64 %i.ga, 0
  %n.vec482 = and i64 %wide.trip.count.i117, 2147483640 ; 3 uses
  %cmp.n489 = icmp eq i64 %n.vec482, %wide.trip.count.i117
  %xtraiter644 = and i64 %wide.trip.count.i117, 1
  %lcmp.mod645.not = icmp eq i64 %xtraiter644, 0
  %i.gb = add nsw i64 %wide.trip.count.i117, -1
  br label %iter.check476

iter.check476:                                    ; preds = %._crit_edge.i124, %.lr.ph.preheader.i116
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.preheader.i116 ], [ %indvars.iv.next27.i, %._crit_edge.i124 ] ; 4 uses
  %i.gc = mul nsw i64 %indvars.iv26.i, %i.fk
  %invariant.gep.i119 = getelementptr i8, ptr %0, i64 %i.gc ; 5 uses
  %i.gd = trunc i64 %indvars.iv26.i to i32        ; 2 uses
  %i.ge = xor i32 %i.gd, -1
  %i.gf = add i32 %3, %i.ge
  %i.gg = mul i32 %i.gf, %5
  %i.gh = add i32 %i.gg, %2                       ; 5 uses
  br i1 %min.iters.check457, label %vec.epilog.scalar.ph478.preheader, label %vector.scevcheck444

vector.scevcheck444:                              ; preds = %iter.check476
  %i.gi = trunc i64 %indvars.iv26.i to i32
  %i.gj = mul i32 %i.gi, %i.fq
  %i.gk = add i32 %i.gj, %i.fp                    ; 2 uses
  %i.gl = sub i32 %i.gk, %i.fy
  %i.gm = icmp sgt i32 %i.gl, %i.gk
  %i.gn = or i1 %i.gm, %i.fz
  br i1 %i.gn, label %vec.epilog.scalar.ph478.preheader, label %vector.memcheck458

vector.memcheck458:                               ; preds = %vector.scevcheck444
  %i.go = mul i32 %i.gd, %i.fq
  %i.gp = add i32 %i.fu, %i.go
  %i.gq = sext i32 %i.gp to i64
  %8 = add nsw i64 %i.gq, 1                       ; 2 uses
  %9 = sub nsw i64 %8, %wide.trip.count.i117
  %i.gr = getelementptr i8, ptr %1, i64 %9
  %i.gs = getelementptr i8, ptr %1, i64 %8
  %bound0459 = icmp ult ptr %0, %i.gs
  %bound1460 = icmp ult ptr %i.gr, %scevgep455
  %found.conflict461 = and i1 %bound0459, %bound1460
  %i.gt = or i1 %found.conflict461, %stride.check462
  br i1 %i.gt, label %vec.epilog.scalar.ph478.preheader, label %vector.main.loop.iter.check463

vector.main.loop.iter.check463:                   ; preds = %vector.memcheck458
  br i1 %min.iters.check464, label %vec.epilog.ph480, label %vector.body467

vector.body467:                                   ; preds = %vector.main.loop.iter.check463, %vector.body467
  %index468 = phi i64 [ %index.next473, %vector.body467 ], [ 0, %vector.main.loop.iter.check463 ] ; 3 uses
  %i.gu = getelementptr i8, ptr %invariant.gep.i119, i64 %index468 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 16
  %wide.load469 = load <16 x i8>, ptr %i.gu, align 1, !tbaa !8, !alias.scope !109, !noalias !110
  %wide.load470 = load <16 x i8>, ptr %i.gv, align 1, !tbaa !8, !alias.scope !109, !noalias !110
  %i.gw = trunc i64 %index468 to i32
  %i.gx = xor i32 %i.gw, -1
  %i.gy = add i32 %i.gh, %i.gx
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %1, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -15
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 -31
  %reverse471 = shufflevector <16 x i8> %wide.load469, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse472 = shufflevector <16 x i8> %wide.load470, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse471, ptr %i.hb, align 1, !tbaa !8, !alias.scope !110
  store <16 x i8> %reverse472, ptr %i.hc, align 1, !tbaa !8, !alias.scope !110
  %index.next473 = add nuw i64 %index468, 32      ; 2 uses
  %i.hd = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.hd, label %middle.block474, label %vector.body467, !llvm.loop !59

middle.block474:                                  ; preds = %vector.body467
  br i1 %cmp.n475, label %._crit_edge.i124, label %vec.epilog.iter.check477

vec.epilog.iter.check477:                         ; preds = %middle.block474
  br i1 %min.epilog.iters.check479, label %vec.epilog.scalar.ph478.preheader, label %vec.epilog.ph480, !prof !111

vec.epilog.ph480:                                 ; preds = %vector.main.loop.iter.check463, %vec.epilog.iter.check477
  %vec.epilog.resume.val481 = phi i64 [ %n.vec466, %vec.epilog.iter.check477 ], [ 0, %vector.main.loop.iter.check463 ]
  br label %vec.epilog.vector.body483

vec.epilog.vector.body483:                        ; preds = %vec.epilog.vector.body483, %vec.epilog.ph480
  %index484 = phi i64 [ %vec.epilog.resume.val481, %vec.epilog.ph480 ], [ %index.next487, %vec.epilog.vector.body483 ] ; 3 uses
  %i.he = getelementptr i8, ptr %invariant.gep.i119, i64 %index484
  %wide.load485 = load <8 x i8>, ptr %i.he, align 1, !tbaa !8, !alias.scope !109, !noalias !110
  %i.hf = trunc i64 %index484 to i32
  %i.hg = xor i32 %i.hf, -1
  %i.hh = add i32 %i.gh, %i.hg
  %i.hi = sext i32 %i.hh to i64
  %i.hj = getelementptr inbounds i8, ptr %1, i64 %i.hi
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -7
  %reverse486 = shufflevector <8 x i8> %wide.load485, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse486, ptr %i.hk, align 1, !tbaa !8, !alias.scope !110
  %index.next487 = add nuw i64 %index484, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next487, %n.vec482
  br i1 %i.hl, label %vec.epilog.middle.block488, label %vec.epilog.vector.body483, !llvm.loop !60

vec.epilog.middle.block488:                       ; preds = %vec.epilog.vector.body483
  br i1 %cmp.n489, label %._crit_edge.i124, label %vec.epilog.scalar.ph478.preheader

vec.epilog.scalar.ph478.preheader:                ; preds = %iter.check476, %vector.scevcheck444, %vector.memcheck458, %vec.epilog.iter.check477, %vec.epilog.middle.block488
  %indvars.iv.i120.ph = phi i64 [ 0, %iter.check476 ], [ 0, %vector.scevcheck444 ], [ 0, %vector.memcheck458 ], [ %n.vec466, %vec.epilog.iter.check477 ], [ %n.vec482, %vec.epilog.middle.block488 ] ; 5 uses
  br i1 %lcmp.mod645.not, label %vec.epilog.scalar.ph478.prol.loopexit, label %vec.epilog.scalar.ph478.prol

vec.epilog.scalar.ph478.prol:                     ; preds = %vec.epilog.scalar.ph478.preheader
  %gep.i121.prol = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.i120.ph
  %i.hm = load i8, ptr %gep.i121.prol, align 1, !tbaa !8
  %i.hn = trunc nuw nsw i64 %indvars.iv.i120.ph to i32
  %i.ho = xor i32 %i.hn, -1
  %i.hp = add i32 %i.gh, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %1, i64 %i.hq
  store i8 %i.hm, ptr %i.hr, align 1, !tbaa !8
  %indvars.iv.next.i122.prol = or disjoint i64 %indvars.iv.i120.ph, 1
  br label %vec.epilog.scalar.ph478.prol.loopexit

vec.epilog.scalar.ph478.prol.loopexit:            ; preds = %vec.epilog.scalar.ph478.prol, %vec.epilog.scalar.ph478.preheader
  %indvars.iv.i120.unr = phi i64 [ %indvars.iv.i120.ph, %vec.epilog.scalar.ph478.preheader ], [ %indvars.iv.next.i122.prol, %vec.epilog.scalar.ph478.prol ]
  %i.hs = icmp eq i64 %indvars.iv.i120.ph, %i.gb
  br i1 %i.hs, label %._crit_edge.i124, label %vec.epilog.scalar.ph478

._crit_edge.i124:                                 ; preds = %vec.epilog.scalar.ph478.prol.loopexit, %vec.epilog.scalar.ph478, %vec.epilog.middle.block488, %middle.block474
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %rotate90_l8.exit, label %iter.check476, !llvm.loop !61

vec.epilog.scalar.ph478:                          ; preds = %vec.epilog.scalar.ph478.prol.loopexit, %vec.epilog.scalar.ph478
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i122.1, %vec.epilog.scalar.ph478 ], [ %indvars.iv.i120.unr, %vec.epilog.scalar.ph478.prol.loopexit ] ; 4 uses
  %gep.i121 = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.i120
  %i.ht = load i8, ptr %gep.i121, align 1, !tbaa !8
  %i.hu = trunc i64 %indvars.iv.i120 to i32
  %i.hv = xor i32 %i.hu, -1
  %i.hw = add i32 %i.gh, %i.hv
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds i8, ptr %1, i64 %i.hx
  store i8 %i.ht, ptr %i.hy, align 1, !tbaa !8
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %gep.i121.1 = getelementptr i8, ptr %invariant.gep.i119, i64 %indvars.iv.next.i122
  %i.hz = load i8, ptr %gep.i121.1, align 1, !tbaa !8
  %i.ia = trunc i64 %indvars.iv.next.i122 to i32
  %i.ib = xor i32 %i.ia, -1
  %i.ic = add i32 %i.gh, %i.ib
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds i8, ptr %1, i64 %i.id
  store i8 %i.hz, ptr %i.ie, align 1, !tbaa !8
  %indvars.iv.next.i122.1 = add nuw nsw i64 %indvars.iv.i120, 2 ; 2 uses
  %exitcond.not.i123.1 = icmp eq i64 %indvars.iv.next.i122.1, %wide.trip.count.i117
  br i1 %exitcond.not.i123.1, label %._crit_edge.i124, label %vec.epilog.scalar.ph478, !llvm.loop !62

bb.i:                                             ; preds = %bb.g
  %i.if = icmp sgt i32 %3, 0
  %i.ig = icmp sgt i32 %2, 0
  %or.cond.i125 = and i1 %i.ig, %i.if
  br i1 %or.cond.i125, label %.lr.ph.preheader.i126, label %rotate90_l8.exit

.lr.ph.preheader.i126:                            ; preds = %bb.i
  %i.ih = ashr i32 %5, 1                          ; 4 uses
  %i.ii = ashr i32 %4, 1                          ; 2 uses
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %wide.trip.count31.i = zext nneg i32 %3 to i64  ; 2 uses
  %wide.trip.count.i127 = zext nneg i32 %2 to i64 ; 11 uses
  %i.ik = add nsw i64 %wide.trip.count.i127, -1   ; 2 uses
  %i.il = add nsw i32 %3, -1
  %i.im = mul i32 %i.ih, %i.il
  %i.in = add i32 %2, %i.im
  %i.io = add i32 %i.in, -1
  %i.ip = sub nsw i32 0, %i.ih                    ; 2 uses
  %10 = shl nuw nsw i64 %wide.trip.count.i127, 1
  %i.iq = add nsw i32 %3, -1
  %i.ir = mul i32 %i.ih, %i.iq
  %i.is = add i32 %2, %i.ir
  %i.it = add i32 %i.is, -1
  %i.iu = add nuw i64 %wide.trip.count31.i, 9223372036854775807
  %i.iv = mul i64 %i.iu, %i.ij
  %i.iw = add i64 %i.iv, %wide.trip.count.i127
  %i.ix = shl i64 %i.iw, 1
  %scevgep408 = getelementptr i8, ptr %0, i64 %i.ix
  %min.iters.check410 = icmp ult i32 %2, 4
  %i.iy = trunc nsw i64 %i.ik to i32
  %i.iz = icmp ugt i64 %i.ik, 4294967295
  %stride.check415 = icmp slt i32 %i.ii, 0
  %min.iters.check417 = icmp ult i32 %2, 16
  %i.ja = and i64 %wide.trip.count.i127, 12
  %n.vec419 = and i64 %wide.trip.count.i127, 2147483632 ; 4 uses
  %cmp.n428 = icmp eq i64 %n.vec419, %wide.trip.count.i127
  %min.epilog.iters.check432 = icmp eq i64 %i.ja, 0
  %n.vec435 = and i64 %wide.trip.count.i127, 2147483644 ; 3 uses
  %cmp.n442 = icmp eq i64 %n.vec435, %wide.trip.count.i127
  %xtraiter642.a = and i64 %wide.trip.count.i127, 1
  %lcmp.mod643.not.a = icmp eq i64 %xtraiter642.a, 0
  %i.jb = add nsw i64 %wide.trip.count.i127, -1
  br label %iter.check429

iter.check429:                                    ; preds = %._crit_edge.i134, %.lr.ph.preheader.i126
  %indvars.iv28.i = phi i64 [ 0, %.lr.ph.preheader.i126 ], [ %indvars.iv.next29.i, %._crit_edge.i134 ] ; 4 uses
  %i.jc = mul nsw i64 %indvars.iv28.i, %i.ij
  %invariant.gep.i129 = getelementptr [2 x i8], ptr %0, i64 %i.jc ; 5 uses
  %i.jd = trunc i64 %indvars.iv28.i to i32        ; 2 uses
  %i.je = xor i32 %i.jd, -1
  %i.jf = add i32 %3, %i.je
  %i.jg = mul i32 %i.jf, %i.ih
  %i.jh = add i32 %i.jg, %2                       ; 5 uses
  br i1 %min.iters.check410, label %vec.epilog.scalar.ph431.preheader, label %vector.scevcheck397

vector.scevcheck397:                              ; preds = %iter.check429
  %i.ji = trunc i64 %indvars.iv28.i to i32
  %i.jj = mul i32 %i.ji, %i.ip
  %i.jk = add i32 %i.jj, %i.io                    ; 2 uses
  %i.jl = sub i32 %i.jk, %i.iy
  %i.jm = icmp sgt i32 %i.jl, %i.jk
  %i.jn = or i1 %i.jm, %i.iz
  br i1 %i.jn, label %vec.epilog.scalar.ph431.preheader, label %vector.memcheck411

vector.memcheck411:                               ; preds = %vector.scevcheck397
  %i.jo = mul i32 %i.jd, %i.ip
  %i.jp = add i32 %i.it, %i.jo
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 1
  %11 = add nsw i64 %i.jr, 2                      ; 2 uses
  %12 = sub nsw i64 %11, %10
  %i.js = getelementptr i8, ptr %1, i64 %12
  %i.jt = getelementptr i8, ptr %1, i64 %11
  %bound0412 = icmp ult ptr %0, %i.jt
  %bound1413 = icmp ult ptr %i.js, %scevgep408
  %found.conflict414 = and i1 %bound0412, %bound1413
  %i.ju = or i1 %found.conflict414, %stride.check415
  br i1 %i.ju, label %vec.epilog.scalar.ph431.preheader, label %vector.main.loop.iter.check416

vector.main.loop.iter.check416:                   ; preds = %vector.memcheck411
  br i1 %min.iters.check417, label %vec.epilog.ph433, label %vector.body420

vector.body420:                                   ; preds = %vector.main.loop.iter.check416, %vector.body420
  %index421 = phi i64 [ %index.next426, %vector.body420 ], [ 0, %vector.main.loop.iter.check416 ] ; 3 uses
  %i.jv = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index421 ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jv, i64 16
  %wide.load422 = load <8 x i16>, ptr %i.jv, align 2, !tbaa !14, !alias.scope !112, !noalias !113
  %wide.load423 = load <8 x i16>, ptr %i.jw, align 2, !tbaa !14, !alias.scope !112, !noalias !113
  %i.jx = trunc i64 %index421 to i32
  %i.jy = xor i32 %i.jx, -1
  %i.jz = add i32 %i.jh, %i.jy
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ka ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %i.kb, i64 -14
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 -30
  %reverse424 = shufflevector <8 x i16> %wide.load422, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse425 = shufflevector <8 x i16> %wide.load423, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse424, ptr %i.kc, align 2, !tbaa !14, !alias.scope !113
  store <8 x i16> %reverse425, ptr %i.kd, align 2, !tbaa !14, !alias.scope !113
  %index.next426 = add nuw i64 %index421, 16      ; 2 uses
  %i.ke = icmp eq i64 %index.next426, %n.vec419
  br i1 %i.ke, label %middle.block427, label %vector.body420, !llvm.loop !66

middle.block427:                                  ; preds = %vector.body420
  br i1 %cmp.n428, label %._crit_edge.i134, label %vec.epilog.iter.check430

vec.epilog.iter.check430:                         ; preds = %middle.block427
  br i1 %min.epilog.iters.check432, label %vec.epilog.scalar.ph431.preheader, label %vec.epilog.ph433, !prof !106

vec.epilog.ph433:                                 ; preds = %vector.main.loop.iter.check416, %vec.epilog.iter.check430
  %vec.epilog.resume.val434 = phi i64 [ %n.vec419, %vec.epilog.iter.check430 ], [ 0, %vector.main.loop.iter.check416 ]
  br label %vec.epilog.vector.body436

vec.epilog.vector.body436:                        ; preds = %vec.epilog.vector.body436, %vec.epilog.ph433
  %index437 = phi i64 [ %vec.epilog.resume.val434, %vec.epilog.ph433 ], [ %index.next440, %vec.epilog.vector.body436 ] ; 3 uses
  %i.kf = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %index437
  %wide.load438 = load <4 x i16>, ptr %i.kf, align 2, !tbaa !14, !alias.scope !112, !noalias !113
  %i.kg = trunc i64 %index437 to i32
  %i.kh = xor i32 %i.kg, -1
  %i.ki = add i32 %i.jh, %i.kh
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kj
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -6
  %reverse439 = shufflevector <4 x i16> %wide.load438, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse439, ptr %i.kl, align 2, !tbaa !14, !alias.scope !113
  %index.next440 = add nuw i64 %index437, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next440, %n.vec435
  br i1 %i.km, label %vec.epilog.middle.block441, label %vec.epilog.vector.body436, !llvm.loop !67

vec.epilog.middle.block441:                       ; preds = %vec.epilog.vector.body436
  br i1 %cmp.n442, label %._crit_edge.i134, label %vec.epilog.scalar.ph431.preheader

vec.epilog.scalar.ph431.preheader:                ; preds = %iter.check429, %vector.scevcheck397, %vector.memcheck411, %vec.epilog.iter.check430, %vec.epilog.middle.block441
  %indvars.iv.i130.ph = phi i64 [ 0, %iter.check429 ], [ 0, %vector.scevcheck397 ], [ 0, %vector.memcheck411 ], [ %n.vec419, %vec.epilog.iter.check430 ], [ %n.vec435, %vec.epilog.middle.block441 ] ; 5 uses
  br i1 %lcmp.mod643.not.a, label %vec.epilog.scalar.ph431.prol.loopexit, label %vec.epilog.scalar.ph431.prol

vec.epilog.scalar.ph431.prol:                     ; preds = %vec.epilog.scalar.ph431.preheader
  %gep.i131.prol = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130.ph
  %i.kn = load i16, ptr %gep.i131.prol, align 2, !tbaa !14
  %i.ko = trunc nuw nsw i64 %indvars.iv.i130.ph to i32
  %i.kp = xor i32 %i.ko, -1
  %i.kq = add i32 %i.jh, %i.kp
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [2 x i8], ptr %1, i64 %i.kr
  store i16 %i.kn, ptr %i.ks, align 2, !tbaa !14
  %indvars.iv.next.i132.prol = or disjoint i64 %indvars.iv.i130.ph, 1
  br label %vec.epilog.scalar.ph431.prol.loopexit

vec.epilog.scalar.ph431.prol.loopexit:            ; preds = %vec.epilog.scalar.ph431.prol, %vec.epilog.scalar.ph431.preheader
  %indvars.iv.i130.unr = phi i64 [ %indvars.iv.i130.ph, %vec.epilog.scalar.ph431.preheader ], [ %indvars.iv.next.i132.prol, %vec.epilog.scalar.ph431.prol ]
  %i.kt = icmp eq i64 %indvars.iv.i130.ph, %i.jb
  br i1 %i.kt, label %._crit_edge.i134, label %vec.epilog.scalar.ph431

._crit_edge.i134:                                 ; preds = %vec.epilog.scalar.ph431.prol.loopexit, %vec.epilog.scalar.ph431, %vec.epilog.middle.block441, %middle.block427
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %rotate90_l8.exit, label %iter.check429, !llvm.loop !68

vec.epilog.scalar.ph431:                          ; preds = %vec.epilog.scalar.ph431.prol.loopexit, %vec.epilog.scalar.ph431
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i132.1, %vec.epilog.scalar.ph431 ], [ %indvars.iv.i130.unr, %vec.epilog.scalar.ph431.prol.loopexit ] ; 4 uses
  %gep.i131 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.i130
  %i.ku = load i16, ptr %gep.i131, align 2, !tbaa !14
  %i.kv = trunc i64 %indvars.iv.i130 to i32
  %i.kw = xor i32 %i.kv, -1
  %i.kx = add i32 %i.jh, %i.kw
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ky
  store i16 %i.ku, ptr %i.kz, align 2, !tbaa !14
  %indvars.iv.next.i132 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %gep.i131.1 = getelementptr [2 x i8], ptr %invariant.gep.i129, i64 %indvars.iv.next.i132
  %i.la = load i16, ptr %gep.i131.1, align 2, !tbaa !14
  %i.lb = trunc i64 %indvars.iv.next.i132 to i32
  %i.lc = xor i32 %i.lb, -1
  %i.ld = add i32 %i.jh, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [2 x i8], ptr %1, i64 %i.le
  store i16 %i.la, ptr %i.lf, align 2, !tbaa !14
  %indvars.iv.next.i132.1 = add nuw nsw i64 %indvars.iv.i130, 2 ; 2 uses
  %exitcond.not.i133.1 = icmp eq i64 %indvars.iv.next.i132.1, %wide.trip.count.i127
  br i1 %exitcond.not.i133.1, label %._crit_edge.i134, label %vec.epilog.scalar.ph431, !llvm.loop !69

bb.j:                                             ; preds = %bb.g
  %i.lg = icmp sgt i32 %3, 0
  %i.lh = icmp sgt i32 %2, 0
  %or.cond.i135 = and i1 %i.lh, %i.lg
  br i1 %or.cond.i135, label %.preheader.preheader.i136, label %rotate90_l8.exit

.preheader.preheader.i136:                        ; preds = %bb.j
  %i.li = zext nneg i32 %2 to i64                 ; 5 uses
  %i.lj = zext nneg i32 %3 to i64                 ; 2 uses
  %i.lk = sext i32 %5 to i64
  %i.ll = sext i32 %4 to i64
  %xtraiter637.a = and i64 %i.li, 1
  %i.lm = icmp eq i32 %2, 1
  %unroll_iter640 = and i64 %i.li, 2147483646
  %lcmp.mod638.not.a = icmp eq i64 %xtraiter637.a, 0
  %lcmp.mod639 = trunc i32 %2 to i1
  br label %.preheader.i139

.preheader.i139:                                  ; preds = %._crit_edge.i145, %.preheader.preheader.i136
  %indvars.iv32.i = phi i64 [ 0, %.preheader.preheader.i136 ], [ %indvars.iv.next33.i, %._crit_edge.i145 ] ; 3 uses
  %i.ln = mul nsw i64 %indvars.iv32.i, %i.ll
  %i.lo = xor i64 %indvars.iv32.i, -1
  %i.lp = add nsw i64 %i.lo, %i.lj
  %i.lq = mul nsw i64 %i.lp, %i.lk
  %invariant.gep.i140 = getelementptr i8, ptr %0, i64 %i.ln ; 3 uses
  %invariant.gep38.i = getelementptr i8, ptr %1, i64 %i.lq ; 3 uses
  br i1 %i.lm, label %.epil.preheader636, label %.preheader.i139.new

._crit_edge.i145.unr-lcssa:                       ; preds = %.preheader.i139.new
  br i1 %lcmp.mod638.not.a, label %._crit_edge.i145, label %.epil.preheader636

.epil.preheader636:                               ; preds = %._crit_edge.i145.unr-lcssa, %.preheader.i139
  %indvars.iv.i141.epil.init = phi i64 [ 0, %.preheader.i139 ], [ %indvars.iv.next.i143.1, %._crit_edge.i145.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.lr = mul nuw nsw i64 %indvars.iv.i141.epil.init, 3
  %i.ls = xor i64 %indvars.iv.i141.epil.init, -1
  %i.lt = add nsw i64 %i.ls, %i.li
  %i.lu = mul nuw nsw i64 %i.lt, 3
  %gep.i142.epil = getelementptr i8, ptr %invariant.gep.i140, i64 %i.lr ; 3 uses
  %i.lv = load i8, ptr %gep.i142.epil, align 1, !tbaa !8
  %gep39.i.epil = getelementptr i8, ptr %invariant.gep38.i, i64 %i.lu ; 3 uses
  store i8 %i.lv, ptr %gep39.i.epil, align 1, !tbaa !8
  %i.lw = getelementptr i8, ptr %gep.i142.epil, i64 1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !8
  %i.ly = getelementptr i8, ptr %gep39.i.epil, i64 1
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !8
  %i.lz = getelementptr i8, ptr %gep.i142.epil, i64 2
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !8
  %i.mb = getelementptr i8, ptr %gep39.i.epil, i64 2
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !8
  br label %._crit_edge.i145

._crit_edge.i145:                                 ; preds = %._crit_edge.i145.unr-lcssa, %.epil.preheader636
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %exitcond36.not.i146 = icmp eq i64 %indvars.iv.next33.i, %i.lj
  br i1 %exitcond36.not.i146, label %rotate90_l8.exit, label %.preheader.i139, !llvm.loop !70

.preheader.i139.new:                              ; preds = %.preheader.i139, %.preheader.i139.new
  %indvars.iv.i141 = phi i64 [ %indvars.iv.next.i143.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ] ; 5 uses
  %niter641 = phi i64 [ %niter641.next.1, %.preheader.i139.new ], [ 0, %.preheader.i139 ]
  %i.mc = mul nuw nsw i64 %indvars.iv.i141, 3
  %i.md = xor i64 %indvars.iv.i141, -1
  %i.me = add nsw i64 %i.md, %i.li
  %i.mf = mul nuw nsw i64 %i.me, 3
  %gep.i142 = getelementptr i8, ptr %invariant.gep.i140, i64 %i.mc ; 3 uses
  %i.mg = load i8, ptr %gep.i142, align 1, !tbaa !8
  %gep39.i = getelementptr i8, ptr %invariant.gep38.i, i64 %i.mf ; 3 uses
  store i8 %i.mg, ptr %gep39.i, align 1, !tbaa !8
  %i.mh = getelementptr i8, ptr %gep.i142, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !8
  %i.mj = getelementptr i8, ptr %gep39.i, i64 1
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !8
  %i.mk = getelementptr i8, ptr %gep.i142, i64 2
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !8
  %i.mm = getelementptr i8, ptr %gep39.i, i64 2
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !8
  %i.mn = mul nuw i64 %indvars.iv.i141, 3
  %i.mo = xor i64 %indvars.iv.i141, -2
  %i.mp = add nsw i64 %i.mo, %i.li
  %i.mq = mul nuw nsw i64 %i.mp, 3
  %i.mr = getelementptr i8, ptr %invariant.gep.i140, i64 %i.mn ; 3 uses
  %gep.i142.1 = getelementptr i8, ptr %i.mr, i64 3
  %i.ms = load i8, ptr %gep.i142.1, align 1, !tbaa !8
  %gep39.i.1 = getelementptr i8, ptr %invariant.gep38.i, i64 %i.mq ; 3 uses
  store i8 %i.ms, ptr %gep39.i.1, align 1, !tbaa !8
  %i.mt = getelementptr i8, ptr %i.mr, i64 4
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !8
  %i.mv = getelementptr i8, ptr %gep39.i.1, i64 1
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !8
  %i.mw = getelementptr i8, ptr %i.mr, i64 5
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !8
  %i.my = getelementptr i8, ptr %gep39.i.1, i64 2
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !8
  %indvars.iv.next.i143.1 = add nuw nsw i64 %indvars.iv.i141, 2 ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %._crit_edge.i145.unr-lcssa, label %.preheader.i139.new, !llvm.loop !71

bb.k:                                             ; preds = %bb.g, %bb.g
  %i.mz = icmp sgt i32 %3, 0
  %i.na = icmp sgt i32 %2, 0
  %or.cond.i147 = and i1 %i.na, %i.mz
  br i1 %or.cond.i147, label %.lr.ph.preheader.i148, label %rotate90_l8.exit

.lr.ph.preheader.i148:                            ; preds = %bb.k
  %i.nb = ashr i32 %5, 2                          ; 4 uses
  %i.nc = ashr i32 %4, 2                          ; 2 uses
  %i.nd = sext i32 %i.nc to i64                   ; 2 uses
  %wide.trip.count31.i149 = zext nneg i32 %3 to i64 ; 2 uses
  %wide.trip.count.i150 = zext nneg i32 %2 to i64 ; 8 uses
  %i.ne = add nsw i64 %wide.trip.count.i150, -1   ; 2 uses
  %i.nf = add nsw i32 %3, -1
  %i.ng = mul i32 %i.nb, %i.nf
  %i.nh = add i32 %2, %i.ng
  %i.ni = add i32 %i.nh, -1
  %i.nj = sub nsw i32 0, %i.nb                    ; 2 uses
  %13 = shl nuw nsw i64 %wide.trip.count.i150, 2
  %i.nk = add nsw i32 %3, -1
  %i.nl = mul i32 %i.nb, %i.nk
  %i.nm = add i32 %2, %i.nl
  %i.nn = add i32 %i.nm, -1
  %i.no = add nuw nsw i64 %wide.trip.count31.i149, 4611686018427387903
  %i.np = mul i64 %i.no, %i.nd
  %i.nq = add i64 %i.np, %wide.trip.count.i150
  %i.nr = shl i64 %i.nq, 2
  %scevgep378 = getelementptr i8, ptr %0, i64 %i.nr
  %min.iters.check380 = icmp ult i32 %2, 12
  %i.ns = trunc nsw i64 %i.ne to i32
  %i.nt = icmp ugt i64 %i.ne, 4294967295
  %stride.check = icmp slt i32 %i.nc, 0
  %n.vec386 = and i64 %wide.trip.count.i150, 2147483640 ; 3 uses
  %cmp.n395 = icmp eq i64 %n.vec386, %wide.trip.count.i150
  %xtraiter634 = and i64 %wide.trip.count.i150, 1
  %lcmp.mod635.not = icmp eq i64 %xtraiter634, 0
  %i.nu = add nsw i64 %wide.trip.count.i150, -1
  br label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %._crit_edge.i158, %.lr.ph.preheader.i148
  %indvars.iv28.i152 = phi i64 [ 0, %.lr.ph.preheader.i148 ], [ %indvars.iv.next29.i159, %._crit_edge.i158 ] ; 4 uses
  %i.nv = mul nsw i64 %indvars.iv28.i152, %i.nd
  %invariant.gep.i153 = getelementptr [4 x i8], ptr %0, i64 %i.nv ; 4 uses
  %i.nw = trunc i64 %indvars.iv28.i152 to i32     ; 2 uses
  %i.nx = xor i32 %i.nw, -1
  %i.ny = add i32 %3, %i.nx
  %i.nz = mul i32 %i.ny, %i.nb
  %i.oa = add i32 %i.nz, %2                       ; 4 uses
  br i1 %min.iters.check380, label %scalar.ph379.preheader, label %vector.scevcheck368

vector.scevcheck368:                              ; preds = %.lr.ph.i151
  %i.ob = trunc i64 %indvars.iv28.i152 to i32
  %i.oc = mul i32 %i.ob, %i.nj
  %i.od = add i32 %i.oc, %i.ni                    ; 2 uses
  %i.oe = sub i32 %i.od, %i.ns
  %i.of = icmp sgt i32 %i.oe, %i.od
  %i.og = or i1 %i.of, %i.nt
  br i1 %i.og, label %scalar.ph379.preheader, label %vector.memcheck381

vector.memcheck381:                               ; preds = %vector.scevcheck368
  %i.oh = mul i32 %i.nw, %i.nj
  %i.oi = add i32 %i.nn, %i.oh
  %i.oj = sext i32 %i.oi to i64
  %i.ok = shl nsw i64 %i.oj, 2
  %14 = add nsw i64 %i.ok, 4                      ; 2 uses
  %15 = sub nsw i64 %14, %13
  %i.ol = getelementptr i8, ptr %1, i64 %15
  %i.om = getelementptr i8, ptr %1, i64 %14
  %bound0382 = icmp ult ptr %0, %i.om
  %bound1383 = icmp ult ptr %i.ol, %scevgep378
  %found.conflict384 = and i1 %bound0382, %bound1383
  %i.on = or i1 %found.conflict384, %stride.check
  br i1 %i.on, label %scalar.ph379.preheader, label %vector.body387

vector.body387:                                   ; preds = %vector.memcheck381, %vector.body387
  %index388 = phi i64 [ %index.next393, %vector.body387 ], [ 0, %vector.memcheck381 ] ; 3 uses
  %i.oo = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %index388 ; 2 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 16
  %wide.load389 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !9, !alias.scope !114, !noalias !115
  %wide.load390 = load <4 x i32>, ptr %i.op, align 4, !tbaa !9, !alias.scope !114, !noalias !115
  %i.oq = trunc i64 %index388 to i32
  %i.or = xor i32 %i.oq, -1
  %i.os = add i32 %i.oa, %i.or
  %i.ot = sext i32 %i.os to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ot ; 2 uses
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 -12
  %i.ow = getelementptr inbounds i8, ptr %i.ou, i64 -28
  %reverse391 = shufflevector <4 x i32> %wide.load389, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse392 = shufflevector <4 x i32> %wide.load390, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse391, ptr %i.ov, align 4, !tbaa !9, !alias.scope !115
  store <4 x i32> %reverse392, ptr %i.ow, align 4, !tbaa !9, !alias.scope !115
  %index.next393 = add nuw i64 %index388, 8       ; 2 uses
  %i.ox = icmp eq i64 %index.next393, %n.vec386
  br i1 %i.ox, label %middle.block394, label %vector.body387, !llvm.loop !75

middle.block394:                                  ; preds = %vector.body387
  br i1 %cmp.n395, label %._crit_edge.i158, label %scalar.ph379.preheader

scalar.ph379.preheader:                           ; preds = %vector.memcheck381, %vector.scevcheck368, %.lr.ph.i151, %middle.block394
  %indvars.iv.i154.ph = phi i64 [ 0, %vector.memcheck381 ], [ 0, %vector.scevcheck368 ], [ 0, %.lr.ph.i151 ], [ %n.vec386, %middle.block394 ] ; 5 uses
  br i1 %lcmp.mod635.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol

scalar.ph379.prol:                                ; preds = %scalar.ph379.preheader
  %gep.i155.prol = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154.ph
  %i.oy = load i32, ptr %gep.i155.prol, align 4, !tbaa !9
  %i.oz = trunc nuw nsw i64 %indvars.iv.i154.ph to i32
  %i.pa = xor i32 %i.oz, -1
  %i.pb = add i32 %i.oa, %i.pa
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pc
  store i32 %i.oy, ptr %i.pd, align 4, !tbaa !9
  %indvars.iv.next.i156.prol = or disjoint i64 %indvars.iv.i154.ph, 1
  br label %scalar.ph379.prol.loopexit

scalar.ph379.prol.loopexit:                       ; preds = %scalar.ph379.prol, %scalar.ph379.preheader
  %indvars.iv.i154.unr = phi i64 [ %indvars.iv.i154.ph, %scalar.ph379.preheader ], [ %indvars.iv.next.i156.prol, %scalar.ph379.prol ]
  %i.pe = icmp eq i64 %indvars.iv.i154.ph, %i.nu
  br i1 %i.pe, label %._crit_edge.i158, label %scalar.ph379

._crit_edge.i158:                                 ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379, %middle.block394
  %indvars.iv.next29.i159 = add nuw nsw i64 %indvars.iv28.i152, 1 ; 2 uses
  %exitcond32.not.i160 = icmp eq i64 %indvars.iv.next29.i159, %wide.trip.count31.i149
  br i1 %exitcond32.not.i160, label %rotate90_l8.exit, label %.lr.ph.i151, !llvm.loop !76

scalar.ph379:                                     ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379
  %indvars.iv.i154 = phi i64 [ %indvars.iv.next.i156.1, %scalar.ph379 ], [ %indvars.iv.i154.unr, %scalar.ph379.prol.loopexit ] ; 4 uses
  %gep.i155 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.i154
  %i.pf = load i32, ptr %gep.i155, align 4, !tbaa !9
  %i.pg = trunc i64 %indvars.iv.i154 to i32
  %i.ph = xor i32 %i.pg, -1
  %i.pi = add i32 %i.oa, %i.ph
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pj
  store i32 %i.pf, ptr %i.pk, align 4, !tbaa !9
  %indvars.iv.next.i156 = add nuw nsw i64 %indvars.iv.i154, 1 ; 2 uses
  %gep.i155.1 = getelementptr [4 x i8], ptr %invariant.gep.i153, i64 %indvars.iv.next.i156
  %i.pl = load i32, ptr %gep.i155.1, align 4, !tbaa !9
  %i.pm = trunc i64 %indvars.iv.next.i156 to i32
  %i.pn = xor i32 %i.pm, -1
  %i.po = add i32 %i.oa, %i.pn
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.pp
  store i32 %i.pl, ptr %i.pq, align 4, !tbaa !9
  %indvars.iv.next.i156.1 = add nuw nsw i64 %indvars.iv.i154, 2 ; 2 uses
  %exitcond.not.i157.1 = icmp eq i64 %indvars.iv.next.i156.1, %wide.trip.count.i150
  br i1 %exitcond.not.i157.1, label %._crit_edge.i158, label %scalar.ph379, !llvm.loop !77

bb.l:                                             ; preds = %bb.a
  switch i32 %7, label %rotate90_l8.exit [
    i32 6, label %bb.m
    i32 18, label %bb.n
    i32 15, label %bb.o
    i32 17, label %bb.p
    i32 16, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  %i.pr = icmp sgt i32 %2, 0
  %i.ps = icmp sgt i32 %3, 0
  %or.cond.i161 = and i1 %i.pr, %i.ps
  br i1 %or.cond.i161, label %.lr.ph.preheader.i162, label %rotate90_l8.exit

.lr.ph.preheader.i162:                            ; preds = %bb.m
  %i.pt = sext i32 %4 to i64                      ; 3 uses
  %wide.trip.count33.i163 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i164 = zext nneg i32 %3 to i64 ; 11 uses
  %i.pu = add nsw i64 %wide.trip.count.i164, -1   ; 2 uses
  %i.pv = add nsw i32 %3, -1                      ; 2 uses
  %i.pw = getelementptr i8, ptr %0, i64 %wide.trip.count.i164
  %i.px = getelementptr i8, ptr %i.pw, i64 %wide.trip.count33.i163
  %scevgep332 = getelementptr i8, ptr %i.px, i64 -1
  %min.iters.check334 = icmp ult i32 %3, 8
  %ident.check322 = icmp ne i32 %4, 1
  %i.py = trunc nsw i64 %i.pu to i32
  %i.pz = icmp ugt i64 %i.pu, 4294967295
  %invariant.op664 = or i1 %i.pz, %ident.check322
  %min.iters.check340 = icmp ult i32 %3, 32
  %i.qa = and i64 %wide.trip.count.i164, 24
  %n.vec342 = and i64 %wide.trip.count.i164, 2147483616 ; 5 uses
  %cmp.n351 = icmp eq i64 %n.vec342, %wide.trip.count.i164
  %min.epilog.iters.check355 = icmp eq i64 %i.qa, 0
  %n.vec358 = and i64 %wide.trip.count.i164, 2147483640 ; 4 uses
  %cmp.n365 = icmp eq i64 %n.vec358, %wide.trip.count.i164
  %xtraiter632.a = and i64 %wide.trip.count.i164, 1
  %lcmp.mod633.not.a = icmp eq i64 %xtraiter632.a, 0
  %i.qb = add nsw i64 %wide.trip.count.i164, -1
  br label %iter.check352

iter.check352:                                    ; preds = %._crit_edge.i172, %.lr.ph.preheader.i162
  %indvars.iv25.i166 = phi i64 [ 0, %.lr.ph.preheader.i162 ], [ %indvars.iv.next26.i173, %._crit_edge.i172 ] ; 10 uses
  %indvars32.i = trunc i64 %indvars.iv25.i166 to i32
  %i.qc = mul nsw i32 %5, %indvars32.i            ; 2 uses
  %i.qd = add i32 %i.qc, %3                       ; 5 uses
  br i1 %min.iters.check334, label %vec.epilog.scalar.ph354.preheader, label %vector.scevcheck321

vector.scevcheck321:                              ; preds = %iter.check352
  %i.qe = trunc i64 %indvars.iv25.i166 to i32
  %i.qf = mul i32 %5, %i.qe
  %i.qg = add i32 %i.qf, %i.pv                    ; 2 uses
  %i.qh = sub i32 %i.qg, %i.py
  %i.qi = icmp sgt i32 %i.qh, %i.qg
  %.reass665 = or i1 %i.qi, %invariant.op664
  br i1 %.reass665, label %vec.epilog.scalar.ph354.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %vector.scevcheck321
  %i.qj = add i32 %i.pv, %i.qc
  %i.qk = sext i32 %i.qj to i64
  %16 = add nsw i64 %i.qk, 1                      ; 2 uses
  %17 = sub nsw i64 %16, %wide.trip.count.i164
  %i.ql = getelementptr i8, ptr %1, i64 %17
  %i.qm = getelementptr i8, ptr %1, i64 %16
  %bound0336 = icmp ult ptr %0, %i.qm
  %bound1337 = icmp ult ptr %i.ql, %scevgep332
  %found.conflict338 = and i1 %bound0336, %bound1337
  br i1 %found.conflict338, label %vec.epilog.scalar.ph354.preheader, label %vector.main.loop.iter.check339

vector.main.loop.iter.check339:                   ; preds = %vector.memcheck335
  br i1 %min.iters.check340, label %vec.epilog.ph356, label %vector.ph341

vector.ph341:                                     ; preds = %vector.main.loop.iter.check339
  %i.qn = add nuw i64 %indvars.iv25.i166, %n.vec342
  %i.qo = getelementptr i8, ptr %0, i64 %indvars.iv25.i166
  br label %vector.body343

vector.body343:                                   ; preds = %vector.ph341, %vector.body343
  %index344 = phi i64 [ 0, %vector.ph341 ], [ %index.next349, %vector.body343 ] ; 3 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 %index344 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %wide.load345 = load <16 x i8>, ptr %i.qp, align 1, !tbaa !8, !alias.scope !116, !noalias !117
  %wide.load346 = load <16 x i8>, ptr %i.qq, align 1, !tbaa !8, !alias.scope !116, !noalias !117
  %i.qr = trunc i64 %index344 to i32
  %i.qs = xor i32 %i.qr, -1
  %i.qt = add i32 %i.qd, %i.qs
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr inbounds i8, ptr %1, i64 %i.qu ; 2 uses
  %i.qw = getelementptr inbounds i8, ptr %i.qv, i64 -15
  %i.qx = getelementptr inbounds i8, ptr %i.qv, i64 -31
  %reverse347 = shufflevector <16 x i8> %wide.load345, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse348 = shufflevector <16 x i8> %wide.load346, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse347, ptr %i.qw, align 1, !tbaa !8, !alias.scope !117
  store <16 x i8> %reverse348, ptr %i.qx, align 1, !tbaa !8, !alias.scope !117
  %index.next349 = add nuw i64 %index344, 32      ; 2 uses
  %i.qy = icmp eq i64 %index.next349, %n.vec342
  br i1 %i.qy, label %middle.block350, label %vector.body343, !llvm.loop !81

middle.block350:                                  ; preds = %vector.body343
  br i1 %cmp.n351, label %._crit_edge.i172, label %vec.epilog.iter.check353

vec.epilog.iter.check353:                         ; preds = %middle.block350
  br i1 %min.epilog.iters.check355, label %vec.epilog.scalar.ph354.preheader, label %vec.epilog.ph356, !prof !111

vec.epilog.ph356:                                 ; preds = %vector.main.loop.iter.check339, %vec.epilog.iter.check353
  %vec.epilog.resume.val357 = phi i64 [ %n.vec342, %vec.epilog.iter.check353 ], [ 0, %vector.main.loop.iter.check339 ]
  %i.qz = add nuw i64 %indvars.iv25.i166, %n.vec358
  %i.ra = getelementptr i8, ptr %0, i64 %indvars.iv25.i166
  br label %vec.epilog.vector.body359

vec.epilog.vector.body359:                        ; preds = %vec.epilog.vector.body359, %vec.epilog.ph356
  %index360 = phi i64 [ %vec.epilog.resume.val357, %vec.epilog.ph356 ], [ %index.next363, %vec.epilog.vector.body359 ] ; 3 uses
  %i.rb = getelementptr i8, ptr %i.ra, i64 %index360
  %wide.load361 = load <8 x i8>, ptr %i.rb, align 1, !tbaa !8, !alias.scope !116, !noalias !117
  %i.rc = trunc i64 %index360 to i32
  %i.rd = xor i32 %i.rc, -1
  %i.re = add i32 %i.qd, %i.rd
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds i8, ptr %1, i64 %i.rf
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 -7
  %reverse362 = shufflevector <8 x i8> %wide.load361, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse362, ptr %i.rh, align 1, !tbaa !8, !alias.scope !117
  %index.next363 = add nuw i64 %index360, 8       ; 2 uses
  %i.ri = icmp eq i64 %index.next363, %n.vec358
  br i1 %i.ri, label %vec.epilog.middle.block364, label %vec.epilog.vector.body359, !llvm.loop !82

vec.epilog.middle.block364:                       ; preds = %vec.epilog.vector.body359
  br i1 %cmp.n365, label %._crit_edge.i172, label %vec.epilog.scalar.ph354.preheader

vec.epilog.scalar.ph354.preheader:                ; preds = %iter.check352, %vector.scevcheck321, %vector.memcheck335, %vec.epilog.iter.check353, %vec.epilog.middle.block364
  %indvars.iv27.i167.ph = phi i64 [ %indvars.iv25.i166, %iter.check352 ], [ %indvars.iv25.i166, %vector.scevcheck321 ], [ %indvars.iv25.i166, %vector.memcheck335 ], [ %i.qn, %vec.epilog.iter.check353 ], [ %i.qz, %vec.epilog.middle.block364 ] ; 3 uses
  %indvars.iv.i168.ph = phi i64 [ 0, %iter.check352 ], [ 0, %vector.scevcheck321 ], [ 0, %vector.memcheck335 ], [ %n.vec342, %vec.epilog.iter.check353 ], [ %n.vec358, %vec.epilog.middle.block364 ] ; 4 uses
  br i1 %lcmp.mod633.not.a, label %vec.epilog.scalar.ph354.prol.loopexit, label %vec.epilog.scalar.ph354.prol

vec.epilog.scalar.ph354.prol:                     ; preds = %vec.epilog.scalar.ph354.preheader
  %i.rj = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i167.ph
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !8
  %i.rl = trunc nuw nsw i64 %indvars.iv.i168.ph to i32
  %i.rm = xor i32 %i.rl, -1
  %i.rn = add i32 %i.qd, %i.rm
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds i8, ptr %1, i64 %i.ro
  store i8 %i.rk, ptr %i.rp, align 1, !tbaa !8
  %indvars.iv.next28.i169.prol = add nsw i64 %indvars.iv27.i167.ph, %i.pt
  %indvars.iv.next.i170.prol = or disjoint i64 %indvars.iv.i168.ph, 1
  br label %vec.epilog.scalar.ph354.prol.loopexit

vec.epilog.scalar.ph354.prol.loopexit:            ; preds = %vec.epilog.scalar.ph354.prol, %vec.epilog.scalar.ph354.preheader
  %indvars.iv27.i167.unr = phi i64 [ %indvars.iv27.i167.ph, %vec.epilog.scalar.ph354.preheader ], [ %indvars.iv.next28.i169.prol, %vec.epilog.scalar.ph354.prol ]
  %indvars.iv.i168.unr = phi i64 [ %indvars.iv.i168.ph, %vec.epilog.scalar.ph354.preheader ], [ %indvars.iv.next.i170.prol, %vec.epilog.scalar.ph354.prol ]
  %i.rq = icmp eq i64 %indvars.iv.i168.ph, %i.qb
  br i1 %i.rq, label %._crit_edge.i172, label %vec.epilog.scalar.ph354

._crit_edge.i172:                                 ; preds = %vec.epilog.scalar.ph354.prol.loopexit, %vec.epilog.scalar.ph354, %vec.epilog.middle.block364, %middle.block350
  %indvars.iv.next26.i173 = add nuw nsw i64 %indvars.iv25.i166, 1 ; 2 uses
  %exitcond34.not.i174 = icmp eq i64 %indvars.iv.next26.i173, %wide.trip.count33.i163
  br i1 %exitcond34.not.i174, label %rotate90_l8.exit, label %iter.check352, !llvm.loop !83

vec.epilog.scalar.ph354:                          ; preds = %vec.epilog.scalar.ph354.prol.loopexit, %vec.epilog.scalar.ph354
  %indvars.iv27.i167 = phi i64 [ %indvars.iv.next28.i169.1, %vec.epilog.scalar.ph354 ], [ %indvars.iv27.i167.unr, %vec.epilog.scalar.ph354.prol.loopexit ] ; 2 uses
  %indvars.iv.i168 = phi i64 [ %indvars.iv.next.i170.1, %vec.epilog.scalar.ph354 ], [ %indvars.iv.i168.unr, %vec.epilog.scalar.ph354.prol.loopexit ] ; 3 uses
  %i.rr = getelementptr inbounds i8, ptr %0, i64 %indvars.iv27.i167
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !8
  %i.rt = trunc i64 %indvars.iv.i168 to i32
  %i.ru = xor i32 %i.rt, -1
  %i.rv = add i32 %i.qd, %i.ru
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds i8, ptr %1, i64 %i.rw
  store i8 %i.rs, ptr %i.rx, align 1, !tbaa !8
  %indvars.iv.next28.i169 = add nsw i64 %indvars.iv27.i167, %i.pt ; 2 uses
  %i.ry = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next28.i169
  %i.rz = load i8, ptr %i.ry, align 1, !tbaa !8
  %i.sa = trunc i64 %indvars.iv.i168 to i32
  %reass.sub661 = sub i32 %i.qd, %i.sa
  %i.sb = add i32 %reass.sub661, -2
  %i.sc = sext i32 %i.sb to i64
  %i.sd = getelementptr inbounds i8, ptr %1, i64 %i.sc
  store i8 %i.rz, ptr %i.sd, align 1, !tbaa !8
  %indvars.iv.next28.i169.1 = add nsw i64 %indvars.iv.next28.i169, %i.pt
  %indvars.iv.next.i170.1 = add nuw nsw i64 %indvars.iv.i168, 2 ; 2 uses
  %exitcond.not.i171.1 = icmp eq i64 %indvars.iv.next.i170.1, %wide.trip.count.i164
  br i1 %exitcond.not.i171.1, label %._crit_edge.i172, label %vec.epilog.scalar.ph354, !llvm.loop !84

bb.n:                                             ; preds = %bb.l
  %i.se = ashr i32 %5, 1                          ; 2 uses
  %i.sf = icmp sgt i32 %2, 0
  %i.sg = icmp sgt i32 %3, 0
  %or.cond.i175 = and i1 %i.sf, %i.sg
  br i1 %or.cond.i175, label %.lr.ph.preheader.i176, label %rotate90_l8.exit

.lr.ph.preheader.i176:                            ; preds = %bb.n
  %i.sh = ashr i32 %4, 1                          ; 2 uses
  %i.si = sext i32 %i.sh to i64                   ; 3 uses
  %wide.trip.count35.i177 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i178 = zext nneg i32 %3 to i64 ; 11 uses
  %i.sj = add nsw i64 %wide.trip.count.i178, -1   ; 2 uses
  %i.sk = add nsw i32 %3, -1                      ; 2 uses
  %18 = shl nuw nsw i64 %wide.trip.count.i178, 1
  %i.sl = add nuw nsw i64 %wide.trip.count.i178, %wide.trip.count35.i177
  %i.sm = shl nuw nsw i64 %i.sl, 1
  %i.sn = getelementptr i8, ptr %0, i64 %i.sm
  %scevgep294 = getelementptr i8, ptr %i.sn, i64 -2
  %min.iters.check296 = icmp ult i32 %3, 4
  %ident.check284 = icmp ne i32 %i.sh, 1
  %i.so = trunc nsw i64 %i.sj to i32
  %i.sp = icmp ugt i64 %i.sj, 4294967295
  %invariant.op662 = or i1 %i.sp, %ident.check284
  %min.iters.check301 = icmp ult i32 %3, 16
  %i.sq = and i64 %wide.trip.count.i178, 12
  %n.vec303 = and i64 %wide.trip.count.i178, 2147483632 ; 5 uses
  %cmp.n312 = icmp eq i64 %n.vec303, %wide.trip.count.i178
  %min.epilog.iters.check = icmp eq i64 %i.sq, 0
  %n.vec313 = and i64 %wide.trip.count.i178, 2147483644 ; 4 uses
  %cmp.n318 = icmp eq i64 %n.vec313, %wide.trip.count.i178
  %xtraiter630 = and i64 %wide.trip.count.i178, 1
  %lcmp.mod631.not = icmp eq i64 %xtraiter630, 0
  %i.sr = add nsw i64 %wide.trip.count.i178, -1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i186, %.lr.ph.preheader.i176
  %indvars.iv27.i180 = phi i64 [ 0, %.lr.ph.preheader.i176 ], [ %indvars.iv.next28.i187, %._crit_edge.i186 ] ; 10 uses
  %indvars34.i = trunc i64 %indvars.iv27.i180 to i32
  %i.ss = mul nsw i32 %i.se, %indvars34.i         ; 2 uses
  %i.st = add i32 %i.ss, %3                       ; 5 uses
  br i1 %min.iters.check296, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck283

vector.scevcheck283:                              ; preds = %iter.check
  %i.su = trunc i64 %indvars.iv27.i180 to i32
  %i.sv = mul i32 %i.se, %i.su
  %i.sw = add i32 %i.sv, %i.sk                    ; 2 uses
  %i.sx = sub i32 %i.sw, %i.so
  %i.sy = icmp sgt i32 %i.sx, %i.sw
  %.reass663 = or i1 %i.sy, %invariant.op662
  br i1 %.reass663, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck297

vector.memcheck297:                               ; preds = %vector.scevcheck283
  %i.sz = add i32 %i.sk, %i.ss
  %i.ta = sext i32 %i.sz to i64
  %i.tb = shl nsw i64 %i.ta, 1
  %19 = add nsw i64 %i.tb, 2                      ; 2 uses
  %20 = sub nsw i64 %19, %18
  %i.tc = getelementptr i8, ptr %1, i64 %20
  %i.td = getelementptr i8, ptr %1, i64 %19
  %bound0298 = icmp ult ptr %0, %i.td
  %bound1299 = icmp ult ptr %i.tc, %scevgep294
  %found.conflict300 = and i1 %bound0298, %bound1299
  br i1 %found.conflict300, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck297
  br i1 %min.iters.check301, label %vec.epilog.ph, label %vector.ph302

vector.ph302:                                     ; preds = %vector.main.loop.iter.check
  %i.te = add nuw i64 %indvars.iv27.i180, %n.vec303
  %i.tf = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vector.body304

vector.body304:                                   ; preds = %vector.ph302, %vector.body304
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next310, %vector.body304 ] ; 3 uses
  %i.tg = getelementptr [2 x i8], ptr %i.tf, i64 %index305 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %wide.load306 = load <8 x i16>, ptr %i.tg, align 2, !tbaa !14, !alias.scope !118, !noalias !119
  %wide.load307 = load <8 x i16>, ptr %i.th, align 2, !tbaa !14, !alias.scope !118, !noalias !119
  %i.ti = trunc i64 %index305 to i32
  %i.tj = xor i32 %i.ti, -1
  %i.tk = add i32 %i.st, %i.tj
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [2 x i8], ptr %1, i64 %i.tl ; 2 uses
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 -14
  %i.to = getelementptr inbounds i8, ptr %i.tm, i64 -30
  %reverse308 = shufflevector <8 x i16> %wide.load306, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse309 = shufflevector <8 x i16> %wide.load307, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse308, ptr %i.tn, align 2, !tbaa !14, !alias.scope !119
  store <8 x i16> %reverse309, ptr %i.to, align 2, !tbaa !14, !alias.scope !119
  %index.next310 = add nuw i64 %index305, 16      ; 2 uses
  %i.tp = icmp eq i64 %index.next310, %n.vec303
  br i1 %i.tp, label %middle.block311, label %vector.body304, !llvm.loop !88

middle.block311:                                  ; preds = %vector.body304
  br i1 %cmp.n312, label %._crit_edge.i186, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block311
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !106

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec303, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.tq = add nuw i64 %indvars.iv27.i180, %n.vec313
  %i.tr = getelementptr [2 x i8], ptr %0, i64 %indvars.iv27.i180
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index314 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next317, %vec.epilog.vector.body ] ; 3 uses
  %i.ts = getelementptr [2 x i8], ptr %i.tr, i64 %index314
  %wide.load315 = load <4 x i16>, ptr %i.ts, align 2, !tbaa !14, !alias.scope !118, !noalias !119
  %i.tt = trunc i64 %index314 to i32
  %i.tu = xor i32 %i.tt, -1
  %i.tv = add i32 %i.st, %i.tu
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [2 x i8], ptr %1, i64 %i.tw
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 -6
  %reverse316 = shufflevector <4 x i16> %wide.load315, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i16> %reverse316, ptr %i.ty, align 2, !tbaa !14, !alias.scope !119
  %index.next317 = add nuw i64 %index314, 4       ; 2 uses
  %i.tz = icmp eq i64 %index.next317, %n.vec313
  br i1 %i.tz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !89

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n318, label %._crit_edge.i186, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck283, %vector.memcheck297, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv29.i181.ph = phi i64 [ %indvars.iv27.i180, %iter.check ], [ %indvars.iv27.i180, %vector.scevcheck283 ], [ %indvars.iv27.i180, %vector.memcheck297 ], [ %i.te, %vec.epilog.iter.check ], [ %i.tq, %vec.epilog.middle.block ] ; 3 uses
  %indvars.iv.i182.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck283 ], [ 0, %vector.memcheck297 ], [ %n.vec303, %vec.epilog.iter.check ], [ %n.vec313, %vec.epilog.middle.block ] ; 4 uses
  br i1 %lcmp.mod631.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ua = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181.ph
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !14
  %i.uc = trunc nuw nsw i64 %indvars.iv.i182.ph to i32
  %i.ud = xor i32 %i.uc, -1
  %i.ue = add i32 %i.st, %i.ud
  %i.uf = sext i32 %i.ue to i64
  %i.ug = getelementptr inbounds [2 x i8], ptr %1, i64 %i.uf
  store i16 %i.ub, ptr %i.ug, align 2, !tbaa !14
  %indvars.iv.next30.i183.prol = add nsw i64 %indvars.iv29.i181.ph, %i.si
  %indvars.iv.next.i184.prol = or disjoint i64 %indvars.iv.i182.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv29.i181.unr = phi i64 [ %indvars.iv29.i181.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next30.i183.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.i182.unr = phi i64 [ %indvars.iv.i182.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i184.prol, %vec.epilog.scalar.ph.prol ]
  %i.uh = icmp eq i64 %indvars.iv.i182.ph, %i.sr
  br i1 %i.uh, label %._crit_edge.i186, label %vec.epilog.scalar.ph

._crit_edge.i186:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block311
  %indvars.iv.next28.i187 = add nuw nsw i64 %indvars.iv27.i180, 1 ; 2 uses
  %exitcond36.not.i188 = icmp eq i64 %indvars.iv.next28.i187, %wide.trip.count35.i177
  br i1 %exitcond36.not.i188, label %rotate90_l8.exit, label %iter.check, !llvm.loop !90

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv29.i181 = phi i64 [ %indvars.iv.next30.i183.1, %vec.epilog.scalar.ph ], [ %indvars.iv29.i181.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i182 = phi i64 [ %indvars.iv.next.i184.1, %vec.epilog.scalar.ph ], [ %indvars.iv.i182.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 3 uses
  %i.ui = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv29.i181
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !14
  %i.uk = trunc i64 %indvars.iv.i182 to i32
  %i.ul = xor i32 %i.uk, -1
  %i.um = add i32 %i.st, %i.ul
  %i.un = sext i32 %i.um to i64
  %i.uo = getelementptr inbounds [2 x i8], ptr %1, i64 %i.un
  store i16 %i.uj, ptr %i.uo, align 2, !tbaa !14
  %indvars.iv.next30.i183 = add nsw i64 %indvars.iv29.i181, %i.si ; 2 uses
  %i.up = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv.next30.i183
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !14
  %i.ur = trunc i64 %indvars.iv.i182 to i32
  %reass.sub660 = sub i32 %i.st, %i.ur
  %i.us = add i32 %reass.sub660, -2
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ut
  store i16 %i.uq, ptr %i.uu, align 2, !tbaa !14
  %indvars.iv.next30.i183.1 = add nsw i64 %indvars.iv.next30.i183, %i.si
  %indvars.iv.next.i184.1 = add nuw nsw i64 %indvars.iv.i182, 2 ; 2 uses
  %exitcond.not.i185.1 = icmp eq i64 %indvars.iv.next.i184.1, %wide.trip.count.i178
  br i1 %exitcond.not.i185.1, label %._crit_edge.i186, label %vec.epilog.scalar.ph, !llvm.loop !91

bb.o:                                             ; preds = %bb.l
  %i.uv = icmp sgt i32 %2, 0
  %i.uw = icmp sgt i32 %3, 0
  %or.cond.i189 = and i1 %i.uv, %i.uw
  br i1 %or.cond.i189, label %.preheader.preheader.i190, label %rotate90_l8.exit

.preheader.preheader.i190:                        ; preds = %bb.o
  %i.ux = zext nneg i32 %3 to i64                 ; 5 uses
  %i.uy = sext i32 %4 to i64                      ; 3 uses
  %i.uz = sext i32 %5 to i64
  %wide.trip.count33.i191 = zext nneg i32 %2 to i64
  %xtraiter627 = and i64 %i.ux, 1
  %i.va = icmp eq i32 %3, 1
  %unroll_iter = and i64 %i.ux, 2147483646
  %lcmp.mod628.not = icmp eq i64 %xtraiter627, 0
  %lcmp.mod629 = trunc i32 %3 to i1
  br label %.preheader.i193

.preheader.i193:                                  ; preds = %._crit_edge.i202, %.preheader.preheader.i190
  %indvars.iv30.i194 = phi i64 [ 0, %.preheader.preheader.i190 ], [ %indvars.iv.next31.i203, %._crit_edge.i202 ] ; 3 uses
  %i.vb = mul nuw nsw i64 %indvars.iv30.i194, 3
  %i.vc = mul nsw i64 %indvars.iv30.i194, %i.uz
  %invariant.gep.i195 = getelementptr i8, ptr %0, i64 %i.vb ; 3 uses
  %invariant.gep36.i196 = getelementptr i8, ptr %1, i64 %i.vc ; 3 uses
  br i1 %i.va, label %.epil.preheader, label %.preheader.i193.new

._crit_edge.i202.unr-lcssa:                       ; preds = %.preheader.i193.new
  br i1 %lcmp.mod628.not, label %._crit_edge.i202, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i202.unr-lcssa, %.preheader.i193
  %indvars.iv.i197.epil.init = phi i64 [ 0, %.preheader.i193 ], [ %indvars.iv.next.i200.1, %._crit_edge.i202.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod629)
  %i.vd = mul nsw i64 %indvars.iv.i197.epil.init, %i.uy
  %i.ve = xor i64 %indvars.iv.i197.epil.init, -1
  %i.vf = add nsw i64 %i.ve, %i.ux
  %i.vg = mul nuw nsw i64 %i.vf, 3
  %gep.i198.epil = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vd ; 3 uses
  %i.vh = load i8, ptr %gep.i198.epil, align 1, !tbaa !8
  %gep37.i199.epil = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vg ; 3 uses
  store i8 %i.vh, ptr %gep37.i199.epil, align 1, !tbaa !8
  %i.vi = getelementptr i8, ptr %gep.i198.epil, i64 1
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !8
  %i.vk = getelementptr i8, ptr %gep37.i199.epil, i64 1
  store i8 %i.vj, ptr %i.vk, align 1, !tbaa !8
  %i.vl = getelementptr i8, ptr %gep.i198.epil, i64 2
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !8
  %i.vn = getelementptr i8, ptr %gep37.i199.epil, i64 2
  store i8 %i.vm, ptr %i.vn, align 1, !tbaa !8
  br label %._crit_edge.i202

._crit_edge.i202:                                 ; preds = %._crit_edge.i202.unr-lcssa, %.epil.preheader
  %indvars.iv.next31.i203 = add nuw nsw i64 %indvars.iv30.i194, 1 ; 2 uses
  %exitcond34.not.i204 = icmp eq i64 %indvars.iv.next31.i203, %wide.trip.count33.i191
  br i1 %exitcond34.not.i204, label %rotate90_l8.exit, label %.preheader.i193, !llvm.loop !92

.preheader.i193.new:                              ; preds = %.preheader.i193, %.preheader.i193.new
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i200.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i193.new ], [ 0, %.preheader.i193 ]
  %i.vo = mul nsw i64 %indvars.iv.i197, %i.uy
  %i.vp = xor i64 %indvars.iv.i197, -1
  %i.vq = add nsw i64 %i.vp, %i.ux
  %i.vr = mul nuw nsw i64 %i.vq, 3
  %gep.i198 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vo ; 3 uses
  %i.vs = load i8, ptr %gep.i198, align 1, !tbaa !8
  %gep37.i199 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.vr ; 3 uses
  store i8 %i.vs, ptr %gep37.i199, align 1, !tbaa !8
  %i.vt = getelementptr i8, ptr %gep.i198, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !8
  %i.vv = getelementptr i8, ptr %gep37.i199, i64 1
  store i8 %i.vu, ptr %i.vv, align 1, !tbaa !8
  %i.vw = getelementptr i8, ptr %gep.i198, i64 2
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !8
  %i.vy = getelementptr i8, ptr %gep37.i199, i64 2
  store i8 %i.vx, ptr %i.vy, align 1, !tbaa !8
  %indvars.iv.next.i200 = or disjoint i64 %indvars.iv.i197, 1
  %i.vz = mul nsw i64 %indvars.iv.next.i200, %i.uy
  %i.wa = xor i64 %indvars.iv.i197, -2
  %i.wb = add nsw i64 %i.wa, %i.ux
  %i.wc = mul nuw nsw i64 %i.wb, 3
  %gep.i198.1 = getelementptr i8, ptr %invariant.gep.i195, i64 %i.vz ; 3 uses
  %i.wd = load i8, ptr %gep.i198.1, align 1, !tbaa !8
  %gep37.i199.1 = getelementptr i8, ptr %invariant.gep36.i196, i64 %i.wc ; 3 uses
  store i8 %i.wd, ptr %gep37.i199.1, align 1, !tbaa !8
  %i.we = getelementptr i8, ptr %gep.i198.1, i64 1
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !8
  %i.wg = getelementptr i8, ptr %gep37.i199.1, i64 1
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !8
  %i.wh = getelementptr i8, ptr %gep.i198.1, i64 2
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !8
  %i.wj = getelementptr i8, ptr %gep37.i199.1, i64 2
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !8
  %indvars.iv.next.i200.1 = add nuw nsw i64 %indvars.iv.i197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i202.unr-lcssa, label %.preheader.i193.new, !llvm.loop !93

bb.p:                                             ; preds = %bb.l, %bb.l
  %i.wk = ashr i32 %5, 2                          ; 2 uses
  %i.wl = icmp sgt i32 %2, 0
  %i.wm = icmp sgt i32 %3, 0
  %or.cond.i205 = and i1 %i.wl, %i.wm
  br i1 %or.cond.i205, label %.lr.ph.preheader.i206, label %rotate90_l8.exit

.lr.ph.preheader.i206:                            ; preds = %bb.p
  %i.wn = ashr i32 %4, 2                          ; 2 uses
  %i.wo = sext i32 %i.wn to i64                   ; 3 uses
  %wide.trip.count35.i207 = zext nneg i32 %2 to i64 ; 2 uses
  %wide.trip.count.i208 = zext nneg i32 %3 to i64 ; 8 uses
  %i.wp = add nsw i64 %wide.trip.count.i208, -1   ; 2 uses
  %i.wq = add nsw i32 %3, -1                      ; 2 uses
  %21 = shl nuw nsw i64 %wide.trip.count.i208, 2
  %i.wr = add nuw nsw i64 %wide.trip.count.i208, %wide.trip.count35.i207
  %i.ws = shl nuw nsw i64 %i.wr, 2
  %i.wt = getelementptr i8, ptr %0, i64 %i.ws
  %scevgep = getelementptr i8, ptr %i.wt, i64 -4
  %min.iters.check = icmp ult i32 %3, 12
  %ident.check = icmp ne i32 %i.wn, 1
  %i.wu = trunc nsw i64 %i.wp to i32
  %i.wv = icmp ugt i64 %i.wp, 4294967295
  %invariant.op = or i1 %i.wv, %ident.check
  %n.vec = and i64 %wide.trip.count.i208, 2147483640 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i208
  %xtraiter = and i64 %wide.trip.count.i208, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ww = add nsw i64 %wide.trip.count.i208, -1
  br label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %._crit_edge.i217, %.lr.ph.preheader.i206
  %indvars.iv27.i210 = phi i64 [ 0, %.lr.ph.preheader.i206 ], [ %indvars.iv.next28.i218, %._crit_edge.i217 ] ; 8 uses
  %indvars34.i211 = trunc i64 %indvars.iv27.i210 to i32
  %i.wx = mul nsw i32 %i.wk, %indvars34.i211      ; 2 uses
  %i.wy = add i32 %i.wx, %3                       ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i209
  %i.wz = trunc i64 %indvars.iv27.i210 to i32
  %i.xa = mul i32 %i.wk, %i.wz
  %i.xb = add i32 %i.xa, %i.wq                    ; 2 uses
  %i.xc = sub i32 %i.xb, %i.wu
  %i.xd = icmp sgt i32 %i.xc, %i.xb
  %.reass = or i1 %i.xd, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.xe = add i32 %i.wq, %i.wx
  %i.xf = sext i32 %i.xe to i64
  %i.xg = shl nsw i64 %i.xf, 2
  %22 = add nsw i64 %i.xg, 4                      ; 2 uses
  %23 = sub nsw i64 %22, %21
  %i.xh = getelementptr i8, ptr %1, i64 %23
  %i.xi = getelementptr i8, ptr %1, i64 %22
  %bound0 = icmp ult ptr %0, %i.xi
  %bound1 = icmp ult ptr %i.xh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.xj = add nuw i64 %indvars.iv27.i210, %n.vec
  %i.xk = getelementptr [4 x i8], ptr %0, i64 %indvars.iv27.i210
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.xl = getelementptr [4 x i8], ptr %i.xk, i64 %index ; 2 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %wide.load = load <4 x i32>, ptr %i.xl, align 4, !tbaa !9, !alias.scope !120, !noalias !121
  %wide.load280 = load <4 x i32>, ptr %i.xm, align 4, !tbaa !9, !alias.scope !120, !noalias !121
  %i.xn = trunc i64 %index to i32
  %i.xo = xor i32 %i.xn, -1
  %i.xp = add i32 %i.wy, %i.xo
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds i8, ptr %i.xr, i64 -12
  %i.xt = getelementptr inbounds i8, ptr %i.xr, i64 -28
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse281 = shufflevector <4 x i32> %wide.load280, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %i.xs, align 4, !tbaa !9, !alias.scope !121
  store <4 x i32> %reverse281, ptr %i.xt, align 4, !tbaa !9, !alias.scope !121
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.xu = icmp eq i64 %index.next, %n.vec
  br i1 %i.xu, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i217, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i209, %middle.block
  %indvars.iv29.i212.ph = phi i64 [ %indvars.iv27.i210, %vector.memcheck ], [ %indvars.iv27.i210, %vector.scevcheck ], [ %indvars.iv27.i210, %.lr.ph.i209 ], [ %i.xj, %middle.block ] ; 3 uses
  %indvars.iv.i213.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i209 ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.xv = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212.ph
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !9
  %i.xx = trunc nuw nsw i64 %indvars.iv.i213.ph to i32
  %i.xy = xor i32 %i.xx, -1
  %i.xz = add i32 %i.wy, %i.xy
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ya
  store i32 %i.xw, ptr %i.yb, align 4, !tbaa !9
  %indvars.iv.next30.i214.prol = add nsw i64 %indvars.iv29.i212.ph, %i.wo
  %indvars.iv.next.i215.prol = or disjoint i64 %indvars.iv.i213.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv29.i212.unr = phi i64 [ %indvars.iv29.i212.ph, %scalar.ph.preheader ], [ %indvars.iv.next30.i214.prol, %scalar.ph.prol ]
  %indvars.iv.i213.unr = phi i64 [ %indvars.iv.i213.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i215.prol, %scalar.ph.prol ]
  %i.yc = icmp eq i64 %indvars.iv.i213.ph, %i.ww
  br i1 %i.yc, label %._crit_edge.i217, label %scalar.ph

._crit_edge.i217:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next28.i218 = add nuw nsw i64 %indvars.iv27.i210, 1 ; 2 uses
  %exitcond36.not.i219 = icmp eq i64 %indvars.iv.next28.i218, %wide.trip.count35.i207
  br i1 %exitcond36.not.i219, label %rotate90_l8.exit, label %.lr.ph.i209, !llvm.loop !98

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv29.i212 = phi i64 [ %indvars.iv.next30.i214.1, %scalar.ph ], [ %indvars.iv29.i212.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv.i213 = phi i64 [ %indvars.iv.next.i215.1, %scalar.ph ], [ %indvars.iv.i213.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.yd = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv29.i212
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !9
  %i.yf = trunc i64 %indvars.iv.i213 to i32
  %i.yg = xor i32 %i.yf, -1
  %i.yh = add i32 %i.wy, %i.yg
  %i.yi = sext i32 %i.yh to i64
  %i.yj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yi
  store i32 %i.ye, ptr %i.yj, align 4, !tbaa !9
  %indvars.iv.next30.i214 = add nsw i64 %indvars.iv29.i212, %i.wo ; 2 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next30.i214
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !9
  %i.ym = trunc i64 %indvars.iv.i213 to i32
  %reass.sub = sub i32 %i.wy, %i.ym
  %i.yn = add i32 %reass.sub, -2
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.yo
  store i32 %i.yl, ptr %i.yp, align 4, !tbaa !9
  %indvars.iv.next30.i214.1 = add nsw i64 %indvars.iv.next30.i214, %i.wo
  %indvars.iv.next.i215.1 = add nuw nsw i64 %indvars.iv.i213, 2 ; 2 uses
  %exitcond.not.i216.1 = icmp eq i64 %indvars.iv.next.i215.1, %wide.trip.count.i208
  br i1 %exitcond.not.i216.1, label %._crit_edge.i217, label %scalar.ph, !llvm.loop !99

rotate90_l8.exit:                                 ; preds = %._crit_edge.i217, %._crit_edge.i202, %._crit_edge.i186, %._crit_edge.i172, %._crit_edge.i158, %._crit_edge.i145, %._crit_edge.i134, %._crit_edge.i124, %._crit_edge.i112, %._crit_edge.i97, %._crit_edge.i87, %._crit_edge.i, %bb.p, %bb.o, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.l, %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"short", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10}
!21 = !{!16}
!22 = !{!17}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10, !12, !11}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !12, !11}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, i1 false, !"LVerDomain"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !10, !11, !12}
!35 = distinct !{!35, !10, !11, !12}
!36 = distinct !{!36, !103}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !10, !11}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !10, !11, !12}
!43 = distinct !{!43, !10, !11, !12}
!44 = distinct !{!44, !103}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !10, !11}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, i1 false, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !10, !11, !12}
!53 = distinct !{!53, !103}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10, !11}
!56 = distinct !{!56, i1 false, !"LVerDomain"}
!57 = distinct !{!57, !56}
!58 = distinct !{!58, !56}
!59 = distinct !{!59, !10, !11, !12}
!60 = distinct !{!60, !10, !11, !12}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10, !11}
!63 = distinct !{!63, i1 false, !"LVerDomain"}
!64 = distinct !{!64, !63}
!65 = distinct !{!65, !63}
!66 = distinct !{!66, !10, !11, !12}
!67 = distinct !{!67, !10, !11, !12}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10, !11}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, i1 false, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !10, !11, !12}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10, !11}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !10, !11, !12}
!82 = distinct !{!82, !10, !11, !12}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10, !11}
!85 = distinct !{!85, i1 false, !"LVerDomain"}
!86 = distinct !{!86, !85}
!87 = distinct !{!87, !85}
!88 = distinct !{!88, !10, !11, !12}
!89 = distinct !{!89, !10, !11, !12}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10, !11}
!92 = distinct !{!92, !10}
end_hunk_0
