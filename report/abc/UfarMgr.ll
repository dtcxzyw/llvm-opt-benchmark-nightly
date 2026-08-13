inline.NumInlined: 7367
inline.NumDeleted: 2728
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN4UFAR16CexUifPairFinder17FindUifPairsBasicERKSt6vectorIS1_IcSaIcEESaIS3_EEjRSt3setINS_7UifPairESt4lessIS9_ESaIS9_EE:bb.a

bb.cl:                                            ; preds = %bb.cj
  br i1 %.not621, label %bb.cm, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

bb.cm:                                            ; preds = %bb.cl
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 48
  %i.ajo = load i8, ptr %i.ajn, align 4, !tbaa !14, !range !17, !noundef !18
  %i.ajp = trunc nuw i8 %i.ajo to i1
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci, %bb.cg
  %i.ajq = phi i1 [ %i.ajp, %bb.cm ], [ true, %bb.cg ], [ %.0.i.i.i.i.i323, %bb.ci ], [ %.0.i10.i.i.i.i321, %bb.ck ], [ false, %bb.cl ]
  %i.ajr = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #43 ; 4 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 32
  store i64 %.sroa.0362.0.insert.insert, ptr %i.ajs, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajr, i64 40
  store i64 %i.fh, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajr, i64 48
  store i8 %i.abk, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !163
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ajq, ptr noundef nonnull %i.ajr, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #37
  %i.ajt = load i64, ptr %i.ct, align 8, !tbaa !159
  %i.aju = add i64 %i.ajt, 1
  store i64 %i.aju, ptr %i.ct, align 8, !tbaa !159
  br label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, %bb.cf, %.split35.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, %.split6.i.i, %bb.bx, %.split.i.i
  br i1 %i.abr, label %bb.cn, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193

bb.cn:                                            ; preds = %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit
  %i.ajv = load ptr, ptr %i.cu, align 8, !tbaa !232 ; 4 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 16
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 8 ; 3 uses
  %.02224.i.i = load ptr, ptr %i.ajw, align 8, !tbaa !161 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02224.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn, %.lr.ph.i.i
  %.02226.i.i = phi ptr [ %.022.i.i, %.lr.ph.i.i ], [ %.02224.i.i, %bb.cn ] ; 5 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 32
  %i.ajz = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 36
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !13 ; 3 uses
  %.not.i.i.i.i324 = icmp eq i32 %i.abq, %i.aka
  %i.akb = icmp slt i32 %i.abq, %i.aka
  %i.akc = load i32, ptr %i.ajy, align 4
  %i.akd = sext i32 %i.akc to i64                 ; 2 uses
  %i.ake = icmp slt i64 %indvars.iv, %i.akd
  %.0.i.i.i.i325 = select i1 %.not.i.i.i.i324, i1 %i.ake, i1 %i.akb ; 2 uses
  %.in.v.i.i = select i1 %.0.i.i.i.i325, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 %.in.v.i.i
  %.022.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !161 ; 2 uses
  %.not.i.i326 = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i326, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !412

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %.0.i.i.i.i325, label %._crit_edge.thread.i.i, label %bb.cp

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.cn
  %.021.lcssa31.i.i = phi ptr [ %.02226.i.i, %._crit_edge.i.i ], [ %i.ajx, %bb.cn ] ; 4 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !157
  %i.akh = icmp eq ptr %.021.lcssa31.i.i, %i.akg
  br i1 %i.akh, label %select.unfold.i, label %bb.co

bb.co:                                            ; preds = %._crit_edge.thread.i.i
  %i.aki = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa31.i.i) #44 ; 2 uses
  %.phi.trans.insert.i330 = getelementptr inbounds nuw i8, ptr %i.aki, i64 36
  %.pre.i331 = load i32, ptr %.phi.trans.insert.i330, align 4, !tbaa !13
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %i.aki, i64 32
  %.pre23.i = load i32, ptr %.phi.trans.insert22.i, align 4
  %.pre495 = sext i32 %.pre23.i to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %._crit_edge.i.i
  %.pre-phi = phi i64 [ %.pre495, %bb.co ], [ %i.akd, %._crit_edge.i.i ]
  %i.akj = phi i32 [ %.pre.i331, %bb.co ], [ %i.aka, %._crit_edge.i.i ] ; 2 uses
  %.021.lcssa30.i.i = phi ptr [ %.021.lcssa31.i.i, %bb.co ], [ %.02226.i.i, %._crit_edge.i.i ]
  %.not.i.i5.i.i = icmp eq i32 %i.akj, %i.abq
  %i.akk = icmp slt i32 %i.akj, %i.abq
  %i.akl = icmp slt i64 %.pre-phi, %indvars.iv
  %.0.i.i6.i.i = select i1 %.not.i.i5.i.i, i1 %i.akl, i1 %i.akk
  br i1 %.0.i.i6.i.i, label %select.unfold.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193

select.unfold.i:                                  ; preds = %bb.cp, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.021.lcssa31.i.i, %._crit_edge.thread.i.i ], [ %.021.lcssa30.i.i, %bb.cp ] ; 4 uses
  %i.akm = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ajx
  br i1 %i.akm, label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.cq

bb.cq:                                            ; preds = %select.unfold.i
  %i.akn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ako = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !13 ; 2 uses
  %.not.i.i.i6.i = icmp eq i32 %i.abq, %i.akp
  %i.akq = icmp slt i32 %i.abq, %i.akp
  %i.akr = load i32, ptr %i.akn, align 4
  %i.aks = sext i32 %i.akr to i64
  %i.akt = icmp slt i64 %indvars.iv, %i.aks
  %.0.i.i.i7.i = select i1 %.not.i.i.i6.i, i1 %i.akt, i1 %i.akq
  br label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.cq, %select.unfold.i
  %i.aku = phi i1 [ %.0.i.i.i7.i, %bb.cq ], [ true, %select.unfold.i ]
  %i.akv = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #43 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 32
  store i64 %.sroa.0362.0.insert.insert, ptr %i.akw, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aku, ptr noundef nonnull %i.akv, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ajx) #37
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ajv, i64 40 ; 2 uses
  %i.aky = load i64, ptr %i.akx, align 8, !tbaa !159
  %i.akz = add i64 %i.aky, 1
  store i64 %i.akz, ptr %i.akx, align 8, !tbaa !159
  br label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193

_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit193: ; preds = %bb.bm, %bb.bj, %bb.bk, %bb.bl, %.thread7.i192, %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, %bb.cp, %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, %bb.bi, %.preheader.i188
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ala = load ptr, ptr %i.v, align 8, !tbaa !332 ; 3 uses
  %i.alb = getelementptr inbounds nuw [24 x i8], ptr %i.ala, i64 %indvars.iv484 ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !337
  %i.ale = load ptr, ptr %i.alb, align 8, !tbaa !334 ; 2 uses
  %i.alf = ptrtoint ptr %i.ald to i64
  %i.alg = ptrtoint ptr %i.ale to i64
  %i.alh = sub i64 %i.alf, %i.alg
  %i.ali = ashr exact i64 %i.alh, 5
  %i.alj = icmp ugt i64 %i.ali, %indvars.iv.next
  br i1 %i.alj, label %bb.bi, label %._crit_edge, !llvm.loop !413

bb.cr:                                            ; preds = %._crit_edge464.split
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cv) #37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.cv, align 16, !tbaa !55
  store ptr null, ptr %i.cw, align 8, !tbaa !178
  store i8 0, ptr %i.cx, align 16, !tbaa !191
  store i8 0, ptr %i.cy, align 1, !tbaa !192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cz, i8 0, i64 32, i1 false)
  store ptr %i.da, ptr %17, align 16, !tbaa !55
  %i.alk = load i64, ptr %i.dc, align 8
  %i.all = getelementptr inbounds i8, ptr %17, i64 %i.alk
  store ptr %i.db, ptr %i.all, align 8, !tbaa !55
  %i.alm = load ptr, ptr %17, align 16, !tbaa !55
  %i.aln = getelementptr i8, ptr %i.alm, i64 -24
  %i.alo = load i64, ptr %i.aln, align 8
  %i.alp = getelementptr inbounds i8, ptr %17, i64 %i.alo
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.alp, ptr noundef null) #37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.cv, align 16, !tbaa !55
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %17, align 16, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.de, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #37
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.dd, align 8, !tbaa !55
  store i32 16, ptr %i.dg, align 8, !tbaa !193
  store ptr %i.di, ptr %i.dh, align 16, !tbaa !70
  store i64 0, ptr %i.dj, align 8, !tbaa !48
  store i8 0, ptr %i.di, align 16, !tbaa !58
  %i.alq = load ptr, ptr %17, align 16, !tbaa !55
  %i.alr = getelementptr i8, ptr %i.alq, i64 -24
  %i.als = load i64, ptr %i.alr, align 8
  %i.alt = getelementptr inbounds i8, ptr %17, i64 %i.als
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.alt, ptr noundef nonnull %i.dd) #37
  %i.alu = load ptr, ptr @_ZN4LogT6prefixB5cxx11E, align 8, !tbaa !44
  %i.alv = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LogT6prefixB5cxx11E, i64 8), align 8, !tbaa !48
  %i.alw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.alu, i64 noundef %i.alv) #37 ; 2 uses
  %i.alx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alw, ptr noundef nonnull @.str.85, i64 noundef 2) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.dk, ptr %4, align 8, !tbaa !70
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 16, i8 noundef signext 32) #37
  %i.aly = load ptr, ptr %4, align 8, !tbaa !44
  %i.alz = load i64, ptr %i.dl, align 8, !tbaa !48
  %i.ama = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.alw, ptr noundef %i.aly, i64 noundef %i.alz) #37 ; 0 uses
  %i.amb = load ptr, ptr %4, align 8, !tbaa !44   ; 2 uses
  %i.amc = icmp eq ptr %i.amb, %i.dk
  br i1 %i.amc, label %_ZN4LogTC2Ej.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194: ; preds = %bb.cr
  %i.amd = load i64, ptr %i.dk, align 8, !tbaa !58
  %i.ame = add i64 %i.amd, 1
  call void @_ZdlPvm(ptr noundef %i.amb, i64 noundef %i.ame) #40
  br label %_ZN4LogTC2Ej.exit

_ZN4LogTC2Ej.exit:                                ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.amf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.6, i64 noundef 1) #37 ; 0 uses
  %i.amg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.dm) #37 ; 0 uses
  %i.amh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.7, i64 noundef 2) #37 ; 0 uses
  %i.ami = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.fh) #37 ; 0 uses
  %i.amj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.8, i64 noundef 4) #37 ; 0 uses
  %i.amk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.9, i64 noundef 6) #37 ; 0 uses
  %i.aml = load ptr, ptr %i.xr, align 8, !tbaa !44
  %i.amm = load i64, ptr %i.yk, align 8, !tbaa !48
  %i.amn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.aml, i64 noundef %i.amm) #37 ; 0 uses
  %i.amo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.10, i64 noundef 10) #37 ; 0 uses
  %i.amp = load ptr, ptr %i.ap, align 8, !tbaa !332
  %i.amq = getelementptr inbounds nuw [24 x i8], ptr %i.amp, i64 %i.dm
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !334
  %i.ams = getelementptr inbounds nuw [32 x i8], ptr %i.amr, i64 %i.fh ; 2 uses
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !44
  %i.amu = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amv = load i64, ptr %i.amu, align 8, !tbaa !48
  %i.amw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.amt, i64 noundef %i.amv) #37 ; 0 uses
  call void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %.lr.ph.i.i.i197.preheader

.lr.ph.i.i.i197.preheader:                        ; preds = %_ZN4LogTC2Ej.exit, %._crit_edge464.split
  %i.amx = load ptr, ptr %i.xr, align 8, !tbaa !44 ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.yc
  br i1 %i.amy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i199: ; preds = %.lr.ph.i.i.i197.preheader
  %i.amz = load i64, ptr %i.yc, align 8, !tbaa !58
  %i.ana = add i64 %i.amz, 1
  call void @_ZdlPvm(ptr noundef %i.amx, i64 noundef %i.ana) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200: ; preds = %.lr.ph.i.i.i197.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i199
  %i.anb = load ptr, ptr %i.xs, align 8, !tbaa !44 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.xr, i64 48 ; 2 uses
  %i.and = icmp eq ptr %i.anb, %i.anc
  br i1 %i.and, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i199.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i199.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200
  %i.ane = load i64, ptr %i.anc, align 8, !tbaa !58
  %i.anf = add i64 %i.ane, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.anf) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i199.1
  call void @_ZdlPvm(ptr noundef nonnull %i.xr, i64 noundef 64) #40
  %i.ang = load ptr, ptr %12, align 8, !tbaa !44  ; 2 uses
  %i.anh = icmp eq ptr %i.ang, %i.cf
  br i1 %i.anh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200.1
  %i.ani = load i64, ptr %i.cf, align 8, !tbaa !58
  %i.anj = add i64 %i.ani, 1
  call void @_ZdlPvm(ptr noundef %i.ang, i64 noundef %i.anj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i200.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.ank = load ptr, ptr %11, align 8, !tbaa !44  ; 2 uses
  %i.anl = icmp eq ptr %i.ank, %i.ca
  br i1 %i.anl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.anm = load i64, ptr %i.ca, align 8, !tbaa !58
  %i.ann = add i64 %i.anm, 1
  call void @_ZdlPvm(ptr noundef %i.ank, i64 noundef %i.ann) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.ano = load ptr, ptr %10, align 8, !tbaa !44  ; 2 uses
  %i.anp = icmp eq ptr %i.ano, %i.bw
  br i1 %i.anp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213
  %i.anq = load i64, ptr %i.bw, align 8, !tbaa !58
  %i.anr = add i64 %i.anq, 1
  call void @_ZdlPvm(ptr noundef %i.ano, i64 noundef %i.anr) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.ans = add i32 %storemerge46466, 1            ; 2 uses
  %i.ant = zext i32 %i.ans to i64                 ; 2 uses
  %i.anu = load ptr, ptr %i.bs, align 8, !tbaa !177 ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !98
  %i.anx = load ptr, ptr %i.anu, align 8, !tbaa !41 ; 2 uses
  %i.any = ptrtoint ptr %i.anw to i64
  %i.anz = ptrtoint ptr %i.anx to i64
  %i.aoa = sub i64 %i.any, %i.anz
  %i.aob = ashr exact i64 %i.aoa, 2
  %i.aoc = icmp ugt i64 %i.aob, %i.ant
  br i1 %i.aoc, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %._crit_edge468.loopexit, !llvm.loop !414

.loopexit452:                                     ; preds = %._crit_edge468, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE5clearEv.exit90, %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4UFAR16CexUifPairFinder12FindUifPairsERKSt6vectorIS1_IcSaIcEESaIS3_EEjRSt3setINS_7UifPairESt4lessIS9_ESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.55", align 8    ; 8 uses
  %9 = alloca %"class.std::vector.55", align 8    ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %class.LogT, align 16              ; 32 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !165    ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 36
  %.val44 = load i32, ptr %i.n, align 4, !tbaa !99
  %.not = icmp eq i32 %.val44, 1
  br i1 %.not, label %bb.b, label %.loopexit420

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %i.m, i64 40
  %.val40 = load ptr, ptr %i.o, align 8, !tbaa !102
  %i.p = getelementptr i8, ptr %i.m, i64 640
  %.val41 = load ptr, ptr %i.p, align 8, !tbaa !145
  %i.q = load i32, ptr %.val40, align 4, !tbaa !8
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [24 x i8], ptr %.val41, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val42 = load i32, ptr %i.t, align 8, !tbaa !153
  %i.u = getelementptr i8, ptr %i.s, i64 12
  %.val43 = load i32, ptr %i.u, align 4, !tbaa !155
  %.not37 = icmp eq i32 %.val42, %.val43
  br i1 %.not37, label %bb.c, label %.loopexit420

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4UFAR16CexUifPairFinder15_compute_max_bwEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !332  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !333  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ao, %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i ], [ %i.w, %bb.c ] ; 5 uses
  %i.z = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !334 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !337 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !58
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !338

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !334
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !339
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #40
  br label %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %i.y
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !340

_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvPT_.exit.i.i.i.i
  store ptr %i.w, ptr %i.x, align 8, !tbaa !333
  br label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE5clearEv.exit

_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE5clearEv.exit: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEvT_SA_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !332 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !333 ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i53, label %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE5clearEv.exit70, label %.lr.ph.i.i.i.i54

end_hunk_0
begin_hunk_1_@_ZN4UFAR16CexUifPairFinder12FindUifPairsERKSt6vectorIS1_IcSaIcEESaIS3_EEjRSt3setINS_7UifPairESt4lessIS9_ESaIS9_EE:bb.a

bb.ci:                                            ; preds = %bb.cg
  br i1 %.not586, label %bb.cj, label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

bb.cj:                                            ; preds = %bb.ci
  %i.ahp = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 48
  %i.ahq = load i8, ptr %i.ahp, align 4, !tbaa !14, !range !17, !noundef !18
  %i.ahr = trunc nuw i8 %i.ahq to i1
  br label %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i: ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cf, %bb.cd
  %i.ahs = phi i1 [ %i.ahr, %bb.cj ], [ true, %bb.cd ], [ %.0.i.i.i.i.i291, %bb.cf ], [ %.0.i10.i.i.i.i289, %bb.ch ], [ false, %bb.ci ]
  %i.aht = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #43 ; 4 uses
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.aht, i64 32
  store i64 %.sroa.0330.0.insert.insert, ptr %i.ahu, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aht, i64 40
  store i64 %i.ff, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aht, i64 48
  store i8 %i.zm, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !163
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ahs, ptr noundef nonnull %i.aht, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.cp) #37
  %i.ahv = load i64, ptr %i.cr, align 8, !tbaa !159
  %i.ahw = add i64 %i.ahv, 1
  store i64 %i.ahw, ptr %i.cr, align 8, !tbaa !159
  br label %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIN4UFAR7UifPairES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i, %bb.cc, %.split35.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit12.i, %_ZNKSt4lessIN4UFAR7UifPairEEclERKS1_S4_.exit.i.i, %.split6.i.i, %bb.bu, %.split.i.i
  br i1 %i.zt, label %bb.ck, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161

bb.ck:                                            ; preds = %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit
  %i.ahx = load ptr, ptr %i.cs, align 8, !tbaa !232 ; 4 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8 ; 3 uses
  %.02224.i.i = load ptr, ptr %i.ahy, align 8, !tbaa !161 ; 2 uses
  %.not25.i.i = icmp eq ptr %.02224.i.i, null
  br i1 %.not25.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ck, %.lr.ph.i.i
  %.02226.i.i = phi ptr [ %.022.i.i, %.lr.ph.i.i ], [ %.02224.i.i, %bb.ck ] ; 5 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 32
  %i.aib = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 36
  %i.aic = load i32, ptr %i.aib, align 4, !tbaa !13 ; 3 uses
  %.not.i.i.i.i292 = icmp eq i32 %i.zs, %i.aic
  %i.aid = icmp slt i32 %i.zs, %i.aic
  %i.aie = load i32, ptr %i.aia, align 4
  %i.aif = sext i32 %i.aie to i64                 ; 2 uses
  %i.aig = icmp slt i64 %indvars.iv, %i.aif
  %.0.i.i.i.i293 = select i1 %.not.i.i.i.i292, i1 %i.aig, i1 %i.aid ; 2 uses
  %.in.v.i.i = select i1 %.0.i.i.i.i293, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02226.i.i, i64 %.in.v.i.i
  %.022.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !161 ; 2 uses
  %.not.i.i294 = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i294, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !412

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %.0.i.i.i.i293, label %._crit_edge.thread.i.i, label %bb.cm

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.ck
  %.021.lcssa31.i.i = phi ptr [ %.02226.i.i, %._crit_edge.i.i ], [ %i.ahz, %bb.ck ] ; 4 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahx, i64 24
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !157
  %i.aij = icmp eq ptr %.021.lcssa31.i.i, %i.aii
  br i1 %i.aij, label %select.unfold.i, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.thread.i.i
  %i.aik = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.021.lcssa31.i.i) #44 ; 2 uses
  %.phi.trans.insert.i298 = getelementptr inbounds nuw i8, ptr %i.aik, i64 36
  %.pre.i299 = load i32, ptr %.phi.trans.insert.i298, align 4, !tbaa !13
  %.phi.trans.insert22.i = getelementptr inbounds nuw i8, ptr %i.aik, i64 32
  %.pre23.i = load i32, ptr %.phi.trans.insert22.i, align 4
  %.pre463 = sext i32 %.pre23.i to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %._crit_edge.i.i
  %.pre-phi = phi i64 [ %.pre463, %bb.cl ], [ %i.aif, %._crit_edge.i.i ]
  %i.ail = phi i32 [ %.pre.i299, %bb.cl ], [ %i.aic, %._crit_edge.i.i ] ; 2 uses
  %.021.lcssa30.i.i = phi ptr [ %.021.lcssa31.i.i, %bb.cl ], [ %.02226.i.i, %._crit_edge.i.i ]
  %.not.i.i5.i.i = icmp eq i32 %i.ail, %i.zs
  %i.aim = icmp slt i32 %i.ail, %i.zs
  %i.ain = icmp slt i64 %.pre-phi, %indvars.iv
  %.0.i.i6.i.i = select i1 %.not.i.i5.i.i, i1 %i.ain, i1 %i.aim
  br i1 %.0.i.i6.i.i, label %select.unfold.i, label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161

select.unfold.i:                                  ; preds = %bb.cm, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.021.lcssa31.i.i, %._crit_edge.thread.i.i ], [ %.021.lcssa30.i.i, %bb.cm ] ; 4 uses
  %i.aio = icmp eq ptr %.sroa.4.0.i.ph.i, %i.ahz
  br i1 %i.aio, label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.cn

bb.cn:                                            ; preds = %select.unfold.i
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 36
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !13 ; 2 uses
  %.not.i.i.i6.i = icmp eq i32 %i.zs, %i.air
  %i.ais = icmp slt i32 %i.zs, %i.air
  %i.ait = load i32, ptr %i.aip, align 4
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = icmp slt i64 %indvars.iv, %i.aiu
  %.0.i.i.i7.i = select i1 %.not.i.i.i6.i, i1 %i.aiv, i1 %i.ais
  br label %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.cn, %select.unfold.i
  %i.aiw = phi i1 [ %.0.i.i.i7.i, %bb.cn ], [ true, %select.unfold.i ]
  %i.aix = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #43 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aix, i64 32
  store i64 %.sroa.0330.0.insert.insert, ptr %i.aiy, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aiw, ptr noundef nonnull %i.aix, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ahz) #37
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 40 ; 2 uses
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !159
  %i.ajb = add i64 %i.aja, 1
  store i64 %i.ajb, ptr %i.aiz, align 8, !tbaa !159
  br label %_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161

_ZN4UFARL16bitstr_not_equalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit161: ; preds = %bb.bj, %bb.bg, %bb.bh, %bb.bi, %.thread7.i160, %_ZNKSt3setIN4UFAR7UifPairESt4lessIS1_ESaIS1_EE5countERKS1_.exit, %bb.cm, %_ZNSt8_Rb_treeIN4UFAR10OperatorIDES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, %bb.bf, %.preheader.i156
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ajc = load ptr, ptr %i.v, align 8, !tbaa !332 ; 3 uses
  %i.ajd = getelementptr inbounds nuw [24 x i8], ptr %i.ajc, i64 %indvars.iv452 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !337
  %i.ajg = load ptr, ptr %i.ajd, align 8, !tbaa !334 ; 2 uses
  %i.ajh = ptrtoint ptr %i.ajf to i64
  %i.aji = ptrtoint ptr %i.ajg to i64
  %i.ajj = sub i64 %i.ajh, %i.aji
  %i.ajk = ashr exact i64 %i.ajj, 5
  %i.ajl = icmp ugt i64 %i.ajk, %indvars.iv.next
  br i1 %i.ajl, label %bb.bf, label %._crit_edge, !llvm.loop !475

bb.co:                                            ; preds = %._crit_edge432.split
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ct) #37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.ct, align 16, !tbaa !55
  store ptr null, ptr %i.cu, align 8, !tbaa !178
  store i8 0, ptr %i.cv, align 16, !tbaa !191
  store i8 0, ptr %i.cw, align 1, !tbaa !192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cx, i8 0, i64 32, i1 false)
  store ptr %i.cy, ptr %17, align 16, !tbaa !55
  %i.ajm = load i64, ptr %i.da, align 8
  %i.ajn = getelementptr inbounds i8, ptr %17, i64 %i.ajm
  store ptr %i.cz, ptr %i.ajn, align 8, !tbaa !55
  %i.ajo = load ptr, ptr %17, align 16, !tbaa !55
  %i.ajp = getelementptr i8, ptr %i.ajo, i64 -24
  %i.ajq = load i64, ptr %i.ajp, align 8
  %i.ajr = getelementptr inbounds i8, ptr %17, i64 %i.ajq
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ajr, ptr noundef null) #37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.ct, align 16, !tbaa !55
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %17, align 16, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dc, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #37
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.db, align 8, !tbaa !55
  store i32 16, ptr %i.de, align 8, !tbaa !193
  store ptr %i.dg, ptr %i.df, align 16, !tbaa !70
  store i64 0, ptr %i.dh, align 8, !tbaa !48
  store i8 0, ptr %i.dg, align 16, !tbaa !58
  %i.ajs = load ptr, ptr %17, align 16, !tbaa !55
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 -24
  %i.aju = load i64, ptr %i.ajt, align 8
  %i.ajv = getelementptr inbounds i8, ptr %17, i64 %i.aju
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ajv, ptr noundef nonnull %i.db) #37
  %i.ajw = load ptr, ptr @_ZN4LogT6prefixB5cxx11E, align 8, !tbaa !44
  %i.ajx = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4LogT6prefixB5cxx11E, i64 8), align 8, !tbaa !48
  %i.ajy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.ajw, i64 noundef %i.ajx) #37 ; 2 uses
  %i.ajz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajy, ptr noundef nonnull @.str.85, i64 noundef 2) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  store ptr %i.di, ptr %4, align 8, !tbaa !70
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 16, i8 noundef signext 32) #37
  %i.aka = load ptr, ptr %4, align 8, !tbaa !44
  %i.akb = load i64, ptr %i.dj, align 8, !tbaa !48
  %i.akc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ajy, ptr noundef %i.aka, i64 noundef %i.akb) #37 ; 0 uses
  %i.akd = load ptr, ptr %4, align 8, !tbaa !44   ; 2 uses
  %i.ake = icmp eq ptr %i.akd, %i.di
  br i1 %i.ake, label %_ZN4LogTC2Ej.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %bb.co
  %i.akf = load i64, ptr %i.di, align 8, !tbaa !58
  %i.akg = add i64 %i.akf, 1
  call void @_ZdlPvm(ptr noundef %i.akd, i64 noundef %i.akg) #40
  br label %_ZN4LogTC2Ej.exit

_ZN4LogTC2Ej.exit:                                ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.akh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.6, i64 noundef 1) #37 ; 0 uses
  %i.aki = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.dk) #37 ; 0 uses
  %i.akj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.7, i64 noundef 2) #37 ; 0 uses
  %i.akk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %17, i64 noundef %i.ff) #37 ; 0 uses
  %i.akl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.8, i64 noundef 4) #37 ; 0 uses
  %i.akm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.9, i64 noundef 6) #37 ; 0 uses
  %i.akn = load ptr, ptr %i.vt, align 8, !tbaa !44
  %i.ako = load i64, ptr %i.wm, align 8, !tbaa !48
  %i.akp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.akn, i64 noundef %i.ako) #37 ; 0 uses
  %i.akq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef nonnull @.str.10, i64 noundef 10) #37 ; 0 uses
  %i.akr = load ptr, ptr %i.ap, align 8, !tbaa !332
  %i.aks = getelementptr inbounds nuw [24 x i8], ptr %i.akr, i64 %i.dk
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !334
  %i.aku = getelementptr inbounds nuw [32 x i8], ptr %i.akt, i64 %i.ff ; 2 uses
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !44
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !48
  %i.aky = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %17, ptr noundef %i.akv, i64 noundef %i.akx) #37 ; 0 uses
  call void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  br label %.lr.ph.i.i.i165.preheader

.lr.ph.i.i.i165.preheader:                        ; preds = %_ZN4LogTC2Ej.exit, %._crit_edge432.split
  %i.akz = load ptr, ptr %i.vt, align 8, !tbaa !44 ; 2 uses
  %i.ala = icmp eq ptr %i.akz, %i.we
  br i1 %i.ala, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i167: ; preds = %.lr.ph.i.i.i165.preheader
  %i.alb = load i64, ptr %i.we, align 8, !tbaa !58
  %i.alc = add i64 %i.alb, 1
  call void @_ZdlPvm(ptr noundef %i.akz, i64 noundef %i.alc) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168: ; preds = %.lr.ph.i.i.i165.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i167
  %i.ald = load ptr, ptr %i.vu, align 8, !tbaa !44 ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.vt, i64 48 ; 2 uses
  %i.alf = icmp eq ptr %i.ald, %i.ale
  br i1 %i.alf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i167.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i167.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168
  %i.alg = load i64, ptr %i.ale, align 8, !tbaa !58
  %i.alh = add i64 %i.alg, 1
  call void @_ZdlPvm(ptr noundef %i.ald, i64 noundef %i.alh) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i167.1
  call void @_ZdlPvm(ptr noundef nonnull %i.vt, i64 noundef 64) #40
  %i.ali = load ptr, ptr %12, align 8, !tbaa !44  ; 2 uses
  %i.alj = icmp eq ptr %i.ali, %i.cd
  br i1 %i.alj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168.1
  %i.alk = load i64, ptr %i.cd, align 8, !tbaa !58
  %i.all = add i64 %i.alk, 1
  call void @_ZdlPvm(ptr noundef %i.ali, i64 noundef %i.all) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i168.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  %i.alm = load ptr, ptr %11, align 8, !tbaa !44  ; 2 uses
  %i.aln = icmp eq ptr %i.alm, %i.bz
  br i1 %i.aln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178
  %i.alo = load i64, ptr %i.bz, align 8, !tbaa !58
  %i.alp = add i64 %i.alo, 1
  call void @_ZdlPvm(ptr noundef %i.alm, i64 noundef %i.alp) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  %i.alq = load ptr, ptr %10, align 8, !tbaa !44  ; 2 uses
  %i.alr = icmp eq ptr %i.alq, %i.bv
  br i1 %i.alr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.als = load i64, ptr %i.bv, align 8, !tbaa !58
  %i.alt = add i64 %i.als, 1
  call void @_ZdlPvm(ptr noundef %i.alq, i64 noundef %i.alt) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  %i.alu = add i32 %storemerge38434, 1            ; 2 uses
  %i.alv = zext i32 %i.alu to i64                 ; 2 uses
  %i.alw = load ptr, ptr %i.bs, align 8, !tbaa !177 ; 2 uses
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !98
  %i.alz = load ptr, ptr %i.alw, align 8, !tbaa !41 ; 2 uses
  %i.ama = ptrtoint ptr %i.aly to i64
  %i.amb = ptrtoint ptr %i.alz to i64
  %i.amc = sub i64 %i.ama, %i.amb
  %i.amd = ashr exact i64 %i.amc, 2
  %i.ame = icmp ugt i64 %i.amd, %i.alv
  br i1 %i.ame, label %_ZNKSt6vectorIiSaIiEE2atEm.exit, label %._crit_edge436.loopexit, !llvm.loop !476

.loopexit420:                                     ; preds = %._crit_edge436, %_ZNSt6vectorIS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESaIS7_EE5clearEv.exit70, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4UFAR11UfarManager6ParamsC2Ev(ptr noundef nonnull align 8 dereferenceable(296) initializes((0, 4), (8, 35), (36, 68)) %0) unnamed_addr #10 align 2 {
bb.a:
  store i32 -1, ptr %0, align 8, !tbaa !477
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !478
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.b, align 8, !tbaa !479
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !480
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 1, ptr %i.d, align 2, !tbaa !481
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.e, i8 0, i64 9, i1 false)
  store i8 1, ptr %i.f, align 4, !tbaa !482
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.g, i8 0, i64 6, i1 false)
  store i32 -1, ptr %i.h, align 4, !tbaa !483
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 -1, ptr %i.i, align 8, !tbaa !484
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 65536, ptr %i.j, align 4, !tbaa !485
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i32 65536, ptr %i.l, align 8, !tbaa !486
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.o, align 8, !tbaa !48
  store i8 0, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.r, align 8, !tbaa !48
  store i8 0, ptr %i.q, align 8, !tbaa !58
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.u, align 8, !tbaa !48
  store i8 0, ptr %i.t, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 0, ptr %i.x, align 8, !tbaa !48
  store i8 0, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.aa, align 8, !tbaa !48
  store i8 0, ptr %i.z, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.ad, align 8, !tbaa !48
  store i8 0, ptr %i.ac, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %i.ag, align 8, !tbaa !48
  store i8 0, ptr %i.af, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4UFAR11UfarManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(1112) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4UFAR11UfarManager6ParamsC1Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %i.a, i8 0, i64 76, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr null, ptr %i.c, align 8, !tbaa !238
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 0, ptr %i.d, align 8, !tbaa !487
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !300
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr null, ptr %i.g, align 8, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 568
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false)
  store ptr %i.f, ptr %i.h, align 8, !tbaa !157
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr %i.f, ptr %i.i, align 8, !tbaa !158
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.j, align 8, !tbaa !159
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !300
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr null, ptr %i.l, align 8, !tbaa !156
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 616
  store ptr %i.k, ptr %i.m, align 8, !tbaa !157
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr %i.k, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i64 0, ptr %i.o, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !300
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr null, ptr %i.q, align 8, !tbaa !156
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 664
  store ptr %i.p, ptr %i.r, align 8, !tbaa !157
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %i.p, ptr %i.s, align 8, !tbaa !158
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.v) #37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store ptr null, ptr %i.w, align 8, !tbaa !178
end_hunk_1
