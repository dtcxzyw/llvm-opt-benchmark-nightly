inline.NumInlined: 207
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Abc_NtkSuperChoiceLut:bb.a
  %indvars.iv387.i.us.i = phi i64 [ %indvars.iv.next388.i.us.i, %Extra_TruthAnd.exit.i.us.i ], [ 0, %.lr.ph315.preheader.i.i ] ; 3 uses
  %i.sg = trunc nuw nsw i64 %indvars.iv387.i.us.i to i32
  %i.sh = shl nuw i32 1, %i.sg
  %i.si = and i32 %i.sh, %i.sf
  %.not199.i.us.i = icmp eq i32 %i.si, 0
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv387.i.us.i
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !43
  %i.sl = sext i32 %i.sk to i64
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.rk, i64 %i.sl
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !42 ; 8 uses
  br i1 %.not199.i.us.i, label %select.unfold.i234.i.us.i.preheader, label %select.unfold.i229.i.us.i.preheader

select.unfold.i229.i.us.i.preheader:              ; preds = %.lr.ph315.i.us.i
  br i1 %min.iters.check485, label %select.unfold.i229.i.us.i.preheader602, label %vector.memcheck499

vector.memcheck499:                               ; preds = %select.unfold.i229.i.us.i.preheader
  %scevgep502 = getelementptr i8, ptr %i.sn, i64 -4
  %scevgep503 = getelementptr i8, ptr %scevgep502, i64 %i.ro
  %scevgep504 = getelementptr i8, ptr %i.sn, i64 %i.rm
  %bound0505 = icmp ult ptr %scevgep501, %scevgep504
  %bound1506 = icmp ult ptr %scevgep503, %scevgep477
  %found.conflict507 = and i1 %bound0505, %bound1506
  br i1 %found.conflict507, label %select.unfold.i229.i.us.i.preheader602, label %vector.body513

vector.body513:                                   ; preds = %vector.memcheck499, %vector.body513
  %index514 = phi i64 [ %index.next519, %vector.body513 ], [ 0, %vector.memcheck499 ] ; 2 uses
  %i.so = xor i64 %index514, -1
  %i.sp = add i64 %i.so, %i.rj                    ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.sp ; 2 uses
  %i.sr = getelementptr inbounds i8, ptr %i.sq, i64 -12 ; 2 uses
  %i.ss = getelementptr inbounds i8, ptr %i.sq, i64 -28 ; 2 uses
  %wide.load515 = load <4 x i32>, ptr %i.sr, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  %wide.load516 = load <4 x i32>, ptr %i.ss, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.sp ; 2 uses
  %i.su = getelementptr inbounds i8, ptr %i.st, i64 -12
  %i.sv = getelementptr inbounds i8, ptr %i.st, i64 -28
  %wide.load517 = load <4 x i32>, ptr %i.su, align 4, !tbaa !43, !alias.scope !104
  %wide.load518 = load <4 x i32>, ptr %i.sv, align 4, !tbaa !43, !alias.scope !104
  %i.sw = and <4 x i32> %wide.load517, %wide.load515
  %i.sx = and <4 x i32> %wide.load518, %wide.load516
  store <4 x i32> %i.sw, ptr %i.sr, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  store <4 x i32> %i.sx, ptr %i.ss, align 4, !tbaa !43, !alias.scope !101, !noalias !104
  %index.next519 = add nuw i64 %index514, 8       ; 2 uses
  %i.sy = icmp eq i64 %index.next519, %n.vec512
  br i1 %i.sy, label %middle.block520, label %vector.body513, !llvm.loop !106

middle.block520:                                  ; preds = %vector.body513
  br i1 %cmp.n521, label %Extra_TruthAnd.exit.i.us.i, label %select.unfold.i229.i.us.i.preheader602

select.unfold.i229.i.us.i.preheader602:           ; preds = %vector.memcheck499, %select.unfold.i229.i.us.i.preheader, %middle.block520
  %indvars.iv.i230.i.us.i.ph = phi i64 [ %i.rj, %vector.memcheck499 ], [ %i.rj, %select.unfold.i229.i.us.i.preheader ], [ %i.rs, %middle.block520 ]
  br label %select.unfold.i229.i.us.i

select.unfold.i234.i.us.i.preheader:              ; preds = %.lr.ph315.i.us.i
  br i1 %min.iters.check485, label %select.unfold.i234.i.us.i.preheader601, label %vector.memcheck473

vector.memcheck473:                               ; preds = %select.unfold.i234.i.us.i.preheader
  %scevgep478 = getelementptr i8, ptr %i.sn, i64 -4
  %scevgep479 = getelementptr i8, ptr %scevgep478, i64 %i.rn
  %scevgep480 = getelementptr i8, ptr %i.sn, i64 %i.rm
  %bound0481 = icmp ult ptr %scevgep476, %scevgep480
  %bound1482 = icmp ult ptr %scevgep479, %scevgep477
  %found.conflict483 = and i1 %bound0481, %bound1482
  br i1 %found.conflict483, label %select.unfold.i234.i.us.i.preheader601, label %vector.body489

vector.body489:                                   ; preds = %vector.memcheck473, %vector.body489
  %index490 = phi i64 [ %index.next495, %vector.body489 ], [ 0, %vector.memcheck473 ] ; 2 uses
  %i.sz = xor i64 %index490, -1
  %i.ta = add i64 %i.sz, %i.rj                    ; 2 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.ta ; 2 uses
  %i.tc = getelementptr inbounds i8, ptr %i.tb, i64 -12 ; 2 uses
  %i.td = getelementptr inbounds i8, ptr %i.tb, i64 -28 ; 2 uses
  %wide.load491 = load <4 x i32>, ptr %i.tc, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  %wide.load492 = load <4 x i32>, ptr %i.td, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %i.ta ; 2 uses
  %i.tf = getelementptr inbounds i8, ptr %i.te, i64 -12
  %i.tg = getelementptr inbounds i8, ptr %i.te, i64 -28
  %wide.load493 = load <4 x i32>, ptr %i.tf, align 4, !tbaa !43, !alias.scope !110
  %wide.load494 = load <4 x i32>, ptr %i.tg, align 4, !tbaa !43, !alias.scope !110
  %i.th = xor <4 x i32> %wide.load493, splat (i32 -1)
  %i.ti = xor <4 x i32> %wide.load494, splat (i32 -1)
  %i.tj = and <4 x i32> %wide.load491, %i.th
  %i.tk = and <4 x i32> %wide.load492, %i.ti
  store <4 x i32> %i.tj, ptr %i.tc, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  store <4 x i32> %i.tk, ptr %i.td, align 4, !tbaa !43, !alias.scope !107, !noalias !110
  %index.next495 = add nuw i64 %index490, 8       ; 2 uses
  %i.tl = icmp eq i64 %index.next495, %n.vec488
  br i1 %i.tl, label %middle.block496, label %vector.body489, !llvm.loop !112

middle.block496:                                  ; preds = %vector.body489
  br i1 %cmp.n497, label %Extra_TruthAnd.exit.i.us.i, label %select.unfold.i234.i.us.i.preheader601

select.unfold.i234.i.us.i.preheader601:           ; preds = %vector.memcheck473, %select.unfold.i234.i.us.i.preheader, %middle.block496
  %indvars.iv.i235.i.us.i.ph = phi i64 [ %i.rj, %vector.memcheck473 ], [ %i.rj, %select.unfold.i234.i.us.i.preheader ], [ %i.rt, %middle.block496 ]
  br label %select.unfold.i234.i.us.i

select.unfold.i229.i.us.i:                        ; preds = %select.unfold.i229.i.us.i.preheader602, %select.unfold.i229.i.us.i
  %indvars.iv.i230.i.us.i = phi i64 [ %indvars.iv.next.i231.i.us.i, %select.unfold.i229.i.us.i ], [ %indvars.iv.i230.i.us.i.ph, %select.unfold.i229.i.us.i.preheader602 ] ; 2 uses
  %indvars.iv.next.i231.i.us.i = add nsw i64 %indvars.iv.i230.i.us.i, -1 ; 3 uses
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i231.i.us.i ; 2 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !43
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i231.i.us.i
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !43
  %i.tq = and i32 %i.tp, %i.tn
  store i32 %i.tq, ptr %i.tm, align 4, !tbaa !43
  %i.tr = icmp samesign ugt i64 %indvars.iv.i230.i.us.i, 1
  br i1 %i.tr, label %select.unfold.i229.i.us.i, label %Extra_TruthAnd.exit.i.us.i, !llvm.loop !113

select.unfold.i234.i.us.i:                        ; preds = %select.unfold.i234.i.us.i.preheader601, %select.unfold.i234.i.us.i
  %indvars.iv.i235.i.us.i = phi i64 [ %indvars.iv.next.i236.i.us.i, %select.unfold.i234.i.us.i ], [ %indvars.iv.i235.i.us.i.ph, %select.unfold.i234.i.us.i.preheader601 ] ; 2 uses
  %indvars.iv.next.i236.i.us.i = add nsw i64 %indvars.iv.i235.i.us.i, -1 ; 3 uses
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i236.i.us.i ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !43
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.sn, i64 %indvars.iv.next.i236.i.us.i
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !43
  %i.tw = xor i32 %i.tv, -1
  %i.tx = and i32 %i.tt, %i.tw
  store i32 %i.tx, ptr %i.ts, align 4, !tbaa !43
  %i.ty = icmp samesign ugt i64 %indvars.iv.i235.i.us.i, 1
  br i1 %i.ty, label %select.unfold.i234.i.us.i, label %Extra_TruthAnd.exit.i.us.i, !llvm.loop !114

Extra_TruthAnd.exit.i.us.i:                       ; preds = %select.unfold.i229.i.us.i, %select.unfold.i234.i.us.i, %middle.block520, %middle.block496
  %indvars.iv.next388.i.us.i = add nuw nsw i64 %indvars.iv387.i.us.i, 1 ; 2 uses
  %exitcond392.not.i.us.i = icmp eq i64 %indvars.iv.next388.i.us.i, %wide.trip.count391.i.i
  br i1 %exitcond392.not.i.us.i, label %select.unfold.i239.i.i.preheader, label %.lr.ph315.i.us.i, !llvm.loop !115

select.unfold.i239.i.i.preheader:                 ; preds = %Extra_TruthAnd.exit.i.us.i
  br i1 %min.iters.check459, label %select.unfold.i239.i.i.preheader608, label %vector.memcheck448

vector.memcheck448:                               ; preds = %select.unfold.i239.i.i.preheader
  %scevgep452 = getelementptr i8, ptr %i.se, i64 -4
  %scevgep453 = getelementptr i8, ptr %scevgep452, i64 %i.rl
  %scevgep454 = getelementptr i8, ptr %i.se, i64 %i.rm
  %bound0455 = icmp ult ptr %scevgep450, %scevgep454
  %bound1456 = icmp ult ptr %scevgep453, %scevgep451
  %found.conflict457 = and i1 %bound0455, %bound1456
  br i1 %found.conflict457, label %select.unfold.i239.i.i.preheader608, label %vector.body463

vector.body463:                                   ; preds = %vector.memcheck448, %vector.body463
  %index464 = phi i64 [ %index.next469, %vector.body463 ], [ 0, %vector.memcheck448 ] ; 2 uses
  %i.tz = xor i64 %index464, -1
  %i.ua = add i64 %i.tz, %i.rj                    ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ua ; 2 uses
  %i.uc = getelementptr inbounds i8, ptr %i.ub, i64 -12 ; 2 uses
  %i.ud = getelementptr inbounds i8, ptr %i.ub, i64 -28 ; 2 uses
  %wide.load465 = load <4 x i32>, ptr %i.uc, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  %wide.load466 = load <4 x i32>, ptr %i.ud, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.ua ; 2 uses
  %i.uf = getelementptr inbounds i8, ptr %i.ue, i64 -12
  %i.ug = getelementptr inbounds i8, ptr %i.ue, i64 -28
  %wide.load467 = load <4 x i32>, ptr %i.uf, align 4, !tbaa !43, !alias.scope !119
  %wide.load468 = load <4 x i32>, ptr %i.ug, align 4, !tbaa !43, !alias.scope !119
  %i.uh = or <4 x i32> %wide.load467, %wide.load465
  %i.ui = or <4 x i32> %wide.load468, %wide.load466
  store <4 x i32> %i.uh, ptr %i.uc, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  store <4 x i32> %i.ui, ptr %i.ud, align 4, !tbaa !43, !alias.scope !116, !noalias !119
  %index.next469 = add nuw i64 %index464, 8       ; 2 uses
  %i.uj = icmp eq i64 %index.next469, %n.vec462
  br i1 %i.uj, label %middle.block470, label %vector.body463, !llvm.loop !121

middle.block470:                                  ; preds = %vector.body463
  br i1 %cmp.n471, label %Extra_TruthOr.exit.i.i.loopexit, label %select.unfold.i239.i.i.preheader608

select.unfold.i239.i.i.preheader608:              ; preds = %vector.memcheck448, %select.unfold.i239.i.i.preheader, %middle.block470
  %indvars.iv.i240.i.i.ph = phi i64 [ %i.rj, %vector.memcheck448 ], [ %i.rj, %select.unfold.i239.i.i.preheader ], [ %i.rx, %middle.block470 ]
  br label %select.unfold.i239.i.i

select.unfold.i239.i.i:                           ; preds = %select.unfold.i239.i.i.preheader608, %select.unfold.i239.i.i
  %indvars.iv.i240.i.i = phi i64 [ %indvars.iv.next.i241.i.i, %select.unfold.i239.i.i ], [ %indvars.iv.i240.i.i.ph, %select.unfold.i239.i.i.preheader608 ] ; 2 uses
  %indvars.iv.next.i241.i.i = add nsw i64 %indvars.iv.i240.i.i, -1 ; 3 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.next.i241.i.i ; 2 uses
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !43
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %indvars.iv.next.i241.i.i
  %i.un = load i32, ptr %i.um, align 4, !tbaa !43
  %i.uo = or i32 %i.un, %i.ul
  store i32 %i.uo, ptr %i.uk, align 4, !tbaa !43
  %i.up = icmp samesign ugt i64 %indvars.iv.i240.i.i, 1
  br i1 %i.up, label %select.unfold.i239.i.i, label %Extra_TruthOr.exit.i.i.loopexit, !llvm.loop !122

Extra_TruthOr.exit.i.i.loopexit:                  ; preds = %select.unfold.i239.i.i, %middle.block470
  %indvars.iv.next394.i.i = add nuw nsw i64 %indvars.iv393.i.i, 1 ; 2 uses
  %exitcond397.not.i.i = icmp eq i64 %indvars.iv.next394.i.i, %wide.trip.count396.i.i
  br i1 %exitcond397.not.i.i, label %._crit_edge319.i.i, label %.lr.ph315.preheader.i.i, !llvm.loop !123

._crit_edge319.i.i:                               ; preds = %Extra_TruthOr.exit.i.i.loopexit, %.lr.ph318.i.i, %Extra_TruthClear.exit.i.i
  %i.uq = phi i1 [ false, %.lr.ph318.i.i ], [ %i.rh, %Extra_TruthClear.exit.i.i ], [ true, %Extra_TruthOr.exit.i.i.loopexit ] ; 2 uses
  %i.ur = load ptr, ptr %i.kq, align 8, !tbaa !42 ; 25 uses
  %i.us = icmp sgt i32 %i.rf, 0
  br i1 %i.us, label %.lr.ph336.i.i, label %.preheader.i.i

.lr.ph336.i.i:                                    ; preds = %._crit_edge319.i.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.kx, i64 256
  %wide.trip.count417.i.i = zext nneg i32 %i.rf to i64 ; 3 uses
  %wide.trip.count409.i.i = zext nneg i32 %.0176.lcssa451.i.i308 to i64 ; 3 uses
  %i.uu = icmp slt i32 %.fr, 6
  %i.uv = add nsw i32 %.fr, -5
  %i.uw = shl nuw i32 1, %i.uv
  %.fr298 = freeze i32 %i.uw
  %spec.select.i242.i.i = select i1 %i.uu, i32 1, i32 %.fr298 ; 6 uses
  %i.ux = icmp sgt i32 %spec.select.i242.i.i, 0   ; 4 uses
  %i.uy = zext i32 %spec.select.i242.i.i to i64   ; 10 uses
  %i.uz = shl nuw nsw i64 %i.uy, 2                ; 11 uses
  %i.va = icmp sgt i32 %.fr, 0                    ; 2 uses
  %i.vb = icmp sgt i32 %spec.select.i242.i.i, 0
  %i.vc = zext i32 %.fr to i64                    ; 2 uses
  %i.vd = zext nneg i32 %spec.select.i242.i.i to i64 ; 8 uses
  %scevgep = getelementptr i8, ptr %i.ur, i64 %i.uz
  %scevgep431 = getelementptr i8, ptr %i.ur, i64 4
  %min.iters.check396 = icmp ult i32 %spec.select.i242.i.i, 8 ; 2 uses
  %n.vec419 = and i64 %i.uy, 2147483640           ; 3 uses
  %4 = sub nsw i64 %i.vd, %n.vec419
  %cmp.n428 = icmp eq i64 %n.vec419, %i.uy
  %n.vec399 = and i64 %i.uy, 2147483640           ; 3 uses
  %5 = sub nsw i64 %i.vd, %n.vec399
  %cmp.n408 = icmp eq i64 %n.vec399, %i.uy
  %min.iters.check376 = icmp ult i32 %spec.select.i242.i.i, 8
  %n.vec379 = and i64 %i.uy, 2147483640           ; 2 uses
  %6 = and i64 %i.uy, 7
  %cmp.n388 = icmp eq i64 %n.vec379, %i.uy
  br label %bb.as

bb.as:                                            ; preds = %Abc_NodeGetLevel.exit.i.i, %.lr.ph336.i.i
  %indvars.iv414.i.i = phi i64 [ 0, %.lr.ph336.i.i ], [ %indvars.iv.next415.i.i, %Abc_NodeGetLevel.exit.i.i ] ; 3 uses
  br i1 %i.ux, label %select.unfold.preheader.i243.i.i, label %Extra_TruthClear.exit244.i.i

select.unfold.preheader.i243.i.i:                 ; preds = %bb.as
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ur, i8 0, i64 %i.uz, i1 false), !tbaa !43
  br label %Extra_TruthClear.exit244.i.i

Extra_TruthClear.exit244.i.i:                     ; preds = %select.unfold.preheader.i243.i.i, %bb.as
  br i1 %i.ri, label %.lr.ph327.i.i, label %._crit_edge328.i.i

.lr.ph327.i.i:                                    ; preds = %Extra_TruthClear.exit244.i.i
  %i.ve = trunc nuw nsw i64 %indvars.iv414.i.i to i32
  %i.vf = shl nuw i32 1, %i.ve                    ; 3 uses
  br i1 %i.va, label %.lr.ph327.i.i.split.us, label %.lr.ph327.i.i.split

.lr.ph327.i.i.split.us:                           ; preds = %.lr.ph327.i.i, %.loopexit.i.i.us
  %indvars.iv406.i.i.us = phi i64 [ %indvars.iv.next407.i.i.us, %.loopexit.i.i.us ], [ 0, %.lr.ph327.i.i ] ; 4 uses
  %i.vg = trunc nuw nsw i64 %indvars.iv406.i.i.us to i32
  %i.vh = and i32 %i.vf, %i.vg
  %.not.i86.i.us = icmp eq i32 %i.vh, 0
  br i1 %.not.i86.i.us, label %.loopexit.i.i.us, label %.preheader284.i.i.us

.preheader284.i.i.us:                             ; preds = %.lr.ph327.i.i.split.us
  %i.vi = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv406.i.i.us
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !97  ; 2 uses
  %i.vk = icmp sgt i8 %i.vj, 0
  br i1 %i.vk, label %.lr.ph325.i.i.us, label %.loopexit.i.i.us

.lr.ph325.i.i.us:                                 ; preds = %.preheader284.i.i.us
  %wide.trip.count404.i.i.us = zext nneg i8 %i.vj to i64
  %i.vl = load ptr, ptr %i.kr, align 8, !tbaa !42 ; 11 uses
  %i.vm = getelementptr inbounds nuw [64 x i8], ptr @Abc_NodeDecomposeStep.pCofClasses, i64 %indvars.iv406.i.i.us
  %i.vn = load ptr, ptr %i.ab, align 8, !tbaa !39
  br i1 %i.vb, label %.lr.ph325.i.i.split.us.us.split.us.preheader, label %.loopexit.i.i.us

.lr.ph325.i.i.split.us.us.split.us.preheader:     ; preds = %.lr.ph325.i.i.us
  %scevgep374 = getelementptr i8, ptr %i.vl, i64 %i.uz ; 3 uses
  %bound0 = icmp ult ptr %i.ur, %scevgep374
  %bound1 = icmp ult ptr %i.vl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.lr.ph325.i.i.split.us.us.split.us

.loopexit.i.i.us:                                 ; preds = %Extra_TruthOr.exit264.i.i.us.us.us, %.lr.ph325.i.i.us, %.preheader284.i.i.us, %.lr.ph327.i.i.split.us
  %indvars.iv.next407.i.i.us = add nuw nsw i64 %indvars.iv406.i.i.us, 1 ; 2 uses
  %exitcond410.not.i.i.us = icmp eq i64 %indvars.iv.next407.i.i.us, %wide.trip.count409.i.i
  br i1 %exitcond410.not.i.i.us, label %._crit_edge328.i.i, label %.lr.ph327.i.i.split.us, !llvm.loop !124

.lr.ph325.i.i.split.us.us.split.us:               ; preds = %.lr.ph325.i.i.split.us.us.split.us.preheader, %Extra_TruthOr.exit264.i.i.us.us.us
  %indvars.iv401.i.i.us.us.us = phi i64 [ %indvars.iv.next402.i.i.us.us.us, %Extra_TruthOr.exit264.i.i.us.us.us ], [ 0, %.lr.ph325.i.i.split.us.us.split.us.preheader ] ; 2 uses
  br i1 %i.ux, label %select.unfold.preheader.i246.i.i.us.us.us, label %Extra_TruthFill.exit.i.i.us.us.us

select.unfold.preheader.i246.i.i.us.us.us:        ; preds = %.lr.ph325.i.i.split.us.us.split.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.vl, i8 -1, i64 %i.uz, i1 false), !tbaa !43
  br label %Extra_TruthFill.exit.i.i.us.us.us

Extra_TruthFill.exit.i.i.us.us.us:                ; preds = %select.unfold.preheader.i246.i.i.us.us.us, %.lr.ph325.i.i.split.us.us.split.us
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 %indvars.iv401.i.i.us.us.us
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !97
  %i.vq = sext i8 %i.vp to i32
  br label %bb.at

select.unfold.i261.i.i.us.us.us:                  ; preds = %select.unfold.i261.i.i.us.us.us.preheader600, %select.unfold.i261.i.i.us.us.us
  %indvars.iv.i262.i.i.us.us.us = phi i64 [ %indvars.iv.next.i263.i.i.us.us.us, %select.unfold.i261.i.i.us.us.us ], [ %indvars.iv.i262.i.i.us.us.us.ph, %select.unfold.i261.i.i.us.us.us.preheader600 ] ; 2 uses
  %indvars.iv.next.i263.i.i.us.us.us = add nsw i64 %indvars.iv.i262.i.i.us.us.us, -1 ; 3 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %indvars.iv.next.i263.i.i.us.us.us ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !43
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv.next.i263.i.i.us.us.us
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !43
  %i.vv = or i32 %i.vu, %i.vs
  store i32 %i.vv, ptr %i.vr, align 4, !tbaa !43
  %i.vw = icmp samesign ugt i64 %indvars.iv.i262.i.i.us.us.us, 1
  br i1 %i.vw, label %select.unfold.i261.i.i.us.us.us, label %Extra_TruthOr.exit264.i.i.us.us.us, !llvm.loop !125

Extra_TruthOr.exit264.i.i.us.us.us:               ; preds = %select.unfold.i261.i.i.us.us.us, %middle.block387, %._crit_edge322.i.i.split.us.us.us.us
  %indvars.iv.next402.i.i.us.us.us = add nuw nsw i64 %indvars.iv401.i.i.us.us.us, 1 ; 2 uses
  %exitcond405.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next402.i.i.us.us.us, %wide.trip.count404.i.i.us
  br i1 %exitcond405.not.i.i.us.us.us, label %.loopexit.i.i.us, label %.lr.ph325.i.i.split.us.us.split.us, !llvm.loop !126

bb.at:                                            ; preds = %Extra_TruthAnd.exit252.i.i.us.us.us.us, %Extra_TruthFill.exit.i.i.us.us.us
  %indvars.iv398.i.i.us.us.us.us = phi i64 [ 0, %Extra_TruthFill.exit.i.i.us.us.us ], [ %indvars.iv.next399.i.i.us.us.us.us, %Extra_TruthAnd.exit252.i.i.us.us.us.us ] ; 3 uses
  %i.vx = trunc nuw nsw i64 %indvars.iv398.i.i.us.us.us.us to i32
  %i.vy = xor i32 %i.vx, -1
  %i.vz = add i32 %.fr, %i.vy
  %i.wa = shl nuw i32 1, %i.vz
  %i.wb = and i32 %i.wa, %i.vq
  %.not198.i.i.us.us.us.us = icmp eq i32 %i.wb, 0
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %indvars.iv398.i.i.us.us.us.us
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !42 ; 8 uses
  br i1 %.not198.i.i.us.us.us.us, label %select.unfold.i255.i.i.us.us.us.us.preheader, label %select.unfold.i249.i.i.us.us.us.us.preheader

select.unfold.i249.i.i.us.us.us.us.preheader:     ; preds = %bb.at
  br i1 %min.iters.check396, label %select.unfold.i249.i.i.us.us.us.us.preheader598, label %vector.memcheck410

vector.memcheck410:                               ; preds = %select.unfold.i249.i.i.us.us.us.us.preheader
  %scevgep411 = getelementptr i8, ptr %i.wd, i64 %i.uz
  %bound0412 = icmp ult ptr %i.vl, %scevgep411
  %bound1413 = icmp ult ptr %i.wd, %scevgep374
  %found.conflict414 = and i1 %bound0412, %bound1413
  br i1 %found.conflict414, label %select.unfold.i249.i.i.us.us.us.us.preheader598, label %vector.body420

vector.body420:                                   ; preds = %vector.memcheck410, %vector.body420
  %index421 = phi i64 [ %index.next426, %vector.body420 ], [ 0, %vector.memcheck410 ] ; 2 uses
  %i.we = xor i64 %index421, -1
  %i.wf = add i64 %i.we, %i.vd                    ; 2 uses
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds i8, ptr %i.wg, i64 -12 ; 2 uses
  %i.wi = getelementptr inbounds i8, ptr %i.wg, i64 -28 ; 2 uses
  %wide.load422 = load <4 x i32>, ptr %i.wh, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  %wide.load423 = load <4 x i32>, ptr %i.wi, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.wf ; 2 uses
  %i.wk = getelementptr inbounds i8, ptr %i.wj, i64 -12
  %i.wl = getelementptr inbounds i8, ptr %i.wj, i64 -28
  %wide.load424 = load <4 x i32>, ptr %i.wk, align 4, !tbaa !43, !alias.scope !130
  %wide.load425 = load <4 x i32>, ptr %i.wl, align 4, !tbaa !43, !alias.scope !130
  %i.wm = and <4 x i32> %wide.load424, %wide.load422
  %i.wn = and <4 x i32> %wide.load425, %wide.load423
  store <4 x i32> %i.wm, ptr %i.wh, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  store <4 x i32> %i.wn, ptr %i.wi, align 4, !tbaa !43, !alias.scope !127, !noalias !130
  %index.next426 = add nuw i64 %index421, 8       ; 2 uses
  %i.wo = icmp eq i64 %index.next426, %n.vec419
  br i1 %i.wo, label %middle.block427, label %vector.body420, !llvm.loop !132

middle.block427:                                  ; preds = %vector.body420
  br i1 %cmp.n428, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, label %select.unfold.i249.i.i.us.us.us.us.preheader598

select.unfold.i249.i.i.us.us.us.us.preheader598:  ; preds = %vector.memcheck410, %select.unfold.i249.i.i.us.us.us.us.preheader, %middle.block427
  %indvars.iv.i250.i.i.us.us.us.us.ph = phi i64 [ %i.vd, %vector.memcheck410 ], [ %i.vd, %select.unfold.i249.i.i.us.us.us.us.preheader ], [ %4, %middle.block427 ]
  br label %select.unfold.i249.i.i.us.us.us.us

select.unfold.i255.i.i.us.us.us.us.preheader:     ; preds = %bb.at
  br i1 %min.iters.check396, label %select.unfold.i255.i.i.us.us.us.us.preheader597, label %vector.memcheck390

vector.memcheck390:                               ; preds = %select.unfold.i255.i.i.us.us.us.us.preheader
  %scevgep391 = getelementptr i8, ptr %i.wd, i64 %i.uz
  %bound0392 = icmp ult ptr %i.vl, %scevgep391
  %bound1393 = icmp ult ptr %i.wd, %scevgep374
  %found.conflict394 = and i1 %bound0392, %bound1393
  br i1 %found.conflict394, label %select.unfold.i255.i.i.us.us.us.us.preheader597, label %vector.body400

vector.body400:                                   ; preds = %vector.memcheck390, %vector.body400
  %index401 = phi i64 [ %index.next406, %vector.body400 ], [ 0, %vector.memcheck390 ] ; 2 uses
  %i.wp = xor i64 %index401, -1
  %i.wq = add i64 %i.wp, %i.vd                    ; 2 uses
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.wq ; 2 uses
  %i.ws = getelementptr inbounds i8, ptr %i.wr, i64 -12 ; 2 uses
  %i.wt = getelementptr inbounds i8, ptr %i.wr, i64 -28 ; 2 uses
  %wide.load402 = load <4 x i32>, ptr %i.ws, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  %wide.load403 = load <4 x i32>, ptr %i.wt, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.wq ; 2 uses
  %i.wv = getelementptr inbounds i8, ptr %i.wu, i64 -12
  %i.ww = getelementptr inbounds i8, ptr %i.wu, i64 -28
  %wide.load404 = load <4 x i32>, ptr %i.wv, align 4, !tbaa !43, !alias.scope !136
  %wide.load405 = load <4 x i32>, ptr %i.ww, align 4, !tbaa !43, !alias.scope !136
  %i.wx = xor <4 x i32> %wide.load404, splat (i32 -1)
  %i.wy = xor <4 x i32> %wide.load405, splat (i32 -1)
  %i.wz = and <4 x i32> %wide.load402, %i.wx
  %i.xa = and <4 x i32> %wide.load403, %i.wy
  store <4 x i32> %i.wz, ptr %i.ws, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  store <4 x i32> %i.xa, ptr %i.wt, align 4, !tbaa !43, !alias.scope !133, !noalias !136
  %index.next406 = add nuw i64 %index401, 8       ; 2 uses
  %i.xb = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.xb, label %middle.block407, label %vector.body400, !llvm.loop !138

middle.block407:                                  ; preds = %vector.body400
  br i1 %cmp.n408, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, label %select.unfold.i255.i.i.us.us.us.us.preheader597

select.unfold.i255.i.i.us.us.us.us.preheader597:  ; preds = %vector.memcheck390, %select.unfold.i255.i.i.us.us.us.us.preheader, %middle.block407
  %indvars.iv.i256.i.i.us.us.us.us.ph = phi i64 [ %i.vd, %vector.memcheck390 ], [ %i.vd, %select.unfold.i255.i.i.us.us.us.us.preheader ], [ %5, %middle.block407 ]
  br label %select.unfold.i255.i.i.us.us.us.us

select.unfold.i249.i.i.us.us.us.us:               ; preds = %select.unfold.i249.i.i.us.us.us.us.preheader598, %select.unfold.i249.i.i.us.us.us.us
  %indvars.iv.i250.i.i.us.us.us.us = phi i64 [ %indvars.iv.next.i251.i.i.us.us.us.us, %select.unfold.i249.i.i.us.us.us.us ], [ %indvars.iv.i250.i.i.us.us.us.us.ph, %select.unfold.i249.i.i.us.us.us.us.preheader598 ] ; 2 uses
  %indvars.iv.next.i251.i.i.us.us.us.us = add nsw i64 %indvars.iv.i250.i.i.us.us.us.us, -1 ; 3 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv.next.i251.i.i.us.us.us.us ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !43
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %indvars.iv.next.i251.i.i.us.us.us.us
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !43
  %i.xg = and i32 %i.xf, %i.xd
  store i32 %i.xg, ptr %i.xc, align 4, !tbaa !43
  %i.xh = icmp samesign ugt i64 %indvars.iv.i250.i.i.us.us.us.us, 1
  br i1 %i.xh, label %select.unfold.i249.i.i.us.us.us.us, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, !llvm.loop !139

select.unfold.i255.i.i.us.us.us.us:               ; preds = %select.unfold.i255.i.i.us.us.us.us.preheader597, %select.unfold.i255.i.i.us.us.us.us
  %indvars.iv.i256.i.i.us.us.us.us = phi i64 [ %indvars.iv.next.i257.i.i.us.us.us.us, %select.unfold.i255.i.i.us.us.us.us ], [ %indvars.iv.i256.i.i.us.us.us.us.ph, %select.unfold.i255.i.i.us.us.us.us.preheader597 ] ; 2 uses
  %indvars.iv.next.i257.i.i.us.us.us.us = add nsw i64 %indvars.iv.i256.i.i.us.us.us.us, -1 ; 3 uses
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv.next.i257.i.i.us.us.us.us ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !43
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %indvars.iv.next.i257.i.i.us.us.us.us
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !43
  %i.xm = xor i32 %i.xl, -1
  %i.xn = and i32 %i.xj, %i.xm
  store i32 %i.xn, ptr %i.xi, align 4, !tbaa !43
  %i.xo = icmp samesign ugt i64 %indvars.iv.i256.i.i.us.us.us.us, 1
  br i1 %i.xo, label %select.unfold.i255.i.i.us.us.us.us, label %Extra_TruthAnd.exit252.i.i.us.us.us.us, !llvm.loop !140

Extra_TruthAnd.exit252.i.i.us.us.us.us:           ; preds = %select.unfold.i249.i.i.us.us.us.us, %select.unfold.i255.i.i.us.us.us.us, %middle.block427, %middle.block407
  %indvars.iv.next399.i.i.us.us.us.us = add nuw nsw i64 %indvars.iv398.i.i.us.us.us.us, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next399.i.i.us.us.us.us, %i.vc
  br i1 %exitcond240.not, label %._crit_edge322.i.i.split.us.us.us.us, label %bb.at, !llvm.loop !141

._crit_edge322.i.i.split.us.us.us.us:             ; preds = %Extra_TruthAnd.exit252.i.i.us.us.us.us
  br i1 %i.ux, label %select.unfold.i261.i.i.us.us.us.preheader, label %Extra_TruthOr.exit264.i.i.us.us.us

select.unfold.i261.i.i.us.us.us.preheader:        ; preds = %._crit_edge322.i.i.split.us.us.us.us
  %brmerge = select i1 %min.iters.check376, i1 true, i1 %found.conflict
  br i1 %brmerge, label %select.unfold.i261.i.i.us.us.us.preheader600, label %vector.body380

vector.body380:                                   ; preds = %select.unfold.i261.i.i.us.us.us.preheader, %vector.body380
  %index381 = phi i64 [ %index.next386, %vector.body380 ], [ 0, %select.unfold.i261.i.i.us.us.us.preheader ] ; 2 uses
  %i.xp = xor i64 %index381, -1
  %i.xq = add i64 %i.xp, %i.uy                    ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.ur, i64 %i.xq ; 2 uses
  %i.xs = getelementptr inbounds i8, ptr %i.xr, i64 -12 ; 2 uses
  %i.xt = getelementptr inbounds i8, ptr %i.xr, i64 -28 ; 2 uses
  %wide.load382 = load <4 x i32>, ptr %i.xs, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  %wide.load383 = load <4 x i32>, ptr %i.xt, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %i.xq ; 2 uses
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 -12
  %i.xw = getelementptr inbounds i8, ptr %i.xu, i64 -28
  %wide.load384 = load <4 x i32>, ptr %i.xv, align 4, !tbaa !43, !alias.scope !145
  %wide.load385 = load <4 x i32>, ptr %i.xw, align 4, !tbaa !43, !alias.scope !145
  %i.xx = or <4 x i32> %wide.load384, %wide.load382
  %i.xy = or <4 x i32> %wide.load385, %wide.load383
  store <4 x i32> %i.xx, ptr %i.xs, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  store <4 x i32> %i.xy, ptr %i.xt, align 4, !tbaa !43, !alias.scope !142, !noalias !145
  %index.next386 = add nuw i64 %index381, 8       ; 2 uses
  %i.xz = icmp eq i64 %index.next386, %n.vec379
  br i1 %i.xz, label %middle.block387, label %vector.body380, !llvm.loop !147

middle.block387:                                  ; preds = %vector.body380
  br i1 %cmp.n388, label %Extra_TruthOr.exit264.i.i.us.us.us, label %select.unfold.i261.i.i.us.us.us.preheader600

select.unfold.i261.i.i.us.us.us.preheader600:     ; preds = %select.unfold.i261.i.i.us.us.us.preheader, %middle.block387
  %indvars.iv.i262.i.i.us.us.us.ph = phi i64 [ %6, %middle.block387 ], [ %i.uy, %select.unfold.i261.i.i.us.us.us.preheader ]
  br label %select.unfold.i261.i.i.us.us.us

.lr.ph327.i.i.split:                              ; preds = %.lr.ph327.i.i
  br i1 %i.ux, label %.lr.ph327.i.i.split.split.us, label %.lr.ph327.i.i.split.split

.lr.ph327.i.i.split.split.us:                     ; preds = %.lr.ph327.i.i.split, %.loopexit.i.i.us189
  %indvars.iv406.i.i.us184 = phi i64 [ %indvars.iv.next407.i.i.us190, %.loopexit.i.i.us189 ], [ 0, %.lr.ph327.i.i.split ] ; 3 uses
  %i.ya = trunc nuw nsw i64 %indvars.iv406.i.i.us184 to i32
  %i.yb = and i32 %i.vf, %i.ya
  %.not.i86.i.us185 = icmp eq i32 %i.yb, 0
  br i1 %.not.i86.i.us185, label %.loopexit.i.i.us189, label %.preheader284.i.i.us186

.preheader284.i.i.us186:                          ; preds = %.lr.ph327.i.i.split.split.us
  %i.yc = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv406.i.i.us184
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !97  ; 3 uses
  %i.ye = icmp sgt i8 %i.yd, 0
  br i1 %i.ye, label %.lr.ph325.i.i.us187, label %.loopexit.i.i.us189

.lr.ph325.i.i.us187:                              ; preds = %.preheader284.i.i.us186
  %wide.trip.count404.i.i.us188 = zext nneg i8 %i.yd to i64 ; 2 uses
  %i.yf = load ptr, ptr %i.kr, align 8, !tbaa !42 ; 10 uses
  %xtraiter657 = and i64 %wide.trip.count404.i.i.us188, 3 ; 3 uses
  %i.yg = icmp ult i8 %i.yd, 4
  br i1 %i.yg, label %select.unfold.preheader.i246.i.i.us175.us.epil.preheader, label %.lr.ph325.i.i.us187.new

.lr.ph325.i.i.us187.new:                          ; preds = %.lr.ph325.i.i.us187
  %unroll_iter660 = and i64 %wide.trip.count404.i.i.us188, 124
  br label %select.unfold.preheader.i246.i.i.us175.us

.loopexit.i.i.us189.loopexit.unr-lcssa:           ; preds = %select.unfold.preheader.i246.i.i.us175.us
  %lcmp.mod658.not = icmp eq i64 %xtraiter657, 0
  br i1 %lcmp.mod658.not, label %.loopexit.i.i.us189, label %select.unfold.preheader.i246.i.i.us175.us.epil.preheader

select.unfold.preheader.i246.i.i.us175.us.epil.preheader: ; preds = %.loopexit.i.i.us189.loopexit.unr-lcssa, %.lr.ph325.i.i.us187
  %lcmp.mod659 = icmp ne i64 %xtraiter657, 0
  tail call void @llvm.assume(i1 %lcmp.mod659)
  br label %select.unfold.preheader.i246.i.i.us175.us.epil

select.unfold.preheader.i246.i.i.us175.us.epil:   ; preds = %select.unfold.preheader.i246.i.i.us175.us.epil, %select.unfold.preheader.i246.i.i.us175.us.epil.preheader
  %epil.iter = phi i64 [ 0, %select.unfold.preheader.i246.i.i.us175.us.epil.preheader ], [ %epil.iter.next, %select.unfold.preheader.i246.i.i.us175.us.epil ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yf, i8 -1, i64 %i.uz, i1 false), !tbaa !43
  %i.yh = load i32, ptr %i.ur, align 4, !tbaa !43
  %i.yi = load i32, ptr %i.yf, align 4, !tbaa !43
  %i.yj = or i32 %i.yi, %i.yh
  store i32 %i.yj, ptr %i.ur, align 4, !tbaa !43
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter657
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.us189, label %select.unfold.preheader.i246.i.i.us175.us.epil, !llvm.loop !148

.loopexit.i.i.us189:                              ; preds = %.loopexit.i.i.us189.loopexit.unr-lcssa, %select.unfold.preheader.i246.i.i.us175.us.epil, %.preheader284.i.i.us186, %.lr.ph327.i.i.split.split.us
  %indvars.iv.next407.i.i.us190 = add nuw nsw i64 %indvars.iv406.i.i.us184, 1 ; 2 uses
  %exitcond410.not.i.i.us191 = icmp eq i64 %indvars.iv.next407.i.i.us190, %wide.trip.count409.i.i
  br i1 %exitcond410.not.i.i.us191, label %._crit_edge328.i.i, label %.lr.ph327.i.i.split.split.us, !llvm.loop !124

select.unfold.preheader.i246.i.i.us175.us:        ; preds = %select.unfold.preheader.i246.i.i.us175.us, %.lr.ph325.i.i.us187.new
  %niter661 = phi i64 [ 0, %.lr.ph325.i.i.us187.new ], [ %niter661.next.3, %select.unfold.preheader.i246.i.i.us175.us ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yf, i8 -1, i64 %i.uz, i1 false), !tbaa !43
  %i.yk = load i32, ptr %i.ur, align 4, !tbaa !43
  %i.yl = load i32, ptr %i.yf, align 4, !tbaa !43
  %i.ym = or i32 %i.yl, %i.yk
  store i32 %i.ym, ptr %i.ur, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yf, i8 -1, i64 %i.uz, i1 false), !tbaa !43
  %i.yn = load i32, ptr %i.ur, align 4, !tbaa !43
  %i.yo = load i32, ptr %i.yf, align 4, !tbaa !43
  %i.yp = or i32 %i.yo, %i.yn
  store i32 %i.yp, ptr %i.ur, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yf, i8 -1, i64 %i.uz, i1 false), !tbaa !43
  %i.yq = load i32, ptr %i.ur, align 4, !tbaa !43
  %i.yr = load i32, ptr %i.yf, align 4, !tbaa !43
  %i.ys = or i32 %i.yr, %i.yq
  store i32 %i.ys, ptr %i.ur, align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.yf, i8 -1, i64 %i.uz, i1 false), !tbaa !43
  %i.yt = load i32, ptr %i.ur, align 4, !tbaa !43
  %i.yu = load i32, ptr %i.yf, align 4, !tbaa !43
  %i.yv = or i32 %i.yu, %i.yt
  store i32 %i.yv, ptr %i.ur, align 4, !tbaa !43
  %niter661.next.3 = add i64 %niter661, 4         ; 2 uses
  %niter661.ncmp.3 = icmp eq i64 %niter661.next.3, %unroll_iter660
  br i1 %niter661.ncmp.3, label %.loopexit.i.i.us189.loopexit.unr-lcssa, label %select.unfold.preheader.i246.i.i.us175.us, !llvm.loop !126

.lr.ph327.i.i.split.split:                        ; preds = %.lr.ph327.i.i.split, %.loopexit.i.i
  %indvars.iv406.i.i = phi i64 [ %indvars.iv.next407.i.i, %.loopexit.i.i ], [ 0, %.lr.ph327.i.i.split ] ; 3 uses
  %i.yw = trunc nuw nsw i64 %indvars.iv406.i.i to i32
  %i.yx = and i32 %i.vf, %i.yw
  %.not.i86.i = icmp eq i32 %i.yx, 0
  br i1 %.not.i86.i, label %.loopexit.i.i, label %.preheader284.i.i

.preheader284.i.i:                                ; preds = %.lr.ph327.i.i.split.split
  %i.yy = getelementptr inbounds nuw i8, ptr @Abc_NodeDecomposeStep.nCofClasses, i64 %indvars.iv406.i.i
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !97  ; 3 uses
  %i.za = icmp sgt i8 %i.yz, 0
  br i1 %i.za, label %.lr.ph325.i.i, label %.loopexit.i.i

.lr.ph325.i.i:                                    ; preds = %.preheader284.i.i
  %wide.trip.count404.i.i = zext nneg i8 %i.yz to i64 ; 5 uses
  %i.zb = load ptr, ptr %i.kr, align 8, !tbaa !42 ; 8 uses
  %.pre = load i32, ptr %i.ur, align 4, !tbaa !43 ; 3 uses
  %min.iters.check437 = icmp ult i8 %i.yz, 8
  br i1 %min.iters.check437, label %Extra_TruthFill.exit.i.i.preheader, label %vector.memcheck430

vector.memcheck430:                               ; preds = %.lr.ph325.i.i
  %scevgep432 = getelementptr i8, ptr %i.zb, i64 4
  %bound0433 = icmp ult ptr %i.ur, %scevgep432
  %bound1434 = icmp ult ptr %i.zb, %scevgep431
  %found.conflict435 = and i1 %bound0433, %bound1434
  br i1 %found.conflict435, label %Extra_TruthFill.exit.i.i.preheader, label %vector.ph438

vector.ph438:                                     ; preds = %vector.memcheck430
  %n.vec440 = and i64 %wide.trip.count404.i.i, 120 ; 3 uses
  %i.zc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.zd = load i32, ptr %i.zb, align 4, !tbaa !43, !alias.scope !149
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.zd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ze = or <4 x i32> %broadcast.splat, %i.zc
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph438
  %index442 = phi i64 [ 0, %vector.ph438 ], [ %index.next444, %vector.body441 ]
  %index.next444 = add nuw i64 %index442, 8       ; 2 uses
  %i.zf = icmp eq i64 %index.next444, %n.vec440
  br i1 %i.zf, label %middle.block445, label %vector.body441, !llvm.loop !152

middle.block445:                                  ; preds = %vector.body441
  %i.zg = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ze) ; 2 uses
  store i32 %i.zg, ptr %i.ur, align 4, !tbaa !43, !alias.scope !153, !noalias !149
  %cmp.n446 = icmp eq i64 %n.vec440, %wide.trip.count404.i.i
  br i1 %cmp.n446, label %.loopexit.i.i, label %Extra_TruthFill.exit.i.i.preheader

Extra_TruthFill.exit.i.i.preheader:               ; preds = %vector.memcheck430, %.lr.ph325.i.i, %middle.block445
  %.ph = phi i32 [ %.pre, %vector.memcheck430 ], [ %.pre, %.lr.ph325.i.i ], [ %i.zg, %middle.block445 ] ; 2 uses
  %indvars.iv401.i.i.ph = phi i64 [ 0, %vector.memcheck430 ], [ 0, %.lr.ph325.i.i ], [ %n.vec440, %middle.block445 ] ; 3 uses
  %xtraiter654 = and i64 %wide.trip.count404.i.i, 3 ; 2 uses
  %lcmp.mod655.not = icmp eq i64 %xtraiter654, 0
  br i1 %lcmp.mod655.not, label %Extra_TruthFill.exit.i.i.prol.loopexit, label %Extra_TruthFill.exit.i.i.prol

Extra_TruthFill.exit.i.i.prol:                    ; preds = %Extra_TruthFill.exit.i.i.preheader, %Extra_TruthFill.exit.i.i.prol
  %i.zh = phi i32 [ %i.zj, %Extra_TruthFill.exit.i.i.prol ], [ %.ph, %Extra_TruthFill.exit.i.i.preheader ]
  %indvars.iv401.i.i.prol = phi i64 [ %indvars.iv.next402.i.i.prol, %Extra_TruthFill.exit.i.i.prol ], [ %indvars.iv401.i.i.ph, %Extra_TruthFill.exit.i.i.preheader ]
  %prol.iter656 = phi i64 [ %prol.iter656.next, %Extra_TruthFill.exit.i.i.prol ], [ 0, %Extra_TruthFill.exit.i.i.preheader ]
  %i.zi = load i32, ptr %i.zb, align 4, !tbaa !43
  %i.zj = or i32 %i.zi, %i.zh                     ; 3 uses
  store i32 %i.zj, ptr %i.ur, align 4, !tbaa !43
  %indvars.iv.next402.i.i.prol = add nuw nsw i64 %indvars.iv401.i.i.prol, 1 ; 2 uses
  %prol.iter656.next = add i64 %prol.iter656, 1   ; 2 uses
  %prol.iter656.cmp.not = icmp eq i64 %prol.iter656.next, %xtraiter654
  br i1 %prol.iter656.cmp.not, label %Extra_TruthFill.exit.i.i.prol.loopexit, label %Extra_TruthFill.exit.i.i.prol, !llvm.loop !155

Extra_TruthFill.exit.i.i.prol.loopexit:           ; preds = %Extra_TruthFill.exit.i.i.prol, %Extra_TruthFill.exit.i.i.preheader
  %.unr = phi i32 [ %.ph, %Extra_TruthFill.exit.i.i.preheader ], [ %i.zj, %Extra_TruthFill.exit.i.i.prol ]
  %indvars.iv401.i.i.unr = phi i64 [ %indvars.iv401.i.i.ph, %Extra_TruthFill.exit.i.i.preheader ], [ %indvars.iv.next402.i.i.prol, %Extra_TruthFill.exit.i.i.prol ]
  %i.zk = sub nsw i64 %indvars.iv401.i.i.ph, %wide.trip.count404.i.i
  %i.zl = icmp ugt i64 %i.zk, -4
  br i1 %i.zl, label %.loopexit.i.i, label %Extra_TruthFill.exit.i.i

Extra_TruthFill.exit.i.i:                         ; preds = %Extra_TruthFill.exit.i.i.prol.loopexit, %Extra_TruthFill.exit.i.i
  %i.zm = phi i32 [ %i.zu, %Extra_TruthFill.exit.i.i ], [ %.unr, %Extra_TruthFill.exit.i.i.prol.loopexit ]
  %indvars.iv401.i.i = phi i64 [ %indvars.iv.next402.i.i.3, %Extra_TruthFill.exit.i.i ], [ %indvars.iv401.i.i.unr, %Extra_TruthFill.exit.i.i.prol.loopexit ]
  %i.zn = load i32, ptr %i.zb, align 4, !tbaa !43
  %i.zo = or i32 %i.zn, %i.zm                     ; 2 uses
  store i32 %i.zo, ptr %i.ur, align 4, !tbaa !43
  %i.zp = load i32, ptr %i.zb, align 4, !tbaa !43
  %i.zq = or i32 %i.zp, %i.zo                     ; 2 uses
  store i32 %i.zq, ptr %i.ur, align 4, !tbaa !43
  %i.zr = load i32, ptr %i.zb, align 4, !tbaa !43
  %i.zs = or i32 %i.zr, %i.zq                     ; 2 uses
  store i32 %i.zs, ptr %i.ur, align 4, !tbaa !43
  %i.zt = load i32, ptr %i.zb, align 4, !tbaa !43
  %i.zu = or i32 %i.zt, %i.zs                     ; 2 uses
  store i32 %i.zu, ptr %i.ur, align 4, !tbaa !43
  %indvars.iv.next402.i.i.3 = add nuw nsw i64 %indvars.iv401.i.i, 4 ; 2 uses
  %exitcond405.not.i.i.3 = icmp eq i64 %indvars.iv.next402.i.i.3, %wide.trip.count404.i.i
  br i1 %exitcond405.not.i.i.3, label %.loopexit.i.i, label %Extra_TruthFill.exit.i.i, !llvm.loop !156

.loopexit.i.i:                                    ; preds = %Extra_TruthFill.exit.i.i.prol.loopexit, %Extra_TruthFill.exit.i.i, %middle.block445, %.preheader284.i.i, %.lr.ph327.i.i.split.split
  %indvars.iv.next407.i.i = add nuw nsw i64 %indvars.iv406.i.i, 1 ; 2 uses
  %exitcond410.not.i.i = icmp eq i64 %indvars.iv.next407.i.i, %wide.trip.count409.i.i
  br i1 %exitcond410.not.i.i, label %._crit_edge328.i.i, label %.lr.ph327.i.i.split.split, !llvm.loop !124

._crit_edge328.i.i:                               ; preds = %.loopexit.i.i, %.loopexit.i.i.us189, %.loopexit.i.i.us, %Extra_TruthClear.exit244.i.i
  %i.zv = tail call ptr @Abc_NtkCreateObj(ptr noundef %i.kx, i32 noundef 7) #18 ; 7 uses
  br i1 %i.va, label %.lr.ph331.i.i, label %._crit_edge332.i.i

.lr.ph331.i.i:                                    ; preds = %._crit_edge328.i.i, %.lr.ph331.i.i
  %indvars.iv411.i.i = phi i64 [ %indvars.iv.next412.i.i, %.lr.ph331.i.i ], [ 0, %._crit_edge328.i.i ] ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv411.i.i
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !43
  %.val204.i.i = load ptr, ptr %i.kp, align 8, !tbaa !29
  %i.zy = sext i32 %i.zx to i64
  %i.zz = getelementptr inbounds [8 x i8], ptr %.val204.i.i, i64 %i.zy
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !30
  tail call void @Abc_ObjAddFanin(ptr noundef %i.zv, ptr noundef %i.aaa) #18
  %indvars.iv.next412.i.i = add nuw nsw i64 %indvars.iv411.i.i, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next412.i.i, %i.vc
  br i1 %exitcond241.not, label %._crit_edge332.i.i, label %.lr.ph331.i.i, !llvm.loop !157

._crit_edge332.i.i:                               ; preds = %.lr.ph331.i.i, %._crit_edge328.i.i
  %i.aab = load ptr, ptr %i.ut, align 8, !tbaa !158
  %i.aac = tail call ptr @Abc_SopCreateFromTruth(ptr noundef %i.aab, i32 noundef %.fr, ptr noundef %i.ur) #18
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zv, i64 64
  store ptr %i.aac, ptr %i.aad, align 8, !tbaa !97
end_hunk_0
