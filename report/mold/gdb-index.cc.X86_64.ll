Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/gdb-index.cc.X86_64?download=true
inline.NumInlined: 4499
inline.NumDeleted: 1982
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSF_8MapValueEE5EntryESt6vectorISK_SaISK_EEEEZNSF_22build_gdb_index_tablesINSF_6X86_64EEEvRNSF_7ContextIT_EEEUlSK_E_SK_EEKNS1_16auto_partitionerEEESA_EEvRST_RT0_RNS1_14execution_dataE:bb.a
  store i64 %i.ib, ptr %i.hv, align 8, !tbaa !416
  store i64 %i.ib, ptr %i.hn, align 8, !tbaa !417
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !415
  store i64 %i.id, ptr %i.hk, align 8, !tbaa !415
  %i.ie = load i8, ptr %i.hr, align 1, !tbaa !47
  %i.if = add i8 %i.ie, 1                         ; 3 uses
  store i8 %i.if, ptr %i.hr, align 1, !tbaa !47
  %i.ig = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.hu
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !47
  %i.ih = add nuw nsw i8 %i.y, 1                  ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.ih, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.g, !llvm.loop !11

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2, %bb.k, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3, %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4, %bb.o, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5, %bb.q, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6, %bb.s, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7, %bb.u, %.lr.ph.i, %bb.f
  %i.ii = phi i8 [ %i.y, %bb.f ], [ %i.y, %.lr.ph.i ], [ %i.ih, %bb.g ], [ %i.y, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ], [ %i.ih, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.bd, %bb.i ], [ %i.bd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.ce, %bb.k ], [ %i.ce, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.df, %bb.m ], [ %i.df, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.eg, %bb.o ], [ %i.eg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.fh, %bb.q ], [ %i.fh, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.gi, %bb.s ], [ %i.gi, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.hh, %bb.u ] ; 6 uses
  %i.ij = phi i8 [ %i.z, %bb.f ], [ %i.z, %.lr.ph.i ], [ %i.ht, %bb.g ], [ %i.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ], [ %i.ht, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.1 ], [ %i.ap, %bb.i ], [ %i.ap, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.2 ], [ %i.bq, %bb.k ], [ %i.bq, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.3 ], [ %i.cr, %bb.m ], [ %i.cr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.4 ], [ %i.ds, %bb.o ], [ %i.ds, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.5 ], [ %i.et, %bb.q ], [ %i.et, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.6 ], [ %i.fu, %bb.s ], [ %i.fu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i.7 ], [ %i.cq, %bb.u ] ; 6 uses
  %i.ik = load ptr, ptr %i.s, align 16, !tbaa !524
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load atomic i8, ptr %i.il monotonic, align 1, !range !364, !noundef !365
  %i.in = trunc nuw i8 %i.im to i1
  br i1 %i.in, label %bb.w, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.v
  %.lcssa = phi i8 [ %i.ht, %bb.v ], [ %i.ap, %bb.h ], [ %i.bq, %bb.j ], [ %i.cr, %bb.l ], [ %i.ds, %bb.n ], [ %i.et, %bb.p ], [ %i.fu, %bb.r ], [ %i.cq, %bb.t ] ; 2 uses
  %i.io = load ptr, ptr %i.s, align 16, !tbaa !524
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load atomic i8, ptr %i.ip monotonic, align 1, !range !364, !noundef !365
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %.thread55, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit_crit_edge

.thread55:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.is = add i8 %i.aa, 1
  store i8 %i.is, ptr %i.h, align 4, !tbaa !108
  br label %.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.it = phi i8 [ %.lcssa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread ], [ %i.ij, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.iu = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread ], [ %i.ii, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.it to i64
  br label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit

bb.w:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.iv = add i8 %i.aa, 1                         ; 2 uses
  store i8 %i.iv, ptr %i.h, align 4, !tbaa !108
  %i.iw = icmp ugt i8 %i.ii, 1
  br i1 %i.iw, label %.thread, label %bb.x

.thread:                                          ; preds = %.thread55, %bb.w
  %i.ix = phi i8 [ 8, %.thread55 ], [ %i.ii, %bb.w ]
  %i.iy = phi i8 [ %.lcssa, %.thread55 ], [ %i.ij, %bb.w ]
  %i.iz = zext nneg i8 %i.x to i64                ; 2 uses
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.iz
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !94
  %i.jd = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3) #13, !inline_history !1152 ; 10 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.je, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.jd, align 64, !tbaa !53
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.jf, ptr noundef nonnull align 8 dereferenceable(24) %i.ja, i64 24, i1 false), !tbaa.struct !389
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jg, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !527
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 112 ; 2 uses
  store ptr null, ptr %i.jh, align 16, !tbaa !524
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 120
  %i.jj = load i64, ptr %i.v, align 8, !tbaa !109
  %i.jk = lshr i64 %i.jj, 1                       ; 2 uses
  store i64 %i.jk, ptr %i.v, align 8, !tbaa !109
  store i64 %i.jk, ptr %i.ji, align 8, !tbaa !109
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 128
  store i32 2, ptr %i.jl, align 64, !tbaa !107
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jd, i64 132
  %i.jn = load i8, ptr %i.w, align 4, !tbaa !108
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jd, i64 136
  %i.jp = load i64, ptr %4, align 8, !tbaa !110
  store i64 %i.jp, ptr %i.jo, align 8, !tbaa !110
  %i.jq = sub i8 %i.jn, %i.jc
  store i8 %i.jq, ptr %i.jm, align 4, !tbaa !108
  %i.jr = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #13, !inline_history !1153 ; 6 uses
  %i.js = load ptr, ptr %i.s, align 16, !tbaa !397
  store ptr %i.js, ptr %i.jr, align 8, !tbaa !114
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i32 2, ptr %i.jt, align 8, !tbaa !115
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jv = load i64, ptr %4, align 8, !tbaa !110
  store i64 %i.jv, ptr %i.ju, align 8, !tbaa !110
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  store i8 0, ptr %i.jw, align 8, !tbaa !398
  store ptr %i.jr, ptr %i.s, align 16, !tbaa !524
  store ptr %i.jr, ptr %i.jh, align 16, !tbaa !524
  %i.jx = load ptr, ptr %3, align 8, !tbaa !399
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(144) %i.jd, ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #13, !inline_history !1153
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.jy = add i8 %i.ix, -1
  %i.jz = add nuw nsw i8 %i.x, 1
  %i.ka = and i8 %i.jz, 7
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.kb = zext i8 %i.ij to i64                    ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !47
  %i.ke = icmp ult i8 %i.kd, %i.iv
  br i1 %i.ke, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.x
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.kb ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !415
  %i.ki = load i64, ptr %i.kf, align 8, !tbaa !416
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !417
  %i.kl = sub i64 %i.ki, %i.kk
  %i.km = icmp ult i64 %i.kh, %i.kl
  br i1 %i.km, label %thread-pre-split20, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit_crit_edge, %bb.x, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.kn = phi i8 [ %i.it, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit_crit_edge ], [ %i.ij, %bb.x ], [ %i.ij, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.ko = phi i8 [ %i.iu, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit_crit_edge ], [ %i.ii, %bb.x ], [ %i.ii, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit_crit_edge ], [ %i.kb, %bb.x ], [ %i.kb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.pre-phi ; 2 uses
  %.sroa.02.0.copyload.i.i.i.i.i10 = load i64, ptr %i.kp, align 8, !tbaa !95 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i11, align 8, !tbaa !95 ; 2 uses
  %.not3.i.i.i.i.i.i13 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i12, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not3.i.i.i.i.i.i13, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17, label %.lr.ph.i.i.i.i.i.i14

.lr.ph.i.i.i.i.i.i14:                             ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit, %.lr.ph.i.i.i.i.i.i14
  %.04.i.i.i.i.i.i15 = phi i64 [ %i.ku, %.lr.ph.i.i.i.i.i.i14 ], [ %.sroa.2.0.copyload.i.i.i.i.i12, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit ] ; 2 uses
  %i.kq = load ptr, ptr %i.u, align 32, !tbaa !1155, !nonnull !365, !align !386
  %i.kr = load ptr, ptr %i.t, align 8, !tbaa !497
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %.04.i.i.i.i.i.i15
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !349
  call void @_ZZN4mold22build_gdb_index_tablesINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_13ConcurrentMapINS_8MapValueEE5EntryEE_clESA_(ptr noundef nonnull align 8 dereferenceable(16) %i.kq, ptr noundef %i.kt)
  %i.ku = add i64 %.04.i.i.i.i.i.i15, 1           ; 2 uses
  %.not.i.i.i.i.i.i16 = icmp eq i64 %i.ku, %.sroa.02.0.copyload.i.i.i.i.i10
  br i1 %.not.i.i.i.i.i.i16, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17, label %.lr.ph.i.i.i.i.i.i14, !llvm.loop !1151

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17: ; preds = %.lr.ph.i.i.i.i.i.i14, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSB_8MapValueEE5EntryESt6vectorISG_SaISG_EEEEZNSB_22build_gdb_index_tablesINSB_6X86_64EEEvRNSB_7ContextIT_EEEUlSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRSP_.exit
  %i.kv = add i8 %i.ko, -1
  %i.kw = add i8 %i.kn, 7
  %i.kx = and i8 %i.kw, 7
  br label %thread-pre-split20

thread-pre-split20:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17
  %i.ky = phi i8 [ %i.kv, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.ii, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.kz = phi i8 [ %i.kx, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit17 ], [ %i.ij, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.la = icmp eq i8 %i.ky, 0
  br i1 %i.la, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %.thread, %thread-pre-split20
  %i.lb = phi i8 [ %i.ka, %.thread ], [ %i.x, %thread-pre-split20 ]
  %i.lc = phi i8 [ %i.jy, %.thread ], [ %i.ky, %thread-pre-split20 ]
  %i.ld = phi i8 [ %i.iy, %.thread ], [ %i.kz, %thread-pre-split20 ]
  %i.le = load ptr, ptr %3, align 8, !tbaa !399   ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 15
  %i.lg = load atomic i8, ptr %i.lf monotonic, align 1
  %i.lh = icmp eq i8 %i.lg, -1
  br i1 %i.lh, label %bb.z, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.z:                                             ; preds = %bb.y
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !47
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %bb.y, %bb.z
  %.0.i.i = phi ptr [ %i.lj, %bb.z ], [ %i.le, %bb.y ]
  %i.lk = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #13
  br i1 %i.lk, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.f, !llvm.loop !1154

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit: ; preds = %thread-pre-split20, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINS9_8MapValueEE5EntryESt6vectorISE_SaISE_EEEEZNS9_22build_gdb_index_tablesINS9_6X86_64EEEvRNS9_7ContextIT_EEEUlSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %bb.d, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZZN4mold22build_gdb_index_tablesINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_13ConcurrentMapINS_8MapValueEE5EntryEE_clESA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = alloca [256 x i32], align 16             ; 44 uses
  %i.b = alloca [256 x i32], align 16             ; 44 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %2 = alloca %"struct.std::ranges::less", align 1 ; 4 uses
  %3 = alloca %"struct.std::identity", align 1    ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !1160, !nonnull !365, !align !386
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !357
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  store i32 %i.k, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 21 uses
  %i.m = load atomic i32, ptr %i.j monotonic, align 4 ; 11 uses
  %i.n = zext i32 %i.m to i64                     ; 23 uses
  %i.o = icmp ult i32 %i.m, 256
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold7IntegerIjLb1ELi4EEELm18446744073709551615EENS_4lessESt8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISA_EEE4typeISC_NS_8danglingEEEOSA_SD_SE_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nuw nsw i64 %i.n, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i ; 2 uses
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SI_T1_(ptr nonnull %i.l, ptr nonnull %i.q, i64 noundef %i.t, ptr nonnull %2, ptr nonnull %3)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SI_(ptr nonnull %i.l, ptr nonnull %i.q, ptr nonnull %2, ptr nonnull %3)
  br label %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold7IntegerIjLb1ELi4EEELm18446744073709551615EENS_4lessESt8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISA_EEE4typeISC_NS_8danglingEEEOSA_SD_SE_.exit

_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold7IntegerIjLb1ELi4EEELm18446744073709551615EENS_4lessESt8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISA_EEE4typeISC_NS_8danglingEEEOSA_SD_SE_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1161, !nonnull !365, !align !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) %i.v, ptr noundef nonnull align 1 dereferenceable(1) %i.c) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !528  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !517  ; 5 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.n
  br i1 %i.ae, label %_ZNSt6vectorIN4mold7IntegerIjLb1ELi4EEESaIS2_EE6resizeEm.exit.thread.i, label %bb.e

_ZNSt6vectorIN4mold7IntegerIjLb1ELi4EEESaIS2_EE6resizeEm.exit.thread.i: ; preds = %bb.d
  %i.af = sub nuw nsw i64 %i.n, %i.ad
  call void @_ZNSt6vectorIN4mold7IntegerIjLb1ELi4EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 noundef %i.af)
  %.pre.i = load ptr, ptr %i.w, align 8, !tbaa !517
  br label %.lr.ph.us.us.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp ugt i64 %i.ad, %i.n
  br i1 %i.ag, label %bb.f, label %.lr.ph.us.us.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.n ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.ah
  br i1 %.not.i.i.i, label %.lr.ph.us.us.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !528
  br label %.lr.ph.us.us.preheader.i

.lr.ph.us.us.preheader.i:                         ; preds = %bb.e, %bb.f, %bb.g, %_ZNSt6vectorIN4mold7IntegerIjLb1ELi4EEESaIS2_EE6resizeEm.exit.thread.i
  %i.ai = phi ptr [ %.pre.i, %_ZNSt6vectorIN4mold7IntegerIjLb1ELi4EEESaIS2_EE6resizeEm.exit.thread.i ], [ %i.z, %bb.g ], [ %i.z, %bb.f ], [ %i.z, %bb.e ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %4 = add nsw i64 %i.n, -1                       ; 8 uses
  %xtraiter = and i64 %i.n, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %.epil.preheader, label %.lr.ph.us.us.preheader.i.new

.lr.ph.us.us.preheader.i.new:                     ; preds = %.lr.ph.us.us.preheader.i
  %unroll_iter = and i64 %i.n, 4294967294
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us.preheader.i.new
  %.02030.us.us.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i.new ], [ %i.aw, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.us.us.preheader.i.new ], [ %niter.next.1, %bb.h ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.i
  %.0.copyload.i.us.us.i = load i32, ptr %i.aj, align 1
  %i.ak = and i32 %.0.copyload.i.us.us.i, 255
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !58
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.0.copyload.i.us.us.i.1 = load i32, ptr %i.aq, align 1
  %i.ar = and i32 %.0.copyload.i.us.us.i.1, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !58
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 4, !tbaa !58
  %i.aw = add nuw nsw i64 %.02030.us.us.i, 2      ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %bb.h, !llvm.loop !1156

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.preheader.i
  %.02030.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %i.aw, %._crit_edge.us.us.i.unr-lcssa ]
  %lcmp.mod19 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.i.epil.init
  %.0.copyload.i.us.us.i.epil = load i32, ptr %i.ax, align 1
  %i.ay = and i32 %.0.copyload.i.us.us.i.epil, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !58
  %i.bc = add i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !58
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 16, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge.us.us.i
  %i.bd = phi i32 [ 0, %._crit_edge.us.us.i ], [ %i.cf, %bb.i ]
  %.01931.us.us.i = phi i64 [ 1, %._crit_edge.us.us.i ], [ %i.ch, %bb.i ] ; 7 uses
  %i.be = getelementptr [4 x i8], ptr %i.a, i64 %.01931.us.us.i
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !58
  %i.bh = add i32 %i.bg, %i.bd                    ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01931.us.us.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !58
  %i.bj = add nuw nsw i64 %.01931.us.us.i, 1      ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %i.a, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !58
  %i.bn = add i32 %i.bm, %i.bh                    ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bj
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !58
  %i.bp = add nuw nsw i64 %.01931.us.us.i, 2      ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %i.a, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !58
  %i.bt = add i32 %i.bs, %i.bn                    ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bp
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !58
  %i.bv = add nuw nsw i64 %.01931.us.us.i, 3      ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.a, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !58
  %i.bz = add i32 %i.by, %i.bt                    ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bv
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !58
  %i.cb = add nuw nsw i64 %.01931.us.us.i, 4      ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %i.a, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !58
  %i.cf = add i32 %i.ce, %i.bz                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !58
  %i.ch = add nuw nsw i64 %.01931.us.us.i, 5      ; 2 uses
  %exitcond48.not.i.4 = icmp eq i64 %i.ch, 256
  br i1 %exitcond48.not.i.4, label %.preheader.us.us.i.preheader, label %bb.i, !llvm.loop !1157

.preheader.us.us.i.preheader:                     ; preds = %bb.i
  %xtraiter20 = and i64 %i.n, 1
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %.preheader.us.us.i.epil.preheader, label %.preheader.us.us.i.preheader.new

.preheader.us.us.i.preheader.new:                 ; preds = %.preheader.us.us.i.preheader
  %unroll_iter23 = and i64 %i.n, 4294967294
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i, %.preheader.us.us.i.preheader.new
  %.01832.us.us.i = phi i64 [ 0, %.preheader.us.us.i.preheader.new ], [ %i.cz, %.preheader.us.us.i ] ; 3 uses
  %niter24 = phi i64 [ 0, %.preheader.us.us.i.preheader.new ], [ %niter24.next.1, %.preheader.us.us.i ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.i
  %.0.copyload.i21.us.us.i = load i32, ptr %i.ci, align 1 ; 2 uses
  %i.cj = and i32 %.0.copyload.i21.us.us.i, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !58 ; 2 uses
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !58
  %i.co = zext i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.co
  store i32 %.0.copyload.i21.us.us.i, ptr %i.cp, align 1
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %.0.copyload.i21.us.us.i.1 = load i32, ptr %i.cr, align 1 ; 2 uses
  %i.cs = and i32 %.0.copyload.i21.us.us.i.1, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !58 ; 2 uses
  %i.cw = add i32 %i.cv, 1
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !58
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cx
  store i32 %.0.copyload.i21.us.us.i.1, ptr %i.cy, align 1
  %i.cz = add nuw nsw i64 %.01832.us.us.i, 2      ; 2 uses
  %niter24.next.1 = add i64 %niter24, 2           ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %._crit_edge34.us.us.i.unr-lcssa, label %.preheader.us.us.i, !llvm.loop !1158

._crit_edge34.us.us.i.unr-lcssa:                  ; preds = %.preheader.us.us.i
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %._crit_edge34.us.us.i, label %.preheader.us.us.i.epil.preheader

.preheader.us.us.i.epil.preheader:                ; preds = %._crit_edge34.us.us.i.unr-lcssa, %.preheader.us.us.i.preheader
  %.01832.us.us.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.preheader ], [ %i.cz, %._crit_edge34.us.us.i.unr-lcssa ]
  %lcmp.mod22 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod22)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.i.epil.init
  %.0.copyload.i21.us.us.i.epil = load i32, ptr %i.da, align 1 ; 2 uses
  %i.db = and i32 %.0.copyload.i21.us.us.i.epil, 255
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !58 ; 2 uses
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !58
  %i.dg = zext i32 %i.de to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dg
  store i32 %.0.copyload.i21.us.us.i.epil, ptr %i.dh, align 1
  br label %._crit_edge34.us.us.i

._crit_edge34.us.us.i:                            ; preds = %._crit_edge34.us.us.i.unr-lcssa, %.preheader.us.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %xtraiter26 = and i64 %i.n, 1
  %7 = icmp eq i64 %4, 0
  br i1 %7, label %.epil.preheader25, label %._crit_edge34.us.us.i.new

._crit_edge34.us.us.i.new:                        ; preds = %._crit_edge34.us.us.i
  %unroll_iter29 = and i64 %i.n, 4294967294
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge34.us.us.i.new
  %.02030.us.us.1.i = phi i64 [ 0, %._crit_edge34.us.us.i.new ], [ %i.dx, %bb.j ] ; 3 uses
  %niter30 = phi i64 [ 0, %._crit_edge34.us.us.i.new ], [ %niter30.next.1, %bb.j ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.1.i
  %.0.copyload.i.us.us.1.i = load i32, ptr %i.di, align 1
  %i.dj = lshr i32 %.0.copyload.i.us.us.1.i, 8
  %i.dk = and i32 %i.dj, 255
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !58
  %i.do = add i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !58
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.1.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %.0.copyload.i.us.us.1.i.1 = load i32, ptr %i.dq, align 1
  %i.dr = lshr i32 %.0.copyload.i.us.us.1.i.1, 8
  %i.ds = and i32 %i.dr, 255
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !58
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !58
  %i.dx = add nuw nsw i64 %.02030.us.us.1.i, 2    ; 2 uses
  %niter30.next.1 = add i64 %niter30, 2           ; 2 uses
  %niter30.ncmp.1 = icmp eq i64 %niter30.next.1, %unroll_iter29
  br i1 %niter30.ncmp.1, label %._crit_edge.us.us.1.i.unr-lcssa, label %bb.j, !llvm.loop !1156

._crit_edge.us.us.1.i.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %._crit_edge.us.us.1.i, label %.epil.preheader25

.epil.preheader25:                                ; preds = %._crit_edge.us.us.1.i.unr-lcssa, %._crit_edge34.us.us.i
  %.02030.us.us.1.i.epil.init = phi i64 [ 0, %._crit_edge34.us.us.i ], [ %i.dx, %._crit_edge.us.us.1.i.unr-lcssa ]
  %lcmp.mod28 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.1.i.epil.init
  %.0.copyload.i.us.us.1.i.epil = load i32, ptr %i.dy, align 1
  %i.dz = lshr i32 %.0.copyload.i.us.us.1.i.epil, 8
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.eb ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !58
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !58
  br label %._crit_edge.us.us.1.i

._crit_edge.us.us.1.i:                            ; preds = %._crit_edge.us.us.1.i.unr-lcssa, %.epil.preheader25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 16, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.us.us.1.i
  %i.ef = phi i32 [ 0, %._crit_edge.us.us.1.i ], [ %i.fh, %bb.k ]
  %.01931.us.us.1.i = phi i64 [ 1, %._crit_edge.us.us.1.i ], [ %i.fj, %bb.k ] ; 7 uses
  %i.eg = getelementptr [4 x i8], ptr %i.a, i64 %.01931.us.us.1.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !58
  %i.ej = add i32 %i.ei, %i.ef                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01931.us.us.1.i
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !58
  %i.el = add nuw nsw i64 %.01931.us.us.1.i, 1    ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %i.a, i64 %i.el
  %i.en = getelementptr i8, ptr %i.em, i64 -4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !58
  %i.ep = add i32 %i.eo, %i.ej                    ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !58
  %i.er = add nuw nsw i64 %.01931.us.us.1.i, 2    ; 2 uses
  %i.es = getelementptr [4 x i8], ptr %i.a, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !58
  %i.ev = add i32 %i.eu, %i.ep                    ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.er
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !58
  %i.ex = add nuw nsw i64 %.01931.us.us.1.i, 3    ; 2 uses
  %i.ey = getelementptr [4 x i8], ptr %i.a, i64 %i.ex
  %i.ez = getelementptr i8, ptr %i.ey, i64 -4
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !58
  %i.fb = add i32 %i.fa, %i.ev                    ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !58
  %i.fd = add nuw nsw i64 %.01931.us.us.1.i, 4    ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.a, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 -4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !58
  %i.fh = add i32 %i.fg, %i.fb                    ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fd
  store i32 %i.fh, ptr %i.fi, align 4, !tbaa !58
  %i.fj = add nuw nsw i64 %.01931.us.us.1.i, 5    ; 2 uses
  %exitcond48.1.not.i.4 = icmp eq i64 %i.fj, 256
  br i1 %exitcond48.1.not.i.4, label %.preheader.us.us.1.i.preheader, label %bb.k, !llvm.loop !1157

.preheader.us.us.1.i.preheader:                   ; preds = %bb.k
  %xtraiter31 = and i64 %i.n, 1
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %.preheader.us.us.1.i.epil.preheader, label %.preheader.us.us.1.i.preheader.new

.preheader.us.us.1.i.preheader.new:               ; preds = %.preheader.us.us.1.i.preheader
  %unroll_iter34 = and i64 %i.n, 4294967294
  br label %.preheader.us.us.1.i

.preheader.us.us.1.i:                             ; preds = %.preheader.us.us.1.i, %.preheader.us.us.1.i.preheader.new
  %.01832.us.us.1.i = phi i64 [ 0, %.preheader.us.us.1.i.preheader.new ], [ %i.gd, %.preheader.us.us.1.i ] ; 3 uses
  %niter35 = phi i64 [ 0, %.preheader.us.us.1.i.preheader.new ], [ %niter35.next.1, %.preheader.us.us.1.i ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.1.i
  %.0.copyload.i21.us.us.1.i = load i32, ptr %i.fk, align 1 ; 2 uses
  %i.fl = lshr i32 %.0.copyload.i21.us.us.1.i, 8
  %i.fm = and i32 %i.fl, 255
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !58 ; 2 uses
  %i.fq = add i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !58
  %i.fr = zext i32 %i.fp to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.fr
  store i32 %.0.copyload.i21.us.us.1.i, ptr %i.fs, align 1
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.1.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %.0.copyload.i21.us.us.1.i.1 = load i32, ptr %i.fu, align 1 ; 2 uses
  %i.fv = lshr i32 %.0.copyload.i21.us.us.1.i.1, 8
  %i.fw = and i32 %i.fv, 255
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fx ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !58 ; 2 uses
  %i.ga = add i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !58
  %i.gb = zext i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gb
  store i32 %.0.copyload.i21.us.us.1.i.1, ptr %i.gc, align 1
  %i.gd = add nuw nsw i64 %.01832.us.us.1.i, 2    ; 2 uses
  %niter35.next.1 = add i64 %niter35, 2           ; 2 uses
  %niter35.ncmp.1 = icmp eq i64 %niter35.next.1, %unroll_iter34
  br i1 %niter35.ncmp.1, label %._crit_edge34.us.us.1.i.unr-lcssa, label %.preheader.us.us.1.i, !llvm.loop !1158

._crit_edge34.us.us.1.i.unr-lcssa:                ; preds = %.preheader.us.us.1.i
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %._crit_edge34.us.us.1.i, label %.preheader.us.us.1.i.epil.preheader

.preheader.us.us.1.i.epil.preheader:              ; preds = %._crit_edge34.us.us.1.i.unr-lcssa, %.preheader.us.us.1.i.preheader
  %.01832.us.us.1.i.epil.init = phi i64 [ 0, %.preheader.us.us.1.i.preheader ], [ %i.gd, %._crit_edge34.us.us.1.i.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod33)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.1.i.epil.init
  %.0.copyload.i21.us.us.1.i.epil = load i32, ptr %i.ge, align 1 ; 2 uses
  %i.gf = lshr i32 %.0.copyload.i21.us.us.1.i.epil, 8
  %i.gg = and i32 %i.gf, 255
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !58 ; 2 uses
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !58
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gl
  store i32 %.0.copyload.i21.us.us.1.i.epil, ptr %i.gm, align 1
  br label %._crit_edge34.us.us.1.i

._crit_edge34.us.us.1.i:                          ; preds = %._crit_edge34.us.us.1.i.unr-lcssa, %.preheader.us.us.1.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %xtraiter37 = and i64 %i.n, 1
  %9 = icmp eq i64 %4, 0
  br i1 %9, label %.epil.preheader36, label %._crit_edge34.us.us.1.i.new

._crit_edge34.us.us.1.i.new:                      ; preds = %._crit_edge34.us.us.1.i
  %unroll_iter40 = and i64 %i.n, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge34.us.us.1.i.new
  %.02030.us.us.2.i = phi i64 [ 0, %._crit_edge34.us.us.1.i.new ], [ %i.hc, %bb.l ] ; 3 uses
  %niter41 = phi i64 [ 0, %._crit_edge34.us.us.1.i.new ], [ %niter41.next.1, %bb.l ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.2.i
  %.0.copyload.i.us.us.2.i = load i32, ptr %i.gn, align 1
  %i.go = lshr i32 %.0.copyload.i.us.us.2.i, 16
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !58
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !58
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.2.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %.0.copyload.i.us.us.2.i.1 = load i32, ptr %i.gv, align 1
  %i.gw = lshr i32 %.0.copyload.i.us.us.2.i.1, 16
  %i.gx = and i32 %i.gw, 255
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !58
  %i.hb = add i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !58
  %i.hc = add nuw nsw i64 %.02030.us.us.2.i, 2    ; 2 uses
  %niter41.next.1 = add i64 %niter41, 2           ; 2 uses
  %niter41.ncmp.1 = icmp eq i64 %niter41.next.1, %unroll_iter40
  br i1 %niter41.ncmp.1, label %._crit_edge.us.us.2.i.unr-lcssa, label %bb.l, !llvm.loop !1156

._crit_edge.us.us.2.i.unr-lcssa:                  ; preds = %bb.l
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %._crit_edge.us.us.2.i, label %.epil.preheader36

.epil.preheader36:                                ; preds = %._crit_edge.us.us.2.i.unr-lcssa, %._crit_edge34.us.us.1.i
  %.02030.us.us.2.i.epil.init = phi i64 [ 0, %._crit_edge34.us.us.1.i ], [ %i.hc, %._crit_edge.us.us.2.i.unr-lcssa ]
  %lcmp.mod39 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod39)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.2.i.epil.init
  %.0.copyload.i.us.us.2.i.epil = load i32, ptr %i.hd, align 1
  %i.he = lshr i32 %.0.copyload.i.us.us.2.i.epil, 16
  %i.hf = and i32 %i.he, 255
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !58
  %i.hj = add i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !58
  br label %._crit_edge.us.us.2.i

._crit_edge.us.us.2.i:                            ; preds = %._crit_edge.us.us.2.i.unr-lcssa, %.epil.preheader36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 16, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.us.us.2.i
  %i.hk = phi i32 [ 0, %._crit_edge.us.us.2.i ], [ %i.im, %bb.m ]
  %.01931.us.us.2.i = phi i64 [ 1, %._crit_edge.us.us.2.i ], [ %i.io, %bb.m ] ; 7 uses
  %i.hl = getelementptr [4 x i8], ptr %i.a, i64 %.01931.us.us.2.i
  %i.hm = getelementptr i8, ptr %i.hl, i64 -4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !58
  %i.ho = add i32 %i.hn, %i.hk                    ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01931.us.us.2.i
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !58
  %i.hq = add nuw nsw i64 %.01931.us.us.2.i, 1    ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.a, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !58
  %i.hu = add i32 %i.ht, %i.ho                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hq
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !58
  %i.hw = add nuw nsw i64 %.01931.us.us.2.i, 2    ; 2 uses
  %i.hx = getelementptr [4 x i8], ptr %i.a, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !58
  %i.ia = add i32 %i.hz, %i.hu                    ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hw
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !58
  %i.ic = add nuw nsw i64 %.01931.us.us.2.i, 3    ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.a, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !58
  %i.ig = add i32 %i.if, %i.ia                    ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ic
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !58
  %i.ii = add nuw nsw i64 %.01931.us.us.2.i, 4    ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %i.a, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !58
  %i.im = add i32 %i.il, %i.ig                    ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ii
  store i32 %i.im, ptr %i.in, align 4, !tbaa !58
  %i.io = add nuw nsw i64 %.01931.us.us.2.i, 5    ; 2 uses
  %exitcond48.2.not.i.4 = icmp eq i64 %i.io, 256
  br i1 %exitcond48.2.not.i.4, label %.preheader.us.us.2.i.preheader, label %bb.m, !llvm.loop !1157

.preheader.us.us.2.i.preheader:                   ; preds = %bb.m
  %xtraiter42 = and i64 %i.n, 1
  %10 = icmp eq i64 %4, 0
  br i1 %10, label %.preheader.us.us.2.i.epil.preheader, label %.preheader.us.us.2.i.preheader.new

.preheader.us.us.2.i.preheader.new:               ; preds = %.preheader.us.us.2.i.preheader
  %unroll_iter45 = and i64 %i.n, 4294967294
  br label %.preheader.us.us.2.i

.preheader.us.us.2.i:                             ; preds = %.preheader.us.us.2.i, %.preheader.us.us.2.i.preheader.new
  %.01832.us.us.2.i = phi i64 [ 0, %.preheader.us.us.2.i.preheader.new ], [ %i.ji, %.preheader.us.us.2.i ] ; 3 uses
  %niter46 = phi i64 [ 0, %.preheader.us.us.2.i.preheader.new ], [ %niter46.next.1, %.preheader.us.us.2.i ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.2.i
  %.0.copyload.i21.us.us.2.i = load i32, ptr %i.ip, align 1 ; 2 uses
  %i.iq = lshr i32 %.0.copyload.i21.us.us.2.i, 16
  %i.ir = and i32 %i.iq, 255
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.is ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !58 ; 2 uses
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !58
  %i.iw = zext i32 %i.iu to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.iw
  store i32 %.0.copyload.i21.us.us.2.i, ptr %i.ix, align 1
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.2.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %.0.copyload.i21.us.us.2.i.1 = load i32, ptr %i.iz, align 1 ; 2 uses
  %i.ja = lshr i32 %.0.copyload.i21.us.us.2.i.1, 16
  %i.jb = and i32 %i.ja, 255
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jc ; 2 uses
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !58 ; 2 uses
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr %i.jd, align 4, !tbaa !58
  %i.jg = zext i32 %i.je to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.jg
  store i32 %.0.copyload.i21.us.us.2.i.1, ptr %i.jh, align 1
  %i.ji = add nuw nsw i64 %.01832.us.us.2.i, 2    ; 2 uses
  %niter46.next.1 = add i64 %niter46, 2           ; 2 uses
  %niter46.ncmp.1 = icmp eq i64 %niter46.next.1, %unroll_iter45
  br i1 %niter46.ncmp.1, label %._crit_edge34.us.us.2.i.unr-lcssa, label %.preheader.us.us.2.i, !llvm.loop !1158

._crit_edge34.us.us.2.i.unr-lcssa:                ; preds = %.preheader.us.us.2.i
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %._crit_edge34.us.us.2.i, label %.preheader.us.us.2.i.epil.preheader

.preheader.us.us.2.i.epil.preheader:              ; preds = %._crit_edge34.us.us.2.i.unr-lcssa, %.preheader.us.us.2.i.preheader
  %.01832.us.us.2.i.epil.init = phi i64 [ 0, %.preheader.us.us.2.i.preheader ], [ %i.ji, %._crit_edge34.us.us.2.i.unr-lcssa ]
  %lcmp.mod44 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod44)
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.2.i.epil.init
  %.0.copyload.i21.us.us.2.i.epil = load i32, ptr %i.jj, align 1 ; 2 uses
  %i.jk = lshr i32 %.0.copyload.i21.us.us.2.i.epil, 16
  %i.jl = and i32 %i.jk, 255
  %i.jm = zext nneg i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jm ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !58 ; 2 uses
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !58
  %i.jq = zext i32 %i.jo to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.jq
  store i32 %.0.copyload.i21.us.us.2.i.epil, ptr %i.jr, align 1
  br label %._crit_edge34.us.us.2.i

._crit_edge34.us.us.2.i:                          ; preds = %._crit_edge34.us.us.2.i.unr-lcssa, %.preheader.us.us.2.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %xtraiter48 = and i64 %i.n, 1
  %11 = icmp eq i64 %4, 0
  br i1 %11, label %.epil.preheader47, label %._crit_edge34.us.us.2.i.new

._crit_edge34.us.us.2.i.new:                      ; preds = %._crit_edge34.us.us.2.i
  %unroll_iter51 = and i64 %i.n, 4294967294
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %._crit_edge34.us.us.2.i.new
  %.02030.us.us.3.i = phi i64 [ 0, %._crit_edge34.us.us.2.i.new ], [ %i.kf, %bb.n ] ; 3 uses
  %niter52 = phi i64 [ 0, %._crit_edge34.us.us.2.i.new ], [ %niter52.next.1, %bb.n ]
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.3.i
  %.0.copyload.i.us.us.3.i = load i32, ptr %i.js, align 1
  %i.jt = lshr i32 %.0.copyload.i.us.us.3.i, 24
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !58
  %i.jx = add i32 %i.jw, 1
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !58
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.3.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %.0.copyload.i.us.us.3.i.1 = load i32, ptr %i.jz, align 1
  %i.ka = lshr i32 %.0.copyload.i.us.us.3.i.1, 24
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kb ; 2 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !58
  %i.ke = add i32 %i.kd, 1
  store i32 %i.ke, ptr %i.kc, align 4, !tbaa !58
  %i.kf = add nuw nsw i64 %.02030.us.us.3.i, 2    ; 2 uses
  %niter52.next.1 = add i64 %niter52, 2           ; 2 uses
  %niter52.ncmp.1 = icmp eq i64 %niter52.next.1, %unroll_iter51
  br i1 %niter52.ncmp.1, label %._crit_edge.us.us.3.i.unr-lcssa, label %bb.n, !llvm.loop !1156

._crit_edge.us.us.3.i.unr-lcssa:                  ; preds = %bb.n
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %._crit_edge.us.us.3.i, label %.epil.preheader47

.epil.preheader47:                                ; preds = %._crit_edge.us.us.3.i.unr-lcssa, %._crit_edge34.us.us.2.i
  %.02030.us.us.3.i.epil.init = phi i64 [ 0, %._crit_edge34.us.us.2.i ], [ %i.kf, %._crit_edge.us.us.3.i.unr-lcssa ]
  %lcmp.mod50 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod50)
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.3.i.epil.init
  %.0.copyload.i.us.us.3.i.epil = load i32, ptr %i.kg, align 1
  %i.kh = lshr i32 %.0.copyload.i.us.us.3.i.epil, 24
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ki ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !58
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !58
  br label %._crit_edge.us.us.3.i

._crit_edge.us.us.3.i:                            ; preds = %._crit_edge.us.us.3.i.unr-lcssa, %.epil.preheader47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 16, !tbaa !58
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %._crit_edge.us.us.3.i
  %i.km = phi i32 [ 0, %._crit_edge.us.us.3.i ], [ %i.lo, %bb.o ]
  %.01931.us.us.3.i = phi i64 [ 1, %._crit_edge.us.us.3.i ], [ %i.lq, %bb.o ] ; 7 uses
  %i.kn = getelementptr [4 x i8], ptr %i.a, i64 %.01931.us.us.3.i
  %i.ko = getelementptr i8, ptr %i.kn, i64 -4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !58
  %i.kq = add i32 %i.kp, %i.km                    ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01931.us.us.3.i
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !58
  %i.ks = add nuw nsw i64 %.01931.us.us.3.i, 1    ; 2 uses
  %i.kt = getelementptr [4 x i8], ptr %i.a, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kt, i64 -4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !58
  %i.kw = add i32 %i.kv, %i.kq                    ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ks
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !58
  %i.ky = add nuw nsw i64 %.01931.us.us.3.i, 2    ; 2 uses
  %i.kz = getelementptr [4 x i8], ptr %i.a, i64 %i.ky
  %i.la = getelementptr i8, ptr %i.kz, i64 -4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !58
  %i.lc = add i32 %i.lb, %i.kw                    ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ky
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !58
  %i.le = add nuw nsw i64 %.01931.us.us.3.i, 3    ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %i.a, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 -4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !58
  %i.li = add i32 %i.lh, %i.lc                    ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.le
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !58
  %i.lk = add nuw nsw i64 %.01931.us.us.3.i, 4    ; 2 uses
  %i.ll = getelementptr [4 x i8], ptr %i.a, i64 %i.lk
  %i.lm = getelementptr i8, ptr %i.ll, i64 -4
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !58
  %i.lo = add i32 %i.ln, %i.li                    ; 2 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lk
  store i32 %i.lo, ptr %i.lp, align 4, !tbaa !58
  %i.lq = add nuw nsw i64 %.01931.us.us.3.i, 5    ; 2 uses
  %exitcond48.3.not.i.4 = icmp eq i64 %i.lq, 256
  br i1 %exitcond48.3.not.i.4, label %.preheader.us.us.3.i.preheader, label %bb.o, !llvm.loop !1157

.preheader.us.us.3.i.preheader:                   ; preds = %bb.o
  %xtraiter53 = and i64 %i.n, 1
  %12 = icmp eq i64 %4, 0
  br i1 %12, label %.preheader.us.us.3.i.epil.preheader, label %.preheader.us.us.3.i.preheader.new

.preheader.us.us.3.i.preheader.new:               ; preds = %.preheader.us.us.3.i.preheader
  %unroll_iter56 = and i64 %i.n, 4294967294
  br label %.preheader.us.us.3.i

.preheader.us.us.3.i:                             ; preds = %.preheader.us.us.3.i, %.preheader.us.us.3.i.preheader.new
  %.01832.us.us.3.i = phi i64 [ 0, %.preheader.us.us.3.i.preheader.new ], [ %i.mi, %.preheader.us.us.3.i ] ; 3 uses
  %niter57 = phi i64 [ 0, %.preheader.us.us.3.i.preheader.new ], [ %niter57.next.1, %.preheader.us.us.3.i ]
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.3.i
  %.0.copyload.i21.us.us.3.i = load i32, ptr %i.lr, align 1 ; 2 uses
  %i.ls = lshr i32 %.0.copyload.i21.us.us.3.i, 24
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lt ; 2 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !58 ; 2 uses
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !58
  %i.lx = zext i32 %i.lv to i64
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.lx
  store i32 %.0.copyload.i21.us.us.3.i, ptr %i.ly, align 1
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.3.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %.0.copyload.i21.us.us.3.i.1 = load i32, ptr %i.ma, align 1 ; 2 uses
  %i.mb = lshr i32 %.0.copyload.i21.us.us.3.i.1, 24
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.mc ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !58 ; 2 uses
  %i.mf = add i32 %i.me, 1
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !58
  %i.mg = zext i32 %i.me to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.mg
  store i32 %.0.copyload.i21.us.us.3.i.1, ptr %i.mh, align 1
  %i.mi = add nuw nsw i64 %.01832.us.us.3.i, 2    ; 2 uses
  %niter57.next.1 = add i64 %niter57, 2           ; 2 uses
  %niter57.ncmp.1 = icmp eq i64 %niter57.next.1, %unroll_iter56
  br i1 %niter57.ncmp.1, label %_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit.unr-lcssa, label %.preheader.us.us.3.i, !llvm.loop !1158

_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit.unr-lcssa: ; preds = %.preheader.us.us.3.i
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod54.not, label %_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit, label %.preheader.us.us.3.i.epil.preheader

.preheader.us.us.3.i.epil.preheader:              ; preds = %_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit.unr-lcssa, %.preheader.us.us.3.i.preheader
  %.01832.us.us.3.i.epil.init = phi i64 [ 0, %.preheader.us.us.3.i.preheader ], [ %i.mi, %_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit.unr-lcssa ]
  %lcmp.mod55 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod55)
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.3.i.epil.init
  %.0.copyload.i21.us.us.3.i.epil = load i32, ptr %i.mj, align 1 ; 2 uses
  %i.mk = lshr i32 %.0.copyload.i21.us.us.3.i.epil, 24
  %i.ml = zext nneg i32 %i.mk to i64
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ml ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !58 ; 2 uses
  %i.mo = add i32 %i.mn, 1
  store i32 %i.mo, ptr %i.mm, align 4, !tbaa !58
  %i.mp = zext i32 %i.mn to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.mp
  store i32 %.0.copyload.i21.us.us.3.i.epil, ptr %i.mq, align 1
  br label %_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit

_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit: ; preds = %_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit.unr-lcssa, %.preheader.us.us.3.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.p

bb.p:                                             ; preds = %_ZN4moldL10radix_sortESt4spanINS_7IntegerIjLb1ELi4EEELm18446744073709551615EERSt6vectorIS2_SaIS2_EE.exit, %_ZNKSt6ranges9__sort_fnclITkNS_19random_access_rangeERSt4spanIN4mold7IntegerIjLb1ELi4EEELm18446744073709551615EENS_4lessESt8identityQ8sortableIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET0_T1_EEENSt13__conditionalIX14borrowed_rangeISA_EEE4typeISC_NS_8danglingEEEOSA_SD_SE_.exit
  %i.mr = load ptr, ptr %0, align 8, !tbaa !1160, !nonnull !365, !align !386
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !211
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !356
  %i.mv = zext i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mv ; 2 uses
  %i.mx = load atomic ptr, ptr %1 monotonic, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 8, !tbaa !431
  %i.na = zext i32 %i.mz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mw, ptr align 1 %i.mx, i64 %i.na, i1 false)
  %i.nb = load i32, ptr %i.my, align 8, !tbaa !431
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.nc
  store i8 0, ptr %i.nd, align 1, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.588", align 8 ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph32

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.ar, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph32, !llvm.loop !1162

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.015.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SJ_(ptr %0, ptr %storemerge21.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SJ_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.j, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SJ_.exit.i.i ], [ %storemerge21.lcssa, %._crit_edge ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.j, align 1, !tbaa !47 ; 2 uses
  %i.k = load i32, ptr %0, align 1, !tbaa !47
  store i32 %i.k, ptr %i.j, align 1, !tbaa !47
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = lshr i64 %i.o, 1
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.036.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.t, align 1
  %.0.copyload.i2.i.i.i.i.i.i.i.i.i = load i32, ptr %i.v, align 1
  %i.w = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.u, i64 %i.s ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i.i.i
  %i.z = load i32, ptr %i.x, align 1, !tbaa !47
  store i32 %i.z, ptr %i.y, align 1, !tbaa !47
  %i.aa = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !24

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ab = and i64 %i.m, 4
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = add nsw i64 %i.n, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ae
  br i1 %i.af, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  %i.ak = load i32, ptr %i.ai, align 1, !tbaa !47
  store i32 %i.ak, ptr %i.aj, align 1, !tbaa !47
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SJ_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.020.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ah, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.020.i.i.i.i.i = phi i64 [ %.0921.i.i89.i.i.i, %bb.e ], [ %.020.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i.i.i = add nsw i64 %.020.i.i.i.i.i, -1
  %.0921.i.i89.i.i.i = lshr i64 %.0921.in.i.i.i.i.i, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0921.i.i89.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.al, align 1 ; 2 uses
  %i.am = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.am, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SJ_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %.020.i.i.i.i.i
  store i32 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 1, !tbaa !47
  %.not10.i.i.i = icmp eq i64 %.0921.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SJ_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !25

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SJ_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %.sroa.03.0.copyload.i.i.i, ptr %i.ao, align 1, !tbaa !47
  %i.ap = icmp sgt i64 %i.m, 4
  br i1 %i.ap, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SI_.exit, !llvm.loop !1163

.lr.ph32:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2131 = phi ptr [ %.sroa.015.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02230 = phi i64 [ %i.ar, %bb.b ], [ %2, %.lr.ph ]
  %i.aq = phi i64 [ %i.bf, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ar = add nsw i64 %.02230, -1                 ; 3 uses
  %i.as = lshr i64 %i.aq, 1
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %storemerge2131, i64 -4 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i = load i32, ptr %i.f, align 1 ; 5 uses
  %.0.copyload.i2.i.i.i.i.i.i.i = load i32, ptr %i.at, align 1 ; 5 uses
  %i.av = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i.i.i
  %.0.copyload.i2.i.i.i.i.i27.i.i = load i32, ptr %i.au, align 1 ; 6 uses
  br i1 %i.av, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph32
  %i.aw = icmp ult i32 %.0.copyload.i2.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i27.i.i
  br i1 %i.aw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %0, align 1, !tbaa !47
  store i32 %.0.copyload.i2.i.i.i.i.i.i.i, ptr %0, align 1, !tbaa !47
  store i32 %.sroa.0.0.copyload.i.i.i.i, ptr %i.at, align 1, !tbaa !47
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SG_SI_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.ax = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i27.i.i
  %.sroa.0.0.copyload.i.i30.i.i = load i32, ptr %0, align 1, !tbaa !47 ; 2 uses
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %.0.copyload.i2.i.i.i.i.i27.i.i, ptr %0, align 1, !tbaa !47
  store i32 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.au, align 1, !tbaa !47
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SG_SI_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i32 %.0.copyload.i.i.i.i.i.i.i.i, ptr %0, align 1, !tbaa !47
  store i32 %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 1, !tbaa !47
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SG_SI_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph32
  %i.ay = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i27.i.i
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i34.i.i = load i32, ptr %0, align 1, !tbaa !47
  store i32 %.0.copyload.i.i.i.i.i.i.i.i, ptr %0, align 1, !tbaa !47
  store i32 %.sroa.0.0.copyload.i.i34.i.i, ptr %i.f, align 1, !tbaa !47
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4mold7IntegerIjLb1ELi4EEESt4spanIS4_Lm18446744073709551615EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSB_4lessESt8identityEEDaRT_RT0_EUlOSG_OSI_E_EEEvSG_SG_SG_SG_SI_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.az = icmp ult i32 %.0.copyload.i2.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i27.i.i
end_hunk_0
