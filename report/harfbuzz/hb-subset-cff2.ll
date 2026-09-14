Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-cff2?download=true
inline.NumInlined: 4922
inline.NumDeleted: 2282
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN3CFF22serialize_cff2_to_cff1EP22hb_serialize_context_tRN2OT16cff2_subset_planERKNS_22cff2_top_dict_values_tERKNS2_4cff220accelerator_subset_tE:bb.a

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i: ; preds = %bb.dw, %bb.dv
  %.0.i114.i.i.i = phi ptr [ @_hb_CrapPool, %bb.dv ], [ %i.adk, %bb.dw ]
  br i1 %.not22.i100.not.i.i.i, label %.critedge.i126.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

.critedge.i126.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit115.i.i.i
  %i.adl = load i64, ptr %.0.i114.i.i.i, align 8, !tbaa !142
  store i64 %i.adl, ptr %i.adc, align 8, !tbaa !142
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store i64 0, ptr %i.adm, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.thread.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i

.critedge.i132.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit112.i.i.i
  store i64 0, ptr %i.adc, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i: ; preds = %.critedge.i132.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i
  %.sroa.0728.7.i.i.i = phi i32 [ 8, %.critedge.i132.i.i.i ], [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i ] ; 2 uses
  %.sroa.23.3.i.i.i = phi i32 [ 1, %.critedge.i132.i.i.i ], [ 0, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit446.i.i.i ] ; 4 uses
  %i.adn = load i32, ptr %i.acz, align 4, !tbaa !137
  %i.ado = zext i32 %i.adn to i64
  %.not.i134.i.i.i = icmp samesign ult i64 %indvars.iv996.i.i.i.a, %i.ado
  br i1 %.not.i134.i.i.i, label %bb.dy, label %bb.dx, !prof !97

bb.dx:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i

bb.dy:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit133.i.i.i
  %i.adp = load ptr, ptr %i.adb, align 8, !tbaa !138
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.adp, i64 %indvars.iv996.i.i.i.a
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i: ; preds = %bb.dy, %bb.dx
  %.0.i135.i.i.i = phi ptr [ @_hb_CrapPool, %bb.dx ], [ %i.adq, %bb.dy ]
  %.not.i137.i.i.i = icmp slt i32 %.sroa.23.3.i.i.i, %.sroa.0728.7.i.i.i ; 2 uses
  %brmerge.i.i.i = or i1 %.not22.i100.not.i.i.i, %.not.i137.i.i.i
  br i1 %brmerge.i.i.i, label %.critedge.i141.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i, !prof !767

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

.critedge.i141.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit136.i.i.i
  %.sroa.0728.7.mux.i.i.i = select i1 %.not.i137.i.i.i, i32 %.sroa.0728.7.i.i.i, i32 1, !prof !768
  %i.adr = add nuw nsw i32 %.sroa.23.3.i.i.i, 1
  %i.ads = zext nneg i32 %.sroa.23.3.i.i.i to i64
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adc, i64 %i.ads
  %i.adu = load i64, ptr %.0.i135.i.i.i, align 8, !tbaa !142
  store i64 %i.adu, ptr %i.adt, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i: ; preds = %.critedge.i141.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i, %.critedge.i126.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i
  %.sroa.0728.0.i.i.i = phi i32 [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i ], [ %.sink.i104924.i.i.i, %.critedge.i126.i.i.i ], [ %.sroa.0728.7.mux.i.i.i, %.critedge.i141.i.i.i ], [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i ]
  %.sroa.23.0.i.i.i = phi i32 [ 0, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit425.i.i.i ], [ 2, %.critedge.i126.i.i.i ], [ %i.adr, %.critedge.i141.i.i.i ], [ %.sroa.23.3.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit467.i.i.i ] ; 6 uses
  %i.adv = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.adw = load i32, ptr %5, align 8, !tbaa !127  ; 5 uses
  %.not.i143.i.i.i = icmp slt i32 %i.adv, %i.adw
  br i1 %.not.i143.i.i.i, label %bb.ed, label %bb.dz

bb.dz:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i
  %i.adx = add i32 %i.adv, 1                      ; 2 uses
  %i.ady = icmp slt i32 %i.adw, 0
  br i1 %i.ady, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i156.i.i.i, label %bb.ea, !prof !99

bb.ea:                                            ; preds = %bb.dz
  %.not.i.i144.i.i.i = icmp ugt i32 %i.adx, %i.adw
  br i1 %.not.i.i144.i.i.i, label %.preheader.i.i147.i.i.i, label %bb.ed, !prof !99

.preheader.i.i147.i.i.i:                          ; preds = %bb.ea, %.preheader.i.i147.i.i.i
  %.039.i.i148.i.i.i = phi i32 [ %i.aeb, %.preheader.i.i147.i.i.i ], [ %i.adw, %bb.ea ] ; 2 uses
  %i.adz = lshr i32 %.039.i.i148.i.i.i, 1
  %i.aea = add i32 %.039.i.i148.i.i.i, 8
  %i.aeb = add i32 %i.aea, %i.adz                 ; 6 uses
  %i.aec = icmp ugt i32 %i.adx, %i.aeb
  br i1 %i.aec, label %.preheader.i.i147.i.i.i, label %.thread.i.i149.i.i.i, !llvm.loop !3

.thread.i.i149.i.i.i:                             ; preds = %.preheader.i.i147.i.i.i
  %i.aed = icmp ugt i32 %i.aeb, 107374182
  br i1 %i.aed, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i, label %bb.eb, !prof !99

bb.eb:                                            ; preds = %.thread.i.i149.i.i.i
  %i.aee = call noundef ptr @_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.aeb) ; 2 uses
  %.not22.i.i150.i.i.i = icmp eq ptr %i.aee, null
  br i1 %.not22.i.i150.i.i.i, label %bb.ec, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i151.i.i.i, !prof !99

bb.ec:                                            ; preds = %bb.eb
  %i.aef = load i32, ptr %5, align 8, !tbaa !127  ; 2 uses
  %.not23.i.i152.i.i.i = icmp ugt i32 %i.aeb, %i.aef
  br i1 %.not23.i.i152.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i, label %bb.ed

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i: ; preds = %bb.ec, %.thread.i.i149.i.i.i
  %.sink.i.ph.in.i154.i.i.i = phi i32 [ %i.adw, %.thread.i.i149.i.i.i ], [ %i.aef, %bb.ec ]
  %.sink.i.ph.i155.i.i.i = xor i32 %.sink.i.ph.in.i154.i.i.i, -1
  store i32 %.sink.i.ph.i155.i.i.i, ptr %5, align 8, !tbaa !127
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i156.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i151.i.i.i: ; preds = %bb.eb
  store ptr %i.aee, ptr %i.xf, align 8, !tbaa !128
  store i32 %i.aeb, ptr %5, align 8, !tbaa !127
  br label %bb.ed

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i156.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i153.i.i.i, %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i159.i.i.i

bb.ed:                                            ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i151.i.i.i, %bb.ec, %bb.ea, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit127.i.i.i
  %i.aeg = load ptr, ptr %i.xf, align 8, !tbaa !128
  %i.aeh = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.aei = add i32 %i.aeh, 1
  store i32 %i.aei, ptr %i.xh, align 4, !tbaa !126
  %i.aej = zext i32 %i.aeh to i64
  %i.aek = getelementptr inbounds nuw [40 x i8], ptr %i.aeg, i64 %i.aej ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aek, i8 0, i64 16, i1 false)
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 4 ; 3 uses
  %.not19.i.not.i.i.i = icmp eq i32 %.sroa.23.0.i.i.i, 0
  br i1 %.not19.i.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i470.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i: ; preds = %bb.ed
  %i.aem = shl nuw nsw i32 %.sroa.23.0.i.i.i, 3
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aen) #16 ; 2 uses
  %.not22.i599.i.i.i = icmp eq ptr %i.aeo, null
  br i1 %.not22.i599.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i, !prof !100

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i
  %.pre1010.i.i.i.a = load i32, ptr %i.aek, align 8, !tbaa !136 ; 3 uses
  %.not23.i606.i.i.i = icmp ugt i32 %.sroa.23.0.i.i.i, %.pre1010.i.i.i.a
  br i1 %.not23.i606.i.i.i, label %bb.ee, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i

bb.ee:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i
  %i.aep = xor i32 %.pre1010.i.i.i.a, -1
  br label %.sink.split.i602.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i598.i.i.i
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  store ptr %i.aeo, ptr %i.aeq, align 8, !tbaa !138
  br label %.sink.split.i602.i.i.i

.sink.split.i602.i.i.i:                           ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i, %bb.ee
  %.sink.i603.i.i.i = phi i32 [ %i.aep, %bb.ee ], [ %.sroa.23.0.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i600.i.i.i ] ; 2 uses
  store i32 %.sink.i603.i.i.i, ptr %i.aek, align 8, !tbaa !136
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i: ; preds = %.sink.split.i602.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i
  %i.aer = phi i32 [ %.sink.i603.i.i.i, %.sink.split.i602.i.i.i ], [ %.pre1010.i.i.i.a, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i605.i.i.i ]
  %i.aes = icmp slt i32 %i.aer, 0
  br i1 %i.aes, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit488.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.thread.i.i.i, !prof !769

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.thread.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i
  %.pre1012.pre.i.i.i.a = load i32, ptr %i.ael, align 4, !tbaa !137
  %.sroa.2.8.insert.ext.i.i.i.i.i468.i.i.i = zext nneg i32 %.sroa.23.0.i.i.i to i64
  %i.aet = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i468.i.i.i, 3
  %i.aeu = and i64 %i.aet, 4294967288
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !138
  %i.aex = zext i32 %.pre1012.pre.i.i.i.a to i64
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aex
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aey, ptr readonly align 1 %i.adc, i64 %i.aeu, i1 false), !alias.scope !770
  %.pre1011.i.i.i.a = load i32, ptr %i.ael, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i470.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i470.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.thread.i.i.i, %bb.ed
  %i.aez = phi i32 [ %.pre1011.i.i.i.a, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.thread.i.i.i ], [ 0, %bb.ed ]
  %i.afa = add i32 %i.aez, %.sroa.23.0.i.i.i
  store i32 %i.afa, ptr %i.ael, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit488.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit488.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i470.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit611.i.i.i
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aek, i64 16
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aek, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afb, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.afc, align 8, !tbaa !140
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i159.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i159.i.i.i:      ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit488.i.i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i156.i.i.i
  %i.afd = add nsw i32 %.sroa.0728.0.i.i.i, -1
  %spec.select.i.i.i1.i160.i.i.i = icmp ult i32 %i.afd, -2
  br i1 %spec.select.i.i.i1.i160.i.i.i, label %bb.ef, label %_ZN3CFF12cs_command_tD2Ev.exit161.i.i.i

bb.ef:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i159.i.i.i
  call void @hb_free(ptr noundef %i.adc) #16
  br label %_ZN3CFF12cs_command_tD2Ev.exit161.i.i.i

_ZN3CFF12cs_command_tD2Ev.exit161.i.i.i:          ; preds = %bb.ef, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i159.i.i.i
  %indvars.iv.next997.i.i.i.a = add nuw nsw i64 %indvars.iv996.i.i.i.a, 1 ; 2 uses
  %i.afe = load i32, ptr %i.acz, align 4, !tbaa !764
  %i.aff = zext i32 %i.afe to i64
  %i.afg = icmp samesign ult i64 %indvars.iv.next997.i.i.i.a, %i.aff
  br i1 %i.afg, label %.preheader.i95.i.i.i, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i, !llvm.loop !662

.preheader.i164.i.i.i:                            ; preds = %_ZN3CFF12cs_command_tD2Ev.exit218.i.i.i, %.preheader.i164.lr.ph.i.i.i
  %indvars.iv996.i.i.i = phi i64 [ 0, %.preheader.i164.lr.ph.i.i.i ], [ %indvars.iv.next997.i.i.i, %_ZN3CFF12cs_command_tD2Ev.exit218.i.i.i ] ; 4 uses
  %20 = or disjoint i64 %indvars.iv996.i.i.i, 1   ; 2 uses
  %i.afh = call ptr @hb_realloc(ptr noundef null, i64 noundef 64) #16 ; 5 uses
  %.not22.i169.not.i.i.i = icmp eq ptr %i.afh, null ; 2 uses
  %i.afi = load i32, ptr %i.abb, align 4, !tbaa !137
  %21 = zext i32 %i.afi to i64
  %.not.i182.i.i.i = icmp samesign ult i64 %indvars.iv996.i.i.i, %21
  br i1 %.not.i182.i.i.i, label %bb.eh, label %bb.eg, !prof !97

bb.eg:                                            ; preds = %.preheader.i164.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit184.i.i.i

bb.eh:                                            ; preds = %.preheader.i164.i.i.i
  %i.afj = load ptr, ptr %i.abe, align 8, !tbaa !138
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.afj, i64 %indvars.iv996.i.i.i
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit184.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit184.i.i.i: ; preds = %bb.eh, %bb.eg
  %.0.i183.i.i.i = phi ptr [ @_hb_CrapPool, %bb.eg ], [ %i.afk, %bb.eh ]
  br i1 %.not22.i169.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit509.i.i.i, label %.critedge.i189.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit509.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit184.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit190.i.i.i

.critedge.i189.i.i.i:                             ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit184.i.i.i
  %i.afl = load i64, ptr %.0.i183.i.i.i, align 8, !tbaa !142
  store i64 %i.afl, ptr %i.afh, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit190.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit190.i.i.i: ; preds = %.critedge.i189.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit509.i.i.i
  %.sroa.0684.2.i.i.i = phi i32 [ 8, %.critedge.i189.i.i.i ], [ -1, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit509.i.i.i ] ; 4 uses
  %.sroa.15.0.i.i.i = phi i32 [ 1, %.critedge.i189.i.i.i ], [ 0, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit509.i.i.i ] ; 4 uses
  %i.afm = load i32, ptr %i.abb, align 4, !tbaa !137
  %22 = zext i32 %i.afm to i64
  %.not.i191.i.i.i = icmp samesign ult i64 %20, %22
  br i1 %.not.i191.i.i.i, label %bb.ej, label %bb.ei, !prof !97

bb.ei:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit190.i.i.i
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit193.i.i.i

bb.ej:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit190.i.i.i
  %i.afn = load ptr, ptr %i.abe, align 8, !tbaa !138
  %i.afo = getelementptr inbounds nuw [8 x i8], ptr %i.afn, i64 %20
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit193.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit193.i.i.i: ; preds = %bb.ej, %bb.ei
  %.0.i192.i.i.i = phi ptr [ @_hb_CrapPool, %bb.ei ], [ %i.afo, %bb.ej ]
  %.not.i194.i.i.i = icmp slt i32 %.sroa.15.0.i.i.i, %.sroa.0684.2.i.i.i
  br i1 %.not.i194.i.i.i, label %.critedge.i198.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit193.i.i.i
  br i1 %.not22.i169.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit530.i.i.i, label %.preheader.i512.i.i.i, !prof !99

.preheader.i512.i.i.i:                            ; preds = %bb.ek
  %i.afp = add nuw nsw i32 %.sroa.0684.2.i.i.i, 8 ; 2 uses
  %i.afq = shl nuw nsw i32 %i.afp, 3
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = call ptr @hb_realloc(ptr noundef nonnull %i.afh, i64 noundef %i.afr) #16 ; 2 uses
  %.not22.i518.i.i.i = icmp eq ptr %i.afs, null
  br i1 %.not22.i518.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i524.i.i.i, label %.critedge.i198.i.i.i, !prof !100

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i524.i.i.i: ; preds = %.preheader.i512.i.i.i
  %i.aft = xor i32 %.sroa.0684.2.i.i.i, -1
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit530.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit530.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i524.i.i.i, %bb.ek
  %.sroa.0684.6.i.i.i = phi i32 [ -1, %bb.ek ], [ %i.aft, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i524.i.i.i ]
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit199.i.i.i

.critedge.i198.i.i.i:                             ; preds = %.preheader.i512.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit193.i.i.i
  %.sroa.0684.3.i.i.i = phi i32 [ %.sroa.0684.2.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit193.i.i.i ], [ %i.afp, %.preheader.i512.i.i.i ]
  %.sroa.27.4.i.i.i = phi ptr [ %i.afh, %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit193.i.i.i ], [ %i.afs, %.preheader.i512.i.i.i ] ; 2 uses
  %i.afu = add nuw nsw i32 %.sroa.15.0.i.i.i, 1
  %i.afv = zext nneg i32 %.sroa.15.0.i.i.i to i64
  %i.afw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.27.4.i.i.i, i64 %i.afv
  %i.afx = load i64, ptr %.0.i192.i.i.i, align 8, !tbaa !142
  store i64 %i.afx, ptr %i.afw, align 8, !tbaa !142
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit199.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit199.i.i.i: ; preds = %.critedge.i198.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit530.i.i.i
  %.sroa.0684.4.i.i.i = phi i32 [ %.sroa.0684.3.i.i.i, %.critedge.i198.i.i.i ], [ %.sroa.0684.6.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit530.i.i.i ]
  %.sroa.15.1.i.i.i = phi i32 [ %i.afu, %.critedge.i198.i.i.i ], [ %.sroa.15.0.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit530.i.i.i ] ; 6 uses
  %.sroa.27.5.i.i.i = phi ptr [ %.sroa.27.4.i.i.i, %.critedge.i198.i.i.i ], [ %i.afh, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit530.i.i.i ] ; 2 uses
  %i.afy = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.afz = load i32, ptr %5, align 8, !tbaa !127  ; 5 uses
  %.not.i200.i.i.i = icmp slt i32 %i.afy, %i.afz
  br i1 %.not.i200.i.i.i, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit199.i.i.i
  %i.aga = add i32 %i.afy, 1                      ; 2 uses
  %i.agb = icmp slt i32 %i.afz, 0
  br i1 %i.agb, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i213.i.i.i, label %bb.em, !prof !99

bb.em:                                            ; preds = %bb.el
  %.not.i.i201.i.i.i = icmp ugt i32 %i.aga, %i.afz
  br i1 %.not.i.i201.i.i.i, label %.preheader.i.i204.i.i.i, label %bb.ep, !prof !99

.preheader.i.i204.i.i.i:                          ; preds = %bb.em, %.preheader.i.i204.i.i.i
  %.039.i.i205.i.i.i = phi i32 [ %i.age, %.preheader.i.i204.i.i.i ], [ %i.afz, %bb.em ] ; 2 uses
  %i.agc = lshr i32 %.039.i.i205.i.i.i, 1
  %i.agd = add i32 %.039.i.i205.i.i.i, 8
  %i.age = add i32 %i.agd, %i.agc                 ; 6 uses
  %i.agf = icmp ugt i32 %i.aga, %i.age
  br i1 %i.agf, label %.preheader.i.i204.i.i.i, label %.thread.i.i206.i.i.i, !llvm.loop !3

.thread.i.i206.i.i.i:                             ; preds = %.preheader.i.i204.i.i.i
  %i.agg = icmp ugt i32 %i.age, 107374182
  br i1 %i.agg, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i210.i.i.i, label %bb.en, !prof !99

bb.en:                                            ; preds = %.thread.i.i206.i.i.i
  %i.agh = call noundef ptr @_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.age) ; 2 uses
  %.not22.i.i207.i.i.i = icmp eq ptr %i.agh, null
  br i1 %.not22.i.i207.i.i.i, label %bb.eo, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i208.i.i.i, !prof !99

bb.eo:                                            ; preds = %bb.en
  %i.agi = load i32, ptr %5, align 8, !tbaa !127  ; 2 uses
  %.not23.i.i209.i.i.i = icmp ugt i32 %i.age, %i.agi
  br i1 %.not23.i.i209.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i210.i.i.i, label %bb.ep

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i210.i.i.i: ; preds = %bb.eo, %.thread.i.i206.i.i.i
  %.sink.i.ph.in.i211.i.i.i = phi i32 [ %i.afz, %.thread.i.i206.i.i.i ], [ %i.agi, %bb.eo ]
  %.sink.i.ph.i212.i.i.i = xor i32 %.sink.i.ph.in.i211.i.i.i, -1
  store i32 %.sink.i.ph.i212.i.i.i, ptr %5, align 8, !tbaa !127
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i213.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i208.i.i.i: ; preds = %bb.en
  store ptr %i.agh, ptr %i.xf, align 8, !tbaa !128
  store i32 %i.age, ptr %5, align 8, !tbaa !127
  br label %bb.ep

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i213.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i210.i.i.i, %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i216.i.i.i

bb.ep:                                            ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i208.i.i.i, %bb.eo, %bb.em, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit199.i.i.i
  %i.agj = load ptr, ptr %i.xf, align 8, !tbaa !128
  %i.agk = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.agl = add i32 %i.agk, 1
  store i32 %i.agl, ptr %i.xh, align 4, !tbaa !126
  %i.agm = zext i32 %i.agk to i64
  %i.agn = getelementptr inbounds nuw [40 x i8], ptr %i.agj, i64 %i.agm ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.agn, i8 0, i64 16, i1 false)
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 4 ; 3 uses
  %.not19.i613.not.i.i.i = icmp eq i32 %.sroa.15.1.i.i.i, 0
  br i1 %.not19.i613.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i533.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i620.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i620.i.i.i: ; preds = %bb.ep
  %i.agp = shl nuw nsw i32 %.sroa.15.1.i.i.i, 3
  %i.agq = zext nneg i32 %i.agp to i64
  %i.agr = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.agq) #16 ; 2 uses
  %.not22.i621.i.i.i = icmp eq ptr %i.agr, null
  br i1 %.not22.i621.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i627.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i622.i.i.i, !prof !100

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i627.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i620.i.i.i
  %.pre1007.i.i.i = load i32, ptr %i.agn, align 8, !tbaa !136 ; 3 uses
  %.not23.i628.i.i.i = icmp ugt i32 %.sroa.15.1.i.i.i, %.pre1007.i.i.i
  br i1 %.not23.i628.i.i.i, label %bb.eq, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.i.i.i

bb.eq:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i627.i.i.i
  %i.ags = xor i32 %.pre1007.i.i.i, -1
  br label %.sink.split.i624.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i622.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i620.i.i.i
  %i.agt = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  store ptr %i.agr, ptr %i.agt, align 8, !tbaa !138
  br label %.sink.split.i624.i.i.i

.sink.split.i624.i.i.i:                           ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i622.i.i.i, %bb.eq
  %.sink.i625.i.i.i = phi i32 [ %i.ags, %bb.eq ], [ %.sroa.15.1.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i622.i.i.i ] ; 2 uses
  store i32 %.sink.i625.i.i.i, ptr %i.agn, align 8, !tbaa !136
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.i.i.i: ; preds = %.sink.split.i624.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i627.i.i.i
  %i.agu = phi i32 [ %.sink.i625.i.i.i, %.sink.split.i624.i.i.i ], [ %.pre1007.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i627.i.i.i ]
  %i.agv = icmp slt i32 %i.agu, 0
  br i1 %i.agv, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit551.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.thread.i.i.i, !prof !769

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.thread.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.i.i.i
  %.pre1009.pre.i.i.i.a = load i32, ptr %i.ago, align 4, !tbaa !137
  %.sroa.2.8.insert.ext.i.i.i.i.i531.i.i.i = zext nneg i32 %.sroa.15.1.i.i.i to i64
  %i.agw = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i531.i.i.i, 3
  %i.agx = and i64 %i.agw, 4294967288
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !138
  %i.aha = zext i32 %.pre1009.pre.i.i.i.a to i64
  %i.ahb = getelementptr inbounds nuw [8 x i8], ptr %i.agz, i64 %i.aha
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahb, ptr readonly align 1 %.sroa.27.5.i.i.i, i64 %i.agx, i1 false), !alias.scope !771
  %.pre1008.i.i.i.a = load i32, ptr %i.ago, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i533.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i533.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.thread.i.i.i, %bb.ep
  %i.ahc = phi i32 [ %.pre1008.i.i.i.a, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.thread.i.i.i ], [ 0, %bb.ep ]
  %i.ahd = add i32 %i.ahc, %.sroa.15.1.i.i.i
  store i32 %i.ahd, ptr %i.ago, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit551.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit551.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i533.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit633.i.i.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agn, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahe, i8 0, i64 16, i1 false)
  store i32 5, ptr %i.ahf, align 8, !tbaa !140
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i216.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i216.i.i.i:      ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit551.i.i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i213.i.i.i
  %i.ahg = add nsw i32 %.sroa.0684.4.i.i.i, -1
  %spec.select.i.i.i1.i217.i.i.i = icmp ult i32 %i.ahg, -2
  br i1 %spec.select.i.i.i1.i217.i.i.i, label %bb.er, label %_ZN3CFF12cs_command_tD2Ev.exit218.i.i.i

bb.er:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i216.i.i.i
  call void @hb_free(ptr noundef %.sroa.27.5.i.i.i) #16
  br label %_ZN3CFF12cs_command_tD2Ev.exit218.i.i.i

_ZN3CFF12cs_command_tD2Ev.exit218.i.i.i:          ; preds = %bb.er, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i216.i.i.i
  %indvars.iv.next997.i.i.i = add nuw nsw i64 %indvars.iv996.i.i.i, 2 ; 2 uses
  %23 = or disjoint i64 %indvars.iv.next997.i.i.i, 1
  %i.ahh = load i32, ptr %i.abb, align 4, !tbaa !764
  %24 = zext i32 %i.ahh to i64
  %i.ahi = icmp samesign ult i64 %23, %24
  br i1 %i.ahi, label %.preheader.i164.i.i.i, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i, !llvm.loop !666

.preheader.i221.i.i.i:                            ; preds = %_ZN3CFF12cs_command_tD2Ev.exit257.i.i.i, %.preheader.i221.lr.ph.i.i.i
  %.046973.i.i.i = phi i32 [ 0, %.preheader.i221.lr.ph.i.i.i ], [ %i.aiu, %_ZN3CFF12cs_command_tD2Ev.exit257.i.i.i ] ; 3 uses
  %i.ahj = call ptr @hb_realloc(ptr noundef null, i64 noundef 64) #16 ; 2 uses
  %.not22.i226.i.i.i = icmp eq ptr %i.ahj, null
  %.sink.i230.i.i.i = select i1 %.not22.i226.i.i.i, i32 -1, i32 8, !prof !100
  br label %bb.fb

bb.es:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit266.i.i.i
  %i.ahk = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.ahl = load i32, ptr %5, align 8, !tbaa !127  ; 5 uses
  %.not.i239.i.i.i = icmp slt i32 %i.ahk, %i.ahl
  br i1 %.not.i239.i.i.i, label %bb.ex, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.ahm = add i32 %i.ahk, 1                      ; 2 uses
  %i.ahn = icmp slt i32 %i.ahl, 0
  br i1 %i.ahn, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i252.i.i.i, label %bb.eu, !prof !99

bb.eu:                                            ; preds = %bb.et
  %.not.i.i240.i.i.i = icmp ugt i32 %i.ahm, %i.ahl
  br i1 %.not.i.i240.i.i.i, label %.preheader.i.i243.i.i.i, label %bb.ex, !prof !99

.preheader.i.i243.i.i.i:                          ; preds = %bb.eu, %.preheader.i.i243.i.i.i
  %.039.i.i244.i.i.i = phi i32 [ %i.ahq, %.preheader.i.i243.i.i.i ], [ %i.ahl, %bb.eu ] ; 2 uses
  %i.aho = lshr i32 %.039.i.i244.i.i.i, 1
  %i.ahp = add i32 %.039.i.i244.i.i.i, 8
  %i.ahq = add i32 %i.ahp, %i.aho                 ; 6 uses
  %i.ahr = icmp ugt i32 %i.ahm, %i.ahq
  br i1 %i.ahr, label %.preheader.i.i243.i.i.i, label %.thread.i.i245.i.i.i, !llvm.loop !3

.thread.i.i245.i.i.i:                             ; preds = %.preheader.i.i243.i.i.i
  %i.ahs = icmp ugt i32 %i.ahq, 107374182
  br i1 %i.ahs, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i249.i.i.i, label %bb.ev, !prof !99

bb.ev:                                            ; preds = %.thread.i.i245.i.i.i
  %i.aht = call noundef ptr @_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.ahq) ; 2 uses
  %.not22.i.i246.i.i.i = icmp eq ptr %i.aht, null
  br i1 %.not22.i.i246.i.i.i, label %bb.ew, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i247.i.i.i, !prof !99

bb.ew:                                            ; preds = %bb.ev
  %i.ahu = load i32, ptr %5, align 8, !tbaa !127  ; 2 uses
  %.not23.i.i248.i.i.i = icmp ugt i32 %i.ahq, %i.ahu
  br i1 %.not23.i.i248.i.i.i, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i249.i.i.i, label %bb.ex

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i249.i.i.i: ; preds = %bb.ew, %.thread.i.i245.i.i.i
  %.sink.i.ph.in.i250.i.i.i = phi i32 [ %i.ahl, %.thread.i.i245.i.i.i ], [ %i.ahu, %bb.ew ]
  %.sink.i.ph.i251.i.i.i = xor i32 %.sink.i.ph.in.i250.i.i.i, -1
  store i32 %.sink.i.ph.i251.i.i.i, ptr %5, align 8, !tbaa !127
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i252.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i247.i.i.i: ; preds = %bb.ev
  store ptr %i.aht, ptr %i.xf, align 8, !tbaa !128
  store i32 %i.ahq, ptr %5, align 8, !tbaa !127
  br label %bb.ex

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i252.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread8.i249.i.i.i, %bb.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(40) @_hb_NullPool, i64 40, i1 false)
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i255.i.i.i

bb.ex:                                            ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.i247.i.i.i, %bb.ew, %bb.eu, %bb.es
  %i.ahv = load ptr, ptr %i.xf, align 8, !tbaa !128
  %i.ahw = load i32, ptr %i.xh, align 4, !tbaa !126 ; 2 uses
  %i.ahx = add i32 %i.ahw, 1
  store i32 %i.ahx, ptr %i.xh, align 4, !tbaa !126
  %i.ahy = zext i32 %i.ahw to i64
  %i.ahz = getelementptr inbounds nuw [40 x i8], ptr %i.ahv, i64 %i.ahy ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ahz, i8 0, i64 16, i1 false)
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 4 ; 3 uses
  %.not19.i635.not.i.i.i = icmp eq i32 %.sroa.11.1.i.i.i, 0
  br i1 %.not19.i635.not.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i554.i.i.i, label %.thread.i639.i.i.i

.thread.i639.i.i.i:                               ; preds = %bb.ex
  %i.aib = icmp ugt i32 %.sroa.11.1.i.i.i, 536870911
  br i1 %i.aib, label %.sink.split.i646.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i642.i.i.i, !prof !99

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i642.i.i.i: ; preds = %.thread.i639.i.i.i
  %i.aic = shl nuw i32 %.sroa.11.1.i.i.i, 3
  %i.aid = zext i32 %i.aic to i64
  %i.aie = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.aid) #16 ; 2 uses
  %.not22.i643.i.i.i = icmp eq ptr %i.aie, null
  br i1 %.not22.i643.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i649.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i644.i.i.i, !prof !100

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i649.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i642.i.i.i
  %.pre.i.i.i = load i32, ptr %i.ahz, align 8, !tbaa !136 ; 3 uses
  %.not23.i650.i.i.i = icmp ugt i32 %.sroa.11.1.i.i.i, %.pre.i.i.i
  br i1 %.not23.i650.i.i.i, label %bb.ey, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.i.i.i

bb.ey:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i649.i.i.i
  %i.aif = xor i32 %.pre.i.i.i, -1
  br label %.sink.split.i646.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i644.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.i642.i.i.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store ptr %i.aie, ptr %i.aig, align 8, !tbaa !138
  br label %.sink.split.i646.i.i.i

.sink.split.i646.i.i.i:                           ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i644.i.i.i, %bb.ey, %.thread.i639.i.i.i
  %.sink.i647.i.i.i = phi i32 [ %i.aif, %bb.ey ], [ %.sroa.11.1.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread.i644.i.i.i ], [ -1, %.thread.i639.i.i.i ] ; 2 uses
  store i32 %.sink.i647.i.i.i, ptr %i.ahz, align 8, !tbaa !136
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.i.i.i: ; preds = %.sink.split.i646.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i649.i.i.i
  %i.aih = phi i32 [ %.sink.i647.i.i.i, %.sink.split.i646.i.i.i ], [ %.pre.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE14realloc_vectorIS1_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS1_j11hb_priorityILj0EE.exit.thread53.i649.i.i.i ]
  %i.aii = icmp slt i32 %i.aih, 0
  br i1 %i.aii, label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit572.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.thread.i.i.i, !prof !769

_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.thread.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.i.i.i
  %.pre1006.pre.i.i.i = load i32, ptr %i.aia, align 4, !tbaa !137 ; 2 uses
  %.sroa.2.8.insert.ext.i.i.i.i.i552.i.i.i = zext i32 %.sroa.11.1.i.i.i to i64
  %i.aij = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i.i.i552.i.i.i, 3
  %i.aik = and i64 %i.aij, 4294967288             ; 2 uses
  %.not.i.i.i.i.i553.i.i.i = icmp eq i64 %i.aik, 0
  br i1 %.not.i.i.i.i.i553.i.i.i, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i554.i.i.i, label %bb.ez, !prof !143

bb.ez:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.thread.i.i.i
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aim = load ptr, ptr %i.ail, align 8, !tbaa !138
  %i.ain = zext i32 %.pre1006.pre.i.i.i to i64
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.aim, i64 %i.ain
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aio, ptr readonly align 1 %.sroa.19.4.i.i.i, i64 %i.aik, i1 false), !alias.scope !772
  %.pre1005.i.i.i = load i32, ptr %i.aia, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i554.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i554.i.i.i: ; preds = %bb.ez, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.thread.i.i.i, %bb.ex
  %i.aip = phi i32 [ %.pre1005.i.i.i, %bb.ez ], [ %.pre1006.pre.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.thread.i.i.i ], [ 0, %bb.ex ]
  %i.aiq = add i32 %i.aip, %.sroa.11.1.i.i.i
  store i32 %i.aiq, ptr %i.aia, align 4, !tbaa !137
  br label %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit572.i.i.i

_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit572.i.i.i: ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE10copy_arrayIS1_TnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEEv10hb_array_tIKS1_E.exit.i.i.i554.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit655.i.i.i
  %i.air = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.air, i8 0, i64 16, i1 false)
  store i32 8, ptr %i.ais, align 8, !tbaa !140
  br label %_ZN11hb_vector_tIhLb0EED2Ev.exit.i255.i.i.i

_ZN11hb_vector_tIhLb0EED2Ev.exit.i255.i.i.i:      ; preds = %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE13push_has_roomIJRS1_EEEPS1_DpOT_.exit572.i.i.i, %_ZN11hb_vector_tIN3CFF12cs_command_tELb0EE5allocEjb.exit.thread5.i252.i.i.i
  %i.ait = add i32 %.sroa.0.3.i.i.i, -1
  %spec.select.i.i.i1.i256.i.i.i = icmp ult i32 %i.ait, -2
  br i1 %spec.select.i.i.i1.i256.i.i.i, label %bb.fa, label %_ZN3CFF12cs_command_tD2Ev.exit257.i.i.i

bb.fa:                                            ; preds = %_ZN11hb_vector_tIhLb0EED2Ev.exit.i255.i.i.i
  call void @hb_free(ptr noundef %.sroa.19.4.i.i.i) #16
  br label %_ZN3CFF12cs_command_tD2Ev.exit257.i.i.i

_ZN3CFF12cs_command_tD2Ev.exit257.i.i.i:          ; preds = %bb.fa, %_ZN11hb_vector_tIhLb0EED2Ev.exit.i255.i.i.i
  %i.aiu = add i32 %.046973.i.i.i, 6
  %i.aiv = add i32 %.046973.i.i.i, 11
  %i.aiw = load i32, ptr %i.aax, align 4, !tbaa !764
  %i.aix = icmp ult i32 %i.aiv, %i.aiw
  br i1 %i.aix, label %.preheader.i221.i.i.i, label %_ZN3CFF12cs_command_tD2Ev.exit.i.i.i, !llvm.loop !670

bb.fb:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit266.i.i.i, %.preheader.i221.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i221.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit266.i.i.i ] ; 2 uses
  %.sroa.19.0971.i.i.i = phi ptr [ %i.ahj, %.preheader.i221.i.i.i ], [ %.sroa.19.4.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit266.i.i.i ] ; 6 uses
  %.sroa.11.0969.i.i.i = phi i32 [ 0, %.preheader.i221.i.i.i ], [ %.sroa.11.1.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit266.i.i.i ] ; 6 uses
  %.sroa.0.0968.i.i.i = phi i32 [ %.sink.i230.i.i.i, %.preheader.i221.i.i.i ], [ %.sroa.0.3.i.i.i, %_ZN11hb_vector_tIN3CFF8number_tELb0EE4pushIJRS1_EEEPS1_DpOT_.exit266.i.i.i ] ; 10 uses
  %i.aiy = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.aiz = add i32 %.046973.i.i.i, %i.aiy         ; 2 uses
  %i.aja = load i32, ptr %i.aax, align 4, !tbaa !137
  %.not.i258.i.i.i = icmp ult i32 %i.aiz, %i.aja
  br i1 %.not.i258.i.i.i, label %bb.fd, label %bb.fc, !prof !97

bb.fc:                                            ; preds = %bb.fb
  store i64 %i.xg, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit260.i.i.i

bb.fd:                                            ; preds = %bb.fb
  %i.ajb = load ptr, ptr %i.aba, align 8, !tbaa !138
  %i.ajc = zext i32 %i.aiz to i64
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %i.ajc
  br label %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit260.i.i.i

_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit260.i.i.i: ; preds = %bb.fd, %bb.fc
  %.0.i259.i.i.i = phi ptr [ @_hb_CrapPool, %bb.fc ], [ %i.ajd, %bb.fd ]
  %.not.i261.i.i.i = icmp slt i32 %.sroa.11.0969.i.i.i, %.sroa.0.0968.i.i.i
  %.pre1016.i.i.i = add i32 %.sroa.11.0969.i.i.i, 1 ; 3 uses
  br i1 %.not.i261.i.i.i, label %.critedge.i265.i.i.i, label %bb.fe

bb.fe:                                            ; preds = %_ZN11hb_vector_tIN3CFF8number_tELb0EEixEi.exit260.i.i.i
  %i.aje = icmp slt i32 %.sroa.0.0968.i.i.i, 0
  br i1 %i.aje, label %_ZN11hb_vector_tIN3CFF8number_tELb0EE5allocEjb.exit593.i.i.i, label %bb.ff, !prof !99

bb.ff:                                            ; preds = %bb.fe
  %.not.i573.i.i.i = icmp ugt i32 %.pre1016.i.i.i, %.sroa.0.0968.i.i.i
  br i1 %.not.i573.i.i.i, label %.preheader.i575.i.i.i, label %.critedge.i265.i.i.i, !prof !99

.preheader.i575.i.i.i:                            ; preds = %bb.ff, %.preheader.i575.i.i.i
  %.043.i576.i.i.i = phi i32 [ %i.ajh, %.preheader.i575.i.i.i ], [ %.sroa.0.0968.i.i.i, %bb.ff ] ; 2 uses
  %i.ajf = lshr i32 %.043.i576.i.i.i, 1
  %i.ajg = add i32 %.043.i576.i.i.i, 8
  %i.ajh = add i32 %i.ajg, %i.ajf                 ; 8 uses
  %i.aji = icmp ugt i32 %.pre1016.i.i.i, %i.ajh
  br i1 %i.aji, label %.preheader.i575.i.i.i, label %.thread.i577.i.i.i, !llvm.loop !5

.thread.i577.i.i.i:                               ; preds = %.preheader.i575.i.i.i
  %i.ajj = icmp ugt i32 %i.ajh, 536870911
  br i1 %i.ajj, label %.critedge.i592.i.i.i, label %bb.fg, !prof !99
end_hunk_0
