Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/gdb-index.cc.X86_64?download=true
inline.NumInlined: 4499
inline.NumDeleted: 1982
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPPN4mold13ConcurrentMapINSF_8MapValueEE5EntryESt6vectorISK_SaISK_EEEEZNSF_22build_gdb_index_tablesINSF_6X86_64EEEvRNSF_7ContextIT_EEEUlSK_E_SK_EEKNS1_16auto_partitionerEEESA_EEvRST_RT0_RNS1_14execution_dataE:bb.a
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
  %i.kw = add nuw i8 %i.kn, 7
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
  %i.aj = add nsw i64 %i.n, -1                    ; 8 uses
  %xtraiter = and i64 %i.n, 1
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.us.us.preheader.i.new

.lr.ph.us.us.preheader.i.new:                     ; preds = %.lr.ph.us.us.preheader.i
  %unroll_iter = and i64 %i.n, 4294967294
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us.preheader.i.new
  %.02030.us.us.i = phi i64 [ 0, %.lr.ph.us.us.preheader.i.new ], [ %i.ay, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.us.us.preheader.i.new ], [ %niter.next.1, %bb.h ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.i
  %.0.copyload.i.us.us.i = load i32, ptr %i.al, align 1
  %i.am = and i32 %.0.copyload.i.us.us.i, 255
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !58
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !58
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %.0.copyload.i.us.us.i.1 = load i32, ptr %i.as, align 1
  %i.at = and i32 %.0.copyload.i.us.us.i.1, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !58
  %i.ay = add nuw nsw i64 %.02030.us.us.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %bb.h, !llvm.loop !1156

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.preheader.i
  %.02030.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader.i ], [ %i.ay, %._crit_edge.us.us.i.unr-lcssa ]
  %lcmp.mod19 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.i.epil.init
  %.0.copyload.i.us.us.i.epil = load i32, ptr %i.az, align 1
  %i.ba = and i32 %.0.copyload.i.us.us.i.epil, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !58
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !58
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 16, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %._crit_edge.us.us.i
  %i.bf = phi i32 [ 0, %._crit_edge.us.us.i ], [ %i.ch, %bb.i ]
  %.01931.us.us.i = phi i64 [ 1, %._crit_edge.us.us.i ], [ %i.cj, %bb.i ] ; 7 uses
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %.01931.us.us.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !58
  %i.bj = add i32 %i.bi, %i.bf                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01931.us.us.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !58
  %i.bl = add nuw nsw i64 %.01931.us.us.i, 1      ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.a, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !58
  %i.bp = add i32 %i.bo, %i.bj                    ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !58
  %i.br = add nuw nsw i64 %.01931.us.us.i, 2      ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !58
  %i.bv = add i32 %i.bu, %i.bp                    ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.br
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !58
  %i.bx = add nuw nsw i64 %.01931.us.us.i, 3      ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.a, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !58
  %i.cb = add i32 %i.ca, %i.bv                    ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bx
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !58
  %i.cd = add nuw nsw i64 %.01931.us.us.i, 4      ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.a, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !58
  %i.ch = add i32 %i.cg, %i.cb                    ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cd
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !58
  %i.cj = add nuw nsw i64 %.01931.us.us.i, 5      ; 2 uses
  %exitcond48.not.i.4 = icmp eq i64 %i.cj, 256
  br i1 %exitcond48.not.i.4, label %.preheader.us.us.i.preheader, label %bb.i, !llvm.loop !1157

.preheader.us.us.i.preheader:                     ; preds = %bb.i
  %xtraiter20 = and i64 %i.n, 1
  %i.ck = icmp eq i64 %i.aj, 0
  br i1 %i.ck, label %.preheader.us.us.i.epil.preheader, label %.preheader.us.us.i.preheader.new

.preheader.us.us.i.preheader.new:                 ; preds = %.preheader.us.us.i.preheader
  %unroll_iter23 = and i64 %i.n, 4294967294
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i, %.preheader.us.us.i.preheader.new
  %.01832.us.us.i = phi i64 [ 0, %.preheader.us.us.i.preheader.new ], [ %i.dc, %.preheader.us.us.i ] ; 3 uses
  %niter24 = phi i64 [ 0, %.preheader.us.us.i.preheader.new ], [ %niter24.next.1, %.preheader.us.us.i ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.i
  %.0.copyload.i21.us.us.i = load i32, ptr %i.cl, align 1 ; 2 uses
  %i.cm = and i32 %.0.copyload.i21.us.us.i, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !58 ; 2 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !58
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cr
  store i32 %.0.copyload.i21.us.us.i, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %.0.copyload.i21.us.us.i.1 = load i32, ptr %i.cu, align 1 ; 2 uses
  %i.cv = and i32 %.0.copyload.i21.us.us.i.1, 255
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !58 ; 2 uses
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !58
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.da
  store i32 %.0.copyload.i21.us.us.i.1, ptr %i.db, align 1
  %i.dc = add nuw nsw i64 %.01832.us.us.i, 2      ; 2 uses
  %niter24.next.1 = add nuw nsw i64 %niter24, 2   ; 2 uses
  %niter24.ncmp.1 = icmp eq i64 %niter24.next.1, %unroll_iter23
  br i1 %niter24.ncmp.1, label %._crit_edge34.us.us.i.unr-lcssa, label %.preheader.us.us.i, !llvm.loop !1158

._crit_edge34.us.us.i.unr-lcssa:                  ; preds = %.preheader.us.us.i
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %._crit_edge34.us.us.i, label %.preheader.us.us.i.epil.preheader

.preheader.us.us.i.epil.preheader:                ; preds = %._crit_edge34.us.us.i.unr-lcssa, %.preheader.us.us.i.preheader
  %.01832.us.us.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.preheader ], [ %i.dc, %._crit_edge34.us.us.i.unr-lcssa ]
  %lcmp.mod22 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod22)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.i.epil.init
  %.0.copyload.i21.us.us.i.epil = load i32, ptr %i.dd, align 1 ; 2 uses
  %i.de = and i32 %.0.copyload.i21.us.us.i.epil, 255
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !58 ; 2 uses
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !58
  %i.dj = zext i32 %i.dh to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dj
  store i32 %.0.copyload.i21.us.us.i.epil, ptr %i.dk, align 1
  br label %._crit_edge34.us.us.i

._crit_edge34.us.us.i:                            ; preds = %._crit_edge34.us.us.i.unr-lcssa, %.preheader.us.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %xtraiter26 = and i64 %i.n, 1
  %i.dl = icmp eq i64 %i.aj, 0
  br i1 %i.dl, label %.epil.preheader25, label %._crit_edge34.us.us.i.new

._crit_edge34.us.us.i.new:                        ; preds = %._crit_edge34.us.us.i
  %unroll_iter29 = and i64 %i.n, 4294967294
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %._crit_edge34.us.us.i.new
  %.02030.us.us.1.i = phi i64 [ 0, %._crit_edge34.us.us.i.new ], [ %i.eb, %bb.j ] ; 3 uses
  %niter30 = phi i64 [ 0, %._crit_edge34.us.us.i.new ], [ %niter30.next.1, %bb.j ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.1.i
  %.0.copyload.i.us.us.1.i = load i32, ptr %i.dm, align 1
  %i.dn = lshr i32 %.0.copyload.i.us.us.1.i, 8
  %i.do = and i32 %i.dn, 255
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !58
  %i.ds = add i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !58
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.1.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %.0.copyload.i.us.us.1.i.1 = load i32, ptr %i.du, align 1
  %i.dv = lshr i32 %.0.copyload.i.us.us.1.i.1, 8
  %i.dw = and i32 %i.dv, 255
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !58
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !58
  %i.eb = add nuw nsw i64 %.02030.us.us.1.i, 2    ; 2 uses
  %niter30.next.1 = add nuw nsw i64 %niter30, 2   ; 2 uses
  %niter30.ncmp.1 = icmp eq i64 %niter30.next.1, %unroll_iter29
  br i1 %niter30.ncmp.1, label %._crit_edge.us.us.1.i.unr-lcssa, label %bb.j, !llvm.loop !1156

._crit_edge.us.us.1.i.unr-lcssa:                  ; preds = %bb.j
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %._crit_edge.us.us.1.i, label %.epil.preheader25

.epil.preheader25:                                ; preds = %._crit_edge.us.us.1.i.unr-lcssa, %._crit_edge34.us.us.i
  %.02030.us.us.1.i.epil.init = phi i64 [ 0, %._crit_edge34.us.us.i ], [ %i.eb, %._crit_edge.us.us.1.i.unr-lcssa ]
  %lcmp.mod28 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod28)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.02030.us.us.1.i.epil.init
  %.0.copyload.i.us.us.1.i.epil = load i32, ptr %i.ec, align 1
  %i.ed = lshr i32 %.0.copyload.i.us.us.1.i.epil, 8
  %i.ee = and i32 %i.ed, 255
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !58
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !58
  br label %._crit_edge.us.us.1.i

._crit_edge.us.us.1.i:                            ; preds = %._crit_edge.us.us.1.i.unr-lcssa, %.epil.preheader25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 16, !tbaa !58
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.us.us.1.i
  %i.ej = phi i32 [ 0, %._crit_edge.us.us.1.i ], [ %i.fl, %bb.k ]
  %.01931.us.us.1.i = phi i64 [ 1, %._crit_edge.us.us.1.i ], [ %i.fn, %bb.k ] ; 7 uses
  %i.ek = getelementptr [4 x i8], ptr %i.a, i64 %.01931.us.us.1.i
  %i.el = getelementptr i8, ptr %i.ek, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !58
  %i.en = add i32 %i.em, %i.ej                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01931.us.us.1.i
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !58
  %i.ep = add nuw nsw i64 %.01931.us.us.1.i, 1    ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %i.a, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !58
  %i.et = add i32 %i.es, %i.en                    ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ep
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !58
  %i.ev = add nuw nsw i64 %.01931.us.us.1.i, 2    ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %i.a, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !58
  %i.ez = add i32 %i.ey, %i.et                    ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ev
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !58
  %i.fb = add nuw nsw i64 %.01931.us.us.1.i, 3    ; 2 uses
  %i.fc = getelementptr [4 x i8], ptr %i.a, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !58
  %i.ff = add i32 %i.fe, %i.ez                    ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fb
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !58
  %i.fh = add nuw nsw i64 %.01931.us.us.1.i, 4    ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %i.a, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !58
  %i.fl = add i32 %i.fk, %i.ff                    ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fh
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !58
  %i.fn = add nuw nsw i64 %.01931.us.us.1.i, 5    ; 2 uses
  %exitcond48.1.not.i.4 = icmp eq i64 %i.fn, 256
  br i1 %exitcond48.1.not.i.4, label %.preheader.us.us.1.i.preheader, label %bb.k, !llvm.loop !1157

.preheader.us.us.1.i.preheader:                   ; preds = %bb.k
  %xtraiter31 = and i64 %i.n, 1
  %i.fo = icmp eq i64 %i.aj, 0
  br i1 %i.fo, label %.preheader.us.us.1.i.epil.preheader, label %.preheader.us.us.1.i.preheader.new

.preheader.us.us.1.i.preheader.new:               ; preds = %.preheader.us.us.1.i.preheader
  %unroll_iter34 = and i64 %i.n, 4294967294
  br label %.preheader.us.us.1.i

.preheader.us.us.1.i:                             ; preds = %.preheader.us.us.1.i, %.preheader.us.us.1.i.preheader.new
  %.01832.us.us.1.i = phi i64 [ 0, %.preheader.us.us.1.i.preheader.new ], [ %i.gi, %.preheader.us.us.1.i ] ; 3 uses
  %niter35 = phi i64 [ 0, %.preheader.us.us.1.i.preheader.new ], [ %niter35.next.1, %.preheader.us.us.1.i ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.1.i
  %.0.copyload.i21.us.us.1.i = load i32, ptr %i.fp, align 1 ; 2 uses
  %i.fq = lshr i32 %.0.copyload.i21.us.us.1.i, 8
  %i.fr = and i32 %i.fq, 255
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !58 ; 2 uses
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !58
  %i.fw = zext i32 %i.fu to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.fw
  store i32 %.0.copyload.i21.us.us.1.i, ptr %i.fx, align 1
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.1.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %.0.copyload.i21.us.us.1.i.1 = load i32, ptr %i.fz, align 1 ; 2 uses
  %i.ga = lshr i32 %.0.copyload.i21.us.us.1.i.1, 8
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gc ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !58 ; 2 uses
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !58
  %i.gg = zext i32 %i.ge to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gg
  store i32 %.0.copyload.i21.us.us.1.i.1, ptr %i.gh, align 1
  %i.gi = add nuw nsw i64 %.01832.us.us.1.i, 2    ; 2 uses
  %niter35.next.1 = add nuw nsw i64 %niter35, 2   ; 2 uses
  %niter35.ncmp.1 = icmp eq i64 %niter35.next.1, %unroll_iter34
  br i1 %niter35.ncmp.1, label %._crit_edge34.us.us.1.i.unr-lcssa, label %.preheader.us.us.1.i, !llvm.loop !1158

._crit_edge34.us.us.1.i.unr-lcssa:                ; preds = %.preheader.us.us.1.i
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %._crit_edge34.us.us.1.i, label %.preheader.us.us.1.i.epil.preheader

.preheader.us.us.1.i.epil.preheader:              ; preds = %._crit_edge34.us.us.1.i.unr-lcssa, %.preheader.us.us.1.i.preheader
  %.01832.us.us.1.i.epil.init = phi i64 [ 0, %.preheader.us.us.1.i.preheader ], [ %i.gi, %._crit_edge34.us.us.1.i.unr-lcssa ]
  %lcmp.mod33 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod33)
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.01832.us.us.1.i.epil.init
  %.0.copyload.i21.us.us.1.i.epil = load i32, ptr %i.gj, align 1 ; 2 uses
  %i.gk = lshr i32 %.0.copyload.i21.us.us.1.i.epil, 8
  %i.gl = and i32 %i.gk, 255
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !58 ; 2 uses
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !58
  %i.gq = zext i32 %i.go to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.gq
  store i32 %.0.copyload.i21.us.us.1.i.epil, ptr %i.gr, align 1
  br label %._crit_edge34.us.us.1.i

._crit_edge34.us.us.1.i:                          ; preds = %._crit_edge34.us.us.1.i.unr-lcssa, %.preheader.us.us.1.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %xtraiter37 = and i64 %i.n, 1
  %i.gs = icmp eq i64 %i.aj, 0
  br i1 %i.gs, label %.epil.preheader36, label %._crit_edge34.us.us.1.i.new

._crit_edge34.us.us.1.i.new:                      ; preds = %._crit_edge34.us.us.1.i
  %unroll_iter40 = and i64 %i.n, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge34.us.us.1.i.new
  %.02030.us.us.2.i = phi i64 [ 0, %._crit_edge34.us.us.1.i.new ], [ %i.hi, %bb.l ] ; 3 uses
  %niter41 = phi i64 [ 0, %._crit_edge34.us.us.1.i.new ], [ %niter41.next.1, %bb.l ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.2.i
  %.0.copyload.i.us.us.2.i = load i32, ptr %i.gt, align 1
  %i.gu = lshr i32 %.0.copyload.i.us.us.2.i, 16
  %i.gv = and i32 %i.gu, 255
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !58
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !58
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.2.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %.0.copyload.i.us.us.2.i.1 = load i32, ptr %i.hb, align 1
  %i.hc = lshr i32 %.0.copyload.i.us.us.2.i.1, 16
  %i.hd = and i32 %i.hc, 255
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.he ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !58
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !58
  %i.hi = add nuw nsw i64 %.02030.us.us.2.i, 2    ; 2 uses
  %niter41.next.1 = add i64 %niter41, 2           ; 2 uses
  %niter41.ncmp.1 = icmp eq i64 %niter41.next.1, %unroll_iter40
  br i1 %niter41.ncmp.1, label %._crit_edge.us.us.2.i.unr-lcssa, label %bb.l, !llvm.loop !1156

._crit_edge.us.us.2.i.unr-lcssa:                  ; preds = %bb.l
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %._crit_edge.us.us.2.i, label %.epil.preheader36

.epil.preheader36:                                ; preds = %._crit_edge.us.us.2.i.unr-lcssa, %._crit_edge34.us.us.1.i
  %.02030.us.us.2.i.epil.init = phi i64 [ 0, %._crit_edge34.us.us.1.i ], [ %i.hi, %._crit_edge.us.us.2.i.unr-lcssa ]
  %lcmp.mod39 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod39)
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02030.us.us.2.i.epil.init
  %.0.copyload.i.us.us.2.i.epil = load i32, ptr %i.hj, align 1
  %i.hk = lshr i32 %.0.copyload.i.us.us.2.i.epil, 16
  %i.hl = and i32 %i.hk, 255
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hm ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !58
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !58
  br label %._crit_edge.us.us.2.i

._crit_edge.us.us.2.i:                            ; preds = %._crit_edge.us.us.2.i.unr-lcssa, %.epil.preheader36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 16, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.us.us.2.i
  %i.hq = phi i32 [ 0, %._crit_edge.us.us.2.i ], [ %i.is, %bb.m ]
  %.01931.us.us.2.i = phi i64 [ 1, %._crit_edge.us.us.2.i ], [ %i.iu, %bb.m ] ; 7 uses
  %i.hr = getelementptr [4 x i8], ptr %i.a, i64 %.01931.us.us.2.i
  %i.hs = getelementptr i8, ptr %i.hr, i64 -4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !58
  %i.hu = add i32 %i.ht, %i.hq                    ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.01931.us.us.2.i
  store i32 %i.hu, ptr %i.hv, align 4, !tbaa !58
  %i.hw = add nuw nsw i64 %.01931.us.us.2.i, 1    ; 2 uses
  %i.hx = getelementptr [4 x i8], ptr %i.a, i64 %i.hw
  %i.hy = getelementptr i8, ptr %i.hx, i64 -4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !58
  %i.ia = add i32 %i.hz, %i.hu                    ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.hw
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !58
  %i.ic = add nuw nsw i64 %.01931.us.us.2.i, 2    ; 2 uses
  %i.id = getelementptr [4 x i8], ptr %i.a, i64 %i.ic
  %i.ie = getelementptr i8, ptr %i.id, i64 -4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !58
  %i.ig = add i32 %i.if, %i.ia                    ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ic
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !58
  %i.ii = add nuw nsw i64 %.01931.us.us.2.i, 3    ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %i.a, i64 %i.ii
  %i.ik = getelementptr i8, ptr %i.ij, i64 -4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !58
  %i.im = add i32 %i.il, %i.ig                    ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ii
  store i32 %i.im, ptr %i.in, align 4, !tbaa !58
  %i.io = add nuw nsw i64 %.01931.us.us.2.i, 4    ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %i.a, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 -4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !58
  %i.is = add i32 %i.ir, %i.im                    ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.io
  store i32 %i.is, ptr %i.it, align 4, !tbaa !58
  %i.iu = add nuw nsw i64 %.01931.us.us.2.i, 5    ; 2 uses
  %exitcond48.2.not.i.4 = icmp eq i64 %i.iu, 256
  br i1 %exitcond48.2.not.i.4, label %.preheader.us.us.2.i.preheader, label %bb.m, !llvm.loop !1157

.preheader.us.us.2.i.preheader:                   ; preds = %bb.m
  %xtraiter42 = and i64 %i.n, 1
  %i.iv = icmp eq i64 %i.aj, 0
  br i1 %i.iv, label %.preheader.us.us.2.i.epil.preheader, label %.preheader.us.us.2.i.preheader.new

.preheader.us.us.2.i.preheader.new:               ; preds = %.preheader.us.us.2.i.preheader
  %unroll_iter45 = and i64 %i.n, 4294967294
  br label %.preheader.us.us.2.i

.preheader.us.us.2.i:                             ; preds = %.preheader.us.us.2.i, %.preheader.us.us.2.i.preheader.new
  %.01832.us.us.2.i = phi i64 [ 0, %.preheader.us.us.2.i.preheader.new ], [ %i.jp, %.preheader.us.us.2.i ] ; 3 uses
  %niter46 = phi i64 [ 0, %.preheader.us.us.2.i.preheader.new ], [ %niter46.next.1, %.preheader.us.us.2.i ]
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.2.i
  %.0.copyload.i21.us.us.2.i = load i32, ptr %i.iw, align 1 ; 2 uses
  %i.ix = lshr i32 %.0.copyload.i21.us.us.2.i, 16
  %i.iy = and i32 %i.ix, 255
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !58 ; 2 uses
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !58
  %i.jd = zext i32 %i.jb to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.jd
  store i32 %.0.copyload.i21.us.us.2.i, ptr %i.je, align 1
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.2.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %.0.copyload.i21.us.us.2.i.1 = load i32, ptr %i.jg, align 1 ; 2 uses
  %i.jh = lshr i32 %.0.copyload.i21.us.us.2.i.1, 16
  %i.ji = and i32 %i.jh, 255
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jj ; 2 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !58 ; 2 uses
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !58
  %i.jn = zext i32 %i.jl to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.jn
  store i32 %.0.copyload.i21.us.us.2.i.1, ptr %i.jo, align 1
  %i.jp = add nuw nsw i64 %.01832.us.us.2.i, 2    ; 2 uses
  %niter46.next.1 = add i64 %niter46, 2           ; 2 uses
  %niter46.ncmp.1 = icmp eq i64 %niter46.next.1, %unroll_iter45
  br i1 %niter46.ncmp.1, label %._crit_edge34.us.us.2.i.unr-lcssa, label %.preheader.us.us.2.i, !llvm.loop !1158

._crit_edge34.us.us.2.i.unr-lcssa:                ; preds = %.preheader.us.us.2.i
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %._crit_edge34.us.us.2.i, label %.preheader.us.us.2.i.epil.preheader

.preheader.us.us.2.i.epil.preheader:              ; preds = %._crit_edge34.us.us.2.i.unr-lcssa, %.preheader.us.us.2.i.preheader
  %.01832.us.us.2.i.epil.init = phi i64 [ 0, %.preheader.us.us.2.i.preheader ], [ %i.jp, %._crit_edge34.us.us.2.i.unr-lcssa ]
  %lcmp.mod44 = trunc i32 %i.m to i1
  call void @llvm.assume(i1 %lcmp.mod44)
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01832.us.us.2.i.epil.init
  %.0.copyload.i21.us.us.2.i.epil = load i32, ptr %i.jq, align 1 ; 2 uses
  %i.jr = lshr i32 %.0.copyload.i21.us.us.2.i.epil, 16
  %i.js = and i32 %i.jr, 255
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jt ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !58 ; 2 uses
  %i.jw = add i32 %i.jv, 1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !58
  %i.jx = zext i32 %i.jv to i64
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.jx
  store i32 %.0.copyload.i21.us.us.2.i.epil, ptr %i.jy, align 1
  br label %._crit_edge34.us.us.2.i

._crit_edge34.us.us.2.i:                          ; preds = %._crit_edge34.us.us.2.i.unr-lcssa, %.preheader.us.us.2.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %xtraiter48 = and i64 %i.n, 1
end_hunk_0
