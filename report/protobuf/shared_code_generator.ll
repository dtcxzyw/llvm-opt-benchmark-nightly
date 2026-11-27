Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/shared_code_generator?download=true
inline.NumInlined: 1463
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io7Printer5PrintIJA8_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  store i64 %i.f, ptr %i.c, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.h, align 16, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.11, ptr %i.i, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.115") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !152, !range !71, !alias.scope !241, !noundef !72
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !241 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !149
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !149
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %1, ptr %2)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.p = load i64, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !106
  %i.u = and i64 %i.t, 65536
  %i.v = icmp ne i64 %i.u, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.p, ptr noundef %i.r, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.v)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.j, %bb.b ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn
}

declare void @_ZN6google8protobuf8compiler4java24PrintGeneratedAnnotationEPNS0_2io7PrinterEcSt17basic_string_viewIcSt11char_traitsIcEENS2_7OptionsE(ptr noundef, i8 noundef signext, i64, ptr, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer5PrintIJA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !254 {
bb.a:
  %5 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 11 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 12 uses
  %7 = alloca %"struct.std::pair.115", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  store i64 %i.a, ptr %5, align 16, !tbaa !146
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !147
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !68
  store i64 %i.f, ptr %i.c, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.h, align 16, !tbaa !146
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.11, ptr %i.i, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.115") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !152, !range !71, !alias.scope !255, !noundef !72
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !255 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !149
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !149
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %1, ptr %2)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.p = load i64, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !106
  %i.u = and i64 %i.t, 65536
  %i.v = icmp ne i64 %i.u, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.p, ptr noundef %i.r, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.v)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #26
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.j, %bb.b ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler4java19SharedCodeGenerator19GenerateDescriptorsEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !263 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 10 uses
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 12 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.112", align 8 ; 10 uses
  %9 = alloca %"class.google::protobuf::FileDescriptorProto", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %13 = alloca %"class.std::vector.54", align 8   ; 15 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"struct.google::protobuf::compiler::java::Options", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %22 = alloca %"struct.std::pair", align 8       ; 16 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  call void @_ZN6google8protobuf8compiler27StripSourceRetentionOptionsERKNS0_14FileDescriptorEb(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::FileDescriptorProto") align 8 %9, ptr noundef nonnull align 8 dereferenceable(184) %i.e, i1 noundef zeroext false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !264, !range !71, !noundef !72
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6google8protobuf19FileDescriptorProto5ClearEv(ptr noundef nonnull align 8 dereferenceable(200) %9)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.k, ptr %10, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.l, align 8, !tbaa !68
  store i8 0, ptr %i.k, align 8, !tbaa !70
  %i.m = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %10)
          to label %bb.e unwind label %bb.u       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 38, ptr nonnull @.str.16)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.g:                                             ; preds = %bb.e
  %i.o = load i64, ptr %8, align 8, !tbaa !105    ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !106
  %i.t = and i64 %i.s, 65536
  %i.u = icmp ne i64 %i.t, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.o, ptr noundef %i.q, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.u)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.y = load i64, ptr %i.x, align 8, !tbaa !144
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !145
  %i.ab = add i64 %i.aa, %i.y
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !145
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !68  ; 4 uses
  %.not221 = icmp eq i64 %i.ac, 0
  br i1 %.not221, label %._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel: ; preds = %bb.j
  %.sroa.4.0..sroa_idx.i.i.i.i64 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i60.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  store ptr %i.af, ptr %12, align 8, !tbaa !66, !alias.scope !265
  %i.aj = load ptr, ptr %10, align 8, !tbaa !67, !noalias !265 ; 2 uses
  %spec.select.i.i.i.peel = call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 40) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !265
  store i64 %spec.select.i.i.i.peel, ptr %i.c, align 8, !tbaa !69, !noalias !265
  %i.ak = icmp ugt i64 %i.ac, 15
  br i1 %i.ak, label %.noexc10.i.i.peel, label %._crit_edge.i.i.i.peel

.noexc10.i.i.peel:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel
  %i.al = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc68.peel unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc68.peel:                                    ; preds = %.noexc10.i.i.peel
  store ptr %i.al, ptr %12, align 8, !tbaa !67, !alias.scope !265
  %i.am = load i64, ptr %i.c, align 8, !tbaa !69, !noalias !265
  store i64 %i.am, ptr %i.af, align 8, !tbaa !70, !alias.scope !265
  br label %._crit_edge.i.i.i.peel

._crit_edge.i.i.i.peel:                           ; preds = %.noexc68.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel
  %i.an = phi ptr [ %i.al, %.noexc68.peel ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.peel ] ; 2 uses
  %cond = icmp eq i64 %i.ac, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.peel
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !70
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !70
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aj, i64 %spec.select.i.i.i.peel, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !69, !noalias !265 ; 2 uses
  store i64 %i.ap, ptr %i.ag, align 8, !tbaa !68, !alias.scope !265
  %i.aq = load ptr, ptr %12, align 8, !tbaa !67, !alias.scope !265
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 0, ptr %i.ar, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !265
  %i.as = load ptr, ptr %12, align 8, !tbaa !67
  %i.at = load i64, ptr %i.ag, align 8, !tbaa !68
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.at, ptr %i.as)
          to label %bb.n unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 8, ptr nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(5) @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.o unwind label %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ah
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.o
  %i.aw = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %bb.o
  %24 = load i64, ptr %i.ai, align 8, !tbaa !68
  %25 = icmp ult i64 %24, 16
  call void @llvm.assume(i1 %25)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  %i.ay = load ptr, ptr %12, align 8, !tbaa !67   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.af
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %i.ba = load i64, ptr %i.af, align 8, !tbaa !70
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel
  %26 = load i64, ptr %i.ag, align 8, !tbaa !68
  %27 = icmp ult i64 %26, 16
  call void @llvm.assume(i1 %27)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i70.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.bc = load i64, ptr %i.l, align 8, !tbaa !68
  %i.bd = icmp ugt i64 %i.bc, 40
  br i1 %i.bd, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, %bb.j
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
          to label %bb.ag unwind label %bb.u

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ 40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71.peel ] ; 6 uses
  %i.be = trunc nuw nsw i64 %indvars.iv to i32
  %i.bf = urem i32 %i.be, 16000
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %bb.v

bb.p:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i60.a, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 2, ptr nonnull @.str.17)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %lpad.loopexit256 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

bb.r:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i60.a, align 8, !tbaa !70
  %i.bk = load i64, ptr %i.ae, align 8, !tbaa !106
  %i.bl = and i64 %i.bk, 65536
  %i.bm = icmp ne i64 %i.bl, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bh, ptr noundef %i.bj, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.bm)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %lpad.loopexit261 = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %lpad.loopexit261, 0
  call void @__clang_call_terminate(ptr %i.bn) #26
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.aa

bb.u:                                             ; preds = %bb.d, %._crit_edge
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i64, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 3, ptr nonnull @.str.18)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %lpad.loopexit246 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

bb.x:                                             ; preds = %bb.v
  %i.bp = load i64, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit67, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i64, align 8, !tbaa !70
  %i.bs = load i64, ptr %i.ad, align 8, !tbaa !106
  %i.bt = and i64 %i.bs, 65536
  %i.bu = icmp ne i64 %i.bt, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bp, ptr noundef %i.br, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.bu)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit67 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %lpad.loopexit251 = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %lpad.loopexit251, 0
  call void @__clang_call_terminate(ptr %i.bv) #26
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit67: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit67, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.bw = load i64, ptr %i.l, align 8, !tbaa !68, !noalias !266 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %indvars.iv
  br i1 %i.bx, label %.loopexit264, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

.loopexit264:                                     ; preds = %bb.aa
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i64 noundef %indvars.iv, i64 noundef %i.bw) #27
          to label %.noexc unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !266

.noexc:                                           ; preds = %.loopexit264
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.aa
  store ptr %i.af, ptr %12, align 8, !tbaa !66, !alias.scope !266
  %i.by = load ptr, ptr %10, align 8, !tbaa !67, !noalias !266
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv ; 2 uses
  %i.ca = sub nuw i64 %i.bw, %indvars.iv          ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ca, i64 40) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !266
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !69, !noalias !266
  %i.cb = icmp ugt i64 %i.ca, 15
  br i1 %i.cb, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc68 unwind label %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc68:                                         ; preds = %.noexc10.i.i
  store ptr %i.cc, ptr %12, align 8, !tbaa !67, !alias.scope !266
  %i.cd = load i64, ptr %i.c, align 8, !tbaa !69, !noalias !266
  store i64 %i.cd, ptr %i.af, align 8, !tbaa !70, !alias.scope !266
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc68, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ce = phi ptr [ %i.cc, %.noexc68 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %._crit_edge.i.i.i
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !70
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !70
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr nonnull align 1 %i.bz, i64 %spec.select.i.i.i, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %._crit_edge.i.i.i
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !69, !noalias !266 ; 2 uses
  store i64 %i.cg, ptr %i.ag, align 8, !tbaa !68, !alias.scope !266
  %i.ch = load ptr, ptr %12, align 8, !tbaa !67, !alias.scope !266
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i8 0, ptr %i.ci, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !266
  %i.cj = load ptr, ptr %12, align 8, !tbaa !67
  %i.ck = load i64, ptr %i.ag, align 8, !tbaa !68
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 %i.ck, ptr %i.cj)
          to label %bb.ae unwind label %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 8, ptr nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(5) @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.af unwind label %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  %i.cl = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ah
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.cn = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cp = load ptr, ptr %12, align 8, !tbaa !67   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.af
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load i64, ptr %i.af, align 8, !tbaa !70
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 40 ; 2 uses
  %i.ct = load i64, ptr %i.l, align 8, !tbaa !68
  %i.cu = icmp ugt i64 %i.ct, %indvars.iv.next
  br i1 %i.cu, label %.peel.next, label %._crit_edge, !llvm.loop !260

.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i, %.noexc10.i.i.peel, %.loopexit264
  %lpad.loopexit.split-lp417 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ae, %bb.n
  %lpad.loopexit.split-lp422 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %11, align 8, !tbaa !67   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ah
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp
  %i.cx = load i64, ptr %i.ah, align 8, !tbaa !70
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  %.pn54 = phi { ptr, i32 } [ %lpad.loopexit.split-lp422, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp269.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp422, %.loopexit.split-lp274.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cz = load ptr, ptr %12, align 8, !tbaa !67   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.af
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %i.db = load i64, ptr %i.af, align 8, !tbaa !70
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %lpad.loopexit.split-lp417, %.loopexit.split-lp171.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

bb.ag:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i78 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i78, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 4, ptr nonnull @.str.21)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.body

bb.ai:                                            ; preds = %bb.ag
  %i.de = load i64, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i78, align 8, !tbaa !70
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !106
  %i.dj = and i64 %i.di, 65536
  %i.dk = icmp ne i64 %i.dj, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.de, ptr noundef %i.dg, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.dk)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #26
  unreachable

bb.al:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !65  ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !268
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph217, label %._crit_edge218

.lr.ph217:                                        ; preds = %bb.al
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 12 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 12 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 7 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 10 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 40 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  br label %bb.aq

._crit_edge218:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i82 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i82, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 110, ptr nonnull @.str.23)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %._crit_edge218
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.body83

bb.an:                                            ; preds = %._crit_edge218
  %i.eq = load i64, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.ca, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.es = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i82, align 8, !tbaa !70
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !106
  %i.ev = and i64 %i.eu, 65536
  %i.ew = icmp ne i64 %i.ev, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.eq, ptr noundef %i.es, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ew)
          to label %bb.ca unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable

bb.aq:                                            ; preds = %.lr.ph217, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110
  %i.ez = phi ptr [ %i.dn, %.lr.ph217 ], [ %i.jv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ]
  %.027215 = phi i32 [ 0, %.lr.ph217 ], [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110 ] ; 4 uses
  %i.fa = invoke noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.ez, i32 noundef %.027215)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !102 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !67 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !68 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.fh = invoke noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.fg, i32 noundef %.027215)
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN6google8protobuf8compiler4java7OptionsC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(76) %15, ptr noundef nonnull align 8 dereferenceable(76) %i.f)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN6google8protobuf8compiler4java15FileJavaPackageB5cxx11EPKNS0_14FileDescriptorEbNS2_7OptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef %i.fh, i1 noundef zeroext true, ptr noundef nonnull %15)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.fi = load ptr, ptr %i.dr, align 8, !tbaa !67 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.ds
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  %i.fk = load i64, ptr %i.ds, align 8, !tbaa !70
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.fm = load ptr, ptr %i.dt, align 8, !tbaa !67 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.du
  br i1 %i.fn, label %_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fo = load i64, ptr %i.du, align 8, !tbaa !70
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #24
  br label %_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit

_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.fq = load ptr, ptr %0, align 8, !tbaa !50
  %i.fr = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.fs = invoke noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.fr, i32 noundef %.027215)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %_ZN6google8protobuf8compiler4java7OptionsD2Ev.exit
  invoke void @_ZN6google8protobuf8compiler4java17ClassNameResolver22GetDescriptorClassNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 1 dereferenceable(1) %i.fq, ptr noundef %i.fs)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store ptr %i.dv, ptr %17, align 8, !tbaa !66
  store i64 0, ptr %i.dw, align 8, !tbaa !68
  store i8 0, ptr %i.dv, align 8, !tbaa !70
  %i.ft = load i64, ptr %i.dx, align 8, !tbaa !68 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bb

bb.ay:                                            ; preds = %bb.as, %bb.ar
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122

bb.az:                                            ; preds = %bb.at
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8compiler4java7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %15) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
end_hunk_0
