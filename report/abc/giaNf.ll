inline.NumInlined: 1012
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Nf_ObjMergeOrder:bb.a
  %.epil.init1138 = phi i32 [ 0, %.lr.ph.i321.us.us.us ], [ %i.apa, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa ]
  %lcmp.mod1142 = trunc i32 %i.aof to i1
  call void @llvm.assume(i1 %lcmp.mod1142)
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.aao, i64 %indvars.iv.i325.us.us.us.epil.init
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !15
  %i.apg = sext i32 %i.apf to i64                 ; 2 uses
  %i.aph = getelementptr inbounds [4 x i8], ptr %.val.i322.us.us.us, i64 %i.apg
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !15
  %i.apj = call noundef i32 @llvm.smax.i32(i32 %.epil.init1138, i32 %i.api) ; 2 uses
  store i32 %i.apj, ptr %i.aog, align 8, !tbaa !144
  %i.apk = getelementptr inbounds [4 x i8], ptr %.val22.i323.us.us.us, i64 %i.apg
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !116
  %i.apm = fadd float %.epil.init1136, %i.apl     ; 2 uses
  store float %i.apm, ptr %i.aoh, align 4, !tbaa !146
  br label %._crit_edge.i328.us.us.us

._crit_edge.i328.us.us.us:                        ; preds = %.epil.preheader1133, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa, %bb.bh
  %i.apn = phi float [ 0.000000e+00, %bb.bh ], [ %i.apd, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa ], [ %i.apm, %.epil.preheader1133 ]
  %i.apo = phi i32 [ 0, %bb.bh ], [ %i.apa, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa ], [ %i.apj, %.epil.preheader1133 ]
  %i.app = icmp ugt i32 %i.aku, 268435455
  %i.apq = zext i1 %i.app to i32
  %i.apr = add nuw nsw i32 %i.apo, %i.apq
  store i32 %i.apr, ptr %i.aog, align 8, !tbaa !144
  %i.aps = icmp ult i32 %i.aku, 268435456
  br i1 %i.aps, label %Nf_CutParams.exit330.us.us.us, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i328.us.us.us
  %i.apt = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 28
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !159
  %i.apw = add nsw i32 %i.apv, %i.aof
  %i.apx = sitofp i32 %i.apw to float
  br label %Nf_CutParams.exit330.us.us.us

Nf_CutParams.exit330.us.us.us:                    ; preds = %bb.bj, %._crit_edge.i328.us.us.us
  %.0.i.i329.us.us.us = phi float [ %i.apx, %bb.bj ], [ 0.000000e+00, %._crit_edge.i328.us.us.us ]
  %i.apy = fadd float %i.apn, %.0.i.i329.us.us.us
  %i.apz = fdiv float %i.apy, %i.o
  store float %i.apz, ptr %i.aoh, align 4, !tbaa !146
  %i.aqa = icmp eq i32 %.4591.us.us.us, 0
  br i1 %i.aqa, label %Nf_SetAddCut.exit.us.us.us, label %bb.bk

bb.bk:                                            ; preds = %Nf_CutParams.exit330.us.us.us
  br i1 %i.abv, label %.lr.ph.i.i332.us.us.us, label %Nf_SetSortByArea.exit.i.us.us.us

.lr.ph.i.i332.us.us.us:                           ; preds = %bb.bk
  %i.aqb = zext nneg i32 %.4591.us.us.us to i64   ; 4 uses
  %i.aqc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.aqb
  br label %.outer.i.i.us.us.us

.outer.i.i.us.us.us:                              ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %.lr.ph.i.i332.us.us.us
  %indvars.iv.ph.i.i.us.us.us = phi i64 [ %indvars.iv.next74.i.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us ], [ 0, %.lr.ph.i.i332.us.us.us ] ; 2 uses
  %i.aqd = phi i1 [ false, %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us ], [ true, %.lr.ph.i.i332.us.us.us ]
  %i.aqe = load ptr, ptr %i.aqc, align 8, !tbaa !151 ; 4 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %i.aqg = load i32, ptr %i.aqf, align 8
  %.fr.i.us.us.us = freeze i32 %i.aqg
  %i.aqh = lshr i32 %.fr.i.us.us.us, 27           ; 3 uses
  %i.aqi = icmp eq i32 %i.aqh, 0
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqe, i64 20
  br i1 %i.aqi, label %.outer.i.split.us.i.us.us.us, label %.outer.i.split.i.us.us.us

.outer.i.split.i.us.us.us:                        ; preds = %.outer.i.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us
  %indvars.iv.i.i333.us.us.us = phi i64 [ %indvars.iv.next.i.i334.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us ], [ %indvars.iv.ph.i.i.us.us.us, %.outer.i.i.us.us.us ] ; 3 uses
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i333.us.us.us
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !151 ; 4 uses
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 16
  %i.aqn = load i32, ptr %i.aqm, align 8          ; 2 uses
  %i.aqo = lshr i32 %i.aqn, 27                    ; 2 uses
  %i.aqp = icmp samesign ult i32 %i.aqh, %i.aqo
  br i1 %i.aqp, label %bb.bl, label %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us

bb.bl:                                            ; preds = %.outer.i.split.i.us.us.us
  %i.aqq = load i64, ptr %i.aqe, align 8, !tbaa !148 ; 2 uses
  %i.aqr = load i64, ptr %i.aql, align 8, !tbaa !148
  %i.aqs = and i64 %i.aqr, %i.aqq
  %i.aqt = icmp eq i64 %i.aqs, %i.aqq
  br i1 %i.aqt, label %.lr.ph.i.i.i.us.us.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us

.lr.ph.i.i.i.us.us.us:                            ; preds = %bb.bl
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aql, i64 20
  %wide.trip.count.i.i.i.us.us.us = zext nneg i32 %i.aqo to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.us.us.us
  %indvars.iv.i.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i.i.us.us.us ], [ %indvars.iv.next.i.i.i.us.us.us, %bb.bp ] ; 2 uses
  %.038.i.i.i.us.us.us = phi i32 [ 0, %.lr.ph.i.i.i.us.us.us ], [ %.1.i.i.i.us.us.us, %bb.bp ] ; 3 uses
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %indvars.iv.i.i.i.us.us.us
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !15 ; 2 uses
  %i.aqx = sext i32 %.038.i.i.i.us.us.us to i64
  %i.aqy = getelementptr inbounds [4 x i8], ptr %i.aqj, i64 %i.aqx
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !15 ; 2 uses
  %i.ara = icmp sgt i32 %i.aqw, %i.aqz
  br i1 %i.ara, label %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.arb = icmp eq i32 %i.aqw, %i.aqz
  br i1 %i.arb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.arc = add nsw i32 %.038.i.i.i.us.us.us, 1    ; 2 uses
  %i.ard = icmp eq i32 %i.arc, %i.aqh
  br i1 %i.ard, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.1.i.i.i.us.us.us = phi i32 [ %i.arc, %bb.bo ], [ %.038.i.i.i.us.us.us, %bb.bn ]
  %indvars.iv.next.i.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i.i.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i.i.us.us.us = icmp eq i64 %indvars.iv.next.i.i.i.us.us.us, %wide.trip.count.i.i.i.us.us.us
  br i1 %exitcond.not.i.i.i.us.us.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, label %bb.bm, !llvm.loop !165

Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us: ; preds = %bb.bm, %bb.bp, %bb.bl, %.outer.i.split.i.us.us.us
  %indvars.iv.next.i.i334.us.us.us = add nuw nsw i64 %indvars.iv.i.i333.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i335.us.us.us = icmp eq i64 %indvars.iv.next.i.i334.us.us.us, %i.aqb
  br i1 %exitcond.not.i.i335.us.us.us, label %._crit_edge.i.i336.us.us.us, label %.outer.i.split.i.us.us.us, !llvm.loop !171

.outer.i.split.us.i.us.us.us:                     ; preds = %.outer.i.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  %indvars.iv.i.us.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us ], [ %indvars.iv.ph.i.i.us.us.us, %.outer.i.i.us.us.us ] ; 3 uses
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i.us.us.us
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !151 ; 3 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 16
  %i.arh = load i32, ptr %i.arg, align 8          ; 2 uses
  %.not.i339.us.us.us = icmp ult i32 %i.arh, 134217728
  br i1 %.not.i339.us.us.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us, label %bb.bq

bb.bq:                                            ; preds = %.outer.i.split.us.i.us.us.us
  %i.ari = load i64, ptr %i.aqe, align 8, !tbaa !148 ; 2 uses
  %i.arj = load i64, ptr %i.arf, align 8, !tbaa !148
  %i.ark = and i64 %i.arj, %i.ari
  %i.arl = icmp eq i64 %i.ark, %i.ari
  br i1 %i.arl, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us

Nf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us: ; preds = %bb.bq, %.outer.i.split.us.i.us.us.us
  %indvars.iv.next.i.us.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.i.us.us.us, %i.aqb
  br i1 %exitcond.not.i.us.i.us.us.us, label %._crit_edge.i.i336.us.us.us, label %.outer.i.split.us.i.us.us.us, !llvm.loop !171

Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us: ; preds = %bb.bq, %bb.bo
  %indvars.iv.i19.i.us.us.us = phi i64 [ %indvars.iv.i.i333.us.us.us, %bb.bo ], [ %indvars.iv.i.us.i.us.us.us, %bb.bq ]
  %.pn.i.us.us.us = phi ptr [ %i.aql, %bb.bo ], [ %i.arf, %bb.bq ]
  %i.arm = phi i32 [ %i.aqn, %bb.bo ], [ %i.arh, %bb.bq ]
  %i.arn = getelementptr inbounds nuw i8, ptr %.pn.i.us.us.us, i64 16
  %i.aro = or i32 %i.arm, -134217728
  store i32 %i.aro, ptr %i.arn, align 8
  %indvars.iv.next74.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i19.i.us.us.us, 1 ; 2 uses
  %exitcond.not75.i.i.us.us.us = icmp eq i64 %indvars.iv.next74.i.i.us.us.us, %i.aqb
  br i1 %exitcond.not75.i.i.us.us.us, label %.preheader.i.i337.us.us.us, label %.outer.i.i.us.us.us, !llvm.loop !171

._crit_edge.i.i336.us.us.us:                      ; preds = %Nf_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  br i1 %i.aqd, label %Nf_SetLastCutContainsArea.exit.i.us.us.us, label %.preheader.i.i337.us.us.us

.preheader.i.i337.us.us.us:                       ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %._crit_edge.i.i336.us.us.us
  %i.arp = add nuw i32 %.4591.us.us.us, 1
  %wide.trip.count62.i.i.us.us.us = zext i32 %i.arp to i64
  br label %.lr.ph55.i.i.us.us.us

.lr.ph55.i.i.us.us.us:                            ; preds = %bb.bu, %.preheader.i.i337.us.us.us
  %indvars.iv59.i.i.us.us.us = phi i64 [ 0, %.preheader.i.i337.us.us.us ], [ %indvars.iv.next60.i.i.us.us.us, %bb.bu ] ; 3 uses
  %.04054.i.i.us.us.us = phi i32 [ 0, %.preheader.i.i337.us.us.us ], [ %.141.i.i.us.us.us, %bb.bu ] ; 3 uses
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i.us.us.us ; 2 uses
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !151 ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.art = load i32, ptr %i.ars, align 8
  %i.aru = icmp ugt i32 %i.art, -134217729
  br i1 %i.aru, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %.lr.ph55.i.i.us.us.us
  %i.arv = sext i32 %.04054.i.i.us.us.us to i64   ; 2 uses
  %i.arw = icmp sgt i64 %indvars.iv59.i.i.us.us.us, %i.arv
  br i1 %i.arw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.arx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.arv ; 2 uses
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !151
  store ptr %i.arr, ptr %i.arx, align 8, !tbaa !151
  store ptr %i.ary, ptr %i.arq, align 8, !tbaa !151
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.arz = add nsw i32 %.04054.i.i.us.us.us, 1
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph55.i.i.us.us.us
  %.141.i.i.us.us.us = phi i32 [ %.04054.i.i.us.us.us, %.lr.ph55.i.i.us.us.us ], [ %i.arz, %bb.bt ] ; 2 uses
  %indvars.iv.next60.i.i.us.us.us = add nuw nsw i64 %indvars.iv59.i.i.us.us.us, 1 ; 2 uses
  %exitcond63.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next60.i.i.us.us.us, %wide.trip.count62.i.i.us.us.us
  br i1 %exitcond63.not.i.i.us.us.us, label %._crit_edge56.loopexit.i.i.us.us.us, label %.lr.ph55.i.i.us.us.us, !llvm.loop !172

._crit_edge56.loopexit.i.i.us.us.us:              ; preds = %bb.bu
  %i.asa = add nsw i32 %.141.i.i.us.us.us, -1
  br label %Nf_SetLastCutContainsArea.exit.i.us.us.us

Nf_SetLastCutContainsArea.exit.i.us.us.us:        ; preds = %._crit_edge56.loopexit.i.i.us.us.us, %._crit_edge.i.i336.us.us.us
  %.0.i.i338.us.us.us = phi i32 [ %i.asa, %._crit_edge56.loopexit.i.i.us.us.us ], [ %.4591.us.us.us, %._crit_edge.i.i336.us.us.us ] ; 8 uses
  %i.asb = icmp sgt i32 %.0.i.i338.us.us.us, 0
  br i1 %i.asb, label %.lr.ph.i8.i.us.us.us.preheader, label %Nf_SetSortByArea.exit.i.us.us.us

.lr.ph.i8.i.us.us.us.preheader:                   ; preds = %Nf_SetLastCutContainsArea.exit.i.us.us.us
  %i.asc = zext nneg i32 %.0.i.i338.us.us.us to i64
  br label %.lr.ph.i8.i.us.us.us

.lr.ph.i8.i.us.us.us:                             ; preds = %.lr.ph.i8.i.us.us.us.preheader, %Nf_CutCompareArea.exit.i.i.us.us.us
  %indvars.iv697 = phi i64 [ %i.asc, %.lr.ph.i8.i.us.us.us.preheader ], [ %indvars.iv.next698, %Nf_CutCompareArea.exit.i.i.us.us.us ] ; 3 uses
  %i.asd = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv697 ; 3 uses
  %i.ase = getelementptr i8, ptr %i.asd, i64 -8   ; 2 uses
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !151 ; 4 uses
  %i.asg = load ptr, ptr %i.asd, align 8, !tbaa !151 ; 4 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asf, i64 16
  %i.asi = load i32, ptr %i.ash, align 8          ; 2 uses
  %i.asj = lshr i32 %i.asi, 26
  %i.ask = and i32 %i.asj, 1                      ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  %i.asm = load i32, ptr %i.asl, align 8          ; 2 uses
  %i.asn = lshr i32 %i.asm, 26
  %i.aso = and i32 %i.asn, 1                      ; 2 uses
  %i.asp = icmp samesign ult i32 %i.ask, %i.aso
  br i1 %i.asp, label %Nf_SetSortByArea.exit.i.us.us.us, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i8.i.us.us.us
  %i.asq = icmp samesign ugt i32 %i.ask, %i.aso
  br i1 %i.asq, label %Nf_CutCompareArea.exit.i.i.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asf, i64 12
  %i.ass = load float, ptr %i.asr, align 4, !tbaa !146
  %i.ast = fpext float %i.ass to double           ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asg, i64 12
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !146
  %i.asw = fpext float %i.asv to double           ; 2 uses
  %i.asx = fadd double %i.asw, -1.000000e-03
  %i.asy = fcmp ogt double %i.asx, %i.ast
  br i1 %i.asy, label %Nf_SetSortByArea.exit.i.us.us.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.asz = fadd double %i.asw, 1.000000e-03
  %i.ata = fcmp olt double %i.asz, %i.ast
  br i1 %i.ata, label %Nf_CutCompareArea.exit.i.i.us.us.us, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asf, i64 8
  %i.atc = load i32, ptr %i.atb, align 8, !tbaa !144 ; 2 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.ate = load i32, ptr %i.atd, align 8, !tbaa !144 ; 2 uses
  %i.atf = icmp slt i32 %i.atc, %i.ate
  br i1 %i.atf, label %Nf_SetSortByArea.exit.i.us.us.us, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.atg = icmp sgt i32 %i.atc, %i.ate
  br i1 %i.atg, label %Nf_CutCompareArea.exit.i.i.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ath = lshr i32 %i.asi, 27
  %i.ati = lshr i32 %i.asm, 27
  %i.atj = icmp samesign ult i32 %i.ath, %i.ati
  br i1 %i.atj, label %Nf_SetSortByArea.exit.i.us.us.us, label %Nf_CutCompareArea.exit.i.i.us.us.us

Nf_CutCompareArea.exit.i.i.us.us.us:              ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bv
  store ptr %i.asg, ptr %i.ase, align 8, !tbaa !151
  store ptr %i.asf, ptr %i.asd, align 8, !tbaa !151
  %indvars.iv.next698 = add nsw i64 %indvars.iv697, -1
  %i.atk = icmp sgt i64 %indvars.iv697, 1
  br i1 %i.atk, label %.lr.ph.i8.i.us.us.us, label %Nf_SetSortByArea.exit.i.us.us.us, !llvm.loop !173

Nf_SetSortByArea.exit.i.us.us.us:                 ; preds = %.lr.ph.i8.i.us.us.us, %bb.bw, %bb.by, %bb.ca, %Nf_CutCompareArea.exit.i.i.us.us.us, %Nf_SetLastCutContainsArea.exit.i.us.us.us, %bb.bk
  %.0.i10.i.us.us.us = phi i32 [ %.4591.us.us.us, %bb.bk ], [ %.0.i.i338.us.us.us, %Nf_SetLastCutContainsArea.exit.i.us.us.us ], [ %.0.i.i338.us.us.us, %Nf_CutCompareArea.exit.i.i.us.us.us ], [ %.0.i.i338.us.us.us, %bb.ca ], [ %.0.i.i338.us.us.us, %bb.by ], [ %.0.i.i338.us.us.us, %bb.bw ], [ %.0.i.i338.us.us.us, %.lr.ph.i8.i.us.us.us ]
  %i.atl = add nsw i32 %.0.i10.i.us.us.us, 1
  %i.atm = call noundef i32 @llvm.smin.i32(i32 %i.atl, i32 %i.zn)
  br label %Nf_SetAddCut.exit.us.us.us

Nf_SetAddCut.exit.us.us.us:                       ; preds = %bb.ac, %bb.ah, %bb.ao, %bb.ak, %bb.an, %Nf_SetSortByArea.exit.i.us.us.us, %Nf_CutParams.exit330.us.us.us, %bb.t
  %.5.us.us.us = phi i32 [ %.4591.us.us.us, %bb.t ], [ %.4591.us.us.us, %bb.ao ], [ 1, %Nf_CutParams.exit330.us.us.us ], [ %i.atm, %Nf_SetSortByArea.exit.i.us.us.us ], [ %.4591.us.us.us, %bb.ah ], [ %.4591.us.us.us, %bb.ak ], [ %.4591.us.us.us, %bb.an ], [ %.4591.us.us.us, %bb.ac ] ; 4 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %.0592.us.us.us, i64 48 ; 2 uses
  %i.ato = icmp ult ptr %i.atn, %i.yx
  br i1 %i.ato, label %bb.t, label %._crit_edge594.us.us.us, !llvm.loop !174

._crit_edge594.us.us.us:                          ; preds = %Nf_SetAddCut.exit.us.us.us
  %i.atp = getelementptr inbounds nuw i8, ptr %.0154596.us.us.us, i64 48 ; 2 uses
  %i.atq = icmp ult ptr %i.atp, %i.lg
  br i1 %i.atq, label %.preheader538.us.us.us, label %._crit_edge598.split.us.us.us, !llvm.loop !175

._crit_edge598.split.us.us.us:                    ; preds = %._crit_edge594.us.us.us
  %i.atr = getelementptr inbounds nuw i8, ptr %.0156600.us.us, i64 48 ; 2 uses
  %i.ats = icmp ult ptr %i.atr, %i.le
  br i1 %i.ats, label %.preheader539.us.us, label %._crit_edge603, !llvm.loop !176

._crit_edge603:                                   ; preds = %._crit_edge598.split.us.us.us, %.preheader539.lr.ph, %Nf_ManPrepareCuts.exit282
  %.2.lcssa = phi i32 [ %.1, %Nf_ManPrepareCuts.exit282 ], [ %.1, %.preheader539.lr.ph ], [ %.5.us.us.us, %._crit_edge598.split.us.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.loopexit529

Gia_ObjIsMuxId.exit.thread:                       ; preds = %bb.p, %Gia_ObjIsMuxId.exit
  %.val181 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.att = and i64 %.val181, 2147483648
  %.not.i.i340 = icmp ne i64 %i.att, 0
  %i.atu = and i64 %.val181, 536870911
  %i.atv = icmp eq i64 %i.atu, 536870911
  %narrow.i.not.i = or i1 %.not.i.i340, %i.atv
  br i1 %narrow.i.not.i, label %Gia_ObjIsXor.exit, label %bb.cb

bb.cb:                                            ; preds = %Gia_ObjIsMuxId.exit.thread
  %i.atw = trunc i64 %.val181 to i32
  %i.atx = and i32 %i.atw, 536870911
  %i.aty = lshr i64 %.val181, 32
  %i.atz = trunc nuw i64 %i.aty to i32
  %i.aua = and i32 %i.atz, 536870911
  %i.aub = icmp samesign uge i32 %i.atx, %i.aua
  br label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %Gia_ObjIsMuxId.exit.thread, %bb.cb
  %.not39.i = phi i1 [ true, %Gia_ObjIsMuxId.exit.thread ], [ %i.aub, %bb.cb ]
  %i.auc = mul nsw i32 %.1.i189, %.1.i
  %i.aud = sitofp i32 %i.auc to double
  %i.aue = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.auf = load double, ptr %i.aue, align 8, !tbaa !163
  %i.aug = fadd double %i.auf, %i.aud
  store double %i.aug, ptr %i.aue, align 8, !tbaa !163
  %i.auh = icmp sgt i32 %.1.i, 0
  br i1 %i.auh, label %.preheader.lr.ph, label %.loopexit529

.preheader.lr.ph:                                 ; preds = %Gia_ObjIsXor.exit
  %i.aui = icmp sgt i32 %.1.i189, 0
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.auk = icmp eq i32 %i.r, 0                    ; 2 uses
  %wide.trip.count158.i = zext i32 %i.r to i64    ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aun = getelementptr i8, ptr %0, i64 32
  %i.auo = getelementptr i8, ptr %0, i64 168
  %i.aup = getelementptr i8, ptr %0, i64 152
  %i.auq = add nsw i32 %i.t, -1
  br i1 %i.aui, label %.preheader.us, label %.loopexit529

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge616.us
  %indvar = phi i64 [ %indvar.next, %._crit_edge616.us ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.6619.us = phi i32 [ %.8.us, %._crit_edge616.us ], [ %.1, %.preheader.lr.ph ]
  %.1157618.us = phi ptr [ %i.bnu, %._crit_edge616.us ], [ %2, %.preheader.lr.ph ] ; 5 uses
  %i.aur = mul i64 %indvar, 48
  %i.aus = getelementptr i8, ptr %2, i64 %i.aur
  %scevgep704 = getelementptr i8, ptr %i.aus, i64 20
  %i.aut = getelementptr inbounds nuw i8, ptr %.1157618.us, i64 16
  %i.auu = getelementptr inbounds nuw i8, ptr %.1157618.us, i64 20 ; 3 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader.us, %Nf_SetAddCut.exit477.us
  %indvar708 = phi i64 [ 0, %.preheader.us ], [ %indvar.next709, %Nf_SetAddCut.exit477.us ] ; 2 uses
  %.7611.us = phi i32 [ %.6619.us, %.preheader.us ], [ %.8.us, %Nf_SetAddCut.exit477.us ] ; 18 uses
  %.1155610.us = phi ptr [ %3, %.preheader.us ], [ %i.bns, %Nf_SetAddCut.exit477.us ] ; 5 uses
  %i.auv = mul i64 %indvar708, 48
  %i.auw = getelementptr i8, ptr %3, i64 %i.auv
  %scevgep710 = getelementptr i8, ptr %i.auw, i64 20
  %i.aux = load i32, ptr %i.aut, align 8          ; 3 uses
  %i.auy = lshr i32 %i.aux, 27                    ; 11 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %.1155610.us, i64 16
  %i.ava = load i32, ptr %i.auz, align 8          ; 3 uses
  %i.avb = lshr i32 %i.ava, 27                    ; 11 uses
  %i.avc = add nuw nsw i32 %i.avb, %i.auy
  %i.avd = icmp sgt i32 %i.avc, %i.r
  br i1 %i.avd, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ave = load i64, ptr %.1157618.us, align 8, !tbaa !148
  %i.avf = load i64, ptr %.1155610.us, align 8, !tbaa !148
  %i.avg = or i64 %i.avf, %i.ave
  %i.avh = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.avg)
  %i.avi = trunc nuw nsw i64 %i.avh to i32
  %i.avj = icmp slt i32 %i.r, %i.avi
  br i1 %i.avj, label %Nf_SetAddCut.exit477.us, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.avk = load double, ptr %i.auj, align 8, !tbaa !163
  %i.avl = fadd double %i.avk, 1.000000e+00
  store double %i.avl, ptr %i.auj, align 8, !tbaa !163
  %i.avm = sext i32 %.7611.us to i64
  %i.avn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.avm
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !151 ; 19 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %.1155610.us, i64 20 ; 3 uses
  %i.avq = getelementptr i8, ptr %i.avo, i64 20   ; 15 uses
  %i.avr = icmp eq i32 %i.auy, %i.r
  %i.avs = icmp eq i32 %i.avb, %i.r
  %or.cond.i.us = and i1 %i.avr, %i.avs
  br i1 %or.cond.i.us, label %.preheader.i.us, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.avt = icmp eq i32 %i.auy, 0
  br i1 %i.avt, label %.loopexit120.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.avu = icmp eq i32 %i.avb, 0
  br i1 %i.avu, label %.loopexit121.i.us, label %.preheader118.i.us

.preheader118.i.us:                               ; preds = %bb.cg
  br i1 %i.auk, label %Nf_SetAddCut.exit477.us, label %.lr.ph.i341.us

.lr.ph.i341.us:                                   ; preds = %.preheader118.i.us, %bb.cm
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %bb.cm ], [ 0, %.preheader118.i.us ] ; 2 uses
  %.091123.i.us = phi i32 [ %.192.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %.196122.i.us = phi i32 [ %.297.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %i.avv = sext i32 %.196122.i.us to i64
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.auu, i64 %i.avv
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !15 ; 4 uses
  %i.avy = sext i32 %.091123.i.us to i64
  %i.avz = getelementptr inbounds [4 x i8], ptr %i.avp, i64 %i.avy
end_hunk_0
begin_hunk_1_@Nf_ObjMergeOrder:bb.a
  %.epil.init1150 = phi i32 [ 0, %.lr.ph.i422.us ], [ %i.bjf, %._crit_edge.i429.us.loopexit.unr-lcssa ]
  %lcmp.mod1154 = trunc i32 %i.bik to i1
  call void @llvm.assume(i1 %lcmp.mod1154)
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.avq, i64 %indvars.iv.i426.us.epil.init
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !15
  %i.bjl = sext i32 %i.bjk to i64                 ; 2 uses
  %i.bjm = getelementptr inbounds [4 x i8], ptr %.val.i423.us, i64 %i.bjl
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !15
  %i.bjo = call noundef i32 @llvm.smax.i32(i32 %.epil.init1150, i32 %i.bjn) ; 2 uses
  store i32 %i.bjo, ptr %i.bil, align 8, !tbaa !144
  %i.bjp = getelementptr inbounds [4 x i8], ptr %.val22.i424.us, i64 %i.bjl
  %i.bjq = load float, ptr %i.bjp, align 4, !tbaa !116
  %i.bjr = fadd float %.epil.init1148, %i.bjq     ; 2 uses
  store float %i.bjr, ptr %i.bim, align 4, !tbaa !146
  br label %._crit_edge.i429.us

._crit_edge.i429.us:                              ; preds = %.epil.preheader1145, %._crit_edge.i429.us.loopexit.unr-lcssa, %bb.dm
  %i.bjs = phi float [ 0.000000e+00, %bb.dm ], [ %i.bji, %._crit_edge.i429.us.loopexit.unr-lcssa ], [ %i.bjr, %.epil.preheader1145 ]
  %i.bjt = phi i32 [ 0, %bb.dm ], [ %i.bjf, %._crit_edge.i429.us.loopexit.unr-lcssa ], [ %i.bjo, %.epil.preheader1145 ]
  %i.bju = icmp ugt i32 %i.bez, 268435455
  %i.bjv = zext i1 %i.bju to i32
  %i.bjw = add nuw nsw i32 %i.bjt, %i.bjv
  store i32 %i.bjw, ptr %i.bil, align 8, !tbaa !144
  %i.bjx = icmp ult i32 %i.bez, 268435456
  br i1 %i.bjx, label %Nf_CutParams.exit431.us, label %bb.do

bb.do:                                            ; preds = %._crit_edge.i429.us
  %i.bjy = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjy, i64 28
  %i.bka = load i32, ptr %i.bjz, align 4, !tbaa !159
  %i.bkb = add nsw i32 %i.bka, %i.bik
  %i.bkc = sitofp i32 %i.bkb to float
  br label %Nf_CutParams.exit431.us

Nf_CutParams.exit431.us:                          ; preds = %bb.do, %._crit_edge.i429.us
  %.0.i.i430.us = phi float [ %i.bkc, %bb.do ], [ 0.000000e+00, %._crit_edge.i429.us ]
  %i.bkd = fadd float %i.bjs, %.0.i.i430.us
  %i.bke = fdiv float %i.bkd, %i.o
  store float %i.bke, ptr %i.bim, align 4, !tbaa !146
  %i.bkf = icmp eq i32 %.7611.us, 0
  br i1 %i.bkf, label %Nf_SetAddCut.exit477.us, label %bb.dp

bb.dp:                                            ; preds = %Nf_CutParams.exit431.us
  br i1 %i.axx, label %.lr.ph.i.i435.us, label %Nf_SetSortByArea.exit.i432.us

.lr.ph.i.i435.us:                                 ; preds = %bb.dp
  %i.bkg = zext nneg i32 %.7611.us to i64         ; 4 uses
  %i.bkh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bkg
  br label %.outer.i.i436.us

.outer.i.i436.us:                                 ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, %.lr.ph.i.i435.us
  %indvars.iv.ph.i.i437.us = phi i64 [ %indvars.iv.next74.i.i469.us, %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us ], [ 0, %.lr.ph.i.i435.us ] ; 2 uses
  %i.bki = phi i1 [ false, %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us ], [ true, %.lr.ph.i.i435.us ]
  %i.bkj = load ptr, ptr %i.bkh, align 8, !tbaa !151 ; 4 uses
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 16
  %i.bkl = load i32, ptr %i.bkk, align 8
  %.fr.i438.us = freeze i32 %i.bkl
  %i.bkm = lshr i32 %.fr.i438.us, 27              ; 3 uses
  %i.bkn = icmp eq i32 %i.bkm, 0
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bkj, i64 20
  br i1 %i.bkn, label %.outer.i.split.us.i471.us, label %.outer.i.split.i439.us

.outer.i.split.i439.us:                           ; preds = %.outer.i.i436.us, %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us
  %indvars.iv.i.i440.us = phi i64 [ %indvars.iv.next.i.i442.us, %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us ], [ %indvars.iv.ph.i.i437.us, %.outer.i.i436.us ] ; 3 uses
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i440.us
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !151 ; 4 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 16
  %i.bks = load i32, ptr %i.bkr, align 8          ; 2 uses
  %i.bkt = lshr i32 %i.bks, 27                    ; 2 uses
  %i.bku = icmp samesign ult i32 %i.bkm, %i.bkt
  br i1 %i.bku, label %bb.dq, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us

bb.dq:                                            ; preds = %.outer.i.split.i439.us
  %i.bkv = load i64, ptr %i.bkj, align 8, !tbaa !148 ; 2 uses
  %i.bkw = load i64, ptr %i.bkq, align 8, !tbaa !148
  %i.bkx = and i64 %i.bkw, %i.bkv
  %i.bky = icmp eq i64 %i.bkx, %i.bkv
  br i1 %i.bky, label %.lr.ph.i.i.i459.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us

.lr.ph.i.i.i459.us:                               ; preds = %bb.dq
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkq, i64 20
  %wide.trip.count.i.i.i460.us = zext nneg i32 %i.bkt to i64
  br label %bb.dr

bb.dr:                                            ; preds = %bb.du, %.lr.ph.i.i.i459.us
  %indvars.iv.i.i.i461.us = phi i64 [ 0, %.lr.ph.i.i.i459.us ], [ %indvars.iv.next.i.i.i464.us, %bb.du ] ; 2 uses
  %.038.i.i.i462.us = phi i32 [ 0, %.lr.ph.i.i.i459.us ], [ %.1.i.i.i463.us, %bb.du ] ; 3 uses
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %i.bkz, i64 %indvars.iv.i.i.i461.us
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !15 ; 2 uses
  %i.blc = sext i32 %.038.i.i.i462.us to i64
  %i.bld = getelementptr inbounds [4 x i8], ptr %i.bko, i64 %i.blc
  %i.ble = load i32, ptr %i.bld, align 4, !tbaa !15 ; 2 uses
  %i.blf = icmp sgt i32 %i.blb, %i.ble
  br i1 %i.blf, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.blg = icmp eq i32 %i.blb, %i.ble
  br i1 %i.blg, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.blh = add nsw i32 %.038.i.i.i462.us, 1       ; 2 uses
  %i.bli = icmp eq i32 %i.blh, %i.bkm
  br i1 %i.bli, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.1.i.i.i463.us = phi i32 [ %i.blh, %bb.dt ], [ %.038.i.i.i462.us, %bb.ds ]
  %indvars.iv.next.i.i.i464.us = add nuw nsw i64 %indvars.iv.i.i.i461.us, 1 ; 2 uses
  %exitcond.not.i.i.i465.us = icmp eq i64 %indvars.iv.next.i.i.i464.us, %wide.trip.count.i.i.i460.us
  br i1 %exitcond.not.i.i.i465.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us, label %bb.dr, !llvm.loop !165

Nf_SetCutIsContainedOrder.exit.thread.i.i441.us:  ; preds = %bb.dr, %bb.du, %bb.dq, %.outer.i.split.i439.us
  %indvars.iv.next.i.i442.us = add nuw nsw i64 %indvars.iv.i.i440.us, 1 ; 2 uses
  %exitcond.not.i.i443.us = icmp eq i64 %indvars.iv.next.i.i442.us, %i.bkg
  br i1 %exitcond.not.i.i443.us, label %._crit_edge.i.i444.us, label %.outer.i.split.i439.us, !llvm.loop !171

.outer.i.split.us.i471.us:                        ; preds = %.outer.i.i436.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us
  %indvars.iv.i.us.i472.us = phi i64 [ %indvars.iv.next.i.us.i475.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us ], [ %indvars.iv.ph.i.i437.us, %.outer.i.i436.us ] ; 3 uses
  %i.blj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i472.us
  %i.blk = load ptr, ptr %i.blj, align 8, !tbaa !151 ; 3 uses
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blk, i64 16
  %i.blm = load i32, ptr %i.bll, align 8          ; 2 uses
  %.not.i473.us = icmp ult i32 %i.blm, 134217728
  br i1 %.not.i473.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us, label %bb.dv

bb.dv:                                            ; preds = %.outer.i.split.us.i471.us
  %i.bln = load i64, ptr %i.bkj, align 8, !tbaa !148 ; 2 uses
  %i.blo = load i64, ptr %i.blk, align 8, !tbaa !148
  %i.blp = and i64 %i.blo, %i.bln
  %i.blq = icmp eq i64 %i.blp, %i.bln
  br i1 %i.blq, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us

Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us: ; preds = %bb.dv, %.outer.i.split.us.i471.us
  %indvars.iv.next.i.us.i475.us = add nuw nsw i64 %indvars.iv.i.us.i472.us, 1 ; 2 uses
  %exitcond.not.i.us.i476.us = icmp eq i64 %indvars.iv.next.i.us.i475.us, %i.bkg
  br i1 %exitcond.not.i.us.i476.us, label %._crit_edge.i.i444.us, label %.outer.i.split.us.i471.us, !llvm.loop !171

Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us: ; preds = %bb.dv, %bb.dt
  %indvars.iv.i19.i467.us = phi i64 [ %indvars.iv.i.i440.us, %bb.dt ], [ %indvars.iv.i.us.i472.us, %bb.dv ]
  %.pn.i468.us = phi ptr [ %i.bkq, %bb.dt ], [ %i.blk, %bb.dv ]
  %i.blr = phi i32 [ %i.bks, %bb.dt ], [ %i.blm, %bb.dv ]
  %i.bls = getelementptr inbounds nuw i8, ptr %.pn.i468.us, i64 16
  %i.blt = or i32 %i.blr, -134217728
  store i32 %i.blt, ptr %i.bls, align 8
  %indvars.iv.next74.i.i469.us = add nuw nsw i64 %indvars.iv.i19.i467.us, 1 ; 2 uses
  %exitcond.not75.i.i470.us = icmp eq i64 %indvars.iv.next74.i.i469.us, %i.bkg
  br i1 %exitcond.not75.i.i470.us, label %.preheader.i.i445.us, label %.outer.i.i436.us, !llvm.loop !171

._crit_edge.i.i444.us:                            ; preds = %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us
  br i1 %i.bki, label %Nf_SetLastCutContainsArea.exit.i454.us, label %.preheader.i.i445.us

.preheader.i.i445.us:                             ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, %._crit_edge.i.i444.us
  %i.blu = add nuw i32 %.7611.us, 1
  %wide.trip.count62.i.i446.us = zext i32 %i.blu to i64
  br label %.lr.ph55.i.i447.us

.lr.ph55.i.i447.us:                               ; preds = %bb.dz, %.preheader.i.i445.us
  %indvars.iv59.i.i448.us = phi i64 [ 0, %.preheader.i.i445.us ], [ %indvars.iv.next60.i.i451.us, %bb.dz ] ; 3 uses
  %.04054.i.i449.us = phi i32 [ 0, %.preheader.i.i445.us ], [ %.141.i.i450.us, %bb.dz ] ; 3 uses
  %i.blv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i448.us ; 2 uses
  %i.blw = load ptr, ptr %i.blv, align 8, !tbaa !151 ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 16
  %i.bly = load i32, ptr %i.blx, align 8
  %i.blz = icmp ugt i32 %i.bly, -134217729
  br i1 %i.blz, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph55.i.i447.us
  %i.bma = sext i32 %.04054.i.i449.us to i64      ; 2 uses
  %i.bmb = icmp sgt i64 %indvars.iv59.i.i448.us, %i.bma
  br i1 %i.bmb, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.bmc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bma ; 2 uses
  %i.bmd = load ptr, ptr %i.bmc, align 8, !tbaa !151
  store ptr %i.blw, ptr %i.bmc, align 8, !tbaa !151
  store ptr %i.bmd, ptr %i.blv, align 8, !tbaa !151
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.bme = add nsw i32 %.04054.i.i449.us, 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph55.i.i447.us
  %.141.i.i450.us = phi i32 [ %.04054.i.i449.us, %.lr.ph55.i.i447.us ], [ %i.bme, %bb.dy ] ; 2 uses
  %indvars.iv.next60.i.i451.us = add nuw nsw i64 %indvars.iv59.i.i448.us, 1 ; 2 uses
  %exitcond63.not.i.i452.us = icmp eq i64 %indvars.iv.next60.i.i451.us, %wide.trip.count62.i.i446.us
  br i1 %exitcond63.not.i.i452.us, label %._crit_edge56.loopexit.i.i453.us, label %.lr.ph55.i.i447.us, !llvm.loop !172

._crit_edge56.loopexit.i.i453.us:                 ; preds = %bb.dz
  %i.bmf = add nsw i32 %.141.i.i450.us, -1
  br label %Nf_SetLastCutContainsArea.exit.i454.us

Nf_SetLastCutContainsArea.exit.i454.us:           ; preds = %._crit_edge56.loopexit.i.i453.us, %._crit_edge.i.i444.us
  %.0.i.i455.us = phi i32 [ %i.bmf, %._crit_edge56.loopexit.i.i453.us ], [ %.7611.us, %._crit_edge.i.i444.us ] ; 8 uses
  %i.bmg = icmp sgt i32 %.0.i.i455.us, 0
  br i1 %i.bmg, label %.lr.ph.i8.i456.us.preheader, label %Nf_SetSortByArea.exit.i432.us

.lr.ph.i8.i456.us.preheader:                      ; preds = %Nf_SetLastCutContainsArea.exit.i454.us
  %i.bmh = zext nneg i32 %.0.i.i455.us to i64
  br label %.lr.ph.i8.i456.us

.lr.ph.i8.i456.us:                                ; preds = %.lr.ph.i8.i456.us.preheader, %Nf_CutCompareArea.exit.i.i458.us
  %indvars.iv712 = phi i64 [ %i.bmh, %.lr.ph.i8.i456.us.preheader ], [ %indvars.iv.next713, %Nf_CutCompareArea.exit.i.i458.us ] ; 3 uses
  %i.bmi = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv712 ; 3 uses
  %i.bmj = getelementptr i8, ptr %i.bmi, i64 -8   ; 2 uses
  %i.bmk = load ptr, ptr %i.bmj, align 8, !tbaa !151 ; 4 uses
  %i.bml = load ptr, ptr %i.bmi, align 8, !tbaa !151 ; 4 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmk, i64 16
  %i.bmn = load i32, ptr %i.bmm, align 8          ; 2 uses
  %i.bmo = lshr i32 %i.bmn, 26
  %i.bmp = and i32 %i.bmo, 1                      ; 2 uses
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bml, i64 16
  %i.bmr = load i32, ptr %i.bmq, align 8          ; 2 uses
  %i.bms = lshr i32 %i.bmr, 26
  %i.bmt = and i32 %i.bms, 1                      ; 2 uses
  %i.bmu = icmp samesign ult i32 %i.bmp, %i.bmt
  br i1 %i.bmu, label %Nf_SetSortByArea.exit.i432.us, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i8.i456.us
  %i.bmv = icmp samesign ugt i32 %i.bmp, %i.bmt
  br i1 %i.bmv, label %Nf_CutCompareArea.exit.i.i458.us, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmk, i64 12
  %i.bmx = load float, ptr %i.bmw, align 4, !tbaa !146
  %i.bmy = fpext float %i.bmx to double           ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bml, i64 12
  %i.bna = load float, ptr %i.bmz, align 4, !tbaa !146
  %i.bnb = fpext float %i.bna to double           ; 2 uses
  %i.bnc = fadd double %i.bnb, -1.000000e-03
  %i.bnd = fcmp ogt double %i.bnc, %i.bmy
  br i1 %i.bnd, label %Nf_SetSortByArea.exit.i432.us, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.bne = fadd double %i.bnb, 1.000000e-03
  %i.bnf = fcmp olt double %i.bne, %i.bmy
  br i1 %i.bnf, label %Nf_CutCompareArea.exit.i.i458.us, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8
  %i.bnh = load i32, ptr %i.bng, align 8, !tbaa !144 ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bml, i64 8
  %i.bnj = load i32, ptr %i.bni, align 8, !tbaa !144 ; 2 uses
  %i.bnk = icmp slt i32 %i.bnh, %i.bnj
  br i1 %i.bnk, label %Nf_SetSortByArea.exit.i432.us, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bnl = icmp sgt i32 %i.bnh, %i.bnj
  br i1 %i.bnl, label %Nf_CutCompareArea.exit.i.i458.us, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.bnm = lshr i32 %i.bmn, 27
  %i.bnn = lshr i32 %i.bmr, 27
  %i.bno = icmp samesign ult i32 %i.bnm, %i.bnn
  br i1 %i.bno, label %Nf_SetSortByArea.exit.i432.us, label %Nf_CutCompareArea.exit.i.i458.us

Nf_CutCompareArea.exit.i.i458.us:                 ; preds = %bb.ef, %bb.ee, %bb.ec, %bb.ea
  store ptr %i.bml, ptr %i.bmj, align 8, !tbaa !151
  store ptr %i.bmk, ptr %i.bmi, align 8, !tbaa !151
  %indvars.iv.next713 = add nsw i64 %indvars.iv712, -1
  %i.bnp = icmp sgt i64 %indvars.iv712, 1
  br i1 %i.bnp, label %.lr.ph.i8.i456.us, label %Nf_SetSortByArea.exit.i432.us, !llvm.loop !173

Nf_SetSortByArea.exit.i432.us:                    ; preds = %.lr.ph.i8.i456.us, %bb.eb, %bb.ed, %bb.ef, %Nf_CutCompareArea.exit.i.i458.us, %Nf_SetLastCutContainsArea.exit.i454.us, %bb.dp
  %.0.i10.i433.us = phi i32 [ %.7611.us, %bb.dp ], [ %.0.i.i455.us, %Nf_SetLastCutContainsArea.exit.i454.us ], [ %.0.i.i455.us, %Nf_CutCompareArea.exit.i.i458.us ], [ %.0.i.i455.us, %bb.ef ], [ %.0.i.i455.us, %bb.ed ], [ %.0.i.i455.us, %bb.eb ], [ %.0.i.i455.us, %.lr.ph.i8.i456.us ]
  %i.bnq = add nsw i32 %.0.i10.i433.us, 1
  %i.bnr = call noundef i32 @llvm.smin.i32(i32 %i.bnq, i32 %i.auq)
  br label %Nf_SetAddCut.exit477.us

Nf_SetAddCut.exit477.us:                          ; preds = %bb.cm, %.lr.ph134.i.us, %bb.cq, %bb.cx, %bb.ct, %bb.cw, %Nf_SetSortByArea.exit.i432.us, %Nf_CutParams.exit431.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.cd
  %.8.us = phi i32 [ %.7611.us, %bb.cd ], [ %.7611.us, %.preheader118.i.us ], [ 1, %Nf_CutParams.exit431.us ], [ %i.bnr, %Nf_SetSortByArea.exit.i432.us ], [ %.7611.us, %.loopexit120.i.us ], [ %.7611.us, %bb.cw ], [ %.7611.us, %.loopexit121.i.us ], [ %.7611.us, %.lr.ph134.i.us ], [ %.7611.us, %bb.ct ], [ %.7611.us, %bb.cq ], [ %.7611.us, %bb.cx ], [ %.7611.us, %bb.cm ] ; 3 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %.1155610.us, i64 48 ; 2 uses
  %i.bnt = icmp ult ptr %i.bns, %i.lg
  %indvar.next709 = add i64 %indvar708, 1
  br i1 %i.bnt, label %bb.cc, label %._crit_edge616.us, !llvm.loop !179

._crit_edge616.us:                                ; preds = %Nf_SetAddCut.exit477.us
  %i.bnu = getelementptr inbounds nuw i8, ptr %.1157618.us, i64 48 ; 2 uses
  %i.bnv = icmp ult ptr %i.bnu, %i.le
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bnv, label %.preheader.us, label %.loopexit529, !llvm.loop !180

.loopexit529:                                     ; preds = %._crit_edge616.us, %.preheader.lr.ph, %Gia_ObjIsXor.exit, %._crit_edge603
  %.9 = phi i32 [ %.2.lcssa, %._crit_edge603 ], [ %.1, %Gia_ObjIsXor.exit ], [ %.1, %.preheader.lr.ph ], [ %.8.us, %._crit_edge616.us ] ; 12 uses
  %i.bnw = load ptr, ptr %i.c, align 16, !tbaa !151 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnw, i64 12
  %i.bny = load float, ptr %i.bnx, align 4, !tbaa !146
  %i.bnz = getelementptr i8, ptr %0, i64 152
  %.val182 = load ptr, ptr %i.bnz, align 8, !tbaa !115
  %i.boa = getelementptr inbounds [4 x i8], ptr %.val182, i64 %i.f
  store float %i.bny, ptr %i.boa, align 4, !tbaa !116
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bnw, i64 8
  %i.boc = load i32, ptr %i.bob, align 8, !tbaa !144
  %i.bod = getelementptr i8, ptr %0, i64 168
  %.val183 = load ptr, ptr %i.bod, align 8, !tbaa !27
  %i.boe = getelementptr inbounds [4 x i8], ptr %.val183, i64 %i.f
  store i32 %i.boc, ptr %i.boe, align 4, !tbaa !15
  %i.bof = icmp sgt i32 %.9, 0                    ; 3 uses
  br i1 %i.bof, label %.lr.ph.preheader.i480, label %._crit_edge.i478

.lr.ph.preheader.i480:                            ; preds = %.loopexit529
  %wide.trip.count.i481 = zext nneg i32 %.9 to i64 ; 2 uses
  %xtraiter1157 = and i64 %wide.trip.count.i481, 3 ; 3 uses
  %i.bog = icmp ult i32 %.9, 4
  br i1 %i.bog, label %.lr.ph.i482.epil.preheader, label %.lr.ph.preheader.i480.new

.lr.ph.preheader.i480.new:                        ; preds = %.lr.ph.preheader.i480
  %unroll_iter1161 = and i64 %wide.trip.count.i481, 2147483644
  br label %.lr.ph.i482

.lr.ph.i482:                                      ; preds = %.lr.ph.i482, %.lr.ph.preheader.i480.new
  %indvars.iv.i483 = phi i64 [ 0, %.lr.ph.preheader.i480.new ], [ %indvars.iv.next.i484.3, %.lr.ph.i482 ] ; 5 uses
  %.04352.i = phi i32 [ 1, %.lr.ph.preheader.i480.new ], [ %i.bpl, %.lr.ph.i482 ]
  %niter1162 = phi i64 [ 0, %.lr.ph.preheader.i480.new ], [ %niter1162.next.3, %.lr.ph.i482 ]
  %i.boh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.boi = load ptr, ptr %i.boh, align 16, !tbaa !151
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 16
  %i.bok = load i32, ptr %i.boj, align 8
  %i.bol = lshr i32 %i.bok, 27
  %i.bom = add nuw nsw i32 %.04352.i, 1
  %i.bon = add nuw nsw i32 %i.bom, %i.bol
  %i.boo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 8
  %i.boq = load ptr, ptr %i.bop, align 8, !tbaa !151
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 16
  %i.bos = load i32, ptr %i.bor, align 8
  %i.bot = lshr i32 %i.bos, 27
  %i.bou = add nuw nsw i32 %i.bon, 1
  %i.bov = add nuw nsw i32 %i.bou, %i.bot
  %i.bow = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.box = getelementptr inbounds nuw i8, ptr %i.bow, i64 16
  %i.boy = load ptr, ptr %i.box, align 16, !tbaa !151
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 16
  %i.bpa = load i32, ptr %i.boz, align 8
  %i.bpb = lshr i32 %i.bpa, 27
  %i.bpc = add nuw nsw i32 %i.bov, 1
  %i.bpd = add nuw nsw i32 %i.bpc, %i.bpb
  %indvars.iv.next.i484.3 = add nuw nsw i64 %indvars.iv.i483, 4 ; 2 uses
  %i.bpe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 24
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !151
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 16
  %i.bpi = load i32, ptr %i.bph, align 8
  %i.bpj = lshr i32 %i.bpi, 27
  %i.bpk = add nuw nsw i32 %i.bpd, 1
  %i.bpl = add nuw nsw i32 %i.bpk, %i.bpj         ; 3 uses
  %niter1162.next.3 = add i64 %niter1162, 4       ; 2 uses
  %niter1162.ncmp.3 = icmp eq i64 %niter1162.next.3, %unroll_iter1161
  br i1 %niter1162.ncmp.3, label %._crit_edge.i478.loopexit.unr-lcssa, label %.lr.ph.i482, !llvm.loop !181

._crit_edge.i478.loopexit.unr-lcssa:              ; preds = %.lr.ph.i482
  %lcmp.mod1158.not = icmp eq i64 %xtraiter1157, 0
  br i1 %lcmp.mod1158.not, label %._crit_edge.i478, label %.lr.ph.i482.epil.preheader

.lr.ph.i482.epil.preheader:                       ; preds = %._crit_edge.i478.loopexit.unr-lcssa, %.lr.ph.preheader.i480
  %indvars.iv.i483.epil.init = phi i64 [ 0, %.lr.ph.preheader.i480 ], [ %indvars.iv.next.i484.3, %._crit_edge.i478.loopexit.unr-lcssa ]
  %.04352.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i480 ], [ %i.bpl, %._crit_edge.i478.loopexit.unr-lcssa ]
  %lcmp.mod1160 = icmp ne i64 %xtraiter1157, 0
  call void @llvm.assume(i1 %lcmp.mod1160)
  br label %.lr.ph.i482.epil

.lr.ph.i482.epil:                                 ; preds = %.lr.ph.i482.epil, %.lr.ph.i482.epil.preheader
  %indvars.iv.i483.epil = phi i64 [ %indvars.iv.i483.epil.init, %.lr.ph.i482.epil.preheader ], [ %indvars.iv.next.i484.epil, %.lr.ph.i482.epil ] ; 2 uses
  %.04352.i.epil = phi i32 [ %.04352.i.epil.init, %.lr.ph.i482.epil.preheader ], [ %i.bps, %.lr.ph.i482.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i482.epil.preheader ], [ %epil.iter.next, %.lr.ph.i482.epil ]
  %indvars.iv.next.i484.epil = add nuw nsw i64 %indvars.iv.i483.epil, 1
  %i.bpm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483.epil
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !151
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 16
  %i.bpp = load i32, ptr %i.bpo, align 8
  %i.bpq = lshr i32 %i.bpp, 27
  %i.bpr = add nuw nsw i32 %.04352.i.epil, 1
  %i.bps = add nuw nsw i32 %i.bpr, %i.bpq         ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1157
  br i1 %epil.iter.cmp.not, label %._crit_edge.i478, label %.lr.ph.i482.epil, !llvm.loop !182

._crit_edge.i478:                                 ; preds = %._crit_edge.i478.loopexit.unr-lcssa, %.lr.ph.i482.epil, %.loopexit529
  %.043.lcssa.i = phi i32 [ 1, %.loopexit529 ], [ %i.bpl, %._crit_edge.i478.loopexit.unr-lcssa ], [ %i.bps, %.lr.ph.i482.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %.loopexit529 ], [ %.9, %.lr.ph.i482.epil ], [ %.9, %._crit_edge.i478.loopexit.unr-lcssa ]
  %i.bpt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bpu = load i32, ptr %i.bpt, align 8, !tbaa !111 ; 3 uses
  %i.bpv = and i32 %i.bpu, 65535
  %i.bpw = add nuw nsw i32 %i.bpv, %.043.lcssa.i
  %i.bpx = icmp samesign ugt i32 %i.bpw, 65535
  br i1 %i.bpx, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i478
  %i.bpy = and i32 %i.bpu, -65536
  %i.bpz = add i32 %i.bpy, 65536                  ; 2 uses
  store i32 %i.bpz, ptr %i.bpt, align 8, !tbaa !111
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i478
  %i.bqa = phi i32 [ %i.bpz, %bb.eg ], [ %i.bpu, %._crit_edge.i478 ] ; 3 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bqc = getelementptr i8, ptr %0, i64 68       ; 3 uses
  %.val.i479 = load i32, ptr %i.bqc, align 4, !tbaa !130 ; 6 uses
  %i.bqd = ashr i32 %i.bqa, 16                    ; 2 uses
  %i.bqe = icmp eq i32 %.val.i479, %i.bqd
  br i1 %i.bqe, label %bb.ei, label %bb.er

end_hunk_1
begin_hunk_2_@Nf_ObjMergeOrder:bb.a

bb.et:                                            ; preds = %bb.es
  %i.bua = load ptr, ptr %i.btu, align 8, !tbaa !83
  %i.bub = lshr i32 %i.bty, 1
  %i.buc = and i32 %i.bub, 33554431
  %i.bud = getelementptr i8, ptr %i.bua, i64 8
  %.val10.i = load ptr, ptr %i.bud, align 8, !tbaa !22
  %i.bue = zext nneg i32 %i.buc to i64
  %i.buf = getelementptr inbounds nuw [16 x i8], ptr %.val10.i, i64 %i.bue
  %i.bug = getelementptr i8, ptr %i.buf, i64 4
  %.val.i503 = load i32, ptr %i.bug, align 4, !tbaa !24
  %i.buh = sdiv i32 %.val.i503, 2
  %i.bui = add nsw i32 %i.buh, %.012.i
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.1.i500 = phi i32 [ %.012.i, %bb.es ], [ %i.bui, %bb.et ] ; 2 uses
  %indvars.iv.next.i501 = add nuw nsw i64 %indvars.iv.i498, 1 ; 2 uses
  %exitcond.not.i502 = icmp eq i64 %indvars.iv.next.i501, %wide.trip.count.i497
  br i1 %exitcond.not.i502, label %Nf_ManCountMatches.exit.loopexit, label %bb.es, !llvm.loop !186

Nf_ManCountMatches.exit.loopexit:                 ; preds = %bb.eu
  %i.buj = sitofp i32 %.1.i500 to double
  br label %Nf_ManCountMatches.exit

Nf_ManCountMatches.exit:                          ; preds = %Nf_ManCountMatches.exit.loopexit, %Nf_ManCountUseful.exit
  %.0.lcssa.i495 = phi double [ 0.000000e+00, %Nf_ManCountUseful.exit ], [ %i.buj, %Nf_ManCountMatches.exit.loopexit ]
  %i.buk = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bul = load double, ptr %i.buk, align 8, !tbaa !163
  %i.bum = fadd double %i.bul, %.0.lcssa.i495
  store double %i.bum, ptr %i.buk, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @Nf_SetAddCut(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.i, label %Nf_SetSortByArea.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = zext nneg i32 %1 to i64                  ; 4 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  br label %.outer.i

.outer.i:                                         ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i, %.lr.ph.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next74.i, %Nf_SetCutIsContainedOrder.exit.thread.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.e = phi i1 [ false, %Nf_SetCutIsContainedOrder.exit.thread.thread.i ], [ true, %.lr.ph.i ]
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !151  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %.fr = freeze i32 %i.h
  %i.i = lshr i32 %.fr, 27                        ; 3 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  br i1 %i.j, label %.outer.i.split.us, label %.outer.i.split

.outer.i.split.us:                                ; preds = %.outer.i, %Nf_SetCutIsContainedOrder.exit.thread.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us ], [ %indvars.iv.ph.i, %.outer.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.us
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !151  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %.not = icmp ult i32 %i.o, 134217728
  br i1 %.not, label %Nf_SetCutIsContainedOrder.exit.thread.i.us, label %bb.c

bb.c:                                             ; preds = %.outer.i.split.us
  %i.p = load i64, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %i.q = load i64, ptr %i.m, align 8, !tbaa !148
  %i.r = and i64 %i.q, %i.p
  %i.s = icmp eq i64 %i.r, %i.p
  br i1 %i.s, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i, label %Nf_SetCutIsContainedOrder.exit.thread.i.us

Nf_SetCutIsContainedOrder.exit.thread.i.us:       ; preds = %bb.c, %.outer.i.split.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %i.c
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.outer.i.split.us, !llvm.loop !171

.outer.i.split:                                   ; preds = %.outer.i, %Nf_SetCutIsContainedOrder.exit.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Nf_SetCutIsContainedOrder.exit.thread.i ], [ %indvars.iv.ph.i, %.outer.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !151  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 8              ; 2 uses
  %i.x = lshr i32 %i.w, 27                        ; 2 uses
  %i.y = icmp samesign ult i32 %i.i, %i.x
  br i1 %i.y, label %bb.d, label %Nf_SetCutIsContainedOrder.exit.thread.i

bb.d:                                             ; preds = %.outer.i.split
  %i.z = load i64, ptr %i.f, align 8, !tbaa !148  ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !148
  %i.ab = and i64 %i.aa, %i.z
  %i.ac = icmp eq i64 %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph.i.i, label %Nf_SetCutIsContainedOrder.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %wide.trip.count.i.i = zext nneg i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.038.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.h ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15 ; 2 uses
  %i.ag = sext i32 %.038.i.i to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !15 ; 2 uses
  %i.aj = icmp sgt i32 %i.af, %i.ai
  br i1 %i.aj, label %Nf_SetCutIsContainedOrder.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp eq i32 %i.af, %i.ai
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %.038.i.i, 1                ; 2 uses
  %i.am = icmp eq i32 %i.al, %i.i
  br i1 %i.am, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1.i.i = phi i32 [ %i.al, %bb.g ], [ %.038.i.i, %bb.f ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Nf_SetCutIsContainedOrder.exit.thread.i, label %bb.e, !llvm.loop !165

Nf_SetCutIsContainedOrder.exit.thread.i:          ; preds = %bb.h, %bb.e, %bb.d, %.outer.i.split
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.outer.i.split, !llvm.loop !171

Nf_SetCutIsContainedOrder.exit.thread.thread.i:   ; preds = %bb.c, %bb.g
  %indvars.iv.i19 = phi i64 [ %indvars.iv.i, %bb.g ], [ %indvars.iv.i.us, %bb.c ]
  %.pn = phi ptr [ %i.u, %bb.g ], [ %i.m, %bb.c ]
  %i.an = phi i32 [ %i.w, %bb.g ], [ %i.o, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.ap = or i32 %i.an, -134217728
  store i32 %i.ap, ptr %i.ao, align 8
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not75.i = icmp eq i64 %indvars.iv.next74.i, %i.c
  br i1 %exitcond.not75.i, label %.preheader.i, label %.outer.i, !llvm.loop !171

._crit_edge.i:                                    ; preds = %Nf_SetCutIsContainedOrder.exit.thread.i, %Nf_SetCutIsContainedOrder.exit.thread.i.us
  br i1 %i.e, label %Nf_SetLastCutContainsArea.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i, %._crit_edge.i
  %i.aq = add nuw i32 %1, 1
  %wide.trip.count62.i = zext i32 %i.aq to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %bb.l, %.preheader.i
  %indvars.iv59.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next60.i, %bb.l ] ; 3 uses
  %.04054.i = phi i32 [ 0, %.preheader.i ], [ %.141.i, %bb.l ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv59.i ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
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
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !151
  store ptr %i.as, ptr %i.ay, align 8, !tbaa !151
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !151
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ba = add nsw i32 %.04054.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph55.i
  %.141.i = phi i32 [ %.04054.i, %.lr.ph55.i ], [ %i.ba, %bb.k ] ; 2 uses
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %._crit_edge56.loopexit.i, label %.lr.ph55.i, !llvm.loop !172

._crit_edge56.loopexit.i:                         ; preds = %bb.l
  %i.bb = add nsw i32 %.141.i, -1
  br label %Nf_SetLastCutContainsArea.exit

Nf_SetLastCutContainsArea.exit:                   ; preds = %._crit_edge.i, %._crit_edge56.loopexit.i
  %.0.i = phi i32 [ %i.bb, %._crit_edge56.loopexit.i ], [ %1, %._crit_edge.i ] ; 8 uses
  %i.bc = icmp sgt i32 %.0.i, 0
  br i1 %i.bc, label %.lr.ph.i8, label %Nf_SetSortByArea.exit

.lr.ph.i8:                                        ; preds = %Nf_SetLastCutContainsArea.exit, %Nf_CutCompareArea.exit.i
  %.016.i = phi i32 [ %4, %Nf_CutCompareArea.exit.i ], [ %.0.i, %Nf_SetLastCutContainsArea.exit ] ; 3 uses
  %3 = zext nneg i32 %.016.i to i64
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %3  ; 3 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -8     ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !151 ; 4 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !151 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bi = load i32, ptr %i.bh, align 8            ; 2 uses
  %i.bj = lshr i32 %i.bi, 26
  %i.bk = and i32 %i.bj, 1                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bm = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.bn = lshr i32 %i.bm, 26
  %i.bo = and i32 %i.bn, 1                        ; 2 uses
  %i.bp = icmp samesign ult i32 %i.bk, %i.bo
  br i1 %i.bp, label %Nf_SetSortByArea.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i8
  %i.bq = icmp samesign ugt i32 %i.bk, %i.bo
  br i1 %i.bq, label %Nf_CutCompareArea.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !146
  %i.bt = fpext float %i.bs to double             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !146
  %i.bw = fpext float %i.bv to double             ; 2 uses
  %i.bx = fadd double %i.bw, -1.000000e-03
  %i.by = fcmp ogt double %i.bx, %i.bt
  br i1 %i.by, label %Nf_SetSortByArea.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = fadd double %i.bw, 1.000000e-03
  %i.ca = fcmp olt double %i.bz, %i.bt
  br i1 %i.ca, label %Nf_CutCompareArea.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !144 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !144 ; 2 uses
  %i.cf = icmp slt i32 %i.cc, %i.ce
  br i1 %i.cf, label %Nf_SetSortByArea.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp sgt i32 %i.cc, %i.ce
  br i1 %i.cg, label %Nf_CutCompareArea.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = lshr i32 %i.bi, 27
  %i.ci = lshr i32 %i.bm, 27
  %i.cj = icmp samesign ult i32 %i.ch, %i.ci
  br i1 %i.cj, label %Nf_SetSortByArea.exit, label %Nf_CutCompareArea.exit.i

Nf_CutCompareArea.exit.i:                         ; preds = %bb.r, %bb.q, %bb.o, %bb.m
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !151
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !151
  %4 = add nsw i32 %.016.i, -1
  %i.ck = icmp sgt i32 %.016.i, 1
  br i1 %i.ck, label %.lr.ph.i8, label %Nf_SetSortByArea.exit, !llvm.loop !173

Nf_SetSortByArea.exit:                            ; preds = %.lr.ph.i8, %bb.n, %bb.p, %bb.r, %Nf_CutCompareArea.exit.i, %bb.b, %Nf_SetLastCutContainsArea.exit
  %.0.i10 = phi i32 [ %1, %bb.b ], [ %.0.i, %Nf_SetLastCutContainsArea.exit ], [ %.0.i, %Nf_CutCompareArea.exit.i ], [ %.0.i, %bb.r ], [ %.0.i, %bb.p ], [ %.0.i, %bb.n ], [ %.0.i, %.lr.ph.i8 ]
  %i.cl = add nsw i32 %.0.i10, 1
  %i.cm = add nsw i32 %2, -1
  %i.cn = tail call noundef i32 @llvm.smin.i32(i32 %i.cl, i32 %i.cm)
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %Nf_SetSortByArea.exit
  %.0 = phi i32 [ %i.cn, %Nf_SetSortByArea.exit ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @Nf_ManComputeCuts(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @Tim_ManIncrementTravId(ptr noundef nonnull %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !105    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1096
  %i.e = load i32, ptr %i.d, align 8, !tbaa !187  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1100
  %i.g = load i32, ptr %i.f, align 4, !tbaa !188
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 152        ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.k = sext i32 %i.e to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 9 uses
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.ax, %bb.m ]
  %.088 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.m ]  ; 6 uses
  %.04587 = phi i32 [ 0, %.lr.ph ], [ %.247, %bb.m ] ; 4 uses
  %.04886 = phi float [ 0.000000e+00, %.lr.ph ], [ %.250, %bb.m ] ; 5 uses
  %.05185 = phi float [ 0.000000e+00, %.lr.ph ], [ %.253, %bb.m ] ; 6 uses
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %.val = load ptr, ptr %i.m, align 8, !tbaa !141 ; 2 uses
  %.not57 = icmp eq ptr %.val, null
  br i1 %.not57, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds [12 x i8], ptr %.val, i64 %indvars.iv
  %.val74 = load i64, ptr %i.n, align 4           ; 6 uses
  %i.o = trunc i64 %.val74 to i32
  %i.p = and i32 %i.o, 536870911                  ; 2 uses
  %i.q = lshr i64 %.val74, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = and i32 %i.r, 536870911                  ; 3 uses
  %i.t = icmp eq i32 %i.p, %i.s
  %.not.i = icmp ne i32 %i.p, 536870911
  %or.cond.not.i = and i1 %.not.i, %i.t
  %i.u = and i64 %.val74, 2147483648              ; 2 uses
  %.not4.i = icmp eq i64 %i.u, 0                  ; 2 uses
  %narrow.i = and i1 %.not4.i, %or.cond.not.i
  %i.v = and i64 %.val74, 536870911               ; 2 uses
  br i1 %narrow.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = sub nsw i64 %indvars.iv, %i.v            ; 2 uses
  %.val68 = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.val68, i64 %i.w
  %i.y = load float, ptr %i.x, align 4, !tbaa !116
  %i.z = getelementptr inbounds [4 x i8], ptr %.val68, i64 %indvars.iv
  store float %i.y, ptr %i.z, align 4, !tbaa !116
  %.val66 = load ptr, ptr %i.j, align 8, !tbaa !27 ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %.val66, i64 %i.w
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !15
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val66, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !15
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.ad = icmp ne i64 %i.v, 536870911             ; 2 uses
  %narrow.i80 = and i1 %.not4.i, %i.ad
  br i1 %narrow.i80, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = trunc nsw i64 %indvars.iv to i32
  tail call void @Nf_ObjMergeOrder(ptr noundef nonnull %0, i32 noundef %i.ae)
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.af = and i64 %.val74, 2684354559
  %narrow.i81.not = icmp eq i64 %i.af, 2684354559
  br i1 %narrow.i81.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not62 = icmp eq i32 %.04587, 0                ; 3 uses
  %i.ag = sitofp i32 %.088 to float
  %i.ah = fdiv float %.05185, %i.ag
  %.152 = select i1 %.not62, float %.05185, float 0.000000e+00
  %.149 = select i1 %.not62, float %.04886, float %i.ah ; 2 uses
  %.1 = select i1 %.not62, i32 %.088, i32 0
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.aj = tail call float @Tim_ManGetCiArrival(ptr noundef %i.ai, i32 noundef %i.s) #26
  %i.ak = fptosi float %i.aj to i32
  %.val70 = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.al = getelementptr inbounds [4 x i8], ptr %.val70, i64 %indvars.iv
  store float %.149, ptr %i.al, align 4, !tbaa !116
  %.val72 = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.am = getelementptr inbounds [4 x i8], ptr %.val72, i64 %indvars.iv
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !15
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %.not.i82 = icmp ne i64 %i.u, 0
  %narrow.i83 = and i1 %.not.i82, %i.ad
  br i1 %narrow.i83, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = and i64 %.val74, 536870911
  %i.ao = sub nsw i64 %indvars.iv, %i.an          ; 2 uses
  %.val67 = load ptr, ptr %i.i, align 8, !tbaa !115
  %i.ap = getelementptr inbounds [4 x i8], ptr %.val67, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !116
  %i.ar = fadd float %.05185, %i.aq
  %.val65 = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.as = getelementptr inbounds [4 x i8], ptr %.val65, i64 %i.ao
  %i.at = load i32, ptr %i.as, align 4, !tbaa !15
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.av = sitofp i32 %i.at to float
  tail call void @Tim_ManSetCoArrival(ptr noundef %i.au, i32 noundef %i.s, float noundef %i.av) #26
  %i.aw = add nsw i32 %.088, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.j, %bb.l, %bb.k, %bb.h
  %.253 = phi float [ %.05185, %bb.f ], [ %.05185, %bb.h ], [ %.152, %bb.j ], [ %i.ar, %bb.l ], [ %.05185, %bb.k ]
  %.250 = phi float [ %.04886, %bb.f ], [ %.04886, %bb.h ], [ %.149, %bb.j ], [ %.04886, %bb.l ], [ %.04886, %bb.k ]
  %.247 = phi i32 [ %.04587, %bb.f ], [ %.04587, %bb.h ], [ 0, %bb.j ], [ 1, %bb.l ], [ %.04587, %bb.k ]
  %.2 = phi i32 [ %.088, %bb.f ], [ %.088, %bb.h ], [ %.1, %bb.j ], [ %i.aw, %bb.l ], [ %.088, %bb.k ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !105   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1100
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !188
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %bb.d, label %.critedge, !llvm.loop !189

.critedge:                                        ; preds = %bb.d, %bb.m, %bb.c
  ret void
}

declare void @Tim_ManIncrementTravId(ptr noundef) local_unnamed_addr #5

declare float @Tim_ManGetCiArrival(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @Tim_ManSetCoArrival(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Nf_ManPrintStats(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.d = load i32, ptr %i.c, align 8, !tbaa !190
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %1) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !191
  %i.i = sitofp i32 %i.h to float
  %i.j = fdiv float %i.i, 1.000000e+03
  %i.k = fpext float %i.j to double
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load float, ptr %i.n, align 8, !tbaa !192
  %i.p = fpext float %i.o to double
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %i.p) ; 0 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.t = load i64, ptr %i.s, align 8, !tbaa !193
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.u) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.x = load i32, ptr %i.w, align 4, !tbaa !194
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.x) ; 0 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 184
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !195
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.ac) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
end_hunk_2
