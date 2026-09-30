Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorDialect?download=true
inline.NumInlined: 37170
inline.NumDeleted: 12811
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN4mlir13sparse_tensor24SparseTensorEncodingAttr6verifyEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEENS2_8ArrayRefINS0_9LevelTypeEEENS_9AffineMapESA_jjNS_9AttributeESB_NS7_INS0_24SparseTensorDimSliceAttrEEE:bb.a
  %i.kr = icmp eq i64 %i.kq, 131072
  br i1 %i.kr, label %bb.cy, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i155
  %i.ks = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -16
  %.sroa.0.0.copyload.i2.i.i.i.i = load i64, ptr %i.ks, align 8, !tbaa !114, !noalias !628
  %i.kt = and i64 %.sroa.0.0.copyload.i2.i.i.i.i, 4294901760
  %i.ku = icmp eq i64 %i.kt, 131072
  br i1 %i.ku, label %bb.cz, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit614

bb.cz:                                            ; preds = %bb.cy
  %i.kv = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -24
  %.sroa.0.0.copyload.i3.i.i.i.i = load i64, ptr %i.kv, align 8, !tbaa !114, !noalias !628
  %i.kw = and i64 %.sroa.0.0.copyload.i3.i.i.i.i, 4294901760
  %i.kx = icmp eq i64 %i.kw, 131072
  br i1 %i.kx, label %bb.da, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit612

bb.da:                                            ; preds = %bb.cz
  %i.ky = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i4.i.i.i.i = load i64, ptr %i.ky, align 8, !tbaa !114, !noalias !628
  %i.kz = and i64 %.sroa.0.0.copyload.i4.i.i.i.i, 4294901760
  %i.la = icmp eq i64 %i.kz, 131072
  br i1 %i.la, label %bb.db, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit

bb.db:                                            ; preds = %bb.da
  %i.lb = add nsw i64 %.021.i.i.i.i, -1
  %i.lc = icmp sgt i64 %.021.i.i.i.i, 1
  br i1 %i.lc, label %.lr.ph.i.i.i.i155, label %._crit_edge.loopexit.i.i.i.i157, !llvm.loop !616

._crit_edge.loopexit.i.i.i.i157:                  ; preds = %bb.db
  %.pre23.i.i.i.i = ptrtoint ptr %scevgep516 to i64
  %.pre26.i.i.i.i = sub i64 %.pre23.i.i.i.i, %i.ji
  br label %._crit_edge.i.i.i.i154

._crit_edge.i.i.i.i154:                           ; preds = %._crit_edge.loopexit.i.i.i.i157, %_ZSt7find_ifISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EET_S9_S9_T0_.exit
  %.sroa.03.0.i.i.i = phi ptr [ %scevgep516, %._crit_edge.loopexit.i.i.i.i157 ], [ %.sink.i.i.i, %_ZSt7find_ifISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EET_S9_S9_T0_.exit ] ; 4 uses
  %.pre-phi27.i.i.i.i = phi i64 [ %.pre26.i.i.i.i, %._crit_edge.loopexit.i.i.i.i157 ], [ %i.kl, %_ZSt7find_ifISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EET_S9_S9_T0_.exit ]
  %i.ld = ashr exact i64 %.pre-phi27.i.i.i.i, 3
  switch i64 %i.ld, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.thread [
    i64 3, label %bb.dc
    i64 2, label %bb.dd
    i64 1, label %bb.de
  ]

bb.dc:                                            ; preds = %._crit_edge.i.i.i.i154
  %i.le = getelementptr inbounds i8, ptr %.sroa.03.0.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i5.i.i.i.i = load i64, ptr %i.le, align 8, !tbaa !114, !noalias !628
  %i.lf = and i64 %.sroa.0.0.copyload.i5.i.i.i.i, 4294901760
  %i.lg = icmp eq i64 %i.lf, 131072
  br i1 %i.lg, label %bb.dd, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit

bb.dd:                                            ; preds = %bb.dc, %._crit_edge.i.i.i.i154
  %.sroa.03.2.i.i.i = phi ptr [ %.sroa.03.0.i.i.i, %._crit_edge.i.i.i.i154 ], [ %i.le, %bb.dc ] ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %.sroa.03.2.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i6.i.i.i.i = load i64, ptr %i.lh, align 8, !tbaa !114, !noalias !628
  %i.li = and i64 %.sroa.0.0.copyload.i6.i.i.i.i, 4294901760
  %i.lj = icmp eq i64 %i.li, 131072
  br i1 %i.lj, label %bb.de, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit

bb.de:                                            ; preds = %bb.dd, %._crit_edge.i.i.i.i154
  %.sroa.03.1.i.i.i = phi ptr [ %.sroa.03.0.i.i.i, %._crit_edge.i.i.i.i154 ], [ %i.lh, %bb.dd ] ; 2 uses
  %i.lk = getelementptr inbounds i8, ptr %.sroa.03.1.i.i.i, i64 -8
  %.sroa.0.0.copyload.i7.i.i.i.i = load i64, ptr %i.lk, align 8, !tbaa !114, !noalias !628
  %i.ll = and i64 %.sroa.0.0.copyload.i7.i.i.i.i, 4294901760
  %i.lm = icmp eq i64 %i.ll, 131072
  %spec.select.i.i.i = select i1 %i.lm, ptr %2, ptr %.sroa.03.1.i.i.i
  br label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit

_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.da
  %i.ln = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -24
  br label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit

_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit612: ; preds = %bb.cz
  %i.lo = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -16
  br label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit

_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit614: ; preds = %bb.cy
  %i.lp = getelementptr inbounds i8, ptr %.sroa.03.3.i.i.i, i64 -8
  br label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit

_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit: ; preds = %.lr.ph.i.i.i.i155, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit612, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit614, %bb.dc, %bb.dd, %bb.de
  %.sink.i.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.de ], [ %.sroa.03.2.i.i.i, %bb.dd ], [ %.sroa.03.0.i.i.i, %bb.dc ], [ %i.lp, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit614 ], [ %i.lo, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit612 ], [ %i.ln, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.loopexit.split.loop.exit ], [ %.sroa.03.3.i.i.i, %.lr.ph.i.i.i.i155 ]
  %i.lq = icmp eq ptr %2, %.sink.i.i.i.i
  br i1 %i.lq, label %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.thread, label %bb.df

bb.df:                                            ; preds = %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void %0(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %26, i64 noundef %1) #30, !inline_history !0
  %i.lr = load ptr, ptr %26, align 8, !tbaa !108
  %.not.i.i158 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i158, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ls = getelementptr inbounds nuw i8, ptr %26, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i32 3, ptr %12, align 8, !tbaa !111
  %i.lt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.59, ptr %i.lt, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i159 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i159, align 8, !tbaa !114
  %i.lu = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 3 uses
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !116 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %26, i64 36
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !117
  %.not.i.i.i.i.i160 = icmp ult i32 %i.lv, %i.lx
  br i1 %.not.i.i.i.i.i160, label %bb.di, label %bb.dh, !prof !118

bb.dh:                                            ; preds = %bb.dg
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 8 dereferenceable(24) %12)
  br label %_ZN4mlir10Diagnostic6appendIRA42_KcEERS0_OT_.exit.i.i

bb.di:                                            ; preds = %bb.dg
  %i.ly = zext i32 %i.lv to i64
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !119
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.ly
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ma, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false)
  %i.mb = load i32, ptr %i.lu, align 8, !tbaa !116
  %i.mc = add i32 %i.mb, 1
  store i32 %i.mc, ptr %i.lu, align 8, !tbaa !116
  br label %_ZN4mlir10Diagnostic6appendIRA42_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA42_KcEERS0_OT_.exit.i.i: ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.df, %_ZN4mlir10Diagnostic6appendIRA42_KcEERS0_OT_.exit.i.i
  %i.md = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %26) #30
  %i.me = load ptr, ptr %26, align 8, !tbaa !108
  %.not.i161 = icmp eq ptr %i.me, null
  br i1 %.not.i161, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %26) #30
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.mf = getelementptr inbounds nuw i8, ptr %26, i64 200 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 8, !tbaa !120, !range !121, !noundef !122
  %i.mh = trunc nuw i8 %i.mg to i1
  store i8 0, ptr %i.mf, align 8, !tbaa !120
  br i1 %i.mh, label %bb.dl, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit162

bb.dl:                                            ; preds = %bb.dk
  %i.mi = getelementptr inbounds nuw i8, ptr %26, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.mi) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit162

_ZN4mlir18InFlightDiagnosticD2Ev.exit162:         ; preds = %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %_ZSt7find_ifIPKN4mlir13sparse_tensor9LevelTypeEPFbS2_EET_S7_S7_T0_.exit.thread

_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.thread: ; preds = %._crit_edge.i.i.i.i154, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit
  %.not2.i.i.i.i = icmp eq i64 %3, 0              ; 2 uses
  br i1 %.not2.i.i.i.i, label %"_ZN4llvm17make_filter_rangeIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEZNS3_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS2_18InFlightDiagnosticEvEEES5_NS2_9AffineMapESC_jjNS2_9AttributeESD_NS1_INS3_24SparseTensorDimSliceAttrEEEE3$_1EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit", label %.lr.ph.i.i.i.i163

.lr.ph.i.i.i.i163:                                ; preds = %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.thread, %bb.dm
  %.sroa.01.0.i = phi ptr [ %i.mk, %bb.dm ], [ %2, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.thread ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i164 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !114, !noalias !629
  %i.mj = and i64 %.sroa.0.0.copyload.i.i.i.i164, 4
  %.not1.i.i.i.i = icmp eq i64 %i.mj, 0
  br i1 %.not1.i.i.i.i, label %bb.dm, label %"_ZN4llvm17make_filter_rangeIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEZNS3_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS2_18InFlightDiagnosticEvEEES5_NS2_9AffineMapESC_jjNS2_9AttributeESD_NS1_INS3_24SparseTensorDimSliceAttrEEEE3$_1EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit"

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i163
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mk, %i.bi
  br i1 %.not.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316", label %.lr.ph.i.i.i.i163, !llvm.loop !619

"_ZN4llvm17make_filter_rangeIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEZNS3_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS2_18InFlightDiagnosticEvEEES5_NS2_9AffineMapESC_jjNS2_9AttributeESD_NS1_INS3_24SparseTensorDimSliceAttrEEEE3$_1EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit": ; preds = %.lr.ph.i.i.i.i163, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.thread
  %.sroa.01.1.i = phi ptr [ %2, %_ZSt6all_ofISt16reverse_iteratorIPKN4mlir13sparse_tensor9LevelTypeEEPFbS3_EEbT_S9_T0_.exit.thread ], [ %.sroa.01.0.i, %.lr.ph.i.i.i.i163 ] ; 3 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %.sroa.01.1.i, %i.bi
  br i1 %.not6.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316", label %.lr.ph7.i.i.i.i.i.i.preheader

.lr.ph7.i.i.i.i.i.i.preheader:                    ; preds = %"_ZN4llvm17make_filter_rangeIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEZNS3_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS2_18InFlightDiagnosticEvEEES5_NS2_9AffineMapESC_jjNS2_9AttributeESD_NS1_INS3_24SparseTensorDimSliceAttrEEEE3$_1EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit"
  %.val2.val.i.i.i.i.i.i682 = load i64, ptr %.sroa.01.1.i, align 8, !tbaa !114, !noalias !630
  %i.ml = and i64 %.val2.val.i.i.i.i.i.i682, 4294901760
  %.not1.i.i.i.i.i.i683 = icmp eq i64 %i.ml, 524288
  br i1 %.not1.i.i.i.i.i.i683, label %.lr.ph684, label %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit"

.lr.ph684:                                        ; preds = %.lr.ph7.i.i.i.i.i.i.preheader, %"_ZN4llvm20filter_iterator_baseIPKN4mlir13sparse_tensor9LevelTypeEZNS2_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS_8ArrayRefIS3_EENS1_9AffineMapESD_jjNS1_9AttributeESE_NSB_INS2_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i"
  %i.mm = phi ptr [ %i.ms, %"_ZN4llvm20filter_iterator_baseIPKN4mlir13sparse_tensor9LevelTypeEZNS2_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS_8ArrayRefIS3_EENS1_9AffineMapESD_jjNS1_9AttributeESE_NSB_INS2_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i" ], [ %.sroa.01.1.i, %.lr.ph7.i.i.i.i.i.i.preheader ]
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 4 uses
  %.not2.i.i.i.i.i.i.i.i = icmp eq ptr %i.mn, %i.bi
  br i1 %.not2.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316", label %.lr.ph.i.i.preheader.i.i.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i.i.i:                 ; preds = %.lr.ph684
  %.sroa.0.0.copyload.i.i2.i.i.i.i.i.i = load i64, ptr %i.mn, align 8, !tbaa !114, !noalias !630
  %i.mo = and i64 %.sroa.0.0.copyload.i.i2.i.i.i.i.i.i, 4
  %.not1.i.i3.i.i.i.i.i.i = icmp eq i64 %i.mo, 0
  br i1 %.not1.i.i3.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN4llvm20filter_iterator_baseIPKN4mlir13sparse_tensor9LevelTypeEZNS2_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS_8ArrayRefIS3_EENS1_9AffineMapESD_jjNS1_9AttributeESE_NSB_INS2_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.mr, align 8, !tbaa !114, !noalias !630
  %i.mp = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 4
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN4llvm20filter_iterator_baseIPKN4mlir13sparse_tensor9LevelTypeEZNS2_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS_8ArrayRefIS3_EENS1_9AffineMapESD_jjNS1_9AttributeESE_NSB_INS2_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i", !llvm.loop !619

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.mq = phi ptr [ %i.mr, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.mn, %.lr.ph.i.i.preheader.i.i.i.i.i.i ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.mr, %i.bi
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !619

"_ZN4llvm20filter_iterator_baseIPKN4mlir13sparse_tensor9LevelTypeEZNS2_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS_8ArrayRefIS3_EENS1_9AffineMapESD_jjNS1_9AttributeESE_NSB_INS2_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i.i.i
  %i.ms = phi ptr [ %i.mn, %.lr.ph.i.i.preheader.i.i.i.i.i.i ], [ %i.mr, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val2.val.i.i.i.i.i.i = load i64, ptr %i.ms, align 8, !tbaa !114, !noalias !630
  %i.mt = and i64 %.val2.val.i.i.i.i.i.i, 4294901760
  %.not1.i.i.i.i.i.i = icmp eq i64 %i.mt, 524288
  br i1 %.not1.i.i.i.i.i.i, label %.lr.ph684, label %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit", !llvm.loop !626

"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit": ; preds = %"_ZN4llvm20filter_iterator_baseIPKN4mlir13sparse_tensor9LevelTypeEZNS2_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS1_18InFlightDiagnosticEvEEENS_8ArrayRefIS3_EENS1_9AffineMapESD_jjNS1_9AttributeESE_NSB_INS2_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEppEv.exit.i.i.i.i.i.i", %.lr.ph7.i.i.i.i.i.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void %0(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %27, i64 noundef %1) #30, !inline_history !0
  %i.mu = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA46_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %27, ptr noundef nonnull align 1 dereferenceable(46) @.str.60)
  %i.mv = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.mu) #30
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %_ZSt7find_ifIPKN4mlir13sparse_tensor9LevelTypeEPFbS2_EET_S7_S7_T0_.exit.thread

"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316": ; preds = %bb.dm, %.lr.ph684, %.lr.ph.i.i.i.i.i.i, %"_ZN4llvm17make_filter_rangeIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEZNS3_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS2_18InFlightDiagnosticEvEEES5_NS2_9AffineMapESC_jjNS2_9AttributeESD_NS1_INS3_24SparseTensorDimSliceAttrEEEE3$_1EENS_14iterator_rangeINS_20filter_iterator_implIDTcl9adl_beginclsr3stdE7declvalIRT_EEEET0_NSt11conditionalIXsr3stdE12is_base_of_vISt26bidirectional_iterator_tagNSt15iterator_traitsISL_E17iterator_categoryEEESO_St20forward_iterator_tagE4typeEEEEEOSJ_SM_.exit"
  %.not355435 = icmp eq i64 %3, 1
  br i1 %.not355435, label %._crit_edge.i.i.i.i181.thread, label %.lr.ph438.preheader

.lr.ph438.preheader:                              ; preds = %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316"
  %.sroa.0221.0434 = getelementptr i8, ptr %2, i64 8
  br label %.lr.ph438

.lr.ph438:                                        ; preds = %.lr.ph438.preheader, %bb.dv
  %.sroa.0221.0437 = phi ptr [ %.sroa.0221.0, %bb.dv ], [ %.sroa.0221.0434, %.lr.ph438.preheader ] ; 2 uses
  %.sroa.7.0436 = phi i64 [ %i.nt, %bb.dv ], [ 1, %.lr.ph438.preheader ] ; 2 uses
  %.sroa.028.0.copyload = load i64, ptr %.sroa.0221.0437, align 8, !tbaa !114
  %i.mw = and i64 %.sroa.028.0.copyload, 4294901760
  %i.mx = icmp eq i64 %i.mw, 65536
  br i1 %i.mx, label %bb.dn, label %bb.dv

bb.dn:                                            ; preds = %.lr.ph438
  %i.my = getelementptr [8 x i8], ptr %2, i64 %.sroa.7.0436
  %i.mz = getelementptr i8, ptr %i.my, i64 -8
  %.sroa.027.0.copyload = load i64, ptr %i.mz, align 8, !tbaa !114
  %i.na = trunc i64 %.sroa.027.0.copyload to i1
  br i1 %i.na, label %bb.do, label %bb.dv

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  call void %0(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %28, i64 noundef %1) #30, !inline_history !0
  %i.nb = load ptr, ptr %28, align 8, !tbaa !108
  %.not.i.i165 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i165, label %_ZNO4mlir18InFlightDiagnosticlsIRA45_KcEEOS0_OT_.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.nc = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store i32 3, ptr %11, align 8, !tbaa !111
  %i.nd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.61, ptr %i.nd, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i166 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 44, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i166, align 8, !tbaa !114
  %i.ne = getelementptr inbounds nuw i8, ptr %28, i64 32 ; 3 uses
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !116 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %28, i64 36
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !117
  %.not.i.i.i.i.i167 = icmp ult i32 %i.nf, %i.nh
  br i1 %.not.i.i.i.i.i167, label %bb.dr, label %bb.dq, !prof !118

bb.dq:                                            ; preds = %bb.dp
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.nc, ptr noundef nonnull align 8 dereferenceable(24) %11)
  br label %_ZN4mlir10Diagnostic6appendIRA45_KcEERS0_OT_.exit.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.ni = zext i32 %i.nf to i64
  %i.nj = load ptr, ptr %i.nc, align 8, !tbaa !119
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.nj, i64 %i.ni
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.nk, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  %i.nl = load i32, ptr %i.ne, align 8, !tbaa !116
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr %i.ne, align 8, !tbaa !116
  br label %_ZN4mlir10Diagnostic6appendIRA45_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA45_KcEERS0_OT_.exit.i.i: ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA45_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA45_KcEEOS0_OT_.exit: ; preds = %bb.do, %_ZN4mlir10Diagnostic6appendIRA45_KcEERS0_OT_.exit.i.i
  %i.nn = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %28) #30
  %i.no = load ptr, ptr %28, align 8, !tbaa !108
  %.not.i168 = icmp eq ptr %i.no, null
  br i1 %.not.i168, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA45_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %28) #30
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %_ZNO4mlir18InFlightDiagnosticlsIRA45_KcEEOS0_OT_.exit
  %i.np = getelementptr inbounds nuw i8, ptr %28, i64 200 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 8, !tbaa !120, !range !121, !noundef !122
  %i.nr = trunc nuw i8 %i.nq to i1
  store i8 0, ptr %i.np, align 8, !tbaa !120
  br i1 %i.nr, label %bb.du, label %.thread321

bb.du:                                            ; preds = %bb.dt
  %i.ns = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ns) #30
  br label %.thread321

.thread321:                                       ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %_ZSt7find_ifIPKN4mlir13sparse_tensor9LevelTypeEPFbS2_EET_S7_S7_T0_.exit.thread

bb.dv:                                            ; preds = %bb.dn, %.lr.ph438
  %i.nt = add nuw nsw i64 %.sroa.7.0436, 1
  %.sroa.0221.0 = getelementptr i8, ptr %.sroa.0221.0437, i64 8 ; 2 uses
  %.not355 = icmp eq ptr %.sroa.0221.0, %i.bi
  br i1 %.not355, label %._crit_edge439, label %.lr.ph438

._crit_edge439:                                   ; preds = %bb.dv
  br i1 %.not.i88, label %._crit_edge.i.i.i.i181, label %.lr.ph.i.i.i.i171

.lr.ph.i.i.i.i171:                                ; preds = %._crit_edge439, %bb.dz
  %.053.i.i.i.i172 = phi i64 [ %i.og, %bb.dz ], [ %i.bk, %._crit_edge439 ] ; 2 uses
  %.02952.i.i.i.i173 = phi ptr [ %i.of, %bb.dz ], [ %2, %._crit_edge439 ] ; 9 uses
  %.sroa.0.0.copyload.i.i.i.i.i174 = load i64, ptr %.02952.i.i.i.i173, align 8, !tbaa !114
  %i.nu = and i64 %.sroa.0.0.copyload.i.i.i.i.i174, 4294901760
  %i.nv = icmp eq i64 %i.nu, 2097152
  br i1 %i.nv, label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i171
  %i.nw = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i173, i64 8
  %.sroa.0.0.copyload.i30.i.i.i.i175 = load i64, ptr %i.nw, align 8, !tbaa !114
  %i.nx = and i64 %.sroa.0.0.copyload.i30.i.i.i.i175, 4294901760
  %i.ny = icmp eq i64 %i.nx, 2097152
  br i1 %i.ny, label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.nz = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i173, i64 16
  %.sroa.0.0.copyload.i31.i.i.i.i176 = load i64, ptr %i.nz, align 8, !tbaa !114
  %i.oa = and i64 %.sroa.0.0.copyload.i31.i.i.i.i176, 4294901760
  %i.ob = icmp eq i64 %i.oa, 2097152
  br i1 %i.ob, label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit620, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.oc = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i173, i64 24
  %.sroa.0.0.copyload.i32.i.i.i.i177 = load i64, ptr %i.oc, align 8, !tbaa !114
  %i.od = and i64 %.sroa.0.0.copyload.i32.i.i.i.i177, 4294901760
  %i.oe = icmp eq i64 %i.od, 2097152
  br i1 %i.oe, label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit622, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.of = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i173, i64 32 ; 3 uses
  %i.og = add nsw i64 %.053.i.i.i.i172, -1
  %i.oh = icmp sgt i64 %.053.i.i.i.i172, 1
  br i1 %i.oh, label %.lr.ph.i.i.i.i171, label %._crit_edge.loopexit.i.i.i.i178, !llvm.loop !601

._crit_edge.loopexit.i.i.i.i178:                  ; preds = %bb.dz
  %.pre.i.i.i.i179 = ptrtoint ptr %i.of to i64
  %.pre58.i.i.i.i180 = sub i64 %i.bj, %.pre.i.i.i.i179
  %i.oi = ashr exact i64 %.pre58.i.i.i.i180, 3
  br label %._crit_edge.i.i.i.i181

._crit_edge.i.i.i.i181:                           ; preds = %._crit_edge.loopexit.i.i.i.i178, %._crit_edge439
  %.pre-phi59.i.i.i.i182 = phi i64 [ %i.oi, %._crit_edge.loopexit.i.i.i.i178 ], [ %3, %._crit_edge439 ]
  %.029.lcssa.i.i.i.i183 = phi ptr [ %i.of, %._crit_edge.loopexit.i.i.i.i178 ], [ %2, %._crit_edge439 ] ; 5 uses
  switch i64 %.pre-phi59.i.i.i.i182, label %.thread338 [
    i64 3, label %bb.ea
    i64 2, label %bb.ec
    i64 1, label %._crit_edge.i.i.i.i181.thread
  ]

bb.ea:                                            ; preds = %._crit_edge.i.i.i.i181
  %.sroa.0.0.copyload.i33.i.i.i.i189 = load i64, ptr %.029.lcssa.i.i.i.i183, align 8, !tbaa !114
  %i.oj = and i64 %.sroa.0.0.copyload.i33.i.i.i.i189, 4294901760
  %i.ok = icmp eq i64 %i.oj, 2097152
  br i1 %i.ok, label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ol = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i183, i64 8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge.i.i.i.i181
  %.1.i.i.i.i187 = phi ptr [ %i.ol, %bb.eb ], [ %.029.lcssa.i.i.i.i183, %._crit_edge.i.i.i.i181 ] ; 3 uses
  %.sroa.0.0.copyload.i34.i.i.i.i188 = load i64, ptr %.1.i.i.i.i187, align 8, !tbaa !114
  %i.om = and i64 %.sroa.0.0.copyload.i34.i.i.i.i188, 4294901760
  %i.on = icmp eq i64 %i.om, 2097152
  br i1 %i.on, label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.oo = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i187, i64 8
  br label %._crit_edge.i.i.i.i181.thread

._crit_edge.i.i.i.i181.thread:                    ; preds = %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316", %bb.ed, %._crit_edge.i.i.i.i181
  %.2.i.i.i.i184 = phi ptr [ %i.oo, %bb.ed ], [ %.029.lcssa.i.i.i.i183, %._crit_edge.i.i.i.i181 ], [ %2, %"_ZN4llvm6any_ofIRNS_14iterator_rangeINS_20filter_iterator_implIPKN4mlir13sparse_tensor9LevelTypeEZNS4_24SparseTensorEncodingAttr6verifyENS_12function_refIFNS3_18InFlightDiagnosticEvEEENS_8ArrayRefIS5_EENS3_9AffineMapESF_jjNS3_9AttributeESG_NSD_INS4_24SparseTensorDimSliceAttrEEEE3$_1St26bidirectional_iterator_tagEEEEZNS8_6verifyESC_SE_SF_SF_jjSG_SG_SI_E3$_2EEbOT_T0_.exit.thread316" ] ; 2 uses
  %.sroa.0.0.copyload.i35.i.i.i.i185 = load i64, ptr %.2.i.i.i.i184, align 8, !tbaa !114
  %i.op = and i64 %.sroa.0.0.copyload.i35.i.i.i.i185, 4294901760
  %i.oq = icmp eq i64 %i.op, 2097152
  br i1 %i.oq, label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193, label %.thread338

_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit: ; preds = %bb.dw
  %i.or = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i173, i64 8
  br label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193

_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit620: ; preds = %bb.dx
  %i.os = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i173, i64 16
  br label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193

_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit622: ; preds = %bb.dy
  %i.ot = getelementptr inbounds nuw i8, ptr %.02952.i.i.i.i173, i64 24
  br label %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193

_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193: ; preds = %.lr.ph.i.i.i.i171, %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit, %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit620, %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit622, %bb.ea, %bb.ec, %._crit_edge.i.i.i.i181.thread
  %.028.i.i.i.i186 = phi ptr [ %.1.i.i.i.i187, %bb.ec ], [ %.029.lcssa.i.i.i.i183, %bb.ea ], [ %.2.i.i.i.i184, %._crit_edge.i.i.i.i181.thread ], [ %i.ot, %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit622 ], [ %i.os, %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit620 ], [ %i.or, %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193.loopexit.split.loop.exit ], [ %.02952.i.i.i.i173, %.lr.ph.i.i.i.i171 ] ; 6 uses
  %.not65 = icmp eq ptr %.028.i.i.i.i186, %i.bi
  br i1 %.not65, label %.thread338, label %bb.ee

bb.ee:                                            ; preds = %_ZN4llvm7find_ifIRNS_8ArrayRefIN4mlir13sparse_tensor9LevelTypeEEEPFbS4_EEEDaOT_T0_.exit193
  %i.ou = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.not66 = icmp eq ptr %.028.i.i.i.i186, %i.ou
  br i1 %.not66, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  call void %0(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %29, i64 noundef %1) #30, !inline_history !0
end_hunk_0
begin_hunk_1_@_ZL16verifyPackUnPackPN4mlir9OperationEbNS_13sparse_tensor16SparseTensorTypeENS_16RankedTensorTypeENS_9TypeRangeE:bb.a
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !116
  %i.cz = zext i32 %i.cy to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.as, %.lr.ph.preheader.i.i
  %.0.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.2.i, %bb.as ] ; 2 uses
  %.02354.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %.326.i.i, %bb.as ] ; 4 uses
  %.sroa.030.053.i.i = phi ptr [ %.pre.i, %.lr.ph.preheader.i.i ], [ %.sroa.030.1.i.i, %bb.as ] ; 5 uses
  %.sroa.8.052.i.i = phi i64 [ %i.cz, %.lr.ph.preheader.i.i ], [ %.sroa.8.1.i.i, %bb.as ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.02354.i.i
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.da, align 8, !tbaa !114
  %i.db = and i64 %.sroa.06.0.copyload.i.i, 4294901760 ; 3 uses
  %trunc.i.i = trunc nuw i64 %i.db to i32
  switch i32 %trunc.i.i, label %bb.al [
    i32 1048576, label %bb.ak
    i32 262144, label %bb.ak
  ]

bb.ak:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  %i.dc = add i32 %.0.i, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i
  %.1.i = phi i32 [ %.0.i, %.lr.ph.i.i ], [ %i.dc, %bb.ak ] ; 2 uses
  %i.dd = call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.db)
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %.split.i.i.i.i.i.i, label %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.al
  %i.df = call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.db, i1 true)
  %.off.i.i.i.i.i.i = add nsw i64 %i.df, -18
  %switch.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i, 4
  %i.dg = zext i1 %switch.i.i.i.i.i.i to i32
  %spec.select.i = add i32 %.1.i, %i.dg
  br label %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i.i

_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i.i: ; preds = %.split.i.i.i.i.i.i, %bb.al
  %.2.i = phi i32 [ %.1.i, %bb.al ], [ %spec.select.i, %.split.i.i.i.i.i.i ] ; 2 uses
  %i.dh = icmp eq i64 %.sroa.8.052.i.i, 0
  br i1 %i.dh, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i.i
  %i.di = load i64, ptr %.sroa.030.053.i.i, align 8, !tbaa !262
  %i.dj = icmp eq i64 %.02354.i.i, %i.di
  br i1 %i.dj, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.030.053.i.i, i64 16
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !263, !range !121, !noundef !122
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.030.053.i.i, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !264
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.dp = add nuw i64 %.02354.i.i, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.124.i.i = phi i64 [ %i.dp, %bb.ap ], [ %i.do, %bb.ao ]
  %i.dq = add nsw i64 %.sroa.8.052.i.i, -1
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.030.053.i.i, i64 24
  br label %bb.as

bb.ar:                                            ; preds = %bb.am, %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i.i
  %i.ds = add nuw i64 %.02354.i.i, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.8.1.i.i = phi i64 [ %.sroa.8.052.i.i, %bb.ar ], [ %i.dq, %bb.aq ]
  %.sroa.030.1.i.i = phi ptr [ %.sroa.030.053.i.i, %bb.ar ], [ %i.dr, %bb.aq ]
  %.326.i.i = phi i64 [ %i.ds, %bb.ar ], [ %.124.i.i, %bb.aq ] ; 2 uses
  %.not.i.i = icmp ult i64 %.326.i.i, %.sroa.2.0.copyload.i.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.thread48.i.loopexit.i, !llvm.loop !16

.thread48.i.loopexit.i:                           ; preds = %bb.as
  %i.dt = add i32 %.2.i, 1
  %i.du = zext i32 %i.dt to i64
  br label %.thread48.i.i

.thread48.i.i:                                    ; preds = %.thread48.i.loopexit.i, %bb.aj
  %.3.i = phi i64 [ 1, %bb.aj ], [ %i.du, %.thread48.i.loopexit.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dw = icmp eq ptr %.pre.i, %i.dv
  br i1 %i.dw, label %_ZNK4mlir13sparse_tensor13StorageLayout16getNumDataFieldsEv.exit, label %bb.at

bb.at:                                            ; preds = %.thread48.i.i
  call void @free(ptr noundef %.pre.i) #30
  br label %_ZNK4mlir13sparse_tensor13StorageLayout16getNumDataFieldsEv.exit

_ZNK4mlir13sparse_tensor13StorageLayout16getNumDataFieldsEv.exit: ; preds = %.thread48.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.dx = add i64 %5, 1
  %.not13 = icmp eq i64 %i.dx, %.3.i
  br i1 %.not13, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %_ZNK4mlir13sparse_tensor13StorageLayout16getNumDataFieldsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  %i.dy = getelementptr inbounds nuw i8, ptr %25, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %25, i64 33
  store i8 1, ptr %i.dz, align 1, !tbaa !175
  store ptr @.str.347, ptr %25, align 8, !tbaa !139
  store i8 3, ptr %i.dy, align 8, !tbaa !174
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %24, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %25) #30
  %i.ea = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %24) #30
  %i.eb = load ptr, ptr %24, align 8, !tbaa !108
  %.not.i21 = icmp eq ptr %i.eb, null
  br i1 %.not.i21, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %24) #30
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ec = getelementptr inbounds nuw i8, ptr %24, i64 200 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !120, !range !121, !noundef !122
  %i.ee = trunc nuw i8 %i.ed to i1
  store i8 0, ptr %i.ec, align 8, !tbaa !120
  br i1 %i.ee, label %bb.ax, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit22

bb.ax:                                            ; preds = %bb.aw
  %i.ef = getelementptr inbounds nuw i8, ptr %24, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ef) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit22

_ZN4mlir18InFlightDiagnosticD2Ev.exit22:          ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  br label %bb.bt

bb.ay:                                            ; preds = %_ZNK4mlir13sparse_tensor13StorageLayout16getNumDataFieldsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %.sroa.0.0.copyload.i.i23 = load ptr, ptr %i.cw, align 8, !tbaa !149
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !114 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @_ZNK4mlir13sparse_tensor24SparseTensorEncodingAttr14getCOOSegmentsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::SmallVector.103") align 8 %12, ptr noundef nonnull readonly align 8 dereferenceable(8) %23)
  %.not51.not.i = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %.not51.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ay
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !116
  %i.ei = zext i32 %i.eh to i64
  %i.ej = load ptr, ptr %12, align 8, !tbaa !119
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bn, %.lr.ph.preheader.i
  %.070 = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.2, %bb.bn ] ; 3 uses
  %.02354.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.326.i, %bb.bn ] ; 4 uses
  %.sroa.030.053.i = phi ptr [ %i.ej, %.lr.ph.preheader.i ], [ %.sroa.030.1.i, %bb.bn ] ; 5 uses
  %.sroa.8.052.i = phi i64 [ %i.ei, %.lr.ph.preheader.i ], [ %.sroa.8.1.i, %bb.bn ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i23, i64 %.02354.i
  %.sroa.06.0.copyload.i = load i64, ptr %i.em, align 8, !tbaa !114
  %i.en = and i64 %.sroa.06.0.copyload.i, 4294901760 ; 3 uses
  %trunc.i = trunc nuw i64 %i.en to i32
  switch i32 %trunc.i, label %"_ZN4llvm12function_refIFbjN4mlir13sparse_tensor21SparseTensorFieldKindEmNS2_9LevelTypeEEE11callback_fnIZL16verifyPackUnPackPNS1_9OperationEbNS2_16SparseTensorTypeENS1_16RankedTensorTypeENS1_9TypeRangeEE3$_0EEbljS3_mS4_.exit41.thread" [
    i32 1048576, label %bb.az
    i32 262144, label %bb.az
  ]

bb.az:                                            ; preds = %.lr.ph.i, %.lr.ph.i
  %i.eo = add i32 %.070, 1
  %i.ep = zext i32 %.070 to i64
  %i.eq = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %4, i64 noundef %i.ep) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.eq, ptr %7, align 8
  %i.er = call ptr @_ZNK4mlir10TensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %i.es = load ptr, ptr %i.ek, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i36 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i.i36, label %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !152
  %.not2.i.i2.i.i.i = icmp eq i32 %i.eu, 0
  %i.ev = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ek) #30 ; 2 uses
  br i1 %.not2.i.i2.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = load ptr, ptr %i.ek, align 8, !tbaa !125
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !152
  %i.ez = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.ev, i32 noundef %i.ey, i32 noundef 0) #30
  br label %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37

bb.bc:                                            ; preds = %bb.ba
  %i.fa = call ptr @_ZN4mlir9IndexType3getEPNS_11MLIRContextE(ptr noundef %i.ev) #30
  br label %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37

_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37: ; preds = %bb.bc, %bb.bb, %bb.az
  %.0.i.i.i38 = phi ptr [ %i.fa, %bb.bc ], [ null, %bb.az ], [ %i.ez, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not.i.i39 = icmp eq ptr %i.er, %.0.i.i.i38
  br i1 %.not.i.i39, label %"_ZN4llvm12function_refIFbjN4mlir13sparse_tensor21SparseTensorFieldKindEmNS2_9LevelTypeEEE11callback_fnIZL16verifyPackUnPackPNS1_9OperationEbNS2_16SparseTensorTypeENS1_16RankedTensorTypeENS1_9TypeRangeEE3$_0EEbljS3_mS4_.exit41.thread", label %.thread48.i

"_ZN4llvm12function_refIFbjN4mlir13sparse_tensor21SparseTensorFieldKindEmNS2_9LevelTypeEEE11callback_fnIZL16verifyPackUnPackPNS1_9OperationEbNS2_16SparseTensorTypeENS1_16RankedTensorTypeENS1_9TypeRangeEE3$_0EEbljS3_mS4_.exit41.thread": ; preds = %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37, %.lr.ph.i
  %.1 = phi i32 [ %.070, %.lr.ph.i ], [ %i.eo, %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37 ] ; 4 uses
  %i.fb = call range(i64 0, 17) i64 @llvm.ctpop.i64(i64 %i.en)
  %i.fc = icmp eq i64 %i.fb, 1
  br i1 %i.fc, label %.split.i.i.i.i.i, label %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i

.split.i.i.i.i.i:                                 ; preds = %"_ZN4llvm12function_refIFbjN4mlir13sparse_tensor21SparseTensorFieldKindEmNS2_9LevelTypeEEE11callback_fnIZL16verifyPackUnPackPNS1_9OperationEbNS2_16SparseTensorTypeENS1_16RankedTensorTypeENS1_9TypeRangeEE3$_0EEbljS3_mS4_.exit41.thread"
  %i.fd = call range(i64 16, 65) i64 @llvm.cttz.i64(i64 %i.en, i1 true)
  %.off.i.i.i.i.i = add nsw i64 %i.fd, -18
  %switch.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 4
  br i1 %switch.i.i.i.i.i, label %bb.bd, label %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i

bb.bd:                                            ; preds = %.split.i.i.i.i.i
  %i.fe = add i32 %.1, 1
  %i.ff = zext i32 %.1 to i64
  %i.fg = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %4, i64 noundef %i.ff) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.fg, ptr %9, align 8
  %i.fh = call ptr @_ZNK4mlir10TensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %i.fi = load ptr, ptr %i.el, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i31 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i31, label %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 44
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !153
  %.not2.i.i.i.i.i = icmp eq i32 %i.fk, 0
  %i.fl = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el) #30 ; 2 uses
  br i1 %.not2.i.i.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fm = load ptr, ptr %i.el, align 8, !tbaa !125
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !153
  %i.fp = call ptr @_ZN4mlir11IntegerType3getEPNS_11MLIRContextEjNS0_19SignednessSemanticsE(ptr noundef %i.fl, i32 noundef %i.fo, i32 noundef 0) #30
  br label %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i

bb.bg:                                            ; preds = %bb.be
  %i.fq = call ptr @_ZN4mlir9IndexType3getEPNS_11MLIRContextE(ptr noundef %i.fl) #30
  br label %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i

_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.bd
  %.0.i.i.i = phi ptr [ %i.fq, %bb.bg ], [ null, %bb.bd ], [ %i.fp, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not.i.i32 = icmp eq ptr %i.fh, %.0.i.i.i
  br i1 %.not.i.i32, label %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i, label %.thread48.i

_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i: ; preds = %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i, %.split.i.i.i.i.i, %"_ZN4llvm12function_refIFbjN4mlir13sparse_tensor21SparseTensorFieldKindEmNS2_9LevelTypeEEE11callback_fnIZL16verifyPackUnPackPNS1_9OperationEbNS2_16SparseTensorTypeENS1_16RankedTensorTypeENS1_9TypeRangeEE3$_0EEbljS3_mS4_.exit41.thread"
  %.2 = phi i32 [ %i.fe, %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i ], [ %.1, %.split.i.i.i.i.i ], [ %.1, %"_ZN4llvm12function_refIFbjN4mlir13sparse_tensor21SparseTensorFieldKindEmNS2_9LevelTypeEEE11callback_fnIZL16verifyPackUnPackPNS1_9OperationEbNS2_16SparseTensorTypeENS1_16RankedTensorTypeENS1_9TypeRangeEE3$_0EEbljS3_mS4_.exit41.thread" ]
  %i.fr = icmp eq i64 %.sroa.8.052.i, 0
  br i1 %i.fr, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i
  %i.fs = load i64, ptr %.sroa.030.053.i, align 8, !tbaa !262
  %i.ft = icmp eq i64 %.02354.i, %i.fs
  br i1 %i.ft, label %bb.bi, label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.030.053.i, i64 16
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !263, !range !121, !noundef !122
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.030.053.i, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !264
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.fz = add nuw i64 %.02354.i, 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.124.i = phi i64 [ %i.fz, %bb.bk ], [ %i.fy, %bb.bj ]
  %i.ga = add nsw i64 %.sroa.8.052.i, -1
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.030.053.i, i64 24
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bh, %_ZN4mlir13sparse_tensor11isWithCrdLTENS0_9LevelTypeE.exit.i
  %i.gc = add nuw i64 %.02354.i, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.sroa.8.1.i = phi i64 [ %.sroa.8.052.i, %bb.bm ], [ %i.ga, %bb.bl ]
  %.sroa.030.1.i = phi ptr [ %.sroa.030.053.i, %bb.bm ], [ %i.gb, %bb.bl ]
  %.326.i = phi i64 [ %i.gc, %bb.bm ], [ %.124.i, %bb.bl ] ; 2 uses
  %.not.i26 = icmp ult i64 %.326.i, %.sroa.2.0.copyload.i.i
  br i1 %.not.i26, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %bb.bn, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store ptr %3, ptr %11, align 8
  %i.gd = call ptr @_ZNK4mlir10TensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8, i64 40, i1 false)
  %i.ge = call ptr @_ZNK4mlir16RankedTensorType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.not.i.i29 = icmp ne ptr %i.gd, %i.ge
  br label %.thread48.i

.thread48.i:                                      ; preds = %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i, %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37, %._crit_edge.i
  %.0 = phi i1 [ %.not.i.i29, %._crit_edge.i ], [ true, %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i37 ], [ true, %_ZL16getFieldElemTypeN4mlir13sparse_tensor16SparseTensorTypeENS0_21SparseTensorFieldKindE.exit.i.i ]
  %i.gf = load ptr, ptr %12, align 8, !tbaa !119  ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNK4mlir13sparse_tensor13StorageLayout12foreachFieldEN4llvm12function_refIFbjNS0_21SparseTensorFieldKindEmNS0_9LevelTypeEEEE.exit, label %bb.bo

bb.bo:                                            ; preds = %.thread48.i
  call void @free(ptr noundef %i.gf) #30
  br label %_ZNK4mlir13sparse_tensor13StorageLayout12foreachFieldEN4llvm12function_refIFbjNS0_21SparseTensorFieldKindEmNS0_9LevelTypeEEEE.exit

_ZNK4mlir13sparse_tensor13StorageLayout12foreachFieldEN4llvm12function_refIFbjNS0_21SparseTensorFieldKindEmNS0_9LevelTypeEEEE.exit: ; preds = %.thread48.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br i1 %.0, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %_ZNK4mlir13sparse_tensor13StorageLayout12foreachFieldEN4llvm12function_refIFbjNS0_21SparseTensorFieldKindEmNS0_9LevelTypeEEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  %i.gi = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %27, i64 33
  store i8 1, ptr %i.gj, align 1, !tbaa !175
  store ptr @.str.348, ptr %27, align 8, !tbaa !139
  store i8 3, ptr %i.gi, align 8, !tbaa !174
  call void @_ZN4mlir9Operation9emitErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %26, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %27) #30
  %i.gk = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %26) #30
  %i.gl = load ptr, ptr %26, align 8, !tbaa !108
  %.not.i27 = icmp eq ptr %i.gl, null
  br i1 %.not.i27, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %26) #30
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.gm = getelementptr inbounds nuw i8, ptr %26, i64 200 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !120, !range !121, !noundef !122
  %i.go = trunc nuw i8 %i.gn to i1
  store i8 0, ptr %i.gm, align 8, !tbaa !120
  br i1 %i.go, label %bb.bs, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit28

bb.bs:                                            ; preds = %bb.br
  %i.gp = getelementptr inbounds nuw i8, ptr %26, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.gp) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit28

_ZN4mlir18InFlightDiagnosticD2Ev.exit28:          ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit28, %_ZNK4mlir13sparse_tensor13StorageLayout12foreachFieldEN4llvm12function_refIFbjNS0_21SparseTensorFieldKindEmNS0_9LevelTypeEEEE.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit22
  %.sroa.010.2 = phi i8 [ %i.ea, %_ZN4mlir18InFlightDiagnosticD2Ev.exit22 ], [ %i.gk, %_ZN4mlir18InFlightDiagnosticD2Ev.exit28 ], [ 1, %_ZNK4mlir13sparse_tensor13StorageLayout12foreachFieldEN4llvm12function_refIFbjNS0_21SparseTensorFieldKindEmNS0_9LevelTypeEEEE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bu

bb.bu:                                            ; preds = %bb.ai, %bb.bt, %_ZN4mlir18InFlightDiagnosticD2Ev.exit15, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.010.4 = phi i8 [ %i.ad, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.an, %_ZN4mlir18InFlightDiagnosticD2Ev.exit15 ], [ %.sroa.010.2, %bb.bt ], [ %i.cq, %bb.ai ]
  ret i8 %.sroa.010.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir13sparse_tensor13DisassembleOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::ValueRange", align 8  ; 5 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::ValueTypeRange.392", align 8 ; 6 uses
  %7 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %8 = alloca %"class.mlir::sparse_tensor::SparseTensorType", align 8 ; 4 uses
  %9 = alloca %"class.mlir::sparse_tensor::SparseTensorType", align 8 ; 2 uses
  %10 = alloca %"class.mlir::TypeRange", align 8  ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !332    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !327
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.f = add i32 %i.c, -1
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.f to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.sroa.0.0.insert.ext.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !329
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !295
  %i.l = add i32 %i.k, -2
  %i.m = lshr i32 %i.l, 1                         ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 -16 ; 2 uses
  %i.o = icmp eq i32 %i.m, 0
end_hunk_1
