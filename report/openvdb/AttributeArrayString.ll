Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeArrayString?download=true
inline.NumInlined: 1635
inline.NumDeleted: 726
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.bd = and i8 %i.bc, 7
  store i8 %i.bd, ptr %i.k, align 1, !tbaa !450
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
  br i1 %i.cc, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24, label %bb.h

bb.h:                                             ; preds = %thread-pre-split
  %i.cd = load ptr, ptr %3, align 8, !tbaa !202   ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 15
  %i.cf = load atomic i8, ptr %i.ce monotonic, align 1
  %i.cg = icmp eq i8 %i.cf, -1
  br i1 %i.cg, label %bb.i, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %i.ci, %bb.i ], [ %i.cd, %bb.h ]
  %i.cj = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.cj, label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24, label %bb.e, !llvm.loop !449

_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EED2Ev.exit24: ; preds = %thread-pre-split, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
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
  %i.i = call noundef i64 @_ZNK3tbb6detail2d116quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEE21pseudo_median_of_nineERKS9_RKSC_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c), !inline_history !451 ; 2 uses
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
  br i1 %i.bf, label %bb.b, label %.critedge, !llvm.loop !452

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
begin_hunk_1_@_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISE_St4lessIjEEEKNS1_16auto_partitionerEEESF_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.n = load i8, ptr %i.m, align 4, !tbaa !179   ; 2 uses
  %.not4.i = icmp eq i8 %i.n, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add i8 %i.n, -1
  store i8 %i.o, ptr %i.m, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.x = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !453 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.x, align 64, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.aa = load i64, ptr %i.q, align 64            ; 2 uses
  store i64 %i.aa, ptr %i.z, align 64, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load ptr, ptr %i.r, align 8, !tbaa !118 ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.aa, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = sdiv i64 %i.af, 2
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  store ptr %i.ah, ptr %i.q, align 64, !tbaa !118
  store ptr %i.ah, ptr %i.ab, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aj = load i64, ptr %i.s, align 16, !tbaa !209
  store i64 %i.aj, ptr %i.ai, align 16, !tbaa !209
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !210
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !177
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.an = load i64, ptr %i.u, align 16, !tbaa !180
  %i.ao = lshr i64 %i.an, 1                       ; 2 uses
  store i64 %i.ao, ptr %i.u, align 16, !tbaa !180
  store i64 %i.ao, ptr %i.am, align 16, !tbaa !180
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  store i32 2, ptr %i.ap, align 8, !tbaa !178
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 124
  %i.ar = load i8, ptr %i.v, align 4, !tbaa !179
  store i8 %i.ar, ptr %i.aq, align 4, !tbaa !179
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.at = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.at, ptr %i.as, align 64, !tbaa !181
  %i.au = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !454 ; 6 uses
  %i.av = load ptr, ptr %i.w, align 8, !tbaa !200
  store ptr %i.av, ptr %i.au, align 8, !tbaa !185
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 2, ptr %i.aw, align 8, !tbaa !186
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !181
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i8 0, ptr %i.az, align 8, !tbaa !201
  store ptr %i.au, ptr %i.w, align 8, !tbaa !177
  store ptr %i.au, ptr %i.al, align 8, !tbaa !177
  %i.ba = load ptr, ptr %3, align 8, !tbaa !202
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %i.ba), !inline_history !454
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !209
  %i.bc = load ptr, ptr %2, align 8, !tbaa !118
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp ult i64 %i.bb, %i.bh
  br i1 %i.bi, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.bj = load i64, ptr %0, align 8, !tbaa !180   ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !455

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.bj, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load i8, ptr %i.p, align 4, !tbaa !179  ; 2 uses
  %.not4.i9 = icmp eq i8 %i.bl, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = add i8 %i.bl, -1
  store i8 %i.bm, ptr %i.p, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector.65", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !118    ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !118  ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !179
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not11.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.j ] ; 2 uses
  %.sroa.06.012.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %bb.j ] ; 3 uses
  %i.n = and i32 %.013.i.i.i.i.i.i, 63
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.r = load atomic i8, ptr %i.q monotonic, align 1
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.p, %bb.e ]
  %i.v = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i)
  br i1 %i.v, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i, %bb.d
  %i.w = getelementptr inbounds i8, ptr %.sroa.06.012.i.i.i.i.i.i, i64 -4
  %i.x = load i32, ptr %.sroa.06.012.i.i.i.i.i.i, align 4, !tbaa !54
  %i.y = load i32, ptr %i.w, align 4, !tbaa !54
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.m, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %i.ac = load atomic i8, ptr %i.ab monotonic, align 1
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %bb.i, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i5.i.i.i.i.i.i = phi ptr [ %i.af, %bb.i ], [ %i.aa, %bb.h ]
  %i.ag = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i5.i.i.i.i.i.i) ; 0 uses
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit

bb.j:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ai = add nuw nsw i32 %.013.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.d
  br i1 %.not.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit, label %bb.d, !llvm.loop !456

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 6 uses
  store i8 0, ptr %i.aj, align 1, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !461
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 124
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i, %bb.k
  %i.aq = phi i8 [ %i.fp, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.k ] ; 3 uses
  %i.ar = phi i8 [ %i.fq, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 1, %bb.k ] ; 4 uses
  %i.as = phi i8 [ %i.fr, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i ], [ 0, %bb.k ] ; 4 uses
  %i.at = load i8, ptr %i.k, align 4, !tbaa !179  ; 4 uses
  %i.au = icmp ult i8 %i.ar, 8
  br i1 %i.au, label %.lr.ph.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit

.lr.ph.i:                                         ; preds = %bb.l
  %.phi.trans.insert.i = zext i8 %i.as to i64
  %.phi.trans.insert6.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.phi.trans.insert.i
  %.pre.i = load i8, ptr %.phi.trans.insert6.i, align 1, !tbaa !40
  %i.av = icmp ult i8 %.pre.i, %i.at
  br i1 %i.av, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit

bb.m:                                             ; preds = %bb.n
  %i.aw = icmp ult i8 %i.by, %i.at
  br i1 %i.aw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit, !llvm.loop !457

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i: ; preds = %.lr.ph.i, %bb.m
  %6 = phi i8 [ %i.bk, %bb.m ], [ %i.as, %.lr.ph.i ] ; 3 uses
  %i.ax = phi i8 [ %i.ca, %bb.m ], [ %i.ar, %.lr.ph.i ] ; 2 uses
  %7 = zext i8 %6 to i64                          ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %7 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !209
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !118
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !118
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = icmp ult i64 %i.ba, %i.bh
  br i1 %i.bi, label %bb.n, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit

bb.n:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 %7 ; 2 uses
  %i.bj = add nuw i8 %6, 1
  %i.bk = and i8 %i.bj, 7                         ; 5 uses
  %i.bl = zext nneg i8 %i.bk to i64               ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.bl ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !tbaa.struct !461
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  store i64 %i.bn, ptr %i.ay, align 8, !tbaa !118
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !118 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bn, %i.bq
  %i.bs = ashr exact i64 %i.br, 2
  %i.bt = sdiv i64 %i.bs, 2
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bt ; 2 uses
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !118
  store ptr %i.bu, ptr %i.bb, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !209
  store i64 %i.bw, ptr %i.az, align 8, !tbaa !209
  %i.bx = load i8, ptr %8, align 1, !tbaa !40
  %i.by = add i8 %i.bx, 1                         ; 3 uses
  store i8 %i.by, ptr %8, align 1, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bl
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !40
  %i.ca = add nuw nsw i8 %i.ax, 1                 ; 3 uses
  %exitcond.not.i = icmp eq i8 %i.ca, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread, label %bb.m, !llvm.loop !457

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit: ; preds = %bb.m, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i, %.lr.ph.i, %bb.l
  %i.cb = phi i8 [ %i.ar, %bb.l ], [ %i.ar, %.lr.ph.i ], [ %i.ax, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i ], [ %i.ca, %bb.m ] ; 6 uses
  %i.cc = phi i8 [ %i.as, %bb.l ], [ %i.as, %.lr.ph.i ], [ %6, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.i ], [ %i.bk, %bb.m ] ; 6 uses
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !177
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load atomic i8, ptr %i.ce monotonic, align 1, !range !116, !noundef !69
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.o, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.n
  %i.ch = load ptr, ptr %i.al, align 8, !tbaa !177
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 1, !range !116, !noundef !69
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %.thread88, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread88:                                        ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread
  %i.cl = add i8 %i.at, 1
  store i8 %i.cl, ptr %i.k, align 4, !tbaa !179
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit
  %i.cm = phi i8 [ %i.bk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread ], [ %i.cc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit ] ; 2 uses
  %i.cn = phi i8 [ 8, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit.thread ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit ]
  %.pre = zext i8 %i.cm to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread

bb.o:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit
  %i.co = add i8 %i.at, 1                         ; 2 uses
  store i8 %i.co, ptr %i.k, align 4, !tbaa !179
  %i.cp = icmp ugt i8 %i.cb, 1
  br i1 %i.cp, label %.noexc, label %bb.p

.noexc:                                           ; preds = %.thread88, %bb.o
  %i.cq = phi i8 [ 8, %.thread88 ], [ %i.cb, %bb.o ]
  %i.cr = phi i8 [ %i.bk, %.thread88 ], [ %i.cc, %bb.o ]
  %i.cs = zext nneg i8 %i.aq to i64               ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.cv = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !458 ; 10 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cx, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.cv, align 64, !tbaa !93
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i64 24, i1 false), !tbaa.struct !461
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !210
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 104 ; 2 uses
  store ptr null, ptr %i.da, align 8, !tbaa !177
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 112
  %i.dc = load i64, ptr %i.ao, align 16, !tbaa !180
  %i.dd = lshr i64 %i.dc, 1                       ; 2 uses
  store i64 %i.dd, ptr %i.ao, align 16, !tbaa !180
  store i64 %i.dd, ptr %i.db, align 16, !tbaa !180
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 120
  store i32 2, ptr %i.de, align 8, !tbaa !178
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 124
  %i.dg = load i8, ptr %i.ap, align 4, !tbaa !179
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 128
  %i.di = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.di, ptr %i.dh, align 64, !tbaa !181
  %i.dj = sub i8 %i.dg, %i.cu
  store i8 %i.dj, ptr %i.df, align 4, !tbaa !179
  %i.dk = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !458 ; 6 uses
  %i.dl = load ptr, ptr %i.al, align 8, !tbaa !200
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !185
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i32 2, ptr %i.dm, align 8, !tbaa !186
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.do = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !181
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  store i8 0, ptr %i.dp, align 8, !tbaa !201
  store ptr %i.dk, ptr %i.al, align 8, !tbaa !177
  store ptr %i.dk, ptr %i.da, align 8, !tbaa !177
  %i.dq = load ptr, ptr %3, align 8, !tbaa !202
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.cv, ptr noundef nonnull align 8 dereferenceable(128) %i.dq), !inline_history !458
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.dr = add i8 %i.cq, -1
  %i.ds = add nuw nsw i8 %i.aq, 1
  %i.dt = and i8 %i.ds, 7
  br label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.du = zext i8 %i.cc to i64                    ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !40
  %i.dx = icmp ult i8 %i.dw, %i.co
  br i1 %i.dx, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit: ; preds = %bb.p
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.du ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !209
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !118
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !118
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 2
  %i.ei = icmp ult i64 %i.ea, %i.eh
  br i1 %i.ei, label %thread-pre-split35, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.p, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit
  %i.ej = phi i8 [ %i.cm, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cc, %bb.p ], [ %i.cc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %i.ek = phi i8 [ %i.cn, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cb, %bb.p ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.du, %bb.p ], [ %i.du, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.pre-phi ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i15 = load ptr, ptr %i.el, align 8, !tbaa !118 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %.sroa.0.0.copyload.i4.i.i.i.i.i.i16 = load ptr, ptr %i.em, align 8, !tbaa !118 ; 2 uses
  %.not11.i.i.i.i.i.i17 = icmp eq ptr %.sroa.0.0.copyload.i4.i.i.i.i.i.i16, %.sroa.0.0.copyload.i.i.i.i.i.i.i15
  br i1 %.not11.i.i.i.i.i.i17, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28, label %.lr.ph.i.i.i.i.i.i18

.lr.ph.i.i.i.i.i.i18:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread, %bb.v
  %.013.i.i.i.i.i.i19 = phi i32 [ %i.fi, %bb.v ], [ 0, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread ] ; 2 uses
  %.sroa.06.012.i.i.i.i.i.i20 = phi ptr [ %i.fh, %bb.v ], [ %.sroa.0.0.copyload.i4.i.i.i.i.i.i16, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread ] ; 3 uses
  %i.en = and i32 %.013.i.i.i.i.i.i19, 63
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i18
  %i.ep = load ptr, ptr %i.am, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 15
  %i.er = load atomic i8, ptr %i.eq monotonic, align 1
  %i.es = icmp eq i8 %i.er, -1
  br i1 %i.es, label %bb.r, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24

bb.r:                                             ; preds = %bb.q
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i.i25 = phi ptr [ %i.eu, %bb.r ], [ %i.ep, %bb.q ]
  %i.ev = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i25)
  br i1 %i.ev, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28, label %bb.s

bb.s:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i18
  %i.ew = getelementptr inbounds i8, ptr %.sroa.06.012.i.i.i.i.i.i20, i64 -4
  %i.ex = load i32, ptr %.sroa.06.012.i.i.i.i.i.i20, align 4, !tbaa !54
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !54
  %i.ez = icmp ult i32 %i.ex, %i.ey
  br i1 %i.ez, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.fa = load ptr, ptr %i.am, align 32, !tbaa !460, !nonnull !69, !align !70 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 15
  %i.fc = load atomic i8, ptr %i.fb monotonic, align 1
  %i.fd = icmp eq i8 %i.fc, -1
  br i1 %i.fd, label %bb.u, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22

bb.u:                                             ; preds = %bb.t
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22: ; preds = %bb.u, %bb.t
  %.0.i.i5.i.i.i.i.i.i23 = phi ptr [ %i.ff, %bb.u ], [ %i.fa, %bb.t ]
  %i.fg = call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i5.i.i.i.i.i.i23) ; 0 uses
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28

bb.v:                                             ; preds = %bb.s
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i.i.i.i.i20, i64 4 ; 2 uses
  %i.fi = add nuw nsw i32 %.013.i.i.i.i.i.i19, 1
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.fh, %.sroa.0.0.copyload.i.i.i.i.i.i.i15
  br i1 %.not.i.i.i.i.i.i21, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28, label %.lr.ph.i.i.i.i.i.i18, !llvm.loop !456

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28: ; preds = %bb.v, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit.i.i.i.i.i.i24, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i.i.i.i.i22, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit.thread
  %i.fj = add i8 %i.ek, -1
  %i.fk = add nuw i8 %i.ej, 7
  %i.fl = and i8 %i.fk, 7
  br label %thread-pre-split35

thread-pre-split35:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28
  %i.fm = phi i8 [ %i.fj, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28 ], [ %i.cb, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.fn = phi i8 [ %i.fl, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit28 ], [ %i.cc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EE12is_divisibleEh.exit ]
  %i.fo = icmp eq i8 %i.fm, 0
  br i1 %i.fo, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EED2Ev.exit34, label %bb.w

bb.w:                                             ; preds = %.noexc, %thread-pre-split35
  %i.fp = phi i8 [ %i.dt, %.noexc ], [ %i.aq, %thread-pre-split35 ]
  %i.fq = phi i8 [ %i.dr, %.noexc ], [ %i.fm, %thread-pre-split35 ]
  %i.fr = phi i8 [ %i.cr, %.noexc ], [ %i.fn, %thread-pre-split35 ]
  %i.fs = load ptr, ptr %3, align 8, !tbaa !202   ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 15
  %i.fu = load atomic i8, ptr %i.ft monotonic, align 1
  %i.fv = icmp eq i8 %i.fu, -1
  br i1 %i.fv, label %bb.x, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.x:                                             ; preds = %bb.w
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !40
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.x, %bb.w
  %.0.i.i = phi ptr [ %i.fx, %bb.x ], [ %i.fs, %bb.w ]
  %i.fy = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.fy, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEELh8EED2Ev.exit34, label %bb.l, !llvm.loop !459
end_hunk_1
