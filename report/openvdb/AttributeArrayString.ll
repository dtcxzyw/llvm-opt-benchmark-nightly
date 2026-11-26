Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeArrayString?download=true
inline.NumInlined: 1635
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.az = load i8, ptr %i.l, align 2, !tbaa !206
  %i.ba = add i8 %i.az, -1                        ; 2 uses
  store i8 %i.ba, ptr %i.l, align 2, !tbaa !206
  %i.bb = load i8, ptr %i.k, align 1, !tbaa !465
  %i.bc = add i8 %i.bb, 1
  %i.bd = and i8 %i.bc, 7
  store i8 %i.bd, ptr %i.k, align 1, !tbaa !465
  br label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.be = load i8, ptr %5, align 8, !tbaa !205    ; 3 uses
  %i.bf = zext i8 %i.be to i64                    ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %i.bi = icmp ult i8 %i.bh, %i.x
  br i1 %i.bi, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit: ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bf
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !161
  %i.bm = icmp ugt i64 %i.bl, 499
  br i1 %i.bm, label %thread-pre-split, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread: ; preds = %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.g, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre28, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.bf, %bb.g ], [ %i.bf, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit ]
  %i.bn = phi i8 [ %.pre, %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.be, %bb.g ], [ %i.be, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !161 ; 3 uses
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i13, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18, label %.noexc16

.noexc16:                                         ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread
  %.idx.i.i.i.i.i.i14 = shl nsw i64 %i.bq, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.01.0.copyload.i.i.i.i.i.i15 = load ptr, ptr %i.br, align 8, !tbaa !118 ; 3 uses
  %i.bs = getelementptr inbounds i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i15, i64 %.idx.i.i.i.i.i.i14 ; 2 uses
  %i.bt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = xor i64 %i.bu, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_T1_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i15, ptr nonnull %i.bs, i64 noundef %i.bv)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i15, ptr nonnull %i.bs)
  %.pre26 = load i8, ptr %5, align 8, !tbaa !205
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18: ; preds = %.noexc16, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread
  %i.bw = phi i8 [ %.pre26, %.noexc16 ], [ %i.bn, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread ]
  %i.bx = load i8, ptr %i.l, align 2, !tbaa !206
  %i.by = add i8 %i.bx, -1                        ; 2 uses
  store i8 %i.by, ptr %i.l, align 2, !tbaa !206
  %i.bz = add i8 %i.bw, 7
  %i.ca = and i8 %i.bz, 7
  store i8 %i.ca, ptr %5, align 8, !tbaa !205
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18, %.noexc
  %i.cb = phi i8 [ %i.ba, %.noexc ], [ %i.by, %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit18 ], [ %i.y, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit ]
  %i.cc = icmp eq i8 %i.cb, 0
  br i1 %i.cc, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split
  %i.cd = load ptr, ptr %3, align 8, !tbaa !202   ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cf = load atomic i8, ptr %i.ce monotonic, align 1
  %i.cg = icmp eq i8 %i.cf, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %.0.i.i = select i1 %i.cg, ptr %i.ci, ptr %i.cd
  %i.cj = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.cj, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24, label %bb.e, !llvm.loop !464

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24: ; preds = %thread-pre-split, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit: ; preds = %.thread, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISC_SE_EEKNS1_16auto_partitionerEEEJRSK_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 64 dereferenceable(128) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 6 uses
  %i.a = tail call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1) ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.a, align 64, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 64, !tbaa !207, !nonnull !69
  store ptr %i.e, ptr %i.d, align 64, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.f, align 16, !tbaa !118 ; 2 uses
  store i64 %i.g, ptr %5, align 8, !tbaa !118
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE21pseudo_median_of_nineERKS9_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c), !inline_history !466 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.019.0.copyload.i.i.i = load ptr, ptr %5, align 8, !tbaa !118 ; 3 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.sroa.019.0.copyload.i.i.i, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %.sroa.019.0.copyload.i.i.i, align 4, !tbaa !54
  %i.l = load i32, ptr %i.j, align 4, !tbaa !54
  store i32 %i.l, ptr %.sroa.019.0.copyload.i.i.i, align 4, !tbaa !54
  store i32 %i.k, ptr %i.j, align 4, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !161  ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !208    ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.028.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.q, %bb.g ]
  %.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.w, %bb.g ] ; 2 uses
  %i.p = load i32, ptr %i.h, align 4, !tbaa !54   ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.129.i.i.i = phi i64 [ %.028.i.i.i, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.q = add i64 %.129.i.i.i, -1                  ; 7 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !54   ; 3 uses
  %i.t = icmp ult i32 %i.p, %i.s
  br i1 %i.t, label %bb.e, label %.preheader.i.i.i.preheader, !llvm.loop !10

.preheader.i.i.i.preheader:                       ; preds = %bb.e
  %i.u = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.v = icmp eq i64 %.0.i.i.i, %i.q
  br i1 %i.v, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  br i1 %i.aa, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.1.i.i.i76 = phi i64 [ %i.w, %.preheader.i.i.i ], [ %.0.i.i.i, %.preheader.i.i.i.preheader ]
  %i.w = add i64 %.1.i.i.i76, 1                   ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54   ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.p
  %i.aa = icmp eq i64 %i.w, %i.q                  ; 2 uses
  br i1 %i.z, label %.preheader.i.i.i, label %bb.f, !llvm.loop !11

bb.f:                                             ; preds = %.lr.ph
  br i1 %i.aa, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.w
  store i32 %i.s, ptr %i.ab, align 4, !tbaa !54
  store i32 %i.y, ptr %i.u, align 4, !tbaa !54
  br label %bb.d, !llvm.loop !12

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEC2ERSI_RNS0_2d05splitERNS1_22small_object_allocatorE.exit: ; preds = %bb.f, %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.p, ptr %i.u, align 4, !tbaa !54
  store i32 %i.s, ptr %i.h, align 4, !tbaa !54
  %i.ad = sub i64 %i.n, %.129.i.i.i
  store i64 %i.q, ptr %i.m, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !161
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.af = load i64, ptr %i.m, align 8, !tbaa !161
  %i.ag = load ptr, ptr %i.f, align 16, !tbaa !208
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ai, ptr %i.ae, align 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr null, ptr %i.aj, align 32, !tbaa !195
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !180
  %i.an = lshr i64 %i.am, 1                       ; 2 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !180
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !180
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 2, ptr %i.ao, align 16, !tbaa !178
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 116
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !179
  store i8 %i.ar, ptr %i.ap, align 4, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.at = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.at, ptr %i.as, align 8, !tbaa !181
  ret ptr %i.a
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE21pseudo_median_of_nineERKS9_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161  ; 2 uses
  %i.c = lshr i64 %i.b, 3                         ; 9 uses
  %i.d = shl nuw nsw i64 %i.c, 1                  ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !208    ; 9 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  %i.g = load i32, ptr %i.e, align 4, !tbaa !54   ; 5 uses
  %i.h = load i32, ptr %i.f, align 4, !tbaa !54   ; 5 uses
  %i.i = icmp ult i32 %i.g, %i.h
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54   ; 6 uses
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %i.h, %i.k
  br i1 %i.l, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %i.g, %i.k
  %i.n = select i1 %i.m, i64 %i.d, i64 0
  %3 = tail call i32 @llvm.umax.i32(i32 %i.g, i32 %i.k)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit

bb.d:                                             ; preds = %bb.a
  %i.o = icmp ult i32 %i.k, %i.h
  br i1 %i.o, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ult i32 %i.k, %i.g
  %i.q = select i1 %i.p, i64 %i.d, i64 0
  %4 = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.g)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit

_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %5 = phi i32 [ %3, %bb.c ], [ %4, %bb.e ], [ %i.h, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %i.r = phi i64 [ %i.n, %bb.c ], [ %i.q, %bb.e ], [ %i.c, %bb.b ], [ %i.c, %bb.d ] ; 2 uses
  %i.s = mul nuw nsw i64 %i.c, 3                  ; 3 uses
  %i.t = shl nuw nsw i64 %i.c, 2                  ; 3 uses
  %i.u = mul nuw i64 %i.c, 5                      ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.t
  %i.x = load i32, ptr %i.v, align 4, !tbaa !54   ; 5 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !54   ; 5 uses
  %i.z = icmp ult i32 %i.x, %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.u
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !54 ; 6 uses
  br i1 %i.z, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit
  %i.ac = icmp ult i32 %i.y, %i.ab
  br i1 %i.ac, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ult i32 %i.x, %i.ab
  %i.ae = select i1 %i.ad, i64 %i.u, i64 %i.s
  %6 = tail call i32 @llvm.umax.i32(i32 %i.x, i32 %i.ab)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13

bb.h:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit
  %i.af = icmp ult i32 %i.ab, %i.y
  br i1 %i.af, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp ult i32 %i.ab, %i.x
  %i.ah = select i1 %i.ag, i64 %i.u, i64 %i.s
  %7 = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.x)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13

_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13: ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %8 = phi i32 [ %6, %bb.g ], [ %7, %bb.i ], [ %i.y, %bb.f ], [ %i.y, %bb.h ] ; 3 uses
  %i.ai = phi i64 [ %i.ae, %bb.g ], [ %i.ah, %bb.i ], [ %i.t, %bb.f ], [ %i.t, %bb.h ] ; 2 uses
  %i.aj = mul nuw i64 %i.c, 6                     ; 3 uses
  %i.ak = mul nuw i64 %i.c, 7                     ; 3 uses
  %i.al = add i64 %i.b, -1                        ; 3 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.aj
  %i.an = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ak
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !54 ; 5 uses
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !54 ; 5 uses
  %i.aq = icmp ult i32 %i.ao, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.al
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !54 ; 6 uses
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13
  %i.at = icmp ult i32 %i.ap, %i.as
  br i1 %i.at, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = icmp ult i32 %i.ao, %i.as
  %i.av = select i1 %i.au, i64 %i.al, i64 %i.aj
  %i.aw = tail call i32 @llvm.umax.i32(i32 %i.ao, i32 %i.as)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit14

bb.l:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit13
  %i.ax = icmp ult i32 %i.as, %i.ap
  br i1 %i.ax, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit14, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = icmp ult i32 %i.as, %i.ao
  %i.az = select i1 %i.ay, i64 %i.al, i64 %i.aj
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.as, i32 %i.ao)
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit14

_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit14: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bb = phi i32 [ %i.aw, %bb.k ], [ %i.ba, %bb.m ], [ %i.ap, %bb.j ], [ %i.ap, %bb.l ] ; 4 uses
  %i.bc = phi i64 [ %i.av, %bb.k ], [ %i.az, %bb.m ], [ %i.ak, %bb.j ], [ %i.ak, %bb.l ] ; 2 uses
  %i.bd = icmp ult i32 %5, %8
  br i1 %i.bd, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit14
  %i.be = icmp ult i32 %8, %i.bb
  br i1 %i.be, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp ult i32 %5, %i.bb
  %i.bg = select i1 %i.bf, i64 %i.bc, i64 %i.r
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit15

bb.p:                                             ; preds = %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit14
  %i.bh = icmp ult i32 %i.bb, %8
  br i1 %i.bh, label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit15, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = icmp ult i32 %i.bb, %5
  %i.bj = select i1 %i.bi, i64 %i.bc, i64 %i.r
  br label %_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit15

_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE15median_of_threeERKS9_mmm.exit15: ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.bk = phi i64 [ %i.bg, %bb.o ], [ %i.bj, %bb.q ], [ %i.ai, %bb.n ], [ %i.ai, %bb.p ]
  ret i64 %i.bk
}

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(208) %0, i8 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.c = load i8, ptr %i.b, align 2, !tbaa !206
  %i.d = icmp ult i8 %i.c, 8
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load i8, ptr %0, align 8, !tbaa !205    ; 2 uses
  %.phi.trans.insert = zext i8 %.pre to i64
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.phi.trans.insert
  %.pre38 = load i8, ptr %.phi.trans.insert37, align 1, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit
  %i.f = phi i8 [ %.pre38, %.lr.ph ], [ %i.az, %_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit ]
  %i.g = phi i8 [ %.pre, %.lr.ph ], [ %i.ba, %_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit ] ; 2 uses
  %i.h = zext i8 %i.g to i64                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h ; 2 uses
  %i.j = icmp ult i8 %i.f, %1
  br i1 %i.j, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit, label %.critedge

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !161
  %i.n = icmp ugt i64 %i.m, 499
  br i1 %i.n, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit
  %i.o = add i8 %i.g, 1
  %i.p = and i8 %i.o, 7                           ; 2 uses
  store i8 %i.p, ptr %0, align 8, !tbaa !205
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.q ; 5 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.h ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !192
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !207, !nonnull !69
  store ptr %i.t, ptr %i.s, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !118  ; 2 uses
  store i64 %i.v, ptr %2, align 8, !tbaa !118
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE21pseudo_median_of_nineERKS9_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.r) ; 2 uses
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.019.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !118 ; 3 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.sroa.019.0.copyload.i.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %.sroa.019.0.copyload.i.i, align 4, !tbaa !54
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !54
  store i32 %i.aa, ptr %.sroa.019.0.copyload.i.i, align 4, !tbaa !54
  store i32 %i.z, ptr %i.y, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !161 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !208   ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.028.i.i = phi i64 [ %i.ac, %bb.e ], [ %i.af, %bb.i ]
  %.0.i.i = phi i64 [ 0, %bb.e ], [ %i.al, %bb.i ] ; 2 uses
  %i.ae = load i32, ptr %i.w, align 4, !tbaa !54  ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.129.i.i = phi i64 [ %.028.i.i, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  %i.af = add i64 %.129.i.i, -1                   ; 7 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54 ; 3 uses
  %i.ai = icmp ult i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.g, label %.preheader.i.i.preheader, !llvm.loop !10

.preheader.i.i.preheader:                         ; preds = %bb.g
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ak = icmp eq i64 %.0.i.i, %i.af
  br i1 %i.ak, label %_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit, label %.lr.ph77

.preheader.i.i:                                   ; preds = %.lr.ph77
  br i1 %i.ap, label %_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit, label %.lr.ph77, !llvm.loop !11

.lr.ph77:                                         ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.1.i.i76 = phi i64 [ %i.al, %.preheader.i.i ], [ %.0.i.i, %.preheader.i.i.preheader ]
  %i.al = add i64 %.1.i.i76, 1                    ; 5 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54 ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.ae
  %i.ap = icmp eq i64 %i.al, %i.af                ; 2 uses
  br i1 %i.ao, label %.preheader.i.i, label %bb.h, !llvm.loop !11

bb.h:                                             ; preds = %.lr.ph77
  br i1 %i.ap, label %_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.al
  store i32 %i.ah, ptr %i.aq, align 4, !tbaa !54
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !54
  br label %bb.f, !llvm.loop !12

_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit: ; preds = %bb.h, %.preheader.i.i.preheader, %.preheader.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !54
  store i32 %i.ah, ptr %i.w, align 4, !tbaa !54
  %i.as = sub i64 %i.ac, %.129.i.i
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !161
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !161
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.au = load i64, ptr %i.ab, align 8, !tbaa !161
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !208
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.ax, ptr %i.at, align 8
  %i.ay = load i8, ptr %i.i, align 1, !tbaa !40
  %i.az = add i8 %i.ay, 1                         ; 3 uses
  store i8 %i.az, ptr %i.i, align 1, !tbaa !40
  %i.ba = load i8, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bb
  store i8 %i.az, ptr %i.bc, align 1, !tbaa !40
  %i.bd = load i8, ptr %i.b, align 2, !tbaa !206
  %i.be = add i8 %i.bd, 1                         ; 2 uses
  store i8 %i.be, ptr %i.b, align 2, !tbaa !206
  %i.bf = icmp ult i8 %i.be, 8
  br i1 %i.bf, label %bb.b, label %.critedge, !llvm.loop !467

.critedge:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEC2ERSC_NS0_2d05splitE.exit, %bb.b, %bb.a
  ret void
}

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #6

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #6

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d14taskD2Ev(ptr noundef nonnull align 64 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(136) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 192, i64 noundef 64) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i16, ptr %i.a, align 2, !tbaa !198  ; 2 uses
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit: ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.e = icmp eq i16 %i.b, %i.d
  br i1 %i.e, label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.f = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 0 uses
  br label %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread

_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.h = load i64, ptr %i.g, align 16, !tbaa !180
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 16, !tbaa !180
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !199
  %.not7.i = icmp eq i16 %i.i, %i.k
end_hunk_0
