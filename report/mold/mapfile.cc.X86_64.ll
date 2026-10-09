Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/mapfile.cc.X86_64?download=true
inline.NumInlined: 1826
inline.NumDeleted: 914
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !181  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #11 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !116
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !116
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !182
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !115
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !115
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !312 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !313 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !314 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !116 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !115 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !115
  store i64 0, ptr %i.g, align 8, !tbaa !116
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !99
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !304 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.al, align 64, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !313 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !313
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !314 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !313
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !314
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !312
  store i64 %i.av, ptr %i.au, align 16, !tbaa !312
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !316
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !177
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !116
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !116
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !116
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !114
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !115
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !115
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !117
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !305 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !183
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !121
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !117
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !184
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !177
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !177
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !185
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #11, !inline_history !305
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !312 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !313 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !314 ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !116 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !115 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !115
  store i64 0, ptr %i.g, align 8, !tbaa !116
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !306

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %i.bv = phi i64 [ %i.aa, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ]
  %i.bw = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ]
  %i.bx = phi i64 [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L7get_mapISH_EENSB_19concurrent_hash_mapIPNSF_12InputSectionIT_EESL_IPNSF_6SymbolISS_EESaISX_EENS1_16tbb_hash_compareISU_EENS1_13tbb_allocatorISt4pairIKSU_SZ_EEEEERNSF_7ContextISS_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSS_RKNS1_14execution_dataE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.by = icmp ult i64 %i.bx, %.pre-phi.i
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !115
  %.not.i12.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.critedge.i
  call fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %i.bw, i64 %i.bv), !inline_history !307
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L7get_mapISF_EENS9_19concurrent_hash_mapIPNSD_12InputSectionIT_EESJ_IPNSD_6SymbolISQ_EESaISV_EENS1_16tbb_hash_compareISS_EENS1_13tbb_allocatorISt4pairIKSS_SX_EEEEERNSD_7ContextISQ_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 20 uses
  store i8 0, ptr %i.cb, align 1, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !186
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.q

bb.q:                                             ; preds = %bb.aj, %bb.p
  %i.cf = phi i8 [ %i.nc, %bb.aj ], [ 0, %bb.p ]  ; 3 uses
  %i.cg = phi i8 [ %i.nd, %bb.aj ], [ 1, %bb.p ]  ; 13 uses
  %i.ch = phi i8 [ %i.ne, %bb.aj ], [ 0, %bb.p ]  ; 9 uses
  %i.ci = load i8, ptr %i.bz, align 4, !tbaa !115 ; 10 uses
  %i.cj = icmp ult i8 %i.cg, 8
  br i1 %i.cj, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %.phi.trans.insert.i.i.i = zext i8 %i.ch to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !42
  %i.ck = icmp ult i8 %.pre.i.i.i, %i.ci
  br i1 %i.ck, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.r:                                             ; preds = %bb.ag
  %i.cl = icmp ult i8 %i.kn, %i.ci
  br i1 %i.cl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1: ; preds = %bb.r
  %i.cm = zext nneg i8 %i.kb to i64               ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !312
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !313
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !314
  %i.ct = sub i64 %i.cq, %i.cs
  %i.cu = icmp ult i64 %i.cp, %i.ct
  br i1 %i.cu, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %i.cw = add i8 %i.ch, 2
  %i.cx = and i8 %i.cw, 7                         ; 5 uses
  %i.cy = zext nneg i8 %i.cx to i64               ; 3 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cy ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !tbaa.struct !186
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !313 ; 2 uses
  store i64 %i.da, ptr %i.cn, align 8, !tbaa !313
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !314 ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc
  %i.de = lshr i64 %i.dd, 1
  %i.df = add i64 %i.de, %i.dc                    ; 2 uses
  store i64 %i.df, ptr %i.cz, align 8, !tbaa !313
  store i64 %i.df, ptr %i.cr, align 8, !tbaa !314
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !312
  store i64 %i.dh, ptr %i.co, align 8, !tbaa !312
  %i.di = load i8, ptr %i.cv, align 1, !tbaa !42
  %i.dj = add i8 %i.di, 1                         ; 3 uses
  store i8 %i.dj, ptr %i.cv, align 1, !tbaa !42
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cy
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !42
  %i.dl = add nuw nsw i8 %i.cg, 2                 ; 3 uses
  %exitcond.not.i.i.i.1 = icmp eq i8 %i.dl, 8
  br i1 %exitcond.not.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.t, !llvm.loop !308

bb.t:                                             ; preds = %bb.s
  %i.dm = icmp ult i8 %i.dj, %i.ci
  br i1 %i.dm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2: ; preds = %bb.t
  %i.dn = zext nneg i8 %i.cx to i64               ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dn ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !312
  %i.dr = load i64, ptr %i.do, align 8, !tbaa !313
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !314
  %i.du = sub i64 %i.dr, %i.dt
  %i.dv = icmp ult i64 %i.dq, %i.du
  br i1 %i.dv, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dn ; 2 uses
  %i.dx = add i8 %i.ch, 3
  %i.dy = and i8 %i.dx, 7                         ; 5 uses
  %i.dz = zext nneg i8 %i.dy to i64               ; 3 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dz ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !tbaa.struct !186
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !313 ; 2 uses
  store i64 %i.eb, ptr %i.do, align 8, !tbaa !313
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !314 ; 2 uses
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = add i64 %i.ef, %i.ed                    ; 2 uses
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !313
  store i64 %i.eg, ptr %i.ds, align 8, !tbaa !314
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !312
  store i64 %i.ei, ptr %i.dp, align 8, !tbaa !312
  %i.ej = load i8, ptr %i.dw, align 1, !tbaa !42
  %i.ek = add i8 %i.ej, 1                         ; 3 uses
  store i8 %i.ek, ptr %i.dw, align 1, !tbaa !42
  %i.el = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dz
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !42
  %i.em = add nuw nsw i8 %i.cg, 3                 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i8 %i.em, 8
  br i1 %exitcond.not.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.v, !llvm.loop !308

bb.v:                                             ; preds = %bb.u
  %i.en = icmp ult i8 %i.ek, %i.ci
  br i1 %i.en, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3: ; preds = %bb.v
  %i.eo = zext nneg i8 %i.dy to i64               ; 2 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.eo ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !312
  %i.es = load i64, ptr %i.ep, align 8, !tbaa !313
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !314
  %i.ev = sub i64 %i.es, %i.eu
  %i.ew = icmp ult i64 %i.er, %i.ev
  br i1 %i.ew, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.eo ; 2 uses
  %i.ey = and i8 %i.ch, 7                         ; 4 uses
  %i.ez = xor i8 %i.ey, 4                         ; 8 uses
  %i.fa = zext nneg i8 %i.ez to i64               ; 3 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.fa ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false), !tbaa.struct !186
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !313 ; 2 uses
  store i64 %i.fc, ptr %i.ep, align 8, !tbaa !313
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !314 ; 2 uses
  %i.ff = sub i64 %i.fc, %i.fe
  %i.fg = lshr i64 %i.ff, 1
  %i.fh = add i64 %i.fg, %i.fe                    ; 2 uses
  store i64 %i.fh, ptr %i.fb, align 8, !tbaa !313
  store i64 %i.fh, ptr %i.et, align 8, !tbaa !314
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !312
  store i64 %i.fj, ptr %i.eq, align 8, !tbaa !312
  %i.fk = load i8, ptr %i.ex, align 1, !tbaa !42
  %i.fl = add i8 %i.fk, 1                         ; 3 uses
  store i8 %i.fl, ptr %i.ex, align 1, !tbaa !42
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fa
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !42
  %i.fn = add nuw nsw i8 %i.cg, 4                 ; 3 uses
  %exitcond.not.i.i.i.3 = icmp eq i8 %i.fn, 8
  br i1 %exitcond.not.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.x, !llvm.loop !308

bb.x:                                             ; preds = %bb.w
  %i.fo = icmp ult i8 %i.fl, %i.ci
  br i1 %i.fo, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4: ; preds = %bb.x
  %i.fp = zext nneg i8 %i.ez to i64               ; 2 uses
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.fp ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !312
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !313
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !314
  %i.fw = sub i64 %i.ft, %i.fv
  %i.fx = icmp ult i64 %i.fs, %i.fw
  br i1 %i.fx, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fp ; 2 uses
  %i.fz = add nuw nsw i8 %i.ez, 1
  %i.ga = and i8 %i.fz, 7                         ; 5 uses
  %i.gb = zext nneg i8 %i.ga to i64               ; 3 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.gb ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !tbaa.struct !186
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !313 ; 2 uses
  store i64 %i.gd, ptr %i.fq, align 8, !tbaa !313
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !314 ; 2 uses
  %i.gg = sub i64 %i.gd, %i.gf
  %i.gh = lshr i64 %i.gg, 1
  %i.gi = add i64 %i.gh, %i.gf                    ; 2 uses
  store i64 %i.gi, ptr %i.gc, align 8, !tbaa !313
  store i64 %i.gi, ptr %i.fu, align 8, !tbaa !314
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !312
  store i64 %i.gk, ptr %i.fr, align 8, !tbaa !312
  %i.gl = load i8, ptr %i.fy, align 1, !tbaa !42
  %i.gm = add i8 %i.gl, 1                         ; 3 uses
  store i8 %i.gm, ptr %i.fy, align 1, !tbaa !42
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.gb
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !42
  %i.go = add nuw nsw i8 %i.cg, 5                 ; 3 uses
  %exitcond.not.i.i.i.4 = icmp eq i8 %i.go, 8
  br i1 %exitcond.not.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.z, !llvm.loop !308

bb.z:                                             ; preds = %bb.y
  %i.gp = icmp ult i8 %i.gm, %i.ci
  br i1 %i.gp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5: ; preds = %bb.z
  %i.gq = zext nneg i8 %i.ga to i64               ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.gq ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !312
  %i.gu = load i64, ptr %i.gr, align 8, !tbaa !313
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !314
  %i.gx = sub i64 %i.gu, %i.gw
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.is ; 2 uses
  %i.jc = zext nneg i8 %i.ey to i64               ; 3 uses
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.jc ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %i.it, i64 24, i1 false), !tbaa.struct !186
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !313 ; 2 uses
  store i64 %i.je, ptr %i.it, align 8, !tbaa !313
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !314 ; 2 uses
  %i.jh = sub i64 %i.je, %i.jg
  %i.ji = lshr i64 %i.jh, 1
  %i.jj = add i64 %i.ji, %i.jg                    ; 2 uses
  store i64 %i.jj, ptr %i.jd, align 8, !tbaa !313
  store i64 %i.jj, ptr %i.ix, align 8, !tbaa !314
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !312
  store i64 %i.jl, ptr %i.iu, align 8, !tbaa !312
  %i.jm = load i8, ptr %i.jb, align 1, !tbaa !42
  %i.jn = add i8 %i.jm, 1                         ; 2 uses
  store i8 %i.jn, ptr %i.jb, align 1, !tbaa !42
  %i.jo = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.jc
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !42
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.cg, 0
  br i1 %exitcond.not.i.i.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.af, !llvm.loop !308

bb.af:                                            ; preds = %bb.ae
  %i.jp = or disjoint i8 %i.cg, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jq = zext i8 %i.ch to i64                    ; 2 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.jq ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !312
  %i.ju = load i64, ptr %i.jr, align 8, !tbaa !313
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !314
  %i.jx = sub i64 %i.ju, %i.jw
  %i.jy = icmp ult i64 %i.jt, %i.jx
  br i1 %i.jy, label %bb.ag, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.ag:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.jq ; 2 uses
  %i.ka = add nuw i8 %i.ch, 1
  %i.kb = and i8 %i.ka, 7                         ; 5 uses
  %i.kc = zext nneg i8 %i.kb to i64               ; 3 uses
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.kc ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i64 24, i1 false), !tbaa.struct !186
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !313 ; 2 uses
  store i64 %i.ke, ptr %i.jr, align 8, !tbaa !313
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !314 ; 2 uses
  %i.kh = sub i64 %i.ke, %i.kg
  %i.ki = lshr i64 %i.kh, 1
  %i.kj = add i64 %i.ki, %i.kg                    ; 2 uses
  store i64 %i.kj, ptr %i.kd, align 8, !tbaa !313
  store i64 %i.kj, ptr %i.jv, align 8, !tbaa !314
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !312
  store i64 %i.kl, ptr %i.js, align 8, !tbaa !312
  %i.km = load i8, ptr %i.jz, align 1, !tbaa !42
  %i.kn = add i8 %i.km, 1                         ; 3 uses
  store i8 %i.kn, ptr %i.jz, align 1, !tbaa !42
  %i.ko = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.kc
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !42
  %i.kp = add nuw nsw i8 %i.cg, 1                 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.kp, 8
  br i1 %exitcond.not.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.r, !llvm.loop !308

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, %bb.r, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, %bb.t, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, %bb.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, %bb.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5, %bb.ab, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6, %bb.ad, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7, %bb.af, %.lr.ph.i.i.i, %bb.q
  %i.kq = phi i8 [ %i.cg, %bb.q ], [ %i.cg, %.lr.ph.i.i.i ], [ %i.kp, %bb.r ], [ %i.cg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.kp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.dl, %bb.t ], [ %i.dl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.em, %bb.v ], [ %i.em, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.fn, %bb.x ], [ %i.fn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.go, %bb.z ], [ %i.go, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.hp, %bb.ab ], [ %i.hp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.iq, %bb.ad ], [ %i.iq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.jp, %bb.af ] ; 6 uses
  %i.kr = phi i8 [ %i.ch, %bb.q ], [ %i.ch, %.lr.ph.i.i.i ], [ %i.kb, %bb.r ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.cx, %bb.t ], [ %i.cx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.dy, %bb.v ], [ %i.dy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.ez, %bb.x ], [ %i.ez, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.ga, %bb.z ], [ %i.ga, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.hb, %bb.ab ], [ %i.hb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.ic, %bb.ad ], [ %i.ic, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.ey, %bb.af ] ; 7 uses
  %i.ks = load ptr, ptr %i.cd, align 16, !tbaa !177
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load atomic i8, ptr %i.kt monotonic, align 1, !range !158, !noundef !159
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.ah, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit_crit_edge.i_crit_edge.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit_crit_edge.i_crit_edge.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %.pre.i = zext i8 %i.kr to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i: ; preds = %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.ag
  %.lcssa52 = phi i8 [ %i.kb, %bb.ag ], [ %i.cx, %bb.s ], [ %i.dy, %bb.u ], [ %i.ez, %bb.w ], [ %i.ga, %bb.y ], [ %i.hb, %bb.aa ], [ %i.ic, %bb.ac ], [ %i.ey, %bb.ae ] ; 2 uses
  %.lcssa = phi i64 [ %i.kc, %bb.ag ], [ %i.cy, %bb.s ], [ %i.dz, %bb.u ], [ %i.fa, %bb.w ], [ %i.gb, %bb.y ], [ %i.hc, %bb.aa ], [ %i.id, %bb.ac ], [ %i.jc, %bb.ae ]
  %i.kw = load ptr, ptr %i.cd, align 16, !tbaa !177
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load atomic i8, ptr %i.kx monotonic, align 1, !range !158, !noundef !159
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %.thread48.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i

.thread48.i.i:                                    ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i
  %i.la = add i8 %i.ci, 1
  store i8 %i.la, ptr %i.bz, align 4, !tbaa !115
  br label %.thread.i.i

bb.ah:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %i.lb = add i8 %i.ci, 1                         ; 2 uses
  store i8 %i.lb, ptr %i.bz, align 4, !tbaa !115
  %i.lc = icmp ugt i8 %i.kq, 1
  br i1 %i.lc, label %.thread.i.i, label %bb.ai

.thread.i.i:                                      ; preds = %bb.ah, %.thread48.i.i
  %i.ld = phi i8 [ 8, %.thread48.i.i ], [ %i.kq, %bb.ah ]
  %i.le = phi i8 [ %.lcssa52, %.thread48.i.i ], [ %i.kr, %bb.ah ]
  %i.lf = zext nneg i8 %i.cf to i64               ; 2 uses
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.lf
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr null, ptr %2, align 8, !tbaa !99
  %i.lj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !309 ; 10 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lk, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.lj, align 64, !tbaa !45
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ll, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lg, i64 24, i1 false), !tbaa.struct !186
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !tbaa.struct !316
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 112 ; 2 uses
  store ptr null, ptr %i.ln, align 16, !tbaa !177
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 120
  %i.lp = load i64, ptr %i.g, align 8, !tbaa !116
  %i.lq = lshr i64 %i.lp, 1                       ; 2 uses
  store i64 %i.lq, ptr %i.g, align 8, !tbaa !116
  store i64 %i.lq, ptr %i.lo, align 8, !tbaa !116
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  store i32 2, ptr %i.lr, align 64, !tbaa !114
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 132
  %i.lt = load i8, ptr %i.bz, align 4, !tbaa !115
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 136
  %i.lv = load i64, ptr %2, align 8, !tbaa !117
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !117
  %i.lw = sub i8 %i.lt, %i.li
  store i8 %i.lw, ptr %i.ls, align 4, !tbaa !115
  %i.lx = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !310 ; 6 uses
  %i.ly = load ptr, ptr %i.cd, align 16, !tbaa !183
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !121
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 2, ptr %i.lz, align 8, !tbaa !122
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mb = load i64, ptr %2, align 8, !tbaa !117
  store i64 %i.mb, ptr %i.ma, align 8, !tbaa !117
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store i8 0, ptr %i.mc, align 8, !tbaa !184
  store ptr %i.lx, ptr %i.cd, align 16, !tbaa !177
  store ptr %i.lx, ptr %i.ln, align 16, !tbaa !177
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !185
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.lj, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #11, !inline_history !310
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.md = add i8 %i.ld, -1
  %i.me = add nuw nsw i8 %i.cf, 1
  %i.mf = and i8 %i.me, 7
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mg = zext i8 %i.kr to i64                    ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !42
  %i.mj = icmp ult i8 %i.mi, %i.lb
  br i1 %i.mj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.ai
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.mg ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !312
  %i.mn = load i64, ptr %i.mk, align 8, !tbaa !313
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !314
  %i.mq = sub i64 %i.mn, %i.mp
  %i.mr = icmp ult i64 %i.mm, %i.mq
  br i1 %i.mr, label %thread-pre-split15.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, %bb.ai, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit_crit_edge.i_crit_edge.i
  %i.ms = phi i8 [ %i.kr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.kr, %bb.ai ], [ %i.kr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit_crit_edge.i_crit_edge.i ], [ %.lcssa52, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.mt = phi i8 [ %i.kq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.kq, %bb.ai ], [ %i.kq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit_crit_edge.i_crit_edge.i ], [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.mg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.mg, %bb.ai ], [ %.pre.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit_crit_edge.i_crit_edge.i ], [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.pre-phi.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.mu, align 8, !tbaa !130
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %.val10.i.i = load i64, ptr %i.mv, align 8, !tbaa !130
  call fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %.val.i.i, i64 %.val10.i.i), !inline_history !307
  %i.mw = add i8 %i.mt, -1
  %i.mx = add nuw i8 %i.ms, 7
  %i.my = and i8 %i.mx, 7
  br label %thread-pre-split15.i.i

thread-pre-split15.i.i:                           ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i
  %i.mz = phi i8 [ %i.mw, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i ], [ %i.kq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ] ; 2 uses
  %i.na = phi i8 [ %i.my, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L7get_mapISD_EENS7_19concurrent_hash_mapIPNSB_12InputSectionIT_EESH_IPNSB_6SymbolISO_EESaIST_EENS1_16tbb_hash_compareISQ_EENS1_13tbb_allocatorISt4pairIKSQ_SV_EEEEERNSB_7ContextISO_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSO_.exit.i.i ], [ %i.kr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ]
  %i.nb = icmp eq i8 %i.mz, 0
  br i1 %i.nb, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split15.i.i, %.thread.i.i
  %i.nc = phi i8 [ %i.mf, %.thread.i.i ], [ %i.cf, %thread-pre-split15.i.i ]
  %i.nd = phi i8 [ %i.md, %.thread.i.i ], [ %i.mz, %thread-pre-split15.i.i ]
  %i.ne = phi i8 [ %i.le, %.thread.i.i ], [ %i.na, %thread-pre-split15.i.i ]
  %i.nf = load ptr, ptr %1, align 8, !tbaa !185   ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 15
  %i.nh = load atomic i8, ptr %i.ng monotonic, align 1
  %i.ni = icmp eq i8 %i.nh, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i.i.i = select i1 %i.ni, ptr %6, ptr %i.nf
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #11, !inline_history !307
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.q, !llvm.loop !311

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i: ; preds = %bb.aj, %thread-pre-split15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L7get_mapISF_EENS9_19concurrent_hash_mapIPNSD_12InputSectionIT_EESJ_IPNSD_6SymbolISQ_EESaISV_EENS1_16tbb_hash_compareISS_EENS1_13tbb_allocatorISt4pairIKSS_SX_EEEEERNSD_7ContextISQ_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit

_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L7get_mapISF_EENS9_19concurrent_hash_mapIPNSD_12InputSectionIT_EESJ_IPNSD_6SymbolISQ_EESaISV_EENS1_16tbb_hash_compareISS_EENS1_13tbb_allocatorISt4pairIKSS_SX_EEEEERNSD_7ContextISQ_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit: ; preds = %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.nk = load ptr, ptr %i.nj, align 16, !tbaa !177 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !117
  %i.nn = load ptr, ptr %0, align 64, !tbaa !45
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #11, !inline_history !2
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nq = atomicrmw sub ptr %i.np, i32 1 seq_cst, align 4
  %i.nr = add i32 %i.nq, -1
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L7get_mapISF_EENS9_19concurrent_hash_mapIPNSD_12InputSectionIT_EESJ_IPNSD_6SymbolISQ_EESaISV_EENS1_16tbb_hash_compareISS_EENS1_13tbb_allocatorISt4pairIKSS_SX_EEEEERNSD_7ContextISQ_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit, %bb.ak
  %.019.i.i = phi ptr [ %i.nt, %bb.ak ], [ %i.nk, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L7get_mapISF_EENS9_19concurrent_hash_mapIPNSD_12InputSectionIT_EESJ_IPNSD_6SymbolISQ_EESaISV_EENS1_16tbb_hash_compareISS_EENS1_13tbb_allocatorISt4pairIKSS_SX_EEEEERNSD_7ContextISQ_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit ] ; 5 uses
  %i.nt = load ptr, ptr %.019.i.i, align 8, !tbaa !121 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i6, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !117
  %i.nw = inttoptr i64 %i.nv to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.nw, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.ny = atomicrmw sub ptr %i.nx, i32 1 seq_cst, align 4
  %i.nz = add i32 %i.ny, -1
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.oc = atomicrmw sub ptr %i.ob, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.oc, 1
  br i1 %.not.i.i.i.i, label %bb.am, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.am:                                            ; preds = %bb.al
  %i.od = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.oe = ptrtoint ptr %i.od to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.oe) #11
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.ak, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L7get_mapISF_EENS9_19concurrent_hash_mapIPNSD_12InputSectionIT_EESJ_IPNSD_6SymbolISQ_EESaISV_EENS1_16tbb_hash_compareISS_EENS1_13tbb_allocatorISt4pairIKSS_SX_EEEEERNSD_7ContextISQ_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSQ_RT0_RNS1_14execution_dataE.exit, %bb.al, %bb.am
  %i.of = inttoptr i64 %i.nm to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.of, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !177 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !117
  %i.e = load ptr, ptr %0, align 64, !tbaa !45
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #11, !inline_history !2
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !121 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #11
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L7get_mapISB_EENS5_19concurrent_hash_mapIPNS9_12InputSectionIT_EESF_IPNS9_6SymbolISM_EESaISR_EENS1_16tbb_hash_compareISO_EENS1_13tbb_allocatorISt4pairIKSO_ST_EEEEERNS9_7ContextISM_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.tbb::detail::d2::concurrent_hash_map<mold::InputSection<mold::X86_64> *, std::vector<mold::Symbol<mold::X86_64> *>>::accessor", align 8 ; 8 uses
  %2 = alloca %"struct.std::pair", align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not1.i.i.i.i.i = icmp eq i64 %.8.val, %.0.val
  br i1 %.not1.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L7get_mapIS9_EENS3_19concurrent_hash_mapIPNS7_12InputSectionIT_EESD_IPNS7_6SymbolISK_EESaISP_EENS0_2d116tbb_hash_compareISM_EENSS_13tbb_allocatorISt4pairIKSM_SR_EEEEERNS7_7ContextISK_EEEUlSB_E_SB_EEJRNSS_13blocked_rangeImEEEEENSt13invoke_resultISK_JDpT0_EE4typeEOSK_DpOS1C_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL7get_mapINS3_6X86_64EEENS1_19concurrent_hash_mapIPNS3_12InputSectionIT_EESt6vectorIPNS3_6SymbolIS8_EESaISE_EENS0_2d116tbb_hash_compareISA_EENSH_13tbb_allocatorISt4pairIKSA_SG_EEEEERNS3_7ContextIS8_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSV_NS1_11feeder_implISW_SV_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSW_OS8_PT0_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.02.i.i.i.i.i = phi i64 [ %.8.val, %.lr.ph.i.i.i.i.i ], [ %i.ct, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL7get_mapINS3_6X86_64EEENS1_19concurrent_hash_mapIPNS3_12InputSectionIT_EESt6vectorIPNS3_6SymbolIS8_EESaISE_EENS0_2d116tbb_hash_compareISA_EENSH_13tbb_allocatorISt4pairIKSA_SG_EEEEERNS3_7ContextIS8_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSV_NS1_11feeder_implISW_SV_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSW_OS8_PT0_.exit.i.i.i.i.i ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 32, !tbaa !318, !nonnull !159, !align !169
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !319
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %.02.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !320 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !322  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !322  ; 2 uses
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL7get_mapINS3_6X86_64EEENS1_19concurrent_hash_mapIPNS3_12InputSectionIT_EESt6vectorIPNS3_6SymbolIS8_EESaISE_EENS0_2d116tbb_hash_compareISA_EENSH_13tbb_allocatorISt4pairIKSA_SG_EEEEERNS3_7ContextIS8_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSV_NS1_11feeder_implISW_SV_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS8_Efp0_EEcvv_EERKSW_OS8_PT0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.b, %bb.q
  %.sroa.019.025.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %bb.q ], [ %i.k, %bb.b ] ; 3 uses
  %i.o = load i32, ptr %.sroa.019.025.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !324 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.o, 0
  %i.p = ptrtoint ptr %.sroa.019.025.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.q = sext i32 %i.o to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = add nsw i64 %i.r, %i.p
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  %i.u = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.t ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !189  ; 2 uses
  %.not.i6.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.w, 0
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sext i32 %i.w to i64
  %i.z = shl nsw i64 %i.y, 2
  %i.aa = add nsw i64 %i.z, %i.x
  %i.ab = inttoptr i64 %i.aa to ptr               ; 4 uses
  %i.ac = select i1 %.not.i6.i.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.ab
  %i.ad = icmp eq ptr %i.ac, %.val.i.i.i.i.i
  br i1 %i.ad, label %bb.c, label %bb.q

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !191
  %i.af = icmp eq ptr %i.u, %i.ae                 ; 2 uses
  br i1 %i.af, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !201
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.aj
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.d ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 15
  %i.ap = icmp eq i8 %i.ao, 10
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !344, !range !158, !noundef !159
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.af, label %_ZNK4mold6SymbolINS_6X86_64EE8get_typeEv.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198
  %i.aw = sext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !201
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !113
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !113
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !115
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !115
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !96   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 4 uses
  %.not.i.i.i = icmp ne ptr %i.z, %i.ab
  %i.ac = load ptr, ptr %i.w, align 64            ; 4 uses
  %i.ad = load ptr, ptr %i.x, align 32            ; 4 uses
  %i.ae = icmp ne ptr %i.ac, %i.ad
  %i.af = select i1 %.not.i.i.i, i1 true, i1 %i.ae
  br i1 %i.af, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !116 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, 1
  br i1 %i.ah, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !115 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add i8 %i.aj, -1
  store i8 %i.ak, ptr %i.ai, align 4, !tbaa !115
  store i64 0, ptr %i.g, align 8, !tbaa !116
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !99
  %i.an = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !362 ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEEE, i64 16), ptr %i.an, align 64, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  call void @_ZN3tbb6detail2d214hash_map_rangeINS1_17hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold12InputSectionINS5_6X86_64EEESt6vectorIPNS5_6SymbolIS7_EESaISD_EENS0_2d116tbb_hash_compareIS9_EENSG_13tbb_allocatorISt4pairIKS9_SF_EEEEESM_EEEC2ERSQ_NS0_2d05splitE(ptr noundef nonnull align 8 dereferenceable(104) %i.ap, ptr noundef nonnull align 8 dereferenceable(104) %i.v), !inline_history !363
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 176 ; 2 uses
  store ptr null, ptr %i.aq, align 16, !tbaa !113
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  %i.as = load i64, ptr %i.g, align 8, !tbaa !116
  %i.at = lshr i64 %i.as, 1                       ; 2 uses
  store i64 %i.at, ptr %i.g, align 8, !tbaa !116
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !116
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  store i32 2, ptr %i.au, align 64, !tbaa !114
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 196
  %i.aw = load i8, ptr %i.al, align 4, !tbaa !115
  store i8 %i.aw, ptr %i.av, align 4, !tbaa !115
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ay = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !117
  %i.az = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !364 ; 6 uses
  %i.ba = load ptr, ptr %i.am, align 16, !tbaa !183
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !121
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 2, ptr %i.bb, align 8, !tbaa !122
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !117
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i8 0, ptr %i.be, align 8, !tbaa !184
  store ptr %i.az, ptr %i.am, align 16, !tbaa !113
  store ptr %i.az, ptr %i.aq, align 16, !tbaa !113
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !185
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(208) %i.an, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #11, !inline_history !364
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !96  ; 4 uses
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 4 uses
  %.not.i.i8.i = icmp ne ptr %i.bf, %i.bg
  %i.bh = load ptr, ptr %i.w, align 64            ; 4 uses
  %i.bi = load ptr, ptr %i.x, align 32            ; 4 uses
  %i.bj = icmp ne ptr %i.bh, %i.bi
  %i.bk = select i1 %.not.i.i8.i, i1 true, i1 %i.bj
  br i1 %i.bk, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i
  %i.bl = load i64, ptr %i.g, align 8, !tbaa !116 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, 1
  br i1 %i.bm, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i9.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i9.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = load i8, ptr %i.al, align 4, !tbaa !115 ; 2 uses
  %.not4.i10.i = icmp eq i8 %i.bn, 0
  br i1 %.not4.i10.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = add i8 %i.bn, -1
  store i8 %i.bo, ptr %i.al, align 4, !tbaa !115
  store i64 0, ptr %i.g, align 8, !tbaa !116
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i, !llvm.loop !365

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit
  %i.bp = phi ptr [ %i.ad, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit ], [ %i.ad, %bb.g ], [ %i.ad, %bb.h ], [ %i.bi, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i ], [ %i.bi, %bb.k ], [ %i.bi, %bb.l ] ; 2 uses
  %i.bq = phi ptr [ %i.ac, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit ], [ %i.ac, %bb.g ], [ %i.ac, %bb.h ], [ %i.bh, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i ], [ %i.bh, %bb.k ], [ %i.bh, %bb.l ] ; 2 uses
  %i.br = phi ptr [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bg, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i ], [ %i.bg, %bb.k ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bs = phi ptr [ %i.z, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS0_2d214hash_map_rangeINS9_17hash_map_iteratorINS9_19concurrent_hash_mapIPN4mold12InputSectionINSD_6X86_64EEESt6vectorIPNSD_6SymbolISF_EESaISL_EENS1_16tbb_hash_compareISH_EENS1_13tbb_allocatorISt4pairIKSH_SN_EEEEEST_EEEEZNSD_L7get_mapISF_EENSC_IPNSE_IT_EESI_IPNSJ_ISZ_EESaIS13_EENSO_IS11_EENSQ_ISR_IKS11_S15_EEEEERNSD_7ContextISZ_EEEUlRKSX_E_KNS1_16auto_partitionerEEEEEbRSZ_RKNS1_14execution_dataE.exit ], [ %i.z, %bb.g ], [ %i.z, %bb.h ], [ %i.bf, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit12.i ], [ %i.bf, %bb.k ], [ %i.bf, %bb.l ] ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.bs, %i.br
  %i.bt = icmp ne ptr %i.bq, %i.bp
  %i.bu = select i1 %.not.i.i.i.i, i1 true, i1 %i.bt
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 5 uses
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !115
  %.not.i13.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i13.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.critedge.i
  call fastcc void @_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8run_bodyERSR_(ptr noundef nonnull readonly align 8 dereferenceable(104) %i.v), !inline_history !366
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS0_2d214hash_map_rangeINS7_17hash_map_iteratorINS7_19concurrent_hash_mapIPN4mold12InputSectionINSB_6X86_64EEESt6vectorIPNSB_6SymbolISD_EESaISJ_EENS1_16tbb_hash_compareISF_EENS1_13tbb_allocatorISt4pairIKSF_SL_EEEEESR_EEEEZNSB_L7get_mapISD_EENSA_IPNSC_IT_EESG_IPNSH_ISX_EESaIS11_EENSM_ISZ_EENSO_ISP_IKSZ_S13_EEEEERNSB_7ContextISX_EEEUlRKSV_E_KNS1_16auto_partitionerEEESV_EEvRSX_RT0_RNS1_14execution_dataE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %3, align 8, !tbaa !42
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cb = load ptr, ptr %i.v, align 64, !tbaa !100
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !100
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !101
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !101
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ch = load <2 x ptr>, ptr %i.cg, align 16, !tbaa !92
  store <2 x ptr> %i.ch, ptr %i.cf, align 8, !tbaa !92
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.bp, ptr %i.ci, align 8, !tbaa !100
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !101
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !101
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.co = load ptr, ptr %i.cn, align 16, !tbaa !231
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !231
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %i.br, ptr %i.cp, align 8, !tbaa !96
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bq, ptr %i.cq, align 8, !tbaa !100
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !101
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !101
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cw = load ptr, ptr %i.cv, align 16, !tbaa !231
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !231
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %i.bs, ptr %i.cx, align 8, !tbaa !96
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.da = load i64, ptr %i.cz, align 32, !tbaa !103
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !103
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %bb.p
  %i.dc = load i8, ptr %i.bv, align 4, !tbaa !115
  call void @_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(848) %3, i8 noundef zeroext %i.dc), !inline_history !366
  %i.dd = load ptr, ptr %i.db, align 16, !tbaa !113
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load atomic i8, ptr %i.de monotonic, align 1, !range !158, !noundef !159
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.r, label %._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit_crit_edge.i.i

._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit_crit_edge.i.i: ; preds = %bb.q
  %.pre.i.i = load i8, ptr %3, align 8, !tbaa !234
  %.pre11.i.i = zext i8 %.pre.i.i to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dh = load i8, ptr %i.bv, align 4, !tbaa !115
  %i.di = add i8 %i.dh, 1                         ; 2 uses
  store i8 %i.di, ptr %i.bv, align 4, !tbaa !115
  %i.dj = load i8, ptr %i.by, align 2, !tbaa !235 ; 2 uses
  %i.dk = icmp ugt i8 %i.dj, 1
  br i1 %i.dk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dl = load i8, ptr %i.bx, align 1, !tbaa !370
  %i.dm = zext i8 %i.dl to i64                    ; 2 uses
  %i.dn = getelementptr inbounds nuw [104 x i8], ptr %i.ca, i64 %i.dm ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.dm
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr null, ptr %2, align 8, !tbaa !99
  %i.dq = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !367 ; 18 uses
  %.val.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !117
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dr, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEEE, i64 16), ptr %i.dq, align 64, !tbaa !45
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !100
  store ptr %i.dt, ptr %i.ds, align 64, !tbaa !100
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 72
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !101
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !101
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dz = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !92
  store <2 x ptr> %i.dz, ptr %i.dx, align 16, !tbaa !92
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !100
  store ptr %i.ec, ptr %i.ea, align 32, !tbaa !100
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 104
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !101
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !101
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 112
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.ei = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !92
  store <2 x ptr> %i.ei, ptr %i.eg, align 16, !tbaa !92
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dq, i64 128
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !100
  store ptr %i.el, ptr %i.ej, align 64, !tbaa !100
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 136
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !101
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !101
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 144
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  %i.er = load <2 x ptr>, ptr %i.eq, align 8, !tbaa !92
  store <2 x ptr> %i.er, ptr %i.ep, align 16, !tbaa !92
  %i.es = getelementptr inbounds nuw i8, ptr %i.dq, i64 160
  %i.et = getelementptr inbounds nuw i8, ptr %i.dn, i64 96
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !103
  store i64 %i.eu, ptr %i.es, align 32, !tbaa !103
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dq, i64 176 ; 2 uses
  store ptr null, ptr %i.ev, align 16, !tbaa !113
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dq, i64 184
  %i.ex = load i64, ptr %i.g, align 8, !tbaa !116
  %i.ey = lshr i64 %i.ex, 1                       ; 2 uses
  store i64 %i.ey, ptr %i.g, align 8, !tbaa !116
  store i64 %i.ey, ptr %i.ew, align 8, !tbaa !116
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dq, i64 192
  store i32 2, ptr %i.ez, align 64, !tbaa !114
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dq, i64 196
  %i.fb = load i8, ptr %i.bv, align 4, !tbaa !115
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dq, i64 200
  store i64 %.val.i.i.i.i.i, ptr %i.fc, align 8, !tbaa !117
  %i.fd = sub i8 %i.fb, %i.dp
  store i8 %i.fd, ptr %i.fa, align 4, !tbaa !115
  %i.fe = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11, !inline_history !368 ; 6 uses
  %i.ff = load ptr, ptr %i.db, align 16, !tbaa !183
  store ptr %i.ff, ptr %i.fe, align 8, !tbaa !121
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 2, ptr %i.fg, align 8, !tbaa !122
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fi = load i64, ptr %2, align 8, !tbaa !117
  store i64 %i.fi, ptr %i.fh, align 8, !tbaa !117
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i8 0, ptr %i.fj, align 8, !tbaa !184
  store ptr %i.fe, ptr %i.db, align 16, !tbaa !113
  store ptr %i.fe, ptr %i.ev, align 16, !tbaa !113
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !185
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(208) %i.dq, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #11, !inline_history !368
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.fk = load i8, ptr %i.by, align 2, !tbaa !235
  %i.fl = add i8 %i.fk, -1                        ; 2 uses
  store i8 %i.fl, ptr %i.by, align 2, !tbaa !235
  %i.fm = load i8, ptr %i.bx, align 1, !tbaa !370
  %i.fn = add i8 %i.fm, 1
  %i.fo = and i8 %i.fn, 7
  store i8 %i.fo, ptr %i.bx, align 1, !tbaa !370
  br label %thread-pre-split.i.i

bb.t:                                             ; preds = %bb.r
  %i.fp = load i8, ptr %3, align 8, !tbaa !234
  %i.fq = zext i8 %i.fp to i64                    ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !42
  %i.ft = icmp ult i8 %i.fs, %i.di
  br i1 %i.ft, label %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EE12is_divisibleEh.exit.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.t
  %i.fu = getelementptr inbounds nuw [104 x i8], ptr %i.ca, i64 %i.fq ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 88
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !96
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !96
  %.not.i.i.i.i.i = icmp ne ptr %i.fy, %i.ga
  %i.gb = load ptr, ptr %i.fv, align 8
  %i.gc = load ptr, ptr %i.fw, align 8
  %i.gd = icmp ne ptr %i.gb, %i.gc
  %i.ge = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.gd
  br i1 %i.ge, label %thread-pre-split.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit.i.i

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EE12is_divisibleEh.exit.i.i, %bb.t, %._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre11.i.i, %._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit_crit_edge.i.i ], [ %i.fq, %bb.t ], [ %i.fq, %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EE12is_divisibleEh.exit.i.i ]
  %i.gf = getelementptr inbounds nuw [104 x i8], ptr %i.ca, i64 %.pre-phi.i.i
  call fastcc void @_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8run_bodyERSR_(ptr noundef nonnull align 8 dereferenceable(104) %i.gf), !inline_history !366
  %i.gg = load i8, ptr %i.by, align 2, !tbaa !235
  %i.gh = add i8 %i.gg, -1                        ; 2 uses
  store i8 %i.gh, ptr %i.by, align 2, !tbaa !235
  %i.gi = load i8, ptr %3, align 8, !tbaa !234
  %i.gj = add i8 %i.gi, 7
  %i.gk = and i8 %i.gj, 7
  store i8 %i.gk, ptr %3, align 8, !tbaa !234
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit.i.i, %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EE12is_divisibleEh.exit.i.i, %bb.s
  %i.gl = phi i8 [ %i.fl, %bb.s ], [ %i.gh, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS0_2d214hash_map_rangeINS5_17hash_map_iteratorINS5_19concurrent_hash_mapIPN4mold12InputSectionINS9_6X86_64EEESt6vectorIPNS9_6SymbolISB_EESaISH_EENS1_16tbb_hash_compareISD_EENS1_13tbb_allocatorISt4pairIKSD_SJ_EEEEESP_EEEEZNS9_L7get_mapISB_EENS8_IPNSA_IT_EESE_IPNSF_ISV_EESaISZ_EENSK_ISX_EENSM_ISN_IKSX_S11_EEEEERNS9_7ContextISV_EEEUlRKST_E_KNS1_16auto_partitionerEEEEEbRSV_.exit.i.i ], [ %i.dj, %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EE12is_divisibleEh.exit.i.i ]
  %i.gm = icmp eq i8 %i.gl, 0
  br i1 %i.gm, label %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EED2Ev.exit.i.i, label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i
  %i.gn = load ptr, ptr %1, align 8, !tbaa !185   ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 15
  %i.gp = load atomic i8, ptr %i.go monotonic, align 1
  %i.gq = icmp eq i8 %i.gp, -1
  %5 = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %6 = load ptr, ptr %5, align 8
  %.0.i.i.i.i = select i1 %i.gq, ptr %6, ptr %i.gn
  %7 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #11, !inline_history !366
  br i1 %7, label %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EED2Ev.exit.i.i, label %bb.q, !llvm.loop !369

_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EED2Ev.exit.i.i: ; preds = %bb.u, %thread-pre-split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS0_2d214hash_map_rangeINS7_17hash_map_iteratorINS7_19concurrent_hash_mapIPN4mold12InputSectionINSB_6X86_64EEESt6vectorIPNSB_6SymbolISD_EESaISJ_EENS1_16tbb_hash_compareISF_EENS1_13tbb_allocatorISt4pairIKSF_SL_EEEEESR_EEEEZNSB_L7get_mapISD_EENSA_IPNSC_IT_EESG_IPNSH_ISX_EESaIS11_EENSM_ISZ_EENSO_ISP_IKSZ_S13_EEEEERNSB_7ContextISX_EEEUlRKSV_E_KNS1_16auto_partitionerEEESV_EEvRSX_RT0_RNS1_14execution_dataE.exit

_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS0_2d214hash_map_rangeINS7_17hash_map_iteratorINS7_19concurrent_hash_mapIPN4mold12InputSectionINSB_6X86_64EEESt6vectorIPNSB_6SymbolISD_EESaISJ_EENS1_16tbb_hash_compareISF_EENS1_13tbb_allocatorISt4pairIKSF_SL_EEEEESR_EEEEZNSB_L7get_mapISD_EENSA_IPNSC_IT_EESG_IPNSH_ISX_EESaIS11_EENSM_ISZ_EENSO_ISP_IKSZ_S13_EEEEERNSB_7ContextISX_EEEUlRKSV_E_KNS1_16auto_partitionerEEESV_EEvRSX_RT0_RNS1_14execution_dataE.exit: ; preds = %bb.o, %_ZN3tbb6detail2d112range_vectorINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEELh8EED2Ev.exit.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gs = load ptr, ptr %i.gr, align 16, !tbaa !113 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !117
  %i.gv = load ptr, ptr %0, align 64, !tbaa !45
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 64 dead_on_return(208) dereferenceable(208) %0) #11, !inline_history !11
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gy = atomicrmw sub ptr %i.gx, i32 1 seq_cst, align 4
  %i.gz = add i32 %i.gy, -1
  %i.ha = icmp sgt i32 %i.gz, 0
  br i1 %i.ha, label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS0_2d214hash_map_rangeINS7_17hash_map_iteratorINS7_19concurrent_hash_mapIPN4mold12InputSectionINSB_6X86_64EEESt6vectorIPNSB_6SymbolISD_EESaISJ_EENS1_16tbb_hash_compareISF_EENS1_13tbb_allocatorISt4pairIKSF_SL_EEEEESR_EEEEZNSB_L7get_mapISD_EENSA_IPNSC_IT_EESG_IPNSH_ISX_EESaIS11_EENSM_ISZ_EENSO_ISP_IKSZ_S13_EEEEERNSB_7ContextISX_EEEUlRKSV_E_KNS1_16auto_partitionerEEESV_EEvRSX_RT0_RNS1_14execution_dataE.exit, %bb.v
  %.019.i.i = phi ptr [ %i.hb, %bb.v ], [ %i.gs, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS0_2d214hash_map_rangeINS7_17hash_map_iteratorINS7_19concurrent_hash_mapIPN4mold12InputSectionINSB_6X86_64EEESt6vectorIPNSB_6SymbolISD_EESaISJ_EENS1_16tbb_hash_compareISF_EENS1_13tbb_allocatorISt4pairIKSF_SL_EEEEESR_EEEEZNSB_L7get_mapISD_EENSA_IPNSC_IT_EESG_IPNSH_ISX_EESaIS11_EENSM_ISZ_EENSO_ISP_IKSZ_S13_EEEEERNSB_7ContextISX_EEEUlRKSV_E_KNS1_16auto_partitionerEEESV_EEvRSX_RT0_RNS1_14execution_dataE.exit ] ; 5 uses
  %i.hb = load ptr, ptr %.019.i.i, align 8, !tbaa !121 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i6, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !117
  %i.he = inttoptr i64 %i.hd to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.he, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hg = atomicrmw sub ptr %i.hf, i32 1 seq_cst, align 4
  %i.hh = add i32 %i.hg, -1
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.hk = atomicrmw sub ptr %i.hj, i64 1 seq_cst, align 8
  %.not.i.i.i.i7 = icmp eq i64 %i.hk, 1
  br i1 %.not.i.i.i.i7, label %bb.x, label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.x:                                             ; preds = %bb.w
  %i.hl = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.hm = ptrtoint ptr %i.hl to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.hm) #11
  br label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.v, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS0_2d214hash_map_rangeINS7_17hash_map_iteratorINS7_19concurrent_hash_mapIPN4mold12InputSectionINSB_6X86_64EEESt6vectorIPNSB_6SymbolISD_EESaISJ_EENS1_16tbb_hash_compareISF_EENS1_13tbb_allocatorISt4pairIKSF_SL_EEEEESR_EEEEZNSB_L7get_mapISD_EENSA_IPNSC_IT_EESG_IPNSH_ISX_EESaIS11_EENSM_ISZ_EENSO_ISP_IKSZ_S13_EEEEERNSB_7ContextISX_EEEUlRKSV_E_KNS1_16auto_partitionerEEESV_EEvRSX_RT0_RNS1_14execution_dataE.exit, %bb.w, %bb.x
  %i.hn = inttoptr i64 %i.gu to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.hn, ptr noundef nonnull align 64 dereferenceable(208) %0, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !113 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load i64, ptr %i.c, align 8, !tbaa !117
  %i.e = load ptr, ptr %0, align 64, !tbaa !45
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(208) dereferenceable(208) %0) #11, !inline_history !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !121 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !117
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #11
  br label %_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS0_2d214hash_map_rangeINS3_17hash_map_iteratorINS3_19concurrent_hash_mapIPN4mold12InputSectionINS7_6X86_64EEESt6vectorIPNS7_6SymbolIS9_EESaISF_EENS1_16tbb_hash_compareISB_EENS1_13tbb_allocatorISt4pairIKSB_SH_EEEEESN_EEEEZNS7_L7get_mapIS9_EENS6_IPNS8_IT_EESC_IPNSD_IST_EESaISX_EENSI_ISV_EENSK_ISL_IKSV_SZ_EEEEERNS7_7ContextIST_EEEUlRKSR_E_KNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(208) %0, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d214hash_map_rangeINS1_17hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold12InputSectionINS5_6X86_64EEESt6vectorIPNS5_6SymbolIS7_EESaISD_EENS0_2d116tbb_hash_compareIS9_EENSG_13tbb_allocatorISt4pairIKS9_SF_EEEEESM_EEEC2ERSQ_NS0_2d05splitE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  store ptr %i.c, ptr %i.a, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !101
  store i64 %i.f, ptr %i.d, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !92
  store <2 x ptr> %i.j, ptr %i.g, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !103  ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !103
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !100  ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !101  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.r, ptr %i.s, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !231  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.u, ptr %i.v, align 8, !tbaa !231
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !96
  store ptr %i.p, ptr %i.b, align 8, !tbaa !100
  store i64 %i.r, ptr %i.e, align 8, !tbaa !101
  store ptr %i.u, ptr %i.h, align 8, !tbaa !231
  store ptr %i.x, ptr %i.i, align 8, !tbaa !96
  %i.z = load i64, ptr %i.d, align 8, !tbaa !371  ; 2 uses
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !372 ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp ugt i64 %i.ab, %i.n
  br i1 %i.ac, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.ad = lshr i64 %i.ab, 1
  %i.ae = add i64 %i.ad, %i.aa                    ; 4 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !236
  %i.ag = or i64 %i.ae, 1
  %i.ah = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true) ; 2 uses
  %i.ai = xor i64 %i.ah, 63
  %i.aj = lshr exact i64 -9223372036854775808, %i.ah
  %i.ak = and i64 %i.aj, -2
  %i.al = sub i64 %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ai
  %i.ao = load atomic ptr, ptr %i.an acquire, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.al ; 3 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !236   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load atomic ptr, ptr %i.ar monotonic, align 8 ; 2 uses
  %i.at = icmp ugt ptr %i.as, inttoptr (i64 63 to ptr)
  br i1 %i.at, label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold12InputSectionINS4_6X86_64EEESt6vectorIPNS4_6SymbolIS6_EESaISC_EENS0_2d116tbb_hash_compareIS8_EENSF_13tbb_allocatorISt4pairIKS8_SE_EEEEESL_EC2ERKSN_mPKNS1_13hash_map_baseISM_NSF_13spin_rw_mutexEE6bucketEPNS1_18hash_map_node_baseISS_EE.exit.i, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f, %.preheader.i.preheader.i
  %i.aw = phi ptr [ %storemerge.i.i.i, %bb.f ], [ %i.ap, %.preheader.i.preheader.i ]
  %.010.in.i.i.i = phi i64 [ %.010.i.i.i, %bb.f ], [ %i.ae, %.preheader.i.preheader.i ] ; 2 uses
  %.010.i.i.i = add i64 %.010.in.i.i.i, 1         ; 7 uses
  %i.ax = load atomic i64, ptr %i.au monotonic, align 8
  %.not.i.i.i = icmp ugt i64 %.010.i.i.i, %i.ax
  br i1 %.not.i.i.i, label %_ZN3tbb6detail2d217hash_map_iteratorINS1_19concurrent_hash_mapIPN4mold12InputSectionINS4_6X86_64EEESt6vectorIPNS4_6SymbolIS6_EESaISC_EENS0_2d116tbb_hash_compareIS8_EENSF_13tbb_allocatorISt4pairIKS8_SE_EEEEESL_EC2ERKSN_mPKNS1_13hash_map_baseISM_NSF_13spin_rw_mutexEE6bucketEPNS1_18hash_map_node_baseISS_EE.exit.i, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.ay = add i64 %.010.in.i.i.i, -1
  %i.az = and i64 %.010.i.i.i, %i.ay
  %.not11.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not11.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bb = or i64 %.010.i.i.i, 1
  %i.bc = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bb, i1 true) ; 2 uses
  %i.bd = xor i64 %i.bc, 63
  %i.be = lshr exact i64 -9223372036854775808, %i.bc
  %i.bf = and i64 %i.be, -2
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #11
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #11
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINSA_6X86_64EEEvRNSA_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSE_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !151
  %i.c = load i64, ptr %2, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150
  %i.f = sub nsw i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !116    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !115   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !115
  store i64 0, ptr %0, align 8, !tbaa !116
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !99
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #11, !inline_history !411 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !149 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !149
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !150  ; 2 uses
  %i.aa = sub nsw i64 %i.x, %i.z
  %i.ab = sdiv i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, %i.z                 ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !149
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !150
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !151
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !242
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !116
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !116
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i32 2, ptr %i.ak, align 64, !tbaa !114
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 132
  %i.am = load i8, ptr %i.s, align 4, !tbaa !115
  store i8 %i.am, ptr %i.al, align 4, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ao = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !117
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #11, !inline_history !412 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !183
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !121
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !122
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.at, ptr %i.as, align 8, !tbaa !117
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !184
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !242
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !242
  %i.av = load ptr, ptr %3, align 8, !tbaa !185
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av) #11, !inline_history !412
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !151
  %i.ax = load i64, ptr %2, align 8, !tbaa !149
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !150
  %i.az = sub nsw i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !116   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !413

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !115  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !115
  store i64 0, ptr %0, align 8, !tbaa !116
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEESA_EEvRSG_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEESA_EEvRSG_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.438", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !151
  %i.c = load i64, ptr %2, align 8, !tbaa !149    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150  ; 4 uses
  %i.f = sub nsw i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !115
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !154  ; 2 uses
  %i.m = icmp slt i64 %i.e, %i.c
  br i1 %i.m, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load i64, ptr %i.n, align 32, !tbaa !153
  %i.p = mul nsw i64 %i.l, %i.e
  %i.q = add nsw i64 %i.o, %i.p
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.011.i.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ]
  %storemerge10.i.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !419, !nonnull !159, !align !169
  tail call void @_ZZN4mold9print_mapINS_6X86_64EEEvRNS_7ContextIT_EEENKUllE_clEl(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 noundef %storemerge10.i.i.i.i.i.i)
  %i.s = add i64 %.011.i.i.i.i.i.i, 1             ; 2 uses
  %i.t = add nsw i64 %storemerge10.i.i.i.i.i.i, %i.l
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.s, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !414

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 6 uses
  store i8 0, ptr %i.u, align 1, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !186
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.ac = phi i8 [ %i.ek, %bb.j ], [ 0, %bb.d ]   ; 3 uses
  %i.ad = phi i8 [ %i.el, %bb.j ], [ 1, %bb.d ]   ; 4 uses
  %i.ae = phi i8 [ %i.em, %bb.j ], [ 0, %bb.d ]   ; 4 uses
  %i.af = load i8, ptr %i.h, align 4, !tbaa !115  ; 4 uses
  %i.ag = icmp ult i8 %i.ad, 8
  br i1 %i.ag, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.e
  %.phi.trans.insert.i = zext i8 %i.ae to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !42
  %i.ah = icmp ult i8 %.pre.i, %i.af
  br i1 %i.ah, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit

bb.f:                                             ; preds = %bb.g
  %i.ai = icmp ult i8 %i.bi, %i.af
  br i1 %i.ai, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit, !llvm.loop !415

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.f
  %i.aj = phi i8 [ %i.aw, %bb.f ], [ %i.ae, %.lr.ph.i ] ; 3 uses
  %i.ak = phi i8 [ %i.bk, %bb.f ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %i.al = zext i8 %i.aj to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.al ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !151
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !149
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !150
  %i.as = sub nsw i64 %i.ap, %i.ar
  %i.at = icmp ult i64 %i.ao, %i.as
  br i1 %i.at, label %bb.g, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit

bb.g:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.al ; 2 uses
  %i.av = add nuw i8 %i.aj, 1
  %i.aw = and i8 %i.av, 7                         ; 5 uses
  %i.ax = zext nneg i8 %i.aw to i64               ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.ax ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false), !tbaa.struct !186
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !149 ; 2 uses
  store i64 %i.az, ptr %i.am, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !150 ; 2 uses
  %i.bc = sub nsw i64 %i.az, %i.bb
  %i.bd = sdiv i64 %i.bc, 2
  %i.be = add nsw i64 %i.bd, %i.bb                ; 2 uses
  store i64 %i.be, ptr %i.ay, align 8, !tbaa !149
  store i64 %i.be, ptr %i.aq, align 8, !tbaa !150
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !151
  store i64 %i.bg, ptr %i.an, align 8, !tbaa !151
  %i.bh = load i8, ptr %i.au, align 1, !tbaa !42
  %i.bi = add i8 %i.bh, 1                         ; 3 uses
  store i8 %i.bi, ptr %i.au, align 1, !tbaa !42
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ax
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !42
  %i.bk = add nuw nsw i8 %i.ak, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.bk, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !415

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i, %bb.f, %.lr.ph.i, %bb.e
  %i.bl = phi i8 [ %i.ad, %bb.e ], [ %i.ad, %.lr.ph.i ], [ %i.bk, %bb.f ], [ %i.ak, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i ] ; 6 uses
  %i.bm = phi i8 [ %i.ae, %bb.e ], [ %i.ae, %.lr.ph.i ], [ %i.aw, %bb.f ], [ %i.aj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i ] ; 6 uses
  %i.bn = load ptr, ptr %i.w, align 16, !tbaa !242
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load atomic i8, ptr %i.bo monotonic, align 1, !range !158, !noundef !159
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.br = load ptr, ptr %i.w, align 16, !tbaa !242
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load atomic i8, ptr %i.bs monotonic, align 1, !range !158, !noundef !159
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %.thread55, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge

.thread55:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread
  %i.bv = add i8 %i.af, 1
  store i8 %i.bv, ptr %i.h, align 4, !tbaa !115
  br label %.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit
  %i.bw = phi i8 [ %i.aw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread ], [ %i.bm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.bx = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread ], [ %i.bl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.bw to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit
  %i.by = add i8 %i.af, 1                         ; 2 uses
  store i8 %i.by, ptr %i.h, align 4, !tbaa !115
  %i.bz = icmp ugt i8 %i.bl, 1
  br i1 %i.bz, label %.thread, label %bb.i

.thread:                                          ; preds = %.thread55, %bb.h
  %i.ca = phi i8 [ 8, %.thread55 ], [ %i.bl, %bb.h ]
  %i.cb = phi i8 [ %i.aw, %.thread55 ], [ %i.bm, %bb.h ]
  %i.cc = zext nneg i8 %i.ac to i64               ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr null, ptr %4, align 8, !tbaa !99
  %i.cg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #11, !inline_history !416 ; 10 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.cg, align 64, !tbaa !45
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !tbaa.struct !186
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 112 ; 2 uses
  store ptr null, ptr %i.ck, align 16, !tbaa !242
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 120
  %i.cm = load i64, ptr %i.aa, align 8, !tbaa !116
  %i.cn = lshr i64 %i.cm, 1                       ; 2 uses
  store i64 %i.cn, ptr %i.aa, align 8, !tbaa !116
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !116
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  store i32 2, ptr %i.co, align 64, !tbaa !114
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 132
  %i.cq = load i8, ptr %i.ab, align 4, !tbaa !115
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.cs = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.cs, ptr %i.cr, align 8, !tbaa !117
  %i.ct = sub i8 %i.cq, %i.cf
  store i8 %i.ct, ptr %i.cp, align 4, !tbaa !115
  %i.cu = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #11, !inline_history !417 ; 6 uses
  %i.cv = load ptr, ptr %i.w, align 16, !tbaa !183
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !121
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 2, ptr %i.cw, align 8, !tbaa !122
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = load i64, ptr %4, align 8, !tbaa !117
  store i64 %i.cy, ptr %i.cx, align 8, !tbaa !117
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i8 0, ptr %i.cz, align 8, !tbaa !184
  store ptr %i.cu, ptr %i.w, align 16, !tbaa !242
  store ptr %i.cu, ptr %i.ck, align 16, !tbaa !242
  %i.da = load ptr, ptr %3, align 8, !tbaa !185
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.cg, ptr noundef nonnull align 8 dereferenceable(128) %i.da) #11, !inline_history !417
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.db = add i8 %i.ca, -1
  %i.dc = add nuw nsw i8 %i.ac, 1
  %i.dd = and i8 %i.dc, 7
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = zext i8 %i.bm to i64                    ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !42
  %i.dh = icmp ult i8 %i.dg, %i.by
  br i1 %i.dh, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.de ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !151
  %i.dl = load i64, ptr %i.di, align 8, !tbaa !149
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !150
  %i.do = sub nsw i64 %i.dl, %i.dn
  %i.dp = icmp ult i64 %i.dk, %i.do
  br i1 %i.dp, label %thread-pre-split18, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit
  %i.dq = phi i8 [ %i.bw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge ], [ %i.bm, %bb.i ], [ %i.bm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit ]
  %i.dr = phi i8 [ %i.bx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge ], [ %i.bl, %bb.i ], [ %i.bl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge ], [ %i.de, %bb.i ], [ %i.de, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit ]
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %.pre-phi ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !150 ; 3 uses
  %i.dv = load i64, ptr %i.ds, align 8, !tbaa !149 ; 2 uses
  %i.dw = load i64, ptr %i.y, align 8, !tbaa !154 ; 2 uses
  %i.dx = icmp slt i64 %i.du, %i.dv
  br i1 %i.dx, label %.lr.ph.preheader.i.i.i.i.i.i10, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit15

.lr.ph.preheader.i.i.i.i.i.i10:                   ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit
  %i.dy = load i64, ptr %i.z, align 32, !tbaa !153
  %i.dz = mul nsw i64 %i.dw, %i.du
  %i.ea = add nsw i64 %i.dy, %i.dz
  br label %.lr.ph.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i11:                             ; preds = %.lr.ph.i.i.i.i.i.i11, %.lr.ph.preheader.i.i.i.i.i.i10
  %.011.i.i.i.i.i.i12 = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.i11 ], [ %i.du, %.lr.ph.preheader.i.i.i.i.i.i10 ]
  %storemerge10.i.i.i.i.i.i13 = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i11 ], [ %i.ea, %.lr.ph.preheader.i.i.i.i.i.i10 ] ; 2 uses
  %i.eb = load ptr, ptr %i.x, align 8, !tbaa !419, !nonnull !159, !align !169
  call void @_ZZN4mold9print_mapINS_6X86_64EEEvRNS_7ContextIT_EEENKUllE_clEl(ptr noundef nonnull align 8 dereferenceable(40) %i.eb, i64 noundef %storemerge10.i.i.i.i.i.i13)
  %i.ec = add i64 %.011.i.i.i.i.i.i12, 1          ; 2 uses
  %i.ed = add nsw i64 %storemerge10.i.i.i.i.i.i13, %i.dw
  %exitcond.not.i.i.i.i.i.i14 = icmp eq i64 %i.ec, %i.dv
  br i1 %exitcond.not.i.i.i.i.i.i14, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit15, label %.lr.ph.i.i.i.i.i.i11, !llvm.loop !414

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit15: ; preds = %.lr.ph.i.i.i.i.i.i11, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit
  %i.ee = add i8 %i.dr, -1
  %i.ef = add nuw i8 %i.dq, 7
  %i.eg = and i8 %i.ef, 7
  br label %thread-pre-split18

thread-pre-split18:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit15
  %i.eh = phi i8 [ %i.ee, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit15 ], [ %i.bl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ei = phi i8 [ %i.eg, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit15 ], [ %i.bm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit ]
  %i.ej = icmp eq i8 %i.eh, 0
  br i1 %i.ej, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.thread, %thread-pre-split18
  %i.ek = phi i8 [ %i.dd, %.thread ], [ %i.ac, %thread-pre-split18 ]
  %i.el = phi i8 [ %i.db, %.thread ], [ %i.eh, %thread-pre-split18 ]
  %i.em = phi i8 [ %i.cb, %.thread ], [ %i.ei, %thread-pre-split18 ]
  %i.en = load ptr, ptr %3, align 8, !tbaa !185   ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 15
  %i.ep = load atomic i8, ptr %i.eo monotonic, align 1
  %i.eq = icmp eq i8 %i.ep, -1
  %6 = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %7 = load ptr, ptr %6, align 8
  %.0.i.i = select i1 %i.eq, ptr %7, ptr %i.en
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #11
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit, label %bb.e, !llvm.loop !418

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit: ; preds = %thread-pre-split18, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4mold9print_mapINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZN4mold9print_mapINS_6X86_64EEEvRNS_7ContextIT_EEENKUllE_clEl(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 36 uses
  %3 = alloca %"class.tbb::detail::d2::concurrent_hash_map<mold::InputSection<mold::X86_64> *, std::vector<mold::Symbol<mold::X86_64> *>>::const_accessor", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !159, !align !169
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !221  ; 8 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.f) #11
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr null, ptr %i.g, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i8 0, ptr %i.h, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 337
  store i8 0, ptr %i.i, align 1, !tbaa !63
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !45
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !45
  %i.p = load ptr, ptr %2, align 8, !tbaa !45
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.s, ptr noundef null) #11
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !45
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.f, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #11
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.t, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i32 16, ptr %i.w, align 8, !tbaa !429
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 4 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 0, ptr %i.z, align 8, !tbaa !41
  store i8 0, ptr %i.y, align 8, !tbaa !42
  %i.aa = load ptr, ptr %2, align 8, !tbaa !45
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, ptr noundef nonnull %i.t) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !430, !nonnull !159, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !133 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.0.copyload.i = load i64, ptr %i.ah, align 1
  %i.ai = and i64 %.0.copyload.i, 2
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.0.copyload.i10 = load i64, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !244
  %i.am = add i64 %i.al, %.0.copyload.i10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.am, %bb.b ], [ 0, %bb.a ]
  %i.an = load ptr, ptr %2, align 8, !tbaa !45
  %i.ao = getelementptr i8, ptr %i.an, i64 -24    ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %2, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !127
  %i.at = or i32 %i.as, 512
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !128
  %i.au = load i64, ptr %i.ao, align 8
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 18, ptr %i.aw, align 8, !tbaa !129
  %i.ax = load i64, ptr %i.ao, align 8
  %i.ay = getelementptr inbounds i8, ptr %2, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !127
  %i.bb = and i32 %i.ba, -75
  %i.bc = or disjoint i32 %i.bb, 8
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !128
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %.0) #11 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.bf = getelementptr i8, ptr %i.be, i64 -24    ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !127
  %i.bk = and i32 %i.bj, -75
  %i.bl = or disjoint i32 %i.bk, 2
  store i32 %i.bl, ptr %i.bi, align 8, !tbaa !128
  %i.bm = load i64, ptr %i.bf, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.bd, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 11, ptr %i.bo, align 8, !tbaa !129
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !431
  %i.br = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i64 noundef %i.bq) #11 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45
  %i.bt = getelementptr i8, ptr %i.bs, i64 -24
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds i8, ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 6, ptr %i.bw, align 8, !tbaa !129
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 58
  %i.by = load atomic i8, ptr %i.bx monotonic, align 2
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.br, i32 noundef %i.ca) #11 ; 3 uses
  %i.cc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.13, i64 noundef 9) #11 ; 0 uses
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !245, !nonnull !159, !align !169
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(312) %i.cd) #11 ; 2 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.15, i64 noundef 2) #11 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !246
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !245, !nonnull !159, !align !169 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !138 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.cl, %i.ci
  br i1 %.not.i.i, label %bb.d, label %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i

_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i: ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 480
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !433
  %i.co = sub nuw i64 %i.ci, %i.cl
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.cq, align 1
  %i.cr = and i64 %.0.copyload.i.i.i, 1024
  %.not4.i.i = icmp eq i64 %i.cr, 0               ; 2 uses
  %i.cs = select i1 %.not4.i.i, ptr @.str.18, ptr @.str.17
  %i.ct = select i1 %.not4.i.i, i64 7, i64 11
  br label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE4findERNSM_14const_accessorERSJ_.exit

bb.d:                                             ; preds = %bb.c
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 152
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !247
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !248
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %i.cx, i64 %i.ci
  %.0.copyload.i5.i.i = load i32, ptr %i.cy, align 1
  %i.cz = zext i32 %.0.copyload.i5.i.i to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !249 ; 2 uses
  %i.dd = icmp eq i16 %i.dc, -1
  br i1 %i.dd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 65535
  %i.df = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.de) #25
  %i.dg = add i64 %i.df, 65535
  br label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE4findERNSM_14const_accessorERSJ_.exit

bb.f:                                             ; preds = %bb.d
  %i.dh = zext i16 %i.dc to i64
  br label %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE4findERNSM_14const_accessorERSJ_.exit

_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE4findERNSM_14const_accessorERSJ_.exit: ; preds = %bb.f, %bb.e, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i
  %.sroa.4.0.i.i = phi ptr [ %i.da, %bb.e ], [ %i.da, %bb.f ], [ %i.cs, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i ]
  %.sroa.0.0.i.i = phi i64 [ %i.dg, %bb.e ], [ %i.dh, %bb.f ], [ %i.ct, %_ZNK4mold12InputSectionINS_6X86_64EE4shdrEv.exit.i.i ]
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %.sroa.4.0.i.i, i64 noundef %.sroa.0.0.i.i) #11
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.16, i64 noundef 1) #11 ; 0 uses
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull @.str.6, i64 noundef 1) #11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr null, ptr %3, align 8, !tbaa !209
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i8 0, ptr %i.dl, align 8, !tbaa !210
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !434, !nonnull !159, !align !169
  %i.dp = call noundef zeroext i1 @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE6lookupILb0ES7_PFPNSM_4nodeERNSH_INS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEEERSJ_PKSD_EEEbRKT0_SY_PNSM_14const_accessorEbT1_SP_(ptr noundef nonnull align 8 dereferenceable(570) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false, ptr noundef nonnull @_ZN3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE20do_not_allocate_nodeERNSH_INS1_13hash_map_baseISL_NSE_13spin_rw_mutexEE6bucketEEERSJ_PKSD_, ptr noundef null)
  br i1 %i.dp, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNK3tbb6detail2d219concurrent_hash_mapIPN4mold12InputSectionINS3_6X86_64EEESt6vectorIPNS3_6SymbolIS5_EESaISB_EENS0_2d116tbb_hash_compareIS7_EENSE_13tbb_allocatorISt4pairIKS7_SD_EEEE4findERNSM_14const_accessorERSJ_.exit
end_hunk_3
