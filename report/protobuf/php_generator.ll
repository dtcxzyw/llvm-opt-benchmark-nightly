inline.NumInlined: 4892
inline.NumDeleted: 1491
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_SA_EEEvSt17basic_string_viewIcS8_EDpRKT_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.i:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.s, %bb.b ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer5PrintIJA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 11 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 12 uses
  %7 = alloca %"struct.std::pair.56", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #26
  store i64 %i.a, ptr %5, align 16, !tbaa !288
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !289
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  store i64 %i.f, ptr %i.c, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.h, align 16, !tbaa !288
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.11, ptr %i.i, align 8, !tbaa !289
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader unwind label %bb.b

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader: ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.56") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.d

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !504, !range !18, !alias.scope !871, !noundef !19
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !871 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !520
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !520
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %1, ptr %2)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.p = load i64, ptr %6, align 8, !tbaa !93     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !52
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !94
  %i.u = and i64 %i.t, 65536
  %i.v = icmp ne i64 %i.u, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.p, ptr noundef %i.r, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.v)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.j, %bb.b ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_121GenerateFieldAccessorEPKNS0_15FieldDescriptorERKNS2_7OptionsEPNS0_2io7PrinterE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit:
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %5 = alloca %"struct.google::protobuf::compiler::php::Options", align 8 ; 10 uses
  %6 = alloca %"struct.google::protobuf::compiler::php::Options", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %15 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %16 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::allocator", align 1   ; 4 uses
  %23 = alloca %"class.std::allocator", align 1   ; 4 uses
  %24 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %25 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %26 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %27 = alloca %"struct.google::protobuf::compiler::php::Options", align 8 ; 10 uses
  %28 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %34 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %39 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %41 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %42 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %47 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %49 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %50 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %51 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %52 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %55 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %56 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %57 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %58 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %59 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %60 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %61 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %62 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %63 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %64 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %65 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %66 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %67 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 24 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %70 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %71 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %72 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 5 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %74 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %77 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %78 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %79 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %83 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 75 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %86 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %90 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %93 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 26 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %99 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %101 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %103 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %105 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %108 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %110 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %111 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %112 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %114 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %118 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %119 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %121 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 8 uses
  %i.o = load i8, ptr %i.n, align 1
  %i.p = and i8 %i.o, 8
  %.not.i = icmp eq i8 %i.p, 0                    ; 2 uses
  tail call fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_123GenerateFieldDocCommentEPNS0_2io7PrinterEPKNS0_15FieldDescriptorERKNS2_7OptionsEi(ptr noundef %2, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !884  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 93
  %i.t = load i8, ptr %i.s, align 1, !tbaa !52, !range !18, !noundef !19
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #26
  br i1 %i.u, label %.thread1032, label %._crit_edge.i.i

.thread1032:                                      ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  store i64 16, ptr %70, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %70, i64 8
  store ptr @.str.153, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %122 = load ptr, ptr %i.w, align 8, !tbaa !404  ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %122, align 1
  %123 = zext i16 %.0.copyload.i.i.i to i64       ; 2 uses
  %124 = xor i64 %123, -1
  %125 = getelementptr inbounds i8, ptr %122, i64 %124
  store i64 %123, ptr %71, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %71, i64 8
  store ptr %125, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !225
  store i64 46, ptr %72, align 8
  %126 = getelementptr inbounds nuw i8, ptr %72, i64 8
  store ptr @.str.154, ptr %126, align 8
  call void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef nonnull align 8 dereferenceable(48) %71, ptr noundef nonnull align 8 dereferenceable(48) %72)
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !884
  br label %bb.a

._crit_edge.i.i:                                  ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %127 = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  store ptr %127, ptr %69, align 8, !tbaa !50
  %128 = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 0, ptr %128, align 8, !tbaa !40
  store i8 0, ptr %127, align 8, !tbaa !52
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.thread1032
  %129 = phi ptr [ %i.r, %._crit_edge.i.i ], [ %.pre, %.thread1032 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #26
  %130 = getelementptr inbounds nuw i8, ptr %129, i64 93
  %131 = load i8, ptr %130, align 1, !tbaa !52, !range !18, !noundef !19
  %132 = trunc nuw i8 %131 to i1
  br i1 %132, label %bb.b, label %._crit_edge.i.i296

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #26
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.y = load i8, ptr %i.x, align 1, !noalias !885
  %i.z = and i8 %i.y, 32
  %.not.i287 = icmp eq i8 %i.z, 0
  br i1 %.not.i287, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26, !noalias !885
  store i64 13, ptr %55, align 8, !noalias !885
  %i.aa = getelementptr inbounds nuw i8, ptr %55, i64 8
  store ptr @.str.188, ptr %i.aa, align 8, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26, !noalias !885
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !404, !noalias !885 ; 2 uses
  %.0.copyload.i.i.i.i = load i16, ptr %i.ac, align 1, !noalias !885
  %i.ad = zext i16 %.0.copyload.i.i.i.i to i64    ; 2 uses
  %i.ae = xor i64 %i.ad, -1
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 %i.ae
  store i64 %i.ad, ptr %56, align 8, !tbaa !51, !noalias !885
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %56, i64 8
  store ptr %i.af, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !225, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #26, !noalias !885
  store i64 7, ptr %57, align 8, !noalias !885
  %i.ag = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr @.str.189, ptr %i.ag, align 8, !noalias !885
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull align 8 dereferenceable(48) %57)
          to label %.noexc289 unwind label %bb.r

.noexc289:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_129DeprecatedConditionalForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %bb.b
  %i.ah = load i8, ptr %i.n, align 1, !noalias !885
  %i.ai = and i8 %i.ah, 8
  %.not.i.i288 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i288, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #26, !noalias !885
  store i64 16, ptr %58, align 8, !noalias !885
  %i.aj = getelementptr inbounds nuw i8, ptr %58, i64 8
  store ptr @.str.190, ptr %i.aj, align 8, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #26, !noalias !885
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !610, !noalias !885
  %i.am = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  %i.an = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.al, ptr noundef nonnull %i.am)
          to label %.noexc290 unwind label %bb.r

.noexc290:                                        ; preds = %bb.e
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %59, align 8, !tbaa !288, !noalias !885
  %i.ar = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !289, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #26, !noalias !885
  store i64 1, ptr %60, align 8, !noalias !885
  %i.as = getelementptr inbounds nuw i8, ptr %60, i64 8
  store ptr @.str.191, ptr %i.as, align 8, !noalias !885
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull align 8 dereferenceable(48) %59, ptr noundef nonnull align 8 dereferenceable(48) %60)
          to label %.noexc291 unwind label %bb.r

.noexc291:                                        ; preds = %.noexc290
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #26, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_129DeprecatedConditionalForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit

bb.f:                                             ; preds = %bb.d
  %i.at = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %.noexc292 unwind label %bb.r

.noexc292:                                        ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc292
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #26, !noalias !885
  store i64 13, ptr %61, align 8, !noalias !885
  %i.av = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr @.str.192, ptr %i.av, align 8, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #26, !noalias !885
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !404, !noalias !885 ; 2 uses
  %.0.copyload.i.i.i26.i = load i16, ptr %i.aw, align 1, !noalias !885
  %i.ax = zext i16 %.0.copyload.i.i.i26.i to i64  ; 2 uses
  %i.ay = xor i64 %i.ax, -1
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  store i64 %i.ax, ptr %62, align 8, !tbaa !51, !noalias !885
  %.sroa.2.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %62, i64 8
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx.i29.i, align 8, !tbaa !225, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #26, !noalias !885
  store i64 1, ptr %63, align 8, !noalias !885
  %i.ba = getelementptr inbounds nuw i8, ptr %63, i64 8
  store ptr @.str.191, ptr %i.ba, align 8, !noalias !885
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef nonnull align 8 dereferenceable(48) %63)
          to label %.noexc293 unwind label %bb.r

.noexc293:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #26, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_129DeprecatedConditionalForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit

bb.h:                                             ; preds = %.noexc292
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #26, !noalias !885
  store i64 7, ptr %64, align 8, !noalias !885
  %i.bb = getelementptr inbounds nuw i8, ptr %64, i64 8
  store ptr @.str.193, ptr %i.bb, align 8, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #26, !noalias !885
  %i.bc = load ptr, ptr %i.au, align 8, !tbaa !404, !noalias !885 ; 2 uses
  %.0.copyload.i.i.i30.i = load i16, ptr %i.bc, align 1, !noalias !885
  %i.bd = zext i16 %.0.copyload.i.i.i30.i to i64  ; 2 uses
  %i.be = xor i64 %i.bd, -1
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be
  store i64 %i.bd, ptr %65, align 8, !tbaa !51, !noalias !885
  %.sroa.2.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %65, i64 8
  store ptr %i.bf, ptr %.sroa.2.0..sroa_idx.i33.i, align 8, !tbaa !225, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #26, !noalias !885
  store i64 5, ptr %66, align 8, !noalias !885
  %i.bg = getelementptr inbounds nuw i8, ptr %66, i64 8
  store ptr @.str.194, ptr %i.bg, align 8, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #26, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #26, !noalias !885
  %i.bh = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %.noexc294 unwind label %bb.r

.noexc294:                                        ; preds = %bb.h
  br i1 %i.bh, label %._crit_edge.i.i.i, label %bb.i

._crit_edge.i.i.i:                                ; preds = %.noexc294
  %i.bi = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 3 uses
  store ptr %i.bi, ptr %68, align 8, !tbaa !50, !noalias !885
  store i32 1819047278, ptr %i.bi, align 8, !noalias !885
  %i.bj = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 4, ptr %i.bj, align 8, !tbaa !40, !noalias !885
  %i.bk = getelementptr inbounds nuw i8, ptr %68, i64 20
  store i8 0, ptr %i.bk, align 4, !tbaa !52, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i

bb.i:                                             ; preds = %.noexc294
  %i.bl = getelementptr i8, ptr %0, i64 2
  %.val.i = load i8, ptr %i.bl, align 2, !tbaa !450, !noalias !885
  %i.bm = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 13 uses
  store ptr %i.bm, ptr %68, align 8, !tbaa !50, !alias.scope !888, !noalias !885
  switch i8 %.val.i, label %._crit_edge.i.i20.i.i [
    i8 5, label %._crit_edge.i.i.i.i
    i8 3, label %._crit_edge.i.i.i.i
    i8 13, label %._crit_edge.i.i.i.i
    i8 4, label %._crit_edge.i.i.i.i
    i8 17, label %._crit_edge.i.i.i.i
    i8 18, label %._crit_edge.i.i.i.i
    i8 7, label %._crit_edge.i.i.i.i
    i8 6, label %._crit_edge.i.i.i.i
    i8 15, label %._crit_edge.i.i.i.i
    i8 16, label %._crit_edge.i.i.i.i
    i8 14, label %._crit_edge.i.i.i.i
    i8 1, label %._crit_edge.i.i4.i.i
    i8 2, label %._crit_edge.i.i4.i.i
    i8 8, label %._crit_edge.i.i8.i.i
    i8 9, label %._crit_edge.i.i12.i.i
    i8 12, label %._crit_edge.i.i12.i.i
    i8 11, label %._crit_edge.i.i16.i.i
    i8 10, label %._crit_edge.i.i16.i.i
  ]

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i, %bb.i
  store i8 48, ptr %i.bm, align 8, !tbaa !52, !alias.scope !888, !noalias !885
  %i.bn = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 1, ptr %i.bn, align 8, !tbaa !40, !alias.scope !888, !noalias !885
  %i.bo = getelementptr inbounds nuw i8, ptr %68, i64 17
  store i8 0, ptr %i.bo, align 1, !tbaa !52, !alias.scope !888, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i

._crit_edge.i.i4.i.i:                             ; preds = %bb.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.bm, ptr noundef nonnull align 1 dereferenceable(3) @.str.144, i64 3, i1 false), !noalias !885
  %i.bp = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 3, ptr %i.bp, align 8, !tbaa !40, !alias.scope !888, !noalias !885
  %i.bq = getelementptr inbounds nuw i8, ptr %68, i64 19
  store i8 0, ptr %i.bq, align 1, !tbaa !52, !alias.scope !888, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i

._crit_edge.i.i8.i.i:                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.bm, ptr noundef nonnull align 1 dereferenceable(5) @.str.81, i64 5, i1 false), !noalias !885
  %i.br = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 5, ptr %i.br, align 8, !tbaa !40, !alias.scope !888, !noalias !885
  %i.bs = getelementptr inbounds nuw i8, ptr %68, i64 21
  store i8 0, ptr %i.bs, align 1, !tbaa !52, !alias.scope !888, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i

._crit_edge.i.i12.i.i:                            ; preds = %bb.i, %bb.i
  store i16 10023, ptr %i.bm, align 8, !alias.scope !888, !noalias !885
  %i.bt = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 2, ptr %i.bt, align 8, !tbaa !40, !alias.scope !888, !noalias !885
  %i.bu = getelementptr inbounds nuw i8, ptr %68, i64 18
  store i8 0, ptr %i.bu, align 2, !tbaa !52, !alias.scope !888, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i

._crit_edge.i.i16.i.i:                            ; preds = %bb.i, %bb.i
  store i32 1819047278, ptr %i.bm, align 8, !alias.scope !888, !noalias !885
  %i.bv = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 4, ptr %i.bv, align 8, !tbaa !40, !alias.scope !888, !noalias !885
  %i.bw = getelementptr inbounds nuw i8, ptr %68, i64 20
  store i8 0, ptr %i.bw, align 4, !tbaa !52, !alias.scope !888, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i

._crit_edge.i.i20.i.i:                            ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %68, i64 8
  store i64 0, ptr %i.bx, align 8, !tbaa !40, !alias.scope !888, !noalias !885
  store i8 0, ptr %i.bm, align 8, !tbaa !52, !alias.scope !888, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i: ; preds = %._crit_edge.i.i20.i.i, %._crit_edge.i.i16.i.i, %._crit_edge.i.i12.i.i, %._crit_edge.i.i8.i.i, %._crit_edge.i.i4.i.i, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i
  %i.by = phi i64 [ 0, %._crit_edge.i.i20.i.i ], [ 4, %._crit_edge.i.i16.i.i ], [ 2, %._crit_edge.i.i12.i.i ], [ 5, %._crit_edge.i.i8.i.i ], [ 3, %._crit_edge.i.i4.i.i ], [ 1, %._crit_edge.i.i.i.i ], [ 4, %._crit_edge.i.i.i ]
  %i.bz = phi ptr [ %i.bm, %._crit_edge.i.i20.i.i ], [ %i.bm, %._crit_edge.i.i16.i.i ], [ %i.bm, %._crit_edge.i.i12.i.i ], [ %i.bm, %._crit_edge.i.i8.i.i ], [ %i.bm, %._crit_edge.i.i4.i.i ], [ %i.bm, %._crit_edge.i.i.i.i ], [ %i.bi, %._crit_edge.i.i.i ]
  store i64 %i.by, ptr %67, align 8, !noalias !885
  %i.ca = getelementptr inbounds nuw i8, ptr %67, i64 8
  store ptr %i.bz, ptr %i.ca, align 8, !noalias !885
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull align 8 dereferenceable(48) %66, ptr noundef nonnull align 8 dereferenceable(48) %67)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i
  %i.cb = load ptr, ptr %68, align 8, !tbaa !44, !noalias !885 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %.critedge.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !52, !noalias !885
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #27
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26, !noalias !885
  br label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_129DeprecatedConditionalForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit

bb.k:                                             ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115DefaultForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %68, align 8, !tbaa !44, !noalias !885 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %.critedge25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i: ; preds = %bb.k
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !52, !noalias !885
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #27
  br label %.critedge25.i

.critedge25.i:                                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #26, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #26, !noalias !885
  br label %.critedge282

_ZN6google8protobuf8compiler3php12_GLOBAL__N_129DeprecatedConditionalForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit: ; preds = %.critedge.i, %.noexc293, %.noexc291, %.noexc289
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %76, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.155, i64 noundef 4)
          to label %.noexc295 unwind label %bb.s  ; 6 uses

.noexc295:                                        ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_129DeprecatedConditionalForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 7 uses
  store ptr %i.cn, ptr %75, align 8, !tbaa !50, !alias.scope !891
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 5 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.l:                                             ; preds = %.noexc295
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !40 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.ct)
  %i.cu = add nuw nsw i64 %i.cs, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %i.cp, i64 %i.cu, i1 false)
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc295
  store ptr %i.co, ptr %75, align 8, !tbaa !44, !alias.scope !891
  %i.cv = load i64, ptr %i.cp, align 8, !tbaa !52
  store i64 %i.cv, ptr %i.cn, align 8, !tbaa !52, !alias.scope !891
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %i.cw = phi i64 [ %i.cs, %bb.l ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !40, !alias.scope !891
  store ptr %i.cp, ptr %i.cm, align 8, !tbaa !44
  store i64 0, ptr %i.cx, align 8, !tbaa !40
  store i8 0, ptr %i.cp, align 8, !tbaa !52
  %i.cz = load ptr, ptr %75, align 8, !tbaa !44
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !40
  store i64 %i.da, ptr %74, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %74, i64 8
  store ptr %i.cz, ptr %i.db, align 8
  store i64 16, ptr %77, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %77, i64 8
  store ptr @.str.156, ptr %i.dc, align 8
  %i.dd = load ptr, ptr %69, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw i8, ptr %69, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !40
  store i64 %i.df, ptr %78, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %78, i64 8
  store ptr %i.dd, ptr %i.dg, align 8
  store i64 10, ptr %79, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %79, i64 8
  store ptr @.str.157, ptr %i.dh, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr noundef nonnull align 8 dereferenceable(48) %74, ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull align 8 dereferenceable(48) %78, ptr noundef nonnull align 8 dereferenceable(48) %79)
          to label %.critedge276 unwind label %.thread721

._crit_edge.i.i296:                               ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  store ptr %i.di, ptr %73, align 8, !tbaa !50
  %i.dj = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !40
  store i8 0, ptr %i.di, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  br label %.critedge280

.critedge276:                                     ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  %i.dk = load ptr, ptr %75, align 8, !tbaa !44   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cn
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %.critedge276
  %i.dm = load i64, ptr %i.cn, align 8, !tbaa !52
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  %i.do = load ptr, ptr %76, align 8, !tbaa !44   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !52
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #26
  br label %.critedge280

.critedge280:                                     ; preds = %._crit_edge.i.i296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit303
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  br i1 %.not.i, label %bb.w, label %bb.n

bb.n:                                             ; preds = %.critedge280
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #26
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !404 ; 2 uses
  %.0.copyload.i.i.i304 = load i16, ptr %i.du, align 1
  %i.dv = zext i16 %.0.copyload.i.i.i304 to i64   ; 2 uses
  %i.dw = xor i64 %i.dv, -1
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.dw
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_122UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb(ptr dead_on_unwind noalias writable align 8 %80, i64 %i.dv, ptr nonnull %i.dx)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #26
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !610
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_111IntToStringB5cxx11Ei(ptr dead_on_unwind noalias writable align 8 %81, i32 noundef %i.dz)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA7_cSA_A20_cSA_EEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %2, i64 99, ptr nonnull @.str.158, ptr noundef nonnull align 1 dereferenceable(11) @.str.99, ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 1 dereferenceable(7) @.str.55, ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 1 dereferenceable(20) @.str.159, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ea = load ptr, ptr %81, align 8, !tbaa !44   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %bb.q
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !52
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #26
  %i.ef = load ptr, ptr %80, align 8, !tbaa !44   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !52
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i311

bb.r:                                             ; preds = %bb.h, %bb.g, %bb.f, %.noexc290, %bb.e, %bb.c
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.critedge282

bb.s:                                             ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_129DeprecatedConditionalForFieldB5cxx11EPKNS0_15FieldDescriptorE.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i314

.thread721:                                       ; preds = %bb.m
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #26
  %i.en = load ptr, ptr %75, align 8, !tbaa !44   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.cn
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i314, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %.thread721
  %i.ep = load i64, ptr %i.cn, align 8, !tbaa !52
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i314: ; preds = %.thread721, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ], [ %i.el, %bb.s ], [ %i.em, %.thread721 ] ; 2 uses
  %i.er = load ptr, ptr %76, align 8, !tbaa !44   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %.critedge282, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i314
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !52
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #27
  br label %.critedge282

.critedge282:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i314, %bb.r, %.critedge25.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  %.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %i.cg, %.critedge25.i ], [ %i.ek, %bb.r ], [ %.pn.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit659

bb.t:                                             ; preds = %bb.n
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

bb.u:                                             ; preds = %bb.o
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.v:                                             ; preds = %bb.p
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %81, align 8, !tbaa !44   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.v
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !52
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.u
  %.pn228 = phi { ptr, i32 } [ %i.ex, %bb.u ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %i.ey, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #26
  %i.fe = load ptr, ptr %80, align 8, !tbaa !44   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 2 uses
  %i.fg = icmp eq ptr %i.fe, %i.ff
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.fh = load i64, ptr %i.ff, align 8, !tbaa !52
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322, %bb.t
  %.pn228.pn = phi { ptr, i32 } [ %i.ew, %bb.t ], [ %.pn228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322 ], [ %.pn228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #26
  br label %.body423

bb.w:                                             ; preds = %.critedge280
  %i.fj = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.x unwind label %bb.cy

bb.x:                                             ; preds = %bb.w
  br i1 %i.fj, label %bb.y, label %bb.dc

bb.y:                                             ; preds = %bb.x
  %i.fk = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
          to label %bb.z unwind label %bb.cy

bb.z:                                             ; preds = %bb.y
  %.not221 = icmp eq ptr %i.fk, null
  br i1 %.not221, label %bb.aa, label %bb.dc

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #26
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !404 ; 2 uses
end_hunk_0
