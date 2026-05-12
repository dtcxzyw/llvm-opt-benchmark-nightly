inline.NumInlined: 642
inline.NumDeleted: 435
begin_hunk_0_@_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.56, align 8             ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::Cleanup", align 8 ; 7 uses
  %6 = alloca %"struct.google::protobuf::io::Printer::PrintOptions", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !58
  store ptr %1, ptr %4, align 8, !tbaa !61, !noalias !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !64, !noalias !58 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !58
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_:bb.a

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !58
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %0, ptr %i.l, align 8, !tbaa !73, !alias.scope !74
  store i8 1, ptr %5, align 8, !tbaa !77, !alias.scope !74
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_:bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 5
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %2, ptr %3, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %6)
          to label %7 unwind label %bb.g

7:                                                ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit
  %8 = load i8, ptr %5, align 8, !tbaa !77, !range !80, !noundef !81
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %bb.d, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev.exit

bb.d:                                             ; preds = %7
  %10 = load ptr, ptr %i.l, align 8, !tbaa !82
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 2 uses
  %i.m = load ptr, ptr %11, align 8, !tbaa !64    ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -32 ; 3 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_:bb.a
  call void @__clang_call_terminate(ptr %i.s) #23
  unreachable

_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev.exit: ; preds = %7, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void

end_hunk_3
