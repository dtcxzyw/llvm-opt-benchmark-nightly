Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LoopStrengthReduce?download=true
inline.NumInlined: 10948
inline.NumDeleted: 5106
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_111LSRInstance24GenerateAllReuseFormulaeEv:bb.a
  call void @free(ptr noundef %i.rl) #23
  br label %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit

_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit: ; preds = %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  store ptr %i.rk, ptr %i.ca, align 8, !tbaa !714
  %i.rn = load ptr, ptr %i.bo, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.ro = call fastcc noundef ptr @_ZL12getExactSDivPKN4llvm4SCEVES2_RNS_15ScalarEvolutionEb(ptr noundef %i.rk, ptr noundef %i.qi, ptr noundef nonnull align 8 dereferenceable(1152) %i.rn, i1 noundef zeroext false)
  %i.rp = load ptr, ptr %i.bn, align 8, !tbaa !714
  %.not109.i = icmp eq ptr %i.ro, %i.rp
  br i1 %.not109.i, label %bb.ci, label %.loopexit.i

bb.ci:                                            ; preds = %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit, %._crit_edge.i163
  %.val.i164 = load i64, ptr %i.cb, align 8, !tbaa !805 ; 3 uses
  %.not165.i = icmp eq i64 %.val.i164, 0
  br i1 %.not165.i, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rq = icmp eq i64 %.val.i164, -9223372036854775808
  %or.cond7.i = and i1 %i.oz, %i.rq
  br i1 %or.cond7.i, label %.loopexit.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rr = mul i64 %.val.i164, %i.ow               ; 3 uses
  store i64 %i.rr, ptr %i.cb, align 8
  %i.rs = sdiv i64 %i.rr, %i.ow
  %.val114.i = load i64, ptr %i.cc, align 8, !tbaa !805
  %.not110.i = icmp eq i64 %i.rs, %.val114.i
  br i1 %.not110.i, label %bb.cl, label %.loopexit.i

bb.cl:                                            ; preds = %bb.ck
  %i.rt = load i32, ptr %i.ov, align 8
  %i.ru = and i32 %i.rt, 255
  %i.rv = icmp eq i32 %i.ru, 15
  br i1 %i.rv, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.rw = call noundef zeroext i1 @_ZN4llvm11ConstantInt19isValueValidForTypeEPNS_4TypeEl(ptr noundef nonnull %i.nu, i64 noundef %i.rr) #23
  br i1 %i.rw, label %bb.cn, label %.loopexit.i

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ci
  %i.rx = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance13InsertFormulaERNS_6LSRUseEjRKNS_7FormulaE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %i.kd, i32 noundef %i.ll, ptr noundef nonnull align 8 dereferenceable(112) %33) ; 0 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i, %bb.cc, %bb.cn, %bb.cm, %bb.ck, %bb.cj, %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit
  %i.ry = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.cd
  br i1 %i.rz, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i162, label %bb.co

bb.co:                                            ; preds = %.loopexit.i
  call void @free(ptr noundef %i.ry) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i162

_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i162:          ; preds = %bb.co, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i162, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %bb.bt, %bb.bs, %bb.br, %bb.bq
  %i.sa = getelementptr inbounds nuw i8, ptr %.096173.i, i64 8 ; 2 uses
  %.not103.i = icmp eq ptr %i.sa, %i.ou
  br i1 %.not103.i, label %_ZN12_GLOBAL__N_111LSRInstance22GenerateICmpZeroScalesERNS_6LSRUseEjNS_7FormulaE.exit, label %bb.bq

_ZN12_GLOBAL__N_111LSRInstance22GenerateICmpZeroScalesERNS_6LSRUseEjNS_7FormulaE.exit: ; preds = %.lr.ph.i161, %bb.cp, %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit157.thread, %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit157, %bb.bi, %_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i, %bb.bk, %bb.bl, %bb.bn, %.critedge.i
  %i.sb = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %i.sc = icmp eq ptr %i.sb, %i.bk
  br i1 %i.sc, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit165, label %bb.cq

bb.cq:                                            ; preds = %_ZN12_GLOBAL__N_111LSRInstance22GenerateICmpZeroScalesERNS_6LSRUseEjNS_7FormulaE.exit
  call void @free(ptr noundef %i.sb) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit165

_ZN12_GLOBAL__N_17FormulaD2Ev.exit165:            ; preds = %_ZN12_GLOBAL__N_111LSRInstance22GenerateICmpZeroScalesERNS_6LSRUseEjNS_7FormulaE.exit, %bb.cq
  %i.sd = add nuw nsw i64 %.070440, 1             ; 2 uses
  %.not82 = icmp eq i64 %i.sd, %i.lk
  br i1 %.not82, label %._crit_edge443.a, label %bb.be, !llvm.loop !815

._crit_edge448:                                   ; preds = %_ZN12_GLOBAL__N_17FormulaD2Ev.exit197, %bb.as, %._crit_edge433.a, %._crit_edge438.a, %._crit_edge443.a
  %i.se = add nuw nsw i64 %.073450, 1             ; 2 uses
  %.not77 = icmp eq i64 %i.se, %i.as
  br i1 %.not77, label %._crit_edge453, label %bb.as, !llvm.loop !816

bb.cr:                                            ; preds = %.lr.ph447, %_ZN12_GLOBAL__N_17FormulaD2Ev.exit197
  %.069445 = phi i64 [ 0, %.lr.ph447 ], [ %i.ym, %_ZN12_GLOBAL__N_17FormulaD2Ev.exit197 ] ; 2 uses
  %.val89 = load ptr, ptr %i.ke, align 8, !tbaa !21
  %i.sf = getelementptr inbounds nuw [112 x i8], ptr %.val89, i64 %.069445 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %43, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.sf, i64 40, i1 false)
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 40
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !21
  store i32 0, ptr %i.cm, align 8, !tbaa !50
  store i32 4, ptr %i.cn, align 4, !tbaa !51
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 48 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 8, !tbaa !50 ; 5 uses
  %.not.i.i.i166 = icmp eq i32 %i.si, 0
  %i.sj = icmp eq ptr %43, %i.sf
  %or.cond.i.i167 = or i1 %i.sj, %.not.i.i.i166
  br i1 %or.cond.i.i167, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.sk = icmp ugt i32 %i.si, 4
  br i1 %i.sk, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i171, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i168

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i171: ; preds = %bb.cs
  %i.sl = zext i32 %i.si to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull %i.cl, i64 noundef %i.sl, i64 noundef 8) #23
  %.pre.i.i172 = load i32, ptr %i.sh, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i173 = icmp eq i32 %.pre.i.i172, 0
  br i1 %.not.i.i.i.i173, label %bb.ct, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i174

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i174: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i171
  %.pre.i175 = load ptr, ptr %i.ck, align 8, !tbaa !21
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i168

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i168: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i174, %bb.cs
  %i.sm = phi ptr [ %.pre.i175, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i174 ], [ %i.cl, %bb.cs ]
  %i.sn = phi i32 [ %.pre.i.i172, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i174 ], [ %i.si, %bb.cs ]
  %i.so = zext i32 %i.sn to i64
  %i.sp = load ptr, ptr %i.sg, align 8, !tbaa !21
  %gepdiff.i.i.i169 = shl nuw nsw i64 %i.so, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sm, ptr align 8 %i.sp, i64 %gepdiff.i.i.i169, i1 false)
  br label %bb.ct

bb.ct:                                            ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i168, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i171
  store i32 %i.si, ptr %i.cm, align 8, !tbaa !50
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sf, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.sq, i64 17, i1 false)
  %.pre529 = load ptr, ptr %i.ck, align 8, !tbaa !21
  %i.sr = load ptr, ptr %.pre529, align 8, !tbaa !456
  %i.ss = call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.sr) #23
  br label %_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i178

bb.cu:                                            ; preds = %bb.cr
  %i.st = getelementptr inbounds nuw i8, ptr %i.sf, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.st, i64 17, i1 false)
  %i.su = load ptr, ptr %i.co, align 8, !tbaa !714 ; 2 uses
  %.not.i.i195 = icmp eq ptr %i.su, null
  br i1 %.not.i.i195, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sv = call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.su) #23
  br label %_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i178

bb.cw:                                            ; preds = %bb.cu
  %i.sw = load ptr, ptr %43, align 8, !tbaa !807  ; 2 uses
  %.not2.i.i196 = icmp eq ptr %i.sw, null
  br i1 %.not2.i.i196, label %_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !118
  br label %_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i178

_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i178:   ; preds = %bb.cx, %bb.cv, %bb.ct
  %i.sz = phi ptr [ %i.ss, %bb.ct ], [ %i.sv, %bb.cv ], [ %i.sy, %bb.cx ] ; 2 uses
  %.not.i179 = icmp eq ptr %i.sz, null
  br i1 %.not.i179, label %_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit, label %bb.cy

bb.cy:                                            ; preds = %_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i178
  %i.ta = load i64, ptr %i.cp, align 8, !tbaa !705
  switch i64 %i.ta, label %_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit [
    i64 0, label %bb.dc
    i64 1, label %bb.cz
  ]

bb.cz:                                            ; preds = %bb.cy
  store i64 0, ptr %i.cp, align 8, !tbaa !705
  %i.tb = load ptr, ptr %i.co, align 8, !tbaa !714 ; 2 uses
  %i.tc = load i32, ptr %i.cm, align 8, !tbaa !50 ; 2 uses
  %i.td = load i32, ptr %i.cn, align 4, !tbaa !51
  %.not.i.i69.i = icmp ult i32 %i.tc, %i.td
  br i1 %.not.i.i69.i, label %bb.db, label %bb.da, !prof !166

bb.da:                                            ; preds = %bb.cz
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef %i.tb)
  br label %_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.thread.i

bb.db:                                            ; preds = %bb.cz
  %i.te = zext i32 %i.tc to i64
  %i.tf = load ptr, ptr %i.ck, align 8, !tbaa !21
  %i.tg = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.te
  store ptr %i.tb, ptr %i.tg, align 1
  %i.th = load i32, ptr %i.cm, align 8, !tbaa !50
  %i.ti = add i32 %i.th, 1
  store i32 %i.ti, ptr %i.cm, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.thread.i

_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.thread.i: ; preds = %bb.db, %bb.da
  store ptr null, ptr %i.co, align 8, !tbaa !714
  br label %bb.dc

bb.dc:                                            ; preds = %_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.thread.i, %bb.cy
  %i.tj = load ptr, ptr %i.bp, align 8, !tbaa !21 ; 2 uses
  %i.tk = load i32, ptr %i.bq, align 8, !tbaa !50 ; 2 uses
  %i.tl = zext i32 %i.tk to i64
  %.idx112.i = shl nuw nsw i64 %i.tl, 3
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 %.idx112.i
  %.not60109.i = icmp eq i32 %i.tk, 0
  br i1 %.not60109.i, label %_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit, label %.lr.ph111.i

.lr.ph111.i:                                      ; preds = %bb.dc, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i
  %.055110.i = phi ptr [ %i.yj, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i ], [ %i.tj, %bb.dc ] ; 2 uses
  %i.tn = load i64, ptr %.055110.i, align 8, !tbaa !157 ; 13 uses
  store i64 %i.tn, ptr %i.cp, align 8, !tbaa !705
  %i.to = load i32, ptr %i.cm, align 8, !tbaa !50
  %i.tp = icmp ugt i32 %i.to, 1                   ; 4 uses
  %i.tq = zext i1 %i.tp to i8
  store i8 %i.tq, ptr %i.cq, align 8, !tbaa !700
  %i.tr = load ptr, ptr %i.bu, align 8, !tbaa !580, !nonnull !19, !align !34 ; 8 uses
  %.sroa.021.0.copyload.i = load i64, ptr %i.ms, align 8 ; 4 uses
  %.sroa.222.0.copyload.i = load i8, ptr %.sroa.222.0..sroa_idx.i, align 8 ; 6 uses
  %.sroa.018.0.copyload.i = load i64, ptr %i.mt, align 8 ; 4 uses
  %.sroa.219.0.copyload.i = load i8, ptr %.sroa.219.0..sroa_idx.i, align 8 ; 6 uses
  %i.ts = load i32, ptr %i.mu, align 8, !tbaa !812 ; 2 uses
  %.sroa.091.0.copyload.i = load ptr, ptr %i.mv, align 8, !tbaa !603 ; 4 uses
  %.sroa.2.0.copyload92.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !478 ; 4 uses
  %i.tt = load ptr, ptr %43, align 8, !tbaa !807  ; 10 uses
  %.sroa.017.0.copyload.i.i = load i64, ptr %i.cr, align 8 ; 9 uses
  %.sroa.218.0.copyload.i.i = load i8, ptr %.sroa.218.0..sroa_idx.i.i, align 8 ; 4 uses
  %.not27.i326 = icmp eq i64 %.sroa.017.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not27.i326, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.lr.ph111.i
  %45 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.222.0.copyload.i
  %46 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.219.0.copyload.i
  %or.cond.i327 = select i1 %45, i1 true, i1 %46
  br i1 %or.cond.i327, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph111.i
  %i.tu = add i64 %.sroa.017.0.copyload.i.i, %.sroa.021.0.copyload.i ; 10 uses
  %i.tv = icmp sgt i64 %i.tu, %.sroa.017.0.copyload.i.i
  %i.tw = icmp slt i64 %.sroa.021.0.copyload.i, 1
  %.not.i328 = xor i1 %i.tw, %i.tv
  br i1 %.not.i328, label %bb.df, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

bb.df:                                            ; preds = %bb.de
  %i.tx = add i64 %.sroa.017.0.copyload.i.i, %.sroa.018.0.copyload.i ; 9 uses
  %i.ty = icmp sgt i64 %i.tx, %.sroa.017.0.copyload.i.i
  %i.tz = icmp slt i64 %.sroa.018.0.copyload.i, 1
  %.not35.i330 = xor i1 %i.tz, %i.ty
  br i1 %.not35.i330, label %bb.dg, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

bb.dg:                                            ; preds = %bb.df
  switch i32 %i.ts, label %bb.dm [
    i32 2, label %.split.i342
    i32 3, label %bb.dh
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i334
    i32 1, label %.split22.i331
  ]

.split.i342:                                      ; preds = %bb.dg
  %i.ua = trunc nuw i8 %.sroa.222.0.copyload.i to i1 ; 2 uses
  %spec.select.i.i343 = select i1 %i.ua, i64 0, i64 %i.tu
  %spec.select2.i.i344 = select i1 %i.ua, i64 %i.tu, i64 0
  %i.ub = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, ptr noundef %.sroa.091.0.copyload.i, ptr noundef %i.tt, i64 noundef %spec.select.i.i343, i1 noundef zeroext %i.tp, i64 noundef %i.tn, i32 noundef %.sroa.2.0.copyload92.i, ptr noundef null, i64 noundef %spec.select2.i.i344) #23
  br i1 %i.ub, label %.split, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

bb.dh:                                            ; preds = %bb.dg
  %.not30.i.i336 = icmp eq ptr %i.tt, null
  br i1 %.not30.i.i336, label %bb.di, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

bb.di:                                            ; preds = %bb.dh
  %i.uc = icmp ne i64 %i.tn, 0
  %or.cond.i.i337 = and i1 %i.uc, %i.tp
  br i1 %or.cond.i.i337, label %.split23.i, label %bb.dj

.split23.i:                                       ; preds = %bb.di
  %or.cond3.i.i = icmp eq i64 %i.tn, -1
  %i.ud = or i64 %i.tx, %i.tu
  %i.ue = icmp eq i64 %i.ud, 0
  %spec.select31.i = and i1 %or.cond3.i.i, %i.ue
  br i1 %spec.select31.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

bb.dj:                                            ; preds = %bb.di
  %.old.i.i338 = add i64 %i.tn, -1
  %or.cond3.old.i.i = icmp ult i64 %.old.i.i338, -2
  br i1 %or.cond3.old.i.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.not7.i.i339 = icmp eq i64 %i.tu, 0
  br i1 %.not7.i.i339, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.uf = trunc nuw i8 %.sroa.222.0.copyload.i to i1
  br i1 %i.uf, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i, label %.split21.i340

.split21.i340:                                    ; preds = %bb.dl
  %i.ug = icmp eq i64 %i.tn, 0
  %i.uh = sub i64 0, %i.tu
  %spec.select4.i.i = select i1 %i.ug, i64 %i.uh, i64 %i.tu
  %i.ui = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, i64 noundef %spec.select4.i.i) #23
  br i1 %i.ui, label %bb.dn, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

.split22.i331:                                    ; preds = %bb.dg
  %.not.i.i332 = icmp eq ptr %i.tt, null
  %i.uj = add i64 %i.tn, 1
  %or.cond7.i.i = icmp ult i64 %i.uj, 2
  %or.cond31.i.i = and i1 %or.cond7.i.i, %.not.i.i332
  %i.uk = or i64 %i.tx, %i.tu
  %i.ul = icmp eq i64 %i.uk, 0
  %spec.select.i333 = and i1 %or.cond31.i.i, %i.ul
  br i1 %spec.select.i333, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

bb.dm:                                            ; preds = %bb.dg
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i334: ; preds = %bb.dg
  %i.um = icmp eq ptr %i.tt, null
  %i.un = or i64 %i.tu, %i.tn
  %i.uo = or i64 %i.un, %i.tx
  %i.up = icmp eq i64 %i.uo, 0
  %spec.select28.i335 = and i1 %i.um, %i.up
  br i1 %spec.select28.i335, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

.split:                                           ; preds = %.split.i342
  %i.uq = trunc nuw i8 %.sroa.219.0.copyload.i to i1 ; 2 uses
  %spec.select.i66.i345 = select i1 %i.uq, i64 0, i64 %i.tx
  %spec.select2.i67.i346 = select i1 %i.uq, i64 %i.tx, i64 0
  %i.ur = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, ptr noundef %.sroa.091.0.copyload.i, ptr noundef %i.tt, i64 noundef %spec.select.i66.i345, i1 noundef zeroext %i.tp, i64 noundef %i.tn, i32 noundef %.sroa.2.0.copyload92.i, ptr noundef null, i64 noundef %spec.select2.i67.i346) #23
  br i1 %i.ur, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread

bb.dn:                                            ; preds = %.split21.i340, %bb.dk
  %.not7.i62.i341 = icmp eq i64 %i.tx, 0
  br i1 %.not7.i62.i341, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.us = trunc nuw i8 %.sroa.219.0.copyload.i to i1
  br i1 %i.us, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347: ; preds = %bb.do
  %i.ut = icmp eq i64 %i.tn, 0
  %i.uu = sub i64 0, %i.tx
  %spec.select4.i63.i = select i1 %i.ut, i64 %i.uu, i64 %i.tx
  %i.uv = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, i64 noundef %spec.select4.i63.i) #23
  br i1 %i.uv, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread: ; preds = %bb.dj, %.split.i342, %bb.dh, %bb.de, %bb.df, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i334, %.split22.i331, %.split, %.split23.i
  %47 = icmp eq i64 %i.tn, 1
  br i1 %47, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347.thread: ; preds = %bb.dd
  %i.uw = icmp eq i64 %i.tn, 1
  br i1 %i.uw, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i: ; preds = %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread
  br i1 %.not27.i326, label %bb.dp, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread: ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347.thread
  %48 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.222.0.copyload.i
  %49 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.219.0.copyload.i
  %.pre542 = select i1 %48, i1 true, i1 %49
  br i1 %.pre542, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread._crit_edge

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread._crit_edge: ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread
  %.pre533 = add i64 %.sroa.017.0.copyload.i.i, %.sroa.021.0.copyload.i
  br label %bb.dp

bb.dp:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread._crit_edge, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i
  %.pre-phi = phi i64 [ %.pre533, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread._crit_edge ], [ %i.tu, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i ] ; 7 uses
  %i.ux = icmp sgt i64 %.pre-phi, %.sroa.017.0.copyload.i.i
  %i.uy = icmp slt i64 %.sroa.021.0.copyload.i, 1
  %.not.i321 = xor i1 %i.uy, %i.ux
  br i1 %.not.i321, label %bb.dq, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

bb.dq:                                            ; preds = %bb.dp
  %i.uz = add i64 %.sroa.017.0.copyload.i.i, %.sroa.018.0.copyload.i ; 7 uses
  %i.va = icmp sgt i64 %i.uz, %.sroa.017.0.copyload.i.i
  %i.vb = icmp slt i64 %.sroa.018.0.copyload.i, 1
  %.not35.i = xor i1 %i.vb, %i.va
  br i1 %.not35.i, label %bb.dr, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

bb.dr:                                            ; preds = %bb.dq
  switch i32 %i.ts, label %bb.dv [
    i32 2, label %.split.i324
    i32 3, label %bb.ds
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i
    i32 1, label %.split22.i
  ]

.split.i324:                                      ; preds = %bb.dr
  %i.vc = trunc nuw i8 %.sroa.222.0.copyload.i to i1 ; 2 uses
  %spec.select.i.i325 = select i1 %i.vc, i64 0, i64 %.pre-phi
  %spec.select2.i.i = select i1 %i.vc, i64 %.pre-phi, i64 0
  %i.vd = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, ptr noundef %.sroa.091.0.copyload.i, ptr noundef %i.tt, i64 noundef %spec.select.i.i325, i1 noundef zeroext true, i64 noundef 0, i32 noundef %.sroa.2.0.copyload92.i, ptr noundef null, i64 noundef %spec.select2.i.i) #23
  br i1 %i.vd, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

bb.ds:                                            ; preds = %bb.dr
  %.not30.i.i = icmp eq ptr %i.tt, null
  br i1 %.not30.i.i, label %bb.dt, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

bb.dt:                                            ; preds = %bb.ds
  %.not7.i.i = icmp eq i64 %.pre-phi, 0
  br i1 %.not7.i.i, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ve = trunc nuw i8 %.sroa.222.0.copyload.i to i1
  br i1 %i.ve, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i, label %.split21.i

.split21.i:                                       ; preds = %bb.du
  %i.vf = sub i64 0, %.pre-phi
  %i.vg = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, i64 noundef %i.vf) #23
  br i1 %i.vg, label %bb.dw, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

.split22.i:                                       ; preds = %bb.dr
  %.not.i.i323 = icmp eq ptr %i.tt, null
  %i.vh = or i64 %i.uz, %.pre-phi
  %i.vi = icmp eq i64 %i.vh, 0
  %spec.select.i = and i1 %.not.i.i323, %i.vi
  br i1 %spec.select.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

bb.dv:                                            ; preds = %bb.dr
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i: ; preds = %bb.dr
  %i.vj = icmp eq ptr %i.tt, null
  %i.vk = or i64 %i.uz, %.pre-phi
  %i.vl = icmp eq i64 %i.vk, 0
  %spec.select28.i = and i1 %i.vj, %i.vl
  br i1 %spec.select28.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

bb.dw:                                            ; preds = %.split21.i, %bb.dt
  %.not7.i62.i = icmp eq i64 %i.uz, 0
  br i1 %.not7.i62.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.vm = trunc nuw i8 %.sroa.219.0.copyload.i to i1
  br i1 %i.vm, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i, label %.split367

.split367:                                        ; preds = %bb.dx
  %i.vn = sub i64 0, %i.uz
  %i.vo = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, i64 noundef %i.vn) #23
  br i1 %i.vo, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit: ; preds = %.split.i324
  %i.vp = trunc nuw i8 %.sroa.219.0.copyload.i to i1 ; 2 uses
  %spec.select.i66.i = select i1 %i.vp, i64 0, i64 %i.uz
  %spec.select2.i67.i = select i1 %i.vp, i64 %i.uz, i64 0
  %i.vq = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.tr, ptr noundef %.sroa.091.0.copyload.i, ptr noundef %i.tt, i64 noundef %spec.select.i66.i, i1 noundef zeroext true, i64 noundef 0, i32 noundef %.sroa.2.0.copyload92.i, ptr noundef null, i64 noundef %spec.select2.i67.i) #23
  br i1 %i.vq, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i: ; preds = %bb.dl, %bb.do, %.split21.i340, %.split21.i, %.split.i324, %bb.dx, %bb.ds, %bb.dp, %bb.dq, %bb.du, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i.thread, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347.thread, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i, %.split367, %.split22.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit348.thread
  %i.vr = load i32, ptr %i.mu, align 8, !tbaa !812
  %i.vs = icmp eq i32 %i.vr, 0
  br i1 %i.vs, label %bb.dy, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i

bb.dy:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i
  %.sroa.015.0.copyload.i = load i64, ptr %i.ms, align 8 ; 4 uses
  %.sroa.216.0.copyload.i = load i8, ptr %.sroa.222.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.mt, align 8 ; 4 uses
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.219.0..sroa_idx.i, align 8 ; 2 uses
  %i.vt = load ptr, ptr %43, align 8, !tbaa !807  ; 2 uses
  %.sroa.017.0.copyload.i73.i = load i64, ptr %i.cr, align 8 ; 9 uses
  %.sroa.218.0.copyload.i75.i = load i8, ptr %.sroa.218.0..sroa_idx.i.i, align 8 ; 4 uses
  %i.vu = load i64, ptr %i.cp, align 8, !tbaa !705 ; 3 uses
  %.not27.i82.i = icmp eq i64 %.sroa.017.0.copyload.i73.i, 0 ; 2 uses
  br i1 %.not27.i82.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %50 = icmp ne i8 %.sroa.218.0.copyload.i75.i, %.sroa.216.0.copyload.i
  %51 = icmp ne i8 %.sroa.218.0.copyload.i75.i, %.sroa.2.0.copyload.i
  %or.cond.i83.i = select i1 %50, i1 true, i1 %51
  br i1 %or.cond.i83.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i.a, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.vv = add i64 %.sroa.017.0.copyload.i73.i, %.sroa.015.0.copyload.i ; 3 uses
  %i.vw = icmp sgt i64 %i.vv, %.sroa.017.0.copyload.i73.i
  %i.vx = icmp slt i64 %.sroa.015.0.copyload.i, 1
  %.not.i84.i = xor i1 %i.vx, %i.vw
  br i1 %.not.i84.i, label %bb.eb, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i

bb.eb:                                            ; preds = %bb.ea
  %i.vy = add i64 %.sroa.017.0.copyload.i73.i, %.sroa.0.0.copyload.i ; 2 uses
  %i.vz = icmp sgt i64 %i.vy, %.sroa.017.0.copyload.i73.i
  %i.wa = icmp slt i64 %.sroa.0.0.copyload.i, 1
  %.not35.i86.i = xor i1 %i.wa, %i.vz
  br i1 %.not35.i86.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.i: ; preds = %bb.eb
  %.not.i.i87.i = icmp eq ptr %i.vt, null
  %i.wb = add i64 %i.vu, 1
  %or.cond7.i.i.i = icmp ult i64 %i.wb, 2
  %or.cond31.i.i.i = and i1 %.not.i.i87.i, %or.cond7.i.i.i
  %i.wc = or i64 %i.vy, %i.vv
  %i.wd = icmp eq i64 %i.wc, 0
  %spec.select.i88.i = and i1 %i.wd, %or.cond31.i.i.i
  br i1 %spec.select.i88.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread102.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i: ; preds = %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.i, %bb.eb, %bb.ea
  %52 = icmp eq i64 %i.vu, 1
  br i1 %52, label %bb.ec, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i.a: ; preds = %bb.dz
  %i.we = icmp eq i64 %i.vu, 1
  br i1 %i.we, label %.thread104.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i

bb.ec:                                            ; preds = %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i
  br i1 %.not27.i82.i, label %.thread104._crit_edge.i.a, label %.thread104.i

.thread104.i:                                     ; preds = %bb.ec, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i.a
  %53 = icmp ne i8 %.sroa.218.0.copyload.i75.i, %.sroa.216.0.copyload.i
  %54 = icmp ne i8 %.sroa.218.0.copyload.i75.i, %.sroa.2.0.copyload.i
  %.pre125.i = select i1 %53, i1 true, i1 %54
  br i1 %.pre125.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i, label %.thread104._crit_edge.i

.thread104._crit_edge.i:                          ; preds = %.thread104.i
  %.pre115.i = add i64 %.sroa.017.0.copyload.i73.i, %.sroa.015.0.copyload.i
  br label %.thread104._crit_edge.i.a

.thread104._crit_edge.i.a:                        ; preds = %.thread104._crit_edge.i, %bb.ec
  %.pre-phi116.i = phi i64 [ %.pre115.i, %.thread104._crit_edge.i ], [ %i.vv, %bb.ec ] ; 2 uses
  %.old = icmp sgt i64 %.pre-phi116.i, %.sroa.017.0.copyload.i73.i
  %55 = icmp slt i64 %.sroa.015.0.copyload.i, 1
  %.not.i80.i.old = xor i1 %55, %.old
  br i1 %.not.i80.i.old, label %bb.ed, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i

bb.ed:                                            ; preds = %.thread104._crit_edge.i.a
  %i.wf = add i64 %.sroa.017.0.copyload.i73.i, %.sroa.0.0.copyload.i ; 2 uses
  %i.wg = icmp sgt i64 %i.wf, %.sroa.017.0.copyload.i73.i
  %i.wh = icmp slt i64 %.sroa.0.0.copyload.i, 1
  %.not35.i.i = xor i1 %i.wh, %i.wg
  br i1 %.not35.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.i: ; preds = %bb.ed
  %.not.i.i81.i = icmp eq ptr %i.vt, null
  %i.wi = or i64 %.pre-phi116.i, %i.wf
  %i.wj = icmp eq i64 %i.wi, 0
  %spec.select.i.i = and i1 %.not.i.i81.i, %i.wj
  br i1 %spec.select.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread102.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread102.i: ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.i
  %i.wk = load i8, ptr %i.mw, align 8, !tbaa !674, !range !18, !noundef !19
  %i.wl = trunc nuw i8 %i.wk to i1
  br i1 %i.wl, label %.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i

.thread.i:                                        ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread102.i
  store i32 1, ptr %i.mu, align 8, !tbaa !812
  br label %bb.ee

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i: ; preds = %bb.dw, %bb.dn, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i, %.split367, %.split22.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i334, %.split22.i331, %.split, %.split23.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit347
  %.pr.i = load i32, ptr %i.mu, align 8, !tbaa !812
  %i.wm = icmp ne i32 %.pr.i, 3
  %i.wn = load i8, ptr %i.cq, align 8, !range !18
  %i.wo = trunc nuw i8 %i.wn to i1
  %or.cond373.a = select i1 %i.wm, i1 true, i1 %i.wo
  %or.cond373.not = xor i1 %or.cond373.a, true
  %.val.i194 = load i64, ptr %i.cr, align 8
  %i.wp = icmp eq i64 %.val.i194, 0
  %or.cond375 = select i1 %or.cond373.not, i1 %i.wp, i1 false
  %i.wq = load ptr, ptr %43, align 8
  %.not61.i = icmp eq ptr %i.wq, null
  %or.cond377 = select i1 %or.cond375, i1 %.not61.i, i1 false
  br i1 %or.cond377, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i, label %bb.ee

bb.ee:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, %.thread.i
  %i.wr = load i32, ptr %i.cm, align 8, !tbaa !50 ; 2 uses
  %i.ws = zext i32 %i.wr to i64
  %.not62107.i = icmp eq i32 %i.wr, 0
  br i1 %.not62107.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.ee, %.critedge.i182
  %.0108.i = phi i64 [ %i.yi, %.critedge.i182 ], [ 0, %bb.ee ] ; 3 uses
  %i.wt = load ptr, ptr %i.ck, align 8, !tbaa !21
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %.0108.i
  %i.wv = load ptr, ptr %i.wu, align 8, !tbaa !456 ; 4 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load i16, ptr %i.ww, align 8, !tbaa !438
  %i.wy = icmp ne i16 %i.wx, 8
  %.not63105.i = icmp eq ptr %i.wv, null
  %.not63.i = or i1 %.not63105.i, %i.wy
  br i1 %.not63.i, label %.critedge.i182, label %bb.ef

bb.ef:                                            ; preds = %.lr.ph.i181
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wv, i64 56 ; 2 uses
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !604
  %i.xb = load ptr, ptr %i.cs, align 8, !tbaa !560
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xd = load i8, ptr %i.mw, align 8, !tbaa !674, !range !18, !noundef !19
  %i.xe = trunc nuw i8 %i.xd to i1
  br i1 %i.xe, label %bb.eh, label %.critedge.i182

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.xf = load ptr, ptr %i.bo, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.xg = call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb(ptr noundef nonnull align 8 dereferenceable(1152) %i.xf, ptr noundef nonnull %i.sz, i64 noundef %i.tn, i1 noundef zeroext false) #23 ; 2 uses
  %i.xh = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.xg) #23
  br i1 %i.xh, label %.critedge.i182, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xi = load ptr, ptr %i.bo, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.xj = call fastcc noundef ptr @_ZL12getExactSDivPKN4llvm4SCEVES2_RNS_15ScalarEvolutionEb(ptr noundef nonnull %i.wv, ptr noundef nonnull %i.xg, ptr noundef nonnull align 8 dereferenceable(1152) %i.xi, i1 noundef zeroext true) ; 3 uses
  %.not64.i = icmp eq ptr %i.xj, null
  br i1 %.not64.i, label %.critedge.i182, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.xk = call noundef zeroext i1 @_ZNK4llvm4SCEV6isZeroEv(ptr noundef nonnull align 8 dereferenceable(40) %i.xj) #23
  br i1 %i.xk, label %.critedge.i182, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %31, ptr noundef nonnull readonly align 8 dereferenceable(112) %43, i64 40, i1 false)
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !21
  store i32 0, ptr %i.cv, align 8, !tbaa !50
  store i32 4, ptr %i.cw, align 4, !tbaa !51
  %i.xl = load i32, ptr %i.cm, align 8, !tbaa !50 ; 6 uses
  %.not.i.i.i.i183 = icmp eq i32 %i.xl, 0
  br i1 %.not.i.i.i.i183, label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i187, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.xm = icmp ugt i32 %i.xl, 4
  br i1 %i.xm, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i189, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i184

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i189: ; preds = %bb.el
  %i.xn = zext i32 %i.xl to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull %i.cu, i64 noundef %i.xn, i64 noundef 8) #23
  %.pre.i.i.i190 = load i32, ptr %i.cm, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i191 = icmp eq i32 %.pre.i.i.i190, 0
  br i1 %.not.i.i.i.i.i191, label %.sink.split.i.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i192

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i192: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i189
  %.pre.i.i193 = load ptr, ptr %i.ct, align 8, !tbaa !21
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i184

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i184: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i192, %bb.el
  %i.xo = phi ptr [ %.pre.i.i193, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i192 ], [ %i.cu, %bb.el ]
  %i.xp = phi i32 [ %.pre.i.i.i190, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i.i192 ], [ %i.xl, %bb.el ]
  %i.xq = zext i32 %i.xp to i64
  %i.xr = load ptr, ptr %i.ck, align 8, !tbaa !21
  %gepdiff.i.i.i.i185 = shl nuw nsw i64 %i.xq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xo, ptr align 8 %i.xr, i64 %gepdiff.i.i.i.i185, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i.i184, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i.i189
  %.pre.i186 = load ptr, ptr %i.ct, align 8, !tbaa !21
  br label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i187

_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i187:      ; preds = %.sink.split.i.i.i.i, %bb.ek
  %i.xs = phi ptr [ %i.cu, %bb.ek ], [ %.pre.i186, %.sink.split.i.i.i.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.cx, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.co, i64 17, i1 false)
  store ptr %i.xj, ptr %i.cx, align 8, !tbaa !714
  %.idx.i188 = shl nuw nsw i64 %.0108.i, 3        ; 2 uses
  %i.xt = zext i32 %i.xl to i64
  %.idx106.i = shl nuw nsw i64 %i.xt, 3
  %i.xu = add nsw i64 %.idx106.i, -8              ; 2 uses
  %.not.i77.i = icmp eq i64 %.idx.i188, %i.xu
  br i1 %.not.i77.i, label %_ZN12_GLOBAL__N_17Formula13deleteBaseRegERPKN4llvm4SCEVE.exit.i, label %bb.em

bb.em:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i187
  %i.xv = getelementptr inbounds i8, ptr %i.xs, i64 %i.xu ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xs, i64 %.idx.i188 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !456
  %i.xy = load ptr, ptr %i.xv, align 8, !tbaa !456
  store ptr %i.xy, ptr %i.xw, align 8, !tbaa !456
  store ptr %i.xx, ptr %i.xv, align 8, !tbaa !456
  br label %_ZN12_GLOBAL__N_17Formula13deleteBaseRegERPKN4llvm4SCEVE.exit.i

_ZN12_GLOBAL__N_17Formula13deleteBaseRegERPKN4llvm4SCEVE.exit.i: ; preds = %bb.em, %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit.i187
  %i.xz = add i32 %i.xl, -1                       ; 2 uses
  store i32 %i.xz, ptr %i.cv, align 8, !tbaa !50
  %i.ya = load i64, ptr %i.cy, align 8, !tbaa !705
  %i.yb = icmp eq i64 %i.ya, 1
  br i1 %i.yb, label %bb.en, label %.critedge67.i

bb.en:                                            ; preds = %_ZN12_GLOBAL__N_17Formula13deleteBaseRegERPKN4llvm4SCEVE.exit.i
  %.not.i78.i = icmp eq i32 %i.xz, 0
  br i1 %.not.i78.i, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yc = load ptr, ptr %i.wz, align 8, !tbaa !604
  %i.yd = load ptr, ptr %i.cs, align 8, !tbaa !560 ; 2 uses
  %.not65.i = icmp eq ptr %i.yc, %i.yd
  %.pre113.i = load i8, ptr %i.mw, align 8, !tbaa !674, !range !18
  %.pre114.i = trunc nuw i8 %.pre113.i to i1      ; 2 uses
  br i1 %.not65.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  br i1 %.pre114.i, label %bb.es, label %.critedge67.i

bb.eq:                                            ; preds = %bb.eo
  br i1 %.pre114.i, label %bb.er, label %.critedge67.i

bb.er:                                            ; preds = %bb.eq
  call fastcc void @_ZN12_GLOBAL__N_17Formula12canonicalizeERKN4llvm4LoopE(ptr noundef nonnull align 8 dereferenceable(112) %31, ptr noundef nonnull align 8 dereferenceable(144) %i.yd)
  br label %.critedge67.i

.critedge67.i:                                    ; preds = %bb.er, %bb.eq, %bb.ep, %_ZN12_GLOBAL__N_17Formula13deleteBaseRegERPKN4llvm4SCEVE.exit.i
  %i.ye = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance13InsertFormulaERNS_6LSRUseEjRKNS_7FormulaE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %i.kd, i32 noundef %i.mr, ptr noundef nonnull align 8 dereferenceable(112) %31) ; 0 uses
  %i.yf = load ptr, ptr %i.ct, align 8, !tbaa !21 ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.cu
  br i1 %i.yg, label %.critedge.sink.split.i, label %.critedge.sink.split.sink.split.i

bb.es:                                            ; preds = %bb.ep, %bb.en
  %i.yh = icmp eq ptr %i.xs, %i.cu
  br i1 %i.yh, label %.critedge.sink.split.i, label %.critedge.sink.split.sink.split.i

.critedge.sink.split.sink.split.i:                ; preds = %bb.es, %.critedge67.i
  %.sink.i = phi ptr [ %i.yf, %.critedge67.i ], [ %i.xs, %bb.es ]
  call void @free(ptr noundef %.sink.i) #23
  br label %.critedge.sink.split.i

.critedge.sink.split.i:                           ; preds = %.critedge.sink.split.sink.split.i, %bb.es, %.critedge67.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %.critedge.i182

.critedge.i182:                                   ; preds = %.critedge.sink.split.i, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %.lr.ph.i181
  %i.yi = add nuw nsw i64 %.0108.i, 1             ; 2 uses
  %.not62.i = icmp eq i64 %i.yi, %i.ws
  br i1 %.not62.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i, label %.lr.ph.i181, !llvm.loop !817

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i: ; preds = %.critedge.i182, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, %bb.ee, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread102.i, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.i, %bb.ed, %.thread104._crit_edge.i.a, %.thread104.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i.a, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit89.thread.i, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread100.i
  %i.yj = getelementptr inbounds nuw i8, ptr %.055110.i, i64 8 ; 2 uses
  %.not60.i = icmp eq ptr %i.yj, %i.tm
  br i1 %.not60.i, label %_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit, label %.lr.ph111.i

_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit: ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit76.thread.i, %bb.cw, %_ZNK12_GLOBAL__N_17Formula7getTypeEv.exit.i178, %bb.cy, %bb.dc
  %i.yk = load ptr, ptr %i.ck, align 8, !tbaa !21 ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.cl
  br i1 %i.yl, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit197, label %bb.et

bb.et:                                            ; preds = %_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit
  call void @free(ptr noundef %i.yk) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit197

_ZN12_GLOBAL__N_17FormulaD2Ev.exit197:            ; preds = %_ZN12_GLOBAL__N_111LSRInstance14GenerateScalesERNS_6LSRUseEjNS_7FormulaE.exit, %bb.et
  %i.ym = add nuw nsw i64 %.069445, 1             ; 2 uses
  %.not83 = icmp eq i64 %i.ym, %i.mq
  br i1 %.not83, label %._crit_edge448, label %bb.cr, !llvm.loop !818

._crit_edge471:                                   ; preds = %._crit_edge466, %bb.a, %._crit_edge428.a, %._crit_edge453
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.yn = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.yn, ptr %13, align 8, !tbaa !21
  %i.yo = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  store i32 0, ptr %i.yo, align 8, !tbaa !50
  %i.yp = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  store i32 8, ptr %i.yp, align 4, !tbaa !51
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 34744 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 34768
  %.val272.i = load ptr, ptr %i.yr, align 8, !tbaa !21 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %0, i64 34776
  %.val274.i = load i32, ptr %i.ys, align 8, !tbaa !50 ; 2 uses
  %i.yt = zext i32 %.val274.i to i64
  %.idx.i198 = shl nuw nsw i64 %i.yt, 3
  %i.yu = getelementptr inbounds nuw i8, ptr %.val272.i, i64 %.idx.i198
  %.not860.i = icmp eq i32 %.val274.i, 0
  br i1 %.not860.i, label %._crit_edge.i204, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %._crit_edge471
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.yw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.yy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 34752
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 34764
  br label %bb.eu

._crit_edge.loopexit.i:                           ; preds = %_ZNK12_GLOBAL__N_113RegUseTracker16getUsedByIndicesEPKN4llvm4SCEVE.exit.i
  %.pre.i203 = load ptr, ptr %13, align 8, !tbaa !21
  %.pre934.i = load i32, ptr %i.yo, align 8, !tbaa !50
  br label %._crit_edge.i204

._crit_edge.i204:                                 ; preds = %._crit_edge.loopexit.i, %._crit_edge471
  %i.zb = phi i32 [ %.pre934.i, %._crit_edge.loopexit.i ], [ 0, %._crit_edge471 ] ; 2 uses
  %i.zc = phi ptr [ %.pre.i203, %._crit_edge.loopexit.i ], [ %i.yn, %._crit_edge471 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.zd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.zd, ptr %15, align 8, !tbaa !21
  %i.ze = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  store i32 0, ptr %i.ze, align 8, !tbaa !50
  %i.zf = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i32 32, ptr %i.zf, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.zg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store ptr %i.zg, ptr %16, align 8, !tbaa !21
  %i.zh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i32 0, ptr %i.zh, align 8, !tbaa !50
  %i.zi = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  store i32 32, ptr %i.zi, align 4, !tbaa !51
  %i.zj = getelementptr inbounds nuw i8, ptr %16, i64 792 ; 14 uses
  store i32 0, ptr %i.zj, align 8, !tbaa !213
  %i.zk = getelementptr inbounds nuw i8, ptr %16, i64 800 ; 7 uses
  store ptr null, ptr %i.zk, align 8, !tbaa !214
  %i.zl = getelementptr inbounds nuw i8, ptr %16, i64 808 ; 5 uses
  store ptr %i.zj, ptr %i.zl, align 8, !tbaa !215
  %i.zm = getelementptr inbounds nuw i8, ptr %16, i64 816 ; 3 uses
  store ptr %i.zj, ptr %i.zm, align 8, !tbaa !216
  %i.zn = getelementptr inbounds nuw i8, ptr %16, i64 824 ; 9 uses
  store i64 0, ptr %i.zn, align 8, !tbaa !217
  %i.zo = zext i32 %i.zb to i64
  %.idx901.i = shl nuw nsw i64 %i.zo, 3
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zc, i64 %.idx901.i
  %.not201870.i = icmp eq i32 %i.zb, 0
  br i1 %.not201870.i, label %._crit_edge874.i, label %.lr.ph873.i

.lr.ph873.i:                                      ; preds = %._crit_edge.i204
  %i.zq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.zr = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 34752
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 34764
  %i.zu = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.zy = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.zz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %.sroa.4684.sroa.4.4..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.2.0..sroa_idx.i366.i = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.aab = getelementptr inbounds nuw i8, ptr %19, i64 24
  br label %bb.go

bb.eu:                                            ; preds = %_ZNK12_GLOBAL__N_113RegUseTracker16getUsedByIndicesEPKN4llvm4SCEVE.exit.i, %.lr.ph.i199
  %.0184861.i = phi ptr [ %.val272.i, %.lr.ph.i199 ], [ %i.aio, %_ZNK12_GLOBAL__N_113RegUseTracker16getUsedByIndicesEPKN4llvm4SCEVE.exit.i ] ; 2 uses
  %i.aac = load ptr, ptr %.0184861.i, align 8, !tbaa !456 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.aad = ptrtoint ptr %i.aac to i64             ; 2 uses
  %i.aae = and i64 %i.aad, -7
  store i64 %i.aae, ptr %14, align 8
  %i.aaf = load ptr, ptr %i.yv, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.aag = call fastcc { i64, i8 } @_ZL16ExtractImmediateRN4llvm8SCEVUseTIPKNS_4SCEVEEERNS_15ScalarEvolutionEb(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(1152) %i.aaf, i1 noundef zeroext false)
  %.fr.i = freeze { i64, i8 } %i.aag              ; 2 uses
  %.fca.0.extract170.i = extractvalue { i64, i8 } %.fr.i, 0 ; 21 uses
  %.fca.1.extract171.i = extractvalue { i64, i8 } %.fr.i, 1 ; 7 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %14, align 8
  %i.aah = and i64 %.0.copyload.i.i.i.i.i, -8     ; 2 uses
  %i.aai = inttoptr i64 %i.aah to ptr             ; 3 uses
  %i.aaj = load ptr, ptr %11, align 8, !tbaa !819, !noalias !822 ; 3 uses
  %i.aak = load ptr, ptr %i.yw, align 8, !tbaa !831, !noalias !822 ; 3 uses
  %i.aal = load i32, ptr %i.yx, align 4, !tbaa !832, !noalias !822 ; 4 uses
  %i.aam = icmp eq i32 %i.aal, 0
  br i1 %i.aam, label %.loopexit.i.i.i.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.aan = add i32 %i.aal, -1                     ; 2 uses
  %i.aao = mul i64 %i.aah, -4658895280553007687   ; 2 uses
  %i.aap = lshr i64 %i.aao, 31
  %i.aaq = xor i64 %i.aap, %i.aao
  %i.aar = trunc i64 %i.aaq to i32
  %i.aas = and i32 %i.aan, %i.aar                 ; 3 uses
  %i.aat = zext i32 %i.aas to i64                 ; 2 uses
  %i.aau = getelementptr inbounds nuw [56 x i8], ptr %i.aaj, i64 %i.aat ; 2 uses
  %i.aav = lshr i64 %i.aat, 5
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.aav
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !478, !noalias !833
  %i.aay = and i32 %i.aas, 31
  %i.aaz = lshr i32 %i.aax, %i.aay
  %i.aba = trunc i32 %i.aaz to i1
  br i1 %i.aba, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !625

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ev, %bb.ew
  %i.abb = phi ptr [ %i.abh, %bb.ew ], [ %i.aau, %bb.ev ] ; 2 uses
  %.05.i.i.i.i.i = phi i32 [ %i.abf, %bb.ew ], [ %i.aas, %bb.ev ]
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !456, !noalias !833
  %i.abd = icmp eq ptr %i.abc, %i.aai
  br i1 %i.abd, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE9push_backES3_.exit.i, label %bb.ew, !prof !166

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.abe = add nuw i32 %.05.i.i.i.i.i, 1
  %i.abf = and i32 %i.abe, %i.aan                 ; 3 uses
  %i.abg = zext i32 %i.abf to i64                 ; 2 uses
  %i.abh = getelementptr inbounds nuw [56 x i8], ptr %i.aaj, i64 %i.abg ; 2 uses
  %i.abi = lshr i64 %i.abg, 5
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %i.abi
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !478, !noalias !833
  %i.abl = and i32 %i.abf, 31
  %i.abm = lshr i32 %i.abk, %i.abl
  %i.abn = trunc i32 %i.abm to i1
  br i1 %i.abn, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !626, !llvm.loop !834

.loopexit.i.i.i.i:                                ; preds = %bb.ew, %bb.ev, %bb.eu
  %.lcssa9.sink.i.ph.i.i.i.i = phi ptr [ %i.aau, %bb.ev ], [ null, %bb.eu ], [ %i.abh, %bb.ew ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !833
  store ptr %.lcssa9.sink.i.ph.i.i.i.i, ptr %i.a, align 8, !tbaa !835, !noalias !833
  %.val6.i.i.i.i.i = load i32, ptr %i.yy, align 8, !tbaa !836, !noalias !833 ; 2 uses
  %i.abo = shl i32 %.val6.i.i.i.i.i, 2
  %i.abp = add i32 %i.abo, 4
  %i.abq = mul i32 %i.aal, 3
  %.not.i.i.i.i.i200 = icmp ult i32 %i.abp, %i.abq
  br i1 %.not.i.i.i.i.i200, label %bb.ey, label %bb.ex, !prof !166

bb.ex:                                            ; preds = %.loopexit.i.i.i.i
  %i.abr = shl i32 %i.aal, 1
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %11, i32 noundef %i.abr), !noalias !833
  call fastcc void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4SCEVESt3mapIN12_GLOBAL__N_19ImmediateES4_NS6_23KeyOrderTargetImmediateESaISt4pairIKS7_S4_EEENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SD_EEEES4_SD_SF_SI_E15LookupBucketForIS4_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr %i.aai, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !835, !noalias !833
  %.val4.i.pre.i.i.i.i = load ptr, ptr %i.yw, align 8, !tbaa !831, !noalias !833
  %.val7.i.pre.i.i.i.i = load ptr, ptr %11, align 8, !tbaa !819, !noalias !833
  %.val.i.i.i.i.i.pre.i = load i32, ptr %i.yy, align 8, !tbaa !836, !noalias !833
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.loopexit.i.i.i.i
  %.val.i.i.i.i.i.i = phi i32 [ %.val.i.i.i.i.i.pre.i, %bb.ex ], [ %.val6.i.i.i.i.i, %.loopexit.i.i.i.i ]
  %.val7.i.i.i.i.i = phi ptr [ %.val7.i.pre.i.i.i.i, %bb.ex ], [ %i.aaj, %.loopexit.i.i.i.i ]
  %.val4.i.i.i.i.i = phi ptr [ %.val4.i.pre.i.i.i.i, %bb.ex ], [ %i.aak, %.loopexit.i.i.i.i ]
  %i.abs = phi ptr [ %.pre.i.i.i.i.i, %bb.ex ], [ %.lcssa9.sink.i.ph.i.i.i.i, %.loopexit.i.i.i.i ] ; 9 uses
  %i.abt = ptrtoint ptr %i.abs to i64
  %i.abu = ptrtoint ptr %.val7.i.i.i.i.i to i64
  %i.abv = sub i64 %i.abt, %i.abu
  %i.abw = sdiv exact i64 %i.abv, 56              ; 2 uses
  %i.abx = trunc i64 %i.abw to i32
  %i.aby = and i32 %i.abx, 31
  %i.abz = shl nuw i32 1, %i.aby
  %i.aca = lshr i64 %i.abw, 5
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %.val4.i.i.i.i.i, i64 %i.aca ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111LSRInstance24GenerateAllReuseFormulaeEv:bb.a
  %i.bkg = load i64, ptr %i.alc, align 8, !tbaa !705
  %i.bkh = mul i64 %i.bkg, %.sroa.0682.0.copyload.i
  %i.bki = trunc nuw i8 %.val249.i to i1
  %i.bkj = add i64 %i.bkh, %.val248.i             ; 8 uses
  %i.bkk = select i1 %i.bki, i8 1, i8 %.sroa.10.0.copyload.i207 ; 5 uses
  %i.bkl = load ptr, ptr %i.akt, align 8, !tbaa !577, !nonnull !19, !align !34 ; 3 uses
  %i.bkm = sub i64 0, %i.bkj
  %i.bkn = call noundef ptr @_ZN4llvm15ScalarEvolution11getConstantEPNS_4TypeEmb(ptr noundef nonnull align 8 dereferenceable(1152) %i.bkl, ptr noundef %i.bhx, i64 noundef %i.bkm, i1 noundef zeroext false) #23 ; 3 uses
  %i.bko = trunc nuw i8 %i.bkk to i1
  br i1 %i.bko, label %bb.kk, label %_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit407.i

bb.kk:                                            ; preds = %bb.kj
  %i.bkp = call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bkn) #23
  %i.bkq = call noundef ptr @_ZN4llvm15ScalarEvolution9getVScaleEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(1152) %i.bkl, ptr noundef %i.bkp) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.amc, ptr %9, align 8, !tbaa !21
  store i32 2, ptr %i.ame, align 4, !tbaa !51
  %i.bkr = insertelement <2 x ptr> poison, ptr %i.bkn, i64 0
  %i.bks = insertelement <2 x ptr> %i.bkr, ptr %i.bkq, i64 1
  %i.bkt = ptrtoint <2 x ptr> %i.bks to <2 x i64>
  %i.bku = and <2 x i64> %i.bkt, splat (i64 -7)
  store <2 x i64> %i.bku, ptr %i.amc, align 8
  store i32 2, ptr %i.amd, align 8, !tbaa !50
  %i.bkv = call noundef ptr @_ZN4llvm15ScalarEvolution10getMulExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.bkl, ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 0, i32 noundef 0) #23
  %i.bkw = load ptr, ptr %9, align 8, !tbaa !21   ; 2 uses
  %i.bkx = icmp eq ptr %i.bkw, %i.amc
  br i1 %i.bkx, label %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i406.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  call void @free(ptr noundef %i.bkw) #23
  br label %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i406.i

_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i406.i: ; preds = %bb.kl, %bb.kk
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit407.i

_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit407.i: ; preds = %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i406.i, %bb.kj
  %.0.i404.i = phi ptr [ %i.bkv, %_ZN4llvm15ScalarEvolution10getMulExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i406.i ], [ %i.bkn, %bb.kj ] ; 8 uses
  %i.bky = load ptr, ptr %i.alb, align 8, !tbaa !714
  %i.bkz = icmp eq ptr %.0.i404.i, %i.bky
  br i1 %i.bkz, label %.critedge216.i, label %bb.km

bb.km:                                            ; preds = %_ZNK12_GLOBAL__N_19Immediate15getNegativeSCEVERN4llvm15ScalarEvolutionEPNS1_4TypeE.exit407.i
  %i.bla = load ptr, ptr %i.akx, align 8, !tbaa !21 ; 5 uses
  %i.blb = load i32, ptr %i.akz, align 8, !tbaa !50 ; 6 uses
  %i.blc = zext i32 %i.blb to i64                 ; 3 uses
  %.idx4.i.i.i = shl nuw nsw i64 %i.blc, 3        ; 3 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bla, i64 %.idx4.i.i.i
  %i.ble = lshr i64 %i.blc, 2                     ; 2 uses
  %.not.i.i408.i = icmp eq i64 %i.ble, 0
  br i1 %.not.i.i408.i, label %._crit_edge.i.i.i.i.i410.i, label %.lr.ph.i.i.i.i.i409.i

.lr.ph.i.i.i.i.i409.i:                            ; preds = %bb.km
  %i.blf = and i64 %.idx4.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.bla, i64 %i.blf
  br label %bb.kn

bb.kn:                                            ; preds = %bb.kr, %.lr.ph.i.i.i.i.i409.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.ble, %.lr.ph.i.i.i.i.i409.i ], [ %i.bls, %bb.kr ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.bla, %.lr.ph.i.i.i.i.i409.i ], [ %i.blr, %bb.kr ] ; 9 uses
  %i.blg = load ptr, ptr %.02946.i.i.i.i.i.i, align 8, !tbaa !456
  %i.blh = icmp eq ptr %i.blg, %.0.i404.i
  br i1 %i.blh, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.bli = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  %i.blj = load ptr, ptr %i.bli, align 8, !tbaa !456
  %i.blk = icmp eq ptr %i.blj, %.0.i404.i
  br i1 %i.blk, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit803, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.bll = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  %i.blm = load ptr, ptr %i.bll, align 8, !tbaa !456
  %i.bln = icmp eq ptr %i.blm, %.0.i404.i
  br i1 %i.bln, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit801, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.blo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  %i.blp = load ptr, ptr %i.blo, align 8, !tbaa !456
  %i.blq = icmp eq ptr %i.blp, %.0.i404.i
  br i1 %i.blq, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.blr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 32
  %i.bls = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.blt = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.blt, label %bb.kn, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !924

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.kr
  %i.blu = and i32 %i.blb, 3
  br label %._crit_edge.i.i.i.i.i410.i

._crit_edge.i.i.i.i.i410.i:                       ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.km
  %.pre-phi56.i.i.i.i.i.i = phi i32 [ %i.blu, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.blb, %bb.km ]
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.bla, %bb.km ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i.i.i, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.thread789.i [
    i32 3, label %bb.ks
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i
  ]

bb.ks:                                            ; preds = %._crit_edge.i.i.i.i.i410.i
  %i.blv = load ptr, ptr %.029.lcssa.i.i.i.i.i.i, align 8, !tbaa !456
  %i.blw = icmp eq ptr %i.blv, %.0.i404.i
  br i1 %i.blw, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.blx = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i:               ; preds = %bb.kt, %._crit_edge.i.i.i.i.i410.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.blx, %bb.kt ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i410.i ] ; 3 uses
  %i.bly = load ptr, ptr %.1.i.i.i.i.i.i, align 8, !tbaa !456
  %i.blz = icmp eq ptr %i.bly, %.0.i404.i
  br i1 %i.blz, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i, label %bb.ku

bb.ku:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i
  %i.bma = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i:             ; preds = %bb.ku, %._crit_edge.i.i.i.i.i410.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.bma, %bb.ku ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i410.i ] ; 2 uses
  %i.bmb = load ptr, ptr %.2.i.i.i.i.i.i, align 8, !tbaa !456
  %i.bmc = icmp eq ptr %i.bmb, %.0.i404.i
  br i1 %i.bmc, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.thread789.i

_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit: ; preds = %bb.kq
  %i.bmd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 24
  br label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i

_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit801: ; preds = %bb.kp
  %i.bme = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 16
  br label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i

_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit803: ; preds = %bb.ko
  %i.bmf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 8
  br label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i

_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i: ; preds = %bb.kn, %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit, %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit801, %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit803, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i, %bb.ks
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i, %bb.ks ], [ %.2.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i ], [ %i.bmf, %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit803 ], [ %i.bmd, %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit ], [ %i.bme, %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i.loopexit.split.loop.exit801 ], [ %.02946.i.i.i.i.i.i, %bb.kn ]
  %.not831.i = icmp eq ptr %.028.i.i.i.i.i.i, %i.bld
  br i1 %.not831.i, label %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.thread789.i, label %.critedge216.i

_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.thread789.i: ; preds = %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.i, %._crit_edge._crit_edge52.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i410.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %21, ptr noundef nonnull readonly align 8 dereferenceable(112) %20, i64 40, i1 false)
  store ptr %i.amg, ptr %i.amf, align 8, !tbaa !21
  store i32 0, ptr %i.amh, align 8, !tbaa !50
  store i32 4, ptr %i.ami, align 4, !tbaa !51
  %.not.i.i.i411.i = icmp eq i32 %i.blb, 0
  br i1 %.not.i.i.i411.i, label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit421.i, label %bb.kv

bb.kv:                                            ; preds = %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.thread789.i
  %i.bmg = icmp ugt i32 %i.blb, 4
  br i1 %i.bmg, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i416.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i413.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i416.i: ; preds = %bb.kv
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.amf, ptr noundef nonnull %i.amg, i64 noundef %i.blc, i64 noundef 8) #23
  %.pre.i.i417.i = load i32, ptr %i.akz, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i418.i = icmp eq i32 %.pre.i.i417.i, 0
  br i1 %.not.i.i.i.i418.i, label %.sink.split.i.i.i415.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i419.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i419.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i416.i
  %.pre.i420.i = load ptr, ptr %i.amf, align 8, !tbaa !21
  %.pre950.i = load ptr, ptr %i.akx, align 8, !tbaa !21
  %.pre952.i = zext i32 %.pre.i.i417.i to i64
  %.pre953.i = shl nuw nsw i64 %.pre952.i, 3
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i413.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i413.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i419.i, %bb.kv
  %gepdiff.i.i.i414.pre-phi.i = phi i64 [ %.pre953.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i419.i ], [ %.idx4.i.i.i, %bb.kv ]
  %i.bmh = phi ptr [ %.pre950.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i419.i ], [ %i.bla, %bb.kv ]
  %i.bmi = phi ptr [ %.pre.i420.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i419.i ], [ %i.amg, %bb.kv ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bmi, ptr align 8 %i.bmh, i64 %gepdiff.i.i.i414.pre-phi.i, i1 false)
  br label %.sink.split.i.i.i415.i

.sink.split.i.i.i415.i:                           ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i413.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i416.i
  store i32 %i.blb, ptr %i.amh, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit421.i

_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit421.i:      ; preds = %.sink.split.i.i.i415.i, %_ZNK12_GLOBAL__N_17Formula13referencesRegEPKN4llvm4SCEVE.exit.thread789.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.amj, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.alb, i64 17, i1 false)
  store i64 %i.bkj, ptr %i.amk, align 8
  store i8 %i.bkk, ptr %.sroa.6681.0..sroa_idx.i, align 8
  %i.bmj = load ptr, ptr %i.alm, align 8, !tbaa !580, !nonnull !19, !align !34 ; 5 uses
  %.sroa.052.0.copyload.i = load i64, ptr %i.bit, align 8 ; 3 uses
  %.sroa.253.0.copyload.i = load i8, ptr %.sroa.226.0..sroa_idx.i, align 8 ; 4 uses
  %.sroa.049.0.copyload.i = load i64, ptr %i.biu, align 8 ; 3 uses
  %.sroa.250.0.copyload.i = load i8, ptr %.sroa.223.0..sroa_idx.i, align 8 ; 4 uses
  %i.bmk = load i32, ptr %i.biv, align 8, !tbaa !812 ; 2 uses
  %.sroa.0753.0.copyload.i = load ptr, ptr %i.biw, align 8, !tbaa !603 ; 3 uses
  %.sroa.2.0.copyload.i214 = load i32, ptr %.sroa.2759.0..sroa_idx.i, align 8, !tbaa !478 ; 3 uses
  %i.bml = load ptr, ptr %21, align 8, !tbaa !807 ; 6 uses
  %i.bmm = load i8, ptr %i.aml, align 8, !tbaa !700, !range !18, !noundef !19
  %i.bmn = trunc nuw i8 %i.bmm to i1              ; 3 uses
  %i.bmo = load i64, ptr %i.amm, align 8, !tbaa !705 ; 10 uses
  %.not27.i.i = icmp eq i64 %i.bkj, 0
  br i1 %.not27.i.i, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit421.i
  %56 = icmp ne i8 %i.bkk, %.sroa.253.0.copyload.i
  %57 = icmp ne i8 %i.bkk, %.sroa.250.0.copyload.i
  %or.cond.i613.i = select i1 %56, i1 true, i1 %57
  br i1 %or.cond.i613.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i, label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit421.i
  %i.bmp = add i64 %.sroa.052.0.copyload.i, %i.bkj ; 9 uses
  %i.bmq = icmp sgt i64 %i.bmp, %i.bkj
  %i.bmr = icmp slt i64 %.sroa.052.0.copyload.i, 1
  %.not.i614.i = xor i1 %i.bmr, %i.bmq
  br i1 %.not.i614.i, label %bb.ky, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

bb.ky:                                            ; preds = %bb.kx
  %i.bms = add i64 %.sroa.049.0.copyload.i, %i.bkj ; 9 uses
  %i.bmt = icmp sgt i64 %i.bms, %i.bkj
  %i.bmu = icmp slt i64 %.sroa.049.0.copyload.i, 1
  %.not35.i.i220 = xor i1 %i.bmu, %i.bmt
  br i1 %.not35.i.i220, label %bb.kz, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

bb.kz:                                            ; preds = %bb.ky
  switch i32 %i.bmk, label %bb.lf [
    i32 2, label %.split.i619.i
    i32 3, label %bb.la
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i.i
    i32 1, label %.split22.i.i
  ]

.split.i619.i:                                    ; preds = %bb.kz
  %i.bmv = trunc nuw i8 %.sroa.253.0.copyload.i to i1 ; 2 uses
  %spec.select.i.i620.i = select i1 %i.bmv, i64 0, i64 %i.bmp
  %spec.select2.i.i.i = select i1 %i.bmv, i64 %i.bmp, i64 0
  %i.bmw = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bmj, ptr noundef %.sroa.0753.0.copyload.i, ptr noundef %i.bml, i64 noundef %spec.select.i.i620.i, i1 noundef zeroext %i.bmn, i64 noundef %i.bmo, i32 noundef %.sroa.2.0.copyload.i214, ptr noundef null, i64 noundef %spec.select2.i.i.i) #23
  br i1 %i.bmw, label %.split.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

bb.la:                                            ; preds = %bb.kz
  %.not30.i.i.i = icmp eq ptr %i.bml, null
  br i1 %.not30.i.i.i, label %bb.lb, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

bb.lb:                                            ; preds = %bb.la
  %i.bmx = icmp ne i64 %i.bmo, 0
  %or.cond.i.i618.i = and i1 %i.bmx, %i.bmn
  br i1 %or.cond.i.i618.i, label %.split23.i.i, label %bb.lc

.split23.i.i:                                     ; preds = %bb.lb
  %or.cond3.i.i.i = icmp eq i64 %i.bmo, -1
  %i.bmy = or i64 %i.bms, %i.bmp
  %i.bmz = icmp eq i64 %i.bmy, 0
  %spec.select31.i.i = and i1 %i.bmz, %or.cond3.i.i.i
  br i1 %spec.select31.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

bb.lc:                                            ; preds = %bb.lb
  %.old.i.i.i = add i64 %i.bmo, -1
  %or.cond3.old.i.i.i = icmp ult i64 %.old.i.i.i, -2
  br i1 %or.cond3.old.i.i.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %.not7.i.i.i = icmp eq i64 %i.bmp, 0
  br i1 %.not7.i.i.i, label %bb.lg, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.bna = trunc nuw i8 %.sroa.253.0.copyload.i to i1
  br i1 %i.bna, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i, label %.split21.i.i

.split21.i.i:                                     ; preds = %bb.le
  %i.bnb = icmp eq i64 %i.bmo, 0
  %i.bnc = sub i64 0, %i.bmp
  %spec.select4.i.i.i = select i1 %i.bnb, i64 %i.bnc, i64 %i.bmp
  %i.bnd = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bmj, i64 noundef %spec.select4.i.i.i) #23
  br i1 %i.bnd, label %bb.lg, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i

.split22.i.i:                                     ; preds = %bb.kz
  %.not.i.i616.i = icmp eq ptr %i.bml, null
  %i.bne = add i64 %i.bmo, 1
  %or.cond7.i.i.i221 = icmp ult i64 %i.bne, 2
  %or.cond31.i.i.i222 = and i1 %.not.i.i616.i, %or.cond7.i.i.i221
  %i.bnf = or i64 %i.bms, %i.bmp
  %i.bng = icmp eq i64 %i.bnf, 0
  %spec.select.i617.i = and i1 %i.bng, %or.cond31.i.i.i222
  br i1 %spec.select.i617.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

bb.lf:                                            ; preds = %bb.kz
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i.i: ; preds = %bb.kz
  %i.bnh = icmp eq ptr %i.bml, null
  %i.bni = or i64 %i.bms, %i.bmp
  %i.bnj = or i64 %i.bni, %i.bmo
  %i.bnk = icmp eq i64 %i.bnj, 0
  %spec.select28.i.i = and i1 %i.bnh, %i.bnk
  br i1 %spec.select28.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

.split.i:                                         ; preds = %.split.i619.i
  %i.bnl = trunc nuw i8 %.sroa.250.0.copyload.i to i1 ; 2 uses
  %spec.select.i66.i.i = select i1 %i.bnl, i64 0, i64 %i.bms
  %spec.select2.i67.i.i = select i1 %i.bnl, i64 %i.bms, i64 0
  %i.bnm = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bmj, ptr noundef %.sroa.0753.0.copyload.i, ptr noundef %i.bml, i64 noundef %spec.select.i66.i.i, i1 noundef zeroext %i.bmn, i64 noundef %i.bmo, i32 noundef %.sroa.2.0.copyload.i214, ptr noundef null, i64 noundef %spec.select2.i67.i.i) #23
  br i1 %i.bnm, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i

bb.lg:                                            ; preds = %.split21.i.i, %bb.ld
  %.not7.i62.i.i = icmp eq i64 %i.bms, 0
  br i1 %.not7.i62.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.bnn = trunc nuw i8 %.sroa.250.0.copyload.i to i1
  br i1 %i.bnn, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.i: ; preds = %bb.lh
  %i.bno = icmp eq i64 %i.bmo, 0
  %i.bnp = sub i64 0, %i.bms
  %spec.select4.i63.i.i = select i1 %i.bno, i64 %i.bnp, i64 %i.bms
  %i.bnq = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bmj, i64 noundef %spec.select4.i63.i.i) #23
  br i1 %i.bnq, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i: ; preds = %.split.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i.i, %.split22.i.i, %bb.lc, %.split23.i.i, %bb.la, %.split.i619.i, %bb.ky, %bb.kx, %bb.kw
  %i.bnr = icmp eq i64 %i.bmo, 1
  br i1 %i.bnr, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i216, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i216: ; preds = %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i
  %i.bns = call fastcc noundef zeroext i1 @_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bmj, i64 %.sroa.052.0.copyload.i, i8 %.sroa.253.0.copyload.i, i64 %.sroa.049.0.copyload.i, i8 %.sroa.250.0.copyload.i, i32 noundef %i.bmk, ptr %.sroa.0753.0.copyload.i, i32 %.sroa.2.0.copyload.i214, ptr noundef %i.bml, i64 %i.bkj, i8 %i.bkk, i1 noundef zeroext true, i64 noundef 0)
  br i1 %i.bns, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217: ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i216, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.i, %bb.lg, %.split.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i.i, %.split22.i.i, %.split23.i.i
  %i.bnt = load ptr, ptr %i.akt, align 8, !tbaa !577, !nonnull !19, !align !34
  %i.bnu = load ptr, ptr %i.amj, align 8, !tbaa !714
  %i.bnv = ptrtoint ptr %i.bnu to i64
  %i.bnw = and i64 %i.bnv, -7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.amn, ptr %8, align 8, !tbaa !21
  store i32 2, ptr %i.amp, align 4, !tbaa !51
  store i64 %i.bjg, ptr %i.amn, align 8
  store i64 %i.bnw, ptr %.sroa.4.0..sroa_idx.i.i206, align 8
  store i32 2, ptr %i.amo, align 8, !tbaa !50
  %i.bnx = call noundef ptr @_ZN4llvm15ScalarEvolution10getAddExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.bnt, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0, i32 noundef 0) #23 ; 4 uses
  %i.bny = load ptr, ptr %8, align 8, !tbaa !21   ; 2 uses
  %i.bnz = icmp eq ptr %i.bny, %i.amn
  br i1 %i.bnz, label %_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i, label %bb.li

bb.li:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217
  call void @free(ptr noundef %i.bny) #23
  br label %_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i

_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i: ; preds = %bb.li, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  store ptr %i.bnx, ptr %i.amj, align 8, !tbaa !714
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnx, i64 24
  %i.bob = load i16, ptr %i.boa, align 8, !tbaa !438
  %i.boc = icmp ne i16 %i.bob, 0
  %.not208832.i = icmp eq ptr %i.bnx, null
  %.not208.i = or i1 %.not208832.i, %i.boc
  br i1 %.not208.i, label %.critedge221.i, label %bb.lj

bb.lj:                                            ; preds = %_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i
  %.val223.i = load i64, ptr %i.amk, align 8, !tbaa !805 ; 2 uses
  %i.bod = icmp ne i64 %.val223.i, 0
  %.val225.i = load i8, ptr %.sroa.6681.0..sroa_idx.i, align 8, !range !18
  %i.boe = trunc nuw i8 %.val225.i to i1
  %or.cond825.i = select i1 %i.bod, i1 %i.boe, i1 false
  br i1 %or.cond825.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bnx, i64 40
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !450 ; 2 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 24 ; 3 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bog, i64 32
  %i.boj = load i32, ptr %i.boi, align 8, !tbaa !453 ; 2 uses
  %i.bok = add i32 %i.boj, -1                     ; 2 uses
  %i.bol = and i32 %i.bok, 63
  %i.bom = zext nneg i32 %i.bol to i64
  %i.bon = shl nuw i64 1, %i.bom
  %i.boo = icmp ult i32 %i.boj, 65
  %i.bop = load ptr, ptr %i.boh, align 8
  %i.boq = lshr i32 %i.bok, 6
  %i.bor = zext nneg i32 %i.boq to i64
  %i.bos = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %i.bor
  %.in.i.i.i.i.i = select i1 %i.boo, ptr %i.boh, ptr %i.bos
  %i.bot = load i64, ptr %.in.i.i.i.i.i, align 8, !tbaa !414
  %i.bou = and i64 %i.bon, %i.bot
  %i.bov = icmp ne i64 %i.bou, 0
  %i.bow = icmp slt i64 %.val223.i, 0
  %i.box = xor i1 %i.bow, %i.bov
  br i1 %i.box, label %bb.ll, label %.critedge221.i

bb.ll:                                            ; preds = %bb.lk
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @_ZNK4llvm5APInt3absEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %23, ptr noundef nonnull align 8 dereferenceable(12) %i.boh)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  %i.boy = load i64, ptr %i.alc, align 8, !tbaa !705 ; 2 uses
  store i32 %i.bin, ptr %i.amq, align 8, !tbaa !453
  br i1 %i.bje, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.ll
  store i64 %i.boy, ptr %24, align 8, !tbaa !414
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

bb.ln:                                            ; preds = %bb.ll
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %24, i64 noundef %i.boy, i1 noundef zeroext false) #23
  br label %_ZN4llvm5APIntC2Ejmbb.exit.i

_ZN4llvm5APIntC2Ejmbb.exit.i:                     ; preds = %bb.ln, %bb.lm
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %22, ptr noundef nonnull align 8 dereferenceable(12) %23, ptr noundef nonnull align 8 dereferenceable(12) %24) #23
  %.val234.i = load i64, ptr %i.amk, align 8, !tbaa !805
  %i.boz = call noundef i64 @llvm.abs.i64(i64 %.val234.i, i1 true) ; 2 uses
  %i.bpa = load i32, ptr %i.amr, align 8, !tbaa !453 ; 2 uses
  %i.bpb = icmp ult i32 %i.bpa, 65
  br i1 %i.bpb, label %.critedge.i219, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i:      ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %i.bpc = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %22) #26
  %i.bpd = sub i32 %i.bpa, %i.bpc
  %i.bpe = icmp ugt i32 %i.bpd, 64
  %.pr.i218 = load ptr, ptr %22, align 8          ; 3 uses
  br i1 %i.bpe, label %.critedge.thread.i, label %.critedge.thread.i.thread

.critedge.thread.i.thread:                        ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %.0.i.i.i1079.i = load i64, ptr %.pr.i218, align 8, !tbaa !414
  %i.bpf = icmp ule i64 %.0.i.i.i1079.i, %i.boz
  br label %bb.lo

.critedge.i219:                                   ; preds = %_ZN4llvm5APIntC2Ejmbb.exit.i
  %.0.i.i.i.i = load i64, ptr %22, align 8, !tbaa !414
  %i.bpg = icmp ule i64 %.0.i.i.i.i, %i.boz
  br label %_ZN4llvm5APIntD2Ev.exit.i

.critedge.thread.i:                               ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i.i
  %i.bph = icmp eq ptr %.pr.i218, null
  br i1 %i.bph, label %_ZN4llvm5APIntD2Ev.exit.i, label %bb.lo

bb.lo:                                            ; preds = %.critedge.thread.i.thread, %.critedge.thread.i
  %.ph1076.i369 = phi i1 [ %i.bpf, %.critedge.thread.i.thread ], [ false, %.critedge.thread.i ]
  call void @_ZdaPv(ptr noundef nonnull %.pr.i218) #25
  br label %_ZN4llvm5APIntD2Ev.exit.i

_ZN4llvm5APIntD2Ev.exit.i:                        ; preds = %bb.lo, %.critedge.thread.i, %.critedge.i219
  %.ph1075.i = phi i1 [ %i.bpg, %.critedge.i219 ], [ false, %.critedge.thread.i ], [ %.ph1076.i369, %bb.lo ]
  %i.bpi = load i32, ptr %i.amq, align 8, !tbaa !453
  %i.bpj = icmp ugt i32 %i.bpi, 64
  br i1 %i.bpj, label %bb.lp, label %_ZN4llvm5APIntD2Ev.exit424.i

bb.lp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit.i
  %i.bpk = load ptr, ptr %24, align 8, !tbaa !414 ; 2 uses
  %i.bpl = icmp eq ptr %i.bpk, null
  br i1 %i.bpl, label %_ZN4llvm5APIntD2Ev.exit424.i, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  call void @_ZdaPv(ptr noundef nonnull %i.bpk) #25
  br label %_ZN4llvm5APIntD2Ev.exit424.i

_ZN4llvm5APIntD2Ev.exit424.i:                     ; preds = %bb.lq, %bb.lp, %_ZN4llvm5APIntD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.bpm = load i32, ptr %i.ams, align 8, !tbaa !453
  %i.bpn = icmp ugt i32 %i.bpm, 64
  br i1 %i.bpn, label %bb.lr, label %.critedge214.i

bb.lr:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit424.i
  %i.bpo = load ptr, ptr %23, align 8, !tbaa !414 ; 2 uses
  %i.bpp = icmp eq ptr %i.bpo, null
  br i1 %i.bpp, label %.critedge214.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  call void @_ZdaPv(ptr noundef nonnull %i.bpo) #25
  br label %.critedge214.i

.critedge214.i:                                   ; preds = %bb.ls, %bb.lr, %_ZN4llvm5APIntD2Ev.exit424.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br i1 %.ph1075.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i, label %.critedge221.i

.critedge221.i:                                   ; preds = %.critedge214.i, %bb.lk, %_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit.i
  %i.bpq = load ptr, ptr %i.alq, align 8, !tbaa !560
  call fastcc void @_ZN12_GLOBAL__N_17Formula12canonicalizeERKN4llvm4LoopE(ptr noundef nonnull align 8 dereferenceable(112) %21, ptr noundef nonnull align 8 dereferenceable(144) %i.bpq)
  %i.bpr = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance13InsertFormulaERNS_6LSRUseEjRKNS_7FormulaE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %i.bhr, i32 noundef %i.bjd, ptr noundef nonnull align 8 dereferenceable(112) %21) ; 0 uses
  br label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i: ; preds = %.critedge221.i, %.critedge214.i, %bb.lj, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i216, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.thread.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit.i, %bb.lh, %.split21.i.i, %bb.le
  %i.bps = load ptr, ptr %i.amf, align 8, !tbaa !21 ; 2 uses
  %i.bpt = icmp eq ptr %i.bps, %i.amg
  br i1 %i.bpt, label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i215, label %bb.lt

bb.lt:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i
  call void @free(ptr noundef %i.bps) #23
  br label %_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i215

_ZN12_GLOBAL__N_17FormulaD2Ev.exit.i215:          ; preds = %bb.lt, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread795.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.critedge216.i

bb.lu:                                            ; preds = %_ZN12_GLOBAL__N_17Formula7unscaleEv.exit.i212
  %i.bpu = load i32, ptr %i.akz, align 8, !tbaa !50 ; 2 uses
  %i.bpv = zext i32 %i.bpu to i64
  %.not204879.i = icmp eq i32 %i.bpu, 0
  br i1 %.not204879.i, label %.critedge216.i, label %.lr.ph883.i

.lr.ph883.i:                                      ; preds = %bb.lu, %.thread821.i
  %.0187880.i = phi i64 [ %i.bzx, %.thread821.i ], [ 0, %bb.lu ] ; 3 uses
  %i.bpw = load ptr, ptr %i.akx, align 8, !tbaa !21 ; 2 uses
  %i.bpx = getelementptr inbounds nuw [8 x i8], ptr %i.bpw, i64 %.0187880.i
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !456
  %.not205.i = icmp eq ptr %i.bpy, %i.bhu
  br i1 %.not205.i, label %bb.lv, label %.thread821.i

bb.lv:                                            ; preds = %.lr.ph883.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef nonnull readonly align 8 dereferenceable(112) %20, i64 40, i1 false)
  store ptr %i.ale, ptr %i.ald, align 8, !tbaa !21
  store i32 0, ptr %i.alf, align 8, !tbaa !50
  store i32 4, ptr %i.alg, align 4, !tbaa !51
  %i.bpz = load i32, ptr %i.akz, align 8, !tbaa !50 ; 5 uses
  %.not.i.i.i426.i = icmp eq i32 %i.bpz, 0
  br i1 %.not.i.i.i426.i, label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit436.i, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.bqa = icmp ugt i32 %i.bpz, 4
  br i1 %i.bqa, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i431.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i428.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i431.i: ; preds = %bb.lw
  %i.bqb = zext i32 %i.bpz to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ald, ptr noundef nonnull %i.ale, i64 noundef %i.bqb, i64 noundef 8) #23
  %.pre.i.i432.i = load i32, ptr %i.akz, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i.i433.i = icmp eq i32 %.pre.i.i432.i, 0
  br i1 %.not.i.i.i.i433.i, label %.sink.split.i.i.i430.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i434.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i434.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i431.i
  %.pre.i435.i = load ptr, ptr %i.ald, align 8, !tbaa !21
  %.pre944.i = load ptr, ptr %i.akx, align 8, !tbaa !21
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i428.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i428.i: ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i434.i, %bb.lw
  %i.bqc = phi ptr [ %.pre944.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i434.i ], [ %i.bpw, %bb.lw ]
  %i.bqd = phi ptr [ %.pre.i435.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i434.i ], [ %i.ale, %bb.lw ]
  %i.bqe = phi i32 [ %.pre.i.i432.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i._ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i_crit_edge.i434.i ], [ %i.bpz, %bb.lw ]
  %i.bqf = zext i32 %i.bqe to i64
  %gepdiff.i.i.i429.i = shl nuw nsw i64 %i.bqf, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bqd, ptr align 8 %i.bqc, i64 %gepdiff.i.i.i429.i, i1 false)
  br label %.sink.split.i.i.i430.i

.sink.split.i.i.i430.i:                           ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.thread.i.i428.i, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i431.i
  store i32 %i.bpz, ptr %i.alf, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit436.i

_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit436.i:      ; preds = %.sink.split.i.i.i430.i, %bb.lv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.alh, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.alb, i64 17, i1 false)
  %.val244.i = load i64, ptr %i.ali, align 8, !tbaa !805 ; 2 uses
  %.val245.i = load i8, ptr %i.alj, align 8       ; 3 uses
  %i.bqg = icmp eq i64 %.val244.i, 0              ; 2 uses
  %or.cond.i437.i = select i1 %i.bqg, i1 true, i1 %i.bis
  %i.bqh = icmp eq i8 %.sroa.10.0.copyload.i207, %.val245.i
  %spec.select.i438.i = select i1 %or.cond.i437.i, i1 true, i1 %i.bqh
  br i1 %spec.select.i438.i, label %bb.lx, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.jt26.i

bb.lx:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaC2ERKS0_.exit436.i
  %.val240.i = load i64, ptr %i.alk, align 8, !tbaa !805
  %.val241.i = load i8, ptr %i.all, align 8       ; 2 uses
  %i.bqi = icmp eq i64 %.val240.i, 0              ; 2 uses
  %or.cond.i439.i = select i1 %i.bqi, i1 true, i1 %i.bis
  %i.bqj = icmp eq i8 %.sroa.10.0.copyload.i207, %.val241.i
  %spec.select.i440.i = select i1 %or.cond.i439.i, i1 true, i1 %i.bqj
  br i1 %spec.select.i440.i, label %bb.ly, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.jt26.i

bb.ly:                                            ; preds = %bb.lx
  %or.cond.i441.i = or i1 %i.bqg, %i.bqi
  %i.bqk = icmp eq i8 %.val241.i, %.val245.i
  %spec.select.i442.i = select i1 %or.cond.i441.i, i1 true, i1 %i.bqk
  br i1 %spec.select.i442.i, label %bb.lz, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.jt26.i

bb.lz:                                            ; preds = %bb.ly
  %i.bql = trunc nuw i8 %.val245.i to i1
  %i.bqm = add i64 %.val244.i, %.sroa.0682.0.copyload.i ; 10 uses
  %i.bqn = select i1 %i.bql, i8 1, i8 %.sroa.10.0.copyload.i207 ; 5 uses
  store i64 %i.bqm, ptr %i.ali, align 8
  store i8 %i.bqn, ptr %i.alj, align 8
  %i.bqo = load ptr, ptr %i.alm, align 8, !tbaa !580, !nonnull !19, !align !34 ; 8 uses
  %.sroa.025.0.copyload.i = load i64, ptr %i.bit, align 8 ; 4 uses
  %.sroa.226.0.copyload.i = load i8, ptr %.sroa.226.0..sroa_idx.i, align 8 ; 6 uses
  %.sroa.022.0.copyload.i = load i64, ptr %i.biu, align 8 ; 4 uses
  %.sroa.223.0.copyload.i = load i8, ptr %.sroa.223.0..sroa_idx.i, align 8 ; 6 uses
  %i.bqp = load i32, ptr %i.biv, align 8, !tbaa !812 ; 2 uses
  %.sroa.0758.0.copyload.i = load ptr, ptr %i.biw, align 8, !tbaa !603 ; 4 uses
  %.sroa.2759.0.copyload.i = load i32, ptr %.sroa.2759.0..sroa_idx.i, align 8, !tbaa !478 ; 4 uses
  %i.bqq = load ptr, ptr %25, align 8, !tbaa !807 ; 10 uses
  %i.bqr = load i8, ptr %i.aln, align 8, !tbaa !700, !range !18, !noundef !19
  %i.bqs = trunc nuw i8 %i.bqr to i1              ; 3 uses
  %i.bqt = load i64, ptr %i.alo, align 8, !tbaa !705 ; 11 uses
  %.not27.i644.i = icmp eq i64 %i.bqm, 0          ; 2 uses
  br i1 %.not27.i644.i, label %bb.mb, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %58 = icmp ne i8 %i.bqn, %.sroa.226.0.copyload.i
  %59 = icmp ne i8 %i.bqn, %.sroa.223.0.copyload.i
  %or.cond.i645.i = select i1 %58, i1 true, i1 %59
  br i1 %or.cond.i645.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i.a, label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %i.bqu = add i64 %.sroa.025.0.copyload.i, %i.bqm ; 10 uses
  %i.bqv = icmp sgt i64 %i.bqu, %i.bqm
  %i.bqw = icmp slt i64 %.sroa.025.0.copyload.i, 1
  %.not.i646.i = xor i1 %i.bqw, %i.bqv
  br i1 %.not.i646.i, label %bb.mc, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

bb.mc:                                            ; preds = %bb.mb
  %i.bqx = add i64 %.sroa.022.0.copyload.i, %i.bqm ; 9 uses
  %i.bqy = icmp sgt i64 %i.bqx, %i.bqm
  %i.bqz = icmp slt i64 %.sroa.022.0.copyload.i, 1
  %.not35.i648.i = xor i1 %i.bqz, %i.bqy
  br i1 %.not35.i648.i, label %bb.md, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

bb.md:                                            ; preds = %bb.mc
  switch i32 %i.bqp, label %bb.mj [
    i32 2, label %.split.i668.i
    i32 3, label %bb.me
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i654.i
    i32 1, label %.split22.i649.i
  ]

.split.i668.i:                                    ; preds = %bb.md
  %i.bra = trunc nuw i8 %.sroa.226.0.copyload.i to i1 ; 2 uses
  %spec.select.i.i669.i = select i1 %i.bra, i64 0, i64 %i.bqu
  %spec.select2.i.i670.i = select i1 %i.bra, i64 %i.bqu, i64 0
  %i.brb = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, ptr noundef %.sroa.0758.0.copyload.i, ptr noundef %i.bqq, i64 noundef %spec.select.i.i669.i, i1 noundef zeroext %i.bqs, i64 noundef %i.bqt, i32 noundef %.sroa.2759.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i.i670.i) #23
  br i1 %i.brb, label %.split799.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

bb.me:                                            ; preds = %bb.md
  %.not30.i.i656.i = icmp eq ptr %i.bqq, null
  br i1 %.not30.i.i656.i, label %bb.mf, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

bb.mf:                                            ; preds = %bb.me
  %i.brc = icmp ne i64 %i.bqt, 0
  %or.cond.i.i657.i = and i1 %i.brc, %i.bqs
  br i1 %or.cond.i.i657.i, label %.split23.i665.i, label %bb.mg

.split23.i665.i:                                  ; preds = %bb.mf
  %or.cond3.i.i666.i = icmp eq i64 %i.bqt, -1
  %i.brd = or i64 %i.bqx, %i.bqu
  %i.bre = icmp eq i64 %i.brd, 0
  %spec.select31.i667.i = and i1 %i.bre, %or.cond3.i.i666.i
  br i1 %spec.select31.i667.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

bb.mg:                                            ; preds = %bb.mf
  %.old.i.i658.i = add i64 %i.bqt, -1
  %or.cond3.old.i.i659.i = icmp ult i64 %.old.i.i658.i, -2
  br i1 %or.cond3.old.i.i659.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %.not7.i.i660.i = icmp eq i64 %i.bqu, 0
  br i1 %.not7.i.i660.i, label %bb.mk, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.brf = trunc nuw i8 %.sroa.226.0.copyload.i to i1
  br i1 %i.brf, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i, label %.split21.i661.i

.split21.i661.i:                                  ; preds = %bb.mi
  %i.brg = icmp eq i64 %i.bqt, 0
  %i.brh = sub i64 0, %i.bqu
  %spec.select4.i.i662.i = select i1 %i.brg, i64 %i.brh, i64 %i.bqu
  %i.bri = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, i64 noundef %spec.select4.i.i662.i) #23
  br i1 %i.bri, label %bb.mk, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

.split22.i649.i:                                  ; preds = %bb.md
  %.not.i.i650.i = icmp eq ptr %i.bqq, null
  %i.brj = add i64 %i.bqt, 1
  %or.cond7.i.i651.i = icmp ult i64 %i.brj, 2
  %or.cond31.i.i652.i = and i1 %.not.i.i650.i, %or.cond7.i.i651.i
  %i.brk = or i64 %i.bqx, %i.bqu
  %i.brl = icmp eq i64 %i.brk, 0
  %spec.select.i653.i = and i1 %i.brl, %or.cond31.i.i652.i
  br i1 %spec.select.i653.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

bb.mj:                                            ; preds = %bb.md
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i654.i: ; preds = %bb.md
  %i.brm = icmp eq ptr %i.bqq, null
  %i.brn = or i64 %i.bqx, %i.bqu
  %i.bro = or i64 %i.brn, %i.bqt
  %i.brp = icmp eq i64 %i.bro, 0
  %spec.select28.i655.i = and i1 %i.brm, %i.brp
  br i1 %spec.select28.i655.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

.split799.i:                                      ; preds = %.split.i668.i
  %i.brq = trunc nuw i8 %.sroa.223.0.copyload.i to i1 ; 2 uses
  %spec.select.i66.i671.i = select i1 %i.brq, i64 0, i64 %i.bqx
  %spec.select2.i67.i672.i = select i1 %i.brq, i64 %i.bqx, i64 0
  %i.brr = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, ptr noundef %.sroa.0758.0.copyload.i, ptr noundef %i.bqq, i64 noundef %spec.select.i66.i671.i, i1 noundef zeroext %i.bqs, i64 noundef %i.bqt, i32 noundef %.sroa.2759.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i67.i672.i) #23
  br i1 %i.brr, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i

bb.mk:                                            ; preds = %.split21.i661.i, %bb.mh
  %.not7.i62.i663.i = icmp eq i64 %i.bqx, 0
  br i1 %.not7.i62.i663.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.brs = trunc nuw i8 %.sroa.223.0.copyload.i to i1
  br i1 %i.brs, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.i: ; preds = %bb.ml
  %i.brt = icmp eq i64 %i.bqt, 0
  %i.bru = sub i64 0, %i.bqx
  %spec.select4.i63.i664.i = select i1 %i.brt, i64 %i.bru, i64 %i.bqx
  %i.brv = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, i64 noundef %spec.select4.i63.i664.i) #23
  br i1 %i.brv, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i: ; preds = %.split799.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i654.i, %.split22.i649.i, %bb.mg, %.split23.i665.i, %bb.me, %.split.i668.i, %bb.mc, %bb.mb
  %60 = icmp eq i64 %i.bqt, 1
  br i1 %60, label %bb.mm, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i.a: ; preds = %bb.ma
  %i.brw = icmp eq i64 %i.bqt, 1
  br i1 %i.brw, label %.thread824.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

bb.mm:                                            ; preds = %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i
  br i1 %.not27.i644.i, label %.thread824._crit_edge.i.a, label %.thread824.i

.thread824.i:                                     ; preds = %bb.mm, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i.a
  %61 = icmp ne i8 %i.bqn, %.sroa.226.0.copyload.i
  %62 = icmp ne i8 %i.bqn, %.sroa.223.0.copyload.i
  %.pre964.i = select i1 %61, i1 true, i1 %62
  br i1 %.pre964.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i, label %.thread824._crit_edge.i

.thread824._crit_edge.i:                          ; preds = %.thread824.i
  %.pre954.i = add i64 %.sroa.025.0.copyload.i, %i.bqm
  br label %.thread824._crit_edge.i.a

.thread824._crit_edge.i.a:                        ; preds = %.thread824._crit_edge.i, %bb.mm
  %.pre-phi955.i = phi i64 [ %.pre954.i, %.thread824._crit_edge.i ], [ %i.bqu, %bb.mm ] ; 7 uses
  %.old378 = icmp sgt i64 %.pre-phi955.i, %i.bqm
  %63 = icmp slt i64 %.sroa.025.0.copyload.i, 1
  %.not.i623.i.old = xor i1 %63, %.old378
  br i1 %.not.i623.i.old, label %bb.mn, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

bb.mn:                                            ; preds = %.thread824._crit_edge.i.a
  %i.brx = add i64 %.sroa.022.0.copyload.i, %i.bqm ; 7 uses
  %i.bry = icmp sgt i64 %i.brx, %i.bqm
  %i.brz = icmp slt i64 %.sroa.022.0.copyload.i, 1
  %.not35.i625.i = xor i1 %i.brz, %i.bry
  br i1 %.not35.i625.i, label %bb.mo, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

bb.mo:                                            ; preds = %bb.mn
  switch i32 %i.bqp, label %bb.ms [
    i32 2, label %.split.i638.i
    i32 3, label %bb.mp
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i630.i
    i32 1, label %.split22.i626.i
  ]

.split.i638.i:                                    ; preds = %bb.mo
  %i.bsa = trunc nuw i8 %.sroa.226.0.copyload.i to i1 ; 2 uses
  %spec.select.i.i639.i = select i1 %i.bsa, i64 0, i64 %.pre-phi955.i
  %spec.select2.i.i640.i = select i1 %i.bsa, i64 %.pre-phi955.i, i64 0
  %i.bsb = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, ptr noundef %.sroa.0758.0.copyload.i, ptr noundef %i.bqq, i64 noundef %spec.select.i.i639.i, i1 noundef zeroext true, i64 noundef 0, i32 noundef %.sroa.2759.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i.i640.i) #23
  br i1 %i.bsb, label %.split803.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

bb.mp:                                            ; preds = %bb.mo
  %.not30.i.i632.i = icmp eq ptr %i.bqq, null
  br i1 %.not30.i.i632.i, label %bb.mq, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

bb.mq:                                            ; preds = %bb.mp
  %.not7.i.i633.i = icmp eq i64 %.pre-phi955.i, 0
  br i1 %.not7.i.i633.i, label %bb.mt, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bsc = trunc nuw i8 %.sroa.226.0.copyload.i to i1
  br i1 %i.bsc, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i, label %.split21.i634.i

.split21.i634.i:                                  ; preds = %bb.mr
  %i.bsd = sub i64 0, %.pre-phi955.i
  %i.bse = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, i64 noundef %i.bsd) #23
  br i1 %i.bse, label %bb.mt, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

.split22.i626.i:                                  ; preds = %bb.mo
  %.not.i.i627.i = icmp eq ptr %i.bqq, null
  %i.bsf = or i64 %.pre-phi955.i, %i.brx
  %i.bsg = icmp eq i64 %i.bsf, 0
  %spec.select.i629.i = and i1 %.not.i.i627.i, %i.bsg
  br i1 %spec.select.i629.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

bb.ms:                                            ; preds = %bb.mo
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i630.i: ; preds = %bb.mo
  %i.bsh = icmp eq ptr %i.bqq, null
  %i.bsi = or i64 %.pre-phi955.i, %i.brx
  %i.bsj = icmp eq i64 %i.bsi, 0
  %spec.select28.i631.i = and i1 %i.bsh, %i.bsj
  br i1 %spec.select28.i631.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

.split803.i:                                      ; preds = %.split.i638.i
  %i.bsk = trunc nuw i8 %.sroa.223.0.copyload.i to i1 ; 2 uses
  %spec.select.i66.i641.i = select i1 %i.bsk, i64 0, i64 %i.brx
  %spec.select2.i67.i642.i = select i1 %i.bsk, i64 %i.brx, i64 0
  %i.bsl = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, ptr noundef %.sroa.0758.0.copyload.i, ptr noundef %i.bqq, i64 noundef %spec.select.i66.i641.i, i1 noundef zeroext true, i64 noundef 0, i32 noundef %.sroa.2759.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i67.i642.i) #23
  br i1 %i.bsl, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

bb.mt:                                            ; preds = %.split21.i634.i, %bb.mq
  %.not7.i62.i636.i = icmp eq i64 %i.brx, 0
  br i1 %.not7.i62.i636.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.bsm = trunc nuw i8 %.sroa.223.0.copyload.i to i1
  br i1 %i.bsm, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.i: ; preds = %bb.mu
  %i.bsn = sub i64 0, %i.brx
  %i.bso = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bqo, i64 noundef %i.bsn) #23
  br i1 %i.bso, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i: ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.i, %bb.mu, %.split803.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i630.i, %.split22.i626.i, %.split21.i634.i, %bb.mr, %bb.mp, %.split.i638.i, %bb.mn, %.thread824._crit_edge.i.a, %.thread824.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i.a, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.thread.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.i, %bb.ml, %.split21.i661.i, %bb.mi
  %i.bsp = load i32, ptr %i.alp, align 8, !tbaa !563
  %i.bsq = icmp eq i32 %i.bsp, 2
  br i1 %i.bsq, label %bb.mv, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

bb.mv:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i
  %i.bsr = load ptr, ptr %i.alm, align 8, !tbaa !580, !nonnull !19, !align !34 ; 2 uses
  %i.bss = load ptr, ptr %i.alq, align 8, !tbaa !560
  %i.bst = load ptr, ptr %i.akt, align 8, !tbaa !577, !nonnull !19, !align !34
  %.val276.i = load i32, ptr %i.biv, align 8, !tbaa !812
  %.val277.i = load ptr, ptr %i.biw, align 8      ; 2 uses
  %.not.i452.i = icmp eq i32 %.val276.i, 2
  br i1 %.not.i452.i, label %bb.mw, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

bb.mw:                                            ; preds = %bb.mv
  %i.bsu = getelementptr inbounds nuw i8, ptr %.val277.i, i64 8
  %i.bsv = load i32, ptr %i.bsu, align 8          ; 2 uses
  %i.bsw = and i32 %i.bsv, 254
  %spec.select.i.i.i.i453.i = icmp eq i32 %i.bsw, 18
  br i1 %spec.select.i.i.i.i453.i, label %bb.mx, label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i

bb.mx:                                            ; preds = %bb.mw
  %i.bsx = getelementptr inbounds nuw i8, ptr %.val277.i, i64 16
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !925
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !603
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  %.pre.i.i454.i = load i32, ptr %.phi.trans.insert.i.i.i, align 8
  br label %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i

_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i:    ; preds = %bb.mx, %bb.mw
  %i.bta = phi i32 [ %.pre.i.i454.i, %bb.mx ], [ %i.bsv, %bb.mw ]
  %i.btb = and i32 %i.bta, 255
  %i.btc = icmp eq i32 %i.btb, 12
  br i1 %i.btc, label %bb.my, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

bb.my:                                            ; preds = %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i
  %i.btd = load i16, ptr %i.bix, align 8, !tbaa !438
  %.not829.i = icmp eq i16 %i.btd, 8
  br i1 %.not829.i, label %bb.mz, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

bb.mz:                                            ; preds = %bb.my
  %i.bte = load i64, ptr %i.biy, align 8, !tbaa !444
  %i.btf = icmp eq i64 %i.bte, 2
  br i1 %i.btf, label %bb.na, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

bb.na:                                            ; preds = %bb.mz
  %i.btg = load ptr, ptr %i.biz, align 8, !tbaa !449 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.btg, align 8
  %i.bth = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -8 ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i64 %i.bth, 0
  br i1 %.not.i.not.i.i.i.i.i, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i, label %_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers10match_bindIKNS_4SCEVEEENS3_9match_isaIJKNS_12SCEVConstantEEEENS8_IJKNS_4LoopEEEEEEEEbPS6_RKT_.exit.i.i

_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers10match_bindIKNS_4SCEVEEENS3_9match_isaIJKNS_12SCEVConstantEEEENS8_IJKNS_4LoopEEEEEEEEbPS6_RKT_.exit.i.i: ; preds = %bb.na
  %i.bti = inttoptr i64 %i.bth to ptr             ; 2 uses
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btg, i64 8
  %.sroa.0.0.copyload.i15.i.i.i.i.i = load i64, ptr %i.btj, align 8
  %i.btk = and i64 %.sroa.0.0.copyload.i15.i.i.i.i.i, -8
  %i.btl = inttoptr i64 %i.btk to ptr
  %i.btm = getelementptr inbounds nuw i8, ptr %i.btl, i64 24
  %i.btn = load i16, ptr %i.btm, align 8, !tbaa !438
  %i.bto = icmp eq i16 %i.btn, 0
  br i1 %i.bto, label %bb.nb, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

bb.nb:                                            ; preds = %_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers10match_bindIKNS_4SCEVEEENS3_9match_isaIJKNS_12SCEVConstantEEEENS8_IJKNS_4LoopEEEEEEEEbPS6_RKT_.exit.i.i
  %i.btp = call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bhu) #23
  %i.btq = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo18isIndexedLoadLegalENS0_14MemIndexedModeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bsr, i32 noundef 3, ptr noundef %i.btp) #23
  br i1 %i.btq, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.btr = call noundef ptr @_ZNK4llvm4SCEV7getTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.bhu) #23
  %i.bts = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo19isIndexedStoreLegalENS0_14MemIndexedModeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8) %i.bsr, i32 noundef 3, ptr noundef %i.btr) #23
  br i1 %i.bts, label %bb.nd, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

bb.nd:                                            ; preds = %bb.nc, %bb.nb
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bti, i64 24
  %i.btu = load i16, ptr %i.btt, align 8, !tbaa !438
  %i.btv = icmp eq i16 %i.btu, 0
  br i1 %i.btv, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.btw = call noundef zeroext i1 @_ZN4llvm15ScalarEvolution15isLoopInvariantEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.bst, ptr noundef nonnull %i.bti, ptr noundef %i.bss) #23
  br i1 %i.btw, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.jt26.i, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i

_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i: ; preds = %bb.ne, %bb.nd, %bb.nc, %_ZN4llvm16SCEVPatternMatch5matchINS0_22SCEVAffineAddRec_matchINS_19PatternMatchHelpers10match_bindIKNS_4SCEVEEENS3_9match_isaIJKNS_12SCEVConstantEEEENS8_IJKNS_4LoopEEEEEEEEbPS6_RKT_.exit.i.i, %bb.na, %bb.mz, %bb.my, %_ZNK4llvm4Type18isIntOrIntVectorTyEv.exit.i.i, %bb.mv, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread.i
  %.val260.i = load i64, ptr %i.alk, align 8, !tbaa !805
  %.val261.i = load i8, ptr %i.all, align 8, !tbaa !813, !range !18, !noundef !19
  %i.btx = trunc nuw i8 %.val261.i to i1
  %i.bty = add i64 %.val260.i, %.sroa.0682.0.copyload.i ; 3 uses
  %i.btz = select i1 %i.btx, i8 1, i8 %.sroa.10.0.copyload.i207 ; 2 uses
  %i.bua = load ptr, ptr %i.alm, align 8, !tbaa !580, !nonnull !19, !align !34 ; 2 uses
  %i.bub = trunc nuw i8 %i.btz to i1
  br i1 %i.bub, label %.split805.i, label %_ZL19isLegalAddImmediateRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateE.exit.i

.split805.i:                                      ; preds = %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i
  %i.buc = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo27isLegalAddScalableImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bua, i64 noundef %i.bty) #23
  br i1 %i.buc, label %bb.nf, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.jt26.i

_ZL19isLegalAddImmediateRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateE.exit.i: ; preds = %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.thread.i
  %i.bud = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo19isLegalAddImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.bua, i64 noundef %i.bty) #23
  br i1 %i.bud, label %bb.nf, label %_ZL17mayUsePostIncModeRKN4llvm19TargetTransformInfoERN12_GLOBAL__N_16LSRUseEPKNS_4SCEVEPKNS_4LoopERNS_15ScalarEvolutionE.exit.jt26.i

bb.nf:                                            ; preds = %_ZL19isLegalAddImmediateRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateE.exit.i, %.split805.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %25, ptr noundef nonnull readonly align 8 dereferenceable(112) %20, i64 40, i1 false)
  %i.bue = load i32, ptr %i.akz, align 8, !tbaa !50 ; 6 uses
  %i.buf = zext i32 %i.bue to i64                 ; 2 uses
  %i.bug = load i32, ptr %i.alf, align 8, !tbaa !50 ; 4 uses
  %i.buh = zext i32 %i.bug to i64                 ; 2 uses
  %.not.i.i.i458.i = icmp ult i32 %i.bug, %i.bue
  br i1 %.not.i.i.i458.i, label %bb.nk, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %.not29.i.i.i.i = icmp eq i32 %i.bue, 0
  br i1 %.not29.i.i.i.i, label %bb.nr, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bui = load ptr, ptr %i.akx, align 8, !tbaa !21 ; 2 uses
  %i.buj = load ptr, ptr %i.ald, align 8, !tbaa !21 ; 2 uses
  %.not31.i.i.i.i = icmp eq i32 %i.bue, 1
  br i1 %.not31.i.i.i.i, label %bb.nj, label %bb.ni, !prof !167

bb.ni:                                            ; preds = %bb.nh
  %.idx.i.i.i459.i = shl nuw nsw i64 %i.buf, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.buj, ptr align 8 %i.bui, i64 %.idx.i.i.i459.i, i1 false)
  br label %bb.nr

bb.nj:                                            ; preds = %bb.nh
  %i.buk = load ptr, ptr %i.bui, align 8, !tbaa !456
  store ptr %i.buk, ptr %i.buj, align 8, !tbaa !456
  br label %bb.nr

bb.nk:                                            ; preds = %bb.nf
  %i.bul = load i32, ptr %i.alg, align 4, !tbaa !51
  %i.bum = icmp ult i32 %i.bul, %i.bue
  br i1 %i.bum, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk
  store i32 0, ptr %i.alf, align 8, !tbaa !50
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.ald, ptr noundef nonnull %i.ale, i64 noundef %i.buf, i64 noundef 8) #23
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i461.i

bb.nm:                                            ; preds = %bb.nk
  %.not28.i.i.i.i = icmp eq i32 %i.bug, 0
  br i1 %.not28.i.i.i.i, label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i461.i, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bun = load ptr, ptr %i.akx, align 8, !tbaa !21 ; 2 uses
  %i.buo = load ptr, ptr %i.ald, align 8, !tbaa !21 ; 2 uses
  %.not33.i.i.i.i = icmp eq i32 %i.bug, 1
  br i1 %.not33.i.i.i.i, label %bb.np, label %bb.no, !prof !167

bb.no:                                            ; preds = %bb.nn
  %.idx32.i.i.i.i = shl nuw nsw i64 %i.buh, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.buo, ptr align 8 %i.bun, i64 %.idx32.i.i.i.i, i1 false)
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i461.i

bb.np:                                            ; preds = %bb.nn
  %i.bup = load ptr, ptr %i.bun, align 8, !tbaa !456
  store ptr %i.bup, ptr %i.buo, align 8, !tbaa !456
  br label %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i461.i

_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i461.i: ; preds = %bb.np, %bb.no, %bb.nm, %bb.nl
  %.022.i.i.i.i = phi i64 [ 0, %bb.nl ], [ 0, %bb.nm ], [ %i.buh, %bb.no ], [ 1, %bb.np ] ; 4 uses
  %i.buq = load i32, ptr %i.akz, align 8, !tbaa !50
  %i.bur = zext i32 %i.buq to i64                 ; 2 uses
  %.not.i.i.i.i462.i = icmp samesign eq i64 %.022.i.i.i.i, %i.bur
  br i1 %.not.i.i.i.i462.i, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i461.i
  %i.bus = load ptr, ptr %i.akx, align 8, !tbaa !21
  %.idx35.i.i.i.i = shl nuw nsw i64 %.022.i.i.i.i, 3
  %i.but = getelementptr inbounds nuw i8, ptr %i.bus, i64 %.idx35.i.i.i.i
  %i.buu = load ptr, ptr %i.ald, align 8, !tbaa !21
  %i.buv = getelementptr inbounds nuw [8 x i8], ptr %i.buu, i64 %.022.i.i.i.i
  %i.buw = sub nsw i64 %i.bur, %.022.i.i.i.i
  %gepdiff.i.i.i463.i = shl nsw i64 %i.buw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.buv, ptr align 8 %i.but, i64 %gepdiff.i.i.i463.i, i1 false)
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %_ZSt4copyIPKPKN4llvm4SCEVEPS3_ET0_T_S8_S7_.exit30.i.i.i461.i, %bb.nj, %bb.ni, %bb.ng
  store i32 %i.bue, ptr %i.alf, align 8, !tbaa !50
  %i.bux = load i64, ptr %i.alb, align 8
  store i64 %i.bux, ptr %i.alh, align 8
  store i64 %i.bty, ptr %i.alk, align 8
  store i8 %i.btz, ptr %i.all, align 8
  br label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i: ; preds = %bb.nr, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.i, %bb.mt, %.split803.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i630.i, %.split22.i626.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit673.i, %bb.mk, %.split799.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i654.i, %.split22.i649.i, %.split23.i665.i
  %i.buy = load ptr, ptr %i.akt, align 8, !tbaa !577, !nonnull !19, !align !34
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.alr, ptr %7, align 8, !tbaa !21
  store i32 2, ptr %i.alt, align 4, !tbaa !51
  store <2 x i64> %i.bjf, ptr %i.alr, align 8
  store i32 2, ptr %i.als, align 8, !tbaa !50
  %i.buz = call noundef ptr @_ZN4llvm15ScalarEvolution10getAddExprERNS_15SmallVectorImplINS_8SCEVUseTIPKNS_4SCEVEEEEENS_15SCEVNoWrapFlagsEj(ptr noundef nonnull align 8 dereferenceable(1152) %i.buy, ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef 0, i32 noundef 0) #23
  %i.bva = load ptr, ptr %7, align 8, !tbaa !21   ; 2 uses
  %i.bvb = icmp eq ptr %i.bva, %i.alr
  br i1 %i.bvb, label %_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit465.i, label %bb.ns

bb.ns:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit451.thread802.i
  call void @free(ptr noundef %i.bva) #23
  br label %_ZN4llvm15ScalarEvolution10getAddExprENS_8SCEVUseTIPKNS_4SCEVEEES5_NS_15SCEVNoWrapFlagsEj.exit465.i
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_111LSRInstance32NarrowSearchSpaceUsingHeuristicsEv:bb.a
  %i.uq = select i1 %i.uo, i1 %i.up, i1 false
  br i1 %i.uq, label %bb.ee, label %_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit.thread2.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.ur = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 8
  %.val.i.i = load i64, ptr %i.ur, align 8, !tbaa !805
  %i.us = icmp eq i64 %.val.i.i, 0
  br i1 %i.us, label %_ZN12_GLOBAL__N_111LSRInstance25FindUseWithSimilarFormulaERKNS_7FormulaERKNS_6LSRUseE.exit.i, label %.loopexit.i.i

_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit.thread2.i.i: ; preds = %bb.ed, %bb.ec, %bb.eb, %_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit.thread.i.i, %_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit.i.i, %bb.dz
  %i.ut = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 112 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.ut, %i.tt
  br i1 %.not51.i.i, label %.loopexit.i.i, label %bb.dz

.loopexit.i.i:                                    ; preds = %_ZNK4llvm15SmallVectorImplIPKNS_4SCEVEEeqERKS4_.exit.thread2.i.i, %bb.ee, %bb.dy, %_ZNK12_GLOBAL__N_16LSRUse22HasFormulaWithSameRegsERKNS_7FormulaE.exit.i.i, %bb.dp, %bb.do, %bb.dn, %bb.dm
  %i.uu = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 2096 ; 2 uses
  %.not.i104.i = icmp eq ptr %i.uu, %i.qo
  br i1 %.not.i104.i, label %_ZN12_GLOBAL__N_111LSRInstance25FindUseWithSimilarFormulaERKNS_7FormulaERKNS_6LSRUseE.exit.thread.i, label %bb.dm

_ZN12_GLOBAL__N_111LSRInstance25FindUseWithSimilarFormulaERKNS_7FormulaERKNS_6LSRUseE.exit.i: ; preds = %bb.ee
  %.sroa.019.0.copyload.i = load i64, ptr %i.qj, align 8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.079212.i, i64 16
  %.sroa.220.0.copyload.i = load i8, ptr %.sroa.220.0..sroa_idx.i, align 8
  %i.uv = load i32, ptr %i.qg, align 8, !tbaa !812
  %.sroa.0.0.copyload180.i = load ptr, ptr %i.qh, align 8, !tbaa !603
  %.sroa.2.0.copyload182.i = load i32, ptr %i.qi, align 8, !tbaa !478
  %i.uw = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LSRInstance18reconcileNewOffsetERNS_6LSRUseENS_9ImmediateEbNS1_8KindTypeENS_11MemAccessTyE(ptr noundef nonnull align 8 dereferenceable(35560) %0, ptr noundef nonnull align 8 dereferenceable(2096) %.04229.i.i, i64 %.sroa.019.0.copyload.i, i8 %.sroa.220.0.copyload.i, i1 noundef zeroext false, i32 noundef %i.uv, ptr %.sroa.0.0.copyload180.i, i32 %.sroa.2.0.copyload182.i)
  br i1 %i.uw, label %bb.ef, label %_ZN12_GLOBAL__N_111LSRInstance25FindUseWithSimilarFormulaERKNS_7FormulaERKNS_6LSRUseE.exit.thread.i

bb.ef:                                            ; preds = %_ZN12_GLOBAL__N_111LSRInstance25FindUseWithSimilarFormulaERKNS_7FormulaERKNS_6LSRUseE.exit.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 24
  %i.uy = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 32
  %.sroa.2.0..sroa_idx.i.i.le.le = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 40
  %i.uz = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 680 ; 3 uses
  %i.va = getelementptr i8, ptr %.04229.i.i, i64 688 ; 4 uses
  %.sroa.220.0..sroa_idx.i.le = getelementptr inbounds nuw i8, ptr %.079212.i, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.qb, i64 672
  %i.vc = load i8, ptr %i.vb, align 8, !tbaa !674, !range !18, !noundef !19
  %i.vd = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 672 ; 2 uses
  %i.ve = load i8, ptr %i.vd, align 8, !tbaa !674, !range !18, !noundef !19
  %i.vf = and i8 %i.ve, %i.vc
  store i8 %i.vf, ptr %i.vd, align 8, !tbaa !674
  %i.vg = getelementptr inbounds nuw i8, ptr %i.qb, i64 673
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !693, !range !18, !noundef !19
  %i.vi = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 673 ; 2 uses
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !693, !range !18, !noundef !19
  %i.vk = and i8 %i.vj, %i.vh
  store i8 %i.vk, ptr %i.vi, align 1, !tbaa !693
  %i.vl = getelementptr inbounds nuw i8, ptr %i.qb, i64 48
  %.val91.i = load ptr, ptr %i.vl, align 8, !tbaa !21 ; 2 uses
  %i.vm = getelementptr i8, ptr %i.qb, i64 56
  %.val93.i = load i32, ptr %i.vm, align 8, !tbaa !50 ; 2 uses
  %i.vn = zext i32 %.val93.i to i64
  %.idx236.i = mul nuw nsw i64 %i.vn, 72
  %i.vo = getelementptr inbounds nuw i8, ptr %.val91.i, i64 %.idx236.i
  %.not86213.i = icmp eq i32 %.val93.i, 0
  br i1 %.not86213.i, label %._crit_edge.i27, label %.lr.ph215.i

.lr.ph215.i:                                      ; preds = %bb.ef
  %i.vp = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 48 ; 5 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 56 ; 4 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 60
  %i.vs = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 656 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 664
  %i.vu = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 640 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 648
  br label %bb.eg

._crit_edge.i27:                                  ; preds = %_ZN12_GLOBAL__N_16LSRUse9pushFixupERNS_8LSRFixupE.exit.i, %bb.ef
  %i.vw = load i32, ptr %i.va, align 8, !tbaa !50 ; 2 uses
  %.not87216.i = icmp eq i32 %i.vw, 0
  br i1 %.not87216.i, label %.critedge.i40, label %.lr.ph229.i

.lr.ph229.i:                                      ; preds = %._crit_edge.i27
  %i.vx = zext i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 640
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 648
  %i.vz = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 656
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.04229.i.i, i64 664
  br label %.outer.i

.outer.i:                                         ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.thread.i, %.lr.ph229.i
  %.072224.ph.i = phi i64 [ %i.ada, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.thread.i ], [ %i.vx, %.lr.ph229.i ] ; 2 uses
  %.074220.ph.i = phi i64 [ %.074220.i, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.thread.i ], [ 0, %.lr.ph229.i ]
  %.076217.ph.i = phi i1 [ true, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.thread.i ], [ false, %.lr.ph229.i ]
  br label %bb.en

bb.eg:                                            ; preds = %_ZN12_GLOBAL__N_16LSRUse9pushFixupERNS_8LSRFixupE.exit.i, %.lr.ph215.i
  %.078214.i = phi ptr [ %.val91.i, %.lr.ph215.i ], [ %i.xh, %_ZN12_GLOBAL__N_16LSRUse9pushFixupERNS_8LSRFixupE.exit.i ] ; 9 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.078214.i, i64 56 ; 6 uses
  %i.wb = load i64, ptr %i.qj, align 8, !tbaa !805
  %i.wc = load i64, ptr %i.wa, align 8, !tbaa !805
  %i.wd = add nsw i64 %i.wc, %i.wb
  store i64 %i.wd, ptr %i.wa, align 8, !tbaa !805
  %.val.i106.i = load i64, ptr %i.qj, align 8, !tbaa !805
  %i.we = icmp eq i64 %.val.i106.i, 0
  br i1 %i.we, label %_ZN4llvm7detailspLERN12_GLOBAL__N_19ImmediateERKS2_.exit.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.wf = load i8, ptr %.sroa.220.0..sroa_idx.i.le, align 8, !tbaa !813, !range !18, !noundef !19
  %i.wg = getelementptr inbounds nuw i8, ptr %.078214.i, i64 64
  store i8 %i.wf, ptr %i.wg, align 8, !tbaa !813
  br label %_ZN4llvm7detailspLERN12_GLOBAL__N_19ImmediateERKS2_.exit.i

_ZN4llvm7detailspLERN12_GLOBAL__N_19ImmediateERKS2_.exit.i: ; preds = %bb.eh, %bb.eg
  %i.wh = load i32, ptr %i.vq, align 8, !tbaa !50 ; 2 uses
  %i.wi = zext i32 %i.wh to i64                   ; 2 uses
  %i.wj = add nuw nsw i64 %i.wi, 1                ; 2 uses
  %i.wk = load i32, ptr %i.vr, align 4, !tbaa !51
  %.not.not.i.i.i.i.i = icmp ult i32 %i.wh, %i.wk
  %.val.pre4.i.i.i = load ptr, ptr %i.vp, align 8, !tbaa !21 ; 4 uses
  br i1 %.not.not.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i, label %bb.ei, !prof !166

bb.ei:                                            ; preds = %_ZN4llvm7detailspLERN12_GLOBAL__N_19ImmediateERKS2_.exit.i
  %i.wl = getelementptr inbounds nuw [72 x i8], ptr %.val.pre4.i.i.i, i64 %i.wi
  %i.wm = icmp uge ptr %.078214.i, %.val.pre4.i.i.i
  %i.wn = icmp ult ptr %.078214.i, %i.wl
  %spec.select.i.i.i.i.i.i.i = and i1 %i.wm, %i.wn
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.ej, label %.critedge.i.i.i.i.i, !prof !167

bb.ej:                                            ; preds = %bb.ei
  %i.wo = ptrtoint ptr %.078214.i to i64
  %i.wp = ptrtoint ptr %.val.pre4.i.i.i to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i64 noundef %i.wj)
  %.val.i.i.i.i.i = load ptr, ptr %i.vp, align 8, !tbaa !21 ; 2 uses
  %i.wr = getelementptr inbounds i8, ptr %.val.i.i.i.i.i, i64 %i.wq
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.ei
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i64 noundef %i.wj)
  %.val.pre.i.i.i = load ptr, ptr %i.vp, align 8, !tbaa !21
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i: ; preds = %.critedge.i.i.i.i.i, %bb.ej, %_ZN4llvm7detailspLERN12_GLOBAL__N_19ImmediateERKS2_.exit.i
  %.val.i.i.i24 = phi ptr [ %.val.pre4.i.i.i, %_ZN4llvm7detailspLERN12_GLOBAL__N_19ImmediateERKS2_.exit.i ], [ %.val.i.i.i.i.i, %bb.ej ], [ %.val.pre.i.i.i, %.critedge.i.i.i.i.i ]
  %.016.i.i.i.i.i = phi ptr [ %.078214.i, %_ZN4llvm7detailspLERN12_GLOBAL__N_19ImmediateERKS2_.exit.i ], [ %i.wr, %bb.ej ], [ %.078214.i, %.critedge.i.i.i.i.i ] ; 3 uses
  %.val3.i.i.i = load i32, ptr %i.vq, align 8, !tbaa !50
  %i.ws = zext i32 %.val3.i.i.i to i64
  %i.wt = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i24, i64 %i.ws ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.wt, ptr noundef nonnull align 8 dereferenceable(72) %.016.i.i.i.i.i, i64 16, i1 false)
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.wv = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 40
  call void @_ZN4llvm19SmallPtrSetImplBaseC2EPPKvRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.wu, ptr noundef nonnull %i.ww, ptr noundef nonnull align 8 dereferenceable(40) %i.wv) #23
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wt, i64 56
  %i.wy = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, ptr noundef nonnull align 8 dereferenceable(16) %i.wy, i64 16, i1 false)
  %i.wz = load i32, ptr %i.vq, align 8, !tbaa !50
  %i.xa = add i32 %i.wz, 1
  store i32 %i.xa, ptr %i.vq, align 8, !tbaa !50
  %.val9.i.i = load i64, ptr %i.wa, align 8       ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %.078214.i, i64 64 ; 2 uses
  %.val10.i.i = load i8, ptr %i.xb, align 8, !tbaa !813, !range !18, !noundef !19
  %.val11.i.i = load i64, ptr %i.vs, align 8
  %.val12.i.i = load i8, ptr %i.vt, align 8
  %i.xc = trunc nuw i8 %.val10.i.i to i1          ; 2 uses
  %i.xd = trunc nuw i8 %.val12.i.i to i1
  %i.xe = icmp sgt i64 %.val9.i.i, %.val11.i.i
  %.not5.i.i.i = xor i1 %i.xd, true
  %not.or.cond.i.i.i = select i1 %i.xc, i1 true, i1 %.not5.i.i.i
  %.0.i.i.i25 = select i1 %not.or.cond.i.i.i, i1 %i.xe, i1 false
  br i1 %.0.i.i.i25, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.vs, ptr noundef nonnull align 8 dereferenceable(9) %i.wa, i64 9, i1 false)
  %.val.pre.i.i = load i64, ptr %i.wa, align 8
  %.val6.pre.i.i = load i8, ptr %i.xb, align 8, !tbaa !813, !range !18
  %.pre.i.i50 = trunc nuw i8 %.val6.pre.i.i to i1
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i
  %.pre-phi.i.i = phi i1 [ %.pre.i.i50, %bb.ek ], [ %i.xc, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i ]
  %.val.i107.i = phi i64 [ %.val.pre.i.i, %bb.ek ], [ %.val9.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_18LSRFixupELb0EE9push_backERKS2_.exit.i.i ]
  %.val7.i.i = load i64, ptr %i.vu, align 8
  %.val8.i.i = load i8, ptr %i.vv, align 8
  %.not.i.i108.i = xor i1 %.pre-phi.i.i, true
  %i.xf = trunc nuw i8 %.val8.i.i to i1
  %or.cond.i.i.i26 = select i1 %.not.i.i108.i, i1 true, i1 %i.xf
  %i.xg = icmp slt i64 %.val.i107.i, %.val7.i.i
  %.0.i13.i.i = select i1 %or.cond.i.i.i26, i1 %i.xg, i1 false
  br i1 %.0.i13.i.i, label %bb.em, label %_ZN12_GLOBAL__N_16LSRUse9pushFixupERNS_8LSRFixupE.exit.i

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.vu, ptr noundef nonnull align 8 dereferenceable(9) %i.wa, i64 9, i1 false)
  br label %_ZN12_GLOBAL__N_16LSRUse9pushFixupERNS_8LSRFixupE.exit.i

_ZN12_GLOBAL__N_16LSRUse9pushFixupERNS_8LSRFixupE.exit.i: ; preds = %bb.em, %bb.el
  %i.xh = getelementptr inbounds nuw i8, ptr %.078214.i, i64 72 ; 2 uses
  %.not86.i = icmp eq ptr %i.xh, %i.vo
  br i1 %.not86.i, label %._crit_edge.i27, label %bb.eg

._crit_edge230.i:                                 ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i
  br i1 %.076217.ph.i, label %._crit_edge230.thread.i, label %.critedge.i40

bb.en:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, %.outer.i
  %.074220.i = phi i64 [ %i.acz, %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i ], [ %.074220.ph.i, %.outer.i ] ; 4 uses
  %.val97.i28 = load ptr, ptr %i.uz, align 8, !tbaa !21
  %i.xi = getelementptr inbounds nuw [112 x i8], ptr %.val97.i28, i64 %.074220.i ; 18 uses
  %i.xj = load ptr, ptr %i.pu, align 8, !tbaa !580, !nonnull !19, !align !34 ; 8 uses
  %.sroa.01.0.copyload.i = load i64, ptr %i.vy, align 8 ; 4 uses
  %.sroa.22.0.copyload.i = load i8, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.vz, align 8 ; 4 uses
  %.sroa.2.0.copyload.i = load i8, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 6 uses
  %i.xk = load i32, ptr %i.ux, align 8, !tbaa !812 ; 2 uses
  %.sroa.0184.0.copyload.i = load ptr, ptr %i.uy, align 8, !tbaa !603 ; 4 uses
  %.sroa.2185.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i.le.le, align 8, !tbaa !478 ; 4 uses
  %i.xl = load ptr, ptr %i.xi, align 8, !tbaa !807 ; 10 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %.sroa.017.0.copyload.i.i = load i64, ptr %i.xm, align 8 ; 9 uses
  %.sroa.218.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %.sroa.218.0.copyload.i.i = load i8, ptr %.sroa.218.0..sroa_idx.i.i, align 8 ; 4 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xo = load i8, ptr %i.xn, align 8, !tbaa !700, !range !18, !noundef !19
  %i.xp = trunc nuw i8 %i.xo to i1                ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xi, i64 32
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !705 ; 11 uses
  %.not27.i125.i = icmp eq i64 %.sroa.017.0.copyload.i.i, 0 ; 2 uses
  br i1 %.not27.i125.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %24 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.22.0.copyload.i
  %25 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.2.0.copyload.i
  %or.cond.i126.i = select i1 %24, i1 true, i1 %25
  br i1 %or.cond.i126.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i.a, label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %i.xs = add i64 %.sroa.017.0.copyload.i.i, %.sroa.01.0.copyload.i ; 10 uses
  %i.xt = icmp sgt i64 %i.xs, %.sroa.017.0.copyload.i.i
  %i.xu = icmp slt i64 %.sroa.01.0.copyload.i, 1
  %.not.i127.i = xor i1 %i.xu, %i.xt
  br i1 %.not.i127.i, label %bb.eq, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

bb.eq:                                            ; preds = %bb.ep
  %i.xv = add i64 %.sroa.017.0.copyload.i.i, %.sroa.0.0.copyload.i ; 9 uses
  %i.xw = icmp sgt i64 %i.xv, %.sroa.017.0.copyload.i.i
  %i.xx = icmp slt i64 %.sroa.0.0.copyload.i, 1
  %.not35.i129.i = xor i1 %i.xx, %i.xw
  br i1 %.not35.i129.i, label %bb.er, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

bb.er:                                            ; preds = %bb.eq
  switch i32 %i.xk, label %bb.ex [
    i32 2, label %.split.i140.i
    i32 3, label %bb.es
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i133.i
    i32 1, label %.split22.i130.i
  ]

.split.i140.i:                                    ; preds = %bb.er
  %i.xy = trunc nuw i8 %.sroa.22.0.copyload.i to i1 ; 2 uses
  %spec.select.i.i141.i = select i1 %i.xy, i64 0, i64 %i.xs
  %spec.select2.i.i142.i = select i1 %i.xy, i64 %i.xs, i64 0
  %i.xz = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, ptr noundef %.sroa.0184.0.copyload.i, ptr noundef %i.xl, i64 noundef %spec.select.i.i141.i, i1 noundef zeroext %i.xp, i64 noundef %i.xr, i32 noundef %.sroa.2185.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i.i142.i) #23
  br i1 %i.xz, label %.split.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

bb.es:                                            ; preds = %bb.er
  %.not30.i.i135.i = icmp eq ptr %i.xl, null
  br i1 %.not30.i.i135.i, label %bb.et, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

bb.et:                                            ; preds = %bb.es
  %i.ya = icmp ne i64 %i.xr, 0
  %or.cond.i.i136.i = and i1 %i.ya, %i.xp
  br i1 %or.cond.i.i136.i, label %.split23.i.i, label %bb.eu

.split23.i.i:                                     ; preds = %bb.et
  %or.cond3.i.i.i = icmp eq i64 %i.xr, -1
  %i.yb = or i64 %i.xv, %i.xs
  %i.yc = icmp eq i64 %i.yb, 0
  %spec.select31.i.i = and i1 %i.yc, %or.cond3.i.i.i
  br i1 %spec.select31.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

bb.eu:                                            ; preds = %bb.et
  %.old.i.i.i = add i64 %i.xr, -1
  %or.cond3.old.i.i.i = icmp ult i64 %.old.i.i.i, -2
  br i1 %or.cond3.old.i.i.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %.not7.i.i137.i = icmp eq i64 %i.xs, 0
  br i1 %.not7.i.i137.i, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.yd = trunc nuw i8 %.sroa.22.0.copyload.i to i1
  br i1 %i.yd, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %.split21.i138.i

.split21.i138.i:                                  ; preds = %bb.ew
  %i.ye = icmp eq i64 %i.xr, 0
  %i.yf = sub i64 0, %i.xs
  %spec.select4.i.i.i = select i1 %i.ye, i64 %i.yf, i64 %i.xs
  %i.yg = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, i64 noundef %spec.select4.i.i.i) #23
  br i1 %i.yg, label %bb.ey, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

.split22.i130.i:                                  ; preds = %bb.er
  %.not.i.i131.i = icmp eq ptr %i.xl, null
  %i.yh = add i64 %i.xr, 1
  %or.cond7.i.i.i = icmp ult i64 %i.yh, 2
  %or.cond31.i.i.i = and i1 %.not.i.i131.i, %or.cond7.i.i.i
  %i.yi = or i64 %i.xv, %i.xs
  %i.yj = icmp eq i64 %i.yi, 0
  %spec.select.i132.i = and i1 %i.yj, %or.cond31.i.i.i
  br i1 %spec.select.i132.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

bb.ex:                                            ; preds = %bb.er
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i133.i: ; preds = %bb.er
  %i.yk = icmp eq ptr %i.xl, null
  %i.yl = or i64 %i.xv, %i.xs
  %i.ym = or i64 %i.yl, %i.xr
  %i.yn = icmp eq i64 %i.ym, 0
  %spec.select28.i134.i = and i1 %i.yk, %i.yn
  br i1 %spec.select28.i134.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

.split.i:                                         ; preds = %.split.i140.i
  %i.yo = trunc nuw i8 %.sroa.2.0.copyload.i to i1 ; 2 uses
  %spec.select.i66.i143.i = select i1 %i.yo, i64 0, i64 %i.xv
  %spec.select2.i67.i144.i = select i1 %i.yo, i64 %i.xv, i64 0
  %i.yp = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, ptr noundef %.sroa.0184.0.copyload.i, ptr noundef %i.xl, i64 noundef %spec.select.i66.i143.i, i1 noundef zeroext %i.xp, i64 noundef %i.xr, i32 noundef %.sroa.2185.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i67.i144.i) #23
  br i1 %i.yp, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i

bb.ey:                                            ; preds = %.split21.i138.i, %bb.ev
  %.not7.i62.i139.i = icmp eq i64 %i.xv, 0
  br i1 %.not7.i62.i139.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.yq = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.yq, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.i: ; preds = %bb.ez
  %i.yr = icmp eq i64 %i.xr, 0
  %i.ys = sub i64 0, %i.xv
  %spec.select4.i63.i.i = select i1 %i.yr, i64 %i.ys, i64 %i.xv
  %i.yt = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, i64 noundef %spec.select4.i63.i.i) #23
  br i1 %i.yt, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i: ; preds = %.split.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i133.i, %.split22.i130.i, %bb.eu, %.split23.i.i, %bb.es, %.split.i140.i, %bb.eq, %bb.ep
  %26 = icmp eq i64 %i.xr, 1
  br i1 %26, label %bb.fa, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i.a: ; preds = %bb.eo
  %i.yu = icmp eq i64 %i.xr, 1
  br i1 %i.yu, label %.thread204.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

bb.fa:                                            ; preds = %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i
  br i1 %.not27.i125.i, label %.thread204._crit_edge.i.a, label %.thread204.i

.thread204.i:                                     ; preds = %bb.fa, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i.a
  %27 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.22.0.copyload.i
  %28 = icmp ne i8 %.sroa.218.0.copyload.i.i, %.sroa.2.0.copyload.i
  %.pre262.i = select i1 %27, i1 true, i1 %28
  br i1 %.pre262.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %.thread204._crit_edge.i

.thread204._crit_edge.i:                          ; preds = %.thread204.i
  %.pre252.i = add i64 %.sroa.017.0.copyload.i.i, %.sroa.01.0.copyload.i
  br label %.thread204._crit_edge.i.a

.thread204._crit_edge.i.a:                        ; preds = %.thread204._crit_edge.i, %bb.fa
  %.pre-phi253.i = phi i64 [ %.pre252.i, %.thread204._crit_edge.i ], [ %i.xs, %bb.fa ] ; 7 uses
  %.old = icmp sgt i64 %.pre-phi253.i, %.sroa.017.0.copyload.i.i
  %29 = icmp slt i64 %.sroa.01.0.copyload.i, 1
  %.not.i123.i.old = xor i1 %29, %.old
  br i1 %.not.i123.i.old, label %bb.fb, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

bb.fb:                                            ; preds = %.thread204._crit_edge.i.a
  %i.yv = add i64 %.sroa.017.0.copyload.i.i, %.sroa.0.0.copyload.i ; 7 uses
  %i.yw = icmp sgt i64 %i.yv, %.sroa.017.0.copyload.i.i
  %i.yx = icmp slt i64 %.sroa.0.0.copyload.i, 1
  %.not35.i.i = xor i1 %i.yx, %i.yw
  br i1 %.not35.i.i, label %bb.fc, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

bb.fc:                                            ; preds = %bb.fb
  switch i32 %i.xk, label %bb.fg [
    i32 2, label %.split.i.i
    i32 3, label %bb.fd
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i.i
    i32 1, label %.split22.i.i
  ]

.split.i.i:                                       ; preds = %bb.fc
  %i.yy = trunc nuw i8 %.sroa.22.0.copyload.i to i1 ; 2 uses
  %spec.select.i.i.i = select i1 %i.yy, i64 0, i64 %.pre-phi253.i
  %spec.select2.i.i.i = select i1 %i.yy, i64 %.pre-phi253.i, i64 0
  %i.yz = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, ptr noundef %.sroa.0184.0.copyload.i, ptr noundef %i.xl, i64 noundef %spec.select.i.i.i, i1 noundef zeroext true, i64 noundef 0, i32 noundef %.sroa.2185.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i.i.i) #23
  br i1 %i.yz, label %.split196.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

bb.fd:                                            ; preds = %bb.fc
  %.not30.i.i.i = icmp eq ptr %i.xl, null
  br i1 %.not30.i.i.i, label %bb.fe, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

bb.fe:                                            ; preds = %bb.fd
  %.not7.i.i.i = icmp eq i64 %.pre-phi253.i, 0
  br i1 %.not7.i.i.i, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.za = trunc nuw i8 %.sroa.22.0.copyload.i to i1
  br i1 %i.za, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %.split21.i.i

.split21.i.i:                                     ; preds = %bb.ff
  %i.zb = sub i64 0, %.pre-phi253.i
  %i.zc = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, i64 noundef %i.zb) #23
  br i1 %i.zc, label %bb.fh, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

.split22.i.i:                                     ; preds = %bb.fc
  %.not.i.i124.i = icmp eq ptr %i.xl, null
  %i.zd = or i64 %.pre-phi253.i, %i.yv
  %i.ze = icmp eq i64 %i.zd, 0
  %spec.select.i.i = and i1 %.not.i.i124.i, %i.ze
  br i1 %spec.select.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

bb.fg:                                            ; preds = %bb.fc
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i.i: ; preds = %bb.fc
  %i.zf = icmp eq ptr %i.xl, null
  %i.zg = or i64 %.pre-phi253.i, %i.yv
  %i.zh = icmp eq i64 %i.zg, 0
  %spec.select28.i.i = and i1 %i.zf, %i.zh
  br i1 %spec.select28.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

.split196.i:                                      ; preds = %.split.i.i
  %i.zi = trunc nuw i8 %.sroa.2.0.copyload.i to i1 ; 2 uses
  %spec.select.i66.i.i = select i1 %i.zi, i64 0, i64 %i.yv
  %spec.select2.i67.i.i = select i1 %i.zi, i64 %i.yv, i64 0
  %i.zj = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, ptr noundef %.sroa.0184.0.copyload.i, ptr noundef %i.xl, i64 noundef %spec.select.i66.i.i, i1 noundef zeroext true, i64 noundef 0, i32 noundef %.sroa.2185.0.copyload.i, ptr noundef null, i64 noundef %spec.select2.i67.i.i) #23
  br i1 %i.zj, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

bb.fh:                                            ; preds = %.split21.i.i, %bb.fe
  %.not7.i62.i.i = icmp eq i64 %i.yv, 0
  br i1 %.not7.i62.i.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.zk = trunc nuw i8 %.sroa.2.0.copyload.i to i1
  br i1 %i.zk, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i: ; preds = %bb.fi
  %i.zl = sub i64 0, %i.yv
  %i.zm = call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %i.xj, i64 noundef %i.zl) #23
  br i1 %i.zm, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread195.i, label %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i

_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i: ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.i, %bb.fi, %.split196.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit.i.i, %.split22.i.i, %.split21.i.i, %bb.ff, %bb.fd, %.split.i.i, %bb.fb, %.thread204._crit_edge.i.a, %.thread204.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i.a, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.thread.i, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl.exit145.i, %bb.ez, %.split21.i138.i, %bb.ew
  %.val4.i.i29 = load ptr, ptr %i.uz, align 8, !tbaa !21 ; 2 uses
  %.val5.i.i30 = load i32, ptr %i.va, align 8, !tbaa !50 ; 2 uses
  %i.zn = zext i32 %.val5.i.i30 to i64
  %i.zo = getelementptr inbounds nuw [112 x i8], ptr %.val4.i.i29, i64 %i.zn ; 12 uses
  %i.zp = getelementptr inbounds i8, ptr %i.zo, i64 -112 ; 3 uses
  %.not.i111.i = icmp eq ptr %i.xi, %i.zp
  br i1 %.not.i111.i, label %bb.gq, label %bb.fj

bb.fj:                                            ; preds = %_ZL10isLegalUseRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyERKNS3_7FormulaE.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %16, ptr noundef nonnull align 8 dereferenceable(112) %i.xi, i64 40, i1 false)
  store ptr %i.pw, ptr %i.pv, align 8, !tbaa !21
  store i32 0, ptr %i.px, align 8, !tbaa !50
  store i32 4, ptr %i.py, align 4, !tbaa !51
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xi, i64 48 ; 8 uses
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !50 ; 5 uses
  %.not.i.i.i.i.i112.i = icmp eq i32 %i.zr, 0
  br i1 %.not.i.i.i.i.i112.i, label %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.i32, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.zs = getelementptr inbounds nuw i8, ptr %i.xi, i64 40 ; 3 uses
  %i.zt = icmp eq ptr %16, %i.xi
  br i1 %i.zt, label %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.i32, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.zu = load ptr, ptr %i.zs, align 8, !tbaa !21 ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.xi, i64 56 ; 2 uses
  %i.zw = icmp eq ptr %i.zu, %i.zv
  br i1 %i.zw, label %bb.fm, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i166.i

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i166.i: ; preds = %bb.fl
  store ptr %i.zu, ptr %i.pv, align 8, !tbaa !21
  store i32 %i.zr, ptr %i.px, align 8, !tbaa !50
  %i.zx = getelementptr inbounds nuw i8, ptr %i.xi, i64 52 ; 2 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !51
  store i32 %i.zy, ptr %i.py, align 4, !tbaa !51
  store ptr %i.zv, ptr %i.zs, align 8, !tbaa !21
  store i32 0, ptr %i.zx, align 4, !tbaa !51
  br label %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.sink.split.i31

bb.fm:                                            ; preds = %bb.fl
  %i.zz = zext i32 %i.zr to i64                   ; 2 uses
  %i.aaa = icmp ugt i32 %i.zr, 4
  br i1 %i.aaa, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i: ; preds = %bb.fm
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.pv, ptr noundef nonnull %i.pw, i64 noundef %i.zz, i64 noundef 8) #23
  %.pre246.i = load i32, ptr %i.zq, align 8, !tbaa !50 ; 2 uses
  %.not.i.i.i175.i = icmp eq i32 %.pre246.i, 0
  br i1 %.not.i.i.i175.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i178.i, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i._ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i_crit_edge

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i._ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i_crit_edge: ; preds = %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i
  %.pre249.i = zext i32 %.pre246.i to i64
  %.pre628 = load ptr, ptr %i.zs, align 8, !tbaa !21
  %.pre629 = load ptr, ptr %i.pv, align 8, !tbaa !21
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i: ; preds = %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i._ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i_crit_edge, %bb.fm
  %i.aab = phi ptr [ %.pre629, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i._ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i_crit_edge ], [ %i.pw, %bb.fm ]
  %i.aac = phi ptr [ %.pre628, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i._ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i_crit_edge ], [ %i.zu, %bb.fm ]
  %.pre-phi322.i = phi i64 [ %.pre249.i, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i._ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i_crit_edge ], [ %i.zz, %bb.fm ]
  %gepdiff.i177.i = shl nuw nsw i64 %.pre-phi322.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aab, ptr align 8 %i.aac, i64 %gepdiff.i177.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i178.i

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i178.i: ; preds = %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.thread.i, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i173.i
  store i32 %i.zr, ptr %i.px, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.sink.split.i31

_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.sink.split.i31: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i178.i, %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i166.i
  store i32 0, ptr %i.zq, align 8, !tbaa !50
  br label %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.i32

_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.i32:    ; preds = %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.sink.split.i31, %bb.fk, %bb.fj
  %i.aad = getelementptr inbounds nuw i8, ptr %i.xi, i64 88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.pz, ptr noundef nonnull align 8 dereferenceable(17) %i.aad, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.xi, ptr noundef nonnull align 8 dereferenceable(112) %i.zp, i64 40, i1 false)
  %i.aae = getelementptr inbounds nuw i8, ptr %i.xi, i64 40 ; 7 uses
  %i.aaf = getelementptr inbounds i8, ptr %i.zo, i64 -72 ; 12 uses
  %i.aag = icmp eq ptr %i.aae, %i.aaf
  br i1 %i.aag, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit164.i, label %bb.fn

bb.fn:                                            ; preds = %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.i32
  %i.aah = load ptr, ptr %i.aaf, align 8, !tbaa !21 ; 6 uses
  %i.aai = getelementptr inbounds i8, ptr %i.zo, i64 -56 ; 2 uses
  %i.aaj = icmp eq ptr %i.aah, %i.aai
  br i1 %i.aaj, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aak = load ptr, ptr %i.aae, align 8, !tbaa !21 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.xi, i64 56
  %i.aam = icmp eq ptr %i.aak, %i.aal
  br i1 %i.aam, label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i151.i, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  call void @free(ptr noundef %i.aak) #23
  %.pre.i150.i = load ptr, ptr %i.aaf, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i151.i

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i151.i: ; preds = %bb.fp, %bb.fo
  %i.aan = phi ptr [ %i.aah, %bb.fo ], [ %.pre.i150.i, %bb.fp ]
  store ptr %i.aan, ptr %i.aae, align 8, !tbaa !21
  %i.aao = getelementptr inbounds i8, ptr %i.zo, i64 -64 ; 2 uses
  %i.aap = getelementptr inbounds i8, ptr %i.zo, i64 -60
  %i.aaq = load <2 x i32>, ptr %i.aao, align 8, !tbaa !478
  store <2 x i32> %i.aaq, ptr %i.zq, align 8, !tbaa !478
  store ptr %i.aai, ptr %i.aaf, align 8, !tbaa !21
  store i32 0, ptr %i.aap, align 4, !tbaa !51
  store i32 0, ptr %i.aao, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit164.i

bb.fq:                                            ; preds = %bb.fn
  %i.aar = getelementptr inbounds i8, ptr %i.zo, i64 -64 ; 4 uses
  %i.aas = load i32, ptr %i.aar, align 8, !tbaa !50 ; 6 uses
  %i.aat = zext i32 %i.aas to i64                 ; 2 uses
  %i.aau = load i32, ptr %i.zq, align 8, !tbaa !50 ; 4 uses
  %i.aav = zext i32 %i.aau to i64                 ; 2 uses
  %.not.i152.i = icmp ult i32 %i.aau, %i.aas
  br i1 %.not.i152.i, label %bb.fu, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aaw = load ptr, ptr %i.aae, align 8, !tbaa !21 ; 2 uses
  switch i32 %i.aas, label %bb.fs [
    i32 0, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i153.i
    i32 1, label %bb.ft
  ], !prof !981

bb.fs:                                            ; preds = %bb.fr
  %.idx.i154.i = shl nuw nsw i64 %i.aat, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aaw, ptr align 8 %i.aah, i64 %.idx.i154.i, i1 false)
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i153.i

bb.ft:                                            ; preds = %bb.fr
  %i.aax = load ptr, ptr %i.aah, align 8, !tbaa !456
  store ptr %i.aax, ptr %i.aaw, align 8, !tbaa !456
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i153.i

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i153.i: ; preds = %bb.ft, %bb.fs, %bb.fr
  store i32 %i.aas, ptr %i.zq, align 8, !tbaa !50
  store i32 0, ptr %i.aar, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit164.i

bb.fu:                                            ; preds = %bb.fq
  %i.aay = getelementptr inbounds nuw i8, ptr %i.xi, i64 52
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !51
  %i.aba = icmp ult i32 %i.aaz, %i.aas
  br i1 %i.aba, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  store i32 0, ptr %i.zq, align 8, !tbaa !50
  %i.abb = getelementptr inbounds nuw i8, ptr %i.xi, i64 56
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %i.aae, ptr noundef nonnull %i.abb, i64 noundef %i.aat, i64 noundef 8) #23
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i158.i

bb.fw:                                            ; preds = %bb.fu
  %.not32.i155.i = icmp eq i32 %i.aau, 0
  br i1 %.not32.i155.i, label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i158.i, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.abc = load ptr, ptr %i.aae, align 8, !tbaa !21 ; 2 uses
  %.not37.i156.i = icmp eq i32 %i.aau, 1
  br i1 %.not37.i156.i, label %bb.fz, label %bb.fy, !prof !167

bb.fy:                                            ; preds = %bb.fx
  %.idx36.i157.i = shl nuw nsw i64 %i.aav, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.abc, ptr align 8 %i.aah, i64 %.idx36.i157.i, i1 false)
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i158.i

bb.fz:                                            ; preds = %bb.fx
  %i.abd = load ptr, ptr %i.aah, align 8, !tbaa !456
  store ptr %i.abd, ptr %i.abc, align 8, !tbaa !456
  br label %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i158.i

_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i158.i: ; preds = %bb.fz, %bb.fy, %bb.fw, %bb.fv
  %.026.i159.i = phi i64 [ 0, %bb.fv ], [ 0, %bb.fw ], [ %i.aav, %bb.fy ], [ 1, %bb.fz ] ; 4 uses
  %i.abe = load i32, ptr %i.aar, align 8, !tbaa !50
  %i.abf = zext i32 %i.abe to i64                 ; 2 uses
  %.not.i.i.i160.i = icmp samesign eq i64 %.026.i159.i, %i.abf
  br i1 %.not.i.i.i160.i, label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i163.i, label %bb.ga

bb.ga:                                            ; preds = %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i158.i
  %i.abg = load ptr, ptr %i.aaf, align 8, !tbaa !21
  %.idx39.i161.i = shl nuw nsw i64 %.026.i159.i, 3
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %.idx39.i161.i
  %i.abi = load ptr, ptr %i.aae, align 8, !tbaa !21
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %.026.i159.i
  %i.abk = sub nsw i64 %i.abf, %.026.i159.i
  %gepdiff.i162.i = shl nsw i64 %i.abk, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abj, ptr align 8 %i.abh, i64 %gepdiff.i162.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i163.i

_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i163.i: ; preds = %bb.ga, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit34.i158.i
  store i32 %i.aas, ptr %i.zq, align 8, !tbaa !50
  store i32 0, ptr %i.aar, align 8, !tbaa !50
  br label %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit164.i

_ZN4llvm15SmallVectorImplIPKNS_4SCEVEEaSEOS4_.exit164.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKNS_4SCEVELb1EE18uninitialized_moveIPS3_S6_EEvT_S7_T0_.exit.i163.i, %_ZSt4moveIPPKN4llvm4SCEVES4_ET0_T_S6_S5_.exit.i153.i, %_ZN4llvm15SmallVectorImplIPKNS_4SCEVEE12assignRemoteEOS4_.exit.i151.i, %_ZN12_GLOBAL__N_17FormulaC2EOS0_.exit.i.i.i32
  %i.abl = getelementptr inbounds i8, ptr %i.zo, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aad, ptr noundef nonnull align 8 dereferenceable(17) %i.abl, i64 17, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.zp, ptr noundef nonnull align 8 dereferenceable(112) %16, i64 40, i1 false)
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_14Cost12RateRegisterERKNS_7FormulaEPKN4llvm4SCEVERNS4_15SmallPtrSetImplIS7_EERKNS_6LSRUseEb:bb.a
"_ZZN12_GLOBAL__N_14Cost12RateRegisterERKNS_7FormulaEPKN4llvm4SCEVERNS4_15SmallPtrSetImplIS7_EERKNS_6LSRUseEbENK3$_0clES7_PKNS4_19TargetTransformInfoE.exit.thread": ; preds = %bb.ad, %bb.ac, %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit.thread, %bb.ab, %"_ZZN12_GLOBAL__N_14Cost12RateRegisterERKNS_7FormulaEPKN4llvm4SCEVERNS4_15SmallPtrSetImplIS7_EERKNS_6LSRUseEbENK3$_0clES7_PKNS4_19TargetTransformInfoE.exit"
  tail call fastcc void @_ZN12_GLOBAL__N_14Cost12RateRegisterERKNS_7FormulaEPKN4llvm4SCEVERNS4_15SmallPtrSetImplIS7_EERKNS_6LSRUseEb(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.ec, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(2096) %4, i1 noundef zeroext %5)
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.val41 = load i32, ptr %i.ga, align 4, !tbaa !955
  %i.gb = icmp eq i32 %.val41, -1
  br i1 %i.gb, label %.critedge40.thread, label %.critedge40

.critedge40:                                      ; preds = %.lr.ph.i.i, %bb.x, %"_ZZN12_GLOBAL__N_14Cost12RateRegisterERKNS_7FormulaEPKN4llvm4SCEVERNS4_15SmallPtrSetImplIS7_EERKNS_6LSRUseEbENK3$_0clES7_PKNS4_19TargetTransformInfoE.exit.thread", %"_ZZN12_GLOBAL__N_14Cost12RateRegisterERKNS_7FormulaEPKN4llvm4SCEVERNS4_15SmallPtrSetImplIS7_EERKNS_6LSRUseEbENK3$_0clES7_PKNS4_19TargetTransformInfoE.exit", %_ZNK4llvm15SmallPtrSetImplIPKNS_4SCEVEE5countES3_.exit, %bb.a
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !955
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !955
  %i.gf = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL19SetupCostDepthLimit, i64 120), align 8, !tbaa !984
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !569
  %i.gi = tail call fastcc noundef i32 @_ZL12getSetupCostPKN4llvm4SCEVEjRKNS_19TargetTransformInfoE(ptr noundef %2, i32 noundef %i.gf, ptr noundef nonnull align 8 dereferenceable(8) %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !1469
  %i.gl = add i32 %i.gk, %i.gi
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.gl, i32 65536)
  store i32 %.sroa.speculated, ptr %i.gj, align 8, !tbaa !1469
  %i.gm = load i16, ptr %i.a, align 8, !tbaa !438
  %i.gn = icmp eq i16 %i.gm, 6
  br i1 %i.gn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge40
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !568
  %i.gq = load ptr, ptr %0, align 8, !tbaa !567
  %i.gr = tail call noundef zeroext i1 @_ZN4llvm15ScalarEvolution26hasComputableLoopEvolutionEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152) %i.gp, ptr noundef nonnull %2, ptr noundef %i.gq) #23
  %i.gs = zext i1 %i.gr to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.critedge40
  %i.gt = phi i32 [ 0, %.critedge40 ], [ %i.gs, %bb.ae ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !1470
  %i.gw = add i32 %i.gv, %i.gt
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !1470
  br label %.critedge40.thread

.critedge40.thread:                               ; preds = %"_ZZN12_GLOBAL__N_14Cost12RateRegisterERKNS_7FormulaEPKN4llvm4SCEVERNS4_15SmallPtrSetImplIS7_EERKNS_6LSRUseEbENK3$_0clES7_PKNS4_19TargetTransformInfoE.exit.thread", %bb.d, %_ZNK4llvm8LoopBaseINS_10BasicBlockENS_4LoopEE8containsEPKS2_.exit, %.loopexit, %bb.af
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo18isIndexedLoadLegalENS0_14MemIndexedModeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo19isIndexedStoreLegalENS0_14MemIndexedModeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL12getSetupCostPKN4llvm4SCEVEjRKNS_19TargetTransformInfoE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %i.a, align 8, !tbaa !438  ; 2 uses
  %i.c = icmp eq i16 %i.b, 16
  br i1 %i.c, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a, %tailrecurse
  %i.d = phi i16 [ %i.ar, %tailrecurse ], [ %i.b, %bb.a ]
  %.tr117136 = phi i32 [ %i.ak, %tailrecurse ], [ %1, %bb.a ]
  %.tr135 = phi ptr [ %i.ao, %tailrecurse ], [ %0, %bb.a ]
  %accumulator.tr134 = phi i32 [ %i.ap, %tailrecurse ], [ 0, %bb.a ] ; 7 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse.backedge
  %i.e = phi i16 [ %i.s, %tailrecurse.backedge ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %i.f = phi i32 [ %.tr87.be, %tailrecurse.backedge ], [ %.tr117136, %.lr.ph.preheader ] ; 4 uses
  %.tr95 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %.tr135, %.lr.ph.preheader ] ; 7 uses
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.tr95, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !450  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.l = tail call { i64, i32 } @_ZNK4llvm19TargetTransformInfo13getIntImmCostERKNS_5APIntEPNS_4TypeENS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef %i.k, i32 noundef 0) #23 ; 2 uses
  %.fca.0.extract = extractvalue { i64, i32 } %i.l, 0
  %.fca.1.extract = extractvalue { i64, i32 } %i.l, 1
  %i.m = icmp ne i32 %.fca.1.extract, 0
  %i.n = icmp ne i64 %.fca.0.extract, 0
  %.not86 = select i1 %i.m, i1 true, i1 %i.n
  %. = zext i1 %.not86 to i32
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.o = icmp eq i32 %i.f, 0
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not115 = icmp eq i16 %i.e, 8
  br i1 %.not115, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.tr95, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !449
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.e, %bb.g
  %.tr.be.in.in.in = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.g ]
  %.tr87.be = add i32 %i.f, -1
  %.tr.be.in.in = load i64, ptr %.tr.be.in.in.in, align 8
  %.tr.be.in = and i64 %.tr.be.in.in, -8
  %.tr.be = inttoptr i64 %.tr.be.in to ptr        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.tr.be, i64 24
  %i.s = load i16, ptr %i.r, align 8, !tbaa !438  ; 2 uses
  %i.t = icmp eq i16 %i.s, 16
  br i1 %i.t, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.u = add i16 %i.e, -5
  %switch.i.i.i.i.i.i.i.i = icmp ult i16 %i.u, -3
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.tr95, i64 40
  br label %tailrecurse.backedge

bb.h:                                             ; preds = %bb.f
  switch i16 %i.e, label %.loopexit [
    i16 5, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 6, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 10, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 9, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 12, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 11, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 13, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 8, label %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
    i16 7, label %tailrecurse
  ]

_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit: ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.tr95, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !449  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.tr95, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !444  ; 2 uses
  %.idx = shl nuw nsw i64 %i.z, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %.not6.i = icmp eq i64 %i.z, 0
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit
  %i.ab = add i32 %i.f, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.08.i = phi i32 [ %i.af, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.057.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.x, %.lr.ph.i.preheader ] ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %.057.i, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = tail call fastcc noundef i32 @_ZL12getSetupCostPKN4llvm4SCEVEjRKNS_19TargetTransformInfoE(ptr noundef %i.ad, i32 noundef %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !1471
  %i.af = add i32 %i.ae, %.08.i                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.aa
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1472

tailrecurse:                                      ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr95, i64 40
  %.sroa.0.0.copyload.i47 = load i64, ptr %i.ah, align 8
  %i.ai = and i64 %.sroa.0.0.copyload.i47, -8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = add i32 %i.f, -1                        ; 2 uses
  %i.al = tail call fastcc noundef i32 @_ZL12getSetupCostPKN4llvm4SCEVEjRKNS_19TargetTransformInfoE(ptr noundef %i.aj, i32 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.am = getelementptr inbounds nuw i8, ptr %.tr95, i64 48
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.am, align 8
  %i.an = and i64 %.sroa.0.0.copyload.i49, -8
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = add i32 %i.al, %accumulator.tr134       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !438 ; 2 uses
  %i.as = icmp eq i16 %i.ar, 16
  br i1 %i.as, label %.loopexit, label %.lr.ph.preheader

.loopexit:                                        ; preds = %tailrecurse, %bb.h, %tailrecurse.backedge, %bb.c, %.lr.ph.i, %bb.a, %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit, %bb.b
  %accumulator.tr133 = phi i32 [ %accumulator.tr134, %bb.b ], [ %accumulator.tr134, %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit ], [ 0, %bb.a ], [ %accumulator.tr134, %tailrecurse.backedge ], [ %accumulator.tr134, %.lr.ph.i ], [ %accumulator.tr134, %bb.c ], [ %i.ap, %tailrecurse ], [ %accumulator.tr134, %bb.h ]
  %.5 = phi i32 [ %., %bb.b ], [ 0, %_ZN4llvm8dyn_castINS_12SCEVNAryExprEKNS_4SCEVEEEDcPT0_.exit ], [ 1, %bb.a ], [ 1, %tailrecurse.backedge ], [ %i.af, %.lr.ph.i ], [ 0, %bb.c ], [ 1, %tailrecurse ], [ 0, %bb.h ]
  %accumulator.ret.tr = add i32 %.5, %accumulator.tr133
  ret i32 %accumulator.ret.tr
}

declare noundef zeroext i1 @_ZN4llvm15ScalarEvolution26hasComputableLoopEvolutionEPKNS_4SCEVEPKNS_4LoopE(ptr noundef nonnull align 8 dereferenceable(1152), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo27isLegalAddScalableImmediateEl(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare { i64, i32 } @_ZNK4llvm19TargetTransformInfo13getIntImmCostERKNS_5APIntEPNS_4TypeENS0_14TargetCostKindE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(12), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #15

declare noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo19LSRWithInstrQueriesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_19ImmediateES4_NS3_6LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueES4_bl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i8 %2, i64 %3, i8 %4, i32 noundef %5, ptr %.0.val, i32 %.8.val, ptr noundef %6, i64 %.0.val1, i8 %.8.val3, i1 noundef zeroext %7, i64 noundef %8) unnamed_addr #3 {
bb.a:
  %.not27 = icmp eq i64 %.0.val1, 0
  br i1 %.not27, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %9 = icmp ne i8 %.8.val3, %2
  %10 = icmp ne i8 %.8.val3, %4
  %or.cond = select i1 %9, i1 true, i1 %10
  br i1 %or.cond, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = add i64 %.0.val1, %1                     ; 9 uses
  %i.b = icmp sgt i64 %i.a, %.0.val1
  %i.c = icmp slt i64 %1, 1
  %.not = xor i1 %i.c, %i.b
  br i1 %.not, label %bb.d, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %.0.val1, %3                     ; 9 uses
  %i.e = icmp sgt i64 %i.d, %.0.val1
  %i.f = icmp slt i64 %3, 1
  %.not35 = xor i1 %i.f, %i.e
  br i1 %.not35, label %bb.e, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.e:                                             ; preds = %bb.d
  switch i32 %5, label %bb.k [
    i32 2, label %.split
    i32 3, label %bb.f
    i32 0, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit
    i32 1, label %.split22
  ]

.split:                                           ; preds = %bb.e
  %i.g = trunc nuw i8 %2 to i1                    ; 2 uses
  %spec.select.i = select i1 %i.g, i64 0, i64 %i.a
  %spec.select2.i = select i1 %i.g, i64 %i.a, i64 0
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.0.val, ptr noundef %6, i64 noundef %spec.select.i, i1 noundef zeroext %7, i64 noundef %8, i32 noundef %.8.val, ptr noundef null, i64 noundef %spec.select2.i) #23
  br i1 %i.h, label %bb.l, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.f:                                             ; preds = %bb.e
  %.not30.i = icmp eq ptr %6, null
  br i1 %.not30.i, label %bb.g, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ne i64 %8, 0
  %or.cond.i = and i1 %7, %i.i
  br i1 %or.cond.i, label %.split23, label %bb.h

.split23:                                         ; preds = %bb.g
  %or.cond3.i = icmp eq i64 %8, -1
  %i.j = or i64 %i.d, %i.a
  %i.k = icmp eq i64 %i.j, 0
  %spec.select31 = and i1 %i.k, %or.cond3.i
  br label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.h:                                             ; preds = %bb.g
  %.old.i = add i64 %8, -1
  %or.cond3.old.i = icmp ult i64 %.old.i, -2
  br i1 %or.cond3.old.i, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not7.i = icmp eq i64 %i.a, 0
  br i1 %.not7.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = trunc nuw i8 %2 to i1
  br i1 %i.l, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68, label %.split21

.split21:                                         ; preds = %bb.j
  %i.m = icmp eq i64 %8, 0
  %i.n = sub i64 0, %i.a
  %spec.select4.i = select i1 %i.m, i64 %i.n, i64 %i.a
  %i.o = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %spec.select4.i) #23
  br i1 %i.o, label %bb.m, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

.split22:                                         ; preds = %bb.e
  %.not.i = icmp eq ptr %6, null
  %i.p = add i64 %8, 1
  %or.cond7.i = icmp ult i64 %i.p, 2
  %or.cond31.i = and i1 %.not.i, %or.cond7.i
  %i.q = or i64 %i.d, %i.a
  %i.r = icmp eq i64 %i.q, 0
  %spec.select = and i1 %i.r, %or.cond31.i
  br label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.k:                                             ; preds = %bb.e
  unreachable

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit: ; preds = %bb.e
  %i.s = icmp eq ptr %6, null
  %i.t = or i64 %8, %i.a
  %i.u = or i64 %i.d, %i.t
  %i.v = icmp eq i64 %i.u, 0
  %spec.select28 = and i1 %i.s, %i.v
  br label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.l:                                             ; preds = %.split
  %i.w = trunc nuw i8 %4 to i1                    ; 2 uses
  %spec.select.i66 = select i1 %i.w, i64 0, i64 %i.d
  %spec.select2.i67 = select i1 %i.w, i64 %i.d, i64 0
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo21isLegalAddressingModeEPNS_4TypeEPNS_11GlobalValueElbljPNS_11InstructionEl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.0.val, ptr noundef %6, i64 noundef %spec.select.i66, i1 noundef zeroext %7, i64 noundef %8, i32 noundef %.8.val, ptr noundef null, i64 noundef %spec.select2.i67) #23
  br label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

bb.m:                                             ; preds = %bb.i, %.split21
  %.not7.i62 = icmp eq i64 %i.d, 0
  br i1 %.not7.i62, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = trunc nuw i8 %4 to i1
  br i1 %i.y, label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = icmp eq i64 %8, 0
  %i.aa = sub i64 0, %i.d
  %spec.select4.i63 = select i1 %i.z, i64 %i.aa, i64 %i.d
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm19TargetTransformInfo20isLegalICmpImmediateEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %spec.select4.i63) #23
  br label %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68

_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit68: ; preds = %.split23, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit, %.split22, %bb.j, %bb.h, %bb.f, %bb.o, %bb.n, %bb.m, %bb.l, %.split21, %.split, %bb.c, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ %spec.select31, %.split23 ], [ false, %bb.n ], [ false, %.split ], [ false, %.split21 ], [ %spec.select, %.split22 ], [ %i.x, %bb.l ], [ false, %bb.h ], [ %i.ab, %bb.o ], [ %spec.select28, %_ZL20isAMCompletelyFoldedRKN4llvm19TargetTransformInfoEN12_GLOBAL__N_16LSRUse8KindTypeENS3_11MemAccessTyEPNS_11GlobalValueENS3_9ImmediateEblPNS_11InstructionE.exit ], [ true, %bb.m ]
  ret i1 %.1
}

declare { i64, i32 } @_ZNK4llvm19TargetTransformInfo20getScalingFactorCostEPNS_4TypeEPNS_11GlobalValueENS_11StackOffsetEblj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, i64, i64, i1 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12), i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS7_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !665, !noalias !1473 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !699, !noalias !1473 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !662, !noalias !1473 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !157    ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !478
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !625

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit, label %bb.c, !prof !166

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !478
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !626, !llvm.loop !1478

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1479
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !1480
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !166

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1479
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !699
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !665
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS2_12DenseSetPairImEEEEmS3_S5_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
end_hunk_3
