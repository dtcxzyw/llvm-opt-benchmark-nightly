Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmMatcherEmitter?download=true
inline.NumInlined: 8530
inline.NumDeleted: 3431
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_114AsmMatcherInfo9buildInfoEv:bb.a
  %i.cde = ashr exact i64 %i.cdc, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i247 = call i64 @llvm.umax.i64(i64 %i.cde, i64 1)
  %i.cdf = add nsw i64 %.sroa.speculated.i.i.i.i247, %i.cde ; 2 uses
  %i.cdg = icmp ult i64 %i.cdf, %i.cde
  %i.cdh = call i64 @llvm.umin.i64(i64 %i.cdf, i64 1152921504606846975)
  %i.cdi = select i1 %i.cdg, i64 1152921504606846975, i64 %i.cdh ; 3 uses
  %.not.i.i.i.i248 = icmp ne i64 %i.cdi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i248)
  %i.cdj = shl nuw nsw i64 %i.cdi, 3
  %i.cdk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cdj) #27 ; 10 uses
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.cdk, i64 %i.cdc
  %i.cdm = ptrtoint ptr %i.cba to i64
  store i64 %i.cdm, ptr %i.cdl, align 8, !tbaa !115
  %.not1.i.i.i.i.i.i250 = icmp eq ptr %.val16.i.i.i245, %i.ccw
  br i1 %.not1.i.i.i.i.i.i250, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27.i.i.i256, label %.lr.ph.i.i.i.i.i.i251.preheader

.lr.ph.i.i.i.i.i.i251.preheader:                  ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i246
  %i.cdn = add i64 %i.cda, -8
  %i.cdo = sub i64 %i.cdn, %i.cdb                 ; 2 uses
  %i.cdp = lshr i64 %i.cdo, 3
  %i.cdq = add nuw nsw i64 %i.cdp, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.cdo, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i251.preheader1956, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i251.preheader
  %scevgep = getelementptr i8, ptr %i.cdk, i64 8
  %i.cdr = add i64 %i.cda, -8
  %i.cds = sub i64 %i.cdr, %i.cdb
  %i.cdt = and i64 %i.cds, -8                     ; 2 uses
  %scevgep1698 = getelementptr i8, ptr %scevgep, i64 %i.cdt
  %scevgep1699 = getelementptr i8, ptr %.val16.i.i.i245, i64 8
  %scevgep1700 = getelementptr i8, ptr %scevgep1699, i64 %i.cdt
  %bound0 = icmp ult ptr %i.cdk, %scevgep1700
  %bound1 = icmp ult ptr %.val16.i.i.i245, %scevgep1698
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i251.preheader1956, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cdq, 4611686018427387900    ; 3 uses
  %i.cdu = shl i64 %n.vec, 3                      ; 2 uses
  %i.cdv = getelementptr i8, ptr %i.cdk, i64 %i.cdu ; 2 uses
  %i.cdw = getelementptr i8, ptr %.val16.i.i.i245, i64 %i.cdu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cdx = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cdk, i64 %i.cdx ; 2 uses
  %next.gep1701 = getelementptr i8, ptr %.val16.i.i.i245, i64 %i.cdx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.cdy = getelementptr i8, ptr %next.gep1701, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1701, align 8, !tbaa !115, !alias.scope !984
  %wide.load1702 = load <2 x i64>, ptr %i.cdy, align 8, !tbaa !115, !alias.scope !984
  %i.cdz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !115, !alias.scope !985, !noalias !986
  store <2 x i64> %wide.load1702, ptr %i.cdz, align 8, !tbaa !115, !alias.scope !985, !noalias !986
  %i.cea = getelementptr i8, ptr %next.gep1701, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1701, align 8, !tbaa !115, !alias.scope !984
  store <2 x ptr> splat (ptr null), ptr %i.cea, align 8, !tbaa !115, !alias.scope !984
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ceb = icmp eq i64 %index.next, %n.vec
  br i1 %i.ceb, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cdq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27.i.i.i256, label %.lr.ph.i.i.i.i.i.i251.preheader1956

.lr.ph.i.i.i.i.i.i251.preheader1956:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i251.preheader, %middle.block
  %.03.i.i.i.i.i.i252.ph = phi ptr [ %i.cdk, %vector.memcheck ], [ %i.cdk, %.lr.ph.i.i.i.i.i.i251.preheader ], [ %i.cdv, %middle.block ]
  %.092.i.i.i.i.i.i253.ph = phi ptr [ %.val16.i.i.i245, %vector.memcheck ], [ %.val16.i.i.i245, %.lr.ph.i.i.i.i.i.i251.preheader ], [ %i.cdw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i251

.lr.ph.i.i.i.i.i.i251:                            ; preds = %.lr.ph.i.i.i.i.i.i251.preheader1956, %.lr.ph.i.i.i.i.i.i251
  %.03.i.i.i.i.i.i252 = phi ptr [ %i.ced, %.lr.ph.i.i.i.i.i.i251 ], [ %.03.i.i.i.i.i.i252.ph, %.lr.ph.i.i.i.i.i.i251.preheader1956 ] ; 2 uses
  %.092.i.i.i.i.i.i253 = phi ptr [ %i.cec, %.lr.ph.i.i.i.i.i.i251 ], [ %.092.i.i.i.i.i.i253.ph, %.lr.ph.i.i.i.i.i.i251.preheader1956 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %.val.i.i.i.i.i.i.i.i.i.i254 = load i64, ptr %.092.i.i.i.i.i.i253, align 8, !tbaa !115, !alias.scope !983
  store i64 %.val.i.i.i.i.i.i.i.i.i.i254, ptr %.03.i.i.i.i.i.i252, align 8, !tbaa !115, !alias.scope !982
  store ptr null, ptr %.092.i.i.i.i.i.i253, align 8, !tbaa !115, !alias.scope !983
  %i.cec = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i253, i64 8 ; 2 uses
  %i.ced = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i252, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i255 = icmp eq ptr %i.cec, %i.ccw
  br i1 %.not.i.i.i.i.i.i255, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27.i.i.i256, label %.lr.ph.i.i.i.i.i.i251, !llvm.loop !806

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27.i.i.i256: ; preds = %.lr.ph.i.i.i.i.i.i251, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i246
  %.0.lcssa.i.i.i.i.i.i257 = phi ptr [ %i.cdk, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i246 ], [ %i.cdv, %middle.block ], [ %i.ced, %.lr.ph.i.i.i.i.i.i251 ]
  %i.cee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i257, i64 8
  %.not.i28.i.i.i258 = icmp eq ptr %.val16.i.i.i245, null
  br i1 %.not.i28.i.i.i258, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i259, label %bb.oy

bb.oy:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27.i.i.i256
  %i.cef = load ptr, ptr %i.bf, align 8, !tbaa !406
  %i.ceg = ptrtoint ptr %i.cef to i64
  %i.ceh = sub i64 %i.ceg, %i.cdb
  call void @_ZdlPvm(ptr noundef nonnull %.val16.i.i.i245, i64 noundef %i.ceh) #25
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i259

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i259: ; preds = %bb.oy, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit27.i.i.i256
  store ptr %i.cdk, ptr %i.bd, align 8, !tbaa !404
  store ptr %i.cee, ptr %i.be, align 8, !tbaa !405
  %i.cei = getelementptr inbounds nuw [8 x i8], ptr %i.cdk, i64 %i.cdi
  store ptr %i.cei, ptr %i.bf, align 8, !tbaa !406
  br label %_ZNSt10unique_ptrIN4llvm16CodeGenInstAliasESt14default_deleteIS1_EED2Ev.exit

_ZNK4llvm9StringRef11starts_withES0_.exit237.thread504: ; preds = %bb.oq, %.lr.ph672, %_ZN4llvmneENS_9StringRefES0_.exit241, %_ZNK4llvm9StringRef11starts_withES0_.exit237
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cal, i64 80
  %i.cek = load ptr, ptr %i.cej, align 8, !tbaa !438 ; 3 uses
  %.not.i.i.i.i.i414 = icmp eq ptr %i.cek, null
  br i1 %.not.i.i.i.i.i414, label %_ZNSt6vectorISt4pairIjiESaIS1_EED2Ev.exit.i.i, label %bb.oz

bb.oz:                                            ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit237.thread504
  %i.cel = getelementptr inbounds nuw i8, ptr %i.cal, i64 96
  %i.cem = load ptr, ptr %i.cel, align 8, !tbaa !439
  %i.cen = ptrtoint ptr %i.cem to i64
  %i.ceo = ptrtoint ptr %i.cek to i64
  %i.cep = sub i64 %i.cen, %i.ceo
  call void @_ZdlPvm(ptr noundef nonnull %i.cek, i64 noundef %i.cep) #25
  br label %_ZNSt6vectorISt4pairIjiESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorISt4pairIjiESaIS1_EED2Ev.exit.i.i:    ; preds = %bb.oz, %_ZNK4llvm9StringRef11starts_withES0_.exit237.thread504
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cal, i64 56 ; 2 uses
  %i.cer = load ptr, ptr %i.ceq, align 8, !tbaa !440 ; 3 uses
  %i.ces = getelementptr inbounds nuw i8, ptr %i.cal, i64 64
  %i.cet = load ptr, ptr %i.ces, align 8, !tbaa !441 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.cer, %i.cet
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exit.i.i.i, label %.lr.ph.i.i.i.i.i415

.lr.ph.i.i.i.i.i415:                              ; preds = %_ZNSt6vectorISt4pairIjiESaIS1_EED2Ev.exit.i.i, %_ZSt8_DestroyIN4llvm16CodeGenInstAlias13ResultOperandEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.cez, %_ZSt8_DestroyIN4llvm16CodeGenInstAlias13ResultOperandEEvPT_.exit.i.i.i.i.i ], [ %i.cer, %_ZNSt6vectorISt4pairIjiESaIS1_EED2Ev.exit.i.i ] ; 3 uses
  %i.ceu = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !40 ; 2 uses
  %i.cev = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.cew = icmp eq ptr %i.ceu, %i.cev
  br i1 %i.cew, label %_ZSt8_DestroyIN4llvm16CodeGenInstAlias13ResultOperandEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i415
  %i.cex = load i64, ptr %i.cev, align 8, !tbaa !41
  %i.cey = add i64 %i.cex, 1
  call void @_ZdlPvm(ptr noundef %i.ceu, i64 noundef %i.cey) #25
  br label %_ZSt8_DestroyIN4llvm16CodeGenInstAlias13ResultOperandEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN4llvm16CodeGenInstAlias13ResultOperandEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.cez = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.cez, %i.cet
  br i1 %.not.i.i.i1.i.i, label %_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i415, !llvm.loop !8

_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm16CodeGenInstAlias13ResultOperandEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.ceq, align 8, !tbaa !440
  br label %_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exit.i.i.i

_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exitthread-pre-split.i.i.i, %_ZNSt6vectorISt4pairIjiESaIS1_EED2Ev.exit.i.i
  %i.cfa = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exitthread-pre-split.i.i.i ], [ %i.cer, %_ZNSt6vectorISt4pairIjiESaIS1_EED2Ev.exit.i.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.cfa, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN4llvm16CodeGenInstAlias13ResultOperandESaIS2_EED2Ev.exit.i.i, label %bb.pa

bb.pa:                                            ; preds = %_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exit.i.i.i
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cal, i64 72
  %i.cfc = load ptr, ptr %i.cfb, align 8, !tbaa !442
  %i.cfd = ptrtoint ptr %i.cfc to i64
  %i.cfe = ptrtoint ptr %i.cfa to i64
  %i.cff = sub i64 %i.cfd, %i.cfe
  call void @_ZdlPvm(ptr noundef nonnull %i.cfa, i64 noundef %i.cff) #25
  br label %_ZNSt6vectorIN4llvm16CodeGenInstAlias13ResultOperandESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN4llvm16CodeGenInstAlias13ResultOperandESaIS2_EED2Ev.exit.i.i: ; preds = %bb.pa, %_ZSt8_DestroyIPN4llvm16CodeGenInstAlias13ResultOperandEEvT_S4_.exit.i.i.i
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  %i.cfh = load ptr, ptr %i.cfg, align 8, !tbaa !40 ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cal, i64 24 ; 2 uses
  %i.cfj = icmp eq ptr %i.cfh, %i.cfi
  br i1 %i.cfj, label %_ZNKSt14default_deleteIN4llvm16CodeGenInstAliasEEclEPS1_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN4llvm16CodeGenInstAlias13ResultOperandESaIS2_EED2Ev.exit.i.i
  %i.cfk = load i64, ptr %i.cfi, align 8, !tbaa !41
  %i.cfl = add i64 %i.cfk, 1
  call void @_ZdlPvm(ptr noundef %i.cfh, i64 noundef %i.cfl) #25
  br label %_ZNKSt14default_deleteIN4llvm16CodeGenInstAliasEEclEPS1_.exit

_ZNKSt14default_deleteIN4llvm16CodeGenInstAliasEEclEPS1_.exit: ; preds = %_ZNSt6vectorIN4llvm16CodeGenInstAlias13ResultOperandESaIS2_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cal, i64 noundef 104) #25
  br label %_ZNSt10unique_ptrIN4llvm16CodeGenInstAliasESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm16CodeGenInstAliasESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ov, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i259, %_ZNKSt14default_deleteIN4llvm16CodeGenInstAliasEEclEPS1_.exit
  %i.cfm = getelementptr inbounds nuw i8, ptr %.0125670, i64 8 ; 2 uses
  %.not132 = icmp eq ptr %i.cfm, %i.bwm
  br i1 %.not132, label %._crit_edge673, label %.lr.ph672

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345
  %.sroa.0443.0700 = phi ptr [ %.val134, %.preheader.lr.ph ], [ %i.dmy, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345 ] ; 5 uses
  %.sroa.15.0699 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.15.1, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345 ] ; 7 uses
  %.sroa.9.0698 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.9.1, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345 ] ; 5 uses
  %.sroa.0444.0697 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.0444.1, %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345 ] ; 13 uses
  %.val147684 = load ptr, ptr %.sroa.0443.0700, align 8, !tbaa !115 ; 4 uses
  %i.cfn = getelementptr inbounds nuw i8, ptr %.val147684, i64 352 ; 2 uses
  %i.cfo = getelementptr inbounds nuw i8, ptr %.val147684, i64 360
  %i.cfp = load i32, ptr %i.cfo, align 8, !tbaa !119
  %.not709 = icmp eq i32 %i.cfp, 0
  br i1 %.not709, label %._crit_edge689, label %.lr.ph688

._crit_edge701:                                   ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345
  %.sroa.0444.11760.le = ptrtoaddr ptr %.sroa.9.1 to i64 ; 2 uses
  %.sroa.9.11761.le = ptrtoaddr ptr %.sroa.0444.1 to i64 ; 2 uses
  %i.cfq = ptrtoint ptr %.sroa.15.1 to i64        ; 3 uses
  %i.cfr = icmp eq ptr %.sroa.0444.1, %.sroa.9.1
  br i1 %i.cfr, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE6insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEESD_NSB_IPKS5_S7_EET_SI_.exit, label %bb.ts

._crit_edge689:                                   ; preds = %bb.qd, %.preheader
  %.val147.lcssa = phi ptr [ %.val147684, %.preheader ], [ %.val147, %bb.qd ] ; 13 uses
  %.lcssa536 = phi ptr [ %i.cfn, %.preheader ], [ %i.cnk, %bb.qd ] ; 7 uses
  %i.cfs = getelementptr inbounds nuw i8, ptr %.val147.lcssa, i64 56
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.cfs, align 8 ; 3 uses
  %i.cft = and i64 %.0.copyload.i.i.i.i.i, 4
  %i.cfu = icmp eq i64 %i.cft, 0
  br i1 %i.cfu, label %_ZNK12_GLOBAL__N_113MatchableInfo13getResultInstEv.exit.i, label %_ZNK12_GLOBAL__N_113MatchableInfo13getResultInstEv.exit.i347

.lr.ph688:                                        ; preds = %.preheader, %bb.qd
  %i.cfv = phi ptr [ %i.cnk, %bb.qd ], [ %i.cfn, %.preheader ] ; 10 uses
  %.val147687 = phi ptr [ %.val147, %bb.qd ], [ %.val147684, %.preheader ] ; 6 uses
  %.0126685 = phi i64 [ %i.cnj, %bb.qd ], [ 0, %.preheader ] ; 4 uses
  %.val152 = load ptr, ptr %i.cfv, align 8, !tbaa !50
  %i.cfw = getelementptr inbounds nuw [72 x i8], ptr %.val152, i64 %.0126685 ; 19 uses
  %.sroa.0432.0.copyload = load ptr, ptr %i.cfw, align 8, !tbaa !146 ; 5 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cfw, i64 8 ; 2 uses
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !56 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #24
  %i.cfx = getelementptr inbounds nuw i8, ptr %i.cfw, i64 64
  %i.cfy = load ptr, ptr %i.cfx, align 8, !tbaa !443 ; 2 uses
  store ptr %i.cfy, ptr %i.ae, align 8, !tbaa !310
  %.not129 = icmp eq ptr %i.cfy, null
  br i1 %.not129, label %.critedge, label %bb.pb

bb.pb:                                            ; preds = %.lr.ph688
  %i.cfz = call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIPKN4llvm6RecordEPN12_GLOBAL__N_19ClassInfoENS0_14LessRecordByIDESaISt4pairIKS3_S6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.btu, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.cga = load ptr, ptr %i.cfz, align 8, !tbaa !121
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.cfw, i64 16
  store ptr %i.cga, ptr %i.cgb, align 8, !tbaa !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #24
  br label %bb.qd

.critedge:                                        ; preds = %.lr.ph688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #24
  %i.cgc = load i8, ptr %.sroa.0432.0.copyload, align 1, !tbaa !41
  %.not130 = icmp eq i8 %i.cgc, 36
  br i1 %.not130, label %bb.pd, label %bb.pc

bb.pc:                                            ; preds = %.critedge
  %i.cgd = call fastcc noundef ptr @_ZN12_GLOBAL__N_114AsmMatcherInfo13getTokenClassEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nonnull %.sroa.0432.0.copyload, i64 %.sroa.10.0.copyload)
  %i.cge = getelementptr inbounds nuw i8, ptr %i.cfw, i64 16
  store ptr %i.cgd, ptr %i.cge, align 8, !tbaa !127
  br label %bb.qd

bb.pd:                                            ; preds = %.critedge
  %i.cgf = icmp ugt i64 %.sroa.10.0.copyload, 1
  %i.cgg = getelementptr inbounds nuw i8, ptr %.sroa.0432.0.copyload, i64 1
  %i.cgh = load i8, ptr %i.cgg, align 1, !tbaa !41 ; 2 uses
  %i.cgi = sext i8 %i.cgh to i32
  %isdigittmp = add nsw i32 %i.cgi, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %or.cond = select i1 %i.cgf, i1 %isdigit, i1 false
  br i1 %or.cond, label %bb.pe, label %._crit_edge835

bb.pe:                                            ; preds = %bb.pd
  %i.cgj = call fastcc noundef ptr @_ZN12_GLOBAL__N_114AsmMatcherInfo13getTokenClassEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nonnull %.sroa.0432.0.copyload, i64 %.sroa.10.0.copyload)
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cfw, i64 16
  store ptr %i.cgj, ptr %i.cgk, align 8, !tbaa !127
  br label %bb.qd

._crit_edge835:                                   ; preds = %bb.pd
  %i.cgl = icmp eq i8 %i.cgh, 123
  br i1 %i.cgl, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %._crit_edge835
  %i.cgm = add i64 %.sroa.10.0.copyload, -3
  %.sroa.speculated4.i = call i64 @llvm.umin.i64(i64 %.sroa.10.0.copyload, i64 2) ; 2 uses
  %i.cgn = sub i64 %.sroa.10.0.copyload, %.sroa.speculated4.i
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.cgn, i64 %i.cgm)
  br label %bb.ph

bb.pg:                                            ; preds = %._crit_edge835
  %i.cgo = icmp ne i64 %.sroa.10.0.copyload, 0
  %.sroa.speculated4.i266 = zext i1 %i.cgo to i64 ; 2 uses
  %i.cgp = sub i64 %.sroa.10.0.copyload, %.sroa.speculated4.i266
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.sroa.speculated4.i.pn = phi i64 [ %.sroa.speculated4.i, %bb.pf ], [ %.sroa.speculated4.i266, %bb.pg ]
  %.sroa.7.0 = phi i64 [ %.sroa.speculated.i, %bb.pf ], [ %i.cgp, %bb.pg ]
  %.sroa.7.0.fr = freeze i64 %.sroa.7.0           ; 14 uses
  %.sroa.0430.0 = getelementptr inbounds nuw i8, ptr %.sroa.0432.0.copyload, i64 %.sroa.speculated4.i.pn ; 11 uses
  %i.cgq = getelementptr inbounds nuw i8, ptr %.val147687, i64 56
  %.0.copyload.i.i.i.i.i270 = load i64, ptr %i.cgq, align 8 ; 3 uses
  %i.cgr = and i64 %.0.copyload.i.i.i.i.i270, 4
  %i.cgs = icmp eq i64 %i.cgr, 0
  br i1 %i.cgs, label %bb.pi, label %bb.qa

bb.pi:                                            ; preds = %bb.ph
  %i.cgt = inttoptr i64 %.0.copyload.i.i.i.i.i270 to ptr ; 3 uses
  %i.cgu = getelementptr inbounds nuw i8, ptr %i.cgt, i64 40
  %i.cgv = call i64 @_ZNK4llvm14CGIOperandList16findOperandNamedENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(67) %i.cgu, ptr nonnull %.sroa.0430.0, i64 %.sroa.7.0.fr) #24 ; 3 uses
  %i.cgw = and i64 %i.cgv, 4294967296
  %.not83.i272 = icmp eq i64 %i.cgw, 0
  br i1 %.not83.i272, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  %i.cgx = getelementptr inbounds nuw i8, ptr %.val147687, i64 40
  %i.cgy = load ptr, ptr %i.cgx, align 8, !tbaa !435 ; 2 uses
  %i.cgz = getelementptr inbounds nuw i8, ptr %i.cgy, i64 8
  %i.cha = load ptr, ptr %i.cgz, align 8, !tbaa !50
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cgy, i64 16
  %i.chc = load i32, ptr %i.chb, align 8, !tbaa !119
  %i.chd = zext i32 %i.chc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  %i.che = getelementptr inbounds nuw i8, ptr %42, i64 32
  store i8 3, ptr %i.che, align 8, !tbaa !430, !alias.scope !987
  %i.chf = getelementptr inbounds nuw i8, ptr %42, i64 33
  store i8 5, ptr %i.chf, align 1, !tbaa !429, !alias.scope !987
  store ptr @.str.494, ptr %42, align 8, !tbaa !41, !alias.scope !987
  %i.chg = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %.sroa.0430.0, ptr %i.chg, align 8, !tbaa !41, !alias.scope !987
  %i.chh = getelementptr inbounds nuw i8, ptr %42, i64 24
  store i64 %.sroa.7.0.fr, ptr %i.chh, align 8, !tbaa !41, !alias.scope !987
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.chi = getelementptr inbounds nuw i8, ptr %43, i64 32
  %i.chj = getelementptr inbounds nuw i8, ptr %43, i64 33
  store i8 1, ptr %i.chj, align 1, !tbaa !429
  store ptr @.str.495, ptr %43, align 8, !tbaa !41
  store i8 3, ptr %i.chi, align 8, !tbaa !430
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %41, ptr noundef nonnull align 8 dereferenceable(34) %42, ptr noundef nonnull align 8 dereferenceable(34) %43)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.cha, i64 %i.chd, ptr noundef nonnull align 8 dereferenceable(34) %41) #29
  unreachable

bb.pk:                                            ; preds = %bb.pi
  %i.chk = getelementptr inbounds nuw i8, ptr %i.cfw, i64 56
  %i.chl = load i32, ptr %i.chk, align 8, !tbaa !444
  %i.chm = icmp eq i32 %i.chl, -1
  br i1 %i.chm, label %bb.pl, label %._ZN4llvmeqENS_9StringRefES0_.exit.thread79_crit_edge.i

._ZN4llvmeqENS_9StringRefES0_.exit.thread79_crit_edge.i: ; preds = %bb.pk
  %.pre.i273 = and i64 %i.cgv, 4294967295
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread79.i

bb.pl:                                            ; preds = %bb.pk
  %i.chn = getelementptr inbounds nuw i8, ptr %i.cgt, i64 56 ; 2 uses
  %i.cho = and i64 %i.cgv, 4294967295             ; 7 uses
  %i.chp = load ptr, ptr %i.chn, align 8, !tbaa !988
  %i.chq = getelementptr inbounds nuw [160 x i8], ptr %i.chp, i64 %i.cho ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %i.chq, i64 124
  %i.chs = load i32, ptr %i.chr, align 4, !tbaa !998
  %i.cht = icmp ugt i32 %i.chs, 1
  br i1 %i.cht, label %bb.pm, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread79.i

bb.pm:                                            ; preds = %bb.pl
  %i.chu = load ptr, ptr %i.chq, align 8, !tbaa !999
  %i.chv = call noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.chu, ptr nonnull @.str.496, i64 16) #24 ; 2 uses
  %.not.i276 = icmp eq ptr %i.chv, null
  br i1 %.not.i276, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread79.i, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.chw = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.chv, ptr nonnull @.str.434, i64 4) #24 ; 2 uses
  %i.chx = extractvalue { ptr, i64 } %i.chw, 1
  %.not.i.i277 = icmp eq i64 %i.chx, 3
  br i1 %.not.i.i277, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread79.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.pn
  %i.chy = extractvalue { ptr, i64 } %i.chw, 0    ; 2 uses
  %i.chz = load i16, ptr %i.chy, align 1
  %i.cia = xor i16 %i.chz, 27977
  %i.cib = getelementptr i8, ptr %i.chy, i64 2
  %i.cic = load i8, ptr %i.cib, align 1
  %i.cid = zext i8 %i.cic to i16
  %i.cie = xor i16 %i.cid, 109
  %i.cif = or i16 %i.cia, %i.cie
  %i.cig = icmp ne i16 %i.cif, 0
  %i.cih = zext i1 %i.cig to i32
  %i.cii = icmp eq i32 %i.cih, 0
  br i1 %i.cii, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread79.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %.sroa.08.0.copyload.i = load ptr, ptr %i.cfw, align 8, !tbaa !146
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !56
  %i.cij = load ptr, ptr %i.chn, align 8, !tbaa !988
  %i.cik = getelementptr inbounds nuw [160 x i8], ptr %i.cij, i64 %i.cho
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cik, i64 124
  %i.cim = load i32, ptr %i.cil, align 4, !tbaa !998 ; 2 uses
  %.not5988.i = icmp eq i32 %i.cim, 1
  br i1 %.not5988.i, label %._crit_edge.i283, label %.lr.ph.i279

.lr.ph.i279:                                      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %i.cin = getelementptr inbounds nuw i8, ptr %.val147687, i64 360 ; 7 uses
  %i.cio = getelementptr inbounds nuw i8, ptr %.val147687, i64 364 ; 2 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %.val147687, i64 368 ; 2 uses
  br label %bb.po

._crit_edge.i283:                                 ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113MatchableInfo10AsmOperandEE6insertEPS3_RKS3_.exit.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.val61.i = load ptr, ptr %i.cfv, align 8, !tbaa !50
  %i.ciq = getelementptr inbounds nuw [72 x i8], ptr %.val61.i, i64 %.0126685 ; 2 uses
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 56
  store i32 0, ptr %i.cir, align 8, !tbaa !444
  br label %_ZN4llvmeqENS_9StringRefES0_.exit.thread79.i

bb.po:                                            ; preds = %_ZN4llvm15SmallVectorImplIN12_GLOBAL__N_113MatchableInfo10AsmOperandEE6insertEPS3_RKS3_.exit.i, %.lr.ph.i279
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_114AsmMatcherInfo9buildInfoEv:bb.a
bb.tg:                                            ; preds = %bb.tf
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dci, ptr noundef nonnull readonly align 8 dereferenceable(32) %14)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit133.i

bb.th:                                            ; preds = %bb.tf
  %i.dks = zext i32 %i.dkq to i64
  %.val.i132.i = load ptr, ptr %i.dci, align 8, !tbaa !50
  %i.dkt = getelementptr inbounds nuw [32 x i8], ptr %.val.i132.i, i64 %i.dks
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dkt, ptr noundef nonnull readonly align 8 dereferenceable(32) %14, i64 32, i1 false)
  %i.dku = load i32, ptr %i.dcl, align 8, !tbaa !119
  %i.dkv = add i32 %i.dku, 1
  store i32 %i.dkv, ptr %i.dcl, align 8, !tbaa !119
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit133.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit133.i: ; preds = %bb.th, %bb.tg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.tl

bb.ti:                                            ; preds = %bb.sv
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dgk, i64 32
  %i.dkx = load ptr, ptr %i.dkw, align 8, !tbaa !1016
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i32 3, ptr %15, align 8, !tbaa !448, !alias.scope !1051
  store ptr %i.dkx, ptr %i.buf, align 8, !tbaa !41, !alias.scope !1051
  store i32 1, ptr %i.bug, align 8, !tbaa !449, !alias.scope !1051
  %i.dky = load i32, ptr %i.dcl, align 8, !tbaa !119 ; 2 uses
  %i.dkz = load i32, ptr %i.dcm, align 4, !tbaa !254
  %.not.i134.i = icmp ult i32 %i.dky, %i.dkz
  br i1 %.not.i134.i, label %bb.tk, label %bb.tj, !prof !117

bb.tj:                                            ; preds = %bb.ti
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.dci, ptr noundef nonnull readonly align 8 dereferenceable(32) %15)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit136.i

bb.tk:                                            ; preds = %bb.ti
  %i.dla = zext i32 %i.dky to i64
  %.val.i135.i = load ptr, ptr %i.dci, align 8, !tbaa !50
  %i.dlb = getelementptr inbounds nuw [32 x i8], ptr %.val.i135.i, i64 %i.dla
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.dlb, ptr noundef nonnull readonly align 8 dereferenceable(32) %15, i64 32, i1 false)
  %i.dlc = load i32, ptr %i.dcl, align 8, !tbaa !119
  %i.dld = add i32 %i.dlc, 1
  store i32 %i.dld, ptr %i.dcl, align 8, !tbaa !119
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit136.i

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit136.i: ; preds = %bb.tk, %bb.tj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.tl

bb.tl:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit136.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit133.i, %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_113MatchableInfo10ResOperandELb1EE9push_backERKS3_.exit130.i, %bb.sv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i366 = icmp eq i64 %indvars.iv.next, %i.dcn
  br i1 %exitcond.not.i366, label %.critedge.i354, label %.lr.ph.i365, !llvm.loop !891

.critedge.i354.loopexit.split.loop.exit:          ; preds = %.lr.ph.i365
  %i.dle = trunc nuw i64 %indvars.iv to i32
  br label %.critedge.i354

.critedge.i354:                                   ; preds = %bb.tl, %.critedge.i354.loopexit.split.loop.exit, %_ZNK4llvm14CGIOperandList11OperandInfo15getTiedRegisterEv.exit.thread.i351, %bb.su
  %.2.i = phi i32 [ %.0204.i, %bb.su ], [ %.0204.i, %_ZNK4llvm14CGIOperandList11OperandInfo15getTiedRegisterEv.exit.thread.i351 ], [ %i.dle, %.critedge.i354.loopexit.split.loop.exit ], [ %i.dcd, %bb.tl ]
  %i.dlf = add i64 %.sroa.7167.0202.i, 1
  %i.dlg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0203.i, i64 160 ; 2 uses
  %.not184.i = icmp eq ptr %i.dlg, %i.dch
  br i1 %.not184.i, label %._crit_edge.loopexit.i, label %bb.sh

._crit_edge209.i:                                 ; preds = %.lr.ph.i.i.i.i364, %_ZN4llvm16DenseMapIteratorINS_9StringRefEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEELb0EEppEv.exit.i, %bb.tq, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i364.preheader, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapINS_9StringRefEiLj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_iEEEES2_iS4_S7_E5beginEv.exit.i, %._crit_edge.i356
  %i.dlh = icmp eq i32 %i.dct, 0
  %or.cond183.i = select i1 %.not.i.i.i.i.i357, i1 true, i1 %i.dlh
  br i1 %or.cond183.i, label %_ZN12_GLOBAL__N_113MatchableInfo24buildAliasResultOperandsEb.exit, label %bb.tm

bb.tm:                                            ; preds = %._crit_edge209.i
  %i.dli = zext i32 %i.dct to i64                 ; 2 uses
  %i.dlj = mul nuw nsw i64 %i.dli, 24
  %i.dlk = add nuw nsw i64 %i.dli, 31
  %i.dll = lshr i64 %i.dlk, 3
  %i.dlm = and i64 %i.dll, 1073741820
  %i.dln = add nuw nsw i64 %i.dlm, %i.dlj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.dcp, i64 noundef %i.dln, i64 noundef 8) #24
  br label %_ZN12_GLOBAL__N_113MatchableInfo24buildAliasResultOperandsEb.exit

bb.tn:                                            ; preds = %_ZN4llvm16DenseMapIteratorINS_9StringRefEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEELb0EEppEv.exit.i, %.lr.ph208.i
  %.pn.i = phi i64 [ %i.ddk, %.lr.ph208.i ], [ %i.dmx, %_ZN4llvm16DenseMapIteratorINS_9StringRefEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.0146.0207.i = getelementptr i8, ptr %i.dcq, i64 %.pn.i ; 3 uses
  %i.dlo = getelementptr inbounds nuw i8, ptr %.sroa.0146.0207.i, i64 16
  %i.dlp = load i32, ptr %i.dlo, align 8, !tbaa !1041 ; 2 uses
  %.not.i360 = icmp eq i32 %i.dlp, -1
  br i1 %.not.i360, label %bb.tq, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %.sroa.04.0.copyload.i = load ptr, ptr %.sroa.0146.0207.i, align 8, !tbaa !146 ; 2 uses
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0146.0207.i, i64 8
  %.sroa.25.0.copyload.i = load i64, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !56 ; 2 uses
  %.val93.i = load ptr, ptr %.lcssa536, align 8, !tbaa !50
  %.val94.i = load i32, ptr %i.ddl, align 8
  %i.dlq = call fastcc noundef i32 @_ZNK12_GLOBAL__N_113MatchableInfo19findAsmOperandNamedEN4llvm9StringRefEi(ptr %.val93.i, i32 %.val94.i, ptr %.sroa.04.0.copyload.i, i64 %.sroa.25.0.copyload.i, i32 noundef %i.dlp)
  %.not87.i361 = icmp eq i32 %i.dlq, -1
  br i1 %.not87.i361, label %bb.tq, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.dlr = getelementptr inbounds nuw i8, ptr %.val147.lcssa, i64 40
  %i.dls = load ptr, ptr %i.dlr, align 8, !tbaa !435 ; 2 uses
  %i.dlt = getelementptr inbounds nuw i8, ptr %i.dls, i64 8
  %i.dlu = load ptr, ptr %i.dlt, align 8, !tbaa !50
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dls, i64 16
  %i.dlw = load i32, ptr %i.dlv, align 8, !tbaa !119
  %i.dlx = zext i32 %i.dlw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  %i.dly = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 3, ptr %i.dly, align 8, !tbaa !430, !alias.scope !1052
  %i.dlz = getelementptr inbounds nuw i8, ptr %17, i64 33
  store i8 5, ptr %i.dlz, align 1, !tbaa !429, !alias.scope !1052
  store ptr @.str.520, ptr %17, align 8, !tbaa !41, !alias.scope !1052
  %i.dma = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.sroa.04.0.copyload.i, ptr %i.dma, align 8, !tbaa !41, !alias.scope !1052
  %i.dmb = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i64 %.sroa.25.0.copyload.i, ptr %i.dmb, align 8, !tbaa !41, !alias.scope !1052
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  %i.dmc = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dmd = getelementptr inbounds nuw i8, ptr %18, i64 33
  store i8 1, ptr %i.dmd, align 1, !tbaa !429
  store ptr @.str.521, ptr %18, align 8, !tbaa !41
  store i8 3, ptr %i.dmc, align 8, !tbaa !430
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %16, ptr noundef nonnull align 8 dereferenceable(34) %17, ptr noundef nonnull align 8 dereferenceable(34) %18)
  call void @_ZN4llvm15PrintFatalErrorENS_8ArrayRefINS_5SMLocEEERKNS_5TwineE(ptr %i.dlu, i64 %i.dlx, ptr noundef nonnull align 8 dereferenceable(34) %16) #29
  unreachable

bb.tq:                                            ; preds = %bb.to, %bb.tn
  %i.dme = add i64 %.pn.i, 24
  %i.dmf = sdiv exact i64 %i.dme, 24              ; 3 uses
  %.not.i.i140.i = icmp ult i64 %i.dmf, %i.dcw
  br i1 %.not.i.i140.i, label %bb.tr, label %._crit_edge209.i

bb.tr:                                            ; preds = %bb.tq
  %i.dmg = lshr i64 %i.dmf, 5                     ; 3 uses
  %i.dmh = getelementptr inbounds nuw [4 x i8], ptr %i.dcs, i64 %i.dmg
  %i.dmi = load i32, ptr %i.dmh, align 4, !tbaa !124
  %i.dmj = trunc nuw i64 %i.dmf to i32
  %i.dmk = and i32 %i.dmj, 31
  %i.dml = shl nsw i32 -1, %i.dmk
  %i.dmm = and i32 %i.dmi, %i.dml                 ; 2 uses
  %i.dmn = icmp eq i32 %i.dmm, 0
  br i1 %i.dmn, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_9StringRefEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEELb0EEppEv.exit.i

.lr.ph.i.i.i.preheader:                           ; preds = %bb.tr
  %i.dmo = add nuw nsw i64 %i.dmg, 1              ; 2 uses
  %i.dmp = icmp eq i64 %i.dmo, %i.dcy
  br i1 %i.dmp, label %._crit_edge209.i, label %.lr.ph1697

.lr.ph.i.i.i:                                     ; preds = %.lr.ph1697
  %i.dmq = add i64 %i.dms, 1                      ; 2 uses
  %i.dmr = icmp eq i64 %i.dmq, %i.dcy
  br i1 %i.dmr, label %._crit_edge209.i, label %.lr.ph1697, !llvm.loop !866

.lr.ph1697:                                       ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.dms = phi i64 [ %i.dmq, %.lr.ph.i.i.i ], [ %i.dmo, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.dmt = getelementptr inbounds nuw [4 x i8], ptr %i.dcs, i64 %i.dms
  %i.dmu = load i32, ptr %i.dmt, align 4, !tbaa !124 ; 2 uses
  %i.dmv = icmp eq i32 %i.dmu, 0
  br i1 %i.dmv, label %.lr.ph.i.i.i, label %_ZN4llvm16DenseMapIteratorINS_9StringRefEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEELb0EEppEv.exit.i, !llvm.loop !866

_ZN4llvm16DenseMapIteratorINS_9StringRefEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEELb0EEppEv.exit.i: ; preds = %.lr.ph1697, %bb.tr
  %.012.lcssa.i.i.i = phi i64 [ %i.dmg, %bb.tr ], [ %i.dms, %.lr.ph1697 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.dmm, %bb.tr ], [ %i.dmu, %.lr.ph1697 ]
  %i.dmw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = mul i64 %.012.lcssa.i.i.i, 768
  %narrow260.i = mul nuw nsw i32 %i.dmw, 24
  %.idx259.i = zext nneg i32 %narrow260.i to i64
  %i.dmx = add i64 %.idx.i.i.i, %.idx259.i        ; 2 uses
  %.not185.i = icmp eq i64 %i.dmx, %.idx258.i
  br i1 %.not185.i, label %._crit_edge209.i, label %bb.tn

_ZN12_GLOBAL__N_113MatchableInfo24buildAliasResultOperandsEb.exit: ; preds = %._crit_edge209.i, %bb.tm
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345

_ZNSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS1_EED2Ev.exit345: ; preds = %_ZN12_GLOBAL__N_113MatchableInfo30buildInstructionResultOperandsEv.exit, %bb.sc, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i342, %_ZN12_GLOBAL__N_113MatchableInfo24buildAliasResultOperandsEb.exit
  %.sroa.0444.1 = phi ptr [ %.sroa.0444.0697, %bb.sc ], [ %i.dav, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i342 ], [ %.sroa.0444.0697, %_ZN12_GLOBAL__N_113MatchableInfo24buildAliasResultOperandsEb.exit ], [ %.sroa.0444.0697, %_ZN12_GLOBAL__N_113MatchableInfo30buildInstructionResultOperandsEv.exit ] ; 19 uses
  %.sroa.9.1 = phi ptr [ %i.dak, %bb.sc ], [ %i.dbp, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i342 ], [ %.sroa.9.0698, %_ZN12_GLOBAL__N_113MatchableInfo24buildAliasResultOperandsEb.exit ], [ %.sroa.9.0698, %_ZN12_GLOBAL__N_113MatchableInfo30buildInstructionResultOperandsEv.exit ] ; 9 uses
  %.sroa.15.1 = phi ptr [ %.sroa.15.0699, %bb.sc ], [ %i.dbq, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i342 ], [ %.sroa.15.0699, %_ZN12_GLOBAL__N_113MatchableInfo24buildAliasResultOperandsEb.exit ], [ %.sroa.15.0699, %_ZN12_GLOBAL__N_113MatchableInfo30buildInstructionResultOperandsEv.exit ] ; 2 uses
  %i.dmy = getelementptr inbounds nuw i8, ptr %.sroa.0443.0700, i64 8 ; 2 uses
  %.not514 = icmp eq ptr %i.dmy, %.val137
  br i1 %.not514, label %._crit_edge701, label %.preheader

bb.ts:                                            ; preds = %._crit_edge701
  %.val136 = load ptr, ptr %i.btt, align 8, !tbaa !112 ; 11 uses
  %.val7.i = load ptr, ptr %i.bts, align 8, !tbaa !112 ; 8 uses
  %i.dmz = ptrtoint ptr %.val136 to i64           ; 3 uses
  %i.dna = ptrtoint ptr %.val7.i to i64           ; 3 uses
  %i.dnb = ptrtoint ptr %.sroa.9.1 to i64
  %i.dnc = ptrtoint ptr %.sroa.0444.1 to i64
  %i.dnd = sub i64 %i.dnb, %i.dnc                 ; 3 uses
  %i.dne = ashr exact i64 %i.dnd, 3               ; 2 uses
  %i.dnf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.dng = load ptr, ptr %i.dnf, align 8, !tbaa !406
  %i.dnh = ptrtoint ptr %i.dng to i64
  %i.dni = sub i64 %i.dnh, %i.dmz
  %.not.i.i390 = icmp ult i64 %i.dni, %i.dnd
  br i1 %.not.i.i390, label %bb.tt, label %.lr.ph.i.i.i.i.i.i391.preheader

.lr.ph.i.i.i.i.i.i391.preheader:                  ; preds = %bb.ts
  %i.dnj = add i64 %.sroa.0444.11760.le, -8
  %i.dnk = sub i64 %i.dnj, %.sroa.9.11761.le      ; 3 uses
  %i.dnl = lshr i64 %i.dnk, 3
  %i.dnm = add nuw nsw i64 %i.dnl, 1              ; 2 uses
  %min.iters.check1763 = icmp ult i64 %i.dnk, 120
  br i1 %min.iters.check1763, label %.lr.ph.i.i.i.i.i.i391.preheader1837, label %vector.memcheck1764

vector.memcheck1764:                              ; preds = %.lr.ph.i.i.i.i.i.i391.preheader
  %i.dnn = and i64 %i.dnk, -8
  %i.dno = add i64 %i.dnn, 8                      ; 2 uses
  %i.dnp = getelementptr i8, ptr %.val136, i64 %i.dno
  %i.dnq = getelementptr i8, ptr %.sroa.0444.1, i64 %i.dno
  %bound01765 = icmp ult ptr %.val136, %i.dnq
  %bound11766 = icmp ult ptr %.sroa.0444.1, %i.dnp
  %found.conflict1767 = and i1 %bound01765, %bound11766
  br i1 %found.conflict1767, label %.lr.ph.i.i.i.i.i.i391.preheader1837, label %vector.ph1768

vector.ph1768:                                    ; preds = %vector.memcheck1764
  %n.vec1769 = and i64 %i.dnm, 4611686018427387900 ; 3 uses
  %i.dnr = shl i64 %n.vec1769, 3                  ; 2 uses
  %i.dns = getelementptr i8, ptr %.val136, i64 %i.dnr
  %i.dnt = getelementptr i8, ptr %.sroa.0444.1, i64 %i.dnr
  br label %vector.body1770

vector.body1770:                                  ; preds = %vector.body1770, %vector.ph1768
  %index1771 = phi i64 [ 0, %vector.ph1768 ], [ %index.next1776, %vector.body1770 ] ; 2 uses
  %i.dnu = shl i64 %index1771, 3                  ; 2 uses
  %next.gep1772 = getelementptr i8, ptr %.val136, i64 %i.dnu ; 2 uses
  %next.gep1773 = getelementptr i8, ptr %.sroa.0444.1, i64 %i.dnu ; 4 uses
  %i.dnv = getelementptr i8, ptr %next.gep1773, i64 16
  %wide.load1774 = load <2 x i64>, ptr %next.gep1773, align 8, !tbaa !115, !alias.scope !1053
  %wide.load1775 = load <2 x i64>, ptr %i.dnv, align 8, !tbaa !115, !alias.scope !1053
  %i.dnw = getelementptr i8, ptr %next.gep1772, i64 16
  store <2 x i64> %wide.load1774, ptr %next.gep1772, align 8, !tbaa !115, !alias.scope !1054, !noalias !1053
  store <2 x i64> %wide.load1775, ptr %i.dnw, align 8, !tbaa !115, !alias.scope !1054, !noalias !1053
  %i.dnx = getelementptr i8, ptr %next.gep1773, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1773, align 8, !tbaa !115, !alias.scope !1053
  store <2 x ptr> splat (ptr null), ptr %i.dnx, align 8, !tbaa !115, !alias.scope !1053
  %index.next1776 = add nuw i64 %index1771, 4     ; 2 uses
  %i.dny = icmp eq i64 %index.next1776, %n.vec1769
  br i1 %i.dny, label %middle.block1777, label %vector.body1770, !llvm.loop !897

middle.block1777:                                 ; preds = %vector.body1770
  %cmp.n1778 = icmp eq i64 %i.dnm, %n.vec1769
  br i1 %cmp.n1778, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i, label %.lr.ph.i.i.i.i.i.i391.preheader1837

.lr.ph.i.i.i.i.i.i391.preheader1837:              ; preds = %vector.memcheck1764, %.lr.ph.i.i.i.i.i.i391.preheader, %middle.block1777
  %.09.i.i.i.i.i.i.ph = phi ptr [ %.val136, %vector.memcheck1764 ], [ %.val136, %.lr.ph.i.i.i.i.i.i391.preheader ], [ %i.dns, %middle.block1777 ]
  %.sroa.06.08.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0444.1, %vector.memcheck1764 ], [ %.sroa.0444.1, %.lr.ph.i.i.i.i.i.i391.preheader ], [ %i.dnt, %middle.block1777 ]
  br label %.lr.ph.i.i.i.i.i.i391

.lr.ph.i.i.i.i.i.i391:                            ; preds = %.lr.ph.i.i.i.i.i.i391.preheader1837, %.lr.ph.i.i.i.i.i.i391
  %.09.i.i.i.i.i.i = phi ptr [ %i.doa, %.lr.ph.i.i.i.i.i.i391 ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i391.preheader1837 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i.i = phi ptr [ %i.dnz, %.lr.ph.i.i.i.i.i.i391 ], [ %.sroa.06.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i391.preheader1837 ] ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i.i392 = load i64, ptr %.sroa.06.08.i.i.i.i.i.i, align 8, !tbaa !115
  store i64 %.val.i.i.i.i.i.i.i.i.i.i392, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !115
  store ptr null, ptr %.sroa.06.08.i.i.i.i.i.i, align 8, !tbaa !115
  %i.dnz = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.doa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i393 = icmp eq ptr %i.dnz, %.sroa.9.1
  br i1 %.not.i.i.i.i.i.i393, label %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i, label %.lr.ph.i.i.i.i.i.i391, !llvm.loop !898

_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i: ; preds = %.lr.ph.i.i.i.i.i.i391, %middle.block1777
  %i.dob = getelementptr inbounds nuw i8, ptr %.val136, i64 %i.dnd
  store ptr %i.dob, ptr %i.btt, align 8, !tbaa !405
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE6insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEESD_NSB_IPKS5_S7_EET_SI_.exit

bb.tt:                                            ; preds = %bb.ts
  %i.doc = sub i64 %i.dmz, %i.dna
  %i.dod = ashr exact i64 %i.doc, 3               ; 4 uses
  %i.doe = sub nsw i64 1152921504606846975, %i.dod
  %i.dof = icmp ult i64 %i.doe, %i.dne
  br i1 %i.dof, label %bb.tu, label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.tu:                                            ; preds = %bb.tt
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.522) #29
  unreachable

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.tt
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dod, i64 %i.dne)
  %i.dog = add nsw i64 %.sroa.speculated.i.i.i, %i.dod ; 2 uses
  %i.doh = icmp ult i64 %i.dog, %i.dod
  %i.doi = call i64 @llvm.umin.i64(i64 %i.dog, i64 1152921504606846975)
  %i.doj = select i1 %i.doh, i64 1152921504606846975, i64 %i.doi ; 3 uses
  %.not.i.i.i398 = icmp eq i64 %i.doj, 0
  br i1 %.not.i.i.i398, label %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i.i, label %bb.tv

bb.tv:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dok = shl nuw nsw i64 %i.doj, 3
  %i.dol = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dok) #27
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.tv, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.dom = phi ptr [ %i.dol, %bb.tv ], [ null, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ] ; 6 uses
  %.not7.i.i.i.i.i71.i.i = icmp eq ptr %.val7.i, %.val136 ; 2 uses
  br i1 %.not7.i.i.i.i.i71.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.i72.i.i.preheader

.lr.ph.i.i.i.i.i72.i.i.preheader:                 ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i.i
  %i.don = add i64 %i.dmz, -8
  %i.doo = sub i64 %i.don, %i.dna                 ; 2 uses
  %i.dop = lshr i64 %i.doo, 3
  %i.doq = add nuw nsw i64 %i.dop, 1              ; 2 uses
  %min.iters.check1782 = icmp ult i64 %i.doo, 24
  br i1 %min.iters.check1782, label %.lr.ph.i.i.i.i.i72.i.i.preheader1835, label %vector.ph1783

vector.ph1783:                                    ; preds = %.lr.ph.i.i.i.i.i72.i.i.preheader
  %n.vec1784 = and i64 %i.doq, 4611686018427387900 ; 3 uses
  %i.dor = shl i64 %n.vec1784, 3                  ; 2 uses
  %i.dos = getelementptr i8, ptr %i.dom, i64 %i.dor ; 2 uses
  %i.dot = getelementptr i8, ptr %.val7.i, i64 %i.dor
  br label %vector.body1785

vector.body1785:                                  ; preds = %vector.body1785, %vector.ph1783
  %index1786 = phi i64 [ 0, %vector.ph1783 ], [ %index.next1791, %vector.body1785 ] ; 2 uses
  %i.dou = shl i64 %index1786, 3                  ; 2 uses
  %next.gep1787 = getelementptr i8, ptr %i.dom, i64 %i.dou ; 2 uses
  %next.gep1788 = getelementptr i8, ptr %.val7.i, i64 %i.dou ; 4 uses
  %i.dov = getelementptr i8, ptr %next.gep1788, i64 16
  %wide.load1789 = load <2 x i64>, ptr %next.gep1788, align 8, !tbaa !115
  %wide.load1790 = load <2 x i64>, ptr %i.dov, align 8, !tbaa !115
  %i.dow = getelementptr i8, ptr %next.gep1787, i64 16
  store <2 x i64> %wide.load1789, ptr %next.gep1787, align 8, !tbaa !115
  store <2 x i64> %wide.load1790, ptr %i.dow, align 8, !tbaa !115
  %i.dox = getelementptr i8, ptr %next.gep1788, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1788, align 8, !tbaa !115
  store <2 x ptr> splat (ptr null), ptr %i.dox, align 8, !tbaa !115
  %index.next1791 = add nuw i64 %index1786, 4     ; 2 uses
  %i.doy = icmp eq i64 %index.next1791, %n.vec1784
  br i1 %i.doy, label %middle.block1792, label %vector.body1785, !llvm.loop !899

middle.block1792:                                 ; preds = %vector.body1785
  %cmp.n1793 = icmp eq i64 %i.doq, %n.vec1784
  br i1 %cmp.n1793, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.i72.i.i.preheader1835

.lr.ph.i.i.i.i.i72.i.i.preheader1835:             ; preds = %.lr.ph.i.i.i.i.i72.i.i.preheader, %middle.block1792
  %.09.i.i.i.i.i73.i.i.ph = phi ptr [ %i.dom, %.lr.ph.i.i.i.i.i72.i.i.preheader ], [ %i.dos, %middle.block1792 ]
  %.sroa.06.08.i.i.i.i.i74.i.i.ph = phi ptr [ %.val7.i, %.lr.ph.i.i.i.i.i72.i.i.preheader ], [ %i.dot, %middle.block1792 ]
  br label %.lr.ph.i.i.i.i.i72.i.i

.lr.ph.i.i.i.i.i72.i.i:                           ; preds = %.lr.ph.i.i.i.i.i72.i.i.preheader1835, %.lr.ph.i.i.i.i.i72.i.i
  %.09.i.i.i.i.i73.i.i = phi ptr [ %i.dpa, %.lr.ph.i.i.i.i.i72.i.i ], [ %.09.i.i.i.i.i73.i.i.ph, %.lr.ph.i.i.i.i.i72.i.i.preheader1835 ] ; 2 uses
  %.sroa.06.08.i.i.i.i.i74.i.i = phi ptr [ %i.doz, %.lr.ph.i.i.i.i.i72.i.i ], [ %.sroa.06.08.i.i.i.i.i74.i.i.ph, %.lr.ph.i.i.i.i.i72.i.i.preheader1835 ] ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i75.i.i = load i64, ptr %.sroa.06.08.i.i.i.i.i74.i.i, align 8, !tbaa !115
  store i64 %.val.i.i.i.i.i.i.i.i.i75.i.i, ptr %.09.i.i.i.i.i73.i.i, align 8, !tbaa !115
  store ptr null, ptr %.sroa.06.08.i.i.i.i.i74.i.i, align 8, !tbaa !115
  %i.doz = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i.i74.i.i, i64 8 ; 2 uses
  %i.dpa = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i73.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i76.i.i = icmp eq ptr %i.doz, %.val136
  br i1 %.not.i.i.i.i.i76.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i, label %.lr.ph.i.i.i.i.i72.i.i, !llvm.loop !900

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i72.i.i, %middle.block1792, %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i.i
  %.0.lcssa.i.i.i.i.i77.i.i = phi ptr [ %i.dom, %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE11_M_allocateEm.exit.i.i ], [ %i.dos, %middle.block1792 ], [ %i.dpa, %.lr.ph.i.i.i.i.i72.i.i ] ; 6 uses
  %i.dpb = add i64 %.sroa.0444.11760.le, -8
  %i.dpc = sub i64 %i.dpb, %.sroa.9.11761.le      ; 3 uses
  %i.dpd = lshr i64 %i.dpc, 3
  %i.dpe = add nuw nsw i64 %i.dpd, 1              ; 2 uses
  %min.iters.check1805 = icmp ult i64 %i.dpc, 120
  br i1 %min.iters.check1805, label %.lr.ph.i.i.i.i79.i.i.preheader, label %vector.memcheck1806

vector.memcheck1806:                              ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i
  %i.dpf = and i64 %i.dpc, -8
  %i.dpg = add i64 %i.dpf, 8                      ; 2 uses
  %i.dph = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77.i.i, i64 %i.dpg
  %i.dpi = getelementptr i8, ptr %.sroa.0444.1, i64 %i.dpg
  %bound01807 = icmp ult ptr %.0.lcssa.i.i.i.i.i77.i.i, %i.dpi
  %bound11808 = icmp ult ptr %.sroa.0444.1, %i.dph
  %found.conflict1809 = and i1 %bound01807, %bound11808
  br i1 %found.conflict1809, label %.lr.ph.i.i.i.i79.i.i.preheader, label %vector.ph1810

vector.ph1810:                                    ; preds = %vector.memcheck1806
  %n.vec1811 = and i64 %i.dpe, 4611686018427387900 ; 3 uses
  %i.dpj = shl i64 %n.vec1811, 3                  ; 2 uses
  %i.dpk = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77.i.i, i64 %i.dpj ; 2 uses
  %i.dpl = getelementptr i8, ptr %.sroa.0444.1, i64 %i.dpj
  br label %vector.body1812

vector.body1812:                                  ; preds = %vector.body1812, %vector.ph1810
  %index1813 = phi i64 [ 0, %vector.ph1810 ], [ %index.next1818, %vector.body1812 ] ; 2 uses
  %i.dpm = shl i64 %index1813, 3                  ; 2 uses
  %next.gep1814 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i77.i.i, i64 %i.dpm ; 2 uses
  %next.gep1815 = getelementptr i8, ptr %.sroa.0444.1, i64 %i.dpm ; 4 uses
  %i.dpn = getelementptr i8, ptr %next.gep1815, i64 16
  %wide.load1816 = load <2 x i64>, ptr %next.gep1815, align 8, !tbaa !115, !alias.scope !1055
  %wide.load1817 = load <2 x i64>, ptr %i.dpn, align 8, !tbaa !115, !alias.scope !1055
  %i.dpo = getelementptr i8, ptr %next.gep1814, i64 16
  store <2 x i64> %wide.load1816, ptr %next.gep1814, align 8, !tbaa !115, !alias.scope !1056, !noalias !1055
  store <2 x i64> %wide.load1817, ptr %i.dpo, align 8, !tbaa !115, !alias.scope !1056, !noalias !1055
  %i.dpp = getelementptr i8, ptr %next.gep1815, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1815, align 8, !tbaa !115, !alias.scope !1055
  store <2 x ptr> splat (ptr null), ptr %i.dpp, align 8, !tbaa !115, !alias.scope !1055
  %index.next1818 = add nuw i64 %index1813, 4     ; 2 uses
  %i.dpq = icmp eq i64 %index.next1818, %n.vec1811
  br i1 %i.dpq, label %middle.block1819, label %vector.body1812, !llvm.loop !904

middle.block1819:                                 ; preds = %vector.body1812
  %cmp.n1820 = icmp eq i64 %i.dpe, %n.vec1811
  br i1 %cmp.n1820, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit93.i.i, label %.lr.ph.i.i.i.i79.i.i.preheader

.lr.ph.i.i.i.i79.i.i.preheader:                   ; preds = %vector.memcheck1806, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i, %middle.block1819
  %.09.i.i.i.i80.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i77.i.i, %vector.memcheck1806 ], [ %.0.lcssa.i.i.i.i.i77.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i ], [ %i.dpk, %middle.block1819 ]
  %.sroa.06.08.i.i.i.i81.i.i.ph = phi ptr [ %.sroa.0444.1, %vector.memcheck1806 ], [ %.sroa.0444.1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit.i.i ], [ %i.dpl, %middle.block1819 ]
  br label %.lr.ph.i.i.i.i79.i.i

.lr.ph.i.i.i.i79.i.i:                             ; preds = %.lr.ph.i.i.i.i79.i.i.preheader, %.lr.ph.i.i.i.i79.i.i
  %.09.i.i.i.i80.i.i = phi ptr [ %i.dps, %.lr.ph.i.i.i.i79.i.i ], [ %.09.i.i.i.i80.i.i.ph, %.lr.ph.i.i.i.i79.i.i.preheader ] ; 2 uses
  %.sroa.06.08.i.i.i.i81.i.i = phi ptr [ %i.dpr, %.lr.ph.i.i.i.i79.i.i ], [ %.sroa.06.08.i.i.i.i81.i.i.ph, %.lr.ph.i.i.i.i79.i.i.preheader ] ; 3 uses
  %.val.i.i.i.i.i.i.i.i82.i.i = load i64, ptr %.sroa.06.08.i.i.i.i81.i.i, align 8, !tbaa !115
  store i64 %.val.i.i.i.i.i.i.i.i82.i.i, ptr %.09.i.i.i.i80.i.i, align 8, !tbaa !115
  store ptr null, ptr %.sroa.06.08.i.i.i.i81.i.i, align 8, !tbaa !115
  %i.dpr = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i.i.i81.i.i, i64 8 ; 2 uses
  %i.dps = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i80.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i83.i.i = icmp eq ptr %i.dpr, %.sroa.9.1
  br i1 %.not.i.i.i.i83.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit93.i.i, label %.lr.ph.i.i.i.i79.i.i, !llvm.loop !905

_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit93.i.i: ; preds = %.lr.ph.i.i.i.i79.i.i, %middle.block1819
  %.lcssa1592 = phi ptr [ %i.dpk, %middle.block1819 ], [ %i.dps, %.lr.ph.i.i.i.i79.i.i ]
  br i1 %.not7.i.i.i.i.i71.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i399

.lr.ph.i.i.i.i399:                                ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit93.i.i, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dpt, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %.val7.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit93.i.i ] ; 2 uses
  %.0.val.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i.i94.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i94.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.tw

bb.tw:                                            ; preds = %.lr.ph.i.i.i.i399
  call fastcc void @_ZNKSt14default_deleteIN12_GLOBAL__N_113MatchableInfoEEclEPS1_(ptr noundef nonnull %.0.val.i.i.i.i)
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.tw, %.lr.ph.i.i.i.i399
  %i.dpt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i400 = icmp eq ptr %i.dpt, %.val136
  br i1 %.not.i.i.i.i400, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i399, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit93.i.i
  %.not.i95.i.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i95.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i, label %bb.tx

bb.tx:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.dpu = load ptr, ptr %i.dnf, align 8, !tbaa !406
  %i.dpv = ptrtoint ptr %i.dpu to i64
  %i.dpw = sub i64 %i.dpv, %i.dna
  call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef %i.dpw) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i

_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i: ; preds = %bb.tx, %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  store ptr %i.dom, ptr %i.bts, align 8, !tbaa !404
  store ptr %.lcssa1592, ptr %i.btt, align 8, !tbaa !405
  %i.dpx = getelementptr inbounds nuw [8 x i8], ptr %i.dom, i64 %i.doj
  store ptr %i.dpx, ptr %i.dnf, align 8, !tbaa !406
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE6insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEESD_NSB_IPKS5_S7_EET_SI_.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE6insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEESD_NSB_IPKS5_S7_EET_SI_.exit: ; preds = %_ZN12_GLOBAL__N_114AsmMatcherInfo19buildOperandClassesEv.exit, %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i, %._crit_edge701
  %i.dpy = phi i1 [ true, %._crit_edge701 ], [ false, %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i ], [ false, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i ], [ true, %_ZN12_GLOBAL__N_114AsmMatcherInfo19buildOperandClassesEv.exit ]
  %.sroa.15.0.lcssa1452 = phi i64 [ %i.cfq, %._crit_edge701 ], [ %i.cfq, %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i ], [ %i.cfq, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i ], [ 0, %_ZN12_GLOBAL__N_114AsmMatcherInfo19buildOperandClassesEv.exit ]
  %.sroa.9.0.lcssa1451 = phi ptr [ %.sroa.9.1, %._crit_edge701 ], [ %.sroa.9.1, %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i ], [ %.sroa.9.1, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i ], [ null, %_ZN12_GLOBAL__N_114AsmMatcherInfo19buildOperandClassesEv.exit ]
  %.sroa.0444.0.lcssa1450 = phi ptr [ %.sroa.0444.1, %._crit_edge701 ], [ %.sroa.0444.1, %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit.i.i ], [ %.sroa.0444.1, %_ZSt22__uninitialized_move_aIPSt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EES6_SaIS5_EET0_T_S9_S8_RT1_.exit62.i.thread.i ], [ null, %_ZN12_GLOBAL__N_114AsmMatcherInfo19buildOperandClassesEv.exit ] ; 4 uses
  %i.dpz = load ptr, ptr %0, align 8, !tbaa !245, !nonnull !47, !align !248
  %i.dqa = call { ptr, i64 } @_ZNK4llvm12RecordKeeper24getAllDerivedDefinitionsENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) %i.dpz, ptr nonnull @.str.438, i64 10) #24 ; 2 uses
  %i.dqb = extractvalue { ptr, i64 } %i.dqa, 0    ; 2 uses
  %i.dqc = extractvalue { ptr, i64 } %i.dqa, 1    ; 2 uses
  %.idx710 = shl nuw nsw i64 %i.dqc, 3
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.dqb, i64 %.idx710
  %.not128705 = icmp eq i64 %i.dqc, 0
  br i1 %.not128705, label %._crit_edge708, label %.lr.ph707

._crit_edge708:                                   ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_19ClassInfoESaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_113MatchableInfoESt14default_deleteIS2_EESaIS5_EE6insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEvEESD_NSB_IPKS5_S7_EET_SI_.exit
  %i.dqe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dqf = load ptr, ptr %i.dqe, align 8, !tbaa !138 ; 2 uses
  %.not.i.i401 = icmp eq ptr %i.dqf, null
  br i1 %.not.i.i401, label %_ZNSt12forward_listIN12_GLOBAL__N_19ClassInfoESaIS1_EE4sortEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge708, %._crit_edge87.i.i
  %.061.i.i = phi ptr [ %.263.us.i.i.ph, %._crit_edge87.i.i ], [ %i.dqf, %._crit_edge708 ] ; 2 uses
  %.058.i.i = phi i64 [ %i.dqy, %._crit_edge87.i.i ], [ 1, %._crit_edge708 ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.061.i.i) ]
  %.not92.i.i = icmp ne i64 %.058.i.i, 0
  call void @llvm.assume(i1 %.not92.i.i)
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.loopexit.us.i.i, %.preheader.i.i
  %.05284.us.i.i = phi i64 [ %i.dqg, %.loopexit.us.i.i ], [ 0, %.preheader.i.i ]
  %.05383.us.i.i = phi ptr [ %.154.us.i.i, %.loopexit.us.i.i ], [ null, %.preheader.i.i ]
  %.05582.us.i.i = phi ptr [ %.250.us.i.i, %.loopexit.us.i.i ], [ %.061.i.i, %.preheader.i.i ] ; 2 uses
  %.16281.us.i.i = phi ptr [ %.263.us.i.i.ph, %.loopexit.us.i.i ], [ null, %.preheader.i.i ]
  %i.dqg = add i64 %.05284.us.i.i, 1              ; 2 uses
  br label %bb.tz

bb.ty:                                            ; preds = %bb.tz
  %exitcond.not.i.i = icmp eq i64 %i.dqh, %.058.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i.preheader, label %bb.tz, !llvm.loop !906

bb.tz:                                            ; preds = %bb.ty, %.lr.ph.us.i.i
  %.04575.us.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %i.dqh, %bb.ty ]
  %.04873.us.i.i = phi ptr [ %.05582.us.i.i, %.lr.ph.us.i.i ], [ %i.dqi, %bb.ty ]
  %i.dqh = add nuw i64 %.04575.us.i.i, 1          ; 3 uses
  %i.dqi = load ptr, ptr %.04873.us.i.i, align 8, !tbaa !139 ; 3 uses
  %.not69.us.i.i = icmp eq ptr %i.dqi, null
  br i1 %.not69.us.i.i, label %._crit_edge.us.i.i.preheader, label %bb.ty

._crit_edge.us.i.i.preheader:                     ; preds = %bb.tz, %bb.ty
  %.2.us.i.i.ph = phi i64 [ %i.dqh, %bb.tz ], [ %.058.i.i, %bb.ty ]
  br label %._crit_edge.us.i.i.outer

._crit_edge.us.i.i.outer:                         ; preds = %bb.ug, %._crit_edge.us.i.i.preheader
  %.263.us.i.i.ph = phi ptr [ %.16281.us.i.i, %._crit_edge.us.i.i.preheader ], [ %.0.us.i.i, %bb.ug ] ; 3 uses
  %.156.us.i.i.ph = phi ptr [ %.05582.us.i.i, %._crit_edge.us.i.i.preheader ], [ %.257.us.i.i, %bb.ug ]
  %.154.us.i.i.ph = phi ptr [ %.05383.us.i.i, %._crit_edge.us.i.i.preheader ], [ %.0.us.i.i, %bb.ug ]
  %.250.us.i.i.ph = phi ptr [ %i.dqi, %._crit_edge.us.i.i.preheader ], [ %.351.us.i.i, %bb.ug ]
  %.2.us.i.i.ph1825 = phi i64 [ %.2.us.i.i.ph, %._crit_edge.us.i.i.preheader ], [ %.3.us.i.i, %bb.ug ]
  %.044.us.i.i.ph = phi i64 [ %.058.i.i, %._crit_edge.us.i.i.preheader ], [ %.1.us.i.i, %bb.ug ]
  br label %._crit_edge.us.i.i

._crit_edge.us.i.i:                               ; preds = %._crit_edge.us.i.i.outer, %bb.uh
  %.156.us.i.i = phi ptr [ %.257.us.i.i, %bb.uh ], [ %.156.us.i.i.ph, %._crit_edge.us.i.i.outer ] ; 7 uses
  %.154.us.i.i = phi ptr [ %.0.us.i.i, %bb.uh ], [ %.154.us.i.i.ph, %._crit_edge.us.i.i.outer ] ; 4 uses
  %.250.us.i.i = phi ptr [ %.351.us.i.i, %bb.uh ], [ %.250.us.i.i.ph, %._crit_edge.us.i.i.outer ] ; 9 uses
  %.2.us.i.i = phi i64 [ %.3.us.i.i, %bb.uh ], [ %.2.us.i.i.ph1825, %._crit_edge.us.i.i.outer ] ; 4 uses
  %.044.us.i.i = phi i64 [ %.1.us.i.i, %bb.uh ], [ %.044.us.i.i.ph, %._crit_edge.us.i.i.outer ] ; 5 uses
  %cond.us.i.i = icmp eq i64 %.2.us.i.i, 0
  %i.dqj = icmp ne i64 %.044.us.i.i, 0
  %i.dqk = icmp ne ptr %.250.us.i.i, null         ; 2 uses
  %i.dql = select i1 %i.dqj, i1 %i.dqk, i1 false  ; 2 uses
  br i1 %cond.us.i.i, label %bb.uf, label %bb.ua

bb.ua:                                            ; preds = %._crit_edge.us.i.i
  br i1 %i.dql, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.dqm = load ptr, ptr %.156.us.i.i, align 8, !tbaa !139
  %i.dqn = add i64 %.2.us.i.i, -1
  br label %bb.ug

bb.uc:                                            ; preds = %bb.ua
  %i.dqo = getelementptr inbounds nuw i8, ptr %.250.us.i.i, i64 8
  %i.dqp = getelementptr inbounds nuw i8, ptr %.156.us.i.i, i64 8
  %i.dqq = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_19ClassInfoltERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(376) %i.dqo, ptr noundef nonnull readonly align 8 dereferenceable(376) %i.dqp)
  br i1 %i.dqq, label %bb.ue, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.dqr = load ptr, ptr %.156.us.i.i, align 8, !tbaa !139
  %i.dqs = add i64 %.2.us.i.i, -1
  br label %bb.ug

bb.ue:                                            ; preds = %bb.uc
  %i.dqt = load ptr, ptr %.250.us.i.i, align 8, !tbaa !139
  %i.dqu = add i64 %.044.us.i.i, -1
  br label %bb.ug

bb.uf:                                            ; preds = %._crit_edge.us.i.i
  br i1 %i.dql, label %.critedge.us.i.i, label %.loopexit.us.i.i

.critedge.us.i.i:                                 ; preds = %bb.uf
  %i.dqv = load ptr, ptr %.250.us.i.i, align 8, !tbaa !139
  %i.dqw = add i64 %.044.us.i.i, -1
end_hunk_1
