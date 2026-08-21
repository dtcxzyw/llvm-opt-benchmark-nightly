inline.NumInlined: 591
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 30
begin_hunk_0_@Of_ObjMergeOrder:bb.a
  %.epil.init1094 = phi i32 [ 0, %.lr.ph.i301.us.us.us ], [ %i.amz, %._crit_edge.i308.us.us.us.loopexit.unr-lcssa ]
  %lcmp.mod1098 = trunc i32 %i.ame to i1
  call void @llvm.assume(i1 %lcmp.mod1098)
  %i.and = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.i305.us.us.us.epil.init
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !42
  %i.anf = sext i32 %i.ane to i64                 ; 2 uses
  %i.ang = getelementptr inbounds [4 x i8], ptr %.val.i302.us.us.us, i64 %i.anf
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !42
  %i.ani = call noundef i32 @llvm.smax.i32(i32 %.epil.init1094, i32 %i.anh) ; 2 uses
  store i32 %i.ani, ptr %i.amf, align 8, !tbaa !84
  %i.anj = getelementptr inbounds [4 x i8], ptr %.val23.i303.us.us.us, i64 %i.anf
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !42
  %i.anl = add nsw i32 %i.ank, %.epil.init1092    ; 2 uses
  store i32 %i.anl, ptr %i.amg, align 4, !tbaa !86
  br label %._crit_edge.i308.us.us.us

._crit_edge.i308.us.us.us:                        ; preds = %.epil.preheader1089, %._crit_edge.i308.us.us.us.loopexit.unr-lcssa, %bb.bf
  %i.anm = phi i32 [ 0, %bb.bf ], [ %i.anc, %._crit_edge.i308.us.us.us.loopexit.unr-lcssa ], [ %i.anl, %.epil.preheader1089 ]
  %i.ann = phi i32 [ 0, %bb.bf ], [ %i.amz, %._crit_edge.i308.us.us.us.loopexit.unr-lcssa ], [ %i.ani, %.epil.preheader1089 ]
  %i.ano = icmp ugt i32 %i.amd, 268435455
  %i.anp = zext i1 %i.ano to i32
  %i.anq = add nuw nsw i32 %i.ann, %i.anp
  store i32 %i.anq, ptr %i.amf, align 8, !tbaa !84
  %i.anr = icmp ult i32 %i.amd, 268435456
  br i1 %i.anr, label %Of_CutParams.exit310.us.us.us, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge.i308.us.us.us
  %i.ans = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 28
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !102
  %i.anv = add nsw i32 %i.anu, %i.ame
  %i.anw = mul nsw i32 %i.anv, 100
  br label %Of_CutParams.exit310.us.us.us

Of_CutParams.exit310.us.us.us:                    ; preds = %bb.bh, %._crit_edge.i308.us.us.us
  %.0.i.i309.us.us.us = phi i32 [ %i.anw, %bb.bh ], [ 0, %._crit_edge.i308.us.us.us ]
  %i.anx = add nsw i32 %.0.i.i309.us.us.us, %i.anm
  %i.any = sdiv i32 %i.anx, %i.xp
  store i32 %i.any, ptr %i.amg, align 4, !tbaa !86
  %i.anz = icmp eq i32 %.4549.us.us.us, 0
  br i1 %i.anz, label %Of_SetAddCut.exit.us.us.us, label %bb.bi

bb.bi:                                            ; preds = %Of_CutParams.exit310.us.us.us
  br i1 %i.zv, label %.lr.ph.i.i312.us.us.us, label %Of_SetSortByArea.exit.i.us.us.us

.lr.ph.i.i312.us.us.us:                           ; preds = %bb.bi
  %i.aoa = zext nneg i32 %.4549.us.us.us to i64   ; 4 uses
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aoa
  br label %.outer.i.i.us.us.us

.outer.i.i.us.us.us:                              ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %.lr.ph.i.i312.us.us.us
  %indvars.iv.ph.i.i.us.us.us = phi i64 [ %indvars.iv.next74.i.i.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us ], [ 0, %.lr.ph.i.i312.us.us.us ] ; 2 uses
  %i.aoc = phi i1 [ false, %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us ], [ true, %.lr.ph.i.i312.us.us.us ]
  %i.aod = load ptr, ptr %i.aob, align 8, !tbaa !93 ; 4 uses
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 16
  %i.aof = load i32, ptr %i.aoe, align 8
  %.fr.i.us.us.us = freeze i32 %i.aof
  %i.aog = lshr i32 %.fr.i.us.us.us, 27           ; 3 uses
  %i.aoh = icmp eq i32 %i.aog, 0
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aod, i64 20
  br i1 %i.aoh, label %.outer.i.split.us.i.us.us.us, label %.outer.i.split.i.us.us.us

.outer.i.split.i.us.us.us:                        ; preds = %.outer.i.i.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us
  %indvars.iv.i.i313.us.us.us = phi i64 [ %indvars.iv.next.i.i314.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us ], [ %indvars.iv.ph.i.i.us.us.us, %.outer.i.i.us.us.us ] ; 3 uses
  %i.aoj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i313.us.us.us
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !93 ; 4 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aok, i64 16
  %i.aom = load i32, ptr %i.aol, align 8          ; 2 uses
  %i.aon = lshr i32 %i.aom, 27                    ; 2 uses
  %i.aoo = icmp samesign ult i32 %i.aog, %i.aon
  br i1 %i.aoo, label %bb.bj, label %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us

bb.bj:                                            ; preds = %.outer.i.split.i.us.us.us
  %i.aop = load i64, ptr %i.aod, align 8, !tbaa !90 ; 2 uses
  %i.aoq = load i64, ptr %i.aok, align 8, !tbaa !90
  %i.aor = and i64 %i.aoq, %i.aop
  %i.aos = icmp eq i64 %i.aor, %i.aop
  br i1 %i.aos, label %.lr.ph.i.i.i.us.us.us, label %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us

.lr.ph.i.i.i.us.us.us:                            ; preds = %bb.bj
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aok, i64 20
  %wide.trip.count.i.i.i.us.us.us = zext nneg i32 %i.aon to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bn, %.lr.ph.i.i.i.us.us.us
  %indvars.iv.i.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i.i.us.us.us ], [ %indvars.iv.next.i.i.i.us.us.us, %bb.bn ] ; 2 uses
  %.038.i.i.i.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.us.us.us ], [ %.1.i.i.i.us.us.us, %bb.bn ] ; 3 uses
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %indvars.iv.i.i.i.us.us.us
  %i.aov = load i32, ptr %i.aou, align 4, !tbaa !42 ; 2 uses
  %i.aow = sext i32 %.038.i.i.i.us.us.us to i64
  %i.aox = getelementptr inbounds [4 x i8], ptr %i.aoi, i64 %i.aow
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !42 ; 2 uses
  %i.aoz = icmp sgt i32 %i.aov, %i.aoy
  br i1 %i.aoz, label %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.apa = icmp eq i32 %i.aov, %i.aoy
  br i1 %i.apa, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.apb = add nsw i32 %.038.i.i.i.us.us.us, 1    ; 2 uses
  %i.apc = icmp eq i32 %i.apb, %i.aog
  br i1 %i.apc, label %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.1.i.i.i.us.us.us = phi i32 [ %i.apb, %bb.bm ], [ %.038.i.i.i.us.us.us, %bb.bl ]
  %indvars.iv.next.i.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i.i.us.us.us = icmp eq i64 %indvars.iv.next.i.i.i.us.us.us, %wide.trip.count.i.i.i.us.us.us
  br i1 %exitcond.not.i.i.i.us.us.us, label %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, label %bb.bk, !llvm.loop !108

Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us: ; preds = %bb.bk, %bb.bn, %bb.bj, %.outer.i.split.i.us.us.us
  %indvars.iv.next.i.i314.us.us.us = add nuw nsw i64 %indvars.iv.i.i313.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i315.us.us.us = icmp eq i64 %indvars.iv.next.i.i314.us.us.us, %i.aoa
  br i1 %exitcond.not.i.i315.us.us.us, label %._crit_edge.i.i316.us.us.us, label %.outer.i.split.i.us.us.us, !llvm.loop !114

.outer.i.split.us.i.us.us.us:                     ; preds = %.outer.i.i.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  %indvars.iv.i.us.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.i.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us ], [ %indvars.iv.ph.i.i.us.us.us, %.outer.i.i.us.us.us ] ; 3 uses
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i.us.us.us
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !93 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 16
  %i.apg = load i32, ptr %i.apf, align 8          ; 2 uses
  %.not.i319.us.us.us = icmp ult i32 %i.apg, 134217728
  br i1 %.not.i319.us.us.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us, label %bb.bo

bb.bo:                                            ; preds = %.outer.i.split.us.i.us.us.us
  %i.aph = load i64, ptr %i.aod, align 8, !tbaa !90 ; 2 uses
  %i.api = load i64, ptr %i.ape, align 8, !tbaa !90
  %i.apj = and i64 %i.api, %i.aph
  %i.apk = icmp eq i64 %i.apj, %i.aph
  br i1 %i.apk, label %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us

Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us: ; preds = %bb.bo, %.outer.i.split.us.i.us.us.us
  %indvars.iv.next.i.us.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.i.us.us.us, %i.aoa
  br i1 %exitcond.not.i.us.i.us.us.us, label %._crit_edge.i.i316.us.us.us, label %.outer.i.split.us.i.us.us.us, !llvm.loop !114

Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us: ; preds = %bb.bo, %bb.bm
  %indvars.iv.i19.i.us.us.us = phi i64 [ %indvars.iv.i.i313.us.us.us, %bb.bm ], [ %indvars.iv.i.us.i.us.us.us, %bb.bo ]
  %.pn.i.us.us.us = phi ptr [ %i.aok, %bb.bm ], [ %i.ape, %bb.bo ]
  %i.apl = phi i32 [ %i.aom, %bb.bm ], [ %i.apg, %bb.bo ]
  %i.apm = getelementptr inbounds nuw i8, ptr %.pn.i.us.us.us, i64 16
  %i.apn = or i32 %i.apl, -134217728
  store i32 %i.apn, ptr %i.apm, align 8
  %indvars.iv.next74.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i19.i.us.us.us, 1 ; 2 uses
  %exitcond.not75.i.i.us.us.us = icmp eq i64 %indvars.iv.next74.i.i.us.us.us, %i.aoa
  br i1 %exitcond.not75.i.i.us.us.us, label %.preheader.i.i317.us.us.us, label %.outer.i.i.us.us.us, !llvm.loop !114

._crit_edge.i.i316.us.us.us:                      ; preds = %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  br i1 %i.aoc, label %Of_SetLastCutContainsArea.exit.i.us.us.us, label %.preheader.i.i317.us.us.us

.preheader.i.i317.us.us.us:                       ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %._crit_edge.i.i316.us.us.us
  %i.apo = add nuw i32 %.4549.us.us.us, 1
  %wide.trip.count62.i.i.us.us.us = zext i32 %i.apo to i64
  br label %.lr.ph55.i.i.us.us.us

.lr.ph55.i.i.us.us.us:                            ; preds = %bb.bs, %.preheader.i.i317.us.us.us
  %indvars.iv59.i.i.us.us.us = phi i64 [ 0, %.preheader.i.i317.us.us.us ], [ %indvars.iv.next60.i.i.us.us.us, %bb.bs ] ; 3 uses
  %.04054.i.i.us.us.us = phi i32 [ 0, %.preheader.i.i317.us.us.us ], [ %.141.i.i.us.us.us, %bb.bs ] ; 3 uses
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i.us.us.us ; 2 uses
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !93 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 16
  %i.aps = load i32, ptr %i.apr, align 8
  %i.apt = icmp ugt i32 %i.aps, -134217729
  br i1 %i.apt, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph55.i.i.us.us.us
  %i.apu = sext i32 %.04054.i.i.us.us.us to i64   ; 2 uses
  %i.apv = icmp sgt i64 %indvars.iv59.i.i.us.us.us, %i.apu
  br i1 %i.apv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.apw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.apu ; 2 uses
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !93
  store ptr %i.apq, ptr %i.apw, align 8, !tbaa !93
  store ptr %i.apx, ptr %i.app, align 8, !tbaa !93
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.apy = add nsw i32 %.04054.i.i.us.us.us, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph55.i.i.us.us.us
  %.141.i.i.us.us.us = phi i32 [ %.04054.i.i.us.us.us, %.lr.ph55.i.i.us.us.us ], [ %i.apy, %bb.br ] ; 2 uses
  %indvars.iv.next60.i.i.us.us.us = add nuw nsw i64 %indvars.iv59.i.i.us.us.us, 1 ; 2 uses
  %exitcond63.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next60.i.i.us.us.us, %wide.trip.count62.i.i.us.us.us
  br i1 %exitcond63.not.i.i.us.us.us, label %._crit_edge56.loopexit.i.i.us.us.us, label %.lr.ph55.i.i.us.us.us, !llvm.loop !115

._crit_edge56.loopexit.i.i.us.us.us:              ; preds = %bb.bs
  %i.apz = add nsw i32 %.141.i.i.us.us.us, -1
  br label %Of_SetLastCutContainsArea.exit.i.us.us.us

Of_SetLastCutContainsArea.exit.i.us.us.us:        ; preds = %._crit_edge56.loopexit.i.i.us.us.us, %._crit_edge.i.i316.us.us.us
  %.0.i.i318.us.us.us = phi i32 [ %i.apz, %._crit_edge56.loopexit.i.i.us.us.us ], [ %.4549.us.us.us, %._crit_edge.i.i316.us.us.us ] ; 7 uses
  %i.aqa = icmp sgt i32 %.0.i.i318.us.us.us, 0
  br i1 %i.aqa, label %.lr.ph.i8.i.us.us.us.preheader, label %Of_SetSortByArea.exit.i.us.us.us

.lr.ph.i8.i.us.us.us.preheader:                   ; preds = %Of_SetLastCutContainsArea.exit.i.us.us.us
  %i.aqb = zext nneg i32 %.0.i.i318.us.us.us to i64
  br label %.lr.ph.i8.i.us.us.us

.lr.ph.i8.i.us.us.us:                             ; preds = %Of_CutCompareArea.exit.i.i.us.us.us, %.lr.ph.i8.i.us.us.us.preheader
  %indvars.iv654 = phi i64 [ %i.aqb, %.lr.ph.i8.i.us.us.us.preheader ], [ %indvars.iv.next655, %Of_CutCompareArea.exit.i.i.us.us.us ] ; 3 uses
  %i.aqc = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv654 ; 3 uses
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 -8   ; 2 uses
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !93 ; 4 uses
  %i.aqf = load ptr, ptr %i.aqc, align 8, !tbaa !93 ; 4 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !84 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %i.aqj = load i32, ptr %i.aqi, align 8, !tbaa !84 ; 2 uses
  %i.aqk = icmp slt i32 %i.aqh, %i.aqj
  br i1 %i.aqk, label %Of_SetSortByArea.exit.i.us.us.us, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i8.i.us.us.us
  %i.aql = icmp sgt i32 %i.aqh, %i.aqj
  br i1 %i.aql, label %Of_CutCompareArea.exit.i.i.us.us.us, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqe, i64 12
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !86 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqf, i64 12
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !86 ; 2 uses
  %i.aqq = icmp slt i32 %i.aqn, %i.aqp
  br i1 %i.aqq, label %Of_SetSortByArea.exit.i.us.us.us, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aqr = icmp sgt i32 %i.aqn, %i.aqp
  br i1 %i.aqr, label %Of_CutCompareArea.exit.i.i.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %i.aqt = load i32, ptr %i.aqs, align 8
  %i.aqu = lshr i32 %i.aqt, 27
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqf, i64 16
  %i.aqw = load i32, ptr %i.aqv, align 8
  %i.aqx = lshr i32 %i.aqw, 27
  %i.aqy = icmp samesign ult i32 %i.aqu, %i.aqx
  br i1 %i.aqy, label %Of_SetSortByArea.exit.i.us.us.us, label %Of_CutCompareArea.exit.i.i.us.us.us

Of_CutCompareArea.exit.i.i.us.us.us:              ; preds = %bb.bw, %bb.bv, %bb.bt
  store ptr %i.aqf, ptr %i.aqd, align 8, !tbaa !93
  store ptr %i.aqe, ptr %i.aqc, align 8, !tbaa !93
  %indvars.iv.next655 = add nsw i64 %indvars.iv654, -1
  %i.aqz = icmp sgt i64 %indvars.iv654, 1
  br i1 %i.aqz, label %.lr.ph.i8.i.us.us.us, label %Of_SetSortByArea.exit.i.us.us.us, !llvm.loop !116

Of_SetSortByArea.exit.i.us.us.us:                 ; preds = %.lr.ph.i8.i.us.us.us, %bb.bu, %bb.bw, %Of_CutCompareArea.exit.i.i.us.us.us, %Of_SetLastCutContainsArea.exit.i.us.us.us, %bb.bi
  %.0.i10.i.us.us.us = phi i32 [ %.4549.us.us.us, %bb.bi ], [ %.0.i.i318.us.us.us, %Of_SetLastCutContainsArea.exit.i.us.us.us ], [ %.0.i.i318.us.us.us, %Of_CutCompareArea.exit.i.i.us.us.us ], [ %.0.i.i318.us.us.us, %bb.bw ], [ %.0.i.i318.us.us.us, %bb.bu ], [ %.0.i.i318.us.us.us, %.lr.ph.i8.i.us.us.us ]
  %i.ara = add nsw i32 %.0.i10.i.us.us.us, 1
  %i.arb = call noundef i32 @llvm.smin.i32(i32 %i.ara, i32 %i.xq)
  br label %Of_SetAddCut.exit.us.us.us

Of_SetAddCut.exit.us.us.us:                       ; preds = %bb.z, %bb.ae, %bb.al, %bb.ah, %bb.ak, %Of_SetSortByArea.exit.i.us.us.us, %Of_CutParams.exit310.us.us.us, %bb.q
  %.5.us.us.us = phi i32 [ %.4549.us.us.us, %bb.q ], [ %.4549.us.us.us, %bb.al ], [ 1, %Of_CutParams.exit310.us.us.us ], [ %i.arb, %Of_SetSortByArea.exit.i.us.us.us ], [ %.4549.us.us.us, %bb.ae ], [ %.4549.us.us.us, %bb.ah ], [ %.4549.us.us.us, %bb.ak ], [ %.4549.us.us.us, %bb.z ] ; 4 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.0550.us.us.us, i64 48 ; 2 uses
  %i.ard = icmp ult ptr %i.arc, %i.xa
  br i1 %i.ard, label %bb.q, label %._crit_edge552.us.us.us, !llvm.loop !117

._crit_edge552.us.us.us:                          ; preds = %Of_SetAddCut.exit.us.us.us
  %i.are = getelementptr inbounds nuw i8, ptr %.0146554.us.us.us, i64 48 ; 2 uses
  %i.arf = icmp ult ptr %i.are, %i.kc
  br i1 %i.arf, label %.preheader497.us.us.us, label %._crit_edge556.split.us.us.us, !llvm.loop !118

._crit_edge556.split.us.us.us:                    ; preds = %._crit_edge552.us.us.us
  %i.arg = getelementptr inbounds nuw i8, ptr %.0148558.us.us, i64 48 ; 2 uses
  %i.arh = icmp ult ptr %i.arg, %i.ka
  br i1 %i.arh, label %.preheader498.us.us, label %._crit_edge561, !llvm.loop !119

._crit_edge561:                                   ; preds = %._crit_edge556.split.us.us.us, %.preheader498.lr.ph, %Of_ManPrepareCuts.exit263
  %.2.lcssa = phi i32 [ %.1, %Of_ManPrepareCuts.exit263 ], [ %.1, %.preheader498.lr.ph ], [ %.5.us.us.us, %._crit_edge556.split.us.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit488

Gia_ObjIsMuxId.exit.thread:                       ; preds = %bb.n, %Gia_ObjIsMuxId.exit
  %.val175 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.ari = and i64 %.val175, 2147483648
  %.not.i.i320 = icmp ne i64 %i.ari, 0
  %i.arj = and i64 %.val175, 536870911
  %i.ark = icmp eq i64 %i.arj, 536870911
  %narrow.i.not.i = or i1 %.not.i.i320, %i.ark
  br i1 %narrow.i.not.i, label %Gia_ObjIsXor.exit, label %bb.bx

bb.bx:                                            ; preds = %Gia_ObjIsMuxId.exit.thread
  %i.arl = trunc i64 %.val175 to i32
  %i.arm = and i32 %i.arl, 536870911
  %i.arn = lshr i64 %.val175, 32
  %i.aro = trunc nuw i64 %i.arn to i32
  %i.arp = and i32 %i.aro, 536870911
  %i.arq = icmp samesign uge i32 %i.arm, %i.arp
  br label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %Gia_ObjIsMuxId.exit.thread, %bb.bx
  %.not36.i = phi i1 [ true, %Gia_ObjIsMuxId.exit.thread ], [ %i.arq, %bb.bx ]
  %i.arr = mul nsw i32 %.1.i183, %.1.i
  %i.ars = sitofp i32 %i.arr to double
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aru = load double, ptr %i.art, align 8, !tbaa !106
  %i.arv = fadd double %i.aru, %i.ars
  store double %i.arv, ptr %i.art, align 8, !tbaa !106
  %i.arw = icmp sgt i32 %.1.i, 0
  br i1 %i.arw, label %.preheader.lr.ph, label %.loopexit488

.preheader.lr.ph:                                 ; preds = %Gia_ObjIsXor.exit
  %i.arx = icmp sgt i32 %.1.i183, 0
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.arz = icmp eq i32 %i.n, 0                    ; 2 uses
  %wide.trip.count158.i = zext i32 %i.n to i64    ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.asc = getelementptr i8, ptr %0, i64 80
  %i.asd = getelementptr i8, ptr %0, i64 64
  %i.ase = call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %i.asf = add nsw i32 %i.p, -1
  br i1 %i.arx, label %.preheader.us, label %.loopexit488

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge574.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge574.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.6577.us = phi i32 [ %.8.us, %._crit_edge574.us ], [ %.1, %.preheader.lr.ph ]
  %.1149576.us = phi ptr [ %i.bkv, %._crit_edge574.us ], [ %2, %.preheader.lr.ph ] ; 5 uses
  %i.asg = mul i64 %indvar, 48
  %i.ash = getelementptr i8, ptr %2, i64 %i.asg
  %scevgep661 = getelementptr i8, ptr %i.ash, i64 20
  %i.asi = getelementptr inbounds nuw i8, ptr %.1149576.us, i64 16
  %i.asj = getelementptr inbounds nuw i8, ptr %.1149576.us, i64 20 ; 3 uses
  br label %bb.by

bb.by:                                            ; preds = %.preheader.us, %Of_SetAddCut.exit455.us
  %indvar665 = phi i64 [ 0, %.preheader.us ], [ %indvar.next666, %Of_SetAddCut.exit455.us ] ; 2 uses
  %.7569.us = phi i32 [ %.6577.us, %.preheader.us ], [ %.8.us, %Of_SetAddCut.exit455.us ] ; 18 uses
  %.1147568.us = phi ptr [ %3, %.preheader.us ], [ %i.bkt, %Of_SetAddCut.exit455.us ] ; 5 uses
  %i.ask = mul i64 %indvar665, 48
  %i.asl = getelementptr i8, ptr %3, i64 %i.ask
  %scevgep667 = getelementptr i8, ptr %i.asl, i64 20
  %i.asm = load i32, ptr %i.asi, align 8          ; 3 uses
  %i.asn = lshr i32 %i.asm, 27                    ; 11 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %.1147568.us, i64 16
  %i.asp = load i32, ptr %i.aso, align 8          ; 3 uses
  %i.asq = lshr i32 %i.asp, 27                    ; 11 uses
  %i.asr = add nuw nsw i32 %i.asq, %i.asn
  %i.ass = icmp sgt i32 %i.asr, %i.n
  br i1 %i.ass, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ast = load i64, ptr %.1149576.us, align 8, !tbaa !90
  %i.asu = load i64, ptr %.1147568.us, align 8, !tbaa !90
  %i.asv = or i64 %i.asu, %i.ast
  %i.asw = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.asv)
  %i.asx = trunc nuw nsw i64 %i.asw to i32
  %i.asy = icmp slt i32 %i.n, %i.asx
  br i1 %i.asy, label %Of_SetAddCut.exit455.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.asz = load double, ptr %i.ary, align 8, !tbaa !106
  %i.ata = fadd double %i.asz, 1.000000e+00
  store double %i.ata, ptr %i.ary, align 8, !tbaa !106
  %i.atb = sext i32 %.7569.us to i64
  %i.atc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.atb
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !93 ; 19 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %.1147568.us, i64 20 ; 3 uses
  %i.atf = getelementptr i8, ptr %i.atd, i64 20   ; 15 uses
  %i.atg = icmp eq i32 %i.asn, %i.n
  %i.ath = icmp eq i32 %i.asq, %i.n
  %or.cond.i.us = and i1 %i.atg, %i.ath
  br i1 %or.cond.i.us, label %.preheader.i.us, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ati = icmp eq i32 %i.asn, 0
  br i1 %i.ati, label %.loopexit120.i.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.atj = icmp eq i32 %i.asq, 0
  br i1 %i.atj, label %.loopexit121.i.us, label %.preheader118.i.us

.preheader118.i.us:                               ; preds = %bb.cc
  br i1 %i.arz, label %Of_SetAddCut.exit455.us, label %.lr.ph.i321.us

.lr.ph.i321.us:                                   ; preds = %.preheader118.i.us, %bb.ci
  %indvars.iv657 = phi i64 [ %indvars.iv.next658, %bb.ci ], [ 0, %.preheader118.i.us ] ; 2 uses
  %.091123.i.us = phi i32 [ %.192.i.us, %bb.ci ], [ 0, %.preheader118.i.us ] ; 5 uses
  %.196122.i.us = phi i32 [ %.297.i.us, %bb.ci ], [ 0, %.preheader118.i.us ] ; 5 uses
  %i.atk = sext i32 %.196122.i.us to i64
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.asj, i64 %i.atk
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !42 ; 4 uses
  %i.atn = sext i32 %.091123.i.us to i64
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.ate, i64 %i.atn
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !42 ; 3 uses
  %i.atq = icmp slt i32 %i.atm, %i.atp
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 4 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr %i.atf, i64 %indvars.iv657 ; 3 uses
  br i1 %i.atq, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i321.us
  %i.ats = icmp sgt i32 %i.atm, %i.atp
  br i1 %i.ats, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.att = add nsw i32 %.196122.i.us, 1           ; 3 uses
  store i32 %i.atm, ptr %i.atr, align 4, !tbaa !42
  %i.atu = add nsw i32 %.091123.i.us, 1           ; 3 uses
  %.not.i322.us = icmp slt i32 %i.att, %i.asn
  br i1 %.not.i322.us, label %bb.cf, label %.loopexit120.i.us.loopexit
end_hunk_0
begin_hunk_1_@Of_ObjMergeOrder:bb.a
  %.epil.init1106 = phi i32 [ 0, %.lr.ph.i400.us ], [ %i.bgq, %._crit_edge.i407.us.loopexit.unr-lcssa ]
  %lcmp.mod1110 = trunc i32 %i.bfv to i1
  call void @llvm.assume(i1 %lcmp.mod1110)
  %i.bgu = getelementptr inbounds nuw [4 x i8], ptr %i.atf, i64 %indvars.iv.i404.us.epil.init
  %i.bgv = load i32, ptr %i.bgu, align 4, !tbaa !42
  %i.bgw = sext i32 %i.bgv to i64                 ; 2 uses
  %i.bgx = getelementptr inbounds [4 x i8], ptr %.val.i401.us, i64 %i.bgw
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !42
  %i.bgz = call noundef i32 @llvm.smax.i32(i32 %.epil.init1106, i32 %i.bgy) ; 2 uses
  store i32 %i.bgz, ptr %i.bfw, align 8, !tbaa !84
  %i.bha = getelementptr inbounds [4 x i8], ptr %.val23.i402.us, i64 %i.bgw
  %i.bhb = load i32, ptr %i.bha, align 4, !tbaa !42
  %i.bhc = add nsw i32 %i.bhb, %.epil.init1104    ; 2 uses
  store i32 %i.bhc, ptr %i.bfx, align 4, !tbaa !86
  br label %._crit_edge.i407.us

._crit_edge.i407.us:                              ; preds = %.epil.preheader1101, %._crit_edge.i407.us.loopexit.unr-lcssa, %bb.dj
  %i.bhd = phi i32 [ 0, %bb.dj ], [ %i.bgt, %._crit_edge.i407.us.loopexit.unr-lcssa ], [ %i.bhc, %.epil.preheader1101 ]
  %i.bhe = phi i32 [ 0, %bb.dj ], [ %i.bgq, %._crit_edge.i407.us.loopexit.unr-lcssa ], [ %i.bgz, %.epil.preheader1101 ]
  %i.bhf = icmp ugt i32 %i.bfu, 268435455
  %i.bhg = zext i1 %i.bhf to i32
  %i.bhh = add nuw nsw i32 %i.bhe, %i.bhg
  store i32 %i.bhh, ptr %i.bfw, align 8, !tbaa !84
  %i.bhi = icmp ult i32 %i.bfu, 268435456
  br i1 %i.bhi, label %Of_CutParams.exit409.us, label %bb.dl

bb.dl:                                            ; preds = %._crit_edge.i407.us
  %i.bhj = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 28
  %i.bhl = load i32, ptr %i.bhk, align 4, !tbaa !102
  %i.bhm = add nsw i32 %i.bhl, %i.bfv
  %i.bhn = mul nsw i32 %i.bhm, 100
  br label %Of_CutParams.exit409.us

Of_CutParams.exit409.us:                          ; preds = %bb.dl, %._crit_edge.i407.us
  %.0.i.i408.us = phi i32 [ %i.bhn, %bb.dl ], [ 0, %._crit_edge.i407.us ]
  %i.bho = add nsw i32 %.0.i.i408.us, %i.bhd
  %i.bhp = sdiv i32 %i.bho, %i.ase
  store i32 %i.bhp, ptr %i.bfx, align 4, !tbaa !86
  %i.bhq = icmp eq i32 %.7569.us, 0
  br i1 %i.bhq, label %Of_SetAddCut.exit455.us, label %bb.dm

bb.dm:                                            ; preds = %Of_CutParams.exit409.us
  br i1 %i.avj, label %.lr.ph.i.i413.us, label %Of_SetSortByArea.exit.i410.us

.lr.ph.i.i413.us:                                 ; preds = %bb.dm
  %i.bhr = zext nneg i32 %.7569.us to i64         ; 4 uses
  %i.bhs = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bhr
  br label %.outer.i.i414.us

.outer.i.i414.us:                                 ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us, %.lr.ph.i.i413.us
  %indvars.iv.ph.i.i415.us = phi i64 [ %indvars.iv.next74.i.i447.us, %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us ], [ 0, %.lr.ph.i.i413.us ] ; 2 uses
  %i.bht = phi i1 [ false, %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us ], [ true, %.lr.ph.i.i413.us ]
  %i.bhu = load ptr, ptr %i.bhs, align 8, !tbaa !93 ; 4 uses
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhu, i64 16
  %i.bhw = load i32, ptr %i.bhv, align 8
  %.fr.i416.us = freeze i32 %i.bhw
  %i.bhx = lshr i32 %.fr.i416.us, 27              ; 3 uses
  %i.bhy = icmp eq i32 %i.bhx, 0
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhu, i64 20
  br i1 %i.bhy, label %.outer.i.split.us.i449.us, label %.outer.i.split.i417.us

.outer.i.split.i417.us:                           ; preds = %.outer.i.i414.us, %Of_SetCutIsContainedOrder.exit.thread.i.i419.us
  %indvars.iv.i.i418.us = phi i64 [ %indvars.iv.next.i.i420.us, %Of_SetCutIsContainedOrder.exit.thread.i.i419.us ], [ %indvars.iv.ph.i.i415.us, %.outer.i.i414.us ] ; 3 uses
  %i.bia = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i418.us
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !93 ; 4 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 16
  %i.bid = load i32, ptr %i.bic, align 8          ; 2 uses
  %i.bie = lshr i32 %i.bid, 27                    ; 2 uses
  %i.bif = icmp samesign ult i32 %i.bhx, %i.bie
  br i1 %i.bif, label %bb.dn, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us

bb.dn:                                            ; preds = %.outer.i.split.i417.us
  %i.big = load i64, ptr %i.bhu, align 8, !tbaa !90 ; 2 uses
  %i.bih = load i64, ptr %i.bib, align 8, !tbaa !90
  %i.bii = and i64 %i.bih, %i.big
  %i.bij = icmp eq i64 %i.bii, %i.big
  br i1 %i.bij, label %.lr.ph.i.i.i437.us, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us

.lr.ph.i.i.i437.us:                               ; preds = %bb.dn
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bib, i64 20
  %wide.trip.count.i.i.i438.us = zext nneg i32 %i.bie to i64
  br label %bb.do

bb.do:                                            ; preds = %bb.dr, %.lr.ph.i.i.i437.us
  %indvars.iv.i.i.i439.us = phi i64 [ 0, %.lr.ph.i.i.i437.us ], [ %indvars.iv.next.i.i.i442.us, %bb.dr ] ; 2 uses
  %.038.i.i.i440.us = phi i32 [ 0, %.lr.ph.i.i.i437.us ], [ %.1.i.i.i441.us, %bb.dr ] ; 3 uses
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.bik, i64 %indvars.iv.i.i.i439.us
  %i.bim = load i32, ptr %i.bil, align 4, !tbaa !42 ; 2 uses
  %i.bin = sext i32 %.038.i.i.i440.us to i64
  %i.bio = getelementptr inbounds [4 x i8], ptr %i.bhz, i64 %i.bin
  %i.bip = load i32, ptr %i.bio, align 4, !tbaa !42 ; 2 uses
  %i.biq = icmp sgt i32 %i.bim, %i.bip
  br i1 %i.biq, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bir = icmp eq i32 %i.bim, %i.bip
  br i1 %i.bir, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.bis = add nsw i32 %.038.i.i.i440.us, 1       ; 2 uses
  %i.bit = icmp eq i32 %i.bis, %i.bhx
  br i1 %i.bit, label %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.1.i.i.i441.us = phi i32 [ %i.bis, %bb.dq ], [ %.038.i.i.i440.us, %bb.dp ]
  %indvars.iv.next.i.i.i442.us = add nuw nsw i64 %indvars.iv.i.i.i439.us, 1 ; 2 uses
  %exitcond.not.i.i.i443.us = icmp eq i64 %indvars.iv.next.i.i.i442.us, %wide.trip.count.i.i.i438.us
  br i1 %exitcond.not.i.i.i443.us, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us, label %bb.do, !llvm.loop !108

Of_SetCutIsContainedOrder.exit.thread.i.i419.us:  ; preds = %bb.do, %bb.dr, %bb.dn, %.outer.i.split.i417.us
  %indvars.iv.next.i.i420.us = add nuw nsw i64 %indvars.iv.i.i418.us, 1 ; 2 uses
  %exitcond.not.i.i421.us = icmp eq i64 %indvars.iv.next.i.i420.us, %i.bhr
  br i1 %exitcond.not.i.i421.us, label %._crit_edge.i.i422.us, label %.outer.i.split.i417.us, !llvm.loop !114

.outer.i.split.us.i449.us:                        ; preds = %.outer.i.i414.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us
  %indvars.iv.i.us.i450.us = phi i64 [ %indvars.iv.next.i.us.i453.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us ], [ %indvars.iv.ph.i.i415.us, %.outer.i.i414.us ] ; 3 uses
  %i.biu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i450.us
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !93 ; 3 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %i.biv, i64 16
  %i.bix = load i32, ptr %i.biw, align 8          ; 2 uses
  %.not.i451.us = icmp ult i32 %i.bix, 134217728
  br i1 %.not.i451.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us, label %bb.ds

bb.ds:                                            ; preds = %.outer.i.split.us.i449.us
  %i.biy = load i64, ptr %i.bhu, align 8, !tbaa !90 ; 2 uses
  %i.biz = load i64, ptr %i.biv, align 8, !tbaa !90
  %i.bja = and i64 %i.biz, %i.biy
  %i.bjb = icmp eq i64 %i.bja, %i.biy
  br i1 %i.bjb, label %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us

Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us: ; preds = %bb.ds, %.outer.i.split.us.i449.us
  %indvars.iv.next.i.us.i453.us = add nuw nsw i64 %indvars.iv.i.us.i450.us, 1 ; 2 uses
  %exitcond.not.i.us.i454.us = icmp eq i64 %indvars.iv.next.i.us.i453.us, %i.bhr
  br i1 %exitcond.not.i.us.i454.us, label %._crit_edge.i.i422.us, label %.outer.i.split.us.i449.us, !llvm.loop !114

Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us: ; preds = %bb.ds, %bb.dq
  %indvars.iv.i19.i445.us = phi i64 [ %indvars.iv.i.i418.us, %bb.dq ], [ %indvars.iv.i.us.i450.us, %bb.ds ]
  %.pn.i446.us = phi ptr [ %i.bib, %bb.dq ], [ %i.biv, %bb.ds ]
  %i.bjc = phi i32 [ %i.bid, %bb.dq ], [ %i.bix, %bb.ds ]
  %i.bjd = getelementptr inbounds nuw i8, ptr %.pn.i446.us, i64 16
  %i.bje = or i32 %i.bjc, -134217728
  store i32 %i.bje, ptr %i.bjd, align 8
  %indvars.iv.next74.i.i447.us = add nuw nsw i64 %indvars.iv.i19.i445.us, 1 ; 2 uses
  %exitcond.not75.i.i448.us = icmp eq i64 %indvars.iv.next74.i.i447.us, %i.bhr
  br i1 %exitcond.not75.i.i448.us, label %.preheader.i.i423.us, label %.outer.i.i414.us, !llvm.loop !114

._crit_edge.i.i422.us:                            ; preds = %Of_SetCutIsContainedOrder.exit.thread.i.i419.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us
  br i1 %i.bht, label %Of_SetLastCutContainsArea.exit.i432.us, label %.preheader.i.i423.us

.preheader.i.i423.us:                             ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us, %._crit_edge.i.i422.us
  %i.bjf = add nuw i32 %.7569.us, 1
  %wide.trip.count62.i.i424.us = zext i32 %i.bjf to i64
  br label %.lr.ph55.i.i425.us

.lr.ph55.i.i425.us:                               ; preds = %bb.dw, %.preheader.i.i423.us
  %indvars.iv59.i.i426.us = phi i64 [ 0, %.preheader.i.i423.us ], [ %indvars.iv.next60.i.i429.us, %bb.dw ] ; 3 uses
  %.04054.i.i427.us = phi i32 [ 0, %.preheader.i.i423.us ], [ %.141.i.i428.us, %bb.dw ] ; 3 uses
  %i.bjg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i426.us ; 2 uses
  %i.bjh = load ptr, ptr %i.bjg, align 8, !tbaa !93 ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 16
  %i.bjj = load i32, ptr %i.bji, align 8
  %i.bjk = icmp ugt i32 %i.bjj, -134217729
  br i1 %i.bjk, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph55.i.i425.us
  %i.bjl = sext i32 %.04054.i.i427.us to i64      ; 2 uses
  %i.bjm = icmp sgt i64 %indvars.iv59.i.i426.us, %i.bjl
  br i1 %i.bjm, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.bjn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bjl ; 2 uses
  %i.bjo = load ptr, ptr %i.bjn, align 8, !tbaa !93
  store ptr %i.bjh, ptr %i.bjn, align 8, !tbaa !93
  store ptr %i.bjo, ptr %i.bjg, align 8, !tbaa !93
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.bjp = add nsw i32 %.04054.i.i427.us, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph55.i.i425.us
  %.141.i.i428.us = phi i32 [ %.04054.i.i427.us, %.lr.ph55.i.i425.us ], [ %i.bjp, %bb.dv ] ; 2 uses
  %indvars.iv.next60.i.i429.us = add nuw nsw i64 %indvars.iv59.i.i426.us, 1 ; 2 uses
  %exitcond63.not.i.i430.us = icmp eq i64 %indvars.iv.next60.i.i429.us, %wide.trip.count62.i.i424.us
  br i1 %exitcond63.not.i.i430.us, label %._crit_edge56.loopexit.i.i431.us, label %.lr.ph55.i.i425.us, !llvm.loop !115

._crit_edge56.loopexit.i.i431.us:                 ; preds = %bb.dw
  %i.bjq = add nsw i32 %.141.i.i428.us, -1
  br label %Of_SetLastCutContainsArea.exit.i432.us

Of_SetLastCutContainsArea.exit.i432.us:           ; preds = %._crit_edge56.loopexit.i.i431.us, %._crit_edge.i.i422.us
  %.0.i.i433.us = phi i32 [ %i.bjq, %._crit_edge56.loopexit.i.i431.us ], [ %.7569.us, %._crit_edge.i.i422.us ] ; 7 uses
  %i.bjr = icmp sgt i32 %.0.i.i433.us, 0
  br i1 %i.bjr, label %.lr.ph.i8.i434.us.preheader, label %Of_SetSortByArea.exit.i410.us

.lr.ph.i8.i434.us.preheader:                      ; preds = %Of_SetLastCutContainsArea.exit.i432.us
  %i.bjs = zext nneg i32 %.0.i.i433.us to i64
  br label %.lr.ph.i8.i434.us

.lr.ph.i8.i434.us:                                ; preds = %Of_CutCompareArea.exit.i.i436.us, %.lr.ph.i8.i434.us.preheader
  %indvars.iv669 = phi i64 [ %i.bjs, %.lr.ph.i8.i434.us.preheader ], [ %indvars.iv.next670, %Of_CutCompareArea.exit.i.i436.us ] ; 3 uses
  %i.bjt = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv669 ; 3 uses
  %i.bju = getelementptr i8, ptr %i.bjt, i64 -8   ; 2 uses
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !93 ; 4 uses
  %i.bjw = load ptr, ptr %i.bjt, align 8, !tbaa !93 ; 4 uses
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjv, i64 8
  %i.bjy = load i32, ptr %i.bjx, align 8, !tbaa !84 ; 2 uses
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjw, i64 8
  %i.bka = load i32, ptr %i.bjz, align 8, !tbaa !84 ; 2 uses
  %i.bkb = icmp slt i32 %i.bjy, %i.bka
  br i1 %i.bkb, label %Of_SetSortByArea.exit.i410.us, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i8.i434.us
  %i.bkc = icmp sgt i32 %i.bjy, %i.bka
  br i1 %i.bkc, label %Of_CutCompareArea.exit.i.i436.us, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjv, i64 12
  %i.bke = load i32, ptr %i.bkd, align 4, !tbaa !86 ; 2 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bjw, i64 12
  %i.bkg = load i32, ptr %i.bkf, align 4, !tbaa !86 ; 2 uses
  %i.bkh = icmp slt i32 %i.bke, %i.bkg
  br i1 %i.bkh, label %Of_SetSortByArea.exit.i410.us, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.bki = icmp sgt i32 %i.bke, %i.bkg
  br i1 %i.bki, label %Of_CutCompareArea.exit.i.i436.us, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bjv, i64 16
  %i.bkk = load i32, ptr %i.bkj, align 8
  %i.bkl = lshr i32 %i.bkk, 27
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bjw, i64 16
  %i.bkn = load i32, ptr %i.bkm, align 8
  %i.bko = lshr i32 %i.bkn, 27
  %i.bkp = icmp samesign ult i32 %i.bkl, %i.bko
  br i1 %i.bkp, label %Of_SetSortByArea.exit.i410.us, label %Of_CutCompareArea.exit.i.i436.us

Of_CutCompareArea.exit.i.i436.us:                 ; preds = %bb.ea, %bb.dz, %bb.dx
  store ptr %i.bjw, ptr %i.bju, align 8, !tbaa !93
  store ptr %i.bjv, ptr %i.bjt, align 8, !tbaa !93
  %indvars.iv.next670 = add nsw i64 %indvars.iv669, -1
  %i.bkq = icmp sgt i64 %indvars.iv669, 1
  br i1 %i.bkq, label %.lr.ph.i8.i434.us, label %Of_SetSortByArea.exit.i410.us, !llvm.loop !116

Of_SetSortByArea.exit.i410.us:                    ; preds = %.lr.ph.i8.i434.us, %bb.dy, %bb.ea, %Of_CutCompareArea.exit.i.i436.us, %Of_SetLastCutContainsArea.exit.i432.us, %bb.dm
  %.0.i10.i411.us = phi i32 [ %.7569.us, %bb.dm ], [ %.0.i.i433.us, %Of_SetLastCutContainsArea.exit.i432.us ], [ %.0.i.i433.us, %Of_CutCompareArea.exit.i.i436.us ], [ %.0.i.i433.us, %bb.ea ], [ %.0.i.i433.us, %bb.dy ], [ %.0.i.i433.us, %.lr.ph.i8.i434.us ]
  %i.bkr = add nsw i32 %.0.i10.i411.us, 1
  %i.bks = call noundef i32 @llvm.smin.i32(i32 %i.bkr, i32 %i.asf)
  br label %Of_SetAddCut.exit455.us

Of_SetAddCut.exit455.us:                          ; preds = %bb.ci, %.lr.ph134.i.us, %bb.cm, %bb.ct, %bb.cp, %bb.cs, %Of_SetSortByArea.exit.i410.us, %Of_CutParams.exit409.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.bz
  %.8.us = phi i32 [ %.7569.us, %bb.bz ], [ %.7569.us, %.preheader118.i.us ], [ 1, %Of_CutParams.exit409.us ], [ %i.bks, %Of_SetSortByArea.exit.i410.us ], [ %.7569.us, %.loopexit120.i.us ], [ %.7569.us, %bb.cs ], [ %.7569.us, %.loopexit121.i.us ], [ %.7569.us, %.lr.ph134.i.us ], [ %.7569.us, %bb.cp ], [ %.7569.us, %bb.cm ], [ %.7569.us, %bb.ct ], [ %.7569.us, %bb.ci ] ; 3 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %.1147568.us, i64 48 ; 2 uses
  %i.bku = icmp ult ptr %i.bkt, %i.kc
  %indvar.next666 = add i64 %indvar665, 1
  br i1 %i.bku, label %bb.by, label %._crit_edge574.us, !llvm.loop !122

._crit_edge574.us:                                ; preds = %Of_SetAddCut.exit455.us
  %i.bkv = getelementptr inbounds nuw i8, ptr %.1149576.us, i64 48 ; 2 uses
  %i.bkw = icmp ult ptr %i.bkv, %i.ka
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bkw, label %.preheader.us, label %.loopexit488, !llvm.loop !123

.loopexit488:                                     ; preds = %._crit_edge574.us, %.preheader.lr.ph, %Gia_ObjIsXor.exit, %._crit_edge561
  %.9 = phi i32 [ %.2.lcssa, %._crit_edge561 ], [ %.1, %Gia_ObjIsXor.exit ], [ %.1, %.preheader.lr.ph ], [ %.8.us, %._crit_edge574.us ] ; 7 uses
  %i.bkx = load ptr, ptr %i.c, align 16, !tbaa !93 ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkx, i64 12
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !86
  %i.bla = getelementptr i8, ptr %0, i64 64
  %.val176 = load ptr, ptr %i.bla, align 8, !tbaa !41
  %i.blb = getelementptr inbounds [4 x i8], ptr %.val176, i64 %i.f
  store i32 %i.bkz, ptr %i.blb, align 4, !tbaa !42
  %i.blc = getelementptr inbounds nuw i8, ptr %i.bkx, i64 8
  %i.bld = load i32, ptr %i.blc, align 8, !tbaa !84
  %i.ble = getelementptr i8, ptr %0, i64 80
  %.val177 = load ptr, ptr %i.ble, align 8, !tbaa !41
  %i.blf = getelementptr inbounds [4 x i8], ptr %.val177, i64 %i.f
  store i32 %i.bld, ptr %i.blf, align 4, !tbaa !42
  %i.blg = icmp sgt i32 %.9, 0                    ; 2 uses
  br i1 %i.blg, label %.lr.ph.preheader.i458, label %._crit_edge.i456

.lr.ph.preheader.i458:                            ; preds = %.loopexit488
  %wide.trip.count.i459 = zext nneg i32 %.9 to i64 ; 2 uses
  %xtraiter1113 = and i64 %wide.trip.count.i459, 3 ; 3 uses
  %i.blh = icmp ult i32 %.9, 4
  br i1 %i.blh, label %.lr.ph.i460.epil.preheader, label %.lr.ph.preheader.i458.new

.lr.ph.preheader.i458.new:                        ; preds = %.lr.ph.preheader.i458
  %unroll_iter1117 = and i64 %wide.trip.count.i459, 2147483644
  br label %.lr.ph.i460

.lr.ph.i460:                                      ; preds = %.lr.ph.i460, %.lr.ph.preheader.i458.new
  %indvars.iv.i461 = phi i64 [ 0, %.lr.ph.preheader.i458.new ], [ %indvars.iv.next.i462.3, %.lr.ph.i460 ] ; 5 uses
  %.03945.i = phi i32 [ 1, %.lr.ph.preheader.i458.new ], [ %i.bmm, %.lr.ph.i460 ]
  %niter1118 = phi i64 [ 0, %.lr.ph.preheader.i458.new ], [ %niter1118.next.3, %.lr.ph.i460 ]
  %i.bli = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.blj = load ptr, ptr %i.bli, align 16, !tbaa !93
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 16
  %i.bll = load i32, ptr %i.blk, align 8
  %i.blm = lshr i32 %i.bll, 27
  %i.bln = add nuw nsw i32 %.03945.i, 4
  %i.blo = add nuw nsw i32 %i.bln, %i.blm
  %i.blp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 8
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !93
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 16
  %i.blt = load i32, ptr %i.bls, align 8
  %i.blu = lshr i32 %i.blt, 27
  %i.blv = add nuw nsw i32 %i.blo, 4
  %i.blw = add nuw nsw i32 %i.blv, %i.blu
  %i.blx = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 16
  %i.blz = load ptr, ptr %i.bly, align 16, !tbaa !93
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 16
  %i.bmb = load i32, ptr %i.bma, align 8
  %i.bmc = lshr i32 %i.bmb, 27
  %i.bmd = add nuw nsw i32 %i.blw, 4
  %i.bme = add nuw nsw i32 %i.bmd, %i.bmc
  %i.bmf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 24
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !93
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 16
  %i.bmj = load i32, ptr %i.bmi, align 8
  %i.bmk = lshr i32 %i.bmj, 27
  %i.bml = add nuw nsw i32 %i.bme, 4
  %i.bmm = add nuw nsw i32 %i.bml, %i.bmk         ; 3 uses
  %indvars.iv.next.i462.3 = add nuw nsw i64 %indvars.iv.i461, 4 ; 2 uses
  %niter1118.next.3 = add i64 %niter1118, 4       ; 2 uses
  %niter1118.ncmp.3 = icmp eq i64 %niter1118.next.3, %unroll_iter1117
  br i1 %niter1118.ncmp.3, label %._crit_edge.i456.loopexit.unr-lcssa, label %.lr.ph.i460, !llvm.loop !124

._crit_edge.i456.loopexit.unr-lcssa:              ; preds = %.lr.ph.i460
  %lcmp.mod1114.not = icmp eq i64 %xtraiter1113, 0
  br i1 %lcmp.mod1114.not, label %._crit_edge.i456, label %.lr.ph.i460.epil.preheader

.lr.ph.i460.epil.preheader:                       ; preds = %._crit_edge.i456.loopexit.unr-lcssa, %.lr.ph.preheader.i458
  %indvars.iv.i461.epil.init = phi i64 [ 0, %.lr.ph.preheader.i458 ], [ %indvars.iv.next.i462.3, %._crit_edge.i456.loopexit.unr-lcssa ]
  %.03945.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i458 ], [ %i.bmm, %._crit_edge.i456.loopexit.unr-lcssa ]
  %lcmp.mod1116 = icmp ne i64 %xtraiter1113, 0
  call void @llvm.assume(i1 %lcmp.mod1116)
  br label %.lr.ph.i460.epil

.lr.ph.i460.epil:                                 ; preds = %.lr.ph.i460.epil, %.lr.ph.i460.epil.preheader
  %indvars.iv.i461.epil = phi i64 [ %indvars.iv.i461.epil.init, %.lr.ph.i460.epil.preheader ], [ %indvars.iv.next.i462.epil, %.lr.ph.i460.epil ] ; 2 uses
  %.03945.i.epil = phi i32 [ %.03945.i.epil.init, %.lr.ph.i460.epil.preheader ], [ %i.bmt, %.lr.ph.i460.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i460.epil.preheader ], [ %epil.iter.next, %.lr.ph.i460.epil ]
  %i.bmn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461.epil
  %i.bmo = load ptr, ptr %i.bmn, align 8, !tbaa !93
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 16
  %i.bmq = load i32, ptr %i.bmp, align 8
  %i.bmr = lshr i32 %i.bmq, 27
  %i.bms = add nuw nsw i32 %.03945.i.epil, 4
  %i.bmt = add nuw nsw i32 %i.bms, %i.bmr         ; 2 uses
  %indvars.iv.next.i462.epil = add nuw nsw i64 %indvars.iv.i461.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1113
  br i1 %epil.iter.cmp.not, label %._crit_edge.i456, label %.lr.ph.i460.epil, !llvm.loop !125

._crit_edge.i456:                                 ; preds = %._crit_edge.i456.loopexit.unr-lcssa, %.lr.ph.i460.epil, %.loopexit488
  %.039.lcssa.i = phi i32 [ 1, %.loopexit488 ], [ %i.bmm, %._crit_edge.i456.loopexit.unr-lcssa ], [ %i.bmt, %.lr.ph.i460.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %.loopexit488 ], [ %.9, %.lr.ph.i460.epil ], [ %.9, %._crit_edge.i456.loopexit.unr-lcssa ]
  %i.bmu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bmv = load i32, ptr %i.bmu, align 8, !tbaa !58 ; 3 uses
  %i.bmw = and i32 %i.bmv, 65535
  %i.bmx = add nuw nsw i32 %i.bmw, %.039.lcssa.i
  %i.bmy = icmp samesign ugt i32 %i.bmx, 65535
  br i1 %i.bmy, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %._crit_edge.i456
  %i.bmz = and i32 %i.bmv, -65536
  %i.bna = add i32 %i.bmz, 65536                  ; 2 uses
  store i32 %i.bna, ptr %i.bmu, align 8, !tbaa !58
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge.i456
  %i.bnb = phi i32 [ %i.bna, %bb.eb ], [ %i.bmv, %._crit_edge.i456 ] ; 3 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bnd = getelementptr i8, ptr %0, i64 28       ; 3 uses
  %.val.i457 = load i32, ptr %i.bnd, align 4, !tbaa !75 ; 6 uses
  %i.bne = ashr i32 %i.bnb, 16                    ; 2 uses
  %i.bnf = icmp eq i32 %.val.i457, %i.bne
  br i1 %i.bnf, label %bb.ed, label %bb.em

bb.ed:                                            ; preds = %bb.ec
  %i.bng = call noalias dereferenceable_or_null(262144) ptr @calloc(i64 noundef 65536, i64 noundef 4) #25
  %i.bnh = load i32, ptr %i.bnc, align 8, !tbaa !60
  %i.bni = icmp eq i32 %.val.i457, %i.bnh
  br i1 %i.bni, label %bb.ee, label %.Vec_PtrPush.exit_crit_edge.i

.Vec_PtrPush.exit_crit_edge.i:                    ; preds = %bb.ed
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %Vec_PtrPush.exit.i

bb.ee:                                            ; preds = %bb.ed
  %i.bnj = icmp slt i32 %.val.i457, 16
  br i1 %i.bnj, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
end_hunk_1
begin_hunk_2_@Of_ObjMergeOrder:bb.a
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !93 ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 16 ; 3 uses
  %i.boq = load i32, ptr %i.bop, align 8          ; 2 uses
  %i.bor = call i32 @llvm.fshl.i32(i32 %i.boq, i32 %i.boq, i32 5)
  %i.bos = getelementptr inbounds nuw i8, ptr %.04049.i, i64 4 ; 2 uses
  store i32 %i.bor, ptr %.04049.i, align 4, !tbaa !42
  %i.bot = getelementptr inbounds nuw i8, ptr %i.boo, i64 20
  %i.bou = load i32, ptr %i.bop, align 8
  %i.bov = lshr i32 %i.bou, 25
  %i.bow = and i32 %i.bov, 124
  %i.box = zext nneg i32 %i.bow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bos, ptr nonnull align 4 %i.bot, i64 %i.box, i1 false)
  %i.boy = load i32, ptr %i.bop, align 8
  %i.boz = lshr i32 %i.boy, 27
  %i.bpa = zext nneg i32 %i.boz to i64
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bpa ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bpb, i8 -1, i64 12, i1 false)
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 12
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count60.i
  br i1 %exitcond61.not.i, label %Of_ManSaveCuts.exit, label %.lr.ph51.i, !llvm.loop !127

Of_ManSaveCuts.exit:                              ; preds = %.lr.ph51.i, %bb.em
  %.val165 = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.bpd = getelementptr inbounds [4 x i8], ptr %.val165, i64 %i.f
  store i32 %i.bod, ptr %i.bpd, align 4, !tbaa !42
  %i.bpe = sitofp i32 %.9 to double
  %i.bpf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bpg = load double, ptr %i.bpf, align 8, !tbaa !106
  %i.bph = fadd double %i.bpg, %i.bpe
  store double %i.bph, ptr %i.bpf, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @Of_SetAddCut(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.i, label %Of_SetSortByArea.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64                  ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  br label %.outer.i

.outer.i:                                         ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i, %.lr.ph.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next74.i, %Of_SetCutIsContainedOrder.exit.thread.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.e = phi i1 [ false, %Of_SetCutIsContainedOrder.exit.thread.thread.i ], [ true, %.lr.ph.i ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !93   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %.fr = freeze i32 %i.h
  %i.i = lshr i32 %.fr, 27                        ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  br i1 %i.j, label %.outer.i.split.us, label %.outer.i.split

.outer.i.split.us:                                ; preds = %.outer.i, %Of_SetCutIsContainedOrder.exit.thread.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %Of_SetCutIsContainedOrder.exit.thread.i.us ], [ %indvars.iv.ph.i, %.outer.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.us
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !93   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not = icmp ult i32 %i.o, 134217728
  br i1 %.not, label %Of_SetCutIsContainedOrder.exit.thread.i.us, label %bb.c

bb.c:                                             ; preds = %.outer.i.split.us
  %i.p = load i64, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !90
  %i.r = and i64 %i.q, %i.p
  %i.s = icmp eq i64 %i.r, %i.p
  br i1 %i.s, label %Of_SetCutIsContainedOrder.exit.thread.thread.i, label %Of_SetCutIsContainedOrder.exit.thread.i.us

Of_SetCutIsContainedOrder.exit.thread.i.us:       ; preds = %bb.c, %.outer.i.split.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.c
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.outer.i.split.us, !llvm.loop !114

.outer.i.split:                                   ; preds = %.outer.i, %Of_SetCutIsContainedOrder.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Of_SetCutIsContainedOrder.exit.thread.i ], [ %indvars.iv.ph.i, %.outer.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !93   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = lshr i32 %i.w, 27                        ; 2 uses
  %i.y = icmp samesign ult i32 %i.i, %i.x
  br i1 %i.y, label %bb.d, label %Of_SetCutIsContainedOrder.exit.thread.i

bb.d:                                             ; preds = %.outer.i.split
  %i.z = load i64, ptr %i.f, align 8, !tbaa !90   ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !90
  %i.ab = and i64 %i.aa, %i.z
  %i.ac = icmp eq i64 %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph.i.i, label %Of_SetCutIsContainedOrder.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %wide.trip.count.i.i = zext nneg i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.038.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !42 ; 2 uses
  %i.ag = sext i32 %.038.i.i to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !42 ; 2 uses
  %i.aj = icmp sgt i32 %i.af, %i.ai
  br i1 %i.aj, label %Of_SetCutIsContainedOrder.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %i.af, %i.ai
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %.038.i.i, 1                ; 2 uses
  %i.am = icmp eq i32 %i.al, %i.i
  br i1 %i.am, label %Of_SetCutIsContainedOrder.exit.thread.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i.i = phi i32 [ %i.al, %bb.g ], [ %.038.i.i, %bb.f ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Of_SetCutIsContainedOrder.exit.thread.i, label %bb.e, !llvm.loop !108

Of_SetCutIsContainedOrder.exit.thread.i:          ; preds = %bb.h, %bb.e, %bb.d, %.outer.i.split
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.outer.i.split, !llvm.loop !114

Of_SetCutIsContainedOrder.exit.thread.thread.i:   ; preds = %bb.c, %bb.g
  %indvars.iv.i19 = phi i64 [ %indvars.iv.i, %bb.g ], [ %indvars.iv.i.us, %bb.c ]
  %.pn = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.c ]
  %i.an = phi i32 [ %i.w, %bb.g ], [ %i.o, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ap = or i32 %i.an, -134217728
  store i32 %i.ap, ptr %i.ao, align 8
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not75.i = icmp eq i64 %indvars.iv.next74.i, %i.c
  br i1 %exitcond.not75.i, label %.preheader.i, label %.outer.i, !llvm.loop !114

._crit_edge.i:                                    ; preds = %Of_SetCutIsContainedOrder.exit.thread.i, %Of_SetCutIsContainedOrder.exit.thread.i.us
  br i1 %i.e, label %Of_SetLastCutContainsArea.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i, %._crit_edge.i
  %i.aq = add nuw i32 %1, 1
  %wide.trip.count62.i = zext i32 %i.aq to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %bb.l, %.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next60.i, %bb.l ] ; 3 uses
  %.04054.i = phi i32 [ 0, %.preheader.i ], [ %.141.i, %bb.l ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59.i ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !93 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 8
  %i.av = icmp ugt i32 %i.au, -134217729
  br i1 %i.av, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph55.i
  %i.aw = sext i32 %.04054.i to i64               ; 2 uses
  %i.ax = icmp sgt i64 %indvars.iv59.i, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aw ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93
  store ptr %i.as, ptr %i.ay, align 8, !tbaa !93
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = add nsw i32 %.04054.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph55.i
  %.141.i = phi i32 [ %.04054.i, %.lr.ph55.i ], [ %i.ba, %bb.k ] ; 2 uses
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge56.loopexit.i, label %.lr.ph55.i, !llvm.loop !115

._crit_edge56.loopexit.i:                         ; preds = %bb.l
  %i.bb = add nsw i32 %.141.i, -1
  br label %Of_SetLastCutContainsArea.exit

Of_SetLastCutContainsArea.exit:                   ; preds = %._crit_edge.i, %._crit_edge56.loopexit.i
  %.0.i = phi i32 [ %i.bb, %._crit_edge56.loopexit.i ], [ %1, %._crit_edge.i ] ; 7 uses
  %i.bc = icmp sgt i32 %.0.i, 0
  br i1 %i.bc, label %.lr.ph.preheader.i, label %Of_SetSortByArea.exit

.lr.ph.preheader.i:                               ; preds = %Of_SetLastCutContainsArea.exit
  %3 = zext nneg i32 %.0.i to i64
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %Of_CutCompareArea.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i9 = phi i64 [ %3, %.lr.ph.preheader.i ], [ %indvars.iv.next.i10, %Of_CutCompareArea.exit.i ] ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i9 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93 ; 4 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !93 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !84 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %i.bl = icmp slt i32 %i.bi, %i.bk
  br i1 %i.bl, label %Of_SetSortByArea.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i8
  %i.bm = icmp sgt i32 %i.bi, %i.bk
  br i1 %i.bm, label %Of_CutCompareArea.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !86 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !86 ; 2 uses
  %i.br = icmp slt i32 %i.bo, %i.bq
  br i1 %i.br, label %Of_SetSortByArea.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = icmp sgt i32 %i.bo, %i.bq
  br i1 %i.bs, label %Of_CutCompareArea.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = lshr i32 %i.bu, 27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = lshr i32 %i.bx, 27
  %i.bz = icmp samesign ult i32 %i.bv, %i.by
  br i1 %i.bz, label %Of_SetSortByArea.exit, label %Of_CutCompareArea.exit.i

Of_CutCompareArea.exit.i:                         ; preds = %bb.p, %bb.o, %bb.m
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !93
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !93
  %indvars.iv.next.i10 = add nsw i64 %indvars.iv.i9, -1
  %i.ca = icmp sgt i64 %indvars.iv.i9, 1
  br i1 %i.ca, label %.lr.ph.i8, label %Of_SetSortByArea.exit, !llvm.loop !116

Of_SetSortByArea.exit:                            ; preds = %.lr.ph.i8, %bb.n, %bb.p, %Of_CutCompareArea.exit.i, %bb.b, %Of_SetLastCutContainsArea.exit
  %.0.i10 = phi i32 [ %1, %bb.b ], [ %.0.i, %Of_SetLastCutContainsArea.exit ], [ %.0.i, %Of_CutCompareArea.exit.i ], [ %.0.i, %bb.p ], [ %.0.i, %bb.n ], [ %.0.i, %.lr.ph.i8 ]
  %i.cb = add nsw i32 %.0.i10, 1
  %i.cc = add nsw i32 %2, -1
  %i.cd = tail call noundef i32 @llvm.smin.i32(i32 %i.cb, i32 %i.cc)
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %Of_SetSortByArea.exit
  %.0 = phi i32 [ %i.cd, %Of_SetSortByArea.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Of_ManComputeCuts(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 64
  %i.f = getelementptr i8, ptr %0, i64 80
  %i.g = getelementptr i8, ptr %i.a, i64 32
  %.val3681 = load ptr, ptr %i.g, align 8, !tbaa !46 ; 2 uses
  %.not82 = icmp eq ptr %.val3681, null
  br i1 %.not82, label %.critedge, label %.lr.ph85

bb.b:                                             ; preds = %bb.f
  %i.h = getelementptr i8, ptr %i.ac, i64 32
  %.val36 = load ptr, ptr %i.h, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq ptr %.val36, null
  br i1 %.not, label %.critedge, label %.lr.ph85, !llvm.loop !128

.lr.ph85:                                         ; preds = %.lr.ph, %bb.b
  %.val3684 = phi ptr [ %.val36, %bb.b ], [ %.val3681, %.lr.ph ]
  %indvars.iv83 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph ] ; 5 uses
  %i.i = phi ptr [ %i.ac, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %.val3684, i64 %indvars.iv83
  %.val38 = load i64, ptr %i.j, align 4           ; 4 uses
  %i.k = and i64 %.val38, 2147483648
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = and i64 %.val38, 536870911
  %i.m = icmp ne i64 %i.l, 536870911
  %narrow.i = and i1 %.not.i, %i.m
  br i1 %narrow.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph85
  %i.n = trunc i64 %.val38 to i32
  %i.o = and i32 %i.n, 536870911                  ; 3 uses
  %i.p = lshr i64 %.val38, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = and i32 %i.q, 536870911
  %i.s = icmp eq i32 %i.o, %i.r
  %.not.i48 = icmp ne i32 %i.o, 536870911
  %or.cond.not.i = and i1 %.not.i48, %i.s
  %i.t = trunc nuw nsw i64 %indvars.iv83 to i32   ; 2 uses
  br i1 %or.cond.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = sub nsw i32 %i.t, %i.o
  %.val41 = load ptr, ptr %i.e, align 8, !tbaa !41 ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %.val41, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val41, i64 %indvars.iv83
  store i32 %i.x, ptr %i.y, align 4, !tbaa !42
  %.val40 = load ptr, ptr %i.f, align 8, !tbaa !41 ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.val40, i64 %i.v
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !42
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.val40, i64 %indvars.iv83
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !42
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @Of_ObjMergeOrder(ptr noundef nonnull %0, i32 noundef %i.t)
  %.pre = load ptr, ptr %0, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph85, %bb.e, %bb.d
  %i.ac = phi ptr [ %i.i, %.lr.ph85 ], [ %.pre, %bb.e ], [ %i.i, %bb.d ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !45 ; 3 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %bb.b, label %..critedge_crit_edge87, !llvm.loop !128

..critedge_crit_edge87:                           ; preds = %bb.f
  br label %.critedge, !llvm.loop !128

.critedge:                                        ; preds = %bb.b, %..critedge_crit_edge87, %.lr.ph
  %i.ah = phi i32 [ %i.ae, %..critedge_crit_edge87 ], [ %i.c, %.lr.ph ], [ %i.ae, %bb.b ] ; 2 uses
  %.lcssa57 = phi ptr [ %i.ac, %..critedge_crit_edge87 ], [ %i.a, %.lr.ph ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa57, i64 24
  %i.aj = icmp sgt i32 %i.ah, 0
  br i1 %i.aj, label %.lr.ph64, label %.critedge2

.lr.ph64:                                         ; preds = %.critedge
  %i.ak = getelementptr i8, ptr %.lcssa57, i64 32
  %.val = load ptr, ptr %i.ak, align 8, !tbaa !46 ; 2 uses
  %.not31 = icmp eq ptr %.val, null
  %i.al = getelementptr i8, ptr %0, i64 32
  %i.am = getelementptr i8, ptr %0, i64 48
  br i1 %.not31, label %.critedge2, label %.lr.ph64.split

.lr.ph64.split:                                   ; preds = %.lr.ph64, %Of_ManLiftCuts.exit
  %i.an = phi i32 [ %i.ck, %Of_ManLiftCuts.exit ], [ %i.ah, %.lr.ph64 ] ; 3 uses
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %Of_ManLiftCuts.exit ], [ 0, %.lr.ph64 ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv67
  %.val37 = load i64, ptr %i.ao, align 4          ; 4 uses
  %i.ap = and i64 %.val37, 2147483648
  %.not.i50 = icmp eq i64 %i.ap, 0
  %i.aq = and i64 %.val37, 536870911
  %i.ar = icmp ne i64 %i.aq, 536870911
  %narrow.i51 = and i1 %.not.i50, %i.ar
  br i1 %narrow.i51, label %bb.g, label %Of_ManLiftCuts.exit

bb.g:                                             ; preds = %.lr.ph64.split
  %i.as = trunc i64 %.val37 to i32
  %i.at = and i32 %i.as, 536870911                ; 2 uses
  %i.au = lshr i64 %.val37, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = and i32 %i.av, 536870911
  %i.ax = icmp eq i32 %i.at, %i.aw
  %.not.i52 = icmp ne i32 %i.at, 536870911
  %or.cond.not.i53 = and i1 %.not.i52, %i.ax
  br i1 %or.cond.not.i53, label %Of_ManLiftCuts.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val46 = load ptr, ptr %i.al, align 8, !tbaa !59
  %.val47 = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %indvars.iv67
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !42 ; 2 uses
  %i.ba = ashr i32 %i.az, 16
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %.val46, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76
  %i.be = and i32 %i.az, 65535
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bf ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !42 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.preheader.preheader.i, label %Of_ManLiftCuts.exit

.preheader.preheader.i:                           ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.bk = phi i32 [ %i.cf, %._crit_edge.i ], [ %i.bh, %.preheader.preheader.i ]
  %.05.i = phi ptr [ %i.ci, %._crit_edge.i ], [ %i.bj, %.preheader.preheader.i ] ; 9 uses
  %.0154.i = phi i32 [ %i.cg, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.0.val171.i = load i32, ptr %.05.i, align 4, !tbaa !42
  %i.bl = and i32 %.0.val171.i, 31                ; 3 uses
  %.not2.i = icmp eq i32 %i.bl, 0
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bm = zext nneg i32 %i.bl to i64              ; 4 uses
  %min.iters.check = icmp samesign ult i32 %i.bl, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.bm, 24                      ; 4 uses
  %i.bn = or disjoint i64 %n.vec, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i, i64 20 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bo, align 4, !tbaa !42
  %wide.load90 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !42
  %i.bq = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %i.br = shl nsw <4 x i32> %wide.load90, splat (i32 1)
  store <4 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !42
  store <4 x i32> %i.br, ptr %i.bp, align 4, !tbaa !42
  %i.bs = icmp eq i64 %n.vec, 8
  br i1 %i.bs, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i, i64 36 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i, i64 52 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !42
  %wide.load90.1 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !42
  %i.bv = shl nsw <4 x i32> %wide.load.1, splat (i32 1)
  %i.bw = shl nsw <4 x i32> %wide.load90.1, splat (i32 1)
  store <4 x i32> %i.bv, ptr %i.bt, align 4, !tbaa !42
  store <4 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !42
  %i.bx = icmp eq i64 %n.vec, 16
  br i1 %i.bx, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i, i64 68 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i, i64 84 ; 2 uses
  %wide.load.2 = load <4 x i32>, ptr %i.by, align 4, !tbaa !42
  %wide.load90.2 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !42
  %i.ca = shl nsw <4 x i32> %wide.load.2, splat (i32 1)
  %i.cb = shl nsw <4 x i32> %wide.load90.2, splat (i32 1)
  store <4 x i32> %i.ca, ptr %i.by, align 4, !tbaa !42
end_hunk_2
