Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/color_ocio?download=true
inline.NumInlined: 6229
inline.NumDeleted: 1603
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59ProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !98
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #32 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !192  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN11OpenImageIO4v3_119ColorProcessor_OCIOD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 40) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_119ColorProcessor_OCIOELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !98
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38, !inline_history !6
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !79
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !63
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !101

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #38
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #32 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN11OpenImageIO4v3_121ColorProcessor_MatrixELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph68

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEET_SM_SM_T0_.exit"
  %i.j = icmp eq i64 %i.cg, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph68, !llvm.loop !1241

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa64 = phi i64 [ %i.d, %.lr.ph ], [ %i.cz, %bb.b ] ; 2 uses
  %.lcssa62 = phi i64 [ %i.c, %.lr.ph ], [ %i.cy, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.k = add nsw i64 %.lcssa64, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.q = getelementptr inbounds [32 x i8], ptr %0, i64 %.010.i.i.i ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !77   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 7 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !78   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  store ptr %i.s, ptr %i.q, align 8, !tbaa !77
  store i64 0, ptr %i.u, align 8, !tbaa !78
  store i8 0, ptr %i.s, align 8, !tbaa !79
  store ptr %i.o, ptr %6, align 8, !tbaa !90
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %bb.c
  %i.y = load i64, ptr %i.s, align 8, !tbaa !79   ; 2 uses
  store i64 %i.y, ptr %i.m, align 8, !tbaa !79
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !78 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !77
  store i64 0, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !78
  store i8 0, ptr %i.s, align 8, !tbaa !79
  store ptr %i.o, ptr %6, align 8, !tbaa !90
  %i.z = icmp eq ptr %i.r, %i.m
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %.pre.i.i = add nuw nsw i64 %.pre.i.i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ]
  %i.aa = phi i64 [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i._crit_edge.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i.i.i ] ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %.pre-phi.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.r, ptr %6, align 8, !tbaa !77
  store i64 %i.y, ptr %i.o, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i, %bb.d
  %i.ac = phi i64 [ %i.aa, %bb.d ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i.i.i ]
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !78
  store ptr %i.m, ptr %5, align 8, !tbaa !77
  store i64 0, ptr %i.n, align 8, !tbaa !78
  store i8 0, ptr %i.m, align 8, !tbaa !79
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_T0_SN_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa64, ptr noundef %6)
  %i.ad = load ptr, ptr %6, align 8, !tbaa !77    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i
  %i.af = load i64, ptr %i.o, align 8, !tbaa !79
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit12.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ah = add nsw i64 %.010.i.i.i, -1
  %i.ai = load ptr, ptr %5, align 8, !tbaa !77    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.m
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !79
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_RT0_.exit.i.i.a", label %bb.c, !llvm.loop !1242

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_RT0_.exit.i.i.a": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %7 = icmp sgt i64 %.lcssa62, 32
  br i1 %7, label %.lr.ph.i9.i.preheader, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_RT0_.exit.i.i.a"
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.ar, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_RT0_.exit" ], [ %storemerge26.lcssa, %.lr.ph.i9.i.preheader ] ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %i.am, ptr %3, align 8, !tbaa !90
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !77 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 9 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i9.i
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !78 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.as, ptr %3, align 8, !tbaa !77
  %i.az = load i64, ptr %i.at, align 8, !tbaa !79
  store i64 %i.az, ptr %i.am, align 8, !tbaa !79
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !78
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %i.ba = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aw, %bb.e ]
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 3 uses
  store i64 %i.ba, ptr %i.an, align 8, !tbaa !78
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !77
  store i64 0, ptr %i.bb, align 8, !tbaa !78
  store i8 0, ptr %i.at, align 8, !tbaa !79
  %i.bc = load ptr, ptr %0, align 8, !tbaa !77    ; 5 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.be = load i64, ptr %i.h, align 8, !tbaa !78  ; 3 uses
  %i.bf = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bf)
  %.not21.i.i = icmp eq ptr %0, %i.ar
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.g, !prof !101

bb.g:                                             ; preds = %bb.f
  switch i64 %i.be, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bg = load i8, ptr %i.bc, align 1, !tbaa !79
  store i8 %i.bg, ptr %i.at, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.at, ptr align 1 %i.bc, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bh = load i64, ptr %i.h, align 8, !tbaa !78  ; 2 uses
  store i64 %i.bh, ptr %i.bb, align 8, !tbaa !78
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  store i8 0, ptr %i.bi, align 1, !tbaa !79
  %.pre.i.i16 = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !77
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !78
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !78
  %i.bk = load i64, ptr %i.ao, align 8, !tbaa !79
  store i64 %i.bk, ptr %i.at, align 8, !tbaa !79
  store ptr %i.ao, ptr %0, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.f
  %i.bl = phi ptr [ %.pre.i.i16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ao, %bb.j ], [ %i.bc, %bb.f ]
  store i64 0, ptr %i.h, align 8, !tbaa !78
  store i8 0, ptr %i.bl, align 1, !tbaa !79
  %i.bm = ptrtoint ptr %i.ar to i64
  %i.bn = sub i64 %i.bm, %i.a                     ; 2 uses
  %i.bo = ashr exact i64 %i.bn, 5
  store ptr %i.ap, ptr %4, align 8, !tbaa !90
  %i.bp = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.am
  br i1 %i.bq, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.br = load i64, ptr %i.an, align 8, !tbaa !78 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  store ptr %i.bp, ptr %4, align 8, !tbaa !77
  %i.bu = load i64, ptr %i.am, align 8, !tbaa !79
  store i64 %i.bu, ptr %i.ap, align 8, !tbaa !79
  %.pre5.i = load i64, ptr %i.an, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i, %bb.k
  %i.bv = phi i64 [ %i.br, %bb.k ], [ %.pre5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i ]
  store i64 %i.bv, ptr %i.aq, align 8, !tbaa !78
  store ptr %i.am, ptr %3, align 8, !tbaa !77
  store i64 0, ptr %i.an, align 8, !tbaa !78
  store i8 0, ptr %i.am, align 8, !tbaa !79
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_T0_SN_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.bo, ptr noundef %4)
  %i.bw = load ptr, ptr %4, align 8, !tbaa !77    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ap
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i
  %i.by = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ca = load ptr, ptr %3, align 8, !tbaa !77    ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.am
  br i1 %i.cb, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cc = load i64, ptr %i.am, align 8, !tbaa !79
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #40
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ce = icmp sgt i64 %i.bn, 32
  br i1 %i.ce, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !1243

.lr.ph68:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2667 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02766 = phi i64 [ %i.cg, %bb.b ], [ %2, %.lr.ph ]
  %i.cf = phi i64 [ %i.cz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cg = add nsw i64 %.02766, -1                 ; 3 uses
  %i.ch = lshr i64 %i.cf, 1
  %i.ci = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.ch ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %storemerge2667, i64 -32 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !78 ; 3 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 8
  %.val1.i.i.i = load i64, ptr %i.ck, align 8, !tbaa !78 ; 3 uses
  %i.cl = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %i.cm = getelementptr i8, ptr %storemerge2667, i64 -24
  %.val1.i27.i.i = load i64, ptr %i.cm, align 8, !tbaa !78 ; 4 uses
  br i1 %i.cl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph68
  %i.cn = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cn, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  %..i.i = select i1 %i.co, ptr %i.cj, ptr %i.f
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i"

bb.n:                                             ; preds = %.lr.ph68
  %i.cp = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cp, label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  %.34.i.i = select i1 %i.cq, ptr %i.cj, ptr %i.ci
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i": ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.sink.i.i = phi ptr [ %i.ci, %bb.l ], [ %i.f, %bb.n ], [ %.34.i.i, %bb.o ], [ %..i.i, %bb.m ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink.i.i) #38
  br label %bb.p

bb.p:                                             ; preds = %bb.s, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i"
  %.sroa.012.0.i.i = phi ptr [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i" ], [ %i.ct, %bb.s ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2667, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_SM_T0_.exit.i" ], [ %.sroa.0.1.i.i, %bb.s ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !78 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %bb.p ], [ %i.ct, %bb.q ] ; 8 uses
  %i.cr = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.cr, align 8, !tbaa !78
  %i.cs = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 32 ; 2 uses
  br i1 %i.cs, label %bb.q, label %.preheader.i.i, !llvm.loop !1244

.preheader.i.i:                                   ; preds = %bb.q, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.q ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 4 uses
  %i.cu = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %.val1.i9.i.i = load i64, ptr %i.cu, align 8, !tbaa !78
  %i.cv = icmp ult i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.cv, label %.preheader.i.i, label %bb.r, !llvm.loop !1245

bb.r:                                             ; preds = %.preheader.i.i
  %i.cw = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cw, label %bb.s, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEET_SM_SM_T0_.exit"

bb.s:                                             ; preds = %bb.r
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.1.i.i) #38
  br label %bb.p, !llvm.loop !1246

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEET_SM_SM_T0_.exit": ; preds = %bb.r
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2667, i64 noundef %i.cg)
  %i.cx = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cy = sub i64 %i.cx, %i.a                     ; 2 uses
  %i.cz = ashr exact i64 %i.cy, 5                 ; 3 uses
  %i.da = icmp sgt i64 %i.cz, 16
  br i1 %i.da, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !1241

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEET_SM_SM_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_SM_RT0_.exit", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_SM_RT0_.exit.i.i.a"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNK11OpenImageIO4v3_111ColorConfig25parseColorSpaceFromStringENSG_17basic_string_viewIcS5_EEE3$_0EEEvT_T0_SN_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull %3) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.051 = phi i64 [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %1, %bb.a ] ; 3 uses
  %i.d = shl i64 %.051, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [32 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [32 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !78
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !78
  %i.k = icmp ult i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 5 uses
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select ; 9 uses
  %i.m = getelementptr inbounds [32 x i8], ptr %0, i64 %.051 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !77   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.lr.ph
  br i1 %i.s, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !78   ; 3 uses
  %i.v = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.v)
  %.not21.i = icmp eq i64 %spec.select, %.051
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !101

bb.c:                                             ; preds = %bb.b
  switch i64 %i.u, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.q, align 1, !tbaa !79
  store i8 %i.w, ptr %i.n, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.q, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.x = load i64, ptr %i.t, align 8, !tbaa !78   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !78
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !77
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !79
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.q, ptr %i.m, align 8, !tbaa !77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !79
  store <2 x i64> %i.ad, ptr %i.ab, align 8, !tbaa !79
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !79
  store ptr %i.q, ptr %i.m, align 8, !tbaa !77
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !79
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !79
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !77
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.r, ptr %i.l, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ai = phi ptr [ %i.n, %bb.f ], [ %i.r, %bb.g ], [ %i.q, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.aj, align 8, !tbaa !78
  store i8 0, ptr %i.ai, align 1, !tbaa !79
  %i.ak = icmp slt i64 %spec.select, %i.b
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !1247

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ] ; 6 uses
  %i.al = and i64 %2, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.an = add nsw i64 %2, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.aq = shl nsw i64 %.0.lcssa, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 3 uses
  %i.as = getelementptr inbounds [32 x i8], ptr %0, i64 %i.ar ; 9 uses
  %i.at = getelementptr inbounds [32 x i8], ptr %0, i64 %.0.lcssa ; 8 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !77 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31: ; preds = %bb.i
  br i1 %i.az, label %bb.j, label %.thread.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25: ; preds = %bb.i
  br i1 %i.az, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !78 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %.not21.i28 = icmp eq i64 %i.ar, %.0.lcssa
  br i1 %.not21.i28, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33, label %bb.k, !prof !101

bb.k:                                             ; preds = %bb.j
  switch i64 %i.bb, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !79
  store i8 %i.bd, ptr %i.au, align 1, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29: ; preds = %bb.m, %bb.l, %bb.k
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !78 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !78
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !79
  %.pre.i30 = load ptr, ptr %i.as, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

.thread.i32:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !77
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !79
  store <2 x i64> %i.bk, ptr %i.bi, align 8, !tbaa !79
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i25
  %i.bl = load i64, ptr %i.av, align 8, !tbaa !79
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bo = load <2 x i64>, ptr %i.bm, align 8, !tbaa !79
  store <2 x i64> %i.bo, ptr %i.bn, align 8, !tbaa !79
  %.not.i27 = icmp eq ptr %i.au, null
  br i1 %.not.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26
  store ptr %i.au, ptr %i.as, align 8, !tbaa !77
  store i64 %i.bl, ptr %i.ay, align 8, !tbaa !79
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i26, %.thread.i32
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !77
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit33

end_hunk_0
