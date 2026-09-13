Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFObjectFile?download=true
inline.NumInlined: 2994
inline.NumDeleted: 990
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !1026
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !71   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !71
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !1026
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

declare void @_ZN4llvm17SubtargetFeaturesC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm6object15object_categoryEv() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13ErrorInfoBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6object20SectionStrippedErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm7ECError3logERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1031, !noalias !1032 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !1033, !noalias !1032
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !73, !noalias !1032
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1032
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d) #26, !inline_history !1029
  %i.h = load ptr, ptr %2, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.h, i64 noundef %i.j) #26 ; 0 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !67     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8, !tbaa !52
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i32, ptr } @_ZNK4llvm7ECError18convertToErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 8, !tbaa !71
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8, !tbaa !80
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.21.0.copyload, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm9ErrorInfoINS_6object20SectionStrippedErrorENS1_11BinaryErrorEE14dynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @_ZN4llvm6object11BinaryError2IDE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm9ErrorInfoINS_6object20SectionStrippedErrorENS1_11BinaryErrorEE3isAEPKv(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, @_ZN4llvm6object11BinaryError2IDE
  br i1 %i.a, label %bb.b, label %_ZNK4llvm9ErrorInfoINS_6object11BinaryErrorENS_7ECErrorEE3isAEPKv.exit

_ZNK4llvm9ErrorInfoINS_6object11BinaryErrorENS_7ECErrorEE3isAEPKv.exit: ; preds = %bb.a
  %i.b = icmp eq ptr %1, @_ZN4llvm7ECError2IDE
  %i.c = icmp eq ptr %1, @_ZN4llvm13ErrorInfoBase2IDE
  %spec.select.i.i = or i1 %i.b, %i.c
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9ErrorInfoINS_6object11BinaryErrorENS_7ECErrorEE3isAEPKv.exit, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9ErrorInfoINS_6object11BinaryErrorENS_7ECErrorEE3isAEPKv.exit ]
  ret i1 %i.d
}

declare void @_ZN4llvm6object11BinaryError6anchorEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjPKcEEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1035, !nonnull !62, !align !206 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1041
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, ptr noundef %i.h) #26
  ret i32 %i.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #22

declare void @_ZN4llvm11StringErrorC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10error_codeb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(32), i32, ptr, i1 noundef zeroext) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1043, !nonnull !62, !align !206 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1047
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !71
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.f) #26
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #3 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1049, !nonnull !62, !align !206 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1055
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = load i64, ptr %i.e, align 8, !tbaa !54
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, i64 noundef %i.h) #26
  ret i32 %i.i
}

declare noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr, i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare void @_ZN4llvm18BinaryStreamReader9readBytesERNS_8ArrayRefIhEEj(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEET_SN_SN_T0_.exit"
  %i.h = icmp eq i64 %i.cz, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !1056

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dx, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.an, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !197
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !197
  %.val.i.i.us.i.i.i = load i32, ptr %i.aa, align 1
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ab, align 1
  %i.ac = icmp ult i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ac, i64 %i.y, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !197
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !197
  %i.ag = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ag, label %.lr.ph.i.us.i.i.i, label %.lr.ph.i.i.us.i.i.i, !llvm.loop !1057

.lr.ph.i.i.us.i.i.i:                              ; preds = %.lr.ph.i.us.i.i.i, %bb.c
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.t, align 1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.ai, align 1
  %i.aj = icmp ult i32 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.aj, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !197
  %i.al = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.al, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.us.i.i.i", !llvm.loop !1058

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.am, align 8, !tbaa !197
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.an = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !1059

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bm, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !197 ; 2 uses
  %i.aq = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.ar = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.as = add i64 %i.ar, 2                        ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.as
  %i.au = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.au
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !197
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !197
  %.val.i.i.i.i.i = load i32, ptr %i.aw, align 1
  %.val1.i.i.i.i.i = load i32, ptr %i.ax, align 1
  %i.ay = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ay, i64 %i.au, i64 %i.as ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !197
  %i.bb = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !197
  %i.bc = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1057

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bd = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !197
  store ptr %i.be, ptr %i.r, align 8, !tbaa !197
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bf = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %.val.val.i.i.i.i.i = load i32, ptr %i.ap, align 1
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !197 ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.bh, align 1
  %i.bi = icmp ult i32 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bi, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !197
  %i.bk = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i", !llvm.loop !1058

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.ap, ptr %i.bl, align 8, !tbaa !197
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bm = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !1059

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_T0_SO_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_RT0_.exit.i.i" ], [ %storemerge26.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_RT0_.exit.i.i" ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !197 ; 2 uses
  %i.bp = load ptr, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !197
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 3 uses
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -1
  %i.bu = lshr i64 %i.bt, 1
  %i.bv = icmp sgt i64 %i.bs, 2
  br i1 %i.bv, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bw = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.bx = add i64 %i.bw, 2                        ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bx
  %i.bz = or disjoint i64 %i.bw, 1                ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.bz
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !197
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !197
  %.val.i.i.i.i21.i = load i32, ptr %i.cb, align 1
  %.val1.i.i.i.i22.i = load i32, ptr %i.cc, align 1
  %i.cd = icmp ult i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cd, i64 %i.bz, i64 %i.bx ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !197
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !197
  %i.ch = icmp slt i64 %spec.select.i.i.i23.i, %i.bu
  br i1 %i.ch, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !1057

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.ci = and i64 %i.br, 8
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ck = add nsw i64 %i.bs, -2
  %i.cl = ashr exact i64 %i.ck, 1
  %i.cm = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cl
  br i1 %i.cm, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.cn = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.co = or disjoint i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !197
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !197
  br label %.lr.ph.i.i.i.i13.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i.preheader

.lr.ph.i.i.i.i13.i.preheader:                     ; preds = %bb.h, %.thread.i.i.i
  %.010.i.i.i.i14.i.ph = phi i64 [ %.0.lcssa.i.i.i11.i, %bb.h ], [ %i.co, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %.lr.ph.i.i.i.i13.i.preheader, %bb.i
  %.010.i.i.i.i14.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.010.i.i.i.i14.i.ph, %.lr.ph.i.i.i.i13.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i15.i = add nsw i64 %.010.i.i.i.i14.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i15.i, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i56.i.i.i
  %.val.val.i.i.i.i16.i = load i32, ptr %i.bo, align 1
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !197 ; 2 uses
  %.val.i.i.i.i.i17.i = load i32, ptr %i.ct, align 1
  %i.cu = icmp ult i32 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i16.i
  br i1 %i.cu, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i13.i
  %i.cv = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i14.i
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !197
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i, !llvm.loop !1058

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i13.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i14.i, %.lr.ph.i.i.i.i13.i ], [ 0, %bb.i ]
  %i.cw = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bo, ptr %i.cw, align 8, !tbaa !197
  %i.cx = icmp sgt i64 %i.br, 8
  br i1 %i.cx, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !1060

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.cz, %bb.b ], [ %2, %.lr.ph ]
  %i.cy = phi i64 [ %i.dy, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cz = add nsw i64 %.02752, -1                 ; 3 uses
  %i.da = lshr i64 %i.cy, 1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !197 ; 3 uses
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !197 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.dd, align 1      ; 3 uses
  %.val1.i.i.i = load i32, ptr %i.de, align 1     ; 3 uses
  %i.df = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !197 ; 3 uses
  %.val1.i27.i.i = load i32, ptr %i.dg, align 1   ; 4 uses
  br i1 %i.df, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph54
  %i.dh = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.di = load ptr, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.di, ptr %i.db, align 8, !tbaa !197
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.dj = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dk = load ptr, ptr %.fr29, align 8, !tbaa !197 ; 2 uses
  br i1 %i.dj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.dg, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.dk, ptr %i.dc, align 8, !tbaa !197
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  store ptr %i.dd, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.dk, ptr %i.f, align 8, !tbaa !197
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph54
  %i.dl = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dm = load ptr, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.dd, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.dm, ptr %i.f, align 8, !tbaa !197
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.dn = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.do = load ptr, ptr %.fr29, align 8, !tbaa !197 ; 2 uses
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.dg, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.do, ptr %i.dc, align 8, !tbaa !197
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  store ptr %i.de, ptr %.fr29, align 8, !tbaa !197
  store ptr %i.do, ptr %i.db, align 8, !tbaa !197
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.ds, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2653, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i.preheader" ]
  %i.dp = load ptr, ptr %.fr29, align 8, !tbaa !197
  %.val1.i.i13.i = load i32, ptr %i.dp, align 1   ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i" ], [ %i.ds, %bb.t ] ; 8 uses
  %i.dq = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !197 ; 2 uses
  %.val.i.i14.i = load i32, ptr %i.dq, align 1
  %i.dr = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.dr, label %bb.t, label %.preheader.i.i, !llvm.loop !1061

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.dt = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !197 ; 2 uses
  %.val1.i9.i.i = load i32, ptr %i.dt, align 1
  %i.du = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.du, label %.preheader.i.i, label %bb.u, !llvm.loop !1062

bb.u:                                             ; preds = %.preheader.i.i
  %i.dv = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dv, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEET_SN_SN_T0_.exit"

bb.v:                                             ; preds = %bb.u
  store ptr %i.dt, ptr %.sroa.012.1.i.i, align 8, !tbaa !197
  store ptr %i.dq, ptr %.sroa.0.1.i.i, align 8, !tbaa !197
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_SN_T0_.exit.i", !llvm.loop !1063

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEET_SN_SN_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.cz)
  %i.dw = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dx = sub i64 %i.dw, %i.a                     ; 2 uses
  %i.dy = ashr exact i64 %i.dx, 3                 ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 16
  br i1 %i.dz, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_T0_.exit", !llvm.loop !1056

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEET_SN_SN_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_SN_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6object15coff_relocationESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS3_18ResourceSectionRef4loadEPKNS3_14COFFObjectFileERKNS3_10SectionRefEE3$_0EEEvT_SN_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind allocsize(0) }
attributes #30 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!23}

!0 = distinct !{ptr @_ZN4llvm12consumeErrorENS_5ErrorE, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{null, ptr @_ZN4llvm12consumeErrorENS_5ErrorE, null, null}
!3 = distinct !{null, null}
!4 = distinct !{null}
!5 = distinct !{null}
!6 = distinct !{null, null}
!7 = distinct !{null}
!8 = distinct !{null, ptr @_ZN4llvm12consumeErrorENS_5ErrorE, null, null}
!9 = distinct !{null}
!10 = distinct !{null, null}
!11 = distinct !{null}
!12 = distinct !{!12, !147}
!13 = distinct !{null, null}
!14 = distinct !{ptr @_ZN4llvm18BinaryStreamReaderD2Ev, null, null, null, null}
!15 = distinct !{null, null}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 2}
!18 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!"__libc_errno", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"any pointer", !20, i64 0}
!25 = !{!"p1 omnipotent char", !24, i64 0}
!26 = !{!"long", !20, i64 0}
!27 = !{!"_ZTSN4llvm9StringRefE", !25, i64 0, !26, i64 8}
!28 = !{!"_ZTSN4llvm15MemoryBufferRefE", !27, i64 0, !27, i64 16}
!29 = !{!"_ZTSN4llvm6object6BinaryE", !21, i64 8, !28, i64 16}
!30 = !{!"_ZTSN4llvm6object12SymbolicFileE", !29, i64 0}
!31 = !{!"_ZTSN4llvm6object10ObjectFileE", !30, i64 0}
!32 = !{!"p1 _ZTSN4llvm6object16coff_file_headerE", !24, i64 0}
!33 = !{!"p1 _ZTSN4llvm6object23coff_bigobj_file_headerE", !24, i64 0}
!34 = !{!"p1 _ZTSN4llvm6object11pe32_headerE", !24, i64 0}
!35 = !{!"p1 _ZTSN4llvm6object15pe32plus_headerE", !24, i64 0}
!36 = !{!"p1 _ZTSN4llvm6object14data_directoryE", !24, i64 0}
!37 = !{!"p1 _ZTSN4llvm6object12coff_sectionE", !24, i64 0}
!38 = !{!"p1 _ZTSN4llvm6object11coff_symbolINS_7support6detail31packed_endian_specific_integralItLNS_10endiannessE1ELm1ELm1EEEEE", !24, i64 0}
!39 = !{!"p1 _ZTSN4llvm6object11coff_symbolINS_7support6detail31packed_endian_specific_integralIjLNS_10endiannessE1ELm1ELm1EEEEE", !24, i64 0}
!40 = !{!"p1 _ZTSN4llvm6object33coff_import_directory_table_entryE", !24, i64 0}
!41 = !{!"p1 _ZTSN4llvm6object34delay_import_directory_table_entryE", !24, i64 0}
!42 = !{!"p1 _ZTSN4llvm6object28export_directory_table_entryE", !24, i64 0}
!43 = !{!"p1 _ZTSN4llvm6object28coff_base_reloc_block_headerE", !24, i64 0}
!44 = !{!"p1 _ZTSN4llvm6object15debug_directoryE", !24, i64 0}
!45 = !{!"p1 _ZTSN4llvm6object18coff_tls_directoryINS_7support6detail31packed_endian_specific_integralIiLNS_10endiannessE1ELm1ELm1EEEEE", !24, i64 0}
!46 = !{!"p1 _ZTSN4llvm6object18coff_tls_directoryINS_7support6detail31packed_endian_specific_integralIlLNS_10endiannessE1ELm1ELm1EEEEE", !24, i64 0}
!47 = !{!"p1 _ZTSN4llvm6object13chpe_metadataE", !24, i64 0}
!48 = !{!"p1 _ZTSN4llvm6object24coff_dynamic_reloc_tableE", !24, i64 0}
!49 = !{!"_ZTSN4llvm6object14COFFObjectFileE", !31, i64 0, !32, i64 48, !33, i64 56, !34, i64 64, !35, i64 72, !36, i64 80, !37, i64 88, !38, i64 96, !39, i64 104, !25, i64 112, !21, i64 120, !40, i64 128, !41, i64 136, !21, i64 144, !42, i64 152, !43, i64 160, !43, i64 168, !44, i64 176, !44, i64 184, !45, i64 192, !46, i64 200, !24, i64 208, !47, i64 216, !48, i64 224}
!50 = !{!49, !25, i64 112}
!51 = !{!49, !38, i64 96}
!52 = !{!20, !20, i64 0}
!53 = !{!25, !25, i64 0}
!54 = !{!26, !26, i64 0}
!55 = !{!37, !37, i64 0}
!56 = !{!49, !34, i64 64}
!57 = !{!49, !35, i64 72}
!58 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !24, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!49, !32, i64 48}
!61 = !{!49, !33, i64 56}
!62 = !{}
!63 = !{!49, !37, i64 88}
!64 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !25, i64 0}
!65 = !{!64, !25, i64 0}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !64, i64 0, !26, i64 8, !20, i64 16}
!67 = !{!66, !25, i64 0}
!68 = !{!66, !26, i64 8}
!69 = !{!"_ZTSN4llvm5ErrorE", !58, i64 0}
!70 = !{!69, !58, i64 0}
!71 = !{!21, !21, i64 0}
!72 = !{!"vtable pointer", !19, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!"p1 _ZTSN4llvm6object10ObjectFileE", !24, i64 0}
!75 = !{!74, !74, i64 0}
!76 = !{!27, !25, i64 0}
!77 = !{!27, !26, i64 8}
!78 = !{!49, !21, i64 120}
!79 = !{!"p1 _ZTSNSt3_V214error_categoryE", !24, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"_ZTSN4llvm6object10SectionRefE", !20, i64 0, !74, i64 8}
!82 = !{!81, !74, i64 8}
!83 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !20, i64 0}
!84 = !{!"bool", !20, i64 0}
!85 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !20, i64 0}
!86 = !{!"_ZTSN4llvm11raw_ostreamE", !83, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !84, i64 40, !85, i64 44}
!87 = !{!86, !83, i64 8}
!88 = !{!86, !84, i64 40}
!89 = !{!86, !85, i64 44}
!90 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"p1 _ZTSN4llvm13format_objectIJjPKcEEE", !24, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"p1 _ZTSN4llvm13format_objectIJjEEE", !24, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"short", !20, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"_ZTSN4llvm8ArrayRefIhEE", !25, i64 0, !26, i64 8}
!99 = !{!98, !26, i64 8}
!100 = !{!98, !25, i64 0}
!101 = !{!"p1 _ZTSN4llvm8codeview9DebugInfoE", !24, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!49, !44, i64 176}
!104 = !{!49, !44, i64 184}
!105 = !{!49, !36, i64 80}
!106 = !{!49, !40, i64 128}
!107 = !{!49, !21, i64 144}
!108 = !{!49, !41, i64 136}
!109 = !{!49, !42, i64 152}
!110 = !{!49, !43, i64 160}
!111 = !{!49, !43, i64 168}
!112 = !{!"p1 _ZTSN4llvm13format_objectIJjmEEE", !24, i64 0}
!113 = !{!24, !24, i64 0}
!114 = !{!49, !47, i64 216}
!115 = !{!"_ZTSN4llvm5Twine8NodeKindE", !20, i64 0}
!116 = !{!"_ZTSN4llvm5TwineE", !20, i64 0, !20, i64 16, !115, i64 32, !115, i64 33}
!117 = !{!116, !115, i64 32}
!118 = !{!116, !115, i64 33}
!119 = !{!49, !48, i64 224}
!120 = !{!"p1 _ZTSN4llvm6object14COFFObjectFileE", !24, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"_ZTSN4llvm6object15DynamicRelocRefE", !120, i64 0, !25, i64 8}
!123 = !{!122, !120, i64 0}
!124 = !{!122, !25, i64 8}
!125 = !{!43, !43, i64 0}
!126 = !{!40, !40, i64 0}
!127 = !{!41, !41, i64 0}
!128 = !{!42, !42, i64 0}
!129 = !{!"p1 _ZTSN4llvm20WritableMemoryBufferE", !24, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!"_ZTSN4llvm12MemoryBufferE", !25, i64 8, !25, i64 16}
!132 = !{!131, !25, i64 8}
!133 = !{!"p1 _ZTSN4llvm12MemoryBufferE", !24, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MemoryBufferELb0EE", !133, i64 0}
!135 = !{!134, !133, i64 0}
!136 = !{!"_ZTSN4llvm6object14Arm64XRelocRefE", !43, i64 0, !21, i64 8}
!137 = !{!136, !43, i64 0}
!138 = !{!136, !21, i64 8}
!139 = !{!"_ZTSN4llvm6object23ImportDirectoryEntryRefE", !40, i64 0, !21, i64 8, !120, i64 16}
!140 = !{!139, !40, i64 0}
!141 = !{!139, !21, i64 8}
!142 = !{!139, !120, i64 16}
!143 = !{!"p1 _ZTSN4llvm6object25import_lookup_table_entryINS_7support6detail31packed_endian_specific_integralIiLNS_10endiannessE1ELm1ELm1EEEEE", !24, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"p1 _ZTSN4llvm6object25import_lookup_table_entryINS_7support6detail31packed_endian_specific_integralIlLNS_10endiannessE1ELm1ELm1EEEEE", !24, i64 0}
end_hunk_0
