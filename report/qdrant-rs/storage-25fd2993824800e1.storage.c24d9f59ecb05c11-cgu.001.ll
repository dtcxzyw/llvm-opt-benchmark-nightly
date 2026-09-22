Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.001?download=true
inline.NumInlined: 14631
inline.NumDeleted: 4678
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNCINvMNtNtCsPYQCUnoTxQ_10collection10collection16state_managementNtB7_10Collection11apply_stateNCNCNvMs_NtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc20collection_containerNtB1H_14TableOfContent26apply_collections_snapshot00E0B1L_:bb.a
  %i.bmu = load i64, ptr %i.bmt, align 8, !range !26, !noalias !12646, !noundef !27
  %i.bmv = trunc nuw i64 %i.bmu to i1
  br i1 %i.bmv, label %bb.acc, label %bb.acb

bb.acb:                                           ; preds = %bb.aci, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTReRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEL_EECsgGgPqgSfnMH_7storage.exit89.i
  %i.bmw = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %i.bmx = load i64, ptr %i.bmw, align 8, !range !26, !noalias !12645, !noundef !27
  %i.bmy = trunc nuw i64 %i.bmx to i1
  br i1 %i.bmy, label %bb.adk, label %bb.adx

bb.acc:                                           ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemTReRNtNtNtCsPYQCUnoTxQ_10collection10operations5types12VectorParamsEEL_EECsgGgPqgSfnMH_7storage.exit89.i
  %i.bmz = getelementptr inbounds nuw i8, ptr %1, i64 3360
  %i.bna = load i64, ptr %i.bmz, align 8, !range !26, !alias.scope !12649, !noalias !12645, !noundef !27
  %i.bnb = trunc nuw i64 %i.bna to i1
  %i.bnc = getelementptr inbounds nuw i8, ptr %1, i64 3368
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bkj, i64 24
  %i.bne = load ptr, ptr %i.bnd, align 8, !alias.scope !12650, !noalias !12651, !noundef !27 ; 3 uses
  %.not.i90.i = icmp eq ptr %i.bne, null
  br i1 %.not.i90.i, label %_RNvXsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapRINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsgGgPqgSfnMH_7storage.exit.i, label %bb.acd

bb.acd:                                           ; preds = %bb.acc
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bkj, i64 32
  %i.bng = load <2 x i64>, ptr %i.bnf, align 8, !alias.scope !12650, !noalias !12651
  br label %_RNvXsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapRINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsgGgPqgSfnMH_7storage.exit.i

_RNvXsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapRINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.acd, %bb.acc
  %.sink19.i.i = phi i64 [ 0, %bb.acc ], [ 1, %bb.acd ] ; 2 uses
  %i.bnh = phi <2 x i64> [ <i64 undef, i64 0>, %bb.acc ], [ %i.bng, %bb.acd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !12645
  store i64 %.sink19.i.i, ptr %i.r, align 8, !noalias !12645
  %.sroa.5216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr null, ptr %.sroa.5216.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.bne, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.7217.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bni = extractelement <2 x i64> %i.bnh, i64 0
  store i64 %i.bni, ptr %.sroa.7217.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.8.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sink19.i.i, ptr %.sroa.8.0..sroa_idx.i174, align 8, !noalias !12645
  %.sroa.9218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr null, ptr %.sroa.9218.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.bne, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.11219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store <2 x i64> %i.bnh, ptr %.sroa.11219.0..sroa_idx.i, align 8, !noalias !12645
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  %.sroa.6232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 34
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.5223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  %.sroa.6225.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 34
  br label %bb.ace

bb.ace:                                           ; preds = %.backedge, %_RNvXsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapRINtB5_8BTreeMapNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsgGgPqgSfnMH_7storage.exit.i
  %i.bnl = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.r)
          to label %bb.ach unwind label %bb.acg, !noalias !12646 ; 2 uses

bb.acf:                                           ; preds = %.body109.i177, %.body107.i, %.body98.i, %bb.acl, %bb.acg
  %.pn43.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bnm, %bb.acg ], [ %.pn39.i, %.body98.i ], [ %.pn43.i, %.body109.i177 ], [ %eh.lpad-body108.i, %.body107.i ], [ %i.bny, %bb.acl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12645
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsgGgPqgSfnMH_7storage.exit.i

bb.acg:                                           ; preds = %bb.ace
  %i.bnm = landingpad { ptr, i32 }
          cleanup
  br label %bb.acf

bb.ach:                                           ; preds = %bb.ace
  %i.bnn = extractvalue { ptr, ptr } %i.bnl, 0    ; 5 uses
  %.not12.i = icmp eq ptr %i.bnn, null
  br i1 %.not12.i, label %bb.aci, label %bb.acj

bb.aci:                                           ; preds = %bb.ach
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !12645
  br label %bb.acb

bb.acj:                                           ; preds = %bb.ach
  %i.bno = extractvalue { ptr, ptr } %i.bnl, 1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bno) ]
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 24
  %i.bnq = load i8, ptr %i.bnp, align 8, !range !41, !noalias !12646, !noundef !27 ; 4 uses
  %i.bnr = load i64, ptr %i.bno, align 8, !range !35, !alias.scope !12652, !noalias !12646, !noundef !27
  %.not.i91.i = icmp eq i64 %i.bnr, 2
  br i1 %.not.i91.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema00ECsgGgPqgSfnMH_7storage.exit.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema00ECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.acj
  %i.bns = getelementptr i8, ptr %i.bno, i64 18
  %.val.i.i = load i8, ptr %i.bns, align 2, !range !111, !alias.scope !12653, !noalias !12646, !noundef !27
  %switch.tableidx = add nsw i8 %.val.i.i, 1      ; 3 uses
  %i.bnt = and i8 %switch.tableidx, 31
  %switch.masked = icmp ne i8 %i.bnt, 0
  %i.bnu = and i8 %switch.tableidx, 31
  %i.bnv = icmp eq i8 %i.bnu, 0
  %switch.cast525 = zext i8 %switch.tableidx to i40
  %switch.shiftamt526 = shl nuw nsw i40 %switch.cast525, 3
  %switch.downshift527 = lshr i40 12901810431, %switch.shiftamt526
  %switch.masked528 = trunc i40 %switch.downshift527 to i8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema00ECsgGgPqgSfnMH_7storage.exit.i, %bb.acj
  %.not4.i.i.i = phi i1 [ %switch.masked, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema00ECsgGgPqgSfnMH_7storage.exit.i ], [ false, %bb.acj ]
  %i.bnw = phi i1 [ %i.bnv, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema00ECsgGgPqgSfnMH_7storage.exit.i ], [ true, %bb.acj ]
  %.sroa.02.0.i93.i = phi i8 [ %switch.masked528, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema00ECsgGgPqgSfnMH_7storage.exit.i ], [ -1, %bb.acj ] ; 3 uses
  br i1 %i.bnb, label %bb.ack, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.thread.i

bb.ack:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit.i
  %i.bnx = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE3getB18_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.bnc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnn)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.acl, !noalias !12646 ; 4 uses

bb.acl:                                           ; preds = %bb.ack
  %i.bny = landingpad { ptr, i32 }
          cleanup
  br label %bb.acf

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.ack
  %.not36.i = icmp eq ptr %i.bnx, null
  br i1 %.not36.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.thread.i, label %bb.act

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.thread.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !12645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !12645
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnn)
          to label %bb.acn unwind label %bb.acm, !noalias !12646

bb.acm:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.thread.i
  %i.bnz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12645
  br label %.body98.i

bb.acn:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !12645
  store i8 %i.bnq, ptr %i.bnk, align 8, !noalias !12645
  store i8 %.sroa.02.0.i93.i, ptr %.sroa.5223.0..sroa_idx.i, align 1, !noalias !12645
  store i8 2, ptr %.sroa.6225.0..sroa_idx.i, align 2, !noalias !12645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !12645
  %i.boa = load i64, ptr %i.bkm, align 8, !alias.scope !12654, !noalias !12655, !noundef !27 ; 3 uses
  %i.bob = load i64, ptr %i.bkk, align 8, !range !32, !alias.scope !12654, !noalias !12655, !noundef !27
  %i.boc = icmp eq i64 %i.boa, %i.bob
  br i1 %i.boc, label %bb.aco, label %bb.acr

bb.aco:                                           ; preds = %bb.acn
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigEE8grow_oneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bkk)
          to label %bb.acr unwind label %bb.acp, !noalias !12656

bb.acp:                                           ; preds = %bb.aco
  %i.bod = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q) #28
          to label %.body98.i unwind label %bb.acq, !noalias !12646

bb.acq:                                           ; preds = %bb.acp
  %i.boe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !12646
  unreachable

.body98.i:                                        ; preds = %bb.acp, %bb.acm
  %.pn39.i = phi { ptr, i32 } [ %i.bnz, %bb.acm ], [ %i.bod, %bb.acp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12645
  br label %bb.acf

bb.acr:                                           ; preds = %bb.aco, %bb.acn
  %i.bof = load ptr, ptr %i.bkl, align 8, !alias.scope !12654, !noalias !12655, !nonnull !27, !noundef !27
  %i.bog = getelementptr inbounds nuw [40 x i8], ptr %i.bof, i64 %i.boa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bog, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !12646
  %i.boh = add i64 %i.boa, 1
  store i64 %i.boh, ptr %i.bkm, align 8, !alias.scope !12654, !noalias !12655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !12645
  br label %.backedge

bb.acs:                                           ; preds = %bb.ahj, %bb.ahi, %bb.agx, %bb.agi, %bb.age, %bb.afu, %bb.afq, %bb.abr, %bb.abf, %.body200.i
  %i.boi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !12646
  unreachable

bb.act:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE8and_thenRB23_NCNCNvMNtNtB29_10collection16state_managementNtB3z_10Collection24apply_vector_name_schema0s_0ECsgGgPqgSfnMH_7storage.exit.i
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bnx, i64 24
  %i.bok = load i8, ptr %i.boj, align 8, !range !41, !noalias !12646, !noundef !27 ; 2 uses
  %i.bol = load i64, ptr %i.bnx, align 8, !range !35, !alias.scope !12657, !noalias !12646, !noundef !27
  %.not.i96.i = icmp eq i64 %i.bol, 2
  br i1 %.not.i96.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit106.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema0s0_0ECsgGgPqgSfnMH_7storage.exit.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema0s0_0ECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.act
  %i.bom = getelementptr i8, ptr %i.bnx, i64 18
  %.val.i101.i = load i8, ptr %i.bom, align 2, !range !111, !alias.scope !12658, !noalias !12646, !noundef !27
  %switch.tableidx529 = add nsw i8 %.val.i101.i, 1 ; 2 uses
  %i.bon = and i8 %switch.tableidx529, 31
  %i.boo = icmp eq i8 %i.bon, 0
  %switch.cast534 = zext i8 %switch.tableidx529 to i40
  %switch.shiftamt535 = shl nuw nsw i40 %switch.cast534, 3
  %switch.downshift536 = lshr i40 12901810431, %switch.shiftamt535
  %switch.masked537 = trunc i40 %switch.downshift536 to i8
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit106.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit106.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema0s0_0ECsgGgPqgSfnMH_7storage.exit.i, %bb.act
  %.not3.i.i.i = phi i1 [ %i.boo, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema0s0_0ECsgGgPqgSfnMH_7storage.exit.i ], [ true, %bb.act ]
  %.sroa.02.0.i103.i = phi i8 [ %switch.masked537, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCsPYQCUnoTxQ_10collection10operations5types17SparseIndexParamsE8and_thenNtBL_8DatatypeNCNCNvMNtNtBP_10collection16state_managementNtB2m_10Collection24apply_vector_name_schema0s0_0ECsgGgPqgSfnMH_7storage.exit.i ], [ -1, %bb.act ]
  %.not.i.i.i175 = icmp eq i8 %i.bok, 2
  %3 = icmp eq i8 %i.bnq, 2                       ; 2 uses
  br i1 %.not.i.i.i175, label %bb.acv, label %bb.acu

bb.acu:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit106.i
  %4 = xor i8 %i.bok, %i.bnq
  %5 = trunc i8 %4 to i1
  %or.cond.not.i.i.i = or i1 %3, %5
  br i1 %or.cond.not.i.i.i, label %.thread.i176, label %bb.acw

bb.acv:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection10operations5types8DatatypeE3mapNtNtCs607s0NAIaWN_7segment5types21VectorStorageDatatypeNvYB1J_INtNtB5_7convert4FromBI_E4fromECsgGgPqgSfnMH_7storage.exit106.i
  br i1 %3, label %bb.acw, label %.thread.i176

bb.acw:                                           ; preds = %bb.acv, %bb.acu
  br i1 %.not3.i.i.i, label %bb.acx, label %.split444.i

.split444.i:                                      ; preds = %bb.acw
  %i.bop = icmp eq i8 %.sroa.02.0.i103.i, %.sroa.02.0.i93.i
  %spec.select.i.i.i = and i1 %.not4.i.i.i, %i.bop
  br i1 %spec.select.i.i.i, label %.backedge, label %.thread.i176

bb.acx:                                           ; preds = %bb.acw
  br i1 %i.bnw, label %.backedge, label %.thread.i176

.thread.i176:                                     ; preds = %bb.acx, %.split444.i, %bb.acv, %bb.acu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !12645
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnn)
          to label %bb.acz unwind label %bb.acy, !noalias !12646

bb.acy:                                           ; preds = %.thread.i176
  %i.boq = landingpad { ptr, i32 }
          cleanup
  br label %.body107.i

.body107.i:                                       ; preds = %bb.adb, %bb.acy
  %eh.lpad-body108.i = phi { ptr, i32 } [ %i.boq, %bb.acy ], [ %i.bou, %bb.adb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12645
  br label %bb.acf

bb.acz:                                           ; preds = %.thread.i176
  %i.bor = load i64, ptr %i.bkp, align 8, !alias.scope !12659, !noalias !12660, !noundef !27 ; 3 uses
  %i.bos = load i64, ptr %i.bkn, align 8, !range !32, !alias.scope !12659, !noalias !12660, !noundef !27
  %i.bot = icmp eq i64 %i.bor, %i.bos
  br i1 %i.bot, label %bb.ada, label %bb.add

bb.ada:                                           ; preds = %bb.acz
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bkn)
          to label %bb.add unwind label %bb.adb, !noalias !12661

bb.adb:                                           ; preds = %bb.ada
  %i.bou = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #28
          to label %.body107.i unwind label %bb.adc, !noalias !12646

bb.adc:                                           ; preds = %bb.adb
  %i.bov = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !12646
  unreachable

bb.add:                                           ; preds = %bb.ada, %bb.acz
  %i.bow = load ptr, ptr %i.bko, align 8, !alias.scope !12659, !noalias !12660, !nonnull !27, !noundef !27
  %i.box = getelementptr inbounds nuw [24 x i8], ptr %i.bow, i64 %i.bor
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.box, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !12646
  %i.boy = add i64 %i.bor, 1
  store i64 %i.boy, ptr %i.bkp, align 8, !alias.scope !12659, !noalias !12660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !12645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12645
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12645
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bnn)
          to label %bb.adf unwind label %bb.ade, !noalias !12646

bb.ade:                                           ; preds = %bb.add
  %i.boz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12645
  br label %.body109.i177

bb.adf:                                           ; preds = %bb.add
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !12645
  store i8 %i.bnq, ptr %i.bnj, align 8, !noalias !12645
  store i8 %.sroa.02.0.i93.i, ptr %.sroa.5230.0..sroa_idx.i, align 1, !noalias !12645
  store i8 2, ptr %.sroa.6232.0..sroa_idx.i, align 2, !noalias !12645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12645
  %i.bpa = load i64, ptr %i.bkm, align 8, !alias.scope !12662, !noalias !12663, !noundef !27 ; 3 uses
  %i.bpb = load i64, ptr %i.bkk, align 8, !range !32, !alias.scope !12662, !noalias !12663, !noundef !27
  %i.bpc = icmp eq i64 %i.bpa, %i.bpb
  br i1 %i.bpc, label %bb.adg, label %bb.adj

bb.adg:                                           ; preds = %bb.adf
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigEE8grow_oneCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bkk)
          to label %bb.adj unwind label %bb.adh, !noalias !12664

bb.adh:                                           ; preds = %bb.adg
  %i.bpd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs607s0NAIaWN_7segment10data_types18vector_name_config16VectorNameConfigEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n) #28
          to label %.body109.i177 unwind label %bb.adi, !noalias !12646

bb.adi:                                           ; preds = %bb.adh
  %i.bpe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !12646
  unreachable

.body109.i177:                                    ; preds = %bb.adh, %bb.ade
  %.pn43.i = phi { ptr, i32 } [ %i.boz, %bb.ade ], [ %i.bpd, %bb.adh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12645
  br label %bb.acf

bb.adj:                                           ; preds = %bb.adg, %bb.adf
  %i.bpf = load ptr, ptr %i.bkl, align 8, !alias.scope !12662, !noalias !12663, !nonnull !27, !noundef !27
  %i.bpg = getelementptr inbounds nuw [40 x i8], ptr %i.bpf, i64 %i.bpa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bpg, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !12646
  %i.bph = add i64 %i.bpa, 1
  store i64 %i.bph, ptr %i.bkm, align 8, !alias.scope !12662, !noalias !12663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12645
  br label %.backedge

.backedge:                                        ; preds = %bb.adj, %bb.acx, %.split444.i, %bb.acr
  br label %bb.ace

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.ago, %bb.agi, %bb.afy, %bb.afu, %bb.adq, %bb.acf, %.body87.i, %bb.abo, %.body.i162, %bb.abc
  %i.bpi = phi ptr [ %i.bka, %.body.i162 ], [ %i.bka, %.body87.i ], [ %i.bka, %bb.abc ], [ %i.bka, %bb.acf ], [ %i.bka, %bb.adq ], [ %i.bui, %bb.afu ], [ %i.bus, %bb.afy ], [ %i.bwg, %bb.ago ], [ %i.bvx, %bb.agi ], [ %i.bka, %bb.abo ] ; 2 uses
  %i.bpj = phi ptr [ %i.bkb, %.body.i162 ], [ %i.bkb, %.body87.i ], [ %i.bkb, %bb.abc ], [ %i.bkb, %bb.acf ], [ %i.bkb, %bb.adq ], [ %i.buj, %bb.afu ], [ %i.but, %bb.afy ], [ %i.bwh, %bb.ago ], [ %i.bvy, %bb.agi ], [ %i.bkb, %bb.abo ] ; 2 uses
  %.pn62.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn62.pn.pn.pn.pn.pn.i, %.body.i162 ], [ %.pn52.pn.i, %.body87.i ], [ %i.bks, %bb.abc ], [ %.pn43.pn.pn.pn.pn.i, %bb.acf ], [ %.pn33.i, %bb.adq ], [ %.pn28.i, %bb.afu ], [ %i.buu, %bb.afy ], [ %i.bwi, %bb.ago ], [ %.pn20.i, %bb.agi ], [ %i.blw, %bb.abo ] ; 2 uses
  %i.bpk = getelementptr inbounds nuw i8, ptr %1, i64 3586 ; 2 uses
  %i.bpl = load i8, ptr %i.bpk, align 2, !range !53, !noalias !12645, !noundef !27
  %i.bpm = trunc nuw i8 %i.bpl to i1
  br i1 %i.bpm, label %bb.ahi, label %bb.aba

bb.adk:                                           ; preds = %bb.acb
  %i.bpn = load i64, ptr %i.bmt, align 8, !range !26, !alias.scope !12665, !noalias !12646, !noundef !27
  %i.bpo = trunc nuw i64 %i.bpn to i1
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.bkj, i64 24
  %i.bpq = getelementptr inbounds nuw i8, ptr %1, i64 3368
  %i.bpr = load ptr, ptr %i.bpq, align 8, !alias.scope !12666, !noalias !12667, !noundef !27 ; 3 uses
  %.not.i113.i = icmp ne ptr %i.bpr, null         ; 3 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %1, i64 3376
  %i.bpt = load i64, ptr %i.bps, align 8, !alias.scope !12666, !noalias !12667
  %i.bpu = getelementptr inbounds nuw i8, ptr %1, i64 3384
  %i.bpv = load i64, ptr %i.bpu, align 8, !alias.scope !12666, !noalias !12667
  %.sroa.0.sroa.0.0.i.i = zext i1 %.not.i113.i to i64 ; 2 uses
  %.sroa.0.sroa.5.sroa.6.0.i.i = select i1 %.not.i113.i, i64 %i.bpt, i64 undef ; 2 uses
  %.sroa.5.0.i.i172 = select i1 %.not.i113.i, i64 %i.bpv, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12645
  store i64 %.sroa.0.sroa.0.0.i.i, ptr %i.l, align 8, !noalias !12645
  %.sroa.5244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %.sroa.5244.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.6245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.bpr, ptr %.sroa.6245.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.7246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i, ptr %.sroa.7246.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.8247.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 %.sroa.0.sroa.0.0.i.i, ptr %.sroa.8247.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.9248.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %.sroa.9248.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.10249.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.bpr, ptr %.sroa.10249.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.11250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 %.sroa.0.sroa.5.sroa.6.0.i.i, ptr %.sroa.11250.0..sroa_idx.i, align 8, !noalias !12645
  %.sroa.12251.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %.sroa.5.0.i.i172, ptr %.sroa.12251.0..sroa_idx.i, align 8, !noalias !12645
  br i1 %i.bpo, label %.split.us.i, label %.split.i173

.split.us.i:                                      ; preds = %bb.adk, %.split.us.i.backedge
  %i.bpw = invoke noundef align 8 ptr @_RNvXsF_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4KeysNtNtBb_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %bb.adl unwind label %.split387.us.i, !noalias !12646 ; 3 uses

bb.adl:                                           ; preds = %.split.us.i
  %.not13.us.i = icmp eq ptr %i.bpw, null
  br i1 %.not13.us.i, label %.split389.us.i, label %bb.adm

bb.adm:                                           ; preds = %bb.adl
  %i.bpx = invoke noundef align 8 ptr @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtBc_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsE3getB18_ECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.bpp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bpw)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB29_10collection16state_managementNtB3y_10Collection24apply_vector_name_schema0s1_0ECsgGgPqgSfnMH_7storage.exit.us.i unwind label %.split391.us.i, !noalias !12646

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB29_10collection16state_managementNtB3y_10Collection24apply_vector_name_schema0s1_0ECsgGgPqgSfnMH_7storage.exit.us.i: ; preds = %bb.adm
  %.not347.us.i = icmp eq ptr %i.bpx, null
  br i1 %.not347.us.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB29_10collection16state_managementNtB3y_10Collection24apply_vector_name_schema0s1_0ECsgGgPqgSfnMH_7storage.exit.thread.us.i, label %.split.us.i.backedge

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB29_10collection16state_managementNtB3y_10Collection24apply_vector_name_schema0s1_0ECsgGgPqgSfnMH_7storage.exit.thread.us.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB29_10collection16state_managementNtB3y_10Collection24apply_vector_name_schema0s1_0ECsgGgPqgSfnMH_7storage.exit.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !12645
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bpw)
          to label %bb.adn unwind label %.split394.us.i, !noalias !12646

bb.adn:                                           ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB29_10collection16state_managementNtB3y_10Collection24apply_vector_name_schema0s1_0ECsgGgPqgSfnMH_7storage.exit.thread.us.i
  %i.bpy = load i64, ptr %i.bkp, align 8, !alias.scope !12668, !noalias !12669, !noundef !27 ; 3 uses
  %i.bpz = load i64, ptr %i.bkn, align 8, !range !32, !alias.scope !12668, !noalias !12669, !noundef !27
  %i.bqa = icmp eq i64 %i.bpy, %i.bpz
  br i1 %i.bqa, label %bb.ado, label %bb.adp

bb.ado:                                           ; preds = %bb.adn
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsG258MDvU3F_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bkn)
          to label %bb.adp unwind label %.split397.us.i, !noalias !12670

bb.adp:                                           ; preds = %bb.ado, %bb.adn
  %i.bqb = load ptr, ptr %i.bko, align 8, !alias.scope !12668, !noalias !12669, !nonnull !27, !noundef !27
  %i.bqc = getelementptr inbounds nuw [24 x i8], ptr %i.bqb, i64 %i.bpy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bqc, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !12646
  %i.bqd = add i64 %i.bpy, 1
  store i64 %i.bqd, ptr %i.bkp, align 8, !alias.scope !12668, !noalias !12669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !12645
  br label %.split.us.i.backedge

.split.us.i.backedge:                             ; preds = %bb.adp, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBS_6string6StringNtNtNtCsPYQCUnoTxQ_10collection10operations5types18SparseVectorParamsEE11is_some_andNCNCNvMNtNtB29_10collection16state_managementNtB3y_10Collection24apply_vector_name_schema0s1_0ECsgGgPqgSfnMH_7storage.exit.us.i
  br label %.split.us.i

.split387.us.i:                                   ; preds = %.split.us.i
  %i.bqe = landingpad { ptr, i32 }
          cleanup
end_hunk_0
