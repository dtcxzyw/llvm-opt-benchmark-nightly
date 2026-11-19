Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_palette?download=true
inline.NumInlined: 3168
inline.NumDeleted: 1664
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3jxl19FwdPaletteIterationERNS_5ImageEjjRjS2_bbRNS_9PredictorERKNS_8weighted6HeaderERNS_20PaletteIterationDataE:bb.a
  %i.acs = ptrtoint ptr %i.acp to i64
  %i.act = sub i64 %i.acr, %i.acs                 ; 4 uses
  %.not.i.i.i.i.i.i633 = icmp eq ptr %i.acq, %i.acp
  br i1 %.not.i.i.i.i.i.i633, label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i635, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.acu = icmp slt i64 %i.act, 0
  br i1 %i.acu, label %bb.bv, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i634

bb.bv:                                            ; preds = %bb.bu
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ack) #24
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i634: ; preds = %bb.bu
  %i.acv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.act) #21 ; 4 uses
  store ptr %i.acv, ptr %i.ack, align 8, !tbaa !34
  store ptr %i.acv, ptr %i.acn, align 8, !tbaa !67
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.act ; 2 uses
  store ptr %i.acw, ptr %i.aco, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.acv, ptr align 4 %i.acp, i64 %i.act, i1 false)
  store ptr %i.acw, ptr %i.acn, align 8, !tbaa !67
  br label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i635

_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i635: ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i.i.i.i.i634, %bb.bt
  %i.acx = getelementptr inbounds nuw i8, ptr %i.ack, i64 24
  br label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit636

bb.bw:                                            ; preds = %bb.bs
  %i.acy = call noundef ptr @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %37) #22
  br label %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit636

_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit636: ; preds = %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i635, %bb.bw
  %.0.i632 = phi ptr [ %i.acx, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE22__construct_one_at_endB8nn180100IJRKS3_EEEvDpOT_.exit.i635 ], [ %i.acy, %bb.bw ]
  store ptr %.0.i632, ptr %i.abj, align 8, !tbaa !81
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100ERKS3_.exit, %_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE9push_backB8nn180100ERKS3_.exit636
  %i.acz = add nuw nsw i64 %.05241016, 1          ; 2 uses
  %exitcond1232.not = icmp eq i64 %i.acz, 189
  br i1 %exitcond1232.not, label %.preheader862, label %bb.bq, !llvm.loop !195

bb.by:                                            ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100ERKS3_.exit638
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #20
  %i.ada = load i32, ptr %3, align 4, !tbaa !35
  %i.adb = zext i32 %i.ada to i64
  %i.adc = load i32, ptr %i.a, align 4, !tbaa !35
  %i.add = zext i32 %i.adc to i64
  call void @_ZN3jxl7Channel6CreateEP22JxlMemoryManagerStructmmii(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %44, ptr noundef %i.t, i64 noundef %i.adb, i64 noundef %i.add, i32 noundef 0, i32 noundef 0) #19
  %i.ade = getelementptr inbounds nuw i8, ptr %44, i64 88 ; 2 uses
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !249 ; 2 uses
  %i.adg = icmp eq i32 %i.adf, 0
  br i1 %i.adg, label %bb.ca, label %_ZN3jxl8StatusOrINS_7ChannelEED2Ev.exit695

.preheader862:                                    ; preds = %bb.bx, %_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100ERKS3_.exit638
  %.05231017 = phi i64 [ %i.adv, %_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100ERKS3_.exit638 ], [ 0, %bb.bx ] ; 3 uses
  %i.adh = load ptr, ptr %42, align 8, !tbaa !86
  %i.adi = getelementptr inbounds nuw [24 x i8], ptr %i.adh, i64 %.05231017 ; 3 uses
  %.not.i637 = icmp eq ptr %37, %i.adi
  br i1 %.not.i637, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100ERKS3_.exit638, label %bb.bz

bb.bz:                                            ; preds = %.preheader862
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !34 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !67 ; 2 uses
  %i.adm = ptrtoint ptr %i.adl to i64
  %i.adn = ptrtoint ptr %i.adj to i64
  %i.ado = sub i64 %i.adm, %i.adn
  %i.adp = ashr exact i64 %i.ado, 2
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__assign_with_sizeB8nn180100IPiS5_EEvT_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef %i.adj, ptr noundef %i.adl, i64 noundef %i.adp) #22
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100ERKS3_.exit638

_ZNSt3__16vectorIiNS_9allocatorIiEEEaSB8nn180100ERKS3_.exit638: ; preds = %.preheader862, %bb.bz
  %i.adq = load i32, ptr %3, align 4, !tbaa !35
  %i.adr = zext i32 %i.adq to i64
  %i.ads = add nuw nsw i64 %.05231017, %i.adr
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  store ptr %37, ptr %14, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.adt = call { ptr, i8 } @_ZNSt3__16__treeINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEENS_19__map_value_compareIS5_S6_NS_4lessIS5_EELb1EEENS3_IS6_EEE25__emplace_unique_key_argsIS5_JRKNS_21piecewise_construct_tENS_5tupleIJRKS5_EEENSH_IJEEEEEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__119piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #22
  %.fca.0.extract.i639 = extractvalue { ptr, i8 } %i.adt, 0
  %i.adu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i639, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  store i64 %i.ads, ptr %i.adu, align 8, !tbaa !54
  %i.adv = add nuw nsw i64 %.05231017, 1          ; 2 uses
  %exitcond1233.not = icmp eq i64 %i.adv, 189
  br i1 %exitcond1233.not, label %bb.by, label %.preheader862, !llvm.loop !196

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(84) %45, ptr noundef nonnull align 8 dereferenceable(92) %44, i64 24, i1 false)
  %i.adw = getelementptr inbounds nuw i8, ptr %45, i64 24 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %44, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.adw, ptr noundef nonnull align 8 dereferenceable(24) %i.adx) #19
  %i.ady = getelementptr inbounds nuw i8, ptr %45, i64 48
  %i.adz = getelementptr inbounds nuw i8, ptr %44, i64 48
  %i.aea = load i64, ptr %i.adz, align 8, !tbaa !64, !noalias !262
  store i64 %i.aea, ptr %i.ady, align 8, !tbaa !64, !alias.scope !262
  %i.aeb = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.aec = getelementptr inbounds nuw i8, ptr %44, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aeb, ptr noundef nonnull align 8 dereferenceable(28) %i.aec, i64 28, i1 false)
  %i.aed = getelementptr inbounds nuw i8, ptr %45, i64 72
  store i32 -1, ptr %i.aed, align 8, !tbaa !251
  %i.aee = getelementptr inbounds nuw i8, ptr %45, i64 76
  store i32 -1, ptr %i.aee, align 4, !tbaa !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.aef = getelementptr inbounds nuw i8, ptr %45, i64 40
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !245 ; 3 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %45, i64 16
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aeg, i64 64) ]
  store ptr %i.aeg, ptr %i.g, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !246
  %i.aej = lshr i64 %i.aei, 2                     ; 3 uses
  store i64 %i.aej, ptr %i.h, align 8, !tbaa !54
  %i.aek = load ptr, ptr %0, align 8, !tbaa !49
  %i.ael = getelementptr inbounds nuw [88 x i8], ptr %i.aek, i64 %i.p
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 16
  %i.aen = load i64, ptr %i.aem, align 8, !tbaa !246
  %i.aeo = lshr i64 %i.aen, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.aep = load i32, ptr %i.ab, align 8, !tbaa !35
  %.sroa.speculated748 = call i32 @llvm.smin.i32(i32 %i.aep, i32 24)
  store i32 %.sroa.speculated748, ptr %i.i, align 4, !tbaa !35
  br i1 %6, label %.preheader860, label %.loopexit861

.preheader860:                                    ; preds = %bb.ca
  %i.aeq = load i32, ptr %4, align 4, !tbaa !35
  %.not1117 = icmp eq i32 %i.aeq, 0
  br i1 %.not1117, label %.loopexit861, label %.preheader859.lr.ph

.preheader859.lr.ph:                              ; preds = %.preheader860
  %i.aer = getelementptr inbounds nuw i8, ptr %9, i64 104
  %.pre1305.a = load ptr, ptr %i.aer, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 128
  %.pre1306.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34
  %.phi.trans.insert1307 = getelementptr inbounds nuw i8, ptr %9, i64 152
  %.pre1308.a = load ptr, ptr %.phi.trans.insert1307, align 8, !tbaa !34
  %gep.2.idx = shl i64 %i.aej, 3
  br label %.preheader859

.preheader859:                                    ; preds = %.preheader859.lr.ph, %.preheader859
  %indvars.iv1235 = phi i64 [ 0, %.preheader859.lr.ph ], [ %indvars.iv.next1236, %.preheader859 ] ; 5 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.aeg, i64 %indvars.iv1235 ; 3 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %.pre1305.a, i64 %indvars.iv1235
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !35
  store i32 %i.aet, ptr %invariant.gep, align 4, !tbaa !35
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %.pre1306.a, i64 %indvars.iv1235
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !35
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.aej
  store i32 %i.aev, ptr %gep.1, align 4, !tbaa !35
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %.pre1308.a, i64 %indvars.iv1235
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !35
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %gep.2.idx
  store i32 %i.aex, ptr %gep.2, align 4, !tbaa !35
  %indvars.iv.next1236 = add nuw nsw i64 %indvars.iv1235, 1 ; 2 uses
  %i.aey = load i32, ptr %4, align 4, !tbaa !35
  %i.aez = zext i32 %i.aey to i64
  %i.afa = icmp samesign ult i64 %indvars.iv.next1236, %i.aez
  br i1 %i.afa, label %.preheader859, label %.loopexit861, !llvm.loop !199

.loopexit861:                                     ; preds = %.preheader859, %.preheader860, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  store float 4.000000e+00, ptr %i.j, align 4, !tbaa !29
  %i.afb = load i32, ptr %i.a, align 4
  %i.afc = icmp ugt i32 %i.afb, 2
  %or.cond16 = select i1 %5, i1 %i.afc, i1 false
  br i1 %or.cond16, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.loopexit861
  %i.afd = load ptr, ptr %36, align 8, !tbaa !86
  %i.afe = load ptr, ptr %i.abj, align 8, !tbaa !81
  call fastcc void @"_ZNSt3__14sortB8nn180100INS_11__wrap_iterIPNS_6vectorIiNS_9allocatorIiEEEEEEZN3jxl19FwdPaletteIterationERNS8_5ImageEjjRjSB_bbRNS8_9PredictorERKNS8_8weighted6HeaderERNS8_20PaletteIterationDataEE3$_0EEvT_SL_T0_"(ptr %i.afd, ptr %i.afe, ptr %43, ptr %i.j) #22
  br label %bb.cc

bb.cc:                                            ; preds = %.loopexit861, %bb.cb
  %i.aff = load ptr, ptr %36, align 8, !tbaa !86  ; 2 uses
  %i.afg = load ptr, ptr %i.abj, align 8, !tbaa !81 ; 2 uses
  %.not8501023 = icmp eq ptr %i.aff, %i.afg
  br i1 %.not8501023, label %._crit_edge1028, label %.lr.ph1027

.lr.ph1027:                                       ; preds = %bb.cc
  %i.afh = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  br label %bb.cd

._crit_edge1028:                                  ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit643, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %47, i8 0, i64 24, i1 false)
  %i.afj = load i32, ptr %i.a, align 4, !tbaa !35
  %.not1119 = icmp eq i32 %i.afj, 0
  br i1 %.not1119, label %._crit_edge1032, label %.lr.ph1031

.lr.ph1031:                                       ; preds = %._crit_edge1028
  %i.afk = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.afl = getelementptr inbounds nuw i8, ptr %47, i64 16
  br label %bb.ci

bb.cd:                                            ; preds = %.lr.ph1027, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit643
  %indvars.iv1239 = phi i64 [ 0, %.lr.ph1027 ], [ %indvars.iv.next1240, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit643 ] ; 3 uses
  %.sroa.0744.01024 = phi ptr [ %i.aff, %.lr.ph1027 ], [ %i.agg, %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit643 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %46, i8 0, i64 24, i1 false)
  %i.afm = load ptr, ptr %.sroa.0744.01024, align 8, !tbaa !34 ; 3 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0744.01024, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !67 ; 2 uses
  %i.afp = ptrtoint ptr %i.afo to i64
  %i.afq = ptrtoint ptr %i.afm to i64
  %i.afr = sub i64 %i.afp, %i.afq                 ; 4 uses
  %.not.i.i640 = icmp eq ptr %i.afo, %i.afm
  br i1 %.not.i.i640, label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.afs = icmp slt i64 %i.afr, 0
  br i1 %i.afs, label %bb.cf, label %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %46) #24
  unreachable

_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i: ; preds = %bb.ce
  %i.aft = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afr) #21 ; 5 uses
  store ptr %i.aft, ptr %46, align 8, !tbaa !34
  store ptr %i.aft, ptr %i.afh, align 8, !tbaa !67
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 %i.afr ; 2 uses
  store ptr %i.afu, ptr %i.afi, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aft, ptr align 4 %i.afm, i64 %i.afr, i1 false)
  store ptr %i.afu, ptr %i.afh, align 8, !tbaa !67
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit

_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit: ; preds = %bb.cd, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i
  %i.afv = phi ptr [ null, %bb.cd ], [ %i.aft, %_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateB8nn180100Em.exit.i.i ]
  %i.afw = load i32, ptr %i.a, align 4, !tbaa !35
  %.not1118 = icmp eq i32 %i.afw, 0
  br i1 %.not1118, label %._crit_edge1022, label %.lr.ph1021

.lr.ph1021:                                       ; preds = %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit
  %i.afx = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.afy = load i64, ptr %i.h, align 8, !tbaa !54
  br label %bb.ch

._crit_edge1022:                                  ; preds = %bb.ch, %_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  store ptr %46, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.afz = call { ptr, i8 } @_ZNSt3__16__treeINS_12__value_typeINS_6vectorIiNS_9allocatorIiEEEEmEENS_19__map_value_compareIS5_S6_NS_4lessIS5_EELb1EEENS3_IS6_EEE25__emplace_unique_key_argsIS5_JRKNS_21piecewise_construct_tENS_5tupleIJRKS5_EEENSH_IJEEEEEENS_4pairINS_15__tree_iteratorIS6_PNS_11__tree_nodeIS6_PvEElEEbEERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef nonnull align 1 dereferenceable(1) @_ZNSt3__119piecewise_constructE, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(1) %13) #22
  %.fca.0.extract.i641 = extractvalue { ptr, i8 } %i.afz, 0
  %i.aga = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i641, i64 56
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  store i64 %indvars.iv1239, ptr %i.aga, align 8, !tbaa !54
  %indvars.iv.next1240 = add nuw nsw i64 %indvars.iv1239, 1
  %i.agb = load ptr, ptr %46, align 8, !tbaa !34  ; 4 uses
  %.not.i.i642 = icmp eq ptr %i.agb, null
  br i1 %.not.i.i642, label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit643, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge1022
  store ptr %i.agb, ptr %i.afh, align 8, !tbaa !67
  %i.agc = load ptr, ptr %i.afi, align 8, !tbaa !68
  %i.agd = ptrtoint ptr %i.agc to i64
  %i.age = ptrtoint ptr %i.agb to i64
  %i.agf = sub i64 %i.agd, %i.age
  call void @_ZdlPvm(ptr noundef nonnull %i.agb, i64 noundef %i.agf) #23
  br label %_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit643

_ZNSt3__16vectorIiNS_9allocatorIiEEED2B8nn180100Ev.exit643: ; preds = %._crit_edge1022, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #20
  %i.agg = getelementptr inbounds nuw i8, ptr %.sroa.0744.01024, i64 24 ; 2 uses
  %.not850 = icmp eq ptr %i.agg, %i.afg
  br i1 %.not850, label %._crit_edge1028, label %bb.cd

bb.ch:                                            ; preds = %.lr.ph1021, %bb.ch
  %.05171020 = phi i64 [ 0, %.lr.ph1021 ], [ %i.agp, %bb.ch ] ; 3 uses
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %.05171020
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !35
  %i.agj = load i32, ptr %4, align 4, !tbaa !35
  %i.agk = zext i32 %i.agj to i64
  %i.agl = mul i64 %i.afy, %.05171020
  %i.agm = getelementptr [4 x i8], ptr %i.afx, i64 %i.agl
  %i.agn = getelementptr [4 x i8], ptr %i.agm, i64 %i.agk
  %i.ago = getelementptr [4 x i8], ptr %i.agn, i64 %indvars.iv1239
  store i32 %i.agi, ptr %i.ago, align 4, !tbaa !35
  %i.agp = add nuw nsw i64 %.05171020, 1          ; 2 uses
  %i.agq = load i32, ptr %i.a, align 4, !tbaa !35
  %i.agr = zext i32 %i.agq to i64
  %i.ags = icmp samesign ult i64 %i.agp, %i.agr
  br i1 %i.ags, label %bb.ch, label %._crit_edge1022, !llvm.loop !200

._crit_edge1032:                                  ; preds = %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit, %._crit_edge1028
  %.lcssa898 = phi i64 [ 0, %._crit_edge1028 ], [ %i.ahc, %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #20
  call void @_ZNSt3__16vectorIPiNS_9allocatorIS1_EEEC2Em(ptr noundef nonnull align 8 dereferenceable(24) %48, i64 noundef %.lcssa898) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %49, i8 0, i64 72, i1 false)
  br i1 %6, label %.preheader857.preheader, label %.loopexit858

bb.ci:                                            ; preds = %.lr.ph1031, %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit
  %i.agt = phi ptr [ null, %.lr.ph1031 ], [ %.0.i644, %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit ] ; 3 uses
  %.05161029 = phi i64 [ 0, %.lr.ph1031 ], [ %i.aha, %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit ]
  %i.agu = load ptr, ptr %i.afl, align 8, !tbaa !88
  %i.agv = icmp ult ptr %i.agt, %i.agu
  br i1 %i.agv, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.agw = load i64, ptr %i.b, align 8, !tbaa !54
  %i.agx = load i64, ptr %i.c, align 8, !tbaa !54
  call void @_ZN3jxl8weighted5StateC2ERKNS0_6HeaderEmm(ptr noundef nonnull align 8 dereferenceable(424) %i.agt, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 noundef %i.agw, i64 noundef %i.agx) #22
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agt, i64 424
  br label %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit

bb.ck:                                            ; preds = %bb.ci
  %i.agz = call noundef ptr @_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJRKNS2_6HeaderERmSB_EEEPS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #22
  br label %_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit

_ZNSt3__16vectorIN3jxl8weighted5StateENS_9allocatorIS3_EEE12emplace_backIJRKNS2_6HeaderERmSB_EEERS3_DpOT_.exit: ; preds = %bb.cj, %bb.ck
  %.0.i644 = phi ptr [ %i.agy, %bb.cj ], [ %i.agz, %bb.ck ] ; 2 uses
  store ptr %.0.i644, ptr %i.afk, align 8, !tbaa !92
  %i.aha = add nuw nsw i64 %.05161029, 1          ; 2 uses
  %i.ahb = load i32, ptr %i.a, align 4, !tbaa !35
  %i.ahc = zext i32 %i.ahb to i64                 ; 2 uses
  %i.ahd = icmp samesign ult i64 %i.aha, %i.ahc
  br i1 %i.ahd, label %bb.ci, label %._crit_edge1032, !llvm.loop !201

.preheader857.preheader:                          ; preds = %._crit_edge1032
  %i.ahe = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  %.not1567 = icmp eq i32 %i.ahe, 0
  br i1 %.not1567, label %._crit_edge1036.thread, label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit

_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit: ; preds = %.preheader857.preheader
  %i.ahf = zext i32 %i.ahe to i64
  call void @_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %49, i64 noundef %i.ahf) #22
  %.pre1309.a = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  %.not1120 = icmp eq i32 %.pre1309.a, 0
  br i1 %.not1120, label %._crit_edge1036.thread, label %.lr.ph1035.preheader

.lr.ph1035.preheader:                             ; preds = %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit
  %.pre1311.a = load ptr, ptr %49, align 16, !tbaa !97
  %.pre1313.a = load i64, ptr %i.b, align 8, !tbaa !54
  br label %.lr.ph1035

._crit_edge1036.thread:                           ; preds = %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit, %.preheader857.preheader
  %.0515.ptr1038.11576.a = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 2 uses
  %i.ahh = load ptr, ptr %i.ahg, align 16, !tbaa !98 ; 2 uses
  %i.ahi = load ptr, ptr %.0515.ptr1038.11576.a, align 8, !tbaa !97 ; 2 uses
  %i.ahj = ptrtoint ptr %i.ahh to i64
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = sub i64 %i.ahj, %i.ahk
  %i.ahm = sdiv exact i64 %i.ahl, 24
  br label %bb.cl

._crit_edge1036:                                  ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit
  %i.ahn = zext i32 %i.ama to i64                 ; 3 uses
  %.0515.ptr1038.1 = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 4 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %49, i64 32 ; 2 uses
  %i.ahp = load ptr, ptr %i.aho, align 16, !tbaa !98 ; 2 uses
  %i.ahq = load ptr, ptr %.0515.ptr1038.1, align 8, !tbaa !97 ; 2 uses
  %i.ahr = ptrtoint ptr %i.ahp to i64
  %i.ahs = ptrtoint ptr %i.ahq to i64
  %i.aht = sub i64 %i.ahr, %i.ahs
  %i.ahu = sdiv exact i64 %i.aht, 24              ; 3 uses
  %i.ahv = icmp ult i64 %i.ahu, %i.ahn
  br i1 %i.ahv, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge1036.thread, %._crit_edge1036
  %i.ahw = phi i64 [ %i.ahm, %._crit_edge1036.thread ], [ %i.ahu, %._crit_edge1036 ]
  %i.ahx = phi ptr [ %i.ahi, %._crit_edge1036.thread ], [ %i.ahq, %._crit_edge1036 ]
  %i.ahy = phi ptr [ %i.ahh, %._crit_edge1036.thread ], [ %i.ahp, %._crit_edge1036 ] ; 2 uses
  %i.ahz = phi ptr [ %i.ahg, %._crit_edge1036.thread ], [ %i.aho, %._crit_edge1036 ]
  %.0515.ptr1038.11578 = phi ptr [ %.0515.ptr1038.11576.a, %._crit_edge1036.thread ], [ %.0515.ptr1038.1, %._crit_edge1036 ] ; 2 uses
  %i.aia = phi i64 [ 0, %._crit_edge1036.thread ], [ %i.ahn, %._crit_edge1036 ] ; 2 uses
  %i.aib = icmp ugt i64 %i.ahw, %i.aia
  br i1 %i.aib, label %bb.cm, label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit.1

bb.cm:                                            ; preds = %bb.cl
  %i.aic = getelementptr inbounds nuw [24 x i8], ptr %i.ahx, i64 %i.aia ; 3 uses
  %.not6.i.i.i.1 = icmp eq ptr %i.aic, %i.ahy
  br i1 %.not6.i.i.i.1, label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i.1, label %.lr.ph.i.i.i645.1

.lr.ph.i.i.i645.1:                                ; preds = %bb.cm, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.1
  %.07.i.i.i.1 = phi ptr [ %i.aid, %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.1 ], [ %i.ahy, %bb.cm ] ; 3 uses
  %i.aid = getelementptr inbounds i8, ptr %.07.i.i.i.1, i64 -24 ; 3 uses
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !27 ; 4 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.1, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i.i645.1
  %i.aif = getelementptr inbounds i8, ptr %.07.i.i.i.1, i64 -16
  store ptr %i.aie, ptr %i.aif, align 8, !tbaa !26
  %i.aig = getelementptr inbounds i8, ptr %.07.i.i.i.1, i64 -8
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !74
  %i.aii = ptrtoint ptr %i.aih to i64
  %i.aij = ptrtoint ptr %i.aie to i64
  %i.aik = sub i64 %i.aii, %i.aij
  call void @_ZdlPvm(ptr noundef nonnull %i.aie, i64 noundef %i.aik) #23
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.1

_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.1: ; preds = %bb.cn, %.lr.ph.i.i.i645.1
  %.not.i.i.i646.1 = icmp eq ptr %i.aic, %i.aid
  br i1 %.not.i.i.i646.1, label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i.1, label %.lr.ph.i.i.i645.1, !llvm.loop !202

_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i.1: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIfNS1_IfEEEEEEE7destroyB8nn180100IS4_vEEvRS5_PT_.exit.i.i.i.1, %bb.cm
  store ptr %i.aic, ptr %i.ahz, align 8, !tbaa !98
  br label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit.1

bb.co:                                            ; preds = %._crit_edge1036
  %i.ail = sub nuw nsw i64 %i.ahn, %i.ahu
  call void @_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %.0515.ptr1038.1, i64 noundef %i.ail) #22
  br label %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit.1

_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit.1: ; preds = %bb.co, %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i.1, %bb.cl
  %.0515.ptr1038.11577 = phi ptr [ %.0515.ptr1038.1, %bb.co ], [ %.0515.ptr1038.11578, %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE17__destruct_at_endB8nn180100EPS3_.exit.i.1 ], [ %.0515.ptr1038.11578, %bb.cl ]
  %i.aim = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  %.not1120.1 = icmp eq i32 %i.aim, 0
  br i1 %.not1120.1, label %._crit_edge1036.1.thread, label %.lr.ph1035.preheader.1

._crit_edge1036.1.thread:                         ; preds = %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit.1
  %.0515.ptr1038.21579.a = getelementptr inbounds nuw i8, ptr %49, i64 48 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %49, i64 56 ; 2 uses
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !98 ; 2 uses
  %i.aip = load ptr, ptr %.0515.ptr1038.21579.a, align 16, !tbaa !97 ; 2 uses
  %i.aiq = ptrtoint ptr %i.aio to i64
  %i.air = ptrtoint ptr %i.aip to i64
  %i.ais = sub i64 %i.aiq, %i.air
  %i.ait = sdiv exact i64 %i.ais, 24
  br label %bb.cs

.lr.ph1035.preheader.1:                           ; preds = %_ZNSt3__16vectorINS0_IfNS_9allocatorIfEEEENS1_IS3_EEE6resizeEm.exit.1
  %.pre1316.a = load i64, ptr %i.b, align 8, !tbaa !54
  br label %.lr.ph1035.1

.lr.ph1035.1:                                     ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1, %.lr.ph1035.preheader.1
  %i.aiu = phi i32 [ %i.ajk, %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1 ], [ %i.aim, %.lr.ph1035.preheader.1 ] ; 2 uses
  %i.aiv = phi i64 [ %i.ajl, %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1 ], [ %.pre1316.a, %.lr.ph1035.preheader.1 ] ; 3 uses
  %.05141034.1 = phi i64 [ %i.ajm, %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1 ], [ 0, %.lr.ph1035.preheader.1 ] ; 2 uses
  %i.aiw = load ptr, ptr %.0515.ptr1038.11577, align 8, !tbaa !97
  %i.aix = getelementptr inbounds nuw [24 x i8], ptr %i.aiw, i64 %.05141034.1 ; 3 uses
  %i.aiy = add i64 %i.aiv, 4                      ; 4 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aix, i64 8 ; 2 uses
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !26
  %i.ajb = load ptr, ptr %i.aix, align 8, !tbaa !27 ; 2 uses
  %i.ajc = ptrtoint ptr %i.aja to i64
  %i.ajd = ptrtoint ptr %i.ajb to i64
  %i.aje = sub i64 %i.ajc, %i.ajd
  %i.ajf = ashr exact i64 %i.aje, 2               ; 3 uses
  %i.ajg = icmp ult i64 %i.ajf, %i.aiy
  br i1 %i.ajg, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph1035.1
  %i.ajh = icmp ugt i64 %i.ajf, %i.aiy
  br i1 %i.ajh, label %bb.cq, label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1

bb.cq:                                            ; preds = %bb.cp
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ajb, i64 %i.aiy
  store ptr %i.aji, ptr %i.aiz, align 8, !tbaa !26
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1

bb.cr:                                            ; preds = %.lr.ph1035.1
  %i.ajj = sub nuw i64 %i.aiy, %i.ajf
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aix, i64 noundef %i.ajj) #22
  %.pre1315.a = load i64, ptr %i.b, align 8, !tbaa !54
  %.pre1317.a = load i32, ptr %i.a, align 4, !tbaa !35
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1

_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1: ; preds = %bb.cr, %bb.cq, %bb.cp
  %i.ajk = phi i32 [ %.pre1317.a, %bb.cr ], [ %i.aiu, %bb.cq ], [ %i.aiu, %bb.cp ] ; 3 uses
  %i.ajl = phi i64 [ %.pre1315.a, %bb.cr ], [ %i.aiv, %bb.cq ], [ %i.aiv, %bb.cp ]
  %i.ajm = add nuw nsw i64 %.05141034.1, 1        ; 2 uses
  %i.ajn = zext i32 %i.ajk to i64
  %i.ajo = icmp samesign ult i64 %i.ajm, %i.ajn
  br i1 %i.ajo, label %.lr.ph1035.1, label %._crit_edge1036.1, !llvm.loop !203

._crit_edge1036.1:                                ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEE6resizeEm.exit.1
  %i.ajp = zext i32 %i.ajk to i64                 ; 3 uses
  %.0515.ptr1038.2 = getelementptr inbounds nuw i8, ptr %49, i64 48 ; 4 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %49, i64 56 ; 2 uses
  %i.ajr = load ptr, ptr %i.ajq, align 8, !tbaa !98 ; 2 uses
  %i.ajs = load ptr, ptr %.0515.ptr1038.2, align 16, !tbaa !97 ; 2 uses
  %i.ajt = ptrtoint ptr %i.ajr to i64
  %i.aju = ptrtoint ptr %i.ajs to i64
  %i.ajv = sub i64 %i.ajt, %i.aju
end_hunk_0
