inline.NumInlined: 5149
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf7Message11DebugStringB5cxx11Ev:bb.a

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf7Message16ShortDebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 13)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf7Message15Utf8DebugStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef 14)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf7Message16PrintDebugStringEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0, i32 noundef 12)
  %i.a = load ptr, ptr %1, align 8, !tbaa !49
  %i.b = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %i.a) ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !50
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf11ShortFormatB5cxx11ERKNS0_7MessageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 7)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10Utf8FormatB5cxx11ERKNS0_7MessageE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN6google8protobuf8internal16StringifyMessageB5cxx11ERKNS0_7MessageENS1_6OptionENS1_18FieldReporterLevelE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef 8)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10TextFormat13ParseInfoTree14RecordLocationEPKNS0_15FieldDescriptorENS1_18ParseLocationRangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i64 %2, i64 %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.313", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE30find_or_prepare_insert_non_sooIS8_EESJ_INSN_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.313") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = load i8, ptr %i.b, align 8, !tbaa !73, !range !76, !alias.scope !77, !noundef !78
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !77 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !77
  store ptr %i.e, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit: ; preds = %bb.a, %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit
  store i64 %2, ptr %i.i, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx, align 4
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.h, align 8, !tbaa !86
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEEixIS8_SE_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISL_EPT_RSR_EclL_ZSt7declvalIRSL_EDTcl9__declvalISR_ELi0EEEvEEEEERKSR_.exit
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !88   ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.e, label %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
  unreachable

_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.s = ashr exact i64 %i.q, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 2 uses
  store i64 %2, ptr %i.z, align 4
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %3, ptr %.sroa.3.0..sroa_idx2, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !89, !alias.scope !90
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !94

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #40
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.y, ptr %i.g, align 8, !tbaa !88
  store ptr %i.ac, ptr %i.h, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !87
  br label %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.c, %_ZNSt6vectorIN6google8protobuf10TextFormat18ParseLocationRangeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf10TextFormat13ParseInfoTree12CreateNestedEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.327", align 8    ; 6 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorISt10unique_ptrINS5_10TextFormat13ParseInfoTreeESt14default_deleteISC_EESaISF_EEEENS1_6HashEqIS8_vE4HashENSK_2EqESaISt4pairIKS8_SH_EEE30find_or_prepare_insert_non_sooIS8_EESN_INSR_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.327") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !102, !range !76, !alias.scope !105, !noundef !78
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !105 ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !65, !noalias !105
  store ptr %i.f, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !106
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.i = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i2.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i2.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !114
  %.not.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.l, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.o, ptr %i.k, align 8, !tbaa !113
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !117  ; 11 uses
  %i.q = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775800
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
  unreachable

_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.u = ashr exact i64 %i.s, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.u ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = call i64 @llvm.umin.i64(i64 %i.v, i64 1152921504606846975)
  %i.y = select i1 %i.w, i64 1152921504606846975, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #38 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  store ptr %i.i, ptr %i.ab, align 8, !tbaa !115
  %.not10.i.i.i.i.i = icmp eq ptr %i.p, %i.l
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %3 = ptrtoaddr ptr %i.l to i64
  %4 = ptrtoaddr ptr %i.p to i64
  %i.ac = sub i64 %3, %4
  %i.ad = add i64 %i.ac, -8                       ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ag = add i64 %i.q, -8
  %i.ah = sub i64 %i.ag, %i.r
  %i.ai = and i64 %i.ah, -8
  %i.aj = add i64 %i.ai, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.aj
  %scevgep7 = getelementptr i8, ptr %i.p, i64 %i.aj
  %bound0 = icmp ult ptr %i.aa, %scevgep7
  %bound1 = icmp ult ptr %i.p, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ak = shl i64 %n.vec, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.aa, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.p, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.an ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.p, i64 %i.an ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.ao = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %wide.load9 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !115, !alias.scope !126, !noalias !123
  store <2 x i64> %wide.load9, ptr %i.ap, align 8, !tbaa !115, !alias.scope !126, !noalias !123
  %i.aq = getelementptr i8, ptr %next.gep8, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep8, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  store <2 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !115, !alias.scope !123, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !128

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.preheader11:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader11 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.as = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !121, !noalias !118
  store i64 %i.as, ptr %.012.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !118, !noalias !121
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !115, !alias.scope !121, !noalias !118
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !131

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.al, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.s) #40
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !117
  store ptr %i.av, ptr %i.k, align 8, !tbaa !113
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.aw, ptr %i.m, align 8, !tbaa !114
  br label %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE12emplace_backIJPS4_EEERS7_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i
  %i.ax = phi ptr [ %i.l, %bb.d ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN6google8protobuf10TextFormat13ParseInfoTreeESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJPS4_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i ]
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !115
  ret ptr %i.ay
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf15CheckFieldIndexEPKNS0_15FieldDescriptorEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define { i64, i64 } @_ZNK6google8protobuf10TextFormat13ParseInfoTree16GetLocationRangeEPKNS0_15FieldDescriptorEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %.not.i.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %i.f = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, align 8, !tbaa !65
  %i.g = icmp eq ptr %i.f, %1
  br i1 %i.g, label %bb.d, label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50, !nonnull !78, !noundef !78
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, 1
  br label %_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE4findIS8_EENSN_14const_iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !53, !noalias !132
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %i.r, 7
  %i.w = xor i64 %i.u, %i.v
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !50 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i6.i.i = phi i64 [ %i.w, %bb.e ], [ %i.au, %bb.h ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.e ], [ %i.at, %bb.h ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i6.i.i, %i.a    ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.6.0.i.i.i
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !50 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.ab, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.i.i = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.017.046.i.i.i = phi i16 [ %i.aq, %bb.g ], [ %i.ag, %bb.f ] ; 3 uses
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = add i64 %.sroa.6.0.i.i.i, %i.ai
  %i.ak = and i64 %i.aj, %i.a                     ; 2 uses
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65
  %i.an = icmp eq ptr %i.am, %1
  br i1 %i.an, label %.thread32.i.i.i, label %bb.g, !prof !135

.thread32.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ak
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = add i16 %.sroa.017.046.i.i.i, -1
  %i.aq = and i16 %i.ap, %.sroa.017.046.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %.not43.i.i.i = icmp eq i16 %i.as, 0
  br i1 %.not43.i.i.i, label %bb.h, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt6vectorINS5_10TextFormat18ParseLocationRangeESaISB_EEEENS1_6HashEqIS8_vE4HashENSG_2EqESaISt4pairIKS8_SD_EEE10find_largeIS8_EENSN_8iteratorERKT_m.exit.i.i, !prof !136

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.at = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.au = add i64 %i.at, %.sroa.6.0.i.i.i
  br label %bb.f, !llvm.loop !137
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal21MapFieldPrinterHelper7SortMapERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE:bb.a
bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !526  ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #41
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not161 = icmp eq i32 %i.e, 0
  br i1 %.not161, label %.loopexit, label %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.h = shl nuw nsw i64 %i.f, 3
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #38
          to label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit unwind label %bb.h ; 5 uses

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.pre = load i32, ptr %i.d, align 8, !tbaa !526 ; 2 uses
  %i.k = icmp sgt i32 %.pre, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %bb.av, %.loopexit, %bb.a
  %.sroa.29.1 = phi ptr [ %.sroa.29.8, %bb.av ], [ %.sroa.29.8, %.loopexit ], [ null, %bb.a ]
  %.sroa.0114.1 = phi ptr [ %.sroa.0114.8, %bb.av ], [ %.sroa.0114.8, %.loopexit ], [ null, %bb.a ]
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.h:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i, %bb.e, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.thread147

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit
  %i.n = phi i32 [ %i.al, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %.pre, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ 0, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 2 uses
  %.sroa.0114.0229 = phi ptr [ %.sroa.0114.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 7 uses
  %.sroa.17.0228 = phi ptr [ %.sroa.17.4, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 6 uses
  %.sroa.29.0227 = phi ptr [ %.sroa.29.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ], [ %i.j, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !529
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  %i.s = add i64 %i.p, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  %.0.i.i.i = select i1 %i.r, ptr %i.c, ptr %i.v
  %i.w = load ptr, ptr %.0.i.i.i, align 8, !tbaa !185 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.17.0228, %.sroa.29.0227
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store ptr %i.w, ptr %.sroa.17.0228, align 8, !tbaa !506
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.x = ptrtoint ptr %.sroa.17.0228 to i64
  %i.y = ptrtoint ptr %.sroa.0114.0229 to i64
  %i.z = sub i64 %i.x, %i.y                       ; 6 uses
  %i.aa = icmp eq i64 %i.z, 9223372036854775800
  br i1 %i.aa, label %bb.k, label %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.ab = ashr exact i64 %i.z, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ac = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.ab
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 1152921504606846975)
  %i.af = select i1 %i.ad, i64 1152921504606846975, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #38
          to label %.noexc55 unwind label %.loopexit163 ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.z ; 2 uses
  store ptr %i.w, ptr %i.ai, align 8, !tbaa !506
  %i.aj = icmp sgt i64 %i.z, 0
  br i1 %i.aj, label %bb.l, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.0114.0229, i64 %i.z, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.l, %.noexc55
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0114.0229, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.0229, i64 noundef %i.z) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  %.pre276 = load i32, ptr %i.d, align 8, !tbaa !526
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.i
  %i.al = phi i32 [ %.pre276, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.n, %bb.i ] ; 2 uses
  %.sroa.29.11 = phi ptr [ %i.ak, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.29.0227, %bb.i ] ; 2 uses
  %.pn162 = phi ptr [ %i.ai, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.17.0228, %bb.i ]
  %.sroa.0114.11 = phi ptr [ %i.ah, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0114.0229, %bb.i ] ; 2 uses
  %.sroa.17.4 = getelementptr inbounds nuw i8, ptr %.pn162, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %.lr.ph, label %.loopexit, !llvm.loop !530

.loopexit163:                                     ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.n:                                             ; preds = %bb.b
  %i.ao = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.o unwind label %bb.ac      ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.ap = invoke noundef ptr @_ZNK6google8protobuf10Reflection17GetMessageFactoryEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.p unwind label %bb.ad      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, ptr noundef %i.ao)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.au = invoke noundef i32 @_ZNK6google8protobuf10Reflection7MapSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
          to label %bb.r unwind label %bb.ad      ; 3 uses

bb.r:                                             ; preds = %bb.q
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = icmp slt i32 %i.au, 0
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #41
          to label %.noexc60 unwind label %bb.ad

.noexc60:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.r
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62, label %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56

_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56: ; preds = %bb.t
  %i.ax = shl nuw nsw i64 %i.av, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #38
          to label %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59 unwind label %bb.ad ; 2 uses

_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59: ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.av
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62: ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59, %bb.t
  %.sroa.29.12 = phi ptr [ %i.az, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59 ], [ null, %bb.t ] ; 5 uses
  %.sroa.17.5 = phi ptr [ %i.ay, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE13_M_deallocateEPS4_m.exit.i59 ], [ null, %bb.t ] ; 6 uses
  %i.ba = invoke noundef i32 @_ZNK6google8protobuf10Reflection7MapSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
          to label %bb.u unwind label %bb.ad      ; 2 uses

bb.u:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = icmp slt i32 %i.ba, 0
  br i1 %i.bc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.131) #41
          to label %.noexc65 unwind label %bb.ad

.noexc65:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !516
  %i.bf = load ptr, ptr %4, align 16, !tbaa !510  ; 11 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 3
  %i.bk = icmp ult i64 %i.bj, %i.bb
  br i1 %i.bk, label %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i: ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !513 ; 4 uses
  %i.bn = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bh
  %i.bp = shl nuw nsw i64 %i.bb, 3
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #38
          to label %.noexc66 unwind label %bb.ad  ; 9 uses

.noexc66:                                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.bf, %i.bm
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc66
  %7 = ptrtoaddr ptr %i.bm to i64
  %8 = ptrtoaddr ptr %i.bf to i64
  %i.br = sub i64 %7, %8
  %i.bs = add i64 %i.br, -8                       ; 2 uses
  %i.bt = lshr i64 %i.bs, 3
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bs, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader445, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bv = add i64 %i.bn, -8
  %i.bw = sub i64 %i.bv, %i.bh
  %i.bx = and i64 %i.bw, -8
  %i.by = add i64 %i.bx, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.by
  %scevgep374 = getelementptr i8, ptr %i.bf, i64 %i.by
  %bound0 = icmp ult ptr %i.bq, %scevgep374
  %bound1 = icmp ult ptr %i.bf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader445, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bu, 4611686018427387900     ; 3 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bq, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bf, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bq, i64 %i.cc ; 2 uses
  %next.gep375 = getelementptr i8, ptr %i.bf, i64 %i.cc ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.cd = getelementptr i8, ptr %next.gep375, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep375, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  %wide.load376 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  %i.ce = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !506, !alias.scope !539, !noalias !536
  store <2 x i64> %wide.load376, ptr %i.ce, align 8, !tbaa !506, !alias.scope !539, !noalias !536
  %i.cf = getelementptr i8, ptr %next.gep375, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep375, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  store <2 x ptr> splat (ptr null), ptr %i.cf, align 8, !tbaa !506, !alias.scope !536, !noalias !531
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !541

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i.preheader445

.lr.ph.i.i.i.i.preheader445:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bq, %vector.memcheck ], [ %i.bq, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader445, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader445 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader445 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.ch = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !506, !alias.scope !534, !noalias !531
  store i64 %i.ch, ptr %.012.i.i.i.i, align 8, !tbaa !506, !alias.scope !531, !noalias !534
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !506, !alias.scope !534, !noalias !531
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i63 = icmp eq ptr %i.ci, %i.bm
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !542

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc66
  %.not.i8.i64 = icmp eq ptr %i.bf, null
  br i1 %.not.i8.i64, label %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bi) #40
  br label %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i: ; preds = %bb.x, %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit.i
  store ptr %i.bq, ptr %4, align 16, !tbaa !510
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store ptr %i.ck, ptr %i.bl, align 8, !tbaa !513
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bb
  store ptr %i.cl, ptr %i.bd, align 16, !tbaa !516
  br label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit.i, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke void @_ZNK6google8protobuf10Reflection13ConstMapBeginEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::ConstMapIterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %.preheader unwind label %.loopexit.split-lp175

.preheader:                                       ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.y

bb.y:                                             ; preds = %.preheader, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit
  %.sroa.29.2 = phi ptr [ %.sroa.29.13, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.29.12, %.preheader ] ; 7 uses
  %.sroa.17.1 = phi ptr [ %.sroa.17.6, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.17.5, %.preheader ] ; 4 uses
  %.sroa.0114.2 = phi ptr [ %.sroa.0114.13, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.17.5, %.preheader ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNK6google8protobuf10Reflection11ConstMapEndEPKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.google::protobuf::ConstMapIterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cq = invoke noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb0EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %i.cq, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %.loopexit

bb.ac:                                            ; preds = %bb.n
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread147

bb.ad:                                            ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i, %bb.v, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56, %bb.s, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62, %bb.q, %bb.p, %bb.o
  %.sroa.29.3 = phi ptr [ null, %bb.s ], [ %.sroa.29.12, %bb.v ], [ %.sroa.29.12, %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i ], [ %.sroa.29.12, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62 ], [ null, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56 ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ]
  %.sroa.0114.3 = phi ptr [ null, %bb.s ], [ %.sroa.17.5, %bb.v ], [ %.sroa.17.5, %_ZNSt12_Vector_baseISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_M_allocateEm.exit.i ], [ %.sroa.17.5, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit62 ], [ null, %_ZNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE11_M_allocateEm.exit.i56 ], [ null, %bb.q ], [ null, %bb.p ], [ null, %bb.o ]
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.loopexit174:                                     ; preds = %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

.loopexit.split-lp175:                            ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE7reserveEm.exit
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

bb.ae:                                            ; preds = %bb.z, %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

bb.af:                                            ; preds = %bb.aa
  %i.cu = invoke noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef null)
          to label %bb.ag unwind label %bb.as     ; 10 uses

bb.ag:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !486
  invoke void @_ZN6google8protobuf8internal21MapFieldPrinterHelper7CopyKeyERKNS0_6MapKeyEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(20) %i.cm, ptr noundef %i.cu, ptr noundef %i.cv)
          to label %bb.ah unwind label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !486
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  invoke void @_ZN6google8protobuf8internal21MapFieldPrinterHelper9CopyValueERKNS0_16MapValueConstRefEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(12) %i.co, ptr noundef %i.cu, ptr noundef nonnull %i.cx)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i69 = icmp eq ptr %.sroa.17.1, %.sroa.29.2
  br i1 %.not.i.i69, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.cu, ptr %.sroa.17.1, align 8, !tbaa !506
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78

bb.ak:                                            ; preds = %bb.ai
  %i.cy = ptrtoint ptr %.sroa.29.2 to i64
  %i.cz = ptrtoint ptr %.sroa.0114.2 to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 6 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775800
  br i1 %i.db, label %bb.al, label %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
          to label %.noexc76 unwind label %.loopexit.split-lp165

.noexc76:                                         ; preds = %bb.al
  unreachable

_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70: ; preds = %bb.ak
  %i.dc = ashr exact i64 %i.da, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i71 = call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i71, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i.i72 = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i72)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #38
          to label %.noexc77 unwind label %.loopexit164 ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.da ; 2 uses
  store ptr %i.cu, ptr %i.dj, align 8, !tbaa !506
  %i.dk = icmp sgt i64 %i.da, 0
  br i1 %i.dk, label %bb.am, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73

bb.am:                                            ; preds = %.noexc77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %.sroa.0114.2, i64 %i.da, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73: ; preds = %bb.am, %.noexc77
  %.not.i17.i.i.i74 = icmp eq ptr %.sroa.0114.2, null
  br i1 %.not.i17.i.i.i74, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.2, i64 noundef %i.da) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75: ; preds = %bb.an, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i73
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78: ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75, %bb.aj
  %.sroa.29.13 = phi ptr [ %i.dl, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75 ], [ %.sroa.29.2, %bb.aj ] ; 3 uses
  %.pn = phi ptr [ %i.dj, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75 ], [ %.sroa.17.1, %bb.aj ]
  %.sroa.0114.13 = phi ptr [ %i.di, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i75 ], [ %.sroa.0114.2, %bb.aj ] ; 3 uses
  %.sroa.17.6 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.dm = load ptr, ptr %i.cp, align 8, !tbaa !513 ; 7 uses
  %i.dn = load ptr, ptr %i.bd, align 16, !tbaa !516
  %.not.i.i79 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i79, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78
  %i.do = ptrtoint ptr %i.cu to i64
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !506
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dp, ptr %i.cp, align 8, !tbaa !513
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit

bb.ap:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit78
  %i.dq = load ptr, ptr %4, align 16, !tbaa !510  ; 11 uses
  %i.dr = ptrtoint ptr %i.dm to i64               ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dt = sub i64 %i.dr, %i.ds                    ; 4 uses
  %i.du = icmp eq i64 %i.dt, 9223372036854775800
  br i1 %i.du, label %bb.aq, label %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #41
          to label %.noexc100 unwind label %.loopexit.split-lp170

.noexc100:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ap
  %i.dv = ashr exact i64 %i.dt, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dv, i64 1)
  %i.dw = add nsw i64 %.sroa.speculated.i.i, %i.dv ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %i.dy = call i64 @llvm.umin.i64(i64 %i.dw, i64 1152921504606846975)
  %i.dz = select i1 %i.dx, i64 1152921504606846975, i64 %i.dy ; 3 uses
  %.not.i.i92 = icmp ne i64 %i.dz, 0
  call void @llvm.assume(i1 %.not.i.i92)
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ea) #38
          to label %.noexc101 unwind label %.loopexit169 ; 10 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  %i.ed = ptrtoint ptr %i.cu to i64
  store i64 %i.ed, ptr %i.ec, align 8, !tbaa !506
  %.not10.i.i.i.i93 = icmp eq ptr %i.dq, %i.dm
  br i1 %.not10.i.i.i.i93, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i94.preheader

.lr.ph.i.i.i.i94.preheader:                       ; preds = %.noexc101
  %9 = ptrtoaddr ptr %i.dm to i64
  %10 = ptrtoaddr ptr %i.dq to i64
  %i.ee = sub i64 %9, %10
  %i.ef = add i64 %i.ee, -8                       ; 2 uses
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = add nuw nsw i64 %i.eg, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.ef, 56
  br i1 %min.iters.check387, label %.lr.ph.i.i.i.i94.preheader406, label %vector.memcheck378

vector.memcheck378:                               ; preds = %.lr.ph.i.i.i.i94.preheader
  %scevgep379 = getelementptr i8, ptr %i.eb, i64 8
  %i.ei = add i64 %i.dr, -8
  %i.ej = sub i64 %i.ei, %i.ds
  %i.ek = and i64 %i.ej, -8                       ; 2 uses
  %scevgep380 = getelementptr i8, ptr %scevgep379, i64 %i.ek
  %scevgep381 = getelementptr i8, ptr %i.dq, i64 8
  %scevgep382 = getelementptr i8, ptr %scevgep381, i64 %i.ek
  %bound0383 = icmp ult ptr %i.eb, %scevgep382
  %bound1384 = icmp ult ptr %i.dq, %scevgep380
  %found.conflict385 = and i1 %bound0383, %bound1384
  br i1 %found.conflict385, label %.lr.ph.i.i.i.i94.preheader406, label %vector.ph388

vector.ph388:                                     ; preds = %vector.memcheck378
  %n.vec390 = and i64 %i.eh, 4611686018427387900  ; 3 uses
  %i.el = shl i64 %n.vec390, 3                    ; 2 uses
  %i.em = getelementptr i8, ptr %i.eb, i64 %i.el  ; 2 uses
  %i.en = getelementptr i8, ptr %i.dq, i64 %i.el
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph388
  %index392 = phi i64 [ 0, %vector.ph388 ], [ %index.next397, %vector.body391 ] ; 2 uses
  %i.eo = shl i64 %index392, 3                    ; 2 uses
  %next.gep393 = getelementptr i8, ptr %i.eb, i64 %i.eo ; 2 uses
  %next.gep394 = getelementptr i8, ptr %i.dq, i64 %i.eo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.ep = getelementptr i8, ptr %next.gep394, i64 16
  %wide.load395 = load <2 x i64>, ptr %next.gep394, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  %wide.load396 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  %i.eq = getelementptr i8, ptr %next.gep393, i64 16
  store <2 x i64> %wide.load395, ptr %next.gep393, align 8, !tbaa !506, !alias.scope !551, !noalias !548
  store <2 x i64> %wide.load396, ptr %i.eq, align 8, !tbaa !506, !alias.scope !551, !noalias !548
  %i.er = getelementptr i8, ptr %next.gep394, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep394, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  store <2 x ptr> splat (ptr null), ptr %i.er, align 8, !tbaa !506, !alias.scope !548, !noalias !543
  %index.next397 = add nuw i64 %index392, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.es, label %middle.block398, label %vector.body391, !llvm.loop !553

middle.block398:                                  ; preds = %vector.body391
  %cmp.n399 = icmp eq i64 %i.eh, %n.vec390
  br i1 %cmp.n399, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i94.preheader406

.lr.ph.i.i.i.i94.preheader406:                    ; preds = %vector.memcheck378, %.lr.ph.i.i.i.i94.preheader, %middle.block398
  %.012.i.i.i.i95.ph = phi ptr [ %i.eb, %vector.memcheck378 ], [ %i.eb, %.lr.ph.i.i.i.i94.preheader ], [ %i.em, %middle.block398 ]
  %.0911.i.i.i.i96.ph = phi ptr [ %i.dq, %vector.memcheck378 ], [ %i.dq, %.lr.ph.i.i.i.i94.preheader ], [ %i.en, %middle.block398 ]
  br label %.lr.ph.i.i.i.i94

.lr.ph.i.i.i.i94:                                 ; preds = %.lr.ph.i.i.i.i94.preheader406, %.lr.ph.i.i.i.i94
  %.012.i.i.i.i95 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i94 ], [ %.012.i.i.i.i95.ph, %.lr.ph.i.i.i.i94.preheader406 ] ; 2 uses
  %.0911.i.i.i.i96 = phi ptr [ %i.eu, %.lr.ph.i.i.i.i94 ], [ %.0911.i.i.i.i96.ph, %.lr.ph.i.i.i.i94.preheader406 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %i.et = load i64, ptr %.0911.i.i.i.i96, align 8, !tbaa !506, !alias.scope !546, !noalias !543
  store i64 %i.et, ptr %.012.i.i.i.i95, align 8, !tbaa !506, !alias.scope !543, !noalias !546
  store ptr null, ptr %.0911.i.i.i.i96, align 8, !tbaa !506, !alias.scope !546, !noalias !543
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i96, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i95, i64 8 ; 2 uses
  %.not.i.i.i.i97 = icmp eq ptr %i.eu, %i.dm
  br i1 %.not.i.i.i.i97, label %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i94, !llvm.loop !554

_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i94, %middle.block398, %.noexc101
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eb, %.noexc101 ], [ %i.em, %middle.block398 ], [ %i.ev, %.lr.ph.i.i.i.i94 ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.dq, null
  br i1 %.not.i23.i, label %.noexc80, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dt) #40
  br label %.noexc80

.noexc80:                                         ; preds = %bb.ar, %_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.eb, ptr %4, align 16, !tbaa !510
  store ptr %i.ew, ptr %i.cp, align 8, !tbaa !513
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  store ptr %i.ex, ptr %i.bd, align 16, !tbaa !516
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %.noexc80, %bb.ao
  %i.ey = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN6google8protobuf15MapIteratorBaseILb0EEppEv(ptr noundef nonnull align 8 dereferenceable(72) %5)
          to label %bb.y unwind label %.loopexit174, !llvm.loop !555 ; 0 uses

bb.as:                                            ; preds = %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

bb.at:                                            ; preds = %bb.ah, %bb.ag
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86

.loopexit164:                                     ; preds = %_ZNKSt6vectorIPKN6google8protobuf7MessageESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i70
  %lpad.loopexit166 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86

.loopexit.split-lp165:                            ; preds = %bb.al
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86

.loopexit169:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp170:                            ; preds = %bb.aq
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.au:                                            ; preds = %.loopexit.split-lp170, %.loopexit169
  %lpad.phi173 = phi { ptr, i32 } [ %lpad.loopexit171, %.loopexit169 ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp170 ]
  %i.fb = load ptr, ptr %i.cu, align 8, !tbaa !36
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #37, !inline_history !556
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86: ; preds = %.loopexit164, %.loopexit.split-lp165, %bb.at
  %.pn.ph = phi { ptr, i32 } [ %i.fa, %bb.at ], [ %lpad.loopexit166, %.loopexit164 ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp165 ]
  %i.fe = load ptr, ptr %i.cu, align 8, !tbaa !36
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #37, !inline_history !484
  br label %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87

_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87: ; preds = %.loopexit174, %.loopexit.split-lp175, %bb.as, %bb.au, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86, %bb.ae
  %.sroa.29.7 = phi ptr [ %.sroa.29.2, %bb.ae ], [ %.sroa.29.2, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86 ], [ %.sroa.29.2, %bb.as ], [ %.sroa.29.13, %bb.au ], [ %.sroa.29.13, %.loopexit174 ], [ %.sroa.29.12, %.loopexit.split-lp175 ]
  %.sroa.0114.7 = phi ptr [ %.sroa.0114.2, %bb.ae ], [ %.sroa.0114.2, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86 ], [ %.sroa.0114.2, %bb.as ], [ %.sroa.0114.13, %bb.au ], [ %.sroa.0114.13, %.loopexit174 ], [ %.sroa.17.5, %.loopexit.split-lp175 ]
  %.pn45 = phi { ptr, i32 } [ %i.ct, %bb.ae ], [ %.pn.ph, %_ZNKSt14default_deleteIN6google8protobuf7MessageEEclEPS2_.exit.i86 ], [ %i.ez, %bb.as ], [ %lpad.phi173, %bb.au ], [ %lpad.loopexit176, %.loopexit174 ], [ %lpad.loopexit.split-lp177, %.loopexit.split-lp175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.aw

.loopexit:                                        ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit, %bb.f, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit, %bb.ab
  %.sroa.29.8 = phi ptr [ %.sroa.29.2, %bb.ab ], [ %i.j, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ], [ null, %bb.f ], [ %.sroa.29.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.1, %bb.ab ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ], [ null, %bb.f ], [ %.sroa.17.4, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.0114.8 = phi ptr [ %.sroa.0114.2, %bb.ab ], [ %i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE7reserveEm.exit ], [ null, %bb.f ], [ %.sroa.0114.11, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EE9push_backEOS4_.exit ] ; 4 uses
  %i.fh = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
          to label %bb.av unwind label %bb.g

bb.av:                                            ; preds = %.loopexit
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !486
  invoke void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_T0_(ptr %.sroa.0114.8, ptr %.sroa.17.2, ptr %i.fj)
          to label %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS3_25MapEntryMessageComparatorEEvT_SD_T0_.exit unwind label %bb.g

_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEENS3_25MapEntryMessageComparatorEEvT_SD_T0_.exit: ; preds = %bb.av
  %i.fk = load <2 x ptr>, ptr %4, align 16, !tbaa !557
  store <2 x ptr> %i.fk, ptr %0, align 8, !tbaa !557
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fn = load ptr, ptr %i.fm, align 16, !tbaa !516
  store ptr %i.fn, ptr %i.fl, align 8, !tbaa !516
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0114.8, ptr %i.fo, align 8, !tbaa !503
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.17.2, ptr %i.fp, align 8, !tbaa !558
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.29.8, ptr %i.fq, align 8, !tbaa !509
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret void

.thread147:                                       ; preds = %bb.h, %bb.ac
  %.pn49.pn.pn.ph = phi { ptr, i32 } [ %i.cr, %bb.ac ], [ %i.m, %bb.h ]
  call void @_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91

bb.aw:                                            ; preds = %.loopexit163, %.loopexit.split-lp, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87, %bb.ad, %bb.g
  %.sroa.29.9 = phi ptr [ %.sroa.29.7, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87 ], [ %.sroa.29.3, %bb.ad ], [ %.sroa.29.1, %bb.g ], [ %.sroa.17.0228, %.loopexit163 ], [ %.sroa.17.0228, %.loopexit.split-lp ]
  %.sroa.0114.9 = phi ptr [ %.sroa.0114.7, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87 ], [ %.sroa.0114.3, %bb.ad ], [ %.sroa.0114.1, %bb.g ], [ %.sroa.0114.0229, %.loopexit163 ], [ %.sroa.0114.0229, %.loopexit.split-lp ] ; 3 uses
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn45, %_ZNSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EED2Ev.exit87 ], [ %i.cs, %bb.ad ], [ %i.l, %bb.g ], [ %lpad.loopexit, %.loopexit163 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZNSt6vectorISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.not.i.i.i90 = icmp eq ptr %.sroa.0114.9, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fr = ptrtoint ptr %.sroa.29.9 to i64
  %i.fs = ptrtoint ptr %.sroa.0114.9 to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0114.9, i64 noundef %i.ft) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit91: ; preds = %.thread147, %bb.aw, %bb.ax
  %.pn49.pn.pn152 = phi { ptr, i32 } [ %.pn49.pn.pn.ph, %.thread147 ], [ %.pn49.pn.pn, %bb.aw ], [ %.pn49.pn.pn, %bb.ax ]
  resume { ptr, i32 } %.pn49.pn.pn152
}

declare noundef ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %.pre.pre, %i.an
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ap = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ap)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.aq = load i64, ptr %i.an, align 8, !tbaa !50
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.ar) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.as = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !50
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %i.ay = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.i
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !50
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %i.ax

bb.j:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.m, %bb.b ], [ %i.q, %bb.c ], [ %i.u, %bb.d ], [ %i.y, %bb.e ], [ %i.ac, %bb.f ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #1 comdat {
bb.a:
  %6 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.393", align 8 ; 4 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.394", align 8 ; 4 uses
  %8 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.390", align 8 ; 4 uses
  store ptr %5, ptr %8, align 8
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %4, %3
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !506
  %i.f = load ptr, ptr %0, align 8, !tbaa !506
  %i.g = call noundef zeroext i1 @_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.e, ptr noundef %i.f)
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !506
  %i.i = load ptr, ptr %1, align 8, !tbaa !506
  store ptr %i.i, ptr %0, align 8, !tbaa !506
  store ptr %i.h, ptr %1, align 8, !tbaa !506
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.j = icmp sgt i64 %3, %4
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.k = sdiv i64 %3, 2                           ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %0, i64 %i.k ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %5, ptr %7, align 8
  %i.m = ptrtoint ptr %2 to i64
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.r = lshr i64 %.016.i, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !506
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !506
  %i.v = call noundef zeroext i1 @_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.t, ptr noundef %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.016.i, %i.x
  %.sroa.011.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !945

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aa = sub i64 %.pre-phi, %i.n
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.f

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.ac = sdiv i64 %4, 2                          ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %5, ptr %6, align 8
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %0 to i64                  ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 3                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.016.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ah, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.011.015.i59 = phi ptr [ %.sroa.011.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.aj = lshr i64 %.016.i58, 1                   ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i59, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !506
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !506
  %i.an = call noundef zeroext i1 @_ZN6google8protobuf25MapEntryMessageComparatorclEPKNS0_7MessageES4_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %i.al, ptr noundef %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = xor i64 %i.aj, -1
  %i.aq = add nsw i64 %.016.i58, %i.ap
  %.sroa.011.1.i62 = select i1 %i.an, ptr %.sroa.011.015.i59, ptr %i.ao ; 3 uses
  %.1.i63 = select i1 %i.an, i64 %i.aj, i64 %i.aq ; 2 uses
  %i.ar = icmp sgt i64 %.1.i63, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !946

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre77 = ptrtoint ptr %.sroa.011.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi78 = phi i64 [ %.pre77, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.011.0.lcssa.i56 = phi ptr [ %.sroa.011.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.as = sub i64 %.pre-phi78, %i.af
  %i.at = ashr exact i64 %i.as, 3
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ], [ %i.at, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterINS3_25MapEntryMessageComparatorEEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %i.au = call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %1, ptr %.sroa.0.0) ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %8, align 8, !tbaa !65
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %.sroa.066.0, ptr %i.au, i64 noundef %.0, i64 noundef %.049, ptr %.sroa.05.0.copyload)
  %i.av = sub nsw i64 %3, %.0
  %i.aw = sub nsw i64 %4, %.049
  %.sroa.0.0.copyload = load ptr, ptr %8, align 8, !tbaa !65
  call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_25MapEntryMessageComparatorEEEEvT_SG_SG_T0_SH_T1_(ptr %i.au, ptr %.sroa.0.0, ptr %2, i64 noundef %i.av, i64 noundef %i.aw, ptr %.sroa.0.0.copyload)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = ptrtoaddr ptr %1 to i64
  %4 = ptrtoaddr ptr %0 to i64
  %i.l = sub i64 %3, %4
  %i.m = add i64 %i.l, -8                         ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.m, 120
  br i1 %min.iters.check165, label %.lr.ph.i.preheader182, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.s
  %bound0161 = icmp ult ptr %0, %scevgep160
  %bound1162 = icmp ult ptr %1, %scevgep159
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.preheader182, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck158
  %n.vec168 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec168, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next177, %vector.body169 ] ; 2 uses
  %i.w = shl i64 %index170, 3                     ; 2 uses
  %next.gep171 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep172 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep172, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep172, align 8, !tbaa !506, !alias.scope !947, !noalias !950
  %wide.load174 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !506, !alias.scope !947, !noalias !950
  %i.y = getelementptr i8, ptr %next.gep171, i64 16 ; 2 uses
  %wide.load175 = load <2 x ptr>, ptr %next.gep171, align 8, !tbaa !506, !alias.scope !950
  %wide.load176 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !506, !alias.scope !950
  store <2 x ptr> %wide.load175, ptr %next.gep172, align 8, !tbaa !506, !alias.scope !947, !noalias !950
  store <2 x ptr> %wide.load176, ptr %i.x, align 8, !tbaa !506, !alias.scope !947, !noalias !950
  store <2 x ptr> %wide.load173, ptr %next.gep171, align 8, !tbaa !506, !alias.scope !950
  store <2 x ptr> %wide.load174, ptr %i.y, align 8, !tbaa !506, !alias.scope !950
  %index.next177 = add nuw i64 %index170, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next177, %n.vec168
  br i1 %i.z, label %middle.block178, label %vector.body169, !llvm.loop !952

middle.block178:                                  ; preds = %vector.body169
  %cmp.n179 = icmp eq i64 %i.o, %n.vec168
  br i1 %cmp.n179, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.preheader182

.lr.ph.i.preheader182:                            ; preds = %vector.memcheck158, %.lr.ph.i.preheader, %middle.block178
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck158 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block178 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck158 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block178 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader182, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader182 ] ; 3 uses
  %.sroa.04.07.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader182 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.07.i, align 8, !tbaa !506
  %i.ab = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !506
  store ptr %i.ab, ptr %.sroa.04.07.i, align 8, !tbaa !506
  store ptr %i.aa, ptr %.sroa.0.08.i, align 8, !tbaa !506
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !953

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ag = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ah = icmp slt i64 %.084, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.084, 1
  br i1 %i.ai, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.041.0, align 8, !tbaa !506
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !506
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader183, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.ap = shl i64 %.0, 3
  %i.aq = sub i64 %.0, %.084
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.ar
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader183, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %.sroa.041.0, i64 %i.as ; 2 uses
  %i.au = getelementptr i8, ptr %i.ao, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.041.0, i64 %i.av ; 3 uses
  %next.gep128 = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !506, !alias.scope !954, !noalias !957
  %wide.load129 = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !506, !alias.scope !954, !noalias !957
  %i.ax = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !506, !alias.scope !957
  %wide.load131 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !506, !alias.scope !957
  store <2 x ptr> %wide.load130, ptr %next.gep, align 8, !tbaa !506, !alias.scope !954, !noalias !957
  store <2 x ptr> %wide.load131, ptr %i.aw, align 8, !tbaa !506, !alias.scope !954, !noalias !957
  store <2 x ptr> %wide.load, ptr %next.gep128, align 8, !tbaa !506, !alias.scope !957
  store <2 x ptr> %wide.load129, ptr %i.ax, align 8, !tbaa !506, !alias.scope !957
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !959

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader183

.lr.ph99.preheader183:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.041.196.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.sroa.038.095.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.0, %.084
  %xtraiter191 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader183, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.be, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader183 ]
  %.sroa.041.196.prol = phi ptr [ %i.bc, %.lr.ph99.prol ], [ %.sroa.041.196.ph, %.lr.ph99.preheader183 ] ; 3 uses
  %.sroa.038.095.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.038.095.ph, %.lr.ph99.preheader183 ] ; 3 uses
  %prol.iter193 = phi i64 [ %prol.iter193.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader183 ]
  %i.ba = load ptr, ptr %.sroa.041.196.prol, align 8, !tbaa !506
  %i.bb = load ptr, ptr %.sroa.038.095.prol, align 8, !tbaa !506
  store ptr %i.bb, ptr %.sroa.041.196.prol, align 8, !tbaa !506
  store ptr %i.ba, ptr %.sroa.038.095.prol, align 8, !tbaa !506
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.041.196.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.038.095.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter193.next = add i64 %prol.iter193, 1   ; 2 uses
  %prol.iter193.cmp.not = icmp eq i64 %prol.iter193.next, %xtraiter191
  br i1 %prol.iter193.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !960

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader183
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader183 ], [ %i.bc, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader183 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.041.196.unr = phi ptr [ %.sroa.041.196.ph, %.lr.ph99.preheader183 ], [ %i.bc, %.lr.ph99.prol ]
  %.sroa.038.095.unr = phi ptr [ %.sroa.038.095.ph, %.lr.ph99.preheader183 ], [ %i.bd, %.lr.ph99.prol ]
  %i.bf = sub i64 %.02897.ph, %.0
  %i.bg = add i64 %i.bf, %.084
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.bx, %.lr.ph99 ]
  %i.bi = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bi, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.bz, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.041.196 = phi ptr [ %i.bx, %.lr.ph99 ], [ %.sroa.041.196.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.038.095 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.038.095.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.sroa.041.196, align 8, !tbaa !506
  %i.bk = load ptr, ptr %.sroa.038.095, align 8, !tbaa !506
  store ptr %i.bk, ptr %.sroa.041.196, align 8, !tbaa !506
  store ptr %i.bj, ptr %.sroa.038.095, align 8, !tbaa !506
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !506
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !506
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !506
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !506
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.041.196, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.038.095, i64 16 ; 2 uses
end_hunk_2
