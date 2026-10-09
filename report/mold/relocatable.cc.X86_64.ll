Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/relocatable.cc.X86_64?download=true
inline.NumInlined: 1279
inline.NumDeleted: 775
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !138  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #9 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !99
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !99
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !139
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !134
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !98
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !98
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !575 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !576 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !577 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !99  ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !98  ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !98
  store i64 0, ptr %i.g, align 8, !tbaa !99
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !85
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !567 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.al, align 64, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !576 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !576
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !577 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !576
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !577
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !575
  store i64 %i.av, ptr %i.au, align 16, !tbaa !575
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !579
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !134
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !99
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !99
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !98
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !100
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !100
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !568 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !140
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !102
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !103
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !100
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !141
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !134
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !134
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !142
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #9, !inline_history !568
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !575 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !576 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !577 ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !99  ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !98  ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !98
  store i64 0, ptr %i.g, align 8, !tbaa !99
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !569

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %i.bv = phi i64 [ %i.aa, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ]
  %i.bw = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ]
  %i.bx = phi i64 [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L26r_claim_unresolved_symbolsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.by = icmp ult i64 %i.bx, %.pre-phi.i
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !98
  %.not.i12.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.critedge.i
  call fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %i.bw, i64 %i.bv), !inline_history !570
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L26r_claim_unresolved_symbolsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 20 uses
  store i8 0, ptr %i.cb, align 1, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !143
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.q

bb.q:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %bb.p
  %i.cf = phi i8 [ %i.nc, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.cg = phi i8 [ %i.nd, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 1, %bb.p ] ; 13 uses
  %i.ch = phi i8 [ %i.ne, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.p ] ; 9 uses
  %i.ci = load i8, ptr %i.bz, align 4, !tbaa !98  ; 10 uses
  %i.cj = icmp ult i8 %i.cg, 8
  br i1 %i.cj, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %.phi.trans.insert.i.i.i = zext i8 %i.ch to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !63
  %i.ck = icmp ult i8 %.pre.i.i.i, %i.ci
  br i1 %i.ck, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.r:                                             ; preds = %bb.ag
  %i.cl = icmp ult i8 %i.kn, %i.ci
  br i1 %i.cl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1: ; preds = %bb.r
  %i.cm = zext nneg i8 %i.kb to i64               ; 2 uses
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cm ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !575
  %i.cq = load i64, ptr %i.cn, align 8, !tbaa !576
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !577
  %i.ct = sub i64 %i.cq, %i.cs
  %i.cu = icmp ult i64 %i.cp, %i.ct
  br i1 %i.cu, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cm ; 2 uses
  %i.cw = add i8 %i.ch, 2
  %i.cx = and i8 %i.cw, 7                         ; 5 uses
  %i.cy = zext nneg i8 %i.cx to i64               ; 3 uses
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cy ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !tbaa.struct !143
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !576 ; 2 uses
  store i64 %i.da, ptr %i.cn, align 8, !tbaa !576
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !577 ; 2 uses
  %i.dd = sub i64 %i.da, %i.dc
  %i.de = lshr i64 %i.dd, 1
  %i.df = add i64 %i.de, %i.dc                    ; 2 uses
  store i64 %i.df, ptr %i.cz, align 8, !tbaa !576
  store i64 %i.df, ptr %i.cr, align 8, !tbaa !577
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !575
  store i64 %i.dh, ptr %i.co, align 8, !tbaa !575
  %i.di = load i8, ptr %i.cv, align 1, !tbaa !63
  %i.dj = add i8 %i.di, 1                         ; 3 uses
  store i8 %i.dj, ptr %i.cv, align 1, !tbaa !63
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cy
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !63
  %i.dl = add nuw nsw i8 %i.cg, 2                 ; 3 uses
  %exitcond.not.i.i.i.1 = icmp eq i8 %i.dl, 8
  br i1 %exitcond.not.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.t, !llvm.loop !571

bb.t:                                             ; preds = %bb.s
  %i.dm = icmp ult i8 %i.dj, %i.ci
  br i1 %i.dm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2: ; preds = %bb.t
  %i.dn = zext nneg i8 %i.cx to i64               ; 2 uses
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dn ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !575
  %i.dr = load i64, ptr %i.do, align 8, !tbaa !576
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !577
  %i.du = sub i64 %i.dr, %i.dt
  %i.dv = icmp ult i64 %i.dq, %i.du
  br i1 %i.dv, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dn ; 2 uses
  %i.dx = add i8 %i.ch, 3
  %i.dy = and i8 %i.dx, 7                         ; 5 uses
  %i.dz = zext nneg i8 %i.dy to i64               ; 3 uses
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dz ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !tbaa.struct !143
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !576 ; 2 uses
  store i64 %i.eb, ptr %i.do, align 8, !tbaa !576
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !577 ; 2 uses
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = add i64 %i.ef, %i.ed                    ; 2 uses
  store i64 %i.eg, ptr %i.ea, align 8, !tbaa !576
  store i64 %i.eg, ptr %i.ds, align 8, !tbaa !577
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !575
  store i64 %i.ei, ptr %i.dp, align 8, !tbaa !575
  %i.ej = load i8, ptr %i.dw, align 1, !tbaa !63
  %i.ek = add i8 %i.ej, 1                         ; 3 uses
  store i8 %i.ek, ptr %i.dw, align 1, !tbaa !63
  %i.el = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dz
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !63
  %i.em = add nuw nsw i8 %i.cg, 3                 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i8 %i.em, 8
  br i1 %exitcond.not.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.v, !llvm.loop !571

bb.v:                                             ; preds = %bb.u
  %i.en = icmp ult i8 %i.ek, %i.ci
  br i1 %i.en, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3: ; preds = %bb.v
  %i.eo = zext nneg i8 %i.dy to i64               ; 2 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.eo ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !575
  %i.es = load i64, ptr %i.ep, align 8, !tbaa !576
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !577
  %i.ev = sub i64 %i.es, %i.eu
  %i.ew = icmp ult i64 %i.er, %i.ev
  br i1 %i.ew, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.eo ; 2 uses
  %i.ey = and i8 %i.ch, 7                         ; 4 uses
  %i.ez = xor i8 %i.ey, 4                         ; 8 uses
  %i.fa = zext nneg i8 %i.ez to i64               ; 3 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.fa ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false), !tbaa.struct !143
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !576 ; 2 uses
  store i64 %i.fc, ptr %i.ep, align 8, !tbaa !576
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !577 ; 2 uses
  %i.ff = sub i64 %i.fc, %i.fe
  %i.fg = lshr i64 %i.ff, 1
  %i.fh = add i64 %i.fg, %i.fe                    ; 2 uses
  store i64 %i.fh, ptr %i.fb, align 8, !tbaa !576
  store i64 %i.fh, ptr %i.et, align 8, !tbaa !577
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !575
  store i64 %i.fj, ptr %i.eq, align 8, !tbaa !575
  %i.fk = load i8, ptr %i.ex, align 1, !tbaa !63
  %i.fl = add i8 %i.fk, 1                         ; 3 uses
  store i8 %i.fl, ptr %i.ex, align 1, !tbaa !63
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fa
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !63
  %i.fn = add nuw nsw i8 %i.cg, 4                 ; 3 uses
  %exitcond.not.i.i.i.3 = icmp eq i8 %i.fn, 8
  br i1 %exitcond.not.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.x, !llvm.loop !571

bb.x:                                             ; preds = %bb.w
  %i.fo = icmp ult i8 %i.fl, %i.ci
  br i1 %i.fo, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4: ; preds = %bb.x
  %i.fp = zext nneg i8 %i.ez to i64               ; 2 uses
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.fp ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !575
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !576
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !577
  %i.fw = sub i64 %i.ft, %i.fv
  %i.fx = icmp ult i64 %i.fs, %i.fw
  br i1 %i.fx, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fp ; 2 uses
  %i.fz = add nuw nsw i8 %i.ez, 1
  %i.ga = and i8 %i.fz, 7                         ; 5 uses
  %i.gb = zext nneg i8 %i.ga to i64               ; 3 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.gb ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !tbaa.struct !143
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !576 ; 2 uses
  store i64 %i.gd, ptr %i.fq, align 8, !tbaa !576
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !577 ; 2 uses
  %i.gg = sub i64 %i.gd, %i.gf
  %i.gh = lshr i64 %i.gg, 1
  %i.gi = add i64 %i.gh, %i.gf                    ; 2 uses
  store i64 %i.gi, ptr %i.gc, align 8, !tbaa !576
  store i64 %i.gi, ptr %i.fu, align 8, !tbaa !577
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !575
  store i64 %i.gk, ptr %i.fr, align 8, !tbaa !575
  %i.gl = load i8, ptr %i.fy, align 1, !tbaa !63
  %i.gm = add i8 %i.gl, 1                         ; 3 uses
  store i8 %i.gm, ptr %i.fy, align 1, !tbaa !63
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.gb
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !63
  %i.go = add nuw nsw i8 %i.cg, 5                 ; 3 uses
  %exitcond.not.i.i.i.4 = icmp eq i8 %i.go, 8
  br i1 %exitcond.not.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.z, !llvm.loop !571

bb.z:                                             ; preds = %bb.y
  %i.gp = icmp ult i8 %i.gm, %i.ci
  br i1 %i.gp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5: ; preds = %bb.z
  %i.gq = zext nneg i8 %i.ga to i64               ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.gq ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !575
  %i.gu = load i64, ptr %i.gr, align 8, !tbaa !576
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !577
  %i.gx = sub i64 %i.gu, %i.gw
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.is ; 2 uses
  %i.jc = zext nneg i8 %i.ey to i64               ; 3 uses
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.jc ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %i.it, i64 24, i1 false), !tbaa.struct !143
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !576 ; 2 uses
  store i64 %i.je, ptr %i.it, align 8, !tbaa !576
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !577 ; 2 uses
  %i.jh = sub i64 %i.je, %i.jg
  %i.ji = lshr i64 %i.jh, 1
  %i.jj = add i64 %i.ji, %i.jg                    ; 2 uses
  store i64 %i.jj, ptr %i.jd, align 8, !tbaa !576
  store i64 %i.jj, ptr %i.ix, align 8, !tbaa !577
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !575
  store i64 %i.jl, ptr %i.iu, align 8, !tbaa !575
  %i.jm = load i8, ptr %i.jb, align 1, !tbaa !63
  %i.jn = add i8 %i.jm, 1                         ; 2 uses
  store i8 %i.jn, ptr %i.jb, align 1, !tbaa !63
  %i.jo = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.jc
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !63
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.cg, 0
  br i1 %exitcond.not.i.i.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.af, !llvm.loop !571

bb.af:                                            ; preds = %bb.ae
  %i.jp = or disjoint i8 %i.cg, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.jq = zext i8 %i.ch to i64                    ; 2 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.jq ; 5 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !575
  %i.ju = load i64, ptr %i.jr, align 8, !tbaa !576
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !577
  %i.jx = sub i64 %i.ju, %i.jw
  %i.jy = icmp ult i64 %i.jt, %i.jx
  br i1 %i.jy, label %bb.ag, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.ag:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.jq ; 2 uses
  %i.ka = add nuw i8 %i.ch, 1
  %i.kb = and i8 %i.ka, 7                         ; 5 uses
  %i.kc = zext nneg i8 %i.kb to i64               ; 3 uses
  %i.kd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.kc ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kd, ptr noundef nonnull align 8 dereferenceable(24) %i.jr, i64 24, i1 false), !tbaa.struct !143
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !576 ; 2 uses
  store i64 %i.ke, ptr %i.jr, align 8, !tbaa !576
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !577 ; 2 uses
  %i.kh = sub i64 %i.ke, %i.kg
  %i.ki = lshr i64 %i.kh, 1
  %i.kj = add i64 %i.ki, %i.kg                    ; 2 uses
  store i64 %i.kj, ptr %i.kd, align 8, !tbaa !576
  store i64 %i.kj, ptr %i.jv, align 8, !tbaa !577
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !575
  store i64 %i.kl, ptr %i.js, align 8, !tbaa !575
  %i.km = load i8, ptr %i.jz, align 1, !tbaa !63
  %i.kn = add i8 %i.km, 1                         ; 3 uses
  store i8 %i.kn, ptr %i.jz, align 1, !tbaa !63
  %i.ko = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.kc
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !63
  %i.kp = add nuw nsw i8 %i.cg, 1                 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.kp, 8
  br i1 %exitcond.not.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.r, !llvm.loop !571

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, %bb.r, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, %bb.t, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, %bb.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, %bb.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5, %bb.ab, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6, %bb.ad, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7, %bb.af, %.lr.ph.i.i.i, %bb.q
  %i.kq = phi i8 [ %i.cg, %bb.q ], [ %i.cg, %.lr.ph.i.i.i ], [ %i.kp, %bb.r ], [ %i.cg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.kp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.dl, %bb.t ], [ %i.dl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.em, %bb.v ], [ %i.em, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.fn, %bb.x ], [ %i.fn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.go, %bb.z ], [ %i.go, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.hp, %bb.ab ], [ %i.hp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.iq, %bb.ad ], [ %i.iq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.jp, %bb.af ] ; 6 uses
  %i.kr = phi i8 [ %i.ch, %bb.q ], [ %i.ch, %.lr.ph.i.i.i ], [ %i.kb, %bb.r ], [ %i.ch, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.cx, %bb.t ], [ %i.cx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.dy, %bb.v ], [ %i.dy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.ez, %bb.x ], [ %i.ez, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.ga, %bb.z ], [ %i.ga, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.hb, %bb.ab ], [ %i.hb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.ic, %bb.ad ], [ %i.ic, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.ey, %bb.af ] ; 7 uses
  %i.ks = load ptr, ptr %i.cd, align 16, !tbaa !134
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.ku = load atomic i8, ptr %i.kt monotonic, align 1, !range !108, !noundef !109
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %bb.ah, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %.pre.i = zext i8 %i.kr to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i: ; preds = %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.ag
  %.lcssa52 = phi i8 [ %i.kb, %bb.ag ], [ %i.cx, %bb.s ], [ %i.dy, %bb.u ], [ %i.ez, %bb.w ], [ %i.ga, %bb.y ], [ %i.hb, %bb.aa ], [ %i.ic, %bb.ac ], [ %i.ey, %bb.ae ] ; 2 uses
  %.lcssa = phi i64 [ %i.kc, %bb.ag ], [ %i.cy, %bb.s ], [ %i.dz, %bb.u ], [ %i.fa, %bb.w ], [ %i.gb, %bb.y ], [ %i.hc, %bb.aa ], [ %i.id, %bb.ac ], [ %i.jc, %bb.ae ]
  %i.kw = load ptr, ptr %i.cd, align 16, !tbaa !134
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load atomic i8, ptr %i.kx monotonic, align 1, !range !108, !noundef !109
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %.thread48.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

.thread48.i.i:                                    ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i
  %i.la = add i8 %i.ci, 1
  store i8 %i.la, ptr %i.bz, align 4, !tbaa !98
  br label %.thread.i.i

bb.ah:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %i.lb = add i8 %i.ci, 1                         ; 2 uses
  store i8 %i.lb, ptr %i.bz, align 4, !tbaa !98
  %i.lc = icmp ugt i8 %i.kq, 1
  br i1 %i.lc, label %.thread.i.i, label %bb.ai

.thread.i.i:                                      ; preds = %bb.ah, %.thread48.i.i
  %i.ld = phi i8 [ 8, %.thread48.i.i ], [ %i.kq, %bb.ah ]
  %i.le = phi i8 [ %.lcssa52, %.thread48.i.i ], [ %i.kr, %bb.ah ]
  %i.lf = zext nneg i8 %i.cf to i64               ; 2 uses
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.lf
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr null, ptr %2, align 8, !tbaa !85
  %i.lj = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !572 ; 10 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lk, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.lj, align 64, !tbaa !18
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ll, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lg, i64 24, i1 false), !tbaa.struct !143
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !tbaa.struct !579
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 112 ; 2 uses
  store ptr null, ptr %i.ln, align 16, !tbaa !134
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lj, i64 120
  %i.lp = load i64, ptr %i.g, align 8, !tbaa !99
  %i.lq = lshr i64 %i.lp, 1                       ; 2 uses
  store i64 %i.lq, ptr %i.g, align 8, !tbaa !99
  store i64 %i.lq, ptr %i.lo, align 8, !tbaa !99
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  store i32 2, ptr %i.lr, align 64, !tbaa !97
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lj, i64 132
  %i.lt = load i8, ptr %i.bz, align 4, !tbaa !98
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 136
  %i.lv = load i64, ptr %2, align 8, !tbaa !100
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !100
  %i.lw = sub i8 %i.lt, %i.li
  store i8 %i.lw, ptr %i.ls, align 4, !tbaa !98
  %i.lx = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !573 ; 6 uses
  %i.ly = load ptr, ptr %i.cd, align 16, !tbaa !140
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !102
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store i32 2, ptr %i.lz, align 8, !tbaa !103
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mb = load i64, ptr %2, align 8, !tbaa !100
  store i64 %i.mb, ptr %i.ma, align 8, !tbaa !100
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store i8 0, ptr %i.mc, align 8, !tbaa !141
  store ptr %i.lx, ptr %i.cd, align 16, !tbaa !134
  store ptr %i.lx, ptr %i.ln, align 16, !tbaa !134
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !142
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.lj, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #9, !inline_history !573
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.md = add i8 %i.ld, -1
  %i.me = add nuw nsw i8 %i.cf, 1
  %i.mf = and i8 %i.me, 7
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mg = zext i8 %i.kr to i64                    ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !63
  %i.mj = icmp ult i8 %i.mi, %i.lb
  br i1 %i.mj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.ai
  %i.mk = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.mg ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !575
  %i.mn = load i64, ptr %i.mk, align 8, !tbaa !576
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !577
  %i.mq = sub i64 %i.mn, %i.mp
  %i.mr = icmp ult i64 %i.mm, %i.mq
  br i1 %i.mr, label %thread-pre-split15.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, %bb.ai, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i
  %i.ms = phi i8 [ %i.kr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.kr, %bb.ai ], [ %i.kr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i ], [ %.lcssa52, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.mt = phi i8 [ %i.kq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.kq, %bb.ai ], [ %i.kq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i ], [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.mg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.mg, %bb.ai ], [ %.pre.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i ], [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.pre-phi.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.mu, align 8, !tbaa !20
  %i.mv = getelementptr i8, ptr %i.mu, i64 8
  %.val10.i.i = load i64, ptr %i.mv, align 8, !tbaa !20
  call fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %.val.i.i, i64 %.val10.i.i), !inline_history !570
  %i.mw = add i8 %i.mt, -1
  %i.mx = add nuw i8 %i.ms, 7
  %i.my = and i8 %i.mx, 7
  br label %thread-pre-split15.i.i

thread-pre-split15.i.i:                           ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i
  %i.mz = phi i8 [ %i.mw, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i ], [ %i.kq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ] ; 2 uses
  %i.na = phi i8 [ %i.my, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L26r_claim_unresolved_symbolsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i ], [ %i.kr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ]
  %i.nb = icmp eq i8 %i.mz, 0
  br i1 %i.nb, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split15.i.i, %.thread.i.i
  %i.nc = phi i8 [ %i.mf, %.thread.i.i ], [ %i.cf, %thread-pre-split15.i.i ]
  %i.nd = phi i8 [ %i.md, %.thread.i.i ], [ %i.mz, %thread-pre-split15.i.i ]
  %i.ne = phi i8 [ %i.le, %.thread.i.i ], [ %i.na, %thread-pre-split15.i.i ]
  %i.nf = load ptr, ptr %1, align 8, !tbaa !142   ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 15
  %i.nh = load atomic i8, ptr %i.ng monotonic, align 1
  %i.ni = icmp eq i8 %i.nh, -1
  br i1 %i.ni, label %5, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

5:                                                ; preds = %bb.aj
  %6 = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i: ; preds = %5, %bb.aj
  %.0.i.i.i.i = phi ptr [ %7, %5 ], [ %i.nf, %bb.aj ]
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #9, !inline_history !570
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.q, !llvm.loop !574

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i: ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %thread-pre-split15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L26r_claim_unresolved_symbolsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit

_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L26r_claim_unresolved_symbolsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit: ; preds = %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.nk = load ptr, ptr %i.nj, align 16, !tbaa !134 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !100
  %i.nn = load ptr, ptr %0, align 64, !tbaa !18
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #9, !inline_history !5
  %i.np = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nq = atomicrmw sub ptr %i.np, i32 1 seq_cst, align 4
  %i.nr = add i32 %i.nq, -1
  %i.ns = icmp sgt i32 %i.nr, 0
  br i1 %i.ns, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L26r_claim_unresolved_symbolsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit, %bb.ak
  %.019.i.i = phi ptr [ %i.nt, %bb.ak ], [ %i.nk, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L26r_claim_unresolved_symbolsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit ] ; 5 uses
  %i.nt = load ptr, ptr %.019.i.i, align 8, !tbaa !102 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i6, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !100
  %i.nw = inttoptr i64 %i.nv to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.nw, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.ny = atomicrmw sub ptr %i.nx, i32 1 seq_cst, align 4
  %i.nz = add i32 %i.ny, -1
  %i.oa = icmp sgt i32 %i.nz, 0
  br i1 %i.oa, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.oc = atomicrmw sub ptr %i.ob, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.oc, 1
  br i1 %.not.i.i.i.i, label %bb.am, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.am:                                            ; preds = %bb.al
  %i.od = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.oe = ptrtoint ptr %i.od to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.oe) #9
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.ak, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L26r_claim_unresolved_symbolsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit, %bb.al, %bb.am
  %i.of = inttoptr i64 %i.nm to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.of, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !134 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100
  %i.e = load ptr, ptr %0, align 64, !tbaa !18
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #9, !inline_history !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !102 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #9
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L26r_claim_unresolved_symbolsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not1.i.i.i.i.i = icmp eq i64 %.8.val, %.0.val
  br i1 %.not1.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS7_6X86_64EEESt6vectorISB_SaISB_EEEEZNS7_L26r_claim_unresolved_symbolsIS9_EEvRNS7_7ContextIT_EEEUlSB_E_SB_EEJRNS0_2d113blocked_rangeImEEEEENSt13invoke_resultISJ_JDpT0_EE4typeEOSJ_DpOSV_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL26r_claim_unresolved_symbolsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i
  %.02.i.i.i.i.i = phi i64 [ %i.bo, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL26r_claim_unresolved_symbolsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i ], [ %.8.val, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !584
  %i.c = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.02.i.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !144 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !585  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !586  ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL26r_claim_unresolved_symbolsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 128
  %i.l = ptrtoint ptr %.val.i.i.i.i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.m = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bl, %bb.k ]
  %.03.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %bb.k ] ; 4 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !587
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.03.i.i.i.i.i.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !168
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.03.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !170
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sext i32 %i.r to i64
  %i.u = shl nsw i64 %i.t, 2
  %i.v = add nsw i64 %i.u, %i.s
  %i.w = inttoptr i64 %i.v to ptr                 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.x, align 1
  %i.y = icmp eq i16 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 31 ; 3 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.outer

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.outer: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i32 [ %i.ak, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %bb.c ] ; 7 uses
  %i.aa = icmp slt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 17
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.outer, %bb.f
  %i.ab = load atomic i8, ptr %i.z monotonic, align 1, !range !108, !noundef !109
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = atomicrmw xchg ptr %i.z, i8 1 seq_cst, align 1
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11scoped_lockIJN3tbb6detail2d110spin_mutexEEEC2ERS3_.exit.i.i.i.i.i.i.i.i.i.i.i

.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.d, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = icmp sgt i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:   ; preds = %bb.e
  %xtraiter = and i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i32 [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ag = add nsw i32 %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !580

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i32 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ah = icmp ult i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 8
  br i1 %i.ah, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector.453", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !138  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #9 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !99
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !99
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !139
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !96
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !96
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !98
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !98
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !605 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !606 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !607 ; 4 uses
  %i.ab = sub nsw i64 %i.y, %i.aa                 ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !99  ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !98  ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !98
  store i64 0, ptr %i.g, align 8, !tbaa !99
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr null, ptr %4, align 8, !tbaa !85
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !597 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.al, align 64, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !606 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !606
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !607 ; 2 uses
  %i.ar = sub nsw i64 %i.ao, %i.aq
  %i.as = sdiv i64 %i.ar, 2
  %i.at = add nsw i64 %i.as, %i.aq                ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !606
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !607
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !605
  store i64 %i.av, ptr %i.au, align 16, !tbaa !605
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !99
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !99
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !98
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !100
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !100
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !598 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !140
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !102
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !103
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !100
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !141
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !96
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !96
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !142
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #9, !inline_history !598
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !605 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !606 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !607 ; 4 uses
  %i.bp = sub nsw i64 %i.bn, %i.bo                ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !99  ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !98  ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !98
  store i64 0, ptr %i.g, align 8, !tbaa !99
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !599

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %i.bv = phi i64 [ %i.aa, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ]
  %i.bw = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ]
  %i.bx = phi i64 [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSC_6X86_64EEEvRNSC_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSG_RKNS1_14execution_dataE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.by = icmp ult i64 %i.bx, %.pre-phi.i
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !98
  %.not.i12.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.critedge.i
  call fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %i.bw, i64 %i.bv), !inline_history !600
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSA_6X86_64EEEvRNSA_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSE_RT0_RNS1_14execution_dataE.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 6 uses
  store i8 0, ptr %i.cb, align 1, !tbaa !63
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cc, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !143
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.q

bb.q:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %bb.p
  %i.cf = phi i8 [ %i.ga, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.cg = phi i8 [ %i.gb, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 1, %bb.p ] ; 4 uses
  %i.ch = phi i8 [ %i.gc, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.p ] ; 4 uses
  %i.ci = load i8, ptr %i.bz, align 4, !tbaa !98  ; 4 uses
  %i.cj = icmp ult i8 %i.cg, 8
  br i1 %i.cj, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %.phi.trans.insert.i.i.i = zext i8 %i.ch to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !63
  %i.ck = icmp ult i8 %.pre.i.i.i, %i.ci
  br i1 %i.ck, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i

bb.r:                                             ; preds = %bb.s
  %i.cl = icmp ult i8 %i.dl, %i.ci
  br i1 %i.cl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i, !llvm.loop !601

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %bb.r
  %i.cm = phi i8 [ %i.cz, %bb.r ], [ %i.ch, %.lr.ph.i.i.i ] ; 3 uses
  %i.cn = phi i8 [ %i.dn, %bb.r ], [ %i.cg, %.lr.ph.i.i.i ] ; 2 uses
  %i.co = zext i8 %i.cm to i64                    ; 2 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.co ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !605
  %i.cs = load i64, ptr %i.cp, align 8, !tbaa !606
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !607
  %i.cv = sub nsw i64 %i.cs, %i.cu
  %i.cw = icmp ult i64 %i.cr, %i.cv
  br i1 %i.cw, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.co ; 2 uses
  %i.cy = add nuw i8 %i.cm, 1
  %i.cz = and i8 %i.cy, 7                         ; 5 uses
  %i.da = zext nneg i8 %i.cz to i64               ; 3 uses
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.da ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 24, i1 false), !tbaa.struct !143
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !606 ; 2 uses
  store i64 %i.dc, ptr %i.cp, align 8, !tbaa !606
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !607 ; 2 uses
  %i.df = sub nsw i64 %i.dc, %i.de
  %i.dg = sdiv i64 %i.df, 2
  %i.dh = add nsw i64 %i.dg, %i.de                ; 2 uses
  store i64 %i.dh, ptr %i.db, align 8, !tbaa !606
  store i64 %i.dh, ptr %i.ct, align 8, !tbaa !607
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !605
  store i64 %i.dj, ptr %i.cq, align 8, !tbaa !605
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !63
  %i.dl = add i8 %i.dk, 1                         ; 3 uses
  store i8 %i.dl, ptr %i.cx, align 1, !tbaa !63
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.da
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !63
  %i.dn = add nuw nsw i8 %i.cn, 1                 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.dn, 8
  br i1 %exitcond.not.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.r, !llvm.loop !601

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i, %bb.r, %.lr.ph.i.i.i, %bb.q
  %i.do = phi i8 [ %i.cg, %bb.q ], [ %i.cg, %.lr.ph.i.i.i ], [ %i.dn, %bb.r ], [ %i.cn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i ] ; 6 uses
  %i.dp = phi i8 [ %i.ch, %bb.q ], [ %i.ch, %.lr.ph.i.i.i ], [ %i.cz, %bb.r ], [ %i.cm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i.i ] ; 7 uses
  %i.dq = load ptr, ptr %i.cd, align 16, !tbaa !96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load atomic i8, ptr %i.dr monotonic, align 1, !range !108, !noundef !109
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.t, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge.i_crit_edge.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge.i_crit_edge.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i
  %.pre.i = zext i8 %i.dp to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i: ; preds = %bb.s
  %i.du = load ptr, ptr %i.cd, align 16, !tbaa !96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load atomic i8, ptr %i.dv monotonic, align 1, !range !108, !noundef !109
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %.thread48.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i

.thread48.i.i:                                    ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i
  %i.dy = add i8 %i.ci, 1
  store i8 %i.dy, ptr %i.bz, align 4, !tbaa !98
  br label %.thread.i.i

bb.t:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i.i
  %i.dz = add i8 %i.ci, 1                         ; 2 uses
  store i8 %i.dz, ptr %i.bz, align 4, !tbaa !98
  %i.ea = icmp ugt i8 %i.do, 1
  br i1 %i.ea, label %.thread.i.i, label %bb.u

.thread.i.i:                                      ; preds = %bb.t, %.thread48.i.i
  %i.eb = phi i8 [ 8, %.thread48.i.i ], [ %i.do, %bb.t ]
  %i.ec = phi i8 [ %i.cz, %.thread48.i.i ], [ %i.dp, %bb.t ]
  %i.ed = zext nneg i8 %i.cf to i64               ; 2 uses
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ed
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr null, ptr %2, align 8, !tbaa !85
  %i.eh = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !602 ; 10 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ei, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.eh, align 64, !tbaa !18
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ej, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ee, i64 24, i1 false), !tbaa.struct !143
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 112 ; 2 uses
  store ptr null, ptr %i.el, align 16, !tbaa !96
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 120
  %i.en = load i64, ptr %i.g, align 8, !tbaa !99
  %i.eo = lshr i64 %i.en, 1                       ; 2 uses
  store i64 %i.eo, ptr %i.g, align 8, !tbaa !99
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !99
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  store i32 2, ptr %i.ep, align 64, !tbaa !97
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eh, i64 132
  %i.er = load i8, ptr %i.bz, align 4, !tbaa !98
  %i.es = getelementptr inbounds nuw i8, ptr %i.eh, i64 136
  %i.et = load i64, ptr %2, align 8, !tbaa !100
  store i64 %i.et, ptr %i.es, align 8, !tbaa !100
  %i.eu = sub i8 %i.er, %i.eg
  store i8 %i.eu, ptr %i.eq, align 4, !tbaa !98
  %i.ev = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9, !inline_history !603 ; 6 uses
  %i.ew = load ptr, ptr %i.cd, align 16, !tbaa !140
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !102
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 2, ptr %i.ex, align 8, !tbaa !103
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ez = load i64, ptr %2, align 8, !tbaa !100
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !100
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i8 0, ptr %i.fa, align 8, !tbaa !141
  store ptr %i.ev, ptr %i.cd, align 16, !tbaa !96
  store ptr %i.ev, ptr %i.el, align 16, !tbaa !96
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !142
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.eh, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #9, !inline_history !603
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.fb = add i8 %i.eb, -1
  %i.fc = add nuw nsw i8 %i.cf, 1
  %i.fd = and i8 %i.fc, 7
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fe = zext i8 %i.dp to i64                    ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !63
  %i.fh = icmp ult i8 %i.fg, %i.dz
  br i1 %i.fh, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.u
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.fe ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !605
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !606
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !607
  %i.fo = sub nsw i64 %i.fl, %i.fn
  %i.fp = icmp ult i64 %i.fk, %i.fo
  br i1 %i.fp, label %thread-pre-split15.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i, %bb.u, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge.i_crit_edge.i
  %i.fq = phi i8 [ %i.dp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.dp, %bb.u ], [ %i.dp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge.i_crit_edge.i ], [ %i.cz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.fr = phi i8 [ %i.do, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.do, %bb.u ], [ %i.do, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge.i_crit_edge.i ], [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.fe, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ], [ %i.fe, %bb.u ], [ %.pre.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit_crit_edge.i_crit_edge.i ], [ %i.da, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.pre-phi.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.fs, align 8, !tbaa !606
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %.val10.i.i = load i64, ptr %i.ft, align 8, !tbaa !607
  call fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr noundef nonnull align 64 dereferenceable(144) %0, i64 %.val.i.i, i64 %.val10.i.i), !inline_history !600
  %i.fu = add i8 %i.fr, -1
  %i.fv = add nuw i8 %i.fq, 7
  %i.fw = and i8 %i.fv, 7
  br label %thread-pre-split15.i.i

thread-pre-split15.i.i:                           ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i
  %i.fx = phi i8 [ %i.fu, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i ], [ %i.do, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ] ; 2 uses
  %i.fy = phi i8 [ %i.fw, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS8_6X86_64EEEvRNS8_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEEEEbRSC_.exit.i.i ], [ %i.dp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EE12is_divisibleEh.exit.i.i ]
  %i.fz = icmp eq i8 %i.fx, 0
  br i1 %i.fz, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i, label %bb.v

bb.v:                                             ; preds = %thread-pre-split15.i.i, %.thread.i.i
  %i.ga = phi i8 [ %i.fd, %.thread.i.i ], [ %i.cf, %thread-pre-split15.i.i ]
  %i.gb = phi i8 [ %i.fb, %.thread.i.i ], [ %i.fx, %thread-pre-split15.i.i ]
  %i.gc = phi i8 [ %i.ec, %.thread.i.i ], [ %i.fy, %thread-pre-split15.i.i ]
  %i.gd = load ptr, ptr %1, align 8, !tbaa !142   ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 15
  %i.gf = load atomic i8, ptr %i.ge monotonic, align 1
  %i.gg = icmp eq i8 %i.gf, -1
  br i1 %i.gg, label %5, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

5:                                                ; preds = %bb.v
  %6 = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i: ; preds = %5, %bb.v
  %.0.i.i.i.i = phi ptr [ %7, %5 ], [ %i.gd, %bb.v ]
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #9, !inline_history !600
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i, label %bb.q, !llvm.loop !604

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i: ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %thread-pre-split15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSA_6X86_64EEEvRNSA_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSE_RT0_RNS1_14execution_dataE.exit

_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSA_6X86_64EEEvRNSA_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSE_RT0_RNS1_14execution_dataE.exit: ; preds = %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIlEELh8EED2Ev.exit.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gi = load ptr, ptr %i.gh, align 16, !tbaa !96 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !100
  %i.gl = load ptr, ptr %0, align 64, !tbaa !18
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #9, !inline_history !6
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.go = atomicrmw sub ptr %i.gn, i32 1 seq_cst, align 4
  %i.gp = add i32 %i.go, -1
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSA_6X86_64EEEvRNSA_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSE_RT0_RNS1_14execution_dataE.exit, %bb.w
  %.019.i.i = phi ptr [ %i.gr, %bb.w ], [ %i.gi, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSA_6X86_64EEEvRNSA_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSE_RT0_RNS1_14execution_dataE.exit ] ; 5 uses
  %i.gr = load ptr, ptr %.019.i.i, align 8, !tbaa !102 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !100
  %i.gu = inttoptr i64 %i.gt to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.gu, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = atomicrmw sub ptr %i.gv, i32 1 seq_cst, align 4
  %i.gx = add i32 %i.gw, -1
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.ha = atomicrmw sub ptr %i.gz, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.ha, 1
  br i1 %.not.i.i.i.i, label %bb.y, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.y:                                             ; preds = %bb.x
  %i.hb = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.hc = ptrtoint ptr %i.hb to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.hc) #9
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.w, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINSA_6X86_64EEEvRNSA_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEEES8_EEvRSE_RT0_RNS1_14execution_dataE.exit, %bb.x, %bb.y
  %i.hd = inttoptr i64 %i.gk to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.hd, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !96  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !100
  %i.e = load ptr, ptr %0, align 64, !tbaa !18
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #9, !inline_history !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !102 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #9
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #9
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEENS1_25parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS6_6X86_64EEEvRNS6_7ContextIT_EEEUllE_lEEKNS1_16auto_partitionerEE8run_bodyERS4_(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(144) %0, i64 %.0.val, i64 %.8.val) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load i64, ptr %i.b, align 8, !tbaa !613  ; 2 uses
  %i.d = icmp slt i64 %.8.val, %.0.val
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d125parallel_for_body_wrapperIZN4moldL28create_comdat_group_sectionsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUllE_lEEJRNS3_13blocked_rangeIlEEEEENSt13invoke_resultIS9_JDpT0_EE4typeEOS9_DpOSK_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 32, !tbaa !614
  %i.g = mul nsw i64 %i.c, %.8.val
  %i.h = add nsw i64 %i.f, %i.g
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.03.i.i.i.i.i = phi i64 [ %i.gn, %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i ], [ %.8.val, %.lr.ph.preheader.i.i.i.i.i ]
  %storemerge2.i.i.i.i.i = phi i64 [ %i.go, %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !615, !nonnull !109, !align !113 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !617, !nonnull !109, !align !113
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 13088
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %storemerge2.i.i.i.i.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !144  ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 592
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !619  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 600
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !619  ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %_ZN3tbb6detail2d06invokeIRKZN4moldL28create_comdat_group_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUllE_JRlEEENSt13invoke_resultIS7_JDpT0_EE4typeEOS7_DpOSF_.exit.i.i.i.i.i, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i

.lr.ph91.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 448 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 360 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 368 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i, %.lr.ph91.i.i.i.i.i.i.i.i.i.i
  %.sroa.073.089.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph91.i.i.i.i.i.i.i.i.i.i ], [ %i.gl, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.073.089.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EED2Ev.exit24.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr %.sroa.073.089.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !621
  %i.ae = sext i32 %i.ad to i64
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !622
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.af, i64 %i.ae ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.ah, align 1
  %i.ai = zext i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !168
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !170 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.al, 0
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sext i32 %i.al to i64
  %i.ao = shl nsw i64 %i.an, 2
  %i.ap = add nsw i64 %i.ao, %i.am
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i, ptr null, ptr %i.aq
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !623
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !625
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.0.copyload.i5.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 1
  %.idx.i.i.i.i.i.i.i.i.i.i = and i64 %.0.copyload.i5.i.i.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.az = icmp eq i64 %.idx.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.az, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.c
  %.sroa.056.082.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.061.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %.sroa.061.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %.sroa.10.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.17.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.c ], [ %.sroa.17.1.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIPN4mold5ChunkINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit35.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = load ptr, ptr %i.aa, align 8, !tbaa !626, !nonnull !109, !align !113
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !80
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %storemerge2.i.i.i.i.i ; 4 uses
  %i.bd = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #16 ; 16 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, i8 0, i64 48, i1 false)
end_hunk_2
