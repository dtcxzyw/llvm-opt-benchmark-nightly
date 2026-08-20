inline.NumInlined: 318
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_PyCfg_OptimizeCodeUnit:bb.a
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.apb = getelementptr [4 x i8], ptr %i.aoy, i64 %index ; 2 uses
  %i.apc = getelementptr i8, ptr %i.apb, i64 16
  store <4 x i32> %vec.ind, ptr %i.apb, align 4, !tbaa !7
  store <4 x i32> %step.add, ptr %i.apc, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.apd = icmp eq i64 %index.next, %n.vec
  br i1 %i.apd, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count33.i.i.i
  br i1 %cmp.n, label %.preheader6.i.i.i, label %.lr.ph20.i.i.i.preheader

.lr.ph20.i.i.i.preheader:                         ; preds = %.lr.ph20.preheader.i.i.i, %middle.block
  %indvars.iv30.i.i.i.ph = phi i64 [ 0, %.lr.ph20.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph20.i.i.i

.preheader6.i.i.i:                                ; preds = %.lr.ph20.i.i.i, %middle.block, %.preheader7.i.i.i
  %i.ape = icmp sgt i32 %.lcssa.ph.i.i.i, 0
  br i1 %i.ape, label %.lr.ph22.preheader.i.i.i, label %.preheader5.i.i.i

.lr.ph22.preheader.i.i.i:                         ; preds = %.preheader6.i.i.i
  %wide.trip.count38.i.i.i = zext nneg i32 %.lcssa.ph.i.i.i to i64
  br label %.lr.ph22.i.i.i

.lr.ph20.i.i.i:                                   ; preds = %.lr.ph20.i.i.i.preheader, %.lr.ph20.i.i.i
  %indvars.iv30.i.i.i = phi i64 [ %indvars.iv.next31.i.i.i, %.lr.ph20.i.i.i ], [ %indvars.iv30.i.i.i.ph, %.lr.ph20.i.i.i.preheader ] ; 3 uses
  %i.apf = getelementptr [4 x i8], ptr %i.aoy, i64 %indvars.iv30.i.i.i
  %i.apg = trunc nuw nsw i64 %indvars.iv30.i.i.i to i32
  store i32 %i.apg, ptr %i.apf, align 4, !tbaa !7
  %indvars.iv.next31.i.i.i = add nuw nsw i64 %indvars.iv30.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i = icmp eq i64 %indvars.iv.next31.i.i.i, %wide.trip.count33.i.i.i
  br i1 %exitcond34.not.i.i.i, label %.preheader6.i.i.i, label %.lr.ph20.i.i.i, !llvm.loop !96

.preheader5.i.i.i:                                ; preds = %bb.jl, %.preheader6.i.i.i
  br i1 %i.apa, label %.lr.ph25.preheader.i.i.i, label %.preheader.i367.i.i

.lr.ph25.preheader.i.i.i:                         ; preds = %.preheader5.i.i.i
  %wide.trip.count43.i.i.i = zext nneg i32 %.076.lcssa.ph.i.i.i to i64
  br label %.lr.ph25.i.i.i

.lr.ph22.i.i.i:                                   ; preds = %bb.jl, %.lr.ph22.preheader.i.i.i
  %indvars.iv35.i.i.i = phi i64 [ 0, %.lr.ph22.preheader.i.i.i ], [ %indvars.iv.next36.i.i.i, %bb.jl ] ; 2 uses
  %i.aph = getelementptr [40 x i8], ptr %i.aoh, i64 %indvars.iv35.i.i.i ; 2 uses
  %i.api = load i32, ptr %i.aph, align 8, !tbaa !29
  %i.apj = icmp eq i32 %i.api, 117
  br i1 %i.apj, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.lr.ph22.i.i.i
  %i.apk = getelementptr i8, ptr %i.aph, i64 4
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !43
  %i.apm = load i32, ptr %i.aoy, align 4, !tbaa !7
  %i.apn = add i32 %i.apl, -1
  %i.apo = sext i32 %i.apn to i64
  %i.app = getelementptr [4 x i8], ptr %i.aoy, i64 %i.apo ; 2 uses
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !7
  store i32 %i.apq, ptr %i.aoy, align 4, !tbaa !7
  store i32 %i.apm, ptr %i.app, align 4, !tbaa !7
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %.lr.ph22.i.i.i
  %indvars.iv.next36.i.i.i = add nuw nsw i64 %indvars.iv35.i.i.i, 1 ; 2 uses
  %exitcond39.not.i.i.i = icmp eq i64 %indvars.iv.next36.i.i.i, %wide.trip.count38.i.i.i
  br i1 %exitcond39.not.i.i.i, label %.preheader5.i.i.i, label %.lr.ph22.i.i.i, !llvm.loop !97

.preheader.i367.i.i:                              ; preds = %.loopexit.i371.i.i, %.preheader5.i.i.i
  %.074.lcssa.i.i.i = phi i32 [ %.080.lcssa.ph.i.i.i, %.preheader5.i.i.i ], [ %.3.i372.i.i, %.loopexit.i371.i.i ] ; 3 uses
  %i.apr = icmp sgt i32 %.074.lcssa.i.i.i, -1
  br i1 %i.apr, label %.lr.ph28.preheader.i.i.i, label %._crit_edge.i368.i.i

.lr.ph28.preheader.i.i.i:                         ; preds = %.preheader.i367.i.i
  %i.aps = zext nneg i32 %.074.lcssa.i.i.i to i64 ; 3 uses
  %i.apt = add nuw nsw i64 %i.aps, 1
  %xtraiter649 = and i64 %i.apt, 3                ; 2 uses
  %lcmp.mod650.not = icmp eq i64 %xtraiter649, 0
  br i1 %lcmp.mod650.not, label %.lr.ph28.i.i.i.prol.loopexit, label %.lr.ph28.i.i.i.prol

.lr.ph28.i.i.i.prol:                              ; preds = %.lr.ph28.preheader.i.i.i, %.lr.ph28.i.i.i.prol
  %indvars.iv45.i.i.i.prol = phi i64 [ %indvars.iv.next46.i.i.i.prol, %.lr.ph28.i.i.i.prol ], [ %i.aps, %.lr.ph28.preheader.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph28.i.i.i.prol ], [ 0, %.lr.ph28.preheader.i.i.i ]
  %indvars.iv.next46.i.i.i.prol = add nsw i64 %indvars.iv45.i.i.i.prol, -1 ; 2 uses
  %i.apu = getelementptr [40 x i8], ptr %i.aoh, i64 %indvars.iv45.i.i.i.prol ; 2 uses
  store i32 27, ptr %i.apu, align 8, !tbaa !29
  %i.apv = getelementptr i8, ptr %i.apu, i64 4
  store i32 0, ptr %i.apv, align 4, !tbaa !43
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter649
  br i1 %prol.iter.cmp.not, label %.lr.ph28.i.i.i.prol.loopexit, label %.lr.ph28.i.i.i.prol, !llvm.loop !98

.lr.ph28.i.i.i.prol.loopexit:                     ; preds = %.lr.ph28.i.i.i.prol, %.lr.ph28.preheader.i.i.i
  %indvars.iv45.i.i.i.unr = phi i64 [ %i.aps, %.lr.ph28.preheader.i.i.i ], [ %indvars.iv.next46.i.i.i.prol, %.lr.ph28.i.i.i.prol ]
  %i.apw = icmp ult i32 %.074.lcssa.i.i.i, 3
  br i1 %i.apw, label %._crit_edge.i368.i.i, label %.lr.ph28.i.i.i

.lr.ph25.i.i.i:                                   ; preds = %.loopexit.i371.i.i, %.lr.ph25.preheader.i.i.i
  %indvars.iv40.i.i.i = phi i64 [ 0, %.lr.ph25.preheader.i.i.i ], [ %indvars.iv.next41.i.i.i, %.loopexit.i371.i.i ] ; 4 uses
  %.07423.i.i.i = phi i32 [ %.080.lcssa.ph.i.i.i, %.lr.ph25.preheader.i.i.i ], [ %.3.i372.i.i, %.loopexit.i371.i.i ] ; 2 uses
  %i.apx = getelementptr [4 x i8], ptr %i.aoy, i64 %indvars.iv40.i.i.i
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !7 ; 2 uses
  %i.apz = icmp eq i32 %i.apy, -1
  %i.aqa = zext i32 %i.apy to i64
  %i.aqb = icmp eq i64 %indvars.iv40.i.i.i, %i.aqa
  %or.cond.i370.i.i = or i1 %i.apz, %i.aqb
  br i1 %or.cond.i370.i.i, label %.loopexit.i371.i.i, label %.preheader4.preheader.i.i.i

.preheader4.preheader.i.i.i:                      ; preds = %.lr.ph25.i.i.i
  %i.aqc = trunc nuw nsw i64 %indvars.iv40.i.i.i to i32
  br label %.preheader4.i.i.i

.preheader4.i.i.i:                                ; preds = %bb.jo, %.preheader4.preheader.i.i.i
  %.175.i.i.i = phi i32 [ %.2.i.i.i, %bb.jo ], [ %.07423.i.i.i, %.preheader4.preheader.i.i.i ] ; 3 uses
  %.072.i.i.i = phi i32 [ %i.aqk, %bb.jo ], [ %i.aqc, %.preheader4.preheader.i.i.i ] ; 3 uses
  %.not95.i.i.i = icmp eq i32 %.072.i.i.i, 0
  br i1 %.not95.i.i.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %.preheader4.i.i.i
  %i.aqd = sext i32 %.175.i.i.i to i64
  %i.aqe = getelementptr [40 x i8], ptr %i.aoh, i64 %i.aqd ; 2 uses
  store i32 117, ptr %i.aqe, align 8, !tbaa !29
  %i.aqf = add i32 %.072.i.i.i, 1
  %i.aqg = add i32 %.175.i.i.i, -1
  %i.aqh = getelementptr i8, ptr %i.aqe, i64 4
  store i32 %i.aqf, ptr %i.aqh, align 4, !tbaa !43
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %.preheader4.i.i.i
  %.2.i.i.i = phi i32 [ %i.aqg, %bb.jm ], [ %.175.i.i.i, %.preheader4.i.i.i ] ; 2 uses
  %i.aqi = sext i32 %.072.i.i.i to i64
  %i.aqj = getelementptr [4 x i8], ptr %i.aoy, i64 %i.aqi ; 2 uses
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !7 ; 2 uses
  %i.aql = icmp eq i32 %i.aqk, -1
  br i1 %i.aql, label %.loopexit.i371.i.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  store i32 -1, ptr %i.aqj, align 4, !tbaa !7
  br label %.preheader4.i.i.i

.loopexit.i371.i.i:                               ; preds = %bb.jn, %.lr.ph25.i.i.i
  %.3.i372.i.i = phi i32 [ %.07423.i.i.i, %.lr.ph25.i.i.i ], [ %.2.i.i.i, %bb.jn ] ; 2 uses
  %indvars.iv.next41.i.i.i = add nuw nsw i64 %indvars.iv40.i.i.i, 1 ; 2 uses
  %exitcond44.not.i.i.i = icmp eq i64 %indvars.iv.next41.i.i.i, %wide.trip.count43.i.i.i
  br i1 %exitcond44.not.i.i.i, label %.preheader.i367.i.i, label %.lr.ph25.i.i.i, !llvm.loop !99

.lr.ph28.i.i.i:                                   ; preds = %.lr.ph28.i.i.i.prol.loopexit, %.lr.ph28.i.i.i
  %indvars.iv45.i.i.i = phi i64 [ %indvars.iv.next46.i.i.i.3, %.lr.ph28.i.i.i ], [ %indvars.iv45.i.i.i.unr, %.lr.ph28.i.i.i.prol.loopexit ] ; 5 uses
  %i.aqm = getelementptr [40 x i8], ptr %i.aoh, i64 %indvars.iv45.i.i.i ; 2 uses
  store i32 27, ptr %i.aqm, align 8, !tbaa !29
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 4
  store i32 0, ptr %i.aqn, align 4, !tbaa !43
  %i.aqo = getelementptr [40 x i8], ptr %i.aoh, i64 %indvars.iv45.i.i.i ; 2 uses
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 -40
  store i32 27, ptr %i.aqp, align 8, !tbaa !29
  %i.aqq = getelementptr i8, ptr %i.aqo, i64 -36
  store i32 0, ptr %i.aqq, align 4, !tbaa !43
  %indvars.iv.next46.i.i.i.2 = add nsw i64 %indvars.iv45.i.i.i, -3 ; 2 uses
  %i.aqr = getelementptr [40 x i8], ptr %i.aoh, i64 %indvars.iv45.i.i.i ; 2 uses
  %i.aqs = getelementptr i8, ptr %i.aqr, i64 -80
  store i32 27, ptr %i.aqs, align 8, !tbaa !29
  %i.aqt = getelementptr i8, ptr %i.aqr, i64 -76
  store i32 0, ptr %i.aqt, align 4, !tbaa !43
  %indvars.iv.next46.i.i.i.3 = add nsw i64 %indvars.iv45.i.i.i, -4
  %i.aqu = getelementptr [40 x i8], ptr %i.aoh, i64 %indvars.iv.next46.i.i.i.2 ; 2 uses
  store i32 27, ptr %i.aqu, align 8, !tbaa !29
  %i.aqv = getelementptr i8, ptr %i.aqu, i64 4
  store i32 0, ptr %i.aqv, align 4, !tbaa !43
  %.not.i369.i.i.3 = icmp eq i64 %indvars.iv.next46.i.i.i.2, 0
  br i1 %.not.i369.i.i.3, label %._crit_edge.i368.i.i, label %.lr.ph28.i.i.i, !llvm.loop !100

._crit_edge.i368.i.i:                             ; preds = %.lr.ph28.i.i.i.prol.loopexit, %.lr.ph28.i.i.i, %.preheader.i367.i.i
  call void @PyMem_Free(ptr noundef nonnull %i.aoy) #8
  %i.aqw = add i32 %.080.lcssa.ph.i.i.i, %storemerge472.i.i
  br label %bb.jp

bb.jp:                                            ; preds = %._crit_edge.i368.i.i, %.thread.i.i30.i, %bb.jg
  %.1.ph.i.i = phi i32 [ %storemerge472.i.i, %bb.jg ], [ %i.aqw, %._crit_edge.i368.i.i ], [ %storemerge472.i.i, %.thread.i.i30.i ] ; 21 uses
  %i.aqx = icmp sgt i32 %.1.ph.i.i, -1
  br i1 %i.aqx, label %.lr.ph118.i.i.i, label %.critedge.i.i

.lr.ph118.i.i.i:                                  ; preds = %bb.jp
  %i.aqy = add nuw i32 %.1.ph.i.i, 2
  %i.aqz = zext nneg i32 %.1.ph.i.i to i64
  br label %bb.jq

bb.jq:                                            ; preds = %bb.kb, %.lr.ph118.i.i.i
  %indvars.iv143.i.i.i = phi i64 [ %i.aqz, %.lr.ph118.i.i.i ], [ %indvars.iv.next144.i.i.i, %bb.kb ] ; 4 uses
  %indvars.iv.i373.i.i = phi i32 [ %i.aqy, %.lr.ph118.i.i.i ], [ %indvars.iv.next.i374.i.i, %bb.kb ] ; 2 uses
  %i.ara = load ptr, ptr %i.kp, align 8, !tbaa !23 ; 7 uses
  %i.arb = getelementptr [40 x i8], ptr %i.ara, i64 %indvars.iv143.i.i.i ; 3 uses
  %i.arc = load i32, ptr %i.arb, align 8, !tbaa !29
  switch i32 %i.arc, label %.critedge.i.i [
    i32 117, label %bb.jr
    i32 27, label %bb.kb
    i32 112, label %bb.kb
    i32 266, label %bb.kb
    i32 31, label %bb.kb
  ]

bb.jr:                                            ; preds = %bb.jq
  %i.ard = load i32, ptr %i.kn, align 8, !tbaa !28 ; 6 uses
  %indvars.iv.next.i.i376.i.i545 = add nuw nsw i64 %indvars.iv143.i.i.i, 1 ; 2 uses
  %indvars.i.i.i.i546 = trunc i64 %indvars.iv.next.i.i376.i.i545 to i32 ; 2 uses
  %17 = icmp sgt i32 %i.ard, %indvars.i.i.i.i546
  br i1 %17, label %.lr.ph, label %.critedge.i.i

.split.i.i.i.i:                                   ; preds = %.lr.ph
  %indvars.iv.next138.i.i.i = add i32 %indvars.iv137.i.i.i564, 1
  %indvars.iv.next.i.i376.i.i = add nuw nsw i64 %indvars.iv.next.i.i376.i.i548, 1 ; 2 uses
  %indvars.i.i.i.i = trunc i64 %indvars.iv.next.i.i376.i.i to i32 ; 2 uses
  %18 = icmp sgt i32 %i.ard, %indvars.i.i.i.i
  br i1 %18, label %.lr.ph, label %.critedge.i.i

.lr.ph:                                           ; preds = %bb.jr, %.split.i.i.i.i
  %i.are = phi i32 [ %indvars.i.i.i.i, %.split.i.i.i.i ], [ %indvars.i.i.i.i546, %bb.jr ] ; 6 uses
  %indvars.iv.next.i.i376.i.i548 = phi i64 [ %indvars.iv.next.i.i376.i.i, %.split.i.i.i.i ], [ %indvars.iv.next.i.i376.i.i545, %bb.jr ] ; 3 uses
  %indvars.iv137.i.i.i564 = phi i32 [ %indvars.iv.next138.i.i.i, %.split.i.i.i.i ], [ %indvars.iv.i373.i.i, %bb.jr ] ; 2 uses
  %sext.i.i.i.i = shl i64 %indvars.iv.next.i.i376.i.i548, 32
  %19 = ashr exact i64 %sext.i.i.i.i, 32
  %i.arf = getelementptr [40 x i8], ptr %i.ara, i64 %19
  %i.arg = load i32, ptr %i.arf, align 8, !tbaa !29
  switch i32 %i.arg, label %.critedge.i.i [
    i32 27, label %.split.i.i.i.i
    i32 112, label %next_swappable_instruction.exit.i.i.i
    i32 266, label %next_swappable_instruction.exit.i.i.i
    i32 31, label %next_swappable_instruction.exit.i.i.i
  ]

next_swappable_instruction.exit.i.i.i:            ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.arh = icmp slt i32 %i.are, 0
  br i1 %i.arh, label %.critedge.i.i, label %bb.js

bb.js:                                            ; preds = %next_swappable_instruction.exit.i.i.i
  %20 = and i64 %indvars.iv.next.i.i376.i.i548, 2147483647
  %i.ari = getelementptr [40 x i8], ptr %i.ara, i64 %20 ; 5 uses
  %i.arj = getelementptr i8, ptr %i.ari, i64 8
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !52
  %.fr121.i.i.i = freeze i32 %i.ark               ; 2 uses
  %i.arl = getelementptr i8, ptr %i.arb, i64 4    ; 2 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !43
  %i.arn = icmp sgt i32 %.fr121.i.i.i, -1
  %.071.us.i.i.i573 = add i32 %i.arm, -1          ; 3 uses
  %i.aro = icmp slt i32 %.071.us.i.i.i573, 1      ; 2 uses
  br i1 %i.arn, label %.split.us.i.i.i.preheader, label %.split.i.i29.i.preheader

.split.i.i29.i.preheader:                         ; preds = %bb.js
  br i1 %i.aro, label %.thread.i376.i.i, label %.split.i87.i.i.i.preheader

.split.us.i.i.i.preheader:                        ; preds = %bb.js
  br i1 %i.aro, label %.thread.i376.i.i, label %.split.us.i.us.i.i.i.preheader

.split.us.i.i.i:                                  ; preds = %next_swappable_instruction.exit91.loopexit.us.i.i.i
  %.071.us.i.i.i = add nsw i32 %.071.us.i.i.i575, -1
  %i.arp = icmp slt i32 %.071.us.i.i.i575, 2
  br i1 %i.arp, label %.thread.i376.i.i, label %.split.us.i.us.i.i.i.preheader, !llvm.loop !101

.split.us.i.us.i.i.i.preheader:                   ; preds = %.split.us.i.i.i.preheader, %.split.us.i.i.i
  %.071.us.i.i.i575 = phi i32 [ %.071.us.i.i.i, %.split.us.i.i.i ], [ %.071.us.i.i.i573, %.split.us.i.i.i.preheader ] ; 2 uses
  %.072.us.i.i.i574 = phi i32 [ %i.arq, %.split.us.i.i.i ], [ %i.are, %.split.us.i.i.i.preheader ]
  %21 = zext nneg i32 %.072.us.i.i.i574 to i64
  %indvars.iv.next.i31.i559 = add nuw nsw i64 %21, 1 ; 2 uses
  %indvars.i.i560 = trunc nuw i64 %indvars.iv.next.i31.i559 to i32 ; 2 uses
  %22 = icmp sgt i32 %i.ard, %indvars.i.i560
  br i1 %22, label %.lr.ph571, label %.critedge.i.i

.split.us.i.us.i.i.i:                             ; preds = %bb.jt
  %indvars.iv.next.i31.i = add nuw nsw i64 %indvars.iv.next.i31.i561, 1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i31.i to i32 ; 2 uses
  %23 = icmp sgt i32 %i.ard, %indvars.i.i
  br i1 %23, label %.lr.ph571, label %.critedge.i.i

.lr.ph571:                                        ; preds = %.split.us.i.us.i.i.i.preheader, %.split.us.i.us.i.i.i
  %i.arq = phi i32 [ %indvars.i.i, %.split.us.i.us.i.i.i ], [ %indvars.i.i560, %.split.us.i.us.i.i.i.preheader ] ; 3 uses
  %indvars.iv.next.i31.i561 = phi i64 [ %indvars.iv.next.i31.i, %.split.us.i.us.i.i.i ], [ %indvars.iv.next.i31.i559, %.split.us.i.us.i.i.i.preheader ] ; 2 uses
  %sext.i.i = shl i64 %indvars.iv.next.i31.i561, 32
  %24 = ashr exact i64 %sext.i.i, 32
  %i.arr = getelementptr [40 x i8], ptr %i.ara, i64 %24 ; 2 uses
  %i.ars = getelementptr i8, ptr %i.arr, i64 8
  %i.art = load i32, ptr %i.ars, align 8, !tbaa !52
  %.not.us.i.us.i.i.i = icmp eq i32 %i.art, %.fr121.i.i.i
  br i1 %.not.us.i.us.i.i.i, label %bb.jt, label %.critedge.i.i

bb.jt:                                            ; preds = %.lr.ph571
  %i.aru = load i32, ptr %i.arr, align 8, !tbaa !29
  switch i32 %i.aru, label %.critedge.i.i [
    i32 27, label %.split.us.i.us.i.i.i
    i32 112, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
    i32 266, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
    i32 31, label %next_swappable_instruction.exit91.loopexit.us.i.i.i
  ]

next_swappable_instruction.exit91.loopexit.us.i.i.i: ; preds = %bb.jt, %bb.jt, %bb.jt
  %i.arv = icmp slt i32 %i.arq, 0
  br i1 %i.arv, label %.critedge.i.i, label %.split.us.i.i.i, !llvm.loop !101

.split.i.i29.i:                                   ; preds = %next_swappable_instruction.exit91.loopexit103.i.i.i
  %.071.i.i.i = add nsw i32 %.071.i.i.i570, -1
  %i.arw = icmp slt i32 %.071.i.i.i570, 2
  br i1 %i.arw, label %.thread.i376.i.i, label %.split.i87.i.i.i.preheader, !llvm.loop !101

.split.i87.i.i.i.preheader:                       ; preds = %.split.i.i29.i.preheader, %.split.i.i29.i
  %.071.i.i.i570 = phi i32 [ %.071.i.i.i, %.split.i.i29.i ], [ %.071.us.i.i.i573, %.split.i.i29.i.preheader ] ; 2 uses
  %.072.i375.i.i569 = phi i32 [ %i.arx, %.split.i.i29.i ], [ %i.are, %.split.i.i29.i.preheader ]
  %25 = zext nneg i32 %.072.i375.i.i569 to i64
  %indvars.iv.next.i89.i.i.i551 = add nuw nsw i64 %25, 1 ; 2 uses
  %indvars.i90.i.i.i552 = trunc nuw i64 %indvars.iv.next.i89.i.i.i551 to i32 ; 2 uses
  %26 = icmp sgt i32 %i.ard, %indvars.i90.i.i.i552
  br i1 %26, label %.lr.ph567, label %.critedge.i.i

.split.i87.i.i.i:                                 ; preds = %.lr.ph567
  %indvars.iv.next.i89.i.i.i = add nuw nsw i64 %indvars.iv.next.i89.i.i.i553, 1 ; 2 uses
  %indvars.i90.i.i.i = trunc i64 %indvars.iv.next.i89.i.i.i to i32 ; 2 uses
  %27 = icmp sgt i32 %i.ard, %indvars.i90.i.i.i
  br i1 %27, label %.lr.ph567, label %.critedge.i.i

.lr.ph567:                                        ; preds = %.split.i87.i.i.i.preheader, %.split.i87.i.i.i
  %i.arx = phi i32 [ %indvars.i90.i.i.i, %.split.i87.i.i.i ], [ %indvars.i90.i.i.i552, %.split.i87.i.i.i.preheader ] ; 3 uses
  %indvars.iv.next.i89.i.i.i553 = phi i64 [ %indvars.iv.next.i89.i.i.i, %.split.i87.i.i.i ], [ %indvars.iv.next.i89.i.i.i551, %.split.i87.i.i.i.preheader ] ; 2 uses
  %sext.i92.i.i.i = shl i64 %indvars.iv.next.i89.i.i.i553, 32
  %28 = ashr exact i64 %sext.i92.i.i.i, 32
  %i.ary = getelementptr [40 x i8], ptr %i.ara, i64 %28
  %i.arz = load i32, ptr %i.ary, align 8, !tbaa !29
  switch i32 %i.arz, label %.critedge.i.i [
    i32 27, label %.split.i87.i.i.i
    i32 112, label %next_swappable_instruction.exit91.loopexit103.i.i.i
    i32 266, label %next_swappable_instruction.exit91.loopexit103.i.i.i
    i32 31, label %next_swappable_instruction.exit91.loopexit103.i.i.i
  ]

next_swappable_instruction.exit91.loopexit103.i.i.i: ; preds = %.lr.ph567, %.lr.ph567, %.lr.ph567
  %i.asa = icmp slt i32 %i.arx, 0
  br i1 %i.asa, label %.critedge.i.i, label %.split.i.i29.i, !llvm.loop !101

.thread.i376.i.i:                                 ; preds = %.split.i.i29.i, %.split.us.i.i.i, %.split.i.i29.i.preheader, %.split.us.i.i.i.preheader
  %.us-phi.i.i.i = phi i32 [ %i.arq, %.split.us.i.i.i ], [ %i.are, %.split.us.i.i.i.preheader ], [ %i.are, %.split.i.i29.i.preheader ], [ %i.arx, %.split.i.i29.i ] ; 2 uses
  %29 = load i32, ptr %i.ari, align 8, !tbaa !29
  switch i32 %29, label %bb.jv [
    i32 112, label %bb.ju
    i32 266, label %bb.ju
  ]

bb.ju:                                            ; preds = %.thread.i376.i.i, %.thread.i376.i.i
  %i.asb = getelementptr i8, ptr %i.ari, i64 4
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !43
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %.thread.i376.i.i
  %i.asd = phi i32 [ %i.asc, %bb.ju ], [ -1, %.thread.i376.i.i ] ; 3 uses
  %i.ase = zext nneg i32 %.us-phi.i.i.i to i64    ; 3 uses
  %i.asf = getelementptr [40 x i8], ptr %i.ara, i64 %i.ase ; 3 uses
  %i.asg = load i32, ptr %i.asf, align 8, !tbaa !29
  switch i32 %i.asg, label %bb.jx [
    i32 112, label %bb.jw
    i32 266, label %bb.jw
  ]

bb.jw:                                            ; preds = %bb.jv, %bb.jv
  %i.ash = getelementptr i8, ptr %i.asf, i64 4
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !43
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.asj = phi i32 [ %i.asi, %bb.jw ], [ -1, %bb.jv ] ; 3 uses
  %i.ask = icmp sgt i32 %i.asd, -1
  %i.asl = icmp sgt i32 %i.asj, -1
  %or.cond.i377.i.i = select i1 %i.ask, i1 true, i1 %i.asl
  br i1 %or.cond.i377.i.i, label %bb.jy, label %.loopexit.i378.i.i

bb.jy:                                            ; preds = %bb.jx
  %i.asm = icmp eq i32 %i.asd, %i.asj
  br i1 %i.asm, label %.critedge.i.i, label %.preheader.i379.i.i

.preheader.i379.i.i:                              ; preds = %bb.jy
  %.070114.i.i.i = add nuw i32 %i.are, 1
  %.not85115.i.i.i = icmp slt i32 %.070114.i.i.i, %.us-phi.i.i.i
  br i1 %.not85115.i.i.i, label %.lr.ph.preheader.i380.i.i, label %.loopexit.i378.i.i

.lr.ph.preheader.i380.i.i:                        ; preds = %.preheader.i379.i.i
  %i.asn = sext i32 %indvars.iv137.i.i.i564 to i64
  br label %.lr.ph.i381.i.i

.lr.ph.i381.i.i:                                  ; preds = %.critedge.i382.i.i, %.lr.ph.preheader.i380.i.i
  %indvars.iv140.i.i.i = phi i64 [ %i.asn, %.lr.ph.preheader.i380.i.i ], [ %indvars.iv.next141.i.i.i, %.critedge.i382.i.i ] ; 2 uses
  %i.aso = getelementptr [40 x i8], ptr %i.ara, i64 %indvars.iv140.i.i.i ; 2 uses
  %i.asp = load i32, ptr %i.aso, align 8, !tbaa !29
  switch i32 %i.asp, label %.critedge.i382.i.i [
    i32 112, label %bb.jz
    i32 266, label %bb.jz
  ]

bb.jz:                                            ; preds = %.lr.ph.i381.i.i, %.lr.ph.i381.i.i
  %i.asq = getelementptr i8, ptr %i.aso, i64 4
  %i.asr = load i32, ptr %i.asq, align 4, !tbaa !43 ; 3 uses
  %i.ass = icmp sgt i32 %i.asr, -1
  br i1 %i.ass, label %bb.ka, label %.critedge.i382.i.i

bb.ka:                                            ; preds = %bb.jz
  %i.ast = icmp eq i32 %i.asr, %i.asd
  %i.asu = icmp eq i32 %i.asr, %i.asj
  %or.cond86.i.i.i = select i1 %i.ast, i1 true, i1 %i.asu
  br i1 %or.cond86.i.i.i, label %.critedge.i.i, label %.critedge.i382.i.i

.critedge.i382.i.i:                               ; preds = %bb.ka, %bb.jz, %.lr.ph.i381.i.i
  %indvars.iv.next141.i.i.i = add nsw i64 %indvars.iv140.i.i.i, 1 ; 2 uses
  %.not85.i.i.i = icmp slt i64 %indvars.iv.next141.i.i.i, %i.ase
  br i1 %.not85.i.i.i, label %.lr.ph.i381.i.i, label %.loopexit.i378.i.i, !llvm.loop !102

.loopexit.i378.i.i:                               ; preds = %.critedge.i382.i.i, %.preheader.i379.i.i, %bb.jx
  store i32 27, ptr %i.arb, align 8, !tbaa !29
  store i32 0, ptr %i.arl, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %i.ari, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ari, ptr noundef nonnull align 8 dereferenceable(40) %i.asf, i64 40, i1 false), !tbaa.struct !53
  %i.asv = load ptr, ptr %i.kp, align 8, !tbaa !23
  %i.asw = getelementptr [40 x i8], ptr %i.asv, i64 %i.ase
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.asw, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.kb

bb.kb:                                            ; preds = %.loopexit.i378.i.i, %bb.jq, %bb.jq, %bb.jq, %bb.jq
  %indvars.iv.next144.i.i.i = add nsw i64 %indvars.iv143.i.i.i, -1
  %i.asx = icmp sgt i64 %indvars.iv143.i.i.i, 0
  %indvars.iv.next.i374.i.i = add i32 %indvars.iv.i373.i.i, -1
  br i1 %i.asx, label %bb.jq, label %.critedge.i.i, !llvm.loop !103

.critedge.i.i:                                    ; preds = %bb.kb, %bb.jy, %next_swappable_instruction.exit.i.i.i, %bb.jq, %bb.jr, %.split.i.i.i.i, %.lr.ph, %next_swappable_instruction.exit91.loopexit103.i.i.i, %.split.i87.i.i.i.preheader, %next_swappable_instruction.exit91.loopexit.us.i.i.i, %.split.us.i.us.i.i.i.preheader, %bb.ka, %.split.i87.i.i.i, %.lr.ph567, %.split.us.i.us.i.i.i, %.lr.ph571, %bb.jt, %bb.jp, %.lr.ph473.i.i
  %.0.ph.i.i = phi i32 [ %.1.ph.i.i, %bb.jp ], [ %.1.ph.i.i, %.split.i.i.i.i ], [ %storemerge472.i.i, %.lr.ph473.i.i ], [ %.1.ph.i.i, %next_swappable_instruction.exit91.loopexit.us.i.i.i ], [ %.1.ph.i.i, %.split.us.i.us.i.i.i ], [ %.1.ph.i.i, %next_swappable_instruction.exit91.loopexit103.i.i.i ], [ %.1.ph.i.i, %.split.i87.i.i.i ], [ %.1.ph.i.i, %bb.ka ], [ %.1.ph.i.i, %bb.jt ], [ %.1.ph.i.i, %.lr.ph571 ], [ %.1.ph.i.i, %.lr.ph567 ], [ %.1.ph.i.i, %.split.us.i.us.i.i.i.preheader ], [ %.1.ph.i.i, %.split.i87.i.i.i.preheader ], [ %.1.ph.i.i, %.lr.ph ], [ %.1.ph.i.i, %bb.jr ], [ %.1.ph.i.i, %bb.jq ], [ %.1.ph.i.i, %next_swappable_instruction.exit.i.i.i ], [ %.1.ph.i.i, %bb.jy ], [ %.1.ph.i.i, %bb.kb ]
  %i.asy = add i32 %.0.ph.i.i, 1                  ; 2 uses
  %i.asz = load i32, ptr %i.kn, align 8, !tbaa !28 ; 2 uses
  %i.ata = icmp slt i32 %i.asy, %i.asz
  br i1 %i.ata, label %.lr.ph473.i.i, label %.loopexit81.i, !llvm.loop !104

bb.kc:                                            ; preds = %bb.jj
  %i.atb = call ptr @PyErr_NoMemory() #8          ; 0 uses
  br label %.loopexit82.i

.loopexit81.i:                                    ; preds = %.critedge.i.i, %.critedge.preheader.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  %i.atc = getelementptr i8, ptr %.018136.i, i64 32
  %.018.i = load ptr, ptr %i.atc, align 8, !tbaa !26 ; 2 uses
  %.not.i18 = icmp eq ptr %.018.i, null
  br i1 %.not.i18, label %._crit_edge.i19, label %bb.br, !llvm.loop !105

.loopexit82.i:                                    ; preds = %bb.gq, %.thread.i.i335.i.i, %bb.fu, %bb.fm, %bb.kc, %fold_const_binop.exit.thread.i.i, %bb.gh, %bb.gg, %bb.gf, %bb.gc, %bb.gb, %.loopexit.i341.i.i, %optimize_lists_and_sets.exit.thread391.i.i, %fold_tuple_of_constants.exit.thread387.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  br label %optimize_cfg.exit.thread

._crit_edge.i19:                                  ; preds = %.loopexit81.i
  %.pre197.i = load ptr, ptr %0, align 8, !tbaa !21 ; 3 uses
  %.not81.i.i = icmp eq ptr %.pre197.i, null
  br i1 %.not81.i.i, label %.loopexit.i, label %.preheader.i46.i

.preheader.i46.i:                                 ; preds = %._crit_edge.i19, %basicblock_nofallthrough.exit.thread.i.i
  %.13984.i.i = phi i1 [ %.240.lcssa.i.i.mux, %basicblock_nofallthrough.exit.thread.i.i ], [ true, %._crit_edge.i19 ] ; 2 uses
  %.04483.i.i = phi ptr [ %.mux579, %basicblock_nofallthrough.exit.thread.i.i ], [ %.pre197.i, %._crit_edge.i19 ] ; 6 uses
  %.04582.i.i = phi ptr [ %.348.i.i.mux, %basicblock_nofallthrough.exit.thread.i.i ], [ null, %._crit_edge.i19 ]
  %i.atd = getelementptr i8, ptr %.04483.i.i, i64 40 ; 4 uses
  %i.ate = load i32, ptr %i.atd, align 8, !tbaa !28 ; 3 uses
  %i.atf = icmp sgt i32 %i.ate, 0
  br i1 %i.atf, label %.lr.ph87.i.i.i, label %basicblock_remove_redundant_nops.exit.i.i

.lr.ph87.i.i.i:                                   ; preds = %.preheader.i46.i
  %i.atg = getelementptr i8, ptr %.04483.i.i, i64 24
  %i.ath = getelementptr i8, ptr %.04483.i.i, i64 32
  br label %bb.kd

bb.kd:                                            ; preds = %.critedge.i.i.i, %.lr.ph87.i.i.i
  %indvars.iv94.i.i.i = phi i64 [ 0, %.lr.ph87.i.i.i ], [ %indvars.iv.next95.i.i.i, %.critedge.i.i.i ] ; 4 uses
  %i.ati = phi i32 [ %i.ate, %.lr.ph87.i.i.i ], [ %i.aus, %.critedge.i.i.i ]
  %.085.i.i.i = phi i32 [ 0, %.lr.ph87.i.i.i ], [ %.1.i.i.i, %.critedge.i.i.i ] ; 7 uses
  %.05982.i.i.i = phi i32 [ -1, %.lr.ph87.i.i.i ], [ %.160.i.i.i, %.critedge.i.i.i ] ; 5 uses
  %i.atj = load ptr, ptr %i.atg, align 8, !tbaa !23 ; 2 uses
  %i.atk = getelementptr [40 x i8], ptr %i.atj, i64 %indvars.iv94.i.i.i ; 4 uses
  %i.atl = getelementptr i8, ptr %i.atk, i64 8    ; 2 uses
  %i.atm = load i32, ptr %i.atl, align 8, !tbaa !52 ; 5 uses
  %i.atn = load i32, ptr %i.atk, align 8, !tbaa !29
  %i.ato = icmp eq i32 %i.atn, 27
  br i1 %i.ato, label %bb.ke, label %.thread73.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.atp = icmp slt i32 %i.atm, 0
  %i.atq = icmp eq i32 %.05982.i.i.i, %i.atm
  %or.cond.i.i59.i = select i1 %i.atp, i1 true, i1 %i.atq
  br i1 %or.cond.i.i59.i, label %.critedge.i.i.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.atr = add nsw i32 %i.ati, -1
  %i.ats = sext i32 %i.atr to i64
  %i.att = icmp slt i64 %indvars.iv94.i.i.i, %i.ats
  br i1 %i.att, label %bb.kg, label %bb.kj

bb.kg:                                            ; preds = %bb.kf
  %i.atu = getelementptr i8, ptr %i.atk, i64 48   ; 2 uses
  %i.atv = load i32, ptr %i.atu, align 8, !tbaa !52 ; 2 uses
  %i.atw = icmp eq i32 %i.atv, %i.atm
  br i1 %i.atw, label %.critedge.i.i.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.atx = icmp slt i32 %i.atv, 0
  br i1 %i.atx, label %bb.ki, label %.thread73.i.i.i

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.atu, ptr noundef nonnull align 8 dereferenceable(16) %i.atl, i64 16, i1 false), !tbaa.struct !76
  br label %.critedge.i.i.i

bb.kj:                                            ; preds = %bb.kf
  %i.aty = load ptr, ptr %i.ath, align 8, !tbaa !36 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aty, null
  br i1 %.not4.i.i.i.i, label %.thread73.i.i.i, label %.lr.ph.i.i.i60.i

.lr.ph.i.i.i60.i:                                 ; preds = %bb.kj, %bb.kk
  %.05.i.i.i.i = phi ptr [ %i.aug, %bb.kk ], [ %i.aty, %bb.kj ] ; 3 uses
  %i.atz = getelementptr i8, ptr %.05.i.i.i.i, i64 40
  %i.aua = load i32, ptr %i.atz, align 8, !tbaa !28 ; 3 uses
  %i.aub = icmp eq i32 %i.aua, 0
  br i1 %i.aub, label %bb.kk, label %next_nonempty_block.exit.preheader.i.i.i

next_nonempty_block.exit.preheader.i.i.i:         ; preds = %.lr.ph.i.i.i60.i
  %i.auc = icmp sgt i32 %i.aua, 0
  br i1 %i.auc, label %.lr.ph.i.i61.i, label %.thread73.i.i.i

.lr.ph.i.i61.i:                                   ; preds = %next_nonempty_block.exit.preheader.i.i.i
  %i.aud = getelementptr i8, ptr %.05.i.i.i.i, i64 24
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !23
  %wide.trip.count.i.i62.i = zext nneg i32 %i.aua to i64
  br label %bb.kl

bb.kk:                                            ; preds = %.lr.ph.i.i.i60.i
  %i.auf = getelementptr i8, ptr %.05.i.i.i.i, i64 32
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i66.i = icmp eq ptr %i.aug, null
  br i1 %.not.i.i.i66.i, label %.thread73.i.i.i, label %.lr.ph.i.i.i60.i, !llvm.loop !106

next_nonempty_block.exit.i.i.i:                   ; preds = %bb.kl
  %indvars.iv.next.i.i64.i = add nuw nsw i64 %indvars.iv.i.i63.i, 1 ; 2 uses
  %exitcond.not.i.i65.i = icmp eq i64 %indvars.iv.next.i.i64.i, %wide.trip.count.i.i62.i
  br i1 %exitcond.not.i.i65.i, label %.thread73.i.i.i, label %bb.kl, !llvm.loop !107

bb.kl:                                            ; preds = %next_nonempty_block.exit.i.i.i, %.lr.ph.i.i61.i
  %indvars.iv.i.i63.i = phi i64 [ 0, %.lr.ph.i.i61.i ], [ %indvars.iv.next.i.i64.i, %next_nonempty_block.exit.i.i.i ] ; 2 uses
  %i.auh = getelementptr [40 x i8], ptr %i.aue, i64 %indvars.iv.i.i63.i ; 2 uses
  %i.aui = load i32, ptr %i.auh, align 8, !tbaa !29
  %i.auj = icmp eq i32 %i.aui, 27
  %i.auk = getelementptr i8, ptr %i.auh, i64 8
  %i.aul = load i32, ptr %i.auk, align 8, !tbaa !7 ; 2 uses
  %i.aum = icmp slt i32 %i.aul, 0
  %or.cond = select i1 %i.auj, i1 %i.aum, i1 false
  br i1 %or.cond, label %next_nonempty_block.exit.i.i.i, label %split.i.i.i

split.i.i.i:                                      ; preds = %bb.kl
  %i.aun = icmp eq i32 %i.atm, %i.aul
  br i1 %i.aun, label %.critedge.i.i.i, label %.thread73.i.i.i

.thread73.i.i.i:                                  ; preds = %bb.kk, %next_nonempty_block.exit.i.i.i, %split.i.i.i, %next_nonempty_block.exit.preheader.i.i.i, %bb.kj, %bb.kh, %bb.kd
  %i.auo = zext i32 %.085.i.i.i to i64
  %.not67.i.i.i = icmp eq i64 %indvars.iv94.i.i.i, %i.auo
  br i1 %.not67.i.i.i, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %.thread73.i.i.i
  %i.aup = sext i32 %.085.i.i.i to i64
  %i.auq = getelementptr [40 x i8], ptr %i.atj, i64 %i.aup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.auq, ptr noundef nonnull align 8 dereferenceable(40) %i.atk, i64 40, i1 false), !tbaa.struct !53
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %.thread73.i.i.i
  %i.aur = add i32 %.085.i.i.i, 1
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %bb.kn, %split.i.i.i, %bb.ki, %bb.kg, %bb.ke
  %.160.i.i.i = phi i32 [ %.05982.i.i.i, %bb.ki ], [ %.05982.i.i.i, %bb.ke ], [ %i.atm, %bb.kn ], [ %.05982.i.i.i, %bb.kg ], [ %.05982.i.i.i, %split.i.i.i ]
  %.1.i.i.i = phi i32 [ %.085.i.i.i, %bb.ki ], [ %.085.i.i.i, %bb.ke ], [ %i.aur, %bb.kn ], [ %.085.i.i.i, %bb.kg ], [ %.085.i.i.i, %split.i.i.i ] ; 2 uses
  %indvars.iv.next95.i.i.i = add nuw nsw i64 %indvars.iv94.i.i.i, 1 ; 2 uses
  %i.aus = load i32, ptr %i.atd, align 8, !tbaa !28 ; 3 uses
  %i.aut = sext i32 %i.aus to i64
end_hunk_0
begin_hunk_1_@_PyCfg_ToInstructionSequence:bb.a
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.04374, i64 40    ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  %.not5569 = icmp sgt i32 %i.k, 0
  br i1 %.not5569, label %.lr.ph71, label %.critedge58

.lr.ph71:                                         ; preds = %.preheader
  %i.l = getelementptr i8, ptr %.04374, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph71, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr [40 x i8], ptr %i.m, i64 %indvars.iv ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29   ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %.fr62 = freeze i32 %i.s
  %i.t = and i32 %.fr62, 8
  %.not52 = icmp ne i32 %i.t, 0
  %i.u = add i32 %i.o, -263
  %i.v = icmp ult i32 %i.u, 3
  %or.cond = or i1 %i.v, %.not52
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %i.n, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.n, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ab = phi i32 [ %.pre, %._crit_edge ], [ %i.z, %bb.d ]
  %i.ac = getelementptr i8, ptr %i.n, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.n, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %1, i32 noundef %i.o, i32 noundef %i.ab, i64 %i.ad, i64 %i.af) #8
  %.not54 = icmp eq i32 %i.ag, -1
  br i1 %.not54, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !161
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !157
  %i.aj = add i32 %i.ai, -1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [44 x i8], ptr %i.ah, i64 %i.ak ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24     ; 2 uses
  %i.an = getelementptr i8, ptr %i.n, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 4 uses
  %.not53 = icmp eq ptr %i.ao, null
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !35
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !174
  %i.ar = getelementptr i8, ptr %i.ao, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !175
  %i.at = getelementptr i8, ptr %i.al, i64 28
  store i32 %i.as, ptr %i.at, align 4, !tbaa !176
  %i.au = getelementptr i8, ptr %i.ao, i64 64
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = and i8 %i.av, 1
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = getelementptr i8, ptr %i.al, i64 32
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !177
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 -1, ptr %i.am, align 4, !tbaa !174
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.j, align 8, !tbaa !28
  %i.ba = sext i32 %i.az to i64
  %.not55 = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %.not55, label %bb.c, label %.critedge58, !llvm.loop !178

.critedge58:                                      ; preds = %bb.i, %.preheader
  %i.bb = getelementptr i8, ptr %.04374, i64 32
  %.043 = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %.not51 = icmp eq ptr %.043, null
  br i1 %.not51, label %.critedge60, label %bb.b, !llvm.loop !179

.critedge60:                                      ; preds = %.critedge58, %bb.a
  %i.bc = tail call i32 @_PyInstructionSequence_ApplyLabelMap(ptr noundef %1) #8
  %.lobit = ashr i32 %i.bc, 31
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %.critedge60
  %.5 = phi i32 [ %.lobit, %.critedge60 ], [ -1, %bb.e ], [ -1, %bb.b ]
  ret i32 %.5
}

declare i32 @_PyInstructionSequence_UseLabel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyInstructionSequence_Addop(ptr noundef, i32 noundef, i32 noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyCfg_OptimizedCfgToInstructionSequence(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %6 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %7 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %8 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %9 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %struct._Py_c_array_t, align 8     ; 11 uses
  %11 = alloca %struct._Py_c_array_t, align 8     ; 11 uses
  %.03275.i = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.not76.not.i = icmp eq ptr %.03275.i, null
  br i1 %.not76.not.i, label %.loopexit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 28
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %.03277.i = phi ptr [ %.03275.i, %.preheader.lr.ph.i ], [ %.032.i, %.critedge40.i ] ; 4 uses
  %i.o = getelementptr i8, ptr %.03277.i, i64 40  ; 8 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not3973.i = icmp sgt i32 %i.p, 0
  br i1 %.not3973.i, label %.lr.ph.i, label %.critedge40.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.q = getelementptr i8, ptr %.03277.i, i64 24  ; 13 uses
  %i.r = getelementptr i8, ptr %.03277.i, i64 44  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.cm, %bb.h ]
  %.074.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cn, %bb.h ] ; 5 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.u = sext i32 %.074.i to i64                  ; 5 uses
  %i.v = getelementptr [40 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = and i32 %i.w, -2
  %switch.i = icmp eq i32 %i.x, 258
  br i1 %switch.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.w, 258
  %i.z = select i1 %i.y, i32 100, i32 103
  store i32 %i.z, ptr %i.v, align 8, !tbaa !29
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.aa, align 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148 ; 2 uses
  %i.ad = add nsw i32 %.074.i, 1                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !23
  store ptr %i.ae, ptr %11, align 8, !tbaa !37
  %i.af = load i32, ptr %i.r, align 4, !tbaa !39
  store i32 %i.af, ptr %i.e, align 8, !tbaa !40
  store i32 0, ptr %i.f, align 4
  store i64 40, ptr %i.g, align 8, !tbaa !41
  store i32 16, ptr %i.h, align 8, !tbaa !42
  store i32 0, ptr %i.i, align 4
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !28
  %i.ah = add i32 %i.ag, 1
  %i.ai = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %11, i32 noundef %i.ah) #8
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %basicblock_next_instr.exit.thread.i.i, label %basicblock_next_instr.exit.i.i

basicblock_next_instr.exit.thread.i.i:            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i.i:                   ; preds = %bb.c
  %i.ak = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !23
  %i.al = load i32, ptr %i.e, align 8, !tbaa !40
  store i32 %i.al, ptr %i.r, align 4, !tbaa !39
  %i.am = load i32, ptr %i.o, align 8, !tbaa !28  ; 4 uses
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.o, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.ao = icmp eq i32 %i.am, -1
  br i1 %i.ao, label %normalize_jumps.exit.thread, label %bb.d

bb.d:                                             ; preds = %basicblock_next_instr.exit.i.i
  %i.ap = icmp sgt i32 %i.am, %.074.i
  br i1 %i.ap, label %.lr.ph.preheader.i.i, label %bb.e

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.aq = sext i32 %i.am to i64                   ; 5 uses
  %12 = zext i32 %i.an to i64                     ; 3 uses
  %i.ar = sub nsw i64 %i.aq, %i.u
  %xtraiter = and i64 %i.ar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.at = getelementptr [40 x i8], ptr %i.as, i64 %i.aq
  %13 = shl nuw i64 %12, 32
  %sext.i.i.prol = add i64 %13, -8589934592
  %14 = ashr exact i64 %sext.i.i.prol, 32
  %i.au = getelementptr [40 x i8], ptr %i.as, i64 %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.prol = add nsw i64 %i.aq, -1
  %indvars.iv.next19.i.i.prol = add nsw i64 %12, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr.a = phi i64 [ %12, %.lr.ph.preheader.i.i ], [ %indvars.iv.next19.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %i.aq, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.av = add nsw i64 %i.aq, -1
  %i.aw = icmp eq i64 %i.av, %i.u
  br i1 %i.aw, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !23
  br label %bb.e

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i.a = phi i64 [ %indvars.iv.next19.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr.a, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 3 uses
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ay = getelementptr [40 x i8], ptr %i.ax, i64 %indvars.iv.i.i
  %15 = shl i64 %indvars.iv.i.i.a, 32
  %sext.i.i = add i64 %15, -8589934592
  %16 = ashr exact i64 %sext.i.i, 32
  %17 = getelementptr [40 x i8], ptr %i.ax, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %17, i64 40, i1 false), !tbaa.struct !53
  %i.az = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ba = getelementptr [40 x i8], ptr %i.az, i64 %indvars.iv.i.i
  %18 = getelementptr i8, ptr %i.ba, i64 -40
  %i.bb = shl i64 %indvars.iv.i.i.a, 32
  %sext = add i64 %i.bb, -12884901888
  %i.bc = ashr exact i64 %sext, 32
  %i.bd = getelementptr [40 x i8], ptr %i.az, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 8 dereferenceable(40) %i.bd, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.be = icmp sgt i64 %indvars.iv.next.i.i.1, %i.u
  %indvars.iv.next19.i.i.1 = add nsw i64 %indvars.iv.i.i.a, -2
  br i1 %i.be, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !180

bb.e:                                             ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.bf = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ak, %bb.d ]
  %i.bg = getelementptr [40 x i8], ptr %i.bf, i64 %i.u ; 5 uses
  store i32 59, ptr %i.bg, align 8, !tbaa !7
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 1, ptr %.sroa.457.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store <4 x i32> %.sroa.0.0.copyload, ptr %.sroa.558.0..sroa_idx.i, align 8
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr null, ptr %.sroa.659.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.760.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.ac, ptr %.sroa.760.0..sroa_idx.i, align 8, !tbaa !26
  %i.bh = add i32 %.074.i, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.bi = load ptr, ptr %i.q, align 8, !tbaa !23
  store ptr %i.bi, ptr %10, align 8, !tbaa !37
  %i.bj = load i32, ptr %i.r, align 4, !tbaa !39
  store i32 %i.bj, ptr %i.j, align 8, !tbaa !40
  store i32 0, ptr %i.k, align 4
  store i64 40, ptr %i.l, align 8, !tbaa !41
  store i32 16, ptr %i.m, align 8, !tbaa !42
  store i32 0, ptr %i.n, align 4
  %i.bk = load i32, ptr %i.o, align 8, !tbaa !28
  %i.bl = add i32 %i.bk, 1
  %i.bm = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %10, i32 noundef %i.bl) #8
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %basicblock_next_instr.exit.thread.i54.i, label %basicblock_next_instr.exit.i41.i

basicblock_next_instr.exit.thread.i54.i:          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i41.i:                 ; preds = %bb.e
  %i.bo = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  store ptr %i.bo, ptr %i.q, align 8, !tbaa !23
  %i.bp = load i32, ptr %i.j, align 8, !tbaa !40
  store i32 %i.bp, ptr %i.r, align 4, !tbaa !39
  %i.bq = load i32, ptr %i.o, align 8, !tbaa !28  ; 4 uses
  %i.br = add i32 %i.bq, 1                        ; 2 uses
  store i32 %i.br, ptr %i.o, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.bs = icmp eq i32 %i.bq, -1
  br i1 %i.bs, label %normalize_jumps.exit.thread, label %bb.f

bb.f:                                             ; preds = %basicblock_next_instr.exit.i41.i
  %i.bt = icmp sgt i32 %i.bq, %i.ad
  br i1 %i.bt, label %.lr.ph.preheader.i47.i, label %.._crit_edge_crit_edge.i42.i

.._crit_edge_crit_edge.i42.i:                     ; preds = %bb.f
  %.pre19.i43.i = sext i32 %i.ad to i64
  br label %bb.g

.lr.ph.preheader.i47.i:                           ; preds = %bb.f
  %i.bu = sext i32 %i.bq to i64                   ; 5 uses
  %i.bv = sext i32 %i.ad to i64                   ; 4 uses
  %19 = zext i32 %i.br to i64                     ; 3 uses
  %i.bw = sub nsw i64 %i.bu, %i.bv
  %xtraiter67 = and i64 %i.bw, 1
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph.i48.i.prol.loopexit, label %.lr.ph.i48.i.prol

.lr.ph.i48.i.prol:                                ; preds = %.lr.ph.preheader.i47.i
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.by = getelementptr [40 x i8], ptr %i.bx, i64 %i.bu
  %20 = shl nuw i64 %19, 32
  %sext.i51.i.prol = add i64 %20, -8589934592
  %21 = ashr exact i64 %sext.i51.i.prol, 32
  %i.bz = getelementptr [40 x i8], ptr %i.bx, i64 %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i51.i.prol = add nsw i64 %i.bu, -1
  %indvars.iv.next19.i53.i.prol = add nsw i64 %19, -1
  br label %.lr.ph.i48.i.prol.loopexit

.lr.ph.i48.i.prol.loopexit:                       ; preds = %.lr.ph.i48.i.prol, %.lr.ph.preheader.i47.i
  %indvars.iv.i49.i.unr = phi i64 [ %19, %.lr.ph.preheader.i47.i ], [ %indvars.iv.next19.i53.i.prol, %.lr.ph.i48.i.prol ]
  %indvars.iv.i50.i.unr = phi i64 [ %i.bu, %.lr.ph.preheader.i47.i ], [ %indvars.iv.next.i51.i.prol, %.lr.ph.i48.i.prol ]
  %i.ca = add nsw i64 %i.bu, -1
  %i.cb = icmp eq i64 %i.ca, %i.bv
  br i1 %i.cb, label %._crit_edge.loopexit.i52.i, label %.lr.ph.i48.i

._crit_edge.loopexit.i52.i:                       ; preds = %.lr.ph.i48.i, %.lr.ph.i48.i.prol.loopexit
  %.pre.i53.i = load ptr, ptr %i.q, align 8, !tbaa !23
  br label %bb.g

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i.prol.loopexit, %.lr.ph.i48.i
  %indvars.iv.i49.i = phi i64 [ %indvars.iv.next19.i53.i.1, %.lr.ph.i48.i ], [ %indvars.iv.i49.i.unr, %.lr.ph.i48.i.prol.loopexit ] ; 3 uses
  %indvars.iv.i50.i = phi i64 [ %indvars.iv.next.i51.i.1, %.lr.ph.i48.i ], [ %indvars.iv.i50.i.unr, %.lr.ph.i48.i.prol.loopexit ] ; 3 uses
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.cd = getelementptr [40 x i8], ptr %i.cc, i64 %indvars.iv.i50.i
  %22 = shl i64 %indvars.iv.i49.i, 32
  %sext.i51.i = add i64 %22, -8589934592
  %23 = ashr exact i64 %sext.i51.i, 32
  %24 = getelementptr [40 x i8], ptr %i.cc, i64 %23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %24, i64 40, i1 false), !tbaa.struct !53
  %i.ce = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.cf = getelementptr [40 x i8], ptr %i.ce, i64 %indvars.iv.i50.i
  %25 = getelementptr i8, ptr %i.cf, i64 -40
  %i.cg = shl i64 %indvars.iv.i49.i, 32
  %sext91 = add i64 %i.cg, -12884901888
  %i.ch = ashr exact i64 %sext91, 32
  %i.ci = getelementptr [40 x i8], ptr %i.ce, i64 %i.ch
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(40) %i.ci, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i51.i.1 = add nsw i64 %indvars.iv.i50.i, -2 ; 2 uses
  %i.cj = icmp sgt i64 %indvars.iv.next.i51.i.1, %i.bv
  %indvars.iv.next19.i53.i.1 = add nsw i64 %indvars.iv.i49.i, -2
  br i1 %i.cj, label %.lr.ph.i48.i, label %._crit_edge.loopexit.i52.i, !llvm.loop !180

bb.g:                                             ; preds = %._crit_edge.loopexit.i52.i, %.._crit_edge_crit_edge.i42.i
  %.pre-phi.i45.i = phi i64 [ %.pre19.i43.i, %.._crit_edge_crit_edge.i42.i ], [ %i.bv, %._crit_edge.loopexit.i52.i ]
  %i.ck = phi ptr [ %i.bo, %.._crit_edge_crit_edge.i42.i ], [ %.pre.i53.i, %._crit_edge.loopexit.i52.i ]
  %i.cl = getelementptr [40 x i8], ptr %i.ck, i64 %.pre-phi.i45.i ; 5 uses
  store i32 39, ptr %i.cl, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store <4 x i32> %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %i.ac, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !26
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.cm = phi i32 [ %i.s, %bb.b ], [ %.pre.i, %bb.g ] ; 2 uses
  %.3.i = phi i32 [ %.074.i, %bb.b ], [ %i.bh, %bb.g ]
  %i.cn = add i32 %.3.i, 1                        ; 2 uses
  %.not39.i = icmp slt i32 %i.cn, %i.cm
  br i1 %.not39.i, label %bb.b, label %.critedge40.i, !llvm.loop !181

.critedge40.i:                                    ; preds = %bb.h, %.preheader.i
  %i.co = getelementptr i8, ptr %.03277.i, i64 32
  %.032.i = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %.not.not.i = icmp eq ptr %.032.i, null
  br i1 %.not.not.i, label %.loopexit.loopexit, label %.preheader.i, !llvm.loop !182

.loopexit.loopexit:                               ; preds = %.critedge40.i
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.val = phi ptr [ %.val.pre, %.loopexit.loopexit ], [ null, %bb.a ]
  %i.cp = call fastcc i32 @calculate_stackdepth(ptr %.val) ; 2 uses
  store i32 %i.cp, ptr %2, align 4, !tbaa !7
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %normalize_jumps.exit.thread, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cr = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !183
  %i.ct = getelementptr i8, ptr %i.cs, i64 16
  %.val24.i = load i64, ptr %i.ct, align 8, !tbaa !185
  %i.cu = trunc i64 %.val24.i to i32              ; 3 uses
  %i.cv = getelementptr i8, ptr %1, i64 40        ; 5 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !189
  %i.cx = getelementptr i8, ptr %i.cw, i64 16
  %.val23.i = load i64, ptr %i.cx, align 8, !tbaa !185
  %i.cy = trunc i64 %.val23.i to i32
  %i.cz = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !190
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %.val.i = load i64, ptr %i.db, align 8, !tbaa !185
  %i.dc = trunc i64 %.val.i to i32                ; 3 uses
  %i.dd = add i32 %i.dc, %i.cy                    ; 5 uses
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %build_cellfixedoffsets.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.df = zext nneg i32 %i.dd to i64              ; 4 uses
  %i.dg = shl nuw nsw i64 %i.df, 2
  %i.dh = call ptr @PyMem_Malloc(i64 noundef %i.dg) #8 ; 18 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %build_cellfixedoffsets.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  %.not41.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not41.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14.preheader

.lr.ph.i.i14.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check = icmp ult i32 %i.dd, 8
  br i1 %min.iters.check, label %.lr.ph.i.i14.preheader66, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i14.preheader
  %n.vec = and i64 %i.df, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cu, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.dj = add <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.dk = getelementptr [4 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store <4 x i32> %i.dj, ptr %i.dk, align 4, !tbaa !7
  store <4 x i32> %.reass, ptr %i.dl, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !191

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.df
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i14.preheader66

.lr.ph.i.i14.preheader66:                         ; preds = %.lr.ph.i.i14.preheader, %middle.block
  %indvars.iv.i.i15.ph = phi i64 [ 0, %.lr.ph.i.i14.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i14

build_cellfixedoffsets.exit.thread.i:             ; preds = %bb.j, %bb.i
  %i.dn = call ptr @PyErr_NoMemory() #8           ; 0 uses
  br label %prepare_localsplus.exit.thread

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i14, %middle.block, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !91
  %i.do = load ptr, ptr %i.cv, align 8, !tbaa !189
  %i.dp = call i32 @PyDict_Next(ptr noundef %i.do, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not38.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not38.i.i, label %build_cellfixedoffsets.exit.thread49.i, label %.lr.ph40.i.i

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i.i14.preheader66, %.lr.ph.i.i14
  %indvars.iv.i.i15 = phi i64 [ %indvars.iv.next.i.i16, %.lr.ph.i.i14 ], [ %indvars.iv.i.i15.ph, %.lr.ph.i.i14.preheader66 ] ; 3 uses
  %i.dq = trunc nuw nsw i64 %indvars.iv.i.i15 to i32
  %i.dr = add i32 %i.dq, %i.cu
  %i.ds = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i.i15
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !7
  %indvars.iv.next.i.i16 = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i16, %i.df
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14, !llvm.loop !192

.lr.ph40.i.i:                                     ; preds = %._crit_edge.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.dt = load ptr, ptr %i.cr, align 8, !tbaa !183
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.dv = call i32 @PyDict_GetItemRef(ptr noundef %i.dt, ptr noundef %i.du, ptr noundef nonnull %i.d) #8
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %build_cellfixedoffsets.exit.thread47.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph40.i.i
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %bb.s, label %bb.l, !llvm.loop !193

bb.l:                                             ; preds = %bb.k
  %i.dz = call i32 @PyLong_AsInt(ptr noundef nonnull %i.dx) #8 ; 2 uses
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !49  ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.eb, -1
  br i1 %.not.i.i.i, label %bb.m, label %Py_DECREF.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.ec = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !64
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.n, label %Py_DECREF.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.ea) #8
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.n, %bb.m, %bb.l
  %i.ee = icmp eq i32 %i.dz, -1
  br i1 %i.ee, label %bb.o, label %bb.p

bb.o:                                             ; preds = %Py_DECREF.exit.i.i
  %i.ef = call ptr @PyErr_Occurred() #8
  %.not31.i.i = icmp eq ptr %i.ef, null
  br i1 %.not31.i.i, label %bb.p, label %build_cellfixedoffsets.exit.thread47.i

bb.p:                                             ; preds = %bb.o, %Py_DECREF.exit.i.i
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.eh = call i32 @PyLong_AsInt(ptr noundef %i.eg) #8 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, -1
  br i1 %i.ei, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ej = call ptr @PyErr_Occurred() #8
  %.not32.i.i = icmp eq ptr %i.ej, null
  br i1 %.not32.i.i, label %bb.r, label %build_cellfixedoffsets.exit.thread47.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ek = sext i32 %i.eh to i64
  %i.el = getelementptr [4 x i8], ptr %i.dh, i64 %i.ek
  store i32 %i.dz, ptr %i.el, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.em = load ptr, ptr %i.cv, align 8, !tbaa !189
  %i.en = call i32 @PyDict_Next(ptr noundef %i.em, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i, label %build_cellfixedoffsets.exit.thread49.i, label %.lr.ph40.i.i

build_cellfixedoffsets.exit.thread47.i:           ; preds = %bb.q, %bb.o, %.lr.ph40.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @PyMem_Free(ptr noundef nonnull %i.dh) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %prepare_localsplus.exit.thread

build_cellfixedoffsets.exit.thread49.i:           ; preds = %bb.s, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.eo = load ptr, ptr %0, align 8, !tbaa !21    ; 6 uses
  %i.ep = load ptr, ptr %i.cv, align 8, !tbaa !189
  %i.eq = getelementptr i8, ptr %i.ep, i64 16
  %.val50.i.i = load i64, ptr %i.eq, align 8, !tbaa !185 ; 5 uses
  %i.er = trunc i64 %.val50.i.i to i32            ; 3 uses
  %.not.i25.i = icmp eq i32 %i.er, 0
  br i1 %.not.i25.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %build_cellfixedoffsets.exit.thread49.i
  %i.es = load ptr, ptr %i.cr, align 8, !tbaa !183
  %i.et = getelementptr i8, ptr %i.es, i64 16
  %.val.i26.i = load i64, ptr %i.et, align 8, !tbaa !185
  %i.eu = add i64 %.val.i26.i, %.val50.i.i
  %sext.i.i.a = shl i64 %i.eu, 32
  %i.ev = ashr exact i64 %sext.i.i.a, 32
  %i.ew = call ptr @PyMem_RawCalloc(i64 noundef %i.ev, i64 noundef 4) #8 ; 9 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.u, label %.preheader86.i.i

.preheader86.i.i:                                 ; preds = %bb.t
  %i.ey = icmp sgt i32 %i.er, 0
  br i1 %i.ey, label %.lr.ph.preheader.i.i17, label %._crit_edge.i27.i

.lr.ph.preheader.i.i17:                           ; preds = %.preheader86.i.i
  %wide.trip.count.i.i = and i64 %.val50.i.i, 2147483647
  %i.ez = add nsw i64 %wide.trip.count.i.i, -1
  %xtraiter69 = and i64 %.val50.i.i, 3            ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 3
  br i1 %i.fa, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.preheader.i.i17.new

.lr.ph.preheader.i.i17.new:                       ; preds = %.lr.ph.preheader.i.i17
  %unroll_iter = and i64 %.val50.i.i, 2147483644
  br label %.lr.ph.i28.i

bb.u:                                             ; preds = %bb.t
  %i.fb = call ptr @PyErr_NoMemory() #8           ; 0 uses
  br label %bb.ac

.lr.ph90.i.i.unr-lcssa:                           ; preds = %.lr.ph.i28.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.lr.ph90.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %.lr.ph90.i.i.unr-lcssa, %.lr.ph.preheader.i.i17
  %indvars.iv.i29.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i17 ], [ %indvars.iv.next.i30.i.3, %.lr.ph90.i.i.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter69, 0
  call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %indvars.iv.i29.i.epil = phi i64 [ %indvars.iv.i29.i.epil.init, %.lr.ph.i28.i.epil.preheader ], [ %indvars.iv.next.i30.i.epil, %.lr.ph.i28.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i28.i.epil ]
  %indvars.iv.next.i30.i.epil = add nuw nsw i64 %indvars.iv.i29.i.epil, 1 ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i29.i.epil
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !7
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr [4 x i8], ptr %i.ew, i64 %i.fe
  %i.fg = trunc nuw nsw i64 %indvars.iv.next.i30.i.epil to i32
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !7
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter69
  br i1 %epil.iter.cmp.not, label %.lr.ph90.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !194

.lr.ph90.i.i:                                     ; preds = %.lr.ph.i28.i.epil, %.lr.ph90.i.i.unr-lcssa
  %i.fh = getelementptr i8, ptr %i.eo, i64 24     ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fj = getelementptr i8, ptr %i.eo, i64 44     ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fo = getelementptr i8, ptr %i.eo, i64 40     ; 3 uses
  br label %bb.v

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.preheader.i.i17.new
  %indvars.iv.i29.i = phi i64 [ 0, %.lr.ph.preheader.i.i17.new ], [ %indvars.iv.next.i30.i.3, %.lr.ph.i28.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i17.new ], [ %niter.next.3, %.lr.ph.i28.i ]
  %indvars.iv.next.i30.i = or disjoint i64 %indvars.iv.i29.i, 1 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i29.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr [4 x i8], ptr %i.ew, i64 %i.fr
  %i.ft = trunc nuw nsw i64 %indvars.iv.next.i30.i to i32
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !7
  %indvars.iv.next.i30.i.1 = or disjoint i64 %indvars.iv.i29.i, 2 ; 2 uses
  %i.fu = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i30.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !7
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr [4 x i8], ptr %i.ew, i64 %i.fw
  %i.fy = trunc nuw nsw i64 %indvars.iv.next.i30.i.1 to i32
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !7
  %indvars.iv.next.i30.i.2 = or disjoint i64 %indvars.iv.i29.i, 3 ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i30.i.1
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !7
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr [4 x i8], ptr %i.ew, i64 %i.gb
  %i.gd = trunc nuw nsw i64 %indvars.iv.next.i30.i.2 to i32
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !7
  %indvars.iv.next.i30.i.3 = add nuw nsw i64 %indvars.iv.i29.i, 4 ; 3 uses
  %i.ge = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i30.i.2
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !7
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr [4 x i8], ptr %i.ew, i64 %i.gg
  %i.gi = trunc nuw nsw i64 %indvars.iv.next.i30.i.3 to i32
  store i32 %i.gi, ptr %i.gh, align 4, !tbaa !7
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph90.i.i.unr-lcssa, label %.lr.ph.i28.i, !llvm.loop !195

bb.v:                                             ; preds = %.thread.i32.i, %.lr.ph90.i.i
  %.089.i.i = phi i32 [ 0, %.lr.ph90.i.i ], [ %.273.i.i, %.thread.i32.i ] ; 5 uses
  %.03488.i.i = phi i32 [ 0, %.lr.ph90.i.i ], [ %i.ht, %.thread.i32.i ] ; 2 uses
  %i.gj = sext i32 %.03488.i.i to i64
  %i.gk = getelementptr [4 x i8], ptr %i.ew, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7  ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.thread.i32.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gn = add i32 %i.gl, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.go = load ptr, ptr %i.fh, align 8, !tbaa !23
  store ptr %i.go, ptr %9, align 8, !tbaa !37
  %i.gp = load i32, ptr %i.fj, align 4, !tbaa !39
  store i32 %i.gp, ptr %i.fi, align 8, !tbaa !40
  store i32 0, ptr %i.fk, align 4
  store i64 40, ptr %i.fl, align 8, !tbaa !41
  store i32 16, ptr %i.fm, align 8, !tbaa !42
  store i32 0, ptr %i.fn, align 4
  %i.gq = load i32, ptr %i.fo, align 8, !tbaa !28
  %i.gr = add i32 %i.gq, 1
  %i.gs = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %9, i32 noundef %i.gr) #8
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %basicblock_next_instr.exit.thread.i.i.i, label %basicblock_next_instr.exit.i.i.i

basicblock_next_instr.exit.thread.i.i.i:          ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.loopexit.i33.i

basicblock_next_instr.exit.i.i.i:                 ; preds = %bb.w
  %i.gu = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  store ptr %i.gu, ptr %i.fh, align 8, !tbaa !23
  %i.gv = load i32, ptr %i.fi, align 8, !tbaa !40
  store i32 %i.gv, ptr %i.fj, align 4, !tbaa !39
  %i.gw = load i32, ptr %i.fo, align 8, !tbaa !28 ; 4 uses
  %i.gx = add i32 %i.gw, 1                        ; 2 uses
  store i32 %i.gx, ptr %i.fo, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.gy = icmp eq i32 %i.gw, -1
  br i1 %i.gy, label %.loopexit.i33.i, label %bb.x

bb.x:                                             ; preds = %basicblock_next_instr.exit.i.i.i
  %i.gz = icmp sgt i32 %i.gw, %.089.i.i
  br i1 %i.gz, label %.lr.ph.preheader.i.i.i, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.x
  %.pre19.i.i.i = sext i32 %.089.i.i to i64
  br label %bb.y

.lr.ph.preheader.i.i.i:                           ; preds = %bb.x
  %i.ha = sext i32 %i.gw to i64                   ; 5 uses
  %i.hb = sext i32 %.089.i.i to i64               ; 4 uses
  %26 = zext i32 %i.gx to i64                     ; 3 uses
  %i.hc = sub nsw i64 %i.ha, %i.hb
  %xtraiter72 = and i64 %i.hc, 1
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.hd = load ptr, ptr %i.fh, align 8, !tbaa !23 ; 2 uses
  %i.he = getelementptr [40 x i8], ptr %i.hd, i64 %i.ha
  %27 = shl nuw i64 %26, 32
  %sext.i.i.i.prol = add i64 %27, -8589934592
  %28 = ashr exact i64 %sext.i.i.i.prol, 32
  %i.hf = getelementptr [40 x i8], ptr %i.hd, i64 %28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.he, ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.ha, -1
  %indvars.iv.next19.i.i.i.prol = add nsw i64 %26, -1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.unr.a = phi i64 [ %26, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next19.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %indvars.iv.i.i.i.unr = phi i64 [ %i.ha, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.hg = add nsw i64 %i.ha, -1
  %i.hh = icmp eq i64 %i.hg, %i.hb
  br i1 %i.hh, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.pre.i.i.i = load ptr, ptr %i.fh, align 8, !tbaa !23
  br label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.a = phi i64 [ %indvars.iv.next19.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr.a, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %i.hi = load ptr, ptr %i.fh, align 8, !tbaa !23 ; 2 uses
  %i.hj = getelementptr [40 x i8], ptr %i.hi, i64 %indvars.iv.i.i.i
  %29 = shl i64 %indvars.iv.i.i.i.a, 32
  %sext.i.i.i = add i64 %29, -8589934592
  %30 = ashr exact i64 %sext.i.i.i, 32
  %31 = getelementptr [40 x i8], ptr %i.hi, i64 %30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hj, ptr noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false), !tbaa.struct !53
  %i.hk = load ptr, ptr %i.fh, align 8, !tbaa !23 ; 2 uses
  %i.hl = getelementptr [40 x i8], ptr %i.hk, i64 %indvars.iv.i.i.i
  %32 = getelementptr i8, ptr %i.hl, i64 -40
  %i.hm = shl i64 %indvars.iv.i.i.i.a, 32
  %sext92 = add i64 %i.hm, -12884901888
  %i.hn = ashr exact i64 %sext92, 32
  %i.ho = getelementptr [40 x i8], ptr %i.hk, i64 %i.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 8 dereferenceable(40) %i.ho, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 2 uses
  %i.hp = icmp sgt i64 %indvars.iv.next.i.i.i.1, %i.hb
  %indvars.iv.next19.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.a, -2
  br i1 %i.hp, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !180

bb.y:                                             ; preds = %._crit_edge.loopexit.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre19.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.hb, %._crit_edge.loopexit.i.i.i ]
  %i.hq = phi ptr [ %i.gu, %.._crit_edge_crit_edge.i.i.i ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %i.hr = getelementptr [40 x i8], ptr %i.hq, i64 %.pre-phi.i.i.i ; 4 uses
  store i32 97, ptr %i.hr, align 8, !tbaa !7
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i32 %i.gn, ptr %.sroa.466.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.567.0..sroa_idx.i.i, i8 -1, i64 16, i1 false)
  %.sroa.668.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.hs = add nsw i32 %.089.i.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  br label %.thread.i32.i

.thread.i32.i:                                    ; preds = %bb.y, %bb.v
  %.273.i.i = phi i32 [ %i.hs, %bb.y ], [ %.089.i.i, %bb.v ] ; 2 uses
  %i.ht = add i32 %.03488.i.i, 1
  %i.hu = icmp slt i32 %.273.i.i, %i.er
  br i1 %i.hu, label %bb.v, label %._crit_edge.i27.i, !llvm.loop !196

.loopexit.i33.i:                                  ; preds = %basicblock_next_instr.exit.i.i.i, %basicblock_next_instr.exit.thread.i.i.i
  call void @PyMem_RawFree(ptr noundef nonnull %i.ew) #8
  br label %bb.ac

._crit_edge.i27.i:                                ; preds = %.thread.i32.i, %.preheader86.i.i
  call void @PyMem_RawFree(ptr noundef nonnull %i.ew) #8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i27.i, %build_cellfixedoffsets.exit.thread49.i
  %.not48.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not48.i.i, label %insert_prefix_instructions.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.hv = getelementptr i8, ptr %i.eo, i64 24     ; 6 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !23
  store ptr %i.hw, ptr %8, align 8, !tbaa !37
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.eo, i64 44     ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !39
  store i32 %i.hz, ptr %i.hx, align 8, !tbaa !40
  %i.ia = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.ia, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 40, ptr %i.ib, align 8, !tbaa !41
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 16, ptr %i.ic, align 8, !tbaa !42
  %i.id = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %i.id, align 4
  %i.ie = getelementptr i8, ptr %i.eo, i64 40     ; 3 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !28
  %i.ig = add i32 %i.if, 1
  %i.ih = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %8, i32 noundef %i.ig) #8
  %i.ii = icmp eq i32 %i.ih, -1
  br i1 %i.ii, label %basicblock_next_instr.exit.thread.i63.i.i, label %basicblock_next_instr.exit.i51.i.i

basicblock_next_instr.exit.thread.i63.i.i:        ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.ac

basicblock_next_instr.exit.i51.i.i:               ; preds = %bb.aa
  %i.ij = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  store ptr %i.ij, ptr %i.hv, align 8, !tbaa !23
  %i.ik = load i32, ptr %i.hx, align 8, !tbaa !40
  store i32 %i.ik, ptr %i.hy, align 4, !tbaa !39
  %i.il = load i32, ptr %i.ie, align 8, !tbaa !28 ; 5 uses
  %i.im = add i32 %i.il, 1                        ; 2 uses
  store i32 %i.im, ptr %i.ie, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.in = icmp eq i32 %i.il, -1
  br i1 %i.in, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %basicblock_next_instr.exit.i51.i.i
  %i.io = icmp sgt i32 %i.il, 0
  br i1 %i.io, label %.lr.ph.preheader.i56.i.i, label %basicblock_insert_instruction.exit64.i.i

.lr.ph.preheader.i56.i.i:                         ; preds = %bb.ab
  %i.ip = zext nneg i32 %i.il to i64              ; 4 uses
  %33 = zext i32 %i.im to i64                     ; 3 uses
  %xtraiter74 = and i64 %i.ip, 1
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i57.i.i.prol.loopexit, label %.lr.ph.i57.i.i.prol

.lr.ph.i57.i.i.prol:                              ; preds = %.lr.ph.preheader.i56.i.i
  %i.iq = load ptr, ptr %i.hv, align 8, !tbaa !23 ; 2 uses
  %i.ir = getelementptr [40 x i8], ptr %i.iq, i64 %i.ip
  %34 = shl nuw i64 %33, 32
  %sext.i60.i.i.prol = add i64 %34, -8589934592
  %35 = ashr exact i64 %sext.i60.i.i.prol, 32
  %36 = getelementptr [40 x i8], ptr %i.iq, i64 %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ir, ptr noundef nonnull align 8 dereferenceable(40) %36, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i60.i.i.prol = add nsw i64 %i.ip, -1
  %indvars.iv.next19.i62.i.i.prol = add nsw i64 %33, -1
  br label %.lr.ph.i57.i.i.prol.loopexit

.lr.ph.i57.i.i.prol.loopexit:                     ; preds = %.lr.ph.i57.i.i.prol, %.lr.ph.preheader.i56.i.i
  %indvars.iv.i58.i.i.unr = phi i64 [ %33, %.lr.ph.preheader.i56.i.i ], [ %indvars.iv.next19.i62.i.i.prol, %.lr.ph.i57.i.i.prol ]
  %indvars.iv.i59.i.i.unr = phi i64 [ %i.ip, %.lr.ph.preheader.i56.i.i ], [ %indvars.iv.next.i60.i.i.prol, %.lr.ph.i57.i.i.prol ]
  %i.is = icmp eq i32 %i.il, 1
  br i1 %i.is, label %._crit_edge.loopexit.i61.i.i, label %.lr.ph.i57.i.i

._crit_edge.loopexit.i61.i.i:                     ; preds = %.lr.ph.i57.i.i, %.lr.ph.i57.i.i.prol.loopexit
  %.pre.i62.i.i = load ptr, ptr %i.hv, align 8, !tbaa !23
  br label %basicblock_insert_instruction.exit64.i.i

.lr.ph.i57.i.i:                                   ; preds = %.lr.ph.i57.i.i.prol.loopexit, %.lr.ph.i57.i.i
  %indvars.iv.i58.i.i = phi i64 [ %indvars.iv.next19.i62.i.i.1, %.lr.ph.i57.i.i ], [ %indvars.iv.i58.i.i.unr, %.lr.ph.i57.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv.i59.i.i = phi i64 [ %indvars.iv.next.i60.i.i.1, %.lr.ph.i57.i.i ], [ %indvars.iv.i59.i.i.unr, %.lr.ph.i57.i.i.prol.loopexit ] ; 3 uses
  %i.it = load ptr, ptr %i.hv, align 8, !tbaa !23 ; 2 uses
  %i.iu = getelementptr [40 x i8], ptr %i.it, i64 %indvars.iv.i59.i.i
  %37 = shl i64 %indvars.iv.i58.i.i, 32
  %sext.i60.i.i = add i64 %37, -8589934592
  %38 = ashr exact i64 %sext.i60.i.i, 32
  %39 = getelementptr [40 x i8], ptr %i.it, i64 %38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.iu, ptr noundef nonnull align 8 dereferenceable(40) %39, i64 40, i1 false), !tbaa.struct !53
  %i.iv = load ptr, ptr %i.hv, align 8, !tbaa !23 ; 2 uses
  %i.iw = getelementptr [40 x i8], ptr %i.iv, i64 %indvars.iv.i59.i.i
  %40 = getelementptr i8, ptr %i.iw, i64 -40
  %i.ix = shl i64 %indvars.iv.i58.i.i, 32
  %sext93 = add i64 %i.ix, -12884901888
  %i.iy = ashr exact i64 %sext93, 32
  %i.iz = getelementptr [40 x i8], ptr %i.iv, i64 %i.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 8 dereferenceable(40) %i.iz, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i60.i.i.1 = add nsw i64 %indvars.iv.i59.i.i, -2 ; 2 uses
  %.not85.i.i.1 = icmp eq i64 %indvars.iv.next.i60.i.i.1, 0
  %indvars.iv.next19.i62.i.i.1 = add nsw i64 %indvars.iv.i58.i.i, -2
  br i1 %.not85.i.i.1, label %._crit_edge.loopexit.i61.i.i, label %.lr.ph.i57.i.i, !llvm.loop !180

basicblock_insert_instruction.exit64.i.i:         ; preds = %._crit_edge.loopexit.i61.i.i, %bb.ab
  %i.ja = phi ptr [ %.pre.i62.i.i, %._crit_edge.loopexit.i61.i.i ], [ %i.ij, %bb.ab ] ; 4 uses
  store i32 60, ptr %i.ja, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store i32 %i.dc, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 -1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  br label %insert_prefix_instructions.exit.i

bb.ac:                                            ; preds = %basicblock_next_instr.exit.i51.i.i, %basicblock_next_instr.exit.thread.i63.i.i, %.loopexit.i33.i, %bb.u
  call void @PyMem_Free(ptr noundef nonnull %i.dh) #8
  br label %prepare_localsplus.exit.thread

insert_prefix_instructions.exit.i:                ; preds = %basicblock_insert_instruction.exit64.i.i, %bb.z
  %i.jb = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.jc = load ptr, ptr %i.cr, align 8, !tbaa !183
  %i.jd = getelementptr i8, ptr %i.jc, i64 16
  %.val34.i34.i = load i64, ptr %i.jd, align 8, !tbaa !185
  %i.je = trunc i64 %.val34.i34.i to i32          ; 3 uses
  %i.jf = load ptr, ptr %i.cv, align 8, !tbaa !189
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  %.val33.i35.i = load i64, ptr %i.jg, align 8, !tbaa !185
  %i.jh = trunc i64 %.val33.i35.i to i32
  %i.ji = load ptr, ptr %i.cz, align 8, !tbaa !190
  %i.jj = getelementptr i8, ptr %i.ji, i64 16
  %.val.i36.i = load i64, ptr %i.jj, align 8, !tbaa !185
  %i.jk = trunc i64 %.val.i36.i to i32
  %i.jl = add i32 %i.jk, %i.jh                    ; 4 uses
  %i.jm = icmp sgt i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph.preheader.i40.i, label %.preheader35.i.i

.lr.ph.preheader.i40.i:                           ; preds = %insert_prefix_instructions.exit.i
  %wide.trip.count.i41.i = zext nneg i32 %i.jl to i64 ; 2 uses
  %xtraiter76 = and i64 %wide.trip.count.i41.i, 1
  %i.jn = icmp eq i32 %i.jl, 1
  br i1 %i.jn, label %.lr.ph.i42.i.epil.preheader, label %.lr.ph.preheader.i40.i.new

.lr.ph.preheader.i40.i.new:                       ; preds = %.lr.ph.preheader.i40.i
  %unroll_iter81 = and i64 %wide.trip.count.i41.i, 2147483646
  br label %.lr.ph.i42.i

.preheader35.i.i.loopexit.unr-lcssa:              ; preds = %bb.aj
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %.preheader35.i.i, label %.lr.ph.i42.i.epil.preheader

.lr.ph.i42.i.epil.preheader:                      ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i40.i
  %indvars.iv.i43.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i40.i ], [ %indvars.iv.next.i44.i.1, %.preheader35.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.03136.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i40.i ], [ %.1.i.i.1, %.preheader35.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod80 = trunc i32 %i.jl to i1
  call void @llvm.assume(i1 %lcmp.mod80)
  %indvars43.i.i.epil = trunc i64 %indvars.iv.i43.i.epil.init to i32
  %i.jo = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i43.i.epil.init ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !7  ; 2 uses
  %i.jq = add i32 %indvars43.i.i.epil, %i.je
  %i.jr = icmp eq i32 %i.jp, %i.jq
  br i1 %i.jr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i42.i.epil.preheader
  %i.js = add i32 %.03136.i.i.epil.init, 1
  br label %.preheader35.i.i

bb.ae:                                            ; preds = %.lr.ph.i42.i.epil.preheader
  %i.jt = sub i32 %i.jp, %.03136.i.i.epil.init
  store i32 %i.jt, ptr %i.jo, align 4, !tbaa !7
  br label %.preheader35.i.i

.preheader35.i.i:                                 ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %bb.ae, %bb.ad, %insert_prefix_instructions.exit.i
  %.031.lcssa.i.i = phi i32 [ 0, %insert_prefix_instructions.exit.i ], [ %.1.i.i.1, %.preheader35.i.i.loopexit.unr-lcssa ], [ %.03136.i.i.epil.init, %bb.ae ], [ %i.js, %bb.ad ] ; 2 uses
  %.not40.i.i = icmp eq ptr %i.jb, null
  br i1 %.not40.i.i, label %fix_cell_offsets.exit.i, label %.preheader.i37.i

.lr.ph.i42.i:                                     ; preds = %bb.aj, %.lr.ph.preheader.i40.i.new
  %indvars.iv.i43.i = phi i64 [ 0, %.lr.ph.preheader.i40.i.new ], [ %indvars.iv.next.i44.i.1, %bb.aj ] ; 4 uses
  %.03136.i.i = phi i32 [ 0, %.lr.ph.preheader.i40.i.new ], [ %.1.i.i.1, %bb.aj ] ; 3 uses
  %niter82 = phi i64 [ 0, %.lr.ph.preheader.i40.i.new ], [ %niter82.next.1, %bb.aj ]
  %indvars43.i.i = trunc i64 %indvars.iv.i43.i to i32
  %i.ju = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.i43.i ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !7  ; 2 uses
  %i.jw = add i32 %indvars43.i.i, %i.je
  %i.jx = icmp eq i32 %i.jv, %i.jw
  br i1 %i.jx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i42.i
  %i.jy = sub i32 %i.jv, %.03136.i.i
  store i32 %i.jy, ptr %i.ju, align 4, !tbaa !7
  br label %.lr.ph.i42.i.1

bb.ag:                                            ; preds = %.lr.ph.i42.i
  %i.jz = add i32 %.03136.i.i, 1
  br label %.lr.ph.i42.i.1

.lr.ph.i42.i.1:                                   ; preds = %bb.ag, %bb.af
  %.1.i.i = phi i32 [ %.03136.i.i, %bb.af ], [ %i.jz, %bb.ag ] ; 3 uses
  %indvars.iv.next.i44.i = or disjoint i64 %indvars.iv.i43.i, 1 ; 2 uses
  %indvars43.i.i.1 = trunc i64 %indvars.iv.next.i44.i to i32
  %i.ka = getelementptr [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i44.i ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !7  ; 2 uses
  %i.kc = add i32 %indvars43.i.i.1, %i.je
  %i.kd = icmp eq i32 %i.kb, %i.kc
  br i1 %i.kd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i42.i.1
  %i.ke = add i32 %.1.i.i, 1
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i42.i.1
  %i.kf = sub i32 %i.kb, %.1.i.i
  store i32 %i.kf, ptr %i.ka, align 4, !tbaa !7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i.i.1 = phi i32 [ %.1.i.i, %bb.ai ], [ %i.ke, %bb.ah ] ; 3 uses
  %indvars.iv.next.i44.i.1 = add nuw nsw i64 %indvars.iv.i43.i, 2 ; 2 uses
  %niter82.next.1 = add i64 %niter82, 2           ; 2 uses
  %niter82.ncmp.1 = icmp eq i64 %niter82.next.1, %unroll_iter81
  br i1 %niter82.ncmp.1, label %.preheader35.i.i.loopexit.unr-lcssa, label %.lr.ph.i42.i, !llvm.loop !197

.preheader.i37.i:                                 ; preds = %.preheader35.i.i, %._crit_edge.i38.i
  %.02941.i.i = phi ptr [ %i.ku, %._crit_edge.i38.i ], [ %i.jb, %.preheader35.i.i ] ; 3 uses
  %i.kg = getelementptr i8, ptr %.02941.i.i, i64 40
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !28 ; 4 uses
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.lr.ph39.i.i, label %._crit_edge.i38.i

.lr.ph39.i.i:                                     ; preds = %.preheader.i37.i
  %i.kj = getelementptr i8, ptr %.02941.i.i, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !23 ; 3 uses
  %wide.trip.count47.i.i = zext nneg i32 %i.kh to i64 ; 2 uses
  %xtraiter83 = and i64 %wide.trip.count47.i.i, 1
  %i.kl = icmp eq i32 %i.kh, 1
  br i1 %i.kl, label %.epil.preheader, label %.lr.ph39.i.i.new

.lr.ph39.i.i.new:                                 ; preds = %.lr.ph39.i.i
  %unroll_iter87 = and i64 %wide.trip.count47.i.i, 2147483646
  br label %bb.al

._crit_edge.i38.i.loopexit.unr-lcssa:             ; preds = %bb.ap
  %lcmp.mod85.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod85.not, label %._crit_edge.i38.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i38.i.loopexit.unr-lcssa, %.lr.ph39.i.i
  %indvars.iv44.i.i.epil.init = phi i64 [ 0, %.lr.ph39.i.i ], [ %indvars.iv.next45.i.i.1, %._crit_edge.i38.i.loopexit.unr-lcssa ]
  %lcmp.mod86 = trunc i32 %i.kh to i1
  call void @llvm.assume(i1 %lcmp.mod86)
  %i.km = getelementptr [40 x i8], ptr %i.kk, i64 %indvars.iv44.i.i.epil.init ; 2 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !29
  switch i32 %i.kn, label %._crit_edge.i38.i [
    i32 97, label %bb.ak
    i32 261, label %bb.ak
    i32 83, label %bb.ak
    i32 111, label %bb.ak
    i32 62, label %bb.ak
    i32 90, label %bb.ak
  ]

bb.ak:                                            ; preds = %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader
  %i.ko = getelementptr i8, ptr %i.km, i64 4      ; 2 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !43
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr [4 x i8], ptr %i.dh, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !7
  store i32 %i.ks, ptr %i.ko, align 4, !tbaa !43
  br label %._crit_edge.i38.i

._crit_edge.i38.i:                                ; preds = %._crit_edge.i38.i.loopexit.unr-lcssa, %bb.ak, %.epil.preheader, %.preheader.i37.i
  %i.kt = getelementptr i8, ptr %.02941.i.i, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !36 ; 2 uses
  %.not.i39.i = icmp eq ptr %i.ku, null
  br i1 %.not.i39.i, label %fix_cell_offsets.exit.i, label %.preheader.i37.i, !llvm.loop !198

bb.al:                                            ; preds = %bb.ap, %.lr.ph39.i.i.new
  %indvars.iv44.i.i = phi i64 [ 0, %.lr.ph39.i.i.new ], [ %indvars.iv.next45.i.i.1, %bb.ap ] ; 3 uses
  %niter88 = phi i64 [ 0, %.lr.ph39.i.i.new ], [ %niter88.next.1, %bb.ap ]
  %i.kv = getelementptr [40 x i8], ptr %i.kk, i64 %indvars.iv44.i.i ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !29
  switch i32 %i.kw, label %bb.an [
    i32 97, label %bb.am
    i32 261, label %bb.am
    i32 83, label %bb.am
    i32 111, label %bb.am
    i32 62, label %bb.am
    i32 90, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %i.kx = getelementptr i8, ptr %i.kv, i64 4      ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !43
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr [4 x i8], ptr %i.dh, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !7
  store i32 %i.lb, ptr %i.kx, align 4, !tbaa !43
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.lc = getelementptr [40 x i8], ptr %i.kk, i64 %indvars.iv44.i.i ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 40
end_hunk_1
