Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/crc32?download=true
inline.NumInlined: 302
inline.NumDeleted: 207
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE":bb.a
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !46
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !107
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 16, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !45
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !45
  br label %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit": ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !108 ; 4 uses
  %i.y = load i64, ptr %i.v, align 64, !tbaa !109 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !110 ; 4 uses
  %i.ab = sub i64 %i.y, %i.aa                     ; 4 uses
  %i.ac = icmp ult i64 %i.x, %i.ab
  br i1 %i.ac, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.ae = icmp ugt i64 %i.ad, 1
  br i1 %i.ae, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !45  ; 2 uses
  %.not4.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not4.i.i, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i8 %i.ag, -1
  store i8 %i.ah, ptr %i.af, align 4, !tbaa !45
  store i64 0, ptr %i.g, align 8, !tbaa !46
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i: ; preds = %bb.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr null, ptr %4, align 8, !tbaa !40
  %i.al = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #12, !inline_history !95 ; 12 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @"_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEEE", i64 16), ptr %i.al, align 64, !tbaa !17
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = load i64, ptr %i.v, align 64, !tbaa !109 ; 2 uses
  store i64 %i.ao, ptr %i.an, align 64, !tbaa !109
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = load i64, ptr %i.z, align 8, !tbaa !110 ; 2 uses
  %i.ar = sub i64 %i.ao, %i.aq
  %i.as = lshr i64 %i.ar, 1
  %i.at = add i64 %i.as, %i.aq                    ; 2 uses
  store i64 %i.at, ptr %i.v, align 64, !tbaa !109
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.av = load i64, ptr %i.w, align 16, !tbaa !108
  store i64 %i.av, ptr %i.au, align 16, !tbaa !108
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !tbaa.struct !112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  store ptr null, ptr %i.ax, align 16, !tbaa !59
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.az = load i64, ptr %i.g, align 8, !tbaa !46
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  store i64 %i.ba, ptr %i.g, align 8, !tbaa !46
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 128
  store i32 2, ptr %i.bb, align 64, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 132
  %i.bd = load i8, ptr %i.ai, align 4, !tbaa !45
  store i8 %i.bd, ptr %i.bc, align 4, !tbaa !45
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  %i.bf = load i64, ptr %4, align 8, !tbaa !47
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !47
  %i.bg = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #12, !inline_history !96 ; 6 uses
  %i.bh = load ptr, ptr %i.ak, align 16, !tbaa !113
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 2, ptr %i.bi, align 8, !tbaa !53
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load i64, ptr %4, align 8, !tbaa !47
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i8 0, ptr %i.bl, align 8, !tbaa !115
  store ptr %i.bg, ptr %i.ak, align 16, !tbaa !59
  store ptr %i.bg, ptr %i.ax, align 16, !tbaa !59
  %.val.i.i.i = load ptr, ptr %1, align 8, !tbaa !116
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i) #12, !inline_history !96
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.bm = load i64, ptr %i.w, align 16, !tbaa !108 ; 4 uses
  %i.bn = load i64, ptr %i.v, align 64, !tbaa !109 ; 4 uses
  %i.bo = load i64, ptr %i.z, align 8, !tbaa !110 ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp ult i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i
  %i.br = load i64, ptr %i.g, align 8, !tbaa !46  ; 2 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i8.i = icmp eq i64 %i.br, 0
  br i1 %.not.i8.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.ai, align 4, !tbaa !45  ; 2 uses
  %.not4.i9.i = icmp eq i8 %i.bt, 0
  br i1 %.not4.i9.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = add i8 %i.bt, -1
  store i8 %i.bu, ptr %i.ai, align 4, !tbaa !45
  store i64 0, ptr %i.g, align 8, !tbaa !46
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i.backedge: ; preds = %bb.m, %bb.j
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, !llvm.loop !97

.critedge.i:                                      ; preds = %bb.l, %bb.k, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i, %bb.h, %bb.g, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit"
  %.pre-phi.i = phi i64 [ %i.ab, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.ab, %bb.g ], [ %i.ab, %bb.h ], [ %i.bp, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bp, %bb.k ], [ %i.bp, %bb.l ]
  %i.bv = phi i64 [ %i.aa, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ], [ %i.bo, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bo, %bb.k ], [ %i.bo, %bb.l ] ; 2 uses
  %i.bw = phi i64 [ %i.y, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.y, %bb.g ], [ %i.y, %bb.h ], [ %i.bn, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bn, %bb.k ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bx = phi i64 [ %i.x, %"_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISH_SaISH_EEEEZNSF_13compute_crc32EjSG_lE3$_0SH_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit" ], [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.bm, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.i ], [ %i.bm, %bb.k ], [ %i.bm, %bb.l ]
  %i.by = icmp ult i64 %i.bx, %.pre-phi.i
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 5 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !45
  %.not.i12.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i12.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.critedge.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.not1.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.bw
  br i1 %.not1.i.i.i.i.i.i.i.i, label %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISF_SaISF_EEEEZNSD_13compute_crc32EjSE_lE3$_0SF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit", label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i.i
  %.02.i.i.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bv, %bb.o ] ; 2 uses
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !117
  %i.cc = getelementptr inbounds [24 x i8], ptr %.val3.i.i.i.i.i.i.i.i, i64 %.02.i.i.i.i.i.i.i.i ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !118
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !30
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = call i64 @crc32(i64 noundef 0, ptr noundef %i.cd, i32 noundef %i.cg) #12, !inline_history !98
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !29
  %i.ck = add i64 %.02.i.i.i.i.i.i.i.i, 1         ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ck, %i.bw
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISF_SaISF_EEEEZNSD_13compute_crc32EjSE_lE3$_0SF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit", label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !99

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 3 ; 20 uses
  store i8 0, ptr %i.cl, align 1, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull readonly align 64 dereferenceable(24) %i.v, i64 24, i1 false), !tbaa.struct !119
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %bb.p
  %i.cp = phi i8 [ %i.nv, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.cq = phi i8 [ %i.nw, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 1, %bb.p ] ; 13 uses
  %i.cr = phi i8 [ %i.nx, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i ], [ 0, %bb.p ] ; 9 uses
  %i.cs = load i8, ptr %i.bz, align 4, !tbaa !45  ; 10 uses
  %i.ct = icmp ult i8 %i.cq, 8
  br i1 %i.ct, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q
  %.phi.trans.insert.i.i.i = zext i8 %i.cr to i64
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.phi.trans.insert.i.i.i
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert6.i.i.i, align 1, !tbaa !15
  %i.cu = icmp ult i8 %.pre.i.i.i, %i.cs
  br i1 %i.cu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.r:                                             ; preds = %bb.ag
  %i.cv = icmp ult i8 %i.kx, %i.cs
  br i1 %i.cv, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1: ; preds = %bb.r
  %i.cw = zext nneg i8 %i.kl to i64               ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.cw ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !108
  %i.da = load i64, ptr %i.cx, align 8, !tbaa !109
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !110
  %i.dd = sub i64 %i.da, %i.dc
  %i.de = icmp ult i64 %i.cz, %i.dd
  br i1 %i.de, label %bb.s, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.s:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1
  %i.df = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cw ; 2 uses
  %i.dg = add i8 %i.cr, 2
  %i.dh = and i8 %i.dg, 7                         ; 5 uses
  %i.di = zext nneg i8 %i.dh to i64               ; 3 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.di ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !119
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !109 ; 2 uses
  store i64 %i.dk, ptr %i.cx, align 8, !tbaa !109
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !110 ; 2 uses
  %i.dn = sub i64 %i.dk, %i.dm
  %i.do = lshr i64 %i.dn, 1
  %i.dp = add i64 %i.do, %i.dm                    ; 2 uses
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !109
  store i64 %i.dp, ptr %i.db, align 8, !tbaa !110
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !108
  store i64 %i.dr, ptr %i.cy, align 8, !tbaa !108
  %i.ds = load i8, ptr %i.df, align 1, !tbaa !15
  %i.dt = add i8 %i.ds, 1                         ; 3 uses
  store i8 %i.dt, ptr %i.df, align 1, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.di
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !15
  %i.dv = add nuw nsw i8 %i.cq, 2                 ; 3 uses
  %exitcond.not.i.i.i.1 = icmp eq i8 %i.dv, 8
  br i1 %exitcond.not.i.i.i.1, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.t, !llvm.loop !100

bb.t:                                             ; preds = %bb.s
  %i.dw = icmp ult i8 %i.dt, %i.cs
  br i1 %i.dw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2: ; preds = %bb.t
  %i.dx = zext nneg i8 %i.dh to i64               ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.dx ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !108
  %i.eb = load i64, ptr %i.dy, align 8, !tbaa !109
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !110
  %i.ee = sub i64 %i.eb, %i.ed
  %i.ef = icmp ult i64 %i.ea, %i.ee
  br i1 %i.ef, label %bb.u, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.u:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dx ; 2 uses
  %i.eh = add i8 %i.cr, 3
  %i.ei = and i8 %i.eh, 7                         ; 5 uses
  %i.ej = zext nneg i8 %i.ei to i64               ; 3 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ej ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i64 24, i1 false), !tbaa.struct !119
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !109 ; 2 uses
  store i64 %i.el, ptr %i.dy, align 8, !tbaa !109
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !110 ; 2 uses
  %i.eo = sub i64 %i.el, %i.en
  %i.ep = lshr i64 %i.eo, 1
  %i.eq = add i64 %i.ep, %i.en                    ; 2 uses
  store i64 %i.eq, ptr %i.ek, align 8, !tbaa !109
  store i64 %i.eq, ptr %i.ec, align 8, !tbaa !110
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !108
  store i64 %i.es, ptr %i.dz, align 8, !tbaa !108
  %i.et = load i8, ptr %i.eg, align 1, !tbaa !15
  %i.eu = add i8 %i.et, 1                         ; 3 uses
  store i8 %i.eu, ptr %i.eg, align 1, !tbaa !15
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ej
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !15
  %i.ew = add nuw nsw i8 %i.cq, 3                 ; 3 uses
  %exitcond.not.i.i.i.2 = icmp eq i8 %i.ew, 8
  br i1 %exitcond.not.i.i.i.2, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.v, !llvm.loop !100

bb.v:                                             ; preds = %bb.u
  %i.ex = icmp ult i8 %i.eu, %i.cs
  br i1 %i.ex, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3: ; preds = %bb.v
  %i.ey = zext nneg i8 %i.ei to i64               ; 2 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ey ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !108
  %i.fc = load i64, ptr %i.ez, align 8, !tbaa !109
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !110
  %i.ff = sub i64 %i.fc, %i.fe
  %i.fg = icmp ult i64 %i.fb, %i.ff
  br i1 %i.fg, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3
  %i.fh = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ey ; 2 uses
  %i.fi = and i8 %i.cr, 7                         ; 4 uses
  %i.fj = xor i8 %i.fi, 4                         ; 8 uses
  %i.fk = zext nneg i8 %i.fj to i64               ; 3 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.fk ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false), !tbaa.struct !119
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !109 ; 2 uses
  store i64 %i.fm, ptr %i.ez, align 8, !tbaa !109
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !110 ; 2 uses
  %i.fp = sub i64 %i.fm, %i.fo
  %i.fq = lshr i64 %i.fp, 1
  %i.fr = add i64 %i.fq, %i.fo                    ; 2 uses
  store i64 %i.fr, ptr %i.fl, align 8, !tbaa !109
  store i64 %i.fr, ptr %i.fd, align 8, !tbaa !110
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !108
  store i64 %i.ft, ptr %i.fa, align 8, !tbaa !108
  %i.fu = load i8, ptr %i.fh, align 1, !tbaa !15
  %i.fv = add i8 %i.fu, 1                         ; 3 uses
  store i8 %i.fv, ptr %i.fh, align 1, !tbaa !15
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.fk
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !15
  %i.fx = add nuw nsw i8 %i.cq, 4                 ; 3 uses
  %exitcond.not.i.i.i.3 = icmp eq i8 %i.fx, 8
  br i1 %exitcond.not.i.i.i.3, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.x, !llvm.loop !100

bb.x:                                             ; preds = %bb.w
  %i.fy = icmp ult i8 %i.fv, %i.cs
  br i1 %i.fy, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4: ; preds = %bb.x
  %i.fz = zext nneg i8 %i.fj to i64               ; 2 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.fz ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !108
  %i.gd = load i64, ptr %i.ga, align 8, !tbaa !109
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !110
  %i.gg = sub i64 %i.gd, %i.gf
  %i.gh = icmp ult i64 %i.gc, %i.gg
  br i1 %i.gh, label %bb.y, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.y:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.fz ; 2 uses
  %i.gj = add nuw nsw i8 %i.fj, 1
  %i.gk = and i8 %i.gj, 7                         ; 5 uses
  %i.gl = zext nneg i8 %i.gk to i64               ; 3 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.gl ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !tbaa.struct !119
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !109 ; 2 uses
  store i64 %i.gn, ptr %i.ga, align 8, !tbaa !109
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !110 ; 2 uses
  %i.gq = sub i64 %i.gn, %i.gp
  %i.gr = lshr i64 %i.gq, 1
  %i.gs = add i64 %i.gr, %i.gp                    ; 2 uses
  store i64 %i.gs, ptr %i.gm, align 8, !tbaa !109
  store i64 %i.gs, ptr %i.ge, align 8, !tbaa !110
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !108
  store i64 %i.gu, ptr %i.gb, align 8, !tbaa !108
  %i.gv = load i8, ptr %i.gi, align 1, !tbaa !15
  %i.gw = add i8 %i.gv, 1                         ; 3 uses
  store i8 %i.gw, ptr %i.gi, align 1, !tbaa !15
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.gl
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !15
  %i.gy = add nuw nsw i8 %i.cq, 5                 ; 3 uses
  %exitcond.not.i.i.i.4 = icmp eq i8 %i.gy, 8
  br i1 %exitcond.not.i.i.i.4, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.z, !llvm.loop !100

bb.z:                                             ; preds = %bb.y
  %i.gz = icmp ult i8 %i.gw, %i.cs
  br i1 %i.gz, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5: ; preds = %bb.z
  %i.ha = zext nneg i8 %i.gk to i64               ; 2 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ha ; 5 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !108
  %i.he = load i64, ptr %i.hb, align 8, !tbaa !109
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !110
  %i.hh = sub i64 %i.he, %i.hg
end_hunk_0
begin_hunk_1_@"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE":bb.a
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.jm
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !15
  %exitcond.not.i.i.i.7 = icmp eq i8 %i.cq, 0
  br i1 %exitcond.not.i.i.i.7, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.af, !llvm.loop !100

bb.af:                                            ; preds = %bb.ae
  %i.jz = or disjoint i8 %i.cq, 8
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ka = zext i8 %i.cr to i64                    ; 2 uses
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.ka ; 5 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !108
  %i.ke = load i64, ptr %i.kb, align 8, !tbaa !109
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !110
  %i.kh = sub i64 %i.ke, %i.kg
  %i.ki = icmp ult i64 %i.kd, %i.kh
  br i1 %i.ki, label %bb.ag, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i

bb.ag:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ka ; 2 uses
  %i.kk = add nuw i8 %i.cr, 1
  %i.kl = and i8 %i.kk, 7                         ; 5 uses
  %i.km = zext nneg i8 %i.kl to i64               ; 3 uses
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.km ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull align 8 dereferenceable(24) %i.kb, i64 24, i1 false), !tbaa.struct !119
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !109 ; 2 uses
  store i64 %i.ko, ptr %i.kb, align 8, !tbaa !109
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !110 ; 2 uses
  %i.kr = sub i64 %i.ko, %i.kq
  %i.ks = lshr i64 %i.kr, 1
  %i.kt = add i64 %i.ks, %i.kq                    ; 2 uses
  store i64 %i.kt, ptr %i.kn, align 8, !tbaa !109
  store i64 %i.kt, ptr %i.kf, align 8, !tbaa !110
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !108
  store i64 %i.kv, ptr %i.kc, align 8, !tbaa !108
  %i.kw = load i8, ptr %i.kj, align 1, !tbaa !15
  %i.kx = add i8 %i.kw, 1                         ; 3 uses
  store i8 %i.kx, ptr %i.kj, align 1, !tbaa !15
  %i.ky = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.km
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !15
  %i.kz = add nuw nsw i8 %i.cq, 1                 ; 3 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.kz, 8
  br i1 %exitcond.not.i.i.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, label %bb.r, !llvm.loop !100

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i, %bb.r, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1, %bb.t, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2, %bb.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4, %bb.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5, %bb.ab, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6, %bb.ad, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7, %bb.af, %.lr.ph.i.i.i, %bb.q
  %i.la = phi i8 [ %i.cq, %bb.q ], [ %i.cq, %.lr.ph.i.i.i ], [ %i.kz, %bb.r ], [ %i.cq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.kz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.dv, %bb.t ], [ %i.dv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.ew, %bb.v ], [ %i.ew, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.fx, %bb.x ], [ %i.fx, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.gy, %bb.z ], [ %i.gy, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.hz, %bb.ab ], [ %i.hz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.ja, %bb.ad ], [ %i.ja, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.jz, %bb.af ] ; 6 uses
  %i.lb = phi i8 [ %i.cr, %bb.q ], [ %i.cr, %.lr.ph.i.i.i ], [ %i.kl, %bb.r ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i ], [ %i.kl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.1 ], [ %i.dh, %bb.t ], [ %i.dh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.2 ], [ %i.ei, %bb.v ], [ %i.ei, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.3 ], [ %i.fj, %bb.x ], [ %i.fj, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.4 ], [ %i.gk, %bb.z ], [ %i.gk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.5 ], [ %i.hl, %bb.ab ], [ %i.hl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.6 ], [ %i.im, %bb.ad ], [ %i.im, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i.i.7 ], [ %i.fi, %bb.af ] ; 7 uses
  %i.lc = load ptr, ptr %i.cn, align 16, !tbaa !59
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load atomic i8, ptr %i.ld monotonic, align 1, !range !120, !noundef !36
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %bb.ah, label %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i"

"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i": ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %.pre.i = zext i8 %i.lb to i64
  br label %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i"

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i: ; preds = %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.ag
  %.lcssa54 = phi i8 [ %i.kl, %bb.ag ], [ %i.dh, %bb.s ], [ %i.ei, %bb.u ], [ %i.fj, %bb.w ], [ %i.gk, %bb.y ], [ %i.hl, %bb.aa ], [ %i.im, %bb.ac ], [ %i.fi, %bb.ae ] ; 2 uses
  %.lcssa = phi i64 [ %i.km, %bb.ag ], [ %i.di, %bb.s ], [ %i.ej, %bb.u ], [ %i.fk, %bb.w ], [ %i.gl, %bb.y ], [ %i.hm, %bb.aa ], [ %i.in, %bb.ac ], [ %i.jm, %bb.ae ]
  %i.lg = load ptr, ptr %i.cn, align 16, !tbaa !59
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.li = load atomic i8, ptr %i.lh monotonic, align 1, !range !120, !noundef !36
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %.thread56.i.i, label %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i"

.thread56.i.i:                                    ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i
  %i.lk = add i8 %i.cs, 1
  store i8 %i.lk, ptr %i.bz, align 4, !tbaa !45
  br label %.thread.i.i

bb.ah:                                            ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i.i
  %i.ll = add i8 %i.cs, 1                         ; 2 uses
  store i8 %i.ll, ptr %i.bz, align 4, !tbaa !45
  %i.lm = icmp ugt i8 %i.la, 1
  br i1 %i.lm, label %.thread.i.i, label %bb.ai

.thread.i.i:                                      ; preds = %bb.ah, %.thread56.i.i
  %i.ln = phi i8 [ 8, %.thread56.i.i ], [ %i.la, %bb.ah ]
  %i.lo = phi i8 [ %.lcssa54, %.thread56.i.i ], [ %i.lb, %bb.ah ]
  %i.lp = zext nneg i8 %i.cp to i64               ; 2 uses
  %i.lq = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.lp
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr null, ptr %2, align 8, !tbaa !40
  %i.lt = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #12, !inline_history !101 ; 10 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lu, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @"_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEEE", i64 16), ptr %i.lt, align 64, !tbaa !17
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.lv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.lq, i64 24, i1 false), !tbaa.struct !119
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lw, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !tbaa.struct !112
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 112 ; 2 uses
  store ptr null, ptr %i.lx, align 16, !tbaa !59
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 120
  %i.lz = load i64, ptr %i.g, align 8, !tbaa !46
  %i.ma = lshr i64 %i.lz, 1                       ; 2 uses
  store i64 %i.ma, ptr %i.g, align 8, !tbaa !46
  store i64 %i.ma, ptr %i.ly, align 8, !tbaa !46
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lt, i64 128
  store i32 2, ptr %i.mb, align 64, !tbaa !44
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lt, i64 132
  %i.md = load i8, ptr %i.bz, align 4, !tbaa !45
  %i.me = getelementptr inbounds nuw i8, ptr %i.lt, i64 136
  %i.mf = load i64, ptr %2, align 8, !tbaa !47
  store i64 %i.mf, ptr %i.me, align 8, !tbaa !47
  %i.mg = sub i8 %i.md, %i.ls
  store i8 %i.mg, ptr %i.mc, align 4, !tbaa !45
  %i.mh = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #12, !inline_history !102 ; 6 uses
  %i.mi = load ptr, ptr %i.cn, align 16, !tbaa !113
  store ptr %i.mi, ptr %i.mh, align 8, !tbaa !52
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store i32 2, ptr %i.mj, align 8, !tbaa !53
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.ml = load i64, ptr %2, align 8, !tbaa !47
  store i64 %i.ml, ptr %i.mk, align 8, !tbaa !47
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  store i8 0, ptr %i.mm, align 8, !tbaa !115
  store ptr %i.mh, ptr %i.cn, align 16, !tbaa !59
  store ptr %i.mh, ptr %i.lx, align 16, !tbaa !59
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !116
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.lt, ptr noundef nonnull align 8 dereferenceable(128) %.val.i.i.i.i) #12, !inline_history !102
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.mn = add i8 %i.ln, -1
  %i.mo = add nuw nsw i8 %i.cp, 1
  %i.mp = and i8 %i.mo, 7
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mq = zext i8 %i.lb to i64                    ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !15
  %i.mt = icmp ult i8 %i.ms, %i.ll
  br i1 %i.mt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, label %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i"

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i: ; preds = %bb.ai
  %i.mu = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %i.mq ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !108
  %i.mx = load i64, ptr %i.mu, align 8, !tbaa !109
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !110
  %i.na = sub i64 %i.mx, %i.mz
  %i.nb = icmp ult i64 %i.mw, %i.na
  br i1 %i.nb, label %thread-pre-split21.i.i, label %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i"

"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i": ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i, %bb.ai, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i"
  %i.nc = phi i8 [ %i.lb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.lb, %bb.ai ], [ %i.lb, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i" ], [ %.lcssa54, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.nd = phi i8 [ %i.la, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.la, %bb.ai ], [ %i.la, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i" ], [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %.pre-phi.i.i = phi i64 [ %i.mq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ], [ %i.mq, %bb.ai ], [ %.pre.i, %"_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.i._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge.i_crit_edge.i" ], [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread.i.i ]
  %i.ne = getelementptr inbounds nuw [24 x i8], ptr %i.cm, i64 %.pre-phi.i.i ; 2 uses
  %.val.i.i = load i64, ptr %i.ne, align 8, !tbaa !12 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 8
  %.val10.i.i = load i64, ptr %i.nf, align 8, !tbaa !12 ; 2 uses
  %.not1.i.i.i.i.i.i13.i.i = icmp eq i64 %.val10.i.i, %.val.i.i
  br i1 %.not1.i.i.i.i.i.i13.i.i, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit18.i.i", label %.lr.ph.i.i.i.i.i.i14.i.i

.lr.ph.i.i.i.i.i.i14.i.i:                         ; preds = %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i", %.lr.ph.i.i.i.i.i.i14.i.i
  %.02.i.i.i.i.i.i15.i.i = phi i64 [ %i.no, %.lr.ph.i.i.i.i.i.i14.i.i ], [ %.val10.i.i, %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i" ] ; 2 uses
  %.val3.i.i.i.i.i.i16.i.i = load ptr, ptr %i.co, align 8, !tbaa !117
  %i.ng = getelementptr inbounds [24 x i8], ptr %.val3.i.i.i.i.i.i16.i.i, i64 %.02.i.i.i.i.i.i15.i.i ; 3 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !118
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !30
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = call i64 @crc32(i64 noundef 0, ptr noundef %i.nh, i32 noundef %i.nk) #12, !inline_history !98
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store i32 %i.nm, ptr %i.nn, align 8, !tbaa !29
  %i.no = add i64 %.02.i.i.i.i.i.i15.i.i, 1       ; 2 uses
  %.not.i.i.i.i.i.i17.i.i = icmp eq i64 %i.no, %.val.i.i
  br i1 %.not.i.i.i.i.i.i17.i.i, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit18.i.i", label %.lr.ph.i.i.i.i.i.i14.i.i, !llvm.loop !99

"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit18.i.i": ; preds = %.lr.ph.i.i.i.i.i.i14.i.i, %"_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISD_SaISD_EEEEZNSB_13compute_crc32EjSC_lE3$_0SD_EEKNS1_16auto_partitionerEEEEEbRT_.exit.i.i"
  %i.np = add i8 %i.nd, -1
  %i.nq = add nuw i8 %i.nc, 7
  %i.nr = and i8 %i.nq, 7
  br label %thread-pre-split21.i.i

thread-pre-split21.i.i:                           ; preds = %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit18.i.i", %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i
  %i.ns = phi i8 [ %i.np, %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit18.i.i" ], [ %i.la, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ] ; 2 uses
  %i.nt = phi i8 [ %i.nr, %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit18.i.i" ], [ %i.lb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.i ]
  %i.nu = icmp eq i8 %i.ns, 0
  br i1 %i.nu, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split21.i.i, %.thread.i.i
  %i.nv = phi i8 [ %i.mp, %.thread.i.i ], [ %i.cp, %thread-pre-split21.i.i ]
  %i.nw = phi i8 [ %i.mn, %.thread.i.i ], [ %i.ns, %thread-pre-split21.i.i ]
  %i.nx = phi i8 [ %i.lo, %.thread.i.i ], [ %i.nt, %thread-pre-split21.i.i ]
  %i.ny = load ptr, ptr %1, align 8, !tbaa !116   ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 15
  %i.oa = load atomic i8, ptr %i.nz monotonic, align 1
  %i.ob = icmp eq i8 %i.oa, -1
  br i1 %i.ob, label %5, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

5:                                                ; preds = %bb.aj
  %6 = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !15
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i: ; preds = %5, %bb.aj
  %.0.i.i.i.i = phi ptr [ %7, %5 ], [ %i.ny, %bb.aj ]
  %8 = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #12, !inline_history !98
  br i1 %8, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i, label %bb.q, !llvm.loop !103

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i: ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i, %thread-pre-split21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISF_SaISF_EEEEZNSD_13compute_crc32EjSE_lE3$_0SF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISF_SaISF_EEEEZNSD_13compute_crc32EjSE_lE3$_0SF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit": ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.od = load ptr, ptr %i.oc, align 16, !tbaa !59 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !47
  %i.og = load ptr, ptr %0, align 64, !tbaa !17
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #12, !inline_history !0
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oj = atomicrmw sub ptr %i.oi, i32 1 seq_cst, align 4
  %i.ok = add i32 %i.oj, -1
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISF_SaISF_EEEEZNSD_13compute_crc32EjSE_lE3$_0SF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit", %bb.ak
  %.019.i.i = phi ptr [ %i.om, %bb.ak ], [ %i.od, %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISF_SaISF_EEEEZNSD_13compute_crc32EjSE_lE3$_0SF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit" ] ; 5 uses
  %i.om = load ptr, ptr %.019.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.om, null
  br i1 %.not.i.i6, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i
  %i.on = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !47
  %i.op = inttoptr i64 %i.oo to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.op, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.or = atomicrmw sub ptr %i.oq, i32 1 seq_cst, align 4
  %i.os = add i32 %i.or, -1
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

bb.al:                                            ; preds = %.lr.ph.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.ov = atomicrmw sub ptr %i.ou, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.ov, 1
  br i1 %.not.i.i.i.i, label %bb.am, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

bb.am:                                            ; preds = %bb.al
  %i.ow = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ox = ptrtoint ptr %i.ow to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ox) #12
  br label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit": ; preds = %bb.ak, %"_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISF_SaISF_EEEEZNSD_13compute_crc32EjSE_lE3$_0SF_EEKNS1_16auto_partitionerEEES8_EEvRT_RT0_RNS1_14execution_dataE.exit", %bb.al, %bb.am
  %i.oy = inttoptr i64 %i.of to ptr
  call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.oy, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal noalias noundef ptr @"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE"(ptr noundef nonnull align 64 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !59  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47
  %i.e = load ptr, ptr %0, align 64, !tbaa !17
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(144) dereferenceable(144) %0) #12, !inline_history !0
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = atomicrmw sub ptr %i.g, i32 1 seq_cst, align 4
  %i.i = add i32 %i.h, -1
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.k, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.k = load ptr, ptr %.019.i.i, align 8, !tbaa !52 ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = inttoptr i64 %i.m to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = atomicrmw sub ptr %i.o, i32 1 seq_cst, align 4
  %i.q = add i32 %i.p, -1
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw sub ptr %i.s, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #12
  br label %"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit"

"_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorISB_SaISB_EEEEZNS9_13compute_crc32EjSA_lE3$_0SB_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit": ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(144) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { inlinehint mustprogress nounwind "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"bool", !5, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!"vtable pointer", !4, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSSt13__atomic_baseImE", !11, i64 0}
!19 = !{!"_ZTSSt6atomicImE", !18, i64 0}
!20 = !{!"_ZTSN3tbb6detail2d112wait_contextE", !11, i64 0, !19, i64 8}
!21 = !{!20, !11, i64 0}
!22 = !{!18, !11, i64 0}
!23 = !{!"p1 _ZTSZN4mold13compute_crc32EjPhlE5Shard", !9, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSN3tbb6detail2d119wait_context_vertexE", !9, i64 0}
!26 = !{!"p1 _ZTSN3tbb6detail2d118task_group_contextE", !9, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{!"_ZTSZN4mold13compute_crc32EjPhlE5Shard", !10, i64 0, !11, i64 8, !6, i64 16}
!29 = !{!28, !6, i64 16}
!30 = !{!28, !11, i64 8}
!31 = !{!"_ZTSN3tbb6detail2d111task_traitsE", !11, i64 0}
!32 = !{!"_ZTSN3tbb6detail2d14taskE", !31, i64 8, !5, i64 16}
!33 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorIS3_SaIS3_EEEE", !23, i64 0}
!34 = !{!"_ZTSN3tbb6detail2d213feeder_holderIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorIS7_SaIS7_EEEEZNS5_13compute_crc32EjS6_lE3$_0S7_vEE"}
!35 = !{!"_ZTSN3tbb6detail2d223for_each_root_task_baseIN9__gnu_cxx17__normal_iteratorIPZN4mold13compute_crc32EjPhlE5ShardSt6vectorIS7_SaIS7_EEEEZNS5_13compute_crc32EjS6_lE3$_0S7_EE", !32, i64 0, !33, i64 64, !33, i64 72, !25, i64 80, !26, i64 88, !9, i64 96, !34, i64 104}
!36 = !{}
!37 = !{i64 8}
!38 = !{!"p1 _ZTSN3tbb6detail2d117small_object_poolE", !9, i64 0}
!39 = !{!"_ZTSN3tbb6detail2d122small_object_allocatorE", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"_ZTSN3tbb6detail2d113adaptive_modeINS1_19auto_partition_typeEEE", !11, i64 0}
!42 = !{!"_ZTSN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEEUt_E", !5, i64 0}
!43 = !{!"_ZTSN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEEE", !41, i64 0, !42, i64 8, !5, i64 12}
!44 = !{!43, !42, i64 8}
!45 = !{!43, !5, i64 12}
end_hunk_1
