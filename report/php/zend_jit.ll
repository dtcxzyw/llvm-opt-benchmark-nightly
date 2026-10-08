Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_jit:bb.a
  %i.gtl = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.bjd

.thread4013:                                      ; preds = %bb.bjc
  call fastcc void @zend_jit_free_cvs(ptr noundef %3)
  br label %.loopexit

bb.bjd:                                           ; preds = %.lr.ph4137, %bb.bjq
  %i.gtm = phi i32 [ %i.gte, %.lr.ph4137 ], [ %i.gwa, %bb.bjq ] ; 3 uses
  %indvars.iv4227 = phi i64 [ 0, %.lr.ph4137 ], [ %indvars.iv.next4228, %bb.bjq ] ; 7 uses
  %.14135 = phi i8 [ 0, %.lr.ph4137 ], [ %.3, %bb.bjq ] ; 2 uses
  %i.gtn = load ptr, ptr %i.gth, align 8, !tbaa !239 ; 4 uses
  %.not.i3746 = icmp eq ptr %i.gtn, null
  br i1 %.not.i3746, label %zend_ssa_cv_info.exit.thread, label %bb.bje

bb.bje:                                           ; preds = %bb.bjd
  %i.gto = load ptr, ptr %i.gti, align 8, !tbaa !236 ; 5 uses
  %.not39.i = icmp eq ptr %i.gto, null
  br i1 %.not39.i, label %zend_ssa_cv_info.exit.thread, label %bb.bjf

bb.bjf:                                           ; preds = %bb.bje
  %i.gtp = getelementptr inbounds nuw [40 x i8], ptr %i.gto, i64 %indvars.iv4227
  %i.gtq = load i32, ptr %i.gtp, align 8, !tbaa !346 ; 4 uses
  %i.gtr = load i32, ptr %i.gtj, align 8, !tbaa !321 ; 2 uses
  %i.gts = icmp ult i32 %i.gtm, %i.gtr
  br i1 %i.gts, label %.lr.ph.preheader.i3751, label %._crit_edge.i3747

.lr.ph.preheader.i3751:                           ; preds = %bb.bjf
  %i.gtt = zext i32 %i.gtm to i64                 ; 6 uses
  %wide.trip.count.i3752 = zext i32 %i.gtr to i64 ; 3 uses
  %i.gtu = sub nsw i64 %wide.trip.count.i3752, %i.gtt
  %xtraiter5037 = and i64 %i.gtu, 1
  %lcmp.mod5038.not = icmp eq i64 %xtraiter5037, 0
  br i1 %lcmp.mod5038.not, label %.lr.ph.i3753.prol.loopexit, label %.lr.ph.i3753.prol

.lr.ph.i3753.prol:                                ; preds = %.lr.ph.preheader.i3751
  %i.gtv = getelementptr inbounds nuw [48 x i8], ptr %i.gtn, i64 %i.gtt
  %i.gtw = load i32, ptr %i.gtv, align 8, !tbaa !332
  %i.gtx = zext i32 %i.gtw to i64
  %i.gty = icmp eq i64 %indvars.iv4227, %i.gtx
  br i1 %i.gty, label %bb.bjg, label %.lr.ph.i3753.prol.loopexit.unr-lcssa

bb.bjg:                                           ; preds = %.lr.ph.i3753.prol
  %i.gtz = getelementptr inbounds nuw [40 x i8], ptr %i.gto, i64 %i.gtt
  %i.gua = load i32, ptr %i.gtz, align 8, !tbaa !346
  %i.gub = or i32 %i.gua, %i.gtq
  br label %.lr.ph.i3753.prol.loopexit.unr-lcssa

.lr.ph.i3753.prol.loopexit.unr-lcssa:             ; preds = %bb.bjg, %.lr.ph.i3753.prol
  %.1.i3755.prol = phi i32 [ %i.gub, %bb.bjg ], [ %i.gtq, %.lr.ph.i3753.prol ] ; 2 uses
  %indvars.iv.next.i3756.prol = add nuw nsw i64 %i.gtt, 1
  br label %.lr.ph.i3753.prol.loopexit

.lr.ph.i3753.prol.loopexit:                       ; preds = %.lr.ph.i3753.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i3751
  %.1.i3755.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i3751 ], [ %.1.i3755.prol, %.lr.ph.i3753.prol.loopexit.unr-lcssa ]
  %indvars.iv.i3754.unr = phi i64 [ %i.gtt, %.lr.ph.preheader.i3751 ], [ %indvars.iv.next.i3756.prol, %.lr.ph.i3753.prol.loopexit.unr-lcssa ]
  %.03454.i.unr = phi i32 [ %i.gtq, %.lr.ph.preheader.i3751 ], [ %.1.i3755.prol, %.lr.ph.i3753.prol.loopexit.unr-lcssa ]
  %i.guc = add nsw i64 %wide.trip.count.i3752, -1
  %i.gud = icmp eq i64 %i.guc, %i.gtt
  br i1 %i.gud, label %._crit_edge.i3747, label %.lr.ph.i3753

.lr.ph.i3753:                                     ; preds = %.lr.ph.i3753.prol.loopexit, %bb.bjj
  %indvars.iv.i3754 = phi i64 [ %indvars.iv.next.i3756.1, %bb.bjj ], [ %indvars.iv.i3754.unr, %.lr.ph.i3753.prol.loopexit ] ; 4 uses
  %.03454.i = phi i32 [ %.1.i3755.1, %bb.bjj ], [ %.03454.i.unr, %.lr.ph.i3753.prol.loopexit ] ; 2 uses
  %i.gue = getelementptr inbounds nuw [48 x i8], ptr %i.gtn, i64 %indvars.iv.i3754
  %i.guf = load i32, ptr %i.gue, align 8, !tbaa !332
  %i.gug = zext i32 %i.guf to i64
  %i.guh = icmp eq i64 %indvars.iv4227, %i.gug
  br i1 %i.guh, label %bb.bjh, label %.lr.ph.i3753.1

bb.bjh:                                           ; preds = %.lr.ph.i3753
  %i.gui = getelementptr inbounds nuw [40 x i8], ptr %i.gto, i64 %indvars.iv.i3754
  %i.guj = load i32, ptr %i.gui, align 8, !tbaa !346
  %i.guk = or i32 %i.guj, %.03454.i
  br label %.lr.ph.i3753.1

.lr.ph.i3753.1:                                   ; preds = %bb.bjh, %.lr.ph.i3753
  %.1.i3755 = phi i32 [ %i.guk, %bb.bjh ], [ %.03454.i, %.lr.ph.i3753 ] ; 2 uses
  %indvars.iv.next.i3756 = add nuw nsw i64 %indvars.iv.i3754, 1 ; 2 uses
  %i.gul = getelementptr inbounds nuw [48 x i8], ptr %i.gtn, i64 %indvars.iv.next.i3756
  %i.gum = load i32, ptr %i.gul, align 8, !tbaa !332
  %i.gun = zext i32 %i.gum to i64
  %i.guo = icmp eq i64 %indvars.iv4227, %i.gun
  br i1 %i.guo, label %bb.bji, label %bb.bjj

bb.bji:                                           ; preds = %.lr.ph.i3753.1
  %i.gup = getelementptr inbounds nuw [40 x i8], ptr %i.gto, i64 %indvars.iv.next.i3756
  %i.guq = load i32, ptr %i.gup, align 8, !tbaa !346
  %i.gur = or i32 %i.guq, %.1.i3755
  br label %bb.bjj

bb.bjj:                                           ; preds = %bb.bji, %.lr.ph.i3753.1
  %.1.i3755.1 = phi i32 [ %i.gur, %bb.bji ], [ %.1.i3755, %.lr.ph.i3753.1 ] ; 2 uses
  %indvars.iv.next.i3756.1 = add nuw nsw i64 %indvars.iv.i3754, 2 ; 2 uses
  %exitcond.not.i3757.1 = icmp eq i64 %indvars.iv.next.i3756.1, %wide.trip.count.i3752
  br i1 %exitcond.not.i3757.1, label %._crit_edge.i3747, label %.lr.ph.i3753, !llvm.loop !11

._crit_edge.i3747:                                ; preds = %.lr.ph.i3753.prol.loopexit, %bb.bjj, %bb.bjf
  %.034.lcssa.i = phi i32 [ %i.gtq, %bb.bjf ], [ %.1.i3755.lcssa.unr, %.lr.ph.i3753.prol.loopexit ], [ %.1.i3755.1, %bb.bjj ] ; 5 uses
  %i.gus = and i32 %.034.lcssa.i, -1073741824
  %or.cond.i3748 = icmp eq i32 %i.gus, 1073741824
  br i1 %or.cond.i3748, label %.preheader.i3749, label %zend_ssa_cv_info.exit

.preheader.i3749:                                 ; preds = %._crit_edge.i3747
  %i.gut = load i32, ptr %1, align 8, !tbaa !316  ; 2 uses
  %.not60.i3750 = icmp eq i32 %i.gut, 0
  br i1 %.not60.i3750, label %zend_ssa_cv_info.exit, label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.preheader.i3749
  %i.guu = load ptr, ptr %i.gtk, align 8, !tbaa !306
  %i.guv = trunc nuw nsw i64 %indvars.iv4227 to i32
  %i.guw = shl i32 %i.guv, 4
  %i.gux = add i32 %i.guw, 80
  %wide.trip.count65.i = zext i32 %i.gut to i64
  br label %bb.bjk

bb.bjk:                                           ; preds = %.thread50.i, %.lr.ph58.i
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next63.i, %.thread50.i ] ; 2 uses
  %i.guy = getelementptr inbounds nuw [64 x i8], ptr %i.guu, i64 %indvars.iv62.i ; 3 uses
  %i.guz = getelementptr inbounds nuw i8, ptr %i.guy, i64 8
  %i.gva = load i32, ptr %i.guz, align 8, !tbaa !303
  %.not42.i = icmp sgt i32 %i.gva, -1
  br i1 %.not42.i, label %.thread50.i, label %bb.bjl

bb.bjl:                                           ; preds = %bb.bjk
  %i.gvb = getelementptr inbounds nuw i8, ptr %i.guy, i64 16
  %i.gvc = load i32, ptr %i.gvb, align 8, !tbaa !345 ; 2 uses
  %.not43.i = icmp eq i32 %i.gvc, 0
  br i1 %.not43.i, label %.thread50.i, label %bb.bjm

bb.bjm:                                           ; preds = %bb.bjl
  %i.gvd = load ptr, ptr %i.gtl, align 8, !tbaa !110
  %i.gve = getelementptr inbounds nuw i8, ptr %i.guy, i64 12
  %i.gvf = load i32, ptr %i.gve, align 4, !tbaa !304
  %i.gvg = zext i32 %i.gvf to i64
  %i.gvh = getelementptr inbounds nuw [32 x i8], ptr %i.gvd, i64 %i.gvg
  %i.gvi = zext i32 %i.gvc to i64
  %i.gvj = getelementptr inbounds nuw [32 x i8], ptr %i.gvh, i64 %i.gvi ; 3 uses
  %i.gvk = getelementptr inbounds i8, ptr %i.gvj, i64 -4
  %i.gvl = load i8, ptr %i.gvk, align 4, !tbaa !113
  %i.gvm = icmp eq i8 %i.gvl, 62
  br i1 %i.gvm, label %bb.bjn, label %.thread50.i

bb.bjn:                                           ; preds = %bb.bjm
  %i.gvn = getelementptr inbounds i8, ptr %i.gvj, i64 -3
  %i.gvo = load i8, ptr %i.gvn, align 1, !tbaa !296
  %i.gvp = icmp eq i8 %i.gvo, 8
  br i1 %i.gvp, label %bb.bjo, label %.thread50.i

bb.bjo:                                           ; preds = %bb.bjn
  %i.gvq = getelementptr inbounds i8, ptr %i.gvj, i64 -24
  %i.gvr = load i32, ptr %i.gvq, align 8, !tbaa !72
  %i.gvs = icmp eq i32 %i.gvr, %i.gux
  br i1 %i.gvs, label %.thread.loopexit.split.loop.exit55.i, label %.thread50.i

.thread50.i:                                      ; preds = %bb.bjo, %bb.bjn, %bb.bjm, %bb.bjl, %bb.bjk
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next63.i, %wide.trip.count65.i
  br i1 %exitcond66.not.i, label %zend_ssa_cv_info.exit, label %bb.bjk, !llvm.loop !12

.thread.loopexit.split.loop.exit55.i:             ; preds = %bb.bjo
  %i.gvt = or disjoint i32 %.034.lcssa.i, -2147483648
  br label %zend_ssa_cv_info.exit

zend_ssa_cv_info.exit:                            ; preds = %.thread50.i, %._crit_edge.i3747, %.preheader.i3749, %.thread.loopexit.split.loop.exit55.i
  %.6.i = phi i32 [ %.034.lcssa.i, %._crit_edge.i3747 ], [ %.034.lcssa.i, %.preheader.i3749 ], [ %i.gvt, %.thread.loopexit.split.loop.exit55.i ], [ %.034.lcssa.i, %.thread50.i ] ; 2 uses
  %i.gvu = and i32 %.6.i, 1984
  %.not2410 = icmp eq i32 %i.gvu, 0
  br i1 %.not2410, label %bb.bjq, label %zend_ssa_cv_info.exit.thread

zend_ssa_cv_info.exit.thread:                     ; preds = %bb.bjd, %bb.bje, %zend_ssa_cv_info.exit
  %.6.i4017 = phi i32 [ %.6.i, %zend_ssa_cv_info.exit ], [ -520093697, %bb.bje ], [ -520093697, %bb.bjd ]
  %i.gvv = trunc nuw i8 %.14135 to i1
  br i1 %i.gvv, label %zend_jit_free_cv.exit, label %bb.bjp

bb.bjp:                                           ; preds = %zend_ssa_cv_info.exit.thread
  call fastcc void @zend_jit_leave_frame(ptr noundef %3)
  br label %zend_jit_free_cv.exit

zend_jit_free_cv.exit:                            ; preds = %bb.bjp, %zend_ssa_cv_info.exit.thread
  %i.gvw = shl i64 %indvars.iv4227, 12
  %i.gvx = add i64 %i.gvw, 20480
  %i.gvy = and i64 %i.gvx, 1099511623680
  %i.gvz = or disjoint i64 %i.gvy, 49
  call fastcc void @jit_ZVAL_PTR_DTOR(ptr noundef nonnull %3, i64 noundef %i.gvz, i32 noundef %.6.i4017, i1 noundef zeroext true, ptr noundef null)
  %.pre4263 = load i32, ptr %i.gtd, align 4, !tbaa !237
  br label %bb.bjq

bb.bjq:                                           ; preds = %zend_jit_free_cv.exit, %zend_ssa_cv_info.exit
  %i.gwa = phi i32 [ %.pre4263, %zend_jit_free_cv.exit ], [ %i.gtm, %zend_ssa_cv_info.exit ] ; 2 uses
  %.3 = phi i8 [ 1, %zend_jit_free_cv.exit ], [ %.14135, %zend_ssa_cv_info.exit ] ; 2 uses
  %indvars.iv.next4228 = add nuw nsw i64 %indvars.iv4227, 1 ; 2 uses
  %i.gwb = sext i32 %i.gwa to i64
  %i.gwc = icmp slt i64 %indvars.iv.next4228, %i.gwb
  br i1 %i.gwc, label %bb.bjd, label %.loopexit.loopexit, !llvm.loop !545

.loopexit.loopexit:                               ; preds = %bb.bjq
  %i.gwd = trunc nuw i8 %.3 to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.loopexit.loopexit, %.thread4013
  %.6 = phi i1 [ true, %.thread4013 ], [ false, %.preheader ], [ %i.gwd, %.loopexit.loopexit ]
  %i.gwe = load i32, ptr %i.w, align 8, !tbaa !161
  %i.gwf = and i32 %i.gwe, 1
  call fastcc void @zend_jit_leave_func(ptr noundef %3, ptr noundef nonnull %0, ptr noundef null, i32 noundef 1022, i1 noundef zeroext %.6, ptr noundef null, ptr noundef null, i32 noundef %i.gwf, i32 noundef 1)
  br label %bb.bjr

bb.bjr:                                           ; preds = %.loopexit, %.outer4041._crit_edge
  %i.gwg = call fastcc ptr @zend_jit_finish(ptr noundef %3)
  %.not2411 = icmp eq ptr %i.gwg, null
  br i1 %.not2411, label %.thread4008, label %bb.bjs

bb.bjs:                                           ; preds = %bb.bjr
  %i.gwh = getelementptr inbounds nuw i8, ptr %3, i64 984
  %i.gwi = load ptr, ptr %i.gwh, align 8, !tbaa !295 ; 6 uses
  %.not.i3759 = icmp eq ptr %i.gwi, null
  br i1 %.not.i3759, label %zend_jit_free_ctx.exit, label %bb.bjt

bb.bjt:                                           ; preds = %bb.bjs
  %i.gwj = getelementptr inbounds nuw i8, ptr %i.gwi, i64 4
  %i.gwk = load i32, ptr %i.gwj, align 4, !tbaa !72 ; 2 uses
  %i.gwl = and i32 %i.gwk, 64
  %.not.i.i3760 = icmp eq i32 %i.gwl, 0
  br i1 %.not.i.i3760, label %bb.bju, label %zend_jit_free_ctx.exit

bb.bju:                                           ; preds = %bb.bjt
  %i.gwm = load i32, ptr %i.gwi, align 4, !tbaa !294 ; 2 uses
  %i.gwn = icmp ne i32 %i.gwm, 0
  call void @llvm.assume(i1 %i.gwn)
  %i.gwo = add i32 %i.gwm, -1                     ; 2 uses
  store i32 %i.gwo, ptr %i.gwi, align 4, !tbaa !294
  %i.gwp = icmp eq i32 %i.gwo, 0
  br i1 %i.gwp, label %bb.bjv, label %zend_jit_free_ctx.exit

bb.bjv:                                           ; preds = %bb.bju
  %i.gwq = and i32 %i.gwk, 128
  %.not5.i.i = icmp eq i32 %i.gwq, 0
  br i1 %.not5.i.i, label %bb.bjx, label %bb.bjw

bb.bjw:                                           ; preds = %bb.bjv
  call void @free(ptr noundef nonnull %i.gwi) #34
  br label %zend_jit_free_ctx.exit

bb.bjx:                                           ; preds = %bb.bjv
  call void @_efree(ptr noundef nonnull %i.gwi) #34
  br label %zend_jit_free_ctx.exit

zend_jit_free_ctx.exit:                           ; preds = %bb.bjs, %bb.bjt, %bb.bju, %bb.bjw, %bb.bjx
  call void @zend_hash_destroy(ptr noundef nonnull %i.bo) #34
  call void @ir_free(ptr noundef nonnull %3) #34
  %i.gwr = load i32, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !96
  %i.gws = and i32 %i.gwr, 3
  %.not2412 = icmp eq i32 %i.gws, 0
  br i1 %.not2412, label %bb.bkf, label %bb.bjy

bb.bjy:                                           ; preds = %zend_jit_free_ctx.exit
  %i.gwt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !150 ; 4 uses
  %i.gwu = getelementptr inbounds nuw i8, ptr %i.gwt, i64 8
  %i.gwv = load ptr, ptr %i.gwu, align 8, !tbaa !151
  %i.gww = icmp ule ptr %.02123, %i.gwv
  %.not.i29114139 = icmp ugt ptr %.02123, %i.gwt
  %or.cond.i29124140 = and i1 %.not.i29114139, %i.gww
  br i1 %or.cond.i29124140, label %zend_arena_release.exit2914, label %.critedge.i2913, !prof !163

.critedge.i2913:                                  ; preds = %bb.bjy, %.critedge.i2913
  %.0.i29104141 = phi ptr [ %i.gwy, %.critedge.i2913 ], [ %i.gwt, %bb.bjy ] ; 2 uses
  %i.gwx = getelementptr inbounds nuw i8, ptr %.0.i29104141, i64 16
  %i.gwy = load ptr, ptr %i.gwx, align 8, !tbaa !152 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i29104141) #34
  store ptr %i.gwy, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !150
  %i.gwz = getelementptr inbounds nuw i8, ptr %i.gwy, i64 8
  %i.gxa = load ptr, ptr %i.gwz, align 8, !tbaa !151
  %i.gxb = icmp ule ptr %.02123, %i.gxa
  %.not.i2911 = icmp ugt ptr %.02123, %i.gwy
  %or.cond.i2912 = and i1 %.not.i2911, %i.gxb
  br i1 %or.cond.i2912, label %zend_arena_release.exit2914, label %.critedge.i2913, !prof !164, !llvm.loop !1

zend_arena_release.exit2914:                      ; preds = %.critedge.i2913, %bb.bjy
  %.0.i2910.lcssa = phi ptr [ %i.gwt, %bb.bjy ], [ %i.gwy, %.critedge.i2913 ]
  store ptr %.02123, ptr %.0.i2910.lcssa, align 8, !tbaa !147
  br label %bb.bkf

.thread4008:                                      ; preds = %bb.ut, %bb.to, %bb.rn, %bb.oo, %bb.ls, %bb.bam, %bb.axq, %bb.atr, %bb.xh, %_ssa_op2_info.exit3143, %bb.bdm, %bb.bcj, %bb.aig, %bb.zj, %bb.add, %bb.asj, %bb.adz, %bb.akq, %bb.avm, %bb.bal, %_ssa_op1_info.exit3030, %bb.afw, %bb.axr, %bb.awy, %bb.bdq, %bb.bjr
  %i.gxc = getelementptr inbounds nuw i8, ptr %3, i64 984
  %i.gxd = load ptr, ptr %i.gxc, align 8, !tbaa !295 ; 6 uses
  %.not.i3761 = icmp eq ptr %i.gxd, null
  br i1 %.not.i3761, label %zend_jit_free_ctx.exit3764, label %bb.bjz

bb.bjz:                                           ; preds = %.thread4008
  %i.gxe = getelementptr inbounds nuw i8, ptr %i.gxd, i64 4
  %i.gxf = load i32, ptr %i.gxe, align 4, !tbaa !72 ; 2 uses
  %i.gxg = and i32 %i.gxf, 64
  %.not.i.i3762 = icmp eq i32 %i.gxg, 0
  br i1 %.not.i.i3762, label %bb.bka, label %zend_jit_free_ctx.exit3764

bb.bka:                                           ; preds = %bb.bjz
  %i.gxh = load i32, ptr %i.gxd, align 4, !tbaa !294 ; 2 uses
  %i.gxi = icmp ne i32 %i.gxh, 0
  call void @llvm.assume(i1 %i.gxi)
  %i.gxj = add i32 %i.gxh, -1                     ; 2 uses
  store i32 %i.gxj, ptr %i.gxd, align 4, !tbaa !294
  %i.gxk = icmp eq i32 %i.gxj, 0
  br i1 %i.gxk, label %bb.bkb, label %zend_jit_free_ctx.exit3764

bb.bkb:                                           ; preds = %bb.bka
  %i.gxl = and i32 %i.gxf, 128
  %.not5.i.i3763 = icmp eq i32 %i.gxl, 0
  br i1 %.not5.i.i3763, label %bb.bkd, label %bb.bkc

bb.bkc:                                           ; preds = %bb.bkb
  call void @free(ptr noundef nonnull %i.gxd) #34
  br label %zend_jit_free_ctx.exit3764

bb.bkd:                                           ; preds = %bb.bkb
  call void @_efree(ptr noundef nonnull %i.gxd) #34
  br label %zend_jit_free_ctx.exit3764

zend_jit_free_ctx.exit3764:                       ; preds = %.thread4008, %bb.bjz, %bb.bka, %bb.bkc, %bb.bkd
  call void @zend_hash_destroy(ptr noundef nonnull %i.bo) #34
  call void @ir_free(ptr noundef nonnull %3) #34
  %i.gxm = load i32, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 4), align 4, !tbaa !96
  %i.gxn = and i32 %i.gxm, 3
  %.not2839 = icmp eq i32 %i.gxn, 0
  br i1 %.not2839, label %bb.bkf, label %bb.bke

bb.bke:                                           ; preds = %zend_jit_free_ctx.exit3764
  %i.gxo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !150 ; 4 uses
  %i.gxp = getelementptr inbounds nuw i8, ptr %i.gxo, i64 8
  %i.gxq = load ptr, ptr %i.gxp, align 8, !tbaa !151
  %i.gxr = icmp ule ptr %.02123, %i.gxq
  %.not.i4151 = icmp ugt ptr %.02123, %i.gxo
  %or.cond.i4152 = and i1 %.not.i4151, %i.gxr
  br i1 %or.cond.i4152, label %zend_arena_release.exit, label %.critedge.i, !prof !163

.critedge.i:                                      ; preds = %bb.bke, %.critedge.i
  %.0.i4153 = phi ptr [ %i.gxt, %.critedge.i ], [ %i.gxo, %bb.bke ] ; 2 uses
  %i.gxs = getelementptr inbounds nuw i8, ptr %.0.i4153, i64 16
  %i.gxt = load ptr, ptr %i.gxs, align 8, !tbaa !152 ; 5 uses
  call void @_efree(ptr noundef nonnull %.0.i4153) #34
  store ptr %i.gxt, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 360), align 8, !tbaa !150
  %i.gxu = getelementptr inbounds nuw i8, ptr %i.gxt, i64 8
  %i.gxv = load ptr, ptr %i.gxu, align 8, !tbaa !151
  %i.gxw = icmp ule ptr %.02123, %i.gxv
  %.not.i = icmp ugt ptr %.02123, %i.gxt
  %or.cond.i = and i1 %.not.i, %i.gxw
  br i1 %or.cond.i, label %zend_arena_release.exit, label %.critedge.i, !prof !164, !llvm.loop !1

zend_arena_release.exit:                          ; preds = %.critedge.i, %bb.bke
  %.0.i.lcssa = phi ptr [ %i.gxo, %bb.bke ], [ %i.gxt, %.critedge.i ]
  store ptr %.02123, ptr %.0.i.lcssa, align 8, !tbaa !147
  br label %bb.bkf

bb.bkf:                                           ; preds = %zend_arena_release.exit2924, %bb.dj, %zend_arena_release.exit2919, %bb.dn, %zend_arena_release.exit2914, %zend_jit_free_ctx.exit, %zend_arena_release.exit, %zend_jit_free_ctx.exit3764, %bb.g, %bb.c, %bb.f
  %.42005 = phi i32 [ -1, %bb.g ], [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %zend_arena_release.exit2919 ], [ 0, %bb.dn ], [ 0, %zend_jit_free_ctx.exit ], [ 0, %bb.dj ], [ 0, %zend_arena_release.exit2924 ], [ 0, %zend_arena_release.exit2914 ], [ -1, %zend_arena_release.exit ], [ -1, %zend_jit_free_ctx.exit3764 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i32 %.42005
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zend_jit_config(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp eq i32 %1, 1
  %i.c = load i8, ptr @jit_globals, align 8, !range !91
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %1, 16
  br i1 %i.e, label %bb.c, label %bb.ah

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.25) #34
  br label %bb.ah

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !277  ; 2 uses
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call i32 @zend_binary_strcasecmp(ptr noundef nonnull %i.i, i64 noundef 7, ptr noundef nonnull @.str.26, i64 noundef 7) #34
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @jit_globals, align 8, !tbaa !90
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @jit_globals, i64 1), align 1, !tbaa !93
  br label %bb.ah
end_hunk_0
