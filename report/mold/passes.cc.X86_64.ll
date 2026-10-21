Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEED0Ev:bb.a
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %3 = alloca %"class.tbb::detail::d1::range_vector.1153", align 8 ; 4 uses
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1125 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16 ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !744
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !744
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !1126
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !1218
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !1218
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !743
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !743
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !1160 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !1161 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1162 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !744 ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !743 ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !743
  store i64 0, ptr %i.g, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !3052 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.al, align 64, !tbaa !170
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !1161 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !1161
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !1162 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !1161
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !1162
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !1160
  store i64 %i.av, ptr %i.au, align 16, !tbaa !1160
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !3062
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !1218
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !744
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !744
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !744
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !742
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !743
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !743
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !745
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !3053 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !1127
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !747
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !748
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !745
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !721
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !1218
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !1218
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #16, !inline_history !3053
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !1160 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !1161 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !1162 ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !744 ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !743 ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !743
  store i64 0, ptr %i.g, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !3054

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit
  %.pre-phi.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %i.bv = phi i64 [ %i.aa, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %i.bw = phi i64 [ %i.y, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bx = phi i64 [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_L20parse_input_sectionsISH_EEvRNSF_7ContextIT_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.by = icmp ult i64 %i.bx, %.pre-phi.i
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !743
  %.not.i12.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n, %.critedge.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.bw
  br i1 %.not1.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L20parse_input_sectionsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.p

bb.p:                                             ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dt, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 32, !tbaa !3063, !nonnull !599, !align !600 ; 3 uses
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !1181
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %.02.i.i.i.i.i.i.i.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !299 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.ci = load atomic i8, ptr %i.ch monotonic, align 1, !range !613, !noundef !599
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.q, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !912
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 809
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !749, !range !613, !noundef !599
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 472
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !1220, !range !613, !noundef !599
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !3065, !nonnull !599, !align !600
  call void @_ZN4mold10ObjectFileINS_6X86_64EE21read_section_metadataERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992) %i.cg, ptr noundef nonnull align 8 dereferenceable(14448) %i.cs) #16, !inline_history !3055
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 592
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1068 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cg, i64 600
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1068 ; 2 uses
  %i.cx = icmp eq ptr %i.cu, %i.cw
  br i1 %i.cx, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 128 ; 2 uses
  %.pre15.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !tbaa !3065
  %.pre17.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !tbaa !576
  br label %bb.v

bb.v:                                             ; preds = %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %5 = phi i64 [ %.pre17.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %6, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a = phi ptr [ %.pre15.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %7, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dr, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, i64 4176
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 2147483647
  %i.dd = load ptr, ptr %i.cz, align 8, !tbaa !1221
  %i.de = zext nneg i32 %i.dc to i64
  %i.df = shl nuw nsw i64 %i.de, 2
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  %i.dh = trunc i64 %5 to i32                     ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 20 ; 2 uses
  %i.dj = load atomic i32, ptr %i.di monotonic, align 4 ; 3 uses
  %i.dk = icmp eq i32 %i.dj, -1
  %i.dl = icmp sgt i32 %i.dj, %i.dh
  %or.cond6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.dk, %i.dl
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.v, %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.do, %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dj, %bb.v ]
  %i.dm = cmpxchg weak ptr %i.di, i32 %.07.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 %i.dh monotonic monotonic, align 4 ; 2 uses
  %i.dn = extractvalue { i32, i1 } %i.dm, 1
  br i1 %i.dn, label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.do = extractvalue { i32, i1 } %i.dm, 0       ; 3 uses
  %i.dp = icmp eq i32 %i.do, -1
  %i.dq = icmp sgt i32 %i.do, %i.dh
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.dp, %i.dq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !3056

_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !tbaa !3065
  %.pre16.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !tbaa !576
  br label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v
  %6 = phi i64 [ %.pre16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %5, %bb.v ]
  %7 = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i.a, %bb.v ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.cw
  br i1 %i.ds, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i.i.i, label %bb.v

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.u, %bb.p
  %i.dt = add i64 %.02.i.i.i.i.i.i.i.i, 1         ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dt, %i.bw
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L20parse_input_sectionsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit, label %bb.p, !llvm.loop !3057

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 20 uses
  store i8 0, ptr %i.du, align 1, !tbaa !177
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !1121
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split.i.i, %bb.w
  %i.dz = phi i8 [ %i.qn, %thread-pre-split.i.i ], [ 0, %bb.w ] ; 3 uses
  %i.ea = phi i8 [ %i.qo, %thread-pre-split.i.i ], [ 1, %bb.w ] ; 13 uses
  %i.eb = phi i8 [ %i.qp, %thread-pre-split.i.i ], [ 0, %bb.w ] ; 9 uses
  %i.ec = load i8, ptr %i.bz, align 4, !tbaa !743 ; 10 uses
  %i.ed = icmp ult i8 %i.ea, 8
  br i1 %i.ed, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x
  %.phi.trans.insert.i.i.i = zext i8 %i.eb to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !177
  %i.ee = icmp ult i8 %.pre.i.i.i, %i.ec
  br i1 %i.ee, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.y:                                             ; preds = %bb.an
  %i.ef = icmp ult i8 %i.mh, %i.ec
  br i1 %i.ef, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1: ; preds = %bb.y
  %i.eg = zext nneg i8 %i.lv to i64               ; 2 uses
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.eg ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !1160
  %i.ek = load i64, ptr %i.eh, align 8, !tbaa !1161
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !1162
  %i.en = sub i64 %i.ek, %i.em
  %i.eo = icmp ult i64 %i.ej, %i.en
  br i1 %i.eo, label %bb.z, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.z:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.eg ; 2 uses
  %i.eq = add i8 %i.eb, 2
  %i.er = and i8 %i.eq, 7                         ; 5 uses
  %i.es = zext nneg i8 %i.er to i64               ; 3 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.es ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !1121
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.eu, ptr %i.eh, align 8, !tbaa !1161
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1162 ; 2 uses
  %i.ex = sub i64 %i.eu, %i.ew
  %i.ey = lshr i64 %i.ex, 1
  %i.ez = add i64 %i.ey, %i.ew                    ; 2 uses
  store i64 %i.ez, ptr %i.et, align 8, !tbaa !1161
  store i64 %i.ez, ptr %i.el, align 8, !tbaa !1162
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !1160
  store i64 %i.fb, ptr %i.ei, align 8, !tbaa !1160
  %i.fc = load i8, ptr %i.ep, align 1, !tbaa !177
  %i.fd = add i8 %i.fc, 1                         ; 3 uses
  store i8 %i.fd, ptr %i.ep, align 1, !tbaa !177
  %i.fe = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.es
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !177
  %i.ff = add nuw nsw i8 %i.ea, 2                 ; 3 uses
  %exitcond.not.i.i.i.1 = icmp eq i8 %i.ff, 8
  br i1 %exitcond.not.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.aa, !llvm.loop !37

bb.aa:                                            ; preds = %bb.z
  %i.fg = icmp ult i8 %i.fd, %i.ec
  br i1 %i.fg, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2: ; preds = %bb.aa
  %i.fh = zext nneg i8 %i.er to i64               ; 2 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.fh ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !1160
  %i.fl = load i64, ptr %i.fi, align 8, !tbaa !1161
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !1162
  %i.fo = sub i64 %i.fl, %i.fn
  %i.fp = icmp ult i64 %i.fk, %i.fo
  br i1 %i.fp, label %bb.ab, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.ab:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2
  %i.fq = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.fh ; 2 uses
  %i.fr = add i8 %i.eb, 3
  %i.fs = and i8 %i.fr, 7                         ; 5 uses
  %i.ft = zext nneg i8 %i.fs to i64               ; 3 uses
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.ft ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fu, ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 24, i1 false), !tbaa.struct !1121
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.fv, ptr %i.fi, align 8, !tbaa !1161
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !1162 ; 2 uses
  %i.fy = sub i64 %i.fv, %i.fx
  %i.fz = lshr i64 %i.fy, 1
  %i.ga = add i64 %i.fz, %i.fx                    ; 2 uses
  store i64 %i.ga, ptr %i.fu, align 8, !tbaa !1161
  store i64 %i.ga, ptr %i.fm, align 8, !tbaa !1162
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !1160
  store i64 %i.gc, ptr %i.fj, align 8, !tbaa !1160
  %i.gd = load i8, ptr %i.fq, align 1, !tbaa !177
  %i.ge = add i8 %i.gd, 1                         ; 3 uses
  store i8 %i.ge, ptr %i.fq, align 1, !tbaa !177
  %i.gf = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ft
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !177
  %i.gg = add nuw nsw i8 %i.ea, 3                 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i8 %i.gg, 8
  br i1 %exitcond.not.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.ac, !llvm.loop !37

bb.ac:                                            ; preds = %bb.ab
  %i.gh = icmp ult i8 %i.ge, %i.ec
  br i1 %i.gh, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3: ; preds = %bb.ac
  %i.gi = zext nneg i8 %i.fs to i64               ; 2 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.gi ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !1160
  %i.gm = load i64, ptr %i.gj, align 8, !tbaa !1161
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !1162
  %i.gp = sub i64 %i.gm, %i.go
  %i.gq = icmp ult i64 %i.gl, %i.gp
  br i1 %i.gq, label %bb.ad, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.ad:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gi ; 2 uses
  %i.gs = and i8 %i.eb, 7                         ; 4 uses
  %i.gt = xor i8 %i.gs, 4                         ; 8 uses
  %i.gu = zext nneg i8 %i.gt to i64               ; 3 uses
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.gu ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i64 24, i1 false), !tbaa.struct !1121
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.gw, ptr %i.gj, align 8, !tbaa !1161
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !1162 ; 2 uses
  %i.gz = sub i64 %i.gw, %i.gy
  %i.ha = lshr i64 %i.gz, 1
  %i.hb = add i64 %i.ha, %i.gy                    ; 2 uses
  store i64 %i.hb, ptr %i.gv, align 8, !tbaa !1161
  store i64 %i.hb, ptr %i.gn, align 8, !tbaa !1162
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !1160
  store i64 %i.hd, ptr %i.gk, align 8, !tbaa !1160
  %i.he = load i8, ptr %i.gr, align 1, !tbaa !177
  %i.hf = add i8 %i.he, 1                         ; 3 uses
  store i8 %i.hf, ptr %i.gr, align 1, !tbaa !177
  %i.hg = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.gu
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !177
  %i.hh = add nuw nsw i8 %i.ea, 4                 ; 3 uses
  %exitcond.not.i.i.i.3 = icmp eq i8 %i.hh, 8
  br i1 %exitcond.not.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.ae, !llvm.loop !37

bb.ae:                                            ; preds = %bb.ad
  %i.hi = icmp ult i8 %i.hf, %i.ec
  br i1 %i.hi, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4: ; preds = %bb.ae
  %i.hj = zext nneg i8 %i.gt to i64               ; 2 uses
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.hj ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !1160
  %i.hn = load i64, ptr %i.hk, align 8, !tbaa !1161
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !1162
  %i.hq = sub i64 %i.hn, %i.hp
  %i.hr = icmp ult i64 %i.hm, %i.hq
  br i1 %i.hr, label %bb.af, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.af:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.hj ; 2 uses
  %i.ht = add nuw nsw i8 %i.gt, 1
  %i.hu = and i8 %i.ht, 7                         ; 5 uses
  %i.hv = zext nneg i8 %i.hu to i64               ; 3 uses
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.hv ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.hk, i64 24, i1 false), !tbaa.struct !1121
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.hx, ptr %i.hk, align 8, !tbaa !1161
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !1162 ; 2 uses
  %i.ia = sub i64 %i.hx, %i.hz
  %i.ib = lshr i64 %i.ia, 1
  %i.ic = add i64 %i.ib, %i.hz                    ; 2 uses
  store i64 %i.ic, ptr %i.hw, align 8, !tbaa !1161
  store i64 %i.ic, ptr %i.ho, align 8, !tbaa !1162
  %i.id = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !1160
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a
  br i1 %i.kl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7: ; preds = %bb.ak
  %i.km = zext nneg i8 %i.jw to i64               ; 2 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.km ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !1160
  %i.kq = load i64, ptr %i.kn, align 8, !tbaa !1161
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 8 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !1162
  %i.kt = sub i64 %i.kq, %i.ks
  %i.ku = icmp ult i64 %i.kp, %i.kt
  br i1 %i.ku, label %bb.al, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7
  %i.kv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.km ; 2 uses
  %i.kw = zext nneg i8 %i.gs to i64               ; 3 uses
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.kw ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef nonnull align 8 dereferenceable(24) %i.kn, i64 24, i1 false), !tbaa.struct !1121
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.ky, ptr %i.kn, align 8, !tbaa !1161
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !1162 ; 2 uses
  %i.lb = sub i64 %i.ky, %i.la
  %i.lc = lshr i64 %i.lb, 1
  %i.ld = add i64 %i.lc, %i.la                    ; 2 uses
  store i64 %i.ld, ptr %i.kx, align 8, !tbaa !1161
  store i64 %i.ld, ptr %i.kr, align 8, !tbaa !1162
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !1160
  store i64 %i.lf, ptr %i.ko, align 8, !tbaa !1160
  %i.lg = load i8, ptr %i.kv, align 1, !tbaa !177
  %i.lh = add i8 %i.lg, 1                         ; 2 uses
  store i8 %i.lh, ptr %i.kv, align 1, !tbaa !177
  %i.li = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.kw
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !177
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.ea, 0
  br i1 %exitcond.not.i.i.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.am, !llvm.loop !37

bb.am:                                            ; preds = %bb.al
  %i.lj = or disjoint i8 %i.ea, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lk = zext i8 %i.eb to i64                    ; 2 uses
  %i.ll = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.lk ; 5 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16 ; 2 uses
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !1160
  %i.lo = load i64, ptr %i.ll, align 8, !tbaa !1161
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 8 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !1162
  %i.lr = sub i64 %i.lo, %i.lq
  %i.ls = icmp ult i64 %i.ln, %i.lr
  br i1 %i.ls, label %bb.an, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.an:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.lk ; 2 uses
  %i.lu = add nuw i8 %i.eb, 1
  %i.lv = and i8 %i.lu, 7                         ; 5 uses
  %i.lw = zext nneg i8 %i.lv to i64               ; 3 uses
  %i.lx = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.lw ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lx, ptr noundef nonnull align 8 dereferenceable(24) %i.ll, i64 24, i1 false), !tbaa.struct !1121
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.ly, ptr %i.ll, align 8, !tbaa !1161
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !1162 ; 2 uses
  %i.mb = sub i64 %i.ly, %i.ma
  %i.mc = lshr i64 %i.mb, 1
  %i.md = add i64 %i.mc, %i.ma                    ; 2 uses
  store i64 %i.md, ptr %i.lx, align 8, !tbaa !1161
  store i64 %i.md, ptr %i.lp, align 8, !tbaa !1162
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !1160
  store i64 %i.mf, ptr %i.lm, align 8, !tbaa !1160
  %i.mg = load i8, ptr %i.lt, align 1, !tbaa !177
  %i.mh = add i8 %i.mg, 1                         ; 3 uses
  store i8 %i.mh, ptr %i.lt, align 1, !tbaa !177
  %i.mi = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.lw
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !177
  %i.mj = add nuw nsw i8 %i.ea, 1                 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.mj, 8
  br i1 %exitcond.not.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.y, !llvm.loop !37

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, %bb.y, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, %bb.aa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, %bb.ac, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, %bb.ae, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, %bb.ag, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5, %bb.ai, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6, %bb.ak, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7, %bb.am, %.lr.ph.i.i.i, %bb.x
  %i.mk = phi i8 [ %i.ea, %bb.x ], [ %i.ea, %.lr.ph.i.i.i ], [ %i.mj, %bb.y ], [ %i.ea, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.mj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.ff, %bb.aa ], [ %i.ff, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.gg, %bb.ac ], [ %i.gg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.hh, %bb.ae ], [ %i.hh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.ii, %bb.ag ], [ %i.ii, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.jj, %bb.ai ], [ %i.jj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.kk, %bb.ak ], [ %i.kk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.lj, %bb.am ] ; 6 uses
  %i.ml = phi i8 [ %i.eb, %bb.x ], [ %i.eb, %.lr.ph.i.i.i ], [ %i.lv, %bb.y ], [ %i.eb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.lv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.er, %bb.aa ], [ %i.er, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.fs, %bb.ac ], [ %i.fs, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.gt, %bb.ae ], [ %i.gt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.hu, %bb.ag ], [ %i.hu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.iv, %bb.ai ], [ %i.iv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.jw, %bb.ak ], [ %i.jw, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.gs, %bb.am ] ; 7 uses
  %i.mm = load ptr, ptr %i.dw, align 16, !tbaa !1218
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mo = load atomic i8, ptr %i.mn monotonic, align 1, !range !613, !noundef !599
  %i.mp = trunc nuw i8 %i.mo to i1
  br i1 %i.mp, label %bb.ao, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %.pre.i = zext i8 %i.ml to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i: ; preds = %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.an
  %.lcssa62 = phi i8 [ %i.lv, %bb.an ], [ %i.er, %bb.z ], [ %i.fs, %bb.ab ], [ %i.gt, %bb.ad ], [ %i.hu, %bb.af ], [ %i.iv, %bb.ah ], [ %i.jw, %bb.aj ], [ %i.gs, %bb.al ] ; 2 uses
  %.lcssa = phi i64 [ %i.lw, %bb.an ], [ %i.es, %bb.z ], [ %i.ft, %bb.ab ], [ %i.gu, %bb.ad ], [ %i.hv, %bb.af ], [ %i.iw, %bb.ah ], [ %i.jx, %bb.aj ], [ %i.kw, %bb.al ]
  %i.mq = load ptr, ptr %i.dw, align 16, !tbaa !1218
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load atomic i8, ptr %i.mr monotonic, align 1, !range !613, !noundef !599
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %.thread73.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

.thread73.i.i:                                    ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i
  %i.mu = add i8 %i.ec, 1
  store i8 %i.mu, ptr %i.bz, align 4, !tbaa !743
  br label %.thread.i.i

bb.ao:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %i.mv = add i8 %i.ec, 1                         ; 2 uses
  store i8 %i.mv, ptr %i.bz, align 4, !tbaa !743
  %i.mw = icmp ugt i8 %i.mk, 1
  br i1 %i.mw, label %.thread.i.i, label %bb.ap

.thread.i.i:                                      ; preds = %bb.ao, %.thread73.i.i
  %i.mx = phi i8 [ 8, %.thread73.i.i ], [ %i.mk, %bb.ao ]
  %i.my = phi i8 [ %.lcssa62, %.thread73.i.i ], [ %i.ml, %bb.ao ]
  %i.mz = zext nneg i8 %i.dz to i64               ; 2 uses
  %i.na = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.mz
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !731
  %i.nd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !3058 ; 10 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ne, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.nd, align 64, !tbaa !170
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.nf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.na, i64 24, i1 false), !tbaa.struct !1121
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ng, ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i64 24, i1 false), !tbaa.struct !3062
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 112 ; 2 uses
  store ptr null, ptr %i.nh, align 16, !tbaa !1218
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 120
  %i.nj = load i64, ptr %i.g, align 8, !tbaa !744
  %i.nk = lshr i64 %i.nj, 1                       ; 2 uses
  store i64 %i.nk, ptr %i.g, align 8, !tbaa !744
  store i64 %i.nk, ptr %i.ni, align 8, !tbaa !744
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 128
  store i32 2, ptr %i.nl, align 64, !tbaa !742
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 132
  %i.nn = load i8, ptr %i.bz, align 4, !tbaa !743
  %i.no = getelementptr inbounds nuw i8, ptr %i.nd, i64 136
  %i.np = load i64, ptr %2, align 8, !tbaa !745
  store i64 %i.np, ptr %i.no, align 8, !tbaa !745
  %i.nq = sub i8 %i.nn, %i.nc
  store i8 %i.nq, ptr %i.nm, align 4, !tbaa !743
  %i.nr = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16, !inline_history !3059 ; 6 uses
  %i.ns = load ptr, ptr %i.dw, align 16, !tbaa !1127
  store ptr %i.ns, ptr %i.nr, align 8, !tbaa !747
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  store i32 2, ptr %i.nt, align 8, !tbaa !748
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nv = load i64, ptr %2, align 8, !tbaa !745
  store i64 %i.nv, ptr %i.nu, align 8, !tbaa !745
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  store i8 0, ptr %i.nw, align 8, !tbaa !721
  store ptr %i.nr, ptr %i.dw, align 16, !tbaa !1218
  store ptr %i.nr, ptr %i.nh, align 16, !tbaa !1218
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.nd, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #16, !inline_history !3059
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.nx = add i8 %i.mx, -1
  %i.ny = add nuw nsw i8 %i.dz, 1
  %i.nz = and i8 %i.ny, 7
  br label %thread-pre-split.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.oa = zext i8 %i.ml to i64                    ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !177
  %i.od = icmp ult i8 %i.oc, %i.mv
  br i1 %i.od, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.ap
  %i.oe = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.oa ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %i.og = load i64, ptr %i.of, align 8, !tbaa !1160
  %i.oh = load i64, ptr %i.oe, align 8, !tbaa !1161
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !1162
  %i.ok = sub i64 %i.oh, %i.oj
  %i.ol = icmp ult i64 %i.og, %i.ok
  br i1 %i.ol, label %thread-pre-split30.i.i, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, %bb.ap, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i
  %i.om = phi i8 [ %i.ml, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.ml, %bb.ap ], [ %i.ml, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i ], [ %.lcssa62, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.on = phi i8 [ %i.mk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.mk, %bb.ap ], [ %i.mk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i ], [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.oa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.oa, %bb.ap ], [ %.pre.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge.i_crit_edge.i ], [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %.pre-phi.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.oo, align 8, !tbaa !594 ; 2 uses
  %i.op = getelementptr i8, ptr %i.oo, i64 8
  %.val10.i.i = load i64, ptr %i.op, align 8, !tbaa !594 ; 2 uses
  %.not1.i.i.i.i.i.i13.i.i = icmp eq i64 %.val10.i.i, %.val.i.i
  br i1 %.not1.i.i.i.i.i.i13.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit27.i.i, label %.lr.ph.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i14.i.i:                         ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i16.i.i
  %.02.i.i.i.i.i.i15.i.i = phi i64 [ %i.qg, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i16.i.i ], [ %.val10.i.i, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i ] ; 2 uses
  %i.oq = load ptr, ptr %i.dy, align 32, !tbaa !3063, !nonnull !599, !align !600 ; 3 uses
  %i.or = load ptr, ptr %i.dx, align 8, !tbaa !1181
  %i.os = getelementptr inbounds [8 x i8], ptr %i.or, i64 %.02.i.i.i.i.i.i15.i.i
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !299 ; 8 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 136
  %i.ov = load atomic i8, ptr %i.ou monotonic, align 1, !range !613, !noundef !599
  %i.ow = trunc nuw i8 %i.ov to i1
  br i1 %i.ow, label %bb.aq, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i16.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i14.i.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !912
  %.not.i.i.i.i.i.i.i.i.i.i.i.i18.i.i = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i18.i.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ot, i64 809
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !749, !range !613, !noundef !599
  %i.pb = trunc nuw i8 %i.pa to i1
  br i1 %i.pb, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ot, i64 472
  %i.pd = load i8, ptr %i.pc, align 8, !tbaa !1220, !range !613, !noundef !599
  %i.pe = trunc nuw i8 %i.pd to i1
  br i1 %i.pe, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.pf = load ptr, ptr %i.oq, align 8, !tbaa !3065, !nonnull !599, !align !600
  call void @_ZN4mold10ObjectFileINS_6X86_64EE21read_section_metadataERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992) %i.ot, ptr noundef nonnull align 8 dereferenceable(14448) %i.pf) #16, !inline_history !3055
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ot, i64 592
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !1068 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ot, i64 600
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !1068 ; 2 uses
  %i.pk = icmp eq ptr %i.ph, %i.pj
  br i1 %i.pk, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i16.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.i.i:             ; preds = %bb.au
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ot, i64 128 ; 2 uses
  %.pre15.i.i.i.i.i.i.i.i.i.i.i.i20.i.i = load ptr, ptr %i.oq, align 8, !tbaa !3065
  %.pre17.i.i.i.i.i.i.i.i.i.i.i.i21.i.i = load i64, ptr %i.pl, align 8, !tbaa !576
  br label %bb.av

bb.av:                                            ; preds = %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.i.i
  %8 = phi i64 [ %.pre17.i.i.i.i.i.i.i.i.i.i.i.i21.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.i.i ], [ %9, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i ] ; 2 uses
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i20.i.i = phi ptr [ %.pre15.i.i.i.i.i.i.i.i.i.i.i.i20.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.i.i ], [ %10, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i ] ; 2 uses
  %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i22.i.i = phi ptr [ %i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i19.i.i ], [ %i.qe, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i20.i.i, i64 4176
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i22.i.i, i64 4
  %i.po = load i32, ptr %i.pn, align 4
  %i.pp = and i32 %i.po, 2147483647
  %i.pq = load ptr, ptr %i.pm, align 8, !tbaa !1221
  %i.pr = zext nneg i32 %i.pp to i64
  %i.ps = shl nuw nsw i64 %i.pr, 2
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ps
  %i.pu = trunc i64 %8 to i32                     ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 20 ; 2 uses
  %i.pw = load atomic i32, ptr %i.pv monotonic, align 4 ; 3 uses
  %i.px = icmp eq i32 %i.pw, -1
  %i.py = icmp sgt i32 %i.pw, %i.pu
  %or.cond6.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i = or i1 %i.px, %i.py
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i.i.i.i.i21.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i, label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i:           ; preds = %bb.av, %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i25.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i24.i.i = phi i32 [ %i.qb, %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i25.i.i ], [ %i.pw, %bb.av ]
  %i.pz = cmpxchg weak ptr %i.pv, i32 %.07.i.i.i.i.i.i.i.i.i.i.i.i.i24.i.i, i32 %i.pu monotonic monotonic, align 4 ; 2 uses
  %i.qa = extractvalue { i32, i1 } %i.pz, 1
  br i1 %i.qa, label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i29.i.i, label %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i25.i.i

_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i25.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i
  %i.qb = extractvalue { i32, i1 } %i.pz, 0       ; 3 uses
  %i.qc = icmp eq i32 %i.qb, -1
  %i.qd = icmp sgt i32 %i.qb, %i.pu
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i = or i1 %i.qc, %i.qd
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i26.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i, label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i29.i.i, !llvm.loop !3056

_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i29.i.i: ; preds = %_ZNKSt12__atomic_refIiLb1ELb0EE21compare_exchange_weakERiiSt12memory_orderS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i25.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i23.i.i
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i30.i.i = load ptr, ptr %i.oq, align 8, !tbaa !3065
  %.pre16.i.i.i.i.i.i.i.i.i.i.i.i31.i.i = load i64, ptr %i.pl, align 8, !tbaa !576
  br label %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i

_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i: ; preds = %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i29.i.i, %bb.av
  %9 = phi i64 [ %.pre16.i.i.i.i.i.i.i.i.i.i.i.i31.i.i, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i29.i.i ], [ %8, %bb.av ]
  %10 = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i30.i.i, %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.loopexit.i.i.i.i.i.i.i.i.i.i.i.i29.i.i ], [ %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i20.i.i, %bb.av ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.011.014.i.i.i.i.i.i.i.i.i.i.i.i22.i.i, i64 8 ; 2 uses
  %i.qf = icmp eq ptr %i.qe, %i.pj
  br i1 %i.qf, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i16.i.i, label %bb.av

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i16.i.i: ; preds = %_ZN4moldL19record_comdat_ownerINS_6X86_64EEEvRNS_6SymbolIT_EEi.exit.i.i.i.i.i.i.i.i.i.i.i.i22.i.i, %bb.au, %.lr.ph.i.i.i.i.i.i14.i.i
  %i.qg = add i64 %.02.i.i.i.i.i.i15.i.i, 1       ; 2 uses
  %.not.i.i.i.i.i.i17.i.i = icmp eq i64 %i.qg, %.val.i.i
  br i1 %.not.i.i.i.i.i.i17.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit27.i.i, label %.lr.ph.i.i.i.i.i.i14.i.i, !llvm.loop !3057

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit27.i.i: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i16.i.i, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_L20parse_input_sectionsISD_EEvRNSB_7ContextIT_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit.i.i
  %i.qh = add i8 %i.on, -1
  %i.qi = add nuw i8 %i.om, 7
  %i.qj = and i8 %i.qi, 7
  br label %thread-pre-split30.i.i

thread-pre-split30.i.i:                           ; preds = %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit27.i.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i
  %i.qk = phi i8 [ %i.qh, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit27.i.i ], [ %i.mk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ] ; 2 uses
  %i.ql = phi i8 [ %i.qj, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit27.i.i ], [ %i.ml, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ]
  %i.qm = icmp eq i8 %i.qk, 0
  br i1 %i.qm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %thread-pre-split30.i.i, %.thread.i.i
  %i.qn = phi i8 [ %i.nz, %.thread.i.i ], [ %i.dz, %thread-pre-split30.i.i ]
  %i.qo = phi i8 [ %i.nx, %.thread.i.i ], [ %i.qk, %thread-pre-split30.i.i ]
  %i.qp = phi i8 [ %i.my, %.thread.i.i ], [ %i.ql, %thread-pre-split30.i.i ]
  %i.qq = load ptr, ptr %1, align 8, !tbaa !1128  ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 15
  %i.qs = load atomic i8, ptr %i.qr monotonic, align 1
  %i.qt = icmp eq i8 %i.qs, -1
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qv = load ptr, ptr %i.qu, align 8
  %.0.i.i.i.i = select i1 %i.qt, ptr %i.qv, ptr %i.qq
  %i.qw = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #16, !inline_history !3055
  br i1 %i.qw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.x, !llvm.loop !3060

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i: ; preds = %thread-pre-split.i.i, %thread-pre-split30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L20parse_input_sectionsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit

_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L20parse_input_sectionsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL20parse_input_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEEUlPNS3_10ObjectFileIS5_EEE_E4callIRSC_NS1_11feeder_implISD_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSD_OS7_PT0_.exit.i.i.i.i.i.i.i.i, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.qy = load ptr, ptr %i.qx, align 16, !tbaa !1218 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !745
  %i.rb = load ptr, ptr %0, align 64, !tbaa !170
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #16, !inline_history !45
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.re = atomicrmw add ptr %i.rd, i32 -1 seq_cst, align 4
  %i.rf = add i32 %i.re, -1
  %i.rg = icmp sgt i32 %i.rf, 0
  br i1 %i.rg, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L20parse_input_sectionsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit, %bb.aw
  %.019.i.i = phi ptr [ %i.rh, %bb.aw ], [ %i.qy, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L20parse_input_sectionsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit ] ; 5 uses
  %i.rh = load ptr, ptr %.019.i.i, align 8, !tbaa !747 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i6, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !745
  %i.rk = inttoptr i64 %i.rj to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.rk, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.rm = atomicrmw add ptr %i.rl, i32 -1 seq_cst, align 4
  %i.rn = add i32 %i.rm, -1
  %i.ro = icmp sgt i32 %i.rn, 0
  br i1 %i.ro, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.rq = atomicrmw add ptr %i.rp, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.rq, 1
  br i1 %.not.i.i.i.i, label %bb.ay, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.ay:                                            ; preds = %bb.ax
  %i.rr = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.rs = ptrtoint ptr %i.rr to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.rs) #16
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.aw, %_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZNSD_L20parse_input_sectionsISF_EEvRNSD_7ContextIT_EEEUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE.exit, %bb.ax, %bb.ay
  %i.rt = inttoptr i64 %i.ra to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.rt, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1218 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !745
  %i.e = load ptr, ptr %0, align 64, !tbaa !170
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #16, !inline_history !45
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !747 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !745
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #16
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  ret ptr null
}

declare void @_ZN4mold10ObjectFileINS_6X86_64EE21read_section_metadataERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992), ptr noundef nonnull align 8 dereferenceable(14448)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind
define internal void @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L20parse_input_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_S9_St26random_access_iterator_tagED0Ev(ptr noundef nonnull align 64 dereferenceable(105) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #34
  ret void
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_L20parse_input_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_S9_St26random_access_iterator_tagE7executeERNS0_2d114execution_dataE(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(105) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 64, !tbaa !577 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !577 ; 2 uses
  %.not.i.i.not = icmp eq ptr %.sroa.01.0.copyload, %.sroa.02.0.copyload
  br i1 %.not.i.i.not, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEEEvRKSL_RKT0_RNS1_18task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.01.0.copyload to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = ashr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3066, !nonnull !599, !align !600 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 32, !tbaa !3067, !nonnull !599, !align !600
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !731
  %i.k = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192) #16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold10ObjectFileINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_L20parse_input_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.k, align 64, !tbaa !170
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %i.f, ptr %i.m, align 64, !tbaa !594
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !594
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !594
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %.sroa.02.0.copyload, ptr %i.n, align 8, !tbaa !577
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 32, !tbaa !672
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.q = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null) #16
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i32 0, ptr %i.s, align 64, !tbaa !742
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  store i8 5, ptr %i.t, align 4, !tbaa !743
  %i.u = shl nsw i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  store i64 %i.v, ptr %i.p, align 8, !tbaa !744
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.x = load i64, ptr %2, align 8, !tbaa !745
  store i64 %i.x, ptr %i.w, align 8, !tbaa !745
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE:bb.a

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ar = ptrtoint ptr %i.aq to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ar) #16
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZZNSF_24sort_debug_info_sectionsISH_EEvRNSF_7ContextIT_EEENKUlPNSF_13MergedSectionISH_EEE_clESW_EUlSJ_E_SJ_EEKNS1_16auto_partitionerEEEEEbRSR_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.as = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.as, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1896 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !745
  %i.e = load ptr, ptr %0, align 64, !tbaa !170
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #16, !inline_history !137
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !747 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !745
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw add ptr %i.o, i32 -1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #16
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSD_6X86_64EEESt6vectorISH_SaISH_EEEEZZNSD_24sort_debug_info_sectionsISF_EEvRNSD_7ContextIT_EEENKUlPNSD_13MergedSectionISF_EEE_clESU_EUlSH_E_SH_EEKNS1_16auto_partitionerEEES8_EEvRSP_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1160
  %i.c = load i64, ptr %2, align 8, !tbaa !1161
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1162
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !tbaa !744    ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i8, ptr %i.j, align 4, !tbaa !743   ; 2 uses
  %.not4.i = icmp eq i8 %i.k, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = add i8 %i.k, -1
  store i8 %i.l, ptr %i.j, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.u = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4570 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.u, align 64, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.n, align 64, !tbaa !1161 ; 2 uses
  store i64 %i.x, ptr %i.w, align 64, !tbaa !1161
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.z = load i64, ptr %i.o, align 8, !tbaa !1162 ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = add i64 %i.ab, %i.z                     ; 2 uses
  store i64 %i.ac, ptr %i.n, align 64, !tbaa !1161
  store i64 %i.ac, ptr %i.y, align 8, !tbaa !1162
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.ae = load i64, ptr %i.p, align 16, !tbaa !1160
  store i64 %i.ae, ptr %i.ad, align 16, !tbaa !1160
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !1899
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 112 ; 2 uses
  store ptr null, ptr %i.ag, align 16, !tbaa !1896
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  %i.ai = load i64, ptr %i.r, align 8, !tbaa !744
  %i.aj = lshr i64 %i.ai, 1                       ; 2 uses
  store i64 %i.aj, ptr %i.r, align 8, !tbaa !744
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !744
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i32 2, ptr %i.ak, align 64, !tbaa !742
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 132
  %i.am = load i8, ptr %i.s, align 4, !tbaa !743
  store i8 %i.am, ptr %i.al, align 4, !tbaa !743
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.ao = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !745
  %i.ap = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4571 ; 6 uses
  %i.aq = load ptr, ptr %i.t, align 16, !tbaa !1127
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !747
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 2, ptr %i.ar, align 8, !tbaa !748
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.at, ptr %i.as, align 8, !tbaa !745
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i8 0, ptr %i.au, align 8, !tbaa !721
  store ptr %i.ap, ptr %i.t, align 16, !tbaa !1896
  store ptr %i.ap, ptr %i.ag, align 16, !tbaa !1896
  %i.av = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.av) #16, !inline_history !4571
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !1160
  %i.ax = load i64, ptr %2, align 8, !tbaa !1161
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !1162
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.aw, %i.az
  br i1 %i.ba, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bb = load i64, ptr %0, align 8, !tbaa !744   ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, 1
  br i1 %i.bc, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !4572

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bb, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !743  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bd, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = add i8 %i.bd, -1
  store i8 %i.be, ptr %i.m, align 4, !tbaa !743
  store i64 0, ptr %0, align 8, !tbaa !744
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZZNSF_24sort_debug_info_sectionsISH_EEvRNSF_7ContextIT_EEENKUlPNSF_13MergedSectionISH_EEE_clESW_EUlSJ_E_SJ_EEKNS1_16auto_partitionerEEESA_EEvRSR_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZZNSF_24sort_debug_info_sectionsISH_EEvRNSF_7ContextIT_EEENKUlPNSF_13MergedSectionISH_EEE_clESW_EUlSJ_E_SJ_EEKNS1_16auto_partitionerEEESA_EEvRSR_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.1153", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1160
  %i.c = load i64, ptr %2, align 8, !tbaa !1161   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1162 ; 3 uses
  %i.f = sub i64 %i.c, %i.e
  %i.g = icmp ult i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !743
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.not3.i.i.i.i.i.i = icmp eq i64 %i.e, %i.c
  br i1 %.not3.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  %.pre5.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !4577
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %6 = phi ptr [ %7, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i ], [ %.pre5.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.04.i.i.i.i.i.i = phi i64 [ %i.ab, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %6, i64 %.04.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1097 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !4582
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !599, !align !600
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 812
  %i.q = load i8, ptr %i.p, align 4, !tbaa !1863, !range !613, !noundef !599
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4583 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !4583 ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !4585
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  store atomic i8 1, ptr %i.y monotonic, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !4577
  br label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i.i
  %7 = phi ptr [ %.pre.i.i.i.i.i.i, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i ], [ %6, %.lr.ph.i.i.i.i.i.i ], [ %6, %bb.d ]
  %i.ab = add i64 %.04.i.i.i.i.i.i, 1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ab, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4573

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 20 uses
  store i8 0, ptr %i.ac, align 1, !tbaa !177
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1121
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 132
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.e
  %i.ai = phi i8 [ %i.lo, %thread-pre-split ], [ 0, %bb.e ] ; 3 uses
  %i.aj = phi i8 [ %i.lp, %thread-pre-split ], [ 1, %bb.e ] ; 13 uses
  %i.ak = phi i8 [ %i.lq, %thread-pre-split ], [ 0, %bb.e ] ; 9 uses
  %i.al = load i8, ptr %i.h, align 4, !tbaa !743  ; 9 uses
  %i.am = icmp ult i8 %i.aj, 8
  br i1 %i.am, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread

.lr.ph.i:                                         ; preds = %bb.f
  %.phi.trans.insert.i = zext i8 %i.ak to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !177
  %i.an = icmp ult i8 %.pre.i, %i.al
  br i1 %i.an, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.g:                                             ; preds = %bb.v
  %i.ao = icmp ult i8 %i.iq, %i.al
  br i1 %i.ao, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1: ; preds = %bb.g
  %i.ap = zext nneg i8 %i.ie to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ap ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !1160
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !1161
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1162
  %i.aw = sub i64 %i.at, %i.av
  %i.ax = icmp ult i64 %i.as, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ap ; 2 uses
  %i.az = add i8 %i.ak, 2
  %i.ba = and i8 %i.az, 7                         ; 5 uses
  %i.bb = zext nneg i8 %i.ba to i64               ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.bb ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !1121
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !1161
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !1162 ; 2 uses
  %i.bg = sub i64 %i.bd, %i.bf
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = add i64 %i.bh, %i.bf                    ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !1161
  store i64 %i.bi, ptr %i.au, align 8, !tbaa !1162
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !1160
  store i64 %i.bk, ptr %i.ar, align 8, !tbaa !1160
  %i.bl = load i8, ptr %i.ay, align 1, !tbaa !177
  %i.bm = add i8 %i.bl, 1                         ; 3 uses
  store i8 %i.bm, ptr %i.ay, align 1, !tbaa !177
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bb
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !177
  %i.bo = add nuw nsw i8 %i.aj, 2                 ; 3 uses
  %exitcond.not.i.1 = icmp eq i8 %i.bo, 8
  br i1 %exitcond.not.i.1, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.i, !llvm.loop !37

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp ult i8 %i.bm, %i.al
  br i1 %i.bp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2: ; preds = %bb.i
  %i.bq = zext nneg i8 %i.ba to i64               ; 2 uses
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.bq ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !1160
  %i.bu = load i64, ptr %i.br, align 8, !tbaa !1161
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !1162
  %i.bx = sub i64 %i.bu, %i.bw
  %i.by = icmp ult i64 %i.bt, %i.bx
  br i1 %i.by, label %bb.j, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bq ; 2 uses
  %i.ca = add i8 %i.ak, 3
  %i.cb = and i8 %i.ca, 7                         ; 5 uses
  %i.cc = zext nneg i8 %i.cb to i64               ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.cc ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !tbaa.struct !1121
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.ce, ptr %i.br, align 8, !tbaa !1161
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !1162 ; 2 uses
  %i.ch = sub i64 %i.ce, %i.cg
  %i.ci = lshr i64 %i.ch, 1
  %i.cj = add i64 %i.ci, %i.cg                    ; 2 uses
  store i64 %i.cj, ptr %i.cd, align 8, !tbaa !1161
  store i64 %i.cj, ptr %i.bv, align 8, !tbaa !1162
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !1160
  store i64 %i.cl, ptr %i.bs, align 8, !tbaa !1160
  %i.cm = load i8, ptr %i.bz, align 1, !tbaa !177
  %i.cn = add i8 %i.cm, 1                         ; 3 uses
  store i8 %i.cn, ptr %i.bz, align 1, !tbaa !177
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cc
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !177
  %i.cp = add nuw nsw i8 %i.aj, 3                 ; 3 uses
  %exitcond.not.i.2 = icmp eq i8 %i.cp, 8
  br i1 %exitcond.not.i.2, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.k, !llvm.loop !37

bb.k:                                             ; preds = %bb.j
  %i.cq = icmp ult i8 %i.cn, %i.al
  br i1 %i.cq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3: ; preds = %bb.k
  %i.cr = zext nneg i8 %i.cb to i64               ; 2 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.cr ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1160
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !1161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !1162
  %i.cy = sub i64 %i.cv, %i.cx
  %i.cz = icmp ult i64 %i.cu, %i.cy
  br i1 %i.cz, label %bb.l, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.l:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.cr ; 2 uses
  %i.db = and i8 %i.ak, 7                         ; 4 uses
  %i.dc = xor i8 %i.db, 4                         ; 8 uses
  %i.dd = zext nneg i8 %i.dc to i64               ; 2 uses
  %i.de = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.dd ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !tbaa.struct !1121
  %i.df = load i64, ptr %i.de, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.df, ptr %i.cs, align 8, !tbaa !1161
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !1162 ; 2 uses
  %i.di = sub i64 %i.df, %i.dh
  %i.dj = lshr i64 %i.di, 1
  %i.dk = add i64 %i.dj, %i.dh                    ; 2 uses
  store i64 %i.dk, ptr %i.de, align 8, !tbaa !1161
  store i64 %i.dk, ptr %i.cw, align 8, !tbaa !1162
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !1160
  store i64 %i.dm, ptr %i.ct, align 8, !tbaa !1160
  %i.dn = load i8, ptr %i.da, align 1, !tbaa !177
  %i.do = add i8 %i.dn, 1                         ; 3 uses
  store i8 %i.do, ptr %i.da, align 1, !tbaa !177
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dd
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !177
  %i.dq = add nuw nsw i8 %i.aj, 4                 ; 3 uses
  %exitcond.not.i.3 = icmp eq i8 %i.dq, 8
  br i1 %exitcond.not.i.3, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.m, !llvm.loop !37

bb.m:                                             ; preds = %bb.l
  %i.dr = icmp ult i8 %i.do, %i.al
  br i1 %i.dr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4: ; preds = %bb.m
  %i.ds = zext nneg i8 %i.dc to i64               ; 2 uses
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ds ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !1160
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !1161
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !1162
  %i.dz = sub i64 %i.dw, %i.dy
  %i.ea = icmp ult i64 %i.dv, %i.dz
  br i1 %i.ea, label %bb.n, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.n:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ds ; 2 uses
  %i.ec = add nuw nsw i8 %i.dc, 1
  %i.ed = and i8 %i.ec, 7                         ; 5 uses
  %i.ee = zext nneg i8 %i.ed to i64               ; 2 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ee ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false), !tbaa.struct !1121
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.eg, ptr %i.dt, align 8, !tbaa !1161
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !1162 ; 2 uses
  %i.ej = sub i64 %i.eg, %i.ei
  %i.ek = lshr i64 %i.ej, 1
  %i.el = add i64 %i.ek, %i.ei                    ; 2 uses
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !1161
  store i64 %i.el, ptr %i.dx, align 8, !tbaa !1162
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !1160
  store i64 %i.en, ptr %i.du, align 8, !tbaa !1160
  %i.eo = load i8, ptr %i.eb, align 1, !tbaa !177
  %i.ep = add i8 %i.eo, 1                         ; 3 uses
  store i8 %i.ep, ptr %i.eb, align 1, !tbaa !177
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ee
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !177
  %i.er = add nuw nsw i8 %i.aj, 5                 ; 3 uses
  %exitcond.not.i.4 = icmp eq i8 %i.er, 8
  br i1 %exitcond.not.i.4, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.o, !llvm.loop !37

bb.o:                                             ; preds = %bb.n
  %i.es = icmp ult i8 %i.ep, %i.al
  br i1 %i.es, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5: ; preds = %bb.o
  %i.et = zext nneg i8 %i.ed to i64               ; 2 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.et ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !1160
  %i.ex = load i64, ptr %i.eu, align 8, !tbaa !1161
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !1162
  %i.fa = sub i64 %i.ex, %i.ez
  %i.fb = icmp ult i64 %i.ew, %i.fa
  br i1 %i.fb, label %bb.p, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.p:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.et ; 2 uses
  %i.fd = add nuw nsw i8 %i.dc, 2
  %i.fe = and i8 %i.fd, 7                         ; 5 uses
  %i.ff = zext nneg i8 %i.fe to i64               ; 2 uses
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ff ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.eu, i64 24, i1 false), !tbaa.struct !1121
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.fh, ptr %i.eu, align 8, !tbaa !1161
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !1162 ; 2 uses
  %i.fk = sub i64 %i.fh, %i.fj
  %i.fl = lshr i64 %i.fk, 1
  %i.fm = add i64 %i.fl, %i.fj                    ; 2 uses
  store i64 %i.fm, ptr %i.fg, align 8, !tbaa !1161
  store i64 %i.fm, ptr %i.ey, align 8, !tbaa !1162
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !1160
  store i64 %i.fo, ptr %i.ev, align 8, !tbaa !1160
  %i.fp = load i8, ptr %i.fc, align 1, !tbaa !177
  %i.fq = add i8 %i.fp, 1                         ; 3 uses
  store i8 %i.fq, ptr %i.fc, align 1, !tbaa !177
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ff
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !177
  %i.fs = add nuw nsw i8 %i.aj, 6                 ; 3 uses
  %exitcond.not.i.5 = icmp eq i8 %i.fs, 8
  br i1 %exitcond.not.i.5, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.q, !llvm.loop !37

bb.q:                                             ; preds = %bb.p
  %i.ft = icmp ult i8 %i.fq, %i.al
  br i1 %i.ft, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6: ; preds = %bb.q
  %i.fu = zext nneg i8 %i.fe to i64               ; 2 uses
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.fu ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !1160
  %i.fy = load i64, ptr %i.fv, align 8, !tbaa !1161
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !1162
  %i.gb = sub i64 %i.fy, %i.ga
  %i.gc = icmp ult i64 %i.fx, %i.gb
  br i1 %i.gc, label %bb.r, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.r:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.fu ; 2 uses
  %i.ge = add nuw nsw i8 %i.dc, 3
  %i.gf = and i8 %i.ge, 7                         ; 5 uses
  %i.gg = zext nneg i8 %i.gf to i64               ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.gg ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i64 24, i1 false), !tbaa.struct !1121
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.gi, ptr %i.fv, align 8, !tbaa !1161
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !1162 ; 2 uses
  %i.gl = sub i64 %i.gi, %i.gk
  %i.gm = lshr i64 %i.gl, 1
  %i.gn = add i64 %i.gm, %i.gk                    ; 2 uses
  store i64 %i.gn, ptr %i.gh, align 8, !tbaa !1161
  store i64 %i.gn, ptr %i.fz, align 8, !tbaa !1162
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !1160
  store i64 %i.gp, ptr %i.fw, align 8, !tbaa !1160
  %i.gq = load i8, ptr %i.gd, align 1, !tbaa !177
  %i.gr = add i8 %i.gq, 1                         ; 3 uses
  store i8 %i.gr, ptr %i.gd, align 1, !tbaa !177
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.gg
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !177
  %i.gt = add nuw nsw i8 %i.aj, 7                 ; 3 uses
  %exitcond.not.i.6 = icmp eq i8 %i.gt, 8
  br i1 %exitcond.not.i.6, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.s, !llvm.loop !37

bb.s:                                             ; preds = %bb.r
  %i.gu = icmp ult i8 %i.gr, %i.al
  br i1 %i.gu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7: ; preds = %bb.s
  %i.gv = zext nneg i8 %i.gf to i64               ; 2 uses
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.gv ; 5 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !1160
  %i.gz = load i64, ptr %i.gw, align 8, !tbaa !1161
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !1162
  %i.hc = sub i64 %i.gz, %i.hb
  %i.hd = icmp ult i64 %i.gy, %i.hc
  br i1 %i.hd, label %bb.t, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.t:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7
  %i.he = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.gv ; 2 uses
  %i.hf = zext nneg i8 %i.db to i64               ; 2 uses
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.hf ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, i64 24, i1 false), !tbaa.struct !1121
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.hh, ptr %i.gw, align 8, !tbaa !1161
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !1162 ; 2 uses
  %i.hk = sub i64 %i.hh, %i.hj
  %i.hl = lshr i64 %i.hk, 1
  %i.hm = add i64 %i.hl, %i.hj                    ; 2 uses
  store i64 %i.hm, ptr %i.hg, align 8, !tbaa !1161
  store i64 %i.hm, ptr %i.ha, align 8, !tbaa !1162
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !1160
  store i64 %i.ho, ptr %i.gx, align 8, !tbaa !1160
  %i.hp = load i8, ptr %i.he, align 1, !tbaa !177
  %i.hq = add i8 %i.hp, 1                         ; 2 uses
  store i8 %i.hq, ptr %i.he, align 1, !tbaa !177
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.hf
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !177
  %exitcond.not.i.7 = icmp eq i8 %i.aj, 0
  br i1 %exitcond.not.i.7, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.u, !llvm.loop !37

bb.u:                                             ; preds = %bb.t
  %i.hs = or disjoint i8 %i.aj, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i
  %i.ht = zext i8 %i.ak to i64                    ; 2 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ht ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !1160
  %i.hx = load i64, ptr %i.hu, align 8, !tbaa !1161
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !1162
  %i.ia = sub i64 %i.hx, %i.hz
  %i.ib = icmp ult i64 %i.hw, %i.ia
  br i1 %i.ib, label %bb.v, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a

bb.v:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ht ; 2 uses
  %i.id = add nuw i8 %i.ak, 1
  %i.ie = and i8 %i.id, 7                         ; 5 uses
  %i.if = zext nneg i8 %i.ie to i64               ; 2 uses
  %i.ig = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.if ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 24, i1 false), !tbaa.struct !1121
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !1161 ; 2 uses
  store i64 %i.ih, ptr %i.hu, align 8, !tbaa !1161
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !1162 ; 2 uses
  %i.ik = sub i64 %i.ih, %i.ij
  %i.il = lshr i64 %i.ik, 1
  %i.im = add i64 %i.il, %i.ij                    ; 2 uses
  store i64 %i.im, ptr %i.ig, align 8, !tbaa !1161
  store i64 %i.im, ptr %i.hy, align 8, !tbaa !1162
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.io = load i64, ptr %i.in, align 8, !tbaa !1160
  store i64 %i.io, ptr %i.hv, align 8, !tbaa !1160
  %i.ip = load i8, ptr %i.ic, align 1, !tbaa !177
  %i.iq = add i8 %i.ip, 1                         ; 3 uses
  store i8 %i.iq, ptr %i.ic, align 1, !tbaa !177
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.if
  store i8 %i.iq, ptr %i.ir, align 1, !tbaa !177
  %i.is = add nuw nsw i8 %i.aj, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.is, 8
  br i1 %exitcond.not.i, label %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, label %bb.g, !llvm.loop !37

._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa = phi i8 [ %i.ie, %bb.v ], [ %i.ba, %bb.h ], [ %i.cb, %bb.j ], [ %i.dc, %bb.l ], [ %i.ed, %bb.n ], [ %i.fe, %bb.p ], [ %i.gf, %bb.r ], [ %i.db, %bb.t ]
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a, !llvm.loop !37

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a: ; preds = %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7, %bb.u, %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge, %.lr.ph.i
  %i.it = phi i8 [ 8, %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge ], [ %i.aj, %.lr.ph.i ], [ %i.aj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ], [ %i.is, %bb.g ], [ %i.is, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.bo, %bb.i ], [ %i.bo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.cp, %bb.k ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.dq, %bb.m ], [ %i.dq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.er, %bb.o ], [ %i.er, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.fs, %bb.q ], [ %i.fs, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.gt, %bb.s ], [ %i.gt, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.hs, %bb.u ] ; 2 uses
  %i.iu = phi i8 [ %.lcssa, %._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.loopexit_crit_edge ], [ %i.ak, %.lr.ph.i ], [ %i.ak, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ], [ %i.ie, %bb.g ], [ %i.ie, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.ba, %bb.i ], [ %i.ba, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.cb, %bb.k ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.dc, %bb.m ], [ %i.dc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.ed, %bb.o ], [ %i.ed, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.fe, %bb.q ], [ %i.fe, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.gf, %bb.s ], [ %i.gf, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.db, %bb.u ] ; 2 uses
  store i8 %i.iu, ptr %5, align 8
  store i8 %i.it, ptr %8, align 2
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a, %bb.f
  %9 = phi i8 [ %i.it, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a ], [ %i.aj, %bb.f ] ; 4 uses
  %10 = phi i8 [ %i.iu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.a ], [ %i.ak, %bb.f ] ; 5 uses
  %i.iv = load ptr, ptr %i.ae, align 16, !tbaa !1896
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load atomic i8, ptr %i.iw monotonic, align 1, !range !613, !noundef !599
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %.pre = zext i8 %10 to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.iz = add i8 %i.al, 1                         ; 2 uses
  store i8 %i.iz, ptr %i.h, align 4, !tbaa !743
  %i.ja = icmp ugt i8 %9, 1
  br i1 %i.ja, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.jb = zext nneg i8 %i.ai to i64               ; 2 uses
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.jb
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8, !tbaa !731
  %i.jf = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4574 ; 10 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jg, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.jf, align 64, !tbaa !170
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %i.jc, i64 24, i1 false), !tbaa.struct !1121
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1899
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 112 ; 2 uses
  store ptr null, ptr %i.jj, align 16, !tbaa !1896
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 120
  %i.jl = load i64, ptr %i.ag, align 8, !tbaa !744
  %i.jm = lshr i64 %i.jl, 1                       ; 2 uses
  store i64 %i.jm, ptr %i.ag, align 8, !tbaa !744
  store i64 %i.jm, ptr %i.jk, align 8, !tbaa !744
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jf, i64 128
  store i32 2, ptr %i.jn, align 64, !tbaa !742
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 132
  %i.jp = load i8, ptr %i.ah, align 4, !tbaa !743
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jf, i64 136
  %i.jr = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.jr, ptr %i.jq, align 8, !tbaa !745
  %i.js = sub i8 %i.jp, %i.je
  store i8 %i.js, ptr %i.jo, align 4, !tbaa !743
  %i.jt = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #16, !inline_history !4575 ; 6 uses
  %i.ju = load ptr, ptr %i.ae, align 16, !tbaa !1127
  store ptr %i.ju, ptr %i.jt, align 8, !tbaa !747
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 2, ptr %i.jv, align 8, !tbaa !748
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jx = load i64, ptr %4, align 8, !tbaa !745
  store i64 %i.jx, ptr %i.jw, align 8, !tbaa !745
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store i8 0, ptr %i.jy, align 8, !tbaa !721
  store ptr %i.jt, ptr %i.ae, align 16, !tbaa !1896
  store ptr %i.jt, ptr %i.jj, align 16, !tbaa !1896
  %i.jz = load ptr, ptr %3, align 8, !tbaa !1128
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.jf, ptr noundef nonnull align 8 dereferenceable(128) %i.jz) #16, !inline_history !4575
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ka = add i8 %9, -1
  %i.kb = add nuw nsw i8 %i.ai, 1
  %i.kc = and i8 %i.kb, 7
  br label %thread-pre-split

bb.x:                                             ; preds = %bb.w
  %i.kd = zext i8 %10 to i64                      ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !177
  %i.kg = icmp ult i8 %i.kf, %i.iz
  br i1 %i.kg, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.kd ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !1160
  %i.kk = load i64, ptr %i.kh, align 8, !tbaa !1161
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !1162
  %i.kn = sub i64 %i.kk, %i.km
  %i.ko = icmp ult i64 %i.kj, %i.kn
  br i1 %i.ko, label %thread-pre-split23, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit_crit_edge ], [ %i.kd, %bb.x ], [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.pre-phi ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i10 = load i64, ptr %i.kp, align 8, !tbaa !594 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i11, align 8, !tbaa !594 ; 2 uses
  %.not3.i.i.i.i.i.i13 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i12, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not3.i.i.i.i.i.i13, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %.lr.ph.preheader.i.i.i.i.i.i14

.lr.ph.preheader.i.i.i.i.i.i14:                   ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit
  %.pre5.i.i.i.i.i.i15 = load ptr, ptr %i.af, align 8, !tbaa !4577
  br label %.lr.ph.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i14:                             ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16, %.lr.ph.preheader.i.i.i.i.i.i14
  %11 = phi ptr [ %12, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16 ], [ %.pre5.i.i.i.i.i.i15, %.lr.ph.preheader.i.i.i.i.i.i14 ] ; 3 uses
  %.04.i.i.i.i.i.i17 = phi i64 [ %i.lh, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16 ], [ %.sroa.2.0.copyload.i.i.i.i.i12, %.lr.ph.preheader.i.i.i.i.i.i14 ] ; 2 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %11, i64 %.04.i.i.i.i.i.i17
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !1097 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !4582
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !899, !nonnull !599, !align !600
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 812
  %i.kw = load i8, ptr %i.kv, align 4, !tbaa !1863, !range !613, !noundef !599
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.y, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i14
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !4583 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !4583 ; 2 uses
  %i.lc = icmp eq ptr %i.kz, %i.lb
  br i1 %i.lc, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i18:                 ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i18
  %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i19 = phi ptr [ %i.lf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i18 ], [ %i.kz, %bb.y ] ; 2 uses
  %i.ld = load ptr, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i19, align 8, !tbaa !4585
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 14
  store atomic i8 1, ptr %i.le monotonic, align 1
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i.i.i.i.i.i.i.i.i.i.i19, i64 8 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.lb
  br i1 %i.lg, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i18

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i18
  %.pre.i.i.i.i.i.i23 = load ptr, ptr %i.af, align 8, !tbaa !4577
  br label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i22, %bb.y, %.lr.ph.i.i.i.i.i.i14
  %12 = phi ptr [ %.pre.i.i.i.i.i.i23, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.loopexit.i.i.i.i.i.i22 ], [ %11, %.lr.ph.i.i.i.i.i.i14 ], [ %11, %bb.y ]
  %i.lh = add i64 %.04.i.i.i.i.i.i17, 1           ; 2 uses
  %.not.i.i.i.i.i.i17 = icmp eq i64 %i.lh, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not.i.i.i.i.i.i17, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20, label %.lr.ph.i.i.i.i.i.i14, !llvm.loop !4573

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i16, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZZNSB_24sort_debug_info_sectionsISD_EEvRNSB_7ContextIT_EEENKUlPNSB_13MergedSectionISD_EEE_clESS_EUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRSN_.exit
  %i.li = add i8 %9, -1
  %i.lj = add nuw i8 %10, 7
  %i.lk = and i8 %i.lj, 7
  br label %thread-pre-split23

thread-pre-split23:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20
  %i.ll = phi i8 [ %i.li, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20 ], [ %9, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.lm = phi i8 [ %i.lk, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit20 ], [ %10, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.ln = icmp eq i8 %i.ll, 0
  br i1 %i.ln, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %thread-pre-split

thread-pre-split:                                 ; preds = %.thread, %thread-pre-split23
  %i.lo = phi i8 [ %i.kc, %.thread ], [ %i.ai, %thread-pre-split23 ]
  %i.lp = phi i8 [ %i.ka, %.thread ], [ %i.ll, %thread-pre-split23 ]
  %i.lq = phi i8 [ %10, %.thread ], [ %i.lm, %thread-pre-split23 ]
  %i.lr = load ptr, ptr %3, align 8, !tbaa !1128  ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 15
  %i.lt = load atomic i8, ptr %i.ls monotonic, align 1
  %i.lu = icmp eq i8 %i.lt, -1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lw = load ptr, ptr %i.lv, align 8
  %.0.i.i = select i1 %i.lu, ptr %i.lw, ptr %i.lr
  %i.lx = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #16
  br i1 %i.lx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.f, !llvm.loop !4576

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit: ; preds = %thread-pre-split23, %thread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold16MergeableSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEENKUlPNS9_13MergedSectionISB_EEE_clESQ_EUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZZN4mold24sort_debug_info_sectionsINS3_6X86_64EEEvRNS3_7ContextIT_EEENKUlPNS3_13MergedSectionIS5_EEE_clESC_EUlPNS3_16MergeableSectionIS5_EEE_E4callIRSG_NS1_11feeder_implISH_SG_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSH_OS7_PT0_.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_EEvSH_SH_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::wait_context_vertex", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d2::for_each_root_task.2001", align 64 ; 10 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !689
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.e, align 8, !tbaa !703
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.b, align 4, !tbaa !177
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #16
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d119wait_context_vertexE, i64 16), ptr %3, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.g, align 8, !tbaa !705
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !706
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.j, align 64, !tbaa !1877
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %1, ptr %i.k, align 8, !tbaa !1877
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %3, ptr %i.l, align 16, !tbaa !708
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %5, ptr %i.m, align 8, !tbaa !710
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %2, ptr %i.n, align 32, !tbaa !672
  %i.o = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.g to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.p) #16
  br label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i

_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i: ; preds = %bb.c, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_S9_St26random_access_iterator_tagEE, i64 16), ptr %4, align 64, !tbaa !170
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit

_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit: ; preds = %bb.a, %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i
  %i.q = load atomic i8, ptr %i.c monotonic, align 1
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit
  call void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #16
  br label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_S9_St26random_access_iterator_tagED0Ev(ptr noundef nonnull align 64 dereferenceable(105) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #34
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_S9_St26random_access_iterator_tagE7executeERNS0_2d114execution_dataE(ptr noundef nonnull align 64 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %3 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 64, !tbaa !1877 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !1877 ; 2 uses
  %.not.i.i.not = icmp eq ptr %.sroa.01.0.copyload, %.sroa.02.0.copyload
  br i1 %.not.i.i.not, label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEEEvRKSL_RKT0_RNS1_18task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %.sroa.02.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.01.0.copyload to i64
  %i.e = sub i64 %i.d, %i.c
  %i.f = ashr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !4586, !nonnull !599, !align !600 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 32, !tbaa !4587, !nonnull !599, !align !600
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr null, ptr %2, align 8, !tbaa !731
  %i.k = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192) #16 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.k, align 64, !tbaa !170
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %i.f, ptr %i.m, align 64, !tbaa !594
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !tbaa !594
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 16, !tbaa !594
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  store ptr %.sroa.02.0.copyload, ptr %i.n, align 8, !tbaa !1877
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 32, !tbaa !672
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.q = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null) #16
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i32 0, ptr %i.s, align 64, !tbaa !742
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  store i8 5, ptr %i.t, align 4, !tbaa !743
  %i.u = shl nsw i64 %i.r, 1
  %i.v = and i64 %i.u, 9223372036854775806
  store i64 %i.v, ptr %i.p, align 8, !tbaa !744
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.x = load i64, ptr %2, align 8, !tbaa !745
  store i64 %i.x, ptr %i.w, align 8, !tbaa !745
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !747
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.y, align 8, !tbaa !748
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 1, ptr %i.z, align 8, !tbaa !705
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 1, ptr %i.aa, align 8, !tbaa !706
  store ptr %3, ptr %i.o, align 16, !tbaa !1905
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEEEvRKSL_RKT0_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d112parallel_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEEEvRKSL_RKT0_RNS1_18task_group_contextE.exit: ; preds = %bb.a, %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !1906, !nonnull !599, !align !600 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !170
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i32 noundef 1) #16
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E0_S9_E6cancelERNS0_2d114execution_dataE(ptr noundef nonnull align 64 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !1906, !nonnull !599, !align !600 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef 1) #16
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(144) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #34
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_24sort_debug_info_sectionsISB_EEvRNS9_7ContextIT_EEEUlSD_E0_SD_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !1125 ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
end_hunk_2
