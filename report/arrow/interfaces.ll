Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/interfaces?download=true
inline.NumInlined: 1995
inline.NumDeleted: 945
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #34
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !45

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #35 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !83
  store i64 %i.c, ptr %i.a, align 8, !tbaa !44
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !44
  store i8 %i.j, ptr %i.i, align 1, !tbaa !44
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !41
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !411
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32, !inline_history !411
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !18
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, !prof !45

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #32
  br label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, !prof !81

_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !78, !range !79, !noundef !80
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_8internal10ThreadPoolEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !83   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !44
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #36
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !67 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, !prof !81

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit
  %i.i = phi ptr [ %.pr.pre, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !78, !range !79, !noundef !80
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #32
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt24__throw_invalid_argumentPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt20__throw_out_of_rangePKc(ptr noundef) local_unnamed_addr #19

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 36 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 16 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit
  %i.h = icmp eq i64 %i.bs, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph42, !llvm.loop !412

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cf, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i25.lcssa, 4             ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i.i25.lcssa, 16
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.p
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.al, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !94
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.s, align 8, !tbaa !94
  %i.u = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.y
  %.val.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !120
  %.val1.i.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !120
  %i.aa = icmp slt i64 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.aa, i64 %i.y, i64 %i.w ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.ac = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !119
  %i.ad = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !413

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ae = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.ae, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !119
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.af = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !120
  %i.ah = icmp slt i64 %.val.i.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i
  br i1 %i.ah, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !119
  %i.aj = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i, !llvm.loop !414

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store <2 x i64> %i.t, ptr %i.ak, align 8, !tbaa !94
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.al = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i, label %bb.c, !llvm.loop !415

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_T0_SK_T1_T2_.exit.i.i.i
  %3 = icmp sgt i64 %.fr.i.i25.lcssa, 16
  br i1 %3, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.am, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i ], [ %storemerge23.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i ]
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %i.an = load <2 x i64>, ptr %i.am, align 8, !tbaa !94
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.am, align 8, !tbaa !94
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.fr26, i64 16, i1 false), !tbaa.struct !119
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.ao, %i.a                     ; 3 uses
  %i.aq = ashr exact i64 %i.ap, 4                 ; 3 uses
  %i.ar = add nsw i64 %i.aq, -1
  %i.as = lshr i64 %i.ar, 1
  %i.at = icmp sgt i64 %i.aq, 2
  br i1 %i.at, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i

.lr.ph.i.i.i22.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i22.i
  %.037.i.i.i23.i = phi i64 [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.au = shl i64 %.037.i.i.i23.i, 1              ; 2 uses
  %i.av = add i64 %i.au, 2                        ; 2 uses
  %i.aw = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.av
  %i.ax = or disjoint i64 %i.au, 1                ; 2 uses
  %i.ay = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %i.ax
  %.val.i.i.i.i24.i = load i64, ptr %i.aw, align 8, !tbaa !120
  %.val1.i.i.i.i25.i = load i64, ptr %i.ay, align 8, !tbaa !120
  %i.az = icmp slt i64 %.val.i.i.i.i24.i, %.val1.i.i.i.i25.i
  %spec.select.i.i.i26.i = select i1 %i.az, i64 %i.ax, i64 %i.av ; 4 uses
  %i.ba = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %spec.select.i.i.i26.i
  %i.bb = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.037.i.i.i23.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !119
  %i.bc = icmp slt i64 %spec.select.i.i.i26.i, %i.as
  br i1 %i.bc, label %.lr.ph.i.i.i22.i, label %._crit_edge.i.i.i13.i, !llvm.loop !413

._crit_edge.i.i.i13.i:                            ; preds = %.lr.ph.i.i.i22.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i14.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i26.i, %.lr.ph.i.i.i22.i ] ; 5 uses
  %i.bd = and i64 %i.ap, 16
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i13.i
  %i.bf = add nsw i64 %i.aq, -2
  %i.bg = ashr exact i64 %i.bf, 1
  %i.bh = icmp eq i64 %.0.lcssa.i.i.i14.i, %i.bg
  br i1 %i.bh, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.bi = shl nuw nsw i64 %.0.lcssa.i.i.i14.i, 1
  %i.bj = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i14.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !119
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i13.i
  %.not.i.i15.i = icmp eq i64 %.0.lcssa.i.i.i14.i, 0
  br i1 %.not.i.i15.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i, label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i14.i, %bb.h ], [ %i.bj, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i19.i = load i64, ptr %i.bm, align 8, !tbaa !120
  %i.bn = icmp slt i64 %.val.i.i.i.i.i19.i, %.sroa.03.0.copyload.i.i10.i
  br i1 %i.bn, label %bb.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.bo = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.010.i.i.i.i17.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !119
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i, label %.lr.ph.i.i.i.i16.i, !llvm.loop !414

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i20.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.bp = getelementptr inbounds [16 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i20.i
  store <2 x i64> %i.an, ptr %i.bp, align 8, !tbaa !94
  %i.bq = icmp sgt i64 %i.ap, 16
  br i1 %i.bq, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit, !llvm.loop !416

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2341 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 3 uses
  %.02440 = phi i64 [ %i.bs, %bb.b ], [ %2, %.lr.ph ]
  %i.br = phi i64 [ %i.cg, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bs = add nsw i64 %.02440, -1                 ; 3 uses
  %i.bt = lshr i64 %i.br, 1
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.fr26, i64 %i.bt ; 5 uses
  %i.bv = getelementptr inbounds i8, ptr %storemerge2341, i64 -16 ; 5 uses
  %.val.i.i.i = load i64, ptr %i.f, align 8, !tbaa !120 ; 3 uses
  %.val1.i.i.i = load i64, ptr %i.bu, align 8, !tbaa !120 ; 3 uses
  %i.bw = icmp slt i64 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i64, ptr %i.bv, align 8, !tbaa !120 ; 4 uses
  br i1 %i.bw, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph42
  %i.bx = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <2 x i64>, ptr %.fr26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !119
  store <2 x i64> %.sroa.0.0.copyload, ptr %i.bu, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  %i.by = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.049.0.copyload = load <2 x i64>, ptr %.fr26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !119
  store <2 x i64> %.sroa.049.0.copyload, ptr %i.bv, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.n:                                             ; preds = %bb.l
  %.sroa.051.0.copyload = load <2 x i64>, ptr %.fr26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !119
  store <2 x i64> %.sroa.051.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.o:                                             ; preds = %.lr.ph42
  %i.bz = icmp slt i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.053.0.copyload = load <2 x i64>, ptr %.fr26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !119
  store <2 x i64> %.sroa.053.0.copyload, ptr %i.f, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.ca = icmp slt i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.055.0.copyload = load <2 x i64>, ptr %.fr26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !119
  store <2 x i64> %.sroa.055.0.copyload, ptr %i.bv, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %.sroa.057.0.copyload = load <2 x i64>, ptr %.fr26, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.fr26, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !119
  store <2 x i64> %.sroa.057.0.copyload, ptr %i.bu, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader, %bb.v
  %.sroa.014.0.i.i = phi ptr [ %i.cc, %bb.v ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2341, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader ]
  %.val1.i.i13.i = load i64, ptr %.fr26, align 8, !tbaa !120 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i ], [ %i.cc, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !120
  %i.cb = icmp slt i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16 ; 2 uses
  br i1 %i.cb, label %bb.t, label %.preheader.i.i, !llvm.loop !417

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 6 uses
  %.val1.i11.i.i = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !120
  %i.cd = icmp slt i64 %.val1.i.i13.i, %.val1.i11.i.i
  br i1 %i.cd, label %.preheader.i.i, label %bb.u, !llvm.loop !418

bb.u:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit

bb.v:                                             ; preds = %bb.u
  %.sroa.059.0.copyload = load <2 x i64>, ptr %.sroa.014.1.i.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i, i64 16, i1 false), !tbaa.struct !119
  store <2 x i64> %.sroa.059.0.copyload, ptr %.sroa.0.1.i.i, align 8
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_SJ_T0_.exit.i, !llvm.loop !419

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit: ; preds = %bb.u
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2341, i64 noundef %i.bs)
  %i.ce = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cf = sub i64 %i.ce, %i.a                     ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 4                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 16
  br i1 %i.ch, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit, !llvm.loop !412

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEET_SJ_SJ_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_SJ_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN5arrow2io9ReadRangeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_8internal12_GLOBAL__N_117ReadRangeCombiner8CoalesceES8_EUlRKS4_SG_E_EEEvT_SJ_RT0_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !115    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.t = add i64 %1, 1152921504606846974
  %i.u = and i64 %i.t, 1152921504606846975
  %i.v = add i64 %1, 3
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.p, %bb.d ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !119
  %i.w = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !420

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.06.i.i.i.i.i.i.i.unr = phi ptr [ %i.p, %bb.d ], [ %i.w, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.x = icmp samesign ult i64 %i.u, 3
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !119
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !119
  %i.z = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !119
  %i.aa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !119
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.ab, %i.s
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !421

_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !116
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.ac = icmp ult i64 %i.n, %1
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #34
  unreachable

_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.ad = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 576460752303423487) ; 2 uses
  %i.af = shl nuw nsw i64 %i.ae, 4
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #35 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.f ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = add nsw i64 %1, -1                      ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %.idx.i.i.i.i.i30 = shl nuw nsw i64 %i.ai, 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i.i.i30
  %i.am = add i64 %1, 1152921504606846974
  %i.an = and i64 %i.am, 1152921504606846975
  %i.ao = add i64 %1, 3
  %xtraiter45 = and i64 %i.ao, 3                  ; 2 uses
  %lcmp.mod46.not = icmp eq i64 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol

.lr.ph.i.i.i.i.i.i.i31.prol:                      ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i31.prol
  %.06.i.i.i.i.i.i.i32.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ %i.ak, %bb.g ] ; 2 uses
  %prol.iter47 = phi i64 [ %prol.iter47.next, %.lr.ph.i.i.i.i.i.i.i31.prol ], [ 0, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32.prol, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !119
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32.prol, i64 16 ; 2 uses
  %prol.iter47.next = add i64 %prol.iter47, 1     ; 2 uses
  %prol.iter47.cmp.not = icmp eq i64 %prol.iter47.next, %xtraiter45
  br i1 %prol.iter47.cmp.not, label %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i31.prol, !llvm.loop !422

.lr.ph.i.i.i.i.i.i.i31.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol, %bb.g
  %.06.i.i.i.i.i.i.i32.unr = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i31.prol ]
  %i.aq = icmp samesign ult i64 %i.an, 3
  br i1 %i.aq, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31

.lr.ph.i.i.i.i.i.i.i31:                           ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31
  %.06.i.i.i.i.i.i.i32 = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i31 ], [ %.06.i.i.i.i.i.i.i32.unr, %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.06.i.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !119
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !119
  %i.as = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !119
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !119
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i32, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i33.3 = icmp eq ptr %i.au, %i.al
  br i1 %.not.i.i.i.i.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i.i.i.i.i31, !llvm.loop !421

_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i.i.i.i.i31.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i31, %_ZNKSt6vectorIN5arrow2io9ReadRangeESaIS2_EE12_M_check_lenEmPKc.exit
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit35, %bb.h
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #36
  br label %_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38

_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38: ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.i
  store ptr %i.ag, ptr %0, align 8, !tbaa !115
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %1
  store ptr %i.az, ptr %i.a, align 8, !tbaa !116
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ba, ptr %i.h, align 8, !tbaa !117
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5arrow2io9ReadRangeEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5arrow2io9ReadRangeESaIS2_EE13_M_deallocateEPS2_m.exit38, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #24

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_2io13FileInterface10CloseAsyncEvE3$_0EED2Ev"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_Head_baseILm0EN5arrow6FutureINS0_8internal5EmptyEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
end_hunk_0
