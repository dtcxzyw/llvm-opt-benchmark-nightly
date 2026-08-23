Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaNf?download=true
inline.NumInlined: 1012
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 46
begin_hunk_0_@Nf_ObjMergeOrder:bb.a
  %.epil.init1134 = phi i32 [ 0, %.lr.ph.i321.us.us.us ], [ %i.apa, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa ]
  %lcmp.mod1138 = trunc i32 %i.aof to i1
  call void @llvm.assume(i1 %lcmp.mod1138)
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.aao, i64 %indvars.iv.i325.us.us.us.epil.init
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !15
  %i.apg = sext i32 %i.apf to i64                 ; 2 uses
  %i.aph = getelementptr inbounds [4 x i8], ptr %.val.i322.us.us.us, i64 %i.apg
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !15
  %i.apj = call noundef i32 @llvm.smax.i32(i32 %.epil.init1134, i32 %i.api) ; 2 uses
  store i32 %i.apj, ptr %i.aog, align 8, !tbaa !144
  %i.apk = getelementptr inbounds [4 x i8], ptr %.val22.i323.us.us.us, i64 %i.apg
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !116
  %i.apm = fadd float %.epil.init1132, %i.apl     ; 2 uses
  store float %i.apm, ptr %i.aoh, align 4, !tbaa !146
  br label %._crit_edge.i328.us.us.us

._crit_edge.i328.us.us.us:                        ; preds = %.epil.preheader1129, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa, %bb.bh
  %i.apn = phi float [ 0.000000e+00, %bb.bh ], [ %i.apd, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa ], [ %i.apm, %.epil.preheader1129 ]
  %i.apo = phi i32 [ 0, %bb.bh ], [ %i.apa, %._crit_edge.i328.us.us.us.loopexit.unr-lcssa ], [ %i.apj, %.epil.preheader1129 ]
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

.lr.ph.i8.i.us.us.us:                             ; preds = %Nf_CutCompareArea.exit.i.i.us.us.us, %.lr.ph.i8.i.us.us.us.preheader
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
  %.6619.us = phi i32 [ %.8.us, %._crit_edge616.us ], [ %.1, %.preheader.lr.ph ]
  %.1157618.us = phi ptr [ %i.bnq, %._crit_edge616.us ], [ %2, %.preheader.lr.ph ] ; 5 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.1157618.us, i64 16
  %i.aus = getelementptr i8, ptr %.1157618.us, i64 20 ; 4 uses
  br label %bb.cc

bb.cc:                                            ; preds = %.preheader.us, %Nf_SetAddCut.exit477.us
  %.7611.us = phi i32 [ %.6619.us, %.preheader.us ], [ %.8.us, %Nf_SetAddCut.exit477.us ] ; 18 uses
  %.1155610.us = phi ptr [ %3, %.preheader.us ], [ %i.bno, %Nf_SetAddCut.exit477.us ] ; 5 uses
  %i.aut = load i32, ptr %i.aur, align 8          ; 3 uses
  %i.auu = lshr i32 %i.aut, 27                    ; 11 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %.1155610.us, i64 16
  %i.auw = load i32, ptr %i.auv, align 8          ; 3 uses
  %i.aux = lshr i32 %i.auw, 27                    ; 11 uses
  %i.auy = add nuw nsw i32 %i.aux, %i.auu
  %i.auz = icmp sgt i32 %i.auy, %i.r
  br i1 %i.auz, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ava = load i64, ptr %.1157618.us, align 8, !tbaa !148
  %i.avb = load i64, ptr %.1155610.us, align 8, !tbaa !148
  %i.avc = or i64 %i.avb, %i.ava
  %i.avd = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.avc)
  %i.ave = trunc nuw nsw i64 %i.avd to i32
  %i.avf = icmp slt i32 %i.r, %i.ave
  br i1 %i.avf, label %Nf_SetAddCut.exit477.us, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.avg = load double, ptr %i.auj, align 8, !tbaa !163
  %i.avh = fadd double %i.avg, 1.000000e+00
  store double %i.avh, ptr %i.auj, align 8, !tbaa !163
  %i.avi = sext i32 %.7611.us to i64
  %i.avj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.avi
  %i.avk = load ptr, ptr %i.avj, align 8, !tbaa !151 ; 19 uses
  %i.avl = getelementptr i8, ptr %.1155610.us, i64 20 ; 4 uses
  %i.avm = getelementptr i8, ptr %i.avk, i64 20   ; 15 uses
  %i.avn = icmp eq i32 %i.auu, %i.r
  %i.avo = icmp eq i32 %i.aux, %i.r
  %or.cond.i.us = and i1 %i.avn, %i.avo
  br i1 %or.cond.i.us, label %.preheader.i.us, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.avp = icmp eq i32 %i.auu, 0
  br i1 %i.avp, label %.loopexit120.i.us, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.avq = icmp eq i32 %i.aux, 0
  br i1 %i.avq, label %.loopexit121.i.us, label %.preheader118.i.us

.preheader118.i.us:                               ; preds = %bb.cg
  br i1 %i.auk, label %Nf_SetAddCut.exit477.us, label %.lr.ph.i341.us

.lr.ph.i341.us:                                   ; preds = %.preheader118.i.us, %bb.cm
  %indvars.iv700 = phi i64 [ %indvars.iv.next701, %bb.cm ], [ 0, %.preheader118.i.us ] ; 2 uses
  %.091123.i.us = phi i32 [ %.192.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %.196122.i.us = phi i32 [ %.297.i.us, %bb.cm ], [ 0, %.preheader118.i.us ] ; 5 uses
  %i.avr = sext i32 %.196122.i.us to i64
  %i.avs = getelementptr inbounds [4 x i8], ptr %i.aus, i64 %i.avr
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !15 ; 4 uses
  %i.avu = sext i32 %.091123.i.us to i64
  %i.avv = getelementptr inbounds [4 x i8], ptr %i.avl, i64 %i.avu
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !15 ; 3 uses
  %i.avx = icmp slt i32 %i.avt, %i.avw
  %indvars.iv.next701 = add nuw nsw i64 %indvars.iv700, 1 ; 4 uses
  %i.avy = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %indvars.iv700 ; 3 uses
  br i1 %i.avx, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.i341.us
  %i.avz = icmp sgt i32 %i.avt, %i.avw
end_hunk_0
begin_hunk_1_@Nf_ObjMergeOrder:bb.a
  %.epil.init1146 = phi i32 [ 0, %.lr.ph.i422.us ], [ %i.bjb, %._crit_edge.i429.us.loopexit.unr-lcssa ]
  %lcmp.mod1150 = trunc i32 %i.big to i1
  call void @llvm.assume(i1 %lcmp.mod1150)
  %i.bjf = getelementptr inbounds nuw [4 x i8], ptr %i.avm, i64 %indvars.iv.i426.us.epil.init
  %i.bjg = load i32, ptr %i.bjf, align 4, !tbaa !15
  %i.bjh = sext i32 %i.bjg to i64                 ; 2 uses
  %i.bji = getelementptr inbounds [4 x i8], ptr %.val.i423.us, i64 %i.bjh
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !15
  %i.bjk = call noundef i32 @llvm.smax.i32(i32 %.epil.init1146, i32 %i.bjj) ; 2 uses
  store i32 %i.bjk, ptr %i.bih, align 8, !tbaa !144
  %i.bjl = getelementptr inbounds [4 x i8], ptr %.val22.i424.us, i64 %i.bjh
  %i.bjm = load float, ptr %i.bjl, align 4, !tbaa !116
  %i.bjn = fadd float %.epil.init1144, %i.bjm     ; 2 uses
  store float %i.bjn, ptr %i.bii, align 4, !tbaa !146
  br label %._crit_edge.i429.us

._crit_edge.i429.us:                              ; preds = %.epil.preheader1141, %._crit_edge.i429.us.loopexit.unr-lcssa, %bb.dm
  %i.bjo = phi float [ 0.000000e+00, %bb.dm ], [ %i.bje, %._crit_edge.i429.us.loopexit.unr-lcssa ], [ %i.bjn, %.epil.preheader1141 ]
  %i.bjp = phi i32 [ 0, %bb.dm ], [ %i.bjb, %._crit_edge.i429.us.loopexit.unr-lcssa ], [ %i.bjk, %.epil.preheader1141 ]
  %i.bjq = icmp ugt i32 %i.bev, 268435455
  %i.bjr = zext i1 %i.bjq to i32
  %i.bjs = add nuw nsw i32 %i.bjp, %i.bjr
  store i32 %i.bjs, ptr %i.bih, align 8, !tbaa !144
  %i.bjt = icmp ult i32 %i.bev, 268435456
  br i1 %i.bjt, label %Nf_CutParams.exit431.us, label %bb.do

bb.do:                                            ; preds = %._crit_edge.i429.us
  %i.bju = load ptr, ptr %i.p, align 8, !tbaa !108
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 28
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !159
  %i.bjx = add nsw i32 %i.bjw, %i.big
  %i.bjy = sitofp i32 %i.bjx to float
  br label %Nf_CutParams.exit431.us

Nf_CutParams.exit431.us:                          ; preds = %bb.do, %._crit_edge.i429.us
  %.0.i.i430.us = phi float [ %i.bjy, %bb.do ], [ 0.000000e+00, %._crit_edge.i429.us ]
  %i.bjz = fadd float %i.bjo, %.0.i.i430.us
  %i.bka = fdiv float %i.bjz, %i.o
  store float %i.bka, ptr %i.bii, align 4, !tbaa !146
  %i.bkb = icmp eq i32 %.7611.us, 0
  br i1 %i.bkb, label %Nf_SetAddCut.exit477.us, label %bb.dp

bb.dp:                                            ; preds = %Nf_CutParams.exit431.us
  br i1 %i.axt, label %.lr.ph.i.i435.us, label %Nf_SetSortByArea.exit.i432.us

.lr.ph.i.i435.us:                                 ; preds = %bb.dp
  %i.bkc = zext nneg i32 %.7611.us to i64         ; 4 uses
  %i.bkd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bkc
  br label %.outer.i.i436.us

.outer.i.i436.us:                                 ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, %.lr.ph.i.i435.us
  %indvars.iv.ph.i.i437.us = phi i64 [ %indvars.iv.next74.i.i469.us, %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us ], [ 0, %.lr.ph.i.i435.us ] ; 2 uses
  %i.bke = phi i1 [ false, %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us ], [ true, %.lr.ph.i.i435.us ]
  %i.bkf = load ptr, ptr %i.bkd, align 8, !tbaa !151 ; 4 uses
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bkf, i64 16
  %i.bkh = load i32, ptr %i.bkg, align 8
  %.fr.i438.us = freeze i32 %i.bkh
  %i.bki = lshr i32 %.fr.i438.us, 27              ; 3 uses
  %i.bkj = icmp eq i32 %i.bki, 0
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkf, i64 20
  br i1 %i.bkj, label %.outer.i.split.us.i471.us, label %.outer.i.split.i439.us

.outer.i.split.i439.us:                           ; preds = %.outer.i.i436.us, %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us
  %indvars.iv.i.i440.us = phi i64 [ %indvars.iv.next.i.i442.us, %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us ], [ %indvars.iv.ph.i.i437.us, %.outer.i.i436.us ] ; 3 uses
  %i.bkl = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i440.us
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !151 ; 4 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 16
  %i.bko = load i32, ptr %i.bkn, align 8          ; 2 uses
  %i.bkp = lshr i32 %i.bko, 27                    ; 2 uses
  %i.bkq = icmp samesign ult i32 %i.bki, %i.bkp
  br i1 %i.bkq, label %bb.dq, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us

bb.dq:                                            ; preds = %.outer.i.split.i439.us
  %i.bkr = load i64, ptr %i.bkf, align 8, !tbaa !148 ; 2 uses
  %i.bks = load i64, ptr %i.bkm, align 8, !tbaa !148
  %i.bkt = and i64 %i.bks, %i.bkr
  %i.bku = icmp eq i64 %i.bkt, %i.bkr
  br i1 %i.bku, label %.lr.ph.i.i.i459.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us

.lr.ph.i.i.i459.us:                               ; preds = %bb.dq
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bkm, i64 20
  %wide.trip.count.i.i.i460.us = zext nneg i32 %i.bkp to i64
  br label %bb.dr

bb.dr:                                            ; preds = %bb.du, %.lr.ph.i.i.i459.us
  %indvars.iv.i.i.i461.us = phi i64 [ 0, %.lr.ph.i.i.i459.us ], [ %indvars.iv.next.i.i.i464.us, %bb.du ] ; 2 uses
  %.038.i.i.i462.us = phi i32 [ 0, %.lr.ph.i.i.i459.us ], [ %.1.i.i.i463.us, %bb.du ] ; 3 uses
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bkv, i64 %indvars.iv.i.i.i461.us
  %i.bkx = load i32, ptr %i.bkw, align 4, !tbaa !15 ; 2 uses
  %i.bky = sext i32 %.038.i.i.i462.us to i64
  %i.bkz = getelementptr inbounds [4 x i8], ptr %i.bkk, i64 %i.bky
  %i.bla = load i32, ptr %i.bkz, align 4, !tbaa !15 ; 2 uses
  %i.blb = icmp sgt i32 %i.bkx, %i.bla
  br i1 %i.blb, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.blc = icmp eq i32 %i.bkx, %i.bla
  br i1 %i.blc, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.bld = add nsw i32 %.038.i.i.i462.us, 1       ; 2 uses
  %i.ble = icmp eq i32 %i.bld, %i.bki
  br i1 %i.ble, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.1.i.i.i463.us = phi i32 [ %i.bld, %bb.dt ], [ %.038.i.i.i462.us, %bb.ds ]
  %indvars.iv.next.i.i.i464.us = add nuw nsw i64 %indvars.iv.i.i.i461.us, 1 ; 2 uses
  %exitcond.not.i.i.i465.us = icmp eq i64 %indvars.iv.next.i.i.i464.us, %wide.trip.count.i.i.i460.us
  br i1 %exitcond.not.i.i.i465.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us, label %bb.dr, !llvm.loop !165

Nf_SetCutIsContainedOrder.exit.thread.i.i441.us:  ; preds = %bb.dr, %bb.du, %bb.dq, %.outer.i.split.i439.us
  %indvars.iv.next.i.i442.us = add nuw nsw i64 %indvars.iv.i.i440.us, 1 ; 2 uses
  %exitcond.not.i.i443.us = icmp eq i64 %indvars.iv.next.i.i442.us, %i.bkc
  br i1 %exitcond.not.i.i443.us, label %._crit_edge.i.i444.us, label %.outer.i.split.i439.us, !llvm.loop !171

.outer.i.split.us.i471.us:                        ; preds = %.outer.i.i436.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us
  %indvars.iv.i.us.i472.us = phi i64 [ %indvars.iv.next.i.us.i475.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us ], [ %indvars.iv.ph.i.i437.us, %.outer.i.i436.us ] ; 3 uses
  %i.blf = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i472.us
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !151 ; 3 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 16
  %i.bli = load i32, ptr %i.blh, align 8          ; 2 uses
  %.not.i473.us = icmp ult i32 %i.bli, 134217728
  br i1 %.not.i473.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us, label %bb.dv

bb.dv:                                            ; preds = %.outer.i.split.us.i471.us
  %i.blj = load i64, ptr %i.bkf, align 8, !tbaa !148 ; 2 uses
  %i.blk = load i64, ptr %i.blg, align 8, !tbaa !148
  %i.bll = and i64 %i.blk, %i.blj
  %i.blm = icmp eq i64 %i.bll, %i.blj
  br i1 %i.blm, label %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, label %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us

Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us: ; preds = %bb.dv, %.outer.i.split.us.i471.us
  %indvars.iv.next.i.us.i475.us = add nuw nsw i64 %indvars.iv.i.us.i472.us, 1 ; 2 uses
  %exitcond.not.i.us.i476.us = icmp eq i64 %indvars.iv.next.i.us.i475.us, %i.bkc
  br i1 %exitcond.not.i.us.i476.us, label %._crit_edge.i.i444.us, label %.outer.i.split.us.i471.us, !llvm.loop !171

Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us: ; preds = %bb.dv, %bb.dt
  %indvars.iv.i19.i467.us = phi i64 [ %indvars.iv.i.i440.us, %bb.dt ], [ %indvars.iv.i.us.i472.us, %bb.dv ]
  %.pn.i468.us = phi ptr [ %i.bkm, %bb.dt ], [ %i.blg, %bb.dv ]
  %i.bln = phi i32 [ %i.bko, %bb.dt ], [ %i.bli, %bb.dv ]
  %i.blo = getelementptr inbounds nuw i8, ptr %.pn.i468.us, i64 16
  %i.blp = or i32 %i.bln, -134217728
  store i32 %i.blp, ptr %i.blo, align 8
  %indvars.iv.next74.i.i469.us = add nuw nsw i64 %indvars.iv.i19.i467.us, 1 ; 2 uses
  %exitcond.not75.i.i470.us = icmp eq i64 %indvars.iv.next74.i.i469.us, %i.bkc
  br i1 %exitcond.not75.i.i470.us, label %.preheader.i.i445.us, label %.outer.i.i436.us, !llvm.loop !171

._crit_edge.i.i444.us:                            ; preds = %Nf_SetCutIsContainedOrder.exit.thread.i.i441.us, %Nf_SetCutIsContainedOrder.exit.thread.i.us.i474.us
  br i1 %i.bke, label %Nf_SetLastCutContainsArea.exit.i454.us, label %.preheader.i.i445.us

.preheader.i.i445.us:                             ; preds = %Nf_SetCutIsContainedOrder.exit.thread.thread.i.i466.us, %._crit_edge.i.i444.us
  %i.blq = add nuw i32 %.7611.us, 1
  %wide.trip.count62.i.i446.us = zext i32 %i.blq to i64
  br label %.lr.ph55.i.i447.us

.lr.ph55.i.i447.us:                               ; preds = %bb.dz, %.preheader.i.i445.us
  %indvars.iv59.i.i448.us = phi i64 [ 0, %.preheader.i.i445.us ], [ %indvars.iv.next60.i.i451.us, %bb.dz ] ; 3 uses
  %.04054.i.i449.us = phi i32 [ 0, %.preheader.i.i445.us ], [ %.141.i.i450.us, %bb.dz ] ; 3 uses
  %i.blr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i448.us ; 2 uses
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !151 ; 2 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 16
  %i.blu = load i32, ptr %i.blt, align 8
  %i.blv = icmp ugt i32 %i.blu, -134217729
  br i1 %i.blv, label %bb.dz, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph55.i.i447.us
  %i.blw = sext i32 %.04054.i.i449.us to i64      ; 2 uses
  %i.blx = icmp sgt i64 %indvars.iv59.i.i448.us, %i.blw
  br i1 %i.blx, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.bly = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.blw ; 2 uses
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !151
  store ptr %i.bls, ptr %i.bly, align 8, !tbaa !151
  store ptr %i.blz, ptr %i.blr, align 8, !tbaa !151
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.bma = add nsw i32 %.04054.i.i449.us, 1
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph55.i.i447.us
  %.141.i.i450.us = phi i32 [ %.04054.i.i449.us, %.lr.ph55.i.i447.us ], [ %i.bma, %bb.dy ] ; 2 uses
  %indvars.iv.next60.i.i451.us = add nuw nsw i64 %indvars.iv59.i.i448.us, 1 ; 2 uses
  %exitcond63.not.i.i452.us = icmp eq i64 %indvars.iv.next60.i.i451.us, %wide.trip.count62.i.i446.us
  br i1 %exitcond63.not.i.i452.us, label %._crit_edge56.loopexit.i.i453.us, label %.lr.ph55.i.i447.us, !llvm.loop !172

._crit_edge56.loopexit.i.i453.us:                 ; preds = %bb.dz
  %i.bmb = add nsw i32 %.141.i.i450.us, -1
  br label %Nf_SetLastCutContainsArea.exit.i454.us

Nf_SetLastCutContainsArea.exit.i454.us:           ; preds = %._crit_edge56.loopexit.i.i453.us, %._crit_edge.i.i444.us
  %.0.i.i455.us = phi i32 [ %i.bmb, %._crit_edge56.loopexit.i.i453.us ], [ %.7611.us, %._crit_edge.i.i444.us ] ; 8 uses
  %i.bmc = icmp sgt i32 %.0.i.i455.us, 0
  br i1 %i.bmc, label %.lr.ph.i8.i456.us.preheader, label %Nf_SetSortByArea.exit.i432.us

.lr.ph.i8.i456.us.preheader:                      ; preds = %Nf_SetLastCutContainsArea.exit.i454.us
  %i.bmd = zext nneg i32 %.0.i.i455.us to i64
  br label %.lr.ph.i8.i456.us

.lr.ph.i8.i456.us:                                ; preds = %Nf_CutCompareArea.exit.i.i458.us, %.lr.ph.i8.i456.us.preheader
  %indvars.iv708 = phi i64 [ %i.bmd, %.lr.ph.i8.i456.us.preheader ], [ %indvars.iv.next709, %Nf_CutCompareArea.exit.i.i458.us ] ; 3 uses
  %i.bme = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv708 ; 3 uses
  %i.bmf = getelementptr i8, ptr %i.bme, i64 -8   ; 2 uses
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !151 ; 4 uses
  %i.bmh = load ptr, ptr %i.bme, align 8, !tbaa !151 ; 4 uses
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmg, i64 16
  %i.bmj = load i32, ptr %i.bmi, align 8          ; 2 uses
  %i.bmk = lshr i32 %i.bmj, 26
  %i.bml = and i32 %i.bmk, 1                      ; 2 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmh, i64 16
  %i.bmn = load i32, ptr %i.bmm, align 8          ; 2 uses
  %i.bmo = lshr i32 %i.bmn, 26
  %i.bmp = and i32 %i.bmo, 1                      ; 2 uses
  %i.bmq = icmp samesign ult i32 %i.bml, %i.bmp
  br i1 %i.bmq, label %Nf_SetSortByArea.exit.i432.us, label %bb.ea

bb.ea:                                            ; preds = %.lr.ph.i8.i456.us
  %i.bmr = icmp samesign ugt i32 %i.bml, %i.bmp
  br i1 %i.bmr, label %Nf_CutCompareArea.exit.i.i458.us, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmg, i64 12
  %i.bmt = load float, ptr %i.bms, align 4, !tbaa !146
  %i.bmu = fpext float %i.bmt to double           ; 2 uses
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmh, i64 12
  %i.bmw = load float, ptr %i.bmv, align 4, !tbaa !146
  %i.bmx = fpext float %i.bmw to double           ; 2 uses
  %i.bmy = fadd double %i.bmx, -1.000000e-03
  %i.bmz = fcmp ogt double %i.bmy, %i.bmu
  br i1 %i.bmz, label %Nf_SetSortByArea.exit.i432.us, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.bna = fadd double %i.bmx, 1.000000e-03
  %i.bnb = fcmp olt double %i.bna, %i.bmu
  br i1 %i.bnb, label %Nf_CutCompareArea.exit.i.i458.us, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmg, i64 8
  %i.bnd = load i32, ptr %i.bnc, align 8, !tbaa !144 ; 2 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bmh, i64 8
  %i.bnf = load i32, ptr %i.bne, align 8, !tbaa !144 ; 2 uses
  %i.bng = icmp slt i32 %i.bnd, %i.bnf
  br i1 %i.bng, label %Nf_SetSortByArea.exit.i432.us, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.bnh = icmp sgt i32 %i.bnd, %i.bnf
  br i1 %i.bnh, label %Nf_CutCompareArea.exit.i.i458.us, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.bni = lshr i32 %i.bmj, 27
  %i.bnj = lshr i32 %i.bmn, 27
  %i.bnk = icmp samesign ult i32 %i.bni, %i.bnj
  br i1 %i.bnk, label %Nf_SetSortByArea.exit.i432.us, label %Nf_CutCompareArea.exit.i.i458.us

Nf_CutCompareArea.exit.i.i458.us:                 ; preds = %bb.ef, %bb.ee, %bb.ec, %bb.ea
  store ptr %i.bmh, ptr %i.bmf, align 8, !tbaa !151
  store ptr %i.bmg, ptr %i.bme, align 8, !tbaa !151
  %indvars.iv.next709 = add nsw i64 %indvars.iv708, -1
  %i.bnl = icmp sgt i64 %indvars.iv708, 1
  br i1 %i.bnl, label %.lr.ph.i8.i456.us, label %Nf_SetSortByArea.exit.i432.us, !llvm.loop !173

Nf_SetSortByArea.exit.i432.us:                    ; preds = %.lr.ph.i8.i456.us, %bb.eb, %bb.ed, %bb.ef, %Nf_CutCompareArea.exit.i.i458.us, %Nf_SetLastCutContainsArea.exit.i454.us, %bb.dp
  %.0.i10.i433.us = phi i32 [ %.7611.us, %bb.dp ], [ %.0.i.i455.us, %Nf_SetLastCutContainsArea.exit.i454.us ], [ %.0.i.i455.us, %Nf_CutCompareArea.exit.i.i458.us ], [ %.0.i.i455.us, %bb.ef ], [ %.0.i.i455.us, %bb.ed ], [ %.0.i.i455.us, %bb.eb ], [ %.0.i.i455.us, %.lr.ph.i8.i456.us ]
  %i.bnm = add nsw i32 %.0.i10.i433.us, 1
  %i.bnn = call noundef i32 @llvm.smin.i32(i32 %i.bnm, i32 %i.auq)
  br label %Nf_SetAddCut.exit477.us

Nf_SetAddCut.exit477.us:                          ; preds = %bb.cm, %.lr.ph134.i.us, %bb.cq, %bb.cx, %bb.ct, %bb.cw, %Nf_SetSortByArea.exit.i432.us, %Nf_CutParams.exit431.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.cd
  %.8.us = phi i32 [ %.7611.us, %bb.cd ], [ %.7611.us, %.preheader118.i.us ], [ 1, %Nf_CutParams.exit431.us ], [ %i.bnn, %Nf_SetSortByArea.exit.i432.us ], [ %.7611.us, %.loopexit120.i.us ], [ %.7611.us, %bb.cw ], [ %.7611.us, %.loopexit121.i.us ], [ %.7611.us, %.lr.ph134.i.us ], [ %.7611.us, %bb.ct ], [ %.7611.us, %bb.cq ], [ %.7611.us, %bb.cx ], [ %.7611.us, %bb.cm ] ; 3 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %.1155610.us, i64 48 ; 2 uses
  %i.bnp = icmp ult ptr %i.bno, %i.lg
  br i1 %i.bnp, label %bb.cc, label %._crit_edge616.us, !llvm.loop !179

._crit_edge616.us:                                ; preds = %Nf_SetAddCut.exit477.us
  %i.bnq = getelementptr inbounds nuw i8, ptr %.1157618.us, i64 48 ; 2 uses
  %i.bnr = icmp ult ptr %i.bnq, %i.le
  br i1 %i.bnr, label %.preheader.us, label %.loopexit529, !llvm.loop !180

.loopexit529:                                     ; preds = %._crit_edge616.us, %.preheader.lr.ph, %Gia_ObjIsXor.exit, %._crit_edge603
  %.9 = phi i32 [ %.2.lcssa, %._crit_edge603 ], [ %.1, %Gia_ObjIsXor.exit ], [ %.1, %.preheader.lr.ph ], [ %.8.us, %._crit_edge616.us ] ; 12 uses
  %i.bns = load ptr, ptr %i.c, align 16, !tbaa !151 ; 2 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 12
  %i.bnu = load float, ptr %i.bnt, align 4, !tbaa !146
  %i.bnv = getelementptr i8, ptr %0, i64 152
  %.val182 = load ptr, ptr %i.bnv, align 8, !tbaa !115
  %i.bnw = getelementptr inbounds [4 x i8], ptr %.val182, i64 %i.f
  store float %i.bnu, ptr %i.bnw, align 4, !tbaa !116
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bns, i64 8
  %i.bny = load i32, ptr %i.bnx, align 8, !tbaa !144
  %i.bnz = getelementptr i8, ptr %0, i64 168
  %.val183 = load ptr, ptr %i.bnz, align 8, !tbaa !27
  %i.boa = getelementptr inbounds [4 x i8], ptr %.val183, i64 %i.f
  store i32 %i.bny, ptr %i.boa, align 4, !tbaa !15
  %i.bob = icmp sgt i32 %.9, 0                    ; 3 uses
  br i1 %i.bob, label %.lr.ph.preheader.i480, label %._crit_edge.i478

.lr.ph.preheader.i480:                            ; preds = %.loopexit529
  %wide.trip.count.i481 = zext nneg i32 %.9 to i64 ; 2 uses
  %xtraiter1153 = and i64 %wide.trip.count.i481, 3 ; 3 uses
  %i.boc = icmp ult i32 %.9, 4
  br i1 %i.boc, label %.lr.ph.i482.epil.preheader, label %.lr.ph.preheader.i480.new

.lr.ph.preheader.i480.new:                        ; preds = %.lr.ph.preheader.i480
  %unroll_iter1157 = and i64 %wide.trip.count.i481, 2147483644
  br label %.lr.ph.i482

.lr.ph.i482:                                      ; preds = %.lr.ph.i482, %.lr.ph.preheader.i480.new
  %indvars.iv.i483 = phi i64 [ 0, %.lr.ph.preheader.i480.new ], [ %indvars.iv.next.i484.3, %.lr.ph.i482 ] ; 5 uses
  %.04352.i = phi i32 [ 1, %.lr.ph.preheader.i480.new ], [ %i.bph, %.lr.ph.i482 ]
  %niter1158 = phi i64 [ 0, %.lr.ph.preheader.i480.new ], [ %niter1158.next.3, %.lr.ph.i482 ]
  %i.bod = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.boe = load ptr, ptr %i.bod, align 16, !tbaa !151
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 16
  %i.bog = load i32, ptr %i.bof, align 8
  %i.boh = lshr i32 %i.bog, 27
  %i.boi = add nuw nsw i32 %.04352.i, 1
  %i.boj = add nuw nsw i32 %i.boi, %i.boh
  %i.bok = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bok, i64 8
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !151
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 16
  %i.boo = load i32, ptr %i.bon, align 8
  %i.bop = lshr i32 %i.boo, 27
  %i.boq = add nuw nsw i32 %i.boj, 1
  %i.bor = add nuw nsw i32 %i.boq, %i.bop
  %i.bos = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.bot = getelementptr inbounds nuw i8, ptr %i.bos, i64 16
  %i.bou = load ptr, ptr %i.bot, align 16, !tbaa !151
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bou, i64 16
  %i.bow = load i32, ptr %i.bov, align 8
  %i.box = lshr i32 %i.bow, 27
  %i.boy = add nuw nsw i32 %i.bor, 1
  %i.boz = add nuw nsw i32 %i.boy, %i.box
  %indvars.iv.next.i484.3 = add nuw nsw i64 %indvars.iv.i483, 4 ; 2 uses
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 24
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !151
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.bpc, i64 16
  %i.bpe = load i32, ptr %i.bpd, align 8
  %i.bpf = lshr i32 %i.bpe, 27
  %i.bpg = add nuw nsw i32 %i.boz, 1
  %i.bph = add nuw nsw i32 %i.bpg, %i.bpf         ; 3 uses
  %niter1158.next.3 = add i64 %niter1158, 4       ; 2 uses
  %niter1158.ncmp.3 = icmp eq i64 %niter1158.next.3, %unroll_iter1157
  br i1 %niter1158.ncmp.3, label %._crit_edge.i478.loopexit.unr-lcssa, label %.lr.ph.i482, !llvm.loop !181

._crit_edge.i478.loopexit.unr-lcssa:              ; preds = %.lr.ph.i482
  %lcmp.mod1154.not = icmp eq i64 %xtraiter1153, 0
  br i1 %lcmp.mod1154.not, label %._crit_edge.i478, label %.lr.ph.i482.epil.preheader

.lr.ph.i482.epil.preheader:                       ; preds = %._crit_edge.i478.loopexit.unr-lcssa, %.lr.ph.preheader.i480
  %indvars.iv.i483.epil.init = phi i64 [ 0, %.lr.ph.preheader.i480 ], [ %indvars.iv.next.i484.3, %._crit_edge.i478.loopexit.unr-lcssa ]
  %.04352.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i480 ], [ %i.bph, %._crit_edge.i478.loopexit.unr-lcssa ]
  %lcmp.mod1156 = icmp ne i64 %xtraiter1153, 0
  call void @llvm.assume(i1 %lcmp.mod1156)
  br label %.lr.ph.i482.epil

.lr.ph.i482.epil:                                 ; preds = %.lr.ph.i482.epil, %.lr.ph.i482.epil.preheader
  %indvars.iv.i483.epil = phi i64 [ %indvars.iv.i483.epil.init, %.lr.ph.i482.epil.preheader ], [ %indvars.iv.next.i484.epil, %.lr.ph.i482.epil ] ; 2 uses
  %.04352.i.epil = phi i32 [ %.04352.i.epil.init, %.lr.ph.i482.epil.preheader ], [ %i.bpo, %.lr.ph.i482.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i482.epil.preheader ], [ %epil.iter.next, %.lr.ph.i482.epil ]
  %indvars.iv.next.i484.epil = add nuw nsw i64 %indvars.iv.i483.epil, 1
  %i.bpi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i483.epil
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !151
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpj, i64 16
  %i.bpl = load i32, ptr %i.bpk, align 8
  %i.bpm = lshr i32 %i.bpl, 27
  %i.bpn = add nuw nsw i32 %.04352.i.epil, 1
  %i.bpo = add nuw nsw i32 %i.bpn, %i.bpm         ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1153
  br i1 %epil.iter.cmp.not, label %._crit_edge.i478, label %.lr.ph.i482.epil, !llvm.loop !182

._crit_edge.i478:                                 ; preds = %._crit_edge.i478.loopexit.unr-lcssa, %.lr.ph.i482.epil, %.loopexit529
  %.043.lcssa.i = phi i32 [ 1, %.loopexit529 ], [ %i.bph, %._crit_edge.i478.loopexit.unr-lcssa ], [ %i.bpo, %.lr.ph.i482.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %.loopexit529 ], [ %.9, %.lr.ph.i482.epil ], [ %.9, %._crit_edge.i478.loopexit.unr-lcssa ]
  %i.bpp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.bpq = load i32, ptr %i.bpp, align 8, !tbaa !111 ; 3 uses
  %i.bpr = and i32 %i.bpq, 65535
  %i.bps = add nuw nsw i32 %i.bpr, %.043.lcssa.i
  %i.bpt = icmp samesign ugt i32 %i.bps, 65535
  br i1 %i.bpt, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i478
  %i.bpu = and i32 %i.bpq, -65536
  %i.bpv = add i32 %i.bpu, 65536                  ; 2 uses
  store i32 %i.bpv, ptr %i.bpp, align 8, !tbaa !111
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i478
  %i.bpw = phi i32 [ %i.bpv, %bb.eg ], [ %i.bpq, %._crit_edge.i478 ] ; 3 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bpy = getelementptr i8, ptr %0, i64 68       ; 3 uses
  %.val.i479 = load i32, ptr %i.bpy, align 4, !tbaa !130 ; 6 uses
  %i.bpz = ashr i32 %i.bpw, 16                    ; 2 uses
  %i.bqa = icmp eq i32 %.val.i479, %i.bpz
  br i1 %i.bqa, label %bb.ei, label %bb.er

bb.ei:                                            ; preds = %bb.eh
  %i.bqb = call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #28
end_hunk_1
begin_hunk_2_@Nf_ObjMergeOrder:bb.a

bb.et:                                            ; preds = %bb.es
  %i.btw = load ptr, ptr %i.btq, align 8, !tbaa !83
  %i.btx = lshr i32 %i.btu, 1
  %i.bty = and i32 %i.btx, 33554431
  %i.btz = getelementptr i8, ptr %i.btw, i64 8
  %.val10.i = load ptr, ptr %i.btz, align 8, !tbaa !22
  %i.bua = zext nneg i32 %i.bty to i64
  %i.bub = getelementptr inbounds nuw [16 x i8], ptr %.val10.i, i64 %i.bua
  %i.buc = getelementptr i8, ptr %i.bub, i64 4
  %.val.i503 = load i32, ptr %i.buc, align 4, !tbaa !24
  %i.bud = sdiv i32 %.val.i503, 2
  %i.bue = add nsw i32 %i.bud, %.012.i
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.1.i500 = phi i32 [ %.012.i, %bb.es ], [ %i.bue, %bb.et ] ; 2 uses
  %indvars.iv.next.i501 = add nuw nsw i64 %indvars.iv.i498, 1 ; 2 uses
  %exitcond.not.i502 = icmp eq i64 %indvars.iv.next.i501, %wide.trip.count.i497
  br i1 %exitcond.not.i502, label %Nf_ManCountMatches.exit.loopexit, label %bb.es, !llvm.loop !186

Nf_ManCountMatches.exit.loopexit:                 ; preds = %bb.eu
  %i.buf = sitofp i32 %.1.i500 to double
  br label %Nf_ManCountMatches.exit

Nf_ManCountMatches.exit:                          ; preds = %Nf_ManCountMatches.exit.loopexit, %Nf_ManCountUseful.exit
  %.0.lcssa.i495 = phi double [ 0.000000e+00, %Nf_ManCountUseful.exit ], [ %i.buf, %Nf_ManCountMatches.exit.loopexit ]
  %i.bug = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.buh = load double, ptr %i.bug, align 8, !tbaa !163
  %i.bui = fadd double %i.buh, %.0.lcssa.i495
  store double %i.bui, ptr %i.bug, align 8, !tbaa !163
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
  br i1 %i.bc, label %.lr.ph.preheader.i, label %Nf_SetSortByArea.exit

.lr.ph.preheader.i:                               ; preds = %Nf_SetLastCutContainsArea.exit
  %3 = zext nneg i32 %.0.i to i64
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %Nf_CutCompareArea.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i9 = phi i64 [ %3, %.lr.ph.preheader.i ], [ %indvars.iv.next.i10, %Nf_CutCompareArea.exit.i ] ; 3 uses
  %i.bd = getelementptr [8 x i8], ptr %0, i64 %indvars.iv.i9 ; 3 uses
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
  %indvars.iv.next.i10 = add nsw i64 %indvars.iv.i9, -1
  %i.ck = icmp sgt i64 %indvars.iv.i9, 1
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
