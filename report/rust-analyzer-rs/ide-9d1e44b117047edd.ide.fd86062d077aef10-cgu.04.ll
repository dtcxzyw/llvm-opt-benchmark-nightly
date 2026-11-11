Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.04?download=true
inline.NumInlined: 2249
inline.NumDeleted: 1454
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1y_8adapters10filter_map15filter_map_foldBX_INtB8_3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuNCNvNtCslLuZgPVt6hg_3ide17highlight_related20highlight_referencess1_0NCINvNvMsg_NtB2A_7flattenINtB5A_13FlattenCompatppE9iter_fold7flattenB3l_uNCINvNvXsi_B5A_B5O_B1s_4fold7flattenIBJ_B3v_EuNCINvNtB2A_3map8map_foldB3v_NtB4m_16HighlightedRangeuNCB4k_s2_0NCIB7n_B7M_TB7M_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB8N_7HashSetB7M_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB1w_7collect6ExtendB7M_E6extendINtB7p_3MapINtB5A_7FlattenINtB2y_9FilterMapBI_B4i_EEB8b_EE0NCINvNvB1s_8for_each4callB8w_NCINvXs1i_NtB8P_3mapINtBcs_7HashMapB7M_uB9A_EIBaj_B8w_E6extendIBaT_BaS_B8E_EE0E0E0E0E0E0E0EB4o_:bb.a
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i: ; preds = %bb.j
  %.sroa.6.0.extract.shift.i.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i.i to i32
  br label %bb.m

bb.l:                                             ; preds = %.noexc5
  %i.az = load i32, ptr %i.at, align 8, !noalias !1507, !noundef !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i
  %.sroa.02.0.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i.i.i ], [ %i.az, %bb.l ]
  %i.ba = add i32 %.sroa.02.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %.not.i.i.i = icmp ugt i32 %.sroa.0.0.i.i.i, %i.ba
  br i1 %.not.i.i.i, label %bb.n, label %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i, !prof !19

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #33
          to label %.noexc7 unwind label %.body.thread44.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.n
  unreachable

_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i: ; preds = %bb.m
  store <2 x i32> %i.ai, ptr %i.g, align 8, !noalias !1507
  store i32 %.sroa.0.0.i.i.i, ptr %i.y, align 8, !noalias !1507
  store i32 %i.ba, ptr %i.z, align 4, !noalias !1507
  invoke void @_RNvMs1_NtCs6oosyzwIepl_6ide_db6searchNtB5_11SearchScope10file_range(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.g)
          to label %.noexc8 unwind label %.body.thread44.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1507
  invoke void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages9set_scope(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.k, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.h)
          to label %bb.p unwind label %bb.o, !noalias !1507

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.s, %bb.o
  %.pn.i.i = phi { ptr, i32 } [ %i.bb, %bb.o ], [ %i.bc, %bb.s ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.body.thread unwind label %bb.u, !noalias !1507

bb.o:                                             ; preds = %bb.t, %bb.q, %bb.p, %.noexc8
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECslLuZgPVt6hg_3ide.exit.i.i

bb.p:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1507
  invoke void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages17include_self_refs(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.k)
          to label %bb.q unwind label %bb.o, !noalias !1507

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1507
  invoke void @_RNvMs4_NtCs6oosyzwIepl_6ide_db6searchNtB5_10FindUsages3all(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(104) %i.l)
          to label %bb.r unwind label %bb.o, !noalias !1507

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1507
  invoke void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.v)
          to label %bb.t unwind label %bb.s, !noalias !1509

bb.s:                                             ; preds = %bb.r
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.u, !noalias !1507

bb.t:                                             ; preds = %bb.r
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related20highlight_referencess1_0B5_.exit.i unwind label %bb.o, !noalias !1507

bb.u:                                             ; preds = %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECslLuZgPVt6hg_3ide.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1507
  unreachable

_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related20highlight_referencess1_0B5_.exit.i: ; preds = %bb.t
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtB1U_3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc9 unwind label %.body.thread44.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related20highlight_referencess1_0B5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1507
  %i.be = load i64, ptr %i.n, align 8, !range !21, !noalias !1506, !noundef !12 ; 3 uses
  %.not.i = icmp eq i64 %i.be, -1
  br i1 %.not.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %.noexc9
  %.sroa.413.0.copyload.i = load ptr, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !1506, !nonnull !12, !noundef !12 ; 4 uses
  %.sroa.514.0.copyload.i = load i64, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !1506 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1510
  %i.bf = icmp ult i64 %.sroa.514.0.copyload.i, 230584300921369396
  call void @llvm.assume(i1 %i.bf)
  %.idx.i.i = mul nuw nsw i64 %.sroa.514.0.copyload.i, 40
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload.i, i64 %.idx.i.i ; 2 uses
  store ptr %.sroa.413.0.copyload.i, ptr %i.e, align 8, !noalias !1510
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1510
  store ptr %i.bg, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1510
  call void @llvm.experimental.noalias.scope.decl(metadata !1511)
  call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1513
  store ptr %.val.i, ptr %i.d, align 8, !noalias !1514
  %.not.not4.i.i.i.i = icmp eq i64 %.sroa.514.0.copyload.i, 0
  br i1 %.not.not4.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EuNCINvNtBc_3map8map_foldB28_NtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNCNvB4Y_20highlight_referencess2_0NCIB4y_B4W_TB4W_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6U_7HashSetB4W_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB3g_7collect6ExtendB4W_E6extendINtB4A_3MapINtBa_7FlattenINtNtBc_10filter_map9FilterMapIB3Y_NtCs8Xq8PKFYOms_3hir9AssocItemENCB5W_s1_0EEB5U_EE0NCINvNvB3c_8for_each4callB6D_NCINvXs1i_NtB6W_3mapINtBbo_7HashMapB4W_uB7H_EIB8q_B6D_E6extendIB90_B8Z_B6L_EE0E0E0E0E0E0B50_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.v, %bb.w
  %i.bh = phi ptr [ %i.bi, %bb.w ], [ %.sroa.413.0.copyload.i, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !noalias !1515
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceNtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNCNvB2g_20highlight_referencess2_0NCIBR_B2e_TB2e_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB4b_7HashSetB2e_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtBX_6traits7collect6ExtendB2e_E6extendINtBT_3MapINtNtBV_7flatten7FlattenINtNtBV_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENCB3e_s1_0EEB3c_EE0NCINvNvNtNtB5L_8iterator8Iterator8for_each4callB3U_NCINvXs1i_NtB4d_3mapINtBa1_7HashMapB2e_uB4Y_EIB5H_B3U_E6extendIB6p_B6o_B42_EE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutB2i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.w unwind label %bb.x, !noalias !1515

bb.w:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1514
  %.not.not.i.i.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not.not.i.i.i.i, label %_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EuNCINvNtBc_3map8map_foldB28_NtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNCNvB4Y_20highlight_referencess2_0NCIB4y_B4W_TB4W_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6U_7HashSetB4W_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB3g_7collect6ExtendB4W_E6extendINtB4A_3MapINtBa_7FlattenINtNtBc_10filter_map9FilterMapIB3Y_NtCs8Xq8PKFYOms_3hir9AssocItemENCB5W_s1_0EEB5U_EE0NCINvNvB3c_8for_each4callB6D_NCINvXs1i_NtB6W_3mapINtBbo_7HashMapB4W_uB7H_EIB8q_B6D_E6extendIB90_B8Z_B6L_EE0E0E0E0E0E0B50_.exit.i, label %.lr.ph.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %.sroa.4.0..sroa_idx.i.i.le = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i.i.le, align 8, !alias.scope !1516, !noalias !1510
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.e)
          to label %.body.thread unwind label %bb.y, !noalias !1510

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1515
  unreachable

_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EuNCINvNtBc_3map8map_foldB28_NtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNCNvB4Y_20highlight_referencess2_0NCIB4y_B4W_TB4W_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6U_7HashSetB4W_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB3g_7collect6ExtendB4W_E6extendINtB4A_3MapINtBa_7FlattenINtNtBc_10filter_map9FilterMapIB3Y_NtCs8Xq8PKFYOms_3hir9AssocItemENCB5W_s1_0EEB5U_EE0NCINvNvB3c_8for_each4callB6D_NCINvXs1i_NtB6W_3mapINtBbo_7HashMapB4W_uB7H_EIB8q_B6D_E6extendIB90_B8Z_B6L_EE0E0E0E0E0E0B50_.exit.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1514
  store i64 %i.be, ptr %i.b, align 8, !noalias !1514
  store ptr %.sroa.413.0.copyload.i, ptr %i.ab, align 8, !noalias !1514
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc10 unwind label %.body.thread44.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EuNCINvNtBc_3map8map_foldB28_NtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNCNvB4Y_20highlight_referencess2_0NCIB4y_B4W_TB4W_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6U_7HashSetB4W_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB3g_7collect6ExtendB4W_E6extendINtB4A_3MapINtBa_7FlattenINtNtBc_10filter_map9FilterMapIB3Y_NtCs8Xq8PKFYOms_3hir9AssocItemENCB5W_s1_0EEB5U_EE0NCINvNvB3c_8for_each4callB6D_NCINvXs1i_NtB6W_3mapINtBbo_7HashMapB4W_uB7H_EIB8q_B6D_E6extendIB90_B8Z_B6L_EE0E0E0E0E0E0B50_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1510
  br label %bb.z

._crit_edge:                                      ; preds = %bb.z, %bb.a
  %i.bl = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.bn, ptr %i.o, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bl, ptr %i.bo, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

.body.thread44.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNvMsg_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEuNCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EuNCINvNtBc_3map8map_foldB28_NtNtCslLuZgPVt6hg_3ide17highlight_related16HighlightedRangeuNCNvB4Y_20highlight_referencess2_0NCIB4y_B4W_TB4W_uEuNCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6U_7HashSetB4W_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB3g_7collect6ExtendB4W_E6extendINtB4A_3MapINtBa_7FlattenINtNtBc_10filter_map9FilterMapIB3Y_NtCs8Xq8PKFYOms_3hir9AssocItemENCB5W_s1_0EEB5U_EE0NCINvNvB3c_8for_each4callB6D_NCINvXs1i_NtB6W_3mapINtBbo_7HashMapB4W_uB7H_EIB8q_B6D_E6extendIB90_B8Z_B6L_EE0E0E0E0E0E0B50_.exit.i, %_RNCNvNtCslLuZgPVt6hg_3ide17highlight_related20highlight_referencess1_0B5_.exit.i, %_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10text_range.exit.i.i, %bb.i, %bb.g, %bb.k, %bb.n
  %lpad.loopexit.split-lp49 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.z:                                             ; preds = %.noexc10, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1506
  %.not.not = icmp eq ptr %i.ad, %i.r
  br i1 %.not.not, label %._crit_edge, label %bb.b

.body.thread:                                     ; preds = %bb.x, %.body.thread44.loopexit.split-lp.loopexit.split-lp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECslLuZgPVt6hg_3ide.exit.i.i
  %eh.lpad-body20 = phi { ptr, i32 } [ %lpad.loopexit.split-lp49, %.body.thread44.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db6search17UsageSearchResultECslLuZgPVt6hg_3ide.exit.i.i ], [ %i.bj, %bb.x ]
  %.val = load ptr, ptr %0, align 8, !alias.scope !34, !nonnull !12, !noundef !12
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.bp, align 8, !alias.scope !34, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1517
  store i64 %.val4, ptr %i.a, align 8, !noalias !1517
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.bq, align 8, !noalias !1517
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit unwind label %bb.aa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1517
  resume { ptr, i32 } %eh.lpad-body20

bb.aa:                                            ; preds = %.body.thread
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4folduNCINvNvB1s_8for_each4callBX_NCNCNvNtCslLuZgPVt6hg_3ide9runnables9runnabless_0s_0E0EB33_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1554 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [152 x i8], align 8               ; 10 uses
  %i.d = alloca [152 x i8], align 8               ; 4 uses
  %i.e = alloca [152 x i8], align 8               ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [12 x i8], align 4                ; 7 uses
  %i.j = alloca [152 x i8], align 8               ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [12 x i8], align 4                ; 6 uses
  %i.m = alloca [152 x i8], align 8               ; 8 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [152 x i8], align 8               ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.s, align 8        ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.not.not22 = icmp eq ptr %.promoted, %i.t
  br i1 %.not.not22, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.10.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.7.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.10.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.7.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.4..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.8.4..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.538.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.639.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.8.0..sroa_idx28.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.929.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load ptr, ptr %2, align 8, !nonnull !12, !align !14
  %i.ah = load ptr, ptr %i.ac, align 8, !nonnull !12, !align !13
  %i.ai = load ptr, ptr %i.ae, align 8, !nonnull !12, !align !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.af, align 8, !nonnull !12, !align !13 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %i.an = phi ptr [ %.promoted, %.lr.ph ], [ %i.ao, %bb.an ] ; 4 uses
  %.sroa.013.0.copyload = load i32, ptr %i.an, align 4 ; 5 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.sroa.414.0.copyload = load i32, ptr %.sroa.414.0..sroa_idx, align 4 ; 7 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.515.0.copyload = load i32, ptr %.sroa.515.0..sroa_idx, align 4 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1555
  %i.ap = and i32 %.sroa.013.0.copyload, 254
  %.not.i = icmp eq i32 %i.ap, 0
  %.sroa.0.sroa.0.0.extract.trunc.mask.i = and i32 %.sroa.013.0.copyload, 255
  %i.aq = zext nneg i32 %.sroa.0.sroa.0.0.extract.trunc.mask.i to i64
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = select i1 %.not.i, i64 0, i64 %i.ar
  switch i64 %i.as, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.j
    i64 2, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1556
  store i32 %.sroa.013.0.copyload, ptr %i.l, align 4, !noalias !1555
  store i32 %.sroa.414.0.copyload, ptr %.sroa.7.0..sroa_idx3.i, align 4, !noalias !1555
  store i32 %.sroa.515.0.copyload, ptr %.sroa.10.0..sroa_idx8.i, align 4, !noalias !1555
  invoke void @_RNvNtCslLuZgPVt6hg_3ide9runnables11runnable_fn(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.p, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.l)
          to label %.noexc unwind label %.body.thread20

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1556
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %i.at = load i64, ptr %i.p, align 8, !range !20, !alias.scope !1557, !noalias !1556, !noundef !12
  %.not.i.i.i = icmp eq i64 %i.at, -1
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.m, ptr noundef nonnull align 8 dereferenceable(152) %i.p, i64 152, i1 false), !noalias !1556
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1558
  store i32 %.sroa.013.0.copyload, ptr %i.y, align 4, !noalias !1559
  store i32 %.sroa.414.0.copyload, ptr %.sroa.7.0..sroa_idx5.i, align 8, !noalias !1559
  store i32 %.sroa.515.0.copyload, ptr %.sroa.10.0..sroa_idx10.i, align 4, !noalias !1559
  store i8 5, ptr %i.k, align 8, !noalias !1558
  invoke void @_RNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctest(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.m, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.h unwind label %bb.g, !noalias !1556

bb.g:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEEB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.p) #34
          to label %.body.thread unwind label %bb.i, !noalias !1560

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1558
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1560
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i: ; preds = %bb.h, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1556
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1556
  store i32 %.sroa.414.0.copyload, ptr %i.w, align 4, !noalias !1556
  store i32 %.sroa.515.0.copyload, ptr %i.x, align 8, !noalias !1556
  store i8 8, ptr %i.o, align 8, !noalias !1556
  invoke void @_RNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctest(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.m, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.o)
          to label %.noexc7 unwind label %.body.thread20

.noexc7:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1556
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1556
  store i32 %.sroa.414.0.copyload, ptr %i.u, align 4, !noalias !1556
  store i32 %.sroa.515.0.copyload, ptr %i.v, align 8, !noalias !1556
  store i8 11, ptr %i.n, align 8, !noalias !1556
  invoke void @_RNvNtCslLuZgPVt6hg_3ide9runnables18module_def_doctest(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.m, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.n)
          to label %.noexc8 unwind label %.body.thread20

.noexc8:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1556
  br label %bb.l

bb.l:                                             ; preds = %.noexc8, %.noexc7, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i
  %.sroa.11.0.i.i = phi i32 [ %.sroa.414.0.copyload, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i ], [ %.sroa.515.0.copyload, %.noexc7 ], [ %.sroa.515.0.copyload, %.noexc8 ]
  %.sroa.81.0.i.i = phi i32 [ %.sroa.013.0.copyload, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i ], [ %.sroa.414.0.copyload, %.noexc7 ], [ %.sroa.414.0.copyload, %.noexc8 ]
  %.sroa.13.sroa.0.0.i.i = phi i32 [ %.sroa.515.0.copyload, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i ], [ undef, %.noexc7 ], [ undef, %.noexc8 ]
  %cond.i.i = phi i1 [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE7or_elseNCNCNCNvBK_9runnabless_0s_00EBM_.exit.i.i ], [ false, %.noexc7 ], [ false, %.noexc8 ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 8, !noalias !1556 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.an, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i = load i32, ptr %i.ag, align 4, !noalias !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1563
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.c, align 8, !noalias !1564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx3.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx2.i.i, i64 144, i1 false), !noalias !1556
  %.val1.i.i.i.i = load i32, ptr %i.z, align 4, !noalias !1563, !noundef !12
  %i.aw = icmp eq i32 %.val1.i.i.i.i, %.val.i.i.i
  br i1 %i.aw, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aa)
          to label %bb.p unwind label %bb.o, !noalias !1563

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables12RunnableKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c) #34
          to label %bb.q unwind label %bb.v, !noalias !1563

bb.p:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables12RunnableKindEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.c)
          to label %bb.t unwind label %bb.s, !noalias !1563

bb.q:                                             ; preds = %bb.s, %bb.o
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.ba, %bb.s ], [ %i.ax, %bb.o ] ; 2 uses
  %i.ay = load i64, ptr %i.ab, align 8, !range !20, !alias.scope !1565, !noalias !1563, !noundef !12
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %.body.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ab)
          to label %.body.thread unwind label %bb.v, !noalias !1563

bb.s:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.t:                                             ; preds = %bb.p
  %i.bb = load i64, ptr %i.ab, align 8, !range !20, !alias.scope !1566, !noalias !1563, !noundef !12
  %i.bc = icmp eq i64 %i.bb, -1
  br i1 %i.bc, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEBF_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEBF_.exit.i.i.i.i unwind label %.body.thread20

bb.v:                                             ; preds = %bb.r, %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1563
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEBF_.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1563
  br label %bb.an

bb.w:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.7.0..sroa_idx2.i.i, i64 144, i1 false), !noalias !1556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1563
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.j, align 8, !noalias !1562
  br i1 %cond.i.i, label %bb.aa, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.thread.i.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false), !noalias !1562
  %i.be = load i64, ptr %i.al, align 8, !alias.scope !1567, !noalias !1562, !noundef !12 ; 3 uses
  %i.bf = load i64, ptr %i.ak, align 8, !range !16, !alias.scope !1567, !noalias !1562, !noundef !12
  %i.bg = icmp eq i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %.thread.i.i.i
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.ak unwind label %bb.y, !noalias !1568

bb.y:                                             ; preds = %bb.x
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.d) #34
          to label %.body.thread unwind label %bb.z, !noalias !1562

bb.z:                                             ; preds = %bb.y
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1562
  unreachable

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1562
  store i32 %.sroa.81.0.i.i, ptr %i.i, align 4, !noalias !1562
  store i32 %.sroa.11.0.i.i, ptr %.sroa.7.4..sroa_idx.i.i.i, align 4, !noalias !1562
  store i32 %.sroa.13.sroa.0.0.i.i, ptr %.sroa.8.4..sroa_idx.i.i.i, align 4, !noalias !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1562
  invoke void @_RNvXs6_NtCs8Xq8PKFYOms_3hir10has_sourceNtB7_8FunctionNtB5_9HasSource6source(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.i, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @9)
          to label %bb.ab unwind label %bb.al, !noalias !1562

bb.ab:                                            ; preds = %bb.aa
  %i.bj = load i32, ptr %i.ad, align 8, !range !35, !noalias !1562, !noundef !12 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.bj, 2
  br i1 %.not5.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.thread.i.i, label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.thread.i.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1562
  br label %.thread.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %.sroa.036.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !noalias !1562, !nonnull !12, !noundef !12 ; 2 uses
  %.sroa.538.0.copyload.i.i.i = load i32, ptr %.sroa.538.0..sroa_idx.i.i.i, align 4, !noalias !1562
  %.sroa.639.0.copyload.i.i.i = load i32, ptr %.sroa.639.0..sroa_idx.i.i.i, align 8, !noalias !1562
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.036.0.copyload.i.i.i, i64 48 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !noalias !1562, !noundef !12
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !noalias !1562
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.036.0.copyload.i.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.i.i unwind label %bb.al, !noalias !1562

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1562
  %.sroa.6.1.fr.i.i.i = freeze i32 %.sroa.538.0.copyload.i.i.i ; 2 uses
  %.not.i7.i.i = icmp ne i32 %.sroa.6.1.fr.i.i.i, 0
  %i.bo = icmp eq i32 %i.bj, 1
  %or.cond.i.i = and i1 %i.bo, %.not.i7.i.i
  br i1 %or.cond.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs33K2ylI4knu_10hir_expand9HirFileIdE6filterNCNCNvNtCslLuZgPVt6hg_3ide9runnables9runnables0s1_0EB1A_.exit.i.i.i, label %.thread.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs33K2ylI4knu_10hir_expand9HirFileIdE6filterNCNCNvNtCslLuZgPVt6hg_3ide9runnables9runnables0s1_0EB1A_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBG_9HirFileIdNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes2FnEECslLuZgPVt6hg_3ide.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1562
  store i32 1, ptr %i.g, align 4, !noalias !1562
  store i32 %.sroa.6.1.fr.i.i.i, ptr %.sroa.8.0..sroa_idx28.i.i.i, align 4, !noalias !1562
  store i32 %.sroa.639.0.copyload.i.i.i, ptr %.sroa.929.0..sroa_idx.i.i.i, align 4, !noalias !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1562
  %i.bp = invoke noundef i64 @_RINvYINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherENtB6_11BuildHasher8hash_oneRNtCs33K2ylI4knu_10hir_expand9HirFileIdECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.g)
          to label %.noexc10.i.i.i unwind label %bb.al, !noalias !1562

.noexc10.i.i.i:                                   ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs33K2ylI4knu_10hir_expand9HirFileIdE6filterNCNCNvNtCslLuZgPVt6hg_3ide9runnables9runnables0s1_0EB1A_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.g, i64 12, i1 false), !noalias !1570
  invoke void @_RNvMNtNtCs3gqD4ldeioo_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtCs33K2ylI4knu_10hir_expand9HirFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEE3newB2i_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ai, i64 noundef %i.bp, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.b)
          to label %bb.ae unwind label %bb.al, !noalias !1562

bb.ae:                                            ; preds = %.noexc10.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1569
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvMNtNtCs3gqD4ldeioo_8indexmap3map5entryINtB2_5EntryNtCs33K2ylI4knu_10hir_expand9HirFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEE10or_defaultB22_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.f)
          to label %bb.af unwind label %bb.al, !noalias !1562 ; 4 uses

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1562
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false), !noalias !1562
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !1571, !noalias !1562, !noundef !12 ; 3 uses
  %i.bt = load i64, ptr %i.bq, align 8, !range !16, !alias.scope !1571, !noalias !1562, !noundef !12
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCslLuZgPVt6hg_3ide9runnables8RunnableE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.aj unwind label %bb.ah, !noalias !1572

bb.ah:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e) #34
          to label %.body.thread unwind label %bb.ai, !noalias !1562

bb.ai:                                            ; preds = %bb.ah
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1562
  unreachable

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !1571, !noalias !1562, !nonnull !12, !noundef !12
  %i.bz = getelementptr inbounds nuw [152 x i8], ptr %i.by, i64 %i.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.bz, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false), !noalias !1562
  %i.ca = add i64 %i.bs, 1
  store i64 %i.ca, ptr %i.br, align 8, !alias.scope !1571, !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1562
  br label %bb.an

bb.ak:                                            ; preds = %bb.x, %.thread.i.i.i
  %i.cb = load ptr, ptr %i.am, align 8, !alias.scope !1567, !noalias !1562, !nonnull !12, !noundef !12
  %i.cc = getelementptr inbounds nuw [152 x i8], ptr %i.cb, i64 %i.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.cc, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false), !noalias !1562
  %i.cd = add i64 %i.be, 1
  store i64 %i.cd, ptr %i.al, align 8, !alias.scope !1567, !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1562
  br label %bb.an

bb.al:                                            ; preds = %bb.ae, %.noexc10.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtCs33K2ylI4knu_10hir_expand9HirFileIdE6filterNCNCNvNtCslLuZgPVt6hg_3ide9runnables9runnables0s1_0EB1A_.exit.i.i.i, %bb.ad, %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEBF_(ptr noalias nofree noundef align 8 dereferenceable(152) %i.j) #34
          to label %.body.thread unwind label %bb.am, !noalias !1562

bb.am:                                            ; preds = %bb.al
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !1562
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.an, %bb.a
  %i.cg = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.ci, ptr %i.q, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.cg, ptr %i.cj, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  ret void

.body.thread20:                                   ; preds = %bb.d, %bb.j, %bb.k, %bb.u
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.an:                                            ; preds = %bb.ak, %bb.aj, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCslLuZgPVt6hg_3ide9runnables8RunnableEBF_.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1555
  %.not.not = icmp eq ptr %i.ao, %i.t
  br i1 %.not.not, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit, label %bb.b

.body.thread:                                     ; preds = %bb.al, %bb.ah, %bb.y, %bb.r, %bb.q, %bb.g, %.body.thread20
  %eh.lpad-body17 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread20 ], [ %i.bv, %bb.ah ], [ %i.bh, %bb.y ], [ %i.ce, %bb.al ], [ %.pn.i.i.i.i.i, %bb.r ], [ %.pn.i.i.i.i.i, %bb.q ], [ %i.au, %bb.g ]
  %.val = load ptr, ptr %0, align 8, !alias.scope !34, !nonnull !12, !noundef !12
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load i64, ptr %i.ck, align 8, !alias.scope !34, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1573
  store i64 %.val4, ptr %i.a, align 8, !noalias !1573
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.cl, align 8, !noalias !1573
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit unwind label %bb.ao

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1573
  resume { ptr, i32 } %eh.lpad-body17

bb.ao:                                            ; preds = %.body.thread
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1s_4find5checkBX_NCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00E0INtNtNtB1A_3ops12control_flow11ControlFlowBX_EEB34_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1579 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %.sroa.6 = alloca [11 x i8], align 1            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12
  %.not12 = icmp eq ptr %.promoted, %i.f
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  %i.j = call noundef ptr @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.c, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @9), !noalias !1580 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00B7_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.j, i64 -1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.m), !noalias !1582
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1582
  store ptr %i.p, ptr %i.b, align 8, !noalias !1582
  %i.q = load atomic i64, ptr %i.p acquire, align 8, !noalias !1582
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %bb.d, label %bb.e, !prof !19

bb.d:                                             ; preds = %bb.c
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !1582
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1582
  store ptr %i.p, ptr %i.a, align 8, !noalias !1582
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1582
  br label %_RNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00B7_.exit.i

_RNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00B7_.exit.i: ; preds = %bb.e, %bb.b
  %.sroa.0.0.shrunk.i.i = icmp eq ptr %i.g, %i.j
  br i1 %.sroa.0.0.shrunk.i.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtCs8Xq8PKFYOms_3hir9AssocItemNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00E0B1O_.exit, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtCs8Xq8PKFYOms_3hir9AssocItemNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00E0B1O_.exit.thread

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtCs8Xq8PKFYOms_3hir9AssocItemNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00E0B1O_.exit.thread: ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00B7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtCs8Xq8PKFYOms_3hir9AssocItemNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00E0B1O_.exit: ; preds = %_RNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00B7_.exit.i
  %.sroa.06.0.copyload = load i8, ptr %i.c, align 4, !alias.scope !1583 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.6.0..sroa_idx, i64 11, i1 false), !alias.scope !1583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i = icmp eq i8 %.sroa.06.0.copyload, -1
  br i1 %.not.i, label %bb.g, label %bb.f

._crit_edge:                                      ; preds = %bb.g, %bb.a, %bb.f
  %storemerge = phi i8 [ %.sroa.06.0.copyload, %bb.f ], [ -1, %bb.a ], [ -1, %bb.g ]
  store i8 %storemerge, ptr %0, align 4
  ret void

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4find5checkNtCs8Xq8PKFYOms_3hir9AssocItemNCNCNvNtCslLuZgPVt6hg_3ide16goto_declaration16goto_declarations_00E0B1O_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
end_hunk_0
