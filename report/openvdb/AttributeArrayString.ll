Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/AttributeArrayString?download=true
inline.NumInlined: 1635
inline.NumDeleted: 726
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_RT0_:bb.a

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_T0_SD_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEljNS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_T0_SD_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load atomic i8, ptr %i.a monotonic, align 1
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #32
  unreachable
}

declare void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE3runERKSD_RKSF_RSH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !156
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !40
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !161
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE3runERKSD_RKSF_RSH_RNS1_18task_group_contextE.exit, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8, !tbaa !164
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 128)
          to label %.noexc unwind label %bb.d     ; 9 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !192
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  store ptr null, ptr %i.k, align 32, !tbaa !195
  %i.l = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store i32 0, ptr %i.o, align 16, !tbaa !178
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  store i8 5, ptr %i.p, align 4, !tbaa !179
  %i.q = shl nsw i64 %i.n, 1
  %i.r = and i64 %i.q, 9223372036854775806
  store i64 %i.r, ptr %i.m, align 8, !tbaa !180
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.t = load i64, ptr %3, align 8, !tbaa !181
  store i64 %i.t, ptr %i.s, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !185
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !186
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.v, align 8, !tbaa !190
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.w, align 8, !tbaa !191
  store ptr %4, ptr %i.k, align 32, !tbaa !195
  invoke void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE3runERKSD_RKSF_RSH_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE3runERKSD_RKSF_RSH_RNS1_18task_group_contextE.exit: ; preds = %.noexc5, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.y = load atomic i8, ptr %i.x monotonic, align 1
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE3runERKSD_RKSF_RSH_RNS1_18task_group_contextE.exit
  invoke void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #32
  unreachable

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE3runERKSD_RKSF_RSH_RNS1_18task_group_contextE.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.d:                                             ; preds = %.noexc4, %.noexc, %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3tbb6detail2d118task_group_contextD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.ac
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEED0Ev(ptr noundef nonnull align 64 dereferenceable(128) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE7executeERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !180
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.c, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.c:                                             ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread
  store i64 1, ptr %i.g, align 8, !tbaa !180
  %i.i = tail call noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !199
  %.not7.i = icmp eq i16 %i.i, %i.k
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 32, !tbaa !195
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 32, !tbaa !195
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !179
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !179
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISE_SG_EEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load ptr, ptr %i.w, align 32, !tbaa !195 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load i64, ptr %i.y, align 8, !tbaa !181
  %i.aa = load ptr, ptr %0, align 64, !tbaa !93
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(128) dereferenceable(128) %0) #26, !inline_history !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !185 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !181
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 32, !tbaa !195 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load i64, ptr %i.c, align 8, !tbaa !181
  %i.e = load ptr, ptr %0, align 64, !tbaa !93
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(128) dereferenceable(128) %0) #26, !inline_history !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !185 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !181
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(128) %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

declare noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISE_SG_EEKNS1_16auto_partitionerEEESH_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d0::split", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !180    ; 2 uses
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !179   ; 2 uses
  %.not4.i = icmp eq i8 %i.g, 0
  br i1 %.not4.i, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = add i8 %i.g, -1
  store i8 %i.h, ptr %i.f, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit: ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11: ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.k = call noundef ptr @_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISC_SE_EEKNS1_16auto_partitionerEEEJRSK_RNS0_2d05splitERS2_EEEPT_RNS1_14execution_dataEDpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !448 ; 2 uses
  %i.l = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !448 ; 6 uses
  %i.m = load ptr, ptr %i.j, align 32, !tbaa !200
  store ptr %i.m, ptr %i.l, align 8, !tbaa !185
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 2, ptr %i.n, align 8, !tbaa !186
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.p = load i64, ptr %4, align 8, !tbaa !181
  store i64 %i.p, ptr %i.o, align 8, !tbaa !181
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 0, ptr %i.q, align 8, !tbaa !201
  store ptr %i.l, ptr %i.j, align 32, !tbaa !195
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.l, ptr %i.r, align 32, !tbaa !195
  %i.s = load ptr, ptr %3, align 8, !tbaa !202
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(128) %i.k, ptr noundef nonnull align 8 dereferenceable(128) %i.s), !inline_history !448
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.t = load i64, ptr %i.a, align 8, !tbaa !161
  %i.u = icmp ugt i64 %i.t, 499
  br i1 %i.u, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11
  %i.v = load i64, ptr %0, align 8, !tbaa !180    ; 2 uses
  %i.w = icmp ugt i64 %i.v, 1
  br i1 %i.w, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge, label %bb.g

_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge: ; preds = %bb.f, %bb.i
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !449

bb.g:                                             ; preds = %bb.f
  %.not.i8 = icmp eq i64 %i.v, 0
  br i1 %.not.i8, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i8, ptr %i.i, align 4, !tbaa !179   ; 2 uses
  %.not4.i9 = icmp eq i8 %i.x, 0
  br i1 %.not4.i9, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i8 %i.x, -1
  store i8 %i.y, ptr %i.i, align 4, !tbaa !179
  store i64 0, ptr %0, align 8, !tbaa !180
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11.backedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, %bb.c, %bb.d, %bb.a
  call void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  ret void
}

declare noundef zeroext i16 @_ZN3tbb6detail2r114execution_slotEPKNS0_2d114execution_dataE(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISG_SI_EEKNS1_16auto_partitionerEEESJ_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(13) %0, ptr noundef nonnull align 64 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::range_vector", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !161  ; 4 uses
  %i.c = icmp ugt i64 %i.b, 499
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !179
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.c
  %.idx.i.i.i.i.i.i = shl nsw i64 %i.b, 2
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !118 ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.01.0.copyload.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i ; 2 uses
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_T1_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, ptr nonnull %i.g, i64 noundef %i.j)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_comp_iterISt4lessIjEEEEvT_SC_T0_(ptr %.sroa.01.0.copyload.i.i.i.i.i.i, ptr nonnull %i.g)
  br label %_ZN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEE8run_bodyERSD_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 1, i8 0>, ptr %5, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !192
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.e

bb.e:                                             ; preds = %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit, %bb.d
  %i.r = load i8, ptr %i.d, align 4, !tbaa !179
  call void @_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE13split_to_fillEh(ptr noundef nonnull align 8 dereferenceable(208) %5, i8 noundef zeroext %i.r)
  %i.s = load ptr, ptr %i.o, align 32, !tbaa !195
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load atomic i8, ptr %i.t monotonic, align 1, !range !116, !noundef !69
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge

._ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load i8, ptr %5, align 8, !tbaa !205    ; 2 uses
  %.pre28 = zext i8 %.pre to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE12is_divisibleEh.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.d, align 4, !tbaa !179
  %i.x = add i8 %i.w, 1                           ; 2 uses
  store i8 %i.x, ptr %i.d, align 4, !tbaa !179
  %i.y = load i8, ptr %i.l, align 2, !tbaa !206   ; 2 uses
  %i.z = icmp ugt i8 %i.y, 1
  br i1 %i.z, label %.noexc, label %bb.g

.noexc:                                           ; preds = %bb.f
  %i.aa = load i8, ptr %i.k, align 1, !tbaa !452
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8, !tbaa !164
  %i.ae = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !450 ; 9 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEENS1_15quick_sort_bodyISA_SC_EEKNS1_16auto_partitionerEEE, i64 16), ptr %i.ae, align 64, !tbaa !93
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !192
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 96 ; 2 uses
  store ptr null, ptr %i.ai, align 32, !tbaa !195
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !180
  %i.al = lshr i64 %i.ak, 1                       ; 2 uses
  store i64 %i.al, ptr %i.p, align 8, !tbaa !180
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !180
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d112range_vectorINS1_16quick_sort_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEESt4lessIjEEELh8EE13split_to_fillEh:bb.a
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
  br i1 %i.bf, label %bb.b, label %.critedge, !llvm.loop !454

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
  br i1 %.not7.i, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load atomic i32, ptr %i.n seq_cst, align 4
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store atomic i8 1, ptr %i.r monotonic, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !tbaa !179
  %spec.select.i = tail call i8 @llvm.umax.i8(i8 %i.t, i8 1)
  %i.u = add i8 %spec.select.i, 1
  store i8 %i.u, ptr %i.s, align 4, !tbaa !179
  br label %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit

_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit: ; preds = %_ZN3tbb6detail2d116is_same_affinityERKNS1_14execution_dataE.exit.thread, %bb.c, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISE_St4lessIjEEEKNS1_16auto_partitionerEEESF_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !177  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 64, !tbaa !181
  %i.aa = load ptr, ptr %0, align 64, !tbaa !93
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 64 dead_on_return(136) dereferenceable(136) %0) #26, !inline_history !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %2 = atomicrmw add ptr %i.ac, i32 -1 seq_cst, align 4
  %i.ad = add i32 %2, -1
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.f
  %.019.i.i = phi ptr [ %i.af, %bb.f ], [ %i.x, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit ] ; 5 uses
  %i.af = load ptr, ptr %.019.i.i, align 8, !tbaa !185 ; 3 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !181
  %i.ai = inttoptr i64 %i.ah to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %3 = atomicrmw add ptr %i.aj, i32 -1 seq_cst, align 4
  %i.ak = add i32 %3, -1
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.am, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.ao = ptrtoint ptr %i.an to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.ao)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.f, %_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE18check_being_stolenINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISG_St4lessIjEEEKNS1_16auto_partitionerEEEEEbRT_RKNS1_14execution_dataE.exit, %bb.g, %bb.h
  %i.ap = inttoptr i64 %i.z to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 64 dereferenceable(136) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE(ptr noundef nonnull align 64 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 64, !tbaa !181
  %i.e = load ptr, ptr %0, align 64, !tbaa !93
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 64 dead_on_return(136) dereferenceable(136) %0) #26, !inline_history !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = atomicrmw add ptr %i.g, i32 -1 seq_cst, align 4
  %i.h = add i32 %2, -1
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.019.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %i.j = load ptr, ptr %.019.i.i, align 8, !tbaa !185 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !181
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.m, ptr noundef nonnull %.019.i.i, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %3 = atomicrmw add ptr %i.n, i32 -1 seq_cst, align 4
  %i.o = add i32 %3, -1
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %4 = atomicrmw add ptr %i.q, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %4, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.s = ptrtoint ptr %i.r to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.s)
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.t = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 64 dereferenceable(136) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1)
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d119partition_type_baseINS1_19auto_partition_typeEE7executeINS1_9start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISE_St4lessIjEEEKNS1_16auto_partitionerEEESF_EEvRT_RT0_RNS1_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 64 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !209
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !118
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %i.j = icmp ult i64 %i.b, %i.i
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !tbaa !180    ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
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
  %i.x = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !455 ; 12 uses
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
  %i.au = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !456 ; 6 uses
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
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.x, ptr noundef nonnull align 8 dereferenceable(128) %i.ba), !inline_history !456
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
  br label %_ZN3tbb6detail2d119auto_partition_type12is_divisibleEv.exit11, !llvm.loop !457

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
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not11.i.i.i.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not11.i.i.i.i.i.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENS1_23quick_sort_pretest_bodyISA_St4lessIjEEEKNS1_16auto_partitionerEE8run_bodyERSB_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.h ] ; 2 uses
  %.sroa.06.012.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.n = and i32 %.013.i.i.i.i.i.i, 63
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.m, align 32, !tbaa !462, !nonnull !69, !align !70 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.r = load atomic i8, ptr %i.q monotonic, align 1
  %i.s = icmp eq i8 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8
end_hunk_1
