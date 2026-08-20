inline.NumInlined: 3084
inline.NumDeleted: 856
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN4Luau7CodeGenL15constPropInInstERNS0_14ConstPropStateERNS0_9IrBuilderERNS0_10IrFunctionERNS0_7IrBlockERNS0_6IrInstEj:bb.a

bb.ayw:                                           ; preds = %bb.ayv
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.esf, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4589

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4589:   ; preds = %bb.ayv, %bb.ayw
  %i.esi = load ptr, ptr %i.esf, align 8, !tbaa !114
  %.sroa.076.0.copyload = load i32, ptr %i.esi, align 4, !tbaa !30
  %i.esj = lshr i32 %.sroa.076.0.copyload, 4      ; 2 uses
  %i.esk = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.esl = load i32, ptr %i.esk, align 8, !tbaa !117
  %spec.select.i4590 = tail call i32 @llvm.smax.i32(i32 %i.esj, i32 %i.esl)
  store i32 %spec.select.i4590, ptr %i.esk, align 8, !tbaa !117
  %i.esm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.esn = zext nneg i32 %i.esj to i64
  %i.eso = getelementptr inbounds nuw [12 x i8], ptr %i.esm, i64 %i.esn ; 3 uses
  store i8 -1, ptr %i.eso, align 4, !tbaa !122
  %i.esp = getelementptr inbounds nuw i8, ptr %i.eso, i64 4
  store i32 0, ptr %i.esp, align 4, !tbaa !30
  %i.esq = getelementptr inbounds nuw i8, ptr %i.eso, i64 8 ; 2 uses
  %i.esr = load i32, ptr %i.esq, align 4, !tbaa !126
  %i.ess = add i32 %i.esr, 1
  store i32 %i.ess, ptr %i.esq, align 4, !tbaa !126
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.ayx:                                           ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.ayy:                                           ; preds = %bb.a
  %i.est = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.esu = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.esv = load i32, ptr %i.esu, align 8, !tbaa !112
  %.not.i4591.not = icmp eq i32 %i.esv, 0
  br i1 %.not.i4591.not, label %bb.ayz, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4592, !prof !113

bb.ayz:                                           ; preds = %bb.ayy
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.est, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4592

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4592:   ; preds = %bb.ayy, %bb.ayz
  %i.esw = load ptr, ptr %i.est, align 8, !tbaa !114
  %.sroa.075.0.copyload = load i32, ptr %i.esw, align 4, !tbaa !30
  %i.esx = lshr i32 %.sroa.075.0.copyload, 4      ; 2 uses
  %i.esy = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.esz = load i32, ptr %i.esy, align 8, !tbaa !117
  %spec.select.i4593 = tail call i32 @llvm.smax.i32(i32 %i.esx, i32 %i.esz)
  store i32 %spec.select.i4593, ptr %i.esy, align 8, !tbaa !117
  %i.eta = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.etb = zext nneg i32 %i.esx to i64
  %i.etc = getelementptr inbounds nuw [12 x i8], ptr %i.eta, i64 %i.etb ; 3 uses
  store i8 -1, ptr %i.etc, align 4, !tbaa !122
  %i.etd = getelementptr inbounds nuw i8, ptr %i.etc, i64 4
  store i32 0, ptr %i.etd, align 4, !tbaa !30
  %i.ete = getelementptr inbounds nuw i8, ptr %i.etc, i64 8 ; 2 uses
  %i.etf = load i32, ptr %i.ete, align 4, !tbaa !126
  %i.etg = add i32 %i.etf, 1
  store i32 %i.etg, ptr %i.ete, align 4, !tbaa !126
  %i.eth = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.eti = load i8, ptr %i.eth, align 8, !tbaa !32, !range !101, !noundef !102
  %i.etj = trunc nuw i8 %i.eti to i1
  br i1 %i.etj, label %bb.azb, label %bb.aza

bb.aza:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4592
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azb:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4592
  tail call void @_ZN4Luau7CodeGen14ConstPropState26invalidateValuePropagationEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azc:                                           ; preds = %bb.a
  %i.etk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.etl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.etm = load i32, ptr %i.etl, align 8, !tbaa !112 ; 2 uses
  %.not.i4594.not = icmp eq i32 %i.etm, 0
  br i1 %.not.i4594.not, label %bb.azd, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4595, !prof !113

bb.azd:                                           ; preds = %bb.azc
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.etk, i32 noundef 1)
  %.pre5406 = load i32, ptr %i.etl, align 8, !tbaa !112
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4595

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4595:   ; preds = %bb.azc, %bb.azd
  %i.etn = phi i32 [ %i.etm, %bb.azc ], [ %.pre5406, %bb.azd ]
  %i.eto = load ptr, ptr %i.etk, align 8, !tbaa !114 ; 2 uses
  %.sroa.074.0.copyload = load i32, ptr %i.eto, align 4, !tbaa !30
  %i.etp = lshr i32 %.sroa.074.0.copyload, 4
  %.not.i4596 = icmp ugt i32 %i.etn, 1
  br i1 %.not.i4596, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4597, label %bb.aze, !prof !169

bb.aze:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4595
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.etk, i32 noundef 2)
  %.pre5407 = load ptr, ptr %i.etk, align 8, !tbaa !114
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4597

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4597:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4595, %bb.aze
  %i.etq = phi ptr [ %i.eto, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4595 ], [ %.pre5407, %bb.aze ]
  %i.etr = getelementptr inbounds nuw i8, ptr %i.etq, i64 4
  %.sroa.073.0.copyload = load i32, ptr %i.etr, align 4, !tbaa !30
  %i.ets = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ett = lshr i32 %.sroa.073.0.copyload, 4
  %i.etu = zext nneg i32 %i.ett to i64
  %i.etv = load ptr, ptr %i.ets, align 8, !tbaa !354
  %i.etw = getelementptr inbounds nuw [16 x i8], ptr %i.etv, i64 %i.etu
  %i.etx = getelementptr inbounds nuw i8, ptr %i.etw, i64 8
  %i.ety = load i32, ptr %i.etx, align 8, !tbaa !30
  tail call void @_ZN4Luau7CodeGen14ConstPropState23invalidateRegisterRangeEii(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 noundef %i.etp, i32 noundef %i.ety)
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azf:                                           ; preds = %bb.a
  %i.etz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.eua = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.eub = load i32, ptr %i.eua, align 8, !tbaa !112
  %.not.i4598 = icmp ugt i32 %i.eub, 1
  br i1 %.not.i4598, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4599, label %bb.azg, !prof !169

bb.azg:                                           ; preds = %bb.azf
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.etz, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4599

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4599:   ; preds = %bb.azf, %bb.azg
  %i.euc = load ptr, ptr %i.etz, align 8, !tbaa !114
  %i.eud = getelementptr inbounds nuw i8, ptr %i.euc, i64 4
  %.sroa.070.0.copyload = load i32, ptr %i.eud, align 4, !tbaa !30
  %i.eue = tail call noundef ptr @_ZN4Luau7CodeGen14ConstPropState29getPreviousVersionedLoadIndexENS0_5IrCmdENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(3704) %0, i8 noundef zeroext 2, i32 %.sroa.070.0.copyload) ; 2 uses
  %.not2261 = icmp eq ptr %i.eue, null
  br i1 %.not2261, label %bb.azl, label %bb.azh

bb.azh:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4599
  %i.euf = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.eug = tail call noundef ptr @_ZN4Luau12DenseHashMapIjiSt4hashIjESt8equal_toIjEE4findERKj(ptr noundef nonnull align 8 dereferenceable(32) %i.euf, ptr noundef nonnull align 4 dereferenceable(4) %i.eue) ; 3 uses
  %.not2262 = icmp eq ptr %i.eug, null
  br i1 %.not2262, label %bb.azl, label %bb.azi

bb.azi:                                           ; preds = %bb.azh
  %i.euh = load i32, ptr %i.eug, align 4, !tbaa !158 ; 2 uses
  %i.eui = icmp sgt i32 %i.euh, -1
  br i1 %i.eui, label %bb.azj, label %bb.azl

bb.azj:                                           ; preds = %bb.azi
  %i.euj = load i32, ptr %i.eua, align 8, !tbaa !112
  %.not.i4600 = icmp ugt i32 %i.euj, 5
  br i1 %.not.i4600, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4601, label %bb.azk, !prof !169

bb.azk:                                           ; preds = %bb.azj
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.etz, i32 noundef 6)
  %.pre5432 = load i32, ptr %i.eug, align 4, !tbaa !158
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4601

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4601:   ; preds = %bb.azj, %bb.azk
  %i.euk = phi i32 [ %i.euh, %bb.azj ], [ %.pre5432, %bb.azk ]
  %i.eul = load ptr, ptr %i.etz, align 8, !tbaa !114
  %i.eum = getelementptr inbounds nuw i8, ptr %i.eul, i64 20
  %i.eun = tail call i32 @_ZN4Luau7CodeGen9IrBuilder9constUintEj(ptr noundef nonnull align 8 dereferenceable(1056) %1, i32 noundef %i.euk)
  tail call void @_ZN4Luau7CodeGen7replaceERNS0_10IrFunctionERNS0_4IrOpES3_(ptr noundef nonnull align 8 dereferenceable(928) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.eum, i32 %i.eun)
  br label %bb.azl

bb.azl:                                           ; preds = %bb.azh, %bb.azi, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4601, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4599
  tail call void @_ZN4Luau7CodeGen14ConstPropState26invalidateValuePropagationEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  tail call void @_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  %i.euo = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.eup = load ptr, ptr %i.euo, align 8, !tbaa !141 ; 2 uses
  %i.euq = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 2 uses
  %i.eur = load ptr, ptr %i.euq, align 8, !tbaa !170
  %.not.i.i.i = icmp eq ptr %i.eur, %i.eup
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.azl
  store ptr %i.eup, ptr %i.euq, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i

_ZNSt6vectorIjSaIjEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %bb.azl
  %i.eus = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.eut = load ptr, ptr %i.eus, align 8, !tbaa !145 ; 2 uses
  %i.euu = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.euv = load ptr, ptr %i.euu, align 8, !tbaa !239
  %.not.i.i1.i = icmp eq ptr %i.euv, %i.eut
  br i1 %.not.i.i1.i, label %.critedge2377, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i
  store ptr %i.eut, ptr %i.euu, align 8, !tbaa !239
  br label %.critedge2377

bb.azm:                                           ; preds = %bb.a
  %i.euw = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eux = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.euy = load i32, ptr %i.eux, align 8, !tbaa !112
  %.not.i4602.not = icmp eq i32 %i.euy, 0
  br i1 %.not.i4602.not, label %bb.azn, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4603, !prof !113

bb.azn:                                           ; preds = %bb.azm
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.euw, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4603

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4603:   ; preds = %bb.azm, %bb.azn
  %i.euz = load ptr, ptr %i.euw, align 8, !tbaa !114
  %.sroa.066.0.copyload = load i32, ptr %i.euz, align 4, !tbaa !30
  %i.eva = lshr i32 %.sroa.066.0.copyload, 4      ; 4 uses
  %i.evb = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.evc = load i32, ptr %i.evb, align 8, !tbaa !117 ; 4 uses
  %.not4.i = icmp sgt i32 %i.eva, %i.evc
  br i1 %.not4.i, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4603
  %i.evd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eve = zext nneg i32 %i.eva to i64            ; 3 uses
  %i.evf = add nuw i32 %i.evc, 1
  %74 = add i32 %i.evc, %i.eva
  %75 = and i32 %74, 1
  %lcmp.mod5991.not.not = icmp eq i32 %75, 0
  br i1 %lcmp.mod5991.not.not, label %.prol.loopexit5989.unr-lcssa, label %.prol.loopexit5989

.prol.loopexit5989.unr-lcssa:                     ; preds = %.lr.ph.i
  %i.evg = getelementptr inbounds nuw [12 x i8], ptr %i.evd, i64 %i.eve ; 3 uses
  store i8 -1, ptr %i.evg, align 4, !tbaa !122
  %i.evh = getelementptr inbounds nuw i8, ptr %i.evg, i64 4
  store i32 0, ptr %i.evh, align 4, !tbaa !30
  %i.evi = getelementptr inbounds nuw i8, ptr %i.evg, i64 8 ; 2 uses
  %i.evj = load i32, ptr %i.evi, align 4, !tbaa !126
  %i.evk = add i32 %i.evj, 1
  store i32 %i.evk, ptr %i.evi, align 4, !tbaa !126
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.eve, 1
  br label %.prol.loopexit5989

.prol.loopexit5989:                               ; preds = %.prol.loopexit5989.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.eve, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit5989.unr-lcssa ]
  %i.evl = icmp eq i32 %i.evc, %i.eva
  br i1 %i.evl, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit5989, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit5989 ] ; 3 uses
  %i.evm = getelementptr inbounds nuw [12 x i8], ptr %i.evd, i64 %indvars.iv.i ; 3 uses
  store i8 -1, ptr %i.evm, align 4, !tbaa !122
  %i.evn = getelementptr inbounds nuw i8, ptr %i.evm, i64 4
  store i32 0, ptr %i.evn, align 4, !tbaa !30
  %i.evo = getelementptr inbounds nuw i8, ptr %i.evm, i64 8 ; 2 uses
  %i.evp = load i32, ptr %i.evo, align 4, !tbaa !126
  %i.evq = add i32 %i.evp, 1
  store i32 %i.evq, ptr %i.evo, align 4, !tbaa !126
  %i.evr = getelementptr inbounds nuw [12 x i8], ptr %i.evd, i64 %indvars.iv.i ; 3 uses
  %i.evs = getelementptr inbounds nuw i8, ptr %i.evr, i64 12
  store i8 -1, ptr %i.evs, align 4, !tbaa !122
  %i.evt = getelementptr inbounds nuw i8, ptr %i.evr, i64 16
  store i32 0, ptr %i.evt, align 4, !tbaa !30
  %i.evu = getelementptr inbounds nuw i8, ptr %i.evr, i64 20 ; 2 uses
  %i.evv = load i32, ptr %i.evu, align 4, !tbaa !126
  %i.evw = add i32 %i.evv, 1
  store i32 %i.evw, ptr %i.evu, align 4, !tbaa !126
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %lftr.wideiv.i.1 = trunc i64 %indvars.iv.next.i.1 to i32
  %exitcond.not.i.1 = icmp eq i32 %i.evf, %lftr.wideiv.i.1
  br i1 %exitcond.not.i.1, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit, label %.lr.ph.i.new, !llvm.loop !404

_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit: ; preds = %.prol.loopexit5989, %.lr.ph.i.new, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4603
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azo:                                           ; preds = %bb.a
  %i.evx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.evy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.evz = load i32, ptr %i.evy, align 8, !tbaa !112
  %.not.i4604.not = icmp eq i32 %i.evz, 0
  br i1 %.not.i4604.not, label %bb.azp, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4605, !prof !113

bb.azp:                                           ; preds = %bb.azo
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.evx, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4605

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4605:   ; preds = %bb.azo, %bb.azp
  %i.ewa = load ptr, ptr %i.evx, align 8, !tbaa !114
  %.sroa.065.0.copyload = load i32, ptr %i.ewa, align 4, !tbaa !30 ; 2 uses
  %i.ewb = lshr i32 %.sroa.065.0.copyload, 4
  %i.ewc = add nuw nsw i32 %i.ewb, 2              ; 2 uses
  %i.ewd = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.ewe = load i32, ptr %i.ewd, align 8, !tbaa !117 ; 4 uses
  %.not4.i4606 = icmp sgt i32 %i.ewc, %i.ewe
  br i1 %.not4.i4606, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4612, label %.lr.ph.i4607

.lr.ph.i4607:                                     ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4605
  %i.ewf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ewg = zext nneg i32 %i.ewc to i64            ; 3 uses
  %i.ewh = add nuw i32 %i.ewe, 1
  %i.ewi = lshr i32 %.sroa.065.0.copyload, 4      ; 2 uses
  %76 = add i32 %i.ewe, -2
  %77 = sub i32 %i.ewi, %i.ewe
  %78 = and i32 %77, 1
  %lcmp.mod5987.not.not = icmp eq i32 %78, 0
  br i1 %lcmp.mod5987.not.not, label %.prol.loopexit5985.unr-lcssa, label %.prol.loopexit5985

.prol.loopexit5985.unr-lcssa:                     ; preds = %.lr.ph.i4607
  %i.ewj = getelementptr inbounds nuw [12 x i8], ptr %i.ewf, i64 %i.ewg ; 3 uses
  store i8 -1, ptr %i.ewj, align 4, !tbaa !122
  %i.ewk = getelementptr inbounds nuw i8, ptr %i.ewj, i64 4
  store i32 0, ptr %i.ewk, align 4, !tbaa !30
  %i.ewl = getelementptr inbounds nuw i8, ptr %i.ewj, i64 8 ; 2 uses
  %i.ewm = load i32, ptr %i.ewl, align 4, !tbaa !126
  %i.ewn = add i32 %i.ewm, 1
  store i32 %i.ewn, ptr %i.ewl, align 4, !tbaa !126
  %indvars.iv.next.i4609.prol = add nuw nsw i64 %i.ewg, 1
  br label %.prol.loopexit5985

.prol.loopexit5985:                               ; preds = %.prol.loopexit5985.unr-lcssa, %.lr.ph.i4607
  %indvars.iv.i4608.unr = phi i64 [ %i.ewg, %.lr.ph.i4607 ], [ %indvars.iv.next.i4609.prol, %.prol.loopexit5985.unr-lcssa ]
  %i.ewo = icmp eq i32 %76, %i.ewi
  br i1 %i.ewo, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4612, label %.lr.ph.i4607.new

.lr.ph.i4607.new:                                 ; preds = %.prol.loopexit5985, %.lr.ph.i4607.new
  %indvars.iv.i4608 = phi i64 [ %indvars.iv.next.i4609.1, %.lr.ph.i4607.new ], [ %indvars.iv.i4608.unr, %.prol.loopexit5985 ] ; 3 uses
  %i.ewp = getelementptr inbounds nuw [12 x i8], ptr %i.ewf, i64 %indvars.iv.i4608 ; 3 uses
  store i8 -1, ptr %i.ewp, align 4, !tbaa !122
  %i.ewq = getelementptr inbounds nuw i8, ptr %i.ewp, i64 4
  store i32 0, ptr %i.ewq, align 4, !tbaa !30
  %i.ewr = getelementptr inbounds nuw i8, ptr %i.ewp, i64 8 ; 2 uses
  %i.ews = load i32, ptr %i.ewr, align 4, !tbaa !126
  %i.ewt = add i32 %i.ews, 1
  store i32 %i.ewt, ptr %i.ewr, align 4, !tbaa !126
  %i.ewu = getelementptr inbounds nuw [12 x i8], ptr %i.ewf, i64 %indvars.iv.i4608 ; 3 uses
  %i.ewv = getelementptr inbounds nuw i8, ptr %i.ewu, i64 12
  store i8 -1, ptr %i.ewv, align 4, !tbaa !122
  %i.eww = getelementptr inbounds nuw i8, ptr %i.ewu, i64 16
  store i32 0, ptr %i.eww, align 4, !tbaa !30
  %i.ewx = getelementptr inbounds nuw i8, ptr %i.ewu, i64 20 ; 2 uses
  %i.ewy = load i32, ptr %i.ewx, align 4, !tbaa !126
  %i.ewz = add i32 %i.ewy, 1
  store i32 %i.ewz, ptr %i.ewx, align 4, !tbaa !126
  %indvars.iv.next.i4609.1 = add nuw nsw i64 %indvars.iv.i4608, 2 ; 2 uses
  %lftr.wideiv.i4610.1 = trunc i64 %indvars.iv.next.i4609.1 to i32
  %exitcond.not.i4611.1 = icmp eq i32 %i.ewh, %lftr.wideiv.i4610.1
  br i1 %exitcond.not.i4611.1, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4612, label %.lr.ph.i4607.new, !llvm.loop !404

_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4612: ; preds = %.prol.loopexit5985, %.lr.ph.i4607.new, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4605
  tail call void @_ZN4Luau7CodeGen14ConstPropState26invalidateValuePropagationEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  tail call void @_ZN4Luau7CodeGen14ConstPropState23invalidateHeapTableDataEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  %i.exa = getelementptr inbounds nuw i8, ptr %0, i64 3504
  %i.exb = load ptr, ptr %i.exa, align 8, !tbaa !141 ; 2 uses
  %i.exc = getelementptr inbounds nuw i8, ptr %0, i64 3512 ; 2 uses
  %i.exd = load ptr, ptr %i.exc, align 8, !tbaa !170
  %.not.i.i.i4613 = icmp eq ptr %i.exd, %i.exb
  br i1 %.not.i.i.i4613, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i4615, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i4614

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i4614:  ; preds = %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4612
  store ptr %i.exb, ptr %i.exc, align 8, !tbaa !170
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.i4615

_ZNSt6vectorIjSaIjEE5clearEv.exit.i4615:          ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i4614, %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4612
  %i.exe = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.exf = load ptr, ptr %i.exe, align 8, !tbaa !145 ; 2 uses
  %i.exg = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 2 uses
  %i.exh = load ptr, ptr %i.exg, align 8, !tbaa !239
  %.not.i.i1.i4616 = icmp eq ptr %i.exh, %i.exf
  br i1 %.not.i.i1.i4616, label %.critedge2377, label %_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i4617

_ZSt8_DestroyIPN4Luau7CodeGen19BufferLoadStoreInfoES2_EvT_S4_RSaIT0_E.exit.i.i.i4617: ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.i4615
  store ptr %i.exf, ptr %i.exg, align 8, !tbaa !239
  br label %.critedge2377

bb.azq:                                           ; preds = %bb.a
  %i.exi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.exj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.exk = load i32, ptr %i.exj, align 8, !tbaa !112
  %.not.i4619.not = icmp eq i32 %i.exk, 0
  br i1 %.not.i4619.not, label %bb.azr, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4620, !prof !113

bb.azr:                                           ; preds = %bb.azq
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.exi, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4620

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4620:   ; preds = %bb.azq, %bb.azr
  %i.exl = load ptr, ptr %i.exi, align 8, !tbaa !114
  %.sroa.064.0.copyload = load i32, ptr %i.exl, align 4, !tbaa !30 ; 2 uses
  %i.exm = lshr i32 %.sroa.064.0.copyload, 4
  %i.exn = add nuw nsw i32 %i.exm, 2              ; 2 uses
  %i.exo = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.exp = load i32, ptr %i.exo, align 8, !tbaa !117 ; 4 uses
  %.not4.i4621 = icmp sgt i32 %i.exn, %i.exp
  br i1 %.not4.i4621, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4627, label %.lr.ph.i4622

.lr.ph.i4622:                                     ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4620
  %i.exq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.exr = zext nneg i32 %i.exn to i64            ; 3 uses
  %i.exs = add nuw i32 %i.exp, 1
  %i.ext = lshr i32 %.sroa.064.0.copyload, 4      ; 2 uses
  %79 = add i32 %i.exp, -2
  %80 = sub i32 %i.ext, %i.exp
  %81 = and i32 %80, 1
  %lcmp.mod.not.not = icmp eq i32 %81, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i4622
  %i.exu = getelementptr inbounds nuw [12 x i8], ptr %i.exq, i64 %i.exr ; 3 uses
  store i8 -1, ptr %i.exu, align 4, !tbaa !122
  %i.exv = getelementptr inbounds nuw i8, ptr %i.exu, i64 4
  store i32 0, ptr %i.exv, align 4, !tbaa !30
  %i.exw = getelementptr inbounds nuw i8, ptr %i.exu, i64 8 ; 2 uses
  %i.exx = load i32, ptr %i.exw, align 4, !tbaa !126
  %i.exy = add i32 %i.exx, 1
  store i32 %i.exy, ptr %i.exw, align 4, !tbaa !126
  %indvars.iv.next.i4624.prol = add nuw nsw i64 %i.exr, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i4622
  %indvars.iv.i4623.unr = phi i64 [ %i.exr, %.lr.ph.i4622 ], [ %indvars.iv.next.i4624.prol, %.prol.loopexit.unr-lcssa ]
  %i.exz = icmp eq i32 %79, %i.ext
  br i1 %i.exz, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4627, label %.lr.ph.i4622.new

.lr.ph.i4622.new:                                 ; preds = %.prol.loopexit, %.lr.ph.i4622.new
  %indvars.iv.i4623 = phi i64 [ %indvars.iv.next.i4624.1, %.lr.ph.i4622.new ], [ %indvars.iv.i4623.unr, %.prol.loopexit ] ; 3 uses
  %i.eya = getelementptr inbounds nuw [12 x i8], ptr %i.exq, i64 %indvars.iv.i4623 ; 3 uses
  store i8 -1, ptr %i.eya, align 4, !tbaa !122
  %i.eyb = getelementptr inbounds nuw i8, ptr %i.eya, i64 4
  store i32 0, ptr %i.eyb, align 4, !tbaa !30
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.eya, i64 8 ; 2 uses
  %i.eyd = load i32, ptr %i.eyc, align 4, !tbaa !126
  %i.eye = add i32 %i.eyd, 1
  store i32 %i.eye, ptr %i.eyc, align 4, !tbaa !126
  %i.eyf = getelementptr inbounds nuw [12 x i8], ptr %i.exq, i64 %indvars.iv.i4623 ; 3 uses
  %i.eyg = getelementptr inbounds nuw i8, ptr %i.eyf, i64 12
  store i8 -1, ptr %i.eyg, align 4, !tbaa !122
  %i.eyh = getelementptr inbounds nuw i8, ptr %i.eyf, i64 16
  store i32 0, ptr %i.eyh, align 4, !tbaa !30
  %i.eyi = getelementptr inbounds nuw i8, ptr %i.eyf, i64 20 ; 2 uses
  %i.eyj = load i32, ptr %i.eyi, align 4, !tbaa !126
  %i.eyk = add i32 %i.eyj, 1
  store i32 %i.eyk, ptr %i.eyi, align 4, !tbaa !126
  %indvars.iv.next.i4624.1 = add nuw nsw i64 %indvars.iv.i4623, 2 ; 2 uses
  %lftr.wideiv.i4625.1 = trunc i64 %indvars.iv.next.i4624.1 to i32
  %exitcond.not.i4626.1 = icmp eq i32 %i.exs, %lftr.wideiv.i4625.1
  br i1 %exitcond.not.i4626.1, label %_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4627, label %.lr.ph.i4622.new, !llvm.loop !404

_ZN4Luau7CodeGen14ConstPropState23invalidateRegistersFromEi.exit4627: ; preds = %.prol.loopexit, %.lr.ph.i4622.new, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4620
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azs:                                           ; preds = %bb.a
  %i.eyl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.eym = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eyn = load i32, ptr %i.eym, align 8, !tbaa !112
  %.not.i4628 = icmp ugt i32 %i.eyn, 1
  br i1 %.not.i4628, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4629, label %bb.azt, !prof !169

bb.azt:                                           ; preds = %bb.azs
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.eyl, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4629

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4629:   ; preds = %bb.azs, %bb.azt
  %i.eyo = load ptr, ptr %i.eyl, align 8, !tbaa !114
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyo, i64 4
  %.sroa.063.0.copyload = load i32, ptr %i.eyp, align 4, !tbaa !30
  %i.eyq = lshr i32 %.sroa.063.0.copyload, 4      ; 2 uses
  %i.eyr = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.eys = load i32, ptr %i.eyr, align 8, !tbaa !117
  %spec.select.i4630 = tail call i32 @llvm.smax.i32(i32 %i.eyq, i32 %i.eys)
  store i32 %spec.select.i4630, ptr %i.eyr, align 8, !tbaa !117
  %i.eyt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eyu = zext nneg i32 %i.eyq to i64
  %i.eyv = getelementptr inbounds nuw [12 x i8], ptr %i.eyt, i64 %i.eyu ; 3 uses
  store i8 -1, ptr %i.eyv, align 4, !tbaa !122
  %i.eyw = getelementptr inbounds nuw i8, ptr %i.eyv, i64 4
  store i32 0, ptr %i.eyw, align 4, !tbaa !30
  %i.eyx = getelementptr inbounds nuw i8, ptr %i.eyv, i64 8 ; 2 uses
  %i.eyy = load i32, ptr %i.eyx, align 4, !tbaa !126
  %i.eyz = add i32 %i.eyy, 1
  store i32 %i.eyz, ptr %i.eyx, align 4, !tbaa !126
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azu:                                           ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azv:                                           ; preds = %bb.a
  %i.eza = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ezb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ezc = load i32, ptr %i.ezb, align 8, !tbaa !112
  %.not.i4631 = icmp ugt i32 %i.ezc, 1
  br i1 %.not.i4631, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4632, label %bb.azw, !prof !169

bb.azw:                                           ; preds = %bb.azv
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.eza, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4632

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4632:   ; preds = %bb.azv, %bb.azw
  %i.ezd = load ptr, ptr %i.eza, align 8, !tbaa !114
  %i.eze = getelementptr inbounds nuw i8, ptr %i.ezd, i64 4
  %.sroa.062.0.copyload = load i32, ptr %i.eze, align 4, !tbaa !30
  %i.ezf = lshr i32 %.sroa.062.0.copyload, 4      ; 2 uses
  %i.ezg = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 2 uses
  %i.ezh = load i32, ptr %i.ezg, align 8, !tbaa !117
  %spec.select.i4633 = tail call i32 @llvm.smax.i32(i32 %i.ezf, i32 %i.ezh)
  store i32 %spec.select.i4633, ptr %i.ezg, align 8, !tbaa !117
  %i.ezi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ezj = zext nneg i32 %i.ezf to i64
  %i.ezk = getelementptr inbounds nuw [12 x i8], ptr %i.ezi, i64 %i.ezj ; 3 uses
  store i8 -1, ptr %i.ezk, align 4, !tbaa !122
  %i.ezl = getelementptr inbounds nuw i8, ptr %i.ezk, i64 4
  store i32 0, ptr %i.ezl, align 4, !tbaa !30
  %i.ezm = getelementptr inbounds nuw i8, ptr %i.ezk, i64 8 ; 2 uses
  %i.ezn = load i32, ptr %i.ezm, align 4, !tbaa !126
  %i.ezo = add i32 %i.ezn, 1
  store i32 %i.ezo, ptr %i.ezm, align 4, !tbaa !126
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azx:                                           ; preds = %bb.a
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.azy:                                           ; preds = %bb.a
  %i.ezp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ezq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ezr = load i32, ptr %i.ezq, align 8, !tbaa !112
  %.not.i4634 = icmp ugt i32 %i.ezr, 1
  br i1 %.not.i4634, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4637, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4635, !prof !169

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4635:   ; preds = %bb.azy
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ezp, i32 noundef 2)
  %.pre5332 = load i32, ptr %i.ezq, align 8, !tbaa !112
  %i.ezs = icmp ugt i32 %.pre5332, 1
  br i1 %i.ezs, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4637, label %bb.azz, !prof !391

bb.azz:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4635
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ezp, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4637

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4637:   ; preds = %bb.azy, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4635, %bb.azz
  %i.ezt = load ptr, ptr %i.ezp, align 8, !tbaa !114
  %i.ezu = getelementptr inbounds nuw i8, ptr %i.ezt, i64 4
  %.sroa.061.0.copyload = load i32, ptr %i.ezu, align 4, !tbaa !30
  %i.ezv = lshr i32 %.sroa.061.0.copyload, 4      ; 2 uses
  %i.ezw = getelementptr inbounds nuw i8, ptr %0, i64 3088 ; 4 uses
  %i.ezx = load i32, ptr %i.ezw, align 8, !tbaa !117
  %spec.select.i4638 = tail call i32 @llvm.smax.i32(i32 %i.ezv, i32 %i.ezx)
  store i32 %spec.select.i4638, ptr %i.ezw, align 8, !tbaa !117
  %i.ezy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ezz = zext nneg i32 %i.ezv to i64
  %i.faa = getelementptr inbounds nuw [12 x i8], ptr %i.ezy, i64 %i.ezz ; 3 uses
  store i8 -1, ptr %i.faa, align 4, !tbaa !122
  %i.fab = getelementptr inbounds nuw i8, ptr %i.faa, i64 4
  store i32 0, ptr %i.fab, align 4, !tbaa !30
  %i.fac = getelementptr inbounds nuw i8, ptr %i.faa, i64 8 ; 2 uses
  %i.fad = load i32, ptr %i.fac, align 4, !tbaa !126
  %i.fae = add i32 %i.fad, 1
  store i32 %i.fae, ptr %i.fac, align 4, !tbaa !126
  %i.faf = load i32, ptr %i.ezq, align 8, !tbaa !112
  %.not.i4639 = icmp ugt i32 %i.faf, 1
  br i1 %.not.i4639, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4642, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4640, !prof !169

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4640:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4637
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ezp, i32 noundef 2)
  %.pre5333 = load i32, ptr %i.ezq, align 8, !tbaa !112
  %i.fag = icmp ugt i32 %.pre5333, 1
  br i1 %i.fag, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4642, label %bb.baa, !prof !391

bb.baa:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4640
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ezp, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4642

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4642:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4637, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4640, %bb.baa
  %i.fah = load ptr, ptr %i.ezp, align 8, !tbaa !114
  %i.fai = getelementptr inbounds nuw i8, ptr %i.fah, i64 4
  %.sroa.060.0.copyload = load i32, ptr %i.fai, align 4, !tbaa !30
  %i.faj = add i32 %.sroa.060.0.copyload, 16
  %i.fak = lshr i32 %i.faj, 4                     ; 2 uses
  %i.fal = load i32, ptr %i.ezw, align 8, !tbaa !117
  %spec.select.i4643 = tail call i32 @llvm.smax.i32(i32 %i.fak, i32 %i.fal)
  store i32 %spec.select.i4643, ptr %i.ezw, align 8, !tbaa !117
  %i.fam = zext nneg i32 %i.fak to i64
  %i.fan = getelementptr inbounds nuw [12 x i8], ptr %i.ezy, i64 %i.fam ; 3 uses
  store i8 -1, ptr %i.fan, align 4, !tbaa !122
  %i.fao = getelementptr inbounds nuw i8, ptr %i.fan, i64 4
  store i32 0, ptr %i.fao, align 4, !tbaa !30
  %i.fap = getelementptr inbounds nuw i8, ptr %i.fan, i64 8 ; 2 uses
  %i.faq = load i32, ptr %i.fap, align 4, !tbaa !126
  %i.far = add i32 %i.faq, 1
  store i32 %i.far, ptr %i.fap, align 4, !tbaa !126
  tail call void @_ZN4Luau7CodeGen14ConstPropState18invalidateUserCallEv(ptr noundef nonnull align 8 dereferenceable(3704) %0)
  br label %.critedge2377

bb.bab:                                           ; preds = %bb.a
  %i.fas = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.fat = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fau = load i32, ptr %i.fat, align 8, !tbaa !112 ; 2 uses
  %.not.i4644 = icmp ugt i32 %i.fau, 1
  br i1 %.not.i4644, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645, label %bb.bac, !prof !169

bb.bac:                                           ; preds = %bb.bab
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fas, i32 noundef 2)
  %.pre5410 = load i32, ptr %i.fat, align 8, !tbaa !112
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645:   ; preds = %bb.bab, %bb.bac
  %i.fav = phi i32 [ %i.fau, %bb.bab ], [ %.pre5410, %bb.bac ]
  %i.faw = load ptr, ptr %i.fas, align 8, !tbaa !114 ; 2 uses
  %i.fax = getelementptr inbounds nuw i8, ptr %i.faw, i64 4
  %.sroa.059.0.copyload = load i32, ptr %i.fax, align 4, !tbaa !30
  %i.fay = lshr i32 %.sroa.059.0.copyload, 4
  %.not.i4646 = icmp ugt i32 %i.fav, 2
  br i1 %.not.i4646, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4647, label %bb.bad, !prof !169

bb.bad:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fas, i32 noundef 3)
  %.pre5411 = load ptr, ptr %i.fas, align 8, !tbaa !114
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4647

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4647:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645, %bb.bad
  %i.faz = phi ptr [ %i.faw, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4645 ], [ %.pre5411, %bb.bad ]
  %i.fba = getelementptr inbounds nuw i8, ptr %i.faz, i64 8
  %.sroa.058.0.copyload = load i32, ptr %i.fba, align 4, !tbaa !30
  %i.fbb = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fbc = lshr i32 %.sroa.058.0.copyload, 4
  %i.fbd = zext nneg i32 %i.fbc to i64
  %i.fbe = load ptr, ptr %i.fbb, align 8, !tbaa !354
  %i.fbf = getelementptr inbounds nuw [16 x i8], ptr %i.fbe, i64 %i.fbd
  %i.fbg = getelementptr inbounds nuw i8, ptr %i.fbf, i64 8
  %i.fbh = load i32, ptr %i.fbg, align 8, !tbaa !30
  tail call void @_ZN4Luau7CodeGen14ConstPropState23invalidateRegisterRangeEii(ptr noundef nonnull align 8 dereferenceable(3704) %0, i32 noundef %i.fay, i32 noundef %i.fbh)
  br label %.critedge2377

bb.bae:                                           ; preds = %bb.a
  %i.fbi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.fbj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fbk = load i32, ptr %i.fbj, align 8, !tbaa !112
  %.not.i4648 = icmp ugt i32 %i.fbk, 1
  br i1 %.not.i4648, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit4649, label %bb.baf, !prof !169

bb.baf:                                           ; preds = %bb.bae
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fbi, i32 noundef 2)
end_hunk_0
