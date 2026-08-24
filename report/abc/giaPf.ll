Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaPf?download=true
inline.NumInlined: 241
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Pf_ObjMergeOrder:bb.a
  %.epil.init1133 = phi i32 [ 0, %.lr.ph.i318.us.us.us ], [ %i.apb, %._crit_edge.i325.us.us.us.loopexit.unr-lcssa ]
  %lcmp.mod1137 = trunc i32 %i.aog to i1
  call void @llvm.assume(i1 %lcmp.mod1137)
  %i.apf = getelementptr inbounds nuw [4 x i8], ptr %i.aap, i64 %indvars.iv.i322.us.us.us.epil.init
  %i.apg = load i32, ptr %i.apf, align 4, !tbaa !34
  %i.aph = sext i32 %i.apg to i64                 ; 2 uses
  %i.api = getelementptr inbounds [4 x i8], ptr %.val.i319.us.us.us, i64 %i.aph
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !34
  %i.apk = call noundef i32 @llvm.smax.i32(i32 %.epil.init1133, i32 %i.apj) ; 2 uses
  store i32 %i.apk, ptr %i.aoh, align 8, !tbaa !129
  %i.apl = getelementptr inbounds [4 x i8], ptr %.val23.i320.us.us.us, i64 %i.aph
  %i.apm = load float, ptr %i.apl, align 4, !tbaa !112
  %i.apn = fadd float %.epil.init1131, %i.apm     ; 2 uses
  store float %i.apn, ptr %i.aoi, align 4, !tbaa !131
  br label %._crit_edge.i325.us.us.us

._crit_edge.i325.us.us.us:                        ; preds = %.epil.preheader1128, %._crit_edge.i325.us.us.us.loopexit.unr-lcssa, %bb.bh
  %i.apo = phi float [ 0.000000e+00, %bb.bh ], [ %i.ape, %._crit_edge.i325.us.us.us.loopexit.unr-lcssa ], [ %i.apn, %.epil.preheader1128 ]
  %i.app = phi i32 [ 0, %bb.bh ], [ %i.apb, %._crit_edge.i325.us.us.us.loopexit.unr-lcssa ], [ %i.apk, %.epil.preheader1128 ]
  %i.apq = icmp ugt i32 %i.akv, 268435455
  %i.apr = zext i1 %i.apq to i32
  %i.aps = add nuw nsw i32 %i.app, %i.apr
  store i32 %i.aps, ptr %i.aoh, align 8, !tbaa !129
  %i.apt = icmp ult i32 %i.akv, 268435456
  br i1 %i.apt, label %Pf_CutParams.exit327.us.us.us, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i325.us.us.us
  %i.apu = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apu, i64 28
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !144
  %i.apx = add nsw i32 %i.apw, %i.aog
  %i.apy = sitofp i32 %i.apx to float
  br label %Pf_CutParams.exit327.us.us.us

Pf_CutParams.exit327.us.us.us:                    ; preds = %bb.bj, %._crit_edge.i325.us.us.us
  %.0.i.i326.us.us.us = phi float [ %i.apy, %bb.bj ], [ 0.000000e+00, %._crit_edge.i325.us.us.us ]
  %i.apz = fadd float %i.apo, %.0.i.i326.us.us.us
  %i.aqa = fdiv float %i.apz, %i.zn
  store float %i.aqa, ptr %i.aoi, align 4, !tbaa !131
  %i.aqb = icmp eq i32 %.4588.us.us.us, 0
  br i1 %i.aqb, label %Pf_SetAddCut.exit.us.us.us, label %bb.bk

bb.bk:                                            ; preds = %Pf_CutParams.exit327.us.us.us
  br i1 %i.abw, label %.lr.ph.i.i329.us.us.us, label %Pf_SetSortByArea.exit.i.us.us.us

.lr.ph.i.i329.us.us.us:                           ; preds = %bb.bk
  %i.aqc = zext nneg i32 %.4588.us.us.us to i64   ; 4 uses
  %i.aqd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aqc
  br label %.outer.i.i.us.us.us

.outer.i.i.us.us.us:                              ; preds = %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %.lr.ph.i.i329.us.us.us
  %indvars.iv.ph.i.i.us.us.us = phi i64 [ %indvars.iv.next74.i.i.us.us.us, %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us ], [ 0, %.lr.ph.i.i329.us.us.us ] ; 2 uses
  %i.aqe = phi i1 [ false, %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us ], [ true, %.lr.ph.i.i329.us.us.us ]
  %i.aqf = load ptr, ptr %i.aqd, align 8, !tbaa !136 ; 4 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 16
  %i.aqh = load i32, ptr %i.aqg, align 8
  %.fr.i.us.us.us = freeze i32 %i.aqh
  %i.aqi = lshr i32 %.fr.i.us.us.us, 27           ; 3 uses
  %i.aqj = icmp eq i32 %i.aqi, 0
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqf, i64 20
  br i1 %i.aqj, label %.outer.i.split.us.i.us.us.us, label %.outer.i.split.i.us.us.us

.outer.i.split.i.us.us.us:                        ; preds = %.outer.i.i.us.us.us, %Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us
  %indvars.iv.i.i330.us.us.us = phi i64 [ %indvars.iv.next.i.i331.us.us.us, %Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us ], [ %indvars.iv.ph.i.i.us.us.us, %.outer.i.i.us.us.us ] ; 3 uses
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i330.us.us.us
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !136 ; 4 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 16
  %i.aqo = load i32, ptr %i.aqn, align 8          ; 2 uses
  %i.aqp = lshr i32 %i.aqo, 27                    ; 2 uses
  %i.aqq = icmp samesign ult i32 %i.aqi, %i.aqp
  br i1 %i.aqq, label %bb.bl, label %Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us

bb.bl:                                            ; preds = %.outer.i.split.i.us.us.us
  %i.aqr = load i64, ptr %i.aqf, align 8, !tbaa !133 ; 2 uses
  %i.aqs = load i64, ptr %i.aqm, align 8, !tbaa !133
  %i.aqt = and i64 %i.aqs, %i.aqr
  %i.aqu = icmp eq i64 %i.aqt, %i.aqr
  br i1 %i.aqu, label %.lr.ph.i.i.i.us.us.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us

.lr.ph.i.i.i.us.us.us:                            ; preds = %bb.bl
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqm, i64 20
  %wide.trip.count.i.i.i.us.us.us = zext nneg i32 %i.aqp to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.us.us.us
  %indvars.iv.i.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i.i.us.us.us ], [ %indvars.iv.next.i.i.i.us.us.us, %bb.bp ] ; 2 uses
  %.038.i.i.i.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.us.us.us ], [ %.1.i.i.i.us.us.us, %bb.bp ] ; 3 uses
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.aqv, i64 %indvars.iv.i.i.i.us.us.us
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !34 ; 2 uses
  %i.aqy = sext i32 %.038.i.i.i.us.us.us to i64
  %i.aqz = getelementptr inbounds [4 x i8], ptr %i.aqk, i64 %i.aqy
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !34 ; 2 uses
  %i.arb = icmp sgt i32 %i.aqx, %i.ara
  br i1 %i.arb, label %Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.arc = icmp eq i32 %i.aqx, %i.ara
  br i1 %i.arc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ard = add nsw i32 %.038.i.i.i.us.us.us, 1    ; 2 uses
  %i.are = icmp eq i32 %i.ard, %i.aqi
  br i1 %i.are, label %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1.i.i.i.us.us.us = phi i32 [ %i.ard, %bb.bo ], [ %.038.i.i.i.us.us.us, %bb.bn ]
  %indvars.iv.next.i.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i.i.us.us.us = icmp eq i64 %indvars.iv.next.i.i.i.us.us.us, %wide.trip.count.i.i.i.us.us.us
  br i1 %exitcond.not.i.i.i.us.us.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, label %bb.bm, !llvm.loop !150

Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us: ; preds = %bb.bm, %bb.bp, %bb.bl, %.outer.i.split.i.us.us.us
  %indvars.iv.next.i.i331.us.us.us = add nuw nsw i64 %indvars.iv.i.i330.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i332.us.us.us = icmp eq i64 %indvars.iv.next.i.i331.us.us.us, %i.aqc
  br i1 %exitcond.not.i.i332.us.us.us, label %._crit_edge.i.i333.us.us.us, label %.outer.i.split.i.us.us.us, !llvm.loop !156

.outer.i.split.us.i.us.us.us:                     ; preds = %.outer.i.i.us.us.us, %Pf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  %indvars.iv.i.us.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.i.us.us.us, %Pf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us ], [ %indvars.iv.ph.i.i.us.us.us, %.outer.i.i.us.us.us ] ; 3 uses
  %i.arf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i.us.us.us
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !136 ; 3 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 16
  %i.ari = load i32, ptr %i.arh, align 8          ; 2 uses
  %.not.i336.us.us.us = icmp ult i32 %i.ari, 134217728
  br i1 %.not.i336.us.us.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us, label %bb.bq

bb.bq:                                            ; preds = %.outer.i.split.us.i.us.us.us
  %i.arj = load i64, ptr %i.aqf, align 8, !tbaa !133 ; 2 uses
  %i.ark = load i64, ptr %i.arg, align 8, !tbaa !133
  %i.arl = and i64 %i.ark, %i.arj
  %i.arm = icmp eq i64 %i.arl, %i.arj
  br i1 %i.arm, label %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us

Pf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us: ; preds = %bb.bq, %.outer.i.split.us.i.us.us.us
  %indvars.iv.next.i.us.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.i.us.us.us, %i.aqc
  br i1 %exitcond.not.i.us.i.us.us.us, label %._crit_edge.i.i333.us.us.us, label %.outer.i.split.us.i.us.us.us, !llvm.loop !156

Pf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us: ; preds = %bb.bq, %bb.bo
  %indvars.iv.i19.i.us.us.us = phi i64 [ %indvars.iv.i.i330.us.us.us, %bb.bo ], [ %indvars.iv.i.us.i.us.us.us, %bb.bq ]
  %.pn.i.us.us.us = phi ptr [ %i.aqm, %bb.bo ], [ %i.arg, %bb.bq ]
  %i.arn = phi i32 [ %i.aqo, %bb.bo ], [ %i.ari, %bb.bq ]
  %i.aro = getelementptr inbounds nuw i8, ptr %.pn.i.us.us.us, i64 16
  %i.arp = or i32 %i.arn, -134217728
  store i32 %i.arp, ptr %i.aro, align 8
  %indvars.iv.next74.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i19.i.us.us.us, 1 ; 2 uses
  %exitcond.not75.i.i.us.us.us = icmp eq i64 %indvars.iv.next74.i.i.us.us.us, %i.aqc
  br i1 %exitcond.not75.i.i.us.us.us, label %.preheader.i.i334.us.us.us, label %.outer.i.i.us.us.us, !llvm.loop !156

._crit_edge.i.i333.us.us.us:                      ; preds = %Pf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, %Pf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  br i1 %i.aqe, label %Pf_SetLastCutContainsArea.exit.i.us.us.us, label %.preheader.i.i334.us.us.us

.preheader.i.i334.us.us.us:                       ; preds = %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %._crit_edge.i.i333.us.us.us
  %i.arq = add nuw i32 %.4588.us.us.us, 1
  %wide.trip.count62.i.i.us.us.us = zext i32 %i.arq to i64
  br label %.lr.ph55.i.i.us.us.us

.lr.ph55.i.i.us.us.us:                            ; preds = %bb.bu, %.preheader.i.i334.us.us.us
  %indvars.iv59.i.i.us.us.us = phi i64 [ 0, %.preheader.i.i334.us.us.us ], [ %indvars.iv.next60.i.i.us.us.us, %bb.bu ] ; 3 uses
  %.04054.i.i.us.us.us = phi i32 [ 0, %.preheader.i.i334.us.us.us ], [ %.141.i.i.us.us.us, %bb.bu ] ; 3 uses
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i.us.us.us ; 2 uses
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !136 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16
  %i.aru = load i32, ptr %i.art, align 8
  %i.arv = icmp ugt i32 %i.aru, -134217729
  br i1 %i.arv, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.lr.ph55.i.i.us.us.us
  %i.arw = sext i32 %.04054.i.i.us.us.us to i64   ; 2 uses
  %i.arx = icmp sgt i64 %indvars.iv59.i.i.us.us.us, %i.arw
  br i1 %i.arx, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ary = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.arw ; 2 uses
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !136
  store ptr %i.ars, ptr %i.ary, align 8, !tbaa !136
  store ptr %i.arz, ptr %i.arr, align 8, !tbaa !136
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.asa = add nsw i32 %.04054.i.i.us.us.us, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph55.i.i.us.us.us
  %.141.i.i.us.us.us = phi i32 [ %.04054.i.i.us.us.us, %.lr.ph55.i.i.us.us.us ], [ %i.asa, %bb.bt ] ; 2 uses
  %indvars.iv.next60.i.i.us.us.us = add nuw nsw i64 %indvars.iv59.i.i.us.us.us, 1 ; 2 uses
  %exitcond63.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next60.i.i.us.us.us, %wide.trip.count62.i.i.us.us.us
  br i1 %exitcond63.not.i.i.us.us.us, label %._crit_edge56.loopexit.i.i.us.us.us, label %.lr.ph55.i.i.us.us.us, !llvm.loop !157

._crit_edge56.loopexit.i.i.us.us.us:              ; preds = %bb.bu
  %i.asb = add nsw i32 %.141.i.i.us.us.us, -1
  br label %Pf_SetLastCutContainsArea.exit.i.us.us.us

Pf_SetLastCutContainsArea.exit.i.us.us.us:        ; preds = %._crit_edge56.loopexit.i.i.us.us.us, %._crit_edge.i.i333.us.us.us
  %.0.i.i335.us.us.us = phi i32 [ %i.asb, %._crit_edge56.loopexit.i.i.us.us.us ], [ %.4588.us.us.us, %._crit_edge.i.i333.us.us.us ] ; 8 uses
  %i.asc = icmp sgt i32 %.0.i.i335.us.us.us, 0
  br i1 %i.asc, label %.lr.ph.i8.i.us.us.us.preheader, label %Pf_SetSortByArea.exit.i.us.us.us

.lr.ph.i8.i.us.us.us.preheader:                   ; preds = %Pf_SetLastCutContainsArea.exit.i.us.us.us
  %i.asd = zext nneg i32 %.0.i.i335.us.us.us to i64
  br label %.lr.ph.i8.i.us.us.us

.lr.ph.i8.i.us.us.us:                             ; preds = %Pf_CutCompareArea.exit.i.i.us.us.us, %.lr.ph.i8.i.us.us.us.preheader
  %indvars.iv694 = phi i64 [ %i.asd, %.lr.ph.i8.i.us.us.us.preheader ], [ %indvars.iv.next695, %Pf_CutCompareArea.exit.i.i.us.us.us ] ; 3 uses
  %i.ase = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv694 ; 3 uses
  %i.asf = getelementptr i8, ptr %i.ase, i64 -8   ; 2 uses
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !136 ; 4 uses
  %i.ash = load ptr, ptr %i.ase, align 8, !tbaa !136 ; 4 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  %i.asj = load i32, ptr %i.asi, align 8          ; 2 uses
  %i.ask = lshr i32 %i.asj, 26
  %i.asl = and i32 %i.ask, 1                      ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ash, i64 16
  %i.asn = load i32, ptr %i.asm, align 8          ; 2 uses
  %i.aso = lshr i32 %i.asn, 26
  %i.asp = and i32 %i.aso, 1                      ; 2 uses
  %i.asq = icmp samesign ult i32 %i.asl, %i.asp
  br i1 %i.asq, label %Pf_SetSortByArea.exit.i.us.us.us, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i8.i.us.us.us
  %i.asr = icmp samesign ugt i32 %i.asl, %i.asp
  br i1 %i.asr, label %Pf_CutCompareArea.exit.i.i.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asg, i64 12
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !131 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ash, i64 12
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !131 ; 2 uses
  %i.asw = fcmp olt float %i.ast, %i.asv
  br i1 %i.asw, label %Pf_SetSortByArea.exit.i.us.us.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.asx = fcmp ogt float %i.ast, %i.asv
  br i1 %i.asx, label %Pf_CutCompareArea.exit.i.i.us.us.us, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asz = load i32, ptr %i.asy, align 8, !tbaa !129 ; 2 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  %i.atb = load i32, ptr %i.ata, align 8, !tbaa !129 ; 2 uses
  %i.atc = icmp slt i32 %i.asz, %i.atb
  br i1 %i.atc, label %Pf_SetSortByArea.exit.i.us.us.us, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.atd = icmp sgt i32 %i.asz, %i.atb
  br i1 %i.atd, label %Pf_CutCompareArea.exit.i.i.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ate = lshr i32 %i.asj, 27
  %i.atf = lshr i32 %i.asn, 27
  %i.atg = icmp samesign ult i32 %i.ate, %i.atf
  br i1 %i.atg, label %Pf_SetSortByArea.exit.i.us.us.us, label %Pf_CutCompareArea.exit.i.i.us.us.us

Pf_CutCompareArea.exit.i.i.us.us.us:              ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bv
  store ptr %i.ash, ptr %i.asf, align 8, !tbaa !136
  store ptr %i.asg, ptr %i.ase, align 8, !tbaa !136
  %indvars.iv.next695 = add nsw i64 %indvars.iv694, -1
  %i.ath = icmp sgt i64 %indvars.iv694, 1
  br i1 %i.ath, label %.lr.ph.i8.i.us.us.us, label %Pf_SetSortByArea.exit.i.us.us.us, !llvm.loop !158

Pf_SetSortByArea.exit.i.us.us.us:                 ; preds = %.lr.ph.i8.i.us.us.us, %bb.bw, %bb.by, %bb.ca, %Pf_CutCompareArea.exit.i.i.us.us.us, %Pf_SetLastCutContainsArea.exit.i.us.us.us, %bb.bk
  %.0.i10.i.us.us.us = phi i32 [ %.4588.us.us.us, %bb.bk ], [ %.0.i.i335.us.us.us, %Pf_SetLastCutContainsArea.exit.i.us.us.us ], [ %.0.i.i335.us.us.us, %Pf_CutCompareArea.exit.i.i.us.us.us ], [ %.0.i.i335.us.us.us, %bb.ca ], [ %.0.i.i335.us.us.us, %bb.by ], [ %.0.i.i335.us.us.us, %bb.bw ], [ %.0.i.i335.us.us.us, %.lr.ph.i8.i.us.us.us ]
  %i.ati = add nsw i32 %.0.i10.i.us.us.us, 1
  %i.atj = call noundef i32 @llvm.smin.i32(i32 %i.ati, i32 %i.zo)
  br label %Pf_SetAddCut.exit.us.us.us

Pf_SetAddCut.exit.us.us.us:                       ; preds = %bb.ac, %bb.ah, %bb.ao, %bb.ak, %bb.an, %Pf_SetSortByArea.exit.i.us.us.us, %Pf_CutParams.exit327.us.us.us, %bb.t
  %.5.us.us.us = phi i32 [ %.4588.us.us.us, %bb.t ], [ %.4588.us.us.us, %bb.ao ], [ 1, %Pf_CutParams.exit327.us.us.us ], [ %i.atj, %Pf_SetSortByArea.exit.i.us.us.us ], [ %.4588.us.us.us, %bb.ah ], [ %.4588.us.us.us, %bb.ak ], [ %.4588.us.us.us, %bb.an ], [ %.4588.us.us.us, %bb.ac ] ; 4 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %.0589.us.us.us, i64 48 ; 2 uses
  %i.atl = icmp ult ptr %i.atk, %i.yw
  br i1 %i.atl, label %bb.t, label %._crit_edge591.us.us.us, !llvm.loop !159

._crit_edge591.us.us.us:                          ; preds = %Pf_SetAddCut.exit.us.us.us
  %i.atm = getelementptr inbounds nuw i8, ptr %.0152593.us.us.us, i64 48 ; 2 uses
  %i.atn = icmp ult ptr %i.atm, %i.lc
  br i1 %i.atn, label %.preheader535.us.us.us, label %._crit_edge595.split.us.us.us, !llvm.loop !160

._crit_edge595.split.us.us.us:                    ; preds = %._crit_edge591.us.us.us
  %i.ato = getelementptr inbounds nuw i8, ptr %.0154597.us.us, i64 48 ; 2 uses
  %i.atp = icmp ult ptr %i.ato, %i.la
  br i1 %i.atp, label %.preheader536.us.us, label %._crit_edge600, !llvm.loop !161

._crit_edge600:                                   ; preds = %._crit_edge595.split.us.us.us, %.preheader536.lr.ph, %Pf_ManPrepareCuts.exit279
  %.2.lcssa = phi i32 [ %.1, %Pf_ManPrepareCuts.exit279 ], [ %.1, %.preheader536.lr.ph ], [ %.5.us.us.us, %._crit_edge595.split.us.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit526

Gia_ObjIsMuxId.exit.thread:                       ; preds = %bb.p, %Gia_ObjIsMuxId.exit
  %.val178 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.atq = and i64 %.val178, 2147483648
  %.not.i.i337 = icmp ne i64 %i.atq, 0
  %i.atr = and i64 %.val178, 536870911
  %i.ats = icmp eq i64 %i.atr, 536870911
  %narrow.i.not.i = or i1 %.not.i.i337, %i.ats
  br i1 %narrow.i.not.i, label %Gia_ObjIsXor.exit, label %bb.cb

bb.cb:                                            ; preds = %Gia_ObjIsMuxId.exit.thread
  %i.att = trunc i64 %.val178 to i32
  %i.atu = and i32 %i.att, 536870911
  %i.atv = lshr i64 %.val178, 32
  %i.atw = trunc nuw i64 %i.atv to i32
  %i.atx = and i32 %i.atw, 536870911
  %i.aty = icmp samesign uge i32 %i.atu, %i.atx
  br label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %Gia_ObjIsMuxId.exit.thread, %bb.cb
  %.not39.i = phi i1 [ true, %Gia_ObjIsMuxId.exit.thread ], [ %i.aty, %bb.cb ]
  %i.atz = mul nsw i32 %.1.i186, %.1.i
  %i.aua = sitofp i32 %i.atz to double
  %i.aub = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.auc = load double, ptr %i.aub, align 8, !tbaa !148
  %i.aud = fadd double %i.auc, %i.aua
  store double %i.aud, ptr %i.aub, align 8, !tbaa !148
  %i.aue = icmp sgt i32 %.1.i, 0
  br i1 %i.aue, label %.preheader.lr.ph, label %.loopexit526

.preheader.lr.ph:                                 ; preds = %Gia_ObjIsXor.exit
  %i.auf = icmp sgt i32 %.1.i186, 0
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.auh = icmp eq i32 %i.n, 0                    ; 2 uses
  %wide.trip.count158.i = zext i32 %i.n to i64    ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.auk = getelementptr i8, ptr %0, i64 24
  %i.aul = getelementptr i8, ptr %0, i64 112
  %i.aum = getelementptr i8, ptr %0, i64 96
  %i.aun = call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %i.auo = sitofp i32 %i.aun to float
  %i.aup = add nsw i32 %i.p, -1
  br i1 %i.auf, label %.preheader.us, label %.loopexit526

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge613.us
  %.6616.us = phi i32 [ %.8.us, %._crit_edge613.us ], [ %.1, %.preheader.lr.ph ]
  %.1155615.us = phi ptr [ %i.bnl, %._crit_edge613.us ], [ %2, %.preheader.lr.ph ] ; 5 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %.1155615.us, i64 16
  %i.aur = getelementptr i8, ptr %.1155615.us, i64 20 ; 4 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader.us, %Pf_SetAddCut.exit474.us
  %.7608.us = phi i32 [ %.6616.us, %.preheader.us ], [ %.8.us, %Pf_SetAddCut.exit474.us ] ; 18 uses
  %.1153607.us = phi ptr [ %3, %.preheader.us ], [ %i.bnj, %Pf_SetAddCut.exit474.us ] ; 5 uses
  %i.aus = load i32, ptr %i.auq, align 8          ; 3 uses
  %i.aut = lshr i32 %i.aus, 27                    ; 11 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %.1153607.us, i64 16
  %i.auv = load i32, ptr %i.auu, align 8          ; 3 uses
  %i.auw = lshr i32 %i.auv, 27                    ; 11 uses
  %i.aux = add nuw nsw i32 %i.auw, %i.aut
  %i.auy = icmp sgt i32 %i.aux, %i.n
  br i1 %i.auy, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.auz = load i64, ptr %.1155615.us, align 8, !tbaa !133
  %i.ava = load i64, ptr %.1153607.us, align 8, !tbaa !133
  %i.avb = or i64 %i.ava, %i.auz
  %i.avc = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.avb)
  %i.avd = trunc nuw nsw i64 %i.avc to i32
  %i.ave = icmp slt i32 %i.n, %i.avd
  br i1 %i.ave, label %Pf_SetAddCut.exit474.us, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.avf = load double, ptr %i.aug, align 8, !tbaa !148
  %i.avg = fadd double %i.avf, 1.000000e+00
  store double %i.avg, ptr %i.aug, align 8, !tbaa !148
  %i.avh = sext i32 %.7608.us to i64
  %i.avi = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.avh
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !136 ; 19 uses
  %i.avk = getelementptr i8, ptr %.1153607.us, i64 20 ; 4 uses
  %i.avl = getelementptr i8, ptr %i.avj, i64 20   ; 15 uses
  %i.avm = icmp eq i32 %i.aut, %i.n
  %i.avn = icmp eq i32 %i.auw, %i.n
  %or.cond.i.us = and i1 %i.avm, %i.avn
  br i1 %or.cond.i.us, label %.preheader.i.us, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.avo = icmp eq i32 %i.aut, 0
  br i1 %i.avo, label %.loopexit120.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.avp = icmp eq i32 %i.auw, 0
  br i1 %i.avp, label %.loopexit121.i.us, label %.preheader118.i.us

.preheader118.i.us:                               ; preds = %bb.cg
  br i1 %i.auh, label %Pf_SetAddCut.exit474.us, label %.lr.ph.i338.us

.lr.ph.i338.us:                                   ; preds = %.preheader118.i.us, %bb.cm
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %bb.cm ], [ 0, %.preheader118.i.us ] ; 2 uses
  %.091123.i.us = phi i32 [ %.192.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %.196122.i.us = phi i32 [ %.297.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %i.avq = sext i32 %.196122.i.us to i64
  %i.avr = getelementptr inbounds [4 x i8], ptr %i.aur, i64 %i.avq
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !34 ; 4 uses
  %i.avt = sext i32 %.091123.i.us to i64
  %i.avu = getelementptr inbounds [4 x i8], ptr %i.avk, i64 %i.avt
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !34 ; 3 uses
  %i.avw = icmp slt i32 %i.avs, %i.avv
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 4 uses
  %i.avx = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %indvars.iv697 ; 3 uses
  br i1 %i.avw, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i338.us
  %i.avy = icmp sgt i32 %i.avs, %i.avv
  br i1 %i.avy, label %bb.ck, label %bb.ci

end_hunk_0
begin_hunk_1_@Pf_ObjMergeOrder:bb.a
  %.epil.init1145 = phi i32 [ 0, %.lr.ph.i419.us ], [ %i.bja, %._crit_edge.i426.us.loopexit.unr-lcssa ]
  %lcmp.mod1149 = trunc i32 %i.bif to i1
  call void @llvm.assume(i1 %lcmp.mod1149)
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.avl, i64 %indvars.iv.i423.us.epil.init
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !34
  %i.bjg = sext i32 %i.bjf to i64                 ; 2 uses
  %i.bjh = getelementptr inbounds [4 x i8], ptr %.val.i420.us, i64 %i.bjg
  %i.bji = load i32, ptr %i.bjh, align 4, !tbaa !34
  %i.bjj = call noundef i32 @llvm.smax.i32(i32 %.epil.init1145, i32 %i.bji) ; 2 uses
  store i32 %i.bjj, ptr %i.big, align 8, !tbaa !129
  %i.bjk = getelementptr inbounds [4 x i8], ptr %.val23.i421.us, i64 %i.bjg
  %i.bjl = load float, ptr %i.bjk, align 4, !tbaa !112
  %i.bjm = fadd float %.epil.init1143, %i.bjl     ; 2 uses
  store float %i.bjm, ptr %i.bih, align 4, !tbaa !131
  br label %._crit_edge.i426.us

._crit_edge.i426.us:                              ; preds = %.epil.preheader1140, %._crit_edge.i426.us.loopexit.unr-lcssa, %bb.dm
  %i.bjn = phi float [ 0.000000e+00, %bb.dm ], [ %i.bjd, %._crit_edge.i426.us.loopexit.unr-lcssa ], [ %i.bjm, %.epil.preheader1140 ]
  %i.bjo = phi i32 [ 0, %bb.dm ], [ %i.bja, %._crit_edge.i426.us.loopexit.unr-lcssa ], [ %i.bjj, %.epil.preheader1140 ]
  %i.bjp = icmp ugt i32 %i.beu, 268435455
  %i.bjq = zext i1 %i.bjp to i32
  %i.bjr = add nuw nsw i32 %i.bjo, %i.bjq
  store i32 %i.bjr, ptr %i.big, align 8, !tbaa !129
  %i.bjs = icmp ult i32 %i.beu, 268435456
  br i1 %i.bjs, label %Pf_CutParams.exit428.us, label %bb.do

bb.do:                                            ; preds = %._crit_edge.i426.us
  %i.bjt = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 28
  %i.bjv = load i32, ptr %i.bju, align 4, !tbaa !144
  %i.bjw = add nsw i32 %i.bjv, %i.bif
  %i.bjx = sitofp i32 %i.bjw to float
  br label %Pf_CutParams.exit428.us

Pf_CutParams.exit428.us:                          ; preds = %bb.do, %._crit_edge.i426.us
  %.0.i.i427.us = phi float [ %i.bjx, %bb.do ], [ 0.000000e+00, %._crit_edge.i426.us ]
  %i.bjy = fadd float %i.bjn, %.0.i.i427.us
  %i.bjz = fdiv float %i.bjy, %i.auo
  store float %i.bjz, ptr %i.bih, align 4, !tbaa !131
  %i.bka = icmp eq i32 %.7608.us, 0
  br i1 %i.bka, label %Pf_SetAddCut.exit474.us, label %bb.dp

bb.dp:                                            ; preds = %Pf_CutParams.exit428.us
  br i1 %i.axs, label %.lr.ph.i.i432.us, label %Pf_SetSortByArea.exit.i429.us

.lr.ph.i.i432.us:                                 ; preds = %bb.dp
  %i.bkb = zext nneg i32 %.7608.us to i64         ; 4 uses
  %i.bkc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bkb
  br label %.outer.i.i433.us

.outer.i.i433.us:                                 ; preds = %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i463.us, %.lr.ph.i.i432.us
  %indvars.iv.ph.i.i434.us = phi i64 [ %indvars.iv.next74.i.i466.us, %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i463.us ], [ 0, %.lr.ph.i.i432.us ] ; 2 uses
  %i.bkd = phi i1 [ false, %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i463.us ], [ true, %.lr.ph.i.i432.us ]
  %i.bke = load ptr, ptr %i.bkc, align 8, !tbaa !136 ; 4 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 16
  %i.bkg = load i32, ptr %i.bkf, align 8
  %.fr.i435.us = freeze i32 %i.bkg
  %i.bkh = lshr i32 %.fr.i435.us, 27              ; 3 uses
  %i.bki = icmp eq i32 %i.bkh, 0
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bke, i64 20
  br i1 %i.bki, label %.outer.i.split.us.i468.us, label %.outer.i.split.i436.us

.outer.i.split.i436.us:                           ; preds = %.outer.i.i433.us, %Pf_SetCutIsContainedOrder.exit.thread.i.i438.us
  %indvars.iv.i.i437.us = phi i64 [ %indvars.iv.next.i.i439.us, %Pf_SetCutIsContainedOrder.exit.thread.i.i438.us ], [ %indvars.iv.ph.i.i434.us, %.outer.i.i433.us ] ; 3 uses
  %i.bkk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i437.us
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !136 ; 4 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.bkl, i64 16
  %i.bkn = load i32, ptr %i.bkm, align 8          ; 2 uses
  %i.bko = lshr i32 %i.bkn, 27                    ; 2 uses
  %i.bkp = icmp samesign ult i32 %i.bkh, %i.bko
  br i1 %i.bkp, label %bb.dq, label %Pf_SetCutIsContainedOrder.exit.thread.i.i438.us

bb.dq:                                            ; preds = %.outer.i.split.i436.us
  %i.bkq = load i64, ptr %i.bke, align 8, !tbaa !133 ; 2 uses
  %i.bkr = load i64, ptr %i.bkl, align 8, !tbaa !133
  %i.bks = and i64 %i.bkr, %i.bkq
  %i.bkt = icmp eq i64 %i.bks, %i.bkq
  br i1 %i.bkt, label %.lr.ph.i.i.i456.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.i438.us

.lr.ph.i.i.i456.us:                               ; preds = %bb.dq
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkl, i64 20
  %wide.trip.count.i.i.i457.us = zext nneg i32 %i.bko to i64
  br label %bb.dr

bb.dr:                                            ; preds = %bb.du, %.lr.ph.i.i.i456.us
  %indvars.iv.i.i.i458.us = phi i64 [ 0, %.lr.ph.i.i.i456.us ], [ %indvars.iv.next.i.i.i461.us, %bb.du ] ; 2 uses
  %.038.i.i.i459.us = phi i32 [ 0, %.lr.ph.i.i.i456.us ], [ %.1.i.i.i460.us, %bb.du ] ; 3 uses
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bku, i64 %indvars.iv.i.i.i458.us
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !34 ; 2 uses
  %i.bkx = sext i32 %.038.i.i.i459.us to i64
  %i.bky = getelementptr inbounds [4 x i8], ptr %i.bkj, i64 %i.bkx
  %i.bkz = load i32, ptr %i.bky, align 4, !tbaa !34 ; 2 uses
  %i.bla = icmp sgt i32 %i.bkw, %i.bkz
  br i1 %i.bla, label %Pf_SetCutIsContainedOrder.exit.thread.i.i438.us, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.blb = icmp eq i32 %i.bkw, %i.bkz
  br i1 %i.blb, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.blc = add nsw i32 %.038.i.i.i459.us, 1       ; 2 uses
  %i.bld = icmp eq i32 %i.blc, %i.bkh
  br i1 %i.bld, label %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i463.us, label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.1.i.i.i460.us = phi i32 [ %i.blc, %bb.dt ], [ %.038.i.i.i459.us, %bb.ds ]
  %indvars.iv.next.i.i.i461.us = add nuw nsw i64 %indvars.iv.i.i.i458.us, 1 ; 2 uses
  %exitcond.not.i.i.i462.us = icmp eq i64 %indvars.iv.next.i.i.i461.us, %wide.trip.count.i.i.i457.us
  br i1 %exitcond.not.i.i.i462.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.i438.us, label %bb.dr, !llvm.loop !150

Pf_SetCutIsContainedOrder.exit.thread.i.i438.us:  ; preds = %bb.dr, %bb.du, %bb.dq, %.outer.i.split.i436.us
  %indvars.iv.next.i.i439.us = add nuw nsw i64 %indvars.iv.i.i437.us, 1 ; 2 uses
  %exitcond.not.i.i440.us = icmp eq i64 %indvars.iv.next.i.i439.us, %i.bkb
  br i1 %exitcond.not.i.i440.us, label %._crit_edge.i.i441.us, label %.outer.i.split.i436.us, !llvm.loop !156

.outer.i.split.us.i468.us:                        ; preds = %.outer.i.i433.us, %Pf_SetCutIsContainedOrder.exit.thread.i.us.i471.us
  %indvars.iv.i.us.i469.us = phi i64 [ %indvars.iv.next.i.us.i472.us, %Pf_SetCutIsContainedOrder.exit.thread.i.us.i471.us ], [ %indvars.iv.ph.i.i434.us, %.outer.i.i433.us ] ; 3 uses
  %i.ble = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i469.us
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !136 ; 3 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 16
  %i.blh = load i32, ptr %i.blg, align 8          ; 2 uses
  %.not.i470.us = icmp ult i32 %i.blh, 134217728
  br i1 %.not.i470.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.us.i471.us, label %bb.dv

bb.dv:                                            ; preds = %.outer.i.split.us.i468.us
  %i.bli = load i64, ptr %i.bke, align 8, !tbaa !133 ; 2 uses
  %i.blj = load i64, ptr %i.blf, align 8, !tbaa !133
  %i.blk = and i64 %i.blj, %i.bli
  %i.bll = icmp eq i64 %i.blk, %i.bli
  br i1 %i.bll, label %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i463.us, label %Pf_SetCutIsContainedOrder.exit.thread.i.us.i471.us

Pf_SetCutIsContainedOrder.exit.thread.i.us.i471.us: ; preds = %bb.dv, %.outer.i.split.us.i468.us
  %indvars.iv.next.i.us.i472.us = add nuw nsw i64 %indvars.iv.i.us.i469.us, 1 ; 2 uses
  %exitcond.not.i.us.i473.us = icmp eq i64 %indvars.iv.next.i.us.i472.us, %i.bkb
  br i1 %exitcond.not.i.us.i473.us, label %._crit_edge.i.i441.us, label %.outer.i.split.us.i468.us, !llvm.loop !156

Pf_SetCutIsContainedOrder.exit.thread.thread.i.i463.us: ; preds = %bb.dv, %bb.dt
  %indvars.iv.i19.i464.us = phi i64 [ %indvars.iv.i.i437.us, %bb.dt ], [ %indvars.iv.i.us.i469.us, %bb.dv ]
  %.pn.i465.us = phi ptr [ %i.bkl, %bb.dt ], [ %i.blf, %bb.dv ]
  %i.blm = phi i32 [ %i.bkn, %bb.dt ], [ %i.blh, %bb.dv ]
  %i.bln = getelementptr inbounds nuw i8, ptr %.pn.i465.us, i64 16
  %i.blo = or i32 %i.blm, -134217728
  store i32 %i.blo, ptr %i.bln, align 8
  %indvars.iv.next74.i.i466.us = add nuw nsw i64 %indvars.iv.i19.i464.us, 1 ; 2 uses
  %exitcond.not75.i.i467.us = icmp eq i64 %indvars.iv.next74.i.i466.us, %i.bkb
  br i1 %exitcond.not75.i.i467.us, label %.preheader.i.i442.us, label %.outer.i.i433.us, !llvm.loop !156

._crit_edge.i.i441.us:                            ; preds = %Pf_SetCutIsContainedOrder.exit.thread.i.i438.us, %Pf_SetCutIsContainedOrder.exit.thread.i.us.i471.us
  br i1 %i.bkd, label %Pf_SetLastCutContainsArea.exit.i451.us, label %.preheader.i.i442.us

.preheader.i.i442.us:                             ; preds = %Pf_SetCutIsContainedOrder.exit.thread.thread.i.i463.us, %._crit_edge.i.i441.us
  %i.blp = add nuw i32 %.7608.us, 1
  %wide.trip.count62.i.i443.us = zext i32 %i.blp to i64
  br label %.lr.ph55.i.i444.us

.lr.ph55.i.i444.us:                               ; preds = %bb.dz, %.preheader.i.i442.us
  %indvars.iv59.i.i445.us = phi i64 [ 0, %.preheader.i.i442.us ], [ %indvars.iv.next60.i.i448.us, %bb.dz ] ; 3 uses
  %.04054.i.i446.us = phi i32 [ 0, %.preheader.i.i442.us ], [ %.141.i.i447.us, %bb.dz ] ; 3 uses
  %i.blq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i445.us ; 2 uses
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !136 ; 2 uses
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 16
  %i.blt = load i32, ptr %i.bls, align 8
  %i.blu = icmp ugt i32 %i.blt, -134217729
  br i1 %i.blu, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph55.i.i444.us
  %i.blv = sext i32 %.04054.i.i446.us to i64      ; 2 uses
  %i.blw = icmp sgt i64 %indvars.iv59.i.i445.us, %i.blv
  br i1 %i.blw, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.blx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.blv ; 2 uses
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !136
  store ptr %i.blr, ptr %i.blx, align 8, !tbaa !136
  store ptr %i.bly, ptr %i.blq, align 8, !tbaa !136
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.blz = add nsw i32 %.04054.i.i446.us, 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph55.i.i444.us
  %.141.i.i447.us = phi i32 [ %.04054.i.i446.us, %.lr.ph55.i.i444.us ], [ %i.blz, %bb.dy ] ; 2 uses
  %indvars.iv.next60.i.i448.us = add nuw nsw i64 %indvars.iv59.i.i445.us, 1 ; 2 uses
  %exitcond63.not.i.i449.us = icmp eq i64 %indvars.iv.next60.i.i448.us, %wide.trip.count62.i.i443.us
  br i1 %exitcond63.not.i.i449.us, label %._crit_edge56.loopexit.i.i450.us, label %.lr.ph55.i.i444.us, !llvm.loop !157

._crit_edge56.loopexit.i.i450.us:                 ; preds = %bb.dz
  %i.bma = add nsw i32 %.141.i.i447.us, -1
  br label %Pf_SetLastCutContainsArea.exit.i451.us

Pf_SetLastCutContainsArea.exit.i451.us:           ; preds = %._crit_edge56.loopexit.i.i450.us, %._crit_edge.i.i441.us
  %.0.i.i452.us = phi i32 [ %i.bma, %._crit_edge56.loopexit.i.i450.us ], [ %.7608.us, %._crit_edge.i.i441.us ] ; 8 uses
  %i.bmb = icmp sgt i32 %.0.i.i452.us, 0
  br i1 %i.bmb, label %.lr.ph.i8.i453.us.preheader, label %Pf_SetSortByArea.exit.i429.us

.lr.ph.i8.i453.us.preheader:                      ; preds = %Pf_SetLastCutContainsArea.exit.i451.us
  %i.bmc = zext nneg i32 %.0.i.i452.us to i64
  br label %.lr.ph.i8.i453.us

.lr.ph.i8.i453.us:                                ; preds = %Pf_CutCompareArea.exit.i.i455.us, %.lr.ph.i8.i453.us.preheader
  %indvars.iv705 = phi i64 [ %i.bmc, %.lr.ph.i8.i453.us.preheader ], [ %indvars.iv.next706, %Pf_CutCompareArea.exit.i.i455.us ] ; 3 uses
  %i.bmd = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv705 ; 3 uses
  %i.bme = getelementptr i8, ptr %i.bmd, i64 -8   ; 2 uses
  %i.bmf = load ptr, ptr %i.bme, align 8, !tbaa !136 ; 4 uses
  %i.bmg = load ptr, ptr %i.bmd, align 8, !tbaa !136 ; 4 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmf, i64 16
  %i.bmi = load i32, ptr %i.bmh, align 8          ; 2 uses
  %i.bmj = lshr i32 %i.bmi, 26
  %i.bmk = and i32 %i.bmj, 1                      ; 2 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmg, i64 16
  %i.bmm = load i32, ptr %i.bml, align 8          ; 2 uses
  %i.bmn = lshr i32 %i.bmm, 26
  %i.bmo = and i32 %i.bmn, 1                      ; 2 uses
  %i.bmp = icmp samesign ult i32 %i.bmk, %i.bmo
  br i1 %i.bmp, label %Pf_SetSortByArea.exit.i429.us, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i8.i453.us
  %i.bmq = icmp samesign ugt i32 %i.bmk, %i.bmo
  br i1 %i.bmq, label %Pf_CutCompareArea.exit.i.i455.us, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmf, i64 12
  %i.bms = load float, ptr %i.bmr, align 4, !tbaa !131 ; 2 uses
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmg, i64 12
  %i.bmu = load float, ptr %i.bmt, align 4, !tbaa !131 ; 2 uses
  %i.bmv = fcmp olt float %i.bms, %i.bmu
  br i1 %i.bmv, label %Pf_SetSortByArea.exit.i429.us, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.bmw = fcmp ogt float %i.bms, %i.bmu
  br i1 %i.bmw, label %Pf_CutCompareArea.exit.i.i455.us, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmf, i64 8
  %i.bmy = load i32, ptr %i.bmx, align 8, !tbaa !129 ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmg, i64 8
  %i.bna = load i32, ptr %i.bmz, align 8, !tbaa !129 ; 2 uses
  %i.bnb = icmp slt i32 %i.bmy, %i.bna
  br i1 %i.bnb, label %Pf_SetSortByArea.exit.i429.us, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bnc = icmp sgt i32 %i.bmy, %i.bna
  br i1 %i.bnc, label %Pf_CutCompareArea.exit.i.i455.us, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.bnd = lshr i32 %i.bmi, 27
  %i.bne = lshr i32 %i.bmm, 27
  %i.bnf = icmp samesign ult i32 %i.bnd, %i.bne
  br i1 %i.bnf, label %Pf_SetSortByArea.exit.i429.us, label %Pf_CutCompareArea.exit.i.i455.us

Pf_CutCompareArea.exit.i.i455.us:                 ; preds = %bb.ef, %bb.ee, %bb.ec, %bb.ea
  store ptr %i.bmg, ptr %i.bme, align 8, !tbaa !136
  store ptr %i.bmf, ptr %i.bmd, align 8, !tbaa !136
  %indvars.iv.next706 = add nsw i64 %indvars.iv705, -1
  %i.bng = icmp sgt i64 %indvars.iv705, 1
  br i1 %i.bng, label %.lr.ph.i8.i453.us, label %Pf_SetSortByArea.exit.i429.us, !llvm.loop !158

Pf_SetSortByArea.exit.i429.us:                    ; preds = %.lr.ph.i8.i453.us, %bb.eb, %bb.ed, %bb.ef, %Pf_CutCompareArea.exit.i.i455.us, %Pf_SetLastCutContainsArea.exit.i451.us, %bb.dp
  %.0.i10.i430.us = phi i32 [ %.7608.us, %bb.dp ], [ %.0.i.i452.us, %Pf_SetLastCutContainsArea.exit.i451.us ], [ %.0.i.i452.us, %Pf_CutCompareArea.exit.i.i455.us ], [ %.0.i.i452.us, %bb.ef ], [ %.0.i.i452.us, %bb.ed ], [ %.0.i.i452.us, %bb.eb ], [ %.0.i.i452.us, %.lr.ph.i8.i453.us ]
  %i.bnh = add nsw i32 %.0.i10.i430.us, 1
  %i.bni = call noundef i32 @llvm.smin.i32(i32 %i.bnh, i32 %i.aup)
  br label %Pf_SetAddCut.exit474.us

Pf_SetAddCut.exit474.us:                          ; preds = %bb.cm, %.lr.ph134.i.us, %bb.cq, %bb.cx, %bb.ct, %bb.cw, %Pf_SetSortByArea.exit.i429.us, %Pf_CutParams.exit428.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.cd
  %.8.us = phi i32 [ %.7608.us, %bb.cd ], [ %.7608.us, %.preheader118.i.us ], [ 1, %Pf_CutParams.exit428.us ], [ %i.bni, %Pf_SetSortByArea.exit.i429.us ], [ %.7608.us, %.loopexit120.i.us ], [ %.7608.us, %bb.cw ], [ %.7608.us, %.loopexit121.i.us ], [ %.7608.us, %.lr.ph134.i.us ], [ %.7608.us, %bb.ct ], [ %.7608.us, %bb.cq ], [ %.7608.us, %bb.cx ], [ %.7608.us, %bb.cm ] ; 3 uses
  %i.bnj = getelementptr inbounds nuw i8, ptr %.1153607.us, i64 48 ; 2 uses
  %i.bnk = icmp ult ptr %i.bnj, %i.lc
  br i1 %i.bnk, label %bb.cc, label %._crit_edge613.us, !llvm.loop !164

._crit_edge613.us:                                ; preds = %Pf_SetAddCut.exit474.us
  %i.bnl = getelementptr inbounds nuw i8, ptr %.1155615.us, i64 48 ; 2 uses
  %i.bnm = icmp ult ptr %i.bnl, %i.la
  br i1 %i.bnm, label %.preheader.us, label %.loopexit526, !llvm.loop !165

.loopexit526:                                     ; preds = %._crit_edge613.us, %.preheader.lr.ph, %Gia_ObjIsXor.exit, %._crit_edge600
  %.9 = phi i32 [ %.2.lcssa, %._crit_edge600 ], [ %.1, %Gia_ObjIsXor.exit ], [ %.1, %.preheader.lr.ph ], [ %.8.us, %._crit_edge613.us ] ; 12 uses
  %i.bnn = load ptr, ptr %i.c, align 16, !tbaa !136 ; 2 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 12
  %i.bnp = load float, ptr %i.bno, align 4, !tbaa !131
  %i.bnq = getelementptr i8, ptr %0, i64 96
  %.val179 = load ptr, ptr %i.bnq, align 8, !tbaa !111
  %i.bnr = getelementptr inbounds [4 x i8], ptr %.val179, i64 %i.f
  store float %i.bnp, ptr %i.bnr, align 4, !tbaa !112
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnn, i64 8
  %i.bnt = load i32, ptr %i.bns, align 8, !tbaa !129
  %i.bnu = getelementptr i8, ptr %0, i64 112
  %.val180 = load ptr, ptr %i.bnu, align 8, !tbaa !33
  %i.bnv = getelementptr inbounds [4 x i8], ptr %.val180, i64 %i.f
  store i32 %i.bnt, ptr %i.bnv, align 4, !tbaa !34
  %i.bnw = icmp sgt i32 %.9, 0                    ; 3 uses
  br i1 %i.bnw, label %.lr.ph.preheader.i477, label %._crit_edge.i475

.lr.ph.preheader.i477:                            ; preds = %.loopexit526
  %wide.trip.count.i478 = zext nneg i32 %.9 to i64 ; 2 uses
  %xtraiter1152 = and i64 %wide.trip.count.i478, 3 ; 3 uses
  %i.bnx = icmp ult i32 %.9, 4
  br i1 %i.bnx, label %.lr.ph.i479.epil.preheader, label %.lr.ph.preheader.i477.new

.lr.ph.preheader.i477.new:                        ; preds = %.lr.ph.preheader.i477
  %unroll_iter1156 = and i64 %wide.trip.count.i478, 2147483644
  br label %.lr.ph.i479

.lr.ph.i479:                                      ; preds = %.lr.ph.i479, %.lr.ph.preheader.i477.new
  %indvars.iv.i480 = phi i64 [ 0, %.lr.ph.preheader.i477.new ], [ %indvars.iv.next.i481.3, %.lr.ph.i479 ] ; 5 uses
  %.04352.i = phi i32 [ 1, %.lr.ph.preheader.i477.new ], [ %i.bpc, %.lr.ph.i479 ]
  %niter1157 = phi i64 [ 0, %.lr.ph.preheader.i477.new ], [ %niter1157.next.3, %.lr.ph.i479 ]
  %i.bny = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i480
  %i.bnz = load ptr, ptr %i.bny, align 16, !tbaa !136
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 16
  %i.bob = load i32, ptr %i.boa, align 8
  %i.boc = lshr i32 %i.bob, 27
  %i.bod = add nuw nsw i32 %.04352.i, 1
  %i.boe = add nuw nsw i32 %i.bod, %i.boc
  %i.bof = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i480
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 8
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !136
  %i.boi = getelementptr inbounds nuw i8, ptr %i.boh, i64 16
  %i.boj = load i32, ptr %i.boi, align 8
  %i.bok = lshr i32 %i.boj, 27
  %i.bol = add nuw nsw i32 %i.boe, 1
  %i.bom = add nuw nsw i32 %i.bol, %i.bok
  %i.bon = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i480
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 16
  %i.bop = load ptr, ptr %i.boo, align 16, !tbaa !136
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bop, i64 16
  %i.bor = load i32, ptr %i.boq, align 8
  %i.bos = lshr i32 %i.bor, 27
  %i.bot = add nuw nsw i32 %i.bom, 1
  %i.bou = add nuw nsw i32 %i.bot, %i.bos
  %indvars.iv.next.i481.3 = add nuw nsw i64 %indvars.iv.i480, 4 ; 2 uses
  %i.bov = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i480
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 24
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !136
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 16
  %i.boz = load i32, ptr %i.boy, align 8
  %i.bpa = lshr i32 %i.boz, 27
  %i.bpb = add nuw nsw i32 %i.bou, 1
  %i.bpc = add nuw nsw i32 %i.bpb, %i.bpa         ; 3 uses
  %niter1157.next.3 = add i64 %niter1157, 4       ; 2 uses
  %niter1157.ncmp.3 = icmp eq i64 %niter1157.next.3, %unroll_iter1156
  br i1 %niter1157.ncmp.3, label %._crit_edge.i475.loopexit.unr-lcssa, label %.lr.ph.i479, !llvm.loop !166

._crit_edge.i475.loopexit.unr-lcssa:              ; preds = %.lr.ph.i479
  %lcmp.mod1153.not = icmp eq i64 %xtraiter1152, 0
  br i1 %lcmp.mod1153.not, label %._crit_edge.i475, label %.lr.ph.i479.epil.preheader

.lr.ph.i479.epil.preheader:                       ; preds = %._crit_edge.i475.loopexit.unr-lcssa, %.lr.ph.preheader.i477
  %indvars.iv.i480.epil.init = phi i64 [ 0, %.lr.ph.preheader.i477 ], [ %indvars.iv.next.i481.3, %._crit_edge.i475.loopexit.unr-lcssa ]
  %.04352.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i477 ], [ %i.bpc, %._crit_edge.i475.loopexit.unr-lcssa ]
  %lcmp.mod1155 = icmp ne i64 %xtraiter1152, 0
  call void @llvm.assume(i1 %lcmp.mod1155)
  br label %.lr.ph.i479.epil

.lr.ph.i479.epil:                                 ; preds = %.lr.ph.i479.epil, %.lr.ph.i479.epil.preheader
  %indvars.iv.i480.epil = phi i64 [ %indvars.iv.i480.epil.init, %.lr.ph.i479.epil.preheader ], [ %indvars.iv.next.i481.epil, %.lr.ph.i479.epil ] ; 2 uses
  %.04352.i.epil = phi i32 [ %.04352.i.epil.init, %.lr.ph.i479.epil.preheader ], [ %i.bpj, %.lr.ph.i479.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i479.epil.preheader ], [ %epil.iter.next, %.lr.ph.i479.epil ]
  %indvars.iv.next.i481.epil = add nuw nsw i64 %indvars.iv.i480.epil, 1
  %i.bpd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i480.epil
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !136
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 16
  %i.bpg = load i32, ptr %i.bpf, align 8
  %i.bph = lshr i32 %i.bpg, 27
  %i.bpi = add nuw nsw i32 %.04352.i.epil, 1
  %i.bpj = add nuw nsw i32 %i.bpi, %i.bph         ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1152
  br i1 %epil.iter.cmp.not, label %._crit_edge.i475, label %.lr.ph.i479.epil, !llvm.loop !167

._crit_edge.i475:                                 ; preds = %._crit_edge.i475.loopexit.unr-lcssa, %.lr.ph.i479.epil, %.loopexit526
  %.043.lcssa.i = phi i32 [ 1, %.loopexit526 ], [ %i.bpc, %._crit_edge.i475.loopexit.unr-lcssa ], [ %i.bpj, %.lr.ph.i479.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %.loopexit526 ], [ %.9, %.lr.ph.i479.epil ], [ %.9, %._crit_edge.i475.loopexit.unr-lcssa ]
  %i.bpk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bpl = load i32, ptr %i.bpk, align 8, !tbaa !107 ; 3 uses
  %i.bpm = and i32 %i.bpl, 65535
  %i.bpn = add nuw nsw i32 %i.bpm, %.043.lcssa.i
  %i.bpo = icmp samesign ugt i32 %i.bpn, 65535
  br i1 %i.bpo, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i475
  %i.bpp = and i32 %i.bpl, -65536
  %i.bpq = add i32 %i.bpp, 65536                  ; 2 uses
  store i32 %i.bpq, ptr %i.bpk, align 8, !tbaa !107
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i475
  %i.bpr = phi i32 [ %i.bpq, %bb.eg ], [ %i.bpl, %._crit_edge.i475 ] ; 3 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bpt = getelementptr i8, ptr %0, i64 60       ; 3 uses
  %.val.i476 = load i32, ptr %i.bpt, align 4, !tbaa !116 ; 6 uses
  %i.bpu = ashr i32 %i.bpr, 16                    ; 2 uses
  %i.bpv = icmp eq i32 %.val.i476, %i.bpu
  br i1 %i.bpv, label %bb.ei, label %bb.er

bb.ei:                                            ; preds = %bb.eh
  %i.bpw = call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #24
  %i.bpx = load i32, ptr %i.bps, align 8, !tbaa !109
  %i.bpy = icmp eq i32 %.val.i476, %i.bpx
  br i1 %i.bpy, label %bb.ej, label %.Vec_PtrPush.exit_crit_edge.i

end_hunk_1
begin_hunk_2_@Pf_ObjMergeOrder:bb.a

bb.et:                                            ; preds = %bb.es
  %i.btr = load ptr, ptr %i.btl, align 8, !tbaa !26
  %i.bts = lshr i32 %i.btp, 1
  %i.btt = and i32 %i.bts, 33554431
  %i.btu = getelementptr i8, ptr %i.btr, i64 8
  %.val10.i = load ptr, ptr %i.btu, align 8, !tbaa !31
  %i.btv = zext nneg i32 %i.btt to i64
  %i.btw = getelementptr inbounds nuw [16 x i8], ptr %.val10.i, i64 %i.btv
  %i.btx = getelementptr i8, ptr %i.btw, i64 4
  %.val.i500 = load i32, ptr %i.btx, align 4, !tbaa !32
  %i.bty = sdiv i32 %.val.i500, 2
  %i.btz = add nsw i32 %i.bty, %.012.i
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.1.i497 = phi i32 [ %.012.i, %bb.es ], [ %i.btz, %bb.et ] ; 2 uses
  %indvars.iv.next.i498 = add nuw nsw i64 %indvars.iv.i495, 1 ; 2 uses
  %exitcond.not.i499 = icmp eq i64 %indvars.iv.next.i498, %wide.trip.count.i494
  br i1 %exitcond.not.i499, label %Pf_ManCountMatches.exit.loopexit, label %bb.es, !llvm.loop !171

Pf_ManCountMatches.exit.loopexit:                 ; preds = %bb.eu
  %i.bua = sitofp i32 %.1.i497 to double
  br label %Pf_ManCountMatches.exit

Pf_ManCountMatches.exit:                          ; preds = %Pf_ManCountMatches.exit.loopexit, %Pf_ManCountUseful.exit
  %.0.lcssa.i492 = phi double [ 0.000000e+00, %Pf_ManCountUseful.exit ], [ %i.bua, %Pf_ManCountMatches.exit.loopexit ]
  %i.bub = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.buc = load double, ptr %i.bub, align 8, !tbaa !148
  %i.bud = fadd double %i.buc, %.0.lcssa.i492
  store double %i.bud, ptr %i.bub, align 8, !tbaa !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @Pf_SetAddCut(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.i, label %Pf_SetSortByArea.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64                  ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  br label %.outer.i

.outer.i:                                         ; preds = %Pf_SetCutIsContainedOrder.exit.thread.thread.i, %.lr.ph.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next74.i, %Pf_SetCutIsContainedOrder.exit.thread.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.e = phi i1 [ false, %Pf_SetCutIsContainedOrder.exit.thread.thread.i ], [ true, %.lr.ph.i ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !136  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %.fr = freeze i32 %i.h
  %i.i = lshr i32 %.fr, 27                        ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  br i1 %i.j, label %.outer.i.split.us, label %.outer.i.split

.outer.i.split.us:                                ; preds = %.outer.i, %Pf_SetCutIsContainedOrder.exit.thread.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %Pf_SetCutIsContainedOrder.exit.thread.i.us ], [ %indvars.iv.ph.i, %.outer.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.us
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not = icmp ult i32 %i.o, 134217728
  br i1 %.not, label %Pf_SetCutIsContainedOrder.exit.thread.i.us, label %bb.c

bb.c:                                             ; preds = %.outer.i.split.us
  %i.p = load i64, ptr %i.f, align 8, !tbaa !133  ; 2 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !133
  %i.r = and i64 %i.q, %i.p
  %i.s = icmp eq i64 %i.r, %i.p
  br i1 %i.s, label %Pf_SetCutIsContainedOrder.exit.thread.thread.i, label %Pf_SetCutIsContainedOrder.exit.thread.i.us

Pf_SetCutIsContainedOrder.exit.thread.i.us:       ; preds = %bb.c, %.outer.i.split.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.c
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.outer.i.split.us, !llvm.loop !156

.outer.i.split:                                   ; preds = %.outer.i, %Pf_SetCutIsContainedOrder.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Pf_SetCutIsContainedOrder.exit.thread.i ], [ %indvars.iv.ph.i, %.outer.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !136  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = lshr i32 %i.w, 27                        ; 2 uses
  %i.y = icmp samesign ult i32 %i.i, %i.x
  br i1 %i.y, label %bb.d, label %Pf_SetCutIsContainedOrder.exit.thread.i

bb.d:                                             ; preds = %.outer.i.split
  %i.z = load i64, ptr %i.f, align 8, !tbaa !133  ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !133
  %i.ab = and i64 %i.aa, %i.z
  %i.ac = icmp eq i64 %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph.i.i, label %Pf_SetCutIsContainedOrder.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %wide.trip.count.i.i = zext nneg i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.038.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !34 ; 2 uses
  %i.ag = sext i32 %.038.i.i to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !34 ; 2 uses
  %i.aj = icmp sgt i32 %i.af, %i.ai
  br i1 %i.aj, label %Pf_SetCutIsContainedOrder.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %i.af, %i.ai
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %.038.i.i, 1                ; 2 uses
  %i.am = icmp eq i32 %i.al, %i.i
  br i1 %i.am, label %Pf_SetCutIsContainedOrder.exit.thread.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i.i = phi i32 [ %i.al, %bb.g ], [ %.038.i.i, %bb.f ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Pf_SetCutIsContainedOrder.exit.thread.i, label %bb.e, !llvm.loop !150

Pf_SetCutIsContainedOrder.exit.thread.i:          ; preds = %bb.h, %bb.e, %bb.d, %.outer.i.split
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.outer.i.split, !llvm.loop !156

Pf_SetCutIsContainedOrder.exit.thread.thread.i:   ; preds = %bb.c, %bb.g
  %indvars.iv.i19 = phi i64 [ %indvars.iv.i, %bb.g ], [ %indvars.iv.i.us, %bb.c ]
  %.pn = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.c ]
  %i.an = phi i32 [ %i.w, %bb.g ], [ %i.o, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ap = or i32 %i.an, -134217728
  store i32 %i.ap, ptr %i.ao, align 8
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not75.i = icmp eq i64 %indvars.iv.next74.i, %i.c
  br i1 %exitcond.not75.i, label %.preheader.i, label %.outer.i, !llvm.loop !156

._crit_edge.i:                                    ; preds = %Pf_SetCutIsContainedOrder.exit.thread.i, %Pf_SetCutIsContainedOrder.exit.thread.i.us
  br i1 %i.e, label %Pf_SetLastCutContainsArea.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Pf_SetCutIsContainedOrder.exit.thread.thread.i, %._crit_edge.i
  %i.aq = add nuw i32 %1, 1
  %wide.trip.count62.i = zext i32 %i.aq to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %bb.l, %.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next60.i, %bb.l ] ; 3 uses
  %.04054.i = phi i32 [ 0, %.preheader.i ], [ %.141.i, %bb.l ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59.i ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !136 ; 2 uses
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
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !136
  store ptr %i.as, ptr %i.ay, align 8, !tbaa !136
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !136
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = add nsw i32 %.04054.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph55.i
  %.141.i = phi i32 [ %.04054.i, %.lr.ph55.i ], [ %i.ba, %bb.k ] ; 2 uses
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge56.loopexit.i, label %.lr.ph55.i, !llvm.loop !157

._crit_edge56.loopexit.i:                         ; preds = %bb.l
  %i.bb = add nsw i32 %.141.i, -1
  br label %Pf_SetLastCutContainsArea.exit

Pf_SetLastCutContainsArea.exit:                   ; preds = %._crit_edge.i, %._crit_edge56.loopexit.i
  %.0.i = phi i32 [ %i.bb, %._crit_edge56.loopexit.i ], [ %1, %._crit_edge.i ] ; 8 uses
  %i.bc = icmp sgt i32 %.0.i, 0
  br i1 %i.bc, label %.lr.ph.preheader.i, label %Pf_SetSortByArea.exit

.lr.ph.preheader.i:                               ; preds = %Pf_SetLastCutContainsArea.exit
  %3 = zext nneg i32 %.0.i to i64
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %Pf_CutCompareArea.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i9 = phi i64 [ %3, %.lr.ph.preheader.i ], [ %indvars.iv.next.i10, %Pf_CutCompareArea.exit.i ] ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i9 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !136 ; 4 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !136 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = lshr i32 %i.bi, 26
  %i.bk = and i32 %i.bj, 1                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.bn = lshr i32 %i.bm, 26
  %i.bo = and i32 %i.bn, 1                        ; 2 uses
  %i.bp = icmp samesign ult i32 %i.bk, %i.bo
  br i1 %i.bp, label %Pf_SetSortByArea.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i8
  %i.bq = icmp samesign ugt i32 %i.bk, %i.bo
  br i1 %i.bq, label %Pf_CutCompareArea.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !131 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !131 ; 2 uses
  %i.bv = fcmp olt float %i.bs, %i.bu
  br i1 %i.bv, label %Pf_SetSortByArea.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = fcmp ogt float %i.bs, %i.bu
  br i1 %i.bw, label %Pf_CutCompareArea.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !129 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !129 ; 2 uses
  %i.cb = icmp slt i32 %i.by, %i.ca
  br i1 %i.cb, label %Pf_SetSortByArea.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cc = icmp sgt i32 %i.by, %i.ca
  br i1 %i.cc, label %Pf_CutCompareArea.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = lshr i32 %i.bi, 27
  %i.ce = lshr i32 %i.bm, 27
  %i.cf = icmp samesign ult i32 %i.cd, %i.ce
  br i1 %i.cf, label %Pf_SetSortByArea.exit, label %Pf_CutCompareArea.exit.i

Pf_CutCompareArea.exit.i:                         ; preds = %bb.r, %bb.q, %bb.o, %bb.m
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !136
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !136
  %indvars.iv.next.i10 = add nsw i64 %indvars.iv.i9, -1
  %i.cg = icmp sgt i64 %indvars.iv.i9, 1
  br i1 %i.cg, label %.lr.ph.i8, label %Pf_SetSortByArea.exit, !llvm.loop !158

Pf_SetSortByArea.exit:                            ; preds = %.lr.ph.i8, %bb.n, %bb.p, %bb.r, %Pf_CutCompareArea.exit.i, %bb.b, %Pf_SetLastCutContainsArea.exit
  %.0.i10 = phi i32 [ %1, %bb.b ], [ %.0.i, %Pf_SetLastCutContainsArea.exit ], [ %.0.i, %Pf_CutCompareArea.exit.i ], [ %.0.i, %bb.r ], [ %.0.i, %bb.p ], [ %.0.i, %bb.n ], [ %.0.i, %.lr.ph.i8 ]
  %i.ch = add nsw i32 %.0.i10, 1
  %i.ci = add nsw i32 %2, -1
  %i.cj = tail call noundef i32 @llvm.smin.i32(i32 %i.ch, i32 %i.ci)
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %Pf_SetSortByArea.exit
  %.0 = phi i32 [ %i.cj, %Pf_SetSortByArea.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Pf_ManComputeCuts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !105
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = getelementptr i8, ptr %0, i64 112
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.g = phi ptr [ %i.a, %.lr.ph ], [ %i.ab, %bb.g ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 5 uses
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %.val = load ptr, ptr %i.h, align 8, !tbaa !125 ; 2 uses
  %.not = icmp eq ptr %.val, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv
  %.val24 = load i64, ptr %i.i, align 4           ; 4 uses
  %i.j = and i64 %.val24, 2147483648
  %.not.i = icmp eq i64 %i.j, 0
  %i.k = and i64 %.val24, 536870911
  %i.l = icmp ne i64 %i.k, 536870911
  %narrow.i = and i1 %.not.i, %i.l
  br i1 %narrow.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = trunc i64 %.val24 to i32
  %i.n = and i32 %i.m, 536870911                  ; 3 uses
  %i.o = lshr i64 %.val24, 32
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = and i32 %i.p, 536870911
  %i.r = icmp eq i32 %i.n, %i.q
  %.not.i28 = icmp ne i32 %i.n, 536870911
  %or.cond.not.i = and i1 %.not.i28, %i.r
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  br i1 %or.cond.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i32 %i.s, %i.n
  %.val23 = load ptr, ptr %i.e, align 8, !tbaa !111 ; 2 uses
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !112
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %indvars.iv
  store float %i.w, ptr %i.x, align 4, !tbaa !112
  %.val22 = load ptr, ptr %i.f, align 8, !tbaa !33 ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.val22, i64 %i.u
  %i.z = load i32, ptr %i.y, align 4, !tbaa !34
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val22, i64 %indvars.iv
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @Pf_ObjMergeOrder(ptr noundef nonnull %0, i32 noundef %i.s)
  %.pre = load ptr, ptr %0, align 8, !tbaa !103
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %i.ab = phi ptr [ %i.g, %bb.c ], [ %.pre, %bb.f ], [ %i.g, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !105
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %bb.b, label %.critedge, !llvm.loop !172

.critedge:                                        ; preds = %bb.b, %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pf_ManPrintStats(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !173
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %1) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !174
  %i.i = sitofp i32 %i.h to float
  %i.j = fpext float %i.i to double
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.j) ; 0 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  %i.n = load float, ptr %i.m, align 4, !tbaa !175
  %i.o = fpext float %i.n to double
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %i.o) ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.s = load i64, ptr %i.r, align 8, !tbaa !176
  %i.t = trunc i64 %i.s to i32
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i32, ptr %i.v, align 4, !tbaa !177
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.w) ; 0 uses
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 184
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !178
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.ab) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ad = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #22
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %Abc_Clock.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i64, ptr %2, align 8, !tbaa !99
  %i.ag = mul nsw i64 %i.af, 1000000
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !101
  %i.aj = sdiv i64 %i.ai, 1000
  %i.ak = add nsw i64 %i.aj, %i.ag
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.ak, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load i64, ptr %i.al, align 8, !tbaa !102
  %i.an = sub nsw i64 %.0.i, %i.am
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.15)
  %i.ao = sitofp i64 %i.an to double
  %i.ap = fdiv double %i.ao, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.40, double noundef %i.ap)
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !179
  %i.ar = call i32 @fflush(ptr noundef %i.aq)     ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %Abc_Clock.exit
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define void @Pf_ManPrintInit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !173
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !126
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.e) ; 0 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !128
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.i) ; 0 uses
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !181
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !182
  %i.p = add nsw i32 %i.o, %i.m
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %i.p) ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !183
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !74
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.w) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val = load i32, ptr %i.aa, align 4, !tbaa !39
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %.val) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_2
