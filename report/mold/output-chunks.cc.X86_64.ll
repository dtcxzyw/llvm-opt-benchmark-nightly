Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-chunks.cc.X86_64?download=true
inline.NumInlined: 10657
inline.NumDeleted: 4361
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSF_6X86_64EEESt6vectorISJ_SaISJ_EEEEZNSF_13RelDynSectionISH_E11update_shdrERNSF_7ContextISH_EEEUlSJ_E_SJ_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa = phi i8 [ %i.ia, %bb.v ], [ %i.aw, %bb.h ], [ %i.bx, %bb.j ], [ %i.cy, %bb.l ], [ %i.dz, %bb.n ], [ %i.fa, %bb.p ], [ %i.gb, %bb.r ], [ %i.cx, %bb.t ] ; 2 uses
  %i.iv = load ptr, ptr %i.z, align 16, !tbaa !1010
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load atomic i8, ptr %i.iw monotonic, align 1, !range !350, !noundef !351
  %i.iy = trunc nuw i8 %i.ix to i1
  br i1 %i.iy, label %.thread55, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge

.thread55:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.iz = add i8 %i.ah, 1
  store i8 %i.iz, ptr %i.h, align 4, !tbaa !947
  br label %.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.ja = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread ], [ %i.iq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.jb = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread ], [ %i.ip, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.ja to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.jc = add i8 %i.ah, 1                         ; 2 uses
  store i8 %i.jc, ptr %i.h, align 4, !tbaa !947
  %i.jd = icmp ugt i8 %i.ip, 1
  br i1 %i.jd, label %.thread, label %bb.x

.thread:                                          ; preds = %.thread55, %bb.w
  %i.je = phi i8 [ 8, %.thread55 ], [ %i.ip, %bb.w ]
  %i.jf = phi i8 [ %.lcssa, %.thread55 ], [ %i.iq, %bb.w ]
  %i.jg = zext nneg i8 %i.ae to i64               ; 2 uses
  %i.jh = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.jg
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !942
  %i.jk = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #15, !inline_history !1904 ; 10 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.jl, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.jk, align 64, !tbaa !69
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.jh, i64 24, i1 false), !tbaa.struct !974
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !tbaa.struct !1013
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 112 ; 2 uses
  store ptr null, ptr %i.jo, align 16, !tbaa !1010
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 120
  %i.jq = load i64, ptr %i.ac, align 8, !tbaa !948
  %i.jr = lshr i64 %i.jq, 1                       ; 2 uses
  store i64 %i.jr, ptr %i.ac, align 8, !tbaa !948
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !948
  %i.js = getelementptr inbounds nuw i8, ptr %i.jk, i64 128
  store i32 2, ptr %i.js, align 64, !tbaa !946
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jk, i64 132
  %i.ju = load i8, ptr %i.ad, align 4, !tbaa !947
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 136
  %i.jw = load i64, ptr %4, align 8, !tbaa !949
  store i64 %i.jw, ptr %i.jv, align 8, !tbaa !949
  %i.jx = sub i8 %i.ju, %i.jj
  store i8 %i.jx, ptr %i.jt, align 4, !tbaa !947
  %i.jy = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #15, !inline_history !1905 ; 6 uses
  %i.jz = load ptr, ptr %i.z, align 16, !tbaa !969
  store ptr %i.jz, ptr %i.jy, align 8, !tbaa !952
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store i32 2, ptr %i.ka, align 8, !tbaa !953
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kc = load i64, ptr %4, align 8, !tbaa !949
  store i64 %i.kc, ptr %i.kb, align 8, !tbaa !949
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  store i8 0, ptr %i.kd, align 8, !tbaa !647
  store ptr %i.jy, ptr %i.z, align 16, !tbaa !1010
  store ptr %i.jy, ptr %i.jo, align 16, !tbaa !1010
  %i.ke = load ptr, ptr %3, align 8, !tbaa !970
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.jk, ptr noundef nonnull align 8 dereferenceable(128) %i.ke) #15, !inline_history !1905
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.kf = add i8 %i.je, -1
  %i.kg = add nuw nsw i8 %i.ae, 1
  %i.kh = and i8 %i.kg, 7
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ki = zext i8 %i.iq to i64                    ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !348
  %i.kl = icmp ult i8 %i.kk, %i.jc
  br i1 %i.kl, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.ki ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !964
  %i.kp = load i64, ptr %i.km, align 8, !tbaa !965
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !966
  %i.ks = sub i64 %i.kp, %i.kr
  %i.kt = icmp ult i64 %i.ko, %i.ks
  br i1 %i.kt, label %thread-pre-split20, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.ku = phi i8 [ %i.ja, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.iq, %bb.x ], [ %i.iq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.kv = phi i8 [ %i.jb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.ip, %bb.x ], [ %i.ip, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.ki, %bb.x ], [ %i.ki, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.kw = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.pre-phi ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i10 = load i64, ptr %i.kw, align 8, !tbaa !71 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i11, align 8, !tbaa !71 ; 2 uses
  %.not3.i.i.i.i.i.i13 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i12, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not3.i.i.i.i.i.i13, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17, label %.lr.ph.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i14:                             ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit, %.lr.ph.i.i.i.i.i.i14
  %.04.i.i.i.i.i.i15 = phi i64 [ %i.li, %.lr.ph.i.i.i.i.i.i14 ], [ %.sroa.2.0.copyload.i.i.i.i.i12, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit ] ; 2 uses
  %i.kx = load ptr, ptr %i.ab, align 32, !tbaa !1907, !nonnull !351, !align !469
  %i.ky = load ptr, ptr %i.aa, align 8, !tbaa !1014
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %.04.i.i.i.i.i.i15
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !397 ; 4 uses
  %i.lb = load ptr, ptr %i.kx, align 8, !tbaa !1909, !nonnull !351, !align !469
  %i.lc = load ptr, ptr %i.la, align 8, !tbaa !69
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 72
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = call noundef i64 %i.le(ptr noundef nonnull align 8 dereferenceable(184) %i.la, ptr noundef nonnull align 8 dereferenceable(14448) %i.lb) #15, !inline_history !1902
  %i.lg = getelementptr inbounds nuw i8, ptr %i.la, i64 96
  store i64 %i.lf, ptr %i.lg, align 8, !tbaa !432
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 104
  store i64 0, ptr %i.lh, align 8, !tbaa !480
  %i.li = add i64 %.04.i.i.i.i.i.i15, 1           ; 2 uses
  %.not.i.i.i.i.i.i16 = icmp eq i64 %i.li, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not.i.i.i.i.i.i16, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17, label %.lr.ph.i.i.i.i.i.i14, !llvm.loop !1903

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17: ; preds = %.lr.ph.i.i.i.i.i.i14, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINSB_6X86_64EEESt6vectorISF_SaISF_EEEEZNSB_13RelDynSectionISD_E11update_shdrERNSB_7ContextISD_EEEUlSF_E_SF_EEKNS1_16auto_partitionerEEEEEbRT_.exit
  %i.lj = add i8 %i.kv, -1
  %i.lk = add nuw i8 %i.ku, 7
  %i.ll = and i8 %i.lk, 7
  br label %thread-pre-split20

thread-pre-split20:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17
  %i.lm = phi i8 [ %i.lj, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.ip, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ln = phi i8 [ %i.ll, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.iq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.lo = icmp eq i8 %i.lm, 0
  br i1 %i.lo, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.thread, %thread-pre-split20
  %i.lp = phi i8 [ %i.kh, %.thread ], [ %i.ae, %thread-pre-split20 ]
  %i.lq = phi i8 [ %i.kf, %.thread ], [ %i.lm, %thread-pre-split20 ]
  %i.lr = phi i8 [ %i.jf, %.thread ], [ %i.ln, %thread-pre-split20 ]
  %i.ls = load ptr, ptr %3, align 8, !tbaa !970   ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 15
  %i.lu = load atomic i8, ptr %i.lt monotonic, align 1
  %i.lv = icmp eq i8 %i.lu, -1
  br i1 %i.lv, label %bb.z, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.z:                                             ; preds = %bb.y
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !348
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %bb.y, %bb.z
  %.0.i.i = phi ptr [ %i.lx, %bb.z ], [ %i.ls, %bb.y ]
  %i.ly = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #15
  br i1 %i.ly, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.f, !llvm.loop !1906

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit: ; preds = %thread-pre-split20, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS9_6X86_64EEESt6vectorISD_SaISD_EEEEZNS9_13RelDynSectionISB_E11update_shdrERNS9_7ContextISB_EEEUlSD_E_SD_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none)
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SR_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #20 {
bb.a:
  %3 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %4 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %5 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %6 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %7 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %8 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %9 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SR_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph26

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEESK_SK_SK_SR_.exit
  %i.k = icmp eq i64 %i.dm, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph26, !llvm.loop !1910

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa22 = phi i64 [ %i.c, %.lr.ph ], [ %i.gb, %bb.b ]
  %storemerge8.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ]
  %i.l = udiv exact i64 %.lcssa22, 24             ; 3 uses
  %i.m = add nsw i64 %i.l, -2                     ; 2 uses
  %i.n = lshr i64 %i.m, 1                         ; 3 uses
  %i.o = add nsw i64 %i.l, -1
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %i.q = and i64 %i.l, 1
  %i.r = icmp eq i64 %i.q, 0
  %10 = or disjoint i64 %i.m, 1                   ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %10
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.n, %._crit_edge ], [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i ; 4 uses
  %.sroa.019.0.copyload.i.i.i = load i64, ptr %i.u, align 1, !tbaa !348 ; 2 uses
  %.sroa.420.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.420.0.copyload.i.i.i = load i32, ptr %.sroa.420.0..sroa.0.0..sroa_idx.i.i.i, align 1, !tbaa !348 ; 3 uses
  %.sroa.521.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.521.0.copyload.i.i.i = load i32, ptr %.sroa.521.0..sroa.0.0..sroa_idx.i.i.i, align 1, !tbaa !348 ; 3 uses
  %.sroa.622.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.622.0.copyload.i.i.i = load i64, ptr %.sroa.622.0..sroa.0.0..sroa_idx.i.i.i, align 1, !tbaa !348
  %i.v = icmp slt i64 %.08.i.i.i, %i.p
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.044.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.044.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.x ; 3 uses
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ad = load i64, ptr %i.y, align 1, !tbaa !348, !noalias !1984
  %i.ae = load i32, ptr %i.ac, align 1, !tbaa !348, !noalias !1984 ; 2 uses
  %i.af = load i32, ptr %i.ab, align 1, !tbaa !348, !noalias !1984 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ai = load i64, ptr %i.aa, align 1, !tbaa !348, !noalias !1985
  %i.aj = load i32, ptr %i.ah, align 1, !tbaa !348, !noalias !1985 ; 2 uses
  %i.ak = load i32, ptr %i.ag, align 1, !tbaa !348, !noalias !1985 ; 2 uses
  %i.al = icmp eq i32 %i.af, %i.ak
  %i.am = icmp ult i32 %i.af, %i.ak
  %i.an = icmp eq i32 %i.ae, %i.aj
  %i.ao = icmp ult i32 %i.ae, %i.aj
  %i.ap = icmp ult i64 %i.ad, %i.ai
  %spec.select.i.i.i.i.i.i = select i1 %i.an, i1 %i.ap, i1 %i.ao
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.al, i1 %spec.select.i.i.i.i.i.i, i1 %i.am
  %spec.select.i.i.i.i = select i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i, i64 %i.z, i64 %i.x ; 4 uses
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ar = getelementptr inbounds [24 x i8], ptr %0, i64 %.044.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ar, ptr noundef nonnull align 1 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !586
  %i.as = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1923

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.at = icmp eq i64 %.0.lcssa.i.i.i.i, %i.n
  %or.cond.i.i.i = select i1 %i.r, i1 %i.at, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.t, ptr noundef nonnull align 1 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !586
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %10, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.au = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.au, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ay = load i64, ptr %i.av, align 1, !tbaa !348, !noalias !1986
  %i.az = load i32, ptr %i.ax, align 1, !tbaa !348, !noalias !1986 ; 2 uses
  %i.ba = load i32, ptr %i.aw, align 1, !tbaa !348, !noalias !1986 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, %.sroa.420.0.copyload.i.i.i
  %i.bc = icmp ult i32 %i.ba, %.sroa.420.0.copyload.i.i.i
  %i.bd = icmp eq i32 %i.az, %.sroa.521.0.copyload.i.i.i
  %i.be = icmp ult i32 %i.az, %.sroa.521.0.copyload.i.i.i
  %i.bf = icmp ult i64 %i.ay, %.sroa.019.0.copyload.i.i.i
  %spec.select.i.i.i.i.i.i.i = select i1 %i.bd, i1 %i.bf, i1 %i.be
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bb, i1 %spec.select.i.i.i.i.i.i.i, i1 %i.bc
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bg, ptr noundef nonnull align 1 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !586
  %i.bh = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i, !llvm.loop !1930

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 4 uses
  store i64 %.sroa.019.0.copyload.i.i.i, ptr %i.bi, align 1, !tbaa !348
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 %.sroa.420.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 %.sroa.521.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store i64 %.sroa.622.0.copyload.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !tbaa !348
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.bj = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !1931

.lr.ph.i9.i:                                      ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SS_.exit.i23.i
  %.sroa.0.03.i.i = phi ptr [ %i.bk, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SS_.exit.i23.i ], [ %storemerge8.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS5_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SR_SR_T1_T2_.exit.i.i.i ] ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.bk, align 1, !tbaa !348 ; 2 uses
  %.sroa.412.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16
  %.sroa.412.0.copyload.i.i.i = load i32, ptr %.sroa.412.0..sroa.0.0..sroa_idx.i.i.i, align 1, !tbaa !348 ; 3 uses
  %.sroa.513.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -12
  %.sroa.513.0.copyload.i.i.i = load i32, ptr %.sroa.513.0..sroa.0.0..sroa_idx.i.i.i, align 1, !tbaa !348 ; 3 uses
  %.sroa.614.0..sroa.0.0..sroa_idx.i.i10.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8
  %.sroa.614.0.copyload.i.i11.i = load i64, ptr %.sroa.614.0..sroa.0.0..sroa_idx.i.i10.i, align 1, !tbaa !348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bk, ptr noundef nonnull align 1 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !586
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.a                     ; 3 uses
  %i.bn = sdiv exact i64 %i.bm, 24                ; 3 uses
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = sdiv i64 %i.bo, 2
  %i.bq = icmp sgt i64 %i.bm, 48
  br i1 %i.bq, label %.lr.ph.i.i.i30.i, label %._crit_edge.i.i.i12.i

.lr.ph.i.i.i30.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i30.i
  %.044.i.i.i31.i = phi i64 [ %spec.select.i.i.i34.i, %.lr.ph.i.i.i30.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.br = shl i64 %.044.i.i.i31.i, 1              ; 2 uses
  %i.bs = add i64 %i.br, 2                        ; 2 uses
  %i.bt = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bs ; 3 uses
  %i.bu = or disjoint i64 %i.br, 1                ; 2 uses
  %i.bv = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.by = load i64, ptr %i.bt, align 1, !tbaa !348, !noalias !1987
  %i.bz = load i32, ptr %i.bx, align 1, !tbaa !348, !noalias !1987 ; 2 uses
  %i.ca = load i32, ptr %i.bw, align 1, !tbaa !348, !noalias !1987 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cd = load i64, ptr %i.bv, align 1, !tbaa !348, !noalias !1988
  %i.ce = load i32, ptr %i.cc, align 1, !tbaa !348, !noalias !1988 ; 2 uses
  %i.cf = load i32, ptr %i.cb, align 1, !tbaa !348, !noalias !1988 ; 2 uses
  %i.cg = icmp eq i32 %i.ca, %i.cf
  %i.ch = icmp ult i32 %i.ca, %i.cf
  %i.ci = icmp eq i32 %i.bz, %i.ce
  %i.cj = icmp ult i32 %i.bz, %i.ce
  %i.ck = icmp ult i64 %i.by, %i.cd
  %spec.select.i.i.i.i.i32.i = select i1 %i.ci, i1 %i.ck, i1 %i.cj
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i33.i = select i1 %i.cg, i1 %spec.select.i.i.i.i.i32.i, i1 %i.ch
  %spec.select.i.i.i34.i = select i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i33.i, i64 %i.bu, i64 %i.bs ; 4 uses
  %i.cl = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i34.i
  %i.cm = getelementptr inbounds [24 x i8], ptr %0, i64 %.044.i.i.i31.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cm, ptr noundef nonnull align 1 dereferenceable(24) %i.cl, i64 24, i1 false), !tbaa.struct !586
  %i.cn = icmp slt i64 %spec.select.i.i.i34.i, %i.bp
  br i1 %i.cn, label %.lr.ph.i.i.i30.i, label %._crit_edge.i.i.i12.i, !llvm.loop !1923

._crit_edge.i.i.i12.i:                            ; preds = %.lr.ph.i.i.i30.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i13.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i34.i, %.lr.ph.i.i.i30.i ] ; 5 uses
  %i.co = and i64 %i.bn, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i12.i
  %i.cq = add nsw i64 %i.bn, -2
  %i.cr = ashr exact i64 %i.cq, 1
  %i.cs = icmp eq i64 %.0.lcssa.i.i.i13.i, %i.cr
  br i1 %i.cs, label %.thread.i.i29.i, label %bb.h

.thread.i.i29.i:                                  ; preds = %bb.g
  %i.ct = shl nuw nsw i64 %.0.lcssa.i.i.i13.i, 1
  %i.cu = or disjoint i64 %i.ct, 1                ; 2 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cu
  %i.cw = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i13.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.cw, ptr noundef nonnull align 1 dereferenceable(24) %i.cv, i64 24, i1 false), !tbaa.struct !586
  br label %.lr.ph.i.i.i.i17.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i12.i
  %.not.i.i14.i = icmp eq i64 %.0.lcssa.i.i.i13.i, 0
  br i1 %.not.i.i14.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SS_.exit.i23.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %bb.h, %.thread.i.i29.i
  %.010.i.i.i.i18.i.ph = phi i64 [ %.0.lcssa.i.i.i13.i, %bb.h ], [ %i.cu, %.thread.i.i29.i ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader, %bb.i
  %.010.i.i.i.i18.i = phi i64 [ %.0911.i.i1516.i.i20.i, %bb.i ], [ %.010.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i19.i = add nsw i64 %.010.i.i.i.i18.i, -1
  %.0911.i.i1516.i.i20.i = lshr i64 %.0911.in.i.i.i.i19.i, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i1516.i.i20.i ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.da = load i64, ptr %i.cx, align 1, !tbaa !348, !noalias !1989
  %i.db = load i32, ptr %i.cz, align 1, !tbaa !348, !noalias !1989 ; 2 uses
  %i.dc = load i32, ptr %i.cy, align 1, !tbaa !348, !noalias !1989 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, %.sroa.412.0.copyload.i.i.i
  %i.de = icmp ult i32 %i.dc, %.sroa.412.0.copyload.i.i.i
  %i.df = icmp eq i32 %i.db, %.sroa.513.0.copyload.i.i.i
  %i.dg = icmp ult i32 %i.db, %.sroa.513.0.copyload.i.i.i
  %i.dh = icmp ult i64 %i.da, %.sroa.011.0.copyload.i.i.i
  %spec.select.i.i.i.i.i.i21.i = select i1 %i.df, i1 %i.dh, i1 %i.dg
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i22.i = select i1 %i.dd, i1 %spec.select.i.i.i.i.i.i21.i, i1 %i.de
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i22.i, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SS_.exit.i23.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i17.i
  %i.di = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i.i.i.i18.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.di, ptr noundef nonnull align 1 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa.struct !586
  %.not17.i.i28.i = icmp eq i64 %.0911.i.i1516.i.i20.i, 0
  br i1 %.not17.i.i28.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SS_.exit.i23.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !1930

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SS_.exit.i23.i: ; preds = %bb.i, %.lr.ph.i.i.i.i17.i, %bb.h
  %.0.lcssa.i.i.i.i24.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i18.i, %.lr.ph.i.i.i.i17.i ], [ 0, %bb.i ]
  %i.dj = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i24.i ; 4 uses
  store i64 %.sroa.011.0.copyload.i.i.i, ptr %i.dj, align 1, !tbaa !348
  %.sroa.5.0..sroa_idx.i.i.i25.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %.sroa.412.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i25.i, align 1, !tbaa !348
  %.sroa.6.0..sroa_idx.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 %.sroa.513.0.copyload.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i26.i, align 1, !tbaa !348
  %.sroa.7.0..sroa_idx.i.i.i27.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 %.sroa.614.0.copyload.i.i11.i, ptr %.sroa.7.0..sroa_idx.i.i.i27.i, align 1, !tbaa !348
  %i.dk = icmp sgt i64 %i.bm, 24
  br i1 %i.dk, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEZNS2_L14encode_androidIS4_EESt6vectorIhSaIhEES7_INS3_IT_EELm18446744073709551615EEEUlRKS5_E0_EEDaRSK_RT0_EUlOSK_OSR_E_EEEvSK_SK_SK_SR_.exit, !llvm.loop !1950

.lr.ph26:                                         ; preds = %.lr.ph, %bb.b
  %storemerge825 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.0924 = phi i64 [ %i.dm, %bb.b ], [ %2, %.lr.ph ]
  %i.dl = phi i64 [ %i.gb, %bb.b ], [ %i.c, %.lr.ph ]
  %i.dm = add nsw i64 %.0924, -1                  ; 3 uses
  %i.dn = udiv i64 %i.dl, 48
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.dn ; 7 uses
  %i.dp = getelementptr inbounds i8, ptr %storemerge825, i64 -24 ; 5 uses
  %i.dq = load i64, ptr %i.e, align 1, !tbaa !348, !noalias !1990 ; 3 uses
  %i.dr = load i32, ptr %i.g, align 1, !tbaa !348, !noalias !1990 ; 6 uses
  %i.ds = load i32, ptr %i.f, align 1, !tbaa !348, !noalias !1990 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dv = load i64, ptr %i.do, align 1, !tbaa !348, !noalias !1991 ; 3 uses
  %i.dw = load i32, ptr %i.du, align 1, !tbaa !348, !noalias !1991 ; 6 uses
  %i.dx = load i32, ptr %i.dt, align 1, !tbaa !348, !noalias !1991 ; 6 uses
  %i.dy = icmp eq i32 %i.ds, %i.dx
  %i.dz = icmp ult i32 %i.ds, %i.dx
  %i.ea = icmp eq i32 %i.dr, %i.dw
  %i.eb = icmp ult i32 %i.dr, %i.dw
  %i.ec = icmp ult i64 %i.dq, %i.dv
  %spec.select.i.i.i.i16 = select i1 %i.ea, i1 %i.ec, i1 %i.eb
  %.sroa.06.0.i.i.i.i.i.i.i.i.i = select i1 %i.dy, i1 %spec.select.i.i.i.i16, i1 %i.dz
  %i.ed = getelementptr inbounds i8, ptr %storemerge825, i64 -16
  %i.ee = getelementptr inbounds i8, ptr %storemerge825, i64 -12
  %i.ef = load i64, ptr %i.dp, align 1, !tbaa !348, !noalias !351 ; 4 uses
  %i.eg = load i32, ptr %i.ee, align 1, !tbaa !348, !noalias !351 ; 8 uses
  %i.eh = load i32, ptr %i.ed, align 1, !tbaa !348, !noalias !351 ; 8 uses
  br i1 %.sroa.06.0.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph26
  %i.ei = icmp eq i32 %i.dx, %i.eh
  %i.ej = icmp ult i32 %i.dx, %i.eh
  %i.ek = icmp eq i32 %i.dw, %i.eg
  %i.el = icmp ult i32 %i.dw, %i.eg
  %i.em = icmp ult i64 %i.dv, %i.ef
  %spec.select.i.i26.i.i = select i1 %i.ek, i1 %i.em, i1 %i.el
  %.sroa.06.0.i.i.i.i.i.i.i27.i.i = select i1 %i.ei, i1 %spec.select.i.i26.i.i, i1 %i.ej
  br i1 %.sroa.06.0.i.i.i.i.i.i.i27.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_T1_:bb.a
bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_SG_SG_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_SG_SG_T0_.exit.i ], [ %i.bl, %bb.p ] ; 9 uses
  %.0.copyload.i.i.i.i14.i = load i32, ptr %.1.i.i, align 1
  %i.bk = icmp slt i32 %.0.copyload.i.i.i.i14.i, %.0.copyload.i2.i.i.i13.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bk, label %bb.p, label %.preheader.i.i, !llvm.loop !2217

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 6 uses
  %.0.copyload.i2.i.i16.i.i = load i32, ptr %.114.i.i, align 1
  %i.bm = icmp slt i32 %.0.copyload.i2.i.i.i13.i, %.0.copyload.i2.i.i16.i.i
  br i1 %i.bm, label %.preheader.i.i, label %bb.q, !llvm.loop !2218

bb.q:                                             ; preds = %.preheader.i.i
  %i.bn = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bn, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEET_SG_SG_T0_.exit

bb.r:                                             ; preds = %bb.q
  %i.bo = load i64, ptr %.1.i.i, align 1, !tbaa !348
  %i.bp = load i64, ptr %.114.i.i, align 1, !tbaa !348
  store i64 %i.bp, ptr %.1.i.i, align 1, !tbaa !348
  store i64 %i.bo, ptr %.114.i.i, align 1, !tbaa !348
  br label %_ZSt22__move_median_to_firstIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_SG_SG_T0_.exit.i, !llvm.loop !2219

_ZSt27__unguarded_partition_pivotIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEET_SG_SG_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02331, i64 noundef %i.ar)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_SG_T0_.exit, !llvm.loop !2215

_ZSt14__partial_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_SG_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEET_SG_SG_T0_.exit, %_ZSt10__pop_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_SG_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 8, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 5 uses
  %.0.copyload.i.i.i.i = load i32, ptr %.019.i.ptr, align 1
  %.0.copyload.i2.i.i.i = load i32, ptr %0, align 1
  %i.e = icmp slt i32 %.0.copyload.i.i.i.i, %.0.copyload.i2.i.i.i
  %i.f = load i64, ptr %.019.i.ptr, align 1, !tbaa !348 ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ugt i64 %.019.i.idx, 8
  br i1 %i.g, label %bb.e, label %bb.f, !prof !400

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  %i.i = load i64, ptr %0, align 1, !tbaa !348
  store i64 %i.i, ptr %i.h, align 1, !tbaa !348
  br label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i

bb.g:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.f to i32 ; 2 uses
  %.0.copyload.i2.i.i11.i.i = load i32, ptr %.pn18.i, align 1
  %i.j = icmp sgt i32 %.0.copyload.i2.i.i11.i.i, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 4 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  %i.k = load i64, ptr %.013.i.i, align 1, !tbaa !348
  store i64 %i.k, ptr %.0912.i.i, align 1, !tbaa !348
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %.0.copyload.i2.i.i.i.i = load i32, ptr %.0.i.i, align 1
  %i.l = icmp sgt i32 %.0.copyload.i2.i.i.i.i, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.l, label %.lr.ph.i.i, label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i, !llvm.loop !2220

_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i64 %i.f, ptr %.sink.i, align 1, !tbaa !348
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit, label %bb.c, !llvm.loop !2221

_ZSt16__insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not6.i = icmp eq ptr %i.m, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit, %_ZSt25__unguarded_linear_insertIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_.exit.i
  %.07.i = phi ptr [ %i.r, %_ZSt25__unguarded_linear_insertIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_.exit.i ], [ %i.m, %_ZSt16__insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit ] ; 5 uses
  %i.n = load i64, ptr %.07.i, align 1, !tbaa !348 ; 2 uses
  %.sroa.0.0.extract.trunc.i.i13 = trunc i64 %i.n to i32 ; 2 uses
  %.010.i.i = getelementptr inbounds i8, ptr %.07.i, i64 -8 ; 2 uses
  %.0.copyload.i2.i.i11.i.i14 = load i32, ptr %.010.i.i, align 1
  %i.o = icmp sgt i32 %.0.copyload.i2.i.i11.i.i14, %.sroa.0.0.extract.trunc.i.i13
  br i1 %i.o, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_.exit.i

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i16
  %.013.i.i17 = phi ptr [ %.0.i.i19, %.lr.ph.i.i16 ], [ %.010.i.i, %.lr.ph.i ] ; 4 uses
  %.0912.i.i18 = phi ptr [ %.013.i.i17, %.lr.ph.i.i16 ], [ %.07.i, %.lr.ph.i ]
  %i.p = load i64, ptr %.013.i.i17, align 1, !tbaa !348
  store i64 %i.p, ptr %.0912.i.i18, align 1, !tbaa !348
  %.0.i.i19 = getelementptr inbounds i8, ptr %.013.i.i17, i64 -8 ; 2 uses
  %.0.copyload.i2.i.i.i.i20 = load i32, ptr %.0.i.i19, align 1
  %i.q = icmp sgt i32 %.0.copyload.i2.i.i.i.i20, %.sroa.0.0.extract.trunc.i.i13
  br i1 %i.q, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_.exit.i, !llvm.loop !2220

_ZSt25__unguarded_linear_insertIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i16, %.lr.ph.i
  %.09.lcssa.i.i = phi ptr [ %.07.i, %.lr.ph.i ], [ %.013.i.i17, %.lr.ph.i.i16 ]
  store i64 %i.n, ptr %.09.lcssa.i.i, align 1, !tbaa !348
  %i.r = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %.not.i15 = icmp eq ptr %i.r, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit, label %.lr.ph.i, !llvm.loop !2222

bb.h:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %0, %1
  %.016.i21 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not17.i = icmp eq ptr %.016.i21, %1
  %or.cond = select i1 %i.s, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.h, %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29
  %.019.i23 = phi ptr [ %.0.i31, %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29 ], [ %.016.i21, %bb.h ] ; 7 uses
  %.pn18.i24 = phi ptr [ %.019.i23, %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29 ], [ %0, %bb.h ] ; 4 uses
  %.0.copyload.i.i.i.i25 = load i32, ptr %.019.i23, align 1
  %.0.copyload.i2.i.i.i26 = load i32, ptr %0, align 1
  %i.t = icmp slt i32 %.0.copyload.i.i.i.i25, %.0.copyload.i2.i.i.i26
  %i.u = load i64, ptr %.019.i23, align 1, !tbaa !348 ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i22
  %i.v = ptrtoint ptr %.019.i23 to i64
  %i.w = sub i64 %i.v, %i.b                       ; 3 uses
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 1
  br i1 %i.y, label %bb.j, label %bb.k, !prof !400

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.pn18.i24, i64 16
  %i.aa = sub nsw i64 0, %i.x
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.w, i1 false)
  br label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.w, 8
  br i1 %i.ac, label %bb.l, label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn18.i24, i64 8
  %i.ae = load i64, ptr %0, align 1, !tbaa !348
  store i64 %i.ae, ptr %i.ad, align 1, !tbaa !348
  br label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29

bb.m:                                             ; preds = %.lr.ph.i22
  %.sroa.0.0.extract.trunc.i.i27 = trunc i64 %i.u to i32 ; 2 uses
  %.0.copyload.i2.i.i11.i.i28 = load i32, ptr %.pn18.i24, align 1
  %i.af = icmp sgt i32 %.0.copyload.i2.i.i11.i.i28, %.sroa.0.0.extract.trunc.i.i27
  br i1 %i.af, label %.lr.ph.i.i33, label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29

.lr.ph.i.i33:                                     ; preds = %bb.m, %.lr.ph.i.i33
  %.013.i.i34 = phi ptr [ %.0.i.i36, %.lr.ph.i.i33 ], [ %.pn18.i24, %bb.m ] ; 4 uses
  %.0912.i.i35 = phi ptr [ %.013.i.i34, %.lr.ph.i.i33 ], [ %.019.i23, %bb.m ]
  %i.ag = load i64, ptr %.013.i.i34, align 1, !tbaa !348
  store i64 %i.ag, ptr %.0912.i.i35, align 1, !tbaa !348
  %.0.i.i36 = getelementptr inbounds i8, ptr %.013.i.i34, i64 -8 ; 2 uses
  %.0.copyload.i2.i.i.i.i37 = load i32, ptr %.0.i.i36, align 1
  %i.ah = icmp sgt i32 %.0.copyload.i2.i.i.i.i37, %.sroa.0.0.extract.trunc.i.i27
  br i1 %i.ah, label %.lr.ph.i.i33, label %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29, !llvm.loop !2220

_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29: ; preds = %.lr.ph.i.i33, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i30 = phi ptr [ %0, %bb.l ], [ %0, %bb.j ], [ %0, %bb.k ], [ %.019.i23, %bb.m ], [ %.013.i.i34, %.lr.ph.i.i33 ]
  store i64 %i.u, ptr %.sink.i30, align 1, !tbaa !348
  %.0.i31 = getelementptr inbounds nuw i8, ptr %.019.i23, i64 8 ; 2 uses
  %.not.i32 = icmp eq ptr %.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit, label %.lr.ph.i22, !llvm.loop !2221

_ZSt26__unguarded_insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit: ; preds = %_ZSt13move_backwardIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryS8_ET0_T_SA_S9_.exit.i29, %_ZSt25__unguarded_linear_insertIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops14_Val_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_.exit.i, %bb.h, %_ZSt16__insertion_sortIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_T0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt11__make_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntryN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_SG_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us
  %.015.us = phi i64 [ %i.ai, %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015.us
  %.sroa.02.0.copyload.us = load i64, ptr %i.o, align 1, !tbaa !348 ; 2 uses
  %i.p = icmp slt i64 %.015.us, %i.i
  br i1 %i.p, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.029.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.015.us, %.split.us ] ; 2 uses
  %i.q = shl i64 %.029.i.us, 1                    ; 3 uses
  %i.r = add i64 %i.q, 2                          ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.q
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.0.copyload.i.i.i.i.us = load i32, ptr %i.s, align 1
  %.0.copyload.i2.i.i.i.us = load i32, ptr %i.u, align 1
  %i.v = icmp slt i32 %.0.copyload.i.i.i.i.us, %.0.copyload.i2.i.i.i.us
  %i.w = or disjoint i64 %i.q, 1
  %spec.select.i.us = select i1 %i.v, i64 %i.w, i64 %i.r ; 6 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.us
  %i.z = load i64, ptr %i.x, align 1, !tbaa !348
  store i64 %i.z, ptr %i.y, align 1, !tbaa !348
  %i.aa = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.aa, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !41

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %.sroa.0.0.extract.trunc.i.i.us = trunc i64 %.sroa.02.0.copyload.us to i32
  %i.ab = icmp sgt i64 %spec.select.i.us, %.015.us
  br i1 %i.ab, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.01316.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.01316.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i.us ; 2 uses
  %.0.copyload.i.i.i.i.i.us = load i32, ptr %i.ac, align 1
  %i.ad = icmp slt i32 %.0.copyload.i.i.i.i.i.us, %.sroa.0.0.extract.trunc.i.i.us
  br i1 %i.ad, label %bb.c, label %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i.us
  %i.af = load i64, ptr %i.ac, align 1, !tbaa !348
  store i64 %i.af, ptr %i.ae, align 1, !tbaa !348
  %i.ag = icmp sgt i64 %.017.i.i.us, %.015.us
  br i1 %i.ag, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us, !llvm.loop !42

_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.013.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.015.us, %.split.us ], [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i.us
  store i64 %.sroa.02.0.copyload.us, ptr %i.ah, align 1, !tbaa !348
  %.not.us = icmp eq i64 %.015.us, 0
  %i.ai = add nsw i64 %.015.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2223

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit
  %.015 = phi i64 [ %i.bf, %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.015
  %.sroa.02.0.copyload = load i64, ptr %i.aj, align 1, !tbaa !348 ; 2 uses
  %i.ak = icmp slt i64 %.015, %i.i
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.029.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.015, %.split ] ; 2 uses
  %i.al = shl i64 %.029.i, 1                      ; 3 uses
  %i.am = add i64 %i.al, 2                        ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr [8 x i8], ptr %0, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.0.copyload.i.i.i.i = load i32, ptr %i.an, align 1
  %.0.copyload.i2.i.i.i = load i32, ptr %i.ap, align 1
  %i.aq = icmp slt i32 %.0.copyload.i.i.i.i, %.0.copyload.i2.i.i.i
  %i.ar = or disjoint i64 %i.al, 1
  %spec.select.i = select i1 %i.aq, i64 %i.ar, i64 %i.am ; 4 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i
  %i.at = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i
  %i.au = load i64, ptr %i.as, align 1, !tbaa !348
  store i64 %i.au, ptr %i.at, align 1, !tbaa !348
  %i.av = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.av, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !41

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.015, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.aw = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.aw, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ax = load i64, ptr %i.m, align 1, !tbaa !348
  store i64 %i.ax, ptr %i.n, align 1, !tbaa !348
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.02.0.copyload to i32
  %i.ay = icmp sgt i64 %.1.i, %.015
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.01316.i.i = phi i64 [ %.017.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.017.in.i.i = add nsw i64 %.01316.i.i, -1
  %.017.i.i = sdiv i64 %.017.in.i.i, 2            ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.017.i.i ; 2 uses
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.az, align 1
  %i.ba = icmp slt i32 %.0.copyload.i.i.i.i.i, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.ba, label %bb.f, label %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01316.i.i
  %i.bc = load i64, ptr %i.az, align 1, !tbaa !348
  store i64 %i.bc, ptr %i.bb, align 1, !tbaa !348
  %i.bd = icmp sgt i64 %.017.i.i, %.015
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !42

_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.013.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.017.i.i, %bb.f ], [ %.01316.i.i, %.lr.ph.i.i ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.013.lcssa.i.i
  store i64 %.sroa.02.0.copyload, ptr %i.be, align 1, !tbaa !348
  %.not = icmp eq i64 %.015, 0
  %i.bf = add nsw i64 %.015, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !2223

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit.us, %_ZSt13__adjust_heapIPZN4mold14EhFrameSectionINS0_6X86_64EE8copy_bufERNS0_7ContextIS2_EEE8HdrEntrylS7_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_8copy_bufES6_EUlRKS7_SD_E_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPZN4mold14EhFrameSectionINS4_6X86_64EE8copy_bufERNS4_7ContextIS6_EEE8HdrEntryZNS7_8copy_bufESA_EUlRKSB_SE_E_EENS1_15quick_sort_bodyISC_SF_EEKNS1_16auto_partitionerEE3runERKSG_RKSI_RSK_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !911
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.e, align 8, !tbaa !925
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.b, align 4, !tbaa !348
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1121
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPZN4mold14EhFrameSectionINS4_6X86_64EE8copy_bufERNS4_7ContextIS6_EEE8HdrEntryZNS7_8copy_bufESA_EUlRKSB_SE_E_EENS1_15quick_sort_bodyISC_SF_EEKNS1_16auto_partitionerEE3runERKSG_RKSI_RSK_RNS1_18task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr null, ptr %3, align 8, !tbaa !942
  %i.i = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128) #15 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPZN4mold14EhFrameSectionINS4_6X86_64EE8copy_bufERNS4_7ContextIS6_EEE8HdrEntryZNS7_8copy_bufESA_EUlRKSB_SE_E_EENS1_15quick_sort_bodyISC_SF_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.i, align 64, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !1127
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  store ptr null, ptr %i.l, align 32, !tbaa !1130
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.n = call noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null) #15
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i32 0, ptr %i.p, align 16, !tbaa !946
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  store i8 5, ptr %i.q, align 4, !tbaa !947
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.m, align 8, !tbaa !948
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.u = load i64, ptr %3, align 8, !tbaa !949
  store i64 %i.u, ptr %i.t, align 8, !tbaa !949
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr null, ptr %4, align 8, !tbaa !952
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !953
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !927
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !928
  store ptr %4, ptr %i.l, align 32, !tbaa !1130
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(128) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPZN4mold14EhFrameSectionINS4_6X86_64EE8copy_bufERNS4_7ContextIS6_EEE8HdrEntryZNS7_8copy_bufESA_EUlRKSB_SE_E_EENS1_15quick_sort_bodyISC_SF_EEKNS1_16auto_partitionerEE3runERKSG_RKSI_RSK_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPZN4mold14EhFrameSectionINS4_6X86_64EE8copy_bufERNS4_7ContextIS6_EEE8HdrEntryZNS7_8copy_bufESA_EUlRKSB_SE_E_EENS1_15quick_sort_bodyISC_SF_EEKNS1_16auto_partitionerEE3runERKSG_RKSI_RSK_RNS1_18task_group_contextE.exit: ; preds = %bb.a, %bb.b
  %i.y = load atomic i8, ptr %i.c monotonic, align 1
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPZN4mold14EhFrameSectionINS4_6X86_64EE8copy_bufERNS4_7ContextIS6_EEE8HdrEntryZNS7_8copy_bufESA_EUlRKSB_SE_E_EENS1_15quick_sort_bodyISC_SF_EEKNS1_16auto_partitionerEE3runERKSG_RKSI_RSK_RNS1_18task_group_contextE.exit
  call void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #15
  br label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIPZN4mold14EhFrameSectionINS4_6X86_64EE8copy_bufERNS4_7ContextIS6_EEE8HdrEntryZNS7_8copy_bufESA_EUlRKSB_SE_E_EENS1_15quick_sort_bodyISC_SF_EEKNS1_16auto_partitionerEE3runERKSG_RKSI_RSK_RNS1_18task_group_contextE.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
end_hunk_1
