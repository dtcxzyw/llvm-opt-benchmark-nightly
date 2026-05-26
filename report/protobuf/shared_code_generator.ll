inline.NumInlined: 1463
inline.NumDeleted: 830
begin_hunk_0_@_ZN6google8protobuf2io7Printer5PrintIJA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.11, ptr %i.i, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader unwind label %bb.b

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader: ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.115") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.d

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !120, !range !31, !alias.scope !206, !noundef !32
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !206 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !118
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !118
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %1, ptr %2)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.p = load i64, ptr %6, align 8, !tbaa !67     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !70
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !29
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i, align 8, !tbaa !26 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !29
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #24
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !192

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.p = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !188
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_EvT_S9_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @_ZN6google8protobuf17GeneratedCodeInfoC2EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare void @_ZN6google8protobuf2io7Printer8AnnotateESt17basic_string_viewIcSt11char_traitsIcEES6_S6_RKSt6vectorIiSaIiEESt8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, i64, ptr, ptr noundef byval(%"class.std::basic_string_view") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !219    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %3 = icmp ult i64 %i.j, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.k ; 4 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %4, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.u, ptr %i.a, align 8, !tbaa !28
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !26
  %i.x = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.x, ptr %i.r, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !29
  store i8 %i.z, ptr %i.y, align 1, !tbaa !29
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !27
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !220, !noalias !223
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !223, !noalias !220 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27, !alias.scope !223, !noalias !220 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !225
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !26, !alias.scope !220, !noalias !223
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !29, !alias.scope !223, !noalias !220
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !29, !alias.scope !220, !noalias !223
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !223, !noalias !220
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.an = phi i64 [ %i.aj, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !27, !alias.scope !220, !noalias !223
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !223, !noalias !220
  store i64 0, ptr %i.ao, align 8, !tbaa !27, !alias.scope !223, !noalias !220
  store i8 0, ptr %i.ag, align 8, !tbaa !29, !alias.scope !223, !noalias !220
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !226

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !25, !alias.scope !227, !noalias !230
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !230, !noalias !227 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !27, !alias.scope !230, !noalias !227 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !232
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !26, !alias.scope !227, !noalias !230
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !29, !alias.scope !230, !noalias !227
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !29, !alias.scope !227, !noalias !230
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !27, !alias.scope !230, !noalias !227
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.bc = phi i64 [ %i.ay, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !27, !alias.scope !227, !noalias !230
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !230, !noalias !227
  store i64 0, ptr %i.bd, align 8, !tbaa !27, !alias.scope !230, !noalias !227
  store i8 0, ptr %i.av, align 8, !tbaa !29, !alias.scope !230, !noalias !227
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !226

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !36
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.p, ptr %0, align 8, !tbaa !219
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !33
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %4
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !36
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #25 ; 0 uses
  %i.bq = shl nuw nsw i64 %4, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bq) #24
  invoke void @__cxa_rethrow() #27
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bm

bb.m:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #26
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io24AnnotationProtoCollectorINS0_17GeneratedCodeInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io24AnnotationProtoCollectorINS0_17GeneratedCodeInfoEE13AddAnnotationEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io24AnnotationProtoCollectorINS0_17GeneratedCodeInfoEE13AddAnnotationEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIiSaIiEESt8optionalINS1_19AnnotationCollector8SemanticEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.016.0.extract.trunc = trunc i64 %5 to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !233  ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c, !prof !235

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !236
  br label %_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  br label %_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit

_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.l = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase3AddINS1_18GenericTypeHandlerINS0_28GeneratedCodeInfo_AnnotationEEEEEPNT_4TypeEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef %.0.i.i.i) ; 12 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !3
  %i.n = or i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 8, !tbaa !3
  %i.o = load ptr, ptr %4, align 8, !tbaa !239    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !239  ; 2 uses
  %.not18 = icmp eq ptr %i.o, %i.q
  br i1 %.not18, label %_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit.._crit_edge_crit_edge, label %.lr.ph

_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit.._crit_edge_crit_edge: ; preds = %_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN6google8protobuf28GeneratedCodeInfo_Annotation8add_pathEi.exit, %_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit.._crit_edge_crit_edge
  %i.w = phi i32 [ %.pre, %_ZN6google8protobuf17GeneratedCodeInfo14add_annotationEv.exit.._crit_edge_crit_edge ], [ %i.bn, %_ZN6google8protobuf28GeneratedCodeInfo_Annotation8add_pathEi.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.y = or i32 %i.w, 2
  store i32 %i.y, ptr %i.x, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !233 ; 3 uses
  %i.ac = trunc i64 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %bb.e, !prof !235

bb.d:                                             ; preds = %._crit_edge
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !236
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ag = inttoptr i64 %i.ab to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ag, %bb.e ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %.0.i.i)
  %i.ah = trunc i64 %1 to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !29
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !3   ; 2 uses
  %i.ak = trunc i64 %2 to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !29
  %i.am = or i32 %i.aj, 12
  store i32 %i.am, ptr %i.x, align 8, !tbaa !3
  %i.an = and i64 %5, 4294967296
  %.not17 = icmp eq i64 %i.an, 0
  br i1 %.not17, label %bb.m, label %bb.l

bb.f:                                             ; preds = %.lr.ph, %_ZN6google8protobuf28GeneratedCodeInfo_Annotation8add_pathEi.exit
  %.sroa.013.019 = phi ptr [ %i.o, %.lr.ph ], [ %i.bo, %_ZN6google8protobuf28GeneratedCodeInfo_Annotation8add_pathEi.exit ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.013.019, align 4, !tbaa !3
  %i.ap = load i64, ptr %i.s, align 8, !tbaa !233 ; 3 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.h, !prof !235

bb.g:                                             ; preds = %bb.f
  %i.ar = add nsw i64 %i.ap, -1
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !236
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.au = inttoptr i64 %i.ap to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i12 = phi ptr [ %i.at, %bb.g ], [ %i.au, %bb.h ]
  %i.av = load i32, ptr %i.r, align 8, !tbaa !240
  %i.aw = and i32 %i.av, 1
  %i.ax = icmp eq i32 %i.aw, 0                    ; 3 uses
  %i.ay = load i32, ptr %i.t, align 4, !tbaa !242 ; 4 uses
  br i1 %i.ax, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !29  ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.i, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i
  %.0.v.i.i.i.i.i = phi ptr [ %i.az, %bb.i ], [ %i.r, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i ]
  %i.bb = phi i32 [ %i.ba, %bb.i ], [ 2, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i ]
  %i.bc = icmp eq i32 %i.ay, %i.bb
  %i.bd = add nsw i32 %i.ay, 1                    ; 3 uses
  br i1 %i.bc, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, !prof !235

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef %.0.i.i.i12, i1 noundef zeroext %i.ax, i32 noundef %i.ay, i32 noundef %i.bd)
  %i.be = load ptr, ptr %i.u, align 8, !tbaa !29
  %.pre38.i.i.i = load i32, ptr %i.t, align 4, !tbaa !242
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %i.bf = phi i32 [ %.pre38.i.i.i, %bb.j ], [ %i.ay, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.pn.i.i.i = phi ptr [ %i.be, %bb.j ], [ %.0.v.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ] ; 2 uses
  %.0.i.i1.i = phi i1 [ false, %bb.j ], [ %i.ax, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ]
  %.029.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8
  store i32 %i.bd, ptr %i.t, align 4, !tbaa !242
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %.029.i.i.i, i64 %i.bg
  store i32 %i.ao, ptr %i.bh, align 4, !tbaa !3
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !242
  %i.bj = icmp eq i32 %i.bd, %i.bi
  tail call void @llvm.assume(i1 %i.bj)
  br i1 %.0.i.i1.i, label %_ZN6google8protobuf28GeneratedCodeInfo_Annotation8add_pathEi.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i
  %i.bk = load ptr, ptr %i.u, align 8
  br label %_ZN6google8protobuf28GeneratedCodeInfo_Annotation8add_pathEi.exit

_ZN6google8protobuf28GeneratedCodeInfo_Annotation8add_pathEi.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i, %bb.k
  %.sink24 = phi ptr [ %i.bk, %bb.k ], [ %i.r, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i ]
  %i.bl = icmp eq ptr %.pn.i.i.i, %.sink24
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i32, ptr %i.v, align 8, !tbaa !3
  %i.bn = or i32 %i.bm, 1                         ; 2 uses
  store i32 %i.bn, ptr %i.v, align 8, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.013.019, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.q
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE:bb.a
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !235

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !28 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !119
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !70, !noalias !331
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !67, !noalias !331 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !29 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.ar, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !29 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.q, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not59 = icmp eq i16 %i.w, 0
  br i1 %.not59, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.034.060 = phi i16 [ %i.af, %.critedge ], [ %i.w, %bb.b ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.7.0, %i.y
  %i.aa = and i64 %i.z, %i.i                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aa ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !28
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !119
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ac, label %bb.c, label %.critedge, !prof !334

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ae = add i16 %.sroa.034.060, -1
  %i.af = and i16 %i.ae, %.sroa.034.060           ; 2 uses
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ag = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.ah, 0
  br i1 %.not52, label %bb.d, label %.thread, !prof !235

.thread:                                          ; preds = %.critedge18
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8, !tbaa !120
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #6

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !326, !range !31, !noundef !32
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !335
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !307  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !307
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !302  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !307  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !306    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %4 = select i1 %3, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %4, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %4, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.r, align 8
  %i.s = load i64, ptr %2, align 8, !tbaa !320
  store i64 %i.s, ptr %i.o, align 8, !tbaa !320
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.q, align 8, !tbaa !321
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.p, align 8, !tbaa !302
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aa, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.n, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.z, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !337, !noalias !340
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !321, !alias.scope !340, !noalias !337
  store ptr %i.v, ptr %i.t, align 8, !tbaa !321, !alias.scope !337, !noalias !340
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !302, !alias.scope !340, !noalias !337 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !342, !alias.scope !343
  store ptr %i.x, ptr %i.y, align 8, !tbaa !302, !alias.scope !337, !noalias !340
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !340, !noalias !337
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !344

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.aa, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ab, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ai, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !345, !noalias !348
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !321, !alias.scope !348, !noalias !345
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !321, !alias.scope !345, !noalias !348
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !302, !alias.scope !348, !noalias !345 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !342, !alias.scope !350
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !302, !alias.scope !345, !noalias !348
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false), !alias.scope !348, !noalias !345
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !344

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ab, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.aj, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !309
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.an) #24
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.n, ptr %0, align 8, !tbaa !306
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !307
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %4
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !309
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.149") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !28, !noalias !357
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !119, !noalias !357
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.a = load ptr, ptr %1, align 8, !tbaa !317, !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !361
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !361
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !361
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !361 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !361
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !28, !noalias !361
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !119, !noalias !361
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %0, align 8, !tbaa !28, !alias.scope !357
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !119, !alias.scope !357
  store i8 0, ptr %i.h, align 8, !tbaa !362, !alias.scope !361
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !25, !alias.scope !361
  store i8 0, ptr %i.j, align 8, !alias.scope !361
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !27, !alias.scope !361
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !364, !alias.scope !361
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.m, align 8, !tbaa !372, !alias.scope !361
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_, ptr %0, align 8, !tbaa !374
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !251
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !320
  store i64 %i.a, ptr %0, align 8, !tbaa !320
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !67
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !29 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !28 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !119
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !28
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !119
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29, !nonnull !32, !noundef !32
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !29
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !28 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !119
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !70, !noalias !376
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !67, !noalias !376 ; 4 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !29   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !29 ; 4 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.ak, %bb.f ], [ %i.u, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.s      ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !29 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.aa, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !235

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !379

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !28
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !334

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !29 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !28
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !334

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !119
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !235

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !379

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !190    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %3 = icmp ult i64 %i.i, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %4 = select i1 %3, i64 144115188075855871, i64 %i.j ; 3 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.m = shl nuw nsw i64 %4, 6
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !25
  %i.r = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !27   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_M_allocateEm.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !26
  %i.y = load i64, ptr %i.s, align 8, !tbaa !29
  store i64 %i.y, ptr %i.q, align 8, !tbaa !29
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %i.z = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.d ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !27
  store ptr %i.s, ptr %2, align 8, !tbaa !26
  store i64 0, ptr %i.aa, align 8, !tbaa !27
  store i8 0, ptr %i.s, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !25
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !26
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !29
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !29
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !27
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !27
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !26
  store i64 0, ptr %i.ao, align 8, !tbaa !27
  store i8 0, ptr %i.ag, align 8, !tbaa !29
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i, align 8, !tbaa !25, !alias.scope !380, !noalias !383
  %i.ar = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !383, !noalias !380 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !27, !alias.scope !383, !noalias !380 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !385
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ar, ptr %.012.i.i.i, align 8, !tbaa !26, !alias.scope !380, !noalias !383
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !29, !alias.scope !383, !noalias !380
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !29, !alias.scope !380, !noalias !383
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !27, !alias.scope !383, !noalias !380
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.az = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.av, %bb.f ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !27, !alias.scope !380, !noalias !383
  store ptr %i.as, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !383, !noalias !380
  store i64 0, ptr %i.ba, align 8, !tbaa !27, !alias.scope !383, !noalias !380
  store i8 0, ptr %i.as, align 8, !tbaa !29, !alias.scope !383, !noalias !380
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !25, !alias.scope !380, !noalias !383
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !26, !alias.scope !383, !noalias !380 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !27, !alias.scope !383, !noalias !380 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false), !alias.scope !385
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !26, !alias.scope !380, !noalias !383
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !29, !alias.scope !383, !noalias !380
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !29, !alias.scope !380, !noalias !383
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !27, !alias.scope !383, !noalias !380
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.g
  %i.bn = phi i64 [ %i.bj, %bb.g ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !27, !alias.scope !380, !noalias !383
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !26, !alias.scope !383, !noalias !380
  store i64 0, ptr %i.bo, align 8, !tbaa !27, !alias.scope !383, !noalias !380
  store i8 0, ptr %i.bg, align 8, !tbaa !29, !alias.scope !383, !noalias !380
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !386

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ], [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.cu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bs, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.ct, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.bt, ptr %.012.i.i.i18, align 8, !tbaa !25, !alias.scope !387, !noalias !390
  %i.bu = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !26, !alias.scope !390, !noalias !387 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.h:                                             ; preds = %.lr.ph.i.i.i17
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !27, !alias.scope !390, !noalias !387 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false), !alias.scope !392
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bu, ptr %.012.i.i.i18, align 8, !tbaa !26, !alias.scope !387, !noalias !390
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !29, !alias.scope !390, !noalias !387
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !29, !alias.scope !387, !noalias !390
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !27, !alias.scope !390, !noalias !387
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.h
  %i.cc = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.by, %bb.h ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !27, !alias.scope !387, !noalias !390
  store ptr %i.bv, ptr %.0911.i.i.i19, align 8, !tbaa !26, !alias.scope !390, !noalias !387
  store i64 0, ptr %i.cd, align 8, !tbaa !27, !alias.scope !390, !noalias !387
  store i8 0, ptr %i.bv, align 8, !tbaa !29, !alias.scope !390, !noalias !387
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !25, !alias.scope !387, !noalias !390
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !26, !alias.scope !390, !noalias !387 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !27, !alias.scope !390, !noalias !387 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = add nuw nsw i64 %i.cm, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cj, i64 %i.co, i1 false), !alias.scope !392
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23
  store ptr %i.ci, ptr %i.cf, align 8, !tbaa !26, !alias.scope !387, !noalias !390
  %i.cp = load i64, ptr %i.cj, align 8, !tbaa !29, !alias.scope !390, !noalias !387
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !29, !alias.scope !387, !noalias !390
  %.phi.trans.insert5.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %.pre6.i.i.i.i26 = load i64, ptr %.phi.trans.insert5.i.i.i.i25, align 8, !tbaa !27, !alias.scope !390, !noalias !387
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24, %bb.i
  %i.cq = phi i64 [ %i.cm, %bb.i ], [ %.pre6.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  store i64 %i.cq, ptr %i.cs, align 8, !tbaa !27, !alias.scope !387, !noalias !390
  store ptr %i.cj, ptr %i.cg, align 8, !tbaa !26, !alias.scope !390, !noalias !387
  store i64 0, ptr %i.cr, align 8, !tbaa !27, !alias.scope !390, !noalias !387
  store i8 0, ptr %i.cj, align 8, !tbaa !29, !alias.scope !390, !noalias !387
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.ct, %i.b
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30, label %.lr.ph.i.i.i17, !llvm.loop !386

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i29 = phi ptr [ %i.bs, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.cu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !188
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = sub i64 %i.cx, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cy) #24
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30, %bb.j
  store ptr %i.o, ptr %0, align 8, !tbaa !190
  store ptr %.0.lcssa.i.i.i29, ptr %i.a, align 8, !tbaa !185
  %i.cz = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %4
  store ptr %i.cz, ptr %i.cv, align 8, !tbaa !188
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #15 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN6google8protobuf8compiler4java17ClassNameResolverE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !18, i64 8}
!11 = !{!"_ZTSN6google8protobuf8compiler4java19SharedCodeGeneratorE", !12, i64 0, !18, i64 8, !19, i64 16}
!12 = !{!"_ZTSSt10unique_ptrIN6google8protobuf8compiler4java17ClassNameResolverESt14default_deleteIS4_EE", !13, i64 0}
!13 = !{!"_ZTSSt15__uniq_ptr_dataIN6google8protobuf8compiler4java17ClassNameResolverESt14default_deleteIS4_ELb1ELb1EE", !14, i64 0}
!14 = !{!"_ZTSSt15__uniq_ptr_implIN6google8protobuf8compiler4java17ClassNameResolverESt14default_deleteIS4_EE", !15, i64 0}
!15 = !{!"_ZTSSt5tupleIJPN6google8protobuf8compiler4java17ClassNameResolverESt14default_deleteIS4_EEE", !16, i64 0}
!16 = !{!"_ZTSSt11_Tuple_implILm0EJPN6google8protobuf8compiler4java17ClassNameResolverESt14default_deleteIS4_EEE", !17, i64 0}
!17 = !{!"_ZTSSt10_Head_baseILm0EPN6google8protobuf8compiler4java17ClassNameResolverELb0EE", !8, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !9, i64 0}
!19 = !{!"_ZTSN6google8protobuf8compiler4java7OptionsE", !20, i64 0, !20, i64 1, !20, i64 2, !20, i64 3, !20, i64 4, !21, i64 8, !21, i64 40, !20, i64 72, !20, i64 73, !20, i64 74, !20, i64 75}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !24, i64 8, !5, i64 16}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !9, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!22, !23, i64 0}
!26 = !{!21, !23, i64 0}
!27 = !{!21, !24, i64 8}
!28 = !{!24, !24, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!11, !20, i64 19}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!34, !35, i64 8}
!34 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!36 = !{!34, !35, i64 16}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !6, i64 0}
!39 = !{!40, !42, i64 8}
!40 = !{!"_ZTSN6google8protobuf2io24AnnotationProtoCollectorINS0_17GeneratedCodeInfoEEE", !41, i64 0, !42, i64 8}
!41 = !{!"_ZTSN6google8protobuf2io19AnnotationCollectorE"}
!42 = !{!"p1 _ZTSN6google8protobuf17GeneratedCodeInfoE", !9, i64 0}
!43 = !{!11, !20, i64 20}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZSt11make_uniqueIN6google8protobuf2io7PrinterEJPNS2_20ZeroCopyOutputStreamEcPNS2_24AnnotationProtoCollectorINS1_17GeneratedCodeInfoEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!46 = distinct !{!46, !"_ZSt11make_uniqueIN6google8protobuf2io7PrinterEJPNS2_20ZeroCopyOutputStreamEcPNS2_24AnnotationProtoCollectorINS1_17GeneratedCodeInfoEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTSN6google8protobuf2io7PrinterE", !9, i64 0}
!49 = !{!50, !35, i64 8}
!50 = !{!"_ZTSN6google8protobuf14FileDescriptorE", !51, i64 0, !20, i64 1, !20, i64 2, !4, i64 4, !35, i64 8, !35, i64 16, !52, i64 24, !53, i64 32, !54, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !55, i64 80, !57, i64 88, !57, i64 96, !58, i64 104, !59, i64 112, !60, i64 120, !61, i64 128, !62, i64 136, !63, i64 144, !64, i64 152, !64, i64 160, !65, i64 168, !66, i64 176}
!51 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!52 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !9, i64 0}
!53 = !{!"_ZTSN6google8protobuf7EditionE", !5, i64 0}
!54 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !9, i64 0}
!55 = !{!"p2 _ZTSN6google8protobuf14FileDescriptorE", !56, i64 0}
!56 = !{!"any p2 pointer", !9, i64 0}
!57 = !{!"p1 int", !9, i64 0}
!58 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !9, i64 0}
!59 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !9, i64 0}
!60 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !9, i64 0}
!61 = !{!"p1 _ZTSN6google8protobuf17ServiceDescriptorE", !9, i64 0}
!62 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !9, i64 0}
!63 = !{!"p1 _ZTSN6google8protobuf11FileOptionsE", !9, i64 0}
!64 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !9, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf20FileDescriptorTablesE", !9, i64 0}
!66 = !{!"p1 _ZTSN6google8protobuf14SourceCodeInfoE", !9, i64 0}
!67 = !{!68, !24, i64 0}
!68 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !24, i64 0, !69, i64 8, !5, i64 16}
!69 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !24, i64 0}
!70 = !{!69, !24, i64 0}
!71 = !{!72, !76, i64 48}
!72 = !{!"_ZTSN6google8protobuf2io7PrinterE", !73, i64 0, !75, i64 40, !24, i64 104, !20, i64 112, !20, i64 113, !24, i64 120, !82, i64 128, !87, i64 152, !92, i64 176, !97, i64 208, !100, i64 240, !106, i64 272}
!73 = !{!"_ZTSN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSinkE", !74, i64 0, !9, i64 8, !24, i64 16, !24, i64 24, !20, i64 32}
!74 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !9, i64 0}
!75 = !{!"_ZTSN6google8protobuf2io7Printer7OptionsE", !5, i64 0, !76, i64 8, !77, i64 16, !77, i64 32, !24, i64 48, !78, i64 56}
!76 = !{!"p1 _ZTSN6google8protobuf2io19AnnotationCollectorE", !9, i64 0}
!77 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !24, i64 0, !23, i64 8}
!78 = !{!"_ZTSSt8optionalIbE", !79, i64 0}
!79 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !80, i64 0}
!80 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !81, i64 0}
!81 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !20, i64 1}
!82 = !{!"_ZTSSt6vectorImSaImEE", !83, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseImSaImEE", !84, i64 0}
!84 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!86 = !{!"p1 long", !9, i64 0}
!87 = !{!"_ZTSSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE", !88, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE", !89, i64 0}
!89 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_Vector_implE", !90, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!91 = !{!"p1 _ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEE", !9, i64 0}
!92 = !{!"_ZTSSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_Vector_implE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEE", !9, i64 0}
!97 = !{!"_ZTSN4absl12lts_2025051212AnyInvocableIFvSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !98, i64 0}
!98 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable4ImplIFvSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !99, i64 0}
!99 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable8CoreImplILb0EvJSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !5, i64 0, !9, i64 16, !9, i64 24}
!100 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEE", !101, i64 0}
!101 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !102, i64 0}
!102 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !103, i64 0}
!103 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !104, i64 0}
!104 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !105, i64 0}
!105 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !68, i64 0}
!106 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !107, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !108, i64 0}
!108 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !34, i64 0}
!109 = !{!110, !57, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!111 = !{!110, !57, i64 16}
!112 = !{!72, !24, i64 88}
!113 = !{!72, !24, i64 104}
!114 = distinct !{null, null}
!115 = distinct !{null, null, null}
!116 = !{!77, !24, i64 0}
!117 = !{!77, !23, i64 8}
!118 = !{i64 0, i64 8, !28, i64 8, i64 8, !119}
!119 = !{!23, !23, i64 0}
!120 = !{!121, !20, i64 16}
!121 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES8_EENS2_10StringHashENS2_8StringEqESaIS_IKS8_S8_EEE8iteratorEbE", !122, i64 0, !20, i64 16}
!122 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE8iteratorE", !9, i64 0, !5, i64 8}
!123 = !{!124, !126, !128, !130, !132, !134}
!124 = distinct !{!124, !125, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_EEESB_INSF_8iteratorEbERKT_DpOT0_: argument 0"}
!125 = distinct !{!125, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_EEESB_INSF_8iteratorEbERKT_DpOT0_"}
!126 = distinct !{!126, !127, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE19EmplaceDecomposableERS9_St5tupleIJSJ_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISK_IJSN_EEEEclsr3stdE7declvalIT1_EEEEOSM_SD_ISQ_SR_E: argument 0"}
!127 = distinct !{!127, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE19EmplaceDecomposableERS9_St5tupleIJSJ_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISK_IJSN_EEEEclsr3stdE7declvalIT1_EEEEOSM_SD_ISQ_SR_E"}
!128 = distinct !{!128, !129, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES8_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS8_S8_EEE19EmplaceDecomposableEJRS8_SI_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSJ_DpOSK_: argument 0"}
!129 = distinct !{!129, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES8_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS8_S8_EEE19EmplaceDecomposableEJRS8_SI_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSJ_DpOSK_"}
!130 = distinct !{!130, !131, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES6_E5applyINS1_12raw_hash_setIS7_NS1_10StringHashENS1_8StringEqESaISt4pairIKS6_S6_EEE19EmplaceDecomposableEJRS6_SI_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSJ_DpOSK_: argument 0"}
!131 = distinct !{!131, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES6_E5applyINS1_12raw_hash_setIS7_NS1_10StringHashENS1_8StringEqESaISt4pairIKS6_S6_EEE19EmplaceDecomposableEJRS6_SI_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSJ_DpOSK_"}
!132 = distinct !{!132, !133, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableEJRS7_SK_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_: argument 0"}
!133 = distinct !{!133, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableEJRS7_SK_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_"}
!134 = distinct !{!134, !135, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_: argument 0"}
!135 = distinct !{!135, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_"}
!136 = !{!137, !139, !141, !143, !145, !147}
!137 = distinct !{!137, !138, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_EEESB_INSF_8iteratorEbERKT_DpOT0_: argument 0"}
!138 = distinct !{!138, !"_ZNK4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableclIS7_JRKSt21piecewise_construct_tSt5tupleIJRS7_EESN_EEESB_INSF_8iteratorEbERKT_DpOT0_"}
!139 = distinct !{!139, !140, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE19EmplaceDecomposableERS9_St5tupleIJSJ_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISK_IJSN_EEEEclsr3stdE7declvalIT1_EEEEOSM_SD_ISQ_SR_E: argument 0"}
!140 = distinct !{!140, !"_ZN4absl12lts_2025051218container_internal15memory_internal17DecomposePairImplINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES9_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS9_S9_EEE19EmplaceDecomposableERS9_St5tupleIJSJ_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISK_IJSN_EEEEclsr3stdE7declvalIT1_EEEEOSM_SD_ISQ_SR_E"}
!141 = distinct !{!141, !142, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES8_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS8_S8_EEE19EmplaceDecomposableEJRS8_SI_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSJ_DpOSK_: argument 0"}
!142 = distinct !{!142, !"_ZN4absl12lts_2025051218container_internal13DecomposePairINS1_12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES8_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS8_S8_EEE19EmplaceDecomposableEJRS8_SI_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSJ_DpOSK_"}
!143 = distinct !{!143, !144, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES6_E5applyINS1_12raw_hash_setIS7_NS1_10StringHashENS1_8StringEqESaISt4pairIKS6_S6_EEE19EmplaceDecomposableEJRS6_SI_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSJ_DpOSK_: argument 0"}
!144 = distinct !{!144, !"_ZN4absl12lts_2025051218container_internal17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES6_E5applyINS1_12raw_hash_setIS7_NS1_10StringHashENS1_8StringEqESaISt4pairIKS6_S6_EEE19EmplaceDecomposableEJRS6_SI_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSJ_DpOSK_"}
!145 = distinct !{!145, !146, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableEJRS7_SK_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_: argument 0"}
!146 = distinct !{!146, !"_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE19EmplaceDecomposableEJRS7_SK_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSM_DpOSN_"}
!147 = distinct !{!147, !148, !"_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_: argument 0"}
end_hunk_1
