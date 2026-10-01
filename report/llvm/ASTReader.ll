Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN5clang9ASTReader12ReadASTBlockERNS_13serialization10ModuleFileEj:bb.a
  br i1 %i.asw, label %_ZN5clang9ASTReader21getGlobalIdentifierIDERNS_13serialization10ModuleFileEm.exit729, label %bb.if

bb.if:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit725
  %i.asx = load i64, ptr %i.cg, align 8, !tbaa !1047
  %i.asy = icmp eq i64 %i.asx, 0
  br i1 %i.asy, label %bb.ih, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2)
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.if
  %i.asz = lshr i64 %i.asv, 32                    ; 2 uses
  %i.ata = and i64 %i.asv, 4294967295
  %.not.i726 = icmp eq i64 %i.asz, 0              ; 2 uses
  br i1 %.not.i726, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.atb = add nuw nsw i64 %i.asz, 4294967295
  %i.atc = and i64 %i.atb, 4294967295
  %i.atd = load ptr, ptr %i.ch, align 8, !tbaa !872
  %i.ate = getelementptr inbounds nuw [8 x i8], ptr %i.atd, i64 %i.atc
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !887
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.atg = phi ptr [ %i.atf, %bb.ii ], [ %2, %bb.ih ]
  %i.ath = sext i1 %.not.i726 to i64
  %spec.select.i727 = add nsw i64 %i.ata, %i.ath
  %i.ati = load i32, ptr %i.atg, align 8, !tbaa !1517
  %i.atj = add i32 %i.ati, 1
  %i.atk = zext i32 %i.atj to i64
  %i.atl = shl nuw i64 %i.atk, 32
  %i.atm = or i64 %i.atl, %spec.select.i727
  br label %_ZN5clang9ASTReader21getGlobalIdentifierIDERNS_13serialization10ModuleFileEm.exit729

_ZN5clang9ASTReader21getGlobalIdentifierIDERNS_13serialization10ModuleFileEm.exit729: ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit725, %bb.ij
  %.015.i728 = phi i64 [ %i.atm, %bb.ij ], [ 0, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit725 ] ; 2 uses
  %i.atn = load i32, ptr %i.iq, align 8, !tbaa !873 ; 2 uses
  %i.ato = load i32, ptr %i.ir, align 4, !tbaa !874
  %.not.i730 = icmp ult i32 %i.atn, %i.ato
  br i1 %.not.i730, label %bb.il, label %bb.ik, !prof !1146

bb.ik:                                            ; preds = %_ZN5clang9ASTReader21getGlobalIdentifierIDERNS_13serialization10ModuleFileEm.exit729
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i64 noundef %.015.i728)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit731

bb.il:                                            ; preds = %_ZN5clang9ASTReader21getGlobalIdentifierIDERNS_13serialization10ModuleFileEm.exit729
  %i.atp = zext i32 %i.atn to i64
  %i.atq = load ptr, ptr %i.ip, align 8, !tbaa !872
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.atq, i64 %i.atp
  store i64 %.015.i728, ptr %i.atr, align 1
  %i.ats = load i32, ptr %i.iq, align 8, !tbaa !873
  %i.att = add i32 %i.ats, 1
  store i32 %i.att, ptr %i.iq, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit731

_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit731: ; preds = %bb.ik, %bb.il
  %i.atu = add i32 %.012321381, 3                 ; 2 uses
  %i.atv = zext i32 %i.asr to i64
  %i.atw = load ptr, ptr %30, align 8, !tbaa !872
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %i.atv
  %i.aty = load i64, ptr %i.atx, align 8, !tbaa !167 ; 2 uses
  %i.atz = load i64, ptr %i.cg, align 8, !tbaa !1047
  %i.aua = icmp eq i64 %i.atz, 0
  br i1 %i.aua, label %bb.in, label %bb.im

bb.im:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit731
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2)
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit731
  %.sroa.4.0.extract.shift.i.i732 = lshr i64 %i.aty, 32 ; 2 uses
  %i.aub = icmp eq i64 %.sroa.4.0.extract.shift.i.i732, 0
  br i1 %i.aub, label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit734, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.auc = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i732, 4294967295
  %i.aud = and i64 %i.auc, 4294967295
  %i.aue = load ptr, ptr %i.ch, align 8, !tbaa !872
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %i.aue, i64 %i.aud
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !887
  br label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit734

_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit734: ; preds = %bb.in, %bb.io
  %i.auh = phi ptr [ %i.aug, %bb.io ], [ %2, %bb.in ]
  %i.aui = trunc i64 %i.aty to i32                ; 3 uses
  %i.auj = call i32 @llvm.fshl.i32(i32 %i.aui, i32 %i.aui, i32 31)
  %i.auk = icmp eq i32 %i.aui, 0
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auh, i64 1712
  %i.aum = load i32, ptr %i.aul, align 8
  %i.aun = add i32 %i.auj, -2
  %i.auo = add i32 %i.aun, %i.aum
  %.sroa.0.0.i.i.i733 = select i1 %i.auk, i32 0, i32 %i.auo
  %i.aup = zext i32 %.sroa.0.0.i.i.i733 to i64    ; 2 uses
  %i.auq = load i32, ptr %i.iq, align 8, !tbaa !873 ; 2 uses
  %i.aur = load i32, ptr %i.ir, align 4, !tbaa !874
  %.not.i735 = icmp ult i32 %i.auq, %i.aur
  br i1 %.not.i735, label %bb.iq, label %bb.ip, !prof !1146

bb.ip:                                            ; preds = %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit734
  call void @_ZN4llvm23SmallVectorTemplateBaseImLb1EE15growAndPushBackEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i64 noundef %i.aup)
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit736

bb.iq:                                            ; preds = %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit734
  %i.aus = zext i32 %i.auq to i64
  %i.aut = load ptr, ptr %i.ip, align 8, !tbaa !872
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.aut, i64 %i.aus
  store i64 %i.aup, ptr %i.auu, align 1
  %i.auv = load i32, ptr %i.iq, align 8, !tbaa !873
  %i.auw = add i32 %i.auv, 1
  store i32 %i.auw, ptr %i.iq, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit736

_ZN4llvm23SmallVectorTemplateBaseImLb1EE9push_backEm.exit736: ; preds = %bb.ip, %bb.iq
  %i.aux = icmp ult i32 %i.atu, %i.arm
  br i1 %i.aux, label %.lr.ph1383, label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread, !llvm.loop !4435

bb.ir:                                            ; preds = %bb.bb
  %i.auy = load ptr, ptr %34, align 8, !tbaa !1046
  store ptr %i.auy, ptr %i.ih, align 8, !tbaa !1944
  %i.auz = load ptr, ptr %30, align 8, !tbaa !872 ; 2 uses
  %i.ava = load i64, ptr %i.auz, align 8, !tbaa !167
  %i.avb = trunc i64 %i.ava to i32                ; 2 uses
  store i32 %i.avb, ptr %i.ii, align 8, !tbaa !4509
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auz, i64 8
  %i.avd = load i64, ptr %i.avc, align 8, !tbaa !167
  %i.ave = load i32, ptr %i.ij, align 8, !tbaa !873 ; 2 uses
  store i32 %i.ave, ptr %i.ik, align 8, !tbaa !1787
  %.not543 = icmp eq i32 %i.avb, 0
  br i1 %.not543, label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread.jt2, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.avf = trunc i64 %i.avd to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #36
  %i.avg = add i32 %i.ave, 1
  store i32 %i.avg, ptr %48, align 8
  store ptr %2, ptr %i.im, align 8
  call void @_ZN5clang18ContinuousRangeMapIjPNS_13serialization10ModuleFileELj4EE6insertERKSt4pairIjS3_E(ptr noundef nonnull align 8 dereferenceable(80) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %48)
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #36
  %i.avh = load i32, ptr %i.ik, align 8, !tbaa !1787
  %i.avi = sub i32 %i.avh, %i.avf
  store i32 %i.avf, ptr %49, align 4, !tbaa !1519
  store i32 %i.avi, ptr %i.in, align 4, !tbaa !1520
  call void @_ZN5clang18ContinuousRangeMapIjiLj2EE15insertOrReplaceERKSt4pairIjiE(ptr noundef nonnull align 8 dereferenceable(32) %i.ia, ptr noundef nonnull align 4 dereferenceable(8) %49)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #36
  %i.avj = load i32, ptr %i.ij, align 8, !tbaa !873
  %i.avk = zext i32 %i.avj to i64
  %i.avl = load i32, ptr %i.ii, align 8, !tbaa !4509
  %i.avm = zext i32 %i.avl to i64
  %i.avn = add nuw nsw i64 %i.avm, %i.avk
  call void @_ZN4llvm15SmallVectorImplIN5clang8SelectorEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 noundef %i.avn)
  br label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread.jt2

bb.it:                                            ; preds = %bb.bb
  %i.avo = load ptr, ptr %34, align 8, !tbaa !1046 ; 3 uses
  store ptr %i.avo, ptr %i.ie, align 8, !tbaa !1945
  %i.avp = load ptr, ptr %30, align 8, !tbaa !872 ; 2 uses
  %i.avq = load i64, ptr %i.avp, align 8, !tbaa !167 ; 2 uses
  %.not542 = icmp eq i64 %i.avq, 0
  br i1 %.not542, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avo, i64 %i.avq ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.avr, i64 4) ]
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 8
  %i.avt = load <2 x i32>, ptr %i.avr, align 4
  %i.avu = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38 ; 6 uses
  store <2 x i32> %i.avt, ptr %i.avu, align 8, !tbaa !952
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 8
  store ptr %i.avs, ptr %i.avv, align 8, !tbaa !1947
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avu, i64 16
  store ptr %i.avo, ptr %i.avw, align 8, !tbaa !1948
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avu, i64 24
  store ptr %1, ptr %i.avx, align 8, !tbaa !1712
  %.sroa.41134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.avu, i64 32
  store ptr %2, ptr %.sroa.41134.0..sroa_idx, align 8, !tbaa !887
  store ptr %i.avu, ptr %i.if, align 8, !tbaa !1949
  %.pre1494.a = load ptr, ptr %30, align 8, !tbaa !872
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.it
  %i.avy = phi ptr [ %.pre1494.a, %bb.iu ], [ %i.avp, %bb.it ]
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.awa = load i64, ptr %i.avz, align 8, !tbaa !167
  %i.awb = load i32, ptr %i.ig, align 8, !tbaa !1950
  %i.awc = trunc i64 %i.awa to i32
  %i.awd = add i32 %i.awb, %i.awc
  store i32 %i.awd, ptr %i.ig, align 8, !tbaa !1950
  br label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread

bb.iw:                                            ; preds = %bb.bb
  %i.awe = load i32, ptr %i.w, align 8, !tbaa !873 ; 2 uses
  %.not.i745 = icmp eq i32 %i.awe, 0
  br i1 %.not.i745, label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.awf = add i32 %i.awe, -1                     ; 2 uses
  %.not1417 = icmp eq i32 %i.awf, 0
  br i1 %.not1417, label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread.jt2, label %.lr.ph1380

.lr.ph1380:                                       ; preds = %bb.ix, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit753
  %.012331378 = phi i32 [ %72, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit753 ], [ 0, %bb.ix ] ; 3 uses
  %70 = or disjoint i32 %.012331378, 1
  %71 = zext i32 %.012331378 to i64
  %i.awg = load ptr, ptr %30, align 8, !tbaa !872
  %i.awh = getelementptr inbounds nuw [8 x i8], ptr %i.awg, i64 %71
  %i.awi = load i64, ptr %i.awh, align 8, !tbaa !167
  %i.awj = trunc i64 %i.awi to i32                ; 3 uses
  %i.awk = icmp eq i32 %i.awj, 0
  br i1 %i.awk, label %_ZNK5clang9ASTReader19getGlobalSelectorIDERNS_13serialization10ModuleFileEj.exit, label %bb.iy

bb.iy:                                            ; preds = %.lr.ph1380
  %i.awl = load i64, ptr %i.cg, align 8, !tbaa !1047
  %i.awm = icmp eq i64 %i.awl, 0
  br i1 %i.awm, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2)
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy
  %i.awn = add i32 %i.awj, -1
  %i.awo = load ptr, ptr %i.ia, align 8, !tbaa !872 ; 3 uses
  %i.awp = load i32, ptr %i.ib, align 8, !tbaa !873 ; 2 uses
  %.not.i.i.i746 = icmp eq i32 %i.awp, 0
  br i1 %.not.i.i.i746, label %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.thread.i.i, label %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i

_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i: ; preds = %bb.ja
  %i.awq = zext i32 %i.awp to i64                 ; 2 uses
  br label %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i

_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.awq, %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i = phi ptr [ %i.awo, %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i ], [ %.112.i.i.i.i.i, %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i ] ; 2 uses
  %i.awr = lshr i64 %.017.i.i.i.i.i, 1            ; 3 uses
  %i.aws = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i.i.i, i64 %i.awr ; 2 uses
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !1519
  %i.awu = icmp ult i32 %i.awn, %i.awt            ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  %i.aww = xor i64 %i.awr, -1
  %i.awx = add nsw i64 %.017.i.i.i.i.i, %i.aww
  %.112.i.i.i.i.i = select i1 %i.awu, ptr %.01116.i.i.i.i.i, ptr %i.awv ; 3 uses
  %.1.i.i.i.i.i = select i1 %i.awu, i64 %i.awr, i64 %i.awx ; 2 uses
  %i.awy = icmp sgt i64 %.1.i.i.i.i.i, 0
  br i1 %i.awy, label %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i, label %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.i.i, !llvm.loop !2

_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.i.i: ; preds = %_ZSt9__advanceIPSt4pairIjiElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i
  %i.awz = icmp eq ptr %.112.i.i.i.i.i, %i.awo
  br i1 %i.awz, label %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.thread.i.i, label %bb.jb

_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.thread.i.i: ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.i.i, %bb.ja
  %.pre-phi.i.i = phi i64 [ %i.awq, %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.i.i ], [ 0, %bb.ja ]
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.awo, i64 %.pre-phi.i.i
  br label %_ZN5clang18ContinuousRangeMapIjiLj2EE4findEj.exit.i

bb.jb:                                            ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.i.i
  %i.axb = getelementptr inbounds i8, ptr %.112.i.i.i.i.i, i64 -8
  br label %_ZN5clang18ContinuousRangeMapIjiLj2EE4findEj.exit.i

_ZN5clang18ContinuousRangeMapIjiLj2EE4findEj.exit.i: ; preds = %bb.jb, %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.thread.i.i
  %.0.i.i747 = phi ptr [ %i.axa, %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjiELj2EEERjN5clang18ContinuousRangeMapIjiLj2EE7CompareEEEDaOT_OT0_T1_.exit.thread.i.i ], [ %i.axb, %bb.jb ]
  %i.axc = getelementptr inbounds nuw i8, ptr %.0.i.i747, i64 4
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !1520
  %i.axe = add i32 %i.axd, %i.awj
  br label %_ZNK5clang9ASTReader19getGlobalSelectorIDERNS_13serialization10ModuleFileEj.exit

_ZNK5clang9ASTReader19getGlobalSelectorIDERNS_13serialization10ModuleFileEj.exit: ; preds = %.lr.ph1380, %_ZN5clang18ContinuousRangeMapIjiLj2EE4findEj.exit.i
  %.0.i = phi i32 [ %i.axe, %_ZN5clang18ContinuousRangeMapIjiLj2EE4findEj.exit.i ], [ 0, %.lr.ph1380 ] ; 2 uses
  %i.axf = load i32, ptr %i.ic, align 8, !tbaa !873 ; 2 uses
  %i.axg = load i32, ptr %i.id, align 4, !tbaa !874
  %.not.i748 = icmp ult i32 %i.axf, %i.axg
  br i1 %.not.i748, label %bb.jd, label %bb.jc, !prof !1146

bb.jc:                                            ; preds = %_ZNK5clang9ASTReader19getGlobalSelectorIDERNS_13serialization10ModuleFileEj.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef %.0.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.jd:                                            ; preds = %_ZNK5clang9ASTReader19getGlobalSelectorIDERNS_13serialization10ModuleFileEj.exit
  %i.axh = zext i32 %i.axf to i64
  %i.axi = load ptr, ptr %i.hz, align 8, !tbaa !872
  %i.axj = getelementptr inbounds nuw [4 x i8], ptr %i.axi, i64 %i.axh
  store i32 %.0.i, ptr %i.axj, align 1
  %i.axk = load i32, ptr %i.ic, align 8, !tbaa !873
  %i.axl = add i32 %i.axk, 1
  store i32 %i.axl, ptr %i.ic, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.jc, %bb.jd
  %72 = add i32 %.012331378, 2                    ; 2 uses
  %73 = zext i32 %70 to i64
  %74 = load ptr, ptr %30, align 8, !tbaa !872
  %75 = getelementptr inbounds nuw [8 x i8], ptr %74, i64 %73
  %i.axm = load i64, ptr %75, align 8, !tbaa !167 ; 2 uses
  %i.axn = load i64, ptr %i.cg, align 8, !tbaa !1047
  %i.axo = icmp eq i64 %i.axn, 0
  br i1 %i.axo, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2)
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %.sroa.4.0.extract.shift.i.i749 = lshr i64 %i.axm, 32 ; 2 uses
  %i.axp = icmp eq i64 %.sroa.4.0.extract.shift.i.i749, 0
  br i1 %i.axp, label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit751, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.axq = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i749, 4294967295
  %i.axr = and i64 %i.axq, 4294967295
  %i.axs = load ptr, ptr %i.ch, align 8, !tbaa !872
  %i.axt = getelementptr inbounds nuw [8 x i8], ptr %i.axs, i64 %i.axr
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !887
  br label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit751

_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit751: ; preds = %bb.jf, %bb.jg
  %i.axv = phi ptr [ %i.axu, %bb.jg ], [ %2, %bb.jf ]
  %i.axw = trunc i64 %i.axm to i32                ; 3 uses
  %i.axx = call i32 @llvm.fshl.i32(i32 %i.axw, i32 %i.axw, i32 31)
  %i.axy = icmp eq i32 %i.axw, 0
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axv, i64 1712
  %i.aya = load i32, ptr %i.axz, align 8
  %i.ayb = add i32 %i.axx, -2
  %i.ayc = add i32 %i.ayb, %i.aya
  %.sroa.0.0.i.i.i750 = select i1 %i.axy, i32 0, i32 %i.ayc ; 2 uses
  %i.ayd = load i32, ptr %i.ic, align 8, !tbaa !873 ; 2 uses
  %i.aye = load i32, ptr %i.id, align 4, !tbaa !874
  %.not.i752 = icmp ult i32 %i.ayd, %i.aye
  br i1 %.not.i752, label %bb.ji, label %bb.jh, !prof !1146

bb.jh:                                            ; preds = %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit751
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i32 noundef %.sroa.0.0.i.i.i750)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit753

bb.ji:                                            ; preds = %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit751
  %i.ayf = zext i32 %i.ayd to i64
  %i.ayg = load ptr, ptr %i.hz, align 8, !tbaa !872
  %i.ayh = getelementptr inbounds nuw [4 x i8], ptr %i.ayg, i64 %i.ayf
  store i32 %.sroa.0.0.i.i.i750, ptr %i.ayh, align 1
  %i.ayi = load i32, ptr %i.ic, align 8, !tbaa !873
  %i.ayj = add i32 %i.ayi, 1
  store i32 %i.ayj, ptr %i.ic, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit753

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit753: ; preds = %bb.jh, %bb.ji
  %i.ayk = icmp ult i32 %72, %i.awf
  br i1 %i.ayk, label %.lr.ph1380, label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread, !llvm.loop !4436

bb.jj:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store i32 0, ptr %i.g, align 4, !tbaa !952
  %i.ayl = load i32, ptr %i.w, align 8, !tbaa !873
  %.not.i754 = icmp eq i32 %i.ayl, 0
  br i1 %.not.i754, label %bb.jl, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.aym = load ptr, ptr %i.bj, align 8, !tbaa !1535, !nonnull !177, !align !178
  %i.ayn = call i32 @_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.aym, i64 940
  store i32 %i.ayn, ptr %i.ayo, align 4, !tbaa !952
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread

bb.jm:                                            ; preds = %bb.bb
  %i.ayp = load i32, ptr %i.w, align 8, !tbaa !873
  %.not.i755 = icmp eq i32 %i.ayp, 0
  br i1 %.not.i755, label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread, label %.lr.ph1376.preheader

.lr.ph1376.preheader:                             ; preds = %bb.jm
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #36
  store ptr %i.hw, ptr %50, align 8, !tbaa !872
  store i32 0, ptr %i.hx, align 8, !tbaa !873
  store i32 64, ptr %i.hy, align 4, !tbaa !874
  br label %.lr.ph1376

.lr.ph1376:                                       ; preds = %.lr.ph1376.preheader, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit
  %indvars.iv1457 = phi i64 [ 0, %.lr.ph1376.preheader ], [ %indvars.iv.next1458, %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit ] ; 2 uses
  %indvars.iv.next1458 = add nuw nsw i64 %indvars.iv1457, 1 ; 2 uses
  %i.ayq = load ptr, ptr %30, align 8, !tbaa !872
  %i.ayr = getelementptr inbounds nuw [8 x i8], ptr %i.ayq, i64 %indvars.iv1457
  %i.ays = load i64, ptr %i.ayr, align 8, !tbaa !167 ; 2 uses
  %i.ayt = load i64, ptr %i.cg, align 8, !tbaa !1047
  %i.ayu = icmp eq i64 %i.ayt, 0
  br i1 %i.ayu, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %.lr.ph1376
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2)
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %.lr.ph1376
  %.sroa.4.0.extract.shift.i.i756 = lshr i64 %i.ays, 32 ; 2 uses
  %i.ayv = icmp eq i64 %.sroa.4.0.extract.shift.i.i756, 0
  br i1 %i.ayv, label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit758, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.ayw = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i756, 4294967295
  %i.ayx = and i64 %i.ayw, 4294967295
  %i.ayy = load ptr, ptr %i.ch, align 8, !tbaa !872
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.ayy, i64 %i.ayx
  %i.aza = load ptr, ptr %i.ayz, align 8, !tbaa !887
  br label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit758

_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit758: ; preds = %bb.jo, %bb.jp
  %i.azb = phi ptr [ %i.aza, %bb.jp ], [ %2, %bb.jo ]
  %i.azc = trunc i64 %i.ays to i32                ; 3 uses
  %i.azd = call i32 @llvm.fshl.i32(i32 %i.azc, i32 %i.azc, i32 31)
  %i.aze = icmp eq i32 %i.azc, 0
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azb, i64 1712
  %i.azg = load i32, ptr %i.azf, align 8
  %i.azh = add i32 %i.azd, -2
  %i.azi = add i32 %i.azh, %i.azg
  %.sroa.0.0.i.i.i757 = select i1 %i.aze, i32 0, i32 %i.azi ; 2 uses
  %i.azj = load i32, ptr %i.hx, align 8, !tbaa !873 ; 2 uses
  %i.azk = load i32, ptr %i.hy, align 4, !tbaa !874
  %.not.i759 = icmp ult i32 %i.azj, %i.azk
  br i1 %.not.i759, label %bb.jr, label %bb.jq, !prof !1146

bb.jq:                                            ; preds = %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit758
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %50, i32 %.sroa.0.0.i.i.i757)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit

bb.jr:                                            ; preds = %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit758
  %i.azl = zext i32 %i.azj to i64
  %i.azm = load ptr, ptr %50, align 8, !tbaa !872
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %i.azm, i64 %i.azl
  store i32 %.sroa.0.0.i.i.i757, ptr %i.azn, align 1
  %i.azo = load i32, ptr %i.hx, align 8, !tbaa !873
  %i.azp = add i32 %i.azo, 1
  store i32 %i.azp, ptr %i.hx, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit: ; preds = %bb.jq, %bb.jr
  %i.azq = load i32, ptr %i.w, align 8, !tbaa !873
  %i.azr = zext i32 %i.azq to i64
  %i.azs = icmp samesign ult i64 %indvars.iv.next1458, %i.azr
  br i1 %i.azs, label %.lr.ph1376, label %._crit_edge1377, !llvm.loop !4437

._crit_edge1377:                                  ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang14SourceLocationELb1EE9push_backES2_.exit
  %i.azt = load ptr, ptr %i.bj, align 8, !tbaa !1535, !nonnull !177, !align !178
  %i.azu = call noundef zeroext i1 @_ZN5clang12Preprocessor34setDeserializedSafeBufferOptOutMapERKN4llvm15SmallVectorImplINS_14SourceLocationEEE(ptr noundef nonnull align 8 dereferenceable(3344) %i.azt, ptr noundef nonnull align 8 dereferenceable(16) %50) #36 ; 0 uses
  %i.azv = load ptr, ptr %50, align 8, !tbaa !872 ; 2 uses
  %i.azw = icmp eq ptr %i.azv, %i.hw
  br i1 %i.azw, label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj64EED2Ev.exit, label %bb.js

bb.js:                                            ; preds = %._crit_edge1377
  call void @free(ptr noundef %i.azv) #36
  br label %_ZN4llvm11SmallVectorIN5clang14SourceLocationELj64EED2Ev.exit

_ZN4llvm11SmallVectorIN5clang14SourceLocationELj64EED2Ev.exit: ; preds = %._crit_edge1377, %bb.js
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #36
  br label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread

bb.jt:                                            ; preds = %bb.bb
  %i.azx = load i32, ptr %i.w, align 8, !tbaa !873 ; 2 uses
  %.not.i760 = icmp eq i32 %i.azx, 0
  br i1 %.not.i760, label %_ZNK5clang13serialization10ModuleFile8isModuleEv.exit.thread, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  %i.azy = add i32 %i.azx, -1                     ; 2 uses
  store i32 1, ptr %i.h, align 4, !tbaa !952
  %i.azz = load ptr, ptr %30, align 8, !tbaa !872
  %i.baa = load i64, ptr %i.azz, align 8, !tbaa !167
  %.not538 = icmp eq i64 %i.baa, 0
  br i1 %.not538, label %bb.jw, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.bab = call i32 @_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.bac = call i32 @_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.bad = load i32, ptr %i.h, align 4, !tbaa !952 ; 3 uses
  %i.bae = add i32 %i.bad, 1
  %i.baf = zext i32 %i.bad to i64
  %i.bag = load ptr, ptr %30, align 8, !tbaa !872 ; 2 uses
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.bag, i64 %i.baf
  %i.bai = load i64, ptr %i.bah, align 8, !tbaa !167
  %i.baj = icmp ne i64 %i.bai, 0
  %i.bak = zext i1 %i.baj to i8
  %i.bal = add i32 %i.bad, 2
  store i32 %i.bal, ptr %i.h, align 4, !tbaa !952
  %i.bam = zext i32 %i.bae to i64
  %i.ban = getelementptr inbounds nuw [8 x i8], ptr %i.bag, i64 %i.bam
  %i.bao = load i64, ptr %i.ban, align 8, !tbaa !167
  %i.bap = icmp ne i64 %i.bao, 0
  %i.baq = zext i1 %i.bap to i8
  %i.bar = call i32 @_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %.pre1490.a = load i32, ptr %i.h, align 4, !tbaa !952
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %i.bas = phi i32 [ 1, %bb.ju ], [ %.pre1490.a, %bb.jv ] ; 2 uses
  %.sroa.01123.0 = phi i32 [ undef, %bb.ju ], [ %i.bab, %bb.jv ]
  %.sroa.41124.0 = phi i32 [ undef, %bb.ju ], [ %i.bac, %bb.jv ]
  %.sroa.5.0 = phi i8 [ undef, %bb.ju ], [ %i.bak, %bb.jv ]
  %.sroa.6.0 = phi i8 [ undef, %bb.ju ], [ %i.baq, %bb.jv ]
  %.sroa.71127.0 = phi i32 [ undef, %bb.ju ], [ %i.bar, %bb.jv ]
  %.sroa.8.0 = phi i8 [ 0, %bb.ju ], [ 1, %bb.jv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #36
  store ptr %i.ht, ptr %51, align 8, !tbaa !872
  store i32 0, ptr %i.hu, align 8, !tbaa !873
  store i32 4, ptr %i.hv, align 4, !tbaa !874
  %i.bat = icmp ult i32 %i.bas, %i.azy
  br i1 %i.bat, label %.lr.ph1372, label %._crit_edge1373

.lr.ph1372:                                       ; preds = %bb.jw, %_ZN4llvm23SmallVectorTemplateBaseIN5clang17PPConditionalInfoELb1EE9push_backES2_.exit
  %i.bau = phi i32 [ %i.bcl, %_ZN4llvm23SmallVectorTemplateBaseIN5clang17PPConditionalInfoELb1EE9push_backES2_.exit ], [ %i.bas, %bb.jw ] ; 2 uses
  %i.bav = add nuw i32 %i.bau, 1
  store i32 %i.bav, ptr %i.h, align 4, !tbaa !952
  %i.baw = zext i32 %i.bau to i64
  %i.bax = load ptr, ptr %30, align 8, !tbaa !872
  %i.bay = getelementptr inbounds nuw [8 x i8], ptr %i.bax, i64 %i.baw
  %i.baz = load i64, ptr %i.bay, align 8, !tbaa !167 ; 2 uses
  %i.bba = load i64, ptr %i.cg, align 8, !tbaa !1047
  %i.bbb = icmp eq i64 %i.bba, 0
  br i1 %i.bbb, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %.lr.ph1372
  call void @_ZNK5clang9ASTReader19ReadModuleOffsetMapERNS_13serialization10ModuleFileE(ptr noundef nonnull align 8 dereferenceable(16376) %1, ptr noundef nonnull align 8 dereferenceable(3832) %2)
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %.lr.ph1372
  %.sroa.4.0.extract.shift.i.i761 = lshr i64 %i.baz, 32 ; 2 uses
  %i.bbc = icmp eq i64 %.sroa.4.0.extract.shift.i.i761, 0
  br i1 %i.bbc, label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit763, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.bbd = add nuw nsw i64 %.sroa.4.0.extract.shift.i.i761, 4294967295
  %i.bbe = and i64 %i.bbd, 4294967295
  %i.bbf = load ptr, ptr %i.ch, align 8, !tbaa !872
  %i.bbg = getelementptr inbounds nuw [8 x i8], ptr %i.bbf, i64 %i.bbe
  %i.bbh = load ptr, ptr %i.bbg, align 8, !tbaa !887
  br label %_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit763

_ZN5clang9ASTReader18ReadSourceLocationERNS_13serialization10ModuleFileERKN4llvm15SmallVectorImplImEERj.exit763: ; preds = %bb.jy, %bb.jz
  %i.bbi = phi ptr [ %i.bbh, %bb.jz ], [ %2, %bb.jy ]
  %i.bbj = trunc i64 %i.baz to i32                ; 3 uses
  %i.bbk = call i32 @llvm.fshl.i32(i32 %i.bbj, i32 %i.bbj, i32 31)
  %i.bbl = icmp eq i32 %i.bbj, 0
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbi, i64 1712
  %i.bbn = load i32, ptr %i.bbm, align 8
  %i.bbo = add i32 %i.bbk, -2
  %i.bbp = add i32 %i.bbo, %i.bbn
  %.sroa.0.0.i.i.i762 = select i1 %i.bbl, i32 0, i32 %i.bbp
  %i.bbq = load i32, ptr %i.h, align 4, !tbaa !952 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge._crit_edge.i.i.i.i
  %i.af = phi ptr [ %i.ac, %bb.i ], [ %.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %.1.i.i.i.i = phi ptr [ %i.ae, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 3 uses
  %i.ag = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !1705
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge._crit_edge52.i.i.i.i
  %i.aj = phi ptr [ %i.af, %bb.k ], [ %.pre53.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ] ; 3 uses
  %.2.i.i.i.i = phi ptr [ %i.ai, %bb.k ], [ %.029.lcssa.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ] ; 2 uses
  %i.ak = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !1705
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.thread

_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit35: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit37: ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit: ; preds = %bb.c, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit35, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit37, %bb.h, %bb.j, %bb.l
  %i.ap = phi ptr [ %i.af, %bb.j ], [ %i.ac, %bb.h ], [ %i.aj, %bb.l ], [ %i.k, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.k, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit37 ], [ %i.k, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit35 ], [ %i.k, %bb.c ]
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.h ], [ %.2.i.i.i.i, %bb.l ], [ %i.am, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ao, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit37 ], [ %i.an, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.loopexit.split.loop.exit35 ], [ %.02946.i.i.i.i, %bb.c ]
  %.not = icmp eq ptr %.028.i.i.i.i, %i.i
  br i1 %.not, label %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.thread, label %_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE7makeBigEv.exit

_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.thread_crit_edge, %bb.l, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit
  %i.aq = phi ptr [ %.pre, %._crit_edge.i.i.i.i._ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.thread_crit_edge ], [ %i.aj, %bb.l ], [ %i.ap, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !874
  %.not.i7 = icmp ult i32 %i.g, %i.as
  br i1 %.not.i7, label %bb.n, label %bb.m, !prof !1146

bb.m:                                             ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.thread
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef %i.aq)
  %.pre24 = load i32, ptr %i.f, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

bb.n:                                             ; preds = %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit.thread
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.h
  store ptr %i.aq, ptr %i.at, align 1
  %i.au = load i32, ptr %i.f, align 8, !tbaa !873
  %i.av = add i32 %i.au, 1                        ; 2 uses
  store i32 %i.av, ptr %i.f, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit: ; preds = %bb.m, %bb.n
  %i.aw = phi i32 [ %.pre24, %bb.m ], [ %i.av, %bb.n ] ; 2 uses
  %i.ax = icmp ugt i32 %i.aw, 4
  br i1 %i.ax, label %.lr.ph.i.preheader, label %_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE7makeBigEv.exit

.lr.ph.i.preheader:                               ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !872 ; 2 uses
  %i.az = zext i32 %i.aw to i64
  %.idx.i = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09.i = phi ptr [ %i.bc, %.lr.ph.i ], [ %i.ay, %.lr.ph.i.preheader ] ; 2 uses
  %i.bb = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %.09.i), !noalias !5657 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i, i64 8 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bc, %i.ba
  br i1 %.not.i8, label %_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE7makeBigEv.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.a
  %i.bd = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPN5clang4DeclENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !5658
  %.fca.1.extract.i.i.i = extractvalue { ptr, i8 } %i.bd, 1
  %i.be = trunc nuw i8 %.fca.1.extract.i.i.i to i1
  br i1 %i.be, label %bb.p, label %_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE7makeBigEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !1705  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !873 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !874
  %.not.i9 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i9, label %bb.r, label %bb.q, !prof !1146

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef %i.bg)
  br label %_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE7makeBigEv.exit

bb.r:                                             ; preds = %bb.p
  %i.bl = zext i32 %i.bi to i64
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !872
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  store ptr %i.bg, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !873
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bh, align 8, !tbaa !873
  br label %_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE7makeBigEv.exit

_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE7makeBigEv.exit: ; preds = %.lr.ph.i, %bb.r, %bb.q, %bb.o, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit
  %.0 = phi i1 [ true, %_ZN4llvm23SmallVectorTemplateBaseIPN5clang4DeclELb1EE9push_backES3_.exit ], [ false, %_ZN4llvm12is_containedIRNS_11SmallVectorIPN5clang4DeclELj4EEES4_EEbOT_RKT0_.exit ], [ false, %bb.o ], [ true, %bb.r ], [ true, %bb.q ], [ true, %.lr.ph.i ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn24_N5clang9ASTReader32ReadDeclsToCheckForDeferredDiagsERN4llvm14SmallSetVectorIPNS_4DeclELj4EEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 -24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9272
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9296
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !872  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 9304 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !873  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.g, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.f, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 9288 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1573 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_ZN5clang9ASTReader32ReadDeclsToCheckForDeferredDiagsERN4llvm14SmallSetVectorIPNS_4DeclELj4EEE.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.m = shl i32 %i.k, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9292
  %i.o = load i32, ptr %i.n, align 4, !tbaa !2221 ; 3 uses
  %i.p = icmp ult i32 %i.m, %i.o
  %i.q = icmp ugt i32 %i.o, 64
  %or.cond.i.i.i.i = and i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN5clang12GlobalDeclIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E16shrink_and_clearEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c)
  br label %_ZN5clang9ASTReader32ReadDeclsToCheckForDeferredDiagsERN4llvm14SmallSetVectorIPNS_4DeclELj4EEE.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 9280
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !2220
  %i.t = zext i32 %i.o to i64
  %i.u = add nuw nsw i64 %i.t, 31
  %i.v = lshr i64 %i.u, 3
  %i.w = and i64 %i.v, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %i.w, i1 false)
  store i32 0, ptr %i.j, align 8, !tbaa !1573
  br label %_ZN5clang9ASTReader32ReadDeclsToCheckForDeferredDiagsERN4llvm14SmallSetVectorIPNS_4DeclELj4EEE.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.f
  %.011.i = phi ptr [ %i.z, %bb.f ], [ %i.e, %bb.a ] ; 2 uses
  %.sroa.01.0.copyload.i = load i64, ptr %.011.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.x = call noundef ptr @_ZN5clang9ASTReader7GetDeclENS_12GlobalDeclIDE(ptr noundef nonnull align 8 dereferenceable(16376) %i.b, i64 %.sroa.01.0.copyload.i) ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !1705
  %.not9.i = icmp eq ptr %i.x, null
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.y = call noundef zeroext i1 @_ZN4llvm9SetVectorIPN5clang4DeclENS_11SmallVectorIS3_Lj4EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj4EE6insertERKS3_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.z, %i.i
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

_ZN5clang9ASTReader32ReadDeclsToCheckForDeferredDiagsERN4llvm14SmallSetVectorIPNS_4DeclELj4EEE.exit: ; preds = %._crit_edge.i, %bb.c, %bb.d
  store i32 0, ptr %i.f, align 8, !tbaa !873
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader23ReadReferencedSelectorsERN4llvm15SmallVectorImplISt4pairINS_8SelectorENS_14SourceLocationEEEE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6648 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6656 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !873  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit
  %.09 = phi i32 [ 0, %.lr.ph ], [ %4, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit ] ; 3 uses
  %2 = or disjoint i32 %.09, 1
  %3 = zext i32 %.09 to i64
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %3
  %i.i = load i32, ptr %i.h, align 4, !tbaa !952
  %i.j = tail call i64 @_ZN5clang9ASTReader14DecodeSelectorEj(ptr noundef nonnull align 8 dereferenceable(16376) %0, i32 noundef %i.i) ; 2 uses
  %4 = add i32 %.09, 2                            ; 2 uses
  %5 = zext i32 %2 to i64
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %5
  %i.m = load i32, ptr %i.l, align 4, !tbaa !952  ; 2 uses
  %i.n = load i32, ptr %i.e, align 8, !tbaa !873  ; 2 uses
  %i.o = load i32, ptr %i.f, align 4, !tbaa !874
  %.not.i7 = icmp ult i32 %i.n, %i.o
  br i1 %.not.i7, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.j, i32 %i.m)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = zext i32 %i.n to i64
  %i.q = load ptr, ptr %1, align 8, !tbaa !872
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.p ; 2 uses
  store i64 %i.j, ptr %i.r, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.m, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.s = load i32, ptr %i.e, align 8, !tbaa !873
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.e, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit: ; preds = %bb.d, %bb.e
  %i.u = icmp ult i32 %4, %i.d
  br i1 %i.u, label %bb.c, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !873
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN5clang9ASTReader14DecodeSelectorEj(ptr noundef nonnull align 8 dereferenceable(16376) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.clang::serialization::reader::ASTSelectorLookupTrait", align 8 ; 5 uses
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4448 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4456
  %i.d = load i32, ptr %i.c, align 8, !tbaa !873
  %i.e = icmp ult i32 %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK5clang9ASTReader5ErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr nonnull @.str.87, i64 36)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = add i32 %1, -1
  %i.g = zext i32 %i.f to i64                     ; 4 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %.0.copyload.i.i.i = load i64, ptr %i.i, align 8 ; 2 uses
  %i.j = icmp eq i64 %.0.copyload.i.i.i, 0
  br i1 %i.j, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !872  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.n = load i32, ptr %i.m, align 8, !tbaa !873  ; 2 uses
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.thread.i, label %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i

_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i: ; preds = %bb.e
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  br label %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i

_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i: ; preds = %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.o, %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i = phi ptr [ %i.l, %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i ], [ %.112.i.i.i.i, %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i ] ; 2 uses
  %i.p = lshr i64 %.017.i.i.i.i, 1                ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1571
  %i.s = icmp ult i32 %1, %i.r                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = xor i64 %i.p, -1
  %i.v = add nsw i64 %.017.i.i.i.i, %i.u
  %.112.i.i.i.i = select i1 %i.s, ptr %.01116.i.i.i.i, ptr %i.t ; 3 uses
  %.1.i.i.i.i = select i1 %i.s, i64 %i.p, i64 %i.v ; 2 uses
  %i.w = icmp sgt i64 %.1.i.i.i.i, 0
  br i1 %i.w, label %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i, label %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.i, !llvm.loop !4

_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.i: ; preds = %_ZSt9__advanceIPSt4pairIjPN5clang13serialization10ModuleFileEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i
  %i.x = icmp eq ptr %.112.i.i.i.i, %i.l
  br i1 %i.x, label %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.thread.i, label %bb.f

_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.thread.i: ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.i, %bb.e
  %.pre-phi.i = phi i64 [ %i.o, %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.i ], [ 0, %bb.e ]
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i
  br label %_ZN5clang18ContinuousRangeMapIjPNS_13serialization10ModuleFileELj4EE4findEj.exit

bb.f:                                             ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.i
  %i.z = getelementptr inbounds i8, ptr %.112.i.i.i.i, i64 -16
  br label %_ZN5clang18ContinuousRangeMapIjPNS_13serialization10ModuleFileELj4EE4findEj.exit

_ZN5clang18ContinuousRangeMapIjPNS_13serialization10ModuleFileELj4EE4findEj.exit: ; preds = %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.thread.i, %bb.f
  %.0.i = phi ptr [ %i.y, %_ZN4llvm11upper_boundIRNS_11SmallVectorISt4pairIjPN5clang13serialization10ModuleFileEELj4EEERjNS3_18ContinuousRangeMapIjS6_Lj4EE7CompareEEEDaOT_OT0_T1_.exit.thread.i ], [ %i.z, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1572 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %0, ptr %2, align 8, !tbaa !1712
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !887
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 3016
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1787
  %i.af = xor i32 %i.ae, -1
  %i.ag = add i32 %1, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 3056
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1945
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 3008
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1944
  %i.al = zext i32 %i.ag to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !952
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ao
  %i.aq = call i64 @_ZN5clang13serialization6reader22ASTSelectorLookupTrait7ReadKeyEPKhj(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.ap, i32 poison)
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.g
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !168
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1143 ; 3 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5clang18ContinuousRangeMapIjPNS_13serialization10ModuleFileELj4EE4findEj.exit
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.g
  %.sroa.0.0.copyload = load i64, ptr %i.aw, align 8, !tbaa !168
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !159
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i32 noundef %1, i64 %.sroa.0.0.copyload) #36
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5clang18ContinuousRangeMapIjPNS_13serialization10ModuleFileELj4EE4findEj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !872
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.g
  %.pre18 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !168
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.a, %bb.c
  %.sroa.017.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %.pre18, %bb.h ], [ %.0.copyload.i.i.i, %bb.d ]
  ret i64 %.sroa.017.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZThn24_N5clang9ASTReader23ReadReferencedSelectorsERN4llvm15SmallVectorImplISt4pairINS_8SelectorENS_14SourceLocationEEEE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6624 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 6632 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !873  ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN5clang9ASTReader23ReadReferencedSelectorsERN4llvm15SmallVectorImplISt4pairINS_8SelectorENS_14SourceLocationEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %i.d, -1                         ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit.i, %.lr.ph.i
  %.09.i = phi i32 [ 0, %.lr.ph.i ], [ %4, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit.i ] ; 3 uses
  %2 = or disjoint i32 %.09.i, 1
  %3 = zext i32 %.09.i to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %3
  %i.j = load i32, ptr %i.i, align 4, !tbaa !952
  %i.k = tail call i64 @_ZN5clang9ASTReader14DecodeSelectorEj(ptr noundef nonnull align 8 dereferenceable(16376) %i.a, i32 noundef %i.j) ; 2 uses
  %4 = add i32 %.09.i, 2                          ; 2 uses
  %5 = zext i32 %2 to i64
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !872
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %5
  %i.n = load i32, ptr %i.m, align 4, !tbaa !952  ; 2 uses
  %i.o = load i32, ptr %i.f, align 8, !tbaa !873  ; 2 uses
  %i.p = load i32, ptr %i.g, align 4, !tbaa !874
  %.not.i7.i = icmp ult i32 %i.o, %i.p
  br i1 %.not.i7.i, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE15growAndPushBackES5_(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %i.k, i32 %i.n)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = zext i32 %i.o to i64
  %i.r = load ptr, ptr %1, align 8, !tbaa !872
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.q ; 2 uses
  store i64 %i.k, ptr %i.s, align 1
  %.sroa.32.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.n, ptr %.sroa.32.0..sroa_idx.i.i, align 1
  %i.t = load i32, ptr %i.f, align 8, !tbaa !873
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.f, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit.i: ; preds = %bb.e, %bb.d
  %i.v = icmp ult i32 %4, %i.e
  br i1 %i.v, label %bb.c, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN5clang8SelectorENS2_14SourceLocationEELb1EE9push_backES5_.exit.i, %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !873
  br label %_ZN5clang9ASTReader23ReadReferencedSelectorsERN4llvm15SmallVectorImplISt4pairINS_8SelectorENS_14SourceLocationEEEE.exit

_ZN5clang9ASTReader23ReadReferencedSelectorsERN4llvm15SmallVectorImplISt4pairINS_8SelectorENS_14SourceLocationEEEE.exit: ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang9ASTReader29ReadWeakUndeclaredIdentifiersERN4llvm15SmallVectorImplISt4pairIPNS_14IdentifierInfoENS_8WeakInfoEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16376) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.2770", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6920 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6928 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !873  ; 2 uses
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.c

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS2_8WeakInfoEELb1EE9push_backERKS6_.exit
  store i32 0, ptr %i.b, align 8, !tbaa !873
  br label %bb.f

bb.c:                                             ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS2_8WeakInfoEELb1EE9push_backERKS6_.exit
  %.09 = phi i32 [ 0, %.preheader ], [ %i.s, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS2_8WeakInfoEELb1EE9push_backERKS6_.exit ] ; 4 uses
  %i.g = add nuw i32 %.09, 1
  %i.h = zext i32 %.09 to i64
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load i64, ptr %i.j, align 8, !tbaa !167
  %i.l = call noundef ptr @_ZN5clang9ASTReader20DecodeIdentifierInfoEm(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 noundef %i.k)
  %i.m = add i32 %.09, 2
  %i.n = zext i32 %i.g to i64
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load i64, ptr %i.p, align 8, !tbaa !167
  %i.r = call noundef ptr @_ZN5clang9ASTReader20DecodeIdentifierInfoEm(ptr noundef nonnull align 8 dereferenceable(16376) %0, i64 noundef %i.q)
  %i.s = add i32 %.09, 3                          ; 2 uses
  %i.t = zext i32 %i.m to i64
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !872
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !167
  %i.x = trunc i64 %i.w to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %i.l, ptr %2, align 8, !tbaa !2935, !alias.scope !5661
  store ptr %i.r, ptr %i.d, align 8, !tbaa !1536
  store i32 %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !952
  %i.y = load i32, ptr %i.e, align 8, !tbaa !873  ; 2 uses
  %i.z = load i32, ptr %i.f, align 4, !tbaa !874
  %.not.i8 = icmp ult i32 %i.y, %i.z
  br i1 %.not.i8, label %bb.e, label %bb.d, !prof !1146

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS2_8WeakInfoEELb1EE15growAndPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS2_8WeakInfoEELb1EE9push_backERKS6_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = zext i32 %i.y to i64
  %i.ab = load ptr, ptr %1, align 8, !tbaa !872
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ad = load i32, ptr %i.e, align 8, !tbaa !873
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !873
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS2_8WeakInfoEELb1EE9push_backERKS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang14IdentifierInfoENS2_8WeakInfoEELb1EE9push_backERKS6_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %i.af = icmp ult i32 %i.s, %i.c
  br i1 %i.af, label %bb.c, label %bb.b, !llvm.loop !56

bb.f:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN5clang9ASTReader20DecodeIdentifierInfoEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16376) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4240 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1550 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1550
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZNK5clang9ASTReader28translateIdentifierIDToIndexEm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK5clang9ASTReader5ErrorEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(16376) %0, ptr nonnull @.str.85, i64 31)
  br label %bb.s

_ZNK5clang9ASTReader28translateIdentifierIDToIndexEm.exit: ; preds = %bb.b
  %i.i = lshr i64 %1, 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = add nuw nsw i64 %i.i, 4294967295
  %i.l = and i64 %i.k, 4294967295
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !872
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !887  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1752
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1539
  %i.r = add i64 %i.q, %1
  %i.s = and i64 %i.r, 4294967295                 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1536 ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.d, label %bb.s

bb.d:                                             ; preds = %_ZNK5clang9ASTReader28translateIdentifierIDToIndexEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1760
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1928
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1744
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1936
  %i.z = and i64 %1, 4294967295
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !952
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  store ptr %i.ad, ptr %i.b, align 8, !tbaa !876
  %i.ae = call fastcc i64 @_ZL21readULEBKeyDataLengthRPKh(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !876 ; 2 uses
  %i.ag = add i64 %i.ae, 4294967295
  %i.ah = and i64 %i.ag, 4294967295               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1535, !nonnull !177, !align !178 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store ptr null, ptr %i.a, align 8, !tbaa !5664
  %i.al = call { ptr, i8 } @_ZN4llvm9StringMapIPN5clang14IdentifierInfoENS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE11try_emplaceIJDnEEESt4pairINS_17StringMapIterBaseIS3_Lb0EEEbENS_9StringRefEDpOT_(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, ptr %i.af, i64 %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.al, 0
  %i.am = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !1006 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1536 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.e, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 672
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1935 ; 3 uses
  %.not22.i = icmp eq ptr %i.aq, null
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !159
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr %i.af, i64 %i.ah) #36, !inline_history !5662 ; 3 uses
  store ptr %i.au, ptr %i.an, align 8, !tbaa !1536
  %.not23.i = icmp eq ptr %i.au, null
  br i1 %.not23.i, label %bb.g, label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 592 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1543 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = add i64 %i.ax, 24                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 600
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !1544
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.i, !prof !1146

bb.h:                                             ; preds = %bb.g
  %i.bc = inttoptr i64 %i.ay to ptr
  store ptr %i.bc, ptr %i.av, align 8, !tbaa !1543
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

bb.i:                                             ; preds = %bb.g
  %i.bd = call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.av, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i

_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi ptr [ %i.aw, %bb.h ], [ %i.bd, %bb.i ] ; 6 uses
  %i.be = load i64, ptr %.0.i.i.i.i.i, align 8
  %i.bf = and i64 %i.be, -17592186044416
  %i.bg = or disjoint i64 %i.bf, 33553413
  store i64 %i.bg, ptr %.0.i.i.i.i.i, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  store i64 0, ptr %i.bh, align 8
  store ptr %.0.i.i.i.i.i, ptr %i.an, align 8, !tbaa !1536
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  store ptr %i.am, ptr %i.bi, align 8, !tbaa !1547
  br label %_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit

_ZN5clang15IdentifierTable3getEN4llvm9StringRefE.exit: ; preds = %bb.d, %bb.f, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i
  %.0.i = phi ptr [ %.0.i.i.i.i.i, %_ZN4llvm13AllocatorBaseINS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEEE8AllocateIN5clang14IdentifierInfoEEEPT_m.exit.i ], [ %i.ao, %bb.d ], [ %i.au, %bb.f ] ; 6 uses
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !1540
end_hunk_1
