Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-bjdata?download=true
inline.NumInlined: 19595
inline.NumDeleted: 3431
loop-unroll.NumCompletelyUnrolled: 525
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 527
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9to_bjdataERKSD_NS0_6detail14output_adapterIhNS5_IhS6_IhESB_EEEEbbNSG_16bjdata_version_tE:bb.a
bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ae, align 8, !tbaa !157
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !158
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #29, !inline_history !6
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #29, !inline_history !6
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i6 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.o ], [ %i.ar, %bb.p ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.q, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !148

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #29
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEEcvSt10shared_ptrINS1_23output_adapter_protocolIhEEEEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !158
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !6
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29, !inline_history !6
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !81
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !97
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !148

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #29
  br label %_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_ubjsonERKSF_bbbbNS1_16bjdata_version_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i32 noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %8 = alloca %"struct.std::array.193", align 8   ; 5 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %16 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 12 uses
  %18 = alloca %"class.std::vector", align 8      ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %19 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.d = icmp eq i32 %6, 1
  %i.e = and i1 %5, %i.d                          ; 2 uses
  %i.f = load i8, ptr %1, align 8, !tbaa !91
  switch i8 %i.f, label %bb.ce [
    i8 0, label %bb.b
    i8 4, label %bb.d
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 3, label %bb.k
    i8 2, label %bb.n
    i8 8, label %bb.al
    i8 1, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.ce

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !165  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef zeroext 90)
  br label %bb.ce

bb.d:                                             ; preds = %bb.a
  br i1 %4, label %bb.e, label %bb.ce

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !165  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !81, !range !64, !noundef !65
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = select i1 %i.o, i8 84, i8 70
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext %i.p)
  br label %bb.ce

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !81
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIlTnNSt9enable_ifIXaasr3std9is_signedIT_EE5valuentsr3std17is_floating_pointISJ_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i1 noundef zeroext %4, i1 noundef zeroext %5)
  br label %bb.ce

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixImTnNSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v, i1 noundef zeroext %4, i1 noundef zeroext %5)
  br label %bb.ce

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !81 ; 2 uses
  br i1 %4, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !165  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef zeroext 68), !inline_history !2087
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store double %i.x, ptr %8, align 8
  %i.ac = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.ad = zext i1 %5 to i8
  %.not.i.i = icmp eq i8 %i.ac, %i.ad
  br i1 %.not.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSJ_bb.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.j
  %20 = bitcast double %i.x to i64
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  store i64 %21, ptr %8, align 8, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSJ_bb.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvSJ_bb.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %8, i64 noundef 8), !inline_history !2088
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ce

bb.k:                                             ; preds = %bb.a
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i8 noundef zeroext 83)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !75
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixImTnNSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aq, i1 noundef zeroext true, i1 noundef zeroext %5)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !165 ; 2 uses
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !75
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef %i.au, i64 noundef %i.aw)
  br label %bb.ce

bb.n:                                             ; preds = %bb.a
  br i1 %4, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !165 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !56
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef zeroext 91)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %3, label %bb.q, label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !225 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !225
  %i.bj = icmp eq ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.ah, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2118)
  store ptr %1, ptr %7, align 8, !tbaa !300, !alias.scope !2118
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !alias.scope !2118
  store i64 -9223372036854775808, ptr %i.bl, align 8, !tbaa !301, !alias.scope !2118
  %i.bm = load i8, ptr %1, align 8, !tbaa !91, !noalias !2118
  switch i8 %i.bm, label %bb.v [
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 0, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !279, !noalias !2118
  store ptr %i.bo, ptr %i.bk, align 8, !tbaa !193, !alias.scope !2118
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

bb.t:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bg, ptr %i.bp, align 8, !tbaa !225, !alias.scope !2118
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

bb.u:                                             ; preds = %bb.r
  store i64 1, ptr %i.bl, align 8, !tbaa !301, !alias.scope !2118
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

bb.v:                                             ; preds = %bb.r
  store i64 0, ptr %i.bl, align 8, !tbaa !301, !alias.scope !2118
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit: ; preds = %bb.s, %bb.t, %bb.u, %bb.v
  %i.bq = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.br = call noundef zeroext i8 @_ZNK8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE13ubjson_prefixERKSF_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i1 noundef zeroext %5) #29 ; 2 uses
  store i8 %i.br, ptr %i.a, align 1, !tbaa !81
  %i.bs = load i8, ptr %1, align 8, !tbaa !91, !noalias !2119
  switch i8 %i.bs, label %bb.y [
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  ]

bb.w:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit
  %i.bt = load ptr, ptr %i.be, align 8, !tbaa !81, !noalias !2119
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !279, !noalias !2119
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

bb.x:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !81, !noalias !2119
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !225, !noalias !2119
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

bb.y:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit, %bb.w, %bb.x, %bb.y
  %.sroa.8255.0 = phi i64 [ 0, %bb.y ], [ -9223372036854775808, %bb.w ], [ -9223372036854775808, %bb.x ], [ 1, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit ]
  %.sroa.7254.0 = phi ptr [ null, %bb.y ], [ null, %bb.w ], [ %i.bx, %bb.x ], [ null, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit ]
  %.sroa.4.0 = phi ptr [ null, %bb.y ], [ %i.bv, %bb.w ], [ null, %bb.x ], [ null, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5frontEv.exit ]
  store ptr %1, ptr %9, align 8, !tbaa !300, !alias.scope !2120
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.4.0, ptr %i.by, align 8, !tbaa !193
  %.sroa.7254.8..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %.sroa.7254.0, ptr %.sroa.7254.8..sroa_idx, align 8, !tbaa !225
  %.sroa.8255.8..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %.sroa.8255.0, ptr %.sroa.8255.8..sroa_idx, align 8, !tbaa !68
  %i.bz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 1) ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2121)
  call void @llvm.experimental.noalias.scope.decl(metadata !2122)
  store ptr %1, ptr %10, align 8, !tbaa !300, !alias.scope !2123
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !alias.scope !2123
  store i64 -9223372036854775808, ptr %i.cb, align 8, !tbaa !301, !alias.scope !2123
  %i.cc = load i8, ptr %1, align 8, !tbaa !91, !noalias !2123
  switch i8 %i.cc, label %bb.ab [
    i8 1, label %bb.z
    i8 2, label %bb.aa
  ]

bb.z:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  %i.cd = load ptr, ptr %i.be, align 8, !tbaa !81, !noalias !2123
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.ca, align 8, !tbaa !193, !alias.scope !2123
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.aa:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  %i.cf = load ptr, ptr %i.be, align 8, !tbaa !81, !noalias !2123
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !225, !noalias !2123
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !225, !alias.scope !2123
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

bb.ab:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit
  store i64 1, ptr %i.cb, align 8, !tbaa !301, !alias.scope !2123
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %.sroa.451.8.insert.shift = select i1 %5, i64 256, i64 0
  %.sroa.250.8.insert.ext = zext i8 %i.br to i64
  %.sroa.250.8.insert.insert = or disjoint i64 %.sroa.451.8.insert.shift, %.sroa.250.8.insert.ext
  %i.cj = call noundef zeroext i1 @_ZSt6all_ofIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E_EbT_SO_T0_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %9, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %10, ptr nonnull %0, i64 %.sroa.250.8.insert.insert)
  %i.ck = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %bb.ac unwind label %_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIhSaIhEED2Ev.exit.i:           ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store <8 x i8> <i8 91, i8 123, i8 83, i8 72, i8 84, i8 70, i8 78, i8 90>, ptr %i.ck, align 1
  br i1 %i.cj, label %bb.ad, label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  br i1 %5, label %bb.ae, label %.critedge184

bb.ae:                                            ; preds = %bb.ad
  %i.cn = invoke ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_(ptr nonnull %i.ck, ptr nonnull %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.af unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit202

bb.af:                                            ; preds = %bb.ae
  %.not276 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not276, label %.critedge184, label %_ZNSt6vectorIhSaIhEED2Ev.exit

.critedge184:                                     ; preds = %bb.ad, %bb.af
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !165 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixIlTnNSt9enable_ifIXaasr3std9is_signedIT_EE5valuentsr3std17is_floating_pointISJ_EE5valueEiE4typeELi0EEEvSJ_bb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i16 %i.y, ptr %8, align 2
  %i.z = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.aa = zext i1 %3 to i8
  %.not.i = icmp eq i8 %i.z, %i.aa
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.ab = lshr i64 %1, 8
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = trunc i64 %1 to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 1
  store i8 %i.ac, ptr %8, align 2, !tbaa !81
  store i8 %i.ad, ptr %.012.i.i.i, align 1, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit: ; preds = %bb.m, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %8, i64 noundef 2), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.aa

.thread91:                                        ; preds = %bb.k
  br i1 %3, label %bb.n, label %.thread111

bb.n:                                             ; preds = %.thread91
  %.not41 = icmp samesign ugt i64 %1, 65535
  br i1 %.not41, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i8 noundef zeroext 117)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = trunc nuw i64 %1 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i16 %i.an, ptr %7, align 2
  %i.ao = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i50.not = icmp eq i8 %i.ao, 0
  br i1 %.not.i50.not, label %.lr.ph.i.i.i51, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

.lr.ph.i.i.i51:                                   ; preds = %bb.q
  %i.ap = lshr i64 %1, 8
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = trunc i64 %1 to i8
  %.012.i.i.i52 = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.aq, ptr %7, align 2, !tbaa !81
  store i8 %i.ar, ptr %.012.i.i.i52, align 1, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit: ; preds = %bb.q, %.lr.ph.i.i.i51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !165 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %7, i64 noundef 2), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aa

bb.r:                                             ; preds = %bb.j
  %.not42 = icmp samesign ult i64 %1, -2147483648
  br i1 %.not42, label %.thread106.thread, label %.thread103

bb.s:                                             ; preds = %bb.n
  %.not43 = icmp samesign ugt i64 %1, 2147483647
  br i1 %.not43, label %.thread106, label %.thread103

.thread111:                                       ; preds = %.thread91
  %.not43112 = icmp samesign ugt i64 %1, 2147483647
  br i1 %.not43112, label %.thread106.thread, label %.thread103

.thread103:                                       ; preds = %.thread111, %bb.r, %bb.s
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.thread103
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !165 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !56
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef zeroext 108)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread103
  %i.bb = trunc nsw i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store i32 %i.bb, ptr %6, align 4
  %i.bc = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.bd = zext i1 %3 to i8
  %.not.i53 = icmp eq i8 %i.bc, %i.bd
  br i1 %.not.i53, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.u
  %i.be = lshr i64 %1, 16
  %i.bf = trunc i64 %i.be to i8
  %i.bg = lshr i64 %1, 8
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = lshr i64 %1, 24
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = trunc i64 %1 to i8
  %.012.i.i.i55 = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %i.bj, ptr %6, align 4, !tbaa !81
  store i8 %i.bk, ptr %.012.i.i.i55, align 1, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bl, align 1, !tbaa !81
  store i8 %i.bh, ptr %.0.i.i.i, align 2, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit: ; preds = %bb.u, %.lr.ph.i.i.i54
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !165 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %6, i64 noundef 4), !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.aa

.thread106:                                       ; preds = %bb.s
  %.not45 = icmp samesign ugt i64 %1, 4294967295
  br i1 %.not45, label %.thread106.thread, label %bb.v

bb.v:                                             ; preds = %.thread106
  br i1 %2, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !165 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !56
  %i.bu = load ptr, ptr %i.bt, align 8
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i8 noundef zeroext 109)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bv = trunc nuw i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i32 %i.bv, ptr %5, align 4
  %i.bw = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i56.not = icmp eq i8 %i.bw, 0
  br i1 %.not.i56.not, label %.lr.ph.i.i.i57, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit

.lr.ph.i.i.i57:                                   ; preds = %bb.x
  %i.bx = lshr i64 %1, 16
  %i.by = trunc i64 %i.bx to i8
  %i.bz = lshr i64 %1, 8
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = lshr i64 %1, 24
  %i.cc = trunc nuw i64 %i.cb to i8
  %i.cd = trunc i64 %1 to i8
  %.012.i.i.i58 = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.cc, ptr %5, align 4, !tbaa !81
  store i8 %i.cd, ptr %.012.i.i.i58, align 1, !tbaa !81
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.0.i.i.i59 = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.by, ptr %i.ce, align 1, !tbaa !81
  store i8 %i.ca, ptr %.0.i.i.i59, align 2, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit: ; preds = %bb.x, %.lr.ph.i.i.i57
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !165 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %5, i64 noundef 4), !inline_history !302
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.aa

.thread106.thread:                                ; preds = %bb.r, %.thread111, %.thread106
  br i1 %2, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread106.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !165 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef zeroext 76)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread106.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i64 %1, ptr %4, align 8
  %i.co = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.cp = zext i1 %3 to i8
  %.not.i60 = icmp eq i8 %i.co, %i.cp
  br i1 %.not.i60, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %bb.z
  %11 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %11, ptr %4, align 8, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit: ; preds = %bb.z, %.lr.ph.i.i.i61
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !165 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull %4, i64 noundef 8), !inline_history !303
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.aa

bb.aa:                                            ; preds = %bb.i, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE31write_number_with_ubjson_prefixImTnNSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEiE4typeELi0EEEvSJ_bb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.192", align 4   ; 8 uses
  %5 = alloca %"struct.std::array.191", align 2   ; 6 uses
  %6 = alloca %"struct.std::array.191", align 2   ; 6 uses
  %7 = alloca %"struct.std::array.190", align 1   ; 4 uses
  %8 = alloca %"struct.std::array.190", align 1   ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %.not = icmp ugt i64 %1, 127
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 105)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = trunc nuw nsw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i8 %i.e, ptr %8, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !165  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %8, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.al

bb.e:                                             ; preds = %bb.a
  %.not31 = icmp ugt i64 %1, 255
  br i1 %.not31, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !165  ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext 85)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = trunc nuw i64 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i8 %i.o, ptr %7, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !165  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %7, i64 noundef 1), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.al

bb.i:                                             ; preds = %bb.e
  %.not32 = icmp ugt i64 %1, 32767
  br i1 %.not32, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !165  ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !56
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext 73)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = trunc nuw nsw i64 %1 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store i16 %i.y, ptr %6, align 2
  %i.z = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.aa = zext i1 %3 to i8
  %.not.i = icmp eq i8 %i.z, %i.aa
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l
  %i.ab = lshr i64 %1, 8
  %i.ac = trunc nuw nsw i64 %i.ab to i8
  %i.ad = trunc i64 %1 to i8
  %.012.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.ac, ptr %6, align 2, !tbaa !81
  store i8 %i.ad, ptr %.012.i.i.i, align 1, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIsEEvT_b.exit: ; preds = %bb.l, %.lr.ph.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %6, i64 noundef 2), !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.al

bb.m:                                             ; preds = %bb.i
  br i1 %3, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %.not33 = icmp ugt i64 %1, 65535
  br i1 %.not33, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %2, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i8 noundef zeroext 117)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = trunc nuw i64 %1 to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store i16 %i.an, ptr %5, align 2
  %i.ao = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i40.not = icmp eq i8 %i.ao, 0
  br i1 %.not.i40.not, label %.lr.ph.i.i.i41, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

.lr.ph.i.i.i41:                                   ; preds = %bb.q
  %i.ap = lshr i64 %1, 8
  %i.aq = trunc nuw i64 %i.ap to i8
  %i.ar = trunc i64 %1 to i8
  %.012.i.i.i42 = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.aq, ptr %5, align 2, !tbaa !81
  store i8 %i.ar, ptr %.012.i.i.i42, align 1, !tbaa !81
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberItEEvT_b.exit: ; preds = %bb.q, %.lr.ph.i.i.i41
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !165 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull %5, i64 noundef 2), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.al

bb.r:                                             ; preds = %bb.n
  %.not34 = icmp ugt i64 %1, 2147483647
  br i1 %.not34, label %bb.v, label %bb.s

.thread:                                          ; preds = %bb.m
  %.not3464 = icmp ugt i64 %1, 2147483647
  br i1 %.not3464, label %.thread65, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  br i1 %2, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !165 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !56
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef zeroext 108)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = trunc nuw nsw i64 %1 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 %i.bb, ptr %4, align 4
  %i.bc = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.bd = zext i1 %3 to i8
  %.not.i43 = icmp eq i8 %i.bc, %i.bd
  br i1 %.not.i43, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIiEEvT_b.exit, label %.lr.ph.i.i.i44

.lr.ph.i.i.i44:                                   ; preds = %bb.u
  %i.be = lshr i64 %1, 16
  %i.bf = trunc i64 %i.be to i8
end_hunk_1
begin_hunk_2_@_ZSt4findIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEhET_S7_S7_RKT0_:bb.a
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !81      ; 4 uses
  %i.g = and i64 %i.c, -4
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.g ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.052.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i = phi ptr [ %0, %.lr.ph.i.i ], [ %i.s, %bb.f ] ; 9 uses
  %i.h = load i8, ptr %.sroa.032.051.i.i, align 1, !tbaa !81
  %i.i = icmp eq i8 %i.h, %i.f
  br i1 %i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !81
  %i.l = icmp eq i8 %i.k, %i.f
  br i1 %i.l, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !81
  %i.o = icmp eq i8 %i.n, %i.f
  br i1 %i.o, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !81
  %i.r = icmp eq i8 %i.q, %i.f
  br i1 %i.r, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 4
  %i.t = add nsw i64 %.052.i.i, -1
  %i.u = icmp sgt i64 %.052.i.i, 1
  br i1 %i.u, label %bb.b, label %._crit_edge.loopexit.i.i, !llvm.loop !2146

._crit_edge.loopexit.i.i:                         ; preds = %bb.f
  %.pre59.i.i = ptrtoint ptr %scevgep.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %.pre-phi.i.i = phi i64 [ %.pre59.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ]
  %.sroa.032.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %._crit_edge.loopexit.i.i ], [ %0, %bb.a ] ; 5 uses
  %i.v = sub i64 %i.a, %.pre-phi.i.i
  switch i64 %i.v, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i
  ]

._crit_edge._crit_edge57.i.i:                     ; preds = %._crit_edge.i.i
  %.pre58.i.i = load i8, ptr %2, align 1, !tbaa !81
  br label %bb.k

._crit_edge._crit_edge.i.i:                       ; preds = %._crit_edge.i.i
  %.pre.i.i = load i8, ptr %2, align 1, !tbaa !81
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %.sroa.032.0.lcssa.i.i, align 1, !tbaa !81
  %i.x = load i8, ptr %2, align 1, !tbaa !81      ; 2 uses
  %i.y = icmp eq i8 %i.w, %i.x
  br i1 %i.y, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i, i64 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge._crit_edge.i.i
  %i.aa = phi i8 [ %i.x, %bb.h ], [ %.pre.i.i, %._crit_edge._crit_edge.i.i ] ; 2 uses
  %.sroa.032.1.i.i = phi ptr [ %i.z, %bb.h ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge.i.i ] ; 3 uses
  %i.ab = load i8, ptr %.sroa.032.1.i.i, align 1, !tbaa !81
  %i.ac = icmp eq i8 %i.ab, %i.aa
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge._crit_edge57.i.i
  %i.ae = phi i8 [ %i.aa, %bb.j ], [ %.pre58.i.i, %._crit_edge._crit_edge57.i.i ]
  %.sroa.032.2.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i, %._crit_edge._crit_edge57.i.i ] ; 2 uses
  %i.af = load i8, ptr %.sroa.032.2.i.i, align 1, !tbaa !81
  %i.ag = icmp eq i8 %i.af, %i.ae
  %spec.select.i.i = select i1 %i.ag, ptr %.sroa.032.2.i.i, ptr %1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 1
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 2
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 3
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit: ; preds = %bb.b, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23, %._crit_edge.i.i, %bb.g, %bb.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i = phi ptr [ %.sroa.032.1.i.i, %bb.i ], [ %spec.select.i.i, %bb.k ], [ %1, %._crit_edge.i.i ], [ %.sroa.032.0.lcssa.i.i, %bb.g ], [ %i.aj, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit23 ], [ %i.ah, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit ], [ %i.ai, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEENS0_5__ops16_Iter_equals_valIKhEEET_SB_SB_T0_.exit.loopexit.split.loop.exit21 ], [ %.sroa.032.051.i.i, %bb.b ]
  ret ptr %.sroa.08.0.in.sroa.speculated.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.1.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 4 uses
  %.0811.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %.19.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !75   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i, 0            ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 5 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !193 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i, label %bb.b, !llvm.loop !7

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.o = icmp eq ptr %.19.i.i, %i.c
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !75   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i, 0
  %spec.select.i = select i1 %i.w, ptr %i.c, ptr %.19.i.i
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE4findERS7_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i ], [ %spec.select.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20write_bjdata_ndarrayERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEEbbNS1_16bjdata_version_tE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i:
  %5 = alloca %"struct.std::array.193", align 8   ; 5 uses
  %6 = alloca %"struct.std::array.192", align 4   ; 5 uses
  %7 = alloca %"struct.std::array.193", align 8   ; 5 uses
  %8 = alloca %"struct.std::array.193", align 8   ; 5 uses
  %9 = alloca %"struct.std::array.192", align 4   ; 8 uses
  %10 = alloca %"struct.std::array.192", align 4  ; 8 uses
  %11 = alloca %"struct.std::array.191", align 2  ; 6 uses
  %12 = alloca %"struct.std::array.191", align 2  ; 6 uses
  %13 = alloca %"struct.std::array.190", align 1  ; 4 uses
  %14 = alloca %"struct.std::array.190", align 1  ; 4 uses
  %15 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned char>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 15 uses
  %16 = alloca %"class.std::map.195", align 8     ; 24 uses
  %17 = alloca [12 x %"struct.std::pair.201"], align 8 ; 112 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 28 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %21 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 8 uses
  %22 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %23 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %24 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %25 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %26 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %27 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %28 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %29 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %30 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %31 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %32 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %33 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %34 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %35 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %36 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %37 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %38 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %39 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %40 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %41 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.a = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %i.a, ptr %17, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.304, i64 5, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 5, ptr %i.b, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %17, i64 21
  store i8 0, ptr %i.c, align 1, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %17, i64 32
  store i8 85, ptr %i.d, align 8, !tbaa !309
  %i.e = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !136
  store i32 947154537, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i64 4, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %17, i64 60
  store i8 0, ptr %i.h, align 4, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 72
  store i8 105, ptr %i.i, align 8, !tbaa !309
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.k, ptr noundef nonnull align 1 dereferenceable(6) @.str.309, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 88
  store i64 6, ptr %i.l, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %17, i64 102
  store i8 0, ptr %i.m, align 2, !tbaa !81
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 112
  store i8 117, ptr %i.n, align 8, !tbaa !309
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %17, i64 136 ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) @.str.311, i64 5, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 128
  store i64 5, ptr %i.q, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 141
  store i8 0, ptr %i.r, align 1, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 152
  store i8 73, ptr %i.s, align 8, !tbaa !309
  %i.t = getelementptr inbounds nuw i8, ptr %17, i64 160 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %17, i64 176 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.u, ptr noundef nonnull align 1 dereferenceable(6) @.str.313, i64 6, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 168
  store i64 6, ptr %i.v, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %17, i64 182
  store i8 0, ptr %i.w, align 2, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 192
  store i8 109, ptr %i.x, align 8, !tbaa !309
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 200 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 216 ; 2 uses
  store ptr %i.z, ptr %i.y, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.z, ptr noundef nonnull align 1 dereferenceable(5) @.str.315, i64 5, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 208
  store i64 5, ptr %i.aa, align 8, !tbaa !75
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 221
  store i8 0, ptr %i.ab, align 1, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 232
  store i8 108, ptr %i.ac, align 8, !tbaa !309
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 240 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 256 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ae, ptr noundef nonnull align 1 dereferenceable(6) @.str.317, i64 6, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 248
  store i64 6, ptr %i.af, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 262
  store i8 0, ptr %i.ag, align 2, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 272
  store i8 77, ptr %i.ah, align 8, !tbaa !309
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 280 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 296 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aj, ptr noundef nonnull align 1 dereferenceable(5) @.str.319, i64 5, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 288
  store i64 5, ptr %i.ak, align 8, !tbaa !75
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 301
  store i8 0, ptr %i.al, align 1, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 312
  store i8 76, ptr %i.am, align 8, !tbaa !309
  %i.an = getelementptr inbounds nuw i8, ptr %17, i64 320 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 336 ; 2 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ao, ptr noundef nonnull align 1 dereferenceable(6) @.str.321, i64 6, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 328
  store i64 6, ptr %i.ap, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 342
  store i8 0, ptr %i.aq, align 2, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 352
  store i8 100, ptr %i.ar, align 8, !tbaa !309
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 376 ; 2 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.at, ptr noundef nonnull align 1 dereferenceable(6) @.str.323, i64 6, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 368
  store i64 6, ptr %i.au, align 8, !tbaa !75
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 382
  store i8 0, ptr %i.av, align 2, !tbaa !81
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 392
  store i8 68, ptr %i.aw, align 8, !tbaa !309
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 400 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 416 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !136
  store i32 1918986339, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 408
  store i64 4, ptr %i.az, align 8, !tbaa !75
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 420
  store i8 0, ptr %i.ba, align 4, !tbaa !81
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 432
  store i8 67, ptr %i.bb, align 8, !tbaa !309
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 440 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %17, i64 456 ; 2 uses
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !136
  store i32 1702132066, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %17, i64 448
  store i64 4, ptr %i.be, align 8, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %17, i64 460
  store i8 0, ptr %i.bf, align 4, !tbaa !81
  %i.bg = getelementptr inbounds nuw i8, ptr %17, i64 472
  store i8 66, ptr %i.bg, align 8, !tbaa !309
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 21 uses
  store i32 0, ptr %i.bh, align 8, !tbaa !310
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !190
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %i.bh, ptr %i.bj, align 8, !tbaa !279
  %i.bk = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !280
  %i.bl = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i64 0, ptr %i.bl, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  store ptr %16, ptr %15, align 8, !tbaa !2324
  %i.bm = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %17, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i unwind label %.body  ; 0 uses

.noexc.i:                                         ; preds = %._crit_edge.i.i.i
  %i.bn = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.1 unwind label %.body ; 0 uses

.noexc.i.1:                                       ; preds = %.noexc.i
  %i.bo = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.2 unwind label %.body ; 0 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  %i.bp = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.3 unwind label %.body ; 0 uses

.noexc.i.3:                                       ; preds = %.noexc.i.2
  %i.bq = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.4 unwind label %.body ; 0 uses

.noexc.i.4:                                       ; preds = %.noexc.i.3
  %i.br = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.5 unwind label %.body ; 0 uses

.noexc.i.5:                                       ; preds = %.noexc.i.4
  %i.bs = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.6 unwind label %.body ; 0 uses

.noexc.i.6:                                       ; preds = %.noexc.i.5
  %i.bt = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_insert_unique_IRKS8_NSE_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EOT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr nonnull %i.bh, ptr noundef nonnull align 8 dereferenceable(33) %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc.i.7 unwind label %.body ; 0 uses

.noexc.i.7:                                       ; preds = %.noexc.i.6
end_hunk_2
begin_hunk_3_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE20write_bjdata_ndarrayERKS4_ISB_SF_St4lessISB_ESaISt4pairIKSB_SF_EEEbbNS1_16bjdata_version_tE:._crit_edge.i.i.i
  %.012.i.i.i317 = getelementptr inbounds nuw i8, ptr %9, i64 3
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 1
  %.0.i.i.i318 = getelementptr inbounds nuw i8, ptr %9, i64 2
  %i.uo = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit312
  %i.up = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.cq unwind label %bb.cx

bb.cq:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323
  br i1 %i.up, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %bb.er

bb.cs:                                            ; preds = %bb.cq
  %i.uq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.us = load i64, ptr %i.ur, align 8, !tbaa !81 ; 5 uses
  %i.ut = trunc i64 %i.us to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store i32 %i.ut, ptr %9, align 4
  %i.uu = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i315.not = icmp eq i8 %i.uu, 0
  br i1 %.not.i315.not, label %.lr.ph.i.i.i316, label %_ZSt7reverseIPhEvT_S1_.exit.i319

.lr.ph.i.i.i316:                                  ; preds = %bb.ct
  %i.uv = lshr i64 %i.us, 16
  %i.uw = trunc i64 %i.uv to i8
  %i.ux = lshr i64 %i.us, 8
  %i.uy = trunc i64 %i.ux to i8
  %i.uz = lshr i64 %i.us, 24
  %i.va = trunc i64 %i.uz to i8
  %i.vb = trunc i64 %i.us to i8
  store i8 %i.va, ptr %9, align 4, !tbaa !81
  store i8 %i.vb, ptr %.012.i.i.i317, align 1, !tbaa !81
  store i8 %i.uw, ptr %i.un, align 1, !tbaa !81
  store i8 %i.uy, ptr %.0.i.i.i318, align 2, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit.i319

_ZSt7reverseIPhEvT_S1_.exit.i319:                 ; preds = %.lr.ph.i.i.i316, %bb.ct
  %i.vc = load ptr, ptr %i.jm, align 8, !tbaa !165 ; 2 uses
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !56
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8
  invoke void %i.vf(ptr noundef nonnull align 8 dereferenceable(8) %i.vc, ptr noundef nonnull %9, i64 noundef 4)
          to label %bb.cu unwind label %bb.cx, !inline_history !13

bb.cu:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.vg = load ptr, ptr %32, align 8, !tbaa !300
  %i.vh = load i8, ptr %i.vg, align 8, !tbaa !91
  switch i8 %i.vh, label %bb.cw [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i321
    i8 2, label %bb.cv
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i321: ; preds = %bb.cu
  %.promoted11.i.i322 = load ptr, ptr %i.tn, align 8, !tbaa !305
  %i.vi = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i322) #34
  store ptr %i.vi, ptr %i.tn, align 8, !tbaa !305
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i321, %bb.cv, %bb.cw
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323

bb.cv:                                            ; preds = %bb.cu
  %i.vj = load ptr, ptr %i.uo, align 8, !tbaa !306
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store ptr %i.vk, ptr %i.uo, align 8, !tbaa !306
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge

bb.cw:                                            ; preds = %bb.cu
  %i.vl = load i64, ptr %i.to, align 8, !tbaa !301
  %i.vm = add nsw i64 %i.vl, 1
  store i64 %i.vm, ptr %i.to, align 8, !tbaa !301
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323.backedge

bb.cx:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i319, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit323, %bb.cs
  %i.vn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %bb.et

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.vo = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.cz unwind label %bb.ek     ; 9 uses

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2380)
  call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  store ptr %i.vo, ptr %34, align 8, !tbaa !300, !alias.scope !2382
  %i.vp = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vp, i8 0, i64 16, i1 false), !alias.scope !2382
  store i64 -9223372036854775808, ptr %i.vq, align 8, !tbaa !301, !alias.scope !2382
  %i.vr = load i8, ptr %i.vo, align 8, !tbaa !91, !noalias !2382
  switch i8 %i.vr, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread459
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread460
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread459: ; preds = %bb.cz
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !81, !noalias !2382
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !279, !noalias !2382
  store ptr %i.vv, ptr %i.vp, align 8, !tbaa !193, !alias.scope !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  store ptr %i.vo, ptr %35, align 8, !tbaa !300, !alias.scope !2383
  %i.vw = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %35, i64 24
  %i.vy = getelementptr inbounds nuw i8, ptr %35, i64 16
  store i64 0, ptr %i.vy, align 8
  store i64 -9223372036854775808, ptr %i.vx, align 8, !tbaa !301, !alias.scope !2383
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !81, !noalias !2384
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  store ptr %i.wb, ptr %i.vw, align 8, !tbaa !193, !alias.scope !2384
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread460: ; preds = %bb.cz
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !81, !noalias !2382
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !225, !noalias !2382
  %i.wf = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.we, ptr %i.wf, align 8, !tbaa !225, !alias.scope !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  store ptr %i.vo, ptr %35, align 8, !tbaa !300, !alias.scope !2385
  %i.wg = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i64 0, ptr %i.wg, align 8
  store i64 -9223372036854775808, ptr %i.wh, align 8, !tbaa !301, !alias.scope !2385
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !81, !noalias !2384
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !225, !noalias !2384
  %i.wm = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr %i.wl, ptr %i.wm, align 8, !tbaa !225, !alias.scope !2384
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread: ; preds = %bb.cz
  store i64 1, ptr %i.vq, align 8, !tbaa !301, !alias.scope !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  br label %bb.da

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324: ; preds = %bb.cz
  store i64 0, ptr %i.vq, align 8, !tbaa !301, !alias.scope !2382
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2386)
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  br label %bb.da

bb.da:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread
  store ptr %i.vo, ptr %35, align 8, !tbaa !300
  %i.wn = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %35, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wn, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.wo, align 8, !tbaa !301, !alias.scope !2384
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread459, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit324.thread460, %bb.da
  %i.wp = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit325
  %i.wq = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.db unwind label %bb.di

bb.db:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336
  br i1 %i.wq, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br label %bb.er

bb.dd:                                            ; preds = %bb.db
  %i.wr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i64 %i.wt, ptr %8, align 8
  %i.wu = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i328.not = icmp eq i8 %i.wu, 0
  br i1 %.not.i328.not, label %.lr.ph.i.i.i329, label %_ZSt7reverseIPhEvT_S1_.exit.i332

.lr.ph.i.i.i329:                                  ; preds = %bb.de
  %42 = call i64 @llvm.bswap.i64(i64 %i.wt)
  store i64 %42, ptr %8, align 8, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit.i332

_ZSt7reverseIPhEvT_S1_.exit.i332:                 ; preds = %.lr.ph.i.i.i329, %bb.de
  %i.wv = load ptr, ptr %i.jm, align 8, !tbaa !165 ; 2 uses
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !56
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8
  invoke void %i.wy(ptr noundef nonnull align 8 dereferenceable(8) %i.wv, ptr noundef nonnull %8, i64 noundef 8)
          to label %bb.df unwind label %bb.di, !inline_history !2388

bb.df:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %i.wz = load ptr, ptr %34, align 8, !tbaa !300
  %i.xa = load i8, ptr %i.wz, align 8, !tbaa !91
  switch i8 %i.xa, label %bb.dh [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i334
    i8 2, label %bb.dg
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i334: ; preds = %bb.df
  %.promoted11.i.i335 = load ptr, ptr %i.vp, align 8, !tbaa !305
  %i.xb = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i335) #34
  store ptr %i.xb, ptr %i.vp, align 8, !tbaa !305
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i334, %bb.dg, %bb.dh
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336

bb.dg:                                            ; preds = %bb.df
  %i.xc = load ptr, ptr %i.wp, align 8, !tbaa !306
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store ptr %i.xd, ptr %i.wp, align 8, !tbaa !306
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge

bb.dh:                                            ; preds = %bb.df
  %i.xe = load i64, ptr %i.vq, align 8, !tbaa !301
  %i.xf = add nsw i64 %i.xe, 1
  store i64 %i.xf, ptr %i.vq, align 8, !tbaa !301
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336.backedge

bb.di:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i332, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit336, %bb.dd
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br label %bb.et

bb.dj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.xh = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.dk unwind label %bb.ek     ; 9 uses

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2389)
  call void @llvm.experimental.noalias.scope.decl(metadata !2390)
  store ptr %i.xh, ptr %36, align 8, !tbaa !300, !alias.scope !2391
  %i.xi = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xi, i8 0, i64 16, i1 false), !alias.scope !2391
  store i64 -9223372036854775808, ptr %i.xj, align 8, !tbaa !301, !alias.scope !2391
  %i.xk = load i8, ptr %i.xh, align 8, !tbaa !91, !noalias !2391
  switch i8 %i.xk, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread461
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread462
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread461: ; preds = %bb.dk
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !81, !noalias !2391
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !279, !noalias !2391
  store ptr %i.xo, ptr %i.xi, align 8, !tbaa !193, !alias.scope !2391
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  store ptr %i.xh, ptr %37, align 8, !tbaa !300, !alias.scope !2392
  %i.xp = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.xq = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.xr = getelementptr inbounds nuw i8, ptr %37, i64 16
  store i64 0, ptr %i.xr, align 8
  store i64 -9223372036854775808, ptr %i.xq, align 8, !tbaa !301, !alias.scope !2392
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !81, !noalias !2393
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  store ptr %i.xu, ptr %i.xp, align 8, !tbaa !193, !alias.scope !2393
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread462: ; preds = %bb.dk
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !81, !noalias !2391
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !225, !noalias !2391
  %i.xy = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.xx, ptr %i.xy, align 8, !tbaa !225, !alias.scope !2391
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  store ptr %i.xh, ptr %37, align 8, !tbaa !300, !alias.scope !2394
  %i.xz = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ya = getelementptr inbounds nuw i8, ptr %37, i64 24
  store i64 0, ptr %i.xz, align 8
  store i64 -9223372036854775808, ptr %i.ya, align 8, !tbaa !301, !alias.scope !2394
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !81, !noalias !2393
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !225, !noalias !2393
  %i.yf = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr %i.ye, ptr %i.yf, align 8, !tbaa !225, !alias.scope !2393
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread: ; preds = %bb.dk
  store i64 1, ptr %i.xj, align 8, !tbaa !301, !alias.scope !2391
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  br label %bb.dl

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337: ; preds = %bb.dk
  store i64 0, ptr %i.xj, align 8, !tbaa !301, !alias.scope !2391
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread
  store ptr %i.xh, ptr %37, align 8, !tbaa !300
  %i.yg = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.yh = getelementptr inbounds nuw i8, ptr %37, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yg, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.yh, align 8, !tbaa !301, !alias.scope !2393
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread461, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit337.thread462, %bb.dl
  %i.yi = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit338
  %i.yj = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %37)
          to label %bb.dm unwind label %bb.dt

bb.dm:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351
  br i1 %i.yj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  br label %bb.er

bb.do:                                            ; preds = %bb.dm
  %i.yk = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.ym = load i64, ptr %i.yl, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i64 %i.ym, ptr %7, align 8
  %i.yn = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i341.not = icmp eq i8 %i.yn, 0
  br i1 %.not.i341.not, label %.lr.ph.i.i.i342, label %_ZSt7reverseIPhEvT_S1_.exit.i347

.lr.ph.i.i.i342:                                  ; preds = %bb.dp
  %43 = call i64 @llvm.bswap.i64(i64 %i.ym)
  store i64 %43, ptr %7, align 8, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit.i347

_ZSt7reverseIPhEvT_S1_.exit.i347:                 ; preds = %.lr.ph.i.i.i342, %bb.dp
  %i.yo = load ptr, ptr %i.jm, align 8, !tbaa !165 ; 2 uses
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !56
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8
  invoke void %i.yr(ptr noundef nonnull align 8 dereferenceable(8) %i.yo, ptr noundef nonnull %7, i64 noundef 8)
          to label %bb.dq unwind label %bb.dt, !inline_history !303

bb.dq:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.ys = load ptr, ptr %36, align 8, !tbaa !300
  %i.yt = load i8, ptr %i.ys, align 8, !tbaa !91
  switch i8 %i.yt, label %bb.ds [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i349
    i8 2, label %bb.dr
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i349: ; preds = %bb.dq
  %.promoted11.i.i350 = load ptr, ptr %i.xi, align 8, !tbaa !305
  %i.yu = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i350) #34
  store ptr %i.yu, ptr %i.xi, align 8, !tbaa !305
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i349, %bb.dr, %bb.ds
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351

bb.dr:                                            ; preds = %bb.dq
  %i.yv = load ptr, ptr %i.yi, align 8, !tbaa !306
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store ptr %i.yw, ptr %i.yi, align 8, !tbaa !306
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge

bb.ds:                                            ; preds = %bb.dq
  %i.yx = load i64, ptr %i.xj, align 8, !tbaa !301
  %i.yy = add nsw i64 %i.yx, 1
  store i64 %i.yy, ptr %i.xj, align 8, !tbaa !301
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351.backedge

bb.dt:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i347, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit351, %bb.do
  %i.yz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  br label %bb.et

bb.du:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.za = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.dv unwind label %bb.ek     ; 9 uses

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  store ptr %i.za, ptr %38, align 8, !tbaa !300, !alias.scope !2399
  %i.zb = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 4 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zb, i8 0, i64 16, i1 false), !alias.scope !2399
  store i64 -9223372036854775808, ptr %i.zc, align 8, !tbaa !301, !alias.scope !2399
  %i.zd = load i8, ptr %i.za, align 8, !tbaa !91, !noalias !2399
  switch i8 %i.zd, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread463
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread464
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread463: ; preds = %bb.dv
  %i.ze = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !81, !noalias !2399
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !279, !noalias !2399
  store ptr %i.zh, ptr %i.zb, align 8, !tbaa !193, !alias.scope !2399
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  store ptr %i.za, ptr %39, align 8, !tbaa !300, !alias.scope !2400
  %i.zi = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zj = getelementptr inbounds nuw i8, ptr %39, i64 24
  %i.zk = getelementptr inbounds nuw i8, ptr %39, i64 16
  store i64 0, ptr %i.zk, align 8
  store i64 -9223372036854775808, ptr %i.zj, align 8, !tbaa !301, !alias.scope !2400
  %i.zl = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !81, !noalias !2401
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  store ptr %i.zn, ptr %i.zi, align 8, !tbaa !193, !alias.scope !2401
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread464: ; preds = %bb.dv
  %i.zo = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !81, !noalias !2399
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !225, !noalias !2399
  %i.zr = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %i.zq, ptr %i.zr, align 8, !tbaa !225, !alias.scope !2399
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  store ptr %i.za, ptr %39, align 8, !tbaa !300, !alias.scope !2402
  %i.zs = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.zt = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 0, ptr %i.zs, align 8
  store i64 -9223372036854775808, ptr %i.zt, align 8, !tbaa !301, !alias.scope !2402
  %i.zu = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !81, !noalias !2401
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !225, !noalias !2401
  %i.zy = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %i.zx, ptr %i.zy, align 8, !tbaa !225, !alias.scope !2401
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread: ; preds = %bb.dv
  store i64 1, ptr %i.zc, align 8, !tbaa !301, !alias.scope !2399
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  br label %bb.dw

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352: ; preds = %bb.dv
  store i64 0, ptr %i.zc, align 8, !tbaa !301, !alias.scope !2399
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2403)
  call void @llvm.experimental.noalias.scope.decl(metadata !2404)
  br label %bb.dw

bb.dw:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread
  store ptr %i.za, ptr %39, align 8, !tbaa !300
  %i.zz = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %39, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zz, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.aaa, align 8, !tbaa !301, !alias.scope !2401
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread463, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit352.thread464, %bb.dw
  %i.aab = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit353
  %i.aac = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %39)
          to label %bb.dx unwind label %bb.ee

bb.dx:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364
  br i1 %i.aac, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %bb.er

bb.dz:                                            ; preds = %bb.dx
  %i.aad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %38)
          to label %bb.ea unwind label %bb.ee

bb.ea:                                            ; preds = %bb.dz
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %i.aaf = load double, ptr %i.aae, align 8, !tbaa !81
  %i.aag = fptrunc double %i.aaf to float         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store float %i.aag, ptr %6, align 4
  %i.aah = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i356.not = icmp eq i8 %i.aah, 0
  br i1 %.not.i356.not, label %.lr.ph.i.i.i357, label %_ZSt7reverseIPhEvT_S1_.exit.i360

.lr.ph.i.i.i357:                                  ; preds = %bb.ea
  %i.aai = bitcast float %i.aag to i32
  %44 = call i32 @llvm.bswap.i32(i32 %i.aai)
  store i32 %44, ptr %6, align 4, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit.i360

_ZSt7reverseIPhEvT_S1_.exit.i360:                 ; preds = %.lr.ph.i.i.i357, %bb.ea
  %i.aaj = load ptr, ptr %i.jm, align 8, !tbaa !165 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !56
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8
  invoke void %i.aam(ptr noundef nonnull align 8 dereferenceable(8) %i.aaj, ptr noundef nonnull %6, i64 noundef 4)
          to label %bb.eb unwind label %bb.ee, !inline_history !2306

bb.eb:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %i.aan = load ptr, ptr %38, align 8, !tbaa !300
  %i.aao = load i8, ptr %i.aan, align 8, !tbaa !91
  switch i8 %i.aao, label %bb.ed [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i362
    i8 2, label %bb.ec
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i362: ; preds = %bb.eb
  %.promoted11.i.i363 = load ptr, ptr %i.zb, align 8, !tbaa !305
  %i.aap = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i363) #34
  store ptr %i.aap, ptr %i.zb, align 8, !tbaa !305
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i362, %bb.ec, %bb.ed
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364

bb.ec:                                            ; preds = %bb.eb
  %i.aaq = load ptr, ptr %i.aab, align 8, !tbaa !306
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  store ptr %i.aar, ptr %i.aab, align 8, !tbaa !306
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge

bb.ed:                                            ; preds = %bb.eb
  %i.aas = load i64, ptr %i.zc, align 8, !tbaa !301
  %i.aat = add nsw i64 %i.aas, 1
  store i64 %i.aat, ptr %i.zc, align 8, !tbaa !301
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364.backedge

bb.ee:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i360, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit364, %bb.dz
  %i.aau = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #29
  br label %bb.et

bb.ef:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260
  %i.aav = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE2atERSH_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.eg unwind label %bb.ek     ; 9 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2405)
  call void @llvm.experimental.noalias.scope.decl(metadata !2406)
  store ptr %i.aav, ptr %40, align 8, !tbaa !300, !alias.scope !2407
  %i.aaw = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aaw, i8 0, i64 16, i1 false), !alias.scope !2407
  store i64 -9223372036854775808, ptr %i.aax, align 8, !tbaa !301, !alias.scope !2407
  %i.aay = load i8, ptr %i.aav, align 8, !tbaa !91, !noalias !2407
  switch i8 %i.aay, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365 [
    i8 1, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread465
    i8 2, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread466
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread
  ]

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread465: ; preds = %bb.eg
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !81, !noalias !2407
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !279, !noalias !2407
  store ptr %i.abc, ptr %i.aaw, align 8, !tbaa !193, !alias.scope !2407
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  store ptr %i.aav, ptr %41, align 8, !tbaa !300, !alias.scope !2408
  %i.abd = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.abe = getelementptr inbounds nuw i8, ptr %41, i64 24
  %i.abf = getelementptr inbounds nuw i8, ptr %41, i64 16
  store i64 0, ptr %i.abf, align 8
  store i64 -9223372036854775808, ptr %i.abe, align 8, !tbaa !301, !alias.scope !2408
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !81, !noalias !2409
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  store ptr %i.abi, ptr %i.abd, align 8, !tbaa !193, !alias.scope !2409
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread466: ; preds = %bb.eg
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !81, !noalias !2407
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !225, !noalias !2407
  %i.abm = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %i.abl, ptr %i.abm, align 8, !tbaa !225, !alias.scope !2407
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  store ptr %i.aav, ptr %41, align 8, !tbaa !300, !alias.scope !2410
  %i.abn = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.abo = getelementptr inbounds nuw i8, ptr %41, i64 24
  store i64 0, ptr %i.abn, align 8
  store i64 -9223372036854775808, ptr %i.abo, align 8, !tbaa !301, !alias.scope !2410
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !81, !noalias !2409
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !225, !noalias !2409
  %i.abt = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !225, !alias.scope !2409
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread: ; preds = %bb.eg
  store i64 1, ptr %i.aax, align 8, !tbaa !301, !alias.scope !2407
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  br label %bb.eh

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365: ; preds = %bb.eg
  store i64 0, ptr %i.aax, align 8, !tbaa !301, !alias.scope !2407
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  call void @llvm.experimental.noalias.scope.decl(metadata !2412)
  br label %bb.eh

bb.eh:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread
  store ptr %i.aav, ptr %41, align 8, !tbaa !300
  %i.abu = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %41, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.abu, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.abv, align 8, !tbaa !301, !alias.scope !2409
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366: ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread465, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5beginEv.exit365.thread466, %bb.eh
  %i.abw = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit366
  %i.abx = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(32) %41)
          to label %bb.ei unwind label %bb.eq

bb.ei:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379
  br i1 %i.abx, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  br label %bb.er

bb.ek:                                            ; preds = %bb.aj, %bb.ah, %bb.t, %bb.f, %bb.du, %bb.dj, %bb.cy, %bb.cn, %bb.cc, %bb.br, %bb.bg, %bb.av, %bb.ak, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5emptyEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit255, %bb.ad, %bb.ae, %bb.af, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit258, %bb.ai, %bb.ef
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.el:                                            ; preds = %bb.ei
  %i.abz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %40)
          to label %bb.em unwind label %bb.eq

bb.em:                                            ; preds = %bb.el
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.acb = load double, ptr %i.aca, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store double %i.acb, ptr %5, align 8
  %i.acc = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %.not.i369.not = icmp eq i8 %i.acc, 0
  br i1 %.not.i369.not, label %.lr.ph.i.i.i370, label %_ZSt7reverseIPhEvT_S1_.exit.i375

.lr.ph.i.i.i370:                                  ; preds = %bb.em
  %45 = bitcast double %i.acb to i64
  %46 = call i64 @llvm.bswap.i64(i64 %45)
  store i64 %46, ptr %5, align 8, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit.i375

_ZSt7reverseIPhEvT_S1_.exit.i375:                 ; preds = %.lr.ph.i.i.i370, %bb.em
  %i.acd = load ptr, ptr %i.jm, align 8, !tbaa !165 ; 2 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !56
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8
  invoke void %i.acg(ptr noundef nonnull align 8 dereferenceable(8) %i.acd, ptr noundef nonnull %5, i64 noundef 8)
          to label %bb.en unwind label %bb.eq, !inline_history !2323

bb.en:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i375
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.ach = load ptr, ptr %40, align 8, !tbaa !300
  %i.aci = load i8, ptr %i.ach, align 8, !tbaa !91
  switch i8 %i.aci, label %bb.ep [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i377
    i8 2, label %bb.eo
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i377: ; preds = %bb.en
  %.promoted11.i.i378 = load ptr, ptr %i.aaw, align 8, !tbaa !305
  %i.acj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i378) #34
  store ptr %i.acj, ptr %i.aaw, align 8, !tbaa !305
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i377, %bb.eo, %bb.ep
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379

bb.eo:                                            ; preds = %bb.en
  %i.ack = load ptr, ptr %i.abw, align 8, !tbaa !306
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  store ptr %i.acl, ptr %i.abw, align 8, !tbaa !306
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge

bb.ep:                                            ; preds = %bb.en
  %i.acm = load i64, ptr %i.aax, align 8, !tbaa !301
  %i.acn = add nsw i64 %i.acm, 1
  store i64 %i.acn, ptr %i.aax, align 8, !tbaa !301
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379.backedge

bb.eq:                                            ; preds = %_ZSt7reverseIPhEvT_S1_.exit.i375, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit379, %bb.el
  %i.aco = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #29
  br label %bb.et

bb.er:                                            ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260, %bb.az, %bb.bv, %bb.cr, %bb.dn, %bb.ej, %bb.dy, %bb.dc, %bb.cg, %bb.bk, %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1143 = phi i1 [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ao ], [ false, %bb.bk ], [ false, %bb.cg ], [ false, %bb.dc ], [ false, %bb.dy ], [ false, %bb.ej ], [ false, %bb.dn ], [ false, %bb.cr ], [ false, %bb.bv ], [ false, %bb.az ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit260 ], [ true, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit ]
  %i.acp = load ptr, ptr %18, align 8, !tbaa !76  ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.dy
  br i1 %i.acq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380: ; preds = %bb.er
  call void @_ZdlPv(ptr noundef %i.acp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i380
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  %i.acr = load ptr, ptr %i.bi, align 8, !tbaa !190
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_hESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.acr)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhSt4lessIS5_ESaISt4pairIKS5_hEEED2Ev.exit unwind label %bb.es

bb.es:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  %i.acs = landingpad { ptr, i32 }
          catch ptr null
  %i.act = extractvalue { ptr, i32 } %i.acs, 0
  call void @__clang_call_terminate(ptr %i.act) #30
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhSt4lessIS5_ESaISt4pairIKS5_hEEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit382
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  ret i1 %.1143

bb.et:                                            ; preds = %bb.ek, %bb.eq, %bb.ee, %bb.dt, %bb.di, %bb.cx, %bb.cm, %bb.cb, %bb.bq, %bb.bf, %bb.au, %bb.y, %.body241
  %.pn189.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157, %.body241 ], [ %i.aby, %bb.ek ], [ %i.aco, %bb.eq ], [ %i.aau, %bb.ee ], [ %i.yz, %bb.dt ], [ %i.xg, %bb.di ], [ %i.vn, %bb.cx ], [ %i.tl, %bb.cm ], [ %i.rj, %bb.cb ], [ %i.pm, %bb.bq ], [ %i.np, %bb.bf ], [ %i.lw, %bb.au ], [ %i.iw, %bb.y ]
  %i.acu = load ptr, ptr %18, align 8, !tbaa !76  ; 2 uses
  %i.acv = icmp eq ptr %i.acu, %i.dy
  br i1 %i.acv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383: ; preds = %bb.et
  call void @_ZdlPv(ptr noundef %i.acu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385: ; preds = %bb.et, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhSt4lessIS5_ESaISt4pairIKS5_hEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %16) #29
  br label %bb.eu

bb.eu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhED2Ev.exit245.11
  %.pn189.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn189.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385 ], [ %i.cc, %_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEhED2Ev.exit245.11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  resume { ptr, i32 } %.pn189.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt6all_ofIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_EbT_SO_T0_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %1, ptr %2, i64 %3) local_unnamed_addr #17 comdat {
bb.a:
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 5 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = load ptr, ptr %0, align 8, !tbaa !300
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !2420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.d = load ptr, ptr %1, align 8, !tbaa !300
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !2420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  store ptr %i.a, ptr %5, align 8, !tbaa !300, !noalias !2421
  store ptr %i.d, ptr %6, align 8, !tbaa !300, !noalias !2421
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !2421
  %.sroa.2.8.extract.trunc.i.i.i = trunc i64 %3 to i8
  %i.g = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6), !noalias !2422
  br i1 %i.g, label %_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = and i64 %3, 256
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i, %.lr.ph.i.i.i
  %i.m = load ptr, ptr %5, align 8, !tbaa !300, !noalias !2422
  store ptr %i.m, ptr %4, align 8, !tbaa !300, !noalias !2422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !304, !noalias !2422
  %i.n = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %4), !noalias !2422
  %i.o = call noundef zeroext i8 @_ZNK8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE13ubjson_prefixERKSF_b(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i1 noundef zeroext %i.j) #29, !noalias !2422
  %.not.i.i.i = icmp eq i8 %i.o, %.sroa.2.8.extract.trunc.i.i.i
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %5, align 8, !tbaa !300, !noalias !2422
  %i.q = load i8, ptr %i.p, align 8, !tbaa !91, !noalias !2422
  switch i8 %i.q, label %bb.e [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i.i
    i8 2, label %bb.d
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i.i: ; preds = %bb.c
  %.promoted11.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !305, !noalias !2422
  %i.r = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i.i.i.i) #34, !noalias !2422
  store ptr %i.r, ptr %i.c, align 8, !tbaa !305, !noalias !2422
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !306, !noalias !2422
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.k, align 8, !tbaa !306, !noalias !2422
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.l, align 8, !tbaa !301, !noalias !2422
  %i.v = add nsw i64 %i.u, 1
  store i64 %i.v, ptr %i.l, align 8, !tbaa !301, !noalias !2422
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i: ; preds = %bb.e, %bb.d, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i.i.i.i
  %i.w = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6), !noalias !2422
  br i1 %i.w, label %_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit, label %bb.b, !llvm.loop !2419

_ZSt11find_if_notIN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEZNS2_13binary_writerISG_hE12write_ubjsonERSH_bbbbNS2_16bjdata_version_tEEUlSL_E0_ET_SO_SO_T0_.exit: ; preds = %bb.b, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit.i.i.i, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !307
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !2421
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !2420
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !2420
  %i.x = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIjEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.192", align 4   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 %1, ptr %3, align 4
  %i.a = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %4, ptr %3, align 4, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberIlEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.193", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %3, align 8, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13binary_writerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEhE12write_numberImEEvT_b(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.193", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i64 %1, ptr %3, align 8
  %i.a = load i8, ptr %0, align 8, !tbaa !294, !range !64, !noundef !65
  %i.b = zext i1 %2 to i8
  %.not = icmp eq i8 %i.a, %i.b
  br i1 %.not, label %_ZSt7reverseIPhEvT_S1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %4, ptr %3, align 8, !tbaa !81
  br label %_ZSt7reverseIPhEvT_S1_.exit

_ZSt7reverseIPhEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %3, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator.5", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !300    ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !91
  switch i8 %i.b, label %bb.h [
    i8 1, label %bb.b
    i8 2, label %bb.c
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !306
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.552, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !300
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.h, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr %i.h, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #33
          to label %bb.o unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %.sink.split

bb.g:                                             ; preds = %bb.f, %bb.e
  %.05 = phi i1 [ false, %bb.f ], [ true, %bb.e ] ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !76     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.l) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.05, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.05, label %.sink.split, label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !301
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.i, !prof !141

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__cxa_allocate_exception(i64 32) #29 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.552, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !300
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %i.r, i32 noundef 214, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.s)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr %i.r, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail16invalid_iteratorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #33
          to label %bb.o unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread: ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.sink.split

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !76     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.v) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0, label %.sink.split, label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %.0, label %.sink.split, label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.c, %bb.b
  %.012 = phi ptr [ %i.g, %bb.c ], [ %i.e, %bb.b ], [ %i.a, %bb.h ]
  ret ptr %.012

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  %.pn14.pn.ph = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ]
  call void @__cxa_free_exception(ptr %.sink) #29
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14.pn = phi { ptr, i32 } [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn14.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn14.pn

bb.o:                                             ; preds = %bb.k, %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail16invalid_iterator6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind noalias writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::invalid_iterator") align 8 %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.b, ptr %6, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 16, ptr %i.a, align 8, !tbaa !68
  %i.c = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.c, ptr %6, align 8, !tbaa !76
  %i.d = load i64, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(16) @.str.553, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !75
  %i.f = load ptr, ptr %6, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail9exception4nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %1)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !136, !alias.scope !2429
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !75, !alias.scope !2429
  store i8 0, ptr %i.h, align 8, !tbaa !81, !alias.scope !2429
  call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !136, !alias.scope !2430
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !75, !alias.scope !2430
  store i8 0, ptr %i.j, align 8, !tbaa !81, !alias.scope !2430
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !75, !noalias !2430
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !75, !noalias !2430
  %i.p = add i64 %i.o, %i.m
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.p)
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_unit_bjdata.cpp:bb.a
  %i.gy = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %6, ptr noundef nonnull @.str.8)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  %i.gz = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.gy)
          to label %__cxx_global_var_init.7.exit unwind label %bb.ev ; 0 uses

bb.eu:                                            ; preds = %__cxx_global_var_init.6.exit
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.et, %bb.es
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #29
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn.i6 = phi { ptr, i32 } [ %i.hb, %bb.ev ], [ %i.ha, %bb.eu ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %common.resume

__cxx_global_var_init.7.exit:                     ; preds = %bb.et
  %i.hc = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hc) #29
  %i.hd = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hd) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %6) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  store i32 0, ptr @_ZL19DOCTEST_ANON_VAR_29, align 4, !tbaa !97
  %i.he = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL19DOCTEST_ANON_VAR_29) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.hf = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_311v, ptr noundef nonnull @.str.5, i32 noundef 3243, ptr noundef nonnull align 8 dereferenceable(40) %i.hf, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef -1)
          to label %bb.ex unwind label %bb.ez

bb.ex:                                            ; preds = %__cxx_global_var_init.7.exit
  %i.hg = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %4, ptr noundef nonnull @.str.10)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.hh = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.hg)
          to label %__cxx_global_var_init.9.exit unwind label %bb.fa ; 0 uses

bb.ez:                                            ; preds = %__cxx_global_var_init.7.exit
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey, %bb.ex
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #29
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.pn.i7 = phi { ptr, i32 } [ %i.hj, %bb.fa ], [ %i.hi, %bb.ez ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %common.resume

__cxx_global_var_init.9.exit:                     ; preds = %bb.ey
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hk) #29
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hl) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %4) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_312, align 4, !tbaa !97
  %i.hm = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_312) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.hn = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_343v, ptr noundef nonnull @.str.5, i32 noundef 3578, ptr noundef nonnull align 8 dereferenceable(40) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef -1)
          to label %bb.fc unwind label %bb.fe

bb.fc:                                            ; preds = %__cxx_global_var_init.9.exit
  %i.ho = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull @.str.12)
          to label %bb.fd unwind label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.hp = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.ho)
          to label %__cxx_global_var_init.11.exit unwind label %bb.ff ; 0 uses

bb.fe:                                            ; preds = %__cxx_global_var_init.9.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd, %bb.fc
  %i.hr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #29
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.pn.i8 = phi { ptr, i32 } [ %i.hr, %bb.ff ], [ %i.hq, %bb.fe ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

__cxx_global_var_init.11.exit:                    ; preds = %bb.fd
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hs) #29
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ht) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %2) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_344, align 4, !tbaa !97
  %i.hu = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_344) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #29
  %i.hv = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN28doctest_detail_test_suite_ns19getCurrentTestSuiteEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #29
  invoke void @_ZN7doctest6detail8TestCaseC1EPFvvEPKcjRKNS0_9TestSuiteERKNS_6StringEi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @_ZL21DOCTEST_ANON_FUNC_352v, ptr noundef nonnull @.str.5, i32 noundef 3613, ptr noundef nonnull align 8 dereferenceable(40) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.fh unwind label %bb.fj

bb.fh:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.hw = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN7doctest6detail8TestCasemlEPKc(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull @.str.14)
          to label %bb.fi unwind label %bb.fk     ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 56
  store i8 1, ptr %i.hx, align 8, !tbaa !4158
  %i.hy = invoke noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144) %i.hw)
          to label %__cxx_global_var_init.13.exit unwind label %bb.fk ; 0 uses

bb.fj:                                            ; preds = %__cxx_global_var_init.11.exit
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi, %bb.fh
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail8TestCaseD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) #29
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %.pn.pn.i = phi { ptr, i32 } [ %i.ia, %bb.fk ], [ %i.hz, %bb.fj ]
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  br label %common.resume

__cxx_global_var_init.13.exit:                    ; preds = %bb.fi
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ib) #29
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ic) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(144) %0) #29
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #29
  store i32 0, ptr @_ZL20DOCTEST_ANON_VAR_353, align 4, !tbaa !97
  %i.id = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZL20DOCTEST_ANON_VAR_353) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #25

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(none) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #33 = { noreturn }
attributes #34 = { nounwind willreturn memory(read) }
attributes #35 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!46, !47, !48}
!llvm.ident = !{!49}
!llvm.errno.tbaa = !{!54}

!0 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIhNSt7__cxx1112basic_stringIhSt11char_traitsIhESaIhEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!1 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail14output_adapterIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail10serializerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEED2Ev, ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!3 = distinct !{!3, !77}
!4 = distinct !{!4, !77}
!5 = distinct !{!5, !77}
!6 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIhEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!7 = distinct !{!7, !77}
!8 = distinct !{null, null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{!14, !77}
!15 = distinct !{!15, !77}
!16 = distinct !{null}
!17 = distinct !{!17, !77}
!18 = distinct !{null}
!19 = distinct !{!19, !77}
!20 = distinct !{!20, !77}
!21 = distinct !{!21, !77}
!22 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!23 = distinct !{null, null}
!24 = distinct !{null}
!25 = distinct !{!25, !77}
!26 = distinct !{!26, !77}
!27 = distinct !{!27, !77}
!28 = distinct !{!28, !77}
!29 = distinct !{!29, !77}
!30 = distinct !{!30, !77}
!31 = distinct !{ptr @_ZNSt12__shared_ptrIN8nlohmann16json_abi_v3_12_06detail23output_adapter_protocolIcEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!32 = distinct !{!32, !77}
!33 = distinct !{null}
!34 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!35 = distinct !{null}
!36 = distinct !{null, null}
!37 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterEE3getEv, null, null}
!38 = distinct !{null, null}
!39 = distinct !{null}
!40 = distinct !{null, null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!41 = distinct !{null}
!42 = distinct !{!42, !77}
!43 = distinct !{null, ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!44 = distinct !{ptr @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_20input_stream_adapterENS1_19json_sax_dom_parserISF_SG_EEE3getEv, null, null}
!45 = distinct !{!45, !77}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"omnipotent char", !50, i64 0}
!52 = !{!"int", !51, i64 0}
!53 = !{!"__libc_errno", !52, i64 0}
!54 = !{!53, !52, i64 0}
!55 = !{!"vtable pointer", !50, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"_ZTSN7doctest10assertType4EnumE", !51, i64 0}
!58 = !{!"_ZTSN7doctest6detail20ExpressionDecomposerE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"_ZTSN7doctest13IContextScopeE"}
!61 = !{!"bool", !51, i64 0}
!62 = !{!"_ZTSN7doctest6detail16ContextScopeBaseE", !60, i64 0, !61, i64 8}
!63 = !{!62, !61, i64 8}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{ptr @"_ZN7doctest6detail12ContextScopeIZN5utilsL19DOCTEST_ANON_FUNC_2EvE3$_0ED2Ev"}
!67 = !{!"long", !51, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"any pointer", !51, i64 0}
!70 = !{!"p1 omnipotent char", !69, i64 0}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !70, i64 0}
!72 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !67, i64 8, !51, i64 16}
!73 = !{!"_ZTSSt4pairImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !67, i64 0, !72, i64 8}
!74 = !{!73, !67, i64 0}
!75 = !{!72, !67, i64 8}
!76 = !{!72, !70, i64 0}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail7value_tE", !51, i64 0}
!79 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataE", !78, i64 0, !51, i64 8}
!80 = !{!79, !78, i64 0}
!81 = !{!51, !51, i64 0}
!82 = !{!70, !70, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!84 = !{!83, !70, i64 0}
!85 = !{ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev, ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev}
!86 = !{!83, !70, i64 16}
!87 = !{!83, !70, i64 8}
!88 = !{!78, !78, i64 0}
!89 = !{i64 0, i64 1, !88, i64 8, i64 8, !81}
!90 = !{!"_ZTSN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEE", !79, i64 0}
!91 = !{!90, !78, i64 0}
!92 = !{!"_ZTSN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEEEE", !90, i64 0, !57, i64 16}
!93 = !{!92, !57, i64 16}
!94 = !{!"p1 long", !69, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_0ED2Ev"}
!97 = !{!52, !52, i64 0}
!98 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_1ED2Ev"}
!99 = !{!"p1 int", !69, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_2ED2Ev"}
!102 = !{!"short", !51, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_3ED2Ev"}
!105 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_4ED2Ev"}
!106 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_5ED2Ev"}
!107 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_6ED2Ev"}
!108 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_7ED2Ev"}
!109 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_8ED2Ev"}
!110 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE3$_9ED2Ev"}
!111 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_10ED2Ev"}
!112 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_11ED2Ev"}
!113 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_12ED2Ev"}
!114 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_13ED2Ev"}
!115 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_14ED2Ev"}
!116 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_15ED2Ev"}
!117 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_16ED2Ev"}
!118 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_17ED2Ev"}
!119 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_18ED2Ev"}
!120 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_19ED2Ev"}
!121 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_20ED2Ev"}
!122 = !{!"double", !51, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"_ZTSSt14_Function_base", !51, i64 0, !69, i64 16}
!125 = !{!124, !69, i64 16}
!126 = !{!"p1 _ZTSSo", !69, i64 0}
!127 = !{!"_ZTSN7doctest6StringE", !51, i64 0}
!128 = !{!"p1 _ZTSN7doctest6detail8TestCaseE", !69, i64 0}
!129 = !{!"_ZTSN7doctest14ContextOptionsE", !126, i64 0, !127, i64 8, !128, i64 32, !127, i64 40, !127, i64 64, !52, i64 88, !52, i64 92, !52, i64 96, !52, i64 100, !52, i64 104, !61, i64 108, !61, i64 109, !61, i64 110, !61, i64 111, !61, i64 112, !61, i64 113, !61, i64 114, !61, i64 115, !61, i64 116, !61, i64 117, !61, i64 118, !61, i64 119, !61, i64 120, !61, i64 121, !61, i64 122, !61, i64 123, !61, i64 124, !61, i64 125, !61, i64 126, !61, i64 127, !61, i64 128, !61, i64 129, !61, i64 130, !61, i64 131, !61, i64 132, !61, i64 133, !61, i64 134}
!130 = !{!129, !61, i64 114}
!131 = !{!"p1 _ZTSN7doctest12TestCaseDataE", !69, i64 0}
!132 = !{!"_ZTSN7doctest8ContainsE", !127, i64 0}
!133 = !{!"_ZTSN7doctest10AssertData14StringContainsE", !132, i64 0, !61, i64 24}
!134 = !{!"_ZTSN7doctest10AssertDataE", !131, i64 0, !57, i64 8, !70, i64 16, !52, i64 24, !70, i64 32, !61, i64 40, !61, i64 41, !127, i64 48, !127, i64 72, !61, i64 96, !70, i64 104, !133, i64 112}
!135 = !{!134, !61, i64 96}
!136 = !{!71, !70, i64 0}
!137 = !{!"_ZTSN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !72, i64 0, !57, i64 32}
!138 = !{!137, !57, i64 32}
!139 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_21ED2Ev"}
!140 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_22ED2Ev"}
!141 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!142 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_23ED2Ev"}
!143 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_24ED2Ev"}
!144 = !{ptr @"_ZN7doctest6detail12ContextScopeIZL20DOCTEST_ANON_FUNC_28vE4$_25ED2Ev"}
!145 = !{!"_ZTSN8nlohmann16json_abi_v3_12_06detail16bjdata_version_tE", !51, i64 0}
!146 = !{!145, !145, i64 0}
!147 = !{!69, !69, i64 0}
!148 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!149 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!150 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !83, i64 0}
!151 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !150, i64 0}
!152 = !{!"_ZTSSt6vectorIhSaIhEE", !151, i64 0}
!153 = !{!"_ZTSN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEE", !152, i64 0, !67, i64 24, !61, i64 32}
!154 = !{!153, !67, i64 24}
!155 = !{!153, !61, i64 32}
!156 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !52, i64 8, !52, i64 12}
!157 = !{!156, !52, i64 8}
!158 = !{!156, !52, i64 12}
end_hunk_4
